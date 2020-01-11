unsigned frequency_out = output("frequency_out");
unsigned control_out = output("control_out");
unsigned debug_out = output("debug_out");
unsigned debug_in = input("debug_in");
unsigned capture_in = input("capture_in");
unsigned power_in = input("power_in");
unsigned gain_out = output("gain_out");

#include <stdio.h>
#include <scan.h>
#include <print.h>

//int(round((2**32)*(2**32)/300e6))
#define FREQUENCY_STEP_MULTIPLIER 61489146912ul

//convert a frequency in Hertz into a frequency in NCO step size.
unsigned convert_to_steps(unsigned x){
    unsigned long long y = x * FREQUENCY_STEP_MULTIPLIER;
    y >>= 32;
    return y;
}

//crude conversion to dBs
unsigned to_dB(unsigned x){
    unsigned dB = 0;
    while(x > 1){
        x >>= 1;
        dB += 6;
    }
    return dB;
}

//crude conversion to dBs
int read_smeter(unsigned gain){

    gain = to_dB(gain);
    unsigned power = to_dB(fgetc(power_in));

    //ADC has 1.5Vpk = 1.06Vrms = 0.0225W into 50ohm = 22.5mW = 13.5dBm
    //Receiver has a gain of 1+(2*2k2/150) = 30.33.. = 29.6dB
    //so full scale pk magnitude = 13.5 - 29.6 = -16.1dBm at input connector

    int power_dbm = -16-(102-power)-gain;
    int s_scale;

    if(power_dbm < -63){
        power_dbm += 127;
        s_scale = 0;
        while(power_dbm >= 6){
            power_dbm -= 6;
            s_scale += 1;
        }
    } else {
        power_dbm += 73;
        s_scale = 9;
        while(power_dbm >= 10){
            power_dbm -= 10;
            s_scale += 1;
        }
    }

    return s_scale;
}

void main(){

    stdout = debug_out;
    stdin = debug_in;

    unsigned int cmd, frequency, control, gain, power, i, smeter;
    unsigned int capture[1000];

    fputc(convert_to_steps(1215000-18311), frequency_out);
    fputc(0, gain_out);

    puts("FPGA transceiver v 0.01\n");


    while(1){


        cmd = getc();
        switch(cmd){
            case 'f':
            //set frequency, reduce by fs/4
                frequency = scan_udecimal();
                puts("frequency: ");
                print_uhex(frequency);
                puts("\n");
                fputc(convert_to_steps(frequency-18311), frequency_out);
                break;

            case 'm':
            //set mode/sideband
                control = scan_uhex();
                puts("mode : ");
                print_uhex(control);
                puts("\n");
                fputc(control, control_out);
                break;

            case 'h':
            //print help
                puts("fxxxxxxxx: frequency\n");
                puts("mx: mode 0=LSB, 1=AM, 2=FM, 3=NBFM, 4=USB\n");
                puts("g: set gain (decimal)\n");
                puts("p: read power (hex)\n");
                puts("s: read smeter\n");
                puts("\n");
                break;

            case 'g':
            //print rx gain
                gain = scan_udecimal();
                fputc(gain, gain_out);
                print_uhex(gain);
                puts("\n");
                break;

            case 'p':
            //print rx magnitude (post filter)
                power = fgetc(power_in);
                print_uhex(power);
                puts("\n");
                break;

            case 's':
            //read smeter
                smeter = read_smeter(gain);
                putc('s');
                if(smeter <= 9){
                    putc('0'+smeter);
                } else if(smeter == 10){
                    puts("9+10dB");
                } else if(smeter == 11){
                    puts("9+20dB");
                } else if(smeter == 12){
                    puts("9+30dB");
                }
                puts("\n");
                break;

            case 'c':
                for(i=0;i<1000;i++){
                    capture[i] = fgetc(capture_in);
                }
                for(i=0;i<1000;i++){
                    print_uhex(capture[i]&0xffff);
                    puts("\n");
                    print_uhex((capture[i]>>16)&0xffff);
                    puts("\n");
                }
                break;
        }
        puts(">");

    }

}
