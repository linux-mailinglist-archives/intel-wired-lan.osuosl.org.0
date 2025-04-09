Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 727F2A82A68
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Apr 2025 17:32:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 33E63812BE;
	Wed,  9 Apr 2025 15:32:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IxwxyplUBNnD; Wed,  9 Apr 2025 15:32:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7F5F582128
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744212730;
	bh=6Ii6OUPE3lBwub3Af6bZeIwnmgobtDKTSCn+OqtewvQ=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4ji9n3MgH3fYvdGmOMsdk2uJTwrqkaXZgl5iyuHaJx5kOXdw9Kfu8uU5PVrS+oRKx
	 0aT5Bhof3MHYbGvK2v6m1sh43Qk3jugzGFDHaShmOzbFdOoUwE4kv0onJX80+cNk4c
	 KCj7m4sOLUKzaMxJcltbuygfkc3Ph7qV4mEHZfEYUx3BHrlYBo/5JS+YvBiX+Kgwsd
	 L8XAqFGUscBydBUm7Grc3O38nCpGvgCwdtWo7zWT6qKzvgscd4qrPdmjqiuEAC+YZo
	 BWsCUqzFGYMp/vvsmkCPS+vnvuUTZOTCfZ8aIn2t/tKAZfBfpXFKsvZT8DK7VBzl/1
	 DYInrot41PEMg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7F5F582128;
	Wed,  9 Apr 2025 15:32:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 39109D6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 15:32:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1F99A61013
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 15:32:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ARSh6EryYo1P for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Apr 2025 15:32:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6BC1F60703
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6BC1F60703
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6BC1F60703
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 15:32:08 +0000 (UTC)
X-CSE-ConnectionGUID: xJbPPIZMQhaq8fT2FpWfPQ==
X-CSE-MsgGUID: KTGUqJ+1RS+GxbVXUPHioQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11399"; a="71072152"
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="71072152"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 08:32:08 -0700
X-CSE-ConnectionGUID: 18VKBc06QxeoDGgjzhBDJg==
X-CSE-MsgGUID: FH97/4laRXGzyBa0oumc1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="151796145"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by fmviesa002.fm.intel.com with ESMTP; 09 Apr 2025 08:32:05 -0700
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
Date: Wed,  9 Apr 2025 17:25:57 +0200
Message-Id: <20250409152558.1007335-4-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20250409152558.1007335-1-arkadiusz.kubalewski@intel.com>
References: <20250409152558.1007335-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744212728; x=1775748728;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yKFsUwl/VeYLcbMN+FoLUcPKvtWP6Dd9f7S8pd3B4Bc=;
 b=YyBJBtK4iiLSXDm7Pq4SlftK6WwhgOhB2yQrSo4dGxgr8JfIxwNIbzn6
 E5Vd10FG9xTqcAJ1T2mcuvBcCMvFo1gmbKW2M3BZgc7MBCxL4IcsIMoof
 oWL4EqLrx3ByzszA9CMm6O71vldDMYTtmVF4nkdHoZpZzSOb956miuqYq
 LXM/04RQ9Nhx+nSDyC1DNlPyujbjS6bfAC0Doa/ZbjLgAR1qq31RIoFv2
 M4f6K2R+J84FDk/MKqcNq2IBOPWWe6RVxbSmlNdQE6u6pW0OQPNa25iLB
 WwqUmmb1a5TX0RsIEBUDqfbQ+PsUXu2YcZRpSm4TAFaaezXWjFUsJR03K
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YyBJBtK4
Subject: [Intel-wired-lan] [PATCH net-next v1 3/4] dpll: features_get/set
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
 drivers/dpll/dpll_netlink.c | 76 ++++++++++++++++++++++++++++++++++++-
 include/linux/dpll.h        |  4 ++
 2 files changed, 78 insertions(+), 2 deletions(-)

diff --git a/drivers/dpll/dpll_netlink.c b/drivers/dpll/dpll_netlink.c
index 41aed0d29be2..41eb848ce021 100644
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
@@ -593,6 +612,9 @@ dpll_device_get_one(struct dpll_device *dpll, struct sk_buff *msg,
 		return -EMSGSIZE;
 	if (nla_put_u32(msg, DPLL_A_CAPABILITIES, dpll->capabilities))
 		return -EMSGSIZE;
+	ret = dpll_msg_add_features(msg, dpll, extack);
+	if (ret)
+		return ret;
 
 	return 0;
 }
@@ -748,6 +770,33 @@ int dpll_pin_change_ntf(struct dpll_pin *pin)
 }
 EXPORT_SYMBOL_GPL(dpll_pin_change_ntf);
 
+static int
+dpll_features_set(struct dpll_device *dpll, struct nlattr *a,
+		  struct netlink_ext_ack *extack)
+{
+	const struct dpll_device_ops *ops = dpll_device_ops(dpll);
+	u32 features = nla_get_u32(a), old_features;
+	int ret;
+
+	if (features && !(dpll->capabilities & features)) {
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
@@ -1535,10 +1584,33 @@ int dpll_nl_device_get_doit(struct sk_buff *skb, struct genl_info *info)
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
index dde8dee83dc6..5432d8479ed5 100644
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
-- 
2.38.1

