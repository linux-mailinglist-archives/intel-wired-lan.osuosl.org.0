Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +GSLA1ze/WmqkAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 15:00:12 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 577EC4F6B26
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 15:00:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 35298832D9;
	Fri,  8 May 2026 13:00:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Hr4ax_PjuCBo; Fri,  8 May 2026 13:00:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B6C67832DC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778245206;
	bh=V/IYc/IvSd/fLqcdKvCHfQX92+D9DOd/x/2G+t1cspg=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tRyjt9qLRRQLbM3zaOafzxH8Sm7HBovxnD9/g2ypTW0QAPcSddVzj2LR3vVS0zeha
	 h89I/y5ajLBwgYjm4VLP/sjs6r7y8zUV05FxDQNuF8xOeQLm00LfNCID/i25YBmhsP
	 WqTTcDLZ50dZbTtnLZI5I5n/l0fITbFaBhRLMTwr394d+3JFPTNQrmCeCs5qpX5NE8
	 8JgQOMjVH710oqPyvFrIoL4g2Nh2KHiPbaZyqxc35xk4oasqQpRB/B2V3kFpdS+p6i
	 n+HN3NfLcWzySkYtZOEqqILPaakZt2IxSse0eg1kTAekXyBY1QEcrv14pYm5rBNUqS
	 J7PAyGPooC29g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B6C67832DC;
	Fri,  8 May 2026 13:00:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1D5E4358
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 13:00:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7BE0040F70
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 13:00:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0qgBovQiHFiU for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2026 13:00:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8FA5540F54
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8FA5540F54
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8FA5540F54
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 13:00:02 +0000 (UTC)
X-CSE-ConnectionGUID: Ve33xJc7Q+CF+NrlmuIuAw==
X-CSE-MsgGUID: 6ZFjDWSESzGJigYbLqrF6g==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="79199991"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="79199991"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 06:00:03 -0700
X-CSE-ConnectionGUID: K6FcwD4nRSKd5a8e+aoWBw==
X-CSE-MsgGUID: mFhI437QSkmor8bFyqD6Eg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="241730183"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa005.fm.intel.com with ESMTP; 08 May 2026 05:59:57 -0700
Received: from vecna.igk.intel.com (vecna.igk.intel.com [10.123.220.17])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 904462FC44;
 Fri,  8 May 2026 13:59:55 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Michal Schmidt <mschmidt@redhat.com>,
 Jakub Kicinski <kuba@kernel.org>, Jiri Pirko <jiri@resnulli.us>
Cc: netdev@vger.kernel.org, Simon Horman <horms@kernel.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 bruce.richardson@intel.com,
 Vladimir Medvedkin <vladimir.medvedkin@intel.com>,
 padraig.j.connolly@intel.com, ananth.s@intel.com,
 timothy.miskell@intel.com, Jacob Keller <jacob.e.keller@intel.com>,
 Lukasz Czapnik <lukasz.czapnik@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>,
 Tariq Toukan <tariqt@nvidia.com>, Mark Bloch <mbloch@nvidia.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Fri,  8 May 2026 14:42:06 +0200
Message-Id: <20260508124208.11622-14-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20260508124208.11622-1-przemyslaw.kitszel@intel.com>
References: <20260508124208.11622-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778245203; x=1809781203;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NlcT9xFh6hWCogshEOFokLhWIlFsDsMi1nuEY7HZ7iw=;
 b=PiS4o07zMxu3LiT1h/yC9BA4g2QUTC5Y/RfOdeONnrX6vUsg2s6H8Oz3
 TqiKL9o9Sumnc7iYglOj7RcEXdV40KvKKH+rJRqKYUKpvDYuO7AmH1wia
 irtf73DHLmQVUy49TdSE+l1rdhjTbFdaGdKyFW3XHkn7sH1kqiFuwewy6
 eful6PXDXYCxAex1130sD/WCa7NNvbO84Yi3kbk1KYektvyN4MFHMjYuw
 hLP3GcmPeNeM9rp2m6xu1w1fHbQM5HPfZVTAL5Fndd9Nwki/y0p28ErF6
 36feAcJJU5bZz+DsJZoDQmGElW9dIb4csJluC3Y/nnDgCo10g4HsPgMCG
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PiS4o07z
Subject: [Intel-wired-lan] [PATCH iwl-next v1 13/15] devlink: give user
 option to allocate resources
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
X-Rspamd-Queue-Id: 577EC4F6B26
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[25];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_HAM(-0.00)[-0.977];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: no action

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

Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
RFC, Feb '25
https://lore.kernel.org/intel-wired-lan/20250219164410.35665-3-przemyslaw.kitszel@intel.com

