Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E5D7C63D021
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Nov 2022 09:08:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 164D5408A0;
	Wed, 30 Nov 2022 08:08:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 164D5408A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669795724;
	bh=B87sFsAHqLnGUdzBllDWkj7rrrFgKfYQdiGquepb2M0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=o7syitgeW3l7INSVWuKw9mvBrXSvkr1PXIZhYRUCCylfsv5t20C0QlHcpn40EhbNZ
	 Qmly7WKbBgP70BddCdSNLTzm0GGtAS7LflhktmTeyz12G/SBHVvRSFHUv4IH4AUFAW
	 3R5pHNr5SxMzzoMCpa7mZLL21OX2m1dLkstJ0+kIZhKanbLebAqU7t4u4LKBS8Rvdx
	 p2tVccmg7X+EiK+8Pr3+j+/WaR92gFkpZ8CzPYzGPOfuTMEPzopFhumd/2FMlMOMDU
	 olYxBjxeXhuO7EW8j6YPdPftHd3AE1J64gjLVhEaALmdQ0oYbSil/WfvB1fwD236go
	 W3G29MUYfDJRQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SU0hDEIyaPa2; Wed, 30 Nov 2022 08:08:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D488240554;
	Wed, 30 Nov 2022 08:08:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D488240554
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7DC141BF4DA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Nov 2022 08:08:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5776380BAF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Nov 2022 08:08:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5776380BAF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UH3d6foN7-b5 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Nov 2022 08:08:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 90D8680BA5
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 90D8680BA5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Nov 2022 08:08:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="295696882"
X-IronPort-AV: E=Sophos;i="5.96,205,1665471600"; d="scan'208";a="295696882"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 00:08:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="818540599"
X-IronPort-AV: E=Sophos;i="5.96,205,1665471600"; d="scan'208";a="818540599"
Received: from unknown (HELO fedora.igk.intel.com) ([10.123.220.50])
 by orsmga005.jf.intel.com with ESMTP; 30 Nov 2022 00:08:31 -0800
From: Kalyan Kodamagula <kalyan.kodamagula@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 30 Nov 2022 09:08:26 +0100
Message-Id: <20221130080826.1147409-1-kalyan.kodamagula@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669795717; x=1701331717;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=F2uU94xN0lM1aIUG0rOyzQGL0ipqE5nIIHtn6kcar4k=;
 b=lgckHerO9yJMh9CCQNFKO3nLkO4kgdGCaqKQJsy98C2kqel655lEy2Kf
 BVHCiUKhbtusanvk51GUSV8BY3T7S8KvUSJHF+GysNoq4WdTXhfgUPUZx
 kotdUjO1HisRpy8uuTqK6Yg9qTKtNsfb7jCw2LUZPaszBQaFuLsg/Ggjq
 65RU7Sxw107JQg+KsYqUBleae3sH4CuvOrti1XG56JAHFgUE26BZJGfua
 ef/mGJPUm4TfFsEatmtvaDj5IQhtEDj5a/nUYV8joQDXIbN55FkOuzAyY
 iRWROXBciPE80Y4iOGGGvC+ai9ExozOts5W+cP+RDFclgjENu1sZZpoDq
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lgckHerO
Subject: [Intel-wired-lan] [PATCH net-next v2] ice: Add more usage of
 existing function ice_get_vf_vsi(vf)
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
Cc: Brett Creeley <brett.creeley@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Brett Creeley <brett.creeley@intel.com>

Extend the usage of function ice_get_vf_vsi(vf)
in multiple places instead of VF's VSI by using a long string
of dereferences (i.e. vf->pf->vsi[vf->lan_vsi_idx]).

Fixes: c5afbe99b778c ("ice: Add helper function to get the VF's VSIq")
Signed-off-by: Brett Creeley <brett.creeley@intel.com>
Signed-off-by: Kalyan Kodamagula <kalyan.kodamagula@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
index c6a58343d81d..e6ef6b303222 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
@@ -113,7 +113,7 @@ ice_vc_fdir_param_check(struct ice_vf *vf, u16 vsi_id)
 	if (!ice_vc_isvalid_vsi_id(vf, vsi_id))
 		return -EINVAL;
 
-	if (!pf->vsi[vf->lan_vsi_idx])
+	if (!ice_get_vf_vsi(vf))
 		return -EINVAL;
 
 	return 0;
@@ -494,7 +494,7 @@ ice_vc_fdir_rem_prof(struct ice_vf *vf, enum ice_fltr_ptype flow, int tun)
 
 	vf_prof = fdir->fdir_prof[flow];
 
-	vf_vsi = pf->vsi[vf->lan_vsi_idx];
+	vf_vsi = ice_get_vf_vsi(vf);
 	if (!vf_vsi) {
 		dev_dbg(dev, "NULL vf %d vsi pointer\n", vf->vf_id);
 		return;
@@ -572,7 +572,7 @@ ice_vc_fdir_write_flow_prof(struct ice_vf *vf, enum ice_fltr_ptype flow,
 	pf = vf->pf;
 	dev = ice_pf_to_dev(pf);
 	hw = &pf->hw;
-	vf_vsi = pf->vsi[vf->lan_vsi_idx];
+	vf_vsi = ice_get_vf_vsi(vf);
 	if (!vf_vsi)
 		return -EINVAL;
 
@@ -1205,7 +1205,7 @@ static int ice_vc_fdir_write_fltr(struct ice_vf *vf,
 	pf = vf->pf;
 	dev = ice_pf_to_dev(pf);
 	hw = &pf->hw;
-	vsi = pf->vsi[vf->lan_vsi_idx];
+	vsi = ice_get_vf_vsi(vf);
 	if (!vsi) {
 		dev_dbg(dev, "Invalid vsi for VF %d\n", vf->vf_id);
 		return -EINVAL;
-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
