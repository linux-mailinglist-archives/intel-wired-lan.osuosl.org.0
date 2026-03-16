Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YM/AABWSuGkUgAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Mar 2026 00:28:21 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A7D22A1F3A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Mar 2026 00:28:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B73A18398E;
	Mon, 16 Mar 2026 23:28:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C5PeC4397zyc; Mon, 16 Mar 2026 23:28:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ECF0283B77
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773703698;
	bh=CwJ35X01SVpINzDBOCfjjNs1WGFhqgSX7ouuVWGTbf0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5MvYL8G4u3BqnQFZUOOf/DEytCUg42yrSI/s17WV0CqDIg/ErXaknxn5QK2nr1DYO
	 hhe6WV2JtMcZQyTqHSQddyWtQjcy98MaPY0nptNcrT9HVhoG2aQVoE8mzxygtX5BmU
	 MDmbF76Uo1FrK7FmjGrKorZVE/eX1S7tsuH5DKpaKzGVd/NjJN35cEuMGviDR4bNuT
	 OYf4qJlEpcgcgxZsQw3FYpb9wqO8IpiMUGwqDVM4p3+UV6lruZomFd7/FcTMfrCUhf
	 xTWt7kzKHmzB/35nFCHmRMuAzsjLuKI4MXHYDjlEgYBNB8FQLBiaDhChVIHdV2YqdG
	 39KVGIrgm+sig==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id ECF0283B77;
	Mon, 16 Mar 2026 23:28:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id DFD9E3D9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 23:28:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C5E4F40943
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 23:28:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eDi3enXIlqhe for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Mar 2026 23:28:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9D478403C2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9D478403C2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9D478403C2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 23:28:13 +0000 (UTC)
X-CSE-ConnectionGUID: 1Gk9RWNBQQeGIt9k9N6SPw==
X-CSE-MsgGUID: hr9boY/uRXW/hsrZkEDf7w==
X-IronPort-AV: E=McAfee;i="6800,10657,11731"; a="74912807"
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="74912807"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 16:28:11 -0700
X-CSE-ConnectionGUID: PbfzmNsnSTatofHeTtxfsA==
X-CSE-MsgGUID: rjn7lNHgQjyZZ7Ue+5twlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="246842459"
Received: from estantil-desk.jf.intel.com ([10.166.241.24])
 by fmviesa001.fm.intel.com with ESMTP; 16 Mar 2026 16:28:11 -0700
From: Emil Tantilov <emil.s.tantilov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, bigeasy@linutronix.de,
 clrkwllms@kernel.org, rostedt@goodmis.org, linux-rt-devel@lists.linux.dev,
 sgzhang@google.com, boolli@google.com
Date: Mon, 16 Mar 2026 16:28:17 -0700
Message-Id: <20260316232819.6872-2-emil.s.tantilov@intel.com>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20260316232819.6872-1-emil.s.tantilov@intel.com>
References: <20260316232819.6872-1-emil.s.tantilov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773703694; x=1805239694;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references;
 bh=DFeoIGpeGpPd8Y9tGCMjZ0K7fdB1gVfv3VkHksUekN0=;
 b=ZNveUeMxo0JV5AbviOfjLEf6UMzedxzQp8CUqoR+vSfMZ2XU/SEQI7We
 IYEAYJknAjo3/POfAHvtCp5lS93roOhUbtMYepq6KOkWQ4asGGu+pCLAz
 v/pEtxTuNk+0lyF5aHnh99BOYpRYa1f3aOVGwMscTY8s7WDdiFV3bo48j
 SJ70cEFj2n2SrPt4n6KVy8rS3hqYwTtmXYJ8aZx9biY6hqyjq1PazNet1
 4xvk2mKEQcdrxIqC/eeBwiH4WdeMDFyCxlVhZpQ6vQpI0PAnDATLLrKhS
 09GtJ0XlX4Hwu6b1Sd7PgbFIgwWGyZVqXlAdJoohUpE2cXtvcGLIA+O7w
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZNveUeMx
Subject: [Intel-wired-lan] [PATCH iwl-net 1/3] idpf: improve locking around
 idpf_vc_xn_push_free()
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
	R_SPF_ALLOW(-0.20)[+mx];
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
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 5A7D22A1F3A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Refactor the VC logic dealing with transaction accounting where
both push and pop_free are using the same spinlock free_xn_bm.
This resolves potential race when setting and clearing the bits
in the free_xn_bm bitmask.

Fixes: 34c21fa894a1 ("idpf: implement virtchnl transaction manager")
Reported-by: Ray Zhang <sgzhang@google.com>
Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 17 ++++++++++++++---
 1 file changed, 14 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 113ecfc16dd7..21a6c9d22085 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -401,12 +401,18 @@ struct idpf_vc_xn *idpf_vc_xn_pop_free(struct idpf_vc_xn_manager *vcxn_mngr)
  * idpf_vc_xn_push_free - Push a free transaction to free list
  * @vcxn_mngr: transaction manager to push to
  * @xn: transaction to push
+ *
+ * Callers must ensure idpf_vc_xn_release_bufs() has been called (under
+ * idpf_vc_xn_lock) before invoking this function. This function must
+ * be called without holding idpf_vc_xn_lock to avoid nesting a sleepable
+ * spinlock inside a raw_spinlock on PREEMPT_RT kernels.
  */
 static void idpf_vc_xn_push_free(struct idpf_vc_xn_manager *vcxn_mngr,
 				 struct idpf_vc_xn *xn)
 {
-	idpf_vc_xn_release_bufs(xn);
+	spin_lock_bh(&vcxn_mngr->xn_bm_lock);
 	set_bit(xn->idx, vcxn_mngr->free_xn_bm);
+	spin_unlock_bh(&vcxn_mngr->xn_bm_lock);
 }
 
 /**
@@ -428,6 +434,7 @@ ssize_t idpf_vc_xn_exec(struct idpf_adapter *adapter,
 			const struct idpf_vc_xn_params *params)
 {
 	const struct kvec *send_buf = &params->send_buf;
+	bool push_free = false;
 	struct idpf_vc_xn *xn;
 	ssize_t retval;
 	u16 cookie;
@@ -514,10 +521,13 @@ ssize_t idpf_vc_xn_exec(struct idpf_adapter *adapter,
 	}
 
 release_and_unlock:
-	idpf_vc_xn_push_free(adapter->vcxn_mngr, xn);
+	idpf_vc_xn_release_bufs(xn);
+	push_free = true;
 	/* If we receive a VC reply after here, it will be dropped. */
 only_unlock:
 	idpf_vc_xn_unlock(xn);
+	if (push_free)
+		idpf_vc_xn_push_free(adapter->vcxn_mngr, xn);
 
 	return retval;
 }
@@ -559,7 +569,7 @@ idpf_vc_xn_forward_async(struct idpf_adapter *adapter, struct idpf_vc_xn *xn,
 	}
 
 release_bufs:
-	idpf_vc_xn_push_free(adapter->vcxn_mngr, xn);
+	idpf_vc_xn_release_bufs(xn);
 
 	return err;
 }
@@ -619,6 +629,7 @@ idpf_vc_xn_forward_reply(struct idpf_adapter *adapter,
 	case IDPF_VC_XN_ASYNC:
 		err = idpf_vc_xn_forward_async(adapter, xn, ctlq_msg);
 		idpf_vc_xn_unlock(xn);
+		idpf_vc_xn_push_free(adapter->vcxn_mngr, xn);
 		return err;
 	default:
 		dev_err_ratelimited(&adapter->pdev->dev, "Overwriting VC reply (op %d)\n",
-- 
2.37.3

