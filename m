Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69D8E66A60E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jan 2023 23:38:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id ECC81415BD;
	Fri, 13 Jan 2023 22:38:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ECC81415BD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673649494;
	bh=XikpQSki1xOjJ7srMza6aDyOfnHkGhhAasx2qEkLIKI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LbGG5pgvJEI4+oJul5bgfCcVNAzYsae9CE1TcR1Er2PwaS0O1Tq04KKVa+jd9ChwX
	 1AGH1gvMglPQ1ixazHHBiDWoAM2Osb6F2fXdr7EWT2r2sroOf7klXZdRCg+feVuDh8
	 th562bUd+euqZkXIVXvDuQ2PlxTDDBEKLG/NKi8e6r1uBdoBoujWkY+FrfYd6HEu7Q
	 gPGCTir1RMCt4dqxV+UJ/6vM7qppz41XwLAxZcndL0jMWxQiEv/WAec7uQTk/hRydW
	 TrsqtFzaqtFrnFbLUtCpZ+3hHF3hCLcd7xqc4nY6DPOaJTgB/YmnZp/qknk7Q6nTvF
	 gDx3gdkhjz8lg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hm-qBvmlcgl4; Fri, 13 Jan 2023 22:38:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id ECE8C404F1;
	Fri, 13 Jan 2023 22:38:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ECE8C404F1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BF6571BF399
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 22:37:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 96979821FE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 22:37:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 96979821FE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IFB9MTYo8pVi for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jan 2023 22:37:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4DE3E82200
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4DE3E82200
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 22:37:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10589"; a="351354048"
X-IronPort-AV: E=Sophos;i="5.97,215,1669104000"; d="scan'208";a="351354048"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2023 14:37:44 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10589"; a="726859764"
X-IronPort-AV: E=Sophos;i="5.97,215,1669104000"; d="scan'208";a="726859764"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2023 14:37:43 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Fri, 13 Jan 2023 14:37:26 -0800
Message-Id: <20230113223735.2514364-5-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.38.1.420.g319605f8f00e
In-Reply-To: <20230113223735.2514364-1-jacob.e.keller@intel.com>
References: <20230113223735.2514364-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673649464; x=1705185464;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2Kg4GHbXxhgNPK366gvYzX+IzQ4xEXOTb5hXnkB4fMk=;
 b=XNQxiP6vnRXqZ00pgAD2PvkCdPva8cV9FHvi4Asuy4Ljx5VNGA4mWid/
 za2FIZC3uGo9HAyKhbOwneIqqnbFV+moyrbfWjSekNjU03NTfVU4GgGza
 Ubrqryc/+TyThOsVPZF3F2+9XQCCCxKl3OXYogG4GQsH92ypoOkAiwKds
 dJG7z5j1kxqv+gV8zZYpuldTjZH6i74oMWPG/wGuZ0lXPuRmhgtEMGVZW
 xUFyYENzHjk+I9WVWxtO1j9UDSc9DznDNric4VdiKAGCvF8vUJnbS8wu4
 8BfpIBT+/SH3+OdRgnnsoTwLEWA9pVWeLYAztnqdgmHpwWhZs9781Igws
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XNQxiP6v
Subject: [Intel-wired-lan] [PATCH net-next 04/13] ice: add helper function
 for checking VSI VF requirement
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
Cc: Anthony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

A few places in ice_lib.c WARN if the VSI type is VF and the VF pointer is
NULL. This helps protect against accidentally creating a ICE_VSI_VF without
providing a VF pointer.

A future change is going to introduce another type of VSI which has the
same requirement, ICE_VSI_ADI. Instead of expanding each WARN_ON check to
include both types, introduce a helper function to do this check. The
ice_vsi_requires_vf function returns true if the VSI *must* have a VF, and
returns false otherwise.

Of specific note is that some VSI types may optionally have a VF but do not
require them, such as the ICE_VSI_CTRL type. These return false.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c | 26 +++++++++++++++++++++---
 1 file changed, 23 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index f89279ede9a1..79555e22a9be 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -34,6 +34,26 @@ const char *ice_vsi_type_str(enum ice_vsi_type vsi_type)
 	}
 }
 
+/**
+ * ice_vsi_requires_vf - Does this VSI type always require a VF?
+ * @vsi_type: the VSI type
+ *
+ * Returns true if the VSI type *must* have a VF pointer. Returns false
+ * otherwise. In particular, VSI types which may *optionally* have a VF
+ * pointer return false.
+ *
+ * Used to WARN in cases where we always expect a VF pointer to be non-NULL.
+ */
+static int ice_vsi_requires_vf(enum ice_vsi_type vsi_type)
+{
+	switch (vsi_type) {
+	case ICE_VSI_VF:
+		return true;
+	default:
+		return false;
+	}
+}
+
 /**
  * ice_vsi_ctrl_all_rx_rings - Start or stop a VSI's Rx rings
  * @vsi: the VSI being configured
@@ -175,7 +195,7 @@ static void ice_vsi_set_num_qs(struct ice_vsi *vsi)
 	struct ice_pf *pf = vsi->back;
 	struct ice_vf *vf = vsi->vf;
 
-	if (WARN_ON(vsi_type == ICE_VSI_VF && !vf))
+	if (WARN_ON(ice_vsi_requires_vf(vsi_type) && !vf))
 		return;
 
 	switch (vsi_type) {
@@ -2854,7 +2874,7 @@ int ice_vsi_cfg(struct ice_vsi *vsi, enum ice_vsi_type vsi_type,
 	struct ice_pf *pf = vsi->back;
 	int ret;
 
-	if (WARN_ON(vsi_type == ICE_VSI_VF && !vf))
+	if (WARN_ON(ice_vsi_requires_vf(vsi_type) && !vf))
 		return -EINVAL;
 
 	vsi->type = vsi_type;
@@ -3487,7 +3507,7 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, int init_vsi)
 		return -EINVAL;
 
 	pf = vsi->back;
-	if (WARN_ON(vsi->type == ICE_VSI_VF && !vsi->vf))
+	if (WARN_ON(ice_vsi_requires_vf(vsi->type) && !vsi->vf))
 		return -EINVAL;
 
 	coalesce = kcalloc(vsi->num_q_vectors,
-- 
2.38.1.420.g319605f8f00e

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
