Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E8EE0A7BB3A
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Apr 2025 12:54:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6C6BF80DD7;
	Fri,  4 Apr 2025 10:54:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PnfwpFe9inU8; Fri,  4 Apr 2025 10:54:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CE303847C0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1743764078;
	bh=VaQ8wTa7lJDY0N3mn5Vnh+qW/muVYtnEyHu6WbXIbck=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=A3wYmyoa8AvWzV7QydNRcjW8umEJPpyQ57GdTVXHtv3w4l5GVRFIwOsKIg0tr2lxS
	 fSvODTg9qIWci9mBts678TQGxSra08X1FYJ+fPZ2YBDRBL37V93KcOQGWQZgkyqVhw
	 IMI4DDtfgpFHp6tLPWrysoY+HMarqNZTex9yS/mMbsRTIjdRsutz7MaWBhxpLyft6A
	 kNa7da/BboQaOyc0UqVXyS3lM0v4M/Rb8Iu8s4uIC48CdylIshQ7tFjYUOpJd1OyQP
	 BqHk2udxJHkWVcEsZcD8TRC6yQi87Z5Bng/Z13gOG7TmMdySM9tgSRiYF6bxTxrQzq
	 4RUzgrQfIss9w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CE303847C0;
	Fri,  4 Apr 2025 10:54:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id CFDB01C4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Apr 2025 10:54:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AB38C83AC0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Apr 2025 10:54:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LakaM1_tXfJI for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Apr 2025 10:54:37 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CC0AB80DD7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CC0AB80DD7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CC0AB80DD7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Apr 2025 10:54:36 +0000 (UTC)
X-CSE-ConnectionGUID: GP90m5dzRpyN5NjYadnVZQ==
X-CSE-MsgGUID: X6N99XHgT6S0qoaPbk99bA==
X-IronPort-AV: E=McAfee;i="6700,10204,11393"; a="55391685"
X-IronPort-AV: E=Sophos;i="6.15,188,1739865600"; d="scan'208";a="55391685"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2025 03:54:36 -0700
X-CSE-ConnectionGUID: H/OlWP3fQweo78IyIL7C6g==
X-CSE-MsgGUID: 5nxmmvAXQv6CGO3opJoNTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,188,1739865600"; d="scan'208";a="132484684"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by orviesa005.jf.intel.com with ESMTP; 04 Apr 2025 03:54:34 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Fri,  4 Apr 2025 12:54:21 +0200
Message-ID: <20250404105421.1257835-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743764077; x=1775300077;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0pDCvWu4Ref5zXee9U/DUkQNZtb/fGPhcUajvIgaxfI=;
 b=kbBVfJOdCL2jIIVASINfKc+3YEZuCEI7uxrEaUIn9dQttTrT4w4nE9Li
 7dCGaq03nSp3l6s9mSCWYelCwzUEE4JLraM7aMKP1YTcC5pAtAnLB7Omo
 Uqnn9mGHmhhO2dq48RGlbi63lXsTue6mghCaT9kZ9MvW1q5OATZjyF94G
 Y5E4h/i2yyHLKM2asTdrR6AHcFFwxp/aEc0lUrSEI8eB5d2oXW4TM+VNH
 XgEz+mBd+TTIWf4V8cv05HLQOAhroZQ2xeE+ilg8N9Y/8nhZ6owbWJ2HJ
 wdEjUwhTyMdIXHh22fwAyXm+wS8AO+LH4N4WINMUVBNG/qyLw9m2K3h1S
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kbBVfJOd
Subject: [Intel-wired-lan] [PATCH iwl-net v1] idpf: fix potential memory
 leak on kcalloc() failure
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

In case of failing on rss_data->rss_key allocation the function is
freeing vport without freeing earlier allocated q_vector_idxs. Fix it.

Move from freeing in error branch to goto scheme.

Fixes: 95af467d9a4e ("idpf: configure resources for RX queues")
Reviewed-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Suggested-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_lib.c | 19 +++++++++++--------
 1 file changed, 11 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index aa755dedb41d..329ba53e86fd 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -1132,11 +1132,9 @@ static struct idpf_vport *idpf_vport_alloc(struct idpf_adapter *adapter,
 
 	num_max_q = max(max_q->max_txq, max_q->max_rxq);
 	vport->q_vector_idxs = kcalloc(num_max_q, sizeof(u16), GFP_KERNEL);
-	if (!vport->q_vector_idxs) {
-		kfree(vport);
+	if (!vport->q_vector_idxs)
+		goto free_vport;
 
-		return NULL;
-	}
 	idpf_vport_init(vport, max_q);
 
 	/* This alloc is done separate from the LUT because it's not strictly
@@ -1146,11 +1144,9 @@ static struct idpf_vport *idpf_vport_alloc(struct idpf_adapter *adapter,
 	 */
 	rss_data = &adapter->vport_config[idx]->user_config.rss_data;
 	rss_data->rss_key = kzalloc(rss_data->rss_key_size, GFP_KERNEL);
-	if (!rss_data->rss_key) {
-		kfree(vport);
+	if (!rss_data->rss_key)
+		goto free_vector_idxs;
 
-		return NULL;
-	}
 	/* Initialize default rss key */
 	netdev_rss_key_fill((void *)rss_data->rss_key, rss_data->rss_key_size);
 
@@ -1163,6 +1159,13 @@ static struct idpf_vport *idpf_vport_alloc(struct idpf_adapter *adapter,
 	adapter->next_vport = idpf_get_free_slot(adapter);
 
 	return vport;
+
+free_vector_idxs:
+	kfree(vport->q_vector_idxs);
+free_vport:
+	kfree(vport);
+
+	return NULL;
 }
 
 /**
-- 
2.42.0

