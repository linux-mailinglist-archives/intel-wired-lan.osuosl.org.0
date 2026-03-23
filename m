Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yMX0MT57wWkQTQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Mar 2026 18:41:18 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 77C122FA34D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Mar 2026 18:41:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 24BAC40C2E;
	Mon, 23 Mar 2026 17:41:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IA-oXtNtDnim; Mon, 23 Mar 2026 17:41:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7FEA740C35
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774287676;
	bh=EaksqJ2n2H/Eqv4puwVEMV347dsJGUZZm9BmspBAYW8=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=znUAIOGax8pdMNg+JM+rs8wUsAI1wcHgJ95Q+6GR4z0lQ1P1RVexItaFbww6AUJGb
	 LN6KRJzaGL1ofPuSr/WBEwmtc02gRtPYGYFllW53vDIX4QJCTX8j5vJS015yML+FfC
	 /vB4o4D2XC4uuOsemd6Tr6KR25CF+LDy95ux6GUn7sEU07qqY6/XYp9AcmVxO5InCG
	 wDNa2K5W6iVVC0sh6HtZrmm+8dDveFAhDqk1aGxz9RigPOWdsHB3EAEx4oKaQZmuux
	 vgV3uqCSBUbinbDRPNc+RJH+++XaBv4ybv6VIsiw91GeCryBgxHt3R8GsfKjJlUMkt
	 XnVM6K8Db5umw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7FEA740C35;
	Mon, 23 Mar 2026 17:41:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 0248B353
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 17:41:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7C29B81CE1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 17:41:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DNeeRdspxNQh for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Mar 2026 17:41:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 48ECB81DEC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 48ECB81DEC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 48ECB81DEC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 17:41:11 +0000 (UTC)
X-CSE-ConnectionGUID: XN6lGsVTTUW32MVUNbkEHg==
X-CSE-MsgGUID: 8mP0y9aTQzygfuJtbI+qcA==
X-IronPort-AV: E=McAfee;i="6800,10657,11738"; a="75484684"
X-IronPort-AV: E=Sophos;i="6.23,137,1770624000"; d="scan'208";a="75484684"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2026 10:41:11 -0700
X-CSE-ConnectionGUID: W9R+BMcEQFGrD9hMIdyu0Q==
X-CSE-MsgGUID: CXxZ9ZF4QpKu9wUiyDcD8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,137,1770624000"; d="scan'208";a="228576679"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa004.jf.intel.com with ESMTP; 23 Mar 2026 10:41:05 -0700
Received: from mglak.igk.intel.com (mglak.igk.intel.com [10.237.112.146])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 09B0E32C86;
 Mon, 23 Mar 2026 17:41:02 +0000 (GMT)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: aleksander.lobakin@intel.com, sridhar.samudrala@intel.com,
 "Singhai, Anjali" <anjali.singhai@intel.com>,
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
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Mon, 23 Mar 2026 18:40:37 +0100
Message-ID: <20260323174052.5355-7-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20260323174052.5355-1-larysa.zaremba@intel.com>
References: <20260323174052.5355-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774287671; x=1805823671;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TrZ3hswvgfQOE0DkGI4vXqV0V72Ukrv+nXsdh9FZD9E=;
 b=biZum7GNeLY/gtR6R5O1pcezJI5SySFqNwNx0RatUSA78kQkX04JSRcx
 dSvMZ0KG6eF32tX4ilPHhhuwvPVOWUrJuuSfxes+Qvluqn2fjw66yGIMA
 sxVFwxVbOwVfXvjdr4NXqOAz3kj1Knl8leAcN5j1oGQi8Yh1pa7xSF8QM
 za1RYp7aEj8pOWWy2Wi0cFvOeVKpZcw1+DzNR/05yxCVzAnLyfaXJ7Gg+
 XXiaoEdRLd7RKLA6E7mhufnVLJ5EPG8gvdyE6V5eVWvJ0E4503gHsdakm
 oi9qMLdylv2+RCSucazK+s6qZHBs6ab0aLXeBiiJz8eXTSdsSZOxB2AGn
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=biZum7GN
Subject: [Intel-wired-lan] [PATCH iwl-next v6 06/14] idpf: remove
 'vport_params_reqd' field
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,intel.com:email,intel.com:mid];
	FROM_NEQ_ENVFROM(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 77C122FA34D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>

While sending a create vport message to the device control plane, a create
vport virtchnl message is prepared with all the required info to initialize
the vport. This info is stored in the adapter struct but never used
thereafter. So, remove the said field.

Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
Tested-by: Samuel Salin <Samuel.salin@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf.h        |  2 --
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |  2 --
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 30 +++++++------------
 3 files changed, 10 insertions(+), 24 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index fe6ca5fcc5e3..e717f8097d23 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -638,7 +638,6 @@ struct idpf_vc_xn_manager;
  * @avail_queues: Device given queue limits
  * @vports: Array to store vports created by the driver
  * @netdevs: Associated Vport netdevs
- * @vport_params_reqd: Vport params requested
  * @vport_params_recvd: Vport params received
  * @vport_ids: Array of device given vport identifiers
  * @singleq_pt_lkup: Lookup table for singleq RX ptypes
@@ -697,7 +696,6 @@ struct idpf_adapter {
 	struct idpf_avail_queue_info avail_queues;
 	struct idpf_vport **vports;
 	struct net_device **netdevs;
-	struct virtchnl2_create_vport **vport_params_reqd;
 	struct virtchnl2_create_vport **vport_params_recvd;
 	u32 *vport_ids;
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index cf966fe6c759..d88ca59edf97 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -1109,8 +1109,6 @@ static void idpf_vport_rel(struct idpf_vport *vport)
 
 	kfree(adapter->vport_params_recvd[idx]);
 	adapter->vport_params_recvd[idx] = NULL;
-	kfree(adapter->vport_params_reqd[idx]);
-	adapter->vport_params_reqd[idx] = NULL;
 
 	kfree(vport);
 	adapter->num_alloc_vports--;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index d5a877e1fef8..6e6aa38654f6 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -1555,14 +1555,10 @@ int idpf_send_create_vport_msg(struct idpf_adapter *adapter,
 	ssize_t reply_sz;
 
 	buf_size = sizeof(struct virtchnl2_create_vport);
-	if (!adapter->vport_params_reqd[idx]) {
-		adapter->vport_params_reqd[idx] = kzalloc(buf_size,
-							  GFP_KERNEL);
-		if (!adapter->vport_params_reqd[idx])
-			return -ENOMEM;
-	}
+	vport_msg = kzalloc(buf_size, GFP_KERNEL);
+	if (!vport_msg)
+		return -ENOMEM;
 
-	vport_msg = adapter->vport_params_reqd[idx];
 	vport_msg->vport_type = cpu_to_le16(VIRTCHNL2_VPORT_TYPE_DEFAULT);
 	vport_msg->vport_index = cpu_to_le16(idx);
 
@@ -1579,8 +1575,7 @@ int idpf_send_create_vport_msg(struct idpf_adapter *adapter,
 	err = idpf_vport_calc_total_qs(adapter, idx, vport_msg, max_q);
 	if (err) {
 		dev_err(&adapter->pdev->dev, "Enough queues are not available");
-
-		return err;
+		goto rel_buf;
 	}
 
 	if (!adapter->vport_params_recvd[idx]) {
@@ -1588,7 +1583,7 @@ int idpf_send_create_vport_msg(struct idpf_adapter *adapter,
 							   GFP_KERNEL);
 		if (!adapter->vport_params_recvd[idx]) {
 			err = -ENOMEM;
-			goto free_vport_params;
+			goto rel_buf;
 		}
 	}
 
@@ -1604,13 +1599,15 @@ int idpf_send_create_vport_msg(struct idpf_adapter *adapter,
 		goto free_vport_params;
 	}
 
+	kfree(vport_msg);
+
 	return 0;
 
 free_vport_params:
 	kfree(adapter->vport_params_recvd[idx]);
 	adapter->vport_params_recvd[idx] = NULL;
-	kfree(adapter->vport_params_reqd[idx]);
-	adapter->vport_params_reqd[idx] = NULL;
+rel_buf:
+	kfree(vport_msg);
 
 	return err;
 }
@@ -3416,8 +3413,6 @@ static void idpf_vport_params_buf_rel(struct idpf_adapter *adapter)
 {
 	kfree(adapter->vport_params_recvd);
 	adapter->vport_params_recvd = NULL;
-	kfree(adapter->vport_params_reqd);
-	adapter->vport_params_reqd = NULL;
 	kfree(adapter->vport_ids);
 	adapter->vport_ids = NULL;
 }
@@ -3432,15 +3427,10 @@ static int idpf_vport_params_buf_alloc(struct idpf_adapter *adapter)
 {
 	u16 num_max_vports = idpf_get_max_vports(adapter);
 
-	adapter->vport_params_reqd = kzalloc_objs(*adapter->vport_params_reqd,
-						  num_max_vports);
-	if (!adapter->vport_params_reqd)
-		return -ENOMEM;
-
 	adapter->vport_params_recvd = kzalloc_objs(*adapter->vport_params_recvd,
 						   num_max_vports);
 	if (!adapter->vport_params_recvd)
-		goto err_mem;
+		return -ENOMEM;
 
 	adapter->vport_ids = kcalloc(num_max_vports, sizeof(u32), GFP_KERNEL);
 	if (!adapter->vport_ids)
-- 
2.47.0

