Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BD3655C0FC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Jun 2022 14:34:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AE40E60FEB;
	Tue, 28 Jun 2022 12:34:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AE40E60FEB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656419654;
	bh=PCOOlgbyDGz8QyYH7dWVJCTWqsonC/MFJCmnxYMs47E=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=7yySUEF0JM4iRNNASYn4kyI0mClIQA+ntTx1lH+KFdvdc4gAUFS4pS8rtAzyt8PAv
	 yt+4xid0aohAiWKFsd1wORBVaus9FpMRCJo3aHeI8K/noiqk6DOaoiUeL7cX3h7gLc
	 UC0V5ld36XrirkpJfve8G0rRJtspXwYVzyG8geKQ/jCUUG+d2h0ydY2avR0FQQHVHr
	 B07xmkB8wihuUeVXodip8q1fl0UdqGcs+FC/4lztn921rb2mukWu64lGhnYfBMDMcK
	 AMDxVcZimZ+7DMiJ3NmKwO5moax2xKkPowL5P1Yqio8Ho0AiH33NwYylTWalGkbiX4
	 DG52fPgFb6d5w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l-SISlhfXNJZ; Tue, 28 Jun 2022 12:34:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5176760F04;
	Tue, 28 Jun 2022 12:34:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5176760F04
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 027821BF3B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 12:34:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CFD5A82DE6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 12:34:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CFD5A82DE6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vPpFPu-f_-XH for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Jun 2022 12:34:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4F1D982C99
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4F1D982C99
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 12:34:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10391"; a="345723960"
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="345723960"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2022 05:34:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="565058386"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by orsmga006.jf.intel.com with ESMTP; 28 Jun 2022 05:34:02 -0700
From: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 28 Jun 2022 14:33:50 +0200
Message-Id: <20220628123350.677880-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656419644; x=1687955644;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dw77FSPyz+klouPHwlp8v+TJXRVD5xG7x1ylWVAONI8=;
 b=AXhmrp8KMe0qEKDUYv39Gz+OJrKU7KGxE6vB8t1q6yDtE2Mhx6MIVrvC
 H6+AqbbkIIr/r5OGiZ52OHMOC5xEkQwMyHrFwCqLQmppW3z/1kuTqdyuL
 9lC0kSLzOwA6ydTp3TOvtzp20ZGef2h8PIWmi22wYaN+hL25wbjoCCi6m
 5cyPDEIUsi+BmWBf+LBCpoXc5Jj802RvPDg9ZCr2BM3kcdKZBNWmCn8+Y
 Uy6o+n995X9Jfk+hti9ZLu+CTwZO0yNgm/qKFOrtZ+5fe0TWK2cNhK9Q3
 Ci+4g/TpluRrmXWD6hpDVtQ9XLTYz/dW1ykUsg1SJHq7PPiZxvpVMHvfj
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AXhmrp8K
Subject: [Intel-wired-lan] [PATCH net v2] ice: Fix max VLANs available for VF
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

Fixes: cc71de8fa133 ("ice: Add support for VIRTCHNL_VF_OFFLOAD_VLAN_V2")
Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
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
