Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 684A6762FB
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jul 2019 12:02:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 09D652420F;
	Fri, 26 Jul 2019 10:02:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zx7nthsMgfdn; Fri, 26 Jul 2019 10:02:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CCE1626DCD;
	Fri, 26 Jul 2019 10:01:56 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4702D1BF592
 for <intel-wired-lan@osuosl.org>; Fri, 26 Jul 2019 10:01:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 37355882BD
 for <intel-wired-lan@osuosl.org>; Fri, 26 Jul 2019 10:01:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0vGpgT8-XDaD for <intel-wired-lan@osuosl.org>;
 Fri, 26 Jul 2019 10:01:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
 [209.85.160.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8F38387CCF
 for <intel-wired-lan@osuosl.org>; Fri, 26 Jul 2019 10:01:49 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id d17so51911599qtj.8
 for <intel-wired-lan@osuosl.org>; Fri, 26 Jul 2019 03:01:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=Llith9eWVsJx8Z3/PWPtmW7IgRjQGG7xTOg74pl307E=;
 b=BSzNW6IH5p/9NIve9xf0vXtoiWWFuVNiz/a3wGdlRv+m/x47TRWUkF9pd0POfHNcBj
 f7T8aE7IAcA1DxxRw+0VBXqUzn3zzqMrn8UtInbgzmcZzSMX/DHCkJCJtu4/XRXzktw6
 JP1Lqs8MTGp1mnIDdE09D/pYbaOGY14H2X1uzzZpQjPOv2yxqQNUrhmuur7khOSKmYSm
 y0pzRcRdoygddlRT+AgqDHRImklb7P/EPKjSPV456rQ+jC1VNaLZ/1YP8ftj4VBK4OC7
 6g+6c8ljJovICJpI+F4w1E2G87j/aQNNaQC8cJs1gaNUCnFZV2wzM0R1TXPuWVOMG4Zc
 MnCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=Llith9eWVsJx8Z3/PWPtmW7IgRjQGG7xTOg74pl307E=;
 b=mbXX4GgTBoIVW030ImtPsXfLGQdCI+DVZErbuFbNJg5JOyVb7Ub/uvrhTnXc8LIAPz
 75RErEnV4CbWGobBMpkwhmb0u+KTUZS89uwNl9gVPnTvrKz2nBOSA30xifgeaoful4s4
 q69fzdrQASdEXpT5bwW8+jzOpdKpoT5dENDYPMzq3Jzl9dsSxp7LMUkdIUofFIIr449N
 zngqT+UPj9MZlLRRiF7pAugwIvOqDIMnjkdeMNwaCnTt2DrarnEC7utYLzUXCDBN4EQ2
 M22+J1oWuro0BXzGOBRYgToBE4eUupuK/VBO8Qet/LpQqym2cTkKM+CbYfxshiEfcgBJ
 /O6w==
X-Gm-Message-State: APjAAAUr1rI/YAyRsp2rD01px/GR11wEYDbVbTFUCrIs2MxHkyKAYi+/
 i6Bu8TpB1+aJYCdN28WuD5MwTJ+MamPiONxexdvaTtrN
X-Google-Smtp-Source: APXvYqwxAYQqHtMPIetf+D+LkziDDhHbp4fGdOqcrWYin+07t9CzcsxoHUhmEqY5gsJAHBVpBXoAEgIYZRP9XYLwk0s=
X-Received: by 2002:ac8:355d:: with SMTP id z29mr66527793qtb.366.1564135307342; 
 Fri, 26 Jul 2019 03:01:47 -0700 (PDT)
MIME-Version: 1.0
From: Francesco Raviglione <francescorav.es483@gmail.com>
Date: Fri, 26 Jul 2019 12:01:36 +0200
Message-ID: <CAMSq+bg3-VdXvy=XRnTeunMMfL2mp_0HRPeGjvzTU1JA_bRjrg@mail.gmail.com>
To: intel-wired-lan@osuosl.org
Subject: [Intel-wired-lan] PROBLEM: No hardware receive timestamps are
 returned when using ETH_P_ALL raw sockets and Intel NICs
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5711476299845466850=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============5711476299845466850==
Content-Type: multipart/alternative; boundary="0000000000005ff73a058e92a1d4"

--0000000000005ff73a058e92a1d4
Content-Type: text/plain; charset="UTF-8"

Hello,
I do not know if this is the right place to report a possible issue, but I
was not able to find another list related to the problem I am experiencing.
I am currently using two different hardware devices, using two different
Intel drivers (e1000e - system 1 - and igb - system 2 -) and the problem is
occuring in both.
Here is a compiled bug reporting form:

[1.] One line summary of the problem:
No hardware receive timestamps are returned when using ETH_P_ALL raw
sockets and Intel NICs

[2.] Full description of the problem/report:
I am currently using raw sockets with ETH_P_ALL, in order to capture all
the packets coming from my ethernet NIC, together with hardware
timestamping (set by using the SO_TIMESTAMPING socket option).

In particular, I set up everything as in the code reported in the example
program (point [7. ]).
I create a socket with:
socket(AF_PACKET,SOCK_RAW,htons(ETH_P_ALL))

Then, I enable hardware timestamps by calling the proper ioctl:
ioctl(sock,SIOCSHWTSTAMP,&hwtstamp)

and by setting:
flags=SOF_TIMESTAMPING_RX_HARDWARE | SOF_TIMESTAMPING_TX_HARDWARE |
SOF_TIMESTAMPING_RAW_HARDWARE;
setsockopt(sock,SOL_SOCKET,SO_TIMESTAMPING,&flags,sizeof(flags))

Everything is performed according to the timestaping documentation:
https://www.kernel.org/doc/Documentation/networking/timestamping.txt

Hardware timestamps should be reported as ancillary data. If ETH_P_ALL is
set, no timestamps are reported and mhdr.msg_controllen (from struct msghdr
mhdr) is always 0, after each recvmsg.
Sometimes, only the first received packet timestamp is reported, but all
the others are not.
If other protocols are set, such as ETH_P_IP, timestamps are correctly
reported:
socket(AF_PACKET,SOCK_RAW,htons(ETH_P_IP))

Hardware: system 1: Intel Corporation Ethernet Connection (4) I219-V (rev
21) - e1000e
system 2: Intel Corporation I210 Gigabit Network Connection (rev 03)

[3.] Keywords (i.e., modules, networking, kernel):
networking, timestamps, timestamping, sockets, AF_PACKET, ETH_P_ALL,
ETH_P_IP, CSMG, ancillary data, SOF_TIMESTAMPING_RAW_HARDWARE, Intel NIC

[4.] Kernel information
[4.1.] Kernel version (from /proc/version):
system 1: Linux version 5.0.0-16-generic (buildd@lgw01-amd64-060) (gcc
version 8.3.0 (Ubuntu 8.3.0-6ubuntu1)) #17-Ubuntu SMP Wed May 15 10:52:21
UTC 2019

system 2: Linux version 4.14.95 (francesco@francesco-pcengines-dev) (gcc
version 7.3.0 (OpenWrt GCC 7.3.0 r7676-cddd7b4c77)) #0 SMP Wed Jan 30
12:21:02 2019

[5.] Most recent kernel version which did not have the bug:
None

[7.] A small shell script or example program which triggers the
     problem (if possible):

     Example C program:

#include <arpa/inet.h>
#include <linux/net_tstamp.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/socket.h>
#include <sys/ioctl.h>
#include <linux/sockios.h>
#include <unistd.h>
#include <linux/if.h>
#include <linux/if_packet.h>
#include <net/ethernet.h>
#include <linux/ip.h>
#include <linux/errqueue.h>

int main(int argc, char* argv[]) {
   struct ifreq ifindexreq;
   int pkt_counter=0;
   int flags;
   int sock;
   int ifindex;
   struct sockaddr_ll si_server;

   struct msghdr mhdr;
   struct iovec iov;
   struct cmsghdr *cmsg = NULL;

   struct ifreq hwtstamp;
   struct hwtstamp_config hwconfig;

   unsigned char buffer[1514];
   char ctrlBuffer[CMSG_SPACE(sizeof(struct scm_timestamping))];
   struct scm_timestamping hw_ts;

   struct iphdr *iphdr_ptr;
   struct in_addr saddr_ip;

   int rx_bytes;

   fprintf(stdout,"Program started.\n");

   if(argc!=2) {
       fprintf(stderr,"Error. You should specify the interface name.\n");
       exit(1);
   }

   // Create socket
   if ((sock = socket(AF_PACKET,SOCK_RAW,htons(ETH_P_ALL))) < 0) {
       perror("RAW socket()");
       exit(EXIT_FAILURE);
   }

   // Get interface index
   strncpy(ifindexreq.ifr_name,argv[1],IFNAMSIZ);
   if(ioctl(sock,SIOCGIFINDEX,&ifindexreq)!=-1) {
       ifindex=ifindexreq.ifr_ifindex;
   } else {
  perror("SIOCGIFINDEX ioctl()");
      close(sock);
      exit(EXIT_FAILURE);
   }

   memset(&si_server, 0, sizeof(si_server));
   si_server.sll_ifindex=ifindex;
   si_server.sll_family=AF_PACKET;

// bind() to interface
  if(bind(sock,(struct sockaddr *) &si_server,sizeof(si_server))<0) {
perror("bind()");
       close(sock);
       exit(EXIT_FAILURE);
}

   // Set hardware timestamping
   memset(&hwtstamp,0,sizeof(hwtstamp));
   memset(&hwconfig,0,sizeof(hwconfig));

   // Set ifr_name and ifr_data
   strncpy(hwtstamp.ifr_name,argv[1],sizeof(hwtstamp.ifr_name));
   hwtstamp.ifr_data=(void *)&hwconfig;

   hwconfig.tx_type=HWTSTAMP_TX_ON;
   hwconfig.rx_filter=HWTSTAMP_FILTER_ALL;

   // Issue request to the driver
   if (ioctl(sock,SIOCSHWTSTAMP,&hwtstamp)<0) {
       perror("ioctl(SIOCSHWTSTAMP)");
       close(sock);
       exit(EXIT_FAILURE);
   }

   flags=SOF_TIMESTAMPING_RX_HARDWARE | SOF_TIMESTAMPING_TX_HARDWARE |
SOF_TIMESTAMPING_RAW_HARDWARE;

   if(setsockopt(sock,SOL_SOCKET,SO_TIMESTAMPING,&flags,sizeof(flags))<0) {
               perror("setsockopt(SO_TIMESTAMPING)");
       close(sock);
       exit(EXIT_FAILURE);
   }

   memset(&mhdr,0,sizeof(mhdr));

   // iovec buffers (scatter/gather arrays)
   iov.iov_base=buffer;
   iov.iov_len=sizeof(buffer);

   // Socket address structure
   mhdr.msg_name=NULL;
   mhdr.msg_namelen=0;

   // Ancillary data (control message)
   mhdr.msg_control=ctrlBuffer;
   mhdr.msg_controllen=sizeof(ctrlBuffer);

   // iovec arrays
   mhdr.msg_iov=&iov;
   mhdr.msg_iovlen=1;

   fprintf(stdout,"(Before while loop) CMSG_FIRSTHDR(&mhdr)=%p
(len=%zd)\n",CMSG_FIRSTHDR(&mhdr),mhdr.msg_controllen);
   // Receive 10 packets, then stop
   while(pkt_counter<10) {
       rx_bytes=recvmsg(sock,&mhdr,0);

       // Find IP address from packet (just for printing)
       iphdr_ptr=(struct iphdr *) (buffer+sizeof(struct ether_header));
       saddr_ip.s_addr=iphdr_ptr->saddr;
       fprintf(stdout,"Received a packet from %s
(len=%d).\n",inet_ntoa(saddr_ip),rx_bytes);

       fprintf(stdout,"(Inside while loop - %d) CMSG_FIRSTHDR(&mhdr)=%p
(len=%zd)\n",pkt_counter,CMSG_FIRSTHDR(&mhdr),mhdr.msg_controllen);
       for(cmsg=CMSG_FIRSTHDR(&mhdr);cmsg!=NULL;cmsg=CMSG_NXTHDR(&mhdr,
cmsg)) {
           if(cmsg->cmsg_level==SOL_SOCKET &&
cmsg->cmsg_type==SO_TIMESTAMPING) {
               hw_ts=*((struct scm_timestamping *)CMSG_DATA(cmsg));
               fprintf(stdout,"RX timestamp: sec = %lu , nsec =
%lu\n",hw_ts.ts[2].tv_sec,hw_ts.ts[2].tv_nsec);
           }
       }
       pkt_counter++;
   }

   close(sock);

   return 0;
}

Example output when htons(ETH_P_ALL) is set:
$ sudo ./testrx enp0s31f6
Program started.
(Before while loop) CMSG_FIRSTHDR(&mhdr)=0x7fffd384f5c0 (len=64)
Received a packet from 162.125.18.133 (len=323).
(Inside while loop - 0) CMSG_FIRSTHDR(&mhdr)=0x7fffd384f5c0 (len=64)
RX timestamp: sec = 1564132845 , nsec = 678740274
Received a packet from 192.168.1.210 (len=609).
(Inside while loop - 1) CMSG_FIRSTHDR(&mhdr)=(nil) (len=0)
Received a packet from 162.125.18.133 (len=66).
(Inside while loop - 2) CMSG_FIRSTHDR(&mhdr)=(nil) (len=0)
Received a packet from 192.168.1.210 (len=650).
(Inside while loop - 3) CMSG_FIRSTHDR(&mhdr)=(nil) (len=0)
Received a packet from 162.125.18.133 (len=66).
(Inside while loop - 4) CMSG_FIRSTHDR(&mhdr)=(nil) (len=0)
Received a packet from 192.168.1.250 (len=146).
(Inside while loop - 5) CMSG_FIRSTHDR(&mhdr)=(nil) (len=0)
Received a packet from 192.168.1.210 (len=66).
(Inside while loop - 6) CMSG_FIRSTHDR(&mhdr)=(nil) (len=0)
Received a packet from 192.168.1.210 (len=114).
(Inside while loop - 7) CMSG_FIRSTHDR(&mhdr)=(nil) (len=0)
Received a packet from 192.168.1.250 (len=66).
(Inside while loop - 8) CMSG_FIRSTHDR(&mhdr)=(nil) (len=0)
Received a packet from 192.168.1.210 (len=90).
(Inside while loop - 9) CMSG_FIRSTHDR(&mhdr)=(nil) (len=0)

"(Inside while loop - 0)" is sometimes reported, some other not reported,
as for all the other received packets.

Example output when htons(ETH_P_IP) is set:
$ sudo ./testrx enp0s31f6
Program started.
(Before while loop) CMSG_FIRSTHDR(&mhdr)=0x7ffd65075280 (len=64)
Received a packet from 192.168.1.250 (len=98).
(Inside while loop - 0) CMSG_FIRSTHDR(&mhdr)=0x7ffd65075280 (len=64)
RX timestamp: sec = 1564133136 , nsec = 669293274
Received a packet from 192.168.1.250 (len=194).
(Inside while loop - 1) CMSG_FIRSTHDR(&mhdr)=0x7ffd65075280 (len=64)
RX timestamp: sec = 1564133136 , nsec = 669788649
Received a packet from 192.168.1.250 (len=98).
(Inside while loop - 2) CMSG_FIRSTHDR(&mhdr)=0x7ffd65075280 (len=64)
RX timestamp: sec = 1564133137 , nsec = 709189274
Received a packet from 192.168.1.250 (len=194).
(Inside while loop - 3) CMSG_FIRSTHDR(&mhdr)=0x7ffd65075280 (len=64)
RX timestamp: sec = 1564133137 , nsec = 709855774
Received a packet from 192.168.1.250 (len=98).
(Inside while loop - 4) CMSG_FIRSTHDR(&mhdr)=0x7ffd65075280 (len=64)
RX timestamp: sec = 1564133138 , nsec = 759102399
Received a packet from 192.168.1.250 (len=194).
(Inside while loop - 5) CMSG_FIRSTHDR(&mhdr)=0x7ffd65075280 (len=64)
RX timestamp: sec = 1564133138 , nsec = 759642149
Received a packet from 192.168.1.250 (len=98).
(Inside while loop - 6) CMSG_FIRSTHDR(&mhdr)=0x7ffd65075280 (len=64)
RX timestamp: sec = 1564133139 , nsec = 789017024
Received a packet from 192.168.1.250 (len=194).
(Inside while loop - 7) CMSG_FIRSTHDR(&mhdr)=0x7ffd65075280 (len=64)
RX timestamp: sec = 1564133139 , nsec = 789737149
Received a packet from 192.168.1.250 (len=98).
(Inside while loop - 8) CMSG_FIRSTHDR(&mhdr)=0x7ffd65075280 (len=64)
RX timestamp: sec = 1564133140 , nsec = 828939899
Received a packet from 192.168.1.250 (len=194).
(Inside while loop - 9) CMSG_FIRSTHDR(&mhdr)=0x7ffd65075280 (len=64)
RX timestamp: sec = 1564133140 , nsec = 829930149


[8.] Environment
[8.1.] Software (add the output of the ver_linux script here)
-------------------------------------------------------------------------------
system 1:
Linux francesco-HP-EliteBook-830-G5 5.0.0-16-generic #17-Ubuntu SMP Wed May
15 10:52:21 UTC 2019 x86_64 x86_64 x86_64 GNU/Linux

GNU Make             4.2.1
Binutils             2.32
Util-linux           2.33.1
Mount               2.33.1
Module-init-tools   25
E2fsprogs           1.44.6
Pcmciautils         018
PPP                 2.4.7
Linux C Library     2.29
Dynamic linker (ldd) 2.29
Linux C++ Library   6.0.26
Procps               3.3.15
Net-tools           2.10
Kbd                 2.0.4
Console-tools       2.0.4
Sh-utils             8.30
Udev                 240
Wireless-tools       30
Modules Loaded       ac97_bus acpi_pad acpi_thermal_rel aesni_intel
aes_x86_64 ahci arc4 aufs autofs4 binfmt_misc bluetooth bnep btbcm btintel
btrtl btusb cfg80211 coretemp crc32_pclmul crct10dif_pclmul cryptd
crypto_simd drm drm_kms_helper e1000e ecdh_generic fb_sys_fops
ghash_clmulni_intel glue_helper hid hid_generic hid_multitouch hp_wireless
hp_wmi i2c_algo_bit i2c_hid i2c_i801 i915 idma64 input_leds int3400_thermal
int3403_thermal int340x_thermal_zone intel_cstate intel_lpss intel_lpss_pci
intel_pch_thermal intel_powerclamp intel_rapl intel_rapl_perf
intel_soc_dts_iosf intel_wmi_thunderbolt intel_xhci_usb_role_switch
ip_tables irqbypass iwlmvm iwlwifi joydev kvm kvmgt kvm_intel ledtrig_audio
libahci lp mac80211 mac_hid mdev media mei mei_me nfnetlink nfnetlink_log
nfnetlink_queue nls_iso8859_1 overlay parport parport_pc pinctrl_intel
pinctrl_sunrisepoint ppdev processor_thermal_device psmouse rfcomm roles
sch_fq_codel serio_raw snd snd_compress snd_hda_codec
snd_hda_codec_conexant snd_hda_codec_generic snd_hda_codec_hdmi
snd_hda_core snd_hda_ext_core snd_hda_intel snd_hwdep snd_pcm
snd_pcm_dmaengine snd_rawmidi snd_seq snd_seq_device snd_seq_midi
snd_seq_midi_event snd_soc_acpi snd_soc_acpi_intel_match snd_soc_core
snd_soc_hdac_hda snd_soc_skl snd_soc_skl_ipc snd_soc_sst_dsp
snd_soc_sst_ipc snd_timer soundcore sparse_keymap syscopyarea sysfillrect
sysimgblt thunderbolt typec typec_ucsi ucsi_acpi usbhid uvcvideo vfio
vfio_iommu_type1 vfio_mdev video videobuf2_common videobuf2_memops
videobuf2_v4l2 videobuf2_vmalloc videodev virt_dma wmi wmi_bmof
x86_pkg_temp_thermal x_tables

-------------------------------------------------------------------------------
system 2:
Linux OpenWrt 4.14.95 #0 SMP Wed Jan 30 12:21:02 2019 x86_64 GNU/Linux

GNU C               5.4.0
GNU Make             4.2.1
Binutils             2.27
Util-linux           512
Mount               512
PPP                 2.4.7
Dynamic linker (ldd) 86
Linux C++ Library   1.28.4
Procps               1.28.4
Modules Loaded       akcipher asn1_decoder ath ath10k_core ath10k_pci ath5k
ath9k ath9k_common ath9k_htc ath9k_hw authenc button_hotplug ccp ccp_crypto
cfg80211 compat crc_ccitt e1000 e1000e ehci_platform gpio_button_hotplug
gpio_nct5104d i2c_algo_bit i2c_dev igb ip6_tables ip6t_REJECT
ip6table_filter ip6table_mangle ip_tables ipt_MASQUERADE ipt_REJECT
iptable_filter iptable_mangle iptable_nat leds_apu2 lib80211
lib80211_crypt_ccmp lib80211_crypt_tkip lib80211_crypt_wep mac80211 mii mpi
nf_conntrack nf_conntrack_ipv4 nf_conntrack_ipv6 nf_conntrack_rtcache
nf_defrag_ipv4 nf_defrag_ipv6 nf_dup_ipv4 nf_dup_ipv6 nf_flow_table
nf_flow_table_hw nf_log_common nf_log_ipv4 nf_log_ipv6 nf_nat nf_nat_ipv4
nf_nat_masquerade_ipv4 nf_nat_redirect nf_reject_ipv4 nf_reject_ipv6
ppp_async ppp_generic pppoe pppox pps_core ptp r8169 rsa_generic
sha1_generic sha1_ssse3 sha256_generic sha256_ssse3 slhc snd snd_compress
snd_hwdep snd_mixer_oss snd_pcm snd_pcm_oss snd_pcsp snd_rawmidi
snd_seq_device snd_timer soundcore sp5100_tco x_tables xhci_plat_hcd
xt_FLOWOFFLOAD xt_LOG xt_REDIRECT xt_TCPMSS xt_TEE xt_comment xt_conntrack
xt_limit xt_mac xt_mark xt_multiport xt_nat xt_state xt_tcpudp xt_time

[8.2.] Processor information (from /proc/cpuinfo):
-------------------------------------------------------------------------------
system 1:
processor : 0
vendor_id : GenuineIntel
cpu family : 6
model : 142
model name : Intel(R) Core(TM) i5-7200U CPU @ 2.50GHz
stepping : 9
microcode : 0xb4
cpu MHz : 800.017
cache size : 3072 KB
physical id : 0
siblings : 4
core id : 0
cpu cores : 2
apicid : 0
initial apicid : 0
fpu : yes
fpu_exception : yes
cpuid level : 22
wp : yes
flags : fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat
pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm pbe syscall nx pdpe1gb
rdtscp lm constant_tsc art arch_perfmon pebs bts rep_good nopl xtopology
nonstop_tsc cpuid aperfmperf tsc_known_freq pni pclmulqdq dtes64 monitor
ds_cpl vmx est tm2 ssse3 sdbg fma cx16 xtpr pdcm pcid sse4_1 sse4_2 x2apic
movbe popcnt tsc_deadline_timer aes xsave avx f16c rdrand lahf_lm abm
3dnowprefetch cpuid_fault epb invpcid_single pti ssbd ibrs ibpb stibp
tpr_shadow vnmi flexpriority ept vpid ept_ad fsgsbase tsc_adjust bmi1 avx2
smep bmi2 erms invpcid mpx rdseed adx smap clflushopt intel_pt xsaveopt
xsavec xgetbv1 xsaves dtherm ida arat pln pts hwp hwp_notify hwp_act_window
hwp_epp md_clear flush_l1d
bugs : cpu_meltdown spectre_v1 spectre_v2 spec_store_bypass l1tf mds
bogomips : 5424.00
clflush size : 64
cache_alignment : 64
address sizes : 39 bits physical, 48 bits virtual
power management:

processor : 1
vendor_id : GenuineIntel
cpu family : 6
model : 142
model name : Intel(R) Core(TM) i5-7200U CPU @ 2.50GHz
stepping : 9
microcode : 0xb4
cpu MHz : 800.007
cache size : 3072 KB
physical id : 0
siblings : 4
core id : 1
cpu cores : 2
apicid : 2
initial apicid : 2
fpu : yes
fpu_exception : yes
cpuid level : 22
wp : yes
flags : fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat
pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm pbe syscall nx pdpe1gb
rdtscp lm constant_tsc art arch_perfmon pebs bts rep_good nopl xtopology
nonstop_tsc cpuid aperfmperf tsc_known_freq pni pclmulqdq dtes64 monitor
ds_cpl vmx est tm2 ssse3 sdbg fma cx16 xtpr pdcm pcid sse4_1 sse4_2 x2apic
movbe popcnt tsc_deadline_timer aes xsave avx f16c rdrand lahf_lm abm
3dnowprefetch cpuid_fault epb invpcid_single pti ssbd ibrs ibpb stibp
tpr_shadow vnmi flexpriority ept vpid ept_ad fsgsbase tsc_adjust bmi1 avx2
smep bmi2 erms invpcid mpx rdseed adx smap clflushopt intel_pt xsaveopt
xsavec xgetbv1 xsaves dtherm ida arat pln pts hwp hwp_notify hwp_act_window
hwp_epp md_clear flush_l1d
bugs : cpu_meltdown spectre_v1 spectre_v2 spec_store_bypass l1tf mds
bogomips : 5424.00
clflush size : 64
cache_alignment : 64
address sizes : 39 bits physical, 48 bits virtual
power management:

processor : 2
vendor_id : GenuineIntel
cpu family : 6
model : 142
model name : Intel(R) Core(TM) i5-7200U CPU @ 2.50GHz
stepping : 9
microcode : 0xb4
cpu MHz : 800.016
cache size : 3072 KB
physical id : 0
siblings : 4
core id : 0
cpu cores : 2
apicid : 1
initial apicid : 1
fpu : yes
fpu_exception : yes
cpuid level : 22
wp : yes
flags : fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat
pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm pbe syscall nx pdpe1gb
rdtscp lm constant_tsc art arch_perfmon pebs bts rep_good nopl xtopology
nonstop_tsc cpuid aperfmperf tsc_known_freq pni pclmulqdq dtes64 monitor
ds_cpl vmx est tm2 ssse3 sdbg fma cx16 xtpr pdcm pcid sse4_1 sse4_2 x2apic
movbe popcnt tsc_deadline_timer aes xsave avx f16c rdrand lahf_lm abm
3dnowprefetch cpuid_fault epb invpcid_single pti ssbd ibrs ibpb stibp
tpr_shadow vnmi flexpriority ept vpid ept_ad fsgsbase tsc_adjust bmi1 avx2
smep bmi2 erms invpcid mpx rdseed adx smap clflushopt intel_pt xsaveopt
xsavec xgetbv1 xsaves dtherm ida arat pln pts hwp hwp_notify hwp_act_window
hwp_epp md_clear flush_l1d
bugs : cpu_meltdown spectre_v1 spectre_v2 spec_store_bypass l1tf mds
bogomips : 5424.00
clflush size : 64
cache_alignment : 64
address sizes : 39 bits physical, 48 bits virtual
power management:

processor : 3
vendor_id : GenuineIntel
cpu family : 6
model : 142
model name : Intel(R) Core(TM) i5-7200U CPU @ 2.50GHz
stepping : 9
microcode : 0xb4
cpu MHz : 800.008
cache size : 3072 KB
physical id : 0
siblings : 4
core id : 1
cpu cores : 2
apicid : 3
initial apicid : 3
fpu : yes
fpu_exception : yes
cpuid level : 22
wp : yes
flags : fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat
pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm pbe syscall nx pdpe1gb
rdtscp lm constant_tsc art arch_perfmon pebs bts rep_good nopl xtopology
nonstop_tsc cpuid aperfmperf tsc_known_freq pni pclmulqdq dtes64 monitor
ds_cpl vmx est tm2 ssse3 sdbg fma cx16 xtpr pdcm pcid sse4_1 sse4_2 x2apic
movbe popcnt tsc_deadline_timer aes xsave avx f16c rdrand lahf_lm abm
3dnowprefetch cpuid_fault epb invpcid_single pti ssbd ibrs ibpb stibp
tpr_shadow vnmi flexpriority ept vpid ept_ad fsgsbase tsc_adjust bmi1 avx2
smep bmi2 erms invpcid mpx rdseed adx smap clflushopt intel_pt xsaveopt
xsavec xgetbv1 xsaves dtherm ida arat pln pts hwp hwp_notify hwp_act_window
hwp_epp md_clear flush_l1d
bugs : cpu_meltdown spectre_v1 spectre_v2 spec_store_bypass l1tf mds
bogomips : 5424.00
clflush size : 64
cache_alignment : 64
address sizes : 39 bits physical, 48 bits virtual
power management:

-------------------------------------------------------------------------------
system 2:
processor : 0
vendor_id : AuthenticAMD
cpu family : 22
model : 48
model name : AMD GX-412TC SOC
stepping : 1
microcode : 0x7030105
cpu MHz : 598.589
cache size : 2048 KB
physical id : 0
siblings : 4
core id : 0
cpu cores : 4
apicid : 0
initial apicid : 0
fpu : yes
fpu_exception : yes
cpuid level : 13
wp : yes
flags : fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat
pse36 clflush mmx fxsr sse sse2 ht syscall nx mmxext fxsr_opt pdpe1gb
rdtscp lm constant_tsc rep_good acc_power nopl nonstop_tsc cpuid
extd_apicid aperfmperf pni pclmulqdq monitor ssse3 cx16 sse4_1 sse4_2 movbe
popcnt aes xsave avx f16c lahf_lm cmp_legacy svm extapic cr8_legacy abm
sse4a misalignsse 3dnowprefetch osvw ibs skinit wdt topoext perfctr_nb
bpext ptsc perfctr_llc cpb hw_pstate ssbd vmmcall bmi1 xsaveopt arat npt
lbrv svm_lock nrip_save tsc_scale flushbyasid decodeassists pausefilter
pfthreshold overflow_recov
bugs : fxsave_leak sysret_ss_attrs null_seg spectre_v1 spectre_v2
spec_store_bypass
bogomips : 1996.33
TLB size : 1024 4K pages
clflush size : 64
cache_alignment : 64
address sizes : 40 bits physical, 48 bits virtual
power management: ts ttp tm 100mhzsteps hwpstate cpb acc_power [13]

processor : 1
vendor_id : AuthenticAMD
cpu family : 22
model : 48
model name : AMD GX-412TC SOC
stepping : 1
microcode : 0x7030105
cpu MHz : 598.592
cache size : 2048 KB
physical id : 0
siblings : 4
core id : 1
cpu cores : 4
apicid : 1
initial apicid : 1
fpu : yes
fpu_exception : yes
cpuid level : 13
wp : yes
flags : fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat
pse36 clflush mmx fxsr sse sse2 ht syscall nx mmxext fxsr_opt pdpe1gb
rdtscp lm constant_tsc rep_good acc_power nopl nonstop_tsc cpuid
extd_apicid aperfmperf pni pclmulqdq monitor ssse3 cx16 sse4_1 sse4_2 movbe
popcnt aes xsave avx f16c lahf_lm cmp_legacy svm extapic cr8_legacy abm
sse4a misalignsse 3dnowprefetch osvw ibs skinit wdt topoext perfctr_nb
bpext ptsc perfctr_llc cpb hw_pstate ssbd vmmcall bmi1 xsaveopt arat npt
lbrv svm_lock nrip_save tsc_scale flushbyasid decodeassists pausefilter
pfthreshold overflow_recov
bugs : fxsave_leak sysret_ss_attrs null_seg spectre_v1 spectre_v2
spec_store_bypass
bogomips : 1996.33
TLB size : 1024 4K pages
clflush size : 64
cache_alignment : 64
address sizes : 40 bits physical, 48 bits virtual
power management: ts ttp tm 100mhzsteps hwpstate cpb acc_power [13]

processor : 2
vendor_id : AuthenticAMD
cpu family : 22
model : 48
model name : AMD GX-412TC SOC
stepping : 1
microcode : 0x7030105
cpu MHz : 598.672
cache size : 2048 KB
physical id : 0
siblings : 4
core id : 2
cpu cores : 4
apicid : 2
initial apicid : 2
fpu : yes
fpu_exception : yes
cpuid level : 13
wp : yes
flags : fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat
pse36 clflush mmx fxsr sse sse2 ht syscall nx mmxext fxsr_opt pdpe1gb
rdtscp lm constant_tsc rep_good acc_power nopl nonstop_tsc cpuid
extd_apicid aperfmperf pni pclmulqdq monitor ssse3 cx16 sse4_1 sse4_2 movbe
popcnt aes xsave avx f16c lahf_lm cmp_legacy svm extapic cr8_legacy abm
sse4a misalignsse 3dnowprefetch osvw ibs skinit wdt topoext perfctr_nb
bpext ptsc perfctr_llc cpb hw_pstate ssbd vmmcall bmi1 xsaveopt arat npt
lbrv svm_lock nrip_save tsc_scale flushbyasid decodeassists pausefilter
pfthreshold overflow_recov
bugs : fxsave_leak sysret_ss_attrs null_seg spectre_v1 spectre_v2
spec_store_bypass
bogomips : 1996.33
TLB size : 1024 4K pages
clflush size : 64
cache_alignment : 64
address sizes : 40 bits physical, 48 bits virtual
power management: ts ttp tm 100mhzsteps hwpstate cpb acc_power [13]

processor : 3
vendor_id : AuthenticAMD
cpu family : 22
model : 48
model name : AMD GX-412TC SOC
stepping : 1
microcode : 0x7030105
cpu MHz : 598.778
cache size : 2048 KB
physical id : 0
siblings : 4
core id : 3
cpu cores : 4
apicid : 3
initial apicid : 3
fpu : yes
fpu_exception : yes
cpuid level : 13
wp : yes
flags : fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat
pse36 clflush mmx fxsr sse sse2 ht syscall nx mmxext fxsr_opt pdpe1gb
rdtscp lm constant_tsc rep_good acc_power nopl nonstop_tsc cpuid
extd_apicid aperfmperf pni pclmulqdq monitor ssse3 cx16 sse4_1 sse4_2 movbe
popcnt aes xsave avx f16c lahf_lm cmp_legacy svm extapic cr8_legacy abm
sse4a misalignsse 3dnowprefetch osvw ibs skinit wdt topoext perfctr_nb
bpext ptsc perfctr_llc cpb hw_pstate ssbd vmmcall bmi1 xsaveopt arat npt
lbrv svm_lock nrip_save tsc_scale flushbyasid decodeassists pausefilter
pfthreshold overflow_recov
bugs : fxsave_leak sysret_ss_attrs null_seg spectre_v1 spectre_v2
spec_store_bypass
bogomips : 1996.33
TLB size : 1024 4K pages
clflush size : 64
cache_alignment : 64
address sizes : 40 bits physical, 48 bits virtual
power management: ts ttp tm 100mhzsteps hwpstate cpb acc_power [13]

[8.3.] Module information (from /proc/modules):
system 1:
e1000e 245760 0 - Live 0x0000000000000000

system 2:
e1000e 155648 0 - Live 0xffffffffa0198000
igb 139264 0 - Live 0xffffffffa013f000
i2c_algo_bit 16384 1 igb, Live 0xffffffffa0138000
ptp 20480 2 e1000e,igb, Live 0xffffffffa000f000

[8.4.] Loaded driver and hardware information (/proc/ioports, /proc/iomem)
-------------------------------------------------------------------------------
system 1 (/proc/ioports):
0000-0000 : PCI Bus 0000:00
  0000-0000 : dma1
  0000-0000 : pic1
  0000-0000 : timer0
  0000-0000 : timer1
  0000-0000 : keyboard
  0000-0000 : PNP0C09:00
    0000-0000 : EC data
  0000-0000 : keyboard
  0000-0000 : PNP0C09:00
    0000-0000 : EC cmd
  0000-0000 : rtc0
  0000-0000 : dma page reg
  0000-0000 : pic2
  0000-0000 : dma2
  0000-0000 : fpu
  0000-0000 : pnp 00:08
  0000-0000 : iTCO_wdt
  0000-0000 : pnp 00:03
0000-0000 : PCI conf1
0000-0000 : PCI Bus 0000:00
  0000-0000 : pnp 00:03
  0000-0000 : pnp 00:03
    0000-0000 : ACPI PM1a_EVT_BLK
    0000-0000 : ACPI PM1a_CNT_BLK
    0000-0000 : ACPI PM_TMR
    0000-0000 : ACPI CPU throttle
    0000-0000 : iTCO_wdt
    0000-0000 : ACPI PM2_CNT_BLK
    0000-0000 : pnp 00:05
    0000-0000 : ACPI GPE0_BLK
  0000-0000 : pnp 00:02
  0000-0000 : 0000:00:02.0
  0000-0000 : 0000:00:17.0
    0000-0000 : ahci
  0000-0000 : 0000:00:17.0
    0000-0000 : ahci
  0000-0000 : 0000:00:17.0
    0000-0000 : ahci
  0000-0000 : PCI Bus 0000:02
  0000-0000 : 0000:00:1f.4
    0000-0000 : i801_smbus
  0000-0000 : pnp 00:03
    0000-0000 : pnp 00:03
      0000-0000 : pnp 00:03

system 1 (/proc/iomem):
00000000-00000000 : Reserved
00000000-00000000 : System RAM
00000000-00000000 : Reserved
00000000-00000000 : System RAM
00000000-00000000 : Reserved
  00000000-00000000 : PCI Bus 0000:00
  00000000-00000000 : PCI Bus 0000:00
  00000000-00000000 : PCI Bus 0000:00
  00000000-00000000 : PCI Bus 0000:00
  00000000-00000000 : PCI Bus 0000:00
  00000000-00000000 : PCI Bus 0000:00
  00000000-00000000 : PCI Bus 0000:00
  00000000-00000000 : PCI Bus 0000:00
  00000000-00000000 : PCI Bus 0000:00
  00000000-00000000 : PCI Bus 0000:00
  00000000-00000000 : PCI Bus 0000:00
  00000000-00000000 : PCI Bus 0000:00
  00000000-00000000 : PCI Bus 0000:00
  00000000-00000000 : PCI Bus 0000:00
    00000000-00000000 : System ROM
00000000-00000000 : System RAM
  00000000-00000000 : Kernel code
  00000000-00000000 : Kernel data
  00000000-00000000 : Kernel bss
00000000-00000000 : Reserved
  00000000-00000000 : pnp 00:00
00000000-00000000 : System RAM
00000000-00000000 : ACPI Non-volatile Storage
00000000-00000000 : Reserved
00000000-00000000 : System RAM
00000000-00000000 : Unknown E820 type
00000000-00000000 : Reserved
00000000-00000000 : ACPI Non-volatile Storage
  00000000-00000000 : USBC000:00
00000000-00000000 : ACPI Tables
00000000-00000000 : System RAM
00000000-00000000 : Reserved
  00000000-00000000 : Graphics Stolen Memory
00000000-00000000 : PCI Bus 0000:00
  00000000-00000000 : pnp 00:0b
  00000000-00000000 : PCI Bus 0000:02
  00000000-00000000 : PCI Bus 0000:01
    00000000-00000000 : 0000:01:00.0
      00000000-00000000 : iwlwifi
  00000000-00000000 : 0000:00:1f.6
    00000000-00000000 : e1000e
  00000000-00000000 : 0000:00:14.0
    00000000-00000000 : xhci-hcd
      00000000-00000000 : intel_xhci_usb_sw
  00000000-00000000 : 0000:00:1f.2
  00000000-00000000 : 0000:00:17.0
    00000000-00000000 : ahci
  00000000-00000000 : 0000:00:17.0
    00000000-00000000 : ahci
  00000000-00000000 : 0000:00:17.0
    00000000-00000000 : ahci
00000000-00000000 : PCI MMCONFIG 0000 [bus 00-7f]
  00000000-00000000 : Reserved
    00000000-00000000 : pnp 00:0b
00000000-00000000 : PCI Bus 0000:00
  00000000-00000000 : pnp 00:01
  00000000-00000000 : INT344B:00
    00000000-00000000 : INT344B:00
  00000000-00000000 : pnp 00:01
  00000000-00000000 : INT344B:00
    00000000-00000000 : INT344B:00
  00000000-00000000 : INT344B:00
    00000000-00000000 : INT344B:00
  00000000-00000000 : pnp 00:01
    00000000-00000000 : iTCO_wdt
  00000000-00000000 : Reserved
  00000000-00000000 : pnp 00:0a
  00000000-00000000 : pnp 00:09
  00000000-00000000 : pnp 00:09
  00000000-00000000 : pnp 00:01
00000000-00000000 : IOAPIC 0
00000000-00000000 : HPET 0
  00000000-00000000 : PNP0103:00
00000000-00000000 : pnp 00:0b
00000000-00000000 : pnp 00:0b
00000000-00000000 : pnp 00:0b
00000000-00000000 : pnp 00:0b
00000000-00000000 : IFX0763:00
  00000000-00000000 : IFX0763:00
00000000-00000000 : pnp 00:0b
00000000-00000000 : dmar0
00000000-00000000 : dmar1
00000000-00000000 : pnp 00:08
00000000-00000000 : pnp 00:0b
  00000000-00000000 : Local APIC
00000000-00000000 : INT0800:00
  00000000-00000000 : pnp 00:0b
00000000-00000000 : System RAM
00000000-00000000 : RAM buffer
00000000-00000000 : PCI Bus 0000:00
  00000000-00000000 : 0000:00:02.0
  00000000-00000000 : PCI Bus 0000:02
  00000000-00000000 : 0000:00:02.0
  00000000-00000000 : 0000:00:1f.3
    00000000-00000000 : ICH HD audio
  00000000-00000000 : 0000:00:04.0
  00000000-00000000 : 0000:00:1f.3
    00000000-00000000 : ICH HD audio
  00000000-00000000 : 0000:00:1f.4
  00000000-00000000 : 0000:00:16.0
    00000000-00000000 : mei_me
  00000000-00000000 : 0000:00:15.1
    00000000-00000000 : lpss_dev
      00000000-00000000 : lpss_dev
    00000000-00000000 : lpss_priv
    00000000-00000000 : idma64.1
      00000000-00000000 : idma64.1
  00000000-00000000 : 0000:00:15.0
    00000000-00000000 : lpss_dev
      00000000-00000000 : lpss_dev
    00000000-00000000 : lpss_priv
    00000000-00000000 : idma64.0
      00000000-00000000 : idma64.0
  00000000-00000000 : 0000:00:14.2
    00000000-00000000 : Intel PCH thermal driver

-------------------------------------------------------------------------------
system 2 (/proc/ioports):
0000-0cf7 : PCI Bus 0000:00
  0000-001f : dma1
  0020-0021 : pic1
  0040-0043 : timer0
  0050-0053 : timer1
  0060-0060 : keyboard
  0061-0061 : PNP0800:00
  0064-0064 : keyboard
  0070-0071 : rtc0
  0080-008f : dma page reg
  00a0-00a1 : pic2
  00c0-00df : dma2
  00f0-00ff : PNP0C04:00
    00f0-00ff : fpu
  02f8-02ff : serial
  03c0-03df : vga+
  03f8-03ff : serial
  0800-0803 : ACPI PM1a_EVT_BLK
  0804-0805 : ACPI PM1a_CNT_BLK
  0810-0817 : ACPI GPE0_BLK
  0818-081b : ACPI PM_TMR
  0cd6-0cd7 : SB800 TCO
0cf8-0cff : PCI conf1
0d00-ffff : PCI Bus 0000:00
  1000-1fff : PCI Bus 0000:02
    1000-101f : 0000:02:00.0
  2000-2fff : PCI Bus 0000:03
    2000-201f : 0000:03:00.0
  3000-3fff : PCI Bus 0000:04
    3000-301f : 0000:04:00.0
  4000-400f : 0000:00:11.0
    4000-400f : ahci
  4010-4017 : 0000:00:11.0
    4010-4017 : ahci
  4018-401f : 0000:00:11.0
    4018-401f : ahci
  4020-4023 : 0000:00:11.0
    4020-4023 : ahci
  4024-4027 : 0000:00:11.0
    4024-4027 : ahci

system 2 (/proc/iomem):
00000000-00000fff : Reserved
00001000-0009f7ff : System RAM
0009f800-0009ffff : Reserved
000a0000-000bffff : PCI Bus 0000:00
000c0000-000dffff : PCI Bus 0000:00
  000c0000-000c7fff : Video ROM
000f0000-000fffff : Reserved
  000f0000-000fffff : System ROM
00100000-dffadfff : System RAM
  01000000-018021d0 : Kernel code
  018021d1-01c805bf : Kernel data
  01d9b000-01df8fff : Kernel bss
dffae000-dfffffff : Reserved
e0000000-ffffffff : PCI Bus 0000:00
  f8000000-fbffffff : Reserved
  fe200000-fe4fffff : PCI Bus 0000:01
    fe200000-fe3fffff : 0000:01:00.0
      fe200000-fe3fffff : ath
    fe400000-fe40ffff : 0000:01:00.0
  fe500000-fe5fffff : PCI Bus 0000:02
    fe500000-fe51ffff : 0000:02:00.0
      fe500000-fe51ffff : igb
    fe520000-fe523fff : 0000:02:00.0
      fe520000-fe523fff : igb
  fe600000-fe6fffff : PCI Bus 0000:03
    fe600000-fe61ffff : 0000:03:00.0
      fe600000-fe61ffff : igb
    fe620000-fe623fff : 0000:03:00.0
      fe620000-fe623fff : igb
  fe700000-fe7fffff : PCI Bus 0000:04
    fe700000-fe71ffff : 0000:04:00.0
      fe700000-fe71ffff : igb
    fe720000-fe723fff : 0000:04:00.0
      fe720000-fe723fff : igb
  fe800000-fe8fffff : 0000:00:08.0
    fe800000-fe8fffff : ccp
  fe900000-fe9fffff : 0000:00:08.0
    fe900000-fe9fffff : ccp
  fea00000-fea1ffff : 0000:00:08.0
    fea00000-fea1ffff : ccp
  fea20000-fea21fff : 0000:00:08.0
    fea20000-fea21fff : ccp
  fea22000-fea23fff : 0000:00:10.0
    fea22000-fea23fff : xhci-hcd
  fea24000-fea24fff : 0000:00:08.0
    fea24000-fea24fff : ccp
  fea25000-fea253ff : 0000:00:11.0
    fea25000-fea253ff : ahci
  fea25400-fea254ff : 0000:00:13.0
    fea25400-fea254ff : ehci_hcd
  fea25500-fea255ff : 0000:00:14.7
    fea25500-fea255ff : mmc0
  feb00000-feb00007 : SB800 TCO
  fec00000-fec003ff : IOAPIC 0
  fec10002-fec11001 : pnp 00:00
  fec20000-fec203ff : IOAPIC 1
  fed00000-fed003ff : HPET 0
  fed81500-fed817ff : leds-apu2
  fee00000-fee00fff : Local APIC
100000000-11effffff : System RAM
11f000000-11fffffff : RAM buffer

[8.5.] PCI information ('lspci -vvv' as root)
system 1:
00:1f.6 Ethernet controller: Intel Corporation Ethernet Connection (4)
I219-V (rev 21)
Subsystem: Hewlett-Packard Company Ethernet Connection (4) I219-V
Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx+
Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
Latency: 0
Interrupt: pin A routed to IRQ 123
Region 0: Memory at b6200000 (32-bit, non-prefetchable) [size=128K]
Capabilities: [c8] Power Management version 3
Flags: PMEClk- DSI+ D1- D2- AuxCurrent=0mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=1 PME-
Capabilities: [d0] MSI: Enable+ Count=1/1 Maskable- 64bit+
Address: 00000000fee00278  Data: 0000
Capabilities: [e0] PCI Advanced Features
AFCap: TP+ FLR+
AFCtrl: FLR-
AFStatus: TP-
Kernel driver in use: e1000e
Kernel modules: e1000e

system 2:
02:00.0 Ethernet controller: Intel Corporation I210 Gigabit Network
Connection (rev 03)
Subsystem: Intel Corporation Device 0000
Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx+
Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
Latency: 0, Cache Line Size: 64 bytes
Interrupt: pin A routed to IRQ 35
Region 0: Memory at fe500000 (32-bit, non-prefetchable) [size=128K]
Region 2: I/O ports at 1000 [size=32]
Region 3: Memory at fe520000 (32-bit, non-prefetchable) [size=16K]
Capabilities: [40] Power Management version 3
Flags: PMEClk- DSI+ D1- D2- AuxCurrent=0mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=1 PME-
Capabilities: [50] MSI: Enable- Count=1/1 Maskable+ 64bit+
Address: 0000000000000000  Data: 0000
Masking: 00000000  Pending: 00000000
Capabilities: [70] MSI-X: Enable+ Count=5 Masked-
Vector table: BAR=3 offset=00000000
PBA: BAR=3 offset=00002000
Capabilities: [a0] Express (v2) Endpoint, MSI 00
DevCap: MaxPayload 512 bytes, PhantFunc 0, Latency L0s <512ns, L1 <64us
ExtTag- AttnBtn- AttnInd- PwrInd- RBE+ FLReset+ SlotPowerLimit 0.000W
DevCtl: Report errors: Correctable+ Non-Fatal+ Fatal+ Unsupported+
RlxdOrd+ ExtTag- PhantFunc- AuxPwr- NoSnoop+ FLReset-
MaxPayload 256 bytes, MaxReadReq 512 bytes
DevSta: CorrErr- UncorrErr- FatalErr- UnsuppReq- AuxPwr+ TransPend-
LnkCap: Port #1, Speed 2.5GT/s, Width x1, ASPM L0s L1, Exit Latency L0s
<2us, L1 <16us
ClockPM- Surprise- LLActRep- BwNot- ASPMOptComp+
LnkCtl: ASPM Disabled; RCB 64 bytes Disabled- CommClk+
ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
LnkSta: Speed 2.5GT/s, Width x1, TrErr- Train- SlotClk+ DLActive- BWMgmt-
ABWMgmt-
DevCap2: Completion Timeout: Range ABCD, TimeoutDis+, LTR-, OBFF Not
Supported
AtomicOpsCap: 32bit- 64bit- 128bitCAS-
DevCtl2: Completion Timeout: 50us to 50ms, TimeoutDis-, LTR-, OBFF Disabled
AtomicOpsCtl: ReqEn-
LnkCtl2: Target Link Speed: 2.5GT/s, EnterCompliance- SpeedDis-
Transmit Margin: Normal Operating Range, EnterModifiedCompliance-
ComplianceSOS-
Compliance De-emphasis: -6dB
LnkSta2: Current De-emphasis Level: -6dB, EqualizationComplete-,
EqualizationPhase1-
EqualizationPhase2-, EqualizationPhase3-, LinkEqualizationRequest-
Capabilities: [100 v2] Advanced Error Reporting
UESta: DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP-
ECRC- UnsupReq- ACSViol-
UEMsk: DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP-
ECRC- UnsupReq- ACSViol-
UESvrt: DLP+ SDES+ TLP- FCP+ CmpltTO- CmpltAbrt- UnxCmplt- RxOF+ MalfTLP+
ECRC- UnsupReq- ACSViol-
CESta: RxErr- BadTLP- BadDLLP- Rollover- Timeout- NonFatalErr-
CEMsk: RxErr- BadTLP- BadDLLP- Rollover- Timeout- NonFatalErr+
AERCap: First Error Pointer: 00, ECRCGenCap+ ECRCGenEn- ECRCChkCap+
ECRCChkEn-
MultHdrRecCap- MultHdrRecEn- TLPPfxPres- HdrLogCap-
HeaderLog: 00000000 00000000 00000000 00000000
Capabilities: [140 v1] Device Serial Number 00-0d-b9-ff-ff-50-8a-7c
Capabilities: [1a0 v1] Transaction Processing Hints
Device specific mode supported
Steering table in TPH capability structure
Kernel driver in use: igb

[8.6.] SCSI information (from /proc/scsi/scsi)
system 1:
Attached devices:
Host: scsi2 Channel: 00 Id: 00 Lun: 00
  Vendor: ATA      Model: WDC WDS500G2B0B  Rev: 90WD
  Type:   Direct-Access                    ANSI  SCSI revision: 05

system 2:
Attached devices:
Host: scsi0 Channel: 00 Id: 00 Lun: 00
  Vendor: ATA      Model: SATA SSD         Rev: 01.2
  Type:   Direct-Access                    ANSI  SCSI revision: 05


[8.7.] Other information that might be relevant to the problem
       (please look in /proc and include all information that you
       think to be relevant):

  ethtool -T <ethernet interface> output

system 1:
$ ethtool -T enp0s31f6
Time stamping parameters for enp0s31f6:
Capabilities:
hardware-transmit     (SOF_TIMESTAMPING_TX_HARDWARE)
software-transmit     (SOF_TIMESTAMPING_TX_SOFTWARE)
hardware-receive      (SOF_TIMESTAMPING_RX_HARDWARE)
software-receive      (SOF_TIMESTAMPING_RX_SOFTWARE)
software-system-clock (SOF_TIMESTAMPING_SOFTWARE)
hardware-raw-clock    (SOF_TIMESTAMPING_RAW_HARDWARE)
PTP Hardware Clock: 0
Hardware Transmit Timestamp Modes:
off                   (HWTSTAMP_TX_OFF)
on                    (HWTSTAMP_TX_ON)
Hardware Receive Filter Modes:
none                  (HWTSTAMP_FILTER_NONE)
all                   (HWTSTAMP_FILTER_ALL)
ptpv1-l4-sync         (HWTSTAMP_FILTER_PTP_V1_L4_SYNC)
ptpv1-l4-delay-req    (HWTSTAMP_FILTER_PTP_V1_L4_DELAY_REQ)
ptpv2-l4-sync         (HWTSTAMP_FILTER_PTP_V2_L4_SYNC)
ptpv2-l4-delay-req    (HWTSTAMP_FILTER_PTP_V2_L4_DELAY_REQ)
ptpv2-l2-sync         (HWTSTAMP_FILTER_PTP_V2_L2_SYNC)
ptpv2-l2-delay-req    (HWTSTAMP_FILTER_PTP_V2_L2_DELAY_REQ)
ptpv2-event           (HWTSTAMP_FILTER_PTP_V2_EVENT)
ptpv2-sync            (HWTSTAMP_FILTER_PTP_V2_SYNC)
ptpv2-delay-req       (HWTSTAMP_FILTER_PTP_V2_DELAY_REQ)

system 2:
# ethtool -T eth2
Time stamping parameters for eth2:
Capabilities:
hardware-transmit     (SOF_TIMESTAMPING_TX_HARDWARE)
software-transmit     (SOF_TIMESTAMPING_TX_SOFTWARE)
hardware-receive      (SOF_TIMESTAMPING_RX_HARDWARE)
software-receive      (SOF_TIMESTAMPING_RX_SOFTWARE)
software-system-clock (SOF_TIMESTAMPING_SOFTWARE)
hardware-raw-clock    (SOF_TIMESTAMPING_RAW_HARDWARE)
PTP Hardware Clock: 2
Hardware Transmit Timestamp Modes:
off                   (HWTSTAMP_TX_OFF)
on                    (HWTSTAMP_TX_ON)
Hardware Receive Filter Modes:
none                  (HWTSTAMP_FILTER_NONE)
all                   (HWTSTAMP_FILTER_ALL)



Best regards,
Francesco

--0000000000005ff73a058e92a1d4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<br>I do not know if this is the right place to repo=
rt a possible issue, but I was not able to find another list related to the=
 problem I am experiencing.<br>I am currently using two different hardware =
devices, using two different Intel drivers (e1000e - system 1 - and igb - s=
ystem 2 -) and the problem is occuring in both.<br>Here is a compiled bug r=
eporting form:<br><br>[1.] One line summary of the problem: <br>No hardware=
 receive timestamps are returned when using ETH_P_ALL raw sockets and Intel=
 NICs<br><br>[2.] Full description of the problem/report: <br>I am currentl=
y using raw sockets with ETH_P_ALL, in order to capture all the packets com=
ing from my ethernet NIC, together with hardware timestamping (set by using=
 the SO_TIMESTAMPING socket option).<br><br>In particular, I set up everyth=
ing as in the code reported in the example program (point [7. ]).<br>I crea=
te a socket with:<br>socket(AF_PACKET,SOCK_RAW,htons(ETH_P_ALL))<br><br>The=
n, I enable hardware timestamps by calling the proper ioctl:<br>ioctl(sock,=
SIOCSHWTSTAMP,&amp;hwtstamp)<br><br>and by setting:<br>flags=3DSOF_TIMESTAM=
PING_RX_HARDWARE | SOF_TIMESTAMPING_TX_HARDWARE | SOF_TIMESTAMPING_RAW_HARD=
WARE;<br>setsockopt(sock,SOL_SOCKET,SO_TIMESTAMPING,&amp;flags,sizeof(flags=
))<br><br>Everything is performed according to the timestaping documentatio=
n:<br><a href=3D"https://www.kernel.org/doc/Documentation/networking/timest=
amping.txt">https://www.kernel.org/doc/Documentation/networking/timestampin=
g.txt</a><br><br>Hardware timestamps should be reported as ancillary data. =
If ETH_P_ALL is set, no timestamps are reported and mhdr.msg_controllen (fr=
om struct msghdr mhdr) is always 0, after each recvmsg.<br>Sometimes, only =
the first received packet timestamp is reported, but all the others are not=
.<br>If other protocols are set, such as ETH_P_IP, timestamps are correctly=
 reported:<br>socket(AF_PACKET,SOCK_RAW,htons(ETH_P_IP))<br><br>Hardware: s=
ystem 1: Intel Corporation Ethernet Connection (4) I219-V (rev 21) - e1000e=
<br>system 2: Intel Corporation I210 Gigabit Network Connection (rev 03)<br=
><br>[3.] Keywords (i.e., modules, networking, kernel):<br>networking, time=
stamps, timestamping, sockets, AF_PACKET, ETH_P_ALL, ETH_P_IP, CSMG, ancill=
ary data, SOF_TIMESTAMPING_RAW_HARDWARE, Intel NIC<br><br>[4.] Kernel infor=
mation<br>[4.1.] Kernel version (from /proc/version):<br>system 1: Linux ve=
rsion 5.0.0-16-generic (buildd@lgw01-amd64-060) (gcc version 8.3.0 (Ubuntu =
8.3.0-6ubuntu1)) #17-Ubuntu SMP Wed May 15 10:52:21 UTC 2019<br><br>system =
2: Linux version 4.14.95 (francesco@francesco-pcengines-dev) (gcc version 7=
.3.0 (OpenWrt GCC 7.3.0 r7676-cddd7b4c77)) #0 SMP Wed Jan 30 12:21:02 2019<=
br><br>[5.] Most recent kernel version which did not have the bug: <br>None=
<br><br>[7.] A small shell script or example program which triggers the<br>=
=C2=A0 =C2=A0 =C2=A0problem (if possible):<br><br><div>=C2=A0 =C2=A0 =C2=A0=
Example C program:</div><br>#include &lt;arpa/inet.h&gt;<br>		#include &lt;=
linux/net_tstamp.h&gt;<br>		#include &lt;stdio.h&gt;<br>		#include &lt;stdl=
ib.h&gt;<br>		#include &lt;string.h&gt;<br>		#include &lt;sys/socket.h&gt;<=
br>		#include &lt;sys/ioctl.h&gt;<br>		#include &lt;linux/sockios.h&gt;<br>=
		#include &lt;unistd.h&gt;<br>		#include &lt;linux/if.h&gt;<br>		#include =
&lt;linux/if_packet.h&gt;<br>		#include &lt;net/ethernet.h&gt;<br>		#includ=
e &lt;linux/ip.h&gt;<br>		#include &lt;linux/errqueue.h&gt;<br><br>		int ma=
in(int argc, char* argv[]) {<br>		 =C2=A0 =C2=A0struct ifreq ifindexreq;<br=
>		 =C2=A0 =C2=A0int pkt_counter=3D0;<br>		 =C2=A0 =C2=A0int flags;<br>		 =
=C2=A0 =C2=A0int sock;<br>		 =C2=A0 =C2=A0int ifindex;<br>		 =C2=A0 =C2=A0s=
truct sockaddr_ll si_server;<br><br>		 =C2=A0 =C2=A0struct msghdr mhdr;<br>=
		 =C2=A0 =C2=A0struct iovec iov;<br>		 =C2=A0 =C2=A0struct cmsghdr *cmsg =
=3D NULL;<br><br>		 =C2=A0 =C2=A0struct ifreq hwtstamp;<br>		 =C2=A0 =C2=A0=
struct hwtstamp_config hwconfig;<br><br>		 =C2=A0 =C2=A0unsigned char buffe=
r[1514];<br>		 =C2=A0 =C2=A0char ctrlBuffer[CMSG_SPACE(sizeof(struct scm_ti=
mestamping))];<br>		 =C2=A0 =C2=A0struct scm_timestamping hw_ts;<br><br>		 =
=C2=A0 =C2=A0struct iphdr *iphdr_ptr;<br>		 =C2=A0 =C2=A0struct in_addr sad=
dr_ip;<br><br>		 =C2=A0 =C2=A0int rx_bytes;<br><br>		 =C2=A0 =C2=A0fprintf(=
stdout,&quot;Program started.\n&quot;);<br><br>		 =C2=A0 =C2=A0if(argc!=3D2=
) {<br>		 =C2=A0 =C2=A0 =C2=A0 =C2=A0fprintf(stderr,&quot;Error. You should=
 specify the interface name.\n&quot;);<br>		 =C2=A0 =C2=A0 =C2=A0 =C2=A0exi=
t(1);<br>		 =C2=A0 =C2=A0}<br><br>		 =C2=A0 =C2=A0// Create socket<br>		 =
=C2=A0 =C2=A0if ((sock =3D socket(AF_PACKET,SOCK_RAW,htons(ETH_P_ALL))) &lt=
; 0) {<br>		 =C2=A0 =C2=A0 =C2=A0 =C2=A0perror(&quot;RAW socket()&quot;);<b=
r>		 =C2=A0 =C2=A0 =C2=A0 =C2=A0exit(EXIT_FAILURE);<br>		 =C2=A0 =C2=A0}<br=
><br>		 =C2=A0 =C2=A0// Get interface index<br>		 =C2=A0 =C2=A0strncpy(ifin=
dexreq.ifr_name,argv[1],IFNAMSIZ);<br>		 =C2=A0 =C2=A0if(ioctl(sock,SIOCGIF=
INDEX,&amp;ifindexreq)!=3D-1) {<br>		 =C2=A0 =C2=A0 =C2=A0 =C2=A0ifindex=3D=
ifindexreq.ifr_ifindex;<br>		 =C2=A0 =C2=A0} else {<br>			 =C2=A0 perror(&q=
uot;SIOCGIFINDEX ioctl()&quot;);<br>		 =C2=A0 =C2=A0 =C2=A0 close(sock);<br=
>		 =C2=A0 =C2=A0 =C2=A0 exit(EXIT_FAILURE);<br>		 =C2=A0 =C2=A0}<br><br>		=
 =C2=A0 =C2=A0memset(&amp;si_server, 0, sizeof(si_server));<br>		 =C2=A0 =
=C2=A0si_server.sll_ifindex=3Difindex;<br>		 =C2=A0 =C2=A0si_server.sll_fam=
ily=3DAF_PACKET;<br><br>			// bind() to interface<br>		 =C2=A0 	if(bind(soc=
k,(struct sockaddr *) &amp;si_server,sizeof(si_server))&lt;0) {<br>				perr=
or(&quot;bind()&quot;);<br>		 =C2=A0 =C2=A0 =C2=A0 =C2=A0close(sock);<br>		=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0exit(EXIT_FAILURE);<br>			}<br><br>		 =C2=A0 =
=C2=A0// Set hardware timestamping<br>		 =C2=A0 =C2=A0memset(&amp;hwtstamp,=
0,sizeof(hwtstamp));<br>		 =C2=A0 =C2=A0memset(&amp;hwconfig,0,sizeof(hwcon=
fig));<br><br>		 =C2=A0 =C2=A0// Set ifr_name and ifr_data<br>		 =C2=A0 =C2=
=A0strncpy(hwtstamp.ifr_name,argv[1],sizeof(hwtstamp.ifr_name));<br>		 =C2=
=A0 =C2=A0hwtstamp.ifr_data=3D(void *)&amp;hwconfig;<br><br>		 =C2=A0 =C2=
=A0hwconfig.tx_type=3DHWTSTAMP_TX_ON;<br>		 =C2=A0 =C2=A0hwconfig.rx_filter=
=3DHWTSTAMP_FILTER_ALL;<br><br>		 =C2=A0 =C2=A0// Issue request to the driv=
er<br>		 =C2=A0 =C2=A0if (ioctl(sock,SIOCSHWTSTAMP,&amp;hwtstamp)&lt;0) {<b=
r>		 =C2=A0 =C2=A0 =C2=A0 =C2=A0perror(&quot;ioctl(SIOCSHWTSTAMP)&quot;);<b=
r>		 =C2=A0 =C2=A0 =C2=A0 =C2=A0close(sock);<br>		 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0exit(EXIT_FAILURE);<br>		 =C2=A0 =C2=A0}<br><br>		 =C2=A0 =C2=A0flags=3D=
SOF_TIMESTAMPING_RX_HARDWARE | SOF_TIMESTAMPING_TX_HARDWARE | SOF_TIMESTAMP=
ING_RAW_HARDWARE;<br><br>		 =C2=A0 =C2=A0if(setsockopt(sock,SOL_SOCKET,SO_T=
IMESTAMPING,&amp;flags,sizeof(flags))&lt;0) {<br>		 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0perror(&quot;setsockopt(SO_TIMESTAMPING)&=
quot;);<br>		 =C2=A0 =C2=A0 =C2=A0 =C2=A0close(sock);<br>		 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0exit(EXIT_FAILURE);<br>		 =C2=A0 =C2=A0}<br><br>		 =C2=A0 =C2=
=A0memset(&amp;mhdr,0,sizeof(mhdr));<br><br>		 =C2=A0 =C2=A0// iovec buffer=
s (scatter/gather arrays)<br>		 =C2=A0 =C2=A0iov.iov_base=3Dbuffer;<br>		 =
=C2=A0 =C2=A0iov.iov_len=3Dsizeof(buffer);<br><br>		 =C2=A0 =C2=A0// Socket=
 address structure<br>		 =C2=A0 =C2=A0mhdr.msg_name=3DNULL;<br>		 =C2=A0 =
=C2=A0mhdr.msg_namelen=3D0;<br><br>		 =C2=A0 =C2=A0// Ancillary data (contr=
ol message)<br>		 =C2=A0 =C2=A0mhdr.msg_control=3DctrlBuffer;<br>		 =C2=A0 =
=C2=A0mhdr.msg_controllen=3Dsizeof(ctrlBuffer);<br><br>		 =C2=A0 =C2=A0// i=
ovec arrays<br>		 =C2=A0 =C2=A0mhdr.msg_iov=3D&amp;iov;<br>		 =C2=A0 =C2=A0=
mhdr.msg_iovlen=3D1;<br>			<br>		 =C2=A0 =C2=A0fprintf(stdout,&quot;(Before=
 while loop) CMSG_FIRSTHDR(&amp;mhdr)=3D%p (len=3D%zd)\n&quot;,CMSG_FIRSTHD=
R(&amp;mhdr),mhdr.msg_controllen);<br>		 =C2=A0 =C2=A0// Receive 10 packets=
, then stop<br>		 =C2=A0 =C2=A0while(pkt_counter&lt;10) {<br>		 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0rx_bytes=3Drecvmsg(sock,&amp;mhdr,0);<br><br>		 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0// Find IP address from packet (just for printing)<br>		 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0iphdr_ptr=3D(struct iphdr *) (buffer+sizeof(stru=
ct ether_header));<br>		 =C2=A0 =C2=A0 =C2=A0 =C2=A0saddr_ip.s_addr=3Diphdr=
_ptr-&gt;saddr;<br>		 =C2=A0 =C2=A0 =C2=A0 =C2=A0fprintf(stdout,&quot;Recei=
ved a packet from %s (len=3D%d).\n&quot;,inet_ntoa(saddr_ip),rx_bytes);<br>=
<br>		 =C2=A0 =C2=A0 =C2=A0 =C2=A0fprintf(stdout,&quot;(Inside while loop -=
 %d) CMSG_FIRSTHDR(&amp;mhdr)=3D%p (len=3D%zd)\n&quot;,pkt_counter,CMSG_FIR=
STHDR(&amp;mhdr),mhdr.msg_controllen);<br>		 =C2=A0 =C2=A0 =C2=A0 =C2=A0for=
(cmsg=3DCMSG_FIRSTHDR(&amp;mhdr);cmsg!=3DNULL;cmsg=3DCMSG_NXTHDR(&amp;mhdr,=
 cmsg)) {<br>		 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if(cmsg-&gt;cmsg_l=
evel=3D=3DSOL_SOCKET &amp;&amp; cmsg-&gt;cmsg_type=3D=3DSO_TIMESTAMPING) {<=
br>		 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0hw_ts=3D*((str=
uct scm_timestamping *)CMSG_DATA(cmsg));<br>		 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0fprintf(stdout,&quot;RX timestamp: sec =3D %lu ,=
 nsec =3D %lu\n&quot;,hw_ts.ts[2].tv_sec,hw_ts.ts[2].tv_nsec);<br>		 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>		 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>=
		 =C2=A0 =C2=A0 =C2=A0 =C2=A0pkt_counter++;<br>		 =C2=A0 =C2=A0}<br><br>		=
 =C2=A0 =C2=A0close(sock);<br><br>		 =C2=A0 =C2=A0return 0;<br>		}<br><br>	=
