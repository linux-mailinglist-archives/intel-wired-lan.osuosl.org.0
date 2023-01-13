Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ED8666A60B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jan 2023 23:38:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 24543415C2;
	Fri, 13 Jan 2023 22:38:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 24543415C2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673649482;
	bh=iDNn6c4dbQvPPcB/2I7uB79iUnOba3Jo4u7KAr3DdCg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ro3nNv9PgawaaCu3ly80xDdGa5KIdSwuNT8a7CcvOxkyJGImbO/5ze80hemolffka
	 j+sjluwtTF+8DPXXYDd9aIWmXs2qlJtR2zuz52WcA0p2LUDWCxEF+HRSepzMRJyqNz
	 hFfx8nZfWqgxr9OU95ekK2rJ8+SMMwmhx6xDuyEwTaRYt/GQjYicHXIai/uVH2vb1p
	 W741HPN5rgmRSvII6GQAvXuhBNMWGKO49NwCXttX4n7AkbKZCPQdvTfn2CqUvM8wjI
	 dL14PyautB9KLN/faQ/YfPdxRDuHNpINoSW+VgNTpufQWm+cjUlRi5w+K0N5pN41X5
	 F0BAVcdhijwPA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NvL1G5oLzpOj; Fri, 13 Jan 2023 22:38:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 00BA5400C8;
	Fri, 13 Jan 2023 22:38:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 00BA5400C8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2BBF71BF399
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 22:37:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 02F7941B61
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 22:37:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 02F7941B61
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i-vpJAszPKjr for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jan 2023 22:37:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1EAAD41B55
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1EAAD41B55
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 22:37:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10589"; a="351354055"
X-IronPort-AV: E=Sophos;i="5.97,215,1669104000"; d="scan'208";a="351354055"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2023 14:37:44 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10589"; a="726859771"
X-IronPort-AV: E=Sophos;i="5.97,215,1669104000"; d="scan'208";a="726859771"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2023 14:37:44 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Fri, 13 Jan 2023 14:37:28 -0800
Message-Id: <20230113223735.2514364-7-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.38.1.420.g319605f8f00e
In-Reply-To: <20230113223735.2514364-1-jacob.e.keller@intel.com>
References: <20230113223735.2514364-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673649465; x=1705185465;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WkVpCOeXxYOOoBefGUD8vLY4lqW7YChUtdJjXlUx9ag=;
 b=ExeWpUfb3DApOE6KNC03gs/p3wDj7+Bn/3bBNiHU3mFAE2rGkoyFiawS
 oFXeeEqRnP0Y7Ho8puaMH1qKaEdXkf4utWQnfKix9vhJGYvi0g/tyfHyw
 6Cfu4EwNTJI8rz+Mj0/ywu4yqAWMQozfn1WQRXnGaO7/nQl74ONIxK83q
 rzXqEmG7UTkmOT4Z8jUZCOxjxz1Yb+kl+BUn8/X+3PrQEVduo8hkxnjKD
 5n14mLN2+90awddA1FVLRWOoz2v0BVHFZQHeH9e1h/ZMACQY100sJ9Itx
 tr4310DqWkfChduXG2Jm/IvpM+rMh5d0I5vuByXymY5DUWC0XR9dZJiST
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ExeWpUfb
Subject: [Intel-wired-lan] [PATCH net-next 06/13] ice: move
 ice_vf_vsi_release into ice_vf_lib.c
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

The ice_vf_vsi_release function will be used in a future change to
refactor the .vsi_rebuild function. Move this over to ice_vf_lib.c so
that it can be used there.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_sriov.c     | 15 ---------------
 drivers/net/ethernet/intel/ice/ice_vf_lib.c    | 18 ++++++++++++++++++
 .../ethernet/intel/ice/ice_vf_lib_private.h    |  1 +
 3 files changed, 19 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 3ba1408c56a9..c5129923001f 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -40,21 +40,6 @@ static void ice_free_vf_entries(struct ice_pf *pf)
 	}
 }
 
-/**
- * ice_vf_vsi_release - invalidate the VF's VSI after freeing it
- * @vf: invalidate this VF's VSI after freeing it
- */
-static void ice_vf_vsi_release(struct ice_vf *vf)
-{
-	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
-
-	if (WARN_ON(!vsi))
-		return;
-
-	ice_vsi_release(vsi);
-	ice_vf_invalidate_vsi(vf);
-}
-
 /**
  * ice_free_vf_res - Free a VF's resources
  * @vf: pointer to the VF info
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index c3b406df269f..2ad905442ba8 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -1138,6 +1138,24 @@ void ice_vf_invalidate_vsi(struct ice_vf *vf)
 	vf->lan_vsi_num = ICE_NO_VSI;
 }
 
+/**
+ * ice_vf_vsi_release - Release the VF VSI and invalidate indexes
+ * @vf: pointer to the VF structure
+ *
+ * Release the VF associated with this VSI and then invalidate the VSI
+ * indexes.
+ */
+void ice_vf_vsi_release(struct ice_vf *vf)
+{
+	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
+
+	if (WARN_ON(!vsi))
+		return;
+
+	ice_vsi_release(vsi);
+	ice_vf_invalidate_vsi(vf);
+}
+
 /**
  * ice_vf_set_initialized - VF is ready for VIRTCHNL communication
  * @vf: VF to set in initialized state
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib_private.h b/drivers/net/ethernet/intel/ice/ice_vf_lib_private.h
index 9c8ef2b01f0f..a0f204746f4e 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib_private.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib_private.h
@@ -36,6 +36,7 @@ void ice_vf_ctrl_invalidate_vsi(struct ice_vf *vf);
 void ice_vf_ctrl_vsi_release(struct ice_vf *vf);
 struct ice_vsi *ice_vf_ctrl_vsi_setup(struct ice_vf *vf);
 void ice_vf_invalidate_vsi(struct ice_vf *vf);
+void ice_vf_vsi_release(struct ice_vf *vf);
 void ice_vf_set_initialized(struct ice_vf *vf);
 
 #endif /* _ICE_VF_LIB_PRIVATE_H_ */
-- 
2.38.1.420.g319605f8f00e

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
