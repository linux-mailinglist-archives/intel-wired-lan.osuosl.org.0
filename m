Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 784B7938F10
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jul 2024 14:29:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1EAB140177;
	Mon, 22 Jul 2024 12:29:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TVOPAB9DUaKP; Mon, 22 Jul 2024 12:29:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 04E46401AE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721651390;
	bh=4DXiFAFlDBB5RXXEqDNXDaHIIO3F7GlFbGuTX58/1kA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=lREK5tNvPbs+gGDZUahz9nntcu7vlIJENUbIrJBJyNDiHq9ucxuFIlmblVTwuEEQU
	 NdzKNy7uK1VdMDIXeWxuShF7Npyc8xRUAd6sdDU0NCeHdd4eQkouMVq4u+oG7mIUEr
	 OCcol2qlQbz8h1LJ64hEI/9c1y5LnENpT2TgfzGVPCduArwnm5TOY3kqPDG5K9ZSow
	 lAVEcvRyyNmJtw6W0eZCPL6vKnF/BHnxE7ibSDi5nWOjsG9W30UuJh+Muqy1McBTEA
	 DFyaDEeDAS+XnV6chqrMPlmZ5BAMiw4PBfyMpcMavVLKJy6vnptxj1DI3Qh6OilFQR
	 wx+IQwi6qRpxw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 04E46401AE;
	Mon, 22 Jul 2024 12:29:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C49621BF2A1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jul 2024 12:29:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BD59B40155
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jul 2024 12:29:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id brUA34fSk_0g for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jul 2024 12:29:46 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=dawid.osuchowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2206440149
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2206440149
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2206440149
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jul 2024 12:29:45 +0000 (UTC)
X-CSE-ConnectionGUID: p5i/6xKsQLSV8qJLyb24Cg==
X-CSE-MsgGUID: t285qX/9TI6aWVntjKVYtg==
X-IronPort-AV: E=McAfee;i="6700,10204,11140"; a="29801329"
X-IronPort-AV: E=Sophos;i="6.09,228,1716274800"; d="scan'208";a="29801329"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 05:29:30 -0700
X-CSE-ConnectionGUID: SjUXvpbuRgWcwQ0hKBo2xA==
X-CSE-MsgGUID: sDlORgOhS0acS3krLrcxug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,228,1716274800"; d="scan'208";a="56429594"
Received: from pae-dbg-x10sri-f_n1_f.igk.intel.com (HELO
 localhost.igk.intel.com) ([10.91.240.220])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 05:29:27 -0700
From: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 22 Jul 2024 14:28:39 +0200
Message-ID: <20240722122839.51342-1-dawid.osuchowski@linux.intel.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721651387; x=1753187387;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+ccc8M/ClTchN4DNxP88CEU+RwmMuJAPuydZ4/srS5I=;
 b=Z+VbOHp58Yr6PZe1i0X00DI3xPX8PVwyh5tv4709OU4FkCZgQ9VD+4iW
 bLpR3wRrZDeeAwuzWs06qeXJdExMFm5Kwmbi6h5orDSapdjXghZ7LzNId
 CYaYjiW+d2NH+7jfsZPHUzWfdtw4Q8slwY5SFF+umUz5IM9QHyPiPXraY
 xy/So6fYti+WpX1q1SBFvSQc8pN30LZif/udhn5hrqjD+XvPdFkPtgcr7
 LX/jqHeogfMVqhrQb4Rnyn70PAJCmTDOd3v1EFSnyhIX6iPN1VgT+k3MW
 q47Glc0KrIi0J2jefuU1DRh4tcTLuSZuwqOCoJAvBKSdgNjx0VSVYAgt8
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Z+VbOHp5
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: Introduce
 netif_device_attach/detach into reset flow
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
Cc: netdev@vger.kernel.org, Alexander Lobakin <aleksander.lobakin@intel.com>,
 Dawid Osuchowski <dawid.osuchowski@linux.intel.com>,
 Jakub Kicinski <kuba@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ethtool callbacks can be executed while reset is in progress and try to
access deleted resources, e.g. getting coalesce settings can result in a
NULL pointer dereference seen below.

