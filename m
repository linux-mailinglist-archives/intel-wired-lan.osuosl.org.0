Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5457EA3C790
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Feb 2025 19:31:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D06B581092;
	Wed, 19 Feb 2025 18:29:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SBW7YPcIl3Yp; Wed, 19 Feb 2025 18:29:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 15CFB84934
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739989595;
	bh=BlS6TBuMKK0DexH1Tv/m0DP3u+JCni/8QWGw0cfro60=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=prHuwnz1Td6BNUnHKzgOHMlZn5hlCgbX63kZpZcJU5w60C7RK/l5ZYC2clYC8pwuv
	 1OdF3bEP5hcvQ7uZQNbkFV9+S9XdYsxLg0tKLfHpgbJyLt9n557RBg+uDtfR+lv6LI
	 yif3Sh/Jw9o2FmXmkn8BeHiF27XavJcKCvSqA3N0AI6GVprd2NQKbmg5YZnORYrrNY
	 cAb68U3hMICTr6l3Cx8J4M4DMeERbOxlivMPEVl0tPD9mw8Bbh5HHFR/Lr80yYQBVB
	 2Ge936UY61GwYTkKgjqh13badNC/qf7JerJAw4VmWhDuqqf3T0Gn0unQ+X+pDwvr0d
	 UumYlqh4VrprQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 15CFB84934;
	Wed, 19 Feb 2025 18:26:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 25E2BCF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2025 17:47:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F252680ABA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2025 17:47:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M58TQECEoTZr for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Feb 2025 17:47:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C4735844BA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C4735844BA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C4735844BA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2025 17:46:13 +0000 (UTC)
X-CSE-ConnectionGUID: jbLFdBtJRxuO9o6Jp3er/A==
X-CSE-MsgGUID: Gk/cSDX8Q2iJoZn7r5g2zw==
X-IronPort-AV: E=McAfee;i="6700,10204,11350"; a="50953001"
X-IronPort-AV: E=Sophos;i="6.13,299,1732608000"; d="scan'208";a="50953001"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2025 09:46:12 -0800
X-CSE-ConnectionGUID: YOtOd1d7QwCLO2vwn6JMHg==
X-CSE-MsgGUID: uUBZIoz/QmWhN/9y7wplPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="119427317"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa005.fm.intel.com with ESMTP; 19 Feb 2025 08:44:32 -0800
Received: from pkitszel-desk.intel.com (unknown [10.245.246.109])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id A28D134302;
 Wed, 19 Feb 2025 16:44:21 +0000 (GMT)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jiri Pirko <jiri@resnulli.us>, Jakub Kicinski <kuba@kernel.org>,
 Cosmin Ratiu <cratiu@nvidia.com>, Tariq Toukan <tariqt@nvidia.com>
Cc: netdev@vger.kernel.org, Konrad Knitter <konrad.knitter@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, davem@davemloft.net,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Andrew Lunn <andrew@lunn.ch>, linux-kernel@vger.kernel.org,
 ITP Upstream <nxne.cnse.osdt.itp.upstreaming@intel.com>,
 Carolina Jubran <cjubran@nvidia.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Wed, 19 Feb 2025 17:32:55 +0100
Message-ID: <20250219164410.35665-3-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20250219164410.35665-1-przemyslaw.kitszel@intel.com>
References: <20250219164410.35665-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739987174; x=1771523174;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MwD19ihbKaz4IBkMTRxc/PBUn4IuzdESisvBCresR44=;
 b=DFEBqilIJQZmhQyHpExfnqftS1HbCY90RxsLcI/8cuQfFijNtvcSqE+8
 l/pm2B8OJfYJsT5FL1E2RWwZo+PnXiDmP86qurcve6sV6eC8G5XDCvXha
 bOs7GsQYh/zfp2bUOQ8w5Cby4jfoOHeEGV2TewXnu1PdR8OhKcV7AlbMt
 6UGhZ4hqRfKIMkGTVNM0llBaUIkDJwUf/HOm9lS9cxb7rOrRCkOC4pJqu
 k2Y2AdDvsKQEgWAxOJuGwqFqfdG+uExxP7C+W2kLhC6WGKfGqFV+vEOff
 EN/ZNprau/gJStiKoU7SV46EU0n+46XyTm/ULMqEi3K6Ma7Sy88dt70Tp
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DFEBqilI
Subject: [Intel-wired-lan] [RFC net-next v2 2/2] devlink: give user option
 to allocate resources
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

