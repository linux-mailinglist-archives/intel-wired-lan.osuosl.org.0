Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B658915BA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Mar 2024 10:25:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5047B60EDE;
	Fri, 29 Mar 2024 09:25:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tvlaqmyqfJRQ; Fri, 29 Mar 2024 09:25:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 23B8760EDF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711704354;
	bh=g6geYVudhJER+9Er7opCMXUNtDjcxZ6yT0NWGH6zS2g=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eGTz9jP/pYAMBqYKIqbTAqgz43UHs68usG8+9Psc0rpi2kt1RE+joNN54LuCh25BV
	 LUT+DQsP6bFjEGRaza5XJPABdyHBfp3tr9rjLHGtTJt6/ULUxknQHcrFpaGGsQFfZM
	 L4kCFbHTw9FApWFQrN6WtRJqcE97OJvMK21H1Tq7e752GtVP0Ayw6L97t8yWzltTK8
	 /GruxHNfjh8GGN6bA/9k21uefS6IKM8Ar78K4Wl4WW2j9MQh5UR2T6eW95+5yNSEon
	 b90GeEAo8RJFV5o1af8WlgU+6uC5snI/osgNR8Wsoj0e2gD3KKdvB8fWzcu9yi8O3X
	 /PN44T8sFNFTQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 23B8760EDF;
	Fri, 29 Mar 2024 09:25:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 83BC41BF288
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 09:25:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7DA9760E8B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 09:25:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6COxNieRL_g9 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Mar 2024 09:25:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=wojciech.drewek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0EC9060E7C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0EC9060E7C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0EC9060E7C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 09:25:46 +0000 (UTC)
X-CSE-ConnectionGUID: dfJtoJt4Siit7pN4p3fz7g==
X-CSE-MsgGUID: xxSAbxwrSnCKfsoTMk+D3Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="7107031"
X-IronPort-AV: E=Sophos;i="6.07,164,1708416000"; 
   d="scan'208";a="7107031"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2024 02:25:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,164,1708416000"; d="scan'208";a="16986851"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa008.fm.intel.com with ESMTP; 29 Mar 2024 02:25:36 -0700
