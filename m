Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ABF10949D10
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Aug 2024 02:37:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5E7F94056C;
	Wed,  7 Aug 2024 00:37:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id an9iZbavSIEl; Wed,  7 Aug 2024 00:37:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 70FBE40538
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722991021;
	bh=rmB9un6x/tUbtv1FbT1OIA6MKvINQjjwm4xiKfDbJwA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FcD6od+d6NKxqyvtdnZN0yJDc8SHx+9uApeYqPJ7JeC8xNGQ1CNGPS5GbYO7sXSbM
	 rw/eJfEfLDACW4rABBervwOJkSjY1LnbNu1yj5OmRYjZmPy4llLTVhYoxgs8B4+JOe
	 HpRB6YgbPhMy4S+mxEw+ohcaKxSFYJT8uaJzrvaFH0cf6y6rg5EVmUTM1RJ3EWvnUn
	 gLTdxezp4VLUD/WrBzLdrnyZ7uc4YXuPfaLeEsmKDXnou2RG5okrB392F5PlqoNidL
	 NSU4Fo5y+Xrsws8QErvU2HjpUXRuXi+7WJVmRcr3Uuiu2zcG6D7NooqQzd6b+drc1h
	 BVMuxYHCKaDBw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 70FBE40538;
	Wed,  7 Aug 2024 00:37:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 352281BF969
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 00:36:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2356C606C2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 00:36:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G-ffrNddZ1h9 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Aug 2024 00:36:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=christopher.s.hall@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5B1D660668
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5B1D660668
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5B1D660668
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 00:36:58 +0000 (UTC)
X-CSE-ConnectionGUID: c//ed8vdRayltA5tKtw8zA==
X-CSE-MsgGUID: BlnoXnfjS3eBd9tX/gnSYQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="31669764"
X-IronPort-AV: E=Sophos;i="6.09,268,1716274800"; d="scan'208";a="31669764"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 17:36:58 -0700
X-CSE-ConnectionGUID: cSuwcZ+2RVGto+yMtdbE9g==
X-CSE-MsgGUID: kvCrhZO1SAyCv7/j1r5Agw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,268,1716274800"; d="scan'208";a="61497023"
Received: from timelab-spr09.ch.intel.com (HELO timelab-spr09.sc.intel.com)
 ([143.182.136.138])
 by orviesa003.jf.intel.com with ESMTP; 06 Aug 2024 17:36:57 -0700
From: christopher.s.hall@intel.com
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  6 Aug 2024 17:30:32 -0700
Message-Id: <20240807003032.10300-6-christopher.s.hall@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240807003032.10300-1-christopher.s.hall@intel.com>
References: <20240807003032.10300-1-christopher.s.hall@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722991019; x=1754527019;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Rdr9qX500IejMlvTst8ST2srghzPY596qYKAm+Pca6Q=;
 b=ckc9Va+grWskq5W1m8birbJbQVzSQHFXiB7UJ0VAKqn4MkArsTtatJxj
 YnVcvoc+WzGraqTcE3ajI8+s3gczZubN2o3qnSvP6zsy/a9vqZcXJYbjQ
 dhkCyW2FSnukEM700R0Bp7eHpeYdQ25M1IpIMPWyNx2hiWzcHWuTahOK6
 arHA4YuAIvMQbQWZ+EW6yRl7zcetlAEQbzK9CSt2Hb3MTHkTT7mqmUS/H
 D1Fxf7ZY5LBNl8NnDr+JWG/Pk1DpOt6N7zORR9FLUSHY+UOEb8gVThVEQ
 4ojmu6b5EbXN1cHeFcHV5c2ATH1sNRyC6Bn+Ow85oXC/ntk/DcHyIIHMM
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ckc9Va+g
Subject: [Intel-wired-lan] [PATCH iwl-net v1 5/5] igc: Add lock preventing
 multiple simultaneous PTM transactions
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
Cc: Christopher S M Hall <christopher.s.hall@intel.com>, david.zage@intel.com,
 vinschen@redhat.com, vinicius.gomes@intel.com, netdev@vger.kernel.org,
 rodrigo.cadore@l-acoustics.com
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
index c38b4d0f00ce..fbac02c79178 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -315,6 +315,7 @@ struct igc_adapter {
 	struct timespec64 prev_ptp_time; /* Pre-reset PTP clock */
 	ktime_t ptp_reset_start; /* Reset time in clock mono */
 	struct system_time_snapshot snapshot;
+	struct mutex ptm_lock; /* Only allow one PTM transaction at a time */
 
 	char fw_version[32];
 
diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index f770e39650ef..c70a6393c210 100644
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
@@ -1302,6 +1309,7 @@ void igc_ptp_reset(struct igc_adapter *adapter)
 		wr32(IGC_PTM_CTRL, ctrl);
 
 		/* Force the first cycle to run. */
+		mutex_init(&adapter->ptm_lock);
 		igc_ptm_trigger(hw);
 
 		if (readx_poll_timeout_atomic(rd32, IGC_PTM_STAT, stat,
-- 
2.34.1

