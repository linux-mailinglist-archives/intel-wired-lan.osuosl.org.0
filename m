Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 357BE336B3C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Mar 2021 05:47:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 79D5D6074E;
	Thu, 11 Mar 2021 04:47:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xgeGeyqdnk8a; Thu, 11 Mar 2021 04:47:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7C383605C8;
	Thu, 11 Mar 2021 04:47:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1BFDD1BF8B4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 04:47:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E846F4A810
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 04:47:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Si0_h0jgR1wR for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Mar 2021 04:47:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com
 [IPv6:2a00:1450:4864:20::234])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1B06B4A061
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 04:47:30 +0000 (UTC)
Received: by mail-lj1-x234.google.com with SMTP id z8so458090ljm.12
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Mar 2021 20:47:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=or+O64PklyVKX/FcFfYAzBfBiZE0GLO4zlPoVNWS4Pw=;
 b=AOqvsarFMg1AGZevrdphqRX+/UhZyezKvif3xpf2c3r4dncArLaOrV9WIlHTmikg+p
 vMSbsRjIthmXF4RrKj6s3UxNIMytdeHkrwM+eBAOvkwsZxvmawrm9MjScE7gMqHgy3sx
 iOF9KBWpYF1uCXjLZbXF2Mjx3+LUHJiPn5qJeFkFgdcwOiR7tO+ZbD+KEwFuwAL2rP1n
 A+q+JUeT8jwavs+70BuvyzhVofz4Rqq1LKYNlRNRLuF+IjkXCeVDL/EZ4SwIrz7LT3RJ
 CWe7qY4dOTUn2RkiE5IxPTl6BuJpbPEv7DrD1deNCs/erjDMzaqNq6xBkfvQlNI+fod6
 SD6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=or+O64PklyVKX/FcFfYAzBfBiZE0GLO4zlPoVNWS4Pw=;
 b=LkLDOD3d3B1KTer1PeRZCay+QkRkkMAFyb9kxSRLM1E77fExZO0M1RKTWpd226+VKx
 Yxcq/O4yIXo21O0wBrnwynTMHFgW0wtkupItSc0wmbQOwlINtUzsYXDz8Sy2j3hX8pR4
 8Or+Q4gU9dL8y78U5l8tsmD2Mo/oObHH08o3GHBiKhLXWFXlxK2okqAdCJEAM4j1p/sL
 6KPOtzqtDZMMogLlR7/RlFPaXx4XoLHUxVu5XVxqWoOYgkyGEkbPdYTEhE0t2sfTWYur
 2k4Z9McSCSt1Nwh72yBSeN4xQZvn3oehE+fCBbSIwrzHsQS/kporxlEWwVS1SHlNFoTK
 J1Wg==
X-Gm-Message-State: AOAM530VlaK6Ef9m/XCy+Zc3tlgL2Cx9g9UBf5t16Zon5N7bJPhYuhZ1
 KRyM5z1f7Rc0YC+cPXUtbJsIvMeR8sM/FG2E+JA=
X-Google-Smtp-Source: ABdhPJxnfpR5C6MTgI25MW6unI5NmdGcsIcfXEz8PRdFpdTIoggSkq33L/xL+Oi10UJErJo334Y2O84LVvfA6McX/48=
X-Received: by 2002:a2e:8881:: with SMTP id k1mr3662989lji.441.1615438047515; 
 Wed, 10 Mar 2021 20:47:27 -0800 (PST)
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
 <CAMnf+PhzHhyp8sqqZLRBA2Gu0ETavOmTuJ77eruaKUA_SQAcPg@mail.gmail.com>
 <BYAPR11MB36069D3FAE0796AAB473791DEF919@BYAPR11MB3606.namprd11.prod.outlook.com>
In-Reply-To: <BYAPR11MB36069D3FAE0796AAB473791DEF919@BYAPR11MB3606.namprd11.prod.outlook.com>
From: JD <jdtxs00@gmail.com>
Date: Wed, 10 Mar 2021 22:47:16 -0600
Message-ID: <CAMnf+PgqjNdToV9Hf9+C2jY4iBY8UihtuFHJHKJRUh5nJPynsA@mail.gmail.com>
To: "Fujinaka, Todd" <todd.fujinaka@intel.com>
Content-Type: multipart/mixed; boundary="000000000000fab17905bd3b7a37"
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--000000000000fab17905bd3b7a37
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

The kernel config you're referencing was for the VM, not the KVM host.
IOMMU is indeed enabled on the KVM hosts:
 ~ # grep -Ei '(AMD|INTEL)_IOMMU=3D' /boot/config-$(uname -r)
CONFIG_AMD_IOMMU=3Dy
CONFIG_INTEL_IOMMU=3Dy

