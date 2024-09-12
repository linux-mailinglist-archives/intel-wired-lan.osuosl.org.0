Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4256976D43
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Sep 2024 17:12:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9DDAB40148;
	Thu, 12 Sep 2024 15:12:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LZdiF1jDsJLH; Thu, 12 Sep 2024 15:12:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A189A41089
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726153959;
	bh=J7Sn8fS66RL2Pu4Em49WuzL8kjfR01dE0Rpd4rEfMxw=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ypoeSY1OmZ+ODbl6tBnKLsD+JEWjt0SDj8IDAGG2QpIxa5selQMNjwROSoZreYcww
	 61w1FPF0jLsOlJxbfHqs1B0kNQRz0XzIogtVFKQnirZm3BrDAknvA5p7QavmhUgO86
	 K2Ura4HaHVqceIjy4FI3/Mno2boyahb82iWRKB/7VYNA6HHba7LQmILp4utpDF3cMq
	 3EaKxw82w5z2X7AtU+qgH/2ea1113yfctvNPLTv4TrlGLCLgID6q5DSJtexmwDWyi3
	 ROapJOALVKsobuLJF+sVKafB+PgByULMTEcle3zyv3nNVajr/T5nLC1lRXPrwEHkn6
	 JwBYqyXfwiilQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A189A41089;
	Thu, 12 Sep 2024 15:12:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1EC511BF281
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2024 13:03:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 08814409D1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2024 13:03:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ns8oTvtW8uyM for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Sep 2024 13:03:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::636; helo=mail-pl1-x636.google.com;
 envelope-from=jesperjuhl76@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D87ED408FE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D87ED408FE
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com
 [IPv6:2607:f8b0:4864:20::636])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D87ED408FE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2024 13:03:51 +0000 (UTC)
Received: by mail-pl1-x636.google.com with SMTP id
 d9443c01a7336-20551eeba95so8850195ad.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2024 06:03:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1726146231; x=1726751031;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=J7Sn8fS66RL2Pu4Em49WuzL8kjfR01dE0Rpd4rEfMxw=;
 b=OSE+wIpB6X88mTl1ZvphKHIgVV9HSbBnePuLP1t4qZO+Eg+iSZM88WSHIswJ1CSB9p
 j3v35wk83lNnMw0JArwiZE2Y7GqJQ911tnf/zqx2/ik7mAVBvoFR1SYBEUnp8AgVzOXc
 AFR16QLblg29yTqO7CC5AhwtBeodxMQDFIwmdSDTuYpcVVdFW2oz3oHIos0jVofW2OWL
 Iy2B6UeNMyB/58mhMKUNIvPRmlBaDlMZTBExqwjre2zEvxWw0Ib8mh91I9VgC7DjMate
 q80hmwFviYwqlK4G0GCtaBsH1UrdkRH+9IGPbSrETz6zUK6Tr5ZIb+DZp1y/KtAaieWe
 R42w==
X-Forwarded-Encrypted: i=1;
 AJvYcCVFRkIEDCVrvUa/jLjI2Ry2CVzIPfhqFfZlYj0r6mU4k24jRjugn4jCScG4dcpVQSDutN0IP+cQi1loBVyZl1w=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyRjx2H32TrEWxRPV2cgFS4bD45eC/Z/f8mRxIevAP02za/qsQe
 OTP2PoZe/6diRD4QUypP5OUPXkjSv1VrrgC9doTY3UrS7QdpgsVr7vXG95LA7phYcNnRaMw1zER
 TCrOXBBhugo3fc1LYxzMYWYPmmR8=
X-Google-Smtp-Source: AGHT+IGpH1f39n5ul6U0TJX9hRF9wPjQebgfoOv4GFqQNyAhR+6QEg3RR/FtE+3dQpWj8vLbzaMfUqXyY/RXKUBriJA=
X-Received: by 2002:a17:903:2306:b0:203:74fe:4ee0 with SMTP id
 d9443c01a7336-2076e44dff7mr32020355ad.53.1726146230691; Thu, 12 Sep 2024
 06:03:50 -0700 (PDT)
MIME-Version: 1.0
References: <CAHaCkmfFt1oP=r28DDYNWm3Xx5CEkzeu7NEstXPUV+BmG3F1_A@mail.gmail.com>
In-Reply-To: <CAHaCkmfFt1oP=r28DDYNWm3Xx5CEkzeu7NEstXPUV+BmG3F1_A@mail.gmail.com>
From: Jesper Juhl <jesperjuhl76@gmail.com>
Date: Thu, 12 Sep 2024 15:03:14 +0200
Message-ID: <CAHaCkmddrR+sx7wQeKh_8WhiYc0ymTyX5j1FB5kk__qTKe2z3Q@mail.gmail.com>
To: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Thu, 12 Sep 2024 15:12:36 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1726146231; x=1726751031; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=J7Sn8fS66RL2Pu4Em49WuzL8kjfR01dE0Rpd4rEfMxw=;
 b=RmHECz9N0V9NdT6G7+L6w9e9GV2uqbQjQElf043Wl2UkS4q+l1IhjLp6Tbytnn6bwy
 gBVXRXLoHED3hCYrszaPxXLhqjGYxOPQFN/sA1DDdOmlkrzHXoAOU67QV44hgpVhcnaz
 /dWEOVLhPlz7mT3uPDHP+kpfJZyGhpmp2oPJ8RshCPQ3e8TIxmnVWfzbV/hIgp2PMhlQ
 fGhbwVQpm/NkbUz1OkzcV2NOrAN5Zvj44ekeoB4o1mNmuprOCQsknV8Xhnfp6HteW0TP
 ZA2kMObyXtODxoev+mEfCgaYxASrYWJJ51L4SaaE+qouvWH8/tDvHtF1s4QtMKA+ZmGi
 CrdA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=RmHECz9N
