Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BA608915BC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Mar 2024 10:26:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 376B160EEE;
	Fri, 29 Mar 2024 09:25:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KlulIr98XaHm; Fri, 29 Mar 2024 09:25:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D524C60EDF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711704358;
	bh=QfReFrZqfRZvsRvC874VbstcW809ib1r3Q2Z6m2MRTA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TE0ueOfusV9HPeIl1cIXsjG4kCobE8y1H9jpuSFCh/ryfqqtpNJVhTJV8xfoRRpGW
	 aMES7Dq1SVT2zh915IoI1KMTMoedkIeB/ztx0uDIfg6BXELto+/UT4KmzaFSY/iUwu
	 K4frzjFr6vvjFAN0tv7TCb5N0NT329AXQyL5l9RyjBle/+D1fp07CqWZ82TlEKFMi9
	 qOuHXBfQUOWfuRO7Gd1m7mWUa46ESqUCYARYFnIQEKb4EcqE9DsuELibQ0+JDDd7W0
	 lIheOhrrw01mQNYmO5nQsWxXe8ZQDc19O/1cvda4l0KUqNewtH2xtqIJQObeWJo6iM
	 Bx1a6iVptH0Ng==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D524C60EDF;
	Fri, 29 Mar 2024 09:25:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 479891BF990
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 09:25:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9A03D60E8B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 09:25:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BZ2Rp5JotkNh for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Mar 2024 09:25:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=wojciech.drewek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9B0E660E14
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9B0E660E14
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9B0E660E14
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 09:25:46 +0000 (UTC)
X-CSE-ConnectionGUID: mnZ2Ck8hSyOoHCZqAKTKlw==
X-CSE-MsgGUID: 9cJnUWrrShWg6JjRJThWSg==
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="7107024"
X-IronPort-AV: E=Sophos;i="6.07,164,1708416000"; 
   d="scan'208";a="7107024"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2024 02:25:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,164,1708416000"; d="scan'208";a="16986846"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa008.fm.intel.com with ESMTP; 29 Mar 2024 02:25:36 -0700
