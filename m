Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AEC3C6837C5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Jan 2023 21:46:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4B58581B60;
	Tue, 31 Jan 2023 20:46:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4B58581B60
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675197982;
	bh=18N4sHf/tfAJqneR8EvL1hZYQeeEH4ZGkh2G5GUqJEA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=R2HzLG9mExlpLS1zsxU+MJy/+a9mTrwxdCCjG4mIwoF0xyaqrzjMsrvXkzA4c6LmR
	 fQ1xGrVBczH88sRBRP6C+1Nsmhxa//Dx0B09n4rEQqqcKcCxn2TKAWMskRKEN/+YLB
	 ck1rXCJtNNixznqO70YxtO8A01vEE5w10rbVpRUG1qyu5RjeD4ua1eOv2hPTTxrKfN
	 Ledo82F4DH5Dss4yWvcrMb2gnFK1fXLaKeFx1idxEs43DEapt6l9cTfcclN/co98Wz
	 DA/hG0PUtgqPOxXnWuSiVK2R3LFyyu8hOrsyU3VawxoR2yvMK3BQdaU/IecCM3Olgg
	 4GTbp3+ZzXK3Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id avL5iCpA2HWd; Tue, 31 Jan 2023 20:46:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 496FB813D9;
	Tue, 31 Jan 2023 20:46:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 496FB813D9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 18F511BF316
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 20:46:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E5540813D9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 20:46:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E5540813D9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u9XpXfm_12I7 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Jan 2023 20:46:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 51E3C81398
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 51E3C81398
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 20:46:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="414167435"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="414167435"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 12:46:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="788595450"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="788595450"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orsmga004.jf.intel.com with ESMTP; 31 Jan 2023 12:45:29 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 31 Jan 2023 21:45:01 +0100
Message-Id: <20230131204506.219292-9-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20230131204506.219292-1-maciej.fijalkowski@intel.com>
References: <20230131204506.219292-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675197975; x=1706733975;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zuXDR2goHILHeYo/VC77mXekbgvxaavn5dGa6cEHTrI=;
 b=BILYcLaMkSqvatnIRQINEUj0BOBP/ePsR+5g8C5Ical5PToAlsjtAV3X
 IDBVxVlLs0eUDi1lZuJo09ozP89hzGTZj5YcFD36SJQbLRwodd6HjBKYH
 f1zv9yF0qIvIvHH9Lvw3ZtAfXENeMcdxMSwZI+1sbKC6CT+o9PESjrjCC
 9Vb4V5w3UKuV/uHzfSdinFB21jxAzXQnCLJ0Av6U2NeJK1A1cjavaCycT
 j8jyWwv5vGvQ4PrEZg7R6c8sMSFgbwn9my6wnaVmKhQuZRKd2dbUrj9Xp
 2fWDz5w10/MZTX2fVKmxjiM2ShRNVEDXqpixmmjwzw0Ldck5EFzoqIfjA
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BILYcLaM
Subject: [Intel-wired-lan] [PATCH bpf-next 08/13] ice: do not call
 ice_finalize_xdp_rx() unnecessarily
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
Cc: tirthendu.sarkar@intel.com, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, bpf@vger.kernel.org, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently ice_finalize_xdp_rx() is called only when xdp_prog is present
on VSI, which is a good thing. However, this optimization can be
enhanced and check only if any of the XDP_TX/XDP_REDIRECT took place in
current Rx processing. Non-zero value of @xdp_xmit indicates that
xdp_prog is present on VSI. This way XDP_DROP-based workloads will not
suffer from unnecessary calls to external function.

Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 661a66c3d0b5..3a8639608f0b 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -1252,7 +1252,7 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 	/* return up to cleaned_count buffers to hardware */
 	failure = ice_alloc_rx_bufs(rx_ring, cleaned_count);
 
-	if (xdp_prog)
+	if (xdp_xmit)
 		ice_finalize_xdp_rx(xdp_ring, xdp_xmit);
 	rx_ring->skb = skb;
 
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
