Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DDB6C762700
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jul 2023 00:45:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 79DD661150;
	Tue, 25 Jul 2023 22:45:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 79DD661150
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690325102;
	bh=6GAR40+yTHnIQfSexjJGVSqxLsQlUssdXbgUYWPKGew=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=V/VU0wBjDvLTV8+XX+kQK+B+84ZRv67gKi1O/TIqYznsOq59eUBGq+IDpWfgVDsXg
	 KPiNBn6A94Qy/2vfXCQ6NlKnLRfWXbh8GrOIkCMi6mg6I5pYI2gHoec3UUikPQcJv6
	 wxQMYNPzTZmdK2bhv0j09r5jc/QASf0M0RPcYCEJ20M/gFoTjuA62UiSOwJnPIlS5g
	 5wRqEjNIchEMhoOTKqHAn9Ua70QmdE1zJPbNKLCoqatW0I8JZ84jPAyZnskRS0tozt
	 qQLRjby6UVcBT9jJsj0oB6AEEC0ntbEU2M+y28WnUyLgEt8P7EMpNjstur1TAyi91Z
	 L8AH3zykKAHpA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XH8iG1qJYj-N; Tue, 25 Jul 2023 22:45:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CFD0561130;
	Tue, 25 Jul 2023 22:44:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CFD0561130
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 196C31BF4E5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 20:49:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DF911607D0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 20:49:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DF911607D0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vXdtRR5rqyV8 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Jul 2023 20:49:00 +0000 (UTC)
X-Greylist: delayed 640 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 25 Jul 2023 20:48:59 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 571C861135
Received: from w1.tutanota.de (w1.tutanota.de [81.3.6.162])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 571C861135
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 20:48:59 +0000 (UTC)
Received: from tutadb.w10.tutanota.de (unknown [192.168.1.10])
 by w1.tutanota.de (Postfix) with ESMTP id 05C74FBF912;
 Tue, 25 Jul 2023 20:38:16 +0000 (UTC)
Date: Tue, 25 Jul 2023 22:38:16 +0200 (CEST)
From: kkiot@tuta.io
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Anthony L Nguyen <anthony.l.nguyen@intel.com>
Message-ID: <NaDlWbh--3-9@tuta.io>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 25 Jul 2023 22:44:54 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; t=1690317496; 
 s=s1; d=tuta.io;
 h=From:From:To:To:Subject:Subject:Content-Description:Content-ID:Content-Type:Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:In-Reply-To:MIME-Version:MIME-Version:Message-ID:Message-ID:Reply-To:References:Sender;
 bh=ieaHnup6SXJ5cbEhpycnkO9jrmpvwAeSTZ9JiFEcs7Y=;
 b=ZJ3e5Uonmvp7PAnF+QOzVl6pBRwC3CGG59tnUV2whlGD+nPEPSlfEcrH86HFfMjU
 9pjAi3MCfd02W365MUrvyII2JbxaXofsZlRsdHaPsfuk3bpWODnfyI+EKoNbtd+QRxh
 fS7dVQR116C7NSQ8GpqogjOWCDVl3KNk4eCujEGqnzGrEu+F7mOClOSIYyailIVD8Ji
 l97jdS7zFRnS2sHjwRN/edqaEu6fIWMA7oAX2os2tUJn1LItDUUhhFQlg8tr5DvLvbj
 aTft6hPJ6RH1gNAYcfdBDJx8vrpdU2Nci2220M8RokqvSCcRrIEYopVCxdqsS8AwvS7
 Y57ckCHebA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=tuta.io header.i=@tuta.io header.a=rsa-sha256
 header.s=s1 header.b=ZJ3e5Uon
Subject: [Intel-wired-lan] PROBLEM: igc driver - Ethernet NIC speed not
 changing
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
Cc: Netdev <netdev@vger.kernel.org>,
 Intel Wired Lan <intel-wired-lan@lists.osuosl.org>
Content-Type: multipart/mixed; boundary="===============2273269823642611229=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============2273269823642611229==
Content-Type: multipart/alternative; 
	boundary="----=_Part_559274_2121196993.1690317496467"

------=_Part_559274_2121196993.1690317496467
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

[1.] One line summary of the problem: igc driver - Ethernet NIC speed not c=
hanging
[2.] Full description of the problem/report:
Trying to change my I225-V's connection speed to 1000 Mbps down from 2500 M=
bps=C2=A0as a workaround=C2=A0to disconnection issues, but changes won't ap=
ply, regardless of using NetworkManager or ethtool.

NetworkManager displays the changed values, but they don't seem to actually=
 apply.

Using ethtool to change the speed to 1000 Mbps (`ethtool -s enp6s0 speed 10=
00`) also fails.
The interface gets brought down then up with the same 2500 Mbps speed.

[3.] Keywords (i.e., modules, networking, kernel): driver, networking, igc,=
 intel[4.] Kernel information
 [4.1.] Kernel version (from /proc/version):=C2=A0Linux version 6.4.6-arch1=
-1 (linux@archlinux) (gcc (GCC) 13.1.1 20230714, GNU ld (GNU Binutils) 2.40=
.0) #1 SMP PREEMPT_DYNAMIC Mon, 24 Jul 2023 20:19:38 +0000[4.2.] Kernel .co=
nfig file: Cannot obtain
[5.] Most recent kernel version which did not have the bug: 6.2.9 or more r=
ecent?
[6.] Output of Oops.. message (if applicable) with symbolic information    =
 resolved (see Documentation/admin-guide/bug-hunting.rst) N/A
[7.] A small shell script or example program which triggers the     problem=
 (if possible)
# ethtool -s [INTERFACE] speed 1000
[8.] Environment
[8.1.] Software (add the output of the ver_linux script here) Cannot obtain
[8.2.] Processor information (from /proc/cpuinfo):
processor=09: 0
vendor_id=09: AuthenticAMD
cpu family=09: 23
model=09=09: 113
model name=09: AMD Ryzen 5 3600 6-Core Processor
stepping=09: 0
microcode=09: 0x8701030
cpu MHz=09=09: 2473.153
cache size=09: 512 KB
physical id=09: 0
siblings=09: 12
core id=09=09: 0
cpu cores=09: 6
apicid=09=09: 0
initial apicid=09: 0
fpu=09=09: yes
fpu_exception=09: yes
cpuid level=09: 16
wp=09=09: yes
flags=09=09: fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov =
pat pse36 clflush mmx fxsr sse sse2 ht syscall nx mmxext fxsr_opt pdpe1gb r=
dtscp lm constant_tsc rep_good nopl nonstop_tsc cpuid extd_apicid aperfmper=
f rapl pni pclmulqdq monitor ssse3 fma cx16 sse4_1 sse4_2 x2apic movbe popc=
nt aes xsave avx f16c rdrand lahf_lm cmp_legacy svm extapic cr8_legacy abm =
sse4a misalignsse 3dnowprefetch osvw ibs skinit wdt tce topoext perfctr_cor=
e perfctr_nb bpext perfctr_llc mwaitx cpb cat_l3 cdp_l3 hw_pstate ssbd mba =
ibpb stibp vmmcall fsgsbase bmi1 avx2 smep bmi2 cqm rdt_a rdseed adx smap c=
lflushopt clwb sha_ni xsaveopt xsavec xgetbv1 cqm_llc cqm_occup_llc cqm_mbm=
_total cqm_mbm_local clzero irperf xsaveerptr rdpru wbnoinvd arat npt lbrv =
svm_lock nrip_save tsc_scale vmcb_clean flushbyasid decodeassists pausefilt=
er pfthreshold avic v_vmsave_vmload vgif v_spec_ctrl rdpid overflow_recov s=
uccor smca sev sev_es
bugs=09=09: sysret_ss_attrs spectre_v1 spectre_v2 spec_store_bypass retblee=
d smt_rsb
bogomips=09: 7188.50
TLB size=09: 3072 4K pages
clflush size=09: 64
cache_alignment=09: 64
address sizes=09: 43 bits physical, 48 bits virtual
power management: ts ttp tm hwpstate cpb eff_freq_ro [13] [14]

