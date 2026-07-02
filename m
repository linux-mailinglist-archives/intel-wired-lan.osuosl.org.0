Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id TlQKO90wRmrYLQsAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Jul 2026 11:35:25 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A8ECA6F552B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Jul 2026 11:35:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=bzYf9E3T;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 558A1407A0;
	Thu,  2 Jul 2026 09:35:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8LJrggdl-yeC; Thu,  2 Jul 2026 09:35:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2ED984078C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782984923;
	bh=nhNLXy+SyZWBk9R5JOgYBNF7afVsc7Pvf+wMJwYn5Rw=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bzYf9E3T8jLZeo0JREktXVH2alwcQtyUoR8gS2pEniXANn6JI+yUq4YiCN4ZARXnn
	 AYrpRYkydVqmfFTfgSRqOuNA79TBNcZKOqCasjgn+SBd3N5vnRuLQLcNXmFTSgoGVA
	 aW3lOWjs064fkUrMSn7doShnjG0R8npF92gyxpmlvmmWDIVkd2tSt//CrM9gTydfWo
	 hmTrTBMSbApwoc63VClFrqRY0YmVOQXibhITzMpAsXu254mbpgepQZFFoXaJIHxM83
	 VKLmgRrd72sXMxYqg56tMdBK8+s+Y5WevRk3DcuE7MZ15PePBQzzpsAWQmEzNOqkXa
	 cPWxMoowUbNXQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2ED984078C;
	Thu,  2 Jul 2026 09:35:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 26DA54B5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 09:35:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0CC67822AB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 09:35:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id g-TmcHfpxpT8 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jul 2026 09:35:19 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1242F81E6B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1242F81E6B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1242F81E6B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 09:35:19 +0000 (UTC)
X-CSE-ConnectionGUID: tcqxDwp6RfKoJM50gKXvXQ==
X-CSE-MsgGUID: WW0aQOxGQby2/lVg+wJxbw==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="87649820"
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="87649820"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 02:35:19 -0700
X-CSE-ConnectionGUID: eesZN8QhSUemYR8pXgNGcA==
X-CSE-MsgGUID: ErbuBx6qRWy92hRoxgxbtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="253476429"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by orviesa009.jf.intel.com with ESMTP; 02 Jul 2026 02:35:18 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Date: Thu,  2 Jul 2026 11:15:52 +0200
Message-Id: <20260702091553.57112-6-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20260702091553.57112-1-jedrzej.jagielski@intel.com>
References: <20260702091553.57112-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782984919; x=1814520919;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MabDCRBsN+CDhhi4lheUcomDoZdUFzurbe9YKVaXyjk=;
 b=mB44+dRz1P2ppRAM3oPmqlCIrMarw43QKbfNcNwjFe1SIXRNrj2N4zpX
 +BfIeEQcxREaqteCejxjrIKx394BGTgk0GA8Uw3x8ABEDUFIoisr7svGN
 lFmft6aV0YytpH6UOWgjU2UI2NXMKy8BCDgH+GJRAFslcz07Zr1hDOwIR
 2hduFN5gBkUwa2HhKDpmLGqwHKy9C7jKVbIgD9Ja19YWrU218BXcsrDcS
 UhKo6HI2RfAX/SW2QZLphRzrKwaZJUJpHzoAk8EGBIqdhUteK8BB6c9q2
 Wzpix3GZM6/HGf6rLvEfweZNZAg1ukY98d3BRb//L/1QzwYeqz8MVOQx9
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mB44+dRz
Subject: [Intel-wired-lan] [PATCH iwl-next v1 5/6] ixgbe: E610: add MAC
 address runtime refresh
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:from_mime,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo];
	FROM_NEQ_ENVFROM(0.00)[jedrzej.jagielski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A8ECA6F552B

Whenever MGMT requests MAC addr change and FW does it, driver does not
get aligned to that change. Current - legacy approach doesn't handle
such scenario.

Poll RAR0 (Receive Address Register) each service task cycle and update
driver and netdev structs once new MAC addr is detected. It may happen
that FW updates MAC address stored in RAR0 during runtime so SW shall fetch
the new address.

Refresh addr also during reset path to ensure the address survives RAR0
clearing during init_hw().

Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 37 +++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index d1cfe913081f..ce2b1e208c0f 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -6499,6 +6499,36 @@ void ixgbe_disable_tx(struct ixgbe_adapter *adapter)
 	}
 }
 
+static void ixgbe_mac_addr_refresh(struct ixgbe_adapter *adapter)
+{
+	struct net_device *netdev = adapter->netdev;
+	struct ixgbe_hw *hw = &adapter->hw;
+	int err;
+
+	if (hw->mac.type != ixgbe_mac_e610)
+		return;
+
+	/* fetch address stored currently in RAR0 in case the addr has been
+	 * altered by FW; if so, use it as the default one
+	 */
+	err = hw->mac.ops.get_mac_addr(hw, hw->mac.addr);
+	if (err) {
+		e_dev_warn("Cannot get MAC address\n");
+		return;
+	}
+
+	if (ether_addr_equal(netdev->dev_addr, hw->mac.addr) ||
+	    !is_valid_ether_addr(hw->mac.addr))
+		return;
+
+	ASSERT_RTNL();
+
+	eth_hw_addr_set(netdev, hw->mac.addr);
+	ether_addr_copy(adapter->mac_table[0].addr, hw->mac.addr);
+
+	call_netdevice_notifiers(NETDEV_CHANGEADDR, netdev);
+}
+
 void ixgbe_reset(struct ixgbe_adapter *adapter)
 {
 	struct ixgbe_hw *hw = &adapter->hw;
@@ -6516,6 +6546,8 @@ void ixgbe_reset(struct ixgbe_adapter *adapter)
 			     IXGBE_FLAG2_SFP_NEEDS_RESET);
 	adapter->flags &= ~IXGBE_FLAG_NEED_LINK_CONFIG;
 
+	ixgbe_mac_addr_refresh(adapter);
+
 	err = hw->mac.ops.init_hw(hw);
 	switch (err) {
 	case 0:
@@ -8701,6 +8733,11 @@ static void ixgbe_service_task(struct work_struct *work)
 			ixgbe_handle_fw_event(adapter);
 		ixgbe_check_media_subtask(adapter);
 	}
+
+	rtnl_lock();
+	ixgbe_mac_addr_refresh(adapter);
+	rtnl_unlock();
+
 	ixgbe_reset_subtask(adapter);
 	ixgbe_phy_interrupt_subtask(adapter);
 	ixgbe_sfp_detection_subtask(adapter);
-- 
2.31.1