Example output when htons(ETH_P_ALL) is set:<br>		$ sudo ./testrx enp0s31f6=
<br>		Program started.<br>		(Before while loop) CMSG_FIRSTHDR(&amp;mhdr)=3D=
0x7fffd384f5c0 (len=3D64)<br>		Received a packet from 162.125.18.133 (len=
=3D323).<br>		(Inside while loop - 0) CMSG_FIRSTHDR(&amp;mhdr)=3D0x7fffd384=
f5c0 (len=3D64)<br>		RX timestamp: sec =3D 1564132845 , nsec =3D 678740274<=
br>		Received a packet from 192.168.1.210 (len=3D609).<br>		(Inside while l=
oop - 1) CMSG_FIRSTHDR(&amp;mhdr)=3D(nil) (len=3D0)<br>		Received a packet =
from 162.125.18.133 (len=3D66).<br>		(Inside while loop - 2) CMSG_FIRSTHDR(=
&amp;mhdr)=3D(nil) (len=3D0)<br>		Received a packet from 192.168.1.210 (len=
=3D650).<br>		(Inside while loop - 3) CMSG_FIRSTHDR(&amp;mhdr)=3D(nil) (len=
=3D0)<br>		Received a packet from 162.125.18.133 (len=3D66).<br>		(Inside w=
hile loop - 4) CMSG_FIRSTHDR(&amp;mhdr)=3D(nil) (len=3D0)<br>		Received a p=
acket from 192.168.1.250 (len=3D146).<br>		(Inside while loop - 5) CMSG_FIR=
STHDR(&amp;mhdr)=3D(nil) (len=3D0)<br>		Received a packet from 192.168.1.21=
0 (len=3D66).<br>		(Inside while loop - 6) CMSG_FIRSTHDR(&amp;mhdr)=3D(nil)=
 (len=3D0)<br>		Received a packet from 192.168.1.210 (len=3D114).<br>		(Ins=
ide while loop - 7) CMSG_FIRSTHDR(&amp;mhdr)=3D(nil) (len=3D0)<br>		Receive=
d a packet from 192.168.1.250 (len=3D66).<br>		(Inside while loop - 8) CMSG=
_FIRSTHDR(&amp;mhdr)=3D(nil) (len=3D0)<br>		Received a packet from 192.168.=
1.210 (len=3D90).<br>		(Inside while loop - 9) CMSG_FIRSTHDR(&amp;mhdr)=3D(=
nil) (len=3D0)<br><br>	&quot;(Inside while loop - 0)&quot; is sometimes rep=
orted, some other not reported, as for all the other received packets.<br><=
br>	Example output when htons(ETH_P_IP) is set:<br>		$ sudo ./testrx enp0s3=
1f6<br>		Program started.<br>		(Before while loop) CMSG_FIRSTHDR(&amp;mhdr)=
=3D0x7ffd65075280 (len=3D64)<br>		Received a packet from 192.168.1.250 (len=
=3D98).<br>		(Inside while loop - 0) CMSG_FIRSTHDR(&amp;mhdr)=3D0x7ffd65075=
280 (len=3D64)<br>		RX timestamp: sec =3D 1564133136 , nsec =3D 669293274<b=
r>		Received a packet from 192.168.1.250 (len=3D194).<br>		(Inside while lo=
op - 1) CMSG_FIRSTHDR(&amp;mhdr)=3D0x7ffd65075280 (len=3D64)<br>		RX timest=
amp: sec =3D 1564133136 , nsec =3D 669788649<br>		Received a packet from 19=
2.168.1.250 (len=3D98).<br>		(Inside while loop - 2) CMSG_FIRSTHDR(&amp;mhd=
r)=3D0x7ffd65075280 (len=3D64)<br>		RX timestamp: sec =3D 1564133137 , nsec=
 =3D 709189274<br>		Received a packet from 192.168.1.250 (len=3D194).<br>		=
