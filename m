Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +H6FJhumb2kfEgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jan 2026 16:58:19 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 604A546E73
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jan 2026 16:58:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3B6386FE52;
	Tue, 20 Jan 2026 14:02:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id K155Vjfhc-7M; Tue, 20 Jan 2026 14:02:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A69316FE34
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768917756;
	bh=TmX7qeEk99+f2hlVJdkI32wBOusK2l4iChq9IgUa39o=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LzkqhkeDW4Sg69SZQFmH4ZaEHoEmA/c0+qnD1KzvaiXinXmC0PoKE6qwwjQ4Fkxf9
	 zgCL+4DjK0Tp5vVtxARMe+i+MVdigwri3OkWkKYHwbdw2S2T06ljWQXRoQc8I6ikIZ
	 w9A/O8HLqrTBCJMY1tdp7PuQO7F/JxtYJJXbCu+/RfyZp5Vu5/eSns5zq/zTmz7gsk
	 nmCQFkc0ikKOaeT6TiatkMZ6AopBjZCmP0cyuh029K/A23KD7FcB2MI9qG8eK6OjX6
	 rr99LC5WOM6+2qn5pf/v/803wQzmpMp2Ez85AdxSR/QrCwxLmNNKYWYdTzXs45irGM
	 WMY0IS7HmvEXA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A69316FE34;
	Tue, 20 Jan 2026 14:02:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0728C2A8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 14:02:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E04E26FE33
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 14:02:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7Dj8UpQTlB8V for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jan 2026 14:02:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org F31266FE3B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F31266FE3B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F31266FE3B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 14:02:33 +0000 (UTC)
X-CSE-ConnectionGUID: DIScbmOvT0qlkP+9A1UBUg==
X-CSE-MsgGUID: ZDXfDyx/Q3i8Sbl9oIPWfQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11676"; a="72711784"
X-IronPort-AV: E=Sophos;i="6.21,240,1763452800"; d="scan'208";a="72711784"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 06:02:34 -0800
X-CSE-ConnectionGUID: 8uKMYPhoSK2gpQreG+FKhg==
X-CSE-MsgGUID: 6C8FiCIsRjekQaed+DnMbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,240,1763452800"; d="scan'208";a="210978958"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by fmviesa004.fm.intel.com with ESMTP; 20 Jan 2026 06:02:32 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Tue, 20 Jan 2026 14:44:33 +0100
Message-Id: <20260120134434.1931602-6-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20260120134434.1931602-1-jedrzej.jagielski@intel.com>
References: <20260120134434.1931602-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768917754; x=1800453754;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0YkMMnRQnUttBI9ws8lik8ieeR5UeFB3lq4CtOHZ8O0=;
 b=Pz1NFQaNbZCgRUMttFmoqrsGKVWtfdiiu4c/3edgi9MDrU5ms4ThKk4z
 s4TJa61zU3Oj24ec/J1JUdOC+CahGjNtoRgNK3MSJJIlYaf5/1S6cEP3w
 Eah7ryMvPYVmtrs1KAtRtStYpdZ8q/eo2PdUbIPn7/q+IfmCpRGCrhzNb
 eK2/3ghFPolgKt/JhM7diTSRH/EzC3Ir8MKBAr8f/nPAcAzJvmxaA0Sff
 EULoHuCCjBngjGnpvGr0uhmq+9Zg9ZTD9lYyCSm+JHC+RM1lPwGXLieO8
 cg0zUmRgp2zIpqmvWPB31hha5GKKV/reDQNZeSn/AhSjihVdZpJRuesR/
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Pz1NFQaN
Subject: [Intel-wired-lan] [PATCH iwl-next v2 5/6] ixgbe: move EEE config
 validation out of ixgbe_set_eee()
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
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[jedrzej.jagielski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 604A546E73
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

To make this part of the code mode reusable move all
EEE input checks out of ixgbe_set_eee().

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
v2: add comment on returning EALREADY
---
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  | 98 +++++++++++--------
 1 file changed, 57 insertions(+), 41 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
index 779e2425e4aa..b5b9b9335d52 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
@@ -3556,6 +3556,47 @@ static const struct {
 	{ FW_PHY_ACT_UD_2_10G_KR_EEE, ETHTOOL_LINK_MODE_10000baseKR_Full_BIT},
 };
 
+static int ixgbe_validate_keee(struct net_device *netdev,
+			       struct ethtool_keee *keee_requested)
+{
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
+	struct ethtool_keee keee_stored = {};
+	int err;
+
+	if (!(adapter->flags2 & IXGBE_FLAG2_EEE_CAPABLE))
+		return -EOPNOTSUPP;
+
+	err = netdev->ethtool_ops->get_eee(netdev, &keee_stored);
+	if (err)
+		return err;
+
+	if (keee_stored.tx_lpi_enabled != keee_requested->tx_lpi_enabled) {
+		e_err(drv, "Setting EEE tx-lpi is not supported\n");
+		return -EINVAL;
+	}
+
+	if (keee_stored.tx_lpi_timer != keee_requested->tx_lpi_timer) {
+		e_err(drv,
+		      "Setting EEE Tx LPI timer is not supported\n");
+		return -EINVAL;
+	}
+
+	if (!linkmode_equal(keee_stored.advertised,
+			    keee_requested->advertised)) {
+		e_err(drv,
+		      "Setting EEE advertised speeds is not supported\n");
+		return -EINVAL;
+	}
+
+	/* -EALREADY here is for internal use only, must be converted into
+	 * early bail out with 0 by caller
+	 */
+	if (keee_stored.eee_enabled == keee_requested->eee_enabled)
+		return -EALREADY;
+
+	return 0;
+}
+
 static int
 ixgbe_get_eee_fw(struct ixgbe_adapter *adapter, struct ethtool_keee *edata)
 {
@@ -3614,53 +3655,28 @@ static int ixgbe_set_eee(struct net_device *netdev, struct ethtool_keee *edata)
 {
 	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 	struct ixgbe_hw *hw = &adapter->hw;
-	struct ethtool_keee eee_data;
 	int ret_val;
 
-	if (!(adapter->flags2 & IXGBE_FLAG2_EEE_CAPABLE))
-		return -EOPNOTSUPP;
-
-	memset(&eee_data, 0, sizeof(struct ethtool_keee));
-
-	ret_val = ixgbe_get_eee(netdev, &eee_data);
-	if (ret_val)
+	ret_val = ixgbe_validate_keee(netdev, edata);
+	if (ret_val == -EALREADY)
+		return 0;
+	else if (ret_val)
 		return ret_val;
 
-	if (eee_data.eee_enabled && !edata->eee_enabled) {
-		if (eee_data.tx_lpi_enabled != edata->tx_lpi_enabled) {
-			e_err(drv, "Setting EEE tx-lpi is not supported\n");
-			return -EINVAL;
-		}
-
-		if (eee_data.tx_lpi_timer != edata->tx_lpi_timer) {
-			e_err(drv,
-			      "Setting EEE Tx LPI timer is not supported\n");
-			return -EINVAL;
-		}
-
-		if (!linkmode_equal(eee_data.advertised, edata->advertised)) {
-			e_err(drv,
-			      "Setting EEE advertised speeds is not supported\n");
-			return -EINVAL;
-		}
+	if (edata->eee_enabled) {
+		adapter->flags2 |= IXGBE_FLAG2_EEE_ENABLED;
+		hw->phy.eee_speeds_advertised =
+					   hw->phy.eee_speeds_supported;
+	} else {
+		adapter->flags2 &= ~IXGBE_FLAG2_EEE_ENABLED;
+		hw->phy.eee_speeds_advertised = 0;
 	}
 
-	if (eee_data.eee_enabled != edata->eee_enabled) {
-		if (edata->eee_enabled) {
-			adapter->flags2 |= IXGBE_FLAG2_EEE_ENABLED;
-			hw->phy.eee_speeds_advertised =
-						   hw->phy.eee_speeds_supported;
-		} else {
-			adapter->flags2 &= ~IXGBE_FLAG2_EEE_ENABLED;
-			hw->phy.eee_speeds_advertised = 0;
-		}
-
-		/* reset link */
-		if (netif_running(netdev))
-			ixgbe_reinit_locked(adapter);
-		else
-			ixgbe_reset(adapter);
-	}
+	/* reset link */
+	if (netif_running(netdev))
+		ixgbe_reinit_locked(adapter);
+	else
+		ixgbe_reset(adapter);
 
 	return 0;
 }
-- 
2.31.1

