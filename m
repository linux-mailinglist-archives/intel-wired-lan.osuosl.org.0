Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A00AD764B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Jun 2025 17:34:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C6EB381FF5;
	Thu, 12 Jun 2025 15:34:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BdYkBScxokTw; Thu, 12 Jun 2025 15:34:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 190B382034
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749742491;
	bh=RbuYMM4ouWesxTcEJmwsDKKvLgeic0+xh3ZK+w9iw6o=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yAzY71tzXF8k2iUa5yeLUCvtroh9Z5lLIsK0+SiSmTP7zHLmDrfdZt7VupgNQ1/TW
	 6uwWv4BtQHIxZc/5I0LAEddptVNURyK9H/5t9hu6ilaEmPWsbBAQ7l/9z3MnABs695
	 gvvOZwr1UgFz+Nh86LtPh+WKa5lVFz4hYXJqpopTjxzuISm/8UlVJBiyTn2WHz7dgF
	 bO5cOD0pQEX3yMlv3f7Y/I53K9F+PGxw5fUqs7AwJcL8BQDY3Gmm+y5yme7cAw1QrR
	 vgmQab8zNy0G/b4fzIVHlyh7gbUc/v56lAzpkyBX++19+DcI+WSGvlI/E4gEAmtrlZ
	 t3WdT0IPQAwkw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 190B382034;
	Thu, 12 Jun 2025 15:34:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1BAF81E0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 15:34:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0DD5B40029
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 15:34:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VH0rPL_c4q4V for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Jun 2025 15:34:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 07AD6400D6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 07AD6400D6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 07AD6400D6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 15:34:47 +0000 (UTC)
X-CSE-ConnectionGUID: pvAYDKriQs6B7xvyVtj2tw==
X-CSE-MsgGUID: ZSyNIcC5R4e1MmiZtCDSkA==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="51158664"
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="51158664"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 08:34:47 -0700
X-CSE-ConnectionGUID: yD96rCnPQBirbgisAh42LA==
X-CSE-MsgGUID: a3DEEEMgS+6NJdG28rZ3HQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="152546859"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by orviesa004.jf.intel.com with ESMTP; 12 Jun 2025 08:34:43 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: donald.hunter@gmail.com, kuba@kernel.org, davem@davemloft.net,
 edumazet@google.com, pabeni@redhat.com, horms@kernel.org,
 vadim.fedorenko@linux.dev, jiri@resnulli.us, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch,
 aleksandr.loktionov@intel.com, milena.olech@intel.com, corbet@lwn.net
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-doc@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Jiri Pirko <jiri@nvidia.com>
Date: Thu, 12 Jun 2025 17:28:34 +0200
Message-Id: <20250612152835.1703397-3-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20250612152835.1703397-1-arkadiusz.kubalewski@intel.com>
References: <20250612152835.1703397-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749742488; x=1781278488;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ulq1yqKmf8fL2jCSz7K+/u1HCcvKOUaDR5zV9O5dvCA=;
 b=gOv2tYLOF1Ar62aX2VjnamjRXY84AGlXybRUEEIPMBovb7kvAgxZXDYT
 jWr2WBSWdfiWQ1bAHsmU4rxjh7//Y2Au+Pr2dg0wTto4Re6498Ll4fLUX
 xbIR5l9ywpaifs2OSH3RJQ7hmrue75XpJEUlFDIdSDhrcHjMfNqdQC7Dt
 m1ZvnRfCFCskJuOYbXobrt4UkbNqBrSSCvKYsYhTE/bUunUz29ExjjaW9
 NF6QGZACgJXOWl9T16xkBZL7OZl5fkBRaMvKpf0efKOXSzZe3oQh7kDwA
 HTEldvwGImDn7yB8+/UCezpCrB7GOAkkdySFhFOdd1J5QhIB+srE204I4
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gOv2tYLO
Subject: [Intel-wired-lan] [PATCH net-next v6 2/3] dpll: add
 phase_offset_monitor_get/set callback ops
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

Add new callback operations for a dpll device:
- phase_offset_monitor_get(..) - to obtain current state of phase offset
  monitor feature from dpll device,
- phase_offset_monitor_set(..) - to allow feature configuration.

Obtain the feature state value using the get callback and provide it to
the user if the device driver implements callbacks.

Execute the set callback upon user requests.

Reviewed-by: Milena Olech <milena.olech@intel.com>
Reviewed-by: Jiri Pirko <jiri@nvidia.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
v6:
- rebase.
---
 drivers/dpll/dpll_netlink.c | 69 +++++++++++++++++++++++++++++++++++--
 include/linux/dpll.h        |  8 +++++
 2 files changed, 75 insertions(+), 2 deletions(-)

