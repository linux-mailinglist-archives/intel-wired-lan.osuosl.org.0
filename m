Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E06EA31346
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Feb 2025 18:42:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 304BB8127F;
	Tue, 11 Feb 2025 17:42:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MWgz8e7KJ3di; Tue, 11 Feb 2025 17:42:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CF87181194
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739295722;
	bh=pvIA8JzZ2FVJL6fkQ1MwiO0OZaWQ3/pgwXVe0qZjaIY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=DExXvoxHRUzCMzN0F1b5OkDATiVTsFpkmqhimy66fLFi6YUshuQ18XJ/Yj1P0llsK
	 +gwuV83WEn2UGHGEuFMXsSoPLDGasTiBAlGSJkfkLKvorcRihJ7Iyp7E5BuHpJ2apR
	 yS+a+Ky1dLSKq1x3/Vy45ONKjhjPJYHSLs8XzoY6J7wwskNGTxtz4yNU+VqMWtRSEK
	 EWwFpKW+l5/iw4q3FykezdFlXpQOMtpXS6nor1OZoMXP2JT2pNI21bDLVzJYTUgXzM
	 8MNkj5UmQ5VIeVqFJaSa4b8U/uG+cEloGMQwlh1g4c8jp4IookYkVYulOfmTRPm2B4
	 f4soAUp6pPltg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CF87181194;
	Tue, 11 Feb 2025 17:42:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4E86EC2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 17:42:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3BA4540320
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 17:42:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u8pqsKep7wHn for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Feb 2025 17:42:00 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 86DAD403AD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 86DAD403AD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 86DAD403AD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 17:41:57 +0000 (UTC)
X-CSE-ConnectionGUID: ns1m1fl0T3aaugfaUW3L4A==
X-CSE-MsgGUID: XPFaFAlYTHSAYZyS8/FMpA==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="43855615"
X-IronPort-AV: E=Sophos;i="6.13,278,1732608000"; d="scan'208";a="43855615"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 09:41:57 -0800
X-CSE-ConnectionGUID: B74FmaV7ROGjHOf0RGNfXQ==
X-CSE-MsgGUID: Yw46Zp9RSNqJV42cvRZ5lw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,278,1732608000"; d="scan'208";a="112538341"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa006.jf.intel.com with ESMTP; 11 Feb 2025 09:41:55 -0800
Received: from mystra-4.igk.intel.com (mystra-4.igk.intel.com [10.123.220.40])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 4E82932ECC;
 Tue, 11 Feb 2025 17:41:54 +0000 (GMT)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 11 Feb 2025 18:43:21 +0100
Message-ID: <20250211174322.603652-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.45.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739295719; x=1770831719;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/dJ4iWZvn1XrPQb3ucobZGFq3U6bK1FwH53od8so46w=;
 b=SGIg9H4Nelh578kq2qgUwg3GGIAFEYhs2isbDZHXz4UI6+lR0oAIzEqq
 E21kE8F8Hx1ZXo4afrxIA5NezvCGARNeCIk2xKNO9Np7gi75n+ntM+nk8
 0F6wnixE3KFGZw2Rf0sR1BUoin4TsbQhe8HE8pwa+mttdsqeuMLOUeTz4
 BGvQqN2iloWMKhwjHJlW8iF0aaxi2EUqMOxBEPkDgIxuCfyyzwxtzKHy/
 9ZD0P0R6J/q8DeiXMzzSs7O2tZlTJDWtMGGT0tJ/SNnwWkiq0fgn9Atx1
 FXxXYGz0GYpBpjIVQAxm2BmJGROsDFLL0UuGBKuKms4K5GXtuIM06E+wR
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SGIg9H4N
Subject: [Intel-wired-lan] [PATCH iwl-net 1/2] ice: Fix deinitializing VF in
 error path
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Cc: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>,
 netdev@vger.kernel.org, Marcin Szycik <marcin.szycik@linux.intel.com>,
 michal.swiatkowski@linux.intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

If ice_ena_vfs() fails after calling ice_create_vf_entries(), it frees
all VFs without removing them from snapshot PF-VF mailbox list, leading
to list corruption.

