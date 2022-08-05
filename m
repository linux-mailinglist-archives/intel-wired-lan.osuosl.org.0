Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AD64358AD1F
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Aug 2022 17:39:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B76506F991;
	Fri,  5 Aug 2022 15:39:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B76506F991
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659713954;
	bh=JcQE4MJPklxbX7OW9DiEg3zLtpGCkX2OUA3w6UhR62w=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=00rpB0tiJEvBzbCRiUVkgCsCZ8vbRxAiI+ld3OZVEik2D/sspGH8h8CmZR5BeC/aS
	 hIJza4IiAr4YmRhNMf2wA1nE+Cmt+O0RIrjHjjIcJ7sHy4PV5povvsLscx1N0LmdUD
	 FL0/PtcZCHmPBJiyCB3h2Dtx8FLW1kY4W3t2sJHY4MsNH+F/kf9BjBageZQnpqyubx
	 8SOU1GKjBCz1Vpf60rucg+LoxuZJ90CFn6qYDFqGaHVjEzUD62MNjbbtWQzfG0wcKB
	 n99519ML2qOfovfTxxyTa6hxqattlipkqTTq4YwTixaNYwAU/Iw05P05r5OFNxLgmC
	 mVQSdU0u2j6ig==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hmedWA8z-MPS; Fri,  5 Aug 2022 15:39:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5FD426F970;
	Fri,  5 Aug 2022 15:39:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5FD426F970
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 916401BF370
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Aug 2022 13:02:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 68FA841DC4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Aug 2022 13:02:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 68FA841DC4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bzcun_yBsSOe for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Aug 2022 13:02:21 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B627441DC3
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com
 [209.85.218.45])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B627441DC3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Aug 2022 13:02:20 +0000 (UTC)
Received: by mail-ej1-f45.google.com with SMTP id gb36so4869360ejc.10
 for <intel-wired-lan@lists.osuosl.org>; Fri, 05 Aug 2022 06:02:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=fpoQr5VMaZEc98czHykM9uuB7d29Bj/T1n0lXAbDtQo=;
 b=v5hh0WHfA6XzeeB9kAQiOvVNYtSwkLE6/1x5wcOCludRIgE/jDZk/pIobfgrni2yfb
 lB3T8TNoZhX+qRR8xZJiFF8nbkviDgolJDqKRCwuUGm3HFdqpPuEQYaAaZ7t0oWstHLA
 rTtKuJBHt2qd0ZLxRuUktrxaxQ1MVhCWzbABr0521tgSYfAi8nxdnmRVJfBRHMycmoAq
 QqCDaaUYFVVcYqGdjmX2ob/csoU2YsexXAWcTBDCkKNDDHI7P99rj79q41HeZ6OflFKx
 2RAVaMfnVqhnIg+kQ0BKPmfRfifrua08poA06m/2Z2wluXtRlBjOIXYrdrr0XYpvN5x5
 /ilA==
X-Gm-Message-State: ACgBeo1h9EVQgpSSWtMWQ4wLOZrWxs3uJzdmaC2F0UdykWuznrNthRM2
 EBW3vAS96pJlCv+MZBdCDBeHOAoLHJABVG5alg==
X-Google-Smtp-Source: AA6agR7GgaT8inTxaJi8umT0CG3ime4viRE+hP/Qtt4P8hUClvfWmHbwnR9X/+xIJ93AQHbNFXWq4g==
X-Received: by 2002:a17:907:16a8:b0:730:a324:2712 with SMTP id
 hc40-20020a17090716a800b00730a3242712mr5213888ejc.368.1659704538722; 
 Fri, 05 Aug 2022 06:02:18 -0700 (PDT)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com.
 [209.85.218.47]) by smtp.gmail.com with ESMTPSA id
 z17-20020a1709064e1100b0072fe6408526sm1572362eju.9.2022.08.05.06.01.58
 for <intel-wired-lan@lists.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 05 Aug 2022 06:02:04 -0700 (PDT)
Received: by mail-ej1-f47.google.com with SMTP id y13so4840895ejp.13
 for <intel-wired-lan@lists.osuosl.org>; Fri, 05 Aug 2022 06:01:58 -0700 (PDT)
