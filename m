Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE665569F7C
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Jul 2022 12:21:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1438940B27;
	Thu,  7 Jul 2022 10:21:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1438940B27
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657189260;
	bh=SAVk8ET+g0qEmMlkAXDk83zclCZySpNwCinBd7rmUNg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=od5rjTzk6IFPNOFLFXmIDxDyLa0vtnxP0Jd8dQD4jISGG5trq7g9Paz47oQlttayM
	 cMkdxGDcNfWbmtvyjH5LK++QTdSA7/zGKQHbcgzJURn94kwZyafg18Pgl6d5CYBlhn
	 ptcrxWbyj/TJbs5uN7SkdCofvn7dAZOJ0VJcP2VFqm/mRkwxcQS3rMTec3GI80xWzm
	 X/OSy/vMINmPI0SvWcScNnga+5gypQIo6IYn3eeifukvALEivSs657H9g8JTihGS2Q
	 z++dXK+HAV30szjpM8Lj3Na6NjQLQ4ml0mkxouoSbQeFto99ymjHUfPqG0wpb++htK
	 3/oAZx6H6TkSg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jvTwb4GprI1j; Thu,  7 Jul 2022 10:20:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 08B1A40B07;
	Thu,  7 Jul 2022 10:20:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 08B1A40B07
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5D56B1BF86C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Jul 2022 10:20:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 45A18418B8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Jul 2022 10:20:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 45A18418B8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y5TkWKonkdxA for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Jul 2022 10:20:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6E41341886
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6E41341886
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Jul 2022 10:20:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10400"; a="267018023"
X-IronPort-AV: E=Sophos;i="5.92,252,1650956400"; d="scan'208";a="267018023"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2022 03:20:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,252,1650956400"; d="scan'208";a="696458217"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by fmsmga002.fm.intel.com with ESMTP; 07 Jul 2022 03:20:48 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  7 Jul 2022 12:20:42 +0200
Message-Id: <20220707102044.48775-2-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20220707102044.48775-1-maciej.fijalkowski@intel.com>
References: <20220707102044.48775-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657189252; x=1688725252;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LpvEXEB+aClRXGavyoR0tZrzMaYeifUE4rYmPfB1/9U=;
 b=Ouc2x7J/VJCFG/7gV4KrsFToXJu0sN28GNKZ0Sai46KPy5IsLfWvubem
 WbP2mTzR5TFv+n6pguhd1j2nmyN4HkhYs+PCCBF7JON5UOoDVW2UWgdDp
 BoT2pBu33dKadaYnJrZpMmRmoRq3LuayfbsSUsrtkzwLZmWMz2V4zKZO4
 WUpMunN7daEtt1TZDI+06Vhwwd1n2mlVWAtgGqQRh5ICyULul0Wg4KVXP
 3MKGbOMhYn0v9iHhyDpbGAsfb6zAoEzTJHHS80hmkVPhlLyCzC+8kje6b
 cuA8B82VoG5xyDFp0S8CQW4KqPD7BcI8KjBM76C9/1FBP5iGx20xVhQl4
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ouc2x7J/
Subject: [Intel-wired-lan] [PATCH intel-net 1/2] ice: check (DD | EOF) bits
 on Rx descriptor rather than (EOP | RS)
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
Cc: netdev@vger.kernel.org, john.fastabend@gmail.com,
 anatolii.gerasymenko@intel.com, kuba@kernel.org, davem@davemloft.net,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Tx side sets EOP and RS bits on descriptors to indicate that a
particular descriptor is the last one and needs to generate an irq when
it was sent. These bits should not be checked on completion path
regardless whether it's the Tx or the Rx. DD bit serves this purpose and
it indicates that a particular descriptor is either for Rx or was
successfully Txed. EOF is also set as loopback test does not xmit
fragmented frames.

Look at (DD | EOF) bits setting in ice_lbtest_receive_frames() instead
of EOP and RS pair.

Fixes: 0e674aeb0b77 ("ice: Add handler for ethtool selftest")
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 70335f6e8524..4efa5e5846e0 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -658,7 +658,8 @@ static int ice_lbtest_receive_frames(struct ice_rx_ring *rx_ring)
 		rx_desc = ICE_RX_DESC(rx_ring, i);
 
 		if (!(rx_desc->wb.status_error0 &
-		    cpu_to_le16(ICE_TX_DESC_CMD_EOP | ICE_TX_DESC_CMD_RS)))
+		    (cpu_to_le16(BIT(ICE_RX_FLEX_DESC_STATUS0_DD_S)) |
+		     cpu_to_le16(BIT(ICE_RX_FLEX_DESC_STATUS0_EOF_S)))))
 			continue;
 
 		rx_buf = &rx_ring->rx_buf[i];
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
