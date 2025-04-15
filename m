Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EF6FA8A6AD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Apr 2025 20:23:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9763E612A9;
	Tue, 15 Apr 2025 18:23:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6oCK7ZRmLr69; Tue, 15 Apr 2025 18:23:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CB41F612AD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744741389;
	bh=hVTjylmB1tgROWMtqtq7HqWWnUtd+x/ECAoWb8SrJ5Y=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CqERfd0/sH61I8rPiscZ7CVojgBS4M3f7nDly3HGweN7zoX/dqRxL86rlmkTM+cNn
	 mJCQ3ZjwqPobu6xHwaB7fmTGdM8Azpry0rse/eDBCCmefMehjncEHhrBQOu+kjF1sK
	 lJItahTijSA39tjCMAlxAzOl3WUpMCL9dz4fkRGAk/gDq1eSyJGhlthJd67b+fHA6N
	 HBZeB0REmshFa1MbcehVdF8NIOEkFarn2pPwg8AXxUYZknO5zIMmmakjND9MuShY0k
	 GUe9c7jtfKHVafq8xrdEpmTkhCbPkRPCEhkWfquvw2MPFervAcNteRERCOb3wKMJAA
	 bJD6PU9vtJWhg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CB41F612AD;
	Tue, 15 Apr 2025 18:23:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id CC4AA108
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 18:23:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6783480E68
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 18:23:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ihQeh5MnNdwG for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Apr 2025 18:23:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9676880FD7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9676880FD7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9676880FD7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 18:23:05 +0000 (UTC)
X-CSE-ConnectionGUID: GUCqF5yBRj2lJnzl5XCTCg==
X-CSE-MsgGUID: k8fHg0hXSIWeSss027Rbcg==
X-IronPort-AV: E=McAfee;i="6700,10204,11404"; a="45981321"
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="45981321"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 11:23:06 -0700
X-CSE-ConnectionGUID: M0jxND/tTFS7TKdO+zmVXQ==
X-CSE-MsgGUID: l/2gZO9jQ7GR30m4IjWDhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="130513281"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by fmviesa008.fm.intel.com with ESMTP; 15 Apr 2025 11:21:46 -0700
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
Date: Tue, 15 Apr 2025 20:15:42 +0200
Message-Id: <20250415181543.1072342-4-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20250415181543.1072342-1-arkadiusz.kubalewski@intel.com>
References: <20250415181543.1072342-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744741386; x=1776277386;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Dr1ZP/8lj4jZAjLB/gS4x7QZdjf3iMEQwGjLQa/mRYk=;
 b=CUVnkZ4OCuBVveNbyRTRGsmyoYPzhY8BdPJ31FyeD15WNDrDxXmEmg7P
 DXnf7XByKvz5eQezy/jJfZa8PG+Vf9zTl+NpgRa0mgo2fd2RA+DIREZax
 C/aMM5fnic8dil9P1yoLag52hbF7E/gm4+VeeAb52F9qD7FrLB5L2KQg2
 C9M/qbZzn4lvQa9hwDic/UVyV923A28bYhN4RpARxfFjFNX8uR4UWT2+e
 kIJeeh9LIw0a0ku4ioRk9Dst/PIk1iLQY3GtWm5PLVuel9Tpbjn5nhETR
 8uljlwWYgmEGcT768AE4OFVDIt4TwEzpyQEF4gcDBJHHU5Mo30KE0N/dv
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CUVnkZ4O
Subject: [Intel-wired-lan] [PATCH net-next v2 3/4] dpll: features_get/set
 callbacks
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

Add new callback ops for a dpll device.
- features_get(..) - to obtain currently configured features from dpll
  device,
- feature_set(..) - to allow dpll device features configuration.
Provide features attribute and allow control over it to the users if
device driver implements callbacks.

Reviewed-by: Milena Olech <milena.olech@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
v2:
- adapt changes and align wiht new dpll_device_info struct
---
 drivers/dpll/dpll_netlink.c | 79 ++++++++++++++++++++++++++++++++++++-
 include/linux/dpll.h        |  5 +++
 2 files changed, 82 insertions(+), 2 deletions(-)

diff --git a/drivers/dpll/dpll_netlink.c b/drivers/dpll/dpll_netlink.c
index 2de9ec08d551..acfdd87fcffe 100644
--- a/drivers/dpll/dpll_netlink.c
+++ b/drivers/dpll/dpll_netlink.c
@@ -126,6 +126,25 @@ dpll_msg_add_mode_supported(struct sk_buff *msg, struct dpll_device *dpll,
 	return 0;
 }
 