(repeats 12x: 12 threads processor)[8.3.] Module information (from /proc/mo=
dules):
igc 188416 0 - Live 0x0000000000000000
[8.4.] Loaded driver and hardware information (/proc/ioports, /proc/iomem)
/proc/ioports
0000-0000 : PCI Bus 0000:00
=C2=A0 0000-0000 : dma1
=C2=A0 0000-0000 : pic1
=C2=A0 0000-0000 : timer0
=C2=A0 0000-0000 : timer1
=C2=A0 0000-0000 : keyboard
=C2=A0 0000-0000 : PNP0800:00
=C2=A0 0000-0000 : keyboard
=C2=A0 0000-0000 : rtc0
=C2=A0 0000-0000 : dma page reg
=C2=A0 0000-0000 : pic2
=C2=A0 0000-0000 : ACPI PM2_CNT_BLK
=C2=A0 0000-0000 : dma2
=C2=A0 0000-0000 : fpu
=C2=A0 0000-0000 : pnp 00:03
=C2=A0 0000-0000 : pnp 00:03
0000-0000 : PCI Bus 0000:00
0000-0000 : PCI Bus 0000:00
=C2=A0 0000-0000 : serial
=C2=A0 0000-0000 : pnp 00:04
=C2=A0 0000-0000 : pnp 00:04
=C2=A0 0000-0000 : pnp 00:04
=C2=A0 0000-0000 : pnp 00:04
=C2=A0=C2=A0=C2=A0 0000-0000 : ACPI PM1a_EVT_BLK
=C2=A0=C2=A0=C2=A0 0000-0000 : ACPI PM1a_CNT_BLK
=C2=A0=C2=A0=C2=A0 0000-0000 : ACPI PM_TMR
=C2=A0=C2=A0=C2=A0 0000-0000 : ACPI GPE0_BLK
=C2=A0 0000-0000 : pnp 00:04
=C2=A0 0000-0000 : pnp 00:04
=C2=A0 0000-0000 : pnp 00:04
=C2=A0=C2=A0=C2=A0 0000-0000 : piix4_smbus
=C2=A0 0000-0000 : pnp 00:04
=C2=A0=C2=A0=C2=A0 0000-0000 : piix4_smbus
=C2=A0 0000-0000 : pnp 00:04
=C2=A0 0000-0000 : pnp 00:04
=C2=A0 0000-0000 : pnp 00:04
=C2=A0 0000-0000 : pnp 00:04
=C2=A0 0000-0000 : pnp 00:04
=C2=A0 0000-0000 : pnp 00:04
=C2=A0 0000-0000 : pnp 00:04
0000-0000 : PCI conf1
0000-0000 : PCI Bus 0000:00
=C2=A0 0000-0000 : PCI Bus 0000:07
=C2=A0=C2=A0=C2=A0 0000-0000 : PCI Bus 0000:08
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0000-0000 : PCI Bus 0000:09
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0000-0000 : 0000:09:00.0

