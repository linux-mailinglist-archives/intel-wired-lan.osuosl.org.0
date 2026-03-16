Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id rDB0BxWSuGligAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Mar 2026 00:28:21 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B1852A1F3B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Mar 2026 00:28:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 045724114B;
	Mon, 16 Mar 2026 23:28:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id q1_xIj16GvAC; Mon, 16 Mar 2026 23:28:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7FC58410A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773703698;
	bh=hQH+LII2UrwyBb/yws2qFkO13yC294LT1cZXAxY3mb0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5fruMiFcXXwd0eFJz39U52n1o7+csdMf2fScXj/G8Y0ItQUaWnj2AqMDy2/jZxPY+
	 jQil8y3Vwu/PmpRhfewjf5w0PKcj6VKlah179ezVd8V6TvHCzQMfTIWvU4qiZrTXOq
	 zkORubTts7qQu/MSqmp4boRMfb6QcFUlkK6rEuBbL3scAQ39vPknS+2tJI486IRQhA
	 EdAMZzRow+4thjFTKG+ibkC3YQ0QJL1Rrur6GqV5G2N7kE9Uq5+XU01cLNkJ/iT0H/
	 eEFTkGQQ+24LMpMB0m1kI6gKFYOxsrb1f+2ffnEdawXj7/7eACxVCxY3H+lMaQ+4s5
	 tLxcx26+0Up5g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7FC58410A2;
	Mon, 16 Mar 2026 23:28:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 511203C6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 23:28:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 371D4403C2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 23:28:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Voq990sIopNY for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Mar 2026 23:28:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7159740942
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7159740942
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7159740942
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 23:28:15 +0000 (UTC)
X-CSE-ConnectionGUID: fMq8lTt/Td2sIzHzJnmbqg==
X-CSE-MsgGUID: wEOv3o27RfKTcZN07JTW3g==
X-IronPort-AV: E=McAfee;i="6800,10657,11731"; a="74912817"
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="74912817"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 16:28:12 -0700
X-CSE-ConnectionGUID: E8ySiVK7SmurQ1p8rk3GJw==
X-CSE-MsgGUID: csyx8qbAQ5Ws3qsMJ4pZmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="246842468"
Received: from estantil-desk.jf.intel.com ([10.166.241.24])
 by fmviesa001.fm.intel.com with ESMTP; 16 Mar 2026 16:28:12 -0700
From: Emil Tantilov <emil.s.tantilov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, bigeasy@linutronix.de,
 clrkwllms@kernel.org, rostedt@goodmis.org, linux-rt-devel@lists.linux.dev,
 sgzhang@google.com, boolli@google.com
Date: Mon, 16 Mar 2026 16:28:18 -0700
Message-Id: <20260316232819.6872-3-emil.s.tantilov@intel.com>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20260316232819.6872-1-emil.s.tantilov@intel.com>
References: <20260316232819.6872-1-emil.s.tantilov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773703695; x=1805239695;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references;
 bh=CAIUH0+yh38w0o420zH+OMnFXaDbOeNykS80/u8yIBI=;
 b=i3uIW9zwbLqxrP5x36oNyC6QbzIDD5Ml2H+LPNp6ZVWA2OA1ktQ5bdkU
 kUGTsizLXgRm7fzS9MmKExumneOFpOwXs8rKW6jOJO8KK+babuTobdTsU
 8iw+ldP5n9L1XiEdMcGdWRCyrpBRYQkXE81VCymEMg78JSO9GahEW/OrH
 pKmILdet7lkrJ2GCl3ANTRG/fA3gBMmbWSC4HRpy7dKUfGq5MEGyp8UHK
 MPUsOPwJVeD6D9vkMu0XFh3FUqZUdTaamRetXufxwjfCTj1KbLCBPxwx3
 o2PI3+OvgSYJzmxT8MJe1hCTLgaS38SFeQeCKP+47bm0r0boETvofURAD
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=i3uIW9zw
Subject: [Intel-wired-lan] [PATCH iwl-net 2/3] idpf: set the payload size
 before calling the async handler
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[emil.s.tantilov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 7B1852A1F3B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Set the payload size before forwarding the reply to the async handler.
Without this, xn->reply_sz will be 0 and idpf_mac_filter_async_handler()
will never get past the size check.

Fixes: 34c21fa894a1 ("idpf: implement virtchnl transaction manager")
Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 21a6c9d22085..6b9692b30040 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -627,6 +627,10 @@ idpf_vc_xn_forward_reply(struct idpf_adapter *adapter,
 		err = -ENXIO;
 		goto out_unlock;
 	case IDPF_VC_XN_ASYNC:
+		/* Set reply_sz from the actual payload so that async_handler
+		 * can evaluate the response.
+		 */
+		xn->reply_sz = ctlq_msg->data_len;
 		err = idpf_vc_xn_forward_async(adapter, xn, ctlq_msg);
 		idpf_vc_xn_unlock(xn);
 		idpf_vc_xn_push_free(adapter->vcxn_mngr, xn);
-- 
2.37.3