+static int
+dpll_msg_add_features(struct sk_buff *msg, struct dpll_device *dpll,
+		      struct netlink_ext_ack *extack)
+{
+	const struct dpll_device_ops *ops = dpll_device_ops(dpll);
+	u32 features;
+	int ret;
+
+	if (!ops->features_get)
+		return 0;
+	ret = ops->features_get(dpll, dpll_priv(dpll), &features, extack);
+	if (ret)
+		return ret;
+	if (nla_put_u32(msg, DPLL_A_FEATURES, features))
+		return -EMSGSIZE;
+
+	return 0;
+}
+
 static int
 dpll_msg_add_lock_status(struct sk_buff *msg, struct dpll_device *dpll,
 			 struct netlink_ext_ack *extack)
@@ -592,6 +611,11 @@ dpll_device_get_one(struct dpll_device *dpll, struct sk_buff *msg,
 		return ret;
 	if (nla_put_u32(msg, DPLL_A_TYPE, info->type))
 		return -EMSGSIZE;
+	if (nla_put_u32(msg, DPLL_A_CAPABILITIES, info->capabilities))
+		return -EMSGSIZE;
+	ret = dpll_msg_add_features(msg, dpll, extack);
+	if (ret)
+		return ret;
 
 	return 0;
 }
@@ -747,6 +771,34 @@ int dpll_pin_change_ntf(struct dpll_pin *pin)
 }
 EXPORT_SYMBOL_GPL(dpll_pin_change_ntf);
 
+static int
+dpll_features_set(struct dpll_device *dpll, struct nlattr *a,
+		  struct netlink_ext_ack *extack)
+{
+	const struct dpll_device_info *info = dpll_device_info(dpll);
+	const struct dpll_device_ops *ops = dpll_device_ops(dpll);
+	u32 features = nla_get_u32(a), old_features;
+	int ret;
+
+	if (features && !(info->capabilities & features)) {
+		NL_SET_ERR_MSG_ATTR(extack, a, "dpll device not capable of this features");
+		return -EOPNOTSUPP;
+	}
+	if (!ops->features_get || !ops->features_set) {
+		NL_SET_ERR_MSG(extack, "dpll device not supporting any features");
+		return -EOPNOTSUPP;
+	}
+	ret = ops->features_get(dpll, dpll_priv(dpll), &old_features, extack);
+	if (ret) {
+		NL_SET_ERR_MSG(extack, "unable to get old features value");
+		return ret;
+	}
+	if (old_features == features)
+		return -EINVAL;
+
+	return ops->features_set(dpll, dpll_priv(dpll), features, extack);
+}
+
 static int
 dpll_pin_freq_set(struct dpll_pin *pin, struct nlattr *a,
 		  struct netlink_ext_ack *extack)
@@ -1536,10 +1588,33 @@ int dpll_nl_device_get_doit(struct sk_buff *skb, struct genl_info *info)
 	return genlmsg_reply(msg, info);
 }
 
+static int
+dpll_set_from_nlattr(struct dpll_device *dpll, struct genl_info *info)
+{
+	struct nlattr *a;
+	int rem, ret;
+
+	nla_for_each_attr(a, genlmsg_data(info->genlhdr),
+			  genlmsg_len(info->genlhdr), rem) {
+		switch (nla_type(a)) {
+		case DPLL_A_FEATURES:
+			ret = dpll_features_set(dpll, a, info->extack);
+			if (ret)
+				return ret;
+			break;
+		default:
+			break;
+		}
+	}
+
+	return 0;
+}
+
 int dpll_nl_device_set_doit(struct sk_buff *skb, struct genl_info *info)
 {
-	/* placeholder for set command */
-	return 0;
+	struct dpll_device *dpll = info->user_ptr[0];
+
+	return dpll_set_from_nlattr(dpll, info);
 }
 
 int dpll_nl_device_get_dumpit(struct sk_buff *skb, struct netlink_callback *cb)
diff --git a/include/linux/dpll.h b/include/linux/dpll.h
index 0489464af958..90c743daf64b 100644
--- a/include/linux/dpll.h
+++ b/include/linux/dpll.h
@@ -30,6 +30,10 @@ struct dpll_device_ops {
 				       void *dpll_priv,
 				       unsigned long *qls,
 				       struct netlink_ext_ack *extack);
+	int (*features_set)(const struct dpll_device *dpll, void *dpll_priv,
+			    u32 features, struct netlink_ext_ack *extack);
+	int (*features_get)(const struct dpll_device *dpll, void *dpll_priv,
+			    u32 *features, struct netlink_ext_ack *extack);
 };
 
 struct dpll_pin_ops {
@@ -99,6 +103,7 @@ struct dpll_pin_ops {
 
 struct dpll_device_info {
 	enum dpll_type type;
+	u32 capabilities;
 	const struct dpll_device_ops *ops;
 };
 
-- 
2.38.1

