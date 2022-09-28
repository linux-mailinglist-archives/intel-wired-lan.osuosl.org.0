Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 906055EE5A6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Sep 2022 21:27:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B606583E03;
	Wed, 28 Sep 2022 19:27:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B606583E03
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664393227;
	bh=axYq3LZNM755hYuN9GddeYC9eC2ZYFuvLUltX7zRw+o=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=iSxc/sQ4979wGrqBHYf4n6tvRbozDferaE9UomENRxRlYpFM+z3E+XhkTCb9pXd7U
	 PERw+kHoRar28cDekSkwAetg3UGn3PvD7c6064TQHaTjoMWtuTvsrA1ITLMB3wRQqQ
	 p3STN2V+FizAWfJPgKfwgqfJEntSOh1ny+g2Mw74O3Kz7xbvAw/eMeoXQ95Y4z9SrU
	 3XiIZ8Sl06fIhSO8ayLtXxNuUCWpOmGZHXXUaKNogBAQi6T24hRdkKNpqz/PxJxK78
	 GJjkTsCNcld4Xb+R+HBt0LixUjrGsoNF768Or9fuftGnu4TiDjeCn2rhJ6oSBS1zPa
	 zR3lBOcczmmBQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GlUf6Lqwuxqf; Wed, 28 Sep 2022 19:27:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AB98583E00;
	Wed, 28 Sep 2022 19:27:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AB98583E00
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 534321BF3E0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Sep 2022 19:27:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 29F8240989
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Sep 2022 19:27:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 29F8240989
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3qASExGU8qYz for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Sep 2022 19:27:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5C714408AC
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5C714408AC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Sep 2022 19:27:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="288856776"
X-IronPort-AV: E=Sophos;i="5.93,352,1654585200"; d="scan'208";a="288856776"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2022 12:26:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="747546906"
X-IronPort-AV: E=Sophos;i="5.93,352,1654585200"; d="scan'208";a="747546906"
Received: from avenkata-desk0.sc.intel.com ([172.25.112.42])
 by orsmga004.jf.intel.com with ESMTP; 28 Sep 2022 12:26:47 -0700
From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 28 Sep 2022 12:27:30 -0700
Message-Id: <20220928192730.809441-1-anirudh.venkataramanan@intel.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664393220; x=1695929220;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WPrdjb/yLS/X/+hSDPLwaTB5/8fLopmKXxd/WTG/5j0=;
 b=kkknWj9wsZ/pSH0Q0VQ5s+OKANvc+QKQxeHGilXzTbcfBEghA4V5Ey5l
 L6ft9xH5W1EIfvygHEIVle89/zye3xf3STSrgAVaNOsRsEMcD+aoifwXh
 wXq5GLpVJWFG7o6sJl1Qqpts7rSjaB4kI8IGc6lId52wCdmrtF69nI42/
 BNDP6JKX1i83XGAp4GQtkyZgSfdP97qN3J1e4xoLrxE7CIydig0FlCjxw
 5fJVsf59zX1DS+bGfww55CKvr2f+mPJMpJkrM5b+omWKNUSkqmFDYwbQD
 9W2Z3ySndJHwNACHvgftb0jNp1pUedYdApmdcZIdvZeONyznHSlAIDTK9
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kkknWj9w
Subject: [Intel-wired-lan] [PATCH net-next] ixgbe: Remove unnecessary use of
 kmap()
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
Cc: "Fabio M . De Francesco" <fmdefrancesco@gmail.com>,
 Ira Weiny <ira.weiny@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Pages for Rx are allocated in ixgbe_alloc_mapped_page() using
dev_alloc_pages(), which does the allocation using flags GFP_ATOMIC |
__GFP_NOWARN. Pages allocated thus can't come from highmem, so remove
calls to kmap() and kunmap().

While here, also remove the local variable "match", and just return
true/false.

I wasn't able to get a hold of a system with an ixgbe NIC to test this
change. This is a pretty trivial change and I don't expect anything to
break, but a "Tested-by" from someone who has the hardware would be nice.

Cc: Alexander Duyck <alexander.duyck@gmail.com>
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
Cc: Ira Weiny <ira.weiny@intel.com>
Cc: Fabio M. De Francesco <fmdefrancesco@gmail.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
Suggested-by: Ira Weiny <ira.weiny@intel.com>
Suggested-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
index 04f453e..90c0e0b 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
@@ -1960,20 +1960,17 @@ static bool ixgbe_check_lbtest_frame(struct ixgbe_rx_buffer *rx_buffer,
 				     unsigned int frame_size)
 {
 	unsigned char *data;
-	bool match = true;
 
 	frame_size >>= 1;
 
-	data = kmap(rx_buffer->page) + rx_buffer->page_offset;
+	data = page_address(rx_buffer->page) + rx_buffer->page_offset;
 
 	if (data[3] != 0xFF ||
 	    data[frame_size + 10] != 0xBE ||
 	    data[frame_size + 12] != 0xAF)
-		match = false;
-
-	kunmap(rx_buffer->page);
+		return false;
 
-	return match;
+	return true;
 }
 
 static u16 ixgbe_clean_test_rings(struct ixgbe_ring *rx_ring,
-- 
2.37.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
