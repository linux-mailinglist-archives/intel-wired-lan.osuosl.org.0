Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9366B9317CB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Jul 2024 17:40:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 40E0F4067F;
	Mon, 15 Jul 2024 15:40:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5DasizeBQ8P5; Mon, 15 Jul 2024 15:40:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6BBEE4066A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721058048;
	bh=/0Hcl71iliy6GOqg1ybo6htVPetq+22RXXGHDTpsOcw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6rPZ5OPYfg2459R+c/+X2CNOTFPg0951FGB883fSiDTOa3Onm7zoSJpnoBgq7FBq/
	 j1QTEu3QWH0ot01tawdiQQ4IF6TEsz5ono1FXVz5AnDOKb9UNV54XyuS28UTblBq2R
	 ut7oi6dmfAWJqG+jgmYbSEkqOuemp9/UwzPP4vj+tQn/y3Qojt+N4qKgzCIX4OHzxP
	 rJsIJiTC4lLc9IGoDwP/mcjnezH8ipIet3jUJzg4oxgAyBuRgw4Diwu50AFzgtm42M
	 bbts7B15o8Vaj59ncU7B2DCoqzeXX4HNSnuW2Y10FKvLxU0Qp05SehFVeYmhajnjdn
	 xl0Lah6FhhWew==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6BBEE4066A;
	Mon, 15 Jul 2024 15:40:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 94ED41BF3C0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jul 2024 15:40:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7CFEB405E9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jul 2024 15:40:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7o0o6lrOLJcM for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Jul 2024 15:40:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=sergey.temerkhanov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 78BD740611
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 78BD740611
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 78BD740611
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jul 2024 15:40:44 +0000 (UTC)
X-CSE-ConnectionGUID: U3u8Nf99TBmeLxNdF+lvag==
X-CSE-MsgGUID: fhG9yAOVQrioY2KMsMtetA==
X-IronPort-AV: E=McAfee;i="6700,10204,11134"; a="35987683"
X-IronPort-AV: E=Sophos;i="6.09,210,1716274800"; d="scan'208";a="35987683"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2024 08:40:44 -0700
X-CSE-ConnectionGUID: Z1EM64evTWe8v3gw+E4kTA==
X-CSE-MsgGUID: jCVa6wxNS1ixvKLsguEVgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,210,1716274800"; d="scan'208";a="49408491"
Received: from unknown (HELO localhost.igk.intel.com) ([10.211.13.141])
 by fmviesa006.fm.intel.com with ESMTP; 15 Jul 2024 08:40:42 -0700
From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 15 Jul 2024 17:39:11 +0200
Message-ID: <20240715153911.53208-3-sergey.temerkhanov@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240715153911.53208-1-sergey.temerkhanov@intel.com>
References: <20240715153911.53208-1-sergey.temerkhanov@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721058044; x=1752594044;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+hBmgCtmu/DK90QJduJYhArW2EqndSlIgHnT/yc0jos=;
 b=R0MAghp7ki1zSJhoL8br/6ReUBySh3g/8glTnE8VsFxLVOul01JfrIPq
 AIz+kyhvH4o05J74I6uzE0dFQsm4q8LKakkpSUDSfsmj+Ck85S6C1t43a
 /0OluIqW5ngjuCah7cktgk0mO4IW2mCyC2BoDx8MvMa/8uQjBPCVZXru8
 VNq03YePWZeKKjJV3etyZx80F2fuDJZUzTMO8AyW3gVCjtYB5JA00Iztv
 wtZhAqIRWoNAAro7g71iqeu8vqYz2mFE6a6W/bcvR61CW96D9TJDryC2P
 LHSiahda5ESf4Yll96DEoQqWQsJGlAjSUPvvSaecq068+NKyzGy6Juxst
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=R0MAghp7
Subject: [Intel-wired-lan] [PATCH iwl-net v2 2/2] ice: Skip PTP HW writes
 during PTP reset procedure
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
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Grzegorz Nitka <grzegorz.nitka@intel.com>

Block HW write access for the driver while the device is in reset to
avoid potential race condition and access to the PTP HW in
non-nominal state which could lead to undesired effects

Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
Co-developed-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
Fixes: 4aad5335969f ("ice: add individual interrupt allocation")
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 11fbf2bbcae7..40a07d0bb341 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1408,6 +1408,10 @@ void ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup)
 	/* Update cached link status for this port immediately */
 	ptp_port->link_up = linkup;
 
+	/* Skip HW writes if reset is in progress */
+	if (pf->hw.reset_ongoing)
+		return;
+
 	switch (hw->ptp.phy_model) {
 	case ICE_PHY_E810:
 		/* Do not reconfigure E810 PHY */
-- 
2.43.0

