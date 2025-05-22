Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D763AC07C4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 May 2025 10:52:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B3749419AB;
	Thu, 22 May 2025 08:52:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2RhSmHdFz2ks; Thu, 22 May 2025 08:52:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 132A7419E2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747903943;
	bh=N0FIsTiv8hRCu13jqJK7f5YF3s6fvjE5zNheTOmQwgM=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=XnZFaNfS/dv5WtcOz+Yd07Adc7Olnsio5lyulP1qDWixWIyQIUQ1I46qyK8h12vRG
	 Fsa2odTwrFd/rP5Dbo6DgZX2q1fU0QubS+sBeSPHPxEGN82ph/9g1ikph8vsJFEyKO
	 QFbPGpBGlGf2cwPQWRdS+3XrBf8lW5nA/LUIehYM3kEsafikyEaHDV4GJO5uN13sid
	 A9Ukuvk61k/u6dyTqpBDS/W/ogi+T+sdi/jBCLyPWA5d5C/kBU58QncYCzYKRjJSRZ
	 kez3ddkNF+AqzmIB/ITFONdkDKIuYC8dggNREtKDkzGMtwtXgXxI4Sav70IgmWg2hl
	 LWB8cK9eXUm8w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 132A7419E2;
	Thu, 22 May 2025 08:52:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id D58AE69
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 08:52:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C720E613BB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 08:52:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jea6a94HTWlD for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 May 2025 08:52:20 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0BE8861389
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0BE8861389
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0BE8861389
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 08:52:19 +0000 (UTC)
X-CSE-ConnectionGUID: 0Z89HJ/5SCOVqMneDvue+A==
X-CSE-MsgGUID: hrZsY4ShTqC+oJx3M1HDlw==
X-IronPort-AV: E=McAfee;i="6700,10204,11440"; a="75313062"
X-IronPort-AV: E=Sophos;i="6.15,305,1739865600"; d="scan'208";a="75313062"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 01:52:19 -0700
X-CSE-ConnectionGUID: cF7LHSLRQJSLoecNMXXQYA==
X-CSE-MsgGUID: C4rqEeTFR4+bQmFsaQsdzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,305,1739865600"; d="scan'208";a="141419693"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by orviesa008.jf.intel.com with ESMTP; 22 May 2025 01:52:18 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Ahmed Zaki <ahmed.zaki@intel.com>
Date: Thu, 22 May 2025 10:52:06 +0200
Message-ID: <20250522085206.1119209-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747903940; x=1779439940;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0+8eI1HxrSZFjYuny+D0+8nQ3/TGskQCq0fRWoB+Eas=;
 b=L988hToXN0za0L3fFyNrezX0yKfQ9eyQvsNYISa7Ee+93gd6ltfEIDPv
 BhWiALMwNORAKWbSsCjGatDzUIRZXMa6c55YCayqA16xT90ryGTmDMAhP
 h1QapJt7Rf6OgIaYVXPMJV+Yr9lImevHX9Hy4GCRnKuOeyKS6N3bTI0Nd
 WZEW39rUDcG759RyI40XLREOF1eUQ4pY1XJ2ue04p6UNCUD6FInzLUh6X
 sVJFIGMzSpG2nJSesZLjUvgd3vwKM2eQaEr2Irkf/+v072SLI99Idup5G
 V3wyvc1wmoxqWHjinPXw+vnn9hlAtT+jKRvFsqP2okc9JeJWPdIpaLiwN
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=L988hToX
Subject: [Intel-wired-lan] [PATCH iwl-net v1] idpf: return 0 size for RSS
 key if not supported
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Returning -EOPNOTSUPP from function returning u32 is leading to
cast and invalid size value as a result.

-EOPNOTSUPP as a size probably will lead to allocation fail.

Command: ethtool -x eth0
It is visible on all devices that don't have RSS caps set.