Current devlink resources are designed as a thing that user could limit,
but there is not much otherwise that could be done with them.
Perhaps that's the reason there is no much adoption despite API being
there for multiple years.

Add new mode of operation, where user could allocate/assign resources
(from a common pool) to specific devices.

That requires "occ set" support, triggered by user.
To support that mode, "occ get" is (only then) turned into a simple
"get/show" operation, as opposed to "ask driver about current occupation"
in the "legacy" mode.

Naming advice welcomed, for now the modes are reffered as:
legacy/static-occ/mlx vs new/ice/dynamic-occ
Perhaps "user-settable" for the new mode and "driver-only" for the legacy?
Does not matter much, as this will be only embedded in the
net/devlink/resource.c file as names/comments for clarity.

Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 net/devlink/resource.c | 94 +++++++++++++++++++++++++++++++++---------
 1 file changed, 74 insertions(+), 20 deletions(-)

diff --git a/net/devlink/resource.c b/net/devlink/resource.c
index 2d6324f3d91f..c81d05427e12 100644
--- a/net/devlink/resource.c
+++ b/net/devlink/resource.c
@@ -14,25 +14,30 @@
  * @size_new: updated size of the resource, reload is needed
  * @size_valid: valid in case the total size of the resource is valid
  *              including its children
+ * @occ_mode: false for static occ mode == legacy mlx like
+ *            true for dynamic occ mode == new one for intel
  * @parent: parent resource
  * @size_params: size parameters
  * @list: parent list
  * @resource_list: list of child resources
  * @occ_get: occupancy getter callback
- * @occ_get_priv: occupancy getter callback priv
+ * @occ_set: occupancy setter callback
+ * @occ_priv: occupancy callbacks priv
  */
 struct devlink_resource {
 	const char *name;
 	u64 id;
 	u64 size;
 	u64 size_new;
 	bool size_valid;
+	bool occ_mode;
 	struct devlink_resource *parent;
 	struct devlink_resource_size_params size_params;
 	struct list_head list;
 	struct list_head resource_list;
 	devlink_resource_occ_get_t *occ_get;
-	void *occ_get_priv;
+	devlink_resource_occ_set_t *occ_set;
+	void *occ_priv;
 };
 
 static struct devlink_resource *
@@ -127,6 +132,9 @@ int devlink_nl_resource_set_doit(struct sk_buff *skb, struct genl_info *info)
 	if (err)
 		return err;
 
+	if (resource->occ_set)
+		return resource->occ_set(size, info->extack, resource->occ_priv);
+
 	resource->size_new = size;
 	devlink_resource_validate_children(resource);
 	if (resource->parent)
@@ -152,13 +160,46 @@ devlink_resource_size_params_put(struct devlink_resource *resource,
 	return 0;
 }
 