diff --git a/drivers/dpll/dpll_netlink.c b/drivers/dpll/dpll_netlink.c
index c130f87147fa..4619aaa18b9c 100644
--- a/drivers/dpll/dpll_netlink.c
+++ b/drivers/dpll/dpll_netlink.c
@@ -126,6 +126,26 @@ dpll_msg_add_mode_supported(struct sk_buff *msg, struct dpll_device *dpll,
 	return 0;
 }
 
+static int
+dpll_msg_add_phase_offset_monitor(struct sk_buff *msg, struct dpll_device *dpll,
+				  struct netlink_ext_ack *extack)
+{
+	const struct dpll_device_ops *ops = dpll_device_ops(dpll);
+	enum dpll_feature_state state;
+	int ret;
+
+	if (ops->phase_offset_monitor_set && ops->phase_offset_monitor_get) {
+		ret = ops->phase_offset_monitor_get(dpll, dpll_priv(dpll),
+						    &state, extack);
+		if (ret)
+			return ret;
+		if (nla_put_u32(msg, DPLL_A_PHASE_OFFSET_MONITOR, state))
+			return -EMSGSIZE;
+	}
+
+	return 0;
+}
+
 static int
 dpll_msg_add_lock_status(struct sk_buff *msg, struct dpll_device *dpll,
 			 struct netlink_ext_ack *extack)
@@ -591,6 +611,9 @@ dpll_device_get_one(struct dpll_device *dpll, struct sk_buff *msg,
 		return ret;
 	if (nla_put_u32(msg, DPLL_A_TYPE, dpll->type))
 		return -EMSGSIZE;
+	ret = dpll_msg_add_phase_offset_monitor(msg, dpll, extack);
+	if (ret)
+		return ret;
 
 	return 0;
 }
@@ -746,6 +769,31 @@ int dpll_pin_change_ntf(struct dpll_pin *pin)
 }
 EXPORT_SYMBOL_GPL(dpll_pin_change_ntf);
 
+static int
+dpll_phase_offset_monitor_set(struct dpll_device *dpll, struct nlattr *a,
+			      struct netlink_ext_ack *extack)
+{
+	const struct dpll_device_ops *ops = dpll_device_ops(dpll);
+	enum dpll_feature_state state = nla_get_u32(a), old_state;
+	int ret;
+
+	if (!(ops->phase_offset_monitor_set && ops->phase_offset_monitor_get)) {
+		NL_SET_ERR_MSG_ATTR(extack, a, "dpll device not capable of phase offset monitor");
+		return -EOPNOTSUPP;
+	}
+	ret = ops->phase_offset_monitor_get(dpll, dpll_priv(dpll), &old_state,
+					    extack);
+	if (ret) {
+		NL_SET_ERR_MSG(extack, "unable to get current state of phase offset monitor");
+		return ret;
+	}
+	if (state == old_state)
+		return 0;
+
+	return ops->phase_offset_monitor_set(dpll, dpll_priv(dpll), state,
+					     extack);
+}
+
 static int
 dpll_pin_freq_set(struct dpll_pin *pin, struct nlattr *a,
 		  struct netlink_ext_ack *extack)
@@ -1533,10 +1581,27 @@ int dpll_nl_device_get_doit(struct sk_buff *skb, struct genl_info *info)
 	return genlmsg_reply(msg, info);
 }
 
+static int
+dpll_set_from_nlattr(struct dpll_device *dpll, struct genl_info *info)
+{
+	int ret;
+
+	if (info->attrs[DPLL_A_PHASE_OFFSET_MONITOR]) {
+		struct nlattr *a = info->attrs[DPLL_A_PHASE_OFFSET_MONITOR];
+
+		ret = dpll_phase_offset_monitor_set(dpll, a, info->extack);
+		if (ret)
+			return ret;
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
index 5e4f9ab1cf75..6ad6c2968a28 100644
--- a/include/linux/dpll.h
+++ b/include/linux/dpll.h
@@ -30,6 +30,14 @@ struct dpll_device_ops {
 				       void *dpll_priv,
 				       unsigned long *qls,
 				       struct netlink_ext_ack *extack);
+	int (*phase_offset_monitor_set)(const struct dpll_device *dpll,
+					void *dpll_priv,
+					enum dpll_feature_state state,
+					struct netlink_ext_ack *extack);
+	int (*phase_offset_monitor_get)(const struct dpll_device *dpll,
+					void *dpll_priv,
+					enum dpll_feature_state *state,
+					struct netlink_ext_ack *extack);
 };
 
 struct dpll_pin_ops {
-- 
2.38.1

