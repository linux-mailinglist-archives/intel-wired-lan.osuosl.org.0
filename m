Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EEEE4831F1F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jan 2024 19:35:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8D1736F5DE;
	Thu, 18 Jan 2024 18:35:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8D1736F5DE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705602932;
	bh=oM2Dauew9AoZMg8TaJO6xlO9gobs0+mj3wbcjF4din4=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=I3wmXhZ9zIVjrmWjrU/2H8e4gfUXxSGGmQLnB2G1qidqXiF4NDK7MwGTzwvCNz7oG
	 UrERBflAakUWOCk9t5TaY6mVn2m7auvTMZeM7nNcX72sL3EooRj9NXsFaI2naespXC
	 Eb3Y0V6/llsSANHcuvIxgOGYQ4eqbyeXIzy7MR7DbjxPzdnjNqZPE/fupUtryzYavy
	 Uxe+3z34zy4YpducbHmUPKi5srBWjMvBV597A9YGVJiMBt5F1CBkIHRD/emK9zlRnP
	 GHLl/8xD7L7umF/9D9lKC77No0qsIQosGa9QXh3LXijjN7Qk3ZzdTzOtEoj0MCAcc4
	 FPDCAOW8Atkyg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CDihdnB-pBMc; Thu, 18 Jan 2024 18:35:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 584BD6F5DA;
	Thu, 18 Jan 2024 18:35:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 584BD6F5DA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 08F571BF2FF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jan 2024 18:25:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 989F9813DD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jan 2024 18:25:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 989F9813DD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3iRDZo-WLpUP for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Jan 2024 18:25:21 +0000 (UTC)
X-Greylist: delayed 340 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 18 Jan 2024 18:25:21 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 46B8B83BD1
Received: from smtp-out.mu.org (smtp-out.mu.org [192.203.228.253])
 by smtp1.osuosl.org (Postfix) with ESMTP id 46B8B83BD1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jan 2024 18:25:21 +0000 (UTC)
Received: from mail-il1-f172.google.com (mail-il1-f172.google.com
 [209.85.166.172])
 by elvis.mu.org (Postfix) with ESMTPSA id E9257103A855
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jan 2024 10:19:40 -0800 (PST)
Received: by mail-il1-f172.google.com with SMTP id
 e9e14a558f8ab-36074b286d6so63686025ab.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jan 2024 10:19:40 -0800 (PST)
X-Gm-Message-State: AOJu0YzOX+OlXQ5m/J0bWCyHxsoKumnbsR2H6DAsyC5UFwfyD1/Rprci
 UCxr3Q9lXv4ApZSj2HTEGCJsYtt+fOuD4qVDj9YTkfWyiBSbvpJ1AiwZHV5bNqAO8iVWU7LusjK
 eRR0hhvOYF3ngeoMYar1WTpvjF00=
X-Google-Smtp-Source: AGHT+IFBst30DzDAUnsFRFhXs1CbKZocPFbNwWboXP3hwDWgaNtL+azLDn1pvzF+Y/Vqe2oIGYw7hNPIQ3gO8ln8kyk=
X-Received: by 2002:a92:d74c:0:b0:361:a0ba:ad09 with SMTP id
 e12-20020a92d74c000000b00361a0baad09mr795137ilq.12.1705601979938; Thu, 18 Jan
 2024 10:19:39 -0800 (PST)
MIME-Version: 1.0
From: Paul Saab <ps@mu.org>
Date: Thu, 18 Jan 2024 10:19:28 -0800
X-Gmail-Original-Message-ID: <CAMYpurzickzNKeOzkHhPitystoYS7JdB_6VHD+Cd1vco7dVP0A@mail.gmail.com>
Message-ID: <CAMYpurzickzNKeOzkHhPitystoYS7JdB_6VHD+Cd1vco7dVP0A@mail.gmail.com>
To: intel-wired-lan@lists.osuosl.org
Content-Type: multipart/alternative; boundary="000000000000247ebb060f3c6866"
X-Mailman-Approved-At: Thu, 18 Jan 2024 18:35:25 +0000
Subject: [Intel-wired-lan] ICE sriov reboot and other errors
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
Cc: "przemyslaw.kitszel@intel.com" <przemyslaw.kitszel@intel.com>,
 lukasz.czapnik@intel.com, anthony.l.nguyen@intel.com,
 jesse.brandeburg@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--000000000000247ebb060f3c6866