(Inside while loop - 3) CMSG_FIRSTHDR(&amp;mhdr)=3D0x7ffd65075280 (len=3D64=
)<br>		RX timestamp: sec =3D 1564133137 , nsec =3D 709855774<br>		Received =
a packet from 192.168.1.250 (len=3D98).<br>		(Inside while loop - 4) CMSG_F=
IRSTHDR(&amp;mhdr)=3D0x7ffd65075280 (len=3D64)<br>		RX timestamp: sec =3D 1=
564133138 , nsec =3D 759102399<br>		Received a packet from 192.168.1.250 (l=
en=3D194).<br>		(Inside while loop - 5) CMSG_FIRSTHDR(&amp;mhdr)=3D0x7ffd65=
075280 (len=3D64)<br>		RX timestamp: sec =3D 1564133138 , nsec =3D 75964214=
9<br>		Received a packet from 192.168.1.250 (len=3D98).<br>		(Inside while =
loop - 6) CMSG_FIRSTHDR(&amp;mhdr)=3D0x7ffd65075280 (len=3D64)<br>		RX time=
stamp: sec =3D 1564133139 , nsec =3D 789017024<br>		Received a packet from =
192.168.1.250 (len=3D194).<br>		(Inside while loop - 7) CMSG_FIRSTHDR(&amp;=
mhdr)=3D0x7ffd65075280 (len=3D64)<br>		RX timestamp: sec =3D 1564133139 , n=
sec =3D 789737149<br>		Received a packet from 192.168.1.250 (len=3D98).<br>=
		(Inside while loop - 8) CMSG_FIRSTHDR(&amp;mhdr)=3D0x7ffd65075280 (len=3D=
64)<br>		RX timestamp: sec =3D 1564133140 , nsec =3D 828939899<br>		Receive=
d a packet from 192.168.1.250 (len=3D194).<br>		(Inside while loop - 9) CMS=
G_FIRSTHDR(&amp;mhdr)=3D0x7ffd65075280 (len=3D64)<br>		RX timestamp: sec =
=3D 1564133140 , nsec =3D 829930149<br><br><br>[8.] Environment<br>[8.1.] S=
oftware (add the output of the ver_linux script here)<br>------------------=
-------------------------------------------------------------<br>system 1:<=
br>Linux francesco-HP-EliteBook-830-G5 5.0.0-16-generic #17-Ubuntu SMP Wed =
May 15 10:52:21 UTC 2019 x86_64 x86_64 x86_64 GNU/Linux<br><br>GNU Make =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0	4.2.1<br>Binutils =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0	2.32<br>Util-linux =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0	2.33.1<br>Mount =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 	2.33.=
1<br>Module-init-tools =C2=A0 	25<br>E2fsprogs =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 	1.44.6<br>Pcmciautils =C2=A0 =C2=A0 =C2=A0 =C2=A0 	018<br>PPP =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 	2.4.7<br>Linux C Libr=
ary =C2=A0 =C2=A0 	2.29<br>Dynamic linker (ldd)	2.29<br>Linux C++ Library =
=C2=A0 	6.0.26<br>Procps =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0	3=
.3.15<br>Net-tools =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 	2.10<br>Kbd =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 	2.0.4<br>Console-tools =
=C2=A0 =C2=A0 =C2=A0 	2.0.4<br>Sh-utils =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0	8.30<br>Udev =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
	240<br>Wireless-tools =C2=A0 =C2=A0 =C2=A0	30<br>Modules Loaded =C2=A0 =C2=