Subject: Re: [Intel-wired-lan] igc: Network failure,
 reboot required: igc: Failed to read reg 0xc030!
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, linux-kernel@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi again

It just happened again.
Same error message, but different stacktrace:

[ 7739.335650] igc 0000:0c:00.0 eno1: PCIe link lost, device now detached
[ 7739.335656] ------------[ cut here ]------------
[ 7739.335657] igc: Failed to read reg 0xc030!
[ 7739.335675] WARNING: CPU: 8 PID: 274 at
drivers/net/ethernet/intel/igc/igc_main.c:6752 igc_rd32+0x88/0xa0
[igc]
[ 7739.335683] Modules linked in: snd_usb_audio snd_usbmidi_lib
snd_ump snd_rawmidi snd_seq_device mc vfat fat amd_atl intel_rapl_msr
intel_rapl_common eeepc_wmi kvm_amd asus_wmi iwlmvm pla
tform_profile kvm mac80211 snd_hda_codec_hdmi crct10dif_pclmul
crc32_pclmul polyval_clmulni snd_hda_intel libarc4 polyval_generic
gf128mul snd_intel_dspcfg ghash_clmulni_intel snd_intel_sdw
_acpi sha512_ssse3 snd_hda_codec btusb sha256_ssse3 btrtl iwlwifi
sha1_ssse3 snd_hda_core btintel aesni_intel snd_hwdep btbcm i8042
btmtk crypto_simd snd_pcm cryptd sparse_keymap cfg80211 s
p5100_tco bluetooth serio snd_timer wmi_bmof rapl igc ccp pcspkr
k10temp i2c_piix4 snd ptp soundcore rfkill pps_core mousedev joydev
gpio_amdpt gpio_generic mac_hid i2c_dev crypto_user dm_m
od loop nfnetlink ip_tables x_tables ext4 crc32c_generic crc16 mbcache
jbd2 hid_generic usbhid amdgpu amdxcp i2c_algo_bit drm_ttm_helper ttm
drm_exec gpu_sched drm_suballoc_helper nvme drm_
buddy crc32c_intel drm_display_helper nvme_core xhci_pci
xhci_pci_renesas cec nvme_auth
[ 7739.335733]  video wmi
[ 7739.335735] CPU: 8 PID: 274 Comm: kworker/8:4 Not tainted
6.10.9-arch1-2 #1 a989aa0dc21f9aeaff91174d1be29ed5a93040b7
[ 7739.335737] Hardware name: ASUS System Product Name/ROG STRIX
X670E-E GAMING WIFI, BIOS 2007 04/12/2024
[ 7739.335738] Workqueue: events igc_watchdog_task [igc]
[ 7739.335743] RIP: 0010:igc_rd32+0x88/0xa0 [igc]
[ 7739.335746] Code: 48 c7 c6 30 d9 77 c1 e8 56 1a 11 d2 48 8b bd 28
ff ff ff e8 fa 06 a4 d1 84 c0 74 c5 89 de 48 c7 c7 58 d9 77 c1 e8 48
a5 38 d1 <0f> 0b eb b3 83 c8 ff e9 47 54 3d d2 66 6
6 2e 0f 1f 84 00 00 00 00
[ 7739.335747] RSP: 0018:ffff9a1a00b63dc0 EFLAGS: 00010286
[ 7739.335749] RAX: 0000000000000000 RBX: 000000000000c030 RCX: 0000000000000027
[ 7739.335749] RDX: ffff8c059dc219c8 RSI: 0000000000000001 RDI: ffff8c059dc219c0
[ 7739.335750] RBP: ffff8bf6884dcce8 R08: 0000000000000000 R09: ffff9a1a00b63c40
[ 7739.335751] R10: ffff8c059d7fffa8 R11: 0000000000000003 R12: 0000000000000000
[ 7739.335752] R13: 0000000000000000 R14: ffff8bf6884c1bc0 R15: 000000000000c030
[ 7739.335753] FS:  0000000000000000(0000) GS:ffff8c059dc00000(0000)
knlGS:0000000000000000
[ 7739.335754] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[ 7739.335755] CR2: 00007979dad8e000 CR3: 000000024393a000 CR4: 0000000000f50ef0
[ 7739.335756] PKRU: 55555554
[ 7739.335756] Call Trace:
[ 7739.335758]  <TASK>
[ 7739.335759]  ? igc_rd32+0x88/0xa0 [igc
db016c4dcf218e02fb0350dc28f6cc3c425bfd00]
[ 7739.335762]  ? __warn.cold+0x8e/0xe8
[ 7739.335764]  ? igc_rd32+0x88/0xa0 [igc
db016c4dcf218e02fb0350dc28f6cc3c425bfd00]
[ 7739.335768]  ? report_bug+0xff/0x140
[ 7739.335771]  ? handle_bug+0x3c/0x80
[ 7739.335773]  ? exc_invalid_op+0x17/0x70
[ 7739.335774]  ? asm_exc_invalid_op+0x1a/0x20
[ 7739.335778]  ? igc_rd32+0x88/0xa0 [igc
db016c4dcf218e02fb0350dc28f6cc3c425bfd00]
[ 7739.335781]  igc_update_stats+0x8a/0x6d0 [igc
db016c4dcf218e02fb0350dc28f6cc3c425bfd00]
[ 7739.335784]  igc_watchdog_task+0x9e/0x2b0 [igc
db016c4dcf218e02fb0350dc28f6cc3c425bfd00]
[ 7739.335787]  ? srso_alias_return_thunk+0x5/0xfbef5
[ 7739.335789]  process_one_work+0x17b/0x330
[ 7739.335792]  worker_thread+0x2e2/0x410
[ 7739.335794]  ? __pfx_worker_thread+0x10/0x10
[ 7739.335795]  kthread+0xcf/0x100
[ 7739.335797]  ? __pfx_kthread+0x10/0x10
[ 7739.335799]  ret_from_fork+0x31/0x50
[ 7739.335801]  ? __pfx_kthread+0x10/0x10
[ 7739.335803]  ret_from_fork_asm+0x1a/0x30
[ 7739.335806]  </TASK>
[ 7739.335807] ---[ end trace 0000000000000000 ]---