X-Received: by 2002:a17:907:1629:b0:730:7d10:639c with SMTP id
 hb41-20020a170907162900b007307d10639cmr5009392ejc.256.1659704516583; Fri, 05
 Aug 2022 06:01:56 -0700 (PDT)
MIME-Version: 1.0
From: Peifeng Qiu <linux@qiupf.dev>
Date: Fri, 5 Aug 2022 22:01:45 +0900
X-Gmail-Original-Message-ID: <CAPH51bfzUoZh3FbkCx3ZdpvFynTVagNWPvfKWQsaT9F+RP2X6Q@mail.gmail.com>
Message-ID: <CAPH51bfzUoZh3FbkCx3ZdpvFynTVagNWPvfKWQsaT9F+RP2X6Q@mail.gmail.com>
To: przemyslawx.patynowski@intel.com, jesse.brandeburg@intel.com, 
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org
X-Mailman-Approved-At: Fri, 05 Aug 2022 15:39:04 +0000
Subject: [Intel-wired-lan] "BUG: Bad page state in process swapper" in
 kernel 5.19
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
Content-Type: multipart/mixed; boundary="===============6094886838188654312=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============6094886838188654312==
Content-Type: multipart/alternative; boundary="00000000000024b9ef05e57e12ed"

--00000000000024b9ef05e57e12ed
Content-Type: text/plain; charset="UTF-8"

Hi,
I'm using a E810-XXVDA2 card with virtual function passed to a container,
with a heavy P2P app running inside. I usually run arch linux with custom
compiled latest mainline kernel. Recently I observe a strange kernel bug
after switching to 5.19. When the P2P app opens lots of (~500) tcp
connections, the kernel locks up and a hard reset is required.
Here's an example dmesg with stack dump.