=A0 =C2=A0	ac97_bus acpi_pad acpi_thermal_rel aesni_intel aes_x86_64 ahci a=
rc4 aufs autofs4 binfmt_misc bluetooth bnep btbcm btintel btrtl btusb cfg80=
211 coretemp crc32_pclmul crct10dif_pclmul cryptd crypto_simd drm drm_kms_h=
elper e1000e ecdh_generic fb_sys_fops ghash_clmulni_intel glue_helper hid h=
id_generic hid_multitouch hp_wireless hp_wmi i2c_algo_bit i2c_hid i2c_i801 =
i915 idma64 input_leds int3400_thermal int3403_thermal int340x_thermal_zone=
 intel_cstate intel_lpss intel_lpss_pci intel_pch_thermal intel_powerclamp =
intel_rapl intel_rapl_perf intel_soc_dts_iosf intel_wmi_thunderbolt intel_x=
hci_usb_role_switch ip_tables irqbypass iwlmvm iwlwifi joydev kvm kvmgt kvm=
_intel ledtrig_audio libahci lp mac80211 mac_hid mdev media mei mei_me nfne=
tlink nfnetlink_log nfnetlink_queue nls_iso8859_1 overlay parport parport_p=
c pinctrl_intel pinctrl_sunrisepoint ppdev processor_thermal_device psmouse=
 rfcomm roles sch_fq_codel serio_raw snd snd_compress snd_hda_codec snd_hda=