I have structured code to just choose "the mode" of operation based on
the presence of .occ_set callback, instead of naming the mode, what,
even if not the most clear code, avoids the need of naming the modes.
---
 include/net/devlink.h  |  7 +++
 net/devlink/resource.c | 98 +++++++++++++++++++++++++++++++++---------
 2 files changed, 85 insertions(+), 20 deletions(-)

diff --git a/include/net/devlink.h b/include/net/devlink.h
index 5d3a1337bfa1..9b777f02beca 100644
--- a/include/net/devlink.h
+++ b/include/net/devlink.h
@@ -420,6 +420,8 @@ devlink_resource_size_params_init(struct devlink_resource_size_params *size_para
 }
 
 typedef u64 devlink_resource_occ_get_t(void *priv);
+typedef int devlink_resource_occ_set_t(u64 size, struct netlink_ext_ack *extack,
+				       void *priv);
 
 #define DEVLINK_RESOURCE_ID_PARENT_TOP 0
 
@@ -1934,6 +1936,11 @@ void devl_resource_occ_get_register(struct devlink *devlink,
 				    void *occ_get_priv);
 void devl_resource_occ_get_unregister(struct devlink *devlink,
 				      u64 resource_id);
+void devl_resource_occ_set_get_register(struct devlink *devlink,
+					u64 resource_id,
+					devlink_resource_occ_set_t *occ_set,
+					devlink_resource_occ_get_t *occ_get,
+					void *occ_priv);
 int devl_params_register(struct devlink *devlink,
 			 const struct devlink_param *params,
 			 size_t params_count);
diff --git a/net/devlink/resource.c b/net/devlink/resource.c
index 3d2f42bc2fb5..2212eff5230d 100644
--- a/net/devlink/resource.c
+++ b/net/devlink/resource.c
@@ -19,7 +19,8 @@
  * @list: parent list
  * @resource_list: list of child resources
  * @occ_get: occupancy getter callback
