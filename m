Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C6AA89B2C42
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Oct 2024 11:04:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8273281C18;
	Mon, 28 Oct 2024 10:04:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 952GDZ504mWl; Mon, 28 Oct 2024 10:04:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D7F2581C11
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730109853;
	bh=W0djqY1jDWfkBfSW8cf/LcL59BPEN9Bb0QoCysQWHnQ=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=78VmJOwmo0gSg/6X0EpeBsXaLJCAbBA9aZAPVvtTtLxgupl7lsilZF4Y5d/dM74Yw
	 UUZoOT4tF6ynGiOEZPJxWYYD6qQo5leQlLY/ZJ1tec9Kknd9YyfyIgQeMxuuq+vcY/
	 LRdFiWSvSAP2xdazZydDR+4IFPNGx1dECKLX7byxN/azr4IpFnGhAHYABFl+iu8ESJ
	 y85d4T6GjR6mROoTE8BU/6O2pxA9C/jmE3muUddH7v7IgM+AveAbOhRCJ0ynHrNIx3
	 ymXGpL38QyCbyW9zSabChXILuW0/xgRuvsDOE11vDedmg37M03C4CLGQzXrV0XWvgG
	 JLF8hnn6idoGw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D7F2581C11;
	Mon, 28 Oct 2024 10:04:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 12746112A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 10:04:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 07A9981AD7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 10:04:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qx5vRySi_LB0 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Oct 2024 10:04:09 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1BDB881BC6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1BDB881BC6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1BDB881BC6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 10:04:09 +0000 (UTC)
X-CSE-ConnectionGUID: 0COluNLHSsitSPUCCwLrIw==
X-CSE-MsgGUID: Eln0hEd0QzuoeyplsqXu/A==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29560786"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29560786"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 03:04:09 -0700
X-CSE-ConnectionGUID: E9DZSBKKQW+O2Kin0CKJsw==
X-CSE-MsgGUID: Ft+0CIXkRKW6flu1OrQ/cQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,238,1725346800"; d="scan'208";a="86182433"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by fmviesa004.fm.intel.com with ESMTP; 28 Oct 2024 03:04:05 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, pawel.chmielewski@intel.com,
 sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 pio.raczynski@gmail.com, konrad.knitter@intel.com, marcin.szycik@intel.com,
 wojciech.drewek@intel.com, nex.sw.ncis.nat.hpm.dev@intel.com,
 przemyslaw.kitszel@intel.com, jiri@resnulli.us, horms@kernel.org,
 David.Laight@ACULAB.COM
Date: Mon, 28 Oct 2024 11:03:39 +0100
Message-ID: <20241028100341.16631-8-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20241028100341.16631-1-michal.swiatkowski@linux.intel.com>
References: <20241028100341.16631-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730109850; x=1761645850;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cRsoRBdjmUo0A3THwZFFhYR6cQRwG8S0i1GkqYZXmtc=;
 b=ifS1N0/a/pjXDf7inoiJp8LRfsbLttj+fB8MKId8wHmT8bFbPXQMq6ar
 zZkQ2oP2Xhdow5XgM9tUB1CkacVVR7JZbHwpTtRY++fRM2tgQfUvGtAxe
 9aE9PVDDuokSdVV8FxRcyFD3MOtVsOJ49wKJXqWBajpyDBOsHrSOF0HEu
 E2SiN3WAT7AV9r98DC3t5+IASmhCVjQJSVuTPRqb8CRtaSXo5VdLw5ddb
 ANuirE28akDAbawt7Bk5JkXSbVVX7SRWM2yvZZrbV0VYFyptOPO/N+y/u
 6gXvhdDemAg924/y927m19d/QQpenWAjrWno7tCmCkGdRFh67+eZOSxN7
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ifS1N0/a
Subject: [Intel-wired-lan] [iwl-next v6 7/9] ice: enable_rdma devlink param
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
index 29c1fec4fa93..04daeb831f84 100644
--- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
+++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
@@ -1579,6 +1579,19 @@ ice_devlink_msix_min_pf_validate(struct devlink *devlink, u32 id,
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
@@ -1594,6 +1607,8 @@ static const struct devlink_param ice_dvl_rdma_params[] = {
 			      ice_devlink_enable_iw_get,
 			      ice_devlink_enable_iw_set,
 			      ice_devlink_enable_iw_validate),
+	DEVLINK_PARAM_GENERIC(ENABLE_RDMA, BIT(DEVLINK_PARAM_CMODE_DRIVERINIT),
+			      NULL, NULL, ice_devlink_enable_rdma_validate),
 };
 
 static const struct devlink_param ice_dvl_msix_params[] = {
@@ -1734,6 +1749,10 @@ int ice_devlink_register_params(struct ice_pf *pf)
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
index e833c25dc970..c0dc1f48f5d6 100644
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