_codec_conexant snd_hda_codec_generic snd_hda_codec_hdmi snd_hda_core snd_h=
da_ext_core snd_hda_intel snd_hwdep snd_pcm snd_pcm_dmaengine snd_rawmidi s=
nd_seq snd_seq_device snd_seq_midi snd_seq_midi_event snd_soc_acpi snd_soc_=
acpi_intel_match snd_soc_core snd_soc_hdac_hda snd_soc_skl snd_soc_skl_ipc =
snd_soc_sst_dsp snd_soc_sst_ipc snd_timer soundcore sparse_keymap syscopyar=
ea sysfillrect sysimgblt thunderbolt typec typec_ucsi ucsi_acpi usbhid uvcv=
ideo vfio vfio_iommu_type1 vfio_mdev video videobuf2_common videobuf2_memop=
s videobuf2_v4l2 videobuf2_vmalloc videodev virt_dma wmi wmi_bmof x86_pkg_t=
emp_thermal x_tables<br><br>-----------------------------------------------=
--------------------------------<br>system 2:<br>Linux OpenWrt 4.14.95 #0 S=
MP Wed Jan 30 12:21:02 2019 x86_64 GNU/Linux<br><br>GNU C =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 	5.4.0<br>GNU Make =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0	4.2.1<br>Binutils =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0	2.27<br>Util-linux =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0	512<br>Mount =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 	512<br>PPP =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 	2.4.7<br>Dynamic linker (ldd)	86<br=
>Linux C++ Library =C2=A0 	1.28.4<br>Procps =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0	1.28.4<br>Modules Loaded =C2=A0 =C2=A0 =C2=A0	akcipher as=
n1_decoder ath ath10k_core ath10k_pci ath5k ath9k ath9k_common ath9k_htc at=
h9k_hw authenc button_hotplug ccp ccp_crypto cfg80211 compat crc_ccitt e100=
0 e1000e ehci_platform gpio_button_hotplug gpio_nct5104d i2c_algo_bit i2c_d=
ev igb ip6_tables ip6t_REJECT ip6table_filter ip6table_mangle ip_tables ipt=
_MASQUERADE ipt_REJECT iptable_filter iptable_mangle iptable_nat leds_apu2 =
lib80211 lib80211_crypt_ccmp lib80211_crypt_tkip lib80211_crypt_wep mac8021=
1 mii mpi nf_conntrack nf_conntrack_ipv4 nf_conntrack_ipv6 nf_conntrack_rtc=
ache nf_defrag_ipv4 nf_defrag_ipv6 nf_dup_ipv4 nf_dup_ipv6 nf_flow_table nf=
_flow_table_hw nf_log_common nf_log_ipv4 nf_log_ipv6 nf_nat nf_nat_ipv4 nf_=
nat_masquerade_ipv4 nf_nat_redirect nf_reject_ipv4 nf_reject_ipv6 ppp_async=
 ppp_generic pppoe pppox pps_core ptp r8169 rsa_generic sha1_generic sha1_s=
