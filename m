Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AB63C40C6E4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Sep 2021 15:58:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0289D82BC4;
	Wed, 15 Sep 2021 13:58:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0_VDmD3NYWG6; Wed, 15 Sep 2021 13:58:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0113D82BC8;
	Wed, 15 Sep 2021 13:58:32 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E087C1BF4D6
 for <intel-wired-lan@osuosl.org>; Wed, 15 Sep 2021 07:01:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D94DA40171
 for <intel-wired-lan@osuosl.org>; Wed, 15 Sep 2021 07:01:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HbrKxM5Uvxpx for <intel-wired-lan@osuosl.org>;
 Wed, 15 Sep 2021 07:01:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 332CE4015B
 for <intel-wired-lan@osuosl.org>; Wed, 15 Sep 2021 07:01:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10107"; a="307788600"
X-IronPort-AV: E=Sophos;i="5.85,294,1624345200"; d="scan'208";a="307788600"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2021 00:01:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,294,1624345200"; d="scan'208";a="651090811"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by orsmga005.jf.intel.com with ESMTP; 15 Sep 2021 00:01:36 -0700
From: Michal Swiatkowski <michal.swiatkowski@intel..com>
To: intel-wired-lan@osuosl.org
Date: Tue, 14 Sep 2021 19:25:05 -0400
Message-Id: <20210914232505.8117-1-user@wasp>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 15 Sep 2021 13:58:27 +0000
Subject: [Intel-wired-lan] [PATCH net-next] ice: fix getting UDP tunnel entry
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

From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

Correct parameters order in call to ice_tunnel_idx_to_entry function.

Entry in sparse port table is correct when the idx is 0. For idx 1 one
correct entry should be skipped, for idx 2 two of them should be skipped
etc. Change if condition to be true when idx is 0, which means that
previous valid entry of this tunnel type were skipped.

Fixes: b20e6c17c468 ("ice: convert to new udp_tunnel infrastructure")
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_flex_pipe.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
index df8ed0b40f00..7bcb41cda0a0 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
@@ -1989,7 +1989,7 @@ static u16 ice_tunnel_idx_to_entry(struct ice_hw *hw, enum ice_tunnel_type type,
 	for (i = 0; i < hw->tnl.count && i < ICE_TUNNEL_MAX_ENTRIES; i++)
 		if (hw->tnl.tbl[i].valid &&
 		    hw->tnl.tbl[i].type == type &&
-		    idx--)
+		    idx-- == 0)
 			return i;
 
 	WARN_ON_ONCE(1);
@@ -2149,7 +2149,7 @@ int ice_udp_tunnel_set_port(struct net_device *netdev, unsigned int table,
 	u16 index;
 
 	tnl_type = ti->type == UDP_TUNNEL_TYPE_VXLAN ? TNL_VXLAN : TNL_GENEVE;
-	index = ice_tunnel_idx_to_entry(&pf->hw, idx, tnl_type);
+	index = ice_tunnel_idx_to_entry(&pf->hw, tnl_type, idx);
 
 	status = ice_create_tunnel(&pf->hw, index, tnl_type, ntohs(ti->port));
 	if (status) {
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
