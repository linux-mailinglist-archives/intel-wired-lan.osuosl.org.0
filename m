Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E15D99C632
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Oct 2024 11:44:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 03294607F0;
	Mon, 14 Oct 2024 09:44:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id isBtdStdOz0E; Mon, 14 Oct 2024 09:44:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 349F8607EA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728899064;
	bh=tLHlaep4KGlv0Mu8LItCEqRO4heYd75DiXFyTTJ6ags=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=H/w7ljbGeH3do8HcpoQx0rtdG3OtSk28vyiF41FhTvtnHy2OmBIqJjMYpayappo35
	 a9TzwRvQPTopBcfG03qVDrtH/iKyUWUT19lhfp3ux4FqLHEONJiG6xJ8njvfZJkjzH
	 DFJk8E8RWEGBo+MDvGDZNAfAy+yFD9jlOiqIDRHfY1NaesgZvTaDeCt6nKL/RHdwNL
	 W7HCR7gSTelTOSuTpG0Y2GH0tkUpJmv4x2heQakSS04edSJFOU1hh2v2IVDIPtYLH5
	 yMa6hSowMKddBvsd0R7fAVLiLT7aHUsHiLc4tVM8p2oMfPg14U/7R73YMzuyb1iuFD
	 4Wpt+W02xyFqA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 349F8607EA;
	Mon, 14 Oct 2024 09:44:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 71C6E1BF364
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Oct 2024 09:44:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BBF9C80FF5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Oct 2024 09:44:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hFIkGeAgio1Z for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Oct 2024 09:44:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 89EF780FF2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 89EF780FF2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 89EF780FF2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Oct 2024 09:44:08 +0000 (UTC)
X-CSE-ConnectionGUID: YR3XMXdYSXaeVnnPI7JAOQ==
X-CSE-MsgGUID: FhCOJH2NRAOdC3Q1Usbf+g==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="45712176"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="45712176"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 02:44:08 -0700
X-CSE-ConnectionGUID: dL+xdJEPSrGfXRWp6Gjm4A==
X-CSE-MsgGUID: F08BzwtST92Jf/nUjbjI8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,202,1725346800"; d="scan'208";a="77531828"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa009.fm.intel.com with ESMTP; 14 Oct 2024 02:44:06 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 0478F27BCD;
 Mon, 14 Oct 2024 10:44:04 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	aleksander.lobakin@intel.com
Date: Sun, 13 Oct 2024 11:44:09 -0400
Message-Id: <20241013154415.20262-9-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20241013154415.20262-1-mateusz.polchlopek@intel.com>
References: <20241013154415.20262-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728899048; x=1760435048;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mBCuzPd3IKGgT3csrLksaazgYOTV/TBMG5Xq2V9PKnE=;
 b=Q3PwiLoN51cS3ypkEcCdgGsjQoewVwFHKE866kBXXydsrL6EzkKH33dU
 H9gkRT6UN3IuvBdRypI0wcR7KTn/AhYi5MtbuODLFmctHQ1wIKbD9jFUy
 3FZICYQFrSDs+Up7wZjNolfY35wQGEe40x3dkBHneakEMrwEgIzBvXXPo
 uf1MgZzkJ0HvRV7zillYMq6zUANiOrtaQiTqZ3CeQwZhzcXCR8tjPXhAp
 muB+nVQ1dvWi4e41ZXDGl4ou+VBddxG0tTHlgXZAJJk2aJgnwrcgmV7Mf
 Hxpj6aGYfCzfTplFixkbaBiggC7DnzSHfZPZVdiaxd9pcy6rvkHuxQOgN
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Q3PwiLoN
Subject: [Intel-wired-lan] [PATCH iwl-next v11 08/14] iavf: periodically
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
 Wojciech Drewek <wojciech.drewek@intel.com>, Simon Horman <horms@kernel.org>,
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

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_ptp.c | 53 ++++++++++++++++++++++
 1 file changed, 53 insertions(+)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_ptp.c b/drivers/net/ethernet/intel/iavf/iavf_ptp.c
index f4f10692020a..f05387e095ef 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ptp.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ptp.c
@@ -156,6 +156,56 @@ static int iavf_ptp_gettimex64(struct ptp_clock_info *info,
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
+	if (!time_is_before_jiffies(adapter->ptp.cached_phc_updated + HZ))
+		return;
+
+	/* The response from virtchnl will store the time into
+	 * cached_phc_time.
+	 */
+	iavf_send_phc_read(adapter);
+}
+
+/**
+ * iavf_ptp_do_aux_work - Perform periodic work required for PTP support
+ * @info: PTP clock info structure
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
+static long iavf_ptp_do_aux_work(struct ptp_clock_info *info)
+{
+	struct iavf_adapter *adapter = iavf_clock_to_adapter(info);
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
@@ -174,6 +224,7 @@ static int iavf_ptp_register_clock(struct iavf_adapter *adapter)
 		 KBUILD_MODNAME, dev_name(dev));
 	ptp_info->owner = THIS_MODULE;
 	ptp_info->gettimex64 = iavf_ptp_gettimex64;
+	ptp_info->do_aux_work = iavf_ptp_do_aux_work;
 
 	clock = ptp_clock_register(ptp_info, dev);
 	if (IS_ERR(clock))
@@ -217,6 +268,8 @@ void iavf_ptp_init(struct iavf_adapter *adapter)
 
 		rx_ring->ptp = &adapter->ptp;
 	}
+
+	ptp_schedule_worker(adapter->ptp.clock, 0);
 }
 
 /**
-- 
2.38.1