sse3 sha256_generic sha256_ssse3 slhc snd snd_compress snd_hwdep snd_mixer_=
oss snd_pcm snd_pcm_oss snd_pcsp snd_rawmidi snd_seq_device snd_timer sound=
core sp5100_tco x_tables xhci_plat_hcd xt_FLOWOFFLOAD xt_LOG xt_REDIRECT xt=
_TCPMSS xt_TEE xt_comment xt_conntrack xt_limit xt_mac xt_mark xt_multiport=
 xt_nat xt_state xt_tcpudp xt_time<br><br>[8.2.] Processor information (fro=
m /proc/cpuinfo):<br>------------------------------------------------------=
-------------------------<br>system 1:<br>processor	: 0<br>vendor_id	: Genu=
ineIntel<br>cpu family	: 6<br>model		: 142<br>model name	: Intel(R) Core(TM=
) i5-7200U CPU @ 2.50GHz<br>stepping	: 9<br>microcode	: 0xb4<br>cpu MHz		: =
800.017<br>cache size	: 3072 KB<br>physical id	: 0<br>siblings	: 4<br>core =
id		: 0<br>cpu cores	: 2<br>apicid		: 0<br>initial apicid	: 0<br>fpu		: yes=
<br>fpu_exception	: yes<br>cpuid level	: 22<br>wp		: yes<br>flags		: fpu vm=
e de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush d=
ts acpi mmx fxsr sse sse2 ss ht tm pbe syscall nx pdpe1gb rdtscp lm constan=
t_tsc art arch_perfmon pebs bts rep_good nopl xtopology nonstop_tsc cpuid a=
perfmperf tsc_known_freq pni pclmulqdq dtes64 monitor ds_cpl vmx est tm2 ss=
se3 sdbg fma cx16 xtpr pdcm pcid sse4_1 sse4_2 x2apic movbe popcnt tsc_dead=
line_timer aes xsave avx f16c rdrand lahf_lm abm 3dnowprefetch cpuid_fault =
epb invpcid_single pti ssbd ibrs ibpb stibp tpr_shadow vnmi flexpriority ep=
t vpid ept_ad fsgsbase tsc_adjust bmi1 avx2 smep bmi2 erms invpcid mpx rdse=
ed adx smap clflushopt intel_pt xsaveopt xsavec xgetbv1 xsaves dtherm ida a=
rat pln pts hwp hwp_notify hwp_act_window hwp_epp md_clear flush_l1d<br>bug=
s		: cpu_meltdown spectre_v1 spectre_v2 spec_store_bypass l1tf mds<br>bogom=
ips	: 5424.00<br>clflush size	: 64<br>cache_alignment	: 64<br>address sizes=
	: 39 bits physical, 48 bits virtual<br>power management:<br><br>processor	=
: 1<br>vendor_id	: GenuineIntel<br>cpu family	: 6<br>model		: 142<br>model =
name	: Intel(R) Core(TM) i5-7200U CPU @ 2.50GHz<br>stepping	: 9<br>microcod=
e	: 0xb4<br>cpu MHz		: 800.007<br>cache size	: 3072 KB<br>physical id	: 0<b=
r>siblings	: 4<br>core id		: 1<br>cpu cores	: 2<br>apicid		: 2<br>initial a=
picid	: 2<br>fpu		: yes<br>fpu_exception	: yes<br>cpuid level	: 22<br>wp		:=
 yes<br>flags		: fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca c=
mov pat pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm pbe syscall nx pd=
pe1gb rdtscp lm constant_tsc art arch_perfmon pebs bts rep_good nopl xtopol=
ogy nonstop_tsc cpuid aperfmperf tsc_known_freq pni pclmulqdq dtes64 monito=
r ds_cpl vmx est tm2 ssse3 sdbg fma cx16 xtpr pdcm pcid sse4_1 sse4_2 x2api=
c movbe popcnt tsc_deadline_timer aes xsave avx f16c rdrand lahf_lm abm 3dn=
owprefetch cpuid_fault epb invpcid_single pti ssbd ibrs ibpb stibp tpr_shad=
ow vnmi flexpriority ept vpid ept_ad fsgsbase tsc_adjust bmi1 avx2 smep bmi=
2 erms invpcid mpx rdseed adx smap clflushopt intel_pt xsaveopt xsavec xget=
bv1 xsaves dtherm ida arat pln pts hwp hwp_notify hwp_act_window hwp_epp md=
_clear flush_l1d<br>bugs		: cpu_meltdown spectre_v1 spectre_v2 spec_store_b=
ypass l1tf mds<br>bogomips	: 5424.00<br>clflush size	: 64<br>cache_alignmen=
t	: 64<br>address sizes	: 39 bits physical, 48 bits virtual<br>power manage=
ment:<br><br>processor	: 2<br>vendor_id	: GenuineIntel<br>cpu family	: 6<br=
>model		: 142<br>model name	: Intel(R) Core(TM) i5-7200U CPU @ 2.50GHz<br>s=
tepping	: 9<br>microcode	: 0xb4<br>cpu MHz		: 800.016<br>cache size	: 3072 =
KB<br>physical id	: 0<br>siblings	: 4<br>core id		: 0<br>cpu cores	: 2<br>a=
picid		: 1<br>initial apicid	: 1<br>fpu		: yes<br>fpu_exception	: yes<br>cp=
uid level	: 22<br>wp		: yes<br>flags		: fpu vme de pse tsc msr pae mce cx8 =
apic sep mtrr pge mca cmov pat pse36 clflush dts acpi mmx fxsr sse sse2 ss =
ht tm pbe syscall nx pdpe1gb rdtscp lm constant_tsc art arch_perfmon pebs b=
ts rep_good nopl xtopology nonstop_tsc cpuid aperfmperf tsc_known_freq pni =
pclmulqdq dtes64 monitor ds_cpl vmx est tm2 ssse3 sdbg fma cx16 xtpr pdcm p=
cid sse4_1 sse4_2 x2apic movbe popcnt tsc_deadline_timer aes xsave avx f16c=
 rdrand lahf_lm abm 3dnowprefetch cpuid_fault epb invpcid_single pti ssbd i=
brs ibpb stibp tpr_shadow vnmi flexpriority ept vpid ept_ad fsgsbase tsc_ad=
just bmi1 avx2 smep bmi2 erms invpcid mpx rdseed adx smap clflushopt intel_=
pt xsaveopt xsavec xgetbv1 xsaves dtherm ida arat pln pts hwp hwp_notify hw=
p_act_window hwp_epp md_clear flush_l1d<br>bugs		: cpu_meltdown spectre_v1 =
spectre_v2 spec_store_bypass l1tf mds<br>bogomips	: 5424.00<br>clflush size=
	: 64<br>cache_alignment	: 64<br>address sizes	: 39 bits physical, 48 bits =
virtual<br>power management:<br><br>processor	: 3<br>vendor_id	: GenuineInt=
el<br>cpu family	: 6<br>model		: 142<br>model name	: Intel(R) Core(TM) i5-7=
200U CPU @ 2.50GHz<br>stepping	: 9<br>microcode	: 0xb4<br>cpu MHz		: 800.00=
8<br>cache size	: 3072 KB<br>physical id	: 0<br>siblings	: 4<br>core id		: =
1<br>cpu cores	: 2<br>apicid		: 3<br>initial apicid	: 3<br>fpu		: yes<br>fp=
u_exception	: yes<br>cpuid level	: 22<br>wp		: yes<br>flags		: fpu vme de p=
se tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush dts acp=
i mmx fxsr sse sse2 ss ht tm pbe syscall nx pdpe1gb rdtscp lm constant_tsc =
art arch_perfmon pebs bts rep_good nopl xtopology nonstop_tsc cpuid aperfmp=
erf tsc_known_freq pni pclmulqdq dtes64 monitor ds_cpl vmx est tm2 ssse3 sd=
bg fma cx16 xtpr pdcm pcid sse4_1 sse4_2 x2apic movbe popcnt tsc_deadline_t=
imer aes xsave avx f16c rdrand lahf_lm abm 3dnowprefetch cpuid_fault epb in=
vpcid_single pti ssbd ibrs ibpb stibp tpr_shadow vnmi flexpriority ept vpid=
 ept_ad fsgsbase tsc_adjust bmi1 avx2 smep bmi2 erms invpcid mpx rdseed adx=
 smap clflushopt intel_pt xsaveopt xsavec xgetbv1 xsaves dtherm ida arat pl=
n pts hwp hwp_notify hwp_act_window hwp_epp md_clear flush_l1d<br>bugs		: c=
pu_meltdown spectre_v1 spectre_v2 spec_store_bypass l1tf mds<br>bogomips	: =
5424.00<br>clflush size	: 64<br>cache_alignment	: 64<br>address sizes	: 39 =
bits physical, 48 bits virtual<br>power management:<br><br>----------------=
---------------------------------------------------------------<br>system 2=
:<br>processor	: 0<br>vendor_id	: AuthenticAMD<br>cpu family	: 22<br>model	=
	: 48<br>model name	: AMD GX-412TC SOC<br>stepping	: 1<br>microcode	: 0x703=
0105<br>cpu MHz		: 598.589<br>cache size	: 2048 KB<br>physical id	: 0<br>si=
blings	: 4<br>core id		: 0<br>cpu cores	: 4<br>apicid		: 0<br>initial apici=
d	: 0<br>fpu		: yes<br>fpu_exception	: yes<br>cpuid level	: 13<br>wp		: yes=
<br>flags		: fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov =
pat pse36 clflush mmx fxsr sse sse2 ht syscall nx mmxext fxsr_opt pdpe1gb r=
dtscp lm constant_tsc rep_good acc_power nopl nonstop_tsc cpuid extd_apicid=
 aperfmperf pni pclmulqdq monitor ssse3 cx16 sse4_1 sse4_2 movbe popcnt aes=
 xsave avx f16c lahf_lm cmp_legacy svm extapic cr8_legacy abm sse4a misalig=
nsse 3dnowprefetch osvw ibs skinit wdt topoext perfctr_nb bpext ptsc perfct=
r_llc cpb hw_pstate ssbd vmmcall bmi1 xsaveopt arat npt lbrv svm_lock nrip_=
save tsc_scale flushbyasid decodeassists pausefilter pfthreshold overflow_r=
ecov<br>bugs		: fxsave_leak sysret_ss_attrs null_seg spectre_v1 spectre_v2 =
spec_store_bypass<br>bogomips	: 1996.33<br>TLB size	: 1024 4K pages<br>clfl=
ush size	: 64<br>cache_alignment	: 64<br>address sizes	: 40 bits physical, =
48 bits virtual<br>power management: ts ttp tm 100mhzsteps hwpstate cpb acc=
_power [13]<br><br>processor	: 1<br>vendor_id	: AuthenticAMD<br>cpu family	=
: 22<br>model		: 48<br>model name	: AMD GX-412TC SOC<br>stepping	: 1<br>mic=
rocode	: 0x7030105<br>cpu MHz		: 598.592<br>cache size	: 2048 KB<br>physica=
l id	: 0<br>siblings	: 4<br>core id		: 1<br>cpu cores	: 4<br>apicid		: 1<br=
>initial apicid	: 1<br>fpu		: yes<br>fpu_exception	: yes<br>cpuid level	: 1=
3<br>wp		: yes<br>flags		: fpu vme de pse tsc msr pae mce cx8 apic sep mtrr=
 pge mca cmov pat pse36 clflush mmx fxsr sse sse2 ht syscall nx mmxext fxsr=
_opt pdpe1gb rdtscp lm constant_tsc rep_good acc_power nopl nonstop_tsc cpu=
id extd_apicid aperfmperf pni pclmulqdq monitor ssse3 cx16 sse4_1 sse4_2 mo=
vbe popcnt aes xsave avx f16c lahf_lm cmp_legacy svm extapic cr8_legacy abm=
 sse4a misalignsse 3dnowprefetch osvw ibs skinit wdt topoext perfctr_nb bpe=
xt ptsc perfctr_llc cpb hw_pstate ssbd vmmcall bmi1 xsaveopt arat npt lbrv =
svm_lock nrip_save tsc_scale flushbyasid decodeassists pausefilter pfthresh=
old overflow_recov<br>bugs		: fxsave_leak sysret_ss_attrs null_seg spectre_=
v1 spectre_v2 spec_store_bypass<br>bogomips	: 1996.33<br>TLB size	: 1024 4K=
 pages<br>clflush size	: 64<br>cache_alignment	: 64<br>address sizes	: 40 b=
its physical, 48 bits virtual<br>power management: ts ttp tm 100mhzsteps hw=
pstate cpb acc_power [13]<br><br>processor	: 2<br>vendor_id	: AuthenticAMD<=
br>cpu family	: 22<br>model		: 48<br>model name	: AMD GX-412TC SOC<br>stepp=
ing	: 1<br>microcode	: 0x7030105<br>cpu MHz		: 598.672<br>cache size	: 2048=
 KB<br>physical id	: 0<br>siblings	: 4<br>core id		: 2<br>cpu cores	: 4<br>=
apicid		: 2<br>initial apicid	: 2<br>fpu		: yes<br>fpu_exception	: yes<br>c=
puid level	: 13<br>wp		: yes<br>flags		: fpu vme de pse tsc msr pae mce cx8=
 apic sep mtrr pge mca cmov pat pse36 clflush mmx fxsr sse sse2 ht syscall =
nx mmxext fxsr_opt pdpe1gb rdtscp lm constant_tsc rep_good acc_power nopl n=
onstop_tsc cpuid extd_apicid aperfmperf pni pclmulqdq monitor ssse3 cx16 ss=
e4_1 sse4_2 movbe popcnt aes xsave avx f16c lahf_lm cmp_legacy svm extapic =
cr8_legacy abm sse4a misalignsse 3dnowprefetch osvw ibs skinit wdt topoext =
perfctr_nb bpext ptsc perfctr_llc cpb hw_pstate ssbd vmmcall bmi1 xsaveopt =
arat npt lbrv svm_lock nrip_save tsc_scale flushbyasid decodeassists pausef=
ilter pfthreshold overflow_recov<br>bugs		: fxsave_leak sysret_ss_attrs nul=
l_seg spectre_v1 spectre_v2 spec_store_bypass<br>bogomips	: 1996.33<br>TLB =
size	: 1024 4K pages<br>clflush size	: 64<br>cache_alignment	: 64<br>addres=
s sizes	: 40 bits physical, 48 bits virtual<br>power management: ts ttp tm =
100mhzsteps hwpstate cpb acc_power [13]<br><br>processor	: 3<br>vendor_id	:=
 AuthenticAMD<br>cpu family	: 22<br>model		: 48<br>model name	: AMD GX-412T=
C SOC<br>stepping	: 1<br>microcode	: 0x7030105<br>cpu MHz		: 598.778<br>cac=
he size	: 2048 KB<br>physical id	: 0<br>siblings	: 4<br>core id		: 3<br>cpu=
 cores	: 4<br>apicid		: 3<br>initial apicid	: 3<br>fpu		: yes<br>fpu_except=