/proc/iomem
00000000-00000000 : Reserved
00000000-00000000 : System RAM
00000000-00000000 : Reserved
=C2=A0 00000000-00000000 : PCI Bus 0000:00
=C2=A0 00000000-00000000 : System ROM
00000000-00000000 : System RAM
00000000-00000000 : Reserved
00000000-00000000 : System RAM
00000000-00000000 : ACPI Non-volatile Storage
00000000-00000000 : System RAM
00000000-00000000 : Reserved
00000000-00000000 : System RAM
00000000-00000000 : System RAM
00000000-00000000 : System RAM
00000000-00000000 : System RAM
00000000-00000000 : System RAM
00000000-00000000 : Reserved
00000000-00000000 : System RAM
00000000-00000000 : Reserved
00000000-00000000 : System RAM
00000000-00000000 : Reserved
00000000-00000000 : System RAM
00000000-00000000 : Reserved
=C2=A0 00000000-00000000 : MSFT0101:00
=C2=A0=C2=A0=C2=A0 00000000-00000000 : MSFT0101:00
=C2=A0 00000000-00000000 : MSFT0101:00
=C2=A0=C2=A0=C2=A0 00000000-00000000 : MSFT0101:00
00000000-00000000 : ACPI Tables
00000000-00000000 : ACPI Non-volatile Storage
00000000-00000000 : Reserved
00000000-00000000 : System RAM
00000000-00000000 : Reserved
00000000-00000000 : PCI Bus 0000:00
=C2=A0 00000000-00000000 : PCI MMCONFIG 0000 [bus 00-7f]
=C2=A0=C2=A0=C2=A0 00000000-00000000 : pnp 00:00
=C2=A0 00000000-00000000 : PCI Bus 0000:0b
=C2=A0=C2=A0=C2=A0 00000000-00000000 : 0000:0b:00.3
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 00000000-00000000 : xhci-hcd
=C2=A0=C2=A0=C2=A0 00000000-00000000 : 0000:0b:00.1
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 00000000-00000000 : ccp
=C2=A0=C2=A0=C2=A0 00000000-00000000 : 0000:0b:00.4
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 00000000-00000000 : ICH HD audio
=C2=A0=C2=A0=C2=A0 00000000-00000000 : 0000:0b:00.1
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 00000000-00000000 : ccp
=C2=A0 00000000-00000000 : PCI Bus 0000:07
=C2=A0=C2=A0=C2=A0 00000000-00000000 : PCI Bus 0000:08
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 00000000-00000000 : PCI Bus 0000:09
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 00000000-00000000 : 0000:09:00.0
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 00000000-00000000 : 0000:09:00.0
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 00000000-00000000 : 0000:09:00.1
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 00000000-00000000 : =
ICH HD audio
=C2=A0=C2=A0=C2=A0 00000000-00000000 : 0000:07:00.0
=C2=A0 00000000-00000000 : PCI Bus 0000:02
=C2=A0=C2=A0=C2=A0 00000000-00000000 : PCI Bus 0000:03
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 00000000-00000000 : PCI Bus 0000:06
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 00000000-00000000 : 0000:06:00.0
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 00000000-00000000 : =
igc
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 00000000-00000000 : 0000:06:00.0
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 00000000-00000000 : =
igc
=C2=A0=C2=A0=C2=A0 00000000-00000000 : 0000:02:00.1
=C2=A0=C2=A0=C2=A0 00000000-00000000 : 0000:02:00.1
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 00000000-00000000 : ahci
=C2=A0=C2=A0=C2=A0 00000000-00000000 : 0000:02:00.0
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 00000000-00000000 : xhci-hcd
=C2=A0 00000000-00000000 : PCI Bus 0000:01
=C2=A0=C2=A0=C2=A0 00000000-00000000 : 0000:01:00.0
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 00000000-00000000 : nvme
00000000-00000000 : pnp 00:01
=C2=A0 00000000-00000000 : MSFT0101:00
00000000-00000000 : amd_iommu
00000000-00000000 : Reserved
00000000-00000000 : IOAPIC 0
00000000-00000000 : IOAPIC 1
00000000-00000000 : Reserved
=C2=A0 00000000-00000000 : pnp 00:04
00000000-00000000 : Reserved
=C2=A0 00000000-00000000 : AMDIF030:00
=C2=A0=C2=A0=C2=A0 00000000-00000000 : AMDIF030:00 AMDIF030:00
00000000-00000000 : Reserved
=C2=A0 00000000-00000000 : HPET 0
=C2=A0=C2=A0=C2=A0 00000000-00000000 : PNP0103:00
00000000-00000000 : Reserved
00000000-00000000 : Reserved
=C2=A0 00000000-00000000 : AMDI0030:00
=C2=A0=C2=A0=C2=A0 00000000-00000000 : AMDI0030:00 AMDI0030:00
00000000-00000000 : pnp 00:04
00000000-00000000 : Reserved
=C2=A0 00000000-00000000 : AMDI0010:03
=C2=A0=C2=A0=C2=A0 00000000-00000000 : AMDI0010:03 AMDI0010:03
00000000-00000000 : Reserved
00000000-00000000 : Local APIC
=C2=A0 00000000-00000000 : pnp 00:04
00000000-00000000 : pnp 00:04
00000000-00000000 : System RAM
=C2=A0 00000000-00000000 : Kernel code
=C2=A0 00000000-00000000 : Kernel rodata
=C2=A0 00000000-00000000 : Kernel data
=C2=A0 00000000-00000000 : Kernel bss
00000000-00000000 : Reserved
00000000-00000000 : PCI Bus 0000:00
=C2=A0 00000000-00000000 : PCI Bus 0000:07
=C2=A0=C2=A0=C2=A0 00000000-00000000 : PCI Bus 0000:08
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 00000000-00000000 : PCI Bus 0000:09
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 00000000-00000000 : 0000:09:00.0
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 00000000-00000000 : 0000:09:00.0
00000000-00000000 : 0000:09:00.0[8.5.] PCI information ('lspci -vvv' as roo=
t)
06:00.0 Ethernet controller: Intel Corporation Ethernet Controller I225-V (=
rev 02)
Subsystem: ASUSTeK Computer Inc. Ethernet Controller I225-V
Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Steppin=
g- SERR- FastB2B- DisINTx+
Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=3Dfast >TAbort- <TAbort- <=
MAbort- >SERR- <PERR- INTx-
Latency: 0, Cache Line Size: 64 bytes
Interrupt: pin A routed to IRQ 36
IOMMU group: 15
Region 0: Memory at fcc00000 (32-bit, non-prefetchable) [size=3D1M]
Region 3: Memory at fcd00000 (32-bit, non-prefetchable) [size=3D16K]
Capabilities: [40] Power Management version 3
Flags: PMEClk- DSI+ D1- D2- AuxCurrent=3D0mA PME(D0+,D1-,D2-,D3hot+,D3cold+=
)
Status: D0 NoSoftRst+ PME-Enable- DSel=3D0 DScale=3D1 PME-
Capabilities: [50] MSI: Enable- Count=3D1/1 Maskable+ 64bit+
Address: 0000000000000000=C2=A0 Data: 0000
Masking: 00000000=C2=A0 Pending: 00000000
Capabilities: [70] MSI-X: Enable+ Count=3D5 Masked-
Vector table: BAR=3D3 offset=3D00000000
PBA: BAR=3D3 offset=3D00002000
Capabilities: [a0] Express (v2) Endpoint, MSI 00
DevCap:=09MaxPayload 512 bytes, PhantFunc 0, Latency L0s <512ns, L1 <64us
ExtTag- AttnBtn- AttnInd- PwrInd- RBE+ FLReset+ SlotPowerLimit 0W
DevCtl:=09CorrErr+ NonFatalErr+ FatalErr+ UnsupReq+
RlxdOrd+ ExtTag- PhantFunc- AuxPwr- NoSnoop+ FLReset-
MaxPayload 512 bytes, MaxReadReq 512 bytes
DevSta:=09CorrErr- NonFatalErr- FatalErr- UnsupReq- AuxPwr+ TransPend-
LnkCap:=09Port #9, Speed 5GT/s, Width x1, ASPM L1, Exit Latency L1 <4us
ClockPM- Surprise- LLActRep- BwNot- ASPMOptComp+
LnkCtl:=09ASPM Disabled; RCB 64 bytes, Disabled- CommClk+
ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
LnkSta:=09Speed 5GT/s, Width x1
TrErr- Train- SlotClk+ DLActive- BWMgmt- ABWMgmt-
DevCap2: Completion Timeout: Range ABCD, TimeoutDis+ NROPrPrP- LTR+
10BitTagComp- 10BitTagReq- OBFF Not Supported, ExtFmt- EETLPPrefix-
EmergencyPowerReduction Not Supported, EmergencyPowerReductionInit-
FRS- TPHComp- ExtTPHComp-
AtomicOpsCap: 32bit- 64bit- 128bitCAS-
DevCtl2: Completion Timeout: 50us to 50ms, TimeoutDis- LTR- 10BitTagReq- OB=
FF Disabled,
AtomicOpsCtl: ReqEn-
LnkCtl2: Target Link Speed: 5GT/s, EnterCompliance- SpeedDis-
Transmit Margin: Normal Operating Range, EnterModifiedCompliance- Complianc=
eSOS-
Compliance Preset/De-emphasis: -6dB de-emphasis, 0dB preshoot
LnkSta2: Current De-emphasis Level: -6dB, EqualizationComplete- Equalizatio=
nPhase1-
EqualizationPhase2- EqualizationPhase3- LinkEqualizationRequest-
Retimer- 2Retimers- CrosslinkRes: unsupported
Capabilities: [100 v2] Advanced Error Reporting
UESta:=09DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP- =
ECRC- UnsupReq- ACSViol-
UEMsk:=09DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP- =
ECRC- UnsupReq- ACSViol-
UESvrt:=09DLP+ SDES+ TLP- FCP+ CmpltTO- CmpltAbrt- UnxCmplt- RxOF+ MalfTLP+=
 ECRC- UnsupReq- ACSViol-