Unloading the igc module (`rmmod igc`) and attempting to reload it
(`modprobe igc`) results in:

[ 8470.524688] igc 0000:0c:00.0 eno1: PHC removed
[ 8479.089035] Intel(R) 2.5G Ethernet Linux Driver
[ 8479.089038] Copyright(c) 2018 Intel Corporation.
[ 8479.089074] igc 0000:0c:00.0: enabling device (0000 -> 0002)
[ 8479.089157] igc 0000:0c:00.0: PCIe PTM not supported by PCIe bus/controller
[ 8479.089267] igc 0000:0c:00.0 (unnamed net_device) (uninitialized):
PCIe link lost, device now detached
[ 8479.089271] ------------[ cut here ]------------
[ 8479.089272] igc: Failed to read reg 0x10!
[ 8479.089278] WARNING: CPU: 18 PID: 8068 at
drivers/net/ethernet/intel/igc/igc_main.c:6752 igc_rd32+0x88/0xa0
[igc]
[ 8479.089287] Modules linked in: igc(+) snd_usb_audio snd_usbmidi_lib
snd_ump snd_rawmidi snd_seq_device mc vfat fat amd_atl intel_rapl_msr
intel_rapl_common eeepc_wmi kvm_amd asus_wmi iwl
mvm platform_profile kvm mac80211 snd_hda_codec_hdmi crct10dif_pclmul
crc32_pclmul polyval_clmulni snd_hda_intel libarc4 polyval_generic
gf128mul snd_intel_dspcfg ghash_clmulni_intel snd_in
tel_sdw_acpi sha512_ssse3 snd_hda_codec btusb sha256_ssse3 btrtl
iwlwifi sha1_ssse3 snd_hda_core btintel aesni_intel snd_hwdep btbcm
i8042 btmtk crypto_simd snd_pcm cryptd sparse_keymap cfg
80211 sp5100_tco bluetooth serio snd_timer wmi_bmof rapl ccp pcspkr
k10temp i2c_piix4 snd ptp soundcore rfkill pps_core mousedev joydev
gpio_amdpt gpio_generic mac_hid i2c_dev crypto_user d
m_mod loop nfnetlink ip_tables x_tables ext4 crc32c_generic crc16
mbcache jbd2 hid_generic usbhid amdgpu amdxcp i2c_algo_bit
drm_ttm_helper ttm drm_exec gpu_sched drm_suballoc_helper nvme d
rm_buddy crc32c_intel drm_display_helper nvme_core xhci_pci
xhci_pci_renesas cec nvme_auth
[ 8479.089347]  video wmi [last unloaded: igc]
[ 8479.089351] CPU: 18 PID: 8068 Comm: modprobe Tainted: G        W
      6.10.9-arch1-2 #1 a989aa0dc21f9aeaff91174d1be29ed5a93040b7