ion	: yes<br>cpuid level	: 13<br>wp		: yes<br>flags		: fpu vme de pse tsc m=
sr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush mmx fxsr sse ss=
e2 ht syscall nx mmxext fxsr_opt pdpe1gb rdtscp lm constant_tsc rep_good ac=
c_power nopl nonstop_tsc cpuid extd_apicid aperfmperf pni pclmulqdq monitor=
 ssse3 cx16 sse4_1 sse4_2 movbe popcnt aes xsave avx f16c lahf_lm cmp_legac=
y svm extapic cr8_legacy abm sse4a misalignsse 3dnowprefetch osvw ibs skini=
t wdt topoext perfctr_nb bpext ptsc perfctr_llc cpb hw_pstate ssbd vmmcall =
bmi1 xsaveopt arat npt lbrv svm_lock nrip_save tsc_scale flushbyasid decode=
assists pausefilter pfthreshold overflow_recov<br>bugs		: fxsave_leak sysre=
t_ss_attrs null_seg spectre_v1 spectre_v2 spec_store_bypass<br>bogomips	: 1=
996.33<br>TLB size	: 1024 4K pages<br>clflush size	: 64<br>cache_alignment	=
: 64<br>address sizes	: 40 bits physical, 48 bits virtual<br>power manageme=
nt: ts ttp tm 100mhzsteps hwpstate cpb acc_power [13]<br><br>[8.3.] Module =
information (from /proc/modules):<br>system 1:<br>e1000e 245760 0 - Live 0x=
0000000000000000<br><br>system 2:<br>e1000e 155648 0 - Live 0xffffffffa0198=
000<br>igb 139264 0 - Live 0xffffffffa013f000<br>i2c_algo_bit 16384 1 igb, =
Live 0xffffffffa0138000<br>ptp 20480 2 e1000e,igb, Live 0xffffffffa000f000<=
br><br>[8.4.] Loaded driver and hardware information (/proc/ioports, /proc/=
iomem)<br>-----------------------------------------------------------------=
--------------<br>system 1 (/proc/ioports):<br>0000-0000 : PCI Bus 0000:00<=
br>=C2=A0 0000-0000 : dma1<br>=C2=A0 0000-0000 : pic1<br>=C2=A0 0000-0000 :=
 timer0<br>=C2=A0 0000-0000 : timer1<br>=C2=A0 0000-0000 : keyboard<br>=C2=
=A0 0000-0000 : PNP0C09:00<br>=C2=A0 =C2=A0 0000-0000 : EC data<br>=C2=A0 0=
000-0000 : keyboard<br>=C2=A0 0000-0000 : PNP0C09:00<br>=C2=A0 =C2=A0 0000-=
0000 : EC cmd<br>=C2=A0 0000-0000 : rtc0<br>=C2=A0 0000-0000 : dma page reg=
<br>=C2=A0 0000-0000 : pic2<br>=C2=A0 0000-0000 : dma2<br>=C2=A0 0000-0000 =
: fpu<br>=C2=A0 0000-0000 : pnp 00:08<br>=C2=A0 0000-0000 : iTCO_wdt<br>=C2=
=A0 0000-0000 : pnp 00:03<br>0000-0000 : PCI conf1<br>0000-0000 : PCI Bus 0=
000:00<br>=C2=A0 0000-0000 : pnp 00:03<br>=C2=A0 0000-0000 : pnp 00:03<br>=
=C2=A0 =C2=A0 0000-0000 : ACPI PM1a_EVT_BLK<br>=C2=A0 =C2=A0 0000-0000 : AC=
PI PM1a_CNT_BLK<br>=C2=A0 =C2=A0 0000-0000 : ACPI PM_TMR<br>=C2=A0 =C2=A0 0=
000-0000 : ACPI CPU throttle<br>=C2=A0 =C2=A0 0000-0000 : iTCO_wdt<br>=C2=
=A0 =C2=A0 0000-0000 : ACPI PM2_CNT_BLK<br>=C2=A0 =C2=A0 0000-0000 : pnp 00=
:05<br>=C2=A0 =C2=A0 0000-0000 : ACPI GPE0_BLK<br>=C2=A0 0000-0000 : pnp 00=
:02<br>=C2=A0 0000-0000 : 0000:00:02.0<br>=C2=A0 0000-0000 : 0000:00:17.0<b=
r>=C2=A0 =C2=A0 0000-0000 : ahci<br>=C2=A0 0000-0000 : 0000:00:17.0<br>=C2=
=A0 =C2=A0 0000-0000 : ahci<br>=C2=A0 0000-0000 : 0000:00:17.0<br>=C2=A0 =
=C2=A0 0000-0000 : ahci<br>=C2=A0 0000-0000 : PCI Bus 0000:02<br>=C2=A0 000=
0-0000 : 0000:00:1f.4<br>=C2=A0 =C2=A0 0000-0000 : i801_smbus<br>=C2=A0 000=
0-0000 : pnp 00:03<br>=C2=A0 =C2=A0 0000-0000 : pnp 00:03<br>=C2=A0 =C2=A0 =
=C2=A0 0000-0000 : pnp 00:03<br><br>system 1 (/proc/iomem):<br>00000000-000=
00000 : Reserved<br>00000000-00000000 : System RAM<br>00000000-00000000 : R=
eserved<br>00000000-00000000 : System RAM<br>00000000-00000000 : Reserved<b=
r>=C2=A0 00000000-00000000 : PCI Bus 0000:00<br>=C2=A0 00000000-00000000 : =
PCI Bus 0000:00<br>=C2=A0 00000000-00000000 : PCI Bus 0000:00<br>=C2=A0 000=
00000-00000000 : PCI Bus 0000:00<br>=C2=A0 00000000-00000000 : PCI Bus 0000=
:00<br>=C2=A0 00000000-00000000 : PCI Bus 0000:00<br>=C2=A0 00000000-000000=
00 : PCI Bus 0000:00<br>=C2=A0 00000000-00000000 : PCI Bus 0000:00<br>=C2=
=A0 00000000-00000000 : PCI Bus 0000:00<br>=C2=A0 00000000-00000000 : PCI B=
us 0000:00<br>=C2=A0 00000000-00000000 : PCI Bus 0000:00<br>=C2=A0 00000000=
-00000000 : PCI Bus 0000:00<br>=C2=A0 00000000-00000000 : PCI Bus 0000:00<b=
r>=C2=A0 00000000-00000000 : PCI Bus 0000:00<br>=C2=A0 =C2=A0 00000000-0000=
0000 : System ROM<br>00000000-00000000 : System RAM<br>=C2=A0 00000000-0000=
0000 : Kernel code<br>=C2=A0 00000000-00000000 : Kernel data<br>=C2=A0 0000=
0000-00000000 : Kernel bss<br>00000000-00000000 : Reserved<br>=C2=A0 000000=
00-00000000 : pnp 00:00<br>00000000-00000000 : System RAM<br>00000000-00000=
000 : ACPI Non-volatile Storage<br>00000000-00000000 : Reserved<br>00000000=
-00000000 : System RAM<br>00000000-00000000 : Unknown E820 type<br>00000000=
-00000000 : Reserved<br>00000000-00000000 : ACPI Non-volatile Storage<br>=
=C2=A0 00000000-00000000 : USBC000:00<br>00000000-00000000 : ACPI Tables<br=
>00000000-00000000 : System RAM<br>00000000-00000000 : Reserved<br>=C2=A0 0=
0000000-00000000 : Graphics Stolen Memory<br>00000000-00000000 : PCI Bus 00=
00:00<br>=C2=A0 00000000-00000000 : pnp 00:0b<br>=C2=A0 00000000-00000000 :=
 PCI Bus 0000:02<br>=C2=A0 00000000-00000000 : PCI Bus 0000:01<br>=C2=A0 =
=C2=A0 00000000-00000000 : 0000:01:00.0<br>=C2=A0 =C2=A0 =C2=A0 00000000-00=
000000 : iwlwifi<br>=C2=A0 00000000-00000000 : 0000:00:1f.6<br>=C2=A0 =C2=
=A0 00000000-00000000 : e1000e<br>=C2=A0 00000000-00000000 : 0000:00:14.0<b=
r>=C2=A0 =C2=A0 00000000-00000000 : xhci-hcd<br>=C2=A0 =C2=A0 =C2=A0 000000=
00-00000000 : intel_xhci_usb_sw<br>=C2=A0 00000000-00000000 : 0000:00:1f.2<=
br>=C2=A0 00000000-00000000 : 0000:00:17.0<br>=C2=A0 =C2=A0 00000000-000000=
00 : ahci<br>=C2=A0 00000000-00000000 : 0000:00:17.0<br>=C2=A0 =C2=A0 00000=
000-00000000 : ahci<br>=C2=A0 00000000-00000000 : 0000:00:17.0<br>=C2=A0 =
=C2=A0 00000000-00000000 : ahci<br>00000000-00000000 : PCI MMCONFIG 0000 [b=
us 00-7f]<br>=C2=A0 00000000-00000000 : Reserved<br>=C2=A0 =C2=A0 00000000-=
00000000 : pnp 00:0b<br>00000000-00000000 : PCI Bus 0000:00<br>=C2=A0 00000=
000-00000000 : pnp 00:01<br>=C2=A0 00000000-00000000 : INT344B:00<br>=C2=A0=
 =C2=A0 00000000-00000000 : INT344B:00<br>=C2=A0 00000000-00000000 : pnp 00=
:01<br>=C2=A0 00000000-00000000 : INT344B:00<br>=C2=A0 =C2=A0 00000000-0000=
0000 : INT344B:00<br>=C2=A0 00000000-00000000 : INT344B:00<br>=C2=A0 =C2=A0=
 00000000-00000000 : INT344B:00<br>=C2=A0 00000000-00000000 : pnp 00:01<br>=
=C2=A0 =C2=A0 00000000-00000000 : iTCO_wdt<br>=C2=A0 00000000-00000000 : Re=
served<br>=C2=A0 00000000-00000000 : pnp 00:0a<br>=C2=A0 00000000-00000000 =
: pnp 00:09<br>=C2=A0 00000000-00000000 : pnp 00:09<br>=C2=A0 00000000-0000=
0000 : pnp 00:01<br>00000000-00000000 : IOAPIC 0<br>00000000-00000000 : HPE=
T 0<br>=C2=A0 00000000-00000000 : PNP0103:00<br>00000000-00000000 : pnp 00:=
0b<br>00000000-00000000 : pnp 00:0b<br>00000000-00000000 : pnp 00:0b<br>000=
00000-00000000 : pnp 00:0b<br>00000000-00000000 : IFX0763:00<br>=C2=A0 0000=
0000-00000000 : IFX0763:00<br>00000000-00000000 : pnp 00:0b<br>00000000-000=
00000 : dmar0<br>00000000-00000000 : dmar1<br>00000000-00000000 : pnp 00:08=
<br>00000000-00000000 : pnp 00:0b<br>=C2=A0 00000000-00000000 : Local APIC<=
br>00000000-00000000 : INT0800:00<br>=C2=A0 00000000-00000000 : pnp 00:0b<b=
r>00000000-00000000 : System RAM<br>00000000-00000000 : RAM buffer<br>00000=
000-00000000 : PCI Bus 0000:00<br>=C2=A0 00000000-00000000 : 0000:00:02.0<b=
r>=C2=A0 00000000-00000000 : PCI Bus 0000:02<br>=C2=A0 00000000-00000000 : =
0000:00:02.0<br>=C2=A0 00000000-00000000 : 0000:00:1f.3<br>=C2=A0 =C2=A0 00=
000000-00000000 : ICH HD audio<br>=C2=A0 00000000-00000000 : 0000:00:04.0<b=
r>=C2=A0 00000000-00000000 : 0000:00:1f.3<br>=C2=A0 =C2=A0 00000000-0000000=
0 : ICH HD audio<br>=C2=A0 00000000-00000000 : 0000:00:1f.4<br>=C2=A0 00000=
000-00000000 : 0000:00:16.0<br>=C2=A0 =C2=A0 00000000-00000000 : mei_me<br>=
=C2=A0 00000000-00000000 : 0000:00:15.1<br>=C2=A0 =C2=A0 00000000-00000000 =
: lpss_dev<br>=C2=A0 =C2=A0 =C2=A0 00000000-00000000 : lpss_dev<br>=C2=A0 =
=C2=A0 00000000-00000000 : lpss_priv<br>=C2=A0 =C2=A0 00000000-00000000 : i=
dma64.1<br>=C2=A0 =C2=A0 =C2=A0 00000000-00000000 : idma64.1<br>=C2=A0 0000=
0000-00000000 : 0000:00:15.0<br>=C2=A0 =C2=A0 00000000-00000000 : lpss_dev<=
br>=C2=A0 =C2=A0 =C2=A0 00000000-00000000 : lpss_dev<br>=C2=A0 =C2=A0 00000=
000-00000000 : lpss_priv<br>=C2=A0 =C2=A0 00000000-00000000 : idma64.0<br>=
=C2=A0 =C2=A0 =C2=A0 00000000-00000000 : idma64.0<br>=C2=A0 00000000-000000=
00 : 0000:00:14.2<br>=C2=A0 =C2=A0 00000000-00000000 : Intel PCH thermal dr=
iver<br><br>---------------------------------------------------------------=
----------------<br>system 2 (/proc/ioports):<br>0000-0cf7 : PCI Bus 0000:0=
0<br>=C2=A0 0000-001f : dma1<br>=C2=A0 0020-0021 : pic1<br>=C2=A0 0040-0043=
 : timer0<br>=C2=A0 0050-0053 : timer1<br>=C2=A0 0060-0060 : keyboard<br>=
=C2=A0 0061-0061 : PNP0800:00<br>=C2=A0 0064-0064 : keyboard<br>=C2=A0 0070=
-0071 : rtc0<br>=C2=A0 0080-008f : dma page reg<br>=C2=A0 00a0-00a1 : pic2<=
br>=C2=A0 00c0-00df : dma2<br>=C2=A0 00f0-00ff : PNP0C04:00<br>=C2=A0 =C2=
=A0 00f0-00ff : fpu<br>=C2=A0 02f8-02ff : serial<br>=C2=A0 03c0-03df : vga+=
<br>=C2=A0 03f8-03ff : serial<br>=C2=A0 0800-0803 : ACPI PM1a_EVT_BLK<br>=
=C2=A0 0804-0805 : ACPI PM1a_CNT_BLK<br>=C2=A0 0810-0817 : ACPI GPE0_BLK<br=
>=C2=A0 0818-081b : ACPI PM_TMR<br>=C2=A0 0cd6-0cd7 : SB800 TCO<br>0cf8-0cf=
f : PCI conf1<br>0d00-ffff : PCI Bus 0000:00<br>=C2=A0 1000-1fff : PCI Bus =
0000:02<br>=C2=A0 =C2=A0 1000-101f : 0000:02:00.0<br>=C2=A0 2000-2fff : PCI=
 Bus 0000:03<br>=C2=A0 =C2=A0 2000-201f : 0000:03:00.0<br>=C2=A0 3000-3fff =
: PCI Bus 0000:04<br>=C2=A0 =C2=A0 3000-301f : 0000:04:00.0<br>=C2=A0 4000-=
400f : 0000:00:11.0<br>=C2=A0 =C2=A0 4000-400f : ahci<br>=C2=A0 4010-4017 :=
 0000:00:11.0<br>=C2=A0 =C2=A0 4010-4017 : ahci<br>=C2=A0 4018-401f : 0000:=
00:11.0<br>=C2=A0 =C2=A0 4018-401f : ahci<br>=C2=A0 4020-4023 : 0000:00:11.=
0<br>=C2=A0 =C2=A0 4020-4023 : ahci<br>=C2=A0 4024-4027 : 0000:00:11.0<br>=
=C2=A0 =C2=A0 4024-4027 : ahci<br><br>system 2 (/proc/iomem):<br>00000000-0=
0000fff : Reserved<br>00001000-0009f7ff : System RAM<br>0009f800-0009ffff :=
 Reserved<br>000a0000-000bffff : PCI Bus 0000:00<br>000c0000-000dffff : PCI=
 Bus 0000:00<br>=C2=A0 000c0000-000c7fff : Video ROM<br>000f0000-000fffff :=
 Reserved<br>=C2=A0 000f0000-000fffff : System ROM<br>00100000-dffadfff : S=
