Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 319C383A49F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jan 2024 09:56:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A2BC742FD1;
	Wed, 24 Jan 2024 08:56:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A2BC742FD1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706086573;
	bh=P3HgGTMv08xeDMeml7R7w42+BDzLJstFhSWbIhGezfY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yrOGzvyKZxnBD7/6Fwj5o2AN+0VYTifS5E89AGY9TEkXUKCBHkZXawcLJK8yvrHaJ
	 PuTpxiTWAXeY/2i6eysv1w0Mt7U858hk9GAFeh3DyP4YxJ5vA7EEkMmaPFdONrIVtP
	 T44d9PwyE2r5znm5gWrXchg3FkWFYHuAVnC23mfWGYl5ITGaoWol2KjT8fvA/ViMA1
	 5y0u4jeVrZpQmYknB/2Vfb487a9TVMPfMGIDoZ7t/DReW+2Wd3aSxJhvH+NSymGUY3
	 EJvTqNR6wgnGghWErnOekBLrX8C6bXGXcp6PPeoNOaYfGlcz78dGXvGT2cpNCBwU7c
	 vVoOjO4dXS1xA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mZAWBsI8gWZI; Wed, 24 Jan 2024 08:56:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B61D742FCB;
	Wed, 24 Jan 2024 08:56:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B61D742FCB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4FD5B1BF339
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jan 2024 08:56:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1FEC042FD0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jan 2024 08:56:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1FEC042FD0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dldTEJP3ISSK for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jan 2024 08:56:05 +0000 (UTC)
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EC22242FCB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jan 2024 08:56:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EC22242FCB
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>
Date: Wed, 24 Jan 2024 09:55:31 +0100
Message-Id: <20240124085532.58841-3-kurt@linutronix.de>
In-Reply-To: <20240124085532.58841-1-kurt@linutronix.de>
References: <20240124085532.58841-1-kurt@linutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1706086562;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=P3HgGTMv08xeDMeml7R7w42+BDzLJstFhSWbIhGezfY=;
 b=SODs8+U1XnNNUCJf54MPvol50AGE64Rq55Au6H3r98xLeOTeNOwf7vUKW+uHKOduXoN735
 sQK7bkAUBLVTGbd71vnhumYLmv8GWH3moh6OSryMuuzVzzrJWSMOU6H6NOon5zqxCOGJgK
 /FZWGakGGp+/uqKegJ3fl64N4n6uO21BIAzUnYko6p+JtKw5OQ7ijIYGhDdmGNhw81u9lu
 ZlvLPD6knca3sa+1f5GblvUzLQQjRbq752gg2bARTH3af7P6OfZUgSkS6BQdamDPXFQvVI
 bgU/6UPsEm7UCzPnjJ5OkNchMvHznIkiKXRWxLxex2cfkNOuNtTWd2giz6uv+Q==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1706086562;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=P3HgGTMv08xeDMeml7R7w42+BDzLJstFhSWbIhGezfY=;
 b=BnwoQDZFoiM6N6Lox0rMRqu5K1QxRjEjJZKH+ebiNAdbRba4DCH8RjidNm+wtXa/BpenoN
 sMktwdJoZPs65jCw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=SODs8+U1; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=BnwoQDZF
Subject: [Intel-wired-lan] [PATCH v2 iwl-next 2/3] igc: Use netdev printing
 functions for flex filters
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
Cc: netdev@vger.kernel.org, Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

All igc filter implementations use netdev_*() printing functions except for
the flex filters. Unify it.

Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 4b3faa9a667f..91297b561519 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -3385,7 +3385,7 @@ static int igc_flex_filter_select(struct igc_adapter *adapter,
 	u32 fhftsl;
 
 	if (input->index >= MAX_FLEX_FILTER) {
-		dev_err(&adapter->pdev->dev, "Wrong Flex Filter index selected!\n");
+		netdev_err(adapter->netdev, "Wrong Flex Filter index selected!\n");
 		return -EINVAL;
 	}
 
@@ -3420,7 +3420,6 @@ static int igc_flex_filter_select(struct igc_adapter *adapter,
 static int igc_write_flex_filter_ll(struct igc_adapter *adapter,
 				    struct igc_flex_filter *input)
 {
-	struct device *dev = &adapter->pdev->dev;
 	struct igc_hw *hw = &adapter->hw;
 	u8 *data = input->data;
 	u8 *mask = input->mask;
@@ -3434,7 +3433,7 @@ static int igc_write_flex_filter_ll(struct igc_adapter *adapter,
 	 * out early to avoid surprises later.
 	 */
 	if (input->length % 8 != 0) {
-		dev_err(dev, "The length of a flex filter has to be 8 byte aligned!\n");
+		netdev_err(adapter->netdev, "The length of a flex filter has to be 8 byte aligned!\n");
 		return -EINVAL;
 	}
 
@@ -3504,8 +3503,8 @@ static int igc_write_flex_filter_ll(struct igc_adapter *adapter,
 	}
 	wr32(IGC_WUFC, wufc);
 
-	dev_dbg(&adapter->pdev->dev, "Added flex filter %u to HW.\n",
-		input->index);
+	netdev_dbg(adapter->netdev, "Added flex filter %u to HW.\n",
+		   input->index);
 
 	return 0;
 }
-- 
2.39.2

