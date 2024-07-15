Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DA0C93129B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Jul 2024 12:50:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B8B94404D5;
	Mon, 15 Jul 2024 10:50:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ET1lF1gIO6QY; Mon, 15 Jul 2024 10:50:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CCB38402C0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721040653;
	bh=3IYwdsnH/YIikHAEoX1A8h2i6PuyCHRdJkzy7lcP/q0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wMRK0SBN1t7BYgwauP6S/dXKMZa3XH7F5YtHxIqF0a0z8LcEIRhvuV3+OlE1RGA0h
	 XiqeJKYKpKjaZPN5BIyZ0s+ahN0qFdO8pVAqT9SwS3NBogiUJrfuzQSsPx0IutROO4
	 aFJF/MHv5qQrktOo1D44GGNYiiZ0aKSxmhhY30jKCaShs+jxI/Md8+u+PTi89Z6oU/
	 VxI9zpgdhmBLhoMZbHzfJwpFXjk1R3gy5TtNBOlf1+K2C3BfY92uVeyuW0QkZ+Xv9Z
	 2Wrnw97g+3/qqXXv7CPvDlJ0wovXya+jctyDF62ymyDc/TS2uPinsz0xZhoxklU9HN
	 c3e2FiZoHrxyA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CCB38402C0;
	Mon, 15 Jul 2024 10:50:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7BAA31BF3FF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jul 2024 10:50:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 72E6C403CD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jul 2024 10:50:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CDUBjfj8kiSS for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Jul 2024 10:50:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=sergey.temerkhanov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8034E403C8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8034E403C8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8034E403C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jul 2024 10:50:50 +0000 (UTC)
X-CSE-ConnectionGUID: /quAtb38RN+jbSoFy4K3Cg==
X-CSE-MsgGUID: unftZgg/TRGrE/y/sxQ1ag==
X-IronPort-AV: E=McAfee;i="6700,10204,11133"; a="18609047"
X-IronPort-AV: E=Sophos;i="6.09,210,1716274800"; d="scan'208";a="18609047"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2024 03:50:23 -0700
X-CSE-ConnectionGUID: 64AKA/R5RvWUq4G7tf1YtQ==
X-CSE-MsgGUID: Cf9nDKKQS6mp6IT4vZkPcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,210,1716274800"; d="scan'208";a="49545174"
Received: from unknown (HELO localhost.igk.intel.com) ([10.211.13.141])
 by fmviesa009.fm.intel.com with ESMTP; 15 Jul 2024 03:50:21 -0700
From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 15 Jul 2024 12:48:45 +0200
Message-ID: <20240715104845.51419-3-sergey.temerkhanov@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240715104845.51419-1-sergey.temerkhanov@intel.com>
References: <20240715104845.51419-1-sergey.temerkhanov@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721040651; x=1752576651;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=X+n2EA+PpcwiVRODe8SXcZ/ebefjWKERhrirkSfG7uk=;
 b=lMOgYdwiviHYq0ekw9xzbufGM0bb99oPf96w4scUjX0ubl3rTkTF1Z6n
 uCXCYlbt0YhZzSUNS3El6RAhJNLzUKF/rxmAZmVhFCnbkVXRBVC8FpLF7
 DO6E4T15ZhIQdiPDfLom0HRoVNHXD1Dp9vSeFdq8mtWZff2wRwKzpP4+N
 iZkfS3Z0lB1HlDuhL3gesnSD+Ol33Jp70fMxOVctcZon0ieVcKkDke5wJ
 Ocgpj2nRns1UrM/jHhSI4MawlcnZLsIldtyjqzpNr3BhxXAV69gtlBJvD
 BIBVATreWkDEzpyOaQKtY2NU3b+49kTNR/ucX7iOmCV7AtP0l53zhSizP
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lMOgYdwi
Subject: [Intel-wired-lan] [PATCH iwl-net v1 2/2] ice: Skip PTP HW writes
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
index 85b19e94e2ed..1f365bd6f525 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1420,6 +1420,10 @@ void ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup)
 	/* Update cached link status for this port immediately */
 	ptp_port->link_up = linkup;
 
+	/* Skip HW writes if reset is in progress */
+	if (pf->hw.reset_ongoing)
+		return;
+
 	switch (ice_get_phy_model(hw)) {
 	case ICE_PHY_E810:
 		/* Do not reconfigure E810 PHY */
-- 
2.43.0

