Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 112DE3312E6
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Mar 2021 17:08:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 92B54400E8;
	Mon,  8 Mar 2021 16:08:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PQDDE8rikNdz; Mon,  8 Mar 2021 16:08:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E57A2400DF;
	Mon,  8 Mar 2021 16:08:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 52C5F1BF2CC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Mar 2021 16:08:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 415A78382D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Mar 2021 16:08:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E2hwr9Mycktu for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Mar 2021 16:08:32 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com
 [IPv6:2a00:1450:4864:20::132])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3A32C831C1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Mar 2021 16:08:32 +0000 (UTC)
Received: by mail-lf1-x132.google.com with SMTP id u4so21878812lfs.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 08 Mar 2021 08:08:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=scSzFDHM/nouK1Fom7fHjjBJ+Z+P0F/rXRYOJh134lQ=;
 b=agfDl4FiZzxiH0VhEnAxqo5y08QS+6g4sstfHzIZXQtVHfvtKFvZhGIOuyt/Ajtm80
 l81hdQEG7mHEOOPGCdILuciOA0WuetsSt3amXkjlAwb+NgN8ywxThlwJD8VFFTl7s2dF
 W2AdYION5ZCzHbEITBZxZPu4FwAAe7SOLe+cmcsMm4wp2NX7K0K1Dpt7pfwhjZf1CFmb
 nzsIFsyOrFI439hq2YwClt3Z4UhEOTGjgKkS3tFSPImOnJWWkdIQyZCib/UYZx4tC/hI
 LWTTW89G1StIhkrTOSa5/N1FsTj8kSJlhipcoY69ZgveQuZLto0fj9H45N2A4wFJU4TR
 MnwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=scSzFDHM/nouK1Fom7fHjjBJ+Z+P0F/rXRYOJh134lQ=;
 b=AtpOag27w68DqAQDtdlpX3NuwRxj2DBh7WOA7w6PAMb3EEke8wB4ZRiBKIXs0SJM7s
 b+MEPejyk1m1WTLh4eNmseVjNFf3oyW8kb1uDk3602dKkCtzRwrIKkQ1wXoVTLTh3BCp
 M7G3TGglU6rCp0fCBTSOaeB6iRbIEXphTxQgRa0u4eHckuFKU3Lk63hjALz4DiMyTFMK
 e5cUww43jeLBh+GQr1nCySgeyJVFX2/GEYbzDTOjBaXdSVI0Y0W+qsBxg4c8uvPNYFg0
 42CKu5AJlqakBgyq+Lf1vzhacKv1Aovxi3N15zDegLU1f/iZ7OWebBvNf5d4SWG4/M8U
 Ufyg==
X-Gm-Message-State: AOAM531xs7RcI+eifjzN3UHV/Eoq6h548S/9O8WkmeE72dDjtG3RTR8U
 2TqBJparsWFdey4jXUdxQt+tkQHgFfaS2Z98kw8=
X-Google-Smtp-Source: ABdhPJyMnTWRT3obeqlFIZUuSyAYH7Du5LkfGXvOF9+6dRO1YllpoldkXHTW3cRvzJA/K5RmU3qMaP4psa76fB5d2qw=
X-Received: by 2002:a19:7504:: with SMTP id y4mr14469558lfe.616.1615219709780; 
 Mon, 08 Mar 2021 08:08:29 -0800 (PST)
MIME-Version: 1.0
References: <CAMnf+PgVx-bg87KCV0NbtSi_FRMokVVXLEwuA_XCH6UxR57rKQ@mail.gmail.com>
 <e73bcf37b214af6c8267622a49a7c9166522f3d0.camel@intel.com>
 <BYAPR11MB36062A9FC2CF8231B79DE0D1EF8B9@BYAPR11MB3606.namprd11.prod.outlook.com>
 <BYAPR11MB3606E2AD589A7E343F32F7B6EF8B9@BYAPR11MB3606.namprd11.prod.outlook.com>
 <CAMnf+PjeJ9rZMbnpxUS7eMzVFDO7syxsV-0NQ=Rups5V9DJfgA@mail.gmail.com>
 <BYAPR11MB360644089232F26D5F0E1BB7EF8B9@BYAPR11MB3606.namprd11.prod.outlook.com>
 <BYAPR11MB36068D4844EB706F9BBD1AFFEF9E9@BYAPR11MB3606.namprd11.prod.outlook.com>
 <BYAPR11MB3606FA9E13804D5374EC2D46EF989@BYAPR11MB3606.namprd11.prod.outlook.com>
 <CAMnf+Pi9r_LmMhkJmhs9n0mWvO0XPWAhzZdshXKQhJpEMMhXFQ@mail.gmail.com>
 <BYAPR11MB36065DF92056873D70FC7638EF969@BYAPR11MB3606.namprd11.prod.outlook.com>