[  463.311996] BUG: Bad page state in process swapper/43  pfn:20b59f8
[  463.312010] page:00000000d6eff355 refcount:-1 mapcount:0
mapping:0000000000000000 index:0x0 pfn:0x20b59f8
[  463.312027] flags: 0xaffff0000000000(node=1|zone=2|lastcpupid=0xffff)
[  463.312037] raw: 0affff0000000000 dead000000000100 dead000000000122
0000000000000000
[  463.312041] raw: 0000000000000000 0000000000000000 ffffffffffffffff
0000000000000000
[  463.312044] page dumped because: nonzero _refcount
[  463.312046] Modules linked in: iavf xt_conntrack nft_chain_nat
xt_MASQUERADE nf_nat nf_conntrack_netlink nf_conntrack nf_defrag_ipv6
nf_defrag_ipv4 xt_addrtype nft_compat nf_tables nfnetlink rfkill overlay
intel_rapl_msr intel_rapl_common intel_uncore_frequency
intel_uncore_frequency_common nd_pmem dax_pmem nd_btt i10nm_edac rpcrdma
ipmi_ssif sunrpc rdma_ucm ib_iser libiscsi scsi_transport_iscsi rdma_cm
iw_cm ib_cm irdma i40e ib_uverbs x86_pkg_temp_thermal intel_powerclamp
iTCO_wdt vfat intel_pmc_bxt ib_core iTCO_vendor_support coretemp fat
kvm_intel kvm irqbypass crct10dif_pclmul crc32_pclmul ghash_clmulni_intel
aesni_intel crypto_simd cryptd rapl intel_cstate xfs ast libcrc32c
intel_uncore drm_vram_helper ice drm_ttm_helper pcspkr mei_me
isst_if_mbox_pci joydev i2c_i801 isst_if_mmio ioatdma isst_if_common ttm
i2c_smbus mousedev mei intel_pch_thermal intel_vsec dca wmi acpi_ipmi
ipmi_si ipmi_devintf ipmi_msghandler nfit acpi_power_meter mac_hid
dm_multipath dm_mod br_netfilter bridge
[  463.312198]  stp llc sg fuse bpf_preload ip_tables x_tables ext4
crc32c_generic crc16 mbcache jbd2 usbhid ses enclosure xhci_pci
crc32c_intel smartpqi xhci_pci_renesas scsi_transport_sas
[  463.312232] CPU: 43 PID: 0 Comm: swapper/43 Not tainted 5.19.0 #15
ca69d5d6930d879ee250b33d62ed9a778cf61ae8
[  463.312241] Hardware name: Inspur NF5280M6/NF5280M6, BIOS 06.00.04
04/12/2022
[  463.312244] Call Trace:
[  463.312248]  <IRQ>
[  463.312252]  dump_stack_lvl+0x44/0x5c
[  463.312266]  bad_page.cold+0x63/0x8f
[  463.312275]  check_new_pages+0xb1/0xd0
[  463.312285]  rmqueue_bulk+0x2ac/0xa70
[  463.312297]  get_page_from_freelist+0xef2/0x1540
[  463.312304]  ? intel_iommu_map_pages+0xbd/0xe0
[  463.312314]  ? __iommu_map+0xdf/0x2a0
[  463.312323]  ? intel_iommu_iotlb_sync_map+0x73/0xb0
[  463.312333]  __alloc_pages+0xf4/0x250
[  463.312340]  iavf_alloc_rx_buffers+0xcb/0x1e0 [iavf
35fcb0ed6732e327666cfb51b6fc761b3b822b97]
[  463.312357]  iavf_napi_poll+0xb4f/0xfd0 [iavf
35fcb0ed6732e327666cfb51b6fc761b3b822b97]
[  463.312371]  __napi_poll+0x28/0x160
[  463.312379]  net_rx_action+0x29e/0x350
[  463.312387]  __do_softirq+0xcc/0x2c5
[  463.312396]  ? sched_clock_cpu+0x9/0xb0
[  463.312403]  __irq_exit_rcu+0x8e/0xc0
[  463.312409]  common_interrupt+0x82/0xa0
[  463.312418]  </IRQ>
[  463.312420]  <TASK>
[  463.312423]  asm_common_interrupt+0x22/0x40
[  463.312429] RIP: 0010:cpuidle_enter_state+0xd8/0x380
[  463.312440] Code: 00 00 31 ff e8 49 51 7f ff 45 84 ff 74 16 9c 58 0f 1f
40 00 f6 c4 02 0f 85 92 02 00 00 31 ff e8 5e a9 85 ff fb 0f 1f 44 00 00
<45> 85 f6 0f 88 25 01 00 00 49 63 ce 48 8d 04 49 48 8d 04 81 49 8d
[  463.312445] RSP: 0018:ff1490b308687e90 EFLAGS: 00000246
[  463.312451] RAX: ff1478f87f6f2c80 RBX: 0000000000000002 RCX:
0000000000000000
[  463.312455] RDX: 0000006bdf8bd2c6 RSI: fffffcb8f2b353f6 RDI:
0000000000000000
[  463.312459] RBP: ff4690b2f7eeda00 R08: 0000000000000002 R09:
000000003d1879ab
[  463.312462] R10: 0000000000000046 R11: 0000000000000037 R12:
ffffffffbc743f60
[  463.312466] R13: 0000006bdf8bd2c6 R14: 0000000000000002 R15:
0000000000000000
[  463.312473]  cpuidle_enter+0x29/0x40
[  463.312479]  do_idle+0x1ba/0x220
[  463.312486]  cpu_startup_entry+0x19/0x20
[  463.312492]  start_secondary+0x111/0x130
[  463.312499]  secondary_startup_64_no_verify+0xe5/0xeb
[  463.312511]  </TASK>
[  463.312513] Disabling lock debugging due to kernel taint


Although I don't know exact steps to trigger this bug, I was able to
reproduce this usually within 5 minutes. So I did git bisect on this
issue and found the culprit to be
[a9f49e0060301a9bfebeca76739158d0cf91cdf6] iavf: Fix handling of dummy
receive descriptors
I reverted this commit on top of v5.19 then the issue disappeared.
Can you please take a look at this?

Thank you.
Peifeng Qiu

