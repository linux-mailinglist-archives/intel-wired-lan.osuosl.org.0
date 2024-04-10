Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D74889F20B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Apr 2024 14:26:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3B7866089A;
	Wed, 10 Apr 2024 12:26:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sV8O9kbHFLPj; Wed, 10 Apr 2024 12:26:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 55CED60DFE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712752004;
	bh=2xtyeniwdov0ybEpRkmRvEbtfQGkv5i8yNKF1PC2Wvo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=g6Y9cx3AabbDYGaCks4BjUXv1BJksArKnYRBjE13eysCp8aM11KnATf35jKA1DSVG
	 igU6kTF+O3ZNK0eAAN4tOFcPrqT7vDlsneN91b50+flWa2GdJnzTQMQeQGD9tJg3xR
	 EgKBqa/r0LHoKmUTlAipitychlRR9euttldOLyn6Q17oOo5C7DNTeWiHaf43HmmcRM
	 3v4nL/pKN3XOgdO8i2ZwngMXg6TfI2lBumc/7xFkOQYO1qOVwbGIDfXK3scl6ejETy
	 ha4lhH/mmlG/cCSjnNSM/mZHvzmiIUuTIh7NT1+kyGM6T22o5xY2RzvSIgQWzlFxmS
	 uD4pMYZUpGIJw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 55CED60DFE;
	Wed, 10 Apr 2024 12:26:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1F2591BF3C1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 12:26:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 06CBA81DCB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 12:26:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jeIazwQ1-kRx for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Apr 2024 12:26:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0CBB581C46
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0CBB581C46
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0CBB581C46
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 12:26:35 +0000 (UTC)
X-CSE-ConnectionGUID: 5TTfnuQ4SneZjAJTje4QHw==
X-CSE-MsgGUID: +R/gRrBJSpywN6EAj9c5+Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="7982228"
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; 
   d="scan'208";a="7982228"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 05:26:35 -0700
X-CSE-ConnectionGUID: mNR6oQgzTwOIDmyJOatzdA==
X-CSE-MsgGUID: v9VMW4MuSd+N1g7LuXl0Jw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="51760082"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa001.fm.intel.com with ESMTP; 10 Apr 2024 05:26:34 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 236BB2FC4A;
 Wed, 10 Apr 2024 13:26:32 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 10 Apr 2024 08:17:02 -0400
Message-Id: <20240410121706.6223-9-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240410121706.6223-1-mateusz.polchlopek@intel.com>
References: <20240410121706.6223-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712751996; x=1744287996;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3jF5J1ib1CwbZjLRl5C+ZXgg+bxZyRbwjS2nhsCb7Us=;
 b=W0OrSK6Boak7YoPBHRyF4Mb/Lzs20PgGKNbIZGnEJcoBTTodvhOcSha1
 tmCTC6En5c103FoYaFVdV0hSuKi3xe+eHwEK/tMFwkRwytq3/f4WzBFsJ
 BYlKpS0wVHdWLd+gtpWKuo3OhYQc+mzzGeio4ZvxpBUrDEZ0irxhez4L/
 XK06c8lsQghM2DJt4MM2dG7IhiCLwXT/dTB0+cfu6mV5ex59Ow35dgP/Q
 TxGRzb3tPg2PY7N9sXbJw2c9n3qlJK7Tf5ujCgn6VTj9qOHRSRVkRgYui
 rWU6js2tbY7mTHwawMMLForzvT6dxxWKe4Nvu2Es7NTmhKomjWCoV2R+4
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=W0OrSK6B
Subject: [Intel-wired-lan] [PATCH iwl-next v4 08/12] iavf: periodically
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, horms@kernel.org,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>
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