CESta:=09RxErr- BadTLP- BadDLLP- Rollover- Timeout- AdvNonFatalErr-
CEMsk:=09RxErr- BadTLP- BadDLLP- Rollover- Timeout- AdvNonFatalErr+
AERCap:=09First Error Pointer: 00, ECRCGenCap+ ECRCGenEn- ECRCChkCap+ ECRCC=
hkEn-
MultHdrRecCap- MultHdrRecEn- TLPPfxPres- HdrLogCap-
HeaderLog: 00000000 00000000 00000000 00000000
Capabilities: [140 v1] Device Serial Number 24-4b-fe-ff-ff-5a-40-86
Capabilities: [1c0 v1] Latency Tolerance Reporting
Max snoop latency: 0ns
Max no snoop latency: 0ns
Capabilities: [1f0 v1] Precision Time Measurement
PTMCap: Requester:+ Responder:- Root:-
PTMClockGranularity: 4ns
PTMControl: Enabled:+ RootSelected:-
PTMEffectiveGranularity: Unknown
Capabilities: [1e0 v1] L1 PM Substates
L1SubCap: PCI-PM_L1.2- PCI-PM_L1.1+ ASPM_L1.2- ASPM_L1.1+ L1_PM_Substates+
L1SubCtl1: PCI-PM_L1.2- PCI-PM_L1.1- ASPM_L1.2- ASPM_L1.1-
L1SubCtl2:
Kernel driver in use: igc
Kernel modules: igc[8.6.] SCSI information (from /proc/scsi/scsi) Empty
[8.7.] Other information that might be relevant to the problem       (pleas=
e look in /proc and include all information that you       think to be rele=
vant):
Relevant logs after running `ethtool -s enp6s0 speed 1000`:
juil. 25 21:14:56 kkiotarch NetworkManager[459]: <info>=C2=A0 [1690312496.0=
963] device (enp6s0): carrier: link connected
juil. 25 21:14:56 kkiotarch kernel: igc 0000:06:00.0 enp6s0: NIC Link is Up=
 2500 Mbps Full Duplex, Flow Control: RX/TX

[X.] Other notes, patches, fixes, workarounds:
As a temporary solution, I have forced port speed to be set at 1000 Mbps vi=
a my router.

Apologies if this should have submitted to my distribution's bug report fir=
st (Arch Linux); on my current kernel version, there should be no patches a=
pplied here compared to upstream.

Thank you,
KKIOT

------=_Part_559274_2121196993.1690317496467
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF-8=
">
  </head>
  <body>
<div dir=3D"auto">[1.] One line summary of the problem: igc driver - Ethern=
et NIC speed not changing<br></div><div dir=3D"auto"><div>[2.] Full descrip=
tion of the problem/report:<br></div><div>Trying to change my I225-V's conn=
ection speed to 1000 Mbps down from 2500 Mbps&nbsp;as a workaround&nbsp;to =
disconnection issues, but changes won't apply, regardless of using NetworkM=
anager or ethtool.<br></div><div dir=3D"auto"><br></div><div dir=3D"auto">N=
etworkManager displays the changed values, but they don't seem to actually =
apply.<br></div><div dir=3D"auto"><br></div><div dir=3D"auto">Using ethtool=
 to change the speed to 1000 Mbps (`ethtool -s enp6s0 speed 1000`) also fai=
ls.<br></div><div dir=3D"auto">The interface gets brought down then up with=
 the same 2500 Mbps speed.<br></div><div dir=3D"auto"><br></div></div><div =
dir=3D"auto">[3.] Keywords (i.e., modules, networking, kernel): driver, net=
working, igc, intel</div><div dir=3D"auto">[4.] Kernel information<br></div=
><div dir=3D"auto"> [4.1.] Kernel version (from /proc/version):&nbsp;Linux =
version 6.4.6-arch1-1 (linux@archlinux) (gcc (GCC) 13.1.1 20230714, GNU ld =
(GNU Binutils) 2.40.0) #1 SMP PREEMPT_DYNAMIC Mon, 24 Jul 2023 20:19:38 +00=
00</div><div dir=3D"auto">[4.2.] Kernel .config file: Cannot obtain<br></di=
v><div dir=3D"auto">[5.] Most recent kernel version which did not have the =
bug: 6.2.9 or more recent?<br></div><div dir=3D"auto">[6.] Output of Oops..=
 message (if applicable) with symbolic information
     resolved (see Documentation/admin-guide/bug-hunting.rst) N/A<br></div>=
<div dir=3D"auto">[7.] A small shell script or example program which trigge=
rs the
     problem (if possible)<br></div><div dir=3D"auto"># ethtool -s [INTERFA=
CE] speed 1000<br></div><div dir=3D"auto">[8.] Environment<br></div><div di=
r=3D"auto">[8.1.] Software (add the output of the ver_linux script here) Ca=
nnot obtain<br></div><div dir=3D"auto"><div>[8.2.] Processor information (f=
rom /proc/cpuinfo):<br></div><div>processor=09: 0<br></div></div><div dir=
=3D"auto">vendor_id=09: AuthenticAMD<br></div><div dir=3D"auto">cpu family=
=09: 23<br></div><div dir=3D"auto">model=09=09: 113<br></div><div dir=3D"au=
to">model name=09: AMD Ryzen 5 3600 6-Core Processor<br></div><div dir=3D"a=
uto">stepping=09: 0<br></div><div dir=3D"auto">microcode=09: 0x8701030<br><=
/div><div dir=3D"auto">cpu MHz=09=09: 2473.153<br></div><div dir=3D"auto">c=
ache size=09: 512 KB<br></div><div dir=3D"auto">physical id=09: 0<br></div>=
<div dir=3D"auto">siblings=09: 12<br></div><div dir=3D"auto">core id=09=09:=
 0<br></div><div dir=3D"auto">cpu cores=09: 6<br></div><div dir=3D"auto">ap=
icid=09=09: 0<br></div><div dir=3D"auto">initial apicid=09: 0<br></div><div=
 dir=3D"auto">fpu=09=09: yes<br></div><div dir=3D"auto">fpu_exception=09: y=