--00000000000024b9ef05e57e12ed
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div>I&#39;m using a E810-XXVDA2 card with v=
irtual function passed to a container, <br></div><div>with a heavy P2P app =
running inside. I usually run arch linux with custom</div><div>compiled lat=
est mainline kernel. Recently I observe a strange kernel bug <br></div><div=
>after switching to 5.19. When the P2P app opens lots of (~500) tcp</div><d=
iv>connections, the kernel locks up and a hard reset is required.</div><div=
></div><div>Here&#39;s an example dmesg with stack dump.</div><div><br></di=
v><div>[ =C2=A0463.311996] BUG: Bad page state in process swapper/43 =C2=A0=
pfn:20b59f8<br>[ =C2=A0463.312010] page:00000000d6eff355 refcount:-1 mapcou=
nt:0 mapping:0000000000000000 index:0x0 pfn:0x20b59f8<br>[ =C2=A0463.312027=
] flags: 0xaffff0000000000(node=3D1|zone=3D2|lastcpupid=3D0xffff)<br>[ =C2=
=A0463.312037] raw: 0affff0000000000 dead000000000100 dead000000000122 0000=
000000000000<br>[ =C2=A0463.312041] raw: 0000000000000000 0000000000000000 =
ffffffffffffffff 0000000000000000<br>[ =C2=A0463.312044] page dumped becaus=
e: nonzero _refcount<br>[ =C2=A0463.312046] Modules linked in: iavf xt_conn=
track nft_chain_nat xt_MASQUERADE nf_nat nf_conntrack_netlink nf_conntrack =
nf_defrag_ipv6 nf_defrag_ipv4 xt_addrtype nft_compat nf_tables nfnetlink rf=
kill overlay intel_rapl_msr intel_rapl_common intel_uncore_frequency intel_=
uncore_frequency_common nd_pmem dax_pmem nd_btt i10nm_edac rpcrdma ipmi_ssi=
f sunrpc rdma_ucm ib_iser libiscsi scsi_transport_iscsi rdma_cm iw_cm ib_cm=
 irdma i40e ib_uverbs x86_pkg_temp_thermal intel_powerclamp iTCO_wdt vfat i=
ntel_pmc_bxt ib_core iTCO_vendor_support coretemp fat kvm_intel kvm irqbypa=
ss crct10dif_pclmul crc32_pclmul ghash_clmulni_intel aesni_intel crypto_sim=
d cryptd rapl intel_cstate xfs ast libcrc32c intel_uncore drm_vram_helper i=
ce drm_ttm_helper pcspkr mei_me isst_if_mbox_pci joydev i2c_i801 isst_if_mm=
io ioatdma isst_if_common ttm i2c_smbus mousedev mei intel_pch_thermal inte=
l_vsec dca wmi acpi_ipmi ipmi_si ipmi_devintf ipmi_msghandler nfit acpi_pow=
er_meter mac_hid dm_multipath dm_mod br_netfilter bridge<br>[ =C2=A0463.312=
198] =C2=A0stp llc sg fuse bpf_preload ip_tables x_tables ext4 crc32c_gener=
ic crc16 mbcache jbd2 usbhid ses enclosure xhci_pci crc32c_intel smartpqi x=
hci_pci_renesas scsi_transport_sas<br>[ =C2=A0463.312232] CPU: 43 PID: 0 Co=
mm: swapper/43 Not tainted 5.19.0 #15 ca69d5d6930d879ee250b33d62ed9a778cf61=
ae8<br>[ =C2=A0463.312241] Hardware name: Inspur NF5280M6/NF5280M6, BIOS 06=
.00.04 04/12/2022<br>[ =C2=A0463.312244] Call Trace:<br>[ =C2=A0463.312248]=
 =C2=A0&lt;IRQ&gt;<br>[ =C2=A0463.312252] =C2=A0dump_stack_lvl+0x44/0x5c<br=
