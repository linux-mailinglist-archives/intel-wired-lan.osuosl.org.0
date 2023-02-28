Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2478A6A52B5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Feb 2023 06:46:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A4301610EA;
	Tue, 28 Feb 2023 05:46:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A4301610EA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677563182;
	bh=mAyLrEXwK1Cyb9WD06aDAgw/0mFtwwCFBsmFWwCACmA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=C6PvaiA+UPCg/TYgcVIo0zQS/Tog9hEFvwEI1oVZr7VmMBmB08//iBtYpGCooGDwi
	 pfT0wk+VlZptjbQswY9c4V+Y7Jikv9zbtdH73Or1+QBAy2C005aY19Rc/BijPCC/Ij
	 mXjhVv4McU+tJ+r7iXf+g1Zf98Umv2E2K3uKjkZlpKqd5XAJhff5UGx9dew1CS2qyG
	 z9DVHVnDT2zPEogrleetlAHQh/5WRXO6eQR5fyylqubnCVDTTZoN1Nu8CoPEA2KxKI
	 vgC36S42LPVmjzvoBSilE1vXUyDGIEiOLaCjZeR6PUUM+glb/QQxbtkYUPNFCH92FY
	 lWIukkyHyTvjA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9AorDDfVStwL; Tue, 28 Feb 2023 05:46:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 69A64610BA;
	Tue, 28 Feb 2023 05:46:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 69A64610BA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 570981BF36E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 05:46:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7E9FE610BE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 05:46:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7E9FE610BE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 80nc9yVoPNI1 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Feb 2023 05:46:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AE6EF610BA
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AE6EF610BA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 05:46:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="313729852"
X-IronPort-AV: E=Sophos;i="5.98,221,1673942400"; d="scan'208";a="313729852"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 21:46:08 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="676183318"
X-IronPort-AV: E=Sophos;i="5.98,221,1673942400"; d="scan'208";a="676183318"
Received: from keverson-mobl.amr.corp.intel.com (HELO
 vcostago-mobl3.intel.com) ([10.209.84.181])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 21:46:08 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 27 Feb 2023 21:45:34 -0800
Message-Id: <20230228054534.1093483-4-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230228054534.1093483-1-vinicius.gomes@intel.com>
References: <20230228054534.1093483-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677563168; x=1709099168;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=g+KXbXK9xWq6+zDmNByaMZgArCjEF/R6uAr4bZcykBE=;
 b=LcRQbQQswPNe0iuGT6jxEEs6/E1SfNCPmd9/h/gj6dzHT3o0dyB/eE5z
 jflTK2m53tyRIbOaIO+gHnCsvzBX7xKzxqbZgWKuhTgk8i0ukjs78twvH
 8LEDqvSGgGCUw+6PC2PfodYzhXOiXTRkePg1kj5KYlyDgQPE1dh7CYnGY
 qZer5zege2hKzzVYlovSag4auGwVlQF4m1UEMlSMfmfSFpfZBlr+iHcCZ
 0abuQwoGMIX6KE7Yfu48N/G3KzERxc4T+/sD5S/wBLMK9PP2NmnRSM6oF
 1UWdnAESfOeLJgauhzWLJN/96yOZ9AvtUcSzOqaYWg2e9a5RCIZEdgBSq
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LcRQbQQs
Subject: [Intel-wired-lan] [PATCH next-queue v1 3/3] igc: Use
 ptp->aux_worker to retrieve TX timestamps
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

ptp->aux_worker is a kthread and allows the user to set it's priority,
which is useful for workloads that time synchronization is required.

