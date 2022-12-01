Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D0FC63EEAC
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Dec 2022 12:03:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6CA5861084;
	Thu,  1 Dec 2022 11:03:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6CA5861084
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669892596;
	bh=48bJeHbB6Ff0GuUrj8x47d5I8PUhDvZoaR2wFxfTF8Q=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=E52/dlJvahyYd6XKQ8mCQiDIt26fq4Ya/0+jL+depBkjWPfXgor63gQWHTXx7sJff
	 ObY1IMKMC2XRt32gKhExVmJlbsBVaW9vy5lv84yDWN/839UKMNpFl5QW88GepabUDH
	 sZ1f5AW9rFCy0KU4goO3X/wpfD1YxuwXVGQpYTvqkRCoPkXcS8xT+60e0294rwvVkR
	 8a2uAR64q7IvEGwQMiActGr5ZaQHOV9EFRi+UJwmI3QITNDezaL0bZW/tMXcOfUSxa
	 W/krsZ7DHE7T/g8gcZiMXh62ACnE9p/br02mgv/XquWiv2UEMi8LtEasnYNPOYL2Be
	 O6V5fY4x1OZzQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oPZFCCbIqwXf; Thu,  1 Dec 2022 11:03:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 64F3E6107A;
	Thu,  1 Dec 2022 11:03:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 64F3E6107A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 000081BF3DC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 11:03:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C1D6081FDB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 11:03:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C1D6081FDB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yFwtl4Lxma6P for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Dec 2022 11:03:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BDC3E81FCC
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BDC3E81FCC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 11:03:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="299022587"
X-IronPort-AV: E=Sophos;i="5.96,209,1665471600"; d="scan'208";a="299022587"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2022 03:03:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="750756637"
X-IronPort-AV: E=Sophos;i="5.96,209,1665471600"; d="scan'208";a="750756637"
Received: from unknown (HELO fedora.igk.intel.com) ([10.123.220.50])
 by fmsmga002.fm.intel.com with ESMTP; 01 Dec 2022 03:03:06 -0800
From: Kalyan Kodamagula <kalyan.kodamagula@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  1 Dec 2022 12:03:01 +0100
Message-Id: <20221201110301.1175393-1-kalyan.kodamagula@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669892588; x=1701428588;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=s3bZfG2XtlICNYZpSuRqTInEAaWDbu40JM2N0fUWBq8=;
 b=lJkHNnePLXJZ/mUIt8woLDb19bshv2iScb5A1l+6BKKSo5eeVtGtBHQ0
 AEJ4VQ05NG7XegovfdpJELtzCluQUc7QwwkIDdikukkeF/a0BObU/OBag
 lyKK3cqKiomCjipqD9WgBa6y5M72laIXMH/WGYasop3SzoF1UbZQEl6FY
 yCHcopL/XKsHGwRwwsiXA2GBuQkwkXH2tnOWewG7aYNlJE6qB7CTbpzyg
 GsbRZCEUwKwKf0Lt2OSdr80dFk67qzG+d6FDdDghCXvNkru1dn4No9TYo
 16FGVQ6ZoVqLlm+vB1ZC8QX26/9TC2i/VPEfjdtUWtYJv49OAes6ue7ee
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lJkHNneP
Subject: [Intel-wired-lan] [PATCH net-next v3] ice: Add more usage of
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