ystem RAM<br>=C2=A0 01000000-018021d0 : Kernel code<br>=C2=A0 018021d1-01c8=
05bf : Kernel data<br>=C2=A0 01d9b000-01df8fff : Kernel bss<br>dffae000-dff=
fffff : Reserved<br>e0000000-ffffffff : PCI Bus 0000:00<br>=C2=A0 f8000000-=
fbffffff : Reserved<br>=C2=A0 fe200000-fe4fffff : PCI Bus 0000:01<br>=C2=A0=
 =C2=A0 fe200000-fe3fffff : 0000:01:00.0<br>=C2=A0 =C2=A0 =C2=A0 fe200000-f=
e3fffff : ath<br>=C2=A0 =C2=A0 fe400000-fe40ffff : 0000:01:00.0<br>=C2=A0 f=
e500000-fe5fffff : PCI Bus 0000:02<br>=C2=A0 =C2=A0 fe500000-fe51ffff : 000=
0:02:00.0<br>=C2=A0 =C2=A0 =C2=A0 fe500000-fe51ffff : igb<br>=C2=A0 =C2=A0 =
fe520000-fe523fff : 0000:02:00.0<br>=C2=A0 =C2=A0 =C2=A0 fe520000-fe523fff =
: igb<br>=C2=A0 fe600000-fe6fffff : PCI Bus 0000:03<br>=C2=A0 =C2=A0 fe6000=
00-fe61ffff : 0000:03:00.0<br>=C2=A0 =C2=A0 =C2=A0 fe600000-fe61ffff : igb<=
br>=C2=A0 =C2=A0 fe620000-fe623fff : 0000:03:00.0<br>=C2=A0 =C2=A0 =C2=A0 f=
e620000-fe623fff : igb<br>=C2=A0 fe700000-fe7fffff : PCI Bus 0000:04<br>=C2=
=A0 =C2=A0 fe700000-fe71ffff : 0000:04:00.0<br>=C2=A0 =C2=A0 =C2=A0 fe70000=
0-fe71ffff : igb<br>=C2=A0 =C2=A0 fe720000-fe723fff : 0000:04:00.0<br>=C2=
=A0 =C2=A0 =C2=A0 fe720000-fe723fff : igb<br>=C2=A0 fe800000-fe8fffff : 000=
0:00:08.0<br>=C2=A0 =C2=A0 fe800000-fe8fffff : ccp<br>=C2=A0 fe900000-fe9ff=
fff : 0000:00:08.0<br>=C2=A0 =C2=A0 fe900000-fe9fffff : ccp<br>=C2=A0 fea00=
000-fea1ffff : 0000:00:08.0<br>=C2=A0 =C2=A0 fea00000-fea1ffff : ccp<br>=C2=
=A0 fea20000-fea21fff : 0000:00:08.0<br>=C2=A0 =C2=A0 fea20000-fea21fff : c=
cp<br>=C2=A0 fea22000-fea23fff : 0000:00:10.0<br>=C2=A0 =C2=A0 fea22000-fea=
23fff : xhci-hcd<br>=C2=A0 fea24000-fea24fff : 0000:00:08.0<br>=C2=A0 =C2=
=A0 fea24000-fea24fff : ccp<br>=C2=A0 fea25000-fea253ff : 0000:00:11.0<br>=
=C2=A0 =C2=A0 fea25000-fea253ff : ahci<br>=C2=A0 fea25400-fea254ff : 0000:0=
0:13.0<br>=C2=A0 =C2=A0 fea25400-fea254ff : ehci_hcd<br>=C2=A0 fea25500-fea=
255ff : 0000:00:14.7<br>=C2=A0 =C2=A0 fea25500-fea255ff : mmc0<br>=C2=A0 fe=
b00000-feb00007 : SB800 TCO<br>=C2=A0 fec00000-fec003ff : IOAPIC 0<br>=C2=
=A0 fec10002-fec11001 : pnp 00:00<br>=C2=A0 fec20000-fec203ff : IOAPIC 1<br=
>=C2=A0 fed00000-fed003ff : HPET 0<br>=C2=A0 fed81500-fed817ff : leds-apu2<=
br>=C2=A0 fee00000-fee00fff : Local APIC<br>100000000-11effffff : System RA=
M<br>11f000000-11fffffff : RAM buffer<br><br>[8.5.] PCI information (&#39;l=
spci -vvv&#39; as root)<br>system 1:<br>00:1f.6 Ethernet controller: Intel =
Corporation Ethernet Connection (4) I219-V (rev 21)<br>	Subsystem: Hewlett-=
Packard Company Ethernet Connection (4) I219-V<br>	Control: I/O- Mem+ BusMa=
ster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINT=
x+<br>	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=3Dfast &gt;TAbort- =
&lt;TAbort- &lt;MAbort- &gt;SERR- &lt;PERR- INTx-<br>	Latency: 0<br>	Interr=
upt: pin A routed to IRQ 123<br>	Region 0: Memory at b6200000 (32-bit, non-=
prefetchable) [size=3D128K]<br>	Capabilities: [c8] Power Management version=
 3<br>		Flags: PMEClk- DSI+ D1- D2- AuxCurrent=3D0mA PME(D0+,D1-,D2-,D3hot+=
,D3cold+)<br>		Status: D0 NoSoftRst+ PME-Enable- DSel=3D0 DScale=3D1 PME-<b=
r>	Capabilities: [d0] MSI: Enable+ Count=3D1/1 Maskable- 64bit+<br>		Addres=
s: 00000000fee00278 =C2=A0Data: 0000<br>	Capabilities: [e0] PCI Advanced Fe=
atures<br>		AFCap: TP+ FLR+<br>		AFCtrl: FLR-<br>		AFStatus: TP-<br>	Kernel=
 driver in use: e1000e<br>	Kernel modules: e1000e<br><br>system 2:<br>02:00=
.0 Ethernet controller: Intel Corporation I210 Gigabit Network Connection (=
rev 03)<br>	Subsystem: Intel Corporation Device 0000<br>	Control: I/O+ Mem+=
 BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- =
DisINTx+<br>	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=3Dfast &gt;TA=
bort- &lt;TAbort- &lt;MAbort- &gt;SERR- &lt;PERR- INTx-<br>	Latency: 0, Cac=
he Line Size: 64 bytes<br>	Interrupt: pin A routed to IRQ 35<br>	Region 0: =
Memory at fe500000 (32-bit, non-prefetchable) [size=3D128K]<br>	Region 2: I=
/O ports at 1000 [size=3D32]<br>	Region 3: Memory at fe520000 (32-bit, non-=
prefetchable) [size=3D16K]<br>	Capabilities: [40] Power Management version =
3<br>		Flags: PMEClk- DSI+ D1- D2- AuxCurrent=3D0mA PME(D0+,D1-,D2-,D3hot+,=
D3cold+)<br>		Status: D0 NoSoftRst+ PME-Enable- DSel=3D0 DScale=3D1 PME-<br=
>	Capabilities: [50] MSI: Enable- Count=3D1/1 Maskable+ 64bit+<br>		Address=
: 0000000000000000 =C2=A0Data: 0000<br>		Masking: 00000000 =C2=A0Pending: 0=
0000000<br>	Capabilities: [70] MSI-X: Enable+ Count=3D5 Masked-<br>		Vector=
 table: BAR=3D3 offset=3D00000000<br>		PBA: BAR=3D3 offset=3D00002000<br>	C=
apabilities: [a0] Express (v2) Endpoint, MSI 00<br>		DevCap:	MaxPayload 512=
 bytes, PhantFunc 0, Latency L0s &lt;512ns, L1 &lt;64us<br>			ExtTag- AttnB=
tn- AttnInd- PwrInd- RBE+ FLReset+ SlotPowerLimit 0.000W<br>		DevCtl:	Repor=
t errors: Correctable+ Non-Fatal+ Fatal+ Unsupported+<br>			RlxdOrd+ ExtTag=
- PhantFunc- AuxPwr- NoSnoop+ FLReset-<br>			MaxPayload 256 bytes, MaxReadR=
eq 512 bytes<br>		DevSta:	CorrErr- UncorrErr- FatalErr- UnsuppReq- AuxPwr+ =
TransPend-<br>		LnkCap:	Port #1, Speed 2.5GT/s, Width x1, ASPM L0s L1, Exit=
 Latency L0s &lt;2us, L1 &lt;16us<br>			ClockPM- Surprise- LLActRep- BwNot-=
 ASPMOptComp+<br>		LnkCtl:	ASPM Disabled; RCB 64 bytes Disabled- CommClk+<b=
r>			ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-<br>		LnkSta:	Speed 2.5G=
T/s, Width x1, TrErr- Train- SlotClk+ DLActive- BWMgmt- ABWMgmt-<br>		DevCa=
p2: Completion Timeout: Range ABCD, TimeoutDis+, LTR-, OBFF Not Supported<b=
r>			 AtomicOpsCap: 32bit- 64bit- 128bitCAS-<br>		DevCtl2: Completion Timeo=
ut: 50us to 50ms, TimeoutDis-, LTR-, OBFF Disabled<br>			 AtomicOpsCtl: Req=
En-<br>		LnkCtl2: Target Link Speed: 2.5GT/s, EnterCompliance- SpeedDis-<br=
>			 Transmit Margin: Normal Operating Range, EnterModifiedCompliance- Comp=
lianceSOS-<br>			 Compliance De-emphasis: -6dB<br>		LnkSta2: Current De-emp=
hasis Level: -6dB, EqualizationComplete-, EqualizationPhase1-<br>			 Equali=
zationPhase2-, EqualizationPhase3-, LinkEqualizationRequest-<br>	Capabiliti=
es: [100 v2] Advanced Error Reporting<br>		UESta:	DLP- SDES- TLP- FCP- Cmpl=
tTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP- ECRC- UnsupReq- ACSViol-<br>		UEMs=
k:	DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP- ECRC- =
UnsupReq- ACSViol-<br>		UESvrt:	DLP+ SDES+ TLP- FCP+ CmpltTO- CmpltAbrt- Un=
xCmplt- RxOF+ MalfTLP+ ECRC- UnsupReq- ACSViol-<br>		CESta:	RxErr- BadTLP- =
BadDLLP- Rollover- Timeout- NonFatalErr-<br>		CEMsk:	RxErr- BadTLP- BadDLLP=
- Rollover- Timeout- NonFatalErr+<br>		AERCap:	First Error Pointer: 00, ECR=
CGenCap+ ECRCGenEn- ECRCChkCap+ ECRCChkEn-<br>			MultHdrRecCap- MultHdrRecE=
n- TLPPfxPres- HdrLogCap-<br>		HeaderLog: 00000000 00000000 00000000 000000=
00<br>	Capabilities: [140 v1] Device Serial Number 00-0d-b9-ff-ff-50-8a-7c<=
br>	Capabilities: [1a0 v1] Transaction Processing Hints<br>		Device specifi=
c mode supported<br>		Steering table in TPH capability structure<br>	Kernel=
 driver in use: igb<br><br>[8.6.] SCSI information (from /proc/scsi/scsi)<b=
r>system 1:<br>Attached devices:<br>Host: scsi2 Channel: 00 Id: 00 Lun: 00<=
br>=C2=A0 Vendor: ATA =C2=A0 =C2=A0 =C2=A0Model: WDC WDS500G2B0B =C2=A0Rev:=
 90WD<br>=C2=A0 Type: =C2=A0 Direct-Access =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ANSI =C2=A0SCSI revision: 05<br><br>s=
ystem 2:<br>Attached devices:<br>Host: scsi0 Channel: 00 Id: 00 Lun: 00<br>=
=C2=A0 Vendor: ATA =C2=A0 =C2=A0 =C2=A0Model: SATA SSD =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 Rev: 01.2<br>=C2=A0 Type: =C2=A0 Direct-Access =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ANSI =C2=A0SCSI revision: =
05<br><br><br>[8.7.] Other information that might be relevant to the proble=
m<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0(please look in /proc and include all infor=
mation that you<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0think to be relevant):<br><br=
>=C2=A0		ethtool -T &lt;ethernet interface&gt; output<br><br>system 1:<br>$=
 ethtool -T enp0s31f6<br>			Time stamping parameters for enp0s31f6:<br>			C=
apabilities:<br>				hardware-transmit =C2=A0 =C2=A0 (SOF_TIMESTAMPING_TX_HA=
RDWARE)<br>				software-transmit =C2=A0 =C2=A0 (SOF_TIMESTAMPING_TX_SOFTWAR=
E)<br>				hardware-receive =C2=A0 =C2=A0 =C2=A0(SOF_TIMESTAMPING_RX_HARDWAR=
E)<br>				software-receive =C2=A0 =C2=A0 =C2=A0(SOF_TIMESTAMPING_RX_SOFTWAR=
E)<br>				software-system-clock (SOF_TIMESTAMPING_SOFTWARE)<br>				hardware=
-raw-clock =C2=A0 =C2=A0(SOF_TIMESTAMPING_RAW_HARDWARE)<br>			PTP Hardware =
Clock: 0<br>			Hardware Transmit Timestamp Modes:<br>				off =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (HWTSTAMP_TX_OFF)<br>				o=
n =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(HWT=
STAMP_TX_ON)<br>			Hardware Receive Filter Modes:<br>				none =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(HWTSTAMP_FILTER_NONE)<br>=
				all =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (HWT=
STAMP_FILTER_ALL)<br>				ptpv1-l4-sync =C2=A0 =C2=A0 =C2=A0 =C2=A0 (HWTSTAM=
P_FILTER_PTP_V1_L4_SYNC)<br>				ptpv1-l4-delay-req =C2=A0 =C2=A0(HWTSTAMP_F=
ILTER_PTP_V1_L4_DELAY_REQ)<br>				ptpv2-l4-sync =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 (HWTSTAMP_FILTER_PTP_V2_L4_SYNC)<br>				ptpv2-l4-delay-req =C2=A0 =C2=A0(H=
WTSTAMP_FILTER_PTP_V2_L4_DELAY_REQ)<br>				ptpv2-l2-sync =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 (HWTSTAMP_FILTER_PTP_V2_L2_SYNC)<br>				ptpv2-l2-delay-req =C2=
=A0 =C2=A0(HWTSTAMP_FILTER_PTP_V2_L2_DELAY_REQ)<br>				ptpv2-event =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 (HWTSTAMP_FILTER_PTP_V2_EVENT)<br>				ptpv2-syn=
c =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(HWTSTAMP_FILTER_PTP_V2_SYNC)<br=
>				ptpv2-delay-req =C2=A0 =C2=A0 =C2=A0 (HWTSTAMP_FILTER_PTP_V2_DELAY_REQ=
)<br><br>		system 2:<br>			# ethtool -T eth2<br>			Time stamping parameters=
 for eth2:<br>			Capabilities:<br>				hardware-transmit =C2=A0 =C2=A0 (SOF_=
TIMESTAMPING_TX_HARDWARE)<br>				software-transmit =C2=A0 =C2=A0 (SOF_TIMES=
TAMPING_TX_SOFTWARE)<br>				hardware-receive =C2=A0 =C2=A0 =C2=A0(SOF_TIMES=
TAMPING_RX_HARDWARE)<br>				software-receive =C2=A0 =C2=A0 =C2=A0(SOF_TIMES=
TAMPING_RX_SOFTWARE)<br>				software-system-clock (SOF_TIMESTAMPING_SOFTWAR=
E)<br>				hardware-raw-clock =C2=A0 =C2=A0(SOF_TIMESTAMPING_RAW_HARDWARE)<b=
r>			PTP Hardware Clock: 2<br>			Hardware Transmit Timestamp Modes:<br>				=
off =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (HWTSTAM=
P_TX_OFF)<br>				on =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0(HWTSTAMP_TX_ON)<br>			Hardware Receive Filter Modes:<br>				=
none =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(HWTSTAM=
P_FILTER_NONE)<br>				all =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 (HWTSTAMP_FILTER_ALL)<br><div><br></div><div><br></div><div><=
br></div>Best regards,<br>Francesco</div>

--0000000000005ff73a058e92a1d4--


--===============5711476299845466850==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============5711476299845466850==--

