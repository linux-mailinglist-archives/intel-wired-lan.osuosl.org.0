Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 568842037D3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jun 2020 15:21:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D7A3386E28;
	Mon, 22 Jun 2020 13:21:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ySc7-xMD0WmY; Mon, 22 Jun 2020 13:21:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4DDF486D3C;
	Mon, 22 Jun 2020 13:21:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7723E1BF390
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 13:21:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 73D1F86D5D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 13:21:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Cq0QLYDrxq6u for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jun 2020 13:21:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4A2F286D42
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 13:21:36 +0000 (UTC)
IronPort-SDR: 36wsyqPq/gRsEZFFbWP6gW475EZn8ENXIWVuztG8VpwqW3lwWADN4VbcAyZgKaMg/SWVTbrMQO
 eqc9OW9SRf5Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9659"; a="143714867"
X-IronPort-AV: E=Sophos;i="5.75,266,1589266800"; d="scan'208";a="143714867"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2020 06:21:36 -0700
IronPort-SDR: Y6DeN6G1KbLRqCzY2W/zor7KlrobA64xDCrmyRGysBggyOEV8tR2Zl5PARvl2KU5+cpQdpL+EE
 r7Qp3OduHbfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,266,1589266800"; d="scan'208";a="422628535"
Received: from juergenr-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.33.83])
 by orsmga004.jf.intel.com with ESMTP; 22 Jun 2020 06:21:34 -0700
From: Magnus Karlsson <magnus.karlsson@intel.com>
To: magnus.karlsson@intel.com, bjorn.topel@intel.com,
 intel-wired-lan@lists.osuosl.org, jeffrey.t.kirsher@intel.com
Date: Mon, 22 Jun 2020 15:21:23 +0200
Message-Id: <1592832083-23249-3-git-send-email-magnus.karlsson@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1592832083-23249-1-git-send-email-magnus.karlsson@intel.com>
References: <1592832083-23249-1-git-send-email-magnus.karlsson@intel.com>
Subject: [Intel-wired-lan] [PATCH net-next 2/2] i40e: eliminate division in
 napi_poll data path
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
Cc: maciejromanfijalkowski@gmail.com, maciej.fijalkowski@intel.com,
 netdev@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Eliminate a division in the napi_poll data path. This division is
executed even though it is only needed in the rare case when there are
not enough interrupt lines so they have to be shared between queue
pairs. Instead, just test for this case and only execute the division
if needed. The code has been lifted from the ice driver.

Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_txrx.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index 0ce9d1e..da73a7d 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -2595,10 +2595,16 @@ int i40e_napi_poll(struct napi_struct *napi, int budget)
 	if (budget <= 0)
 		goto tx_only;
 
-	/* We attempt to distribute budget to each Rx queue fairly, but don't
-	 * allow the budget to go below 1 because that would exit polling early.
-	 */
-	budget_per_ring = max(budget/q_vector->num_ringpairs, 1);
+	/* normally we have 1 Rx ring per q_vector */
+	if (unlikely(q_vector->num_ringpairs > 1))
+		/* We attempt to distribute budget to each Rx queue fairly, but
+		 * don't allow the budget to go below 1 because that would exit
+		 * polling early.
+		 */
+		budget_per_ring = max_t(int, budget / q_vector->num_ringpairs, 1);
+	else
+		/* Max of 1 Rx ring in this q_vector so give it the budget */
+		budget_per_ring = budget;
 
 	i40e_for_each_ring(ring, q_vector->rx) {
 		int cleaned = ring->xsk_umem ?
-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
