Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1626B9BB45A
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Nov 2024 13:14:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B56E5404CC;
	Mon,  4 Nov 2024 12:14:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9ujCcwsLcRmH; Mon,  4 Nov 2024 12:14:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AB5CA404BF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730722451;
	bh=HVOeSF8EacoYYUg81emErHfP2AU7WIM2BI1jpl621nw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ESCi40EEuGlOXn7FWrqccQ068W189u5A5z4+sQplCR9GOYNfWhEhBRLm28js+/C5q
	 VblftLlOBZZONUHMd6+WJqQ75En+5JUos10rFMo0M8ZKhcshzpVMLpAIE0yhg3/22y
	 NJuO3Pf93GTwRwALJOdWXX5UilJ5Cpz38M9JLgJjMX8UXAD7a0HGKq2MtST1xUJipL
	 Krw76mnMt+3JuDctO5YHCclpOerXan5l9BO6+DkYBAIoQSeI6wDw43KYR5mYK2RUGu
	 03EwSDkT9rTkucGtm1kq/DWn3NebhLSzg9UpbAu1hbFzfI+Bfd29CqH/OztBeSFsxO
	 W+Q2YSRfni89A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id AB5CA404BF;
	Mon,  4 Nov 2024 12:14:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 8ED34723
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 12:14:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8AE9C404D9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 12:14:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NZr7fr8t4LFF for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Nov 2024 12:14:09 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DA449404C8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DA449404C8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DA449404C8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 12:14:08 +0000 (UTC)
X-CSE-ConnectionGUID: ZXOms588TTiPQVQ1SGd8kw==
X-CSE-MsgGUID: OYR9kZhlTySKU/z74zh2Fg==
X-IronPort-AV: E=McAfee;i="6700,10204,11245"; a="29843721"
X-IronPort-AV: E=Sophos;i="6.11,257,1725346800"; d="scan'208";a="29843721"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 04:14:09 -0800
X-CSE-ConnectionGUID: OUQkur6GTlStJgIetQOWWQ==
X-CSE-MsgGUID: ut0oV28iR/iPKnBbahzysA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,257,1725346800"; d="scan'208";a="83525789"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by orviesa009.jf.intel.com with ESMTP; 04 Nov 2024 04:14:05 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  4 Nov 2024 13:13:35 +0100
Message-ID: <20241104121337.129287-8-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20241104121337.129287-1-michal.swiatkowski@linux.intel.com>
References: <20241104121337.129287-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730722449; x=1762258449;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sFgccSLxeaMA8TEo/cKMi+7lBSh3EhKPf3QSeQRznkg=;
 b=R6tcaOfGKq+xRAwi7r3auziW4NwciloYPoccnTZn9VAMA0EiEqpJZkbo
 0gk+bAf5utyzUZh9DfVXV2Qr16gpoBfCm0EIHnkdOeKSdrpcRvdEfHsBG
 evtMOeCCQofuSJsY6/qRmDPAHW4nXxn8HUYXUn8v4yiKkKnQge74/zqNA
 cnDBODGBGjbMSSyQtTQZshsHh2KvIVMd6eGjAZCx1Uq84UFmCunNLHu9H
 hl3Kb/ucsLRC8VrLBLlKNMv30VfPe2albZg7PW1ecKvuG1efNGU70iO1i
 LAi0AeE0PDKRvxUKEpyBQOD7dDeXhCuCT2E25daZNV2wlia+v8JcXNTm6
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=R6tcaOfG
Subject: [Intel-wired-lan] [iwl-next v7 7/9] ice: enable_rdma devlink param
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

Implement enable_rdma devlink parameter to allow user to turn RDMA
feature on and off.

It is useful when there is no enough interrupts and user doesn't need
RDMA feature.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Jan Sokolowski <jan.sokolowski@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 .../net/ethernet/intel/ice/devlink/devlink.c  | 19 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_lib.c      |  8 +++++++-
 2 files changed, 26 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/drivers/net/ethernet/intel/ice/devlink/devlink.c
index da7c4eecaad3..e785728a8f1f 100644
--- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
+++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
@@ -1583,6 +1583,19 @@ ice_devlink_msix_min_pf_validate(struct devlink *devlink, u32 id,
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
@@ -1598,6 +1611,8 @@ static const struct devlink_param ice_dvl_rdma_params[] = {
 			      ice_devlink_enable_iw_get,
 			      ice_devlink_enable_iw_set,
 			      ice_devlink_enable_iw_validate),
+	DEVLINK_PARAM_GENERIC(ENABLE_RDMA, BIT(DEVLINK_PARAM_CMODE_DRIVERINIT),
+			      NULL, NULL, ice_devlink_enable_rdma_validate),
 };
 
 static const struct devlink_param ice_dvl_msix_params[] = {
@@ -1738,6 +1753,10 @@ int ice_devlink_register_params(struct ice_pf *pf)
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
index 01afa5f84af9..29a3e055b7c6 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -833,7 +833,13 @@ bool ice_is_safe_mode(struct ice_pf *pf)
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

