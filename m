Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AFEAEC84009
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Nov 2025 09:35:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3921F40648;
	Tue, 25 Nov 2025 08:35:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0okQoFLG7UnW; Tue, 25 Nov 2025 08:35:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A8CD640640
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764059716;
	bh=mzR3XDy9CeRA2mFTyqju3M78VTt6Jyj0otkCidfOr9Q=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=UFKDvodPn8t2qyM78WmQKPxN+dVtXTF0T+q40ApH9UamXonWZRf8M1pbaleWYihbt
	 3EXt7s12aECtUhew7zYOaN3s/xm+v7oNxdQ3aiSsHvHmWp9tET82Vkj8JwRpUFeCbf
	 WyrE0Vsv4L33fqHmRkI0LPp05n8pkps+nz6AcXVX/n7jNSXZ8JM0nvxluiUrFONiCk
	 RbAn9IMl3b0dOP809IM476xb/CdEdWzCN8ygEQVzfwli1RPfueGdBtQrS5FI30hDNm
	 6/lumiXl1TJh3CkC6sN5NtlewmRwVG4Va92pXvdmhyE5vKRnSQ4q1dWsNwwZ61XdmS
	 njZSqS0rV9jXw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A8CD640640;
	Tue, 25 Nov 2025 08:35:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 6564AE4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 08:35:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4C31E40640
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 08:35:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zMgNh2DYMqjz for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Nov 2025 08:35:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=jakub.slepecki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4D433405C0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4D433405C0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4D433405C0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 08:35:13 +0000 (UTC)
X-CSE-ConnectionGUID: iEogvB42S3mt/C37y+x/OA==
X-CSE-MsgGUID: b/Pl3uf/QEez+OBtz45GqA==
X-IronPort-AV: E=McAfee;i="6800,10657,11623"; a="76694461"
X-IronPort-AV: E=Sophos;i="6.20,225,1758610800"; d="scan'208";a="76694461"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 00:35:13 -0800
X-CSE-ConnectionGUID: tqGKKAbVTjKPW88qtD1oyQ==
X-CSE-MsgGUID: EjLNB/d4QriELPvLsODJAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,225,1758610800"; d="scan'208";a="196749941"
Received: from hpe-dl385gen10.igk.intel.com ([10.91.240.117])
 by orviesa003.jf.intel.com with ESMTP; 25 Nov 2025 00:35:11 -0800
From: Jakub Slepecki <jakub.slepecki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com,
 michal.swiatkowski@linux.intel.com, jakub.slepecki@intel.com,
 aleksandr.loktionov@intel.com
Date: Tue, 25 Nov 2025 09:34:54 +0100
Message-ID: <20251125083456.28822-7-jakub.slepecki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251125083456.28822-1-jakub.slepecki@intel.com>
References: <20251125083456.28822-1-jakub.slepecki@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764059713; x=1795595713;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QnuibCi06y3kAvMvHiJfgcBcNmBpeHEyvC1u7Dlu7c0=;
 b=Q1osl69pSBxaY9DGo4WNnXGEN4BX9SSHehvHzsO/huxu8ZiLJ+H4fJk9
 KtQCLfKzpqZG1PKanC/HjEOqiuTXbTG5DOIAssGTBLRRbiLKfLbiSIDxM
 I2HkiUU8YFc/0CpOf4hSmCD1X9iHH4nKXRFQU4JrPDNfTGJEEeq1aAC45
 R/AcumMuzY3GqDRq+BhElBDh1YggKDb8HjLszPKBLN37hz3fSzQS2UHqg
 c93N/JfRkBDJzCYUEtGGwlJ2Z4T+0cnOWMH5alOcmFifbrWbgpUTuIegY
 2V1zpKHlXAeKbKfcFl67sU/g7EilkIJLeMdiUHX+/bFV7z6d7R+aU5/OE
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Q1osl69p
Subject: [Intel-wired-lan] [PATCH iwl-next v2 6/8] ice: add functions to
 query for vsi's pvids
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

PVID information is set across two structs and several members depending
primarily on DVM support and VSI type.  This commit adds function that
guess whether PVID is set and where and allow to access raw VLAN ID set.
This is intended to be used later on to decide what MAC{,VLAN} filters
to set for a VSI.

Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Jakub Slepecki <jakub.slepecki@intel.com>

---
No changes in v2.
---
 drivers/net/ethernet/intel/ice/ice_lib.c | 56 ++++++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_lib.h |  2 +
 2 files changed, 58 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 44f3c2bab308..55ba043f8f5e 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -4059,3 +4059,59 @@ void ice_vsi_update_l2tsel(struct ice_vsi *vsi, enum ice_l2tsel l2tsel)
 		wr32(hw, qrx_context_offset, regval);
 	}
 }
+
+/**
+ * ice_vsi_has_outer_pvid - check if VSI has outer Port VLAN ID assigned
+ * @info: props of VSI in question
+ *
+ * Return: true if VSI has outer PVID, false otherwise.
+ */
+static bool
+ice_vsi_has_outer_pvid(const struct ice_aqc_vsi_props *info)
+{
+	return info->outer_vlan_flags & ICE_AQ_VSI_OUTER_VLAN_PORT_BASED_INSERT;
+}
+
+/**
+ * ice_vsi_has_inner_pvid - check if VSI has inner Port VLAN ID assigned
+ * @info: props of VSI in question
+ *
+ * Return: true if VSI has inner PVID, false otherwise.
+ */
+static bool
+ice_vsi_has_inner_pvid(const struct ice_aqc_vsi_props *info)
+{
+	return info->inner_vlan_flags & ICE_AQ_VSI_INNER_VLAN_INSERT_PVID;
+}
+
+/**
+ * ice_vsi_has_pvid - check if VSI has Port VLAN ID assigned
+ * @vsi: VSI in question
+ *
+ * Return: true if VSI has either outer or inner PVID, false otherwise.
+ */
+bool
+ice_vsi_has_pvid(struct ice_vsi *vsi)
+{
+	return ice_vsi_has_outer_pvid(&vsi->info) ||
+	       ice_vsi_has_inner_pvid(&vsi->info);
+}
+
+/**
+ * ice_vsi_pvid - retrieve VSI's Port VLAN ID
+ * @vsi: VSI in question
+ *
+ * Return: VSI's PVID; it is valid only if ice_vsi_has_pvid is true.
+ */
+u16
+ice_vsi_pvid(struct ice_vsi *vsi)
+{
+	__le16 vlan_info = 0;
+
+	if (ice_vsi_has_outer_pvid(&vsi->info))
+		vlan_info = vsi->info.port_based_outer_vlan;
+	else if (ice_vsi_has_inner_pvid(&vsi->info))
+		vlan_info = vsi->info.port_based_inner_vlan;
+
+	return le16_to_cpu(vlan_info) & VLAN_VID_MASK;
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index 2cb1eb98b9da..c28c69963946 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -124,4 +124,6 @@ void ice_clear_feature_support(struct ice_pf *pf, enum ice_feature f);
 void ice_init_feature_support(struct ice_pf *pf);
 bool ice_vsi_is_rx_queue_active(struct ice_vsi *vsi);
 void ice_vsi_update_l2tsel(struct ice_vsi *vsi, enum ice_l2tsel l2tsel);
+bool ice_vsi_has_pvid(struct ice_vsi *vsi);
+u16 ice_vsi_pvid(struct ice_vsi *vsi);
 #endif /* !_ICE_LIB_H_ */
-- 
2.43.0

