Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BF079A98B5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Oct 2024 07:41:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D7621607B7;
	Tue, 22 Oct 2024 05:41:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UtZx_hzcjChI; Tue, 22 Oct 2024 05:41:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 14AC660766
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729575689;
	bh=r6Ed1SOkauHFgCJjTSjAOGDIRNxMnCASfAiAe22kAcs=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wEz6w9TkbxBspwoL+k97yUtrNbYrI8l7f9DibBoPsAdetRRpn93W1Cp9C6Hl0PuE0
	 GbgbHtyHFL2kmpCf1fBy+AG/+FHBlN7GUa3D3M0ajS7VK9feNrGui+TOXNwpQicP38
	 d+UhKwFDTctNpqXdaqxaS/0mt9uUeNqu2uTmYODX6/t5lap8qy/BrY+XpnOuHbiihd
	 s6ezfoJEV9d9j1qC2n6tY3RPv6j4fHKCF0/OorThVQz2XUXEh3KzR/iWGlcxYtsYuw
	 wsXlSTnfGi42rhMi2Pm9rlDHET//n3wt8Ph1kT8Wyg5wzDbFcKyZTNfYvZP4JfH+JM
	 ZTD7OED4y4jLQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 14AC660766;
	Tue, 22 Oct 2024 05:41:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0637571F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 05:41:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ED0786079A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 05:41:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UB4kQhR8uRhp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Oct 2024 05:41:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2B33760784
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2B33760784
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2B33760784
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 05:41:18 +0000 (UTC)
X-CSE-ConnectionGUID: KXeX0xZkSDqUAGcQhu85ZQ==
X-CSE-MsgGUID: 3FCVG6LQTsK6UznW+wna7g==
X-IronPort-AV: E=McAfee;i="6700,10204,11232"; a="33015622"
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="33015622"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 22:41:17 -0700
X-CSE-ConnectionGUID: zVz2K4kRQsymQcnUewO5Gg==
X-CSE-MsgGUID: UAb7nsSBROSdzfu2sGdb4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="84558108"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa003.jf.intel.com with ESMTP; 21 Oct 2024 22:41:15 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id C2A7427BCD;
 Tue, 22 Oct 2024 06:41:13 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Jacob Keller <jacob.e.keller@intel.com>,
 Wojciech Drewek <wojciech.drewek@intel.com>,
 Simon Horman <horms@kernel.org>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Date: Tue, 22 Oct 2024 07:41:15 -0400
Message-Id: <20241022114121.61284-9-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20241022114121.61284-1-mateusz.polchlopek@intel.com>
References: <20241022114121.61284-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729575678; x=1761111678;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=t4KJ8GpVDCwBC+8iEFuUM+lt1UuXsB6tJ9CVvAjwB8c=;
 b=a2U9XjuJur/NTDxTZNcHsqRiZ9KZ+6OnKW6z6ljpN6rtUgI1ltYA0HRx
 bsNfSjHUqkb81O5RuaKGDxvUgFHM3GOohn7qsq8BDyDiJe8j8a64CmVWv
 iXXg7/c4vgaghjEX2mpgw8jxp/dTvFYY4FJLM7GhgHJqh2s20czX4Wdgz
 vap/OG0/1lCtJwpTM0VI34s++Q4prehwOftM14VxB2FbJYNojD9Sczfu6
 Y8tP9y7QuRGY2bjOffGMOk3w+059hCw/lEtJs4PNy6+WYON5WRN/dd4bW
 eWEXcwZb3VthygTeRXzrBt/o0Ql1MnVQNQZr0vvvyL9jVe+kD1xwkCncp
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=a2U9XjuJ
Subject: [Intel-wired-lan] [PATCH iwl-next v12 08/14] iavf: periodically
 cache PHC time
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
index b9a341e98a98..c2e0d27552b0 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ptp.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ptp.c
@@ -158,6 +158,56 @@ static int iavf_ptp_gettimex64(struct ptp_clock_info *info,
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
@@ -176,6 +226,7 @@ static int iavf_ptp_register_clock(struct iavf_adapter *adapter)
 		 KBUILD_MODNAME, dev_name(dev));
 	ptp_info->owner = THIS_MODULE;
 	ptp_info->gettimex64 = iavf_ptp_gettimex64;
+	ptp_info->do_aux_work = iavf_ptp_do_aux_work;
 
 	clock = ptp_clock_register(ptp_info, dev);
 	if (IS_ERR(clock))
@@ -219,6 +270,8 @@ void iavf_ptp_init(struct iavf_adapter *adapter)
 
 		rx_ring->ptp = &adapter->ptp;
 	}
+
+	ptp_schedule_worker(adapter->ptp.clock, 0);
 }
 
 /**
-- 
2.38.1

