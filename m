Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D927934C06
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jul 2024 12:54:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id ED74040EB3;
	Thu, 18 Jul 2024 10:54:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rQRz5bihzUuE; Thu, 18 Jul 2024 10:54:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 57B2040EAE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721300078;
	bh=4aTMv5nnvSNVX6cs6A/5J5SNpLblnq3+i+z0kSplA8E=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GtDL7isS0nsWHwbx3xRdvkjn1jw+sV/rO4LSVynHqesZFAp2jukD56pvbvQMaCvqC
	 jBPK3PmQfuHDyOutFCES0uakXf6rVNYctEN1FCDI6kebY3v5ILLvecXfz0W38ORnlb
	 RdnDPLN4N23UeZh5C+IsvDZ8P9/MXCGNyOyVIT6BnfThrl/hOasFvQvihOKyy8asfx
	 6o0OdDG0MOulT4hliI25D1p4iV3YGZMUJtItuPMKKanmd9TvhGrbJE/bRoyJcWCSGp
	 NLK0Xf9td3m/wihxT3/6jc1gRbjiVnftJ0qkvsenSpcEX3Iv3bTFW6VkJvDNBCAsEL
	 JrEVY9IfJY2jQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 57B2040EAE;
	Thu, 18 Jul 2024 10:54:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A9D8A1BF371
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jul 2024 10:54:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 968784010E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jul 2024 10:54:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hZ8ntLg6Doxg for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Jul 2024 10:54:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=sergey.temerkhanov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7FAF1400BB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7FAF1400BB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7FAF1400BB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jul 2024 10:54:32 +0000 (UTC)
X-CSE-ConnectionGUID: xk0fAi2bSeaIXP9QxR410Q==
X-CSE-MsgGUID: o3f2yLocRsGSPpgFDpRCjw==
X-IronPort-AV: E=McAfee;i="6700,10204,11136"; a="18987493"
X-IronPort-AV: E=Sophos;i="6.09,217,1716274800"; d="scan'208";a="18987493"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2024 03:54:32 -0700
X-CSE-ConnectionGUID: L3kq+rnYSrCoftu7OjGGew==
X-CSE-MsgGUID: 7yZGX9AIRO+oc7HwcwSfDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,217,1716274800"; d="scan'208";a="50774583"
Received: from unknown (HELO localhost.igk.intel.com) ([10.211.13.141])
 by orviesa009.jf.intel.com with ESMTP; 18 Jul 2024 03:54:31 -0700
From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 18 Jul 2024 12:52:50 +0200
Message-ID: <20240718105253.72997-3-sergey.temerkhanov@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240718105253.72997-1-sergey.temerkhanov@intel.com>
References: <20240718105253.72997-1-sergey.temerkhanov@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721300072; x=1752836072;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SXUTjuLbd86WPMG5JGmxpzwxEKlbhdkj0htFiOTP3A0=;
 b=hD3e/UEUAtc++9B+HvOIvkDfJC7oh1BM3z+Wawe419+hRVb8DTSUZU+n
 dSzdJ36lFmrWzNBNWSQPO9LOQ40/ZvySuTKiwb+W8gmSLEQcYKt7HS2Yv
 fOWM8vHrFTwDtnxFwQOL3wahCdzOfVJEWS3zh6MEvRa/JRrGVmuCECT81
 MUVtaBDs7BkD8MhWruG8+X/J9Vnp4mFgm+OEiNOh6Pb2JTn2LgfG8i3DS
 mPfYE0YTbvWJQ094q6PD87oAlxKWCcs4Zr580iNqF0MEIGfFdoF0dA5Iq
 iUYm2QrOtL+V9qQ3daeaSrmFhbM/UNtDKwsSbPV7RTq2FDHUgw2ylISdb
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hD3e/UEU
Subject: [Intel-wired-lan] [PATCH iwl-next v4 2/5] ice: Add
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
 Simon Horman <horms@kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add ice_get_ctrl_ptp() wrapper to simplify the PTP support code
in the functions that do not use ctrl_pf directly.
Add the control PF pointer to struct ice_adapter
Rearrange fields in struct ice_adapter

Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
---
 drivers/net/ethernet/intel/ice/ice_adapter.h |  5 ++++-
 drivers/net/ethernet/intel/ice/ice_ptp.c     | 12 ++++++++++++
 2 files changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.h b/drivers/net/ethernet/intel/ice/ice_adapter.h
index 9d11014ec02f..eb7cac01c242 100644
--- a/drivers/net/ethernet/intel/ice/ice_adapter.h
+++ b/drivers/net/ethernet/intel/ice/ice_adapter.h
@@ -8,18 +8,21 @@
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
+	refcount_t refcount;
 	/* For access to the GLTSYN_TIME register */
 	spinlock_t ptp_gltsyn_time_lock;
 
-	refcount_t refcount;
+	struct ice_pf *ctrl_pf;
 };
 
 struct ice_adapter *ice_adapter_get(const struct pci_dev *pdev);
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 038f6b8f43df..1cf620eebc2e 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -57,6 +57,18 @@ static const struct ice_ptp_pin_desc ice_pin_desc_e810_sma[] = {
 	{  UFL2, { -1,  3 }},
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
  * ice_ptp_find_pin_idx - Find pin index in ptp_pin_desc
  * @pf: Board private structure
-- 
2.43.0

