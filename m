Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 85C7A8C042F
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 May 2024 20:10:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DCD40410C7;
	Wed,  8 May 2024 18:10:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G1TqRbjK5IdO; Wed,  8 May 2024 18:10:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ED6E2409F0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715191836;
	bh=G31GBWT1NM14oDzh2Po5ietehs7cxkBgv92Bv+++rUw=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Fznr1mL/6lTlTUNndRQ8mfy9UkEdaO+e8UgUuqkVcYcSj1RXxc7DR9N6IDfpk1+zI
	 vVQG6EW9zShJrIK3WwTzc8YRSV4rJpgPHiyeircyYujLILv2HJ0Qkzm0+uYoWNArfw
	 qEdjT9No3eLUzis6Gt3rzIe5FhjFSu5TvHJwza7R0C3ZrXE9MmVaZOS4DgYA99HhqH
	 oG6mDw6rO7Qg4tI9MiFwRZvaxuIDIM6+5s3ZFnrnG2JY/Jf+H3KK004jnhsc2z2nZ4
	 enKwDpp7VGUllR/+SjEubEmV46p4M05wRaYi7465FoVDvredzK3qOgRkV/L51/m6Az
	 IadDF1PJIr17w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id ED6E2409F0;
	Wed,  8 May 2024 18:10:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 945EA1BF3D0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 May 2024 18:10:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8014241B5A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 May 2024 18:10:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TyzIIiD5RA0W for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 May 2024 18:10:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B49524018D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B49524018D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B49524018D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 May 2024 18:10:32 +0000 (UTC)
X-CSE-ConnectionGUID: iKvLxfj0Twif3vgLlUbl6g==
X-CSE-MsgGUID: cR8DIwC6RkWGxpaz7i1b0g==
X-IronPort-AV: E=McAfee;i="6600,9927,11067"; a="14868900"
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="14868900"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 11:10:31 -0700
X-CSE-ConnectionGUID: SL7Adj73RPSmKvndyrc08A==
X-CSE-MsgGUID: +NH8cB9tTFatEoy76aJHiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="29067132"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.1])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 11:10:32 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 08 May 2024 11:10:28 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240508-e810-live-migration-jk-fix-vsi-vlan-counting-v1-1-0c070cfe2095@intel.com>
X-B4-Tracking: v=1; b=H4sIABPAO2YC/x2N0QrCMAwAf2Xk2UAXZhn+ivhQulijNZO2VmHs3
 w0+Hhx3G1QuwhVOwwaFu1RZ1WA8DBBvQROjLMZAjiZ3dDPyPDrM0hmfkkpo5uP9gVf5Yq+CPQf
 FuL61iSacHEW/kCcmD5Z8FTbxvzuDfDIqN7js+w+i/uQghwAAAA==
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
X-Mailer: b4 0.13.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715191832; x=1746727832;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:to:cc;
 bh=E7ErwQlySZq05LcJ+o/APT0SbtT7/gOu13yUMUUi2jE=;
 b=XTGVvWi9iSGwfeWiVIcQ5f8iouheTQK9CATAmdZ7US3ZACDyoeNfzE4g
 4avtF6KEJqSY4tEtiEbiTbnJjB11/QSmsEYc9L5coDZFFZhetbIz3bfnE
 28Y792XNkwXCa99syW3TXFJASIeMzigcYJ+GE4L+KMh6HDsiRJzejvmN5
 Ld5/uFrxiz29Ay9bIgEYPxICTjQulm9Q2tOXjEU1es/geKZBVFCzY8j5h
 JBR7CczPOAQLG9LgofT7UrzBqJuCXkxvEXxNulCJ240EpEqJEFv2oqO14
 hn3fDfMAhIFX96zehA7Ts79fkrPwGaTkXbX+xokwIL83XBO7zvgKSJLHn
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XTGVvWi9
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: fix accounting if a VLAN
 already exists
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
Cc: Jacob Keller <jacob.e.keller@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The ice_vsi_add_vlan() function is used to add a VLAN filter for the target
VSI. This function prepares a filter in the switch table for the given VSI.
If it succeeds, the vsi->num_vlan counter is incremented.

It is not considered an error to add a VLAN which already exists in the
switch table, so the function explicitly checks and ignores -EEXIST. The
vsi->num_vlan counter is still incremented.

This seems incorrect, as it means we can double-count in the case where the
same VLAN is added twice by the caller. The actual table will have one less
filter than the count.

The ice_vsi_del_vlan() function similarly checks and handles the -ENOENT
condition for when deleting a filter that doesn't exist. This flow only
decrements the vsi->num_vlan if it actually deleted a filter.

The vsi->num_vlan counter is used only in a few places, primarily related
to tracking the number of non-zero VLANs. If the vsi->num_vlans gets out of
sync, then ice_vsi_num_non_zero_vlans() will incorrectly report more VLANs
than are present, and ice_vsi_has_non_zero_vlans() could return true
potentially in cases where there are only VLAN 0 filters left.

Fix this by only incrementing the vsi->num_vlan in the case where we
actually added an entry, and not in the case where the entry already
existed.

Fixes: a1ffafb0b4a4 ("ice: Support configuring the device to Double VLAN Mode")
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c b/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c
index 2e9ad27cb9d1..6e8f2aab6080 100644
--- a/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c
@@ -45,14 +45,15 @@ int ice_vsi_add_vlan(struct ice_vsi *vsi, struct ice_vlan *vlan)
 		return -EINVAL;
 
 	err = ice_fltr_add_vlan(vsi, vlan);
-	if (err && err != -EEXIST) {
+	if (!err)
+		vsi->num_vlan++;
+	else if (err == -EEXIST)
+		err = 0;
+	else
 		dev_err(ice_pf_to_dev(vsi->back), "Failure Adding VLAN %d on VSI %i, status %d\n",
 			vlan->vid, vsi->vsi_num, err);
-		return err;
-	}
 
-	vsi->num_vlan++;
-	return 0;
+	return err;
 }
 
 /**

---
base-commit: 02754103e1f75761066bd45d467b41ab5ad725e5
change-id: 20240508-e810-live-migration-jk-fix-vsi-vlan-counting-402c6d262e26

Best regards,
-- 
Jacob Keller <jacob.e.keller@intel.com>

