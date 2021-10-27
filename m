Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D432743C182
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Oct 2021 06:33:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7A8B4401D9;
	Wed, 27 Oct 2021 04:33:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nsdOQMknFHAx; Wed, 27 Oct 2021 04:33:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7715340191;
	Wed, 27 Oct 2021 04:33:53 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 50D491BF386
 for <intel-wired-lan@osuosl.org>; Wed, 27 Oct 2021 04:33:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 38E3360644
 for <intel-wired-lan@osuosl.org>; Wed, 27 Oct 2021 04:33:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m8f0pI9pN8Sx for <intel-wired-lan@osuosl.org>;
 Wed, 27 Oct 2021 04:33:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7C5CF6063C
 for <intel-wired-lan@osuosl.org>; Wed, 27 Oct 2021 04:33:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10149"; a="216983784"
X-IronPort-AV: E=Sophos;i="5.87,184,1631602800"; d="scan'208";a="216983784"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2021 21:33:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,184,1631602800"; d="scan'208";a="447391067"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by orsmga003.jf.intel.com with ESMTP; 26 Oct 2021 21:33:39 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@osuosl.org
Date: Wed, 27 Oct 2021 06:32:50 +0200
Message-Id: <20211027043250.5241-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next] ice: remove unnecessary RTNL
 lock assert
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Follow changes in commit 7c3a0a018e67 ("net/{mlx5|nfp|bnxt}: Remove
unnecessary RTNL lock assert").

Remove the assert from the callback priv lookup function since it does
not require RTNL lock and is already protected by flow_indr_block_lock.

Having this assert in the ice_indr_block_priv_lookup leads to ugly
assert failed information in dmesg after:
- creating gretap tunnel
- adding tc qdisc on the tunnel device
- rmmod driver
- insmod driver

As this assert isn't needed, remove it.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
This commit should be squashed with "ice: support for indirect notification"

 drivers/net/ethernet/intel/ice/ice_main.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 728c11103b37..d7ecbec93b11 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -8153,9 +8153,6 @@ ice_indr_block_priv_lookup(struct ice_netdev_priv *np,
 {
 	struct ice_indr_block_priv *cb_priv;
 
-	/* All callback list access should be protected by RTNL. */
-	ASSERT_RTNL();
-
 	list_for_each_entry(cb_priv, &np->tc_indr_block_priv_list, list) {
 		if (!cb_priv->netdev)
 			return NULL;
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