Content-Type: text/plain; charset="UTF-8"

Hello,

I'm migrating some systems that I used to use the 700 series network
adapters to the 800 series and I am noticing quite a bit of issues
regarding sr-iov.  i'm using between 8 and 128 VFs, depending on the
machine.

I am currently using ubuntu 22.04.3 with linux-image-generic-hwe-22.04
    6.5.0.14.14~22.04.7 and debian testing with 6.5.0-4-amd6

NVM is 4.30 on the debian testing machine and 4.20 on the ubuntu system.
I see the same issues with 4.40 so I haven't bothered to upgrade (yet).

I see this on pretty much all versions and similar issues with the out of
tree driver.  There are two different types of errors and they are both
below.

The first is when link happens to flap on a port (switch reboot etc) I see
the following error:
[  831.658768]
================================================================================
[  831.668264] UBSAN: array-index-out-of-bounds in
/build/linux-hwe-6.5-q7NZ0T/linux-hwe-6.5-6.5.0/drivers/net/ethernet/intel/ice/ice_virtchnl.c:2020:45
[  831.683305] workqueue: ice_service_task [ice] hogged CPU for >10000us 4
times, consider switching to WQ_UNBOUND
[  831.683417] index 2 is out of range for type 'virtchnl_ether_addr [1]'
[  831.690770] CPU: 13 PID: 2041 Comm: kworker/13:0 Not tainted
6.5.0-14-generic #14~22.04.1-Ubuntu
[  831.690774] Hardware name: Supermicro
SYS-110D-8C-FRAN8TP/X12SDV-8C-SPT8F, BIOS 1.5 10/26/2023
[  831.690777] Workqueue: ice ice_service_task [ice]
[  831.690815] Call Trace:
[  831.690817]  <TASK>
[  831.690819]  dump_stack_lvl+0x48/0x70
[  831.690826]  dump_stack+0x10/0x20
[  831.690829]  __ubsan_handle_out_of_bounds+0xc6/0x110
[  831.690835]  ? __pfx_ice_vc_del_mac_addr+0x10/0x10 [ice]
[  831.690891]  ice_vc_handle_mac_addr_msg+0x1c6/0x1d0 [ice]
[  831.690937]  ice_vc_del_mac_addr_msg+0x10/0x20 [ice]
[  831.690978]  ice_vc_process_vf_msg+0x5a4/0x7f0 [ice]
[  831.691020]  __ice_clean_ctrlq+0x1cf/0x4f0 [ice]
[  831.691056]  ice_service_task+0x2cc/0x4a0 [ice]
[  831.691092]  process_one_work+0x23d/0x450
[  831.691096]  worker_thread+0x50/0x3f0
[  831.691100]  ? __pfx_worker_thread+0x10/0x10
[  831.691103]  kthread+0xef/0x120
[  831.691107]  ? __pfx_kthread+0x10/0x10
[  831.691111]  ret_from_fork+0x44/0x70
[  831.691116]  ? __pfx_kthread+0x10/0x10
[  831.691119]  ret_from_fork_asm+0x1b/0x30
[  831.691123]  </TASK>
[  831.691125]
================================================================================