[ 8479.089354] Hardware name: ASUS System Product Name/ROG STRIX
X670E-E GAMING WIFI, BIOS 2007 04/12/2024
[ 8479.089355] RIP: 0010:igc_rd32+0x88/0xa0 [igc]
[ 8479.089362] Code: 48 c7 c6 30 d9 77 c1 e8 56 1a 11 d2 48 8b bd 28
ff ff ff e8 fa 06 a4 d1 84 c0 74 c5 89 de 48 c7 c7 58 d9 77 c1 e8 48
a5 38 d1 <0f> 0b eb b3 83 c8 ff e9 47 54 3d d2 66 6
6 2e 0f 1f 84 00 00 00 00
[ 8479.089364] RSP: 0018:ffff9a1a0bcf78d0 EFLAGS: 00010282
[ 8479.089366] RAX: 0000000000000000 RBX: 0000000000000010 RCX: 0000000000000027
[ 8479.089367] RDX: ffff8c059e1219c8 RSI: 0000000000000001 RDI: ffff8c059e1219c0
[ 8479.089369] RBP: ffff8bf6ff5aece8 R08: 0000000000000000 R09: ffff9a1a0bcf7750
[ 8479.089370] R10: ffff8c059d7fffa8 R11: 0000000000000003 R12: ffff8bf682b530c8
[ 8479.089371] R13: ffff8bf6ff5ae9e0 R14: ffff8bf6ff5ae000 R15: ffff8bf6ff5aece8
[ 8479.089372] FS:  0000725733590740(0000) GS:ffff8c059e100000(0000)
knlGS:0000000000000000
[ 8479.089374] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[ 8479.089375] CR2: 00007ffd756fc798 CR3: 000000017c168000 CR4: 0000000000f50ef0
[ 8479.089377] PKRU: 55555554
[ 8479.089378] Call Trace:
[ 8479.089379]  <TASK>
[ 8479.089380]  ? igc_rd32+0x88/0xa0 [igc
db016c4dcf218e02fb0350dc28f6cc3c425bfd00]
[ 8479.089385]  ? __warn.cold+0x8e/0xe8
[ 8479.089389]  ? igc_rd32+0x88/0xa0 [igc
db016c4dcf218e02fb0350dc28f6cc3c425bfd00]
[ 8479.089394]  ? report_bug+0xff/0x140
[ 8479.089398]  ? handle_bug+0x3c/0x80
[ 8479.089401]  ? exc_invalid_op+0x17/0x70
[ 8479.089402]  ? asm_exc_invalid_op+0x1a/0x20
[ 8479.089407]  ? igc_rd32+0x88/0xa0 [igc
db016c4dcf218e02fb0350dc28f6cc3c425bfd00]
[ 8479.089412]  igc_get_invariants_base+0x9a/0x270 [igc
db016c4dcf218e02fb0350dc28f6cc3c425bfd00]
[ 8479.089419]  igc_probe+0x2cd/0x8e0 [igc
db016c4dcf218e02fb0350dc28f6cc3c425bfd00]
[ 8479.089425]  local_pci_probe+0x42/0x90
[ 8479.089429]  pci_device_probe+0xbd/0x290
[ 8479.089431]  ? srso_alias_return_thunk+0x5/0xfbef5
[ 8479.089433]  ? sysfs_do_create_link_sd+0x6e/0xe0
[ 8479.089437]  really_probe+0xdb/0x340
[ 8479.089439]  ? pm_runtime_barrier+0x54/0x90
[ 8479.089443]  ? __pfx___driver_attach+0x10/0x10
[ 8479.089445]  __driver_probe_device+0x78/0x110
[ 8479.089447]  driver_probe_device+0x1f/0xa0
[ 8479.089450]  __driver_attach+0xba/0x1c0
[ 8479.089452]  bus_for_each_dev+0x8c/0xe0
[ 8479.089455]  bus_add_driver+0x112/0x1f0
[ 8479.089458]  driver_register+0x72/0xd0
[ 8479.089460]  ? __pfx_igc_init_module+0x10/0x10 [igc
db016c4dcf218e02fb0350dc28f6cc3c425bfd00]
[ 8479.089466]  do_one_initcall+0x58/0x310
[ 8479.089470]  do_init_module+0x60/0x220
[ 8479.089473]  init_module_from_file+0x89/0xe0
[ 8479.089478]  idempotent_init_module+0x121/0x320
[ 8479.089482]  __x64_sys_finit_module+0x5e/0xb0
[ 8479.089484]  do_syscall_64+0x82/0x190
[ 8479.089489]  ? srso_alias_return_thunk+0x5/0xfbef5
[ 8479.089490]  ? vfs_read+0x159/0x370
[ 8479.089494]  ? srso_alias_return_thunk+0x5/0xfbef5
[ 8479.089495]  ? syscall_exit_to_user_mode+0x72/0x200
[ 8479.089498]  ? srso_alias_return_thunk+0x5/0xfbef5
[ 8479.089499]  ? do_syscall_64+0x8e/0x190
[ 8479.089502]  ? srso_alias_return_thunk+0x5/0xfbef5
[ 8479.089503]  ? srso_alias_return_thunk+0x5/0xfbef5
[ 8479.089505]  ? syscall_exit_to_user_mode+0x72/0x200
[ 8479.089506]  ? srso_alias_return_thunk+0x5/0xfbef5
[ 8479.089508]  ? do_syscall_64+0x8e/0x190
[ 8479.089510]  ? srso_alias_return_thunk+0x5/0xfbef5
[ 8479.089511]  ? handle_mm_fault+0x1f0/0x300
[ 8479.089514]  ? srso_alias_return_thunk+0x5/0xfbef5
[ 8479.089516]  ? do_user_addr_fault+0x36c/0x620
[ 8479.089519]  ? srso_alias_return_thunk+0x5/0xfbef5
[ 8479.089520]  ? srso_alias_return_thunk+0x5/0xfbef5
[ 8479.089522]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
[ 8479.089525] RIP: 0033:0x725732f261fd
[ 8479.089540] Code: ff c3 66 2e 0f 1f 84 00 00 00 00 00 90 f3 0f 1e
fa 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24
08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d e3 f
a 0c 00 f7 d8 64 89 01 48
[ 8479.089541] RSP: 002b:00007ffd756ff778 EFLAGS: 00000246 ORIG_RAX:
0000000000000139
[ 8479.089543] RAX: ffffffffffffffda RBX: 000065534c46cc10 RCX: 0000725732f261fd
[ 8479.089544] RDX: 0000000000000004 RSI: 000065531d908c03 RDI: 0000000000000003
[ 8479.089545] RBP: 00007ffd756ff830 R08: 0000725732ff6b20 R09: 00007ffd756ff7c0
[ 8479.089546] R10: 000065534c46d3d0 R11: 0000000000000246 R12: 000065531d908c03
[ 8479.089547] R13: 0000000000040000 R14: 000065534c46cd20 R15: 000065534c46d850
[ 8479.089550]  </TASK>
[ 8479.089551] ---[ end trace 0000000000000000 ]---
[ 8518.483297] igc 0000:0c:00.0: probe with driver igc failed with error -13

