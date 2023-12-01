Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A3B99800DA1
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Dec 2023 15:46:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 333FE848A6;
	Fri,  1 Dec 2023 14:46:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 333FE848A6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701442006;
	bh=pd6RIYflP66QbI0EvLZW1TG4AyZshJJBi1MR2Ptx8XA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=ILQ+Pey2Bo6xDKOuyzjD4Wya67U3o/MMblQbeyj9KrJxBzHAVR8nOoNf94RrMMXYS
	 AGU3O5jh3g+/AKUsxZOwP0j0CSZXh9mOyC9VaelOWbOPg8HY4O0wOnSgTQx8J6AD0+
	 R7sAA2R13hH4aPK3g3/2aUjGmGJLKy4T6VR3KP9wfM0ByHBt8tSSWfxpxAbp5WMP8n
	 c/OlBF9hdWyR+rVu+GMWdY/M1aQur4F38gaVHSaqu3yMTFWl+sZxhY696Nc8A36dKJ
	 gyk8cJmoaEvlxqJTdyd4FLuQRBXXeVgwrtJzt+qEiG9Nlrx24Ri7TANqUn4q2QaFT5
	 kqRKkkIXyIz4A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DRRpyzcp8i8R; Fri,  1 Dec 2023 14:46:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 17B428489A;
	Fri,  1 Dec 2023 14:46:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 17B428489A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C6F9D1BF3AD
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Dec 2023 14:46:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AB41842148
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Dec 2023 14:46:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AB41842148
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NAU-j182TLeF for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Dec 2023 14:46:39 +0000 (UTC)
X-Greylist: delayed 428 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 01 Dec 2023 14:46:39 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 032A942146
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 032A942146
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Dec 2023 14:46:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10911"; a="359145"
X-IronPort-AV: E=Sophos;i="6.04,241,1695711600"; 
   d="scan'208";a="359145"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2023 06:39:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10911"; a="913597561"
X-IronPort-AV: E=Sophos;i="6.04,241,1695711600"; d="scan'208";a="913597561"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmsmga001.fm.intel.com with ESMTP; 01 Dec 2023 06:39:28 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  1 Dec 2023 15:38:21 +0100
Message-ID: <20231201143821.1091005-1-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701441999; x=1732977999;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=t8zt17gleUs6XdyCrQUt22NFtXS6H7COoWrjOZ8T+sc=;
 b=LVnQKZboOZXSZ5XL+1ho4jogsKvYOCVtP0y4tNrbNJEG8oMAYG2Ai54z
 uDs4/yxiqUZVpsSTmT4ffXcfi3mQcVO6/QKW3ZhVm3jmo3t4m9yTwBoYY
 CzI8vWM53hMEfTR6cvt5mW/oDUiRxzekJTLX+/QFN5wwO3ykamwZJEbvE
 LiOc6J1iTSPydgyFIckontr4m+/LAbpFisTfNkcv74jggUdfFpCzYyZqb
 QmoFl97RMAtV8CBbe+qG4tBnEbV0Phyv+Zq/y2Q1AIjm3bph3QmvHL8wP
 8T7n+nc1zhP9gHTG4zkpgmaFQ3qbSTYkGoqwLbbvmE//4l17fiNPUdxGG
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LVnQKZbo
Subject: [Intel-wired-lan] [PATCH iwl] idpf: fix corrupted frames and skb
 leaks in singleq mode
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

idpf_ring::skb serves only for keeping an incomplete frame between
several NAPI Rx polling cycles, as one cycle may end up before
processing the end of packet descriptor. The pointer is taken from
the ring onto the stack before entering the loop and gets written
there after the loop exits. When inside the loop, only the onstack
pointer is used.
For some reason, the logics is broken in the singleq mode, where the
pointer is taken from the ring each iteration. This means that if a
frame got fragmented into several descriptors, each fragment will have
its own skb, but only the last one will be passed up the stack
(containing garbage), leaving the rest leaked.
Just don't touch the ring skb field inside the polling loop, letting
the onstack skb pointer work as expected: build a new skb if it's the
first frame descriptor and attach a frag otherwise.

Fixes: a5ab9ee0df0b ("idpf: add singleq start_xmit and napi poll")
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
index 81288a17da2a..20c4b3a64710 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
@@ -1044,7 +1044,6 @@ static int idpf_rx_singleq_clean(struct idpf_queue *rx_q, int budget)
 		}
 
 		idpf_rx_sync_for_cpu(rx_buf, fields.size);
-		skb = rx_q->skb;
 		if (skb)
 			idpf_rx_add_frag(rx_buf, skb, fields.size);
 		else
-- 
2.43.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