The second issue is on reboot:
[2771637.176795] ------------[ cut here ]------------
[2771637.187192] WARNING: CPU: 12 PID: 1 at kernel/irq/irqdomain.c:284
irq_domain_remove+0xd5/0x100
[2771637.201762] Modules linked in: irdma ice xt_nat nvidia_uvm(POE)
rpcsec_gss_krb5 auth_rpcgss nfsv4 dns_resolver nfs lockd grace sunrpc
fscache netfs xt_conntrack nft_chain_nat xt_MASQUERADE nf_nat
nf_conntrack_netlink nf_conntrack nf_defrag_ipv6 nf_defrag_ipv4 xfrm_user
xfrm_algo xt_addrtype nft_compat br_netfilter bridge stp llc tun nf_tables
libcrc32c nfnetlink nvme_fabrics overlay binfmt_misc sch_fq tcp_bbr
nvidia_drm(POE) intel_rapl_msr intel_rapl_common amd64_edac edac_mce_amd
nvidia_modeset(POE) kvm_amd ipmi_ssif zfs(POE) kvm snd_hda_codec_hdmi
zunicode(POE) irqbypass zzstd(OE) ghash_clmulni_intel snd_hda_intel
sha512_ssse3 snd_intel_dspcfg snd_intel_sdw_acpi sha512_generic zlua(OE)
nls_ascii snd_hda_codec nls_cp437 zavl(POE) vfat snd_hda_core icp(POE)
snd_hwdep fat acpi_ipmi aesni_intel snd_pcm i40e zcommon(POE) crypto_simd
video snd_timer ib_uverbs znvpair(POE) snd wmi cryptd drm_shmem_helper
drm_kms_helper sp5100_tco rapl acpi_cpufreq pcspkr ib_core soundcore
i2c_algo_bit ccp joydev evdev ipmi_msghandler
[2771637.201863]  button k10temp watchdog spl(OE) sg nvidia(POE) loop fuse
efi_pstore drm dm_mod configfs efivarfs x_tables autofs4 ext4 crc16 mbcache
jbd2 crc32c_generic hid_generic rndis_host usbhid cdc_ether iavf usbnet ses
hid sd_mod mii enclosure nvme nvme_core ahci xhci_pci libahci t10_pi
mpt3sas xhci_hcd crc32_pclmul raid_class crc64_rocksoft libata crc32c_intel
scsi_transport_sas crc64 tg3 crc_t10dif crct10dif_generic usbcore scsi_mod
crct10dif_pclmul libphy gnss crct10dif_common usb_common scsi_common
i2c_piix4 [last unloaded: ipmi_si]
[2771637.445556] CPU: 12 PID: 1 Comm: systemd-shutdow Tainted: P        W
 OE      6.5.0-4-amd64 #1  Debian 6.5.10-1
