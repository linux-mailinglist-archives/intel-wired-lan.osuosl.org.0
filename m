Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CD3E9A82A67
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Apr 2025 17:32:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6711A40DE9;
	Wed,  9 Apr 2025 15:32:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pfpwjfISM-XW; Wed,  9 Apr 2025 15:32:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B4136411F7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744212726;
	bh=1Ckrjki7AhTpCjufTlxXhMy38n3cfKKENALl31qLC6A=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=uCWDr6USCVSnOge63TCJlr/2vX7EePpEt4a8JPR2xPEyNj76WaeroiCNLrdCey5Oe
	 D0HP88nzjbrUZPg97ccvNDaF2Qh2Xr3am4ZR//ArQRQe4nKSJsbWLtCoak2G8Xz/Nk
	 25/GquRaXGFWVgs17OeQV4jPfyMfBqnTpydl2ig3abv4flrrj9CC5690sX1tCPYG32
	 Dx+GuP457wIYza0QGrdR3FIY6AnZ2HdgEcSxdJ0bEpBvyCy9EqLBsCw40jKoQRrzgp
	 sNMGLxg3HQqOAxjdvM8vWsyi6fC9zCEOCTcI9AYdFKZeS9a5psxej6+et4qXXVWwa0
	 0GF3VVPj42KGw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B4136411F7;
	Wed,  9 Apr 2025 15:32:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id A066E108
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 15:32:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 866556101A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 15:32:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nXlIaWedpz5j for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Apr 2025 15:32:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C242960A3A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C242960A3A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C242960A3A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 15:32:03 +0000 (UTC)
X-CSE-ConnectionGUID: hrorfuR/RsCnBJWMxEhO/g==
X-CSE-MsgGUID: 4+RgdKoLR5u8TadrTWt5/g==
X-IronPort-AV: E=McAfee;i="6700,10204,11399"; a="71072137"
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="71072137"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 08:32:03 -0700
X-CSE-ConnectionGUID: sj4iMcWUR8yxnT64qsbEMw==
X-CSE-MsgGUID: lao44brNTDC0nVGykTVJ7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="151796040"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by fmviesa002.fm.intel.com with ESMTP; 09 Apr 2025 08:31:59 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: donald.hunter@gmail.com, kuba@kernel.org, davem@davemloft.net,
 edumazet@google.com, pabeni@redhat.com, horms@kernel.org,
 vadim.fedorenko@linux.dev, jiri@resnulli.us, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch, saeedm@nvidia.com,
 leon@kernel.org, tariqt@nvidia.com, jonathan.lemon@gmail.com,
 richardcochran@gmail.com, aleksandr.loktionov@intel.com,
 milena.olech@intel.com
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Date: Wed,  9 Apr 2025 17:25:56 +0200
Message-Id: <20250409152558.1007335-3-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20250409152558.1007335-1-arkadiusz.kubalewski@intel.com>
References: <20250409152558.1007335-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744212724; x=1775748724;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=28g1pqf6DxdkRf49I35mHh1VPlqVSh/7qtjRLIX8Ea0=;
 b=haGiGR9SS/W5SnP1OxlbFnBEXSrhTqHVsN15W6RO2tKJylmSiowvEca0
 Ddm6v9+7l40MufezEN95nyRJc2QLV37n0cNFCwente8jK0i4KZX8yjHyQ
 1Q06OCrHdbWqzvmg2XIc+gE8Cfn8MYZ+51b0TMHziNNT2ZxeEFvtg88cQ
 5aNDgX/bGf1E/GtDtCpLnyjZ7aCMuf75S/pyvfj9GeUddEvpFf/r1yX17
 A9Y4EK6AVIwQNR2OZRcaYC0iQFVp9E5y8jlct4TGEfEZ3QHGMWgGeIPvW
 Juh8aGbadS6KmyqFJW8nPuPHdZ0RJ2nRNzHISAnI3v7GT5YGtN0nHKaXr
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=haGiGR9S
Subject: [Intel-wired-lan] [PATCH net-next v1 2/4] dpll: pass capabilities
 on device register
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

Add new argument on dpll device register, a capabilities bitmask of
features supported by the dpll device.
Provide capability value on dpll device dump.

Reviewed-by: Milena Olech <milena.olech@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 drivers/dpll/dpll_core.c                       | 5 ++++-
 drivers/dpll/dpll_core.h                       | 2 ++
 drivers/dpll/dpll_netlink.c                    | 2 ++
 drivers/net/ethernet/intel/ice/ice_dpll.c      | 2 +-
 drivers/net/ethernet/mellanox/mlx5/core/dpll.c | 2 +-
 drivers/ptp/ptp_ocp.c                          | 2 +-
 include/linux/dpll.h                           | 3 ++-
 7 files changed, 13 insertions(+), 5 deletions(-)

