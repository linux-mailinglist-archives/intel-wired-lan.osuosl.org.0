Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B108858858
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Feb 2024 23:06:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 473AD4218B;
	Fri, 16 Feb 2024 22:06:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZdBZ2MhWbT1D; Fri, 16 Feb 2024 22:06:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6040542182
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708121212;
	bh=ogKiw2uSZaLmhcXwQhXarOIK0R8BX1sUvrg5URsrClk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sOvtH2tYTDPn+72fSdWzXrP4rJBqBMRwhHXk7jXi7G1T1zZthbpCsb+KD0/oUHRsd
	 czryEkZDADr95FCJQ728VTdu1uV6VqvxSAqVhg7DQggesQgHSKEGsQrTJ3BDo+b5aI
	 HpQuxXVw1s2lPO/uUV/hHz2f8vTzcd8vBdo7EkmCUVozCWJ+PbRe9Zg+mdeqn4JZlm
	 P3aE1VSLt2WgGT9sFxsmjq3+US3kdg9Lap4nKqPloldy+XXgK1d/Md2xfW44kyKo6f
	 CpuZBML6KBjmZx7BjjIbR7Yg8sbqC0ExQRAgAXgIEkIYwePt/aRPbLaq31zB4KAKBJ
	 mTOQ6ROODRnTQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6040542182;
	Fri, 16 Feb 2024 22:06:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 59F5B1BF25F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Feb 2024 22:06:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C2679840B9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Feb 2024 22:06:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8nqWdi8L3v_I for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Feb 2024 22:06:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2283F840B3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2283F840B3
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2283F840B3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Feb 2024 22:06:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10986"; a="2134199"
X-IronPort-AV: E=Sophos;i="6.06,165,1705392000"; 
   d="scan'208";a="2134199"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2024 14:06:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,165,1705392000"; 
   d="scan'208";a="3983848"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.1])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2024 14:06:43 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Fri, 16 Feb 2024 14:06:36 -0800
Message-ID: <20240216220638.2558451-3-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20240216220638.2558451-1-jacob.e.keller@intel.com>
References: <20240216220638.2558451-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708121205; x=1739657205;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gM07+SsvqrhVQ9LFzHwPfluPwRBgYQoO8bHDd6kp0yg=;
 b=IJ94FsK3hsuNManDPlvCn7/8xW/KQqBspipIyxw4/0954zubYCMJ/Q38
 eSQemiHTgvabkvbjRuWPI6AMQYAxMCHitoQ2dAzDCNnMScEcXVyWoy8Cf
 DpKDT1AbTEr/CIMl/YHGa1m6XYttzAn1d3Jt1Oanvlzrl3LwhP7Tdg+vc
 uU8oEKhXhXt9hf2Vmt1OWqT6bPxEOxOgCSDSDodoRZhhHpUGClD4APc64
 bjRumE5b5LzceVDi4CDwZYpHuj6lw0jDAiMDH56T0n0lllDN77QqUI2uX
 nLtpZa4VAyyTlQLlox951fDz9OaXBSYC2XC14eYi8qWrf9lSVaxwVEac9
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IJ94FsK3
Subject: [Intel-wired-lan] [PATCH iwl-next 2/4] ice: remove unnecessary
 duplicate checks for VF VSI ID
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
Cc: Jacob Keller <jacob.e.keller@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The ice_vc_fdir_param_check() function validates that the VSI ID of the
virtchnl flow director command matches the VSI number of the VF. This is
already checked by the call to ice_vc_isvalid_vsi_id() immediately
following this.

This check is unnecessary since ice_vc_isvalid_vsi_id() already confirms
this by checking that the VSI ID can locate the VSI associated with the VF
structure.

Furthermore, a following change is going to refactor the ice driver to
report VSI IDs using a relative index for each VF instead of reporting the
PF VSI number. This additional check would break that logic since it
enforces that the VSI ID matches the VSI number.

Since this check duplicates  the logic in ice_vc_isvalid_vsi_id() and gets
in the way of refactoring that logic, remove it.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
index f001553e1a1a..8e4ff3af86c6 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
@@ -94,9 +94,6 @@ ice_vc_fdir_param_check(struct ice_vf *vf, u16 vsi_id)
 	if (!(vf->driver_caps & VIRTCHNL_VF_OFFLOAD_FDIR_PF))
 		return -EINVAL;
 
-	if (vsi_id != vf->lan_vsi_num)
-		return -EINVAL;
-
 	if (!ice_vc_isvalid_vsi_id(vf, vsi_id))
 		return -EINVAL;
 
-- 
2.41.0

