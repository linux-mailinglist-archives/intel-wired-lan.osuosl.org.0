Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4881204E48
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jun 2020 11:44:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8E95D89211;
	Tue, 23 Jun 2020 09:44:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E9vJ3Qu4uOxx; Tue, 23 Jun 2020 09:44:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0AE43890BA;
	Tue, 23 Jun 2020 09:44:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 333A61BF294
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jun 2020 09:44:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2FA0E88FB0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jun 2020 09:44:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ok-jPjGUihMT for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jun 2020 09:44:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 785B088D67
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jun 2020 09:44:34 +0000 (UTC)
IronPort-SDR: yKTYFq7p5PDcX+m++sORbSCOifixEBoSMP8B4IFyGn4NdMJ316wZNjcp6zP1wvh9EqyOFMQHvV
 0YiMenRx/oXw==
X-IronPort-AV: E=McAfee;i="6000,8403,9660"; a="162099563"
X-IronPort-AV: E=Sophos;i="5.75,270,1589266800"; d="scan'208";a="162099563"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2020 02:44:34 -0700
IronPort-SDR: Hn3V9jwFxsC9L7pT1RhUnHTCDnUajfh6LvDV2Ea9msK4hJWHWKDam+g2dYaBHcAzbQFVht4DF9
 1Vt0/RWP9X0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,270,1589266800"; d="scan'208";a="422947150"
Received: from mkarlsso-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.33.84])
 by orsmga004.jf.intel.com with ESMTP; 23 Jun 2020 02:44:30 -0700
From: Magnus Karlsson <magnus.karlsson@intel.com>
To: magnus.karlsson@intel.com, bjorn.topel@intel.com,
 intel-wired-lan@lists.osuosl.org, jeffrey.t.kirsher@intel.com,
 sridhar.samudrala@intel.com
Date: Tue, 23 Jun 2020 11:44:17 +0200
Message-Id: <1592905458-850-3-git-send-email-magnus.karlsson@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1592905458-850-1-git-send-email-magnus.karlsson@intel.com>
References: <1592905458-850-1-git-send-email-magnus.karlsson@intel.com>
Subject: [Intel-wired-lan] [PATCH net-next v2 2/3] i40e: eliminate division
 in napi_poll data path
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
index 9334abd..60fa102 100644
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
