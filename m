Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ED2CF6B82D9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Mar 2023 21:36:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 82BCB61000;
	Mon, 13 Mar 2023 20:36:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 82BCB61000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678739793;
	bh=/PWpIgsNGWFFqwS4pGIZcxzlK+nRnPNwkud/cedwinY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rLp43KXPeuoZPoQ+cttKq9dbmO5sE3l4vVMPfAOhgg/5tzPe0g+nM7Au8IsBSGchT
	 AuX/Mnt3PBEPDTTnKbHQi+yoXlD0Q3NKAhjARISKa3gTFPeRzazzY0r4rqrb4xfS4D
	 dS4JXKLpkUCp8oUvlLpjNjBtDab5T4MIbpo6FrlFR9klf6Ft2vQRedpjlnzyELZ+BP
	 eyqgbzjeF45sJ6dx2peK6Mdcm8j2mn/cwso93pamvItS2mc6UCDO2wQd7QYDoTgj3R
	 X4mz2DzKK/UD2TPh5hapryGb0mgXubKWoryedbppstUcNvBtLm7qZu5gc4sYbAcgVq
	 6SYwiqxs+n60g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9AwKeQV8KTTN; Mon, 13 Mar 2023 20:36:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 58C5260D89;
	Mon, 13 Mar 2023 20:36:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 58C5260D89
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B7A791BF2C2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 20:36:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7C80041726
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 20:36:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7C80041726
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6A3Ikr4sdB_H for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Mar 2023 20:36:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8C8214173B
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8C8214173B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 20:36:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="364913217"
X-IronPort-AV: E=Sophos;i="5.98,257,1673942400"; d="scan'208";a="364913217"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 13:36:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="747732597"
X-IronPort-AV: E=Sophos;i="5.98,257,1673942400"; d="scan'208";a="747732597"
Received: from jbrandeb-saw1.jf.intel.com ([10.166.28.102])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 13:36:17 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 13 Mar 2023 13:36:07 -0700
Message-Id: <20230313203608.1680781-2-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230313203608.1680781-1-jesse.brandeburg@intel.com>
References: <20230313203608.1680781-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678739779; x=1710275779;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nD0xEsja5qWGknrZQyyc58B4k+83OgAe1HUr/wkbYVI=;
 b=lwvpUaErWzNj0339su/ngZo8AHWY9dr+VdoCOtnMmgRgX1gFBr6LxYo+
 km/aLpJAMIGJDQWfEvYktllS3u+i3tMZ2R6d6K7AcyPSDYR6Cv5HuRDRG
 SUbmWQgyBE/7bf65jCbRQi3IRXU5aLXcmUBkQYXaswst4H8QCVHgQVqGZ
 DOu2/mIgOm0hve5tcaYT/fMg7uMGwaRHTqYR4SRZwnSOdSfTQJznchU+6
 /+KydSfjWx2ibzUlXXGNQZ3tyxWtipd0Ek+/y7c+iSTw7FHroSQO+0D/4
 G3dmFb06T+wgI4GvAzUB+82Lyl7fysNwpkLoMGu3p8PRh5pHj/HSwLRXl
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lwvpUaEr
Subject: [Intel-wired-lan] [PATCH net v1 1/2] ice: fix W=1 headers mismatch
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
Cc: netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

make modules W=1 returns:
.../ice/ice_txrx_lib.c:448: warning: Function parameter or member 'first_idx' not described in 'ice_finalize_xdp_rx'
.../ice/ice_txrx.c:948: warning: Function parameter or member 'ntc' not described in 'ice_get_rx_buf'
.../ice/ice_txrx.c:1038: warning: Excess function parameter 'rx_buf' description in 'ice_construct_skb'

Fix these warnings by adding and deleting the deviant arguments.

Fixes: 2fba7dc5157b ("ice: Add support for XDP multi-buffer on Rx side")
Fixes: d7956d81f150 ("ice: Pull out next_to_clean bump out of ice_put_rx_buf()")
CC: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Reviewed-by: Piotr Raczynski <piotr.raczynski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.c     | 2 +-
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index dfd22862e926..21c1e1bb214a 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -938,6 +938,7 @@ ice_reuse_rx_page(struct ice_rx_ring *rx_ring, struct ice_rx_buf *old_buf)
  * ice_get_rx_buf - Fetch Rx buffer and synchronize data for use
  * @rx_ring: Rx descriptor ring to transact packets on
  * @size: size of buffer to add to skb
+ * @ntc: index of next to clean element
  *
  * This function will pull an Rx buffer from the ring and synchronize it
  * for use by the CPU.
@@ -1026,7 +1027,6 @@ ice_build_skb(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp)
 /**
  * ice_construct_skb - Allocate skb and populate it
  * @rx_ring: Rx descriptor ring to transact packets on
- * @rx_buf: Rx buffer to pull data from
  * @xdp: xdp_buff pointing to the data
  *
  * This function allocates an skb. It then populates it with the page
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
index 7bc5aa340c7d..c8322fb6f2b3 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
@@ -438,6 +438,7 @@ int __ice_xmit_xdp_ring(struct xdp_buff *xdp, struct ice_tx_ring *xdp_ring,
  * ice_finalize_xdp_rx - Bump XDP Tx tail and/or flush redirect map
  * @xdp_ring: XDP ring
  * @xdp_res: Result of the receive batch
+ * @first_idx: index to write from caller
  *
  * This function bumps XDP Tx tail and/or flush redirect map, and
  * should be called when a batch of packets has been processed in the
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
