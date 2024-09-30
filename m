Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8367E98A165
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Sep 2024 14:04:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 839C9606D5;
	Mon, 30 Sep 2024 12:04:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8EVmGpgjSTSj; Mon, 30 Sep 2024 12:04:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E5563606CC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727697875;
	bh=slvoPxFX+a7OwIG3OI6XimjRsaCupc74/a2vg4tV0nI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bP5oNQWIbwvb+yJoBb/SieWMLhnNXnP+zND/LPpDvdzsjKDb5L0hlyU5QjgtBW+/T
	 dlmrDy4MWung1VV4IqYKxjwzvxBuncWbVMTupMuZGe0nToLBwaRCgBzNO6/V72U39j
	 F5v4zjnk9ePyB1VrQwMzu0Oxq29oB3a0fC/fmGAOiEdeILMCbw9Z0yHxKQpupI1RNI
	 M8bS7zvU54qHlkgJ60q0eS0yV89m70j4BSGztYszmCxmXma6+8MHkoOjt5y1LlQbcN
	 k+fjQI2dr32Ld01aIyvaXGKqeqjApDN28m7fhqbo+NJJXk9LjVF8Tv5Ujb9wDOTgjk
	 psGcvjuR/ULLw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E5563606CC;
	Mon, 30 Sep 2024 12:04:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 56C3B1BF31E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 12:04:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 45C5A80F35
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 12:04:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fEpt4tF2FMMU for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Sep 2024 12:04:28 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8EF4680F0F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8EF4680F0F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8EF4680F0F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 12:04:28 +0000 (UTC)
X-CSE-ConnectionGUID: jYJmLWmgSIyJQCnU/c+4mA==
X-CSE-MsgGUID: pvPc/m0nREKmgHGX+jUqXg==
X-IronPort-AV: E=McAfee;i="6700,10204,11210"; a="29665592"
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="29665592"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 05:04:29 -0700
X-CSE-ConnectionGUID: xc0ZzHdzRB6VDIAiMelOgg==
X-CSE-MsgGUID: KRGBYmFYT1KvHViScywwqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="77363559"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by fmviesa003.fm.intel.com with ESMTP; 30 Sep 2024 05:04:26 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 30 Sep 2024 14:04:02 +0200
Message-ID: <20240930120402.3468-9-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240930120402.3468-1-michal.swiatkowski@linux.intel.com>
References: <20240930120402.3468-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727697869; x=1759233869;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+aAYHoZPaeHh7Hy62w+oK6tBM3RYG6kFiyaV03yiAMs=;
 b=Q3dUMuvwuZPD+efSSJCuu/xmzgr5lfwVCxK6iuFuhoVije0ZVH4rfNjL
 8OlmAsj2miimEWrhygZUe2z9ekx+D/9ArruS+xYQ/2k7lO+2ttiT2Ps9w
 he0wBBFtyq/y38+NQ3QW9tr2iBuhjnKw8n/q3CN1YPqt1P9yHdMq+AhX8
 HQsDioCK6t58yLeaqxWUG9MoP16iHrd5oCxYKnwHA3eSqiIuKoLFE1fvw
 2eU5MDLnPYYmfptC+OaMFMR/iJi9zk/LFPliiu63VNgsMWpROzl4JPwHv
 YtUqwLz5k2KkLaymy1RTlC5bXAdEWsCGrSjvulbwsYoNrJVXeq9EjcQbP
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Q3dUMuvw
Subject: [Intel-wired-lan] [iwl-next v4 8/8] ice: init flow director before
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
index dc1a085d413c..ef5e04c06267 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5217,11 +5217,12 @@ int ice_load(struct ice_pf *pf)
 
 	ice_napi_add(vsi);
 
+	ice_init_features(pf);
+
 	err = ice_init_rdma(pf);
 	if (err)
 		goto err_init_rdma;
 
-	ice_init_features(pf);
 	ice_service_task_restart(pf);
 
 	clear_bit(ICE_DOWN, pf->state);
@@ -5229,6 +5230,7 @@ int ice_load(struct ice_pf *pf)
 	return 0;
 
 err_init_rdma:
+	ice_deinit_features(pf);
 	ice_tc_indir_block_unregister(vsi);
 err_tc_indir_block_register:
 	ice_unregister_netdev(vsi);
@@ -5252,8 +5254,8 @@ void ice_unload(struct ice_pf *pf)
 
 	devl_assert_locked(priv_to_devlink(pf));
 
-	ice_deinit_features(pf);
 	ice_deinit_rdma(pf);
+	ice_deinit_features(pf);
 	ice_tc_indir_block_unregister(vsi);
 	ice_unregister_netdev(vsi);
 	ice_devlink_destroy_pf_port(pf);
-- 
2.42.0

