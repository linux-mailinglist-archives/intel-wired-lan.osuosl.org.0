Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CD4436C2699
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Mar 2023 01:56:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6575260FDB;
	Tue, 21 Mar 2023 00:56:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6575260FDB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679360175;
	bh=vB+1rHm6FX0N/DxDTRbIEWLMMzGugnK1kUMFKTNXzWo=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DkXqOgSJLH0CERunW5JmfNk5cfHF7c/vrKr/BChEUj9UxqsvmRd6RY/zbFUF69WBN
	 lsD5XO710bi5fANVXnl7SAq9duya2WzdTUmv3vEfIzdnwX3N8Qz9Grx+FyYQFkU04z
	 DPWj5aBsWlUV4wznyvTt33I0EMsXgWNBJFmJ2NT6MjVrx4qhtg9agYEzenqvODE9Af
	 oV9u15k7Ied/+WuPMy4o+GVS3vv1kXBBoRYHOALPybVAX0Wwjv+FCFX6f336JVpWbK
	 oO4z8jG+HtQSkvcT1MkstFCH6RZFm8by6WGQWOVEBy1UUZCwGt3/GqV6LqMbXsMWKz
	 TvVeJbza51lvg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eRnqMJ_MqNWX; Tue, 21 Mar 2023 00:56:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B227360EC6;
	Tue, 21 Mar 2023 00:56:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B227360EC6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E39951BF40D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 00:56:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BCD9340AA9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 00:56:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BCD9340AA9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4l4xOk-Ums4x for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Mar 2023 00:56:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D3B24400FC
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D3B24400FC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 00:56:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="336318207"
X-IronPort-AV: E=Sophos;i="5.98,277,1673942400"; d="scan'208";a="336318207"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 17:56:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="631348016"
X-IronPort-AV: E=Sophos;i="5.98,277,1673942400"; d="scan'208";a="631348016"
Received: from vcostago-desk1.jf.intel.com (HELO vcostago-desk1)
 ([10.54.70.17])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 17:56:03 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Can Net <netcan1996@gmail.com>, dvorax.fuxbrumer@linux.intel.com,
 anthony.l.nguyen@intel.com
In-Reply-To: <CAHN_zNRo0y+NRw_6B2tGv8EnS5KnqnzsPYNs3wF+Pk1rS3hSNQ@mail.gmail.com>
References: <CAHN_zNRo0y+NRw_6B2tGv8EnS5KnqnzsPYNs3wF+Pk1rS3hSNQ@mail.gmail.com>
Date: Mon, 20 Mar 2023 17:56:03 -0700
Message-ID: <87355yq5wc.fsf@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679360164; x=1710896164;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=tQfyUIAcxqWHtC6BhaCP1H26gI5lAsor2BJMm12TM80=;
 b=K5zdvS+pGqAvDaDeaoA0klVtpgJrd3pgw79Lpz8URKxKYLmrrMxvfjEL
 zs7ZDaalalxu6GNvuZPuOnmhQ1dtJPt1G7YTTqMwlcATga4oNECa1F1fh
 eNgh8RJg2f+UEh3lB02WV5bcMX+X/TntM/jU5DCIHBnEU2a95o0dlIP60
 P03ysHfNsi5BNHyc4UtxyZKqQ+o7HGtlR59lgGY5MD8E58SqewtUjR0lR
 If0aizVgmgSIABa+NHZ6SpHrmDWZ5hVsG9QvIvz6cm6eosDxjA6vjzaXj
 YijLj53Wfo/3wzqSxMOxOOY7lVLkch+Wlml3j54L1l7cACa9MeY8QmSkU
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=K5zdvS+p
Subject: Re: [Intel-wired-lan] use-after-free during reset bug report for
 igc driver at linux 6.1.0-6
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

+CC intel-wired-lan


Can Net <netcan1996@gmail.com> writes:

