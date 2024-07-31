Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DD11E943484
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Jul 2024 18:56:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8E37781BA9;
	Wed, 31 Jul 2024 16:56:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oYtekXzZqIwQ; Wed, 31 Jul 2024 16:56:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 91C1181DF8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722444967;
	bh=8IjK1PqbhEaV2z9XN46HBALxWh8f4QsHA4oSPtIHrhk=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=eCFjV/BoBqLcetkkO+WbtNgdzJe8g9yYqGN9v3rL0+zpW/niKi7IhO3TArlh5e2zR
	 OZg+f4iGxaTBCFKMMqqriQdBNvHqVNSKlYU/ZHmf7jPZ7aSJiz+80/zOXUZDaLPeuT
	 GxLQpo/PQS2LqV9RzpSrZaCKk3+a4KR+mUS42HXV/Q6aV4q9sJUOs2+N99yZhIc1oG
	 8nJnDkDoahYzGjq24OOOU+c2gVxjueZqtarPJKs4KgY1KC2Yahnlxj+mQpATaiMzfz
	 b0JEA2ujdpdqxxcW6V5GcpVRrI0kK1nIpkoBJjcFiAqhyuY4jCwewNXROh0lXwduN9
	 iN0PBgdsJftDA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 91C1181DF8;
	Wed, 31 Jul 2024 16:56:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 141EF1BF3D8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2024 16:56:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E180081A8E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2024 16:56:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3ISrAx2DGYZm for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Jul 2024 16:56:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3588C81BA9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3588C81BA9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3588C81BA9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2024 16:56:00 +0000 (UTC)
X-CSE-ConnectionGUID: WwM63YynRLq8h6w4DjldYg==
X-CSE-MsgGUID: 4GHwmc8+SO6LaAZRjO0WgA==
X-IronPort-AV: E=McAfee;i="6700,10204,11150"; a="12810049"
X-IronPort-AV: E=Sophos;i="6.09,251,1716274800"; d="scan'208";a="12810049"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2024 09:56:00 -0700
X-CSE-ConnectionGUID: fQRNLbrUR8uiyNLfsDHX7Q==
X-CSE-MsgGUID: VslmQq4eTGSggGJtsEv41A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,251,1716274800"; d="scan'208";a="59587077"
Received: from jekeller-desk.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.166.241.1])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2024 09:55:59 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 31 Jul 2024 09:55:55 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240731-filter-return-eexist-v1-1-5b03d444a423@intel.com>
X-B4-Tracking: v=1; b=H4sIAJpsqmYC/32NSw7CMAxEr1J5jVES+mXFPVAXpTjUUkmRE0pRl
 bsT5QAsR2/mzQ6ehMnDudhBaGXPi0tBHwoYp8E9CPmeMhhlStWYEi3PgQSFwlscEm3sAw6GSmt
 UZVV1gzR9CVnesvYK/JnRUYA+gSm1F/nmu1Vn/N+8atR4auradl1Hbasu7ALNx3F5Qh9j/AGN+
 K+MwQAAAA==
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, 
 Anthony Nguyen <anthony.l.nguyen@intel.com>
X-Mailer: b4 0.13.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722444960; x=1753980960;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:to:cc;
 bh=XwmR1J+2MQNJUZ71BMtzx8r8Dz/0Dan2jkdxEZd8uSM=;
 b=Mpi0KMZncPWKFqj8qHK4JIv9Zl1/kjOPFE2A9onvGNp8es4LRA89fsW1
 CxSxIqUuj9Wk1SpDgw+zlKXP9TyfrYqH/HgBoIkZ67tRKwk53EvXIbtR5
 Zg+NtFHP8OYd05euONuAspsHXuwPVgumOZLky9qrxNeRIoHbF3LwY7HPY
 3VMXVaQOIa3aJKf8S7vGc/QrklV9eJHlhEsLLv26GdSYdBlg6XC0xXQSm
 tu4W0t2Nii3rwNMeF+q2M8bjiDNMvU5SROOhgFflX6ivulfTIhOw9yOTv
 /vVKWJSEZLrWr3rcW1bYumXcC7gz7KLrkKlfdww2HWTnET0Kx5flu3WSx
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Mpi0KMZn
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: fix accounting for filters
 shared by multiple VSIs
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

When adding a switch filter (such as a MAC or VLAN filter), it is expected
that the driver will detect the case where the filter already exists, and
return -EEXIST. This is used by calling code such as ice_vc_add_mac_addr,
and ice_vsi_add_vlan to avoid incrementing the accounting fields such as
vsi->num_vlan or vf->num_mac.

This logic works correctly for the case where only a single VSI has added a
given switch filter.

When a second VSI adds the same switch filter, the driver converts the
existing filter from an ICE_FWD_TO_VSI filter into an ICE_FWD_TO_VSI_LIST
filter. This saves switch resources, by ensuring that multiple VSIs can
re-use the same filter.

The ice_add_update_vsi_list() function is responsible for doing this
conversion. When first converting a filter from the FWD_TO_VSI into
FWD_TO_VSI_LIST, it checks if the VSI being added is the same as the
existing rule's VSI. In such a case it returns -EEXIST.

However, when the switch rule has already been converted to a
FWD_TO_VSI_LIST, the logic is different. Adding a new VSI in this case just
requires extending the VSI list entry. The logic for checking if the rule
already exists in this case returns 0 instead of -EEXIST.

This breaks the accounting logic mentioned above, so the counters for how
many MAC and VLAN filters exist for a given VF or VSI no longer accurately
reflect the actual count. This breaks other code which relies on these
counts.

In typical usage this primarily affects such filters generally shared by
multiple VSIs such as VLAN 0, or broadcast and multicast MAC addresses.

Fix this by correctly reporting -EEXIST in the case of adding the same VSI
to a switch rule already converted to ICE_FWD_TO_VSI_LIST.

Fixes: 9daf8208dd4d ("ice: Add support for switch filter programming")
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
---
 drivers/net/ethernet/intel/ice/ice_switch.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index fe8847184cb1..0160f0bae8d6 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -3194,7 +3194,7 @@ ice_add_update_vsi_list(struct ice_hw *hw,
 
 		/* A rule already exists with the new VSI being added */
 		if (test_bit(vsi_handle, m_entry->vsi_list_info->vsi_map))
-			return 0;
+			return -EEXIST;
 
 		/* Update the previously created VSI list set with
 		 * the new VSI ID passed in

---
base-commit: 0bf50cead4c4710d9f704778c32ab8af47ddf070
change-id: 20240724-filter-return-eexist-a2e4f205f05b

Best regards,
-- 
Jacob Keller <jacob.e.keller@intel.com>

