Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 15F875769E6
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 Jul 2022 00:30:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 21E2942669;
	Fri, 15 Jul 2022 22:30:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 21E2942669
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657924241;
	bh=EOLui7W0Oc8YS06GNz1uq0TyZi2yOyrek8rHth44T0s=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=iHbSXpQS7mHY3dUHyhbLba4EjvgMEyHDu+MnIqYPOvmopuj+kwDUp7e5PO2f85PhX
	 NZ6hJz3ryO3mCYtgJA5diTi6himCAyesEfg2ziJAQNWc5+fJf5Vjm7vCmwJicoMpas
	 JDggEl9bP2PBOuRMEb3K4A6JGKICtnfteBOTTnE+yc+/KzIqF9LE9BCb8fPV86CvsK
	 c7e+egkWIq6NaPAtAFNSarrb+HFqkVx8vxnYN7jPj6/RCI1Gd3oeGQc7TwI9+FRuWP
	 q5xFNrQRcGL0qU54J3jZlxAY3wZmtIYw8EfcWdhM+03o0e1kF0DfRmD5VBUHzp3sZ5
	 sB/QBMNs7uuwQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0tCFzRtFN5wO; Fri, 15 Jul 2022 22:30:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D7B8942626;
	Fri, 15 Jul 2022 22:30:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D7B8942626
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D8C621BF263
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Jul 2022 22:30:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B13664262F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Jul 2022 22:30:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B13664262F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9qZwopFq6Fqm for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Jul 2022 22:30:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BBFCA42626
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BBFCA42626
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Jul 2022 22:30:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10409"; a="286649094"
X-IronPort-AV: E=Sophos;i="5.92,275,1650956400"; d="scan'208";a="286649094"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2022 15:30:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,275,1650956400"; d="scan'208";a="699371792"
Received: from unknown (HELO fedora.jf.intel.com) ([10.166.232.13])
 by fmsmga002.fm.intel.com with ESMTP; 15 Jul 2022 15:30:31 -0700
From: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 15 Jul 2022 18:27:07 -0400
Message-Id: <20220715222707.44312-1-benjamin.mikailenko@intel.com>
X-Mailer: git-send-email 2.34.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657924232; x=1689460232;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Qjbx62hLpaiJYKmYM4xsege/+kqe1ap/sQP933gxbPU=;
 b=V9DQbi9Rl6mIWNbRQve+3RspR3O3ARTfEflLzwr/VpmsAowBts4S7R1c
 A41uUVSLIbjS9GZAeEOMcfv8Q4nfJFNFIEeHLRwGBfHwLWdMT8ZCesZ5S
 RfvyKf9P+i4L4bMUy+PS/5160Ae6OBS3yeu/cU4FWn03n4ec8Xx9rYbMa
 3U54s8heBBAarbBHzVA6Wc2RVDM/FLXmPK2KeGvS9xdufdlTRbY6LKNVk
 b0LfyjtQSFZFyG8ESbNqH52fxa4SlCU6aI5009xZYcI5raTZeVuUxA3wk
 EgiwncADkodm7ff5OOwTRgVchk9BQJCxmVs2wxguDU2RcathkHG2HH/OG
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=V9DQbi9R
Subject: [Intel-wired-lan] [PATCH net v1] ice: Fix VSI rebuild WARN_ON check
 for VF
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
Cc: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In commit b03d519d3460 ("ice: store VF pointer instead of VF ID")
WARN_ON checks were added to validate the vsi->vf pointer and
catch programming errors. However, one check to vsi->vf was missed.
This caused a call trace when resetting VFs.

Fix ice_vsi_rebuild by encompassing VF pointer in WARN_ON check.

Fixes: b03d519d3460 ("ice: store VF pointer instead of VF ID")
Signed-off-by: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index a6c4be5e5566..c67144952f94 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -3181,7 +3181,7 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi)
 
 	pf = vsi->back;
 	vtype = vsi->type;
-	if (WARN_ON(vtype == ICE_VSI_VF) && !vsi->vf)
+	if (WARN_ON(vtype == ICE_VSI_VF && !vsi->vf))
 		return -EINVAL;
 
 	ice_vsi_init_vlan_ops(vsi);
-- 
2.34.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
