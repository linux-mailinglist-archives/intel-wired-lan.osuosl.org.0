Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB7D866A613
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jan 2023 23:38:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7F81C415D3;
	Fri, 13 Jan 2023 22:38:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7F81C415D3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673649514;
	bh=/aMQE1dyZXf5jcECPZUC0qqqRAYQnQwl54mugE7XeIg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AW2E1phlinrrADnPsKSSleO554jXvnbffATEkyZkY2me7t+bmNte84ucgFFQVagAU
	 V3x30F3JfcRLkUMLCNDSkt8Wnx9GRWb+5lE0cj+YNvGtoDteNA6+OXLri+stgF9Lgu
	 sPQrsE8n3tx2oUTnk2eQ5G3RKy29erRYgntfm3e/LZ/9Rswms7xJcVs6E8f4l5J8JN
	 6py+wOUnM5iFXJK1X6erg4GtiesXtwYyeq5Pg6pkhL4Oon6m9zO2SFI9RsXdU7hPJe
	 bSDvuFEhpNntN3qUYFF4GcLbWodwoCXhwNRj7ys2ZIEYbm2IRVw1xgWKk59j71Zg+u
	 3z0aUaATG+tow==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Vyy0ATXDLoET; Fri, 13 Jan 2023 22:38:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 78278400C8;
	Fri, 13 Jan 2023 22:38:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 78278400C8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 394FA1BF399
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 22:37:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D66A941B6B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 22:37:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D66A941B6B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iH-0UG0YODon for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jan 2023 22:37:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 03FD941B69
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 03FD941B69
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 22:37:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10589"; a="351354074"
X-IronPort-AV: E=Sophos;i="5.97,215,1669104000"; d="scan'208";a="351354074"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2023 14:37:46 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10589"; a="726859794"
X-IronPort-AV: E=Sophos;i="5.97,215,1669104000"; d="scan'208";a="726859794"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2023 14:37:46 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Fri, 13 Jan 2023 14:37:34 -0800
Message-Id: <20230113223735.2514364-13-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.38.1.420.g319605f8f00e
In-Reply-To: <20230113223735.2514364-1-jacob.e.keller@intel.com>
References: <20230113223735.2514364-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673649467; x=1705185467;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4QaEbEfpRTYoMU+n9eMPwNZKbcfKdvHABklGpDwm9bA=;
 b=fw2i5PxPzeDVbSi/3mWT7NFAw30mgLglfc0pK+a+8H/puPs0lQ7HN5bx
 nohZyKbTASTy1qHi5SMYg/QtNAeHqc2EoTYdESgOVd0i6keM2WxNWtP4h
 UrABp90HOxBTOxFa1uv0KVul4bOx7041/Uxrrbfvf2PwXg0gGtjSofVfd
 pmvcP0KRy2xdHjPmNCdbEI+RdCDVCaepTqlDHSmc3ppXLgS5iKiSx5Any
 RIu4NUCkTdFBmOi157wV41hsAOYDdUqzFAMGPKSMtI3tAYz2CjqJgfabW
 vCC1uT1Y5MAjlU/qZjN/O+J/spPHcLJy2oe6S8PuQTwx3OMEvA9HhK2K+
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fw2i5PxP
Subject: [Intel-wired-lan] [PATCH net-next 12/13] ice: introduce .irq_close
 VF operation
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

The Scalable IOV implementation will require notifying the VDCM driver when
an IRQ must be closed. This allows the VDCM to handle releasing stale IRQ
context values and properly reconfigure.

To handle this, introduce a new optional .irq_close callback to the VF
operations structure. This will be implemented by Scalable IOV to handle
the shutdown of the IRQ context.

Since the SR-IOV implementation does not need this, we must check that its
non-NULL before calling it.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_sriov.c  | 1 +
 drivers/net/ethernet/intel/ice/ice_vf_lib.c | 4 ++++
 drivers/net/ethernet/intel/ice/ice_vf_lib.h | 1 +
 3 files changed, 6 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 58eb35504c27..c466d15697a7 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -802,6 +802,7 @@ static const struct ice_vf_ops ice_sriov_vf_ops = {
 	.trigger_reset_register = ice_sriov_trigger_reset_register,
 	.poll_reset_status = ice_sriov_poll_reset_status,
 	.clear_reset_trigger = ice_sriov_clear_reset_trigger,
+	.irq_close = NULL,
 	.create_vsi = ice_sriov_create_vsi,
 	.post_vsi_rebuild = ice_sriov_post_vsi_rebuild,
 };
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index f9ac76d4826a..90b7b0d16b23 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -237,6 +237,10 @@ static void ice_vf_clear_counters(struct ice_vf *vf)
  */
 static void ice_vf_pre_vsi_rebuild(struct ice_vf *vf)
 {
+	/* Close any IRQ mapping now */
+	if (vf->vf_ops->irq_close)
+		vf->vf_ops->irq_close(vf);
+
 	ice_vf_clear_counters(vf);
 	vf->vf_ops->clear_reset_trigger(vf);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
index 2085d1a6cd7c..69301f5baf87 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
@@ -61,6 +61,7 @@ struct ice_vf_ops {
 	void (*trigger_reset_register)(struct ice_vf *vf, bool is_vflr);
 	bool (*poll_reset_status)(struct ice_vf *vf);
 	void (*clear_reset_trigger)(struct ice_vf *vf);
+	void (*irq_close)(struct ice_vf *vf);
 	int (*create_vsi)(struct ice_vf *vf);
 	void (*post_vsi_rebuild)(struct ice_vf *vf);
 };
-- 
2.38.1.420.g319605f8f00e

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
