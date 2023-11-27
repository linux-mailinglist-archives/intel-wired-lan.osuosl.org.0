Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 622187FAE63
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Nov 2023 00:34:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AB17840335;
	Mon, 27 Nov 2023 23:34:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AB17840335
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701128044;
	bh=hoytRuV9fcDGd/09eXS/cc2cNQRsOnZPO8MJXvoAjMg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=k7VMIefsjBbDfHl3JBLajRG1v413Xx8FG31QSXnIbH9oVC/PYzU8/QSM7T5g6vlr2
	 htTX44+WGxGSqMq/JY3hWv2WO5WPPd/Njg3feHnh4fezWSoOzts3xjve1BPo64kHyy
	 fT81sfSaD6TBUW/sn5hV3a4xSuIHzgvwQyOr7gQue/DNS5RoHuqSLSdUmzX6tcKmjA
	 cLOx0R44n0n5OASVk3tb6o3xgGzta+lCSTSPiCjiZAxIltwe0/x7mq73+iVV0pv16U
	 4lTEzkjXnZP8XHH/ciFg4QsbTRqVI5/M9jyAfTnCNbC6dp+RgCGvnfALhdK8jQFaf7
	 pmMx3Sf3x4/MA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZPrmf9n-bHbg; Mon, 27 Nov 2023 23:34:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 595E740341;
	Mon, 27 Nov 2023 23:34:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 595E740341
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EA8091BF20B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Nov 2023 23:33:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CF1D281A33
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Nov 2023 23:33:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CF1D281A33
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O2Upo3OyiFnd for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Nov 2023 23:33:57 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C108981A16
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Nov 2023 23:33:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C108981A16
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="391687641"
X-IronPort-AV: E=Sophos;i="6.04,232,1695711600"; d="scan'208";a="391687641"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2023 15:33:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="891900872"
X-IronPort-AV: E=Sophos;i="6.04,232,1695711600"; d="scan'208";a="891900872"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2023 15:33:54 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Mon, 27 Nov 2023 15:33:50 -0800
Message-ID: <20231127233350.2652604-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701128036; x=1732664036;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=oV9i7t4dLdAA3Jw0YCkuKYepgWZlqx1MZuhXZAaWb50=;
 b=d31FELvIqPnWaskrpPlpEIvjB0tJtytVH1BE6X8p3wJ8uC36MCbBDZwS
 okRxwjl8l2yGCqMcy5wrDu9LvOP5Ya/U1LNllaZdx5PA+u7DpkrSwcGcj
 9TXVrhxATQsZpox4Ex1ltk4LtPPj0eLWhTMAoArIfqNZXyBHzr/rQumyl
 sqKoEOuJ6C8MTdrEQq7OKzcBE0mIN4DqOsn6JwRHAi9z4A0a8YWIXsAac
 BnFTtHKiKg0BxWCX+FoHWBATtBOuzSHHiEPvRLyCWRvWYlprqNggYKEie
 bhZqPl+r88oxa8KekbMunf3YEi4D8iJHNoYKUy5+XK+6Zprr4v481IToA
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=d31FELvI
Subject: [Intel-wired-lan] [PATCH iwl-net v2] iavf: validate
 tx_coalesce_usecs even if rx_coalesce_usecs is zero
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
Cc: Jacob Keller <jacob.e.keller@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In __iavf_set_coalesce, the driver checks both ec->rx_coalesce_usecs and
ec->tx_coalesce_usecs for validity. It does this via a chain if if/else-if
blocks. If every single branch of the series of if statements exited, this
would be fine. However, the rx_coalesce_usecs is checked against zero to
print an informative message if use_adaptive_rx_coalesce is enabled. If
this check is true, it short circuits the entire chain of statements,
preventing validation of the tx_coalesce_usecs field.

Indeed, since commit e792779e6b63 ("iavf: Prevent changing static ITR
values if adaptive moderation is on") the iavf driver actually rejects any
change to the tx_coalesce_usecs or rx_coalesce_usecs when
use_adaptive_tx_coalesce or use_adaptive_rx_coalesce is enabled, making
this checking a bit redundant.

Fix this error by removing the unnecessary and redundant checks for
use_adaptive_rx_coalesce and use_adaptive_tx_coalesce. Since zero is a
valid value, and since the tx_coalesce_usecs and rx_coalesce_usecs fields
are already unsigned, remove the minimum value check. This allows assigning
an ITR value ranging from 0-8160 as described by the printed message.

Fixes: 65e87c0398f5 ("i40evf: support queue-specific settings for interrupt moderation")
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---

Changes since v1:
* Fix the new check to continue allowing zero as a valid ITR value

 drivers/net/ethernet/intel/iavf/iavf_ethtool.c | 12 ++----------
 drivers/net/ethernet/intel/iavf/iavf_txrx.h    |  1 -
 2 files changed, 2 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index 6f236d1a6444..19cbfe554689 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -827,18 +827,10 @@ static int __iavf_set_coalesce(struct net_device *netdev,
 	struct iavf_adapter *adapter = netdev_priv(netdev);
 	int i;
 
-	if (ec->rx_coalesce_usecs == 0) {
-		if (ec->use_adaptive_rx_coalesce)
-			netif_info(adapter, drv, netdev, "rx-usecs=0, need to disable adaptive-rx for a complete disable\n");
-	} else if ((ec->rx_coalesce_usecs < IAVF_MIN_ITR) ||
-		   (ec->rx_coalesce_usecs > IAVF_MAX_ITR)) {
+	if (ec->rx_coalesce_usecs > IAVF_MAX_ITR) {
 		netif_info(adapter, drv, netdev, "Invalid value, rx-usecs range is 0-8160\n");
 		return -EINVAL;
-	} else if (ec->tx_coalesce_usecs == 0) {
-		if (ec->use_adaptive_tx_coalesce)
-			netif_info(adapter, drv, netdev, "tx-usecs=0, need to disable adaptive-tx for a complete disable\n");
-	} else if ((ec->tx_coalesce_usecs < IAVF_MIN_ITR) ||
-		   (ec->tx_coalesce_usecs > IAVF_MAX_ITR)) {
+	} else if (ec->tx_coalesce_usecs > IAVF_MAX_ITR) {
 		netif_info(adapter, drv, netdev, "Invalid value, tx-usecs range is 0-8160\n");
 		return -EINVAL;
 	}
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.h b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
index 7e6ee32d19b6..10ba36602c0c 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
@@ -15,7 +15,6 @@
  */
 #define IAVF_ITR_DYNAMIC	0x8000	/* use top bit as a flag */
 #define IAVF_ITR_MASK		0x1FFE	/* mask for ITR register value */
-#define IAVF_MIN_ITR		     2	/* reg uses 2 usec resolution */
 #define IAVF_ITR_100K		    10	/* all values below must be even */
 #define IAVF_ITR_50K		    20
 #define IAVF_ITR_20K		    50

base-commit: 218db91044f8f2f6db95ff4788ac1a03fcaf7c4a
prerequisite-patch-id: b6de8a16db743e14af55f1b9cf67f31ef4da0900
prerequisite-patch-id: d36ab3205e29262f859cbecc76f6f52aa35dd1b5
prerequisite-patch-id: 0d1bf2d99824f1a2090539ef5bdd4ea96fbd9957
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
