Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 54E724D89C6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Mar 2022 17:43:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CA29C6066D;
	Mon, 14 Mar 2022 16:43:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SiL3jGqCX7Uy; Mon, 14 Mar 2022 16:43:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C92E5605A6;
	Mon, 14 Mar 2022 16:43:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D0CE11BF35B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Mar 2022 16:43:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BDD6D6068B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Mar 2022 16:43:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id biTZ4jx5Mxfq for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Mar 2022 16:43:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 92B2A605AB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Mar 2022 16:43:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647276201; x=1678812201;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=a8TKsn2caiwr0XKyQ/axWUFSfZ0PCK0Y37rWwDq+xGQ=;
 b=NT3ushJ8YD43LvCdAhuXv4lGl09QojFLwhxA9SjzVp7fJifGoJJ4MVXp
 W6RoJNwAiSc+/xUbFy1K3YfFlgG9JOV/0IbKresHI83aQs/SvPFquaheB
 NokBg2NFVpdC5HQrfSyznVs6/GdqCOCKcPRKCh1TyyMEAZgL5U8QN0mIP
 wzafGeOsV5PtI3DJqMOERifGGHElUpL02Hnxt1gZqjdyXH41Qvzm+cqwl
 oB5b4GjJaEeNngs92X6Iv1yZ4v9awwW8HDMbzwBZsDEMI8E++W39V3klT
 ppcIcqMhXmj8205GSsBZj9MQ1iHexQxAS2etezqhV2AIBmvxrdgrg+n9O A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10285"; a="243529043"
X-IronPort-AV: E=Sophos;i="5.90,181,1643702400"; d="scan'208";a="243529043"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 09:43:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,181,1643702400"; d="scan'208";a="819077277"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga005.fm.intel.com with ESMTP; 14 Mar 2022 09:43:19 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 22EGhI8W025951; Mon, 14 Mar 2022 16:43:18 GMT
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: anthony.l.nguyen@intel.com
Date: Mon, 14 Mar 2022 17:43:14 +0100
Message-Id: <20220314164314.15218-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next] ice: Fix inconsistent indenting
 in ice_switch
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

From: Wojciech Drewek <wojciech.drewek@intel.com>

Commit 9a225f81f540("ice: Support GTP-U and GTP-C offload in switchdev")
introduced this issue.

Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
Reported-by: kernel test robot <lkp@intel.com>
---
There is no "Fixes" tag because patch that caused the
issue is not present in net yet.
---
 drivers/net/ethernet/intel/ice/ice_switch.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 7f3d97595890..25b8f6f726eb 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -5565,7 +5565,7 @@ ice_find_dummy_packet(struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
 					*offsets = dummy_ipv6_gtpu_ipv4_udp_packet_offsets;
 				} else {
 					*pkt = dummy_ipv6_gtpu_ipv4_tcp_packet;
-				*pkt_len = sizeof(dummy_ipv6_gtpu_ipv4_tcp_packet);
+					*pkt_len = sizeof(dummy_ipv6_gtpu_ipv4_tcp_packet);
 					*offsets = dummy_ipv6_gtpu_ipv4_tcp_packet_offsets;
 				}
 			}
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
