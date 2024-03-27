Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D9AFA88E2CE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Mar 2024 14:34:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 48EAF409A3;
	Wed, 27 Mar 2024 13:34:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7bYPTgzCzTuu; Wed, 27 Mar 2024 13:34:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6B2C540983
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711546479;
	bh=2xtyeniwdov0ybEpRkmRvEbtfQGkv5i8yNKF1PC2Wvo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hLVskpXDd5yMcWxrVxR+aQeUp9qI8tEJtTl/P7OSFZgbrAbMTj5bIcFdFiaKsIhTz
	 AFv+WJOg1xnKQaCQOoiPjOK8ORqvxTXXDFxsxZMrtn78n7JmcEq42NYPXiTdPeFVnL
	 EcKOP6XZDxIhCBsHolPnekqn6//J2X9v3y77N43vHdA5pO6iA4bq4Sd9hKlnbpc8mt
	 0idMd91Zi7uTakVfe9kNo8+R/yDFCmXE9nEOKQv8uIX3fW5iE1WD3I2tK3P/rRW0cl
	 SFF99ez6IzA+sjW/4P9Fz9I594RPE7nsU4rmzVvoeewBRlfOkHXbAJJd7RgBR1MEBA
	 sx08MLH5CzPZQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6B2C540983;
	Wed, 27 Mar 2024 13:34:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AE6F51BF41D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 13:34:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AA6BB404AF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 13:34:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6oxTm2yu6_B7 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Mar 2024 13:34:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AF5BF404A3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AF5BF404A3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AF5BF404A3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 13:34:30 +0000 (UTC)
X-CSE-ConnectionGUID: w7gEi4JGTSSBL33GTZwMWw==
X-CSE-MsgGUID: K4yYZV14SWG1WUb9NDQGaw==
X-IronPort-AV: E=McAfee;i="6600,9927,11025"; a="9608524"
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; 
   d="scan'208";a="9608524"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2024 06:34:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,158,1708416000"; d="scan'208";a="16355731"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa009.fm.intel.com with ESMTP; 27 Mar 2024 06:34:28 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 65074284C3;
 Wed, 27 Mar 2024 13:34:27 +0000 (GMT)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 27 Mar 2024 09:25:39 -0400
Message-Id: <20240327132543.15923-9-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240327132543.15923-1-mateusz.polchlopek@intel.com>
References: <20240327132543.15923-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711546471; x=1743082471;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3jF5J1ib1CwbZjLRl5C+ZXgg+bxZyRbwjS2nhsCb7Us=;
 b=cI9r2lEtCtoBo175d3hbLSqn4Nu3d4SmaVZuZAxQKzpxMinsFnlcrSgf
 A5aYs1yfWbA0SGYKg28cYQNvYSCy5cwU2dbT1l6IoGnwht7slDD+VNb8G
 DxqwuFAV7OFbKBMykjEkBDTqOT0aN78pNlaL3DzfxiPandW/6FKwOCEw4
 gALH2vHfWuBzo4uZ1E1cJw0Qsu8JnOBS7MokLHCUM5DzR4opa4ZfoRs5G
 AIUTcLqinsUmYZru17rBErMxggB6N4TxrEirArztsE3mb2X0kXQa2V98j
 jo+1yu0Ky1QlFahwxAyLD9yHLhbIDab230WBYuNeO9DNXnf9rmxfC7+fB
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cI9r2lEt
Subject: [Intel-wired-lan] [PATCH iwl-next v2 08/12] iavf: periodically
 cache PHC time
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org,
 Wojciech Drewek <wojciech.drewek@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jacob Keller <jacob.e.keller@intel.com>

The Rx timestamps reported by hardware may only have 32 bits of storage
for nanosecond time. These timestamps cannot be directly reported to the
Linux stack, as it expects 64bits of time.

To handle this, the timestamps must be extended using an algorithm that
calculates the corrected 64bit timestamp by comparison between the PHC
time and the timestamp. This algorithm requires the PHC time to be
captured within ~2 seconds of when the timestamp was captured.

Instead of trying to read the PHC time in the Rx hotpath, the algorithm
relies on a cached value that is periodically updated.

Keep this cached time up to date by using the PTP .do_aux_work kthread
function.

