Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6861563F009
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Dec 2022 12:59:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 94A9160E11;
	Thu,  1 Dec 2022 11:59:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 94A9160E11
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669895950;
	bh=ZG6eXdjt72/d2SE3HBxlY+Ns1nkdFOiPNI0yN/pZn5U=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=uKBPkzJWFwD5c6mDsEJVoJYSHZv6PcTP67sez6YgajPPhSvM70iDudqCgI5QzsqH/
	 rvvFCSBCzjRlgY19LM0AeJ6QBEg48s5CJ+0JeqjVRZP9xqLeOprP1pbRn8Xho9Tu5n
	 Pf3WOitHI2RhthzbyxvLSvjVClzXOjWCu5NjrbdSty5Y1BYhs4raHPJlNSDAkaEq2n
	 eO8Pwn705HHUahTAAffhqhVomjFvKwmAqQBSNam62+IpB/jkRx2M9epITVUxWKKeBq
	 +pKg1i4dp77+iTIO7bnHdNDxaE+nNd9gWbXqZEYEO8qew5R+AMfYMNMQniN78Xap/2
	 rSIizP5ydhhlw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0ab219kOGN90; Thu,  1 Dec 2022 11:59:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 943D060E02;
	Thu,  1 Dec 2022 11:59:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 943D060E02
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8A1BB1BF267
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 11:59:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 65084405C4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 11:59:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 65084405C4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wYnC2Z4GgZ-a for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Dec 2022 11:59:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 926EE401B1
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 926EE401B1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 11:59:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="342591228"
X-IronPort-AV: E=Sophos;i="5.96,209,1665471600"; d="scan'208";a="342591228"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2022 03:59:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="733392004"
X-IronPort-AV: E=Sophos;i="5.96,209,1665471600"; d="scan'208";a="733392004"
Received: from unknown (HELO fedora.igk.intel.com) ([10.123.220.50])
 by FMSMGA003.fm.intel.com with ESMTP; 01 Dec 2022 03:59:02 -0800
From: Kalyan Kodamagula <kalyan.kodamagula@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  1 Dec 2022 12:58:59 +0100
Message-Id: <20221201115859.1175650-1-kalyan.kodamagula@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669895943; x=1701431943;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rtXUVv8XDZKYKGXT3BPzfuP2j7fIBQVnJFHefpPFLMg=;
 b=SPg2UtUtYfTSLICOYqm9fOYM9fv1bQVmKAST2nPNK/Qct4MxWTiWVtJ8
 jh5IBnsq145Nr+J8cnpYtAqb68v9HNy+6TfSbWHep29v8MXcVA7lQ4GUp
 p3V2Vnt8dlRV9G1oFTDK5cdVx0nR9myUcobe73NSPFJSje2nVE9YA3k7d
 NjKyRIXE/ocEsrjunM6MATlAGz82glxDC6OuvgXd0UKZqqBrrNCjPOVtD
 6bXyfQf4vjctQBOjdPsrZHZhhn0WTQW9Q+r6IapnxKTwew3L3q0LJpmi0
 Q7gnme1UtgV8JV5kf3b0muMXTlQvdvd1mLr5clf+exB3Rda7tmpL95+YA
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SPg2UtUt
Subject: [Intel-wired-lan] [PATCH net-next v4] ice: Add more usage of
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

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
Signed-off-by: Kalyan Kodamagula <kalyan.kodamagula@intel.com>

---
V3->V4: Added change log.
V2->V3: Removed Fixes: tag, Since change is refactor and not a bug fix.
V1->V2: Renaming from net to net-next in header, as this is not a fix.
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
