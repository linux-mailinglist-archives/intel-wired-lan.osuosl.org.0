Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4440E783A1B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Aug 2023 08:40:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B0770405DF;
	Tue, 22 Aug 2023 06:40:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B0770405DF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692686403;
	bh=qJUBRMhPoo4VF0R8qN9Pgy8p5MrGiWYFqEqo9a8mRQQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=yyrXpy9ISGjkc9/abKgnTN8Mbgb/A8H8Z8hgoZb6RtSalYIMbRQyD3zVQI3U60cj+
	 CkrvnF7IfYJVeelOch1vNtXseMekZK0BqBzOA1J+ohtZ5uYDkALhcoIpkPkSIssEqJ
	 8DN4YwvEoUxOOJv7LhKHhtISG6HBbJlIK5gKc1belq7EqfEn9jIUKq7M9gNmg0BSA/
	 uxYtYmtrmSVwTYtquaRk7pd80PlkzER5kzkPPCYAf2EKDT17/b9ttadaN/zaXy08h1
	 mnqRm6Ju9f1I/P39wtm+h8Oq+ESmuHbZ0l6xDggufKrhz2r7wSLzx8oSPYN85SHf6t
	 KElD1GPjhENZQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vcGRcf622bAJ; Tue, 22 Aug 2023 06:40:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9F17A40103;
	Tue, 22 Aug 2023 06:40:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9F17A40103
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4E3091BF2A2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 06:39:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 31A454091A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 06:39:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 31A454091A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jsnCHe6TDdZF for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Aug 2023 06:39:57 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4581440912
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 06:39:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4581440912
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="440161117"
X-IronPort-AV: E=Sophos;i="6.01,192,1684825200"; d="scan'208";a="440161117"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 23:39:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="982762277"
X-IronPort-AV: E=Sophos;i="6.01,192,1684825200"; d="scan'208";a="982762277"
Received: from unknown (HELO ocsbesrhlrepo01.amr.corp.intel.com)
 ([10.237.94.20])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 23:39:55 -0700
From: Radoslaw Tyl <radoslawx.tyl@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 22 Aug 2023 08:39:38 +0200
Message-Id: <20230822063938.195187-1-radoslawx.tyl@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692686397; x=1724222397;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xNNH2yJ/v2EnYPltgXiDi8SqqyQFetwHEjEiQg+nT2U=;
 b=Tu+HD+ysASP1fst2T4upYEiX/yBU38tjHeUkBHIqDcEgH2L7DYDlCoKJ
 3u/yRcdkso5vwuRrTYaFysPrW2jmh6s8aZNaz+jbbQFKF80vaPZMooYCV
 aDtmBbuXKxTLNtezvoIWWVO9hsTmy24Ddd8+ZrOWbt8fdWjGz26BOeQPn
 7WqsPee94sP+rgy9P4jvKoGLb1uQWHsZqK4brzSAFPYpomqBXkjkICdeF
 d842yodD9Ijlxou2RQT3go5mSFDLV0Mo5ahXOceJEH4VWjjUAjikGYHmA
 d7kdeprw601ExM1cLOY66DZDGyISO3dxTpoBKwDbeg9kPzuyDlAcLsC5D
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Tu+HD+ys
Subject: [Intel-wired-lan] [PATCH iwl-net v3] igb: set max size RX buffer
 when store bad packet is enabled
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
Cc: Radoslaw Tyl <radoslawx.tyl@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Increase the RX buffer size to 3K when the SBP bit is on. The size of
the RX buffer determines the number of pages allocated which may not
be sufficient for receive frames larger than the set MTU size.

Fixes: 89eaefb61dc9 ("igb: Support RX-ALL feature flag.")
Signed-off-by: Radoslaw Tyl <radoslawx.tyl@intel.com>
---
v2: fix lkm build warning
v3: add new line
---
 drivers/net/ethernet/intel/igb/igb_main.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 2293ae78f711..97526cdbb32b 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -4814,6 +4814,10 @@ void igb_configure_rx_ring(struct igb_adapter *adapter,
 static void igb_set_rx_buffer_len(struct igb_adapter *adapter,
 				  struct igb_ring *rx_ring)
 {
+#if (PAGE_SIZE < 8192)
+	struct e1000_hw *hw = &adapter->hw;
+#endif
+
 	/* set build_skb and buffer size flags */
 	clear_ring_build_skb_enabled(rx_ring);
 	clear_ring_uses_large_buffer(rx_ring);
@@ -4824,10 +4828,9 @@ static void igb_set_rx_buffer_len(struct igb_adapter *adapter,
 	set_ring_build_skb_enabled(rx_ring);
 
 #if (PAGE_SIZE < 8192)
-	if (adapter->max_frame_size <= IGB_MAX_FRAME_BUILD_SKB)
-		return;
-
-	set_ring_uses_large_buffer(rx_ring);
+	if (adapter->max_frame_size > IGB_MAX_FRAME_BUILD_SKB ||
+	    rd32(E1000_RCTL) & E1000_RCTL_SBP)
+		set_ring_uses_large_buffer(rx_ring);
 #endif
 }
 
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
