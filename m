Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 59B4491817E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jun 2024 14:56:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 073ED60BEA;
	Wed, 26 Jun 2024 12:56:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YcqwZPJN5jr2; Wed, 26 Jun 2024 12:56:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 541DE60BDF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719406587;
	bh=5iHtp21qOBanNnB0PERuXxXnPvLx3IRe838P12T5kpU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=H1qsgUZlrIoZZLSXOsW61rrsq+ggifeCmnmy/i3uVdeMor55PPx5xTVd4jPTxdW5z
	 LU51RdKvYIvq1ENJZ2gdJbEkOW1OPbQxlP9wAx3tcvqIwRuhl9K2WFRPhMo2ItN+6m
	 OrTwgSchA46k7SSMdG+FK+NxmvT7rrQdd6M3JcacJZ0fskGLA6GDCje45hb4wS5Jba
	 fISeJ8D+N5WRGufX0WzPF0uUN2VA6lHx/8iRUQxWRHB7w4IOypCrAuDi368fkoi3B4
	 4W+lleCpN7oXomEmV/cjt4u5B4ctHJBRMEQuVrXZQCEZTBnI6zHY897N5U5TmfeB/v
	 m6vfJ76/k2KYw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 541DE60BDF;
	Wed, 26 Jun 2024 12:56:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 486241BF3F7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2024 12:56:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 420D540275
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2024 12:56:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GE6yuRln8W-w for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Jun 2024 12:56:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=sergey.temerkhanov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2B92D4016B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2B92D4016B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2B92D4016B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2024 12:56:24 +0000 (UTC)
X-CSE-ConnectionGUID: 5KD3KIRZRqy60HLxUWUTzQ==
X-CSE-MsgGUID: TUhtpt+sQauz5qrDkXZNhg==
X-IronPort-AV: E=McAfee;i="6700,10204,11114"; a="16158108"
X-IronPort-AV: E=Sophos;i="6.08,267,1712646000"; d="scan'208";a="16158108"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2024 05:56:24 -0700
X-CSE-ConnectionGUID: rgXF8XcRQQSEpWUpDlaj0w==
X-CSE-MsgGUID: ZBSE9j7bSjunPM/Q8VD64w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,267,1712646000"; d="scan'208";a="48594644"
Received: from unknown (HELO localhost.igk.intel.com) ([10.211.13.141])
 by fmviesa004.fm.intel.com with ESMTP; 26 Jun 2024 05:56:23 -0700
From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 26 Jun 2024 14:54:54 +0200
Message-ID: <20240626125456.27667-3-sergey.temerkhanov@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240626125456.27667-1-sergey.temerkhanov@intel.com>
References: <20240626125456.27667-1-sergey.temerkhanov@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719406584; x=1750942584;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zRkWdP/V/ihiCFhoWaRYKlgJ6N+PAWNhR2x3Kv40m8I=;
 b=YjPI/VH6MwzJZnd6J/u+GaXPV+mtFS/RqWwOaiMXSCgpaGFmv4QOv8PM
 RHTHBGYI3mnKSiUd/3IIcpDol6EQGrNMAcCrp7WyLB2A3+IlDtw8EPbWG
 UCBtHGCDgoAR10GnK/jAtPanpSHhQQM7L8vKC7ayZ3hhgn2ZGw3rsTOxk
 HnVazFaM00uDrv1hl8U9nCzUSN9Ke8LrfSgjUp0k4cDiF0St+tTnS4NcR
 OJBeM87SjcJ7KoOALnNcaeck5fHW5xwhQsvlzdJWrHjOFsN3bzJqe35uK
 7e9qZSu3RfumnjrXPACbb2T+J30pL2A36UOnRdF60Jm+WdOwv6O76Yr8B
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YjPI/VH6
Subject: [Intel-wired-lan] [PATCH iwl-next v2 2/4] ice: Add
 ice_get_ctrl_ptp() wrapper to simplify the code
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
Cc: Sergey Temerkhanov <sergey.temerkhanov@intel.com>, netdev@vger.kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add ice_get_ctrl_ptp() wrapper to simplify the PTP support code
in the functions that do not use ctrl_pf directly.
Add the control PF pointer to struct ice_adapter

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_adapter.h |  4 ++++
 drivers/net/ethernet/intel/ice/ice_ptp.c     | 12 ++++++++++++
 2 files changed, 16 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.h b/drivers/net/ethernet/intel/ice/ice_adapter.h
index 9d11014ec02f..c5ed6f56b36e 100644
--- a/drivers/net/ethernet/intel/ice/ice_adapter.h
+++ b/drivers/net/ethernet/intel/ice/ice_adapter.h
@@ -8,18 +8,22 @@
 #include <linux/refcount_types.h>
 
 struct pci_dev;
+struct ice_pf;
 
 /**
  * struct ice_adapter - PCI adapter resources shared across PFs
  * @ptp_gltsyn_time_lock: Spinlock protecting access to the GLTSYN_TIME
  *                        register of the PTP clock.
  * @refcount: Reference count. struct ice_pf objects hold the references.
+ * @ctrl_pf: Control PF of the adapter
  */
 struct ice_adapter {
 	/* For access to the GLTSYN_TIME register */
 	spinlock_t ptp_gltsyn_time_lock;
 
 	refcount_t refcount;
+
+	struct ice_pf *ctrl_pf;
 };
 
 struct ice_adapter *ice_adapter_get(const struct pci_dev *pdev);
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 2f32dcd42581..53a3b6fc9dec 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -16,6 +16,18 @@ static const struct ptp_pin_desc ice_pin_desc_e810t[] = {
 	{ "U.FL2", UFL2, PTP_PF_NONE, 2, { 0, } },
 };
 
+static struct ice_pf *ice_get_ctrl_pf(struct ice_pf *pf)
+{
+	return !pf->adapter ? NULL : pf->adapter->ctrl_pf;
+}
+
+static __maybe_unused struct ice_ptp *ice_get_ctrl_ptp(struct ice_pf *pf)
+{
+	struct ice_pf *ctrl_pf = ice_get_ctrl_pf(pf);
+
+	return !ctrl_pf ? NULL : &ctrl_pf->ptp;
+}
+
 /**
  * ice_get_sma_config_e810t
  * @hw: pointer to the hw struct
-- 
2.43.0