- * @occ_get_priv: occupancy getter callback priv
+ * @occ_set: occupancy setter callback
+ * @occ_priv: occupancy callbacks priv
  */
 struct devlink_resource {
 	const char *name;
@@ -32,7 +33,8 @@ struct devlink_resource {
 	struct list_head list;
 	struct list_head resource_list;
 	devlink_resource_occ_get_t *occ_get;
-	void *occ_get_priv;
+	devlink_resource_occ_set_t *occ_set;
+	void *occ_priv;
 };
 
 static struct devlink_resource *
@@ -137,6 +139,9 @@ int devlink_nl_resource_set_doit(struct sk_buff *skb, struct genl_info *info)
 	if (err)
 		return err;
 
+	if (resource->occ_set)
+		return resource->occ_set(size, info->extack, resource->occ_priv);
+
 	resource->size_new = size;
 	devlink_resource_validate_children(resource);
 	if (resource->parent)
@@ -162,13 +167,40 @@ devlink_resource_size_params_put(struct devlink_resource *resource,
 	return 0;
 }
 
-static int devlink_resource_occ_put(struct devlink_resource *resource,
-				    struct sk_buff *skb)
+static int
+devlink_resource_occ_size_put_legacy(struct devlink_resource *resource,
+				     struct sk_buff *skb)
 {
-	if (!resource->occ_get)
-		return 0;
-	return devlink_nl_put_u64(skb, DEVLINK_ATTR_RESOURCE_OCC,
-				  resource->occ_get(resource->occ_get_priv));
+	if (devlink_nl_put_u64(skb, DEVLINK_ATTR_RESOURCE_SIZE, resource->size))
+		goto err;
+	if (resource->size != resource->size_new &&
+	    devlink_nl_put_u64(skb, DEVLINK_ATTR_RESOURCE_SIZE_NEW,
+			       resource->size_new))
+		goto err;
+	if (resource->occ_get &&
+	    devlink_nl_put_u64(skb, DEVLINK_ATTR_RESOURCE_OCC,
+			       resource->occ_get(resource->occ_priv)))
+		goto err;
+	if (nla_put_u8(skb, DEVLINK_ATTR_RESOURCE_SIZE_VALID,
+		       resource->size_valid))
+		goto err;
+
+	return 0;
+err:
+	return -EMSGSIZE;
+}
+
+static int devlink_resource_occ_size_put(struct devlink_resource *resource,
+					 struct sk_buff *skb)
+{
+	if (!resource->occ_get || !resource->occ_set)
+		return devlink_resource_occ_size_put_legacy(resource, skb);
+
+	if (nla_put_u8(skb, DEVLINK_ATTR_RESOURCE_SIZE_VALID, true))
+		return -EMSGSIZE;
+
+	return devlink_nl_put_u64(skb, DEVLINK_ATTR_RESOURCE_SIZE,
+				  resource->occ_get(resource->occ_priv));
 }
 
 static int devlink_resource_put(struct devlink *devlink, struct sk_buff *skb,
@@ -183,24 +215,16 @@ static int devlink_resource_put(struct devlink *devlink, struct sk_buff *skb,
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
+	if (devlink_resource_occ_size_put(resource, skb))
 		goto nla_put_failure;
 	if (devlink_resource_size_params_put(resource, skb))
 		goto nla_put_failure;
+
 	if (list_empty(&resource->resource_list))
 		goto out;
 
-	if (nla_put_u8(skb, DEVLINK_ATTR_RESOURCE_SIZE_VALID,
-		       resource->size_valid))
-		goto nla_put_failure;
-
 	child_resource_attr = nla_nest_start_noflag(skb,
 						    DEVLINK_ATTR_RESOURCE_LIST);
 	if (!child_resource_attr)
@@ -634,6 +658,39 @@ int devl_resource_size_get(struct devlink *devlink,
 }
 EXPORT_SYMBOL_GPL(devl_resource_size_get);
 
+/**
+ * devl_resource_occ_set_get_register - register occupancy getter and setter
+ *
+ * @devlink: devlink
+ * @resource_id: resource id
+ * @occ_set: occupancy setter callback
+ * @occ_get: occupancy getter callback
+ * @occ_priv: occupancy getter callback priv
+ *
+ * Setter will be called when the user wants to change the resource size,
+ * getter is called to show the user what is current size of the resource.
+ */
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
+
 /**
  * devl_resource_occ_get_register - register occupancy getter
  *
@@ -657,7 +714,7 @@ void devl_resource_occ_get_register(struct devlink *devlink,
 	WARN_ON(resource->occ_get);
 
 	resource->occ_get = occ_get;
-	resource->occ_get_priv = occ_get_priv;
+	resource->occ_priv = occ_get_priv;
 }
 EXPORT_SYMBOL_GPL(devl_resource_occ_get_register);
 
@@ -678,9 +735,10 @@ void devl_resource_occ_get_unregister(struct devlink *devlink,
 	if (WARN_ON(!resource))
 		return;
 	WARN_ON(!resource->occ_get);
+	WARN_ON(resource->occ_set);
 
 	resource->occ_get = NULL;
-	resource->occ_get_priv = NULL;
+	resource->occ_priv = NULL;
 }
 EXPORT_SYMBOL_GPL(devl_resource_occ_get_unregister);
 
-- 
2.39.3