Kind regards,
 Jesper Juhl


On Wed, 11 Sept 2024 at 17:10, Jesper Juhl <jesperjuhl76@gmail.com> wrote:
>
> Hi there
>
> Over the past couple of months I've occasionally observed my machine
> loosing its ethernet connection.
>
> It usually only happens after I've been using the machine for a couple
> of hours and it only happens around 3-4 times per month.
> Every time (previously) I've just rebooted the machine and then things
> were fine when it came back up, but the last time it happened I took a
> look at 'dmesg' to see if there was a clue and I found this:
>
> [   11.474412] igc 0000:0c:00.0 eno1: NIC Link is Up 2500 Mbps Full
> Duplex, Flow Control: RX/TX
> [   11.475554] igc 0000:0c:00.0 eno1: Force mode currently not supported
> [   14.363040] usbcore: registered new interface driver snd-usb-audio
> [   15.934429] igc 0000:0c:00.0 eno1: NIC Link is Up 2500 Mbps Full
> Duplex, Flow Control: RX/TX
> [   37.250435] systemd-journald[569]: Time jumped backwards, rotating.
> [   38.593498] warning: `kdeconnectd' uses wireless extensions which
> will stop working for Wi-Fi 7 hardware; use nl80211
> [  352.786791] usb 3-2: new high-speed USB device number 7 using xhci_hcd
> [15656.628279] igc 0000:0c:00.0 eno1: PCIe link lost, device now detached
> [15656.628287] ------------[ cut here ]------------
> [15656.628287] igc: Failed to read reg 0xc030!
> [15656.628306] WARNING: CPU: 2 PID: 2383 at
> drivers/net/ethernet/intel/igc/igc_main.c:6752 igc_rd32+0x88/0xa0
> [igc]
> [15656.628313] Modules linked in: snd_usb_audio snd_usbmidi_lib
> snd_ump snd_rawmidi snd_seq_device mc vfat fat amd_atl intel_rapl_msr
> intel_rapl_common kvm_amd iwlmvm eeepc_wmi asus_nb_wmi
> kvm asus_wmi crct10dif_pclmul platform_profile mac80211
> snd_hda_codec_hdmi crc32_pclmul snd_hda_intel polyval_clmulni libarc4
> polyval_generic snd_intel_dspcfg gf128mul snd_intel_sdw_acpi bt
> usb ghash_clmulni_intel snd_hda_codec btrtl iwlwifi sha512_ssse3
> btintel sha256_ssse3 snd_hda_core sha1_ssse3 btbcm aesni_intel
> snd_hwdep btmtk crypto_simd i8042 snd_pcm cryptd cfg80211 spa
> rse_keymap bluetooth sp5100_tco snd_timer serio wmi_bmof rapl pcspkr
> k10temp ccp igc i2c_piix4 snd ptp soundcore rfkill joydev pps_core
> mousedev gpio_amdpt gpio_generic mac_hid i2c_dev cryp
> to_user loop dm_mod nfnetlink ip_tables x_tables ext4 crc32c_generic
> crc16 mbcache jbd2 hid_generic usbhid amdgpu amdxcp i2c_algo_bit
> drm_ttm_helper ttm drm_exec gpu_sched drm_suballoc_help
> er nvme drm_buddy drm_display_helper crc32c_intel nvme_core xhci_pci
> xhci_pci_renesas cec
> [15656.628364]  video nvme_auth wmi
> [15656.628368] CPU: 2 PID: 2383 Comm: btop Not tainted 6.10.8-arch1-1
> #1 a95ab4cbeff058332c57c6b7bbc94a2b00a74ca7
> [15656.628370] Hardware name: ASUS System Product Name/ROG STRIX
> X670E-E GAMING WIFI, BIOS 2007 04/12/2024
> [15656.628371] RIP: 0010:igc_rd32+0x88/0xa0 [igc]
> [15656.628374] Code: 48 c7 c6 30 f9 7e c1 e8 56 3a 27 d3 48 8b bd 28
> ff ff ff e8 ba 26 ba d2 84 c0 74 c5 89 de 48 c7 c7 58 f9 7e c1 e8 48
> c5 4e d2 <0f> 0b eb b3 83 c8 ff e9 47 74 53 d3 66 6
> 6 2e 0f 1f 84 00 00 00 00
> [15656.628375] RSP: 0018:ffffb74248adf338 EFLAGS: 00010286
> [15656.628377] RAX: 0000000000000000 RBX: 000000000000c030 RCX: 0000000000000027
> [15656.628378] RDX: ffff97821d9219c8 RSI: 0000000000000001 RDI: ffff97821d9219c0
> [15656.628379] RBP: ffff9773078cece8 R08: 0000000000000000 R09: ffffb74248adf1b8
> [15656.628379] R10: ffff97821d7fffa8 R11: 0000000000000003 R12: 0000000000000000
> [15656.628380] R13: 0000000000000000 R14: ffff97731260abc0 R15: 000000000000c030
> [15656.628381] FS:  00007113194006c0(0000) GS:ffff97821d900000(0000)
> knlGS:0000000000000000
> [15656.628382] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [15656.628383] CR2: 00007e621ecb2000 CR3: 00000001153b6000 CR4: 0000000000f50ef0
> [15656.628384] PKRU: 55555554
> [15656.628385] Call Trace:
> [15656.628387]  <TASK>
> [15656.628388]  ? igc_rd32+0x88/0xa0 [igc
> 22e0a697bfd5a86bd5c20d279bfffd131de6bb32]
> [15656.628391]  ? __warn.cold+0x8e/0xe8
> [15656.628393]  ? igc_rd32+0x88/0xa0 [igc
> 22e0a697bfd5a86bd5c20d279bfffd131de6bb32]
> [15656.628398]  ? report_bug+0xff/0x140
> [15656.628400]  ? console_unlock+0x84/0x130
> [15656.628402]  ? handle_bug+0x3c/0x80
> [15656.628404]  ? exc_invalid_op+0x17/0x70
> [15656.628405]  ? asm_exc_invalid_op+0x1a/0x20
> [15656.628408]  ? igc_rd32+0x88/0xa0 [igc
> 22e0a697bfd5a86bd5c20d279bfffd131de6bb32]
> [15656.628411]  ? igc_rd32+0x88/0xa0 [igc
> 22e0a697bfd5a86bd5c20d279bfffd131de6bb32]
> [15656.628414]  igc_update_stats+0x8a/0x6d0 [igc
> 22e0a697bfd5a86bd5c20d279bfffd131de6bb32]
> [15656.628417]  igc_get_stats64+0x85/0x90 [igc
> 22e0a697bfd5a86bd5c20d279bfffd131de6bb32]
> [15656.628420]  dev_get_stats+0x5d/0x130
> [15656.628422]  rtnl_fill_stats+0x3b/0x130
> [15656.628425]  rtnl_fill_ifinfo.isra.0+0x779/0x1520
> [15656.628426]  ? nla_reserve_64bit+0x30/0x40
> [15656.628430]  rtnl_dump_ifinfo+0x4af/0x650
> [15656.628438]  ? srso_alias_return_thunk+0x5/0xfbef5
> [15656.628439]  ? kmalloc_reserve+0x62/0xf0
> [15656.628442]  rtnl_dumpit+0x1c/0x60
> [15656.628444]  netlink_dump+0x347/0x3b0
> [15656.628449]  __netlink_dump_start+0x1eb/0x310
> [15656.628451]  ? __pfx_rtnl_dump_ifinfo+0x10/0x10
> [15656.628452]  rtnetlink_rcv_msg+0x2aa/0x3f0
> [15656.628454]  ? __pfx_rtnl_dumpit+0x10/0x10
> [15656.628456]  ? __pfx_rtnl_dump_ifinfo+0x10/0x10
> [15656.628457]  ? __pfx_rtnetlink_rcv_msg+0x10/0x10
> [15656.628459]  netlink_rcv_skb+0x50/0x100
> [15656.628463]  netlink_unicast+0x240/0x370
> [15656.628465]  netlink_sendmsg+0x21b/0x470
> [15656.628468]  __sys_sendto+0x201/0x210
> [15656.628473]  __x64_sys_sendto+0x24/0x30
> [15656.628474]  do_syscall_64+0x82/0x190
> [15656.628476]  ? srso_alias_return_thunk+0x5/0xfbef5
> [15656.628477]  ? syscall_exit_to_user_mode+0x72/0x200
> [15656.628479]  ? srso_alias_return_thunk+0x5/0xfbef5
> [15656.628480]  ? do_syscall_64+0x8e/0x190
> [15656.628482]  ? srso_alias_return_thunk+0x5/0xfbef5
> [15656.628483]  ? seq_read_iter+0x208/0x460
> [15656.628485]  ? srso_alias_return_thunk+0x5/0xfbef5
> [15656.628486]  ? update_curr+0x26/0x1f0
> [15656.628488]  ? srso_alias_return_thunk+0x5/0xfbef5
> [15656.628489]  ? reweight_entity+0x1c4/0x260
> [15656.628490]  ? srso_alias_return_thunk+0x5/0xfbef5
> [15656.628492]  ? srso_alias_return_thunk+0x5/0xfbef5
> [15656.628493]  ? task_tick_fair+0x40/0x420
> [15656.628494]  ? srso_alias_return_thunk+0x5/0xfbef5
> [15656.628495]  ? sched_use_asym_prio+0x66/0x90
> [15656.628496]  ? srso_alias_return_thunk+0x5/0xfbef5
> [15656.628497]  ? sched_balance_trigger+0x14c/0x340
> [15656.628499]  ? srso_alias_return_thunk+0x5/0xfbef5
> [15656.628500]  ? srso_alias_return_thunk+0x5/0xfbef5
> [15656.628501]  ? rcu_accelerate_cbs+0x7a/0x80
> [15656.628503]  ? srso_alias_return_thunk+0x5/0xfbef5
> [15656.628504]  ? __note_gp_changes+0x18b/0x1a0
> [15656.628506]  ? srso_alias_return_thunk+0x5/0xfbef5
> [15656.628507]  ? note_gp_changes+0x6c/0x80
> [15656.628508]  ? srso_alias_return_thunk+0x5/0xfbef5
> [15656.628509]  ? srso_alias_return_thunk+0x5/0xfbef5
> [15656.628510]  ? srso_alias_return_thunk+0x5/0xfbef5
> [15656.628511]  ? __rseq_handle_notify_resume+0xa6/0x490
> [15656.628514]  ? srso_alias_return_thunk+0x5/0xfbef5
> [15656.628515]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
> [15656.628517] RIP: 0033:0x71131b12a8e4
> [15656.628531] Code: 7d e8 89 4d d4 e8 fc 49 f7 ff 44 8b 4d d0 4c 8b
> 45 c8 89 c3 44 8b 55 d4 8b 7d e8 b8 2c 00 00 00 48 8b 55 d8 48 8b 75
> e0 0f 05 <48> 3d 00 f0 ff ff 77 34 89 df 48 89 45 e
> 8 e8 49 4a f7 ff 48 8b 45
> [15656.628532] RSP: 002b:00007113193ff0b0 EFLAGS: 00000293 ORIG_RAX:
> 000000000000002c
> [15656.628533] RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 000071131b12a8e4
> [15656.628534] RDX: 0000000000000014 RSI: 00007113193ff180 RDI: 0000000000000003
> [15656.628535] RBP: 00007113193ff0f0 R08: 00007113193ff140 R09: 000000000000000c
> [15656.628536] R10: 0000000000000000 R11: 0000000000000293 R12: 00007113193ff270
> [15656.628536] R13: 00007113193ff180 R14: 00007113193ffca8 R15: 00007113193ff780
> [15656.628539]  </TASK>
> [15656.628540] ---[ end trace 0000000000000000 ]---
>
> I tried reloading the 'igc' module, but that didn't resolve the issue
> - then I rebooted as usual and everything was fine again.
>
> My NIC is (from `lspci -vvv`):
> 0c:00.0 Ethernet controller: Intel Corporation Ethernet Controller
> I225-V (rev 03)
>        DeviceName: Intel 2.5G LAN
>        Subsystem: ASUSTeK Computer Inc. Device 87d2
>        Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop-
> ParErr- Stepping- SERR- FastB2B- DisINTx+
>        Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort-
> <TAbort- <MAbort- >SERR- <PERR- INTx-
>        Latency: 0, Cache Line Size: 64 bytes
>        Interrupt: pin A routed to IRQ 36
>        IOMMU group: 19
>        Region 0: Memory at 80100000 (32-bit, non-prefetchable) [size=1M]
>        Region 3: Memory at 80200000 (32-bit, non-prefetchable) [size=16K]
>        Capabilities: [40] Power Management version 3
>                Flags: PMEClk- DSI+ D1- D2- AuxCurrent=0mA
> PME(D0+,D1-,D2-,D3hot+,D3cold+)
>                Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=1 PME-
>        Capabilities: [50] MSI: Enable- Count=1/1 Maskable+ 64bit+
>                Address: 0000000000000000  Data: 0000
>                Masking: 00000000  Pending: 00000000
>        Capabilities: [70] MSI-X: Enable+ Count=5 Masked-
>                Vector table: BAR=3 offset=00000000
>                PBA: BAR=3 offset=00002000
>        Capabilities: [a0] Express (v2) Endpoint, IntMsgNum 0
>                DevCap: MaxPayload 512 bytes, PhantFunc 0, Latency L0s
> <512ns, L1 <64us
>                        ExtTag- AttnBtn- AttnInd- PwrInd- RBE+ FLReset+
> SlotPowerLimit 0W TEE-IO-
>                DevCtl: CorrErr+ NonFatalErr+ FatalErr+ UnsupReq+
>                        RlxdOrd+ ExtTag- PhantFunc- AuxPwr- NoSnoop+ FLReset-
>                        MaxPayload 128 bytes, MaxReadReq 512 bytes
>                DevSta: CorrErr- NonFatalErr- FatalErr- UnsupReq-
> AuxPwr+ TransPend-
>                LnkCap: Port #1, Speed 5GT/s, Width x1, ASPM L1, Exit
> Latency L1 <4us
>                        ClockPM- Surprise- LLActRep- BwNot- ASPMOptComp+
>                LnkCtl: ASPM L1 Enabled; RCB 64 bytes, LnkDisable- CommClk+
>                        ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
>                LnkSta: Speed 5GT/s, Width x1
>                        TrErr- Train- SlotClk+ DLActive- BWMgmt- ABWMgmt-
>                DevCap2: Completion Timeout: Range ABCD, TimeoutDis+
> NROPrPrP- LTR+
>                         10BitTagComp- 10BitTagReq- OBFF Not Supported,
> ExtFmt- EETLPPrefix-
>                         EmergencyPowerReduction Not Supported,
> EmergencyPowerReductionInit-
>                         FRS- TPHComp- ExtTPHComp-
>                         AtomicOpsCap: 32bit- 64bit- 128bitCAS-
>                DevCtl2: Completion Timeout: 50us to 50ms, TimeoutDis-
>                         AtomicOpsCtl: ReqEn-
>                         IDOReq- IDOCompl- LTR+ EmergencyPowerReductionReq-
>                         10BitTagReq- OBFF Disabled, EETLPPrefixBlk-
>                LnkCtl2: Target Link Speed: 5GT/s, EnterCompliance- SpeedDis-
>                         Transmit Margin: Normal Operating Range,
> EnterModifiedCompliance- ComplianceSOS-
>                         Compliance Preset/De-emphasis: -6dB
> de-emphasis, 0dB preshoot
>                LnkSta2: Current De-emphasis Level: -6dB,
> EqualizationComplete- EqualizationPhase1-
>                         EqualizationPhase2- EqualizationPhase3-
> LinkEqualizationRequest-
>                         Retimer- 2Retimers- CrosslinkRes: unsupported
>        Capabilities: [100 v2] Advanced Error Reporting
>                UESta:  DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt-
> UnxCmplt- RxOF- MalfTLP-
>                        ECRC- UnsupReq- ACSViol- UncorrIntErr-
> BlockedTLP- AtomicOpBlocked- TLPBlockedErr-
>                        PoisonTLPBlocked- DMWrReqBlocked- IDECheck-
> MisIDETLP- PCRC_CHECK- TLPXlatBlocked-
>                UEMsk:  DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt-
> UnxCmplt- RxOF- MalfTLP-
>                        ECRC- UnsupReq- ACSViol- UncorrIntErr-
> BlockedTLP- AtomicOpBlocked- TLPBlockedErr-
>                        PoisonTLPBlocked- DMWrReqBlocked- IDECheck-
> MisIDETLP- PCRC_CHECK- TLPXlatBlocked-
>                UESvrt: DLP+ SDES+ TLP- FCP+ CmpltTO- CmpltAbrt-
> UnxCmplt- RxOF+ MalfTLP+
>                        ECRC- UnsupReq- ACSViol- UncorrIntErr+
> BlockedTLP- AtomicOpBlocked- TLPBlockedErr-
>                        PoisonTLPBlocked- DMWrReqBlocked- IDECheck-
> MisIDETLP- PCRC_CHECK- TLPXlatBlocked-
>                CESta:  RxErr- BadTLP- BadDLLP- Rollover- Timeout-
> AdvNonFatalErr- CorrIntErr- HeaderOF-
>                CEMsk:  RxErr- BadTLP- BadDLLP- Rollover- Timeout-
> AdvNonFatalErr+ CorrIntErr- HeaderOF-
>                AERCap: First Error Pointer: 14, ECRCGenCap+ ECRCGenEn-
> ECRCChkCap+ ECRCChkEn-
>                        MultHdrRecCap- MultHdrRecEn- TLPPfxPres- HdrLogCap-
>                HeaderLog: 40001001 0000000f 8020000c 8020000c
>        Capabilities: [140 v1] Device Serial Number a0-36-bc-ff-ff-ac-b3-b6
>        Capabilities: [1c0 v1] Latency Tolerance Reporting
>                Max snoop latency: 0ns
>                Max no snoop latency: 0ns
>        Capabilities: [1f0 v1] Precision Time Measurement
>                PTMCap: Requester+ Responder- Root-
>                PTMClockGranularity: 4ns
>                PTMControl: Enabled- RootSelected-
>                PTMEffectiveGranularity: Unknown
>        Capabilities: [1e0 v1] L1 PM Substates
>                L1SubCap: PCI-PM_L1.2- PCI-PM_L1.1+ ASPM_L1.2-
> ASPM_L1.1+ L1_PM_Substates+
>                L1SubCtl1: PCI-PM_L1.2- PCI-PM_L1.1- ASPM_L1.2- ASPM_L1.1-
>                L1SubCtl2:
>        Kernel driver in use: igc
>
> My distribution is Arch Linux.
>
> My motherboard is a ASUS X670E-E running a AMD 7950X CPU and using 64G
> of RAM at EXPO 6000 speed.
>
> My kernel is: 6.10.9-arch1-1 #1 SMP PREEMPT_DYNAMIC Mon, 09 Sep 2024
> 02:38:45 +0000 x86_64 GNU/Linux
>
> I'm connected to a 2.5GiB/sec switch that doesn't seem to have any
> problems serving other machines when this happens.
>
> I can provide further hardware details upon request, just let me know
> what info you need.
> I'm perfectly willing to try custom kernels and/or patches, just let
> me know what you need me to try/build/test.
>
> Kind regards,
>  Jesper Juhl