es<br></div><div dir=3D"auto">cpuid level=09: 16<br></div><div dir=3D"auto"=
>wp=09=09: yes<br></div><div dir=3D"auto">flags=09=09: fpu vme de pse tsc m=
sr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush mmx fxsr sse ss=
e2 ht syscall nx mmxext fxsr_opt pdpe1gb rdtscp lm constant_tsc rep_good no=
pl nonstop_tsc cpuid extd_apicid aperfmperf rapl pni pclmulqdq monitor ssse=
3 fma cx16 sse4_1 sse4_2 x2apic movbe popcnt aes xsave avx f16c rdrand lahf=
_lm cmp_legacy svm extapic cr8_legacy abm sse4a misalignsse 3dnowprefetch o=
svw ibs skinit wdt tce topoext perfctr_core perfctr_nb bpext perfctr_llc mw=
aitx cpb cat_l3 cdp_l3 hw_pstate ssbd mba ibpb stibp vmmcall fsgsbase bmi1 =
avx2 smep bmi2 cqm rdt_a rdseed adx smap clflushopt clwb sha_ni xsaveopt xs=
avec xgetbv1 cqm_llc cqm_occup_llc cqm_mbm_total cqm_mbm_local clzero irper=
f xsaveerptr rdpru wbnoinvd arat npt lbrv svm_lock nrip_save tsc_scale vmcb=
_clean flushbyasid decodeassists pausefilter pfthreshold avic v_vmsave_vmlo=
ad vgif v_spec_ctrl rdpid overflow_recov succor smca sev sev_es<br></div><d=
iv dir=3D"auto">bugs=09=09: sysret_ss_attrs spectre_v1 spectre_v2 spec_stor=
e_bypass retbleed smt_rsb<br></div><div dir=3D"auto">bogomips=09: 7188.50<b=
r></div><div dir=3D"auto">TLB size=09: 3072 4K pages<br></div><div dir=3D"a=
uto">clflush size=09: 64<br></div><div dir=3D"auto">cache_alignment=09: 64<=
br></div><div dir=3D"auto">address sizes=09: 43 bits physical, 48 bits virt=
ual<br></div><div dir=3D"auto">power management: ts ttp tm hwpstate cpb eff=
_freq_ro [13] [14]<br></div><div dir=3D"auto"><br></div><div dir=3D"auto">(=
repeats 12x: 12 threads processor)</div><div dir=3D"auto"><div>[8.3.] Modul=
e information (from /proc/modules):<br></div><div>igc 188416 0 - Live 0x000=
0000000000000<br></div><div>[8.4.] Loaded driver and hardware information (=
/proc/ioports, /proc/iomem)<br></div><div dir=3D"auto">/proc/ioports<br></d=
iv><div dir=3D"auto">0000-0000 : PCI Bus 0000:00<br></div></div><div dir=3D=
"auto">&nbsp; 0000-0000 : dma1<br></div><div dir=3D"auto">&nbsp; 0000-0000 =
: pic1<br></div><div dir=3D"auto">&nbsp; 0000-0000 : timer0<br></div><div d=
ir=3D"auto">&nbsp; 0000-0000 : timer1<br></div><div dir=3D"auto">&nbsp; 000=
0-0000 : keyboard<br></div><div dir=3D"auto">&nbsp; 0000-0000 : PNP0800:00<=
br></div><div dir=3D"auto">&nbsp; 0000-0000 : keyboard<br></div><div dir=3D=
"auto">&nbsp; 0000-0000 : rtc0<br></div><div dir=3D"auto">&nbsp; 0000-0000 =
: dma page reg<br></div><div dir=3D"auto">&nbsp; 0000-0000 : pic2<br></div>=
<div dir=3D"auto">&nbsp; 0000-0000 : ACPI PM2_CNT_BLK<br></div><div dir=3D"=
auto">&nbsp; 0000-0000 : dma2<br></div><div dir=3D"auto">&nbsp; 0000-0000 :=
 fpu<br></div><div dir=3D"auto">&nbsp; 0000-0000 : pnp 00:03<br></div><div =
dir=3D"auto">&nbsp; 0000-0000 : pnp 00:03<br></div><div dir=3D"auto">0000-0=
000 : PCI Bus 0000:00<br></div><div dir=3D"auto">0000-0000 : PCI Bus 0000:0=
0<br></div><div dir=3D"auto">&nbsp; 0000-0000 : serial<br></div><div dir=3D=
"auto">&nbsp; 0000-0000 : pnp 00:04<br></div><div dir=3D"auto">&nbsp; 0000-=
0000 : pnp 00:04<br></div><div dir=3D"auto">&nbsp; 0000-0000 : pnp 00:04<br=
></div><div dir=3D"auto">&nbsp; 0000-0000 : pnp 00:04<br></div><div dir=3D"=
auto">&nbsp;&nbsp;&nbsp; 0000-0000 : ACPI PM1a_EVT_BLK<br></div><div dir=3D=
"auto">&nbsp;&nbsp;&nbsp; 0000-0000 : ACPI PM1a_CNT_BLK<br></div><div dir=
=3D"auto">&nbsp;&nbsp;&nbsp; 0000-0000 : ACPI PM_TMR<br></div><div dir=3D"a=
uto">&nbsp;&nbsp;&nbsp; 0000-0000 : ACPI GPE0_BLK<br></div><div dir=3D"auto=
">&nbsp; 0000-0000 : pnp 00:04<br></div><div dir=3D"auto">&nbsp; 0000-0000 =
: pnp 00:04<br></div><div dir=3D"auto">&nbsp; 0000-0000 : pnp 00:04<br></di=
v><div dir=3D"auto">&nbsp;&nbsp;&nbsp; 0000-0000 : piix4_smbus<br></div><di=
v dir=3D"auto">&nbsp; 0000-0000 : pnp 00:04<br></div><div dir=3D"auto">&nbs=
p;&nbsp;&nbsp; 0000-0000 : piix4_smbus<br></div><div dir=3D"auto">&nbsp; 00=
00-0000 : pnp 00:04<br></div><div dir=3D"auto">&nbsp; 0000-0000 : pnp 00:04=
<br></div><div dir=3D"auto">&nbsp; 0000-0000 : pnp 00:04<br></div><div dir=
=3D"auto">&nbsp; 0000-0000 : pnp 00:04<br></div><div dir=3D"auto">&nbsp; 00=
00-0000 : pnp 00:04<br></div><div dir=3D"auto">&nbsp; 0000-0000 : pnp 00:04=
<br></div><div dir=3D"auto">&nbsp; 0000-0000 : pnp 00:04<br></div><div dir=
=3D"auto">0000-0000 : PCI conf1<br></div><div dir=3D"auto">0000-0000 : PCI =
Bus 0000:00<br></div><div dir=3D"auto">&nbsp; 0000-0000 : PCI Bus 0000:07<b=
r></div><div dir=3D"auto">&nbsp;&nbsp;&nbsp; 0000-0000 : PCI Bus 0000:08<br=
></div><div dir=3D"auto">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0000-0000 : PCI Bus=
 0000:09<br></div><div dir=3D"auto">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; 0000-0000 : 0000:09:00.0<br></div><div dir=3D"auto"><br></div><div dir=
