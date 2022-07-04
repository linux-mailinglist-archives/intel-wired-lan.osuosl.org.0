Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 539DC5657A5
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Jul 2022 15:46:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B9E5E60EAE;
	Mon,  4 Jul 2022 13:46:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B9E5E60EAE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656942395;
	bh=Y6Vm+lcusZ1A5Wzt2Oc95aCIuloNJFhyWdR5jdcNipo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=PHsvFcLI5aUufdk6io84KJYxnhkuj99AZpZL60L3bQ+XvQDoJ7HL/UwyyhrRhiqIn
	 qO9EmPP6NvaMJMrwRBT6saGnZGHe9vb5CMmSjknJHAQbvo0qWCuSOE8Cnm4czjGYwu
	 /UObjIPi7COIyHayeAztYmVEpWK+TFTix8o1qV/diNfl+vyksETPPEOlNk4JXDyH9g
	 Sb8Ge/Oi76XnKZuUBaQgQ9jQyRXuRBPIIT5HAI0Q/1MXPUspi5zQwj9sZ8hB2FfONE
	 zsFKbDcHCf8i783WmvjZmknnH/ue4FJUk6HzS8JJlHdVUnVF+Fbgf2Zzdgcr8sY0QO
	 WVsk5MJvJR3pQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HJLORSwjFhIR; Mon,  4 Jul 2022 13:46:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A7DAE60E6F;
	Mon,  4 Jul 2022 13:46:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A7DAE60E6F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CA6A01BF35F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Jul 2022 13:46:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A3767401F2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Jul 2022 13:46:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A3767401F2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l7WultjoM8Ay for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Jul 2022 13:46:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 14E7F40158
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 14E7F40158
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Jul 2022 13:46:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10397"; a="262925583"
X-IronPort-AV: E=Sophos;i="5.92,243,1650956400"; d="scan'208";a="262925583"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2022 06:46:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,243,1650956400"; d="scan'208";a="695335363"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by fmsmga002.fm.intel.com with ESMTP; 04 Jul 2022 06:46:27 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  4 Jul 2022 15:46:12 +0200
Message-Id: <20220704134612.1362297-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656942389; x=1688478389;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=VGSy3bKCr540x4LWC9x3uPAlBZLR25coTow2x1ChsuI=;
 b=Wxujtxh3xtK/dESskFIIpLp48q5L+INqTO82fiMBJY86IAvUiEs2VGUM
 k8HKWiKRTPpnJFb5NlcKnSKkNLzfvg/1SpTGrA+x5qFHtrG33Qjr+Q2cO
 U4zr/HSyBE9p3jUWe5Rqto5mP54S+L8es3VQEib34OoYSEhZMqpKhtp68
 2PAiKdAN7MUmdQbKUFaMBfPhmey/BEUFk4KqquIj1fwjaUXu/0WvYKmrg
 DHHlOyjJUaSHMbcFoC5xrDmxuhUjgsvsqmQQUTyGMucAkaQOENUEnorMy
 1OgfnN1ZlHWQjN/mYo2dlL3K6RirkRxkFGgvNJ3yCng+33rohcsZwb8/E
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Wxujtxh3
Subject: [Intel-wired-lan] [PATCH net v3] ice: Fix max VLANs available for VF
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

From: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>

Legacy VLAN implementation allows for untrusted VF to have 8 VLAN
filters, not counting VLAN 0 filters. Current VLAN_V2 implementation
lowers available filters for VF, by counting in  VLAN 0 filter for both
TPIDs.
Fix this by counting only non zero VLAN filters.
Without this patch, untrusted VF would not be able to access 8 VLAN
filters.

Fixes: cc71de8fa133 ("ice: Add support for VIRTCHNL_VF_OFFLOAD_VLAN_V2")
Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 v3: Fixed git settings and commit author
 v2: Changed fixes tag
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