Some more information I found from some research:
- I looked through how pinning memory is done, it appears that the
kernel pins memory using vfio_pin_pages when a SR-IOV/VFIO device is
attached [1]
- realtime mlock appears to be useless when used in conjunction with VFIO. =
[2]

[1] https://github.com/torvalds/linux/blob/master/drivers/vfio/vfio.c#L1939
[2] https://listman.redhat.com/archives/vfio-users/2015-September/msg00143.=
html

However, after following up with the lead on memory, it appears a
pattern has emerged. The common factor is that the VM's showing the
null packet issue don't contain the entire memory in RES/RSS on the
KVM hypervisor side.

It turns out our vm.swappiness was set quite high (10) on the
high-density servers w/ 256GB RAM, so they'd begin swapping at ~25GB
remaining memory.  It looks like the kernel started evicting memory
from RSS/RES for the qemu processes into the swap partition.

I have since downsized some virtual machines to use less memory and
adjusted vm.swappiness to '5' on the KVM hosts so that memory isn't
evicted for RSS/RES into swap.

I'm not 100% confident that it was the problem quite yet, but imagine
that it is. Is that even intended behavior I wonder? Should pinned
memory be getting swapped out and causing issues with DMA/VFIO?  By
definition, pinned memory should mean it never gets moved or evicted,
right?

I've attached an example of what I mean. PID 4989 has a VF attached +
has 8GB of memory assigned. Notice the RSS/RES size is only 7.8. That
should be 8.0/8.1.  I've seen some servers that go as low as 7.2GB RES
that get evicted to swap.

Any thoughts on that?

Thanks for the follow up.

- JDT

On Wed, Mar 10, 2021 at 2:31 PM Fujinaka, Todd <todd.fujinaka@intel.com> wr=
ote:
>
> One of the senior software guys has been thinking about your issue for a =
while and he just came up with some more ideas (as well as the previous ide=
as):
>
> Hi JD,
> I have another data point I'd like to note for you. In order for SR-IOV t=
o work right and be safe, you need to have IOMMU enabled on your platforms =
at boot.
>
> Usually this is done at boot with kernel options "iommu=3Dpt intel_iommu=
=3Don" at least for Intel platforms. I see these seem to be missing from yo=
ur dmesg logs.
>
> I also found mention at redhat's site of "locked" parameter for libvirt, =
and you might want to try that, but I can't tell from my research what the =
use of PCI-passthrough implies for qemu/kvm/libvirt in it's configuration.
>
> some good reading:
> https://software.intel.com/content/www/us/en/develop/articles/configure-s=
r-iov-network-virtual-functions-in-linux-kvm.html
> https://libvirt.org/formatdomain.html (see "locked" and "hard_limit") htt=
ps://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/7/html-=
single/virtualization_tuning_and_optimization_guide/index#chap-Virtualizati=
on_Tuning_Optimization_Guide-Memory
>
> Todd Fujinaka
> Software Application Engineer
> Data Center Group
> Intel Corporation
> todd.fujinaka@intel.com
>
> -----Original Message-----
> From: JD <jdtxs00@gmail.com>
> Sent: Monday, March 8, 2021 8:08 AM
> To: Fujinaka, Todd <todd.fujinaka@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org
> Subject: Re: [Intel-wired-lan] iavf null packets and arbitrary memory rea=
ds
>
> Hello Todd,
>
> That is a great lead, I will chase that down and try various memory situa=
tions myself.
>
> If you come up with anything on your end from the testing -- let me know.=
 I will do the same.
>
> Thank you very much, I appreciate your help!
>
> On Fri, Mar 5, 2021 at 12:41 PM Fujinaka, Todd <todd.fujinaka@intel.com> =
wrote:
> >
> > OK, I don't know if we're going to be able to reproduce this in-house, =
though we have one new test to try.
> >
> > Also, seeing this on multiple drivers seems odd.
> >
> > I did talk to a senior engineer and he suspects that qemu might be gett=
ing swapped out. Transmitting packets with all zeros points toward a proble=
m with DMA mapping or memory pinning. We are depending on qemu memory to be=
 permanently pinned in the host for SR-IOV to work.
> >
> > You may need to start qemu with other options to prevent it from being =
swapped out. I can't suggest any because I'm not that familiar with qemu. M=
aybe there's a qemu forum where you could ask this?
> >
> > I think our final test is to 1) reduce system memory in the host via ke=
rnel command line, then 2) launch with his command, and 3) run some memory =
hog benchmark/stress test on the host that starts causing lots of swapping.
> >
> > Todd Fujinaka
> > Software Application Engineer
> > Data Center Group
> > Intel Corporation
> > todd.fujinaka@intel.com
> >
> > -----Original Message-----
> > From: JD <jdtxs00@gmail.com>
> > Sent: Wednesday, March 3, 2021 10:01 AM
> > To: Fujinaka, Todd <todd.fujinaka@intel.com>
> > Cc: intel-wired-lan@lists.osuosl.org
> > Subject: Re: [Intel-wired-lan] iavf null packets and arbitrary memory
> > reads
> >
> > Hello Todd,
> >
> > I have attached the kernel config for the virtual machine.  I don't
> > know if it helps you at all, but the machines primarily run VPN
> > tunnels (IPsec/OpenVPN)
> >
> > I still don't know what triggers the bug exactly. A VM can go a full mo=
nth passing traffic normally then start transmitting those null packets for=
 no clear or obvious reason.
