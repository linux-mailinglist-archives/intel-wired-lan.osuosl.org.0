Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5399F2CB413
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Dec 2020 05:54:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 72B112E202;
	Wed,  2 Dec 2020 04:54:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OpgLhxO7o2pR; Wed,  2 Dec 2020 04:54:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 53D3E2E1F6;
	Wed,  2 Dec 2020 04:54:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7F9DD1BF30A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 04:53:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 79F9687886
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 04:53:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w00eH4907KGb for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Dec 2020 04:53:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BDCC787883
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 04:53:51 +0000 (UTC)
IronPort-SDR: C7RjAXIK8KjLgrKDnVya9SgoBHyV8ViPgS11vQeIlRB0Gjd42px5x+PNYaCcHZHtGzON00Qxgr
 OVRxygvVrGgw==
X-IronPort-AV: E=McAfee;i="6000,8403,9822"; a="234558821"
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="234558821"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 20:53:49 -0800
IronPort-SDR: 0WbdXq5qnllbYBprKbbbPey2UHrxjaAE7yMXBQUiaflxM3hn7eD+J1UC0eGx4nVTWsDShXx+J4
 SkeOf2hI5ROQ==
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="549888378"
Received: from shivanif-mobl.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.212.152.222])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 20:53:49 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: netdev@vger.kernel.org
Date: Tue,  1 Dec 2020 20:53:21 -0800
Message-Id: <20201202045325.3254757-6-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201202045325.3254757-1-vinicius.gomes@intel.com>
References: <20201202045325.3254757-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1 5/9] igc: Avoid TX Hangs
 because long cycles
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
Cc: Jose.Abreu@synopsys.com, jiri@resnulli.us, vladimir.oltean@nxp.com,
 po.liu@nxp.com, jhs@mojatatu.com, m-karicheri2@ti.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, xiyou.wangcong@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Avoid possible TX Hangs caused by using long Qbv cycles. In some
cases, using long cycles (more than 1 second) can cause transmissions
to be blocked for that time. As the TX Hang timeout is close to 1
second, we may need to reduce the cycle time to something more
reasonable: the value chosen is 1ms.

Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 4 ++--
 drivers/net/ethernet/intel/igc/igc_tsn.c  | 6 +++---
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index b673ac1199bb..3af54fd9cc0d 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -4692,12 +4692,12 @@ static int igc_save_launchtime_params(struct igc_adapter *adapter, int queue,
 	if (adapter->base_time)
 		return 0;
 
-	adapter->cycle_time = NSEC_PER_SEC;
+	adapter->cycle_time = NSEC_PER_MSEC;
 
 	for (i = 0; i < adapter->num_tx_queues; i++) {
 		ring = adapter->tx_ring[i];
 		ring->start_time = 0;
-		ring->end_time = NSEC_PER_SEC;
+		ring->end_time = NSEC_PER_MSEC;
 	}
 
 	return 0;
diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
index 38451cf05ac6..f5a5527adb21 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.c
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
@@ -54,11 +54,11 @@ static int igc_tsn_disable_offload(struct igc_adapter *adapter)
 
 		wr32(IGC_TXQCTL(i), 0);
 		wr32(IGC_STQT(i), 0);
-		wr32(IGC_ENDQT(i), NSEC_PER_SEC);
+		wr32(IGC_ENDQT(i), NSEC_PER_MSEC);
 	}
 
-	wr32(IGC_QBVCYCLET_S, NSEC_PER_SEC);
-	wr32(IGC_QBVCYCLET, NSEC_PER_SEC);
+	wr32(IGC_QBVCYCLET_S, NSEC_PER_MSEC);
+	wr32(IGC_QBVCYCLET, NSEC_PER_MSEC);
 
 	adapter->flags &= ~IGC_FLAG_TSN_QBV_ENABLED;
 
-- 
2.29.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