-static int devlink_resource_occ_put(struct devlink_resource *resource,
-				    struct sk_buff *skb)
+static
+int devlink_resource_occ_size_put_legacy(struct devlink_resource *resource,
+					 struct sk_buff *skb)
+{
+	int err;
+
+	if (resource->occ_get) {
+		err = devlink_nl_put_u64(skb, DEVLINK_ATTR_RESOURCE_OCC,
+					 resource->occ_get(resource->occ_priv));
+		if (err)
+			return err;
+	}
+
+	if (resource->size != resource->size_new) {
+	    err = devlink_nl_put_u64(skb, DEVLINK_ATTR_RESOURCE_SIZE_NEW,
+				     resource->size_new);
+		if (err)
+			return err;
+	}
+
+	err = nla_put_u8(skb, DEVLINK_ATTR_RESOURCE_SIZE_VALID,
+			 resource->size_valid);
+	if (err)
+		return err;
+
+
+	return devlink_nl_put_u64(skb, DEVLINK_ATTR_RESOURCE_SIZE,
+				  resource->size);
+}
+
+static int devlink_resource_occ_size_put(struct devlink_resource *resource,
+					 struct sk_buff *skb)
 {
-	if (!resource->occ_get)
-		return 0;
-	return devlink_nl_put_u64(skb, DEVLINK_ATTR_RESOURCE_OCC,
-				  resource->occ_get(resource->occ_get_priv));
+	if (!resource->occ_get || !resource->occ_set)
+		return devlink_resource_occ_size_put_legacy(resource, skb);
+
+	nla_put_u8(skb, DEVLINK_ATTR_RESOURCE_SIZE_VALID, true);
+
+	return devlink_nl_put_u64(skb, DEVLINK_ATTR_RESOURCE_SIZE,
+				  resource->occ_get(resource->occ_priv));
 }
 
 static int devlink_resource_put(struct devlink *devlink, struct sk_buff *skb,
@@ -173,23 +214,16 @@ static int devlink_resource_put(struct devlink *devlink, struct sk_buff *skb,
 		return -EMSGSIZE;
 
 	if (nla_put_string(skb, DEVLINK_ATTR_RESOURCE_NAME, resource->name) ||
-	    devlink_nl_put_u64(skb, DEVLINK_ATTR_RESOURCE_SIZE, resource->size) ||
 	    devlink_nl_put_u64(skb, DEVLINK_ATTR_RESOURCE_ID, resource->id))
 		goto nla_put_failure;
-	if (resource->size != resource->size_new &&
-	    devlink_nl_put_u64(skb, DEVLINK_ATTR_RESOURCE_SIZE_NEW,
-			       resource->size_new))
-		goto nla_put_failure;
-	if (devlink_resource_occ_put(resource, skb))
-		goto nla_put_failure;
 	if (devlink_resource_size_params_put(resource, skb))
 		goto nla_put_failure;
+	if (devlink_resource_occ_size_put(resource, skb))
+		goto nla_put_failure;
+
 	if (list_empty(&resource->resource_list))
 		goto out;
 
-	if (nla_put_u8(skb, DEVLINK_ATTR_RESOURCE_SIZE_VALID,
-		       resource->size_valid))
-		goto nla_put_failure;
 
 	child_resource_attr = nla_nest_start_noflag(skb,
 						    DEVLINK_ATTR_RESOURCE_LIST);
@@ -476,7 +510,7 @@ void devl_resource_occ_get_register(struct devlink *devlink,
 	WARN_ON(resource->occ_get);
 
 	resource->occ_get = occ_get;
-	resource->occ_get_priv = occ_get_priv;
+	resource->occ_priv = occ_get_priv;
 }
 EXPORT_SYMBOL_GPL(devl_resource_occ_get_register);
 
@@ -499,6 +533,26 @@ void devl_resource_occ_get_unregister(struct devlink *devlink,
 	WARN_ON(!resource->occ_get);
 
 	resource->occ_get = NULL;
-	resource->occ_get_priv = NULL;
 }
 EXPORT_SYMBOL_GPL(devl_resource_occ_get_unregister);
+
+void devl_resource_occ_set_get_register(struct devlink *devlink,
+					u64 resource_id,
+					devlink_resource_occ_set_t *occ_set,
+					devlink_resource_occ_get_t *occ_get,
+					void *occ_priv)
+{
+	struct devlink_resource *resource;
+
+	lockdep_assert_held(&devlink->lock);
+
+	resource = devlink_resource_find(devlink, NULL, resource_id);
+	if (WARN_ON(!resource))
+		return;
+	WARN_ON(resource->occ_get || resource->occ_set);
+
+	resource->occ_set = occ_set;
+	resource->occ_get = occ_get;
+	resource->occ_priv = occ_priv;
+}
+EXPORT_SYMBOL_GPL(devl_resource_occ_set_get_register);
-- 
2.46.0

