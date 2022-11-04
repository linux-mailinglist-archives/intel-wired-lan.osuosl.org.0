Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F1061A2C2
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Nov 2022 21:54:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1588C61156;
	Fri,  4 Nov 2022 20:54:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1588C61156
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667595275;
	bh=/L38yOl7+qPuMDFLN4cbXXgPTMceVemIl9fDAuG3ObY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eDHbBCIpMObTuTJ22mewUYxvswBX8iQ7Q2sBIA5l++fVSdXLrDHqnZOd4hS5wFMFL
	 lCslFmwNKRwxZUCge498KC08BDl74RBSFExgVc5sBsDMnbwkClkwi1vqrfFmyw6CFL
	 ARsUbx+3tMjaVDAVgMZdMmGWBh3j5rfv/1rCI5pqT00x2ha6CCVPY7oM0hc0PDW/k2
	 j8NBgUV8LmIfC602DNmRX2Pr3P7T2xRMY0+jkLxovUZPy7Kb9FsfZJAUqdd3kmm2My
	 SeDhbKMkRgAh+Jf45wN62ElARYKf57xxIjV/AtGUQJRxhqrgavuvoqDrViTgyNXHMX
	 fzyptWVsACTxw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ahAeGQCsgPmU; Fri,  4 Nov 2022 20:54:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 205B261151;
	Fri,  4 Nov 2022 20:54:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 205B261151
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D443B1BF5E0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 20:54:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AD7CC419AE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 20:54:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AD7CC419AE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BIxof_-w7JNC for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Nov 2022 20:54:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BF10F419A8
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BF10F419A8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 20:54:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10521"; a="290458060"
X-IronPort-AV: E=Sophos;i="5.96,138,1665471600"; d="scan'208";a="290458060"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2022 13:54:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10521"; a="637716217"
X-IronPort-AV: E=Sophos;i="5.96,138,1665471600"; d="scan'208";a="637716217"
Received: from anguy11-desk2.jf.intel.com ([10.166.244.147])
 by fmsmga007.fm.intel.com with ESMTP; 04 Nov 2022 13:54:26 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: davem@davemloft.net, kuba@kernel.org, pabeni@redhat.com,
 edumazet@google.com
Date: Fri,  4 Nov 2022 13:54:13 -0700
Message-Id: <20221104205414.2354973-6-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221104205414.2354973-1-anthony.l.nguyen@intel.com>
References: <20221104205414.2354973-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667595267; x=1699131267;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GL6EiV8AgKlN/bhF/elK8GKsQY8r77fRd+rJ9Jlq9J8=;
 b=UvGIrZhlAjITnRk7ZQurtZT5WktE3TElTUcNvUnyaUMEDQC98y8eM8a1
 jYvLTwodP9qR387leyQwXCCbgOWMeg2hFeShpA3qsE8//5f9CvinMTctC
 XWl6yNOB6NWloVjEXb9lPGdekyxnKHd9gRR/1ckphyA4lEqfdIGWJE6Qo
 AnKuTVBDwy6r3a0SxP7soFMWNqhTosu0Tfuy3xmfiJro5OLUAT6kEGMh6
 gWY1+H4EmlgVjuCmid1SFaTeZfvE51KKfkraFUwb6QLpaFEabGS7ehm/x
 2hjLUKENJtPkX7C/pw/6qoqjeBXOVK0k9TGOVij8bidjjUyFHKnmQb1os
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UvGIrZhl
Subject: [Intel-wired-lan] [PATCH net-next 5/6] igb: Do not free q_vector
 unless new one was allocated
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
Cc: Kees Cook <keescook@chromium.org>, netdev@vger.kernel.org,
 "Michael J . Ruhl" <michael.j.ruhl@intel.com>,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Kees Cook <keescook@chromium.org>

Avoid potential use-after-free condition under memory pressure. If the
kzalloc() fails, q_vector will be freed but left in the original
adapter->q_vector[v_idx] array position.

Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Eric Dumazet <edumazet@google.com>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: Paolo Abeni <pabeni@redhat.com>
Cc: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org
Signed-off-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Michael J. Ruhl <michael.j.ruhl@intel.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index d6c1c2e66f26..c2bb658198bf 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -1202,8 +1202,12 @@ static int igb_alloc_q_vector(struct igb_adapter *adapter,
 	if (!q_vector) {
 		q_vector = kzalloc(size, GFP_KERNEL);
 	} else if (size > ksize(q_vector)) {
-		kfree_rcu(q_vector, rcu);
-		q_vector = kzalloc(size, GFP_KERNEL);
+		struct igb_q_vector *new_q_vector;
+
+		new_q_vector = kzalloc(size, GFP_KERNEL);
+		if (new_q_vector)
+			kfree_rcu(q_vector, rcu);
+		q_vector = new_q_vector;
 	} else {
 		memset(q_vector, 0, size);
 	}
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
