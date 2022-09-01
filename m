Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B21B65A9A71
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Sep 2022 16:36:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6B33883422;
	Thu,  1 Sep 2022 14:36:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6B33883422
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1662042962;
	bh=QLeT/XFfoOoTTO7gZoPScw28c4ywfBr7AzYMeaSV0GQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=DHOZRF0nerFtVhr+yO/jRM4S6UCwzvtXTQqMKMEvedWENTmRhiPiPPIcr2KuizlKY
	 2i/txuHDyjgLAewavig/NvDsjajISJETyN9Oej2IGV2k0dc3uUS7eIj+xMFTe4f/z5
	 JIxgye9NUUS59FFGfY0Ds0YMj4QgMopdrxBXYiahDKZ3hwYs2Rpfm3ikRDlCZdhSUo
	 3KnYGg4CVFhcJnuElV8nXZ7tQwbCtUs6tcE5/I2fUTl5YgdTHSKTTwtxR/8NsD3f/v
	 yIhY5xuPghyfmV0LroaWVVXtHtT5qgy93hAFz+Hj2q9qDfUP/Kya1EYS5iRdDN4iPo
	 aaf1VrtIW/WNw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PWJ9DdM_tBBT; Thu,  1 Sep 2022 14:36:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 72BF783380;
	Thu,  1 Sep 2022 14:36:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 72BF783380
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 70F491BF3CB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Sep 2022 14:35:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5870B4034B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Sep 2022 14:35:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5870B4034B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G2CJn_hBlJ74 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Sep 2022 14:35:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A0F3E401A1
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A0F3E401A1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Sep 2022 14:35:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10457"; a="275477606"
X-IronPort-AV: E=Sophos;i="5.93,281,1654585200"; d="scan'208";a="275477606"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2022 07:35:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,281,1654585200"; d="scan'208";a="615355216"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by fmsmga007.fm.intel.com with ESMTP; 01 Sep 2022 07:35:53 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  1 Sep 2022 16:34:40 +0200
Message-Id: <20220901143440.455370-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662042955; x=1693578955;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=sEZOyU9on3+uWgVwQ9hdZFoJiqtb1hgRhdqkA87yzfo=;
 b=Vq8wVxCORjVWz72C6foB1IV+JfcITHL3Jrbgzly/RFNAeYnPIXRL1+PE
 tOYpXrGepPG/0t1AAYzNkB2OAGMJDWeBB65S2NewgeBMvtuRVlF0THl0k
 VDDP9T+x2jsJd1Na12Q2DrzbyK6tE3FJWuv5F9Ub4cZDZkOV28D+w5Zh/
 EoMtMQN1WMyWYSJrPHNH11A5M8pBAVEVYAGDdTAcffM5h3qK4i99ZAsu6
 Qdu4Fcb8Y2gnclK2PpUoI+aislrpiNwRYih+vXe27qNblN+LV5cKlR7Z5
 Qo7eI+V85oE9gFkhgkjl4qYaJKUeyoehSwVB1Ib7+C22Y6tcUdyPaQL6T
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Vq8wVxCO
Subject: [Intel-wired-lan] [PATCH net v2] iavf: Fix cached head and tail
 value for iavf_get_tx_pending
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
Cc: Brett Creeley <brett.creeley@intel.com>,
 Norbert Zulinski <norbertx.zulinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Brett Creeley <brett.creeley@intel.com>

The underlying hardware may or may not allow reading of the head or tail
registers and it really makes no difference if we use the software
cached values. So, always used the software cached values.

Fixes: 9c6c12595b73 ("i40e: Detection and recovery of TX queue hung logic moved to service_task from tx_timeout")
Signed-off-by: Brett Creeley <brett.creeley@intel.com>
Co-developed-by: Norbert Zulinski <norbertx.zulinski@intel.com>
Signed-off-by: Norbert Zulinski <norbertx.zulinski@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 v2: Added missing sign-off tag
---
 drivers/net/ethernet/intel/iavf/iavf_txrx.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
index 06d18797d25a..4c3f3f419110 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
@@ -114,8 +114,11 @@ u32 iavf_get_tx_pending(struct iavf_ring *ring, bool in_sw)
 {
 	u32 head, tail;
 
+	/* underlying hardware might not allow access and/or always return
+	 * 0 for the head/tail registers so just use the cached values
+	 */
 	head = ring->next_to_clean;
-	tail = readl(ring->tail);
+	tail = ring->next_to_use;
 
 	if (head != tail)
 		return (head < tail) ?
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
