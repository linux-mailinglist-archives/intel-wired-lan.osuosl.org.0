Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id hDADJgrGD2qqPgYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 May 2026 04:57:14 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B205B5AE30D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 May 2026 04:57:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A54E442814;
	Fri, 22 May 2026 02:57:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id P6FYi5KfZQvB; Fri, 22 May 2026 02:57:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2F5E04280C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779418631;
	bh=/IvOXWEqCwX8rThgDkjLpUut7wkMZ/kmuY9jcVZL/QY=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nsVwMWgPnXYxur/AStFiwiPGbIOUFKMNZ+kuQoL4e6KjiAwpO7MXwk158z978Gpfc
	 3wz/pRI7t0G63SSnh3kkO0uJZD8s6XEIKCwHBWPFUaPVpIPLctP23woUkBVUCn02eY
	 wwTK43xOz9WCdNtekvg0zTe4IVDmeouHjYjCoU5/6QARNfpUvB8Pa5vded4k7VW8Q5
	 6mh6Jv1CkyGGKC3ODmOmR8hVqRYzixeB1NKtYlr4XsuekILDnYW0DfEYb6EBYEHtbj
	 Bxt970gAw5DhKNsFCRQpy3doYbhxq3KD/c77mZaUOiW0LKrVomDXAenBx7gFpd3VPF
	 J57oooKdqd9CQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2F5E04280C;
	Fri, 22 May 2026 02:57:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id D7FF8282
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2026 02:57:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D5D3E41CEE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2026 02:57:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xNWFuBCKAEh9 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 May 2026 02:57:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DCF4241CDA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DCF4241CDA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DCF4241CDA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2026 02:57:07 +0000 (UTC)
X-CSE-ConnectionGUID: UwaS5HjeSuOK0CKIYiUz8w==
X-CSE-MsgGUID: Eojnam+bSt+PJwyHcDx8NA==
X-IronPort-AV: E=McAfee;i="6800,10657,11793"; a="105811766"
X-IronPort-AV: E=Sophos;i="6.24,161,1774335600"; d="scan'208";a="105811766"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 19:57:07 -0700
X-CSE-ConnectionGUID: jbutY0gHTY+JeRq6rahV3w==
X-CSE-MsgGUID: otHWT591QXamiUnL5yyTAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,161,1774335600"; d="scan'208";a="245035654"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa004.jf.intel.com with ESMTP; 21 May 2026 19:57:08 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org
Date: Fri, 22 May 2026 04:57:02 +0200
Message-ID: <20260522025702.1764129-3-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260522025702.1764129-1-aleksandr.loktionov@intel.com>
References: <20260522025702.1764129-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779418628; x=1810954628;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/bpA+EcRM8jisp5vIwaXJiLrfiq2O03BaisKSzhKiJs=;
 b=IW0uhXmQGLJ1STW/VQtRq4hHGi3iR7elGTjZGyMXO94EbDfwiIEIfnnP
 Zcxm7ZYfkq6M7abCJ8wIgWZ5C49q4OTt/jYDy/rV6/5SnC4DQyusF/2PT
 12bMW0u4JB9Tdi7v53ENlWQUNgY8AS0v7+TpVGd9//GPNg/2VMHnCSVOx
 B6KHwM5npHgVjaEQtU0NHtubQr8mpIFJe/zjcZWFI8n/7069GcTFxqJpR
 wSrrfldkNnips8Sck4vV+VVqw/QGI87sYsUQV0eksianhL7Jt55ovZus3
 uRVKhzn46nvtROgLMY0So7lTCAvTD0njCIk4W94EGlQm7aamzYzzdjkG7
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IW0uhXmQ
Subject: [Intel-wired-lan] [PATCH iwl-next 2/2] iavf: log primary MAC
 address confirmed by PF
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.997];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,osuosl.org:dkim];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: B205B5AE30D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Print an informational message in iavf_mac_add_ok() when the PF
confirms the primary MAC filter. This gives operators a clear
confirmation of the active MAC address in dmesg.

Save the confirmed address to a local variable and emit the log after
releasing mac_vlan_list_lock to avoid holding a spinlock across printk.
Print f->macaddr directly rather than adapter->hw.mac.addr: the filter
address is the value the PF actually accepted and is protected by the
held lock, while hw.mac.addr is not.

Suggested-by: Norbert Zulinski <norbertx.zulinski@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_virtchnl.c | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 146fc680..62b0910 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -692,19 +692,31 @@ void iavf_del_ether_addrs(struct iavf_adapter *adapter)
  * iavf_mac_add_ok
  * @adapter: adapter structure
  *
- * Submit list of filters based on PF response.
+ * Mark MAC filters as handled after PF confirms the add request.
+ * Logs the confirmed primary MAC address when applicable.
  **/
 static void iavf_mac_add_ok(struct iavf_adapter *adapter)
 {
 	struct iavf_mac_filter *f, *ftmp;
+	u8 primary_mac[ETH_ALEN] = {};
+	bool log_primary = false;
 
 	spin_lock_bh(&adapter->mac_vlan_list_lock);
 	list_for_each_entry_safe(f, ftmp, &adapter->mac_filter_list, list) {
 		f->is_new_mac = false;
-		if (!f->add && !f->add_handled)
+		if (!f->add && !f->add_handled) {
 			f->add_handled = true;
+			if (f->is_primary) {
+				ether_addr_copy(primary_mac, f->macaddr);
+				log_primary = true;
+			}
+		}
 	}
 	spin_unlock_bh(&adapter->mac_vlan_list_lock);
+
+	if (log_primary)
+		netdev_info(adapter->netdev,
+			    "MAC address set to %pM\n", primary_mac);
 }
 
 /**
-- 
2.52.0

