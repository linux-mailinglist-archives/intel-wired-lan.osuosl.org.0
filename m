Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MBhqJXtv8Gn9TQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 10:27:39 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 614644800D0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 10:27:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7C15841199;
	Tue, 28 Apr 2026 08:27:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6J-DdUjI4zVK; Tue, 28 Apr 2026 08:27:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 423544116C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777364852;
	bh=ayJUeXiS1YsKqClGaoaO64vEjuxSHTuCKA3ebpRwOhU=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xpeQxb3PvjJO5UErZeVCi7tSwNhPowLBPHvgpnM3s/o4qAQa0P69DjbMGXC2fzFKK
	 WamTay/tp/3Ua4QI7y2thV+aUOltF07+X/GZ7q5vTki2NYNDkgjDhpaLfLyQdHisg/
	 4U0FpAQuXO73BQR0DsnOvou+Da2+441P+hwhUQOtf4MK4yHR3EumdaqnwJ7yN/ABHr
	 gLE2Z2g6pj61CkZ5Chbnb9tUhIyeVh2a/k8hDeMkQ0z2b5GobnYNzmvcC2MEH11MlT
	 4tvSKdBVKGB7vD/onJtzgWRhD4pCdMy1DJM9Dro6txWLNz6qsakNhs7WMhvbnRLnK3
	 tmve0SaT8csDg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 423544116C;
	Tue, 28 Apr 2026 08:27:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 18F091B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 08:27:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1175640655
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 08:27:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LYbGAjBCFs1b for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Apr 2026 08:27:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3885F40654
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3885F40654
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3885F40654
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 08:27:26 +0000 (UTC)
X-CSE-ConnectionGUID: OiaY9oaxQyaBWTofkp8cgw==
X-CSE-MsgGUID: vsjcrdGcRB6jhYlXMCGnUg==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78376952"
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="78376952"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 01:27:19 -0700
X-CSE-ConnectionGUID: TEQEgYFbSx2TAHngdxYPmA==
X-CSE-MsgGUID: uO74OwSJSDmXWpDP6uKUXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="232881574"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa006.jf.intel.com with ESMTP; 28 Apr 2026 01:27:14 -0700
Received: from mglak.igk.intel.com (mglak.igk.intel.com [10.237.112.146])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 2BF7727BA3;
 Tue, 28 Apr 2026 09:27:12 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: aleksander.lobakin@intel.com, sridhar.samudrala@intel.com,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Larysa Zaremba <larysa.zaremba@intel.com>,
 "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 Emil Tantilov <emil.s.tantilov@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>, Josh Hay <joshua.a.hay@intel.com>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>,
 jayaprakash.shanmugam@intel.com, Jiri Pirko <jiri@resnulli.us>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>,
 Richard Cochran <richardcochran@gmail.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, netdev@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Samuel Salin <Samuel.salin@intel.com>
Date: Tue, 28 Apr 2026 10:26:43 +0200
Message-ID: <20260428082654.44364-10-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20260428082654.44364-1-larysa.zaremba@intel.com>
References: <20260428082654.44364-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777364846; x=1808900846;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gs+XU4lEDRKpGO6/iLX0M4XyhCj8kQfrgtJ6/CvYqXI=;
 b=U8Aa8Kae4HwMLqn8U3nP4fNSa79HeMkMSUPlpHrvMfxFGnXsUTlRigS/
 OpasBk01ZK8rtqY+wSmcNBbhnB0lyQHJKpYfWoZwCZdzaSzyaRZAuY1cu
 5M57hLn35b+RjuZurpaWsLU9AmLgBGlh5QbilslwmeW1OsTn1OA1dkrXs
 kJay9VdHsEHsGdh1nnk/rpD0/oL4Jkoz6setKAYFcFu9jXIdVPJ1xWeec
 K6Xz3w8LQ6S+DxECPzRIOm3/071XuaCOKZ6VoNw4u2u56U6/6JIN+9Z57
 4zGJ21ShUkg6HvimIteyb+snIt7xX0higE0KErraJjevxEM5CXySqzH5E
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=U8Aa8Kae
Subject: [Intel-wired-lan] [PATCH iwl-next v7 09/14] idpf: make mbx_task
 queueing and cancelling more consistent
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
X-Rspamd-Queue-Id: 614644800D0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,linux.intel.com,resnulli.us,davemloft.net,google.com,kernel.org,redhat.com,lwn.net,gmail.com,lunn.ch,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:mid,intel.com:email];
	FROM_NEQ_ENVFROM(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]