=3D"auto">/proc/iomem<br></div><div dir=3D"auto">00000000-00000000 : Reserv=
ed<br></div><div dir=3D"auto">00000000-00000000 : System RAM<br></div><div =
dir=3D"auto">00000000-00000000 : Reserved<br></div><div dir=3D"auto">&nbsp;=
 00000000-00000000 : PCI Bus 0000:00<br></div><div dir=3D"auto">&nbsp; 0000=
0000-00000000 : System ROM<br></div><div dir=3D"auto">00000000-00000000 : S=
ystem RAM<br></div><div dir=3D"auto">00000000-00000000 : Reserved<br></div>=
<div dir=3D"auto">00000000-00000000 : System RAM<br></div><div dir=3D"auto"=
>00000000-00000000 : ACPI Non-volatile Storage<br></div><div dir=3D"auto">0=
0000000-00000000 : System RAM<br></div><div dir=3D"auto">00000000-00000000 =
: Reserved<br></div><div dir=3D"auto">00000000-00000000 : System RAM<br></d=
iv><div dir=3D"auto">00000000-00000000 : System RAM<br></div><div dir=3D"au=
to">00000000-00000000 : System RAM<br></div><div dir=3D"auto">00000000-0000=
0000 : System RAM<br></div><div dir=3D"auto">00000000-00000000 : System RAM=
<br></div><div dir=3D"auto">00000000-00000000 : Reserved<br></div><div dir=
=3D"auto">00000000-00000000 : System RAM<br></div><div dir=3D"auto">0000000=
0-00000000 : Reserved<br></div><div dir=3D"auto">00000000-00000000 : System=
 RAM<br></div><div dir=3D"auto">00000000-00000000 : Reserved<br></div><div =
dir=3D"auto">00000000-00000000 : System RAM<br></div><div dir=3D"auto">0000=
0000-00000000 : Reserved<br></div><div dir=3D"auto">&nbsp; 00000000-0000000=
0 : MSFT0101:00<br></div><div dir=3D"auto">&nbsp;&nbsp;&nbsp; 00000000-0000=
0000 : MSFT0101:00<br></div><div dir=3D"auto">&nbsp; 00000000-00000000 : MS=
FT0101:00<br></div><div dir=3D"auto">&nbsp;&nbsp;&nbsp; 00000000-00000000 :=
 MSFT0101:00<br></div><div dir=3D"auto">00000000-00000000 : ACPI Tables<br>=
</div><div dir=3D"auto">00000000-00000000 : ACPI Non-volatile Storage<br></=
div><div dir=3D"auto">00000000-00000000 : Reserved<br></div><div dir=3D"aut=
o">00000000-00000000 : System RAM<br></div><div dir=3D"auto">00000000-00000=
000 : Reserved<br></div><div dir=3D"auto">00000000-00000000 : PCI Bus 0000:=
00<br></div><div dir=3D"auto">&nbsp; 00000000-00000000 : PCI MMCONFIG 0000 =
[bus 00-7f]<br></div><div dir=3D"auto">&nbsp;&nbsp;&nbsp; 00000000-00000000=
 : pnp 00:00<br></div><div dir=3D"auto">&nbsp; 00000000-00000000 : PCI Bus =
0000:0b<br></div><div dir=3D"auto">&nbsp;&nbsp;&nbsp; 00000000-00000000 : 0=
000:0b:00.3<br></div><div dir=3D"auto">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 00000=
000-00000000 : xhci-hcd<br></div><div dir=3D"auto">&nbsp;&nbsp;&nbsp; 00000=
000-00000000 : 0000:0b:00.1<br></div><div dir=3D"auto">&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; 00000000-00000000 : ccp<br></div><div dir=3D"auto">&nbsp;&nbsp;&=
nbsp; 00000000-00000000 : 0000:0b:00.4<br></div><div dir=3D"auto">&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; 00000000-00000000 : ICH HD audio<br></div><div dir=3D=
"auto">&nbsp;&nbsp;&nbsp; 00000000-00000000 : 0000:0b:00.1<br></div><div di=
r=3D"auto">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 00000000-00000000 : ccp<br></div>=
<div dir=3D"auto">&nbsp; 00000000-00000000 : PCI Bus 0000:07<br></div><div =
dir=3D"auto">&nbsp;&nbsp;&nbsp; 00000000-00000000 : PCI Bus 0000:08<br></di=
v><div dir=3D"auto">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 00000000-00000000 : PCI =
Bus 0000:09<br></div><div dir=3D"auto">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; 00000000-00000000 : 0000:09:00.0<br></div><div dir=3D"auto">&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 00000000-00000000 : 0000:09:00.0<br></di=
v><div dir=3D"auto">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 00000000-000=
00000 : 0000:09:00.1<br></div><div dir=3D"auto">&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; 00000000-00000000 : ICH HD audio<br></div><div =
dir=3D"auto">&nbsp;&nbsp;&nbsp; 00000000-00000000 : 0000:07:00.0<br></div><=
div dir=3D"auto">&nbsp; 00000000-00000000 : PCI Bus 0000:02<br></div><div d=
ir=3D"auto">&nbsp;&nbsp;&nbsp; 00000000-00000000 : PCI Bus 0000:03<br></div=
><div dir=3D"auto">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 00000000-00000000 : PCI B=
us 0000:06<br></div><div dir=3D"auto">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; 00000000-00000000 : 0000:06:00.0<br></div><div dir=3D"auto">&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 00000000-00000000 : igc<br></=
div><div dir=3D"auto">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 00000000-0=
0000000 : 0000:06:00.0<br></div><div dir=3D"auto">&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 00000000-00000000 : igc<br></div><div dir=3D"=
auto">&nbsp;&nbsp;&nbsp; 00000000-00000000 : 0000:02:00.1<br></div><div dir=
=3D"auto">&nbsp;&nbsp;&nbsp; 00000000-00000000 : 0000:02:00.1<br></div><div=
 dir=3D"auto">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 00000000-00000000 : ahci<br></=
div><div dir=3D"auto">&nbsp;&nbsp;&nbsp; 00000000-00000000 : 0000:02:00.0<b=
r></div><div dir=3D"auto">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 00000000-00000000 =
: xhci-hcd<br></div><div dir=3D"auto">&nbsp; 00000000-00000000 : PCI Bus 00=
00:01<br></div><div dir=3D"auto">&nbsp;&nbsp;&nbsp; 00000000-00000000 : 000=
0:01:00.0<br></div><div dir=3D"auto">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0000000=
0-00000000 : nvme<br></div><div dir=3D"auto">00000000-00000000 : pnp 00:01<=
br></div><div dir=3D"auto">&nbsp; 00000000-00000000 : MSFT0101:00<br></div>=
<div dir=3D"auto">00000000-00000000 : amd_iommu<br></div><div dir=3D"auto">=
00000000-00000000 : Reserved<br></div><div dir=3D"auto">00000000-00000000 :=
 IOAPIC 0<br></div><div dir=3D"auto">00000000-00000000 : IOAPIC 1<br></div>=
