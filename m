Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E7F983C2CD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jan 2024 13:49:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B953D832EA;
	Thu, 25 Jan 2024 12:49:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B953D832EA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706186986;
	bh=OksPROaUvQkaJh1dljDcayAAYPAf3Iyccfa2bV8KDlI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tHZvxShy9yjYeRGNrFpqEY5jI9c/KVIHk4ECTorDM2w7xNadETW1cJL6aI2HAvPF6
	 hFg5Lg/EzqfHpeaeYuloA9j1D3e2MxS6uWaSd2lGx72gesytHhIU+QkKilXmLvmnaB
	 cPvfEY73A3rL5iDK/By+lqVc73qNidud2IKoAmhEKxJI4Ujenwnf+qzNFQZ0aBp9iB
	 yzqdV2ChbOLCt+Pg2ywtDVajrsC1Kzke234YjbKdeY0DQE7OYx6V2mevwGNgn9Xv/o
	 4axD4x9WZfMpYJ5fAtxXyiPSPh5aaIXaGQBxsfGvArad/d0gXyGy2C3eb7MOKb2iKd
	 LqFdBei6ANlzg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ohhO9LJrRU_t; Thu, 25 Jan 2024 12:49:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CCC3183298;
	Thu, 25 Jan 2024 12:49:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CCC3183298
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3262B1BF387
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 12:49:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 09D23400D1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 12:49:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 09D23400D1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4ESz80-En2XN for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jan 2024 12:49:23 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2C4FB40242
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 12:49:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2C4FB40242
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="399313541"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; d="scan'208";a="399313541"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2024 04:49:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="905956690"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; d="scan'208";a="905956690"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by fmsmga002.fm.intel.com with ESMTP; 25 Jan 2024 04:49:21 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Jan 2024 13:53:12 +0100
Message-ID: <20240125125314.852914-7-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240125125314.852914-1-michal.swiatkowski@linux.intel.com>
References: <20240125125314.852914-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706186963; x=1737722963;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PNyrbCjywjNlIXYg5ByVAotjsH2kxGncIfNEMqdut3Q=;
 b=HnqNFccUVEX4P7xTgRfG5kqETMjh6pKL5Pkfp4qRCoiNn9c1h/npv4Jo
 IJQcKRUBPaI0NUK/9dqjBBp/eUWHMCFhFvEa8R4uL2kDa6v/QvQfh5Kwj
 +jw9YcXO3U+GrlNNjMuf3J5JSLVgeFwJRrpgRNP6n8n0RHJaiwxNDg55g
 3icwttwMRHG5gGoDTmzBWhjpHyAWPBYWz27uZ3I4wx3VG2sywQhfhn6VI
 sAQGg64czlslAF6/rs38Jw18yKpnztLv4XvvR3zCc6XQzkHp8v3oXeZiS
 GyNF6v+kPA1CxZBibgH35vGJPk5/2M71iuMj9ny+6cV49G6TeN/xrBh8B
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HnqNFccU
Subject: [Intel-wired-lan] [iwl-next v1 6/8] ice: change repr::id values
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
Cc: wojciech.drewek@intel.com, marcin.szycik@intel.com,
 Marcin Szycik <marcin.szycik@linux.intel.com>, przemyslaw.kitszel@intel.com,
 sridhar.samudrala@intel.com, netdev@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Instead of getting repr::id from xa_alloc() value, set it to the
src_vsi::num_vsi value. It is unique for each PR.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_eswitch.c | 5 ++---
 drivers/net/ethernet/intel/ice/ice_repr.c    | 1 +
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index 76fa114f22c9..5eba8dec9f94 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -319,7 +319,7 @@ ice_eswitch_mode_set(struct devlink *devlink, u16 mode,
 
 		dev_info(ice_pf_to_dev(pf), "PF %d changed eswitch mode to switchdev",
 			 pf->hw.pf_id);
-		xa_init_flags(&pf->eswitch.reprs, XA_FLAGS_ALLOC);
+		xa_init(&pf->eswitch.reprs);
 		NL_SET_ERR_MSG_MOD(extack, "Changed eswitch mode to switchdev");
 		break;
 	}
@@ -426,8 +426,7 @@ ice_eswitch_attach(struct ice_pf *pf, struct ice_vf *vf)
 	if (err)
 		goto err_setup_repr;
 
-	err = xa_alloc(&pf->eswitch.reprs, &repr->id, repr,
-		       XA_LIMIT(1, INT_MAX), GFP_KERNEL);
+	err = xa_insert(&pf->eswitch.reprs, repr->id, repr, GFP_KERNEL);
 	if (err)
 		goto err_xa_alloc;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_repr.c b/drivers/net/ethernet/intel/ice/ice_repr.c
index a5c24da31b88..b4fb74271811 100644
--- a/drivers/net/ethernet/intel/ice/ice_repr.c
+++ b/drivers/net/ethernet/intel/ice/ice_repr.c
@@ -345,6 +345,7 @@ ice_repr_add(struct ice_pf *pf, struct ice_vsi *src_vsi, const u8 *parent_mac)
 	}
 
 	repr->src_vsi = src_vsi;
+	repr->id = src_vsi->vsi_num;
 	np = netdev_priv(repr->netdev);
 	np->repr = repr;
 
-- 
2.42.0

