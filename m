Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 53B6894B79D
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Aug 2024 09:20:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AAED481865;
	Thu,  8 Aug 2024 07:20:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id svKk66vpDYMO; Thu,  8 Aug 2024 07:20:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E5DB3815AD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723101640;
	bh=IJZHzakzHJ8Bo3VBgC0WZWgDQX8L0cUZUABA5hJZMe8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wnYfnEcLPq6sSE1+1nho+UWiEydwNX5pfMn1Dx1I8accs3JgtkKMKO5BTa0T7fvkP
	 HM6hKHs7etT9TUZGUFkHbpgnJ4sKDKVdnh5Vy6RH1A0TODIVkZb5QesWTZUa7NcDlJ
	 btNVkEdScZ1LzrM2v1WGDJHIiiYIFZio/z+uc7OGneoM+okGVOxV0MOj/LCAJlSh9m
	 EThJUL5dy9+ZsXeesfNaMgtnWoOoZ+MP7STDxXiEVhTBtxV5gm98wzuCKbkjusvv1u
	 LqHCDDSrs7dj+hE7vIqQBxKqALaEuhtgASwmVHvEx9a0DpT+4FnSu6YLXSuBOuINAT
	 pMdXWmAcpTEFA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E5DB3815AD;
	Thu,  8 Aug 2024 07:20:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 665FE1BF369
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 07:20:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5E775607F3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 07:20:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tPxftLv2pbkE for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Aug 2024 07:20:37 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8153B60772
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8153B60772
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8153B60772
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 07:20:37 +0000 (UTC)
X-CSE-ConnectionGUID: 3XJv+d1MRva8h6wg8P+ZQA==
X-CSE-MsgGUID: ADOtZ31ITZmk6mZxc19xmw==
X-IronPort-AV: E=McAfee;i="6700,10204,11157"; a="21361373"
X-IronPort-AV: E=Sophos;i="6.09,272,1716274800"; d="scan'208";a="21361373"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2024 00:20:37 -0700
X-CSE-ConnectionGUID: 4DV3NfKWTuaYiPKo9QHjfg==
X-CSE-MsgGUID: UrMGCU2kQgekRARRK9FvzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,272,1716274800"; d="scan'208";a="57073506"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by fmviesa008.fm.intel.com with ESMTP; 08 Aug 2024 00:20:34 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  8 Aug 2024 09:20:14 +0200
Message-ID: <20240808072016.10321-7-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240808072016.10321-1-michal.swiatkowski@linux.intel.com>
References: <20240808072016.10321-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723101637; x=1754637637;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WK8qdsTxDcmqkJblWSy4esjLmghvrfMZPQnaAtP1zd4=;
 b=VU/tyy5JJBE/cwyKdHKadJaeNcZEqH3cQvMT9CgEVveCsg3bU4KjTjPc
 VBk6DLrhQybXIm4kPMYLWb1pC2bze5lmuHJRMgv0PBm5JHxsIikTFB0/P
 wgqc8DmKu6CeZYi+S567PMQAzGFW5quWavp9DIKEronaE9M3T4uwSjhKM
 RcoMHSyEzylrVf/6JiPxEWMHH5FvGtOTNoMF773LbZ1R0MrkTEtWdiXWS
 7deqqPHFi0UeJJvAtHjlXb4Q5HDogCrjVTrbkdhCq6Gj4qeH1AoANtfBm
 nlPrQMyNsR2vRKIG7r6o+mskw9q0mJk2ZZzLt6CM4HG6FbXgGAJlclXV4
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VU/tyy5J
Subject: [Intel-wired-lan] [iwl-next v3 6/8] ice: enable_rdma devlink param
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

Implement enable_rdma devlink parameter to allow user to turn RDMA
feature on and off.

It is useful when there is no enough interrupts and user doesn't need
RDMA feature.

Reviewed-by: Jan Sokolowski <jan.sokolowski@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 .../net/ethernet/intel/ice/devlink/devlink.c  | 19 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_lib.c      |  8 +++++++-
 2 files changed, 26 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/drivers/net/ethernet/intel/ice/devlink/devlink.c
index bdc22ea13e0f..530d443a8e14 100644
--- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
+++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
@@ -1544,6 +1544,19 @@ ice_devlink_msix_min_pf_validate(struct devlink *devlink, u32 id,
 	return 0;
 }
 
+static int ice_devlink_enable_rdma_validate(struct devlink *devlink, u32 id,
+					    union devlink_param_value val,
+					    struct netlink_ext_ack *extack)
+{
+	struct ice_pf *pf = devlink_priv(devlink);
+	bool new_state = val.vbool;
+
+	if (new_state && !test_bit(ICE_FLAG_RDMA_ENA, pf->flags))
+		return -EOPNOTSUPP;
+
+	return 0;
+}
+
 enum ice_param_id {
 	ICE_DEVLINK_PARAM_ID_BASE = DEVLINK_PARAM_GENERIC_ID_MAX,
 	ICE_DEVLINK_PARAM_ID_TX_SCHED_LAYERS,
@@ -1559,6 +1572,8 @@ static const struct devlink_param ice_dvl_rdma_params[] = {
 			      ice_devlink_enable_iw_get,
 			      ice_devlink_enable_iw_set,
 			      ice_devlink_enable_iw_validate),
+	DEVLINK_PARAM_GENERIC(ENABLE_RDMA, BIT(DEVLINK_PARAM_CMODE_DRIVERINIT),
+			      NULL, NULL, ice_devlink_enable_rdma_validate),
 };
 
 static const struct devlink_param ice_dvl_msix_params[] = {
@@ -1700,6 +1715,10 @@ int ice_devlink_register_params(struct ice_pf *pf)
 	devl_param_driverinit_value_set(devlink,
 					DEVLINK_PARAM_GENERIC_ID_MSIX_VEC_PER_PF_MIN,
 					value);
+	value.vbool = test_bit(ICE_FLAG_RDMA_ENA, pf->flags);
+	devl_param_driverinit_value_set(devlink,
+					DEVLINK_PARAM_GENERIC_ID_ENABLE_RDMA,
+					value);
 
 	return 0;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index fcde08334880..93a7b875f8aa 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -834,7 +834,13 @@ bool ice_is_safe_mode(struct ice_pf *pf)
  */
 bool ice_is_rdma_ena(struct ice_pf *pf)
 {
-	return test_bit(ICE_FLAG_RDMA_ENA, pf->flags);
+	union devlink_param_value value;
+	int err;
+
+	err = devl_param_driverinit_value_get(priv_to_devlink(pf),
+					      DEVLINK_PARAM_GENERIC_ID_ENABLE_RDMA,
+					      &value);
+	return err ? test_bit(ICE_FLAG_RDMA_ENA, pf->flags) : value.vbool;
 }
 
 /**
-- 
2.42.0

