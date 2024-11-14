Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C92B9C89CC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Nov 2024 13:23:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A50194068D;
	Thu, 14 Nov 2024 12:22:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lU-HthUdfXw7; Thu, 14 Nov 2024 12:22:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BE8F64069D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731586972;
	bh=A71GzPL3pTAkzA94WzSQEpM5HRcOwroRy8DhE+1DQ24=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ODo5gRbcD/J75xgARt+/YTC1TfLbEr2KPY1FM8WBqxB6NEUeUFN4TfSupcekfCFe4
	 gBepgjhvowdxybjv5RP9Q+7kO6aq3Sn0+vIiyo67XBPkCi/Smvjj5hP/KjZowvRVR6
	 41pQ1WqBh7SOl7/tLuMmm8DIAa3URlUjcWXvYZwovrAp96cSGC8HGLI1vC2rP09hu+
	 qFYhL8VLuqIx7f+j5SVFmKPzUG8ktWgfY25iVU3U8R3wCt/k43iwKWHlCKFv+orpXr
	 iDvm9Wyuk/+d7GkaXoutj4gNOZ9SbFTgiD2fYpIo3+PoDEUhI0lyGm3oXCFd+rppsl
	 52dG7SkOolHsw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BE8F64069D;
	Thu, 14 Nov 2024 12:22:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 7A98A6C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 12:22:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 64EAF40182
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 12:22:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wnap3JSEWGnh for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Nov 2024 12:22:49 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7885040169
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7885040169
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7885040169
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 12:22:49 +0000 (UTC)
X-CSE-ConnectionGUID: G+AvRH5xTDKQOvqRd6OOLQ==
X-CSE-MsgGUID: 5xZlYkPDSK+U4nKUVB/psQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11255"; a="42145110"
X-IronPort-AV: E=Sophos;i="6.12,154,1728975600"; d="scan'208";a="42145110"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2024 04:22:49 -0800
X-CSE-ConnectionGUID: mMvXgwzgQIuC5GR6+C53MA==
X-CSE-MsgGUID: MfjcJqrMTbmougbLThm7HQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,154,1728975600"; d="scan'208";a="88083637"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by orviesa010.jf.intel.com with ESMTP; 14 Nov 2024 04:22:45 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: michal.swiatkowski@linux.intel.com
Date: Thu, 14 Nov 2024 13:22:39 +0100
Message-ID: <20241114122239.97600-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20241114122009.97416-1-michal.swiatkowski@linux.intel.com>
References: <20241114122009.97416-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731586969; x=1763122969;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uSfGMC7MpvLcsmrYMIC/KjTjHJL8kyUCy9g8i5xca0k=;
 b=LQ5XjDm1/DbxllHYaOIMI9EkL3A+bTzgwj9YEYPl0XPfxoL8FtfjTi0J
 lQrAJqh2Z8+TneyGDoUPYG/ZetixYCS5bkNkdX2SUpO9q7unFS9YOPG1Z
 PRHzRgKlrYdk3Y57ZAWP87oax5c3IDranuRk5XGmhkqfIR70RpOJuumM2
 dWBPOy6yuNskE0hw7x6+GwaAcTrZVrrXAK5hdoswa20t3R68in7qTvuKr
 3zZsmdhTOLE3a8hNPuohP34w5iILw2vs+JQfitTSNUh+aNuzJU/iIHro0
 1wDna3KQVzLZBCSsbMWvWSzPQFcdZoYV0aZ7yyPZ2BJ84taaKK4GYJGaM
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LQ5XjDm1
Subject: [Intel-wired-lan] [iwl-next v8 9/9] ice: init flow director before
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
Cc: pio.raczynski@gmail.com, pmenzel@molgen.mpg.de, jiri@resnulli.us,
 marcin.szycik@intel.com, sridhar.samudrala@intel.com, netdev@vger.kernel.org,
 konrad.knitter@intel.com, pawel.chmielewski@intel.com, David.Laight@ACULAB.COM,
 intel-wired-lan@lists.osuosl.org, nex.sw.ncis.nat.hpm.dev@intel.com,
 horms@kernel.org, przemyslaw.kitszel@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com, rafal.romanowski@intel.com
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
index a6f586f9bfd1..b6997481fd42 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5175,11 +5175,12 @@ int ice_load(struct ice_pf *pf)
 
 	ice_napi_add(vsi);
 
+	ice_init_features(pf);
+
 	err = ice_init_rdma(pf);
 	if (err)
 		goto err_init_rdma;
 
-	ice_init_features(pf);
 	ice_service_task_restart(pf);
 
 	clear_bit(ICE_DOWN, pf->state);
@@ -5187,6 +5188,7 @@ int ice_load(struct ice_pf *pf)
 	return 0;
 
 err_init_rdma:
+	ice_deinit_features(pf);
 	ice_tc_indir_block_unregister(vsi);
 err_tc_indir_block_register:
 	ice_unregister_netdev(vsi);
@@ -5210,8 +5212,8 @@ void ice_unload(struct ice_pf *pf)
 
 	devl_assert_locked(priv_to_devlink(pf));
 
-	ice_deinit_features(pf);
 	ice_deinit_rdma(pf);
+	ice_deinit_features(pf);
 	ice_tc_indir_block_unregister(vsi);
 	ice_unregister_netdev(vsi);
 	ice_devlink_destroy_pf_port(pf);
-- 
2.42.0