>[ =C2=A0463.312266] =C2=A0bad_page.cold+0x63/0x8f<br>[ =C2=A0463.312275] =
=C2=A0check_new_pages+0xb1/0xd0<br>[ =C2=A0463.312285] =C2=A0rmqueue_bulk+0=
x2ac/0xa70<br>[ =C2=A0463.312297] =C2=A0get_page_from_freelist+0xef2/0x1540=
<br>[ =C2=A0463.312304] =C2=A0? intel_iommu_map_pages+0xbd/0xe0<br>[ =C2=A0=
463.312314] =C2=A0? __iommu_map+0xdf/0x2a0<br>[ =C2=A0463.312323] =C2=A0? i=
ntel_iommu_iotlb_sync_map+0x73/0xb0<br>[ =C2=A0463.312333] =C2=A0__alloc_pa=
ges+0xf4/0x250<br>[ =C2=A0463.312340] =C2=A0iavf_alloc_rx_buffers+0xcb/0x1e=
0 [iavf 35fcb0ed6732e327666cfb51b6fc761b3b822b97]<br>[ =C2=A0463.312357] =
=C2=A0iavf_napi_poll+0xb4f/0xfd0 [iavf 35fcb0ed6732e327666cfb51b6fc761b3b82=
2b97]<br>[ =C2=A0463.312371] =C2=A0__napi_poll+0x28/0x160<br>[ =C2=A0463.31=
2379] =C2=A0net_rx_action+0x29e/0x350<br>[ =C2=A0463.312387] =C2=A0__do_sof=
tirq+0xcc/0x2c5<br>[ =C2=A0463.312396] =C2=A0? sched_clock_cpu+0x9/0xb0<br>=
[ =C2=A0463.312403] =C2=A0__irq_exit_rcu+0x8e/0xc0<br>[ =C2=A0463.312409] =
=C2=A0common_interrupt+0x82/0xa0<br>[ =C2=A0463.312418] =C2=A0&lt;/IRQ&gt;<=
br>[ =C2=A0463.312420] =C2=A0&lt;TASK&gt;<br>[ =C2=A0463.312423] =C2=A0asm_=
common_interrupt+0x22/0x40<br>[ =C2=A0463.312429] RIP: 0010:cpuidle_enter_s=
tate+0xd8/0x380<br>[ =C2=A0463.312440] Code: 00 00 31 ff e8 49 51 7f ff 45 =
84 ff 74 16 9c 58 0f 1f 40 00 f6 c4 02 0f 85 92 02 00 00 31 ff e8 5e a9 85 =
ff fb 0f 1f 44 00 00 &lt;45&gt; 85 f6 0f 88 25 01 00 00 49 63 ce 48 8d 04 4=
9 48 8d 04 81 49 8d<br>[ =C2=A0463.312445] RSP: 0018:ff1490b308687e90 EFLAG=
S: 00000246<br>[ =C2=A0463.312451] RAX: ff1478f87f6f2c80 RBX: 0000000000000=
002 RCX: 0000000000000000<br>[ =C2=A0463.312455] RDX: 0000006bdf8bd2c6 RSI:=
 fffffcb8f2b353f6 RDI: 0000000000000000<br>[ =C2=A0463.312459] RBP: ff4690b=
2f7eeda00 R08: 0000000000000002 R09: 000000003d1879ab<br>[ =C2=A0463.312462=
] R10: 0000000000000046 R11: 0000000000000037 R12: ffffffffbc743f60<br>[ =
=C2=A0463.312466] R13: 0000006bdf8bd2c6 R14: 0000000000000002 R15: 00000000=
00000000<br>[ =C2=A0463.312473] =C2=A0cpuidle_enter+0x29/0x40<br>[ =C2=A046=
3.312479] =C2=A0do_idle+0x1ba/0x220<br>[ =C2=A0463.312486] =C2=A0cpu_startu=
p_entry+0x19/0x20<br>[ =C2=A0463.312492] =C2=A0start_secondary+0x111/0x130<=
br>[ =C2=A0463.312499] =C2=A0secondary_startup_64_no_verify+0xe5/0xeb<br>[ =
=C2=A0463.312511] =C2=A0&lt;/TASK&gt;<br>[ =C2=A0463.312513] Disabling lock=
 debugging due to kernel taint</div><div><br></div><div><br></div><div>Alth=
ough I don&#39;t know exact steps to trigger this bug, I was able to</div><=
div>reproduce this usually within 5 minutes. So I did git bisect on this</d=
iv><div>issue and found the culprit to be [a9f49e0060301a9bfebeca76739158d0=
cf91cdf6] iavf: Fix handling of dummy receive descriptors</div><div></div><=
div>I reverted this commit on top of v5.19 then the issue disappeared.</div=
>Can you please take a look at this?<br><div><div><br></div><div>Thank you.=
</div><div>Peifeng Qiu<br></div><div><br></div></div></div>

--00000000000024b9ef05e57e12ed--

--===============6094886838188654312==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============6094886838188654312==--
