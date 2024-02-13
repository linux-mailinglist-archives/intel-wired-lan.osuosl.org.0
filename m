Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 71A5B8529BD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Feb 2024 08:23:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0C05560AEF;
	Tue, 13 Feb 2024 07:23:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pe73UAL9oaEx; Tue, 13 Feb 2024 07:23:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E64DD60AF2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707809018;
	bh=4ocxu5wUGyBBPT2gpobEmSYGijwgZlLCPL4jli/7mCk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CczqJapZRf4Jrbz6kCFbGmO2TQK0+K03zG0ajE54oPzRRY4IdgJrjvtL8OR7DuDLl
	 Utwlw4Z8wJz6npqc0OI0u8HscJr4NUijJDENvbhml9Ia/vXVr2rxFQS2tY3ZuZKvg9
	 8f+c/9zDuMeVR7NlSQ/sx6jPeADgstZZNy92FoogXiOZyRcb9KbHoBvdDkVasB20lc
	 pRRkFWlxFkoNjeBdfkDHOBtcHDMjpZKmhMecI94vvCqtgt/R+jopkkbUANekRb/s94
	 +l0n/5PX9B6lJPCueNDLhDGw4vGcPV3LHeMOQKtFsCRQCRgCnJb3noFfFXtOTzvOau
	 EnQjizkhsXRTg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E64DD60AF2;
	Tue, 13 Feb 2024 07:23:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1B1B91BF5F5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 07:23:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 081834085C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 07:23:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZKJpRnM_TThw for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Feb 2024 07:23:30 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5F3AD40833
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5F3AD40833
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5F3AD40833
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 07:23:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="27247971"
X-IronPort-AV: E=Sophos;i="6.06,156,1705392000"; d="scan'208";a="27247971"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2024 23:23:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,156,1705392000"; 
   d="scan'208";a="7385312"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by fmviesa003.fm.intel.com with ESMTP; 12 Feb 2024 23:23:28 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 13 Feb 2024 08:27:17 +0100
Message-ID: <20240213072724.77275-9-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240213072724.77275-1-michal.swiatkowski@linux.intel.com>
References: <20240213072724.77275-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707809010; x=1739345010;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VwQvXzNSK0T1FhN/TzTcIWD9hV1h/3p/4JAyNuO9c88=;
 b=fBbmB6Jf/WXHYB/CwpKFWYjoOZ7kYb5Zcs/ji4sXj7aNNvNTj8yCk6O1
 rFUmREqFuiEAEp+25KUMmdpFva15Yobfk3DKyfxkyPls94JDhylveMMji
 dJzn6YIc81gqjj535xbQPPBpT4brgo7vwGsrjXsRned+sc7k49oXRpNiY
 LanjcsGINpkwroBIBkuHC+FDZDECElGutnqsEjAC4VWmleJ1nv0m2VaAS
 9J2LklZ8Rbm9+todBbgYMzIr41OqiOsruSSNy9nBoOdHY6xqa0FN2Yxa0
 IN06Xvd5jUVZRoN34D6yNLqsrx8VoQ3vH+oL9u/vYRhpQWmBJUUWQgSke
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fBbmB6Jf
Subject: [Intel-wired-lan] [iwl-next v1 08/15] ice: store SF data in VSI
 struct
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
Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 maciej.fijalkowski@intel.com, sridhar.samudrala@intel.com,
 netdev@vger.kernel.org, michal.kubiak@intel.com, pio.raczynski@gmail.com,
 przemyslaw.kitszel@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Store subfunction pointer in VSI struct. The same is done for VF
pointer. Make union of subfunction and VF pointer as only one of them
can be set with one VSI.

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h        | 7 ++++++-
 drivers/net/ethernet/intel/ice/ice_sf_eth.c | 1 +
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 767ea80684e7..4d35480178bc 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -352,7 +352,12 @@ struct ice_vsi {
 	u16 vsi_num;			/* HW (absolute) index of this VSI */
 	u16 idx;			/* software index in pf->vsi[] */
 
-	struct ice_vf *vf;		/* VF associated with this VSI */
+	union {
+		/* VF associated with this VSI */
+		struct ice_vf *vf;
+		/* SF associated with this VSI */
+		struct ice_dynamic_port *sf;
+	};
 
 	u16 num_gfltr;
 	u16 num_bfltr;
diff --git a/drivers/net/ethernet/intel/ice/ice_sf_eth.c b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
index abee733710a5..55db2e4beb72 100644
--- a/drivers/net/ethernet/intel/ice/ice_sf_eth.c
+++ b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
@@ -117,6 +117,7 @@ static int ice_sf_dev_probe(struct auxiliary_device *adev,
 		dev_err(dev, "Subfunction vsi config failed");
 		return err;
 	}
+	vsi->sf = dyn_port;
 
 	err = ice_devlink_create_sf_dev_port(sf_dev);
 	if (err)
-- 
2.42.0

