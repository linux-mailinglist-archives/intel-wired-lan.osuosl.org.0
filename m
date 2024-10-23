Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7480D9ABBA9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Oct 2024 04:40:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2C39740586;
	Wed, 23 Oct 2024 02:40:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0Hk9WUTL35Md; Wed, 23 Oct 2024 02:40:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0EEF04057A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729651202;
	bh=+119Yu3FZjKqDHaNUSvCFY/zkfsDy65cH5ymx7eePRI=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=oBrIf7bvTM/KDzgK366WgpLOhXaWDs2gP/GnaLaShlcitsFf4r2dhDYKkyU7LoZk5
	 a9efNSbD0x8ff70n5NIhfLVhZckpok3tiSPBkiKhnwaQk/q0fMCHaIHwpESH8i9u82
	 VsVRk05wgakUJBYOwoWovi4FbxM5h/WaouSrdVE9m73Wi6XGipFF77RsvBZyhpza7V
	 OMI9XEmawdKFAzQuYOX49iNUf5lwr2NQHHDLiMt8RlgT2fBU2WTcVSDlZVFvLlgL7l
	 yi2ZKE6CzcFGxgo+KlzHjwOCGia9WtLAEkSfiPfmVZm0968pS+NRhhkBUNCSGpP02L
	 DviFjdOvGWM7w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0EEF04057A;
	Wed, 23 Oct 2024 02:40:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 5DEBC59BA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 02:39:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4035280F41
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 02:39:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UTlt1srqwWWg for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Oct 2024 02:39:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=christopher.s.hall@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 67BA280F43
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 67BA280F43
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 67BA280F43
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 02:39:55 +0000 (UTC)
X-CSE-ConnectionGUID: rb/tmrEJSTSpF5sw9i+WOg==
X-CSE-MsgGUID: EiPMVoTiSianBD0keKDXlw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="32918048"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="32918048"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 19:39:55 -0700
X-CSE-ConnectionGUID: v24BRyP1T7ymzKN/4Lzeag==
X-CSE-MsgGUID: axdojXz8SaObmq+J6tzNtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="80396834"
Received: from timelab-spr11.ch.intel.com ([143.182.136.151])
 by fmviesa010.fm.intel.com with ESMTP; 22 Oct 2024 19:39:54 -0700
From: Chris H <christopher.s.hall@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: david.zage@intel.com, vinicius.gomes@intel.com, netdev@vger.kernel.org,
 rodrigo.cadore@l-acoustics.com, vinschen@redhat.com,
 Christopher S M Hall <christopher.s.hall@intel.com>
Date: Wed, 23 Oct 2024 02:30:40 +0000
Message-Id: <20241023023040.111429-5-christopher.s.hall@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241023023040.111429-1-christopher.s.hall@intel.com>
References: <20241023023040.111429-1-christopher.s.hall@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729651196; x=1761187196;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fI2PP8aO+nTDU/nnhz7qcI6i6PH/omY2nZpMN6FK/9o=;
 b=NYAPMqMzOSr1xbsO2pKhS12RCYN4+i2Dqv4Z/D3ktre+FkXc7Vm99UEI
 YtFu5yaKZ5nAU/KofRCpjxv2MAYQXQaOiQq5ldbc6cX2EJKAcHE3JrXoQ
 Sy9bz5wd4o7Hl0CneKm5kF1+bgzBE4lOM06/dZ2T+i3z6uizMZDmUWoEK
 mZZtvfgFweW8cJAa6C7wi3HT/iUE1q3OkelxlJ/VPD1zcu9Ogs+WUqU2V
 qGYyPQcaCsY/Q6qKyaaeCmOUSQsbzEtIRk4oUUjZyD9L2hjti72nO/8hp
 vXo0/3cQ4rI0bkz2qkwutpUW/xafz+rmZgSTPzrFxDcFHdeLIC0R/LPTo
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NYAPMqMz
Subject: [Intel-wired-lan] [PATCH iwl-net v2 4/4] igc: Add lock preventing
 multiple simultaneous PTM transactions
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Christopher S M Hall <christopher.s.hall@intel.com>

Add a mutex around the PTM transaction to prevent multiple transactors

Multiple processes try to initiate a PTM transaction, one or all may
fail. This can be reproduced by running two instances of the
following:

$ sudo phc2sys -O 0 -i tsn0 -m

PHC2SYS exits with:

"ioctl PTP_OFFSET_PRECISE: Connection timed out" when the PTM transaction
 fails

Note: Normally two instance of PHC2SYS will not run, but one process
 should not break another.

Fixes: a90ec8483732 ("igc: Add support for PTP getcrosststamp()")
Signed-off-by: Christopher S M Hall <christopher.s.hall@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h     |  1 +
 drivers/net/ethernet/intel/igc/igc_ptp.c | 12 ++++++++++--
 2 files changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index eac0f966e0e4..323db1e2be38 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -319,6 +319,7 @@ struct igc_adapter {
 	struct timespec64 prev_ptp_time; /* Pre-reset PTP clock */
 	ktime_t ptp_reset_start; /* Reset time in clock mono */
 	struct system_time_snapshot snapshot;
+	struct mutex ptm_lock; /* Only allow one PTM transaction at a time */
 
 	char fw_version[32];
 
diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index fb885fcaa97c..4e1379b7d2ee 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -1068,9 +1068,16 @@ static int igc_ptp_getcrosststamp(struct ptp_clock_info *ptp,
 {
 	struct igc_adapter *adapter = container_of(ptp, struct igc_adapter,
 						   ptp_caps);
+	int ret;
 
-	return get_device_system_crosststamp(igc_phc_get_syncdevicetime,
-					     adapter, &adapter->snapshot, cts);
+	/* This blocks until any in progress PTM transactions complete */
+	mutex_lock(&adapter->ptm_lock);
+
+	ret = get_device_system_crosststamp(igc_phc_get_syncdevicetime,
+					    adapter, &adapter->snapshot, cts);
+	mutex_unlock(&adapter->ptm_lock);
+
+	return ret;
 }
 
 static int igc_ptp_getcyclesx64(struct ptp_clock_info *ptp,
@@ -1169,6 +1176,7 @@ void igc_ptp_init(struct igc_adapter *adapter)
 	spin_lock_init(&adapter->ptp_tx_lock);
 	spin_lock_init(&adapter->free_timer_lock);
 	spin_lock_init(&adapter->tmreg_lock);
+	mutex_init(&adapter->ptm_lock);
 
 	adapter->tstamp_config.rx_filter = HWTSTAMP_FILTER_NONE;
 	adapter->tstamp_config.tx_type = HWTSTAMP_TX_OFF;
-- 
2.34.1

