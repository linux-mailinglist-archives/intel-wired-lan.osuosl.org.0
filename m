Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0njhLOpFPWp40ggAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jun 2026 17:14:50 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7768C6C6F91
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jun 2026 17:14:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=LePJVUr9;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2C1A56102B;
	Thu, 25 Jun 2026 15:14:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gUVBQXrZEFu0; Thu, 25 Jun 2026 15:14:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 94C8661036
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782400487;
	bh=3fmMgBzOeXX9k/+GXxnJipZbvT4QZDo5TLzZ4A98wz0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LePJVUr9xpJL0wvZskUqgPdO9FJPKkGglQ1Q9LA5VRRPqpXSEkSscGQaEZ+U+NfS+
	 oxo6/5Nc5rqWdu748dv+YL5pm+xUNxwBZDiR50B2F0/WiC+zMEPcb9bozLWFteObuU
	 nDm4Rpa4dY8y+gid+xekVWORW+E/IwEw1u3JZOUwBiNKWLvJNI8CmqpHbjA/oCkPvm
	 ct2VazAVyiIoGlQZ7jn+I+fdtYMJdKbeSxgsrusGezTtfsAhgp89X3BZt22ojBr7XM
	 DIKcD/nLCPy1wswlyOkUF9mIXztnLE0PKfmcT3pZt5ctIpNg7mxdksIe5m+zU3C+Z/
	 8PUa76OBLDrQg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 94C8661036;
	Thu, 25 Jun 2026 15:14:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 2DD52254
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jun 2026 15:14:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1F9F941110
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jun 2026 15:14:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qc0FcVPv7l9X for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jun 2026 15:14:45 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 00CCC4110D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 00CCC4110D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 00CCC4110D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jun 2026 15:14:44 +0000 (UTC)
X-CSE-ConnectionGUID: Pa0Py0ehRYGDEii8gXxT1w==
X-CSE-MsgGUID: lQFkz5TJTRKtU6y1vaTojQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11827"; a="83304534"
X-IronPort-AV: E=Sophos;i="6.24,224,1774335600"; d="scan'208";a="83304534"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2026 08:14:44 -0700
X-CSE-ConnectionGUID: n1pJKhfJRUW+IGRRjAj0NA==
X-CSE-MsgGUID: AyD4E529QxyIjjBOmKqz/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,224,1774335600"; d="scan'208";a="254866944"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orviesa004.jf.intel.com with ESMTP; 25 Jun 2026 08:14:43 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, magnus.karlsson@intel.com, kuba@kernel.org,
 pabeni@redhat.com, horms@kernel.org, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com, Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Date: Thu, 25 Jun 2026 17:14:29 +0200
Message-Id: <20260625151431.1102838-2-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20260625151431.1102838-1-maciej.fijalkowski@intel.com>
References: <20260625151431.1102838-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782400485; x=1813936485;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FqAu1SYkvELBsVn8SuaoHwAKV6DkoPDKT+iZ6Cw8WBQ=;
 b=MNVe+H1aZMS9lpbP3DnYRroNu/OhhupBOv4i3xgB0bBvXkKqSXOQ9wx8
 wfWDmn0TcoqWyZhaF48+7NwgN1CoE+Aakoqg+CSfd0l51/JBOfSq9/2VX
 +bwvunRNm4vZPLCQxjBVQqexjwFLmdF1B7CZvELgcRQNl8f/7FzbjiAb4
 lQL5H5uy1bmcVFLVqs5r70cZiZPD7F2wjsy/NNMoVu7ZwP6wBe2quDxY8
 H+24JoMiTymwnAq9535elMaroOIMGMhtrVuMGcY9UqnluAvJbtnJWOQI+
 JfFyFcBCtrIVjiRf+iP2o2gmkkSXJ9dNsgdYDMke1lhGUslo2sgfGBbag
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MNVe+H1a
Subject: [Intel-wired-lan] [PATCH v4 net 1/3] i40e: unregister netdev before
 clearing VSI on reinit failure
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo,osuosl.org:dkim,osuosl.org:from_smtp,intel.com:email,intel.com:mid,intel.com:from_mime];
	FROM_NEQ_ENVFROM(0.00)[maciej.fijalkowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_SEVEN(0.00)[9];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7768C6C6F91

i40e_vsi_reinit_setup() tears down the existing VSI queue/ring backing
state before allocating replacement arrays and queue tracking. If one of
these early allocations fails, the function jumps directly to err_vsi
and calls i40e_vsi_clear().

For a registered netdev, this frees the VSI while
netdev_priv(netdev)->vsi can still point at it, leaving the registered
netdev with dangling private driver state.

Split the error path so failures after destructive reinit teardown first
unregister and free the netdev before clearing the VSI.

Fixes: d2a69fefd756 ("i40e: Fix changing previously set num_queue_pairs for PFs")
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index a04683004a56..471fa7f7b643 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -14274,7 +14274,7 @@ static struct i40e_vsi *i40e_vsi_reinit_setup(struct i40e_vsi *vsi)
 	i40e_set_num_rings_in_vsi(vsi);
 	ret = i40e_vsi_alloc_arrays(vsi, false);
 	if (ret)
-		goto err_vsi;
+		goto err_netdev;
 
 	alloc_queue_pairs = vsi->alloc_queue_pairs *
 			    (i40e_enabled_xdp_vsi(vsi) ? 2 : 1);
@@ -14284,7 +14284,7 @@ static struct i40e_vsi *i40e_vsi_reinit_setup(struct i40e_vsi *vsi)
 		dev_info(&pf->pdev->dev,
 			 "failed to get tracking for %d queues for VSI %d err %d\n",
 			 alloc_queue_pairs, vsi->seid, ret);
-		goto err_vsi;
+		goto err_netdev;
 	}
 	vsi->base_queue = ret;
 
@@ -14309,6 +14309,7 @@ static struct i40e_vsi *i40e_vsi_reinit_setup(struct i40e_vsi *vsi)
 
 err_rings:
 	i40e_vsi_free_q_vectors(vsi);
+err_netdev:
 	if (vsi->netdev_registered) {
 		vsi->netdev_registered = false;
 		unregister_netdev(vsi->netdev);
@@ -14318,7 +14319,6 @@ static struct i40e_vsi *i40e_vsi_reinit_setup(struct i40e_vsi *vsi)
 	if (vsi->type == I40E_VSI_MAIN)
 		i40e_devlink_destroy_port(pf);
 	i40e_aq_delete_element(&pf->hw, vsi->seid, NULL);
-err_vsi:
 	i40e_vsi_clear(vsi);
 	return NULL;
 }
-- 
2.43.0