[2771637.465165] Hardware name: Supermicro Super Server/H12SSL-i, BIOS 2.1
06/02/2021
[2771637.482150] RIP: 0010:irq_domain_remove+0xd5/0x100
[2771637.496525] Code: 21 89 e8 3e c9 52 00 eb b9 48 8b 7b 10 e8 83 a1 1c
00 48 89 df 5b e9 7a a1 1c 00 66 90 48 c7 05 6d a4 f8 02 00 00 00 00 eb 8a
<0f> 0b e9 4b ff ff ff 31 d2 48 c7 c6 38 97 89 88 48 c7 c7 68 95 21
[2771637.535041] RSP: 0018:ffffb7618005bb70 EFLAGS: 00010282
[2771637.550303] RAX: 0000000000000000 RBX: ffff962e285afa40 RCX:
ffff962e285ae0e8
[2771637.567618] RDX: ffff95c280391980 RSI: 0000000000000000 RDI:
ffffffff890d2ae0
[2771637.584962] RBP: ffff9636607740d0 R08: ffffffff88834fa5 R09:
0000000000000068
[2771637.602347] R10: 0000000000000000 R11: ffffb7618005bbb8 R12:
ffff95c46a9bd9c0
[2771637.619793] R13: ffff9636607740d0 R14: ffff96366077436c R15:
00000000fee1dead
[2771637.637280] FS:  00007f65ef77d500(0000) GS:ffff963fced00000(0000)
knlGS:0000000000000000
[2771637.655883] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[2771637.672165] CR2: 00007f65ef481edc CR3: 00000002ea336000 CR4:
0000000000350ee0
[2771637.689947] Call Trace:
[2771637.702993]  <TASK>
[2771637.715641]  ? irq_domain_remove+0xd5/0x100
[2771637.730511]  ? __warn+0x81/0x130
[2771637.744327]  ? irq_domain_remove+0xd5/0x100
[2771637.759104]  ? report_bug+0x171/0x1a0
[2771637.773324]  ? handle_bug+0x3c/0x80
[2771637.787284]  ? exc_invalid_op+0x17/0x70
[2771637.801422]  ? asm_exc_invalid_op+0x1a/0x20
[2771637.815743]  ? irq_domain_remove+0xd5/0x100
[2771637.829921]  msi_remove_device_irq_domain+0x66/0xc0
[2771637.844756]  msi_device_data_release+0x18/0x60
[2771637.859108]  release_nodes+0x40/0xb0
[2771637.872591]  devres_release_all+0x8c/0xc0
[2771637.886559]  device_unbind_cleanup+0xe/0x70
[2771637.900732]  device_release_driver_internal+0x1cc/0x200
[2771637.915911]  pci_stop_bus_device+0x6c/0x90
[2771637.929945]  pci_stop_and_remove_bus_device+0x12/0x20
[2771637.944956]  pci_iov_remove_virtfn+0xd5/0x140
[2771637.959127]  sriov_disable+0x34/0xe0
[2771637.972288]  ice_free_vfs+0x29a/0x2b0 [ice]
[2771637.985856]  ? acpi_unregister_gsi_ioapic+0x2e/0x40
[2771637.999890]  ? srso_return_thunk+0x5/0x10
[2771638.012804]  ? acpi_pci_irq_disable+0x79/0xc0
[2771638.025849]  ice_remove+0x216/0x220 [ice]
[2771638.038333]  ice_shutdown+0x1a/0x50 [ice]
[2771638.050541]  pci_device_shutdown+0x38/0x60
[2771638.062561]  device_shutdown+0x118/0x1e0
[2771638.074166]  kernel_restart+0x3a/0x90
[2771638.085274]  __do_sys_reboot+0x142/0x230
[2771638.096410]  do_syscall_64+0x60/0xc0
[2771638.106924]  ? srso_return_thunk+0x5/0x10
[2771638.117632]  ? exit_to_user_mode_prepare+0x40/0x1e0
[2771638.129017]  entry_SYSCALL_64_after_hwframe+0x6e/0xd8
[2771638.140440] RIP: 0033:0x7f65ef31c553
[2771638.150201] Code: 64 89 01 48 83 c8 ff c3 66 2e 0f 1f 84 00 00 00 00
00 0f 1f 44 00 00 89 fa be 69 19 12 28 bf ad de e1 fe b8 a9 00 00 00 0f 05
<48> 3d 00 f0 ff ff 77 05 c3 0f 1f 40 00 48 8b 15 91 48 0d 00 f7 d8
[2771638.181641] RSP: 002b:00007ffeff467d38 EFLAGS: 00000202 ORIG_RAX:
00000000000000a9
[2771638.195540] RAX: ffffffffffffffda RBX: 0000000000000003 RCX:
00007f65ef31c553
[2771638.208948] RDX: 0000000001234567 RSI: 0000000028121969 RDI:
00000000fee1dead
[2771638.222318] RBP: 0000000000000000 R08: 0000000000000069 R09:
0000000000000000
[2771638.235638] R10: 0000000000000000 R11: 0000000000000202 R12:
0000000000000000
[2771638.248841] R13: 0000000000000000 R14: 00007ffeff468088 R15:
0000000000000000
[2771638.261970]  </TASK>
[2771638.270048] ---[ end trace 0000000000000000 ]---

--000000000000247ebb060f3c6866
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I&#39;m migrating som=
e systems that I used to use the 700 series network adapters to the 800 ser=
ies and I am noticing quite a bit of issues regarding sr-iov.=C2=A0 i&#39;m=
 using between 8 and 128 VFs, depending on the machine.<br></div><div><br><=
/div><div>I am currently using ubuntu 22.04.3 with linux-image-generic-hwe-=
22.04 =C2=A0 =C2=A0 =C2=A0 =C2=A0 6.5.0.14.14~22.04.7 and debian testing wi=
th 6.5.0-4-amd6<br></div><div><br></div><div>NVM is 4.30 on the debian test=
ing machine and 4.20 on the ubuntu system.</div><div>I see the same issues =
with 4.40 so I haven&#39;t bothered to upgrade (yet).</div><div><br></div><=
div>I see this on pretty much all versions and similar issues with the out =
of tree driver.=C2=A0 There are two different types of errors and they are =
both below.</div><div><br></div><div>The first is when link happens to flap=
 on a port (switch reboot etc) I see the following error:</div><div>[ =C2=
=A0831.658768] =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>[ =C2=A0831.668264] UBSAN: array-index-ou=
t-of-bounds in /build/linux-hwe-6.5-q7NZ0T/linux-hwe-6.5-6.5.0/drivers/net/=
ethernet/intel/ice/ice_virtchnl.c:2020:45<br>[ =C2=A0831.683305] workqueue:=
 ice_service_task [ice] hogged CPU for &gt;10000us 4 times, consider switch=
