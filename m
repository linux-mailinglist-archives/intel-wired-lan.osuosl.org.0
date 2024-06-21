Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 475A2911F10
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Jun 2024 10:44:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B72B342B6E;
	Fri, 21 Jun 2024 08:44:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vjGa1ztFUrqT; Fri, 21 Jun 2024 08:44:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F10BE42F7A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718959444;
	bh=AcjZ1dusV/K6pb/MWhgbPubZuN8gFe20botAlWMTUrA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6JXeaoG1nKENML9p9Ibzop0Y7oX4AhOYZ+U6ZqUMsnaO54zcTK01ZCvwMSJWAFebg
	 vSlJQnAuJ9mQcttvU1iMkwVwfQ6VYHxFfoJtN/SeIHkDLZhdYih1Q6SuiAixrAsVNl
	 JzaAByydfv2PW0LPtyF2nggWN5N/SmTHsN2Oa3TH12z+uKpNJN9CGbphWB7IKMYWKQ
	 GyshB9usRenXdf6ANIVT88iOmPRJzQE2GxgnWC3noN1ZG9/OVSOZLpiCqQp1VDstG4
	 N4E6Jo6Ghcie1CcRmgv38jbrFFa368Ro6/lGQPSi3cdmK39hc2kBVMzDW6A+ALX4xf
	 5Db55utPDH8yQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F10BE42F7A;
	Fri, 21 Jun 2024 08:44:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B29621BF841
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jun 2024 08:43:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 92ABD414EE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jun 2024 08:43:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DM8XMuqQfoc1 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Jun 2024 08:43:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=sergey.temerkhanov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 74DEA409A5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 74DEA409A5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 74DEA409A5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jun 2024 08:43:57 +0000 (UTC)
X-CSE-ConnectionGUID: jzmtKk8rRb+S6m50Q75RNw==
X-CSE-MsgGUID: cN57GSRQSZCXOtMq1X9A1g==
X-IronPort-AV: E=McAfee;i="6700,10204,11109"; a="16129477"
X-IronPort-AV: E=Sophos;i="6.08,254,1712646000"; d="scan'208";a="16129477"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2024 01:43:56 -0700
X-CSE-ConnectionGUID: AyCxbxCVT9SGuMiltqGg8Q==
X-CSE-MsgGUID: k8+BQbMhTn+JZr7uQiqJSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,254,1712646000"; d="scan'208";a="65765171"
Received: from unknown (HELO localhost.igk.intel.com) ([10.211.13.141])
 by fmviesa002.fm.intel.com with ESMTP; 21 Jun 2024 01:43:55 -0700
From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 21 Jun 2024 10:42:42 +0200
Message-ID: <20240621084244.26525-3-sergey.temerkhanov@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240621084244.26525-1-sergey.temerkhanov@intel.com>
References: <20240621084244.26525-1-sergey.temerkhanov@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718959437; x=1750495437;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ox4UVVD8l0UB7uOobj3iQqzlawl6rmOUvrHDfuEAzK8=;
 b=ZEhzhy8jeU0pgMkS+Kw6VMn6d4azHDnBMSGmrcqRWy8IGZg5YHWSrA4p
 ISwZzvFeoe9roHxpQAda2JZ1//s2eHVVuWO15pRvohiiePX1VZUzT1Ef6
 6g1Og7vQBjtJdIDAtPbVsM4LILH1Qmd9Ntb+g0zF+3hNXikUHDHZECm/7
 lGr72WGoW83KXJnuStbJaPRvXWRA2JOOg/S/pHHvNtLNaeDwvJGdNR1Y/
 mJliCOPVoGVtHO7UXecPspo+CIRh6LECwcVmz0/A2UOYPjvbtUBohCLIs
 ChLuLTXdA/Z7cA2Afar0nRv/Zm6ADaFcaLo5/DgDZkKD0YKbjHuO/RdHy
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZEhzhy8j
Subject: [Intel-wired-lan] [RFC PATCH iwl-next v1 2/4] ice: Add
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
Cc: Sergey Temerkhanov <sergey.temerkhanov@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add ice_get_ctrl_ptp() wrapper to simplify the PTP support code
in the functions that do not use ctrl_pf directly

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 57e1e5a5da4a..a2578bc2af54 100644
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
+static struct ice_ptp *ice_get_ctrl_ptp(struct ice_pf *pf)
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