As an optimization, when the interrupt is handled try to retrieve the
timestamps "inline", if they are not, schedule the workload. This
should reduce the delay before the TX timestamp is available to
userspace.

Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h      |  2 +-
 drivers/net/ethernet/intel/igc/igc_main.c |  7 +++++-
 drivers/net/ethernet/intel/igc/igc_ptp.c  | 29 ++++++++++++++++-------
 3 files changed, 28 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index f0617838a16a..ce7754cb7e6f 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -237,7 +237,6 @@ struct igc_adapter {
 
 	struct ptp_clock *ptp_clock;
 	struct ptp_clock_info ptp_caps;
-	struct work_struct ptp_tx_work;
 	/* Access to ptp_tx_skb and ptp_tx_start is protected by the
 	 * ptp_tx_lock.
 	 */
@@ -651,6 +650,7 @@ int igc_ptp_set_ts_config(struct net_device *netdev, struct ifreq *ifr);
 int igc_ptp_get_ts_config(struct net_device *netdev, struct ifreq *ifr);
 void igc_ptp_tx_hang(struct igc_adapter *adapter);
 void igc_ptp_read(struct igc_adapter *adapter, struct timespec64 *ts);
+long igc_ptp_tx_work(struct ptp_clock_info *ptp);
 
 #define igc_rx_pg_size(_ring) (PAGE_SIZE << igc_rx_pg_order(_ring))
 
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 4861ad0689ed..a7775d618867 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -5226,8 +5226,13 @@ static void igc_tsync_interrupt(struct igc_adapter *adapter)
 	}
 
 	if (tsicr & IGC_TSICR_TXTS) {
+		long delay;
 		/* retrieve hardware timestamp */
-		schedule_work(&adapter->ptp_tx_work);
+		delay = igc_ptp_tx_work(&adapter->ptp_caps);
+		if (delay >= 0) {
+			/* The timestamp is not ready, schedule to check later */
+			ptp_schedule_worker(adapter->ptp_clock, delay);
+		}
 		ack |= IGC_TSICR_TXTS;
 	}
 
diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index 0cb932b52a7b..34237464f26d 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -713,24 +713,37 @@ static void igc_ptp_tx_hwtstamp(struct igc_adapter *adapter, u32 mask)
  * igc_ptp_tx_work
  * @work: pointer to work struct
  *
- * This work function polls the TSYNCTXCTL valid bit to determine when a
- * timestamp has been taken for the current stored skb.
+ * This work function polls the TSYNCTXCTL valid bit to determine when
+ * a timestamp has been taken for the current stored skb. Return a
+ * delay in case there's no timestamp ready.
  */
-static void igc_ptp_tx_work(struct work_struct *work)
+long igc_ptp_tx_work(struct ptp_clock_info *ptp)
 {
-	struct igc_adapter *adapter = container_of(work, struct igc_adapter,
-						   ptp_tx_work);
+	struct igc_adapter *adapter = container_of(ptp, struct igc_adapter,
+						   ptp_caps);
 	struct igc_hw *hw = &adapter->hw;
 	unsigned long flags;
 	u32 tsynctxctl;
+	long delay = -1;
 
 	spin_lock_irqsave(&adapter->ptp_tx_lock, flags);
 
 	tsynctxctl = rd32(IGC_TSYNCTXCTL);
+	tsynctxctl &= IGC_TSYNCTXCTL_TXTT_ANY;
+	if (!tsynctxctl) {
+		/* We got the interrupt but the timestamp is not ready
+		 * still, schedule to check later.
+		 */
+		delay = usecs_to_jiffies(1);
+		goto unlock;
+	}
 
-	igc_ptp_tx_hwtstamp(adapter, tsynctxctl & IGC_TSYNCTXCTL_TXTT_ANY);
+	igc_ptp_tx_hwtstamp(adapter, tsynctxctl);
 
+unlock:
 	spin_unlock_irqrestore(&adapter->ptp_tx_lock, flags);
+
+	return delay;
 }
 
 /**
@@ -993,6 +1006,7 @@ void igc_ptp_init(struct igc_adapter *adapter)
 		adapter->ptp_caps.n_per_out = IGC_N_PEROUT;
 		adapter->ptp_caps.n_pins = IGC_N_SDP;
 		adapter->ptp_caps.verify = igc_ptp_verify_pin;
+		adapter->ptp_caps.do_aux_work = igc_ptp_tx_work;
 
 		if (!igc_is_crosststamp_supported(adapter))
 			break;
@@ -1006,7 +1020,6 @@ void igc_ptp_init(struct igc_adapter *adapter)
 
 	spin_lock_init(&adapter->tmreg_lock);
 	spin_lock_init(&adapter->ptp_tx_lock);
-	INIT_WORK(&adapter->ptp_tx_work, igc_ptp_tx_work);
 
 	adapter->tstamp_config.rx_filter = HWTSTAMP_FILTER_NONE;
 	adapter->tstamp_config.tx_type = HWTSTAMP_TX_OFF;
@@ -1081,7 +1094,7 @@ void igc_ptp_suspend(struct igc_adapter *adapter)
 	if (!(adapter->ptp_flags & IGC_PTP_ENABLED))
 		return;
 
-	cancel_work_sync(&adapter->ptp_tx_work);
+	ptp_cancel_worker_sync(adapter->ptp_clock);
 
 	spin_lock_irqsave(&adapter->ptp_tx_lock, flags);
 
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