ing to WQ_UNBOUND<br>[ =C2=A0831.683417] index 2 is out of range for type &=
#39;virtchnl_ether_addr [1]&#39;<br>[ =C2=A0831.690770] CPU: 13 PID: 2041 C=
omm: kworker/13:0 Not tainted 6.5.0-14-generic #14~22.04.1-Ubuntu<br>[ =C2=
=A0831.690774] Hardware name: Supermicro SYS-110D-8C-FRAN8TP/X12SDV-8C-SPT8=
F, BIOS 1.5 10/26/2023<br>[ =C2=A0831.690777] Workqueue: ice ice_service_ta=
sk [ice]<br>[ =C2=A0831.690815] Call Trace:<br>[ =C2=A0831.690817] =C2=A0&l=
t;TASK&gt;<br>[ =C2=A0831.690819] =C2=A0dump_stack_lvl+0x48/0x70<br>[ =C2=
=A0831.690826] =C2=A0dump_stack+0x10/0x20<br>[ =C2=A0831.690829] =C2=A0__ub=
san_handle_out_of_bounds+0xc6/0x110<br>[ =C2=A0831.690835] =C2=A0? __pfx_ic=
e_vc_del_mac_addr+0x10/0x10 [ice]<br>[ =C2=A0831.690891] =C2=A0ice_vc_handl=
e_mac_addr_msg+0x1c6/0x1d0 [ice]<br>[ =C2=A0831.690937] =C2=A0ice_vc_del_ma=
c_addr_msg+0x10/0x20 [ice]<br>[ =C2=A0831.690978] =C2=A0ice_vc_process_vf_m=
sg+0x5a4/0x7f0 [ice]<br>[ =C2=A0831.691020] =C2=A0__ice_clean_ctrlq+0x1cf/0=
x4f0 [ice]<br>[ =C2=A0831.691056] =C2=A0ice_service_task+0x2cc/0x4a0 [ice]<=
br>[ =C2=A0831.691092] =C2=A0process_one_work+0x23d/0x450<br>[ =C2=A0831.69=
1096] =C2=A0worker_thread+0x50/0x3f0<br>[ =C2=A0831.691100] =C2=A0? __pfx_w=
orker_thread+0x10/0x10<br>[ =C2=A0831.691103] =C2=A0kthread+0xef/0x120<br>[=
 =C2=A0831.691107] =C2=A0? __pfx_kthread+0x10/0x10<br>[ =C2=A0831.691111] =
=C2=A0ret_from_fork+0x44/0x70<br>[ =C2=A0831.691116] =C2=A0? __pfx_kthread+=
0x10/0x10<br>[ =C2=A0831.691119] =C2=A0ret_from_fork_asm+0x1b/0x30<br>[ =C2=
=A0831.691123] =C2=A0&lt;/TASK&gt;<br>[ =C2=A0831.691125] =3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
</div><div><br></div><div>The second issue is on reboot:</div><div>[2771637=
.176795] ------------[ cut here ]------------<br>[2771637.187192] WARNING: =
CPU: 12 PID: 1 at kernel/irq/irqdomain.c:284 irq_domain_remove+0xd5/0x100<b=
r>[2771637.201762] Modules linked in: irdma ice xt_nat nvidia_uvm(POE) rpcs=
ec_gss_krb5 auth_rpcgss nfsv4 dns_resolver nfs lockd grace sunrpc fscache n=
etfs xt_conntrack nft_chain_nat xt_MASQUERADE nf_nat nf_conntrack_netlink n=
f_conntrack nf_defrag_ipv6 nf_defrag_ipv4 xfrm_user xfrm_algo xt_addrtype n=
ft_compat br_netfilter bridge stp llc tun nf_tables libcrc32c nfnetlink nvm=
e_fabrics overlay binfmt_misc sch_fq tcp_bbr nvidia_drm(POE) intel_rapl_msr=
 intel_rapl_common amd64_edac edac_mce_amd nvidia_modeset(POE) kvm_amd ipmi=
