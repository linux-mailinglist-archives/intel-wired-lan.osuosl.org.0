Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QDTyIFpS8Gk6RwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 08:23:22 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4538947E04C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 08:23:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4E4D1410F4;
	Tue, 28 Apr 2026 06:23:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lo3Q6DYnDI1o; Tue, 28 Apr 2026 06:23:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9C47A410F7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777357398;
	bh=734I3G72OJbK4gdSy/3+p1wA+3ENKQbVirs04y2d5Vc=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=q3uWNcXxVEmGtZCtWuwHbAqBlnanUtKJMc9yT4efaZsnAl1P8VoFZyb9LXLYb78nC
	 wBw707KhMM35E3KQxfiJnKfNgWnrITknGXbSiRjfF4oReOEe9uoTqaDIYOqueQ9Hce
	 q1KyvtxlkVe44PMHhCugaMlfP1jeyK+F/En3QVcCeT2LqQjxqm8NPeFUuvIysgURWA
	 ZXrPc/prPd542AX8mx92HvKlhgSzVboctbXGCyto0e2rma+URy72zxvkxJDwXUQSpF
	 hi4w+RIdCEBdBQNEdsmrHylEnSsWbx39DyfyvaGmFcLYBaCia551I3IlOf6UVhECYx
	 8AG3oBNpZ625A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9C47A410F7;
	Tue, 28 Apr 2026 06:23:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id C44501B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 06:23:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B5C7E60ED0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 06:23:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id c7_xakldkcRK for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Apr 2026 06:23:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=khai.wen.tan@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 843BF60B70
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 843BF60B70
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 843BF60B70
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 06:23:15 +0000 (UTC)
X-CSE-ConnectionGUID: fJgMaa1DRDGho3d4iNXCfg==
X-CSE-MsgGUID: lWcASyuPSSOpxjsZIInQVg==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78366131"
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="78366131"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2026 23:23:15 -0700
X-CSE-ConnectionGUID: nDjG1kawTeu7Vob6m1z6RA==
X-CSE-MsgGUID: v/kKMP4zS/KtoH1GEteb8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="232986927"
Received: from unknown (HELO localhost.png.intel.com) ([10.107.255.61])
 by orviesa010.jf.intel.com with ESMTP; 27 Apr 2026 23:23:12 -0700
From: KhaiWenTan <khai.wen.tan@linux.intel.com>
To: anthony.l.nguyen@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, faizal.abdul.rahim@intel.com,
 hong.aun.looi@intel.com, khai.wen.tan@intel.com,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>, Looi,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 KhaiWenTan <khai.wen.tan@linux.intel.com>
