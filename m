Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D78C917D33
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jun 2024 12:04:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 37ACB80B1C;
	Wed, 26 Jun 2024 10:04:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Qww9ZsQ8rout; Wed, 26 Jun 2024 10:04:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7420180B1D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719396273;
	bh=cH5U2x1Ti8jTxgNeiqZWXx9kjwTCnBwJE06ncNRE9Ps=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RJIROCckOwMVAyY2oXZyssNyTVbhKA/XZJ/jaXpCRUghA5OsjyPaXTquAwmrYJL/P
	 nHCivfk1Y7rq8Wj0j/L2a4zydNwSNNove+Q4gJw/KHGakTaGJ8VaC+xjBxeqyqPFH4
	 zFsHeLT7Qo0QsAHScyj4NO96uubQfZKVIJbqqnbaNFSAHdbIaEj69+SO9uBLdCtECs
	 +8Q9LucNLWNefweYxwT31SuC4HxT8RsGDs9JboLgNGVJPpFVnGeOpbWzGMGcUicdQ0
	 tAnut3W0oqINTHRFKYTKlKwiPYDNHEUppUmXpoKIrxNk24Sl8atw3xsCJIP0mu2kT7
	 c9I79TvDNzWQg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7420180B1D;
	Wed, 26 Jun 2024 10:04:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 107B61BF3FB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2024 10:04:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F1AFD80AD6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2024 10:04:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fZ6T5xzc394a for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Jun 2024 10:04:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=sergey.temerkhanov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1BD9280AB6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1BD9280AB6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1BD9280AB6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2024 10:04:27 +0000 (UTC)
X-CSE-ConnectionGUID: c9ghdwe7R22eH28Ntm6JxQ==
X-CSE-MsgGUID: LHWvNVM6RDOkO7PC9bdAOA==
X-IronPort-AV: E=McAfee;i="6700,10204,11114"; a="27145095"
X-IronPort-AV: E=Sophos;i="6.08,266,1712646000"; d="scan'208";a="27145095"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2024 03:04:27 -0700
X-CSE-ConnectionGUID: agQ8X6tATRyyh+VrC/oC+w==
X-CSE-MsgGUID: lDsXIbISSlGJzlKWn4qpKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,266,1712646000"; d="scan'208";a="67162098"
Received: from unknown (HELO localhost.igk.intel.com) ([10.211.13.141])
 by fmviesa002.fm.intel.com with ESMTP; 26 Jun 2024 03:04:26 -0700
From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 26 Jun 2024 12:03:05 +0200
Message-ID: <20240626100307.64365-3-sergey.temerkhanov@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240626100307.64365-1-sergey.temerkhanov@intel.com>
References: <20240626100307.64365-1-sergey.temerkhanov@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719396267; x=1750932267;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Kgm79J/9HIpSamxDHxgb0s+EnshfsoIo4vFa62yHGAE=;
 b=ajfh2Ky9Y9c64/YiW79wr9ufGrxvY7+U6zBsA8jCxJnOKd9PNCXXNG9a
 YqBz9klOcK44BDNjFkZ35dTI0jpGRpiB4qr/qtuk3buGuhItBss74WyEg
 xqPhU6Ij+wXTq9NkIxZrqNdVdidD6MaCGrxSkScwl5eeZL3AGWhPNyRtA
 /8VRZ2+Qwi4HMK3k9wsu/TPqL3N9wtLuUWIgbXITxSdYJqYzz943Yn8z1
 fzRDj9MKNCWsDpkYI4NMIgcrLJGP/5OwRorJbV0kGaQzocZHUvlhEZ7v3
 2mZ94ygcbak3a6pn4PCSVhNB+MrMudfeNLz6F56OFEATaLsFsDfUqOxn5
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ajfh2Ky9
Subject: [Intel-wired-lan] [PATCH iwl-next v1 2/4] ice: Add
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
in the functions that do not use ctrl_pf directly

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 2f32dcd42581..8f9a449a851c 100644
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