The iavf_ptp_do_aux_work will reschedule itself about twice a second,
and will check whether or not the cached PTP time needs to be updated.
If so, it issues a VIRTCHNL_OP_1588_PTP_GET_TIME to request the time
from the PF. The jitter and latency involved with this command aren't
important, because the cached time just needs to be kept up to date
within about ~2 seconds.

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_ptp.c | 52 ++++++++++++++++++++++
 drivers/net/ethernet/intel/iavf/iavf_ptp.h |  1 +
 2 files changed, 53 insertions(+)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_ptp.c b/drivers/net/ethernet/intel/iavf/iavf_ptp.c
index a562fe92a079..f1f4c260e08f 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ptp.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ptp.c
@@ -161,6 +161,55 @@ static int iavf_ptp_gettimex64(struct ptp_clock_info *ptp,
 	return iavf_read_phc_indirect(adapter, ts, sts);
 }
 
+/**
+ * iavf_ptp_cache_phc_time - Cache PHC time for performing timestamp extension
+ * @adapter: private adapter structure
+ *
+ * Periodically cache the PHC time in order to allow for timestamp extension.
+ * This is required because the Tx and Rx timestamps only contain 32bits of
+ * nanoseconds. Timestamp extension allows calculating the corrected 64bit
+ * timestamp. This algorithm relies on the cached time being within ~1 second
+ * of the timestamp.
+ */
+static void iavf_ptp_cache_phc_time(struct iavf_adapter *adapter)
+{
+	if (time_is_before_jiffies(adapter->ptp.cached_phc_updated + HZ)) {
+		/* The response from virtchnl will store the time into
+		 * cached_phc_time
+		 */
+		iavf_send_phc_read(adapter);
+	}
+}
+
+/**
+ * iavf_ptp_do_aux_work - Perform periodic work required for PTP support
+ * @ptp: PTP clock info structure
+ *
+ * Handler to take care of periodic work required for PTP operation. This
+ * includes the following tasks:
+ *
+ *   1) updating cached_phc_time
+ *
+ *      cached_phc_time is used by the Tx and Rx timestamp flows in order to
+ *      perform timestamp extension, by carefully comparing the timestamp
+ *      32bit nanosecond timestamps and determining the corrected 64bit
+ *      timestamp value to report to userspace. This algorithm only works if
+ *      the cached_phc_time is within ~1 second of the Tx or Rx timestamp
+ *      event. This task periodically reads the PHC time and stores it, to
+ *      ensure that timestamp extension operates correctly.
+ *
+ * Returns: time in jiffies until the periodic task should be re-scheduled.
+ */
+long iavf_ptp_do_aux_work(struct ptp_clock_info *ptp)
+{
+	struct iavf_adapter *adapter = clock_to_adapter(ptp);
+
+	iavf_ptp_cache_phc_time(adapter);
+
+	/* Check work about twice a second */
+	return msecs_to_jiffies(500);
+}
+
 /**
  * iavf_ptp_register_clock - Register a new PTP for userspace
  * @adapter: private adapter structure
@@ -179,6 +228,7 @@ static int iavf_ptp_register_clock(struct iavf_adapter *adapter)
 		 dev_name(dev));
 	ptp_info->owner = THIS_MODULE;
 	ptp_info->gettimex64 = iavf_ptp_gettimex64;
+	ptp_info->do_aux_work = iavf_ptp_do_aux_work;
 
 	adapter->ptp.clock = ptp_clock_register(ptp_info, dev);
 	if (IS_ERR(adapter->ptp.clock))
@@ -218,6 +268,8 @@ void iavf_ptp_init(struct iavf_adapter *adapter)
 		return;
 	}
 
+	ptp_schedule_worker(adapter->ptp.clock, 0);
+
 	adapter->ptp.initialized = true;
 }
 
diff --git a/drivers/net/ethernet/intel/iavf/iavf_ptp.h b/drivers/net/ethernet/intel/iavf/iavf_ptp.h
index 4f84416743e1..7a25647980f3 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ptp.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_ptp.h
@@ -34,5 +34,6 @@ void iavf_ptp_release(struct iavf_adapter *adapter);
 void iavf_ptp_process_caps(struct iavf_adapter *adapter);
 bool iavf_ptp_cap_supported(struct iavf_adapter *adapter, u32 cap);
 void iavf_virtchnl_send_ptp_cmd(struct iavf_adapter *adapter);
+long iavf_ptp_do_aux_work(struct ptp_clock_info *ptp);
 
 #endif /* _IAVF_PTP_H_ */
-- 
2.38.1