As a consequence of refactoring idpf code to use libeth APIs,
idpf_vc_xn_shutdown was merged with and replaced by idpf_deinit_dflt_mbx.
This does not affect the Tx path, as it checked for a presence of an xn
manager anyway. Rx processing is handled by the mbx_task that is not always
cancelled before calling the new consolidated mailbox deinit function.
Moreover, in the reset path idpf_intr_rel() reschedules it after the deinit
is done. This leads to mbx_task referencing the freed mailbox and causing
KASAN warnings.

To remedy this, in the init path, do the first queueing of mbx_task in
idpf_init_dflt_mbx(), in deinit and reset, always cancel the task in
idpf_deinit_dflt_mbx() and in every flow first call idpf_mb_intr_rel_irq().

Reviewed-by: Emil Tantilov <emil.s.tantilov@intel.com>
Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
Tested-by: Samuel Salin <Samuel.salin@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf.h          | 1 +
 drivers/net/ethernet/intel/idpf/idpf_lib.c      | 9 ++++-----
 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 6 +++++-
 3 files changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index 679539a1b947..1d0e32e47e87 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -984,6 +984,7 @@ void idpf_vc_event_task(struct work_struct *work);
 void idpf_dev_ops_init(struct idpf_adapter *adapter);
 void idpf_vf_dev_ops_init(struct idpf_adapter *adapter);
 int idpf_intr_req(struct idpf_adapter *adapter);
+void idpf_mb_intr_rel_irq(struct idpf_adapter *adapter);
 void idpf_intr_rel(struct idpf_adapter *adapter);
 u16 idpf_get_max_tx_hdr_size(struct idpf_adapter *adapter);
 int idpf_initiate_soft_reset(struct idpf_vport *vport,
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 0d131bf0993e..7988836fbae0 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -68,9 +68,11 @@ static void idpf_deinit_vector_stack(struct idpf_adapter *adapter)
  * This will also disable interrupt mode and queue up mailbox task. Mailbox
  * task will reschedule itself if not in interrupt mode.
  */
-static void idpf_mb_intr_rel_irq(struct idpf_adapter *adapter)
+void idpf_mb_intr_rel_irq(struct idpf_adapter *adapter)
 {
-	clear_bit(IDPF_MB_INTR_MODE, adapter->flags);
+	if (!test_and_clear_bit(IDPF_MB_INTR_MODE, adapter->flags))
+		return;
+
 	kfree(free_irq(adapter->msix_entries[0].vector, adapter));
 	queue_delayed_work(adapter->mbx_wq, &adapter->mbx_task, 0);
 }
@@ -1938,14 +1940,11 @@ static void idpf_init_hard_reset(struct idpf_adapter *adapter)
 		goto unlock_mutex;
 	}
 
-	queue_delayed_work(adapter->mbx_wq, &adapter->mbx_task, 0);
-
 	/* Initialize the state machine, also allocate memory and request
 	 * resources
 	 */
 	err = idpf_vc_core_init(adapter);
 	if (err) {
-		cancel_delayed_work_sync(&adapter->mbx_task);
 		idpf_deinit_dflt_mbx(adapter);
 		goto unlock_mutex;
 	}
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 13c8505d126f..8936c2a67ce0 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -2982,6 +2982,8 @@ int idpf_init_dflt_mbx(struct idpf_adapter *adapter)
 	adapter->xnm = params.xnm;
 	adapter->state = __IDPF_VER_CHECK;
 
+	queue_delayed_work(adapter->mbx_wq, &adapter->mbx_task, 0);
+
 	return 0;
 }
 
@@ -2991,6 +2993,9 @@ int idpf_init_dflt_mbx(struct idpf_adapter *adapter)
  */
 void idpf_deinit_dflt_mbx(struct idpf_adapter *adapter)
 {
+	idpf_mb_intr_rel_irq(adapter);
+	cancel_delayed_work_sync(&adapter->mbx_task);
+
 	if (adapter->arq && adapter->asq) {
 		idpf_mb_clean(adapter, adapter->asq, true);
 		libie_ctlq_xn_deinit(adapter->xnm, &adapter->ctlq_ctx);
@@ -3249,7 +3254,6 @@ void idpf_vc_core_deinit(struct idpf_adapter *adapter)
 		idpf_deinit_dflt_mbx(adapter);
 
 	cancel_delayed_work_sync(&adapter->serv_task);
-	cancel_delayed_work_sync(&adapter->mbx_task);
 
 	idpf_vport_params_buf_rel(adapter);
 
-- 
2.47.0

