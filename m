Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B4BC89BB45E
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Nov 2024 13:14:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6843D80D2D;
	Mon,  4 Nov 2024 12:14:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1ttP_ygo0P2R; Mon,  4 Nov 2024 12:14:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C333D8089B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730722460;
	bh=YYhRwVnCzz36muGYPnJhKcyXKGhaPumaqOp6Aa36lQU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PUzWjmIRpyZ6AFWrhST9JgwbtCLfNKRZX5DBqervcBfoQtCWJEKYWQlCzhz90YiOm
	 vl5Km6Q/BioOQGPZ9Z/Uo7jBhxJspqL46Z7/sUoPch8ORV/pBKLUog3ynxAEjlVKI1
	 KdE88eGOX3ibqzb3rgvZSrIDkzMZlzSLSEbHIUiF2pxVkROdH/K1nLm3E3AkDfnPg1
	 +GYqlKmNDcC4JVYmAP6Cd8tRBPRJnjuFGeLoCQiJnkAqqqys/XiiLHEi2oh+5DBQab
	 fYfRtRxWfyidvZwN/FSDKsrK9nOC89cvwGJ2LmBgt6VT8Y/z5rn73JLSkNAQksPtL1
	 GjzWLWedZybbA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C333D8089B;
	Mon,  4 Nov 2024 12:14:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 423B61DD6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 12:14:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 204B440504
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 12:14:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id axYgsofbJBh7 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Nov 2024 12:14:17 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9A854404F6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9A854404F6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9A854404F6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 12:14:16 +0000 (UTC)
X-CSE-ConnectionGUID: Y8czycP8Sk+L2SDLxfofLg==
X-CSE-MsgGUID: dhdrt+qBQDaYaoRqjW5Gxw==
X-IronPort-AV: E=McAfee;i="6700,10204,11245"; a="29843737"
X-IronPort-AV: E=Sophos;i="6.11,257,1725346800"; d="scan'208";a="29843737"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 04:14:16 -0800
X-CSE-ConnectionGUID: ELVJu/1oTtac2xXBkLRibA==
X-CSE-MsgGUID: laZmn+d8RKO6Bcnu+DDMjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,257,1725346800"; d="scan'208";a="83525808"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by orviesa009.jf.intel.com with ESMTP; 04 Nov 2024 04:14:13 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  4 Nov 2024 13:13:37 +0100
Message-ID: <20241104121337.129287-10-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20241104121337.129287-1-michal.swiatkowski@linux.intel.com>
References: <20241104121337.129287-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730722457; x=1762258457;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iNYGweqdVVelpNzoPuvQ7BW304Y7BVlMN23yH/IOVFw=;
 b=Wwu0up9FGhZTeXZ2s3NwILjCr71BxvqJ+rv9O7rkJ6oX3qbySgPfIDpK
 QhezVY4cvxLKlPV352d1LB1wsPI63ykd5mC7DjZNTnDPVdhO86dsLdKuc
 7BIIXuUdXdPiI2arRPTvTFTUizKd6pwo2lyJYPbxib227rmufAiR2NQrr
 bPMDipjFXopSde6XRbWcPJsnp2uoDZ8uOltN/ZVoSiE1nAoHss4h6uzBw
 MUxpnuzc1o/pH4SnkgqwN5mQqusp5qX2e6jZwQSvY0gHwF++3xO7ayPQh
 NJH5FtbyR7+MMj+YTy2R06jdO0jqWlrcu7tuPptvTq3dqWaN6RVzttewT
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Wwu0up9F
Subject: [Intel-wired-lan] [iwl-next v7 9/9] ice: init flow director before
 RDMA
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
Cc: pmenzel@molgen.mpg.de, wojciech.drewek@intel.com, marcin.szycik@intel.com,
 netdev@vger.kernel.org, konrad.knitter@intel.com, pawel.chmielewski@intel.com,
 horms@kernel.org, David.Laight@ACULAB.COM, nex.sw.ncis.nat.hpm.dev@intel.com,
 pio.raczynski@gmail.com, sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 jiri@resnulli.us, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Flow director needs only one MSI-X. Load it before RDMA to save MSI-X
for it.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 41f0d0933c2b..95c9d45994f7 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5180,11 +5180,12 @@ int ice_load(struct ice_pf *pf)
 
 	ice_napi_add(vsi);
 
+	ice_init_features(pf);
+
 	err = ice_init_rdma(pf);
 	if (err)
 		goto err_init_rdma;
 
-	ice_init_features(pf);
 	ice_service_task_restart(pf);
 
 	clear_bit(ICE_DOWN, pf->state);
@@ -5192,6 +5193,7 @@ int ice_load(struct ice_pf *pf)
 	return 0;
 
 err_init_rdma:
+	ice_deinit_features(pf);
 	ice_tc_indir_block_unregister(vsi);
 err_tc_indir_block_register:
 	ice_unregister_netdev(vsi);
@@ -5215,8 +5217,8 @@ void ice_unload(struct ice_pf *pf)
 
 	devl_assert_locked(priv_to_devlink(pf));
 
-	ice_deinit_features(pf);
 	ice_deinit_rdma(pf);
+	ice_deinit_features(pf);
 	ice_tc_indir_block_unregister(vsi);
 	ice_unregister_netdev(vsi);
 	ice_devlink_destroy_pf_port(pf);
-- 
2.42.0