In-Reply-To: <BYAPR11MB36065DF92056873D70FC7638EF969@BYAPR11MB3606.namprd11.prod.outlook.com>
From: JD <jdtxs00@gmail.com>
Date: Mon, 8 Mar 2021 10:08:19 -0600
Message-ID: <CAMnf+PhzHhyp8sqqZLRBA2Gu0ETavOmTuJ77eruaKUA_SQAcPg@mail.gmail.com>
To: "Fujinaka, Todd" <todd.fujinaka@intel.com>
Subject: Re: [Intel-wired-lan] iavf null packets and arbitrary memory reads
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello Todd,

That is a great lead, I will chase that down and try various memory
situations myself.

If you come up with anything on your end from the testing -- let me
know. I will do the same.

Thank you very much, I appreciate your help!

On Fri, Mar 5, 2021 at 12:41 PM Fujinaka, Todd <todd.fujinaka@intel.com> wrote:
>
> OK, I don't know if we're going to be able to reproduce this in-house, though we have one new test to try.
>
> Also, seeing this on multiple drivers seems odd.
>
> I did talk to a senior engineer and he suspects that qemu might be getting swapped out. Transmitting packets with all zeros points toward a problem with DMA mapping or memory pinning. We are depending on qemu memory to be permanently pinned in the host for SR-IOV to work.
>
> You may need to start qemu with other options to prevent it from being swapped out. I can't suggest any because I'm not that familiar with qemu. Maybe there's a qemu forum where you could ask this?
>
> I think our final test is to 1) reduce system memory in the host via kernel command line, then 2) launch with his command, and 3) run some memory hog benchmark/stress test on the host that starts causing lots of swapping.
>
> Todd Fujinaka
> Software Application Engineer
> Data Center Group
> Intel Corporation
> todd.fujinaka@intel.com
>
> -----Original Message-----
> From: JD <jdtxs00@gmail.com>
> Sent: Wednesday, March 3, 2021 10:01 AM
> To: Fujinaka, Todd <todd.fujinaka@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org
> Subject: Re: [Intel-wired-lan] iavf null packets and arbitrary memory reads
>
> Hello Todd,
>
> I have attached the kernel config for the virtual machine.  I don't know if it helps you at all, but the machines primarily run VPN tunnels (IPsec/OpenVPN)
>
> I still don't know what triggers the bug exactly. A VM can go a full month passing traffic normally then start transmitting those null packets for no clear or obvious reason.
>
> If you would like the output of any command on a VM that is currently experiencing the bug, let me know. I am happy to provide anything that helps.
>
> Thank you.
>
> On Wed, Mar 3, 2021 at 9:18 AM Fujinaka, Todd <todd.fujinaka@intel.com> wrote:
> >
> > I got them to try the kernels you're using and we can't reproduce this. My guess is that it's your kernel config. Can you send those as well?
> >
> > Todd Fujinaka
> > Software Application Engineer
> > Data Center Group
> > Intel Corporation
> > todd.fujinaka@intel.com
> >
> > -----Original Message-----
> > From: Fujinaka, Todd
> > Sent: Thursday, February 25, 2021 2:26 PM
> > To: Fujinaka, Todd <todd.fujinaka@intel.com>; JD <jdtxs00@gmail.com>
> > Cc: intel-wired-lan@lists.osuosl.org
> > Subject: RE: [Intel-wired-lan] iavf null packets and arbitrary memory
> > reads
> >
> > Just to let you know, we didn't get a reproduction with the latest RHEL 8.3, but that's not what you were using. I'm going to remind our tester of the version numbers you gave us.
> >
> > In any case, we are looking at this.
> >
> > Todd Fujinaka
> > Software Application Engineer
> > Data Center Group
> > Intel Corporation
> > todd.fujinaka@intel.com
> >
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Fujinaka, Todd
> > Sent: Friday, February 12, 2021 1:46 PM
> > To: JD <jdtxs00@gmail.com>
> > Cc: intel-wired-lan@lists.osuosl.org
> > Subject: Re: [Intel-wired-lan] iavf null packets and arbitrary memory
> > reads
> >
> > There is no common code between iavf and ixgbevf. The speculation is that this is all from the bonding driver, but the repro hasn't started yet.
> >
> > Todd Fujinaka
> > Software Application Engineer
> > Data Center Group
> > Intel Corporation
> > todd.fujinaka@intel.com
> >
> > -----Original Message-----
> > From: JD <jdtxs00@gmail.com>
> > Sent: Friday, February 12, 2021 10:39 AM
> > To: Fujinaka, Todd <todd.fujinaka@intel.com>
> > Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> > intel-wired-lan@lists.osuosl.org
> > Subject: Re: [Intel-wired-lan] iavf null packets and arbitrary memory
> > reads
> >
> > I have some important details to add to this. It appears that ixgbe/ixgbevf are also affected. I have reviewed some older Intel based servers and some are showing the behavior as well.
> >
> > This is a non-AMD server showing the behavior on a different NIC:
> > OS: CentOS 7.8
> > Kernel: 4.19.107
> > NIC: Intel Corporation Ethernet Controller 10G X550T
> > Driver: ixgbe 5.1.0-k
> > Vendor P/N: AOC-MTG-i2TM
> > Firmware-version: 0x80000aee, 1.1876.0
> > CPU: Intel(R) Xeon(R) Silver 4214 CPU
> > MOBO: Supermicro X11DPT-PS
> >
> > The VM on the Intel box above is using kernel 4.19.163 with ixgbevf
> > 4.1.0-k
> >
> > This is a server with only 1 NIC (though bonding is still setup with only a single interface for simplification between builds), so I would assume that bonding isn't relevant to the bug. I will include the bonding configuration for the AMD servers below anyway in case you need it.
> >
> > For repro: I don't know how the issue begins or how to reproduce it on demand, it happens during normal VM use. I will describe our environment and go over various settings.
> >
> > Virtualization type: qemu-kvm
> > Libvirt version: libvirt-daemon-kvm-4.5.0-36.el7_9.3.x86_6
> > QEMU version: qemu-kvm-ev-2.12.0-44.1.el7_8.1.x86_64
> >
> > OS on both guest/host: CentOS 7.8+ (happens on 7.8 and 7.9) NIC bonding: Bonded and unbonded are affected. However, on bonded hosts, these options are used:
> > GUEST: BONDING_OPTS="mode=2 miimon=100 xmit_hash_policy=1"
> > HOST: BONDING_OPTS="mode=4 miimon=100 xmit_hash_policy=layer3+4"
> >
> > Bonding is setup in both the guest and host using the configuration above. 2 VF's are attached to the KVM guest for this.
> >
> > Here is the QEMU process on the AMD based server:
> > qemu     35644  232  3.1 9678028 8432068 ?     SLl  Jan21 75000:17
> > /usr/libexec/qemu-kvm -name guest=VMNAME-REDACTED,debug-threads=on -S
> > -object
> > secret,id=masterKey0,format=raw,file=/var/lib/libvirt/qemu/domain-27-V
> > MNAME-REDACTED/master-key.aes -machine
> > pc-i440fx-rhel7.6.0,accel=kvm,usb=off,dump-guest-core=off
> > -cpu
> > EPYC-IBPB,x2apic=on,tsc-deadline=on,hypervisor=on,tsc_adjust=on,clwb=o
> > n,umip=on,spec-ctrl=on,stibp=on,ssbd=on,cmp_legacy=on,perfctr_core=on,
> > monitor=off -m 8192 -realtime mlock=off -smp
> > 4,sockets=4,cores=1,threads=1 -uuid
> > 6e201ba4-68fe-45be-a86d-fbc46cef5d46 -display none -no-user-config
> > -nodefaults -chardev socket,id=charmonitor,fd=55,server,nowait -mon
> > chardev=charmonitor,id=monitor,mode=control -rtc
> > base=utc,driftfix=slew -global kvm-pit.lost_tick_policy=delay -no-hpet
> > -no-shutdown -global PIIX4_PM.disable_s3=1 -global
> > PIIX4_PM.disable_s4=1 -boot strict=on -device
> > ich9-usb-ehci1,id=usb,bus=pci.0,addr=0x2.0x7 -device
> > ich9-usb-uhci1,masterbus=usb.0,firstport=0,bus=pci.0,multifunction=on,
> > addr=0x2 -device
> > ich9-usb-uhci2,masterbus=usb.0,firstport=2,bus=pci.0,addr=0x2.0x1
> > -device
> > ich9-usb-uhci3,masterbus=usb.0,firstport=4,bus=pci.0,addr=0x2.0x2
> > -device ahci,id=sata0,bus=pci.0,addr=0x3 -drive
> > file=/imgs/VMNAME-REDACTED/diskname-redacted,format=qcow2,if=none,id=d
> > rive-sata0-0-0,cache=none,discard=unmap
> > -device
> > ide-hd,bus=sata0.0,drive=drive-sata0-0-0,id=sata0-0-0,bootindex=1,writ
> > e-cache=on
> > -chardev pty,id=charserial0 -device
> > isa-serial,chardev=charserial0,id=serial0 -device
> > vfio-pci,host=81:03.5,id=hostdev0,bus=pci.0,addr=0x5 -device
> > vfio-pci,host=81:0b.5,id=hostdev1,bus=pci.0,addr=0x6 -device
> > virtio-balloon-pci,id=balloon0,bus=pci.0,addr=0x4 -sandbox
> > on,obsolete=deny,elevateprivileges=deny,spawn=deny,resourcecontrol=den
> > y
> > -msg timestamp=on
> >
> >
> > Here is the QEMU process on the Intel based server:
> > qemu     10058  157  8.1 9622376 8017812 ?     SLl  Jan25 40027:35
> > /usr/libexec/qemu-kvm -name guest=VMNAME-REDACTED,debug-threads=on -S
> > -object
> > secret,id=masterKey0,format=raw,file=/var/lib/libvirt/qemu/domain-21-V
> > MNAME-REDACTED/master-key.aes -machine
> > pc-i440fx-rhel7.6.0,accel=kvm,usb=off,dump-guest-core=off
> > -cpu
> > Skylake-Server-IBRS,ss=on,hypervisor=on,tsc_adjust=on,clflushopt=on,um
> > ip=on,pku=on,avx512vnni=on,md-clear=on,stibp=on,ssbd=on,xsaves=on,hle=
> > off,rtm=off -m 8192 -realtime mlock=off -smp
> > 4,sockets=4,cores=1,threads=1 -uuid
> > 6fc40d77-2872-4717-827b-de634b2a5609 -display none -no-user-config
> > -nodefaults -chardev socket,id=charmonitor,fd=31,server,nowait -mon
> > chardev=charmonitor,id=monitor,mode=control -rtc
> > base=utc,driftfix=slew -global kvm-pit.lost_tick_policy=delay -no-hpet
> > -no-shutdown -global PIIX4_PM.disable_s3=1 -global
> > PIIX4_PM.disable_s4=1 -boot strict=on -device
> > ich9-usb-ehci1,id=usb,bus=pci.0,addr=0x2.0x7 -device
> > ich9-usb-uhci1,masterbus=usb.0,firstport=0,bus=pci.0,multifunction=on,
> > addr=0x2 -device
> > ich9-usb-uhci2,masterbus=usb.0,firstport=2,bus=pci.0,addr=0x2.0x1
> > -device
> > ich9-usb-uhci3,masterbus=usb.0,firstport=4,bus=pci.0,addr=0x2.0x2
> > -device ahci,id=sata0,bus=pci.0,addr=0x3 -drive
> > file=/imgs/VMNAME-REDACTED/diskname-redacted,format=qcow2,if=none,id=d
> > rive-sata0-0-0,cache=none,discard=unmap
> > -device
> > ide-hd,bus=sata0.0,drive=drive-sata0-0-0,id=sata0-0-0,bootindex=1,writ
> > e-cache=on
> > -chardev pty,id=charserial0 -device
> > isa-serial,chardev=charserial0,id=serial0 -device
> > vfio-pci,host=18:11.0,id=hostdev0,bus=pci.0,addr=0x5 -device
> > virtio-balloon-pci,id=balloon0,bus=pci.0,addr=0x4 -sandbox
> > on,obsolete=deny,elevateprivileges=deny,spawn=deny,resourcecontrol=den
> > y
> > -msg timestamp=on
> >
> >
> > Lastly, I have attached some files:
> > - The dmesg log from the VM with ixgbevf
> > - The dmesg log from the VM with iavf
> > - A time series graph for the AMD based server with iavf illustrating when the issue began. On the AMD-based server, spikes with dropped packets are normal, but a constant flow isn't. As you can see, a constant flow of dropped packets begins shortly after 2/06 @ 20:20 UTC.
> > - A time series graph for the Intel based server with ixgbevf illustrating when the issue began. On the Intel based server, there's no drops whatsoever, and as soon as the null packet bug gets triggered, they spike and remain constant after 2/10 @ 9:00 UTC.
> >
> > I have analytics for almost everything network related (courtesy of Prometheus/node_exporter), so if you want insight on any other keys/values from the kernel or networking stack, please let me know and I'm happy to provide it.
> >
> > My thoughts currently: If this issue affects both iavf/ixgbevf, how much common code/logic is used between those drivers? I think it should help narrow things down a little more since it doesn't seem to be specific to a NIC or to iavf in particular.
> >
> > Thank you.
> >
> > On Fri, Feb 12, 2021 at 10:05 AM Fujinaka, Todd <todd.fujinaka@intel.com> wrote:
> > >
> > > The SW development team has taken a look at this and while they have some comments the next step is to get an internal repro.
> > >
> > > Please send the exact repro steps (including commands) including the configuration of bonding.
> > >
> > > They're also asking for the full dmesg from the time of boot.
> > >
> > > Thanks.
> > >
> > > Todd Fujinaka
> > > Software Application Engineer
> > > Data Center Group
> > > Intel Corporation
> > > todd.fujinaka@intel.com
> > >
> > > -----Original Message-----
> > > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > > Of Fujinaka, Todd
> > > Sent: Thursday, February 11, 2021 4:47 PM
> > > To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> > > intel-wired-lan@lists.osuosl.org; jdtxs00@gmail.com
> > > Subject: Re: [Intel-wired-lan] iavf null packets and arbitrary
> > > memory reads
> > >
> > > Sorry, top-posting guy.
> > >
> > > I'm going to put this in our internal bug tracker to make sure it doesn't get lost.
> > >
> > > Todd Fujinaka
> > > Software Application Engineer
> > > Data Center Group
> > > Intel Corporation
> > > todd.fujinaka@intel.com
> > >
> > > -----Original Message-----
> > > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > > Of Nguyen, Anthony L
> > > Sent: Wednesday, February 10, 2021 6:31 PM
> > > To: intel-wired-lan@lists.osuosl.org; jdtxs00@gmail.com
> > > Subject: Re: [Intel-wired-lan] iavf null packets and arbitrary
> > > memory reads
> > >
> > > On Wed, 2021-02-10 at 14:56 -0600, JD wrote:
> > > > Hello,
> > > >
> > > > I've encountered a NIC driver bug that leads to null packets being
> > > > transmitted and arbitrary/OOB memory reads by the iavf driver.
> > > >
> > > > I'm unfortunately not sure how the issue starts, but it has been
> > > > happening across many different AMD servers and virtual machines.
> > > >
> > > > Running a tcpdump (tcpdump -i bond0 -nne ether host
> > > > 00:00:00:00:00:00)
> > > > on bond0 results in these packets being produced at a high rate:
> > > >
> > > > 13:04:14.826298 00:00:00:00:00:00 > 00:00:00:00:00:00, 802.3,
> > > > length
> > > > 0: LLC, dsap Null (0x00) Individual, ssap Null (0x00) Command,
> > > > ctrl
> > > > 0x0000: Information, send seq 0, rcv seq 0, Flags [Command],
> > > > length
> > > > 144
> > > >         0x0000:  0000 0000 0000 0000 0000 0000 0000
> > > > 0000  ................
> > > >         0x0010:  0000 0000 0000 0000 0000 0000 0000
> > > > 0000  ................
> > > >         0x0020:  0000 0000 0000 0000 0000 0000 0000
> > > > 0000  ................
> > > >         0x0030:  0000 0000 0000 0000 0000 0000 0000
> > > > 0000  ................
> > > >         0x0040:  0000 0000 0000 0000 0000 0000 0000
> > > > 0000  ................
> > > >         0x0050:  0000 0000 0000 0000 0000 0000 0000
> > > > 0000  ................
> > > >         0x0060:  0000 0000 0000 0000 0000 0000 0000
> > > > 0000  ................
> > > >         0x0070:  0000 0000 0000 0000 0000 0000 0000
> > > > 0000  ................
> > > >         0x0080:  0000 0000 0000 0000 0000 0000 0000
> > > > 0000  ................
> > > >
> > > >
> > > > As you can see, they have a dest/src ether of 00:00:00:00:00:00
> > > > and are completely null.  This doesn't happen on every virtual
> > > > machine, some return absolutely nothing.
> > > >
> > > > If I filter the tcpdump command to ignore empty packets (all
> > > > dots), some other interesting items begin to appear:
> > > >
> > > >         0x0500:  0000 0000 0000 0029 0100 071b 0473 656c
> > > > .......).....sel
> > > >         0x0510:  696e 7578 7379 7374 656d 5f75 3a6f 626a
> > > > inuxsystem_u:obj
> > > >         0x0520:  6563 745f 723a 6269 6e5f 743a 7330
> > > > 0000  ect_r:bin_t:s0..
> > > > [...]
> > > >         0x0080:  0000 2f75 7372 2f6c 6962 3634 2f70
> > > > 6572  ../usr/lib64/per
> > > >         0x0090:  6c35 2f76 656e 646f 725f 7065 726c
> > > > 2f46  l5/vendor_perl/F
> > > >         0x00a0:  696c 652f 5370 6563 2f55 6e69 782e 706d
> > > > ile/Spec/Unix.pm
> > > >
> > > > To me, that looks like it's reading data from memory and
> > > > attempting to send from 00:00:00:00:00:00 to 00:00:00:00:00:00.
> > > >
> > > > If I run that same tcpdump on a different servers exhibiting the
> > > > null packets, completely different items show up which also appear
> > > > to be from memory.
> > > >
> > > > Keeping a tcpdump results in the same items from memory being
> > > > repeated infinitely with no observable variation.
> > > >
> > > > So, it seems like the iavf driver is encountering some bug with
> > > > memory management and ends up transmitting null packets or
> > > > arbitrary data from memory over bond0.
> > > >
> > > > How/why did I notice this behavior? The VM's seem to perform worse
> > > > over the network when this occurs. They usually exhibit small
> > > > amounts of packet loss, or poor SSH responsiveness. Oddly, I have
> > > > seen this bug in the past, and it resulted in dmesg on the parent
> > > > printing Spoofed packet warnings for the i40e driver. Now it does
> > > > not, yet the null packets still occur.
> > > >
> > > > I would like to help in any way I can to resolve this in the
> > > > iavf/i40e driver. I'm happy to provide information from the
> > > > servers if it's needed.
> > > >
> > > > For reference, here is the setup on every single AMD server:
> > > > VM:
> > > > CentOS 7.9
> > > > NIC driver: iavf 4.0.1
> > > > Kernel 4.19.163
> > > >
> > > > KVM parent:
> > > > CentOS 7.9
> > > > NIC driver: i40e 2.12.6
> > > > Kernel: 4.19.163
> > > > 2x Intel XXV710 for 25GbE SFP28 @ 25Gbps BONDED (Mode 4, LACP)
> > > > Vendor: Supermicro Network Adapter AOC-S25G-i2S Firmware version:
> > > > 7.20
> > > > 0x800082b3 1.2585.0
> > > > MOBO: Supermicro H11DSU-iN
> > > > CPU: AMD EPYC 7352
> > > >
> > > > And here is the dmesg log (grepped for iavf) from a server that
> > > > has the issue:
> > > > iavf: loading out-of-tree module taints kernel.
> > > > iavf: Intel(R) Ethernet Adaptive Virtual Function Network Driver -
> > > > version 4.0.1 iavf 0000:00:06.0: Multiqueue Enabled: Queue pair
> > > > count = 4 iavf 0000:00:06.0: MAC address: 52:54:00:7f:bc:39 iavf
> > > > 0000:00:06.0: GRO is enabled iavf 0000:00:05.0: Multiqueue Enabled:
> > > > Queue pair count = 4 iavf 0000:00:05.0: MAC address:
> > > > 52:54:00:a6:3e:62 iavf 0000:00:05.0: GRO is enabled iavf
> > > > 0000:00:06.0 eth0: NIC Link is Up Speed is 25 Gbps Full Duplex
> > > > iavf
> > > > 0000:00:05.0 eth1: NIC Link is Up Speed is 25 Gbps Full Duplex
> > > >
> > >
> > > Hi JD,
> > >
> > > I will check and see we're aware of this issue or have any information about it. If not, I'll see if we can work on a reproduction.
> > >
> > > Thanks,
> > > Tony
> > > _______________________________________________
> > > Intel-wired-lan mailing list
> > > Intel-wired-lan@osuosl.org
> > > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
> > > _______________________________________________
> > > Intel-wired-lan mailing list
> > > Intel-wired-lan@osuosl.org
> > > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
> > _______________________________________________
> > Intel-wired-lan mailing list
> > Intel-wired-lan@osuosl.org
> > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
