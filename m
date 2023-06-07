Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 533FF727091
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Jun 2023 23:33:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E454F41736;
	Wed,  7 Jun 2023 21:33:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E454F41736
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686173580;
	bh=qgWE+4XL70m6JQ4stfV27+TELgfVxwSt+oj1QZ3hcJk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GT27KYYf+KUFdxlZ8O6X4zTOZ5xBZxDicEinepFY+vZfJZJHSAiDKlAo51oyHfJST
	 k5V3iEoAAXxhFa+/+lX4tLtSsaKSxiFxyH4REQeHy6tGIEhSbKOCNupSjbucUG37LP
	 4hsDw+da8nXj4RqE7QSAMXU4XWTC5CoLFzaDq8j3Duv5C7zkJjlKLq0lzsgvdNKRFj
	 B/k7lXDouzth0m4f4qm3lrTWV1n2fNE+bOJGZ027k3IfVhuyLepELqWXN3E3vYyZnG
	 X2CTKN524LhsMK2v39L3uIdFM7nnFGO1lS36/P1hRR8dmmGdvi2c3/0HWRMJsF5HeV
	 KD70dHfnhY79w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ahoxPFaJtECH; Wed,  7 Jun 2023 21:33:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6DD5F4182F;
	Wed,  7 Jun 2023 21:32:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6DD5F4182F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3173D1BF3CD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 21:32:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4862E60FB6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 21:32:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4862E60FB6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OijPYnLGlG1J for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Jun 2023 21:32:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3421561174
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3421561174
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 21:32:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="336741889"
X-IronPort-AV: E=Sophos;i="6.00,225,1681196400"; d="scan'208";a="336741889"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 14:32:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="742853922"
X-IronPort-AV: E=Sophos;i="6.00,225,1681196400"; d="scan'208";a="742853922"
Received: from adtotpal-mobl.amr.corp.intel.com (HELO
 vcostago-mobl3.intel.com) ([10.209.21.176])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 14:32:39 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  7 Jun 2023 14:32:31 -0700
Message-Id: <20230607213232.875138-4-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230607213232.875138-1-vinicius.gomes@intel.com>
References: <20230607213232.875138-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686173561; x=1717709561;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5NVTPa7/n7QlDI7nf+uv9siN9WmG4uJQtDtPdqmuqhI=;
 b=YQPBkslAo/yTFCRMLRAiknSyPSlTDV7h04B6wPrO82WV06xz53LvevZR
 CrZ6LGx92BrpW3BBVsnQrgaP88AMST1wSAh19bfsDybib3AEX/HIfWQp2
 oMsq9n6bPA+60RMDohsL52FgzJeHgk5QxQE/zHy0yKEcM1YQc3zdpn/8Q
 bmT0whjvwu5orkcAd6RUThqcCKbDNTuRlJRBKfWVTJsABXLK4CGay0kFp
 r+KzsHQG3YMJoR32TGh9uB0qfSMBaDoLpK42qqfXu8oTmzTDJ8kr5bEVw
 fRgVlI64UrEK4uaxa9VJZNnVg7Xea6Sjvh6Bn7UJlU1XlYi9gTMrNkNOU
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YQPBkslA
Subject: [Intel-wired-lan] [PATCH iwl-net v4 3/4] igc: Retrieve TX timestamp
 during interrupt handling
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
Cc: vladimir.oltean@nxp.com, kurt@linutronix.de, anthony.l.nguyen@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When the interrupt is handled, the TXTT_0 bit in the TSYNCTXCTL
register should already be set and the timestamp value already loaded
in the appropriate register.

This simplifies the handling, and reduces the latency for retrieving
the TX timestamp, which increase the amount of TX timestamps that can
be handled in a given time period.

As the "work" function doesn't run in a workqueue anymore, rename it
to something more sensible, a event handler.

Using ntpperf[1] we can see the following performance improvements:

Before:

$ sudo ./ntpperf -i enp3s0 -m 10:22:22:22:22:21 -d 192.168.1.3 -s 172.18.0.0/16 -I -H -o -37
               |          responses            |     TX timestamp offset (ns)
rate   clients |  lost invalid   basic  xleave |    min    mean     max stddev
1000       100   0.00%   0.00%   0.00% 100.00%      -56      +9     +52     19
1500       150   0.00%   0.00%   0.00% 100.00%      -40     +30     +75     22
2250       225   0.00%   0.00%   0.00% 100.00%      -11     +29     +72     15
3375       337   0.00%   0.00%   0.00% 100.00%      -18     +40     +88     22
5062       506   0.00%   0.00%   0.00% 100.00%      -19     +23     +77     15
7593       759   0.00%   0.00%   0.00% 100.00%       +7     +47   +5168     43
11389     1138   0.00%   0.00%   0.00% 100.00%      -11     +41   +5240     39
17083     1708   0.00%   0.00%   0.00% 100.00%      +19     +60   +5288     50
25624     2562   0.00%   0.00%   0.00% 100.00%       +1     +56   +5368     58
38436     3843   0.00%   0.00%   0.00% 100.00%      -84     +12   +8847     66
57654     5765   0.00%   0.00% 100.00%   0.00%
86481     8648   0.00%   0.00% 100.00%   0.00%
129721   12972   0.00%   0.00% 100.00%   0.00%
194581   16384   0.00%   0.00% 100.00%   0.00%
291871   16384  27.35%   0.00%  72.65%   0.00%
437806   16384  50.05%   0.00%  49.95%   0.00%

