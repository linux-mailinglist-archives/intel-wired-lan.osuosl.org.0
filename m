Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C653860227
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Feb 2024 20:05:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 47F9341A3F;
	Thu, 22 Feb 2024 19:05:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cUJkBmgIMhmC; Thu, 22 Feb 2024 19:05:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 882E741A1C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708628719;
	bh=5kbKjt3s3/NHySTHNZkoqGU2sKcZlNVzXXfXTF78UIY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GxtxHH7PzLznosV1VZfRVealRFE5DwflrXnja+aB143Xzvdg8iqUVGi3TdI3MigwT
	 lnuKQ7uxFVRyLHw3Cuo2Ij13v99A0iSWlPVnIsVVpF8CX99fMY439PZ6UObaSfKfYJ
	 5JWiJ2XMZ10rDMCYKXnyxoHvpJWLZ8WUjxC1HBIIH21IFp41sYyCCLk3rEwIBNILhO
	 U0COZKSRv65UX9gcVZrNDsGPndGcyt6F0DapZsFw+MT4vmlPljBObsBXtuKaKStM4Y
	 FtAxv54h9TDAT7FFqMd5ZEngUhIvR6iM/PfCWjJ/EmjxYBSZUG4XJ5dkPg2mgTEaB0
	 p8vPoX1YqUSPg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 882E741A1C;
	Thu, 22 Feb 2024 19:05:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 015821BF2F6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 19:05:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D89D5419D1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 19:05:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JUTvfN8OZfyZ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Feb 2024 19:05:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=alan.brady@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D78AC41978
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D78AC41978
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D78AC41978
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 19:05:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10992"; a="13506401"
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; d="scan'208";a="13506401"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 11:05:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; d="scan'208";a="10171422"
Received: from dev1-atbrady.jf.intel.com ([10.166.241.35])
 by fmviesa004.fm.intel.com with ESMTP; 22 Feb 2024 11:05:10 -0800
From: Alan Brady <alan.brady@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 22 Feb 2024 11:04:40 -0800
Message-ID: <20240222190441.2610930-11-alan.brady@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240222190441.2610930-1-alan.brady@intel.com>
References: <20240222190441.2610930-1-alan.brady@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708628711; x=1740164711;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9eIBb6bWagUzQQoX287zEEWkvYERQxEq7punHXUjISE=;
 b=fecaTwyOyFCwfpo4Q+o8Z6d8+C+tgPndlTAB+/iG1CmcRLkgxL34O77t
 oplfAEsj3m4dxFUIu4xr3BGo5VFfgq2njOl+HO1KiBortGRty/N/fSy6i
 VeZEYIw2uX9gJ98NZ7MU7reN25ZNunHltBd1dyn5eW6JASebn/tN3sGWL
 9Q3ca2XLsWtwVE0/314HTEu0P1re4NdAIWxkYRAe5MTulq38bvPIhCYIZ
 RMVnPTHYwOrREiC9C0A1rb61Tz7OYnkFUwm+1RHUE7yrFcx3bjQ042/69
 son8FkU5cwvq7omopCmpUfFkdHxi+0MsmR13P1A9+0Ku9nxbAoDgDM6H/
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fecaTwyO
Subject: [Intel-wired-lan] [PATCH v6 10/11 iwl-next] idpf: fix minor
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

