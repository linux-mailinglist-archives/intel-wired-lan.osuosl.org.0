Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C41D916BC2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Jun 2024 17:05:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6ADAA419B1;
	Tue, 25 Jun 2024 15:05:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CM7E52Le3VtY; Tue, 25 Jun 2024 15:05:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 08E06419B2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719327936;
	bh=wi/vyFRgVxjIs988vIm8JaoL60d1S/xQ250VeHIeie8=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=y8ehuvIdTmGyMsr2sER1oflnyinpiLlCvxTOCXytpNwgSQ68TtG2HidCztsWIH+wI
	 vwCdxEUY/KWy2cUbihfcmS8aQKZWt0qwWFPzsTOcwTp94G2PgeKS17KNLpqDZs4Kf5
	 fltRgFv7kSQJnO7aE4aWjTAHvXFA3ZjgXR7VGXCT901Isj/10od+pXMzvprwRs2Llj
	 JFIqAPtef6NT+dpH6q5zZLl/1gbyqU3mXnBcwuQ4zrZ1bT543qCV6xKZ9QNIEP5FJg
	 ZI7Ob56iAE0Ty+dZGkldioP35h+gAburbxvNwLiedAPBzPT8LZAB39y5dGWkShh/B2
	 YW0VBMdEc4gXg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 08E06419B2;
	Tue, 25 Jun 2024 15:05:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ADC1A1BF355
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jun 2024 08:29:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A68F7404E1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jun 2024 08:29:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wFG1zdYtKZ6t for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Jun 2024 08:29:11 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 92B7640282
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 92B7640282
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 92B7640282
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jun 2024 08:29:11 +0000 (UTC)
X-CSE-ConnectionGUID: Z+0aM71KQcCWHQJf3dBm2Q==
X-CSE-MsgGUID: eUR4DmiuQjOa5yM/mTPxRw==
X-IronPort-AV: E=McAfee;i="6700,10204,11113"; a="20185440"
X-IronPort-AV: E=Sophos;i="6.08,263,1712646000"; d="scan'208";a="20185440"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2024 01:29:11 -0700
X-CSE-ConnectionGUID: q0t9HT/HTlih3tIIeLeHlg==
X-CSE-MsgGUID: wkDqR0oAS0ucwoQnSdWLJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,263,1712646000"; d="scan'208";a="74336770"
Received: from linux.intel.com ([10.54.29.200])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2024 01:29:11 -0700
Received: from mohdfai2-iLBPG12-1.png.intel.com
 (mohdfai2-iLBPG12-1.png.intel.com [10.88.227.73])
 by linux.intel.com (Postfix) with ESMTP id 07B1020B5705;
 Tue, 25 Jun 2024 01:29:07 -0700 (PDT)
From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
To: "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>
Date: Tue, 25 Jun 2024 04:26:56 -0400
Message-Id: <20240625082656.2702440-1-faizal.abdul.rahim@linux.intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 25 Jun 2024 15:05:34 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719304152; x=1750840152;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wXaPYhIxd9lGgS507DARPEtzy5YeJ1pxnrulWrIPLyI=;
 b=a63ZOu+GkBLydxIcjWMTaXuYWQILWJNPArE9uGgMuf/5i5kjBRrRJ/Qd
 FJ9bznCoY0vdpsB4H+1DivhmFZ72za+Rh/0QAbKtGRqE8wtPJNQhH2vcm
 m7Zv+Ss0ZOp0/Ox6R6bv6n+7aTxyC+mwBAZruOt2rfk78O+Xatd3QZCvn
 LnT/Q+OagO+54AUViHqKFjC1C3we2H/Y3jvpnayQjPjfHqpzxxQkHeE7w
 t3x5hVrsZRK8+Kw8sd/1b6g9D1HTfrADfswRZ7nyk+0VkEBN3QxJiOdQC
 EMgYu7gftLSi28ZojuXTKPpmU96/taubBEflp4rRj189TVUz+VktrEMNh
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=a63ZOu+G
Subject: [Intel-wired-lan] [PATCH net 1/1] igc: Fix double reset adapter
 triggered from a single taprio cmd
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Following the implementation of "igc: Add TransmissionOverrun counter"
patch, when a taprio command is triggered by user, igc processes two
commands: TAPRIO_CMD_REPLACE followed by TAPRIO_CMD_STATS. However, both
commands unconditionally pass through igc_tsn_offload_apply() which
evaluates and triggers reset adapter. The double reset causes issues in
the calculation of adapter->qbv_count in igc.

TAPRIO_CMD_REPLACE command is expected to reset the adapter since it
activates qbv. It's unexpected for TAPRIO_CMD_STATS to do the same
because it doesn't configure any driver-specific TSN settings. So, the
evaluation in igc_tsn_offload_apply() isn't needed for TAPRIO_CMD_STATS.

To address this, commands parsing are relocated to
igc_tsn_enable_qbv_scheduling(). Commands that don't require an adapter
reset will exit after processing, thus avoiding igc_tsn_offload_apply().

Fixes: d3750076d464 ("igc: Add TransmissionOverrun counter")
Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 33 ++++++++++++-----------
 1 file changed, 17 insertions(+), 16 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 87b655b839c1..33069880c86c 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6310,21 +6310,6 @@ static int igc_save_qbv_schedule(struct igc_adapter *adapter,
 	size_t n;
 	int i;

-	switch (qopt->cmd) {
-	case TAPRIO_CMD_REPLACE:
-		break;
-	case TAPRIO_CMD_DESTROY:
-		return igc_tsn_clear_schedule(adapter);
-	case TAPRIO_CMD_STATS:
-		igc_taprio_stats(adapter->netdev, &qopt->stats);
-		return 0;
-	case TAPRIO_CMD_QUEUE_STATS:
-		igc_taprio_queue_stats(adapter->netdev, &qopt->queue_stats);
-		return 0;
-	default:
-		return -EOPNOTSUPP;
-	}
-
 	if (qopt->base_time < 0)
 		return -ERANGE;

@@ -6433,7 +6418,23 @@ static int igc_tsn_enable_qbv_scheduling(struct igc_adapter *adapter,
 	if (hw->mac.type != igc_i225)
 		return -EOPNOTSUPP;

-	err = igc_save_qbv_schedule(adapter, qopt);
+	switch (qopt->cmd) {
+	case TAPRIO_CMD_REPLACE:
+		err = igc_save_qbv_schedule(adapter, qopt);
+		break;
+	case TAPRIO_CMD_DESTROY:
+		err = igc_tsn_clear_schedule(adapter);
+		break;
+	case TAPRIO_CMD_STATS:
+		igc_taprio_stats(adapter->netdev, &qopt->stats);
+		return 0;
+	case TAPRIO_CMD_QUEUE_STATS:
+		igc_taprio_queue_stats(adapter->netdev, &qopt->queue_stats);
+		return 0;
+	default:
+		return -EOPNOTSUPP;
+	}
+
 	if (err)
 		return err;

--
2.25.1

