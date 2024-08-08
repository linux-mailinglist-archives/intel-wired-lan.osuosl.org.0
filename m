Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6537E94B7A0
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Aug 2024 09:20:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0CE858188D;
	Thu,  8 Aug 2024 07:20:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4Mxwzb0U_kBi; Thu,  8 Aug 2024 07:20:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5595481858
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723101647;
	bh=kjSrqHVsw50ial18cYrPWHYHgVqUmeTGjn5pAcNByTA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ydyoJaRBGVxHSpmlR7gwfg8KCT+Nlse3PY38deuYsFH/rIeJ78/norjVQJzL8oH+p
	 2nA2n7y6ed1b0PoONOnuWXDcW/PcmV5abYT4OzMZfU0BSDaUkrabruyXw/r//RFRGI
	 sL6y7QiQGYFm1HftUlO9v0He2RRaz3Ga9Ypu89GFJhq+Po1f4yUsFA5ixB2KkWJG+N
	 6mobWFVH5IC8/I3fNIVU2DtbpeNhgMsNK8Kstsaf/qaQdDvsrGtbAQSPKemXL9Xak9
	 wsAN33HCD+h6Hnn66JY0ufgWpS/VXV5r5cSdYznU804OniTd9UurBueag0hMEKYMf4
	 Mq6emvYEMi8IQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5595481858;
	Thu,  8 Aug 2024 07:20:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 162AE1BF369
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 07:20:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 00635607F3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 07:20:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ednNsyXj6ucq for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Aug 2024 07:20:43 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 49A6F60772
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 49A6F60772
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 49A6F60772
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 07:20:43 +0000 (UTC)
X-CSE-ConnectionGUID: SBO1Lk68Ra2NjTWr5Qlkuw==
X-CSE-MsgGUID: 21/jKGQWTwqdXF+0f7Co8g==
X-IronPort-AV: E=McAfee;i="6700,10204,11157"; a="21361393"
X-IronPort-AV: E=Sophos;i="6.09,272,1716274800"; d="scan'208";a="21361393"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2024 00:20:43 -0700
X-CSE-ConnectionGUID: DTJwXOX6T2GOc/cy3vn76w==
X-CSE-MsgGUID: S8RDVoyyRFW1oE2VY44O8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,272,1716274800"; d="scan'208";a="57073518"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by fmviesa008.fm.intel.com with ESMTP; 08 Aug 2024 00:20:40 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  8 Aug 2024 09:20:16 +0200
Message-ID: <20240808072016.10321-9-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240808072016.10321-1-michal.swiatkowski@linux.intel.com>
References: <20240808072016.10321-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723101643; x=1754637643;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=a2QTM4YmmefzVNxyTiU8f/nPHpRT+z0Aq+zZodKDD3A=;
 b=Fmu5rTyZb6CXgw8R9kRvOX5Ps943vD97RVAWq9cyiVtJCD6nBqMhfXsq
 vjgoKuIlf9177Fm50Ytn3+NKL8YCx6s/lM4Dj3By49ggmRs18ch//kVCE
 BxBYXoEakMaKWRjw8MwWxl/4uJuntYXE7frB4T5TpPMmOOERVALFExvma
 TMvUkEUVgzLBkoUYUZiJU4FdW/iJgK/4M2msOqI0oiIuQPGcPrWG83Msw
 uNlDIESmS2RmoG9GLjiWy8ulre7JJnwlM9FYyK2pO+6hg6J7cFs0SowtP
 UaOUo0w/1JzNN6akpdosQqlBqNBX6qMNny6VPwzB4eXzdOoKChq5sOAdn
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Fmu5rTyZ
Subject: [Intel-wired-lan] [iwl-next v3 8/8] ice: init flow director before
 RDMA
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
Cc: wojciech.drewek@intel.com, marcin.szycik@intel.com, netdev@vger.kernel.org,
 konrad.knitter@intel.com, pawel.chmielewski@intel.com,
 nex.sw.ncis.nat.hpm.dev@intel.com, pio.raczynski@gmail.com,
 sridhar.samudrala@intel.com, jacob.e.keller@intel.com, jiri@resnulli.us,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Flow director needs only one MSI-X. Load it before RDMA to save MSI-X
for it.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 8f02b33adad1..2a3c6c29cccb 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5185,11 +5185,12 @@ int ice_load(struct ice_pf *pf)
 
 	ice_napi_add(vsi);
 
+	ice_init_features(pf);
+
 	err = ice_init_rdma(pf);
 	if (err)
 		goto err_init_rdma;
 
-	ice_init_features(pf);
 	ice_service_task_restart(pf);
 
 	clear_bit(ICE_DOWN, pf->state);
@@ -5197,6 +5198,7 @@ int ice_load(struct ice_pf *pf)
 	return 0;
 
 err_init_rdma:
+	ice_deinit_features(pf);
 	ice_tc_indir_block_unregister(vsi);
 err_tc_indir_block_register:
 	ice_unregister_netdev(vsi);
@@ -5220,8 +5222,8 @@ void ice_unload(struct ice_pf *pf)
 
 	devl_assert_locked(priv_to_devlink(pf));
 
-	ice_deinit_features(pf);
 	ice_deinit_rdma(pf);
+	ice_deinit_features(pf);
 	ice_tc_indir_block_unregister(vsi);
 	ice_unregister_netdev(vsi);
 	ice_devlink_destroy_pf_port(pf);
-- 
2.42.0

