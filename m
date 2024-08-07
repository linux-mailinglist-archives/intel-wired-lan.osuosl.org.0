Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5544794A661
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Aug 2024 12:55:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1598A80E2A;
	Wed,  7 Aug 2024 10:55:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ngTUR3ljNqAB; Wed,  7 Aug 2024 10:55:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 68FE780D58
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723028126;
	bh=UqTJ7sgomB/EqY9DpsP1Dh2bt1mSaizwfQvGNXL3H4o=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=22vBC8woP9s827790Z/7s2LLUddLXw6fG7fKDP2bvDuaGCNhasZw2bWMkuPM/6YKZ
	 qUSqA8VzwBmXf/pcN52+0I2xQdZrqIHSQkRsKhDTcNQbaGRAw+u49wdryPvVOQ5Dut
	 bvxwyfdMlPGWkZe/Zd6C8j6AXbr8waQ+l8b15+i2oUzKtAZjnjaaV90KwGUIDzQn9y
	 Co4RJM1Ip9yY2lI+bVeKvnYXMu96zGGRW6JQ8k8C9djik4osxc4V8u6+GJU+I9WAT9
	 bcStIvAl3vvl09ksEJpQrGjOn5NBS+3sfcCZnm76Lu+eutKYhNU0lJYg4hupp8m0xw
	 av+Ja43qKxplA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 68FE780D58;
	Wed,  7 Aug 2024 10:55:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 718F11BF97F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 10:55:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5EB7740557
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 10:55:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GpMe-ycmc1q7 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Aug 2024 10:55:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 60A7140513
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 60A7140513
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 60A7140513
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 10:55:23 +0000 (UTC)
X-CSE-ConnectionGUID: 9duFrZxrQ4qlXsYDFtmCIw==
X-CSE-MsgGUID: 0JURCbkDRpqwQO/64XqXjA==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="31664394"
X-IronPort-AV: E=Sophos;i="6.09,269,1716274800"; d="scan'208";a="31664394"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2024 03:55:21 -0700
X-CSE-ConnectionGUID: 5xGkPkfkS5CJhjyvpeZv7Q==
X-CSE-MsgGUID: 5ALGpwbMQCOiZHC5Be/jZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,269,1716274800"; d="scan'208";a="87757285"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by fmviesa001.fm.intel.com with ESMTP; 07 Aug 2024 03:55:19 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  7 Aug 2024 12:53:25 +0200
Message-Id: <20240807105326.86665-3-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240807105326.86665-1-maciej.fijalkowski@intel.com>
References: <20240807105326.86665-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723028123; x=1754564123;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tzexPoIfOlUtrPzVq0Y+xdSBYhn5+Dywu4gsjG+uR5A=;
 b=gNRlQIlvET73zwTthof/8Mw4b1uZ8O7KDXNO/s8otpLMiF4QfAbK2oRQ
 2UnSGoXN/W++gKNoW5orZOpYq5REkbZmw3E3vhr5gkLY0hUIexPl43SLR
 APgMe5I6GxVfLdBPv9feNbKLriCuvZEvlWSucXXN7DHXMH69rlCarDxB8
 U0J9C/1yz0vcOZISAMVqlwb+9LqridnnLhPsBprJnVGpmUyTP5y60W0xQ
 3ORtgk1CQFVvSmpHiP8RpdJr0G7KZIcR9RZlDUkxqtc/P1OhGqpS07v9k
 Uxlu2xHJBGzaqC5MLfzZU8gI+12NDP81LKLibnWGLVeDFQrb9xoJQvqnw
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gNRlQIlv
Subject: [Intel-wired-lan] [PATCH iwl-net 2/3] ice: fix ICE_LAST_OFFSET
 formula
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>, netdev@vger.kernel.org,
 bjorn@kernel.org, anthony.l.nguyen@intel.com, magnus.karlsson@intel.com,
 luizcap@redhat.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

For bigger PAGE_SIZE archs, ice driver works on 3k Rx buffers.
Therefore, ICE_LAST_OFFSET should take into account ICE_RXBUF_3072, not
ICE_RXBUF_2048.

Fixes: 7237f5b0dba4 ("ice: introduce legacy Rx flag")
Suggested-by: Luiz Capitulino <luizcap@redhat.com>
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 50211188c1a7..4b690952bb40 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -842,7 +842,7 @@ ice_can_reuse_rx_page(struct ice_rx_buf *rx_buf)
 		return false;
 #if (PAGE_SIZE >= 8192)
 #define ICE_LAST_OFFSET \
-	(SKB_WITH_OVERHEAD(PAGE_SIZE) - ICE_RXBUF_2048)
+	(SKB_WITH_OVERHEAD(PAGE_SIZE) - ICE_RXBUF_3072)
 	if (rx_buf->page_offset > ICE_LAST_OFFSET)
 		return false;
 #endif /* PAGE_SIZE >= 8192) */
-- 
2.34.1