Date: Tue, 28 Apr 2026 14:00:08 +0800
Message-ID: <20260428060009.311393-3-khai.wen.tan@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260428060009.311393-1-khai.wen.tan@linux.intel.com>
References: <20260428060009.311393-1-khai.wen.tan@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777357395; x=1808893395;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dLjvwNQGbgsihw8eMls+gO1zacDih/y1JKuhzvrV16g=;
 b=CK4XLYrk5KxFUJDZMCp2MN2BKP1A7zClBKZKEmW1Yzr3Hfm5oDUVa94z
 aoHvPo+gz2P+99mr/XZQ78kCoZd4PxdB7+pmix1D6Ftcyl0zpjUy6fFQF
 IJtyHLwmBzG2JR0p4NWVrCHGXgSrlTCb5TG7X/yCc/nXlKUC2YyuVyHOk
 C1AJ6TAy4n3mTgDZBNtF/cbAwPekv215U5zbC7Toe5XvZDoCcj4TZB6vc
 7zrk4qVs+oFSATNBTLpFCqkim9orWMvthGE4+xCz495oecLPDQB8DbFWN
 o5qdCYqAPfAPgUqGY6h06xuFi04IfcRqaPPcSjyD8fgZEQW5AWHmM8B6P
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CK4XLYrk
Subject: [Intel-wired-lan] [PATCH iwl-next v4 2/3] igc: move autoneg-enabled
 settings into igc_handle_autoneg_enabled()
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
X-Rspamd-Queue-Id: 4538947E04C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[khai.wen.tan@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:faizal.abdul.rahim@intel.com,m:hong.aun.looi@intel.com,m:khai.wen.tan@intel.com,m:faizal.abdul.rahim@linux.intel.com,m:aleksandr.loktionov@intel.com,m:khai.wen.tan@linux.intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[khai.wen.tan@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]

From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>

Move the advertised link modes and flow control configuration from
igc_ethtool_set_link_ksettings() into igc_handle_autoneg_enabled().

No functional change.

Reviewed-by: Looi, Hong Aun <hong.aun.looi@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
Signed-off-by: KhaiWenTan <khai.wen.tan@linux.intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 72 ++++++++++++--------
 1 file changed, 44 insertions(+), 28 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 0122009bedd0..cfcbf2fdad6e 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -2000,6 +2000,49 @@ static int igc_ethtool_get_link_ksettings(struct net_device *netdev,
 	return 0;
 }

+/**
+ * igc_handle_autoneg_enabled - Configure autonegotiation advertisement
+ * @adapter: private driver structure
+ * @cmd: ethtool link ksettings from user
+ *
+ * Records advertised speeds and flow control settings when autoneg
+ * is enabled.
+ */
+static void igc_handle_autoneg_enabled(struct igc_adapter *adapter,
+				       const struct ethtool_link_ksettings *cmd)
+{
+	struct igc_hw *hw = &adapter->hw;
+	u16 advertised = 0;
+
+	if (ethtool_link_ksettings_test_link_mode(cmd, advertising,
+						  2500baseT_Full))
+		advertised |= ADVERTISE_2500_FULL;
+
+	if (ethtool_link_ksettings_test_link_mode(cmd, advertising,
+						  1000baseT_Full))
+		advertised |= ADVERTISE_1000_FULL;
+
+	if (ethtool_link_ksettings_test_link_mode(cmd, advertising,
+						  100baseT_Full))
+		advertised |= ADVERTISE_100_FULL;
+
+	if (ethtool_link_ksettings_test_link_mode(cmd, advertising,
+						  100baseT_Half))
+		advertised |= ADVERTISE_100_HALF;
+
+	if (ethtool_link_ksettings_test_link_mode(cmd, advertising,
+						  10baseT_Full))
+		advertised |= ADVERTISE_10_FULL;
+
+	if (ethtool_link_ksettings_test_link_mode(cmd, advertising,
+						  10baseT_Half))
+		advertised |= ADVERTISE_10_HALF;
+
+	hw->phy.autoneg_advertised = advertised;
+	if (adapter->fc_autoneg)
+		hw->fc.requested_mode = igc_fc_default;
+}
+
 static int
 igc_ethtool_set_link_ksettings(struct net_device *netdev,
 			       const struct ethtool_link_ksettings *cmd)
@@ -2007,7 +2050,6 @@ igc_ethtool_set_link_ksettings(struct net_device *netdev,
 	struct igc_adapter *adapter = netdev_priv(netdev);
 	struct net_device *dev = adapter->netdev;
 	struct igc_hw *hw = &adapter->hw;
-	u16 advertised = 0;

 	/* When adapter in resetting mode, autoneg/speed/duplex
 	 * cannot be changed
@@ -2032,34 +2074,8 @@ igc_ethtool_set_link_ksettings(struct net_device *netdev,
 	while (test_and_set_bit(__IGC_RESETTING, &adapter->state))
 		usleep_range(1000, 2000);

-	if (ethtool_link_ksettings_test_link_mode(cmd, advertising,
-						  2500baseT_Full))
-		advertised |= ADVERTISE_2500_FULL;
-
-	if (ethtool_link_ksettings_test_link_mode(cmd, advertising,
-						  1000baseT_Full))
-		advertised |= ADVERTISE_1000_FULL;
-
-	if (ethtool_link_ksettings_test_link_mode(cmd, advertising,
-						  100baseT_Full))
-		advertised |= ADVERTISE_100_FULL;
-
-	if (ethtool_link_ksettings_test_link_mode(cmd, advertising,
-						  100baseT_Half))
-		advertised |= ADVERTISE_100_HALF;
-
-	if (ethtool_link_ksettings_test_link_mode(cmd, advertising,
-						  10baseT_Full))
-		advertised |= ADVERTISE_10_FULL;
-
-	if (ethtool_link_ksettings_test_link_mode(cmd, advertising,
-						  10baseT_Half))
-		advertised |= ADVERTISE_10_HALF;
-
 	if (cmd->base.autoneg == AUTONEG_ENABLE) {
-		hw->phy.autoneg_advertised = advertised;
-		if (adapter->fc_autoneg)
-			hw->fc.requested_mode = igc_fc_default;
+		igc_handle_autoneg_enabled(adapter, cmd);
 	} else {
 		netdev_info(dev, "Force mode currently not supported\n");
 	}
--
2.43.0

