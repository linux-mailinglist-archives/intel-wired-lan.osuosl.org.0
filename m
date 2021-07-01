Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F9D33B8B36
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Jul 2021 02:27:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CFAFA404F6;
	Thu,  1 Jul 2021 00:27:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k6MSvYtPLddO; Thu,  1 Jul 2021 00:27:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DE45B4015D;
	Thu,  1 Jul 2021 00:27:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 641B71BF9C2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jul 2021 00:27:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9D1E641601
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jul 2021 00:27:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rJYfRJXMBG_s for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Jul 2021 00:27:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9AAF141600
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jul 2021 00:27:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10031"; a="208270033"
X-IronPort-AV: E=Sophos;i="5.83,312,1616482800"; d="scan'208";a="208270033"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2021 17:27:19 -0700
X-IronPort-AV: E=Sophos;i="5.83,312,1616482800"; d="scan'208";a="457448706"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.4])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2021 17:27:19 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 30 Jun 2021 17:27:01 -0700
Message-Id: <20210701002713.3486336-2-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.31.1.331.gb0c09ab8796f
In-Reply-To: <20210701002713.3486336-1-jacob.e.keller@intel.com>
References: <20210701002713.3486336-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next 01/13] ice: fix Tx queue iteration for
 Tx timestamp enablement
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

The driver accidentally copied the ice_for_each_rxq iterator when
implementing enablement of the ptp_tx bit for the Tx rings. We still
load the Tx rings and set the ptp_tx field, but we iterate over the
count of the num_rxq.

If the number of Tx and Rx queues differ, this could either cause
a buffer overrun when accessing the tx_rings list if num_txq is greater
than num_rxq, or it could cause us to fail to enable Tx timestamps for
some rings.

This was not noticed originally as we generally have the same number of
Tx and Rx queues.

Fixes: ea9b847cda64 ("ice: enable transmit timestamps for E810 devices")
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 5d5207b56ca9..e176c7484484 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -22,7 +22,7 @@ static void ice_set_tx_tstamp(struct ice_pf *pf, bool on)
 		return;
 
 	/* Set the timestamp enable flag for all the Tx rings */
-	ice_for_each_rxq(vsi, i) {
+	ice_for_each_txq(vsi, i) {
 		if (!vsi->tx_rings[i])
 			continue;
 		vsi->tx_rings[i]->ptp_tx = on;
-- 
2.31.1.331.gb0c09ab8796f

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
