Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cBkLDJA0A2oA1gEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 May 2026 16:09:20 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 95CDE521FE0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 May 2026 16:09:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DD49A60DB0;
	Tue, 12 May 2026 14:09:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NfCmi69eIA41; Tue, 12 May 2026 14:09:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6003A60DB6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778594956;
	bh=kCsd63R8JT5kju/vhWBriqAyvLrKeMni16qaXxgiYXo=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WDSS0JbVFLAEWa7/QfJPxoXEt+5uOtdb73ImQb6Wk5FSra9yy0TxvqeGFQcQU7pot
	 O7/0dXJr8Hz2RSWDOoVdUMrc4btsv5VvJk8Nkfy27L0PFaRGKBfZnjefNxZbhi0Y/x
	 55zW631qd7QrNwKrlT9YM2b/Z3IOrk41kxY1f9a4HL+MkpqyRNLbkHixqwFsGy5oYS
	 VfP1PcVdW56d0h2d5iL7FrzhbJQNQ5Hp5k/kZlRwiz6aexNxclDUkzfw2DuZqn505w
	 60EarsOAYWAAZXR4AccHKVKvkUVo3XQXa4Rlz6HQ7WrY3nnfXggAV/JFsk5bFYIJEr
	 FE/liE8hIrvdg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6003A60DB6;
	Tue, 12 May 2026 14:09:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2A6D515F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2026 14:09:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CF25960DAA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2026 14:09:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Dk7HgzYHyoJu for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 May 2026 14:09:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D5A5E60DA6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D5A5E60DA6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D5A5E60DA6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2026 14:09:12 +0000 (UTC)
X-CSE-ConnectionGUID: wtHmPgP2Qgae9ncgUqBWlQ==
X-CSE-MsgGUID: SlelVaOoSTmf05xZYuIMfQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11784"; a="96929664"
X-IronPort-AV: E=Sophos;i="6.23,231,1770624000"; d="scan'208";a="96929664"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 07:09:12 -0700
X-CSE-ConnectionGUID: PqbxbWiJTGSOpUsuUeNhIA==
X-CSE-MsgGUID: UQxMgbU2RpqNv6CIlqKoWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,231,1770624000"; d="scan'208";a="275892477"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa001.jf.intel.com with ESMTP; 12 May 2026 07:09:11 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org,
	Piotr Skajewski <piotrx.skajewski@intel.com>
Date: Tue, 12 May 2026 16:08:59 +0200
Message-ID: <20260512140904.4105236-4-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260512140904.4105236-1-aleksandr.loktionov@intel.com>
References: <20260512140904.4105236-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778594952; x=1810130952;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wr/w4ZwZyqisH4IfQKaB0ps16N2j7Gli5yKaPV1r+HY=;
 b=YvLOBgCEHiLVYcO4N7qboymemz6a9Da+8rWMUXu6PBqMDZBJgVY/xltm
 me/XX/M5GQNXDe1wgQUl97aw5SD/28ox8lRMJvwu0sgoDwQykzsGhfzEW
 2UHJLRyFMifyJplpAllwGjTpc3JggYs6MwL6Kc4/3yyT5Psf6Equ7GGJJ
 Wifpl3ydUd/DZg6a02mdHTSCJmb6wTaRecqZX6tCuVXR6xl2X6/kt+t+1
 93diLsiO/zlsrUEhLIncWIZMoOZMuS8074+5bl7rqHfGWCqE7IxfmtCtH
 h2zartWKjpKWveGWkqofB8ooO1FCJb6s69PdOO9JbR1XGOPQKwABxEgwc
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YvLOBgCE
Subject: [Intel-wired-lan] [PATCH iwl-next v2 3/8] ixgbe: prevent adding
 duplicate FDIR perfect filter rules
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
X-Rspamd-Queue-Id: 95CDE521FE0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

From: Piotr Skajewski <piotrx.skajewski@intel.com>

When the same flow specification is added twice (same 5-tuple with
different sw_idx values), ixgbe_add_ethtool_fdir_entry() silently
programs the duplicate into hardware using a second FDIR table slot.
This wastes a scarce FDIR entry and can cause confusing behaviour
when deleting rules.

Add a helper ixgbe_match_ethtool_fdir_entry() that walks the in-kernel
filter list before programming hardware.  If an entry with an
identical filter (excluding the sw_idx) already exists, the new add
request is rejected with -EEXIST.

Signed-off-by: Piotr Skajewski <piotrx.skajewski@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  | 25 +++++++++++++++++++
 1 file changed, 23 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
index ba049b3..a2009df 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
@@ -2938,6 +2938,21 @@ static int ixgbe_flowspec_to_flow_type(struct ethtool_rx_flow_spec *fsp,
 	return 1;
 }
 
+static bool ixgbe_match_ethtool_fdir_entry(struct ixgbe_adapter *adapter,
+					   struct ixgbe_fdir_filter *input)
+{
+	struct ixgbe_fdir_filter *rule = NULL;
+
+	hlist_for_each_entry(rule, &adapter->fdir_filter_list, fdir_node) {
+		if (rule->sw_idx == input->sw_idx)
+			continue;
+		if (!memcmp(&rule->filter, &input->filter,
+			    sizeof(rule->filter)))
+			return true;
+	}
+	return false;
+}
+
 static int ixgbe_add_ethtool_fdir_entry(struct ixgbe_adapter *adapter,
 					struct ethtool_rxnfc *cmd)
 {
@@ -2947,7 +2964,7 @@ static int ixgbe_add_ethtool_fdir_entry(struct ixgbe_adapter *adapter,
 	struct ixgbe_fdir_filter *input;
 	union ixgbe_atr_input mask;
-	u8 queue;
-	int err;
+	int err = -EINVAL;
+	u8 queue;
 
 	if (!(adapter->flags & IXGBE_FLAG_FDIR_PERFECT_CAPABLE))
 		return -EOPNOTSUPP;
@@ -3050,6 +3067,12 @@ static int ixgbe_add_ethtool_fdir_entry(struct ixgbe_adapter *adapter,
 	/* apply mask and compute/store hash */
 	ixgbe_atr_compute_perfect_hash_82599(&input->filter, &mask);
 
+	/* check for a duplicate filter */
+	if (ixgbe_match_ethtool_fdir_entry(adapter, input)) {
+		err = -EEXIST;
+		goto err_out_w_lock;
+	}
+
 	/* program filters to filter memory */
 	err = ixgbe_fdir_write_perfect_filter_82599(hw,
 				&input->filter, input->sw_idx, queue);
@@ -3065,7 +3088,7 @@ static int ixgbe_add_ethtool_fdir_entry(struct ixgbe_adapter *adapter,
 	spin_unlock(&adapter->fdir_perfect_lock);
 err_out:
 	kfree(input);
-	return -EINVAL;
+	return err;
 }
 
 static int ixgbe_del_ethtool_fdir_entry(struct ixgbe_adapter *adapter,
-- 
2.52.0

