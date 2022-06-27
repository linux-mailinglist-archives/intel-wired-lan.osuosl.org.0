Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 92B6155BA38
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Jun 2022 16:02:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1B6CA60E80;
	Mon, 27 Jun 2022 14:02:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1B6CA60E80
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656338572;
	bh=UU04ZijjSCk9FU0FY504khEGmY3OuxLRAcO2GcpI6zc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=VW5VJiuJaGdgBZ/FXbwOBwYyovrU4O4TkAwAAC1I/adHasO1YWsFw04/AgDxqN054
	 cr+9MklgPvnOwHLsWdCM6yK9hBiOGp15BnRSheEh7Ijaq5b+p7cCqe8MUqz0OIUwLM
	 PPFiwXaTF740s2E4BvrRL2fW9yIFnRinn27jxA6cZggvL4qYrviEMxM5RYxK91ga6F
	 nY5AOICsHh0tcLRYcmi5HtBcAOapod0SCR5wKoay2EZpzXX/yn1XlWT89y3yzCqMu7
	 HjbOrMf66UXMh0nPKu7MYevRpkgAsOLVccvb/26hjIfjxfK7c88JUPVgvRgDhNp/os
	 cD/j4DlOclYeQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id siRpzgct_mTW; Mon, 27 Jun 2022 14:02:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 131B860B50;
	Mon, 27 Jun 2022 14:02:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 131B860B50
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 170B31BF2CC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jun 2022 14:02:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D687C60B50
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jun 2022 14:02:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D687C60B50
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kUOxXs23aJbx for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Jun 2022 14:02:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E3FEF60AA4
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E3FEF60AA4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jun 2022 14:02:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10390"; a="282545964"
X-IronPort-AV: E=Sophos;i="5.92,226,1650956400"; d="scan'208";a="282545964"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2022 07:02:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,226,1650956400"; d="scan'208";a="916729030"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by fmsmga005.fm.intel.com with ESMTP; 27 Jun 2022 07:02:15 -0700
From: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 27 Jun 2022 16:02:04 +0200
Message-Id: <20220627140204.494655-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656338565; x=1687874565;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Or92YWNXDKEbBkkd5Cd7tVi/vU9rxtB+B7oFVOLKdqQ=;
 b=DHlSdgalsky858l3AcjLO2p/QUDdSCp44VcV7IAh1ZD5Qbh6K9achV2s
 cEgKiP04h/46xF3RHFtXS0/f+xanJKGJe8v4h3q+XRuB2XgPI7++2xG98
 qLhsuuBFm74wDTM0SoC3et1iODEGr+pKFjvawvTDTRLKaI7ldb3yG6WPc
 2qNCO6gJkqU+juVwP/rMqhiDP2ALCpCKtTM1LP4glb+SMs9Erfv5M17O9
 px/ooptWyPn62/7yTcgd4ez0pOdVN3k8tx/AKjKEc7VpQMBUs3eAltPyE
 09zyCm4krr/WnCAcuaymmUvmDezxidv790ViKHqy5sAp/66lstMWGwWrS
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DHlSdgal
Subject: [Intel-wired-lan] [PATCH net v1] ice: Fix max VLANs available for VF
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
Cc: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Legacy VLAN implementation allows for untrusted VF to have 8 VLAN
filters, not counting VLAN 0 filters. Current VLAN_V2 implementation
lowers available filters for VF, by counting in  VLAN 0 filter for both
TPIDs.
Fix this by counting only non zero VLAN filters.
Without this patch, untrusted VF would not be able to access 8 VLAN
filters.

Fixes: bf93bf791cec ("ice: introduce ice_virtchnl.c and ice_virtchnl.h")
Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index 4547bc1f7cee..24188ec594d5 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -2948,7 +2948,8 @@ ice_vc_validate_add_vlan_filter_list(struct ice_vsi *vsi,
 				     struct virtchnl_vlan_filtering_caps *vfc,
 				     struct virtchnl_vlan_filter_list_v2 *vfl)
 {
-	u16 num_requested_filters = vsi->num_vlan + vfl->num_elements;
+	u16 num_requested_filters = ice_vsi_num_non_zero_vlans(vsi) +
+		vfl->num_elements;
 
 	if (num_requested_filters > vfc->max_filters)
 		return false;
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