[  136.615917] Call Trace:
[  136.615921]  <TASK>
[  136.615927]  ? __warn+0x89/0x130
[  136.615942]  ? __alloc_frozen_pages_noprof+0x322/0x330
[  136.615953]  ? report_bug+0x164/0x190
[  136.615968]  ? handle_bug+0x58/0x90
[  136.615979]  ? exc_invalid_op+0x17/0x70
[  136.615987]  ? asm_exc_invalid_op+0x1a/0x20
[  136.616001]  ? rss_prepare_get.constprop.0+0xb9/0x170
[  136.616016]  ? __alloc_frozen_pages_noprof+0x322/0x330
[  136.616028]  __alloc_pages_noprof+0xe/0x20
[  136.616038]  ___kmalloc_large_node+0x80/0x110
[  136.616072]  __kmalloc_large_node_noprof+0x1d/0xa0
[  136.616081]  __kmalloc_noprof+0x32c/0x4c0
[  136.616098]  ? rss_prepare_get.constprop.0+0xb9/0x170
[  136.616105]  rss_prepare_get.constprop.0+0xb9/0x170
[  136.616114]  ethnl_default_doit+0x107/0x3d0
[  136.616131]  genl_family_rcv_msg_doit+0x100/0x160
[  136.616147]  genl_rcv_msg+0x1b8/0x2c0
[  136.616156]  ? __pfx_ethnl_default_doit+0x10/0x10
[  136.616168]  ? __pfx_genl_rcv_msg+0x10/0x10
[  136.616176]  netlink_rcv_skb+0x58/0x110
[  136.616186]  genl_rcv+0x28/0x40
[  136.616195]  netlink_unicast+0x19b/0x290
[  136.616206]  netlink_sendmsg+0x222/0x490
[  136.616215]  __sys_sendto+0x1fd/0x210
[  136.616233]  __x64_sys_sendto+0x24/0x30
[  136.616242]  do_syscall_64+0x82/0x160
[  136.616252]  ? __sys_recvmsg+0x83/0xe0
[  136.616265]  ? syscall_exit_to_user_mode+0x10/0x210
[  136.616275]  ? do_syscall_64+0x8e/0x160
[  136.616282]  ? __count_memcg_events+0xa1/0x130
[  136.616295]  ? count_memcg_events.constprop.0+0x1a/0x30
[  136.616306]  ? handle_mm_fault+0xae/0x2d0
[  136.616319]  ? do_user_addr_fault+0x379/0x670
[  136.616328]  ? clear_bhb_loop+0x45/0xa0
[  136.616340]  ? clear_bhb_loop+0x45/0xa0
[  136.616349]  ? clear_bhb_loop+0x45/0xa0
[  136.616359]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
[  136.616369] RIP: 0033:0x7fd30ba7b047
[  136.616376] Code: 0c 00 f7 d8 64 89 02 48 c7 c0 ff ff ff ff eb b8 0f 1f 00 f3 0f 1e fa 80 3d bd d5 0c 00 00 41 89 ca 74 10 b8 2c 00 00 00 0f 05 <48> 3d 00 f0 ff ff 77 71 c3 55 48 83 ec 30 44 89 4c 24 2c 4c 89 44
[  136.616381] RSP: 002b:00007ffde1796d68 EFLAGS: 00000202 ORIG_RAX: 000000000000002c
[  136.616388] RAX: ffffffffffffffda RBX: 000055d7bd89f2a0 RCX: 00007fd30ba7b047
[  136.616392] RDX: 0000000000000028 RSI: 000055d7bd89f3b0 RDI: 0000000000000003
[  136.616396] RBP: 00007ffde1796e10 R08: 00007fd30bb4e200 R09: 000000000000000c
[  136.616399] R10: 0000000000000000 R11: 0000000000000202 R12: 000055d7bd89f340
[  136.616403] R13: 000055d7bd89f3b0 R14: 000055d78943f200 R15: 0000000000000000

Fixes: 02cbfba1add5 ("idpf: add ethtool callbacks")
Reviewed-by: Ahmed Zaki <ahmed.zaki@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_ethtool.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
index 59b1a1a09996..f72420cf6821 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
@@ -46,7 +46,7 @@ static u32 idpf_get_rxfh_key_size(struct net_device *netdev)
 	struct idpf_vport_user_config_data *user_config;
 
 	if (!idpf_is_cap_ena_all(np->adapter, IDPF_RSS_CAPS, IDPF_CAP_RSS))
-		return -EOPNOTSUPP;
+		return 0;
 
 	user_config = &np->adapter->vport_config[np->vport_idx]->user_config;
 
@@ -65,7 +65,7 @@ static u32 idpf_get_rxfh_indir_size(struct net_device *netdev)
 	struct idpf_vport_user_config_data *user_config;
 
 	if (!idpf_is_cap_ena_all(np->adapter, IDPF_RSS_CAPS, IDPF_CAP_RSS))
-		return -EOPNOTSUPP;
+		return 0;
 
 	user_config = &np->adapter->vport_config[np->vport_idx]->user_config;
 
-- 
2.42.0

