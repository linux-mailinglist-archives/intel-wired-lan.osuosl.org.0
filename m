Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7326D2FAE22
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Jan 2021 01:41:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2F48423018;
	Tue, 19 Jan 2021 00:41:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CHCC6rJDOXcd; Tue, 19 Jan 2021 00:40:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 510BD20438;
	Tue, 19 Jan 2021 00:40:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E1BEA1BF2EA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jan 2021 00:40:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DE4F886788
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jan 2021 00:40:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s32h94FPWBqr for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Jan 2021 00:40:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 50DAB8674E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jan 2021 00:40:54 +0000 (UTC)
IronPort-SDR: WDMZ11/SrAFfiQQmZBRK6Ii26HM2TfmwW0tbmPWj17Py8s0qBelQ5hRiPZ8Kdxvl3OoSV7oT+A
 9fkUUBZTInTA==
X-IronPort-AV: E=McAfee;i="6000,8403,9868"; a="240401905"
X-IronPort-AV: E=Sophos;i="5.79,357,1602572400"; d="scan'208";a="240401905"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 16:40:54 -0800
IronPort-SDR: QZSJrKENayqnnMspYJoz4fxLDekgzyytlj8vot2EsqqKPDZa3urdDUgiSGo/37+qiRQyYvGlUo
 LNLblCTgfMKQ==
X-IronPort-AV: E=Sophos;i="5.79,357,1602572400"; d="scan'208";a="426285778"
Received: from cemillan-mobl.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.212.57.184])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 16:40:52 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: netdev@vger.kernel.org
Date: Mon, 18 Jan 2021 16:40:25 -0800
Message-Id: <20210119004028.2809425-6-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210119004028.2809425-1-vinicius.gomes@intel.com>
References: <20210119004028.2809425-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v2 5/8] igc: Avoid TX Hangs
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
Cc: Jose.Abreu@synopsys.com, mkubecek@suse.cz, jiri@resnulli.us,
 vladimir.oltean@nxp.com, po.liu@nxp.com, jhs@mojatatu.com, m-karicheri2@ti.com,
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
index afd6a62da29d..f1b31fa04734 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -4693,12 +4693,12 @@ static int igc_save_launchtime_params(struct igc_adapter *adapter, int queue,
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
2.30.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