> >
> > If you would like the output of any command on a VM that is currently e=
xperiencing the bug, let me know. I am happy to provide anything that helps=
.
> >
> > Thank you.
> >
> > On Wed, Mar 3, 2021 at 9:18 AM Fujinaka, Todd <todd.fujinaka@intel.com>=
 wrote:
> > >
> > > I got them to try the kernels you're using and we can't reproduce thi=
s. My guess is that it's your kernel config. Can you send those as well?
> > >
> > > Todd Fujinaka
> > > Software Application Engineer
> > > Data Center Group
> > > Intel Corporation
> > > todd.fujinaka@intel.com
> > >
> > > -----Original Message-----
> > > From: Fujinaka, Todd
> > > Sent: Thursday, February 25, 2021 2:26 PM
> > > To: Fujinaka, Todd <todd.fujinaka@intel.com>; JD <jdtxs00@gmail.com>
> > > Cc: intel-wired-lan@lists.osuosl.org
> > > Subject: RE: [Intel-wired-lan] iavf null packets and arbitrary
> > > memory reads
> > >
> > > Just to let you know, we didn't get a reproduction with the latest RH=
EL 8.3, but that's not what you were using. I'm going to remind our tester =
of the version numbers you gave us.
> > >
> > > In any case, we are looking at this.
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
> > > Sent: Friday, February 12, 2021 1:46 PM
> > > To: JD <jdtxs00@gmail.com>
> > > Cc: intel-wired-lan@lists.osuosl.org
> > > Subject: Re: [Intel-wired-lan] iavf null packets and arbitrary
> > > memory reads
> > >
> > > There is no common code between iavf and ixgbevf. The speculation is =
that this is all from the bonding driver, but the repro hasn't started yet.
> > >
> > > Todd Fujinaka
> > > Software Application Engineer
> > > Data Center Group
> > > Intel Corporation
> > > todd.fujinaka@intel.com
> > >
> > > -----Original Message-----
> > > From: JD <jdtxs00@gmail.com>
> > > Sent: Friday, February 12, 2021 10:39 AM
> > > To: Fujinaka, Todd <todd.fujinaka@intel.com>
> > > Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> > > intel-wired-lan@lists.osuosl.org
> > > Subject: Re: [Intel-wired-lan] iavf null packets and arbitrary
> > > memory reads
> > >
> > > I have some important details to add to this. It appears that ixgbe/i=
xgbevf are also affected. I have reviewed some older Intel based servers an=
d some are showing the behavior as well.
> > >
> > > This is a non-AMD server showing the behavior on a different NIC:
> > > OS: CentOS 7.8
> > > Kernel: 4.19.107
> > > NIC: Intel Corporation Ethernet Controller 10G X550T
> > > Driver: ixgbe 5.1.0-k
> > > Vendor P/N: AOC-MTG-i2TM
> > > Firmware-version: 0x80000aee, 1.1876.0
> > > CPU: Intel(R) Xeon(R) Silver 4214 CPU
> > > MOBO: Supermicro X11DPT-PS
> > >
> > > The VM on the Intel box above is using kernel 4.19.163 with ixgbevf
> > > 4.1.0-k
> > >
> > > This is a server with only 1 NIC (though bonding is still setup with =
only a single interface for simplification between builds), so I would assu=
me that bonding isn't relevant to the bug. I will include the bonding confi=
guration for the AMD servers below anyway in case you need it.
> > >
> > > For repro: I don't know how the issue begins or how to reproduce it o=
n demand, it happens during normal VM use. I will describe our environment =
and go over various settings.
> > >
> > > Virtualization type: qemu-kvm
> > > Libvirt version: libvirt-daemon-kvm-4.5.0-36.el7_9.3.x86_6
> > > QEMU version: qemu-kvm-ev-2.12.0-44.1.el7_8.1.x86_64
> > >
> > > OS on both guest/host: CentOS 7.8+ (happens on 7.8 and 7.9) NIC bondi=
ng: Bonded and unbonded are affected. However, on bonded hosts, these optio=
ns are used:
> > > GUEST: BONDING_OPTS=3D"mode=3D2 miimon=3D100 xmit_hash_policy=3D1"
> > > HOST: BONDING_OPTS=3D"mode=3D4 miimon=3D100 xmit_hash_policy=3Dlayer3=
+4"
> > >
> > > Bonding is setup in both the guest and host using the configuration a=
bove. 2 VF's are attached to the KVM guest for this.
> > >
> > > Here is the QEMU process on the AMD based server:
> > > qemu     35644  232  3.1 9678028 8432068 ?     SLl  Jan21 75000:17
> > > /usr/libexec/qemu-kvm -name guest=3DVMNAME-REDACTED,debug-threads=3Do=
n
> > > -S -object
> > > secret,id=3DmasterKey0,format=3Draw,file=3D/var/lib/libvirt/qemu/doma=
in-27
> > > -V MNAME-REDACTED/master-key.aes -machine
> > > pc-i440fx-rhel7.6.0,accel=3Dkvm,usb=3Doff,dump-guest-core=3Doff
> > > -cpu
> > > EPYC-IBPB,x2apic=3Don,tsc-deadline=3Don,hypervisor=3Don,tsc_adjust=3D=
on,clwb
> > > =3Do
> > > n,umip=3Don,spec-ctrl=3Don,stibp=3Don,ssbd=3Don,cmp_legacy=3Don,perfc=
tr_core=3Do
> > > n, monitor=3Doff -m 8192 -realtime mlock=3Doff -smp
> > > 4,sockets=3D4,cores=3D1,threads=3D1 -uuid
> > > 6e201ba4-68fe-45be-a86d-fbc46cef5d46 -display none -no-user-config
> > > -nodefaults -chardev socket,id=3Dcharmonitor,fd=3D55,server,nowait -m=
on
> > > chardev=3Dcharmonitor,id=3Dmonitor,mode=3Dcontrol -rtc
> > > base=3Dutc,driftfix=3Dslew -global kvm-pit.lost_tick_policy=3Ddelay
> > > -no-hpet -no-shutdown -global PIIX4_PM.disable_s3=3D1 -global
> > > PIIX4_PM.disable_s4=3D1 -boot strict=3Don -device
> > > ich9-usb-ehci1,id=3Dusb,bus=3Dpci.0,addr=3D0x2.0x7 -device
> > > ich9-usb-uhci1,masterbus=3Dusb.0,firstport=3D0,bus=3Dpci.0,multifunct=
ion=3Do
> > > n,
> > > addr=3D0x2 -device
> > > ich9-usb-uhci2,masterbus=3Dusb.0,firstport=3D2,bus=3Dpci.0,addr=3D0x2=
.0x1
> > > -device
> > > ich9-usb-uhci3,masterbus=3Dusb.0,firstport=3D4,bus=3Dpci.0,addr=3D0x2=
.0x2
> > > -device ahci,id=3Dsata0,bus=3Dpci.0,addr=3D0x3 -drive
> > > file=3D/imgs/VMNAME-REDACTED/diskname-redacted,format=3Dqcow2,if=3Dno=
ne,id
> > > =3Dd rive-sata0-0-0,cache=3Dnone,discard=3Dunmap
> > > -device
> > > ide-hd,bus=3Dsata0.0,drive=3Ddrive-sata0-0-0,id=3Dsata0-0-0,bootindex=
=3D1,wr
> > > it
> > > e-cache=3Don
> > > -chardev pty,id=3Dcharserial0 -device
> > > isa-serial,chardev=3Dcharserial0,id=3Dserial0 -device
> > > vfio-pci,host=3D81:03.5,id=3Dhostdev0,bus=3Dpci.0,addr=3D0x5 -device
> > > vfio-pci,host=3D81:0b.5,id=3Dhostdev1,bus=3Dpci.0,addr=3D0x6 -device
> > > virtio-balloon-pci,id=3Dballoon0,bus=3Dpci.0,addr=3D0x4 -sandbox
> > > on,obsolete=3Ddeny,elevateprivileges=3Ddeny,spawn=3Ddeny,resourcecont=
rol=3Dd
> > > en
> > > y
> > > -msg timestamp=3Don
> > >
> > >
> > > Here is the QEMU process on the Intel based server:
> > > qemu     10058  157  8.1 9622376 8017812 ?     SLl  Jan25 40027:35
> > > /usr/libexec/qemu-kvm -name guest=3DVMNAME-REDACTED,debug-threads=3Do=
n
> > > -S -object
> > > secret,id=3DmasterKey0,format=3Draw,file=3D/var/lib/libvirt/qemu/doma=
in-21
> > > -V MNAME-REDACTED/master-key.aes -machine
> > > pc-i440fx-rhel7.6.0,accel=3Dkvm,usb=3Doff,dump-guest-core=3Doff
> > > -cpu
> > > Skylake-Server-IBRS,ss=3Don,hypervisor=3Don,tsc_adjust=3Don,clflushop=
t=3Don,
> > > um
> > > ip=3Don,pku=3Don,avx512vnni=3Don,md-clear=3Don,stibp=3Don,ssbd=3Don,x=
saves=3Don,hl
> > > e=3D off,rtm=3Doff -m 8192 -realtime mlock=3Doff -smp
> > > 4,sockets=3D4,cores=3D1,threads=3D1 -uuid
> > > 6fc40d77-2872-4717-827b-de634b2a5609 -display none -no-user-config
> > > -nodefaults -chardev socket,id=3Dcharmonitor,fd=3D31,server,nowait -m=
on
> > > chardev=3Dcharmonitor,id=3Dmonitor,mode=3Dcontrol -rtc
> > > base=3Dutc,driftfix=3Dslew -global kvm-pit.lost_tick_policy=3Ddelay
> > > -no-hpet -no-shutdown -global PIIX4_PM.disable_s3=3D1 -global
> > > PIIX4_PM.disable_s4=3D1 -boot strict=3Don -device
> > > ich9-usb-ehci1,id=3Dusb,bus=3Dpci.0,addr=3D0x2.0x7 -device
> > > ich9-usb-uhci1,masterbus=3Dusb.0,firstport=3D0,bus=3Dpci.0,multifunct=
ion=3Do
> > > n,
> > > addr=3D0x2 -device
> > > ich9-usb-uhci2,masterbus=3Dusb.0,firstport=3D2,bus=3Dpci.0,addr=3D0x2=
.0x1
> > > -device
> > > ich9-usb-uhci3,masterbus=3Dusb.0,firstport=3D4,bus=3Dpci.0,addr=3D0x2=
.0x2
> > > -device ahci,id=3Dsata0,bus=3Dpci.0,addr=3D0x3 -drive
> > > file=3D/imgs/VMNAME-REDACTED/diskname-redacted,format=3Dqcow2,if=3Dno=
ne,id
> > > =3Dd rive-sata0-0-0,cache=3Dnone,discard=3Dunmap
> > > -device
> > > ide-hd,bus=3Dsata0.0,drive=3Ddrive-sata0-0-0,id=3Dsata0-0-0,bootindex=
=3D1,wr
> > > it
> > > e-cache=3Don
> > > -chardev pty,id=3Dcharserial0 -device
> > > isa-serial,chardev=3Dcharserial0,id=3Dserial0 -device
> > > vfio-pci,host=3D18:11.0,id=3Dhostdev0,bus=3Dpci.0,addr=3D0x5 -device
> > > virtio-balloon-pci,id=3Dballoon0,bus=3Dpci.0,addr=3D0x4 -sandbox
> > > on,obsolete=3Ddeny,elevateprivileges=3Ddeny,spawn=3Ddeny,resourcecont=
rol=3Dd
> > > en
> > > y
> > > -msg timestamp=3Don
> > >
> > >
> > > Lastly, I have attached some files:
> > > - The dmesg log from the VM with ixgbevf
> > > - The dmesg log from the VM with iavf
> > > - A time series graph for the AMD based server with iavf illustrating=
 when the issue began. On the AMD-based server, spikes with dropped packets=
 are normal, but a constant flow isn't. As you can see, a constant flow of =
