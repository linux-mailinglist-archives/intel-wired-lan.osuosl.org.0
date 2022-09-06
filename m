Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DBB85AE3F0
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Sep 2022 11:15:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 617A940017;
	Tue,  6 Sep 2022 09:15:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 617A940017
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1662455746;
	bh=IOL7eJsEddNY++ZBAbRHlLN4R7W3emSXU2Snj9XQYcA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NDMDMUznpeeZGAlio06qSvTDKQZml2Ehg1Rvr4BLCybZdgcwvWBlL4pr2T36WEPnB
	 1RJfadO8f2Ht+ueyIIq256A1HFWBGSNNcKSKjoZXQ0l0NVvArImDIXUBFlJ8kQ503i
	 2vAY5BgJUTlaLEzWsNd69t/7AxkhbHJHRv8LUZIMWRXb74QYJAGvsNRyiFIW6JC+8f
	 otiDOd7dWq2Z2qVUXSzYCPxSOGL4OMI/YxBAghzIonXnmuZ+2ENgtDngYdirBKliBE
	 r0+2FxM4fK0H467aYrlnMMyxQLfV5uqTjTMCAmL4rbNTWaG2VBkD2D6qptr6tjQ9l8
	 QoOHs9WvyHI2A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NVjJb8YfA-My; Tue,  6 Sep 2022 09:15:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5B16440BC5;
	Tue,  6 Sep 2022 09:15:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5B16440BC5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 253111BF2FF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Sep 2022 09:15:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0B94F404AA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Sep 2022 09:15:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0B94F404AA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hweWx1JFXKbt for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Sep 2022 09:15:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 27DDC417B6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 27DDC417B6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Sep 2022 09:15:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10461"; a="297331021"
X-IronPort-AV: E=Sophos;i="5.93,293,1654585200"; d="scan'208";a="297331021"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2022 02:15:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,293,1654585200"; d="scan'208";a="647164020"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by orsmga001.jf.intel.com with ESMTP; 06 Sep 2022 02:15:29 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  6 Sep 2022 11:14:11 +0200
Message-Id: <20220906091411.910107-3-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220906091411.910107-1-mateusz.palczewski@intel.com>
References: <20220906091411.910107-1-mateusz.palczewski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662455731; x=1693991731;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pdJveiyrm7qjTTdY1vThNij44ZwuIL7ua9wqoHwhVw0=;
 b=UFQsoc8P5bkXfCAuYdasEfV26//Y9+WgZKyeVXYdR/d5Qqm1B15I65cW
 wZQh7eyCuiqcI+Yv1kmEYNSurQfWnPnIUmOwjvIS42KQbnYFxHsK1qHW/
 lMZZYy+aQ4fWBP7riWXyG7KXLF7Vxy8attXHOtaODYKnBCME+FGtfNwuu
 dEXxQYA9nmm32RHO5JJFoAx8YEcqXSl2m4GM18XD6Y0oQ5/3FbVAZc4hc
 5ScK5SiNt19K+R3wZCmdT+M5EJAXgUoeyuW9aAgSd/dbFsZRRQQ1amgsk
 xX+dug75Yc4hSrUgT6LKgENRFkGkTgoo6pm6McqTf0eHFZl3MbdxDV+lI
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UFQsoc8P
Subject: [Intel-wired-lan] [PATCH net v1 2/2] i40e: Fix vf set max mtu size
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
Cc: Michal Jaron <michalx.jaron@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Michal Jaron <michalx.jaron@intel.com>

Max mtu sent to vf is set to 0 during memory allocation. It cause
that max mtu on VF is changed to IAVF_MAX_RXBUFFER and does not
depend on data from hw.

Set max_mtu field in virtchnl_vf_resource struct to inform
vf in GET_VF_RESOURCES msg what size should be max frame.

Fixes: dab86afdbbd1 ("i40e/i40evf: Change the way we limit the maximum frame size for Rx")
Signed-off-by: Michal Jaron <michalx.jaron@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 4f184c50f6e8..7e9f6a69eb10 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -2038,6 +2038,25 @@ static void i40e_del_qch(struct i40e_vf *vf)
 	}
 }
 
+/**
+ * i40e_vc_get_max_frame_size
+ * @vf: pointer to the VF
+ *
+ * Max frame size is determined based on the current port's max frame size and
+ * whether a port VLAN is configured on this VF. The VF is not aware whether
+ * it's in a port VLAN so the PF needs to account for this in max frame size
+ * checks and sending the max frame size to the VF.
+ **/
+static u16 i40e_vc_get_max_frame_size(struct i40e_vf *vf)
+{
+	u16 max_frame_size = vf->pf->hw.phy.link_info.max_frame_size;
+
+	if (vf->port_vlan_id)
+		max_frame_size -= VLAN_HLEN;
+
+	return max_frame_size;
+}
+
 /**
  * i40e_vc_get_vf_resources_msg
  * @vf: pointer to the VF info
@@ -2139,6 +2158,7 @@ static int i40e_vc_get_vf_resources_msg(struct i40e_vf *vf, u8 *msg)
 	vfres->max_vectors = pf->hw.func_caps.num_msix_vectors_vf;
 	vfres->rss_key_size = I40E_HKEY_ARRAY_SIZE;
 	vfres->rss_lut_size = I40E_VF_HLUT_ARRAY_SIZE;
+	vfres->max_mtu = i40e_vc_get_max_frame_size(vf);
 
 	if (vf->lan_vsi_idx) {
 		vfres->vsi_res[0].vsi_id = vf->lan_vsi_id;
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
