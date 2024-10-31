Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E7F729B7E32
	for <lists+intel-wired-lan@lfdr.de>; Thu, 31 Oct 2024 16:20:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E099280FD7;
	Thu, 31 Oct 2024 15:20:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xfTW2oc7YAqM; Thu, 31 Oct 2024 15:20:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 39FBA81008
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730388014;
	bh=LnWEx1MwlGHTgIO2Im+0lGzsYBnFCSYv59z5hBokZq4=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RzLiTrPbXLIRi+t7An7phg4bcV85+Cm9i1bQO9Ko4rn9gMfeqG/azjEU4Lv3+5gwN
	 9T8QiXeoD2vR43J9Xt/BduSh5y+cp/T6nIjQ1j6CjAYY6cZ48rWvlj578/LqROre6b
	 PYfTM3lqH9OdhIiM8J6e6YwIV/BnaNh7WdUT7Z8LuC96Xvp5H+KsuGG6o+Ps/DJS6w
	 f+Tu3Beqayx35K0rHLsllPgCD/HLYl46/S1NDUXvl7z9FGqJWLu93lllVz4t9eMMsE
	 t4tHIrkieQzvUUCyLQOrDb3JD3ELT19BzzFiI38brUkiu5tdmpL2TyIzJ/FFQ0MooU
	 IhxRcgWONDDsw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 39FBA81008;
	Thu, 31 Oct 2024 15:20:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0B6955E50
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2024 06:00:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E6D796081C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2024 06:00:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l2S_yfrVck91 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 31 Oct 2024 06:00:13 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 05AE960902
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 05AE960902
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 05AE960902
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2024 06:00:12 +0000 (UTC)
X-CSE-ConnectionGUID: Tq9Rc6HNQC+kNfdRtJr9BA==
X-CSE-MsgGUID: VFObTIarQAiS+flnLgx9BQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30272909"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30272909"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 23:00:13 -0700
X-CSE-ConnectionGUID: Kx70RdOuTJSYEHHQZzfr9A==
X-CSE-MsgGUID: 3dGhfWc3SBitFLWleMmBKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="82183633"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by fmviesa007.fm.intel.com with ESMTP; 30 Oct 2024 23:00:11 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
	sridhar.samudrala@intel.com
Date: Thu, 31 Oct 2024 07:00:07 +0100
Message-ID: <20241031060009.38979-2-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20241031060009.38979-1-michal.swiatkowski@linux.intel.com>
References: <20241031060009.38979-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 31 Oct 2024 15:20:09 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730354413; x=1761890413;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FUmduMo3n7mNXAayX+cLFGBWrO/DPfcJO69NELUXLtY=;
 b=jEgqIpaPUCthwxbT0L0pNca0ek1952Kf7o7ekazAyKfHDY2qIO76l0hL
 FxfbkyDsftF4M0jqswNoLVfWn1Oul/3UshxwaVZ4np+FJ0iptE6QJIDkb
 Sh7zVXOQK1SMThPcyRVelbb2y4ihBbZxAmMIYwVpjq6atoG7HAkaCqTKp
 YcXVpoEyJM554WMOp/S6WAQf9O/11z5i0BwHfAnvbA9skNSr/ncUZ8dmg
 pzZDrsXJ2wFGm+28ROebZUEpABYVg4/xjAgeRFrErNJ9VvRnttH2int+L
 pIzf6722wXbuDOSAxm/PISFgQ3vzbPrmUSIaFPx0jDTXdMYTSXH6/S9Ec
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jEgqIpaP
Subject: [Intel-wired-lan] [iwl-next v1 1/3] ice: support max_io_eqs for
 subfunction
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

Implement get and set for the maximum IO event queues for SF.
It is used to derive the maximum number of Rx/Tx queues on subfunction
device.

If the value isn't set when activating set it to the low default value.

Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/devlink/port.c | 37 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice.h          |  2 +
 2 files changed, 39 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/devlink/port.c b/drivers/net/ethernet/intel/ice/devlink/port.c
index 767419a67fef..a723895e4dff 100644
--- a/drivers/net/ethernet/intel/ice/devlink/port.c
+++ b/drivers/net/ethernet/intel/ice/devlink/port.c
@@ -530,6 +530,33 @@ void ice_devlink_destroy_sf_dev_port(struct ice_sf_dev *sf_dev)
 	devl_port_unregister(&sf_dev->priv->devlink_port);
 }
 
+static int
+ice_devlink_port_fn_max_io_eqs_set(struct devlink_port *port, u32 max_io_eqs,
+				   struct netlink_ext_ack *extack)
+{
+	struct ice_dynamic_port *dyn_port = ice_devlink_port_to_dyn(port);
+
+	if (max_io_eqs > num_online_cpus()) {
+		NL_SET_ERR_MSG_MOD(extack, "Supplied value out of range");
+		return -EINVAL;
+	}
+
+	dyn_port->vsi->max_io_eqs = max_io_eqs;
+
+	return 0;
+}
+
+static int
+ice_devlink_port_fn_max_io_eqs_get(struct devlink_port *port, u32 *max_io_eqs,
+				   struct netlink_ext_ack *extack)
+{
+	struct ice_dynamic_port *dyn_port = ice_devlink_port_to_dyn(port);
+
+	*max_io_eqs = dyn_port->vsi->max_io_eqs;
+
+	return 0;
+}
+
 /**
  * ice_activate_dynamic_port - Activate a dynamic port
  * @dyn_port: dynamic port instance to activate
@@ -548,6 +575,14 @@ ice_activate_dynamic_port(struct ice_dynamic_port *dyn_port,
 	if (dyn_port->active)
 		return 0;
 
+	if (!dyn_port->vsi->max_io_eqs) {
+		err = ice_devlink_port_fn_max_io_eqs_set(&dyn_port->devlink_port,
+							 ICE_SF_DEFAULT_EQS,
+							 extack);
+		if (err)
+			return err;
+	}
+
 	err = ice_sf_eth_activate(dyn_port, extack);
 	if (err)
 		return err;
@@ -807,6 +842,8 @@ static const struct devlink_port_ops ice_devlink_port_sf_ops = {
 	.port_fn_hw_addr_set = ice_devlink_port_fn_hw_addr_set,
 	.port_fn_state_get = ice_devlink_port_fn_state_get,
 	.port_fn_state_set = ice_devlink_port_fn_state_set,
+	.port_fn_max_io_eqs_set = ice_devlink_port_fn_max_io_eqs_set,
+	.port_fn_max_io_eqs_get = ice_devlink_port_fn_max_io_eqs_get,
 };
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 70d5294a558c..ca0739625d3b 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -109,6 +109,7 @@
 #define ICE_Q_WAIT_MAX_RETRY	(5 * ICE_Q_WAIT_RETRY_LIMIT)
 #define ICE_MAX_LG_RSS_QS	256
 #define ICE_INVAL_Q_INDEX	0xffff
+#define ICE_SF_DEFAULT_EQS	8
 
 #define ICE_MAX_RXQS_PER_TC		256	/* Used when setting VSI context per TC Rx queues */
 
@@ -443,6 +444,7 @@ struct ice_vsi {
 	u8 old_numtc;
 	u16 old_ena_tc;
 
+	u32 max_io_eqs;
 	/* setup back reference, to which aggregator node this VSI
 	 * corresponds to
 	 */
-- 
2.42.0