dropped packets begins shortly after 2/06 @ 20:20 UTC.
> > > - A time series graph for the Intel based server with ixgbevf illustr=
ating when the issue began. On the Intel based server, there's no drops wha=
tsoever, and as soon as the null packet bug gets triggered, they spike and =
remain constant after 2/10 @ 9:00 UTC.
> > >
> > > I have analytics for almost everything network related (courtesy of P=
rometheus/node_exporter), so if you want insight on any other keys/values f=
rom the kernel or networking stack, please let me know and I'm happy to pro=
vide it.
> > >
> > > My thoughts currently: If this issue affects both iavf/ixgbevf, how m=
uch common code/logic is used between those drivers? I think it should help=
 narrow things down a little more since it doesn't seem to be specific to a=
 NIC or to iavf in particular.
> > >
> > > Thank you.
> > >
> > > On Fri, Feb 12, 2021 at 10:05 AM Fujinaka, Todd <todd.fujinaka@intel.=
com> wrote:
> > > >
> > > > The SW development team has taken a look at this and while they hav=
e some comments the next step is to get an internal repro.
> > > >
> > > > Please send the exact repro steps (including commands) including th=
e configuration of bonding.
> > > >
> > > > They're also asking for the full dmesg from the time of boot.
> > > >
> > > > Thanks.
> > > >
> > > > Todd Fujinaka
> > > > Software Application Engineer
> > > > Data Center Group
> > > > Intel Corporation
> > > > todd.fujinaka@intel.com
> > > >
> > > > -----Original Message-----
> > > > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On
> > > > Behalf Of Fujinaka, Todd
> > > > Sent: Thursday, February 11, 2021 4:47 PM
> > > > To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> > > > intel-wired-lan@lists.osuosl.org; jdtxs00@gmail.com
> > > > Subject: Re: [Intel-wired-lan] iavf null packets and arbitrary
> > > > memory reads
> > > >
> > > > Sorry, top-posting guy.
> > > >
> > > > I'm going to put this in our internal bug tracker to make sure it d=
oesn't get lost.
> > > >
> > > > Todd Fujinaka
> > > > Software Application Engineer
> > > > Data Center Group
> > > > Intel Corporation
> > > > todd.fujinaka@intel.com
> > > >
> > > > -----Original Message-----
> > > > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On
> > > > Behalf Of Nguyen, Anthony L
> > > > Sent: Wednesday, February 10, 2021 6:31 PM
> > > > To: intel-wired-lan@lists.osuosl.org; jdtxs00@gmail.com
> > > > Subject: Re: [Intel-wired-lan] iavf null packets and arbitrary
> > > > memory reads
> > > >
> > > > On Wed, 2021-02-10 at 14:56 -0600, JD wrote:
> > > > > Hello,
> > > > >
> > > > > I've encountered a NIC driver bug that leads to null packets
> > > > > being transmitted and arbitrary/OOB memory reads by the iavf driv=
er.
> > > > >
> > > > > I'm unfortunately not sure how the issue starts, but it has been
> > > > > happening across many different AMD servers and virtual machines.
> > > > >
> > > > > Running a tcpdump (tcpdump -i bond0 -nne ether host
> > > > > 00:00:00:00:00:00)
> > > > > on bond0 results in these packets being produced at a high rate:
> > > > >
> > > > > 13:04:14.826298 00:00:00:00:00:00 > 00:00:00:00:00:00, 802.3,
> > > > > length
> > > > > 0: LLC, dsap Null (0x00) Individual, ssap Null (0x00) Command,
> > > > > ctrl
> > > > > 0x0000: Information, send seq 0, rcv seq 0, Flags [Command],
> > > > > length
> > > > > 144
> > > > >         0x0000:  0000 0000 0000 0000 0000 0000 0000
> > > > > 0000  ................
> > > > >         0x0010:  0000 0000 0000 0000 0000 0000 0000
> > > > > 0000  ................
> > > > >         0x0020:  0000 0000 0000 0000 0000 0000 0000
> > > > > 0000  ................
> > > > >         0x0030:  0000 0000 0000 0000 0000 0000 0000
> > > > > 0000  ................
> > > > >         0x0040:  0000 0000 0000 0000 0000 0000 0000
> > > > > 0000  ................
> > > > >         0x0050:  0000 0000 0000 0000 0000 0000 0000
> > > > > 0000  ................
> > > > >         0x0060:  0000 0000 0000 0000 0000 0000 0000
> > > > > 0000  ................
> > > > >         0x0070:  0000 0000 0000 0000 0000 0000 0000
> > > > > 0000  ................
> > > > >         0x0080:  0000 0000 0000 0000 0000 0000 0000
> > > > > 0000  ................
> > > > >
> > > > >
> > > > > As you can see, they have a dest/src ether of 00:00:00:00:00:00
> > > > > and are completely null.  This doesn't happen on every virtual
> > > > > machine, some return absolutely nothing.
> > > > >
> > > > > If I filter the tcpdump command to ignore empty packets (all
> > > > > dots), some other interesting items begin to appear:
> > > > >
> > > > >         0x0500:  0000 0000 0000 0029 0100 071b 0473 656c
> > > > > .......).....sel
> > > > >         0x0510:  696e 7578 7379 7374 656d 5f75 3a6f 626a
> > > > > inuxsystem_u:obj
> > > > >         0x0520:  6563 745f 723a 6269 6e5f 743a 7330
> > > > > 0000  ect_r:bin_t:s0..
> > > > > [...]
> > > > >         0x0080:  0000 2f75 7372 2f6c 6962 3634 2f70
> > > > > 6572  ../usr/lib64/per
> > > > >         0x0090:  6c35 2f76 656e 646f 725f 7065 726c
> > > > > 2f46  l5/vendor_perl/F
> > > > >         0x00a0:  696c 652f 5370 6563 2f55 6e69 782e 706d
> > > > > ile/Spec/Unix.pm
> > > > >
> > > > > To me, that looks like it's reading data from memory and
> > > > > attempting to send from 00:00:00:00:00:00 to 00:00:00:00:00:00.
> > > > >
> > > > > If I run that same tcpdump on a different servers exhibiting the
> > > > > null packets, completely different items show up which also
> > > > > appear to be from memory.
> > > > >
> > > > > Keeping a tcpdump results in the same items from memory being
> > > > > repeated infinitely with no observable variation.
> > > > >
> > > > > So, it seems like the iavf driver is encountering some bug with
> > > > > memory management and ends up transmitting null packets or
> > > > > arbitrary data from memory over bond0.
> > > > >
> > > > > How/why did I notice this behavior? The VM's seem to perform
> > > > > worse over the network when this occurs. They usually exhibit
> > > > > small amounts of packet loss, or poor SSH responsiveness. Oddly,
> > > > > I have seen this bug in the past, and it resulted in dmesg on
> > > > > the parent printing Spoofed packet warnings for the i40e driver.
> > > > > Now it does not, yet the null packets still occur.
> > > > >
> > > > > I would like to help in any way I can to resolve this in the
> > > > > iavf/i40e driver. I'm happy to provide information from the
> > > > > servers if it's needed.
> > > > >
> > > > > For reference, here is the setup on every single AMD server:
> > > > > VM:
> > > > > CentOS 7.9
> > > > > NIC driver: iavf 4.0.1
> > > > > Kernel 4.19.163
> > > > >
> > > > > KVM parent:
> > > > > CentOS 7.9
> > > > > NIC driver: i40e 2.12.6
> > > > > Kernel: 4.19.163
> > > > > 2x Intel XXV710 for 25GbE SFP28 @ 25Gbps BONDED (Mode 4, LACP)
> > > > > Vendor: Supermicro Network Adapter AOC-S25G-i2S Firmware version:
> > > > > 7.20
> > > > > 0x800082b3 1.2585.0
> > > > > MOBO: Supermicro H11DSU-iN
> > > > > CPU: AMD EPYC 7352
> > > > >
> > > > > And here is the dmesg log (grepped for iavf) from a server that
> > > > > has the issue:
> > > > > iavf: loading out-of-tree module taints kernel.
> > > > > iavf: Intel(R) Ethernet Adaptive Virtual Function Network Driver
> > > > > - version 4.0.1 iavf 0000:00:06.0: Multiqueue Enabled: Queue
> > > > > pair count =3D 4 iavf 0000:00:06.0: MAC address: 52:54:00:7f:bc:3=
9
> > > > > iavf
> > > > > 0000:00:06.0: GRO is enabled iavf 0000:00:05.0: Multiqueue Enable=
d:
> > > > > Queue pair count =3D 4 iavf 0000:00:05.0: MAC address:
> > > > > 52:54:00:a6:3e:62 iavf 0000:00:05.0: GRO is enabled iavf
> > > > > 0000:00:06.0 eth0: NIC Link is Up Speed is 25 Gbps Full Duplex
> > > > > iavf
> > > > > 0000:00:05.0 eth1: NIC Link is Up Speed is 25 Gbps Full Duplex
> > > > >
> > > >
> > > > Hi JD,
> > > >
> > > > I will check and see we're aware of this issue or have any informat=
ion about it. If not, I'll see if we can work on a reproduction.
> > > >
> > > > Thanks,
> > > > Tony
> > > > _______________________________________________
> > > > Intel-wired-lan mailing list
> > > > Intel-wired-lan@osuosl.org
> > > > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
> > > > _______________________________________________
> > > > Intel-wired-lan mailing list
> > > > Intel-wired-lan@osuosl.org
> > > > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
> > > _______________________________________________
> > > Intel-wired-lan mailing list
> > > Intel-wired-lan@osuosl.org
> > > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--000000000000fab17905bd3b7a37
Content-Type: image/png; name="qemu-RSS.png"
Content-Disposition: attachment; filename="qemu-RSS.png"
Content-Transfer-Encoding: base64
Content-ID: <f_km4dtpma0>
X-Attachment-Id: f_km4dtpma0

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
tXfv3tHR0ZqamieeeGJ4eHh0dNQYJzGkGBkZGXnooYfkZFlTU3Po0CHTez8qjOuiBz3TsmGviwGv
bARr7BWWZxIlJSU1NTXadXwhxKFDhzZu3Kjfwmg0unnz5tHR0aefftq4MVmLtIMgmVl5uDFv3jw7
d10I2tvbM5mM9l+VN6rAMKY3lUrJY5z6+nrZZcuXL2ccO9jBz3XZ5L777hNCvP32245atbW1tbW1
ZTKZ8vLySfmW3ccff6y/QK9d/lYRiMxnZXJgYEA7iZcJl3+Hw2E5wujfTAwpBM3Nzc3NzfIwv7a2
1vTelRHjuuwMeoJVNrztUuG0bNhjr8UkoZ0zaq9MTExI0atk69atK1eu/Oijj4wnO6aLZKHI+/va
O6urq/v7+4lEy0FfBmNkcHDw+uuvd7N7l5aWsttOFqrMj4yMaC7YkpKSUCh05syZHMXg57rssHjx
YnnnybhoxYoVRIXoDzzpYvMW42Wx6dOnX7p0yTJ4Veb9DF6PMfOZTEY/zs6ePdvoN5OD5sTExCuv
vKK9SAwpdkilUg8++OD1119v582m67Ic9DRU5yumxeZyu/TwyoY39grLSaKtrW1wcFB/ATEcDre3
t8ulv/3tb8vKyrq7u1tbW++55x6tk4hFcrbXb4ad7+q2tbX19PSsXLny0qVLQ0NDWRLjlpaWLVu2
vPDCC6dOnRofHy8qKjp79qzlifaXX35ZUVHR2Nj4n//859prrxVCzJ07NxqNTsr3CJ1CZP706dPV
1dXy29CJRGL69On6cyxv8XNd0Wi0uLhY7sAzZ85csWLF2NiYvrOi0ai8YWts29jYWFFRUVpaqq+9
rVu3Xrx4URZMVVWVEEJeX84qNk+uXhLBp9Pp8vLyZDKpXaDPOqw2DV6V+VwEb2frjJlvb2+Px+OX
L1/u7u4uKysrKytrbW2Vi8Lh8Jo1a+688055H3Xfvn3a3koUNsELL7wwMDAgL7LJHGrrIlCtix70
VGVD9xdvuwgYZcMbe4WdG9e7d+/evHnz2rVr5Y9H0un073//e7nommuukb2ir0W5SmIRj6effrqh
oaGmpkZ+sU+/SP63qqpqy5YtWoIsJ4mmpqaGhoaKiorBwcHdu3dXVFSEw+Ef/OAHgZgkiPQ+99xz
M2bMWLZsWSKRGBkZef7553N3CcXPddXU1GjXKyoqKioqKnp6evSdJX2QJ06cMLa9cOGCEGJoaEj/
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
pUuXdnV1uYzYf6AvBcAS6EuBe2CmA6CggL4UeMu0iYmJyY4BAOAZ0JcCb4G+FAAAgBI8KhwAAIAS
TBIAAACUYJIAAACgBJMEAAAAJZgkAAAAKLnyOwnCrkd48ozOE/njdUJ6evToUT/dkIUK9KXuHaVu
7JUeEmh9KbGI6GVik3nZyJG+1HO1rVPpKYGf+tL/Ky0t/de//rV379758+e//PLLqVTqf//735o1
a6677rr33ntPCFFXVzdt2rSTJ0+mUqlrr732+9///lVXXSV/pD1v3rylS5e2t7efPXu2v7+/v7+/
o6NjdHTU+Pr1118/MTHxzDPPCCF+9atfRSKR48eP/+Uvf7l8+XIikdDWBWzyhz/84YYbbjh+/Hgq
lbr55puXLl2qdYp89PTbb7/92muv3XzzzVVVVb29vfI3+p7DWxdRbEKIXbt2/fSnP50zZ87Q0ND7
77/f19cnf8oTjUYfffTR7u7uf/7zn7LA3n333f7+fiHExo0b77333s8///zGG2/s7+//29/+ZidC
IofEujyHtzsQm+w5RKKIRUQvE5vMy8bjjz/+wx/+UGtVXl7+3//+1/JBErydiD18qQqbBzEs8zaZ
YJqwsutZevKOHz9u+rwjlb6U52uEvlQP9KV6eI5Snr3ScwKtL1UtonuZ2GReNjzXl3qutuVpWQn8
1pfasesRnrzKyspMJvPWW281NjbKh9bS+lKerxH6Uj3Ql+rhOUp59krPCbS+VLWI7mVik3nZ8Fxf
6rnalqdltcQ/famlXU/lydOeht/Y2FhWVpZIJB577LH6+npaX8rwNUJfSgB9qfsI7dsrPSfo+lLT
RXQvE5vMy4a3+tJcqG15WlYa3/SlV25c7927d/PmzdqDuEdHR/XXy6RqSt4qkWHJ60j9/f1ajuQZ
ZZbpQXyjLz127Jg+uOrq6nQ6ffny5ZkzZyaTyfHxcfquoKW+NBQK6U0G/hwD5gMB1ZeaFpvmhkyn
0x0dHfKwo66ubtu2bUIIOfblIkJTe6XTdbFh7A4E/utLVYuIIYXYZF42pL40mUzG4/Gampp4PF5b
W2t/CHa0EzEipAubjWpYdtmVRq5MEnbsekZPXtYKBgYGjMfpWfrSHPkaoS+Vr0xBfSnPUUrkkLcu
HoWhLzVdpOplYpNdZsMrfWmO1LZsLStNrvWlwviocNqul+XJy2Qy+nzNnj3beL8+S1/Kc0NCX2oE
+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
--000000000000fab17905bd3b7a37
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--000000000000fab17905bd3b7a37--


