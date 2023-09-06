Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CE3CA79440C
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Sep 2023 21:57:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6C89B821C3;
	Wed,  6 Sep 2023 19:57:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6C89B821C3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694030251;
	bh=LmVMLN6jNt+BadUZYe4x3nUFBx96JjQW7V7jAADNVbA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jct1+JeSbWHG6sose2/Coyy8UYxK7vr4K/Pf1w3KdH49bAo1tu15V3UvuRQz19pUV
	 iRl168SlhRDwOnDmubqyjJBJarDWQWFVKcoKiKZtPW0XoWcVduuWPf/4zdIqcaRQAW
	 3K5m39TuKIFbXBIJA36E+LERysEn0ujjPF9ICO4IoGB+2ICzMxK4ilwjYj123o6Zd+
	 S5ffFgxHbAGQkbQiNAQc1oS6y0/ol03pzjUQVMn02m1mP5JIYnAlPu91SnAGJXdlNR
	 w/Xxwfb1YvfKLGFOb0ODk50phhXCj2SxRXVNX/xUNY3G+VtIIL/aIYzr0Pwzp0blQP
	 pGxpV7At3Owpg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q_J79F4dRvbX; Wed,  6 Sep 2023 19:57:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 643818218F;
	Wed,  6 Sep 2023 19:57:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 643818218F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 760591BF334
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Sep 2023 19:57:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5CC4E61062
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Sep 2023 19:57:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5CC4E61062
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E-HwG3VsrPNJ for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Sep 2023 19:57:17 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B4E8C607A1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Sep 2023 19:57:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B4E8C607A1
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="376070122"
X-IronPort-AV: E=Sophos;i="6.02,233,1688454000"; d="scan'208";a="376070122"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2023 12:57:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="915413434"
X-IronPort-AV: E=Sophos;i="6.02,233,1688454000"; d="scan'208";a="915413434"
Received: from nzandani-mobl.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.252.34.148])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2023 12:57:15 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  6 Sep 2023 13:57:02 -0600
Message-Id: <20230906195704.3651720-3-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230906195704.3651720-1-ahmed.zaki@intel.com>
References: <20230906195704.3651720-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694030237; x=1725566237;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iKr+xE5/2U5HY6zZrcqfyy4GngTAuhfy1gLhkoXGx7E=;
 b=PKW6IN45dI0XW1tZ6qtBj2IMdBmCoTKWIBQ41yvTUselhEiwtvvf/B7z
 npYcu4f8+RoH4hah7W9m2ub322s/JWWB8QXwUjxq6coKXh15WR23HzCah
 FjnsVZgf5L4zO7p2pPIoyhpomKhvYd1iZS4qHGwFiw3Z584//+z0lRX0X
 CLlOTpRjMtkaSolxd4SbTm1DbIGqb8ipxpImxCpGKsBYTPuGT8sZdm5Dg
 UXvtIVs2+bqL0hwfPznlom/aX6IL5dwXngw+GadTlYLBkNve9O4bKRtc8
 lMlryPXolAn1SSuN9HAIFfTQjrODWUIynaFLxOUOTvhI7lSaUgnZKST+e
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PKW6IN45
Subject: [Intel-wired-lan] [PATCH iwl-next v7 2/4] ice: Support FCS/CRC
 strip disable for VF
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
Cc: Haiyue Wang <haiyue.wang@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Haiyue Wang <haiyue.wang@intel.com>

To support CRC strip enable/disable functionality, VF needs the explicit
request VIRTCHNL_VF_OFFLOAD_CRC offload. Then according to crc_disable
flag of Rx queue configuration information to set up the queue context.

Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index b03426ac932b..c0c3e524c523 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -486,6 +486,9 @@ static int ice_vc_get_vf_res_msg(struct ice_vf *vf, u8 *msg)
 	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_REQ_QUEUES)
 		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_REQ_QUEUES;
 
+	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_CRC)
+		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_CRC;
+
 	if (vf->driver_caps & VIRTCHNL_VF_CAP_ADV_LINK_SPEED)
 		vfres->vf_cap_flags |= VIRTCHNL_VF_CAP_ADV_LINK_SPEED;
 
@@ -1666,6 +1669,18 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
 			vsi->rx_rings[i]->dma = qpi->rxq.dma_ring_addr;
 			vsi->rx_rings[i]->count = qpi->rxq.ring_len;
 
+			if (qpi->rxq.crc_disable &&
+			    !(vf->driver_caps & VIRTCHNL_VF_OFFLOAD_CRC)) {
+				goto error_param;
+			}
+
+			if (qpi->rxq.crc_disable)
+				vsi->rx_rings[q_idx]->flags |=
+					ICE_RX_FLAGS_CRC_STRIP_DIS;
+			else
+				vsi->rx_rings[q_idx]->flags &=
+					~ICE_RX_FLAGS_CRC_STRIP_DIS;
+
 			if (qpi->rxq.databuffer_size != 0 &&
 			    (qpi->rxq.databuffer_size > ((16 * 1024) - 128) ||
 			     qpi->rxq.databuffer_size < 1024))
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