<div dir=3D"auto">00000000-00000000 : Reserved<br></div><div dir=3D"auto">&=
nbsp; 00000000-00000000 : pnp 00:04<br></div><div dir=3D"auto">00000000-000=
00000 : Reserved<br></div><div dir=3D"auto">&nbsp; 00000000-00000000 : AMDI=
F030:00<br></div><div dir=3D"auto">&nbsp;&nbsp;&nbsp; 00000000-00000000 : A=
MDIF030:00 AMDIF030:00<br></div><div dir=3D"auto">00000000-00000000 : Reser=
ved<br></div><div dir=3D"auto">&nbsp; 00000000-00000000 : HPET 0<br></div><=
div dir=3D"auto">&nbsp;&nbsp;&nbsp; 00000000-00000000 : PNP0103:00<br></div=
><div dir=3D"auto">00000000-00000000 : Reserved<br></div><div dir=3D"auto">=
00000000-00000000 : Reserved<br></div><div dir=3D"auto">&nbsp; 00000000-000=
00000 : AMDI0030:00<br></div><div dir=3D"auto">&nbsp;&nbsp;&nbsp; 00000000-=
00000000 : AMDI0030:00 AMDI0030:00<br></div><div dir=3D"auto">00000000-0000=
0000 : pnp 00:04<br></div><div dir=3D"auto">00000000-00000000 : Reserved<br=
></div><div dir=3D"auto">&nbsp; 00000000-00000000 : AMDI0010:03<br></div><d=
iv dir=3D"auto">&nbsp;&nbsp;&nbsp; 00000000-00000000 : AMDI0010:03 AMDI0010=
:03<br></div><div dir=3D"auto">00000000-00000000 : Reserved<br></div><div d=
ir=3D"auto">00000000-00000000 : Local APIC<br></div><div dir=3D"auto">&nbsp=
; 00000000-00000000 : pnp 00:04<br></div><div dir=3D"auto">00000000-0000000=
0 : pnp 00:04<br></div><div dir=3D"auto">00000000-00000000 : System RAM<br>=
</div><div dir=3D"auto">&nbsp; 00000000-00000000 : Kernel code<br></div><di=
v dir=3D"auto">&nbsp; 00000000-00000000 : Kernel rodata<br></div><div dir=
=3D"auto">&nbsp; 00000000-00000000 : Kernel data<br></div><div dir=3D"auto"=
>&nbsp; 00000000-00000000 : Kernel bss<br></div><div dir=3D"auto">00000000-=
00000000 : Reserved<br></div><div dir=3D"auto">00000000-00000000 : PCI Bus =
0000:00<br></div><div dir=3D"auto">&nbsp; 00000000-00000000 : PCI Bus 0000:=
07<br></div><div dir=3D"auto">&nbsp;&nbsp;&nbsp; 00000000-00000000 : PCI Bu=
s 0000:08<br></div><div dir=3D"auto">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0000000=
0-00000000 : PCI Bus 0000:09<br></div><div dir=3D"auto">&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; 00000000-00000000 : 0000:09:00.0<br></div><div dir=
=3D"auto">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 00000000-00000000 : 00=
00:09:00.0<br></div><div dir=3D"auto">00000000-00000000 : 0000:09:00.0</div=
><div dir=3D"auto"><div>[8.5.] PCI information ('lspci -vvv' as root)<br></=
div><div>06:00.0 Ethernet controller: Intel Corporation Ethernet Controller=
 I225-V (rev 02)<br></div></div><div dir=3D"auto">Subsystem: ASUSTeK Comput=
er Inc. Ethernet Controller I225-V<br></div><div dir=3D"auto">Control: I/O-=
 Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- Fast=
B2B- DisINTx+<br></div><div dir=3D"auto">Status: Cap+ 66MHz- UDF- FastB2B- =
ParErr- DEVSEL=3Dfast &gt;TAbort- &lt;TAbort- &lt;MAbort- &gt;SERR- &lt;PER=
R- INTx-<br></div><div dir=3D"auto">Latency: 0, Cache Line Size: 64 bytes<b=
r></div><div dir=3D"auto">Interrupt: pin A routed to IRQ 36<br></div><div d=
ir=3D"auto">IOMMU group: 15<br></div><div dir=3D"auto">Region 0: Memory at =
fcc00000 (32-bit, non-prefetchable) [size=3D1M]<br></div><div dir=3D"auto">=
Region 3: Memory at fcd00000 (32-bit, non-prefetchable) [size=3D16K]<br></d=
iv><div dir=3D"auto">Capabilities: [40] Power Management version 3<br></div=
><div dir=3D"auto">Flags: PMEClk- DSI+ D1- D2- AuxCurrent=3D0mA PME(D0+,D1-=
,D2-,D3hot+,D3cold+)<br></div><div dir=3D"auto">Status: D0 NoSoftRst+ PME-E=
nable- DSel=3D0 DScale=3D1 PME-<br></div><div dir=3D"auto">Capabilities: [5=
0] MSI: Enable- Count=3D1/1 Maskable+ 64bit+<br></div><div dir=3D"auto">Add=
ress: 0000000000000000&nbsp; Data: 0000<br></div><div dir=3D"auto">Masking:=
 00000000&nbsp; Pending: 00000000<br></div><div dir=3D"auto">Capabilities: =
[70] MSI-X: Enable+ Count=3D5 Masked-<br></div><div dir=3D"auto">Vector tab=
le: BAR=3D3 offset=3D00000000<br></div><div dir=3D"auto">PBA: BAR=3D3 offse=
t=3D00002000<br></div><div dir=3D"auto">Capabilities: [a0] Express (v2) End=
point, MSI 00<br></div><div dir=3D"auto">DevCap:=09MaxPayload 512 bytes, Ph=
antFunc 0, Latency L0s &lt;512ns, L1 &lt;64us<br></div><div dir=3D"auto">Ex=
tTag- AttnBtn- AttnInd- PwrInd- RBE+ FLReset+ SlotPowerLimit 0W<br></div><d=
iv dir=3D"auto">DevCtl:=09CorrErr+ NonFatalErr+ FatalErr+ UnsupReq+<br></di=
v><div dir=3D"auto">RlxdOrd+ ExtTag- PhantFunc- AuxPwr- NoSnoop+ FLReset-<b=
r></div><div dir=3D"auto">MaxPayload 512 bytes, MaxReadReq 512 bytes<br></d=
iv><div dir=3D"auto">DevSta:=09CorrErr- NonFatalErr- FatalErr- UnsupReq- Au=
xPwr+ TransPend-<br></div><div dir=3D"auto">LnkCap:=09Port #9, Speed 5GT/s,=
 Width x1, ASPM L1, Exit Latency L1 &lt;4us<br></div><div dir=3D"auto">Cloc=
