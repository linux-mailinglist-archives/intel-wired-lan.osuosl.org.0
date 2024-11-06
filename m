Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 573E99BF5D1
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Nov 2024 19:58:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id ADD8E60747;
	Wed,  6 Nov 2024 18:58:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jzF11ICwpQqo; Wed,  6 Nov 2024 18:58:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E4C1060753
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730919535;
	bh=ssImHwbC7zp4CSTGYQ3B1o2RJxl8VB9zptYKfJ90+LM=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ScEUUB2x/etMkelEy9q8OAtAIRyKhNrQ+ZuYeOdCk9cB9pGrceSVQdzkP6yKLRgaL
	 CU/CdGbXX2jd7gNNbTJ4WCKAEyiJyrkDvd7fpVtJDPLCFcSSslsginUgg3K3kz2yN2
	 nuL+88QG8Wt0/rWj1ui4RVK1Fhbc7son2Gi+QwoGnhkzq6iNbgtUwsuVd6Qo5RV62r
	 f/FshdqozEvspXF57n4trU/C5kro1we2/kAD1vWsVx73Ij22ZdQO8J6ZYifS1qvbUy
	 TnZui4Ei25u4s3AlDns6zUWzv6xY8eR+KznD7MjC0EYCvPntZGY9DQ151U5ivHN4iW
	 7ZHkuUZpHzIAg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E4C1060753;
	Wed,  6 Nov 2024 18:58:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2332A3B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 18:58:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F08C540450
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 18:58:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W5CeJ0wKAEZC for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Nov 2024 18:58:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=christopher.s.hall@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1647D400D8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1647D400D8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1647D400D8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 18:58:51 +0000 (UTC)
X-CSE-ConnectionGUID: sNnD/WUgQ42D1r1miTPJJw==
X-CSE-MsgGUID: gN2MqbnxRJCiFO2OQE52LQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11248"; a="30959473"
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="30959473"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 10:58:51 -0800
X-CSE-ConnectionGUID: Wt116T5XSFmacTxaz98PaQ==
X-CSE-MsgGUID: kiB6UEE4S4ecp80eDo+RnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="89813797"
Received: from timelab-spr11.ch.intel.com ([143.182.136.151])
 by orviesa004.jf.intel.com with ESMTP; 06 Nov 2024 10:56:41 -0800
From: Christopher S M Hall <christopher.s.hall@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: david.zage@intel.com, vinicius.gomes@intel.com, netdev@vger.kernel.org,
 rodrigo.cadore@l-acoustics.com, vinschen@redhat.com
Date: Wed,  6 Nov 2024 18:47:20 +0000
Message-Id: <20241106184722.17230-5-christopher.s.hall@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241106184722.17230-1-christopher.s.hall@intel.com>
References: <20241106184722.17230-1-christopher.s.hall@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730919532; x=1762455532;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QOTNwCbXC0dEBBEghJ97he0ts6uyFWd6JAr1mw42WaI=;
 b=OEW0wQEraUJMjX4kWMJjC3XPCE53BHxfDlNk43QzONyb52J+iMmOVfKF
 Yn7HnfU+qZOcyvwwbkOmJFVyfjP+tcuSVwwgmjaYuDIqiCwAjiat5glEv
 5g1TIHsECGb86bARDaemYmAZDx/cX+a6KNT6eyTf40bdC/j/bZVRPJxA6
 jBQohJA1CeSj7OZBKTUC1/M2E8AvRRoXU+L6T/YMQoMG4kNNagHsyEja3
 ZNtyrhv93M9gp6YyJVn95yUgWwOdAFaYoA/oM2Rz9Emc9O5bYZvVhqWZi
 1xHRBM6HMexd0CVKQ5V4P7uYOD7NPpZKaqCVHEVHg9nYDHNnDRBrG7Aqp
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OEW0wQEr
Subject: [Intel-wired-lan] [PATCH iwl-net v3 4/6] igc: Handle the
 IGC_PTP_ENABLED flag correctly
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

All functions in igc_ptp.c called from igc_main.c should check the
IGC_PTP_ENABLED flag. Adding check for this flag to stop and reset
functions.

Fixes: 5f2958052c58 ("igc: Add basic skeleton for PTP")
Signed-off-by: Christopher S M Hall <christopher.s.hall@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ptp.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index 516abe7405de..343205bffc35 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -1244,8 +1244,12 @@ void igc_ptp_suspend(struct igc_adapter *adapter)
  **/
 void igc_ptp_stop(struct igc_adapter *adapter)
 {
+	if (!(adapter->ptp_flags & IGC_PTP_ENABLED))
+		return;
+
 	igc_ptp_suspend(adapter);
 
+	adapter->ptp_flags &= ~IGC_PTP_ENABLED;
 	if (adapter->ptp_clock) {
 		ptp_clock_unregister(adapter->ptp_clock);
 		netdev_info(adapter->netdev, "PHC removed\n");
@@ -1266,6 +1270,9 @@ void igc_ptp_reset(struct igc_adapter *adapter)
 	unsigned long flags;
 	u32 timadj;
 
+	if (!(adapter->ptp_flags & IGC_PTP_ENABLED))
+		return;
+
 	/* reset the tstamp_config */
 	igc_ptp_set_timestamp_mode(adapter, &adapter->tstamp_config);
 
-- 
2.34.1