Received: from rozewie.igk.intel.com (unknown [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id C1BA534940;
 Fri, 29 Mar 2024 09:25:32 +0000 (GMT)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: netdev@vger.kernel.org
Date: Fri, 29 Mar 2024 10:23:20 +0100
Message-Id: <20240329092321.16843-3-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240329092321.16843-1-wojciech.drewek@intel.com>
References: <20240329092321.16843-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711704347; x=1743240347;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=j03h2EBqpxhB2YQM+qMmGz+WDlqkzltckMh7LZmivQk=;
 b=FzDFMW5qlx1k6rMu8HO9U1mCPNG+zGKa62rDN7bOL11N9CLFAg67YHFq
 fuVOheNO1HnFk6nF7Gio3g7PrUNWUghcqDmQEye3iVNPK6nE0rBb1xo/n
 FjfYbpnWk1qYtEg8DPq625BZDlI97kCTJytozSIsMUzZfQOgBjtu1jYEb
 7s5MEC/E7wNour8rZqlnMeNTQiF2t+4oHhwPQtDD4pxEHAy1BKujwp1oV
 T5CN36/RAr6uywI/pkguTOqgtbD1Gm3PChF/psxC5h5PTynDB8JXw1fcb
 9x3Z1RQglwyWXGTbBYqiihiQO36Tj4Xlhknk4mNi/ZpxElc03xFvXAwBL
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FzDFMW5q
Subject: [Intel-wired-lan] [PATCH net-next 2/3] ethtool: Introduce max power
 support
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
Cc: simon.horman@corigine.com, idosch@nvidia.com, edumazet@google.com,
 marcin.szycik@linux.intel.com, anthony.l.nguyen@intel.com, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Some modules use nonstandard power levels. Adjust ethtool
module implementation to support new attributes that will allow user
to change maximum power.

Add three new get attributes:
ETHTOOL_A_MODULE_MAX_POWER_SET (used for set as well) - currently set
  maximum power in the cage
ETHTOOL_A_MODULE_MIN_POWER_ALLOWED - minimum power allowed in the
  cage reported by device
ETHTOOL_A_MODULE_MAX_POWER_ALLOWED - maximum power allowed in the
  cage reported by device

Add two new set attributes:
ETHTOOL_A_MODULE_MAX_POWER_SET (used for get as well) - change
  maximum power in the cage to the given value (milliwatts)
ETHTOOL_A_MODULE_MAX_POWER_RESET - reset maximum power setting to the
  default value

Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
 include/linux/ethtool.h              | 17 +++++--
 include/uapi/linux/ethtool_netlink.h |  4 ++
 net/ethtool/module.c                 | 74 ++++++++++++++++++++++++++--
 net/ethtool/netlink.h                |  2 +-
 4 files changed, 87 insertions(+), 10 deletions(-)

diff --git a/include/linux/ethtool.h b/include/linux/ethtool.h
index f3af6b31c9f1..74ed8997443a 100644
--- a/include/linux/ethtool.h
+++ b/include/linux/ethtool.h
@@ -510,10 +510,18 @@ struct ethtool_module_eeprom {
  * @policy: The power mode policy enforced by the host for the plug-in module.
  * @mode: The operational power mode of the plug-in module. Should be filled by
  *	device drivers on get operations.
+ * @min_pwr_allowed: minimum power allowed in the cage reported by device
+ * @max_pwr_allowed: maximum power allowed in the cage reported by device
+ * @max_pwr_set: maximum power currently set in the cage
+ * @max_pwr_reset: restore default minimum power
  */
 struct ethtool_module_power_params {
 	enum ethtool_module_power_mode_policy policy;
 	enum ethtool_module_power_mode mode;
+	u32 min_pwr_allowed;
+	u32 max_pwr_allowed;
+	u32 max_pwr_set;
+	u8 max_pwr_reset;
 };
 
 /**
@@ -804,11 +812,12 @@ struct ethtool_rxfh_param {
  * @get_eth_ctrl_stats: Query some of the IEEE 802.3 MAC Ctrl statistics.
  * @get_rmon_stats: Query some of the RMON (RFC 2819) statistics.
  *	Set %ranges to a pointer to zero-terminated array of byte ranges.
- * @get_module_power_cfg: Get the power mode policy for the plug-in module
- *	used by the network device and its operational power mode, if
- *	plugged-in.
+ * @get_module_power_cfg: Get the power configuration for the plug-in module
+ *	used by the network device which includes: its power mode policy and
+ *	operational power mode, if plugged-in; maximum power settings
+ *	(min and max allowed power and max power currently set)
  * @set_module_power_cfg: Set the power mode policy for the plug-in module
- *	used by the network device.
+ *	used by the network device and its maximum power.
  * @get_mm: Query the 802.3 MAC Merge layer state.
  * @set_mm: Set the 802.3 MAC Merge layer parameters.
  * @get_mm_stats: Query the 802.3 MAC Merge layer statistics.
diff --git a/include/uapi/linux/ethtool_netlink.h b/include/uapi/linux/ethtool_netlink.h
index 3f89074aa06c..f7cd446b2a83 100644
--- a/include/uapi/linux/ethtool_netlink.h
+++ b/include/uapi/linux/ethtool_netlink.h
@@ -882,6 +882,10 @@ enum {
 	ETHTOOL_A_MODULE_HEADER,		/* nest - _A_HEADER_* */
 	ETHTOOL_A_MODULE_POWER_MODE_POLICY,	/* u8 */
 	ETHTOOL_A_MODULE_POWER_MODE,		/* u8 */
+	ETHTOOL_A_MODULE_MAX_POWER_SET,		/* u32 */
+	ETHTOOL_A_MODULE_MIN_POWER_ALLOWED,	/* u32 */
+	ETHTOOL_A_MODULE_MAX_POWER_ALLOWED,	/* u32 */
+	ETHTOOL_A_MODULE_MAX_POWER_RESET,	/* u8 */
 
 	/* add new constants above here */
 	__ETHTOOL_A_MODULE_CNT,
diff --git a/net/ethtool/module.c b/net/ethtool/module.c
index 193ca4642e04..9f63a276357e 100644
--- a/net/ethtool/module.c
+++ b/net/ethtool/module.c
@@ -69,6 +69,15 @@ static int module_reply_size(const struct ethnl_req_info *req_base,
 	if (data->power.mode)
 		len += nla_total_size(sizeof(u8));	/* _MODULE_POWER_MODE */
 
+	if (data->power.min_pwr_allowed)
+		len += nla_total_size(sizeof(u32));	/* _MIN_POWER_ALLOWED */
+
+	if (data->power.max_pwr_allowed)
+		len += nla_total_size(sizeof(u32));	/* _MAX_POWER_ALLOWED */
+
+	if (data->power.max_pwr_set)
+		len += nla_total_size(sizeof(u32));	/* _MAX_POWER_SET */
+
 	return len;
 }
 
@@ -77,6 +86,7 @@ static int module_fill_reply(struct sk_buff *skb,
 			     const struct ethnl_reply_data *reply_base)
 {
 	const struct module_reply_data *data = MODULE_REPDATA(reply_base);
+	u32 temp;
 
 	if (data->power.policy &&
 	    nla_put_u8(skb, ETHTOOL_A_MODULE_POWER_MODE_POLICY,
@@ -87,16 +97,30 @@ static int module_fill_reply(struct sk_buff *skb,
 	    nla_put_u8(skb, ETHTOOL_A_MODULE_POWER_MODE, data->power.mode))
 		return -EMSGSIZE;
 
+	temp = data->power.min_pwr_allowed;
+	if (temp && nla_put_u32(skb, ETHTOOL_A_MODULE_MIN_POWER_ALLOWED, temp))
+		return -EMSGSIZE;
+
+	temp = data->power.max_pwr_allowed;
+	if (temp && nla_put_u32(skb, ETHTOOL_A_MODULE_MAX_POWER_ALLOWED, temp))
+		return -EMSGSIZE;
+
+	temp = data->power.max_pwr_set;
+	if (temp && nla_put_u32(skb, ETHTOOL_A_MODULE_MAX_POWER_SET, temp))
+		return -EMSGSIZE;
+
 	return 0;
 }
 
 /* MODULE_SET */
 
-const struct nla_policy ethnl_module_set_policy[ETHTOOL_A_MODULE_POWER_MODE_POLICY + 1] = {
+const struct nla_policy ethnl_module_set_policy[ETHTOOL_A_MODULE_MAX + 1] = {
 	[ETHTOOL_A_MODULE_HEADER] = NLA_POLICY_NESTED(ethnl_header_policy),
 	[ETHTOOL_A_MODULE_POWER_MODE_POLICY] =
 		NLA_POLICY_RANGE(NLA_U8, ETHTOOL_MODULE_POWER_MODE_POLICY_HIGH,
 				 ETHTOOL_MODULE_POWER_MODE_POLICY_AUTO),
+	[ETHTOOL_A_MODULE_MAX_POWER_SET] = { .type = NLA_U32 },
+	[ETHTOOL_A_MODULE_MAX_POWER_RESET] = { .type = NLA_U8 },
 };
 
 static int
@@ -106,7 +130,9 @@ ethnl_set_module_validate(struct ethnl_req_info *req_info,
 	const struct ethtool_ops *ops = req_info->dev->ethtool_ops;
 	struct nlattr **tb = info->attrs;
 
-	if (!tb[ETHTOOL_A_MODULE_POWER_MODE_POLICY])
+	if (!tb[ETHTOOL_A_MODULE_POWER_MODE_POLICY] &&
+	    !tb[ETHTOOL_A_MODULE_MAX_POWER_SET] &&
+	    !tb[ETHTOOL_A_MODULE_MAX_POWER_RESET])
 		return 0;
 
 	if (!ops->get_module_power_cfg || !ops->set_module_power_cfg) {
@@ -117,26 +143,64 @@ ethnl_set_module_validate(struct ethnl_req_info *req_info,
 	return 1;
 }
 
+static void
+ethnl_update_policy(enum ethtool_module_power_mode_policy *dst,
+		    const struct nlattr *attr, bool *mod)
+{
+	u8 val = *dst;
+
+	ethnl_update_u8(&val, attr, mod);
+
+	if (mod)
+		*dst = val;
+}
+
 static int
 ethnl_set_module(struct ethnl_req_info *req_info, struct genl_info *info)
 {
 	struct ethtool_module_power_params power = {};
 	struct ethtool_module_power_params power_new;
-	const struct ethtool_ops *ops;
 	struct net_device *dev = req_info->dev;
 	struct nlattr **tb = info->attrs;
+	const struct ethtool_ops *ops;
 	int ret;
+	bool mod;
 
 	ops = dev->ethtool_ops;
 
-	power_new.policy = nla_get_u8(tb[ETHTOOL_A_MODULE_POWER_MODE_POLICY]);
 	ret = ops->get_module_power_cfg(dev, &power, info->extack);
 	if (ret < 0)
 		return ret;
 
-	if (power_new.policy == power.policy)
+	power_new.max_pwr_set = power.max_pwr_set;
+	power_new.policy = power.policy;
+
+	ethnl_update_u32(&power_new.max_pwr_set,
+			 tb[ETHTOOL_A_MODULE_MAX_POWER_SET], &mod);
+
+	if (mod) {
+		if (power_new.max_pwr_set > power.max_pwr_allowed) {
+			NL_SET_ERR_MSG(info->extack, "Provided value is higher than maximum allowed");
+			return -EINVAL;
+		} else if (power_new.max_pwr_set < power.min_pwr_allowed) {
+			NL_SET_ERR_MSG(info->extack, "Provided value is lower than minimum allowed");
+			return -EINVAL;
+		}
+	}
+
+	ethnl_update_policy(&power_new.policy,
+			    tb[ETHTOOL_A_MODULE_POWER_MODE_POLICY], &mod);
+	ethnl_update_u8(&power_new.max_pwr_reset,
+			tb[ETHTOOL_A_MODULE_MAX_POWER_RESET], &mod);
+
+	if (!mod)
 		return 0;
 
+	if (power_new.max_pwr_reset && power_new.max_pwr_set) {
+		NL_SET_ERR_MSG(info->extack, "Maximum power set and reset cannot be used at the same time");
+		return 0;
+	}
+
 	ret = ops->set_module_power_cfg(dev, &power_new, info->extack);
 	return ret < 0 ? ret : 1;
 }
diff --git a/net/ethtool/netlink.h b/net/ethtool/netlink.h
index 9a333a8d04c1..6282f84811ce 100644
--- a/net/ethtool/netlink.h
+++ b/net/ethtool/netlink.h
@@ -432,7 +432,7 @@ extern const struct nla_policy ethnl_module_eeprom_get_policy[ETHTOOL_A_MODULE_E
 extern const struct nla_policy ethnl_stats_get_policy[ETHTOOL_A_STATS_SRC + 1];
 extern const struct nla_policy ethnl_phc_vclocks_get_policy[ETHTOOL_A_PHC_VCLOCKS_HEADER + 1];
 extern const struct nla_policy ethnl_module_get_policy[ETHTOOL_A_MODULE_HEADER + 1];
-extern const struct nla_policy ethnl_module_set_policy[ETHTOOL_A_MODULE_POWER_MODE_POLICY + 1];
+extern const struct nla_policy ethnl_module_set_policy[ETHTOOL_A_MODULE_MAX + 1];
 extern const struct nla_policy ethnl_pse_get_policy[ETHTOOL_A_PSE_HEADER + 1];
 extern const struct nla_policy ethnl_pse_set_policy[ETHTOOL_A_PSE_MAX + 1];
 extern const struct nla_policy ethnl_rss_get_policy[ETHTOOL_A_RSS_CONTEXT + 1];
-- 
2.40.1

