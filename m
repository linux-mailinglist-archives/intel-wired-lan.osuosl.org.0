Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2EBF3B4B92
	for <lists+intel-wired-lan@lfdr.de>; Sat, 26 Jun 2021 02:34:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 624C8404B9;
	Sat, 26 Jun 2021 00:33:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BjmgBZGrZtdJ; Sat, 26 Jun 2021 00:33:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3DCD8402AA;
	Sat, 26 Jun 2021 00:33:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1B2411C11AD
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Jun 2021 00:33:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 09D7E83BB4
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Jun 2021 00:33:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uP6BGRfTIRG0 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 26 Jun 2021 00:33:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1711E83BB3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Jun 2021 00:33:45 +0000 (UTC)
IronPort-SDR: tT0OF9hpDI8J7I4TFAXlmiEb+Gq5YJAjQPVYvx9S14AsKFzyNLsxH6wioVMxxMi2gSQAagQ+c0
 LY99S59DlHFw==
X-IronPort-AV: E=McAfee;i="6200,9189,10026"; a="188141372"
X-IronPort-AV: E=Sophos;i="5.83,300,1616482800"; d="scan'208";a="188141372"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2021 17:33:44 -0700
IronPort-SDR: TqNvkKx6wgoYhZgmMGgKv8s5aPROcy7haOP5YI9ouE+LPSFVTcRtwgJ+gsohwBeYb5ZBiqTl/w
 c5z639OmLWsw==
X-IronPort-AV: E=Sophos;i="5.83,300,1616482800"; d="scan'208";a="557008628"
Received: from aschmalt-mobl1.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.212.160.59])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2021 17:33:43 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: netdev@vger.kernel.org
Date: Fri, 25 Jun 2021 17:33:13 -0700
Message-Id: <20210626003314.3159402-12-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210626003314.3159402-1-vinicius.gomes@intel.com>
References: <20210626003314.3159402-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v4 11/12] igc: Check incompatible
 configs for Frame Preemption
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
Cc: mkubecek@suse.cz, jiri@resnulli.us, vladimir.oltean@nxp.com, po.liu@nxp.com,
 jhs@mojatatu.com, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 xiyou.wangcong@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Frame Preemption and LaunchTime cannot be enabled on the same queue.
If that situation happens, emit an error to the user, and log the
error.

Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 038383519b10..20dac04a02f2 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -5432,6 +5432,11 @@ static int igc_save_launchtime_params(struct igc_adapter *adapter, int queue,
 	if (queue < 0 || queue >= adapter->num_tx_queues)
 		return -EINVAL;
 
+	if (ring->preemptible) {
+		netdev_err(adapter->netdev, "Cannot enable LaunchTime on a preemptible queue\n");
+		return -EINVAL;
+	}
+
 	ring = adapter->tx_ring[queue];
 	ring->launchtime_enable = enable;
 
@@ -5573,8 +5578,14 @@ static int igc_save_frame_preemption(struct igc_adapter *adapter,
 
 	for (i = 0; i < adapter->num_tx_queues; i++) {
 		struct igc_ring *ring = adapter->tx_ring[i];
+		bool preemptible = preempt & BIT(i);
 
-		ring->preemptible = preempt & BIT(i);
+		if (ring->launchtime_enable && preemptible) {
+			netdev_err(adapter->netdev, "Cannot set queue as preemptible if LaunchTime is enabled\n");
+			return -EINVAL;
+		}
+
+		ring->preemptible = preemptible;
 	}
 
 	return 0;
-- 
2.32.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
