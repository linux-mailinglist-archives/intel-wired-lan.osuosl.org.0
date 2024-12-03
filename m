Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B46B09E13AB
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Dec 2024 07:58:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6BE36407DC;
	Tue,  3 Dec 2024 06:58:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DAao40-sRU2N; Tue,  3 Dec 2024 06:58:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9DA1D40721
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733209132;
	bh=WBeTDtVlDXpGO1oiXIBpjl3ZoqZAlPSYer4ea6zDHOY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=r747DjyM2zuB14kT52tHOikjxiYrQHsWoQY9iG7Z6O7jc65LGW3yZdZtWF5H8HB6d
	 s76aZHap1IS5FGM1yrPzTT+Vd8+JGpvti+UyBtLfca3khfbgnNmCLPorPOH2CXGe6B
	 xTACo6RuXtUho7r+YPSLY6OLSYA7DgN5EyISp7k5MXcSXgk51ETPkfdKHSr1kAMRbD
	 kKWL8F5+XMqdXeoatL/EbzaevAMRtJT5QgHMRYkKYuuBGuaNCLyazDv48gGSodXZI6
	 RMKU+GC10JQHKFhK5XQqz1CDId57uo8t+m3lZEKJLDEIdjnxMMWDaZoZAY2cWDa1ho
	 KvM2fboqHyoXw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9DA1D40721;
	Tue,  3 Dec 2024 06:58:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 01BAF2365
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Dec 2024 06:58:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D4317401B0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Dec 2024 06:58:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Lc14Sg34MbaA for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Dec 2024 06:58:50 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CC105400D8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CC105400D8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CC105400D8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Dec 2024 06:58:49 +0000 (UTC)
X-CSE-ConnectionGUID: tD+mHF1HRSyRJtKHpqxztg==
X-CSE-MsgGUID: /teeTgOtTyOg7937fmfArw==
X-IronPort-AV: E=McAfee;i="6700,10204,11274"; a="33330558"
X-IronPort-AV: E=Sophos;i="6.12,204,1728975600"; d="scan'208";a="33330558"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2024 22:58:49 -0800
X-CSE-ConnectionGUID: 2EB3Ea1JTi66WMwy6ZLvpA==
X-CSE-MsgGUID: 1g7tmOoHT3S/P5LYvRk67A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,204,1728975600"; d="scan'208";a="93673742"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by fmviesa010.fm.intel.com with ESMTP; 02 Dec 2024 22:58:46 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  3 Dec 2024 07:58:15 +0100
Message-ID: <20241203065817.13475-8-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20241203065817.13475-1-michal.swiatkowski@linux.intel.com>
References: <20241203065817.13475-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733209130; x=1764745130;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dcsC+RtCSD5Uo+HcViZYTI3F4FsTqUB53i8NpeKAX0A=;
 b=EkBbcnP9RjyUhp7qw3HcPvnDfz6nTHJEjQSAuya3cXOMpTErfHMYUMuj
 lGH2c6wrG1T5COG8FiY8vue7rFriTC4VTOyP4EdHnixq6hLiYX8iCWrS2
 392ZkcV+WMoZo0bWW9CTK5mwGgKgfP/riaOPyjeI9L4Slv21lh4y2qHK1
 X7h0/OvQTDMMp67/rSXIetP0uJW+KpBrfWL0jP8+tmCFGQOiEiMTciRCi
 lB/IUr5EQ5lARa0ZPAsqkEAmAc5CkhGFiKgH4BL9YVeAnbKa7Ms+J2Yg1
 m1Q1skZ1dEoscacFiC6JOaZX5zc08N2jVxFT7nX4EJrHDxxZPshIqpcyE
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EkBbcnP9
Subject: [Intel-wired-lan] [iwl-next v9 7/9] ice: enable_rdma devlink param
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
Cc: himasekharx.reddy.pucha@intel.com, pmenzel@molgen.mpg.de,
 wojciech.drewek@intel.com, marcin.szycik@intel.com, netdev@vger.kernel.org,
 rafal.romanowski@intel.com, konrad.knitter@intel.com,
 pawel.chmielewski@intel.com, horms@kernel.org, David.Laight@ACULAB.COM,
 nex.sw.ncis.nat.hpm.dev@intel.com, pio.raczynski@gmail.com,
 sridhar.samudrala@intel.com, jacob.e.keller@intel.com, jiri@resnulli.us,
 przemyslaw.kitszel@intel.com
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
 .../net/ethernet/intel/ice/devlink/devlink.c  | 21 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_lib.c      |  8 ++++++-
 2 files changed, 28 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/drivers/net/ethernet/intel/ice/devlink/devlink.c
index c53baecf8a90..725136c975e1 100644
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
@@ -1738,6 +1753,12 @@ int ice_devlink_register_params(struct ice_pf *pf)
 	devl_param_driverinit_value_set(devlink,
 					DEVLINK_PARAM_GENERIC_ID_MSIX_VEC_PER_PF_MIN,
 					value);
+
+	value.vbool = test_bit(ICE_FLAG_RDMA_ENA, pf->flags);
+	devl_param_driverinit_value_set(devlink,
+					DEVLINK_PARAM_GENERIC_ID_ENABLE_RDMA,
+					value);
+
 	return 0;
 
 unregister_msix_params:
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