> Hello developers!
> I find a use-after-free during reset bug at Linux 6.1.0-6(Debian testing)
> My i225-v NUC connected to an ac66u router 1Gbps port, sometimes it caused
> that router reboot, and later i225-v igc driver down caused kernel to hang.
> I searched the kernel patch that repaired it(
> https://github.com/torvalds/linux/commit/56ea7ed103b46970e171eb1c95916f393d64eeff),
> but it reappear.
>
> thank you for your time.
>
> here is my kernel log:
> ```

[...]

> Mar 18 12:38:38 intel-n100 kernel: igc 0000:02:00.0 enp2s0: NIC Link is Down
> Mar 18 12:38:38 intel-n100 kernel: virt-br0: port 1(enp2s0) entered
> disabled state
> Mar 18 12:38:38 intel-n100 kernel: igc 0000:02:00.0 enp2s0: Register Dump
> Mar 18 12:38:38 intel-n100 kernel: igc 0000:02:00.0 enp2s0: Register Name
> Value
> Mar 18 12:38:38 intel-n100 kernel: igc 0000:02:00.0 enp2s0: CTRL
>  181c0641
> Mar 18 12:38:38 intel-n100 kernel: igc 0000:02:00.0 enp2s0: STATUS
>  40280691
> Mar 18 12:38:38 intel-n100 kernel: igc 0000:02:00.0 enp2s0: CTRL_EXT
>  100000c0
> Mar 18 12:38:38 intel-n100 kernel: igc 0000:02:00.0 enp2s0: MDIC
>  18017949
> Mar 18 12:38:38 intel-n100 kernel: igc 0000:02:00.0 enp2s0: ICR
> 00000000
> Mar 18 12:38:38 intel-n100 kernel: igc 0000:02:00.0 enp2s0: RCTL
>  0440803a
> Mar 18 12:38:38 intel-n100 kernel: igc 0000:02:00.0 enp2s0: RDLEN[0-3]
>  00001000 00001000 00001000 00001000
> Mar 18 12:38:38 intel-n100 kernel: igc 0000:02:00.0 enp2s0: RDH[0-3]
>  00000014 00000018 000000c5 000000fe
> Mar 18 12:38:38 intel-n100 kernel: igc 0000:02:00.0 enp2s0: RDT[0-3]
>  00000013 00000017 000000c4 000000fd
> Mar 18 12:38:38 intel-n100 kernel: igc 0000:02:00.0 enp2s0: RXDCTL[0-3]
> 02040808 02040808 02040808 02040808
> Mar 18 12:38:38 intel-n100 kernel: igc 0000:02:00.0 enp2s0: RDBAL[0-3]
>  ffffb000 ffffa000 ffff9000 ffff8000
> Mar 18 12:38:38 intel-n100 kernel: igc 0000:02:00.0 enp2s0: RDBAH[0-3]
>  00000000 00000000 00000000 00000000
> Mar 18 12:38:38 intel-n100 kernel: igc 0000:02:00.0 enp2s0: TCTL
>  a503f0fa
> Mar 18 12:38:38 intel-n100 kernel: igc 0000:02:00.0 enp2s0: TDBAL[0-3]
>  fffff000 ffffe000 ffffd000 ffffc000
> Mar 18 12:38:38 intel-n100 kernel: igc 0000:02:00.0 enp2s0: TDBAH[0-3]
>  00000000 00000000 00000000 00000000
> Mar 18 12:38:38 intel-n100 kernel: igc 0000:02:00.0 enp2s0: TDLEN[0-3]
>  00001000 00001000 00001000 00001000
> Mar 18 12:38:38 intel-n100 kernel: igc 0000:02:00.0 enp2s0: TDH[0-3]
>  00000017 0000005d 00000019 00000028
> Mar 18 12:38:38 intel-n100 kernel: igc 0000:02:00.0 enp2s0: TDT[0-3]
>  00000036 0000006f 00000029 0000003f
> Mar 18 12:38:38 intel-n100 kernel: igc 0000:02:00.0 enp2s0: TXDCTL[0-3]
> 02100108 02100108 02100108 02100108
> Mar 18 12:38:38 intel-n100 kernel: igc 0000:02:00.0 enp2s0: Reset adapter
> Mar 18 12:38:41 intel-n100 kernel: igc 0000:02:00.0 enp2s0: NIC Link is Up
> 1000 Mbps Full Duplex, Flow Control: RX/TX
> Mar 18 12:38:41 intel-n100 kernel: virt-br0: port 1(enp2s0) entered
> blocking state
> Mar 18 12:38:41 intel-n100 kernel: virt-br0: port 1(enp2s0) entered
> forwarding state

So, enp2s0 is part of a bridge, wonder if it there's anything to do with
the crash.

Did you manage to get a more or less consistent way to reproduce this?

> Mar 18 12:38:45 intel-n100 kernel: ------------[ cut here ]------------
> Mar 18 12:38:45 intel-n100 kernel: refcount_t: underflow; use-after-free.
> Mar 18 12:38:45 intel-n100 kernel: WARNING: CPU: 3 PID: 7219 at
> lib/refcount.c:28 refcount_warn_saturate+0xba/0x110

Interesting that it happened 4 seconds after the link was up. 

> Mar 18 12:38:45 intel-n100 kernel: Modules linked in: veth xt_nat xt_tcpudp
> xt_conntrack xt_MASQUERADE nf_conntrack_netlink xfrm_user xfrm_algo
> xt_addrtype nft_compat br_netfilter rfcomm snd_seq_dummy snd_hrtimer
> snd_seq wireguard libchacha20poly1305 chacha_x86_64 poly1305_x86_64
> curve25519_x86_64 libcurve25519_generic libchacha ip6_udp_tunnel udp_tunnel
> vhost_net vhost vhost_iotlb tap tun qrtr overlay cmac algif_hash
> algif_skcipher af_alg bnep binfmt_misc nls_ascii nls_cp437 vfat fat ext4
> intel_rapl_msr mbcache intel_rapl_common jbd2 x86_pkg_temp_thermal
> intel_powerclamp coretemp kvm_intel snd_sof_pci_intel_tgl
> snd_sof_intel_hda_common soundwire_intel soundwire_generic_allocation kvm
> soundwire_cadence iwlmvm snd_sof_intel_hda snd_sof_pci snd_sof_xtensa_dsp
> irqbypass snd_sof snd_sof_utils mac80211 snd_soc_hdac_hda
> ghash_clmulni_intel snd_hda_ext_core snd_soc_acpi_intel_match snd_soc_acpi
> snd_hda_codec_hdmi snd_soc_core btusb snd_compress btrtl soundwire_bus
> libarc4 btbcm btintel btmtk snd_hda_intel
> Mar 18 12:38:45 intel-n100 kernel:  snd_intel_dspcfg bluetooth mei_hdcp
> snd_intel_sdw_acpi snd_hda_codec pmt_telemetry snd_usb_audio pmt_class
> aesni_intel crypto_simd snd_hda_core cryptd jitterentropy_rng rapl
> snd_usbmidi_lib iwlwifi bridge snd_hwdep intel_cstate snd_rawmidi
> snd_seq_device stp llc mc sha512_ssse3 intel_uncore pcspkr wmi_bmof snd_pcm
> sha512_generic ctr iTCO_wdt snd_timer intel_pmc_bxt iTCO_vendor_support
> drbg cfg80211 ansi_cprng ee1004 snd ecdh_generic watchdog ecc mei_me
> soundcore crc16 mei rfkill intel_vsec nft_chain_nat nf_nat intel_pmc_core
> intel_hid acpi_pad sparse_keymap acpi_tad sg joydev nft_ct nf_conntrack
> evdev nf_defrag_ipv6 nf_defrag_ipv4 nf_tables libcrc32c crc32c_generic msr
> parport_pc nfnetlink ppdev lp parport dm_mod loop fuse efi_pstore configfs
> efivarfs ip_tables x_tables autofs4 hid_generic usbhid hid zfs(POE)
> zunicode(POE) zzstd(OE) zlua(OE) zavl(POE) icp(POE) zcommon(POE)
> znvpair(POE) spl(OE) sd_mod uas usb_storage i915 nvme ahci sdhci_pci
> libahci cqhci sdhci libata
> Mar 18 12:38:45 intel-n100 kernel:  nvme_core t10_pi drm_buddy i2c_algo_bit
> drm_display_helper igc cec crc64_rocksoft crc64 crc_t10dif rc_core xhci_pci
> crct10dif_generic crct10dif_pclmul crct10dif_common scsi_mod ttm xhci_hcd
> drm_kms_helper ptp mmc_core crc32_pclmul usbcore pps_core drm i2c_i801
> i2c_smbus crc32c_intel usb_common scsi_common fan video wmi
> pinctrl_alderlake button
> Mar 18 12:38:45 intel-n100 kernel: CPU: 3 PID: 7219 Comm: transmission-da
> Tainted: P           OE      6.1.0-6-amd64 #1  Debian 6.1.15-1
> Mar 18 12:38:45 intel-n100 kernel: Hardware name:  /, BIOS 5.27 12/21/2022
> Mar 18 12:38:45 intel-n100 kernel: RIP:
> 0010:refcount_warn_saturate+0xba/0x110
> Mar 18 12:38:45 intel-n100 kernel: Code: 01 01 e8 df 5e 4a 00 0f 0b c3 cc
> cc cc cc 80 3d 38 86 ad 01 00 75 85 48 c7 c7 50 aa d4 b7 c6 05 28 86 ad 01
> 01 e8 bc 5e 4a 00 <0f> 0b c3 cc cc cc cc 80 3d 13 86 ad 01 00 0f 85 5e ff
> ff ff 48 c7
> Mar 18 12:38:45 intel-n100 kernel: RSP: 0000:ffffac66e0783cb8 EFLAGS:
> 00010282
> Mar 18 12:38:45 intel-n100 kernel: RAX: 0000000000000000 RBX:
> ffff94d25681a600 RCX: 0000000000000000
> Mar 18 12:38:45 intel-n100 kernel: RDX: 0000000000000101 RSI:
> ffffffffb7d332d6 RDI: 00000000ffffffff
> Mar 18 12:38:45 intel-n100 kernel: RBP: ffffac66c0f7d1b0 R08:
> 0000000000000000 R09: ffffac66e0783b40
> Mar 18 12:38:45 intel-n100 kernel: R10: 0000000000000003 R11:
> ffffffffb88d43a8 R12: ffffac66c120e578
> Mar 18 12:38:45 intel-n100 kernel: R13: 0000000000000233 R14:
> ffff94d2529e0bc0 R15: 00000000ffffff19
> Mar 18 12:38:45 intel-n100 kernel: FS:  00007fc48bd876c0(0000)
> GS:ffff94d99fb80000(0000) knlGS:0000000000000000
> Mar 18 12:38:45 intel-n100 kernel: CS:  0010 DS: 0000 ES: 0000 CR0:
> 0000000080050033
> Mar 18 12:38:45 intel-n100 kernel: CR2: 000055b0939bc074 CR3:
> 00000001300e0001 CR4: 0000000000772ee0
> Mar 18 12:38:45 intel-n100 kernel: PKRU: 55555554
> Mar 18 12:38:45 intel-n100 kernel: Call Trace:
> Mar 18 12:38:45 intel-n100 kernel:  <TASK>
> Mar 18 12:38:45 intel-n100 kernel:  tcp_wfree+0x15b/0x180
> Mar 18 12:38:45 intel-n100 kernel:  skb_release_head_state+0x20/0x90
> Mar 18 12:38:45 intel-n100 kernel:  napi_consume_skb+0xc2/0xf0
> Mar 18 12:38:45 intel-n100 kernel:  igc_poll+0x7f5/0x16d0 [igc]
> Mar 18 12:38:45 intel-n100 kernel:  __napi_poll+0x28/0x160
> Mar 18 12:38:45 intel-n100 kernel:  net_rx_action+0x2a5/0x360
> Mar 18 12:38:45 intel-n100 kernel:  ? __raise_softirq_irqoff+0x16/0x70
> Mar 18 12:38:46 intel-n100 kernel:  __do_softirq+0xed/0x2fe
> Mar 18 12:38:46 intel-n100 kernel:  ? handle_edge_irq+0x9f/0x240
> Mar 18 12:38:46 intel-n100 kernel:  __irq_exit_rcu+0xc7/0x130
> Mar 18 12:38:46 intel-n100 kernel:  common_interrupt+0x61/0xd0
> Mar 18 12:38:46 intel-n100 kernel:  asm_common_interrupt+0x22/0x40
> Mar 18 12:38:46 intel-n100 kernel: RIP: 0033:0x7fc48e1e5676
> Mar 18 12:38:46 intel-n100 kernel: Code: 48 8b 74 24 10 48 b8 cf f7 53 e3
> a5 9b c4 20 48 f7 e9 48 c1 f9 3f 48 c1 fa 07 29 ca 48 8b 44 24 28 64 48 2b
> 04 25 28 00 00 00 <75> 1c 48 89 f0 48 83 c4 38 c3 31 f6 48 89 e7 e8 86 a3
> fa ff 48 8b
> Mar 18 12:38:46 intel-n100 kernel: RSP: 002b:00007fc48bd866a0 EFLAGS:
> 00000246
> Mar 18 12:38:46 intel-n100 kernel: RAX: 0000000000000000 RBX:
> 00007fc4780c4bd0 RCX: 0000000000000000
> Mar 18 12:38:46 intel-n100 kernel: RDX: 00000000000c6dd5 RSI:
> 0000000000000096 RDI: 00000000013d7a45
> Mar 18 12:38:46 intel-n100 kernel: RBP: 00007fc478c8dec0 R08:
> 0000000000000000 R09: 0000000000000000
> Mar 18 12:38:46 intel-n100 kernel: R10: 00007ffe3a7ee080 R11:
> 000000000000ba3e R12: 00007fc48e2088e0
> Mar 18 12:38:46 intel-n100 kernel: R13: 00007fc478c8e9d0 R14:
> 0000000000000000 R15: 00007fc478c8dec0
> Mar 18 12:38:46 intel-n100 kernel:  </TASK>
> Mar 18 12:38:46 intel-n100 kernel: ---[ end trace 0000000000000000 ]---
> Mar 18 12:38:46 intel-n100 kernel: ------------[ cut here ]------------
> Mar 18 12:38:46 intel-n100 kernel: WARNING: CPU: 3 PID: 7219 at
> drivers/iommu/dma-iommu.c:1038 iommu_dma_unmap_page+0x79/0x90
> Mar 18 12:38:46 intel-n100 kernel: Modules linked in: veth xt_nat xt_tcpudp
> xt_conntrack xt_MASQUERADE nf_conntrack_netlink xfrm_user xfrm_algo
> xt_addrtype nft_compat br_netfilter rfcomm snd_seq_dummy snd_hrtimer
> snd_seq wireguard libchacha20poly1305 chacha_x86_64 poly1305_x86_64
> curve25519_x86_64 libcurve25519_generic libchacha ip6_udp_tunnel udp_tunnel
> vhost_net vhost vhost_iotlb tap tun qrtr overlay cmac algif_hash
> algif_skcipher af_alg bnep binfmt_misc nls_ascii nls_cp437 vfat fat ext4
> intel_rapl_msr mbcache intel_rapl_common jbd2 x86_pkg_temp_thermal
> intel_powerclamp coretemp kvm_intel snd_sof_pci_intel_tgl
> snd_sof_intel_hda_common soundwire_intel soundwire_generic_allocation kvm
> soundwire_cadence iwlmvm snd_sof_intel_hda snd_sof_pci snd_sof_xtensa_dsp
> irqbypass snd_sof snd_sof_utils mac80211 snd_soc_hdac_hda
> ghash_clmulni_intel snd_hda_ext_core snd_soc_acpi_intel_match snd_soc_acpi
> snd_hda_codec_hdmi snd_soc_core btusb snd_compress btrtl soundwire_bus
> libarc4 btbcm btintel btmtk snd_hda_intel
> Mar 18 12:38:46 intel-n100 kernel:  snd_intel_dspcfg bluetooth mei_hdcp
> snd_intel_sdw_acpi snd_hda_codec pmt_telemetry snd_usb_audio pmt_class
> aesni_intel crypto_simd snd_hda_core cryptd jitterentropy_rng rapl
> snd_usbmidi_lib iwlwifi bridge snd_hwdep intel_cstate snd_rawmidi
> snd_seq_device stp llc mc sha512_ssse3 intel_uncore pcspkr wmi_bmof snd_pcm
> sha512_generic ctr iTCO_wdt snd_timer intel_pmc_bxt iTCO_vendor_support
> drbg cfg80211 ansi_cprng ee1004 snd ecdh_generic watchdog ecc mei_me
> soundcore crc16 mei rfkill intel_vsec nft_chain_nat nf_nat intel_pmc_core
> intel_hid acpi_pad sparse_keymap acpi_tad sg joydev nft_ct nf_conntrack
> evdev nf_defrag_ipv6 nf_defrag_ipv4 nf_tables libcrc32c crc32c_generic msr
> parport_pc nfnetlink ppdev lp parport dm_mod loop fuse efi_pstore configfs
> efivarfs ip_tables x_tables autofs4 hid_generic usbhid hid zfs(POE)
> zunicode(POE) zzstd(OE) zlua(OE) zavl(POE) icp(POE) zcommon(POE)
> znvpair(POE) spl(OE) sd_mod uas usb_storage i915 nvme ahci sdhci_pci
> libahci cqhci sdhci libata
> Mar 18 12:38:46 intel-n100 kernel:  nvme_core t10_pi drm_buddy i2c_algo_bit
> drm_display_helper igc cec crc64_rocksoft crc64 crc_t10dif rc_core xhci_pci
> crct10dif_generic crct10dif_pclmul crct10dif_common scsi_mod ttm xhci_hcd
> drm_kms_helper ptp mmc_core crc32_pclmul usbcore pps_core drm i2c_i801
> i2c_smbus crc32c_intel usb_common scsi_common fan video wmi
> pinctrl_alderlake button
> Mar 18 12:38:46 intel-n100 kernel: CPU: 3 PID: 7219 Comm: transmission-da
> Tainted: P        W  OE      6.1.0-6-amd64 #1  Debian 6.1.15-1
> Mar 18 12:38:46 intel-n100 kernel: Hardware name:  /, BIOS 5.27 12/21/2022
> Mar 18 12:38:46 intel-n100 kernel: RIP: 0010:iommu_dma_unmap_page+0x79/0x90
> Mar 18 12:38:46 intel-n100 kernel: Code: 2b 48 3b 28 72 26 48 3b 68 08 73
> 20 4d 89 f8 44 89 f1 4c 89 ea 48 89 ee 48 89 df 5b 5d 41 5c 41 5d 41 5e 41
> 5f e9 47 69 a7 ff <0f> 0b 5b 5d 41 5c 41 5d 41 5e 41 5f c3 cc cc cc cc 66
> 0f 1f 44 00
> Mar 18 12:38:46 intel-n100 kernel: RSP: 0000:ffffac66e0783ce8 EFLAGS:
> 00010246
> Mar 18 12:38:46 intel-n100 kernel: RAX: 0000000000000000 RBX:
> ffff94d24263e0d0 RCX: 0000000000000000
> Mar 18 12:38:46 intel-n100 kernel: RDX: 0000000000000000 RSI:
> 0000000000000000 RDI: 0000000000000001
> Mar 18 12:38:46 intel-n100 kernel: RBP: ffffac66c0f7d1b0 R08:
> 0000000000000002 R09: 0000000080100007
> Mar 18 12:38:46 intel-n100 kernel: R10: 0000000000000003 R11:
> ffffffffb88d43a8 R12: 00000000ffbce0ea
> Mar 18 12:38:46 intel-n100 kernel: R13: 0000000000000000 R14:
> 0000000000000001 R15: 0000000000000000
> Mar 18 12:38:46 intel-n100 kernel: FS:  00007fc48bd876c0(0000)
> GS:ffff94d99fb80000(0000) knlGS:0000000000000000
> Mar 18 12:38:46 intel-n100 kernel: CS:  0010 DS: 0000 ES: 0000 CR0:
> 0000000080050033
> Mar 18 12:38:46 intel-n100 kernel: CR2: 000055b0939bc074 CR3:
> 00000001300e0001 CR4: 0000000000772ee0
> Mar 18 12:38:46 intel-n100 kernel: PKRU: 55555554
> Mar 18 12:38:46 intel-n100 kernel: Call Trace:
> Mar 18 12:38:46 intel-n100 kernel:  <TASK>
> Mar 18 12:38:46 intel-n100 kernel:  igc_poll+0x14d/0x16d0 [igc]
> Mar 18 12:38:46 intel-n100 kernel:  __napi_poll+0x28/0x160
> Mar 18 12:38:46 intel-n100 kernel:  net_rx_action+0x2a5/0x360
> Mar 18 12:38:46 intel-n100 kernel:  ? __raise_softirq_irqoff+0x16/0x70
> Mar 18 12:38:46 intel-n100 kernel:  __do_softirq+0xed/0x2fe
> Mar 18 12:38:46 intel-n100 kernel:  ? handle_edge_irq+0x9f/0x240
> Mar 18 12:38:46 intel-n100 kernel:  __irq_exit_rcu+0xc7/0x130
> Mar 18 12:38:46 intel-n100 kernel:  common_interrupt+0x61/0xd0
> Mar 18 12:38:46 intel-n100 kernel:  asm_common_interrupt+0x22/0x40
> Mar 18 12:38:46 intel-n100 kernel: RIP: 0033:0x7fc48e1e5676
> Mar 18 12:38:46 intel-n100 kernel: Code: 48 8b 74 24 10 48 b8 cf f7 53 e3
> a5 9b c4 20 48 f7 e9 48 c1 f9 3f 48 c1 fa 07 29 ca 48 8b 44 24 28 64 48 2b
> 04 25 28 00 00 00 <75> 1c 48 89 f0 48 83 c4 38 c3 31 f6 48 89 e7 e8 86 a3
> fa ff 48 8b
> Mar 18 12:38:46 intel-n100 kernel: RSP: 002b:00007fc48bd866a0 EFLAGS:
> 00000246
> Mar 18 12:38:46 intel-n100 kernel: RAX: 0000000000000000 RBX:
> 00007fc4780c4bd0 RCX: 0000000000000000
> Mar 18 12:38:46 intel-n100 kernel: RDX: 00000000000c6dd5 RSI:
> 0000000000000096 RDI: 00000000013d7a45
> Mar 18 12:38:46 intel-n100 kernel: RBP: 00007fc478c8dec0 R08:
> 0000000000000000 R09: 0000000000000000
> Mar 18 12:38:46 intel-n100 kernel: R10: 00007ffe3a7ee080 R11:
> 000000000000ba3e R12: 00007fc48e2088e0
> Mar 18 12:38:46 intel-n100 kernel: R13: 00007fc478c8e9d0 R14:
> 0000000000000000 R15: 00007fc478c8dec0
> Mar 18 12:38:46 intel-n100 kernel:  </TASK>
> Mar 18 12:38:46 intel-n100 kernel: ---[ end trace 0000000000000000 ]---
> Mar 18 12:38:46 intel-n100 kernel: ------------[ cut here ]------------
> Mar 18 12:38:46 intel-n100 kernel: kernel BUG at
> lib/dynamic_queue_limits.c:27!
> ```
>

The crash log from the router side was not really legible, perhaps
something in the formatting was lost? But I don't think it's that
useful, even if I can see it also crashing. Or is your router also using
i225 (and I missed that)?


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
