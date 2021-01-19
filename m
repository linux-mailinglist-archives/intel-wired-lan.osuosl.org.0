Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F16C02FAE20
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Jan 2021 01:41:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B3BA48698B;
	Tue, 19 Jan 2021 00:41:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HJnpM35IfEMV; Tue, 19 Jan 2021 00:40:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3741186788;
	Tue, 19 Jan 2021 00:40:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 570BB1BF2EA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jan 2021 00:40:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4EEE186788
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jan 2021 00:40:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id USDbWHza9n7q for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Jan 2021 00:40:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C28D086945
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jan 2021 00:40:55 +0000 (UTC)
IronPort-SDR: D7/yGBgwV6EuoUB41YZDjbnfAh35FVGp55MNLtZkuobsyoCy43wb30skC43jgSzYydn0GaLtia
 1LIHZGzxw9sQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9868"; a="240401912"
X-IronPort-AV: E=Sophos;i="5.79,357,1602572400"; d="scan'208";a="240401912"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 16:40:55 -0800
IronPort-SDR: Hn1Lm3Gh7gEqt8pRJz3t5DXZeFpfWxuDZ5yXY5+XRlx995Rlplt1vJFgdYw4F1v5Q6E9VGulkl
 TwQXmGpWGCIA==
X-IronPort-AV: E=Sophos;i="5.79,357,1602572400"; d="scan'208";a="426285788"
Received: from cemillan-mobl.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.212.57.184])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 16:40:54 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: netdev@vger.kernel.org
Date: Mon, 18 Jan 2021 16:40:27 -0800
Message-Id: <20210119004028.2809425-8-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210119004028.2809425-1-vinicius.gomes@intel.com>
References: <20210119004028.2809425-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v2 7/8] igc: Add support for
 Frame Preemption offload
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

After the set of queues that are marked as preemptible are exposed to
the driver we can configure the hardware to enable the frame
preemption functionality.

Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 32 +++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index f1b31fa04734..6a09f37ba7ed 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -4818,6 +4818,23 @@ static int igc_save_qbv_schedule(struct igc_adapter *adapter,
 	return 0;
 }
 
+static int igc_save_frame_preemption(struct igc_adapter *adapter,
+				     struct tc_preempt_qopt_offload *qopt)
+{
+	u32 preempt;
+	int i;
+
+	preempt = qopt->preemptible_queues;
+
+	for (i = 0; i < adapter->num_tx_queues; i++) {
+		struct igc_ring *ring = adapter->tx_ring[i];
+
+		ring->preemptible = preempt & BIT(i);
+	}
+
+	return 0;
+}
+
 static int igc_tsn_enable_qbv_scheduling(struct igc_adapter *adapter,
 					 struct tc_taprio_qopt_offload *qopt)
 {
@@ -4834,6 +4851,18 @@ static int igc_tsn_enable_qbv_scheduling(struct igc_adapter *adapter,
 	return igc_tsn_offload_apply(adapter);
 }
 
+static int igc_tsn_enable_frame_preemption(struct igc_adapter *adapter,
+					   struct tc_preempt_qopt_offload *qopt)
+{
+	int err;
+
+	err = igc_save_frame_preemption(adapter, qopt);
+	if (err)
+		return err;
+
+	return igc_tsn_offload_apply(adapter);
+}
+
 static int igc_setup_tc(struct net_device *dev, enum tc_setup_type type,
 			void *type_data)
 {
@@ -4846,6 +4875,9 @@ static int igc_setup_tc(struct net_device *dev, enum tc_setup_type type,
 	case TC_SETUP_QDISC_ETF:
 		return igc_tsn_enable_launchtime(adapter, type_data);
 
+	case TC_SETUP_PREEMPT:
+		return igc_tsn_enable_frame_preemption(adapter, type_data);
+
 	default:
 		return -EOPNOTSUPP;
 	}
-- 
2.30.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
