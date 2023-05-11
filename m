Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A59536FFCF3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 May 2023 01:07:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 41E9C41E23;
	Thu, 11 May 2023 23:07:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 41E9C41E23
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683846477;
	bh=bpTmCAX+STV3Ixz0N1vELp1p6su3tTLjs9reThbuO6A=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NV9g33l4F0aileCLPi270nIgVbyyXLIxA2I8YXxUMLq0NeQ1mYnZ2K6r9rANdltgz
	 GJ/mYKO1zslkFeQXnttn36HIv6pe+ukXn/YwVqM9WWYzK78f/OGPNLOwnbW79fKPGN
	 I7r7BfYfRUVJze4VEmXvv/bgWjzV8ASCN5jCwmbFxVNQsh/LQ9aMKX2quxFQpadMja
	 THR6VUPadWjyigQwsIpkCq49gEGoZo7Q4oAZl3g6gN0Wzta1lNy9bahoOwbakmf64f
	 inp/y4JtNrnXFjFPWpJ9WpH92d00IJZM1e712wwf8G0OOfsjFA8Asu9Q9pfdqHvoUg
	 ILJ/U8CY47OcQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wVdg4FUB8g0x; Thu, 11 May 2023 23:07:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1A928415A0;
	Thu, 11 May 2023 23:07:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1A928415A0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 10B8E1BF276
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 May 2023 23:07:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5217A40105
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 May 2023 23:07:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5217A40105
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xFTvI5_Nt-Iu for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 May 2023 23:07:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9727841D6C
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9727841D6C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 May 2023 23:07:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="339959138"
X-IronPort-AV: E=Sophos;i="5.99,268,1677571200"; d="scan'208";a="339959138"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 16:07:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="946374632"
X-IronPort-AV: E=Sophos;i="5.99,268,1677571200"; d="scan'208";a="946374632"
Received: from vcostago-mobl3.jf.intel.com ([10.24.14.106])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 16:07:40 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 11 May 2023 16:07:30 -0700
Message-Id: <20230511230731.105152-4-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230511230731.105152-1-vinicius.gomes@intel.com>
References: <20230511230731.105152-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683846462; x=1715382462;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EZIE1csoqVrbk3SPeyqmkhg62ix3C0bKklbfqVBi+Dc=;
 b=Yrk+VodQDjHJRSAHWWuAParHYgXdX5fR120Vln1ftlodEH/5XjOSI5io
 g8RFJcuvLmkX34hs2Q2CqWdBzg9hW7YbdGPDw1fZk0XBt0vMr5BWZaE5d
 k0CE4Ugy7tu+fDl8kvSHN/NmwNkn4YcV+tY13+lQN+7aKKAGMdE4Rhjjc
 ObOSBuLtE+a7eLSWCdx0146QGhSdtKVuAb8IK3Gy0MVhB/EL0du/r9Axy
 6aQoOM/P3OP2JsOkAlNVBBBUk0KAfcNPcf3hwzSWcWeEG/VhBgQ78Jp7G
 +5aFsC31DojpyzGMB/GgfZEib+F10Z0JfMvJWP+oENlGKePtz8DF1AJR4
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Yrk+VodQ
Subject: [Intel-wired-lan] [PATCH iwl-net v2 3/4] igc: Retrieve TX timestamp
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

Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>
---
 drivers/net/ethernet/intel/igc/igc.h      | 2 +-
 drivers/net/ethernet/intel/igc/igc_main.c | 2 +-
 drivers/net/ethernet/intel/igc/igc_ptp.c  | 9 ++-------
 3 files changed, 4 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 7da0657ea48f..be1a1e67c39b 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -228,7 +228,6 @@ struct igc_adapter {
 
 	struct ptp_clock *ptp_clock;
 	struct ptp_clock_info ptp_caps;
-	struct work_struct ptp_tx_work;
 	/* Access to ptp_tx_skb and ptp_tx_start are protected by the
 	 * ptp_tx_lock.
 	 */
@@ -637,6 +636,7 @@ int igc_ptp_set_ts_config(struct net_device *netdev, struct ifreq *ifr);
 int igc_ptp_get_ts_config(struct net_device *netdev, struct ifreq *ifr);
 void igc_ptp_tx_hang(struct igc_adapter *adapter);
 void igc_ptp_read(struct igc_adapter *adapter, struct timespec64 *ts);
+void igc_ptp_tx_work(struct igc_adapter *adapter);
 
 #define igc_rx_pg_size(_ring) (PAGE_SIZE << igc_rx_pg_order(_ring))
 
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index b383352651a5..e6880b6ea187 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -5216,7 +5216,7 @@ static void igc_tsync_interrupt(struct igc_adapter *adapter)
 
 	if (tsicr & IGC_TSICR_TXTS) {
 		/* retrieve hardware timestamp */
-		schedule_work(&adapter->ptp_tx_work);
+		igc_ptp_tx_work(adapter);
 		ack |= IGC_TSICR_TXTS;
 	}
 
diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index 4dd0eec5a246..17e8970bd761 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -540,8 +540,6 @@ static void igc_ptp_clear_tx_tstamp(struct igc_adapter *adapter)
 {
 	unsigned long flags;
 
-	cancel_work_sync(&adapter->ptp_tx_work);
-
 	spin_lock_irqsave(&adapter->ptp_tx_lock, flags);
 
 	dev_kfree_skb_any(adapter->ptp_tx_skb);
@@ -706,15 +704,13 @@ static void igc_ptp_tx_hwtstamp(struct igc_adapter *adapter)
 
 /**
  * igc_ptp_tx_work
- * @work: pointer to work struct
+ * @adapter: board private structure
  *
  * This work function checks the TSYNCTXCTL valid bit to determine when
  * a timestamp has been taken for the current stored skb.
  */
-static void igc_ptp_tx_work(struct work_struct *work)
+void igc_ptp_tx_work(struct igc_adapter *adapter)
 {
-	struct igc_adapter *adapter = container_of(work, struct igc_adapter,
-						   ptp_tx_work);
 	struct igc_hw *hw = &adapter->hw;
 	unsigned long flags;
 	u32 tsynctxctl;
@@ -985,7 +981,6 @@ void igc_ptp_init(struct igc_adapter *adapter)
 
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