After:

$ sudo ./ntpperf -i enp3s0 -m 10:22:22:22:22:21 -d 192.168.1.3 -s 172.18.0.0/16 -I -H -o -37
               |          responses            |     TX timestamp offset (ns)
rate   clients |  lost invalid   basic  xleave |    min    mean     max stddev
1000       100   0.00%   0.00%   0.00% 100.00%      -44      +0     +61     19
1500       150   0.00%   0.00%   0.00% 100.00%       -6     +39     +81     16
2250       225   0.00%   0.00%   0.00% 100.00%      -22     +25     +69     15
3375       337   0.00%   0.00%   0.00% 100.00%      -28     +15     +56     14
5062       506   0.00%   0.00%   0.00% 100.00%       +7     +78    +143     27
7593       759   0.00%   0.00%   0.00% 100.00%      -54     +24    +144     47
11389     1138   0.00%   0.00%   0.00% 100.00%      -90     -33     +28     21
17083     1708   0.00%   0.00%   0.00% 100.00%      -50      -2     +35     14
25624     2562   0.00%   0.00%   0.00% 100.00%      -62      +7     +66     23
38436     3843   0.00%   0.00%   0.00% 100.00%      -33     +30   +5395     36
57654     5765   0.00%   0.00% 100.00%   0.00%
86481     8648   0.00%   0.00% 100.00%   0.00%
129721   12972   0.00%   0.00% 100.00%   0.00%
194581   16384  19.50%   0.00%  80.50%   0.00%
291871   16384  35.81%   0.00%  64.19%   0.00%
437806   16384  55.40%   0.00%  44.60%   0.00%

[1] https://github.com/mlichvar/ntpperf

Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>
---
 drivers/net/ethernet/intel/igc/igc.h      |  2 +-
 drivers/net/ethernet/intel/igc/igc_main.c |  2 +-
 drivers/net/ethernet/intel/igc/igc_ptp.c  | 15 +++++----------
 3 files changed, 7 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 66fb67c17e4f..a00738bf6b19 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -228,7 +228,6 @@ struct igc_adapter {
 
 	struct ptp_clock *ptp_clock;
 	struct ptp_clock_info ptp_caps;
-	struct work_struct ptp_tx_work;
 	/* Access to ptp_tx_skb and ptp_tx_start are protected by the
 	 * ptp_tx_lock.
 	 */
@@ -638,6 +637,7 @@ int igc_ptp_set_ts_config(struct net_device *netdev, struct ifreq *ifr);
 int igc_ptp_get_ts_config(struct net_device *netdev, struct ifreq *ifr);
 void igc_ptp_tx_hang(struct igc_adapter *adapter);
 void igc_ptp_read(struct igc_adapter *adapter, struct timespec64 *ts);
+void igc_ptp_tx_tstamp_event(struct igc_adapter *adapter);
 
 #define igc_rx_pg_size(_ring) (PAGE_SIZE << igc_rx_pg_order(_ring))
 
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index d3cfb8e97ac8..3ee77d523fce 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -5216,7 +5216,7 @@ static void igc_tsync_interrupt(struct igc_adapter *adapter)
 
 	if (tsicr & IGC_TSICR_TXTS) {
 		/* retrieve hardware timestamp */
-		schedule_work(&adapter->ptp_tx_work);
+		igc_ptp_tx_tstamp_event(adapter);
 		ack |= IGC_TSICR_TXTS;
 	}
 
diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index 42f622ceb64b..cf963a12a92f 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -540,8 +540,6 @@ static void igc_ptp_clear_tx_tstamp(struct igc_adapter *adapter)
 {
 	unsigned long flags;
 
-	cancel_work_sync(&adapter->ptp_tx_work);
-
 	spin_lock_irqsave(&adapter->ptp_tx_lock, flags);
 
 	dev_kfree_skb_any(adapter->ptp_tx_skb);
@@ -724,16 +722,14 @@ static void igc_ptp_tx_hwtstamp(struct igc_adapter *adapter)
 }
 
 /**
- * igc_ptp_tx_work
- * @work: pointer to work struct
+ * igc_ptp_tx_tstamp_event
+ * @adapter: board private structure
  *
- * This work function checks the TSYNCTXCTL valid bit to determine when
- * a timestamp has been taken for the current stored skb.
+ * Called when a TX timestamp interrupt happens to retrieve the
+ * timestamp and send it up to the socket.
  */
-static void igc_ptp_tx_work(struct work_struct *work)
+void igc_ptp_tx_tstamp_event(struct igc_adapter *adapter)
 {
-	struct igc_adapter *adapter = container_of(work, struct igc_adapter,
-						   ptp_tx_work);
 	struct igc_hw *hw = &adapter->hw;
 	unsigned long flags;
 	u32 tsynctxctl;
@@ -1004,7 +1000,6 @@ void igc_ptp_init(struct igc_adapter *adapter)
 
 	spin_lock_init(&adapter->ptp_tx_lock);
 	spin_lock_init(&adapter->tmreg_lock);
-	INIT_WORK(&adapter->ptp_tx_work, igc_ptp_tx_work);
 
 	adapter->tstamp_config.rx_filter = HWTSTAMP_FILTER_NONE;
 	adapter->tstamp_config.tx_type = HWTSTAMP_TX_OFF;
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
