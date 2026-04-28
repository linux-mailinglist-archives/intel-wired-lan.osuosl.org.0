Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OjYCC0/U8GkpZgEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 17:37:51 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F9CA48802F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 17:37:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4378E8382D;
	Tue, 28 Apr 2026 15:37:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id awgVESv81rdX; Tue, 28 Apr 2026 15:37:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BED498382F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777390666;
	bh=o+ukf6Y9hnRaah009159SLxqtGzKE9znd3r8bKrmKGY=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zRWxjuVZpNSjVqJ0wv7FczMN33GyXJStg2P9r2ahN5Q78j9yh4WOfggmdeYaMrcA9
	 p7AsFIRi+rRWVn2E6qReIKgnx7FmpjLxC+c/CD2otrQq8aGGNPe+UqRV8UFpkogynO
	 el8lh8oUPtZ9t9K/fvP2t9pMw1tAno2gtpmdyVdB0WOKMCIWan0wEr42m6qeUQaHrS
	 sGYoHj5DRLgzsmzowIdQOXKUoxH7nR7muk4GllPpTYivJJ+J9lJerR1HfcElhiOtzw
	 yvJ15P2VYRM1h0xMp+JEwhHbHJ7lAZ21Y6B23nZmIXOaq+zJDgxcXMxo8cvIT8Z6sl
	 WNUcwylB9U4Vw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id BED498382F;
	Tue, 28 Apr 2026 15:37:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8525E23D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 15:37:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B171F821CE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 15:37:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ejx92Xh-h3Vs for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Apr 2026 15:37:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B51D68236B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B51D68236B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B51D68236B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 15:37:43 +0000 (UTC)
X-CSE-ConnectionGUID: ZFiEWvtaQkyZW0ERY1RGAA==
X-CSE-MsgGUID: GjnfcCbfSlaPqeFsske2/A==
X-IronPort-AV: E=McAfee;i="6800,10657,11770"; a="78415118"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78415118"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 08:37:43 -0700
X-CSE-ConnectionGUID: jsMKO3GZQLS7nDe2H4b2dg==
X-CSE-MsgGUID: ZUMuJShVSS2QzrRXMG7Ejw==
X-ExtLoop1: 1
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa003.fm.intel.com with ESMTP; 28 Apr 2026 08:37:41 -0700
Received: from gond.igk.intel.com (gond.igk.intel.com [10.123.220.52])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 1DD1C312C1;
 Tue, 28 Apr 2026 16:37:40 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, paul.greenwalt@intel.com, jacob.e.keller@intel.com,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Tue, 28 Apr 2026 16:37:14 +0200
Message-ID: <20260428143716.9653-2-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20260428143716.9653-1-marcin.szycik@linux.intel.com>
References: <20260428143716.9653-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777390664; x=1808926664;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=t2++hBy/s1UT2kTM5XR0hg3O4g/o2Nv9A7linrPucsk=;
 b=fEEv5m8uT9XMaj4EGYJiumsbzxpNXZrYvdr0Yzz7d3Pzl3shj2T08HAa
 Jp2tQTpwxJyA9Nlov6ETNUaJ1cgLNrQSNM1aGw5Qdab1D42zmuhBhcZtn
 d+MnRR9Vm4asaUaEXVbtxmbxM2gLgTQ9Xor0hsZNt8JH8ZkMa6/bgz9vW
 pWcBb9zhTPdjWDZk1g6Bab4Pb9xD/4U5fUvRndJipcnBYxpXRXoVAHbyE
 3aVeHG7VU9aN+OZt2b8RT7Vz0gbBH/uk8PRcQcsbRBqTPx4BGIiPHhbjt
 pT4IDb17SWUqsVhok9wYe77r5o/Bi9/TT0zWo6Z7IESYwWbk+RQKn67qX
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fEEv5m8u
Subject: [Intel-wired-lan] [PATCH iwl-next 1/3] virtchnl: remove unused
 defines
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
X-Rspamd-Queue-Id: 7F9CA48802F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,linux.intel.com:mid,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[marcin.szycik@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[10]

Remove:
* VIRTCHNL_VF_CAP_RDMA
* VF_BASE_MODE_OFFLOADS

Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 include/linux/intel/virtchnl.h | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/include/linux/intel/virtchnl.h b/include/linux/intel/virtchnl.h
index 511c8827c640..bb4737de37fe 100644
--- a/include/linux/intel/virtchnl.h
+++ b/include/linux/intel/virtchnl.h
@@ -250,7 +250,6 @@ VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_vsi_resource);
  */
 #define VIRTCHNL_VF_OFFLOAD_L2			BIT(0)
 #define VIRTCHNL_VF_OFFLOAD_RDMA		BIT(1)
-#define VIRTCHNL_VF_CAP_RDMA			VIRTCHNL_VF_OFFLOAD_RDMA
 #define VIRTCHNL_VF_OFFLOAD_RSS_AQ		BIT(3)
 #define VIRTCHNL_VF_OFFLOAD_RSS_REG		BIT(4)
 #define VIRTCHNL_VF_OFFLOAD_WB_ON_ITR		BIT(5)
@@ -275,10 +274,6 @@ VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_vsi_resource);
 #define VIRTCHNL_VF_OFFLOAD_QOS			BIT(29)
 #define VIRTCHNL_VF_CAP_PTP			BIT(31)
 
-#define VF_BASE_MODE_OFFLOADS (VIRTCHNL_VF_OFFLOAD_L2 | \
-			       VIRTCHNL_VF_OFFLOAD_VLAN | \
-			       VIRTCHNL_VF_OFFLOAD_RSS_PF)
-
 struct virtchnl_vf_resource {
 	u16 num_vsis;
 	u16 num_queue_pairs;
-- 
2.49.0