diff --git a/drivers/dpll/dpll_core.c b/drivers/dpll/dpll_core.c
index 20bdc52f63a5..563ac37c83ad 100644
--- a/drivers/dpll/dpll_core.c
+++ b/drivers/dpll/dpll_core.c
@@ -342,6 +342,7 @@ dpll_device_registration_find(struct dpll_device *dpll,
  * dpll_device_register - register the dpll device in the subsystem
  * @dpll: pointer to a dpll
  * @type: type of a dpll
+ * @capabilities: mask of available features supported by dpll
  * @ops: ops for a dpll device
  * @priv: pointer to private information of owner
  *
@@ -353,7 +354,8 @@ dpll_device_registration_find(struct dpll_device *dpll,
  * * negative - error value
  */
 int dpll_device_register(struct dpll_device *dpll, enum dpll_type type,
-			 const struct dpll_device_ops *ops, void *priv)
+			 u32 capabilities, const struct dpll_device_ops *ops,
+			 void *priv)
 {
 	struct dpll_device_registration *reg;
 	bool first_registration = false;
@@ -382,6 +384,7 @@ int dpll_device_register(struct dpll_device *dpll, enum dpll_type type,
 	reg->ops = ops;
 	reg->priv = priv;
 	dpll->type = type;
+	dpll->capabilities = capabilities;
 	first_registration = list_empty(&dpll->registration_list);
 	list_add_tail(&reg->list, &dpll->registration_list);
 	if (!first_registration) {
diff --git a/drivers/dpll/dpll_core.h b/drivers/dpll/dpll_core.h
index 2b6d8ef1cdf3..70bbafb9b635 100644
--- a/drivers/dpll/dpll_core.h
+++ b/drivers/dpll/dpll_core.h
@@ -21,6 +21,7 @@
  * @clock_id:		unique identifier (clock_id) of a dpll
  * @module:		module of creator
  * @type:		type of a dpll
+ * @capabilities:	capabilities of a dpll
  * @pin_refs:		stores pins registered within a dpll
  * @refcount:		refcount
  * @registration_list:	list of registered ops and priv data of dpll owners
@@ -31,6 +32,7 @@ struct dpll_device {
 	u64 clock_id;
 	struct module *module;
 	enum dpll_type type;
+	u32 capabilities;
 	struct xarray pin_refs;
 	refcount_t refcount;
 	struct list_head registration_list;
diff --git a/drivers/dpll/dpll_netlink.c b/drivers/dpll/dpll_netlink.c
index c130f87147fa..41aed0d29be2 100644
--- a/drivers/dpll/dpll_netlink.c
+++ b/drivers/dpll/dpll_netlink.c
@@ -591,6 +591,8 @@ dpll_device_get_one(struct dpll_device *dpll, struct sk_buff *msg,
 		return ret;
 	if (nla_put_u32(msg, DPLL_A_TYPE, dpll->type))
 		return -EMSGSIZE;
+	if (nla_put_u32(msg, DPLL_A_CAPABILITIES, dpll->capabilities))
+		return -EMSGSIZE;
 
 	return 0;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
index bce3ad6ca2a6..614a813c7772 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.c
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
@@ -2012,7 +2012,7 @@ ice_dpll_init_dpll(struct ice_pf *pf, struct ice_dpll *d, bool cgu,
 	d->pf = pf;
 	if (cgu) {
 		ice_dpll_update_state(pf, d, true);
-		ret = dpll_device_register(d->dpll, type, &ice_dpll_ops, d);
+		ret = dpll_device_register(d->dpll, type, 0, &ice_dpll_ops, d);
 		if (ret) {
 			dpll_device_put(d->dpll);
 			return ret;
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/dpll.c b/drivers/net/ethernet/mellanox/mlx5/core/dpll.c
index 1e5522a19483..0e430f93b047 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/dpll.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/dpll.c
@@ -444,7 +444,7 @@ static int mlx5_dpll_probe(struct auxiliary_device *adev,
 		goto err_free_mdpll;
 	}
 
-	err = dpll_device_register(mdpll->dpll, DPLL_TYPE_EEC,
+	err = dpll_device_register(mdpll->dpll, DPLL_TYPE_EEC, 0,
 				   &mlx5_dpll_device_ops, mdpll);
 	if (err)
 		goto err_put_dpll_device;
diff --git a/drivers/ptp/ptp_ocp.c b/drivers/ptp/ptp_ocp.c
index b25635c5c745..87b9890d8ef2 100644
--- a/drivers/ptp/ptp_ocp.c
+++ b/drivers/ptp/ptp_ocp.c
@@ -4745,7 +4745,7 @@ ptp_ocp_probe(struct pci_dev *pdev, const struct pci_device_id *id)
 		goto out;
 	}
 
-	err = dpll_device_register(bp->dpll, DPLL_TYPE_PPS, &dpll_ops, bp);
+	err = dpll_device_register(bp->dpll, DPLL_TYPE_PPS, 0, &dpll_ops, bp);
 	if (err)
 		goto out;
 
diff --git a/include/linux/dpll.h b/include/linux/dpll.h
index 5e4f9ab1cf75..dde8dee83dc6 100644
--- a/include/linux/dpll.h
+++ b/include/linux/dpll.h
@@ -171,7 +171,8 @@ dpll_device_get(u64 clock_id, u32 dev_driver_id, struct module *module);
 void dpll_device_put(struct dpll_device *dpll);
 
 int dpll_device_register(struct dpll_device *dpll, enum dpll_type type,
-			 const struct dpll_device_ops *ops, void *priv);
+			 u32 capabilities, const struct dpll_device_ops *ops,
+			 void *priv);
 
 void dpll_device_unregister(struct dpll_device *dpll,
 			    const struct dpll_device_ops *ops, void *priv);
-- 
2.38.1