_ssif zfs(POE) kvm snd_hda_codec_hdmi zunicode(POE) irqbypass zzstd(OE) gha=
sh_clmulni_intel snd_hda_intel sha512_ssse3 snd_intel_dspcfg snd_intel_sdw_=
acpi sha512_generic zlua(OE) nls_ascii snd_hda_codec nls_cp437 zavl(POE) vf=
at snd_hda_core icp(POE) snd_hwdep fat acpi_ipmi aesni_intel snd_pcm i40e z=
common(POE) crypto_simd video snd_timer ib_uverbs znvpair(POE) snd wmi cryp=
td drm_shmem_helper drm_kms_helper sp5100_tco rapl acpi_cpufreq pcspkr ib_c=
ore soundcore i2c_algo_bit ccp joydev evdev ipmi_msghandler<br>[2771637.201=
863] =C2=A0button k10temp watchdog spl(OE) sg nvidia(POE) loop fuse efi_pst=
ore drm dm_mod configfs efivarfs x_tables autofs4 ext4 crc16 mbcache jbd2 c=
rc32c_generic hid_generic rndis_host usbhid cdc_ether iavf usbnet ses hid s=
d_mod mii enclosure nvme nvme_core ahci xhci_pci libahci t10_pi mpt3sas xhc=
i_hcd crc32_pclmul raid_class crc64_rocksoft libata crc32c_intel scsi_trans=
port_sas crc64 tg3 crc_t10dif crct10dif_generic usbcore scsi_mod crct10dif_=
pclmul libphy gnss crct10dif_common usb_common scsi_common i2c_piix4 [last =
unloaded: ipmi_si]<br>[2771637.445556] CPU: 12 PID: 1 Comm: systemd-shutdow=
 Tainted: P =C2=A0 =C2=A0 =C2=A0 =C2=A0W =C2=A0OE =C2=A0 =C2=A0 =C2=A06.5.0=
-4-amd64 #1 =C2=A0Debian 6.5.10-1<br>[2771637.465165] Hardware name: Superm=
icro Super Server/H12SSL-i, BIOS 2.1 06/02/2021<br>[2771637.482150] RIP: 00=
10:irq_domain_remove+0xd5/0x100<br>[2771637.496525] Code: 21 89 e8 3e c9 52=
 00 eb b9 48 8b 7b 10 e8 83 a1 1c 00 48 89 df 5b e9 7a a1 1c 00 66 90 48 c7=
 05 6d a4 f8 02 00 00 00 00 eb 8a &lt;0f&gt; 0b e9 4b ff ff ff 31 d2 48 c7 =
c6 38 97 89 88 48 c7 c7 68 95 21<br>[2771637.535041] RSP: 0018:ffffb7618005=
bb70 EFLAGS: 00010282<br>[2771637.550303] RAX: 0000000000000000 RBX: ffff96=
2e285afa40 RCX: ffff962e285ae0e8<br>[2771637.567618] RDX: ffff95c280391980 =
RSI: 0000000000000000 RDI: ffffffff890d2ae0<br>[2771637.584962] RBP: ffff96=
36607740d0 R08: ffffffff88834fa5 R09: 0000000000000068<br>[2771637.602347] =
R10: 0000000000000000 R11: ffffb7618005bbb8 R12: ffff95c46a9bd9c0<br>[27716=
37.619793] R13: ffff9636607740d0 R14: ffff96366077436c R15: 00000000fee1dea=
d<br>[2771637.637280] FS: =C2=A000007f65ef77d500(0000) GS:ffff963fced00000(=
0000) knlGS:0000000000000000<br>[2771637.655883] CS: =C2=A00010 DS: 0000 ES=
: 0000 CR0: 0000000080050033<br>[2771637.672165] CR2: 00007f65ef481edc CR3:=
 00000002ea336000 CR4: 0000000000350ee0<br>[2771637.689947] Call Trace:<br>=