[  +0.000105] BUG: kernel NULL pointer dereference, address: 0000000000000020
[  +0.000027] #PF: supervisor read access in kernel mode
[  +0.000011] #PF: error_code(0x0000) - not-present page
[  +0.000011] PGD 0 P4D 0
[  +0.000008] Oops: Oops: 0000 [#1] PREEMPT SMP PTI
[  +0.000012] CPU: 11 PID: 19713 Comm: ethtool Tainted: G S                 6.10.0-rc7+ #7
[  +0.000015] Hardware name: Supermicro Super Server/X10SRi-F, BIOS 2.0 12/17/2015
[  +0.000013] RIP: 0010:ice_get_q_coalesce+0x2e/0xa0 [ice]
[  +0.000090] Code: 00 55 53 48 89 fb 48 89 f7 48 83 ec 08 0f b7 8b 86 04 00 00 0f b7 83 82 04 00 00 39 d1 7e 30 48 8b 4b 18 48 63 ea 48 8b 0c e9 <48> 8b 71 20 48 81 c6 a0 01 00 00 39 c2 7c 32 e8 ee fe ff ff 85 c0
[  +0.000029] RSP: 0018:ffffbab1e9bcf6a8 EFLAGS: 00010206
[  +0.000012] RAX: 000000000000000c RBX: ffff94512305b028 RCX: 0000000000000000
[  +0.000012] RDX: 0000000000000000 RSI: ffff9451c3f2e588 RDI: ffff9451c3f2e588
[  +0.000012] RBP: 0000000000000000 R08: 0000000000000000 R09: 0000000000000000
[  +0.000013] R10: ffff9451c3f2e580 R11: 000000000000001f R12: ffff945121fa9000
[  +0.000012] R13: ffffbab1e9bcf760 R14: 0000000000000013 R15: ffffffff9e65dd40
[  +0.000012] FS:  00007faee5fbe740(0000) GS:ffff94546fd80000(0000) knlGS:0000000000000000
[  +0.000014] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  +0.000011] CR2: 0000000000000020 CR3: 0000000106c2e005 CR4: 00000000001706f0
[  +0.000012] Call Trace:
[  +0.000009]  <TASK>
[  +0.000007]  ? __die+0x23/0x70
[  +0.000012]  ? page_fault_oops+0x173/0x510
[  +0.000011]  ? ice_get_q_coalesce+0x2e/0xa0 [ice]
[  +0.000071]  ? search_module_extables+0x19/0x60
[  +0.000013]  ? search_bpf_extables+0x5f/0x80
[  +0.000012]  ? exc_page_fault+0x7e/0x180
[  +0.000013]  ? asm_exc_page_fault+0x26/0x30
[  +0.000014]  ? ice_get_q_coalesce+0x2e/0xa0 [ice]
[  +0.000070]  ice_get_coalesce+0x17/0x30 [ice]
[  +0.000070]  coalesce_prepare_data+0x61/0x80
[  +0.000012]  ethnl_default_doit+0xde/0x340
[  +0.000012]  genl_family_rcv_msg_doit+0xf2/0x150
[  +0.000013]  genl_rcv_msg+0x1b3/0x2c0
[  +0.000009]  ? __pfx_ethnl_default_doit+0x10/0x10
[  +0.000011]  ? __pfx_genl_rcv_msg+0x10/0x10
[  +0.000010]  netlink_rcv_skb+0x5b/0x110
[  +0.000013]  genl_rcv+0x28/0x40
[  +0.000007]  netlink_unicast+0x19c/0x290
[  +0.000012]  netlink_sendmsg+0x222/0x490
[  +0.000011]  __sys_sendto+0x1df/0x1f0
[  +0.000013]  __x64_sys_sendto+0x24/0x30
[  +0.000340]  do_syscall_64+0x82/0x160
[  +0.000309]  ? __mod_memcg_lruvec_state+0xa6/0x150
[  +0.000309]  ? __lruvec_stat_mod_folio+0x68/0xa0
[  +0.000311]  ? folio_add_file_rmap_ptes+0x86/0xb0
[  +0.000309]  ? next_uptodate_folio+0x89/0x290
[  +0.000309]  ? filemap_map_pages+0x521/0x5f0
[  +0.000302]  ? do_fault+0x26e/0x470
[  +0.000293]  ? __handle_mm_fault+0x7dc/0x1060
[  +0.000295]  ? __count_memcg_events+0x58/0xf0
[  +0.000289]  ? count_memcg_events.constprop.0+0x1a/0x30
[  +0.000292]  ? handle_mm_fault+0xae/0x320
[  +0.000284]  ? do_user_addr_fault+0x33a/0x6a0
[  +0.000280]  ? exc_page_fault+0x7e/0x180
[  +0.000289]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
[  +0.000271] RIP: 0033:0x7faee60d8e27

Fixes: 67fe64d78c43 ("ice: Implement getting and setting ethtool coalesce")
Suggested-by: Jakub Kicinski <kuba@kernel.org>
Signed-off-by: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index ec636be4d17d..eb199fd3c989 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -6744,6 +6744,7 @@ static int ice_up_complete(struct ice_vsi *vsi)
 	    (vsi->port_info->phy.link_info.link_info & ICE_AQ_LINK_UP) &&
 	    vsi->netdev && vsi->type == ICE_VSI_PF) {
 		ice_print_link_msg(vsi, true);
+		netif_device_attach(vsi->netdev);
 		netif_tx_start_all_queues(vsi->netdev);
 		netif_carrier_on(vsi->netdev);
 		ice_ptp_link_change(pf, pf->hw.pf_id, true);
@@ -7220,6 +7221,7 @@ int ice_down(struct ice_vsi *vsi)
 		ice_ptp_link_change(vsi->back, vsi->back->hw.pf_id, false);
 		netif_carrier_off(vsi->netdev);
 		netif_tx_disable(vsi->netdev);
+		netif_device_detach(vsi->netdev);
 	}
 
 	ice_vsi_dis_irq(vsi);
-- 
2.44.0

