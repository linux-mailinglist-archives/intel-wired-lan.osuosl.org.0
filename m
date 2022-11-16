Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B9EC62C45B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Nov 2022 17:27:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6997E60FB2;
	Wed, 16 Nov 2022 16:27:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6997E60FB2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668616026;
	bh=B87sFsAHqLnGUdzBllDWkj7rrrFgKfYQdiGquepb2M0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=61doIAAUlUq4yA/V7A1xv8mS21OFy62pjSRKEfcH2ZnZigjgDqVrcERSuPNYO5fRe
	 /iTbAEBK21+CKKjeuiTS01FCXiqVnMLs4whfWs0DGey2Pp8yaGAHoF6MktTp8dBuNz
	 wOwzeUGMygMnwbcToIzboVe2t2LH+OEehgqoL6PDakuj7b10ybzCb4zUQNuYnQwGTo
	 RsZbgNjfmxDg4mPGBfsFCj53U1rLpP2UBTWvmWj2eZr47Jcx7MlseClOi/FOoqDfJw
	 2MoCqjnLJrLd/SFpD2JW9FzyOUhIVHjPzhaM4Il/piLfpB8PWZmis5ZFhNGsfbzS/G
	 7POjSsyjiQ0ug==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lBiivAH69Fvu; Wed, 16 Nov 2022 16:27:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B777F60FAE;
	Wed, 16 Nov 2022 16:27:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B777F60FAE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A22B81BF32E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 11:51:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7BCE140B91
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 11:51:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7BCE140B91
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LgBHIbBI3mYE for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Nov 2022 11:51:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 52DE24019B
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 52DE24019B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 11:51:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10532"; a="374657530"
X-IronPort-AV: E=Sophos;i="5.96,167,1665471600"; d="scan'208";a="374657530"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2022 03:51:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10532"; a="702842883"
X-IronPort-AV: E=Sophos;i="5.96,167,1665471600"; d="scan'208";a="702842883"
Received: from unknown (HELO fedora.igk.intel.com) ([10.123.220.50])
 by fmsmga008.fm.intel.com with ESMTP; 16 Nov 2022 03:51:23 -0800
From: Kalyan Kodamagula <kalyan.kodamagula@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 15 Nov 2022 23:47:56 -0500
Message-Id: <20221116044756.1021102-1-kalyan.kodamagula@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 16 Nov 2022 16:26:52 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668599500; x=1700135500;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=F2uU94xN0lM1aIUG0rOyzQGL0ipqE5nIIHtn6kcar4k=;
 b=eJDRW5aVEPpjTkN0vTozCGGTE+olbUsPXQjZxFiWAuB0VyEWh1J4PTjC
 c/aU/riDhJlaGSck+RNwJxUn7xDjPe9Cz/yn9691XYt9xLu2cJqivflOk
 x3gfxRL/Np1yQCcMbjDzTxKckM+szjORaEb9Nmz+DEGOvmeYjZGKi03eG
 UaVEk7ln0RTdQprWdfxhuCN8AHdgv7Z+/QmpAtMl5pXgUZiCTwxj7d9Qr
 KyqNlIZI8JIg3AG/l+yA+JcqXograM8KVHxdhxSH+oViVoM7yNBh3JTVo
 ZZmvzB0+m4NSoCxZCE1tWJM9dWrPDohhoQsWm+Tk4VE8ic7HCnJsDcuES
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eJDRW5aV
Subject: [Intel-wired-lan] [PATCH net] ice: Add more usage of existing
 function ice_get_vf_vsi(vf)
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
Cc: Kalyan Kodamagula <kalyan.kodamagula@intel.com>,
 Brett Creeley <brett.creeley@intel.com>
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