[2771637.702993] =C2=A0&lt;TASK&gt;<br>[2771637.715641] =C2=A0? irq_domain_=
remove+0xd5/0x100<br>[2771637.730511] =C2=A0? __warn+0x81/0x130<br>[2771637=
.744327] =C2=A0? irq_domain_remove+0xd5/0x100<br>[2771637.759104] =C2=A0? r=
eport_bug+0x171/0x1a0<br>[2771637.773324] =C2=A0? handle_bug+0x3c/0x80<br>[=
2771637.787284] =C2=A0? exc_invalid_op+0x17/0x70<br>[2771637.801422] =C2=A0=
? asm_exc_invalid_op+0x1a/0x20<br>[2771637.815743] =C2=A0? irq_domain_remov=
e+0xd5/0x100<br>[2771637.829921] =C2=A0msi_remove_device_irq_domain+0x66/0x=
c0<br>[2771637.844756] =C2=A0msi_device_data_release+0x18/0x60<br>[2771637.=
859108] =C2=A0release_nodes+0x40/0xb0<br>[2771637.872591] =C2=A0devres_rele=
ase_all+0x8c/0xc0<br>[2771637.886559] =C2=A0device_unbind_cleanup+0xe/0x70<=
br>[2771637.900732] =C2=A0device_release_driver_internal+0x1cc/0x200<br>[27=
71637.915911] =C2=A0pci_stop_bus_device+0x6c/0x90<br>[2771637.929945] =C2=
=A0pci_stop_and_remove_bus_device+0x12/0x20<br>[2771637.944956] =C2=A0pci_i=
ov_remove_virtfn+0xd5/0x140<br>[2771637.959127] =C2=A0sriov_disable+0x34/0x=
e0<br>[2771637.972288] =C2=A0ice_free_vfs+0x29a/0x2b0 [ice]<br>[2771637.985=
856] =C2=A0? acpi_unregister_gsi_ioapic+0x2e/0x40<br>[2771637.999890] =C2=
=A0? srso_return_thunk+0x5/0x10<br>[2771638.012804] =C2=A0? acpi_pci_irq_di=
sable+0x79/0xc0<br>[2771638.025849] =C2=A0ice_remove+0x216/0x220 [ice]<br>[=
2771638.038333] =C2=A0ice_shutdown+0x1a/0x50 [ice]<br>[2771638.050541] =C2=
=A0pci_device_shutdown+0x38/0x60<br>[2771638.062561] =C2=A0device_shutdown+=
0x118/0x1e0<br>[2771638.074166] =C2=A0kernel_restart+0x3a/0x90<br>[2771638.=
085274] =C2=A0__do_sys_reboot+0x142/0x230<br>[2771638.096410] =C2=A0do_sysc=
all_64+0x60/0xc0<br>[2771638.106924] =C2=A0? srso_return_thunk+0x5/0x10<br>=
[2771638.117632] =C2=A0? exit_to_user_mode_prepare+0x40/0x1e0<br>[2771638.1=
29017] =C2=A0entry_SYSCALL_64_after_hwframe+0x6e/0xd8<br>[2771638.140440] R=
IP: 0033:0x7f65ef31c553<br>[2771638.150201] Code: 64 89 01 48 83 c8 ff c3 6=
6 2e 0f 1f 84 00 00 00 00 00 0f 1f 44 00 00 89 fa be 69 19 12 28 bf ad de e=
1 fe b8 a9 00 00 00 0f 05 &lt;48&gt; 3d 00 f0 ff ff 77 05 c3 0f 1f 40 00 48=
 8b 15 91 48 0d 00 f7 d8<br>[2771638.181641] RSP: 002b:00007ffeff467d38 EFL=
AGS: 00000202 ORIG_RAX: 00000000000000a9<br>[2771638.195540] RAX: fffffffff=
fffffda RBX: 0000000000000003 RCX: 00007f65ef31c553<br>[2771638.208948] RDX=
: 0000000001234567 RSI: 0000000028121969 RDI: 00000000fee1dead<br>[2771638.=
222318] RBP: 0000000000000000 R08: 0000000000000069 R09: 0000000000000000<b=
r>[2771638.235638] R10: 0000000000000000 R11: 0000000000000202 R12: 0000000=
000000000<br>[2771638.248841] R13: 0000000000000000 R14: 00007ffeff468088 R=
15: 0000000000000000<br>[2771638.261970] =C2=A0&lt;/TASK&gt;<br>[2771638.27=
0048] ---[ end trace 0000000000000000 ]---</div></div>

--000000000000247ebb060f3c6866--
