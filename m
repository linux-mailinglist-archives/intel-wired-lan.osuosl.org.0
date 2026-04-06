Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CBFmFxNA1GmRsQcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 07 Apr 2026 01:21:55 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CF08B3A8183
	for <lists+intel-wired-lan@lfdr.de>; Tue, 07 Apr 2026 01:21:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9E097407FC;
	Mon,  6 Apr 2026 23:21:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id evaKPrh-mq6D; Mon,  6 Apr 2026 23:21:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 411FB407CE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775517709;
	bh=x/h072mNH8O3frvdI61cCmI6mKDeI7Vt7BpXvSiOBIU=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=F71jPZgI6MWpE3b0kxVyLod9klmxcPnrjxRyNznHM2M4Gcw8pSQWkjXEhOjP7Xz7w
	 0CKdpJPlRR8bSwZ+7oWTeEAOfP3bvJjB1568KH2sJLY/P7RAgU/q7ZxTi6ojhVUcgT
	 PerXiKWr02Cddbzsr7j1pUMF0C8+VDIDhS94eBoDHgMcBWCQb1Dq9K/S7smBrvEtWg
	 PskraTVO+qsZBe2uoKpnpshkA7WLQrNyYSz9ckmv+r35Ym3ebmeqTO7lCdtOLOn0la
	 Z2uaU26zEXeqQxOWnJeGblX7foJWrFPwT2zgf2EgZWY2UNy/uBPiHH43jVFNIOf5ZA
	 MXZuEmyhkEuhw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 411FB407CE;
	Mon,  6 Apr 2026 23:21:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id B81941EB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Apr 2026 23:21:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9D20C80CAF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Apr 2026 23:21:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IieMTD-4g-DT for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Apr 2026 23:21:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=joshua.a.hay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E439880D29
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E439880D29
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E439880D29
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Apr 2026 23:21:45 +0000 (UTC)
X-CSE-ConnectionGUID: kl13WZyDSwaPaDqYocJUcg==
X-CSE-MsgGUID: IKQvVeI1SYiQzYwMaSPzCg==
X-IronPort-AV: E=McAfee;i="6800,10657,11751"; a="76368984"
X-IronPort-AV: E=Sophos;i="6.23,164,1770624000"; d="scan'208";a="76368984"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2026 16:21:45 -0700
X-CSE-ConnectionGUID: njMNRV/uQE+PsVEet3GWgQ==
X-CSE-MsgGUID: kUxQpqsAQu2cm77uTCXO1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,164,1770624000"; d="scan'208";a="232050499"
Received: from dcskidmo-m40.jf.intel.com ([10.166.241.14])
 by orviesa003.jf.intel.com with ESMTP; 06 Apr 2026 16:21:45 -0700
From: Joshua Hay <joshua.a.hay@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org
Date: Mon,  6 Apr 2026 16:32:35 -0700
Message-Id: <20260406233236.3585504-2-joshua.a.hay@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20260406233236.3585504-1-joshua.a.hay@intel.com>
References: <20260406233236.3585504-1-joshua.a.hay@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775517706; x=1807053706;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zYACHUeAYIX/BOrJWhNTzqspS+ACuYxHxxVneDb5d+Y=;
 b=beK4Pyd6W13T66hZjFpmtCbEcRQEzBO8ILqvLShwRA34pualk35oWOek
 3ymnfz3SAN0EhdVtOFZDZZnAAzAPOkvG4OeYBga1qRwXvU6LSmJMa+VUY
 mczw9idfwdCwr3hsrITUSJxQd3GFa2cCG5y0WLybo1gQyk5ady27Q4lzg
 iMKgTyzLsfEut43p49fik/y+42ZzcTVfJteeyqRfL7VWcp0qTEegOT/ES
 6UNVoyOvRRnB/2ZkMNMCm6gKWoaXZxvSpxghxSWjx7Yz+DgzuTEykSJy9
 RdqgcL2xyXaeW4ArG7tA9ZuUOnJDIfPEr27Ptonh7DudDYRDwCFs6U+eG
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=beK4Pyd6
Subject: [Intel-wired-lan] [PATCH iwl-net 1/2] idpf: do not enable XDP if
 queue based scheduling is not supported
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
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[joshua.a.hay@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: CF08B3A8183
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The current XDP implementation uses queue based scheduling for its TxQs.
If the FW does not advertise support for queue based scheduling, do not
enable XDP. Add the missing capability check at the start of the XDP
configuration. This will temporarily break XDP while a flow based
implementation is worked on, as well as while FWs with queue based by
default are rolled out.

Fixes: 705457e7211f ("idpf: implement XDP_SETUP_PROG in ndo_bpf for splitq")
Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
---
 drivers/net/ethernet/intel/idpf/xdp.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/net/ethernet/intel/idpf/xdp.c b/drivers/net/ethernet/intel/idpf/xdp.c
index 18a6e7062863..9c3bdb193684 100644
--- a/drivers/net/ethernet/intel/idpf/xdp.c
+++ b/drivers/net/ethernet/intel/idpf/xdp.c
@@ -511,6 +511,13 @@ int idpf_xdp(struct net_device *dev, struct netdev_bpf *xdp)
 	if (!idpf_is_queue_model_split(vport->dflt_qv_rsrc.txq_model))
 		goto notsupp;
 
+	if (!idpf_is_cap_ena(vport->adapter, IDPF_OTHER_CAPS,
+			     VIRTCHNL2_CAP_SPLITQ_QSCHED)) {
+		NL_SET_ERR_MSG_MOD(xdp->extack,
+				   "Device does not support requested XDP Tx scheduling mode");
+		goto notsupp;
+	}
+
 	switch (xdp->command) {
 	case XDP_SETUP_PROG:
 		ret = idpf_xdp_setup_prog(vport, xdp);
-- 
2.39.2

