Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6879685CD0B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Feb 2024 01:51:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7C3C3415A8;
	Wed, 21 Feb 2024 00:51:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tgBgJSFSa-XK; Wed, 21 Feb 2024 00:51:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B372740888
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708476662;
	bh=5kbKjt3s3/NHySTHNZkoqGU2sKcZlNVzXXfXTF78UIY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=iGsY401Q42FyJg9ay5Zixr0WUS+rfRaL7uw6aQfLsz7Usro+JYk3irBijRuY1+gVb
	 ZxKF2dFTd/gb/NmeFzjK6Kb4eCkmAHx7PrMzcoVZYi8pOsuzuxjkD6RLSDMt8aBxof
	 0qNa/2JzRP11BUjOIQOpJN41NrNh0gLNIrQXDzUAIqny2fpS+ONpP0BRzw/bw18z2P
	 w+mAy5AjcEAeIeeTLK+Xp4UU0zQAOzMdX9Jtw+IGPLyO42pmjZmDIWNFOwniWhp/92
	 i2OILCz6K3Jq4p3WV93KPrgwNC2dJrDkm5vj5/+Ex6n4nIt1IqVQdw6eJkU2MJUnfc
	 qiiQ26Scjt3Yg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B372740888;
	Wed, 21 Feb 2024 00:51:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9B5471BF39D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Feb 2024 00:50:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 86A0660876
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Feb 2024 00:50:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Jb7TVra-r0pl for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Feb 2024 00:50:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=alan.brady@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E1EED607A4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E1EED607A4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E1EED607A4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Feb 2024 00:50:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10990"; a="2500812"
X-IronPort-AV: E=Sophos;i="6.06,174,1705392000"; 
   d="scan'208";a="2500812"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 16:50:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,174,1705392000"; 
   d="scan'208";a="9551000"
Received: from dev1-atbrady.jf.intel.com ([10.166.241.35])
 by fmviesa004.fm.intel.com with ESMTP; 20 Feb 2024 16:50:58 -0800
From: Alan Brady <alan.brady@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 20 Feb 2024 16:49:48 -0800
Message-ID: <20240221004949.2561972-10-alan.brady@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240221004949.2561972-1-alan.brady@intel.com>
References: <20240221004949.2561972-1-alan.brady@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708476659; x=1740012659;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9eIBb6bWagUzQQoX287zEEWkvYERQxEq7punHXUjISE=;
 b=WVUrqLzDPC6OCEz+ufxjmJsbtFrOZsEX/1ZiZmfmfn6fP5rY95f82imR
 GxiaTTqQWMtkZMOY6wenq2og+vQsqLFer58SeqFwlO1KAjk6K6Dv+Wd6e
 9hVtlLYMUV/bGiPTZQsRDh6gs7hdL8wEyQk0jSZjzrtw20RzyfGlakaVJ
 4dHyulmxEUjUr4w5Fg3PaN9mttLS7Ti6M0170icUy9t79EEiyrVaDj9OC
 TmNSznIMD/8Xa9S1mzX0dohwFLoAttr9v2rrzEe6Ivho9wD+9SlmwK5RB
 NTntMb3oHZvzmvdDTAzb3zicSuyuU/6nYoYUzPbiK3KNd+OeIGAQIZOuw
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WVUrqLzD
Subject: [Intel-wired-lan] [PATCH v5 09/10 iwl-next] idpf: fix minor
 controlq issues
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: netdev@vger.kernel.org, Alan Brady <alan.brady@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

While we're here improving virtchnl we can include two minor fixes for
the lower level ctrlq flow.

This adds a memory barrier to idpf_post_rx_buffs before we update tail
on the controlq.  We should make sure our writes have had a chance to
finish before we tell HW it can touch them.

This also removes some defensive programming in idpf_ctrlq_recv. The
caller should not be using a num_q_msg value of zero or more than the
ring size and it's their responsibility to call functions sanely.

Tested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
Signed-off-by: Alan Brady <alan.brady@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_controlq.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_controlq.c b/drivers/net/ethernet/intel/idpf/idpf_controlq.c
index c7f43d2fcd13..4849590a5591 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_controlq.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_controlq.c
@@ -516,6 +516,8 @@ int idpf_ctlq_post_rx_buffs(struct idpf_hw *hw, struct idpf_ctlq_info *cq,
 			/* Wrap to end of end ring since current ntp is 0 */
 			cq->next_to_post = cq->ring_size - 1;
 
+		dma_wmb();
+
 		wr32(hw, cq->reg.tail, cq->next_to_post);
 	}
 
@@ -546,11 +548,6 @@ int idpf_ctlq_recv(struct idpf_ctlq_info *cq, u16 *num_q_msg,
 	int err = 0;
 	u16 i;
 
-	if (*num_q_msg == 0)
-		return 0;
-	else if (*num_q_msg > cq->ring_size)
-		return -EBADR;
-
 	/* take the lock before we start messing with the ring */
 	mutex_lock(&cq->cq_lock);
 
-- 
2.43.0