kPM- Surprise- LLActRep- BwNot- ASPMOptComp+<br></div><div dir=3D"auto">Lnk=
Ctl:=09ASPM Disabled; RCB 64 bytes, Disabled- CommClk+<br></div><div dir=3D=
"auto">ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-<br></div><div dir=3D"=
auto">LnkSta:=09Speed 5GT/s, Width x1<br></div><div dir=3D"auto">TrErr- Tra=
in- SlotClk+ DLActive- BWMgmt- ABWMgmt-<br></div><div dir=3D"auto">DevCap2:=
 Completion Timeout: Range ABCD, TimeoutDis+ NROPrPrP- LTR+<br></div><div d=
ir=3D"auto">10BitTagComp- 10BitTagReq- OBFF Not Supported, ExtFmt- EETLPPre=
fix-<br></div><div dir=3D"auto">EmergencyPowerReduction Not Supported, Emer=
gencyPowerReductionInit-<br></div><div dir=3D"auto">FRS- TPHComp- ExtTPHCom=
p-<br></div><div dir=3D"auto">AtomicOpsCap: 32bit- 64bit- 128bitCAS-<br></d=
iv><div dir=3D"auto">DevCtl2: Completion Timeout: 50us to 50ms, TimeoutDis-=
 LTR- 10BitTagReq- OBFF Disabled,<br></div><div dir=3D"auto">AtomicOpsCtl: =
ReqEn-<br></div><div dir=3D"auto">LnkCtl2: Target Link Speed: 5GT/s, EnterC=
ompliance- SpeedDis-<br></div><div dir=3D"auto">Transmit Margin: Normal Ope=
rating Range, EnterModifiedCompliance- ComplianceSOS-<br></div><div dir=3D"=
auto">Compliance Preset/De-emphasis: -6dB de-emphasis, 0dB preshoot<br></di=
v><div dir=3D"auto">LnkSta2: Current De-emphasis Level: -6dB, EqualizationC=
omplete- EqualizationPhase1-<br></div><div dir=3D"auto">EqualizationPhase2-=
 EqualizationPhase3- LinkEqualizationRequest-<br></div><div dir=3D"auto">Re=
timer- 2Retimers- CrosslinkRes: unsupported<br></div><div dir=3D"auto">Capa=
bilities: [100 v2] Advanced Error Reporting<br></div><div dir=3D"auto">UESt=
a:=09DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP- ECRC=
- UnsupReq- ACSViol-<br></div><div dir=3D"auto">UEMsk:=09DLP- SDES- TLP- FC=
P- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP- ECRC- UnsupReq- ACSViol-<br=
></div><div dir=3D"auto">UESvrt:=09DLP+ SDES+ TLP- FCP+ CmpltTO- CmpltAbrt-=
 UnxCmplt- RxOF+ MalfTLP+ ECRC- UnsupReq- ACSViol-<br></div><div dir=3D"aut=
o">CESta:=09RxErr- BadTLP- BadDLLP- Rollover- Timeout- AdvNonFatalErr-<br><=
/div><div dir=3D"auto">CEMsk:=09RxErr- BadTLP- BadDLLP- Rollover- Timeout- =
AdvNonFatalErr+<br></div><div dir=3D"auto">AERCap:=09First Error Pointer: 0=
0, ECRCGenCap+ ECRCGenEn- ECRCChkCap+ ECRCChkEn-<br></div><div dir=3D"auto"=
>MultHdrRecCap- MultHdrRecEn- TLPPfxPres- HdrLogCap-<br></div><div dir=3D"a=
uto">HeaderLog: 00000000 00000000 00000000 00000000<br></div><div dir=3D"au=
to">Capabilities: [140 v1] Device Serial Number 24-4b-fe-ff-ff-5a-40-86<br>=
</div><div dir=3D"auto">Capabilities: [1c0 v1] Latency Tolerance Reporting<=
br></div><div dir=3D"auto">Max snoop latency: 0ns<br></div><div dir=3D"auto=
">Max no snoop latency: 0ns<br></div><div dir=3D"auto">Capabilities: [1f0 v=
1] Precision Time Measurement<br></div><div dir=3D"auto">PTMCap: Requester:=
+ Responder:- Root:-<br></div><div dir=3D"auto">PTMClockGranularity: 4ns<br=
></div><div dir=3D"auto">PTMControl: Enabled:+ RootSelected:-<br></div><div=
 dir=3D"auto">PTMEffectiveGranularity: Unknown<br></div><div dir=3D"auto">C=
apabilities: [1e0 v1] L1 PM Substates<br></div><div dir=3D"auto">L1SubCap: =
PCI-PM_L1.2- PCI-PM_L1.1+ ASPM_L1.2- ASPM_L1.1+ L1_PM_Substates+<br></div><=
div dir=3D"auto">L1SubCtl1: PCI-PM_L1.2- PCI-PM_L1.1- ASPM_L1.2- ASPM_L1.1-=
<br></div><div dir=3D"auto">L1SubCtl2:<br></div><div dir=3D"auto">Kernel dr=
iver in use: igc<br></div><div dir=3D"auto">Kernel modules: igc</div><div d=
ir=3D"auto">[8.6.] SCSI information (from /proc/scsi/scsi) Empty<br></div><=
div dir=3D"auto"><div>[8.7.] Other information that might be relevant to th=
e problem
       (please look in /proc and include all information that you
       think to be relevant):<br></div><div dir=3D"auto">Relevant logs afte=
r running `ethtool -s enp6s0 speed 1000`:</div><div dir=3D"auto"><br></div>=
<div>juil. 25 21:14:56 kkiotarch NetworkManager[459]: &lt;info&gt;&nbsp; [1=
690312496.0963] device (enp6s0): carrier: link connected<br></div></div><di=
v dir=3D"auto"><div dir=3D"auto">juil. 25 21:14:56 kkiotarch kernel: igc 00=
00:06:00.0 enp6s0: NIC Link is Up 2500 Mbps Full Duplex, Flow Control: RX/T=
X<br></div><div dir=3D"auto"><br></div></div><div dir=3D"auto">[X.] Other n=
otes, patches, fixes, workarounds:<br></div><div dir=3D"auto">As a temporar=
y solution, I have forced port speed to be set at 1000 Mbps via my router.<=
br></div><div dir=3D"auto"><br>Apologies if this should have submitted to m=
y distribution's bug report first (Arch Linux); on my current kernel versio=
n, there should be no patches applied here compared to upstream.<br></div><=
div dir=3D"auto"><br></div><div dir=3D"auto">Thank you,<br></div><div dir=
=3D"auto">KKIOT<br></div>  </body>
</html>

------=_Part_559274_2121196993.1690317496467--


--===============2273269823642611229==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============2273269823642611229==--