Received: from rozewie.igk.intel.com (unknown [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id AEAEA34930;
 Fri, 29 Mar 2024 09:25:31 +0000 (GMT)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: netdev@vger.kernel.org
Date: Fri, 29 Mar 2024 10:23:19 +0100
Message-Id: <20240329092321.16843-2-wojciech.drewek@intel.com>
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
 bh=pu2MSPeH1BVvl++UV7pRuBGpoSwO9e7YqqrHoST27O0=;
 b=Oej+Gf9FJNhFMXl/lUlOiTBNGONIesMpYytHFi4Nn2dCYQQ3m8lWIltF
 Ak3+lOcyPMArLajckp87Pu8y/OENKv6LTKSOUYl+ei3gLtqG1arWUcPQg
 mpvaEW6gkXhCKfNxAMEaa3p3GONC8mbuubiqvUC0w7Juc6jzkw1w8Ju1/
 D7xXofMS1YIMpZQG6HLaqRCjJXAz/tKsHej5JXfZgnF62pLg4INpaNMkI
 ktcuCUQLRUl/q16sbFFlSHGdr+5/lWxv6o+A+6tLGi2N3ug3X5ziW2ocH
 9ciMK46pTWXacaklXZzggw8mspO4saHE2xB9F8OQZHS2X92xs091akr7N
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Oej+Gf9F
Subject: [Intel-wired-lan] [PATCH net-next 1/3] ethtool: Make module API
 more generic
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

Prepare to introduce new attributes to ethtool module API by making
some of the names more generic.

Rename:
ethtool_module_power_mode_params -> ethtool_module_power_params
  This structure will have more fields than just mode or mode_policy.
get_module_power_mode -> get_module_power_cfg
set_module_power_mode -> set_module_power_cfg
  Those operations are going to be used for more cases than just
  setting or getting power mode.

Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
 .../net/ethernet/mellanox/mlxsw/core_env.c    |  2 +-
 .../net/ethernet/mellanox/mlxsw/core_env.h    |  2 +-
 drivers/net/ethernet/mellanox/mlxsw/minimal.c |  8 +++---
 .../mellanox/mlxsw/spectrum_ethtool.c         |  8 +++---
 include/linux/ethtool.h                       | 20 ++++++-------
 net/ethtool/module.c                          | 28 +++++++++----------
 6 files changed, 33 insertions(+), 35 deletions(-)

diff --git a/drivers/net/ethernet/mellanox/mlxsw/core_env.c b/drivers/net/ethernet/mellanox/mlxsw/core_env.c
index 53b150b7ae4e..3d7841f0ceec 100644
--- a/drivers/net/ethernet/mellanox/mlxsw/core_env.c
+++ b/drivers/net/ethernet/mellanox/mlxsw/core_env.c
@@ -581,7 +581,7 @@ EXPORT_SYMBOL(mlxsw_env_reset_module);
 int
 mlxsw_env_get_module_power_mode(struct mlxsw_core *mlxsw_core, u8 slot_index,
 				u8 module,
-				struct ethtool_module_power_mode_params *params,
+				struct ethtool_module_power_params *params,
 				struct netlink_ext_ack *extack)
 {
 	struct mlxsw_env *mlxsw_env = mlxsw_core_env(mlxsw_core);
diff --git a/drivers/net/ethernet/mellanox/mlxsw/core_env.h b/drivers/net/ethernet/mellanox/mlxsw/core_env.h
index a197e3ae069c..979a35e967b3 100644
--- a/drivers/net/ethernet/mellanox/mlxsw/core_env.h
+++ b/drivers/net/ethernet/mellanox/mlxsw/core_env.h
@@ -35,7 +35,7 @@ int mlxsw_env_reset_module(struct net_device *netdev,
 int
 mlxsw_env_get_module_power_mode(struct mlxsw_core *mlxsw_core, u8 slot_index,
 				u8 module,
-				struct ethtool_module_power_mode_params *params,
+				struct ethtool_module_power_params *params,
 				struct netlink_ext_ack *extack);
 
 int
diff --git a/drivers/net/ethernet/mellanox/mlxsw/minimal.c b/drivers/net/ethernet/mellanox/mlxsw/minimal.c
index f0ceb196a6ce..df46962e92b4 100644
--- a/drivers/net/ethernet/mellanox/mlxsw/minimal.c
+++ b/drivers/net/ethernet/mellanox/mlxsw/minimal.c
@@ -152,7 +152,7 @@ static int mlxsw_m_reset(struct net_device *netdev, u32 *flags)
 
 static int
 mlxsw_m_get_module_power_mode(struct net_device *netdev,
-			      struct ethtool_module_power_mode_params *params,
+			      struct ethtool_module_power_params *params,
 			      struct netlink_ext_ack *extack)
 {
 	struct mlxsw_m_port *mlxsw_m_port = netdev_priv(netdev);
@@ -165,7 +165,7 @@ mlxsw_m_get_module_power_mode(struct net_device *netdev,
 
 static int
 mlxsw_m_set_module_power_mode(struct net_device *netdev,
-			      const struct ethtool_module_power_mode_params *params,
+			      const struct ethtool_module_power_params *params,
 			      struct netlink_ext_ack *extack)
 {
 	struct mlxsw_m_port *mlxsw_m_port = netdev_priv(netdev);
@@ -182,8 +182,8 @@ static const struct ethtool_ops mlxsw_m_port_ethtool_ops = {
 	.get_module_eeprom	= mlxsw_m_get_module_eeprom,
 	.get_module_eeprom_by_page = mlxsw_m_get_module_eeprom_by_page,
 	.reset			= mlxsw_m_reset,
-	.get_module_power_mode	= mlxsw_m_get_module_power_mode,
-	.set_module_power_mode	= mlxsw_m_set_module_power_mode,
+	.get_module_power_cfg	= mlxsw_m_get_module_power_mode,
+	.set_module_power_cfg	= mlxsw_m_set_module_power_mode,
 };
 
 static int
diff --git a/drivers/net/ethernet/mellanox/mlxsw/spectrum_ethtool.c b/drivers/net/ethernet/mellanox/mlxsw/spectrum_ethtool.c
index 0f29e9c19411..5ea7241bfaba 100644
--- a/drivers/net/ethernet/mellanox/mlxsw/spectrum_ethtool.c
+++ b/drivers/net/ethernet/mellanox/mlxsw/spectrum_ethtool.c
@@ -1214,7 +1214,7 @@ static int mlxsw_sp_reset(struct net_device *dev, u32 *flags)
 
 static int
 mlxsw_sp_get_module_power_mode(struct net_device *dev,
-			       struct ethtool_module_power_mode_params *params,
+			       struct ethtool_module_power_params *params,
 			       struct netlink_ext_ack *extack)
 {
 	struct mlxsw_sp_port *mlxsw_sp_port = netdev_priv(dev);
@@ -1228,7 +1228,7 @@ mlxsw_sp_get_module_power_mode(struct net_device *dev,
 
 static int
 mlxsw_sp_set_module_power_mode(struct net_device *dev,
-			       const struct ethtool_module_power_mode_params *params,
+			       const struct ethtool_module_power_params *params,
 			       struct netlink_ext_ack *extack)
 {
 	struct mlxsw_sp_port *mlxsw_sp_port = netdev_priv(dev);
@@ -1262,8 +1262,8 @@ const struct ethtool_ops mlxsw_sp_port_ethtool_ops = {
 	.get_eth_ctrl_stats		= mlxsw_sp_get_eth_ctrl_stats,
 	.get_rmon_stats			= mlxsw_sp_get_rmon_stats,
 	.reset				= mlxsw_sp_reset,
-	.get_module_power_mode		= mlxsw_sp_get_module_power_mode,
-	.set_module_power_mode		= mlxsw_sp_set_module_power_mode,
+	.get_module_power_cfg		= mlxsw_sp_get_module_power_mode,
+	.set_module_power_cfg		= mlxsw_sp_set_module_power_mode,
 };
 
 struct mlxsw_sp1_port_link_mode {
diff --git a/include/linux/ethtool.h b/include/linux/ethtool.h
index 9901e563f706..f3af6b31c9f1 100644
--- a/include/linux/ethtool.h
+++ b/include/linux/ethtool.h
@@ -506,12 +506,12 @@ struct ethtool_module_eeprom {
 };
 
 /**
- * struct ethtool_module_power_mode_params - module power mode parameters
+ * struct ethtool_module_power_params - module power parameters
  * @policy: The power mode policy enforced by the host for the plug-in module.
  * @mode: The operational power mode of the plug-in module. Should be filled by
  *	device drivers on get operations.
  */
-struct ethtool_module_power_mode_params {
+struct ethtool_module_power_params {
 	enum ethtool_module_power_mode_policy policy;
 	enum ethtool_module_power_mode mode;
 };
@@ -804,10 +804,10 @@ struct ethtool_rxfh_param {
  * @get_eth_ctrl_stats: Query some of the IEEE 802.3 MAC Ctrl statistics.
  * @get_rmon_stats: Query some of the RMON (RFC 2819) statistics.
  *	Set %ranges to a pointer to zero-terminated array of byte ranges.
- * @get_module_power_mode: Get the power mode policy for the plug-in module
+ * @get_module_power_cfg: Get the power mode policy for the plug-in module
  *	used by the network device and its operational power mode, if
  *	plugged-in.
- * @set_module_power_mode: Set the power mode policy for the plug-in module
+ * @set_module_power_cfg: Set the power mode policy for the plug-in module
  *	used by the network device.
  * @get_mm: Query the 802.3 MAC Merge layer state.
  * @set_mm: Set the 802.3 MAC Merge layer parameters.
@@ -940,12 +940,12 @@ struct ethtool_ops {
 	void	(*get_rmon_stats)(struct net_device *dev,
 				  struct ethtool_rmon_stats *rmon_stats,
 				  const struct ethtool_rmon_hist_range **ranges);
-	int	(*get_module_power_mode)(struct net_device *dev,
-					 struct ethtool_module_power_mode_params *params,
-					 struct netlink_ext_ack *extack);
-	int	(*set_module_power_mode)(struct net_device *dev,
-					 const struct ethtool_module_power_mode_params *params,
-					 struct netlink_ext_ack *extack);
+	int	(*get_module_power_cfg)(struct net_device *dev,
+					struct ethtool_module_power_params *params,
+					struct netlink_ext_ack *extack);
+	int	(*set_module_power_cfg)(struct net_device *dev,
+					const struct ethtool_module_power_params *params,
+					struct netlink_ext_ack *extack);
 	int	(*get_mm)(struct net_device *dev, struct ethtool_mm_state *state);
 	int	(*set_mm)(struct net_device *dev, struct ethtool_mm_cfg *cfg,
 			  struct netlink_ext_ack *extack);
diff --git a/net/ethtool/module.c b/net/ethtool/module.c
index ceb575efc290..193ca4642e04 100644
--- a/net/ethtool/module.c
+++ b/net/ethtool/module.c
@@ -12,7 +12,7 @@ struct module_req_info {
 
 struct module_reply_data {
 	struct ethnl_reply_data	base;
-	struct ethtool_module_power_mode_params power;
+	struct ethtool_module_power_params power;
 };
 
 #define MODULE_REPDATA(__reply_base) \
@@ -24,16 +24,16 @@ const struct nla_policy ethnl_module_get_policy[ETHTOOL_A_MODULE_HEADER + 1] = {
 	[ETHTOOL_A_MODULE_HEADER] = NLA_POLICY_NESTED(ethnl_header_policy),
 };
 
-static int module_get_power_mode(struct net_device *dev,
-				 struct module_reply_data *data,
-				 struct netlink_ext_ack *extack)
+static int module_get_power_cfg(struct net_device *dev,
+				struct module_reply_data *data,
+				struct netlink_ext_ack *extack)
 {
 	const struct ethtool_ops *ops = dev->ethtool_ops;
 
-	if (!ops->get_module_power_mode)
+	if (!ops->get_module_power_cfg)
 		return 0;
 
-	return ops->get_module_power_mode(dev, &data->power, extack);
+	return ops->get_module_power_cfg(dev, &data->power, extack);
 }
 
 static int module_prepare_data(const struct ethnl_req_info *req_base,
@@ -48,7 +48,7 @@ static int module_prepare_data(const struct ethnl_req_info *req_base,
 	if (ret < 0)
 		return ret;
 
-	ret = module_get_power_mode(dev, data, info->extack);
+	ret = module_get_power_cfg(dev, data, info->extack);
 	if (ret < 0)
 		goto out_complete;
 
@@ -109,10 +109,8 @@ ethnl_set_module_validate(struct ethnl_req_info *req_info,
 	if (!tb[ETHTOOL_A_MODULE_POWER_MODE_POLICY])
 		return 0;
 
-	if (!ops->get_module_power_mode || !ops->set_module_power_mode) {
-		NL_SET_ERR_MSG_ATTR(info->extack,
-				    tb[ETHTOOL_A_MODULE_POWER_MODE_POLICY],
-				    "Setting power mode policy is not supported by this device");
+	if (!ops->get_module_power_cfg || !ops->set_module_power_cfg) {
+		NL_SET_ERR_MSG(info->extack, "Setting power config is not supported by this device");
 		return -EOPNOTSUPP;
 	}
 
@@ -122,8 +120,8 @@ ethnl_set_module_validate(struct ethnl_req_info *req_info,
 static int
 ethnl_set_module(struct ethnl_req_info *req_info, struct genl_info *info)
 {
-	struct ethtool_module_power_mode_params power = {};
-	struct ethtool_module_power_mode_params power_new;
+	struct ethtool_module_power_params power = {};
+	struct ethtool_module_power_params power_new;
 	const struct ethtool_ops *ops;
 	struct net_device *dev = req_info->dev;
 	struct nlattr **tb = info->attrs;
@@ -132,14 +130,14 @@ ethnl_set_module(struct ethnl_req_info *req_info, struct genl_info *info)
 	ops = dev->ethtool_ops;
 
 	power_new.policy = nla_get_u8(tb[ETHTOOL_A_MODULE_POWER_MODE_POLICY]);
-	ret = ops->get_module_power_mode(dev, &power, info->extack);
+	ret = ops->get_module_power_cfg(dev, &power, info->extack);
 	if (ret < 0)
 		return ret;
 
 	if (power_new.policy == power.policy)
 		return 0;
 
-	ret = ops->set_module_power_mode(dev, &power_new, info->extack);
+	ret = ops->set_module_power_cfg(dev, &power_new, info->extack);
 	return ret < 0 ? ret : 1;
 }
 
-- 
2.40.1