Reproducer:
  devlink dev eswitch set $PF1_PCI mode switchdev
  ip l s $PF1 up
  ip l s $PF1 promisc on
  sleep 1
  echo 1 > /sys/class/net/$PF1/device/sriov_numvfs
  sleep 1
  echo 1 > /sys/class/net/$PF1/device/sriov_numvfs

Trace (minimized):
  list_add corruption. next->prev should be prev (ffff8882e241c6f0), but was 0000000000000000. (next=ffff888455da1330).
  kernel BUG at lib/list_debug.c:29!
  RIP: 0010:__list_add_valid_or_report+0xa6/0x100
   ice_mbx_init_vf_info+0xa7/0x180 [ice]
   ice_initialize_vf_entry+0x1fa/0x250 [ice]
   ice_sriov_configure+0x8d7/0x1520 [ice]
   ? __percpu_ref_switch_mode+0x1b1/0x5d0
   ? __pfx_ice_sriov_configure+0x10/0x10 [ice]

Sometimes a KASAN report can be seen instead with a similar stack trace:
  BUG: KASAN: use-after-free in __list_add_valid_or_report+0xf1/0x100

VFs are added to this list in ice_mbx_init_vf_info(), but only removed
in ice_free_vfs(). Move the removing to ice_free_vf_entries(), which is
also being called in other places where VFs are being removed (including
ice_free_vfs() itself).

Fixes: 8cd8a6b17d27 ("ice: move VF overflow message count into struct ice_mbx_vf_info")
Reported-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
Closes: https://lore.kernel.org/intel-wired-lan/PH0PR11MB50138B635F2E5CEB7075325D961F2@PH0PR11MB5013.namprd11.prod.outlook.com
Reviewed-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_sriov.c          | 5 +----
 drivers/net/ethernet/intel/ice/ice_vf_lib.c         | 8 ++++++++
 drivers/net/ethernet/intel/ice/ice_vf_lib_private.h | 1 +
 3 files changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index b83f99c01d91..8aabf7749aa5 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -36,6 +36,7 @@ static void ice_free_vf_entries(struct ice_pf *pf)
 
 	hash_for_each_safe(vfs->table, bkt, tmp, vf, entry) {
 		hash_del_rcu(&vf->entry);
+		ice_deinitialize_vf_entry(vf);
 		ice_put_vf(vf);
 	}
 }
@@ -193,10 +194,6 @@ void ice_free_vfs(struct ice_pf *pf)
 			wr32(hw, GLGEN_VFLRSTAT(reg_idx), BIT(bit_idx));
 		}
 
-		/* clear malicious info since the VF is getting released */
-		if (!ice_is_feature_supported(pf, ICE_F_MBX_LIMIT))
-			list_del(&vf->mbx_info.list_entry);
-
 		mutex_unlock(&vf->cfg_lock);
 	}
 
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index c7c0c2f50c26..815ad0bfe832 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -1036,6 +1036,14 @@ void ice_initialize_vf_entry(struct ice_vf *vf)
 	mutex_init(&vf->cfg_lock);
 }
 
+void ice_deinitialize_vf_entry(struct ice_vf *vf)
+{
+	struct ice_pf *pf = vf->pf;
+
+	if (!ice_is_feature_supported(pf, ICE_F_MBX_LIMIT))
+		list_del(&vf->mbx_info.list_entry);
+}
+
 /**
  * ice_dis_vf_qs - Disable the VF queues
  * @vf: pointer to the VF structure
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib_private.h b/drivers/net/ethernet/intel/ice/ice_vf_lib_private.h
index 0c7e77c0a09f..5392b0404986 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib_private.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib_private.h
@@ -24,6 +24,7 @@
 #endif
 
 void ice_initialize_vf_entry(struct ice_vf *vf);
+void ice_deinitialize_vf_entry(struct ice_vf *vf);
 void ice_dis_vf_qs(struct ice_vf *vf);
 int ice_check_vf_init(struct ice_vf *vf);
 enum virtchnl_status_code ice_err_to_virt_err(int err);
-- 
2.45.0

