Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B493578299B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Aug 2023 14:55:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4D1D3408A9;
	Mon, 21 Aug 2023 12:55:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4D1D3408A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692622530;
	bh=Pz9Y0mdSmx25eX7i/q1KL+hPjy0iblw+ng9+V9zDXoI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=a9U1zbjjtSPk6WGYfudsHyjBDHQNQWLCBVKCz/Zd13A+mZi9jO6Zh5dYBqM9jjQrh
	 4Zs2KFeCuwGy56tni3Lhv1wz81S7zfDwwlA/+UjR6q+65CNUfpN2qIijH5IDHmHpY0
	 fwgNywdhTdYeoUoAJcBVW7uhziS2jVO2X6+D4d1LOSCsNckpbov1sYfi5KOSn8EjFW
	 W3kg29xGFzEVEMys9ZLX+3tHSQ49n+KQ5fuJ/GoI7wjuwHvY/d5UHenXTGSytUt9Tl
	 q01blTmODyxHOu9VTPUdfftXSDYbuOWlQkQlT12SvsR7lNMGcdzVmfU/bIqcujah8s
	 88/FeGa0A5SFw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iNnWQYymo0xt; Mon, 21 Aug 2023 12:55:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 14076408A8;
	Mon, 21 Aug 2023 12:55:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 14076408A8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 75C3C1BF388
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 12:55:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 586578139E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 12:55:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 586578139E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bpu501Njk84d for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Aug 2023 12:55:23 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 88BCE81399
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 12:55:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 88BCE81399
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="439953394"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="439953394"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 05:55:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="982450586"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="982450586"
Received: from unknown (HELO ocsbesrhlrepo01.amr.corp.intel.com)
 ([10.237.94.20])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 05:55:21 -0700
From: Radoslaw Tyl <radoslawx.tyl@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 21 Aug 2023 14:55:04 +0200
Message-Id: <20230821125504.169064-1-radoslawx.tyl@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692622523; x=1724158523;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=YRvWmkW2o4THNidBzJmUmWdpl/HpIkdBtuKAmnf6Ebw=;
 b=bLafR0IAHVTDXRrvaAOjUGKB5TxZLmhh6idtrUa6vxOSz9PKljFqh8FL
 oNL5mCD4ap0Km/tmS2mzllzg99olwPjkD8Kr6BPKvmq4XQiJ+IVBJGKdY
 OvWvKsGCiwuLfwFnMdyiahdj322ur1jgVzJenBGVnohWKcwaVrSmvpZPi
 ZBQMZQneCaXE9LkBzgtyQtuHaH2/bfxIQ/XzQ/kUk4w5NGSzGYBpo/Q9B
 NJp3/ANe1yDhhk5lzScJuJ5/MPVaUWXbjyugzrzG2B/fD0Pg1JrX0GpHR
 loL2KOX0bfGZ0SntL0yX7KWPfo6J0Oy6T06j2xizaWguG2lGFU397oTPw
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bLafR0IA
Subject: [Intel-wired-lan] [PATCH iwl-net v2] igb: set max size RX buffer
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
---
 drivers/net/ethernet/intel/igb/igb_main.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 2293ae78f711..5d15bbdef03b 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -4814,6 +4814,9 @@ void igb_configure_rx_ring(struct igb_adapter *adapter,
 static void igb_set_rx_buffer_len(struct igb_adapter *adapter,
 				  struct igb_ring *rx_ring)
 {
+#if (PAGE_SIZE < 8192)
+	struct e1000_hw *hw = &adapter->hw;
+#endif
 	/* set build_skb and buffer size flags */
 	clear_ring_build_skb_enabled(rx_ring);
 	clear_ring_uses_large_buffer(rx_ring);
@@ -4824,10 +4827,9 @@ static void igb_set_rx_buffer_len(struct igb_adapter *adapter,
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
