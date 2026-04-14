Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mEfzJ46x3WmLhwkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 05:16:30 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B9A83F5339
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 05:16:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2C38F428BD;
	Tue, 14 Apr 2026 03:16:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7Lsf_XTgPtBl; Tue, 14 Apr 2026 03:16:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 70D04428C0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776136587;
	bh=ompqMLO0FpOnjSJ67voGfooRZTz61clLZLJwY7an6Gs=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=n6ZZLh25iw1H8/6Dc6qbAkt49mDocDVnVg+itiziFEYJG6F/dQIhAUi71nlHcirNB
	 Y83SltTg4RYWw5Hn/5ZfAXWqYwheHxsM7z0JaaBz/dCGR4ouT2SL+8JFil7Jgbj1SA
	 5Z+cvgG6VSZXp3QN+68oBkGl0VvwgzCy6Saa9/ltjbHRo9vG59U98b05YnIT00zWjJ
	 bE931dBX85qY999D9vZ/9yITVsaE5AZVosUBjl8diMz0nGfHs8On3T3GcgUH3JUSCS
	 XAeorHxi+CXJZrjbf3XV6xWaaBzjW8r75JFrt1uH6NUUgen3Blcsae22A1NEGCodSd
	 b3DnguIPsegpg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 70D04428C0;
	Tue, 14 Apr 2026 03:16:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6C07C283
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 03:16:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 554ED61C17
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 03:16:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id c8hLuWSNqcfr for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Apr 2026 03:16:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 80A6F61C0E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 80A6F61C0E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 80A6F61C0E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 03:16:25 +0000 (UTC)
X-CSE-ConnectionGUID: 1eR2QhRUS2+MwDDqH8dkJQ==
X-CSE-MsgGUID: /aZTMI6SRFCAQjb8470ZsQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11758"; a="87706575"
X-IronPort-AV: E=Sophos;i="6.23,178,1770624000"; d="scan'208";a="87706575"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 20:16:25 -0700
X-CSE-ConnectionGUID: r4bOFk0+TgeGkwx+5EPfTw==
X-CSE-MsgGUID: n54daRj9ROmi8Fhrks/EqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,178,1770624000"; d="scan'208";a="226795514"
Received: from estantil-desk.jf.intel.com ([10.166.241.24])
 by fmviesa007.fm.intel.com with ESMTP; 13 Apr 2026 20:16:23 -0700
From: Emil Tantilov <emil.s.tantilov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, przemyslaw.kitszel@intel.com, jay.bhat@intel.com,
 ivan.d.barrera@intel.com, aleksandr.loktionov@intel.com,
 larysa.zaremba@intel.com, anthony.l.nguyen@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, aleksander.lobakin@intel.com,
 linux-pci@vger.kernel.org, madhu.chittim@intel.com, decot@google.com,
 willemb@google.com, sheenamo@google.com, lukas@wunner.de
Date: Mon, 13 Apr 2026 20:16:30 -0700
Message-Id: <20260414031631.2107-2-emil.s.tantilov@intel.com>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20260414031631.2107-1-emil.s.tantilov@intel.com>
References: <20260414031631.2107-1-emil.s.tantilov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776136585; x=1807672585;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references;
 bh=fJ+x0FuS4kfTxKVTAiQAsAjahv+Ub5YWK+sKz1QUweY=;
 b=SDON4N/ykp5WS+ZGtBpCE8A2OBcQCRWAokV+idw7Ohcct0mfznxHsNNl
 HBUVY8r0hgoTG6MuXdCwZalkaekaGp8f9DBduZf5RFGo3kLbYb6Xw6SVF
 YEUtbGIlz7KwgX4jEwBWh/cWVwVOieT12DKDgSGEheK7ddh/uGTvLyJDG
 SHJKRWc+EVF9NG4uxYXh2paqMX8PT8UJ7wPsDGusixz0XgEtBSdS6IQ9Z
 9q53QKJTtRAnl/F4WYSuCbvP4gmAsO9+ve9cE1Yltm/5xOQ1GjzVFu5ei
 Yz80hJIXDm6+f2OaOyZKMipbyxAfrWNvntZh9DL0adMMqzxxj/JyDbvW2
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SDON4N/y
Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/2] idpf: remove conditonal
 MBX deinit from idpf_vc_core_deinit()
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
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[emil.s.tantilov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.993];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 8B9A83F5339
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Previously it was assumed that idpf_vc_core_deinit() is always being
called during reset handling, with remove being an exception. Ideally
the driver needs to communicate the changes to FW in all instances where
the MBX is not already disabled. Remove the remove_in_prog check from
idpf_vc_core_deinit() as the MBX was already disabled while handling the
reset via libie_ctlq_xn_shutdown() by the service task. This is also
needed by the following patch, introducing PCI callbacks support.

Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
Reviewed-by: Jay Bhat <jay.bhat@intel.com>
Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 11 +----------
 1 file changed, 1 insertion(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 129c8f6b0faa..fceaf3ec1cd4 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -3229,24 +3229,15 @@ int idpf_vc_core_init(struct idpf_adapter *adapter)
  */
 void idpf_vc_core_deinit(struct idpf_adapter *adapter)
 {
-	bool remove_in_prog;
-
 	if (!test_bit(IDPF_VC_CORE_INIT, adapter->flags))
 		return;
 
-	/* Avoid transaction timeouts when called during reset */
-	remove_in_prog = test_bit(IDPF_REMOVE_IN_PROG, adapter->flags);
-	if (!remove_in_prog)
-		idpf_deinit_dflt_mbx(adapter);
-
 	idpf_ptp_release(adapter);
 	idpf_deinit_task(adapter);
 	idpf_idc_deinit_core_aux_device(adapter);
 	idpf_rel_rx_pt_lkup(adapter);
 	idpf_intr_rel(adapter);
-
-	if (remove_in_prog)
-		idpf_deinit_dflt_mbx(adapter);
+	idpf_deinit_dflt_mbx(adapter);
 
 	cancel_delayed_work_sync(&adapter->serv_task);
 
-- 
2.37.3

