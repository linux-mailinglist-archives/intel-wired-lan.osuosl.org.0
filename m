Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B9DF7FB35B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Nov 2023 08:56:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EB38D403AA;
	Tue, 28 Nov 2023 07:56:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EB38D403AA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701158217;
	bh=w8+enL9oeb40pI5UvIqsKgZZldKHOd42bAkwKhn2WBA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=P2vYYlOyFJXRfP9XW2rzMNBgVv2iyWiFJLFMD4JMTFeKqkgn0EJyxZjpXhjnG/TYr
	 qH7WLMg2+fVxPj+z/0HMplKrLZkd3nSUXGMKK1ByaYAY/yxxPLPl8xkeOGtHL/Q+wE
	 d4pPGZ4uxUrWJ6wcLr3i73k2TnNj9A8ac5cAnsN4arEvTjQQ5VbFTqdbyJ0ksunZZD
	 i70dqkVQ1Rrt0uLaan3bdR679sqytF6LR/jX2Qq5UMYndQCNbiOFz47XNDovyOE8PD
	 LUhMx/Y9xlv1BrVNJdPaMoVz5/HdUpZyPy1nPxR6l9VisniaYfCGVANoFTT66iWIfA
	 MgbwrkiaTLuHQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X9NCUhgMAlwd; Tue, 28 Nov 2023 07:56:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 402BE4011C;
	Tue, 28 Nov 2023 07:56:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 402BE4011C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C48C11BF3ED
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Nov 2023 07:56:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9CC8660FC6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Nov 2023 07:56:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9CC8660FC6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZNmEFM1cfHM5 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Nov 2023 07:56:49 +0000 (UTC)
X-Greylist: delayed 456 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 28 Nov 2023 07:56:48 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DBBE06059A
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DBBE06059A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Nov 2023 07:56:48 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>
Date: Tue, 28 Nov 2023 08:48:46 +0100
Message-Id: <20231128074849.16863-3-kurt@linutronix.de>
In-Reply-To: <20231128074849.16863-1-kurt@linutronix.de>
References: <20231128074849.16863-1-kurt@linutronix.de>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1701157750;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=YLgjvXOFkIe5TTXLiL99lv7XPJkgX/dWYZFltAdFpg4=;
 b=r4TgOSWoe1/SYPZrhr8fptmme1ehHE+4jF9Vks+zhdhOXjO/OePjHaVEK7P3nh6838wtZd
 L4cZLsfEUdISDsJUbpFRh5ig3QLNh4Gmv0xKsez0senSw+wPg/O2cwfgSxPAIJSMI9Pwru
 kOAXQKb/h4dkLGM60mgEltHkX5i236sPWbQR/JV3dJ1mOOkZNjV9j49RqIgnY0y5Lc2hSM
 kw8J1km1i4mW8/6xFDT8SwZf2jyuPSCYGF5Yk99PEwBNcIugWpT3I0IV35Y2Df2GFV+bjw
 uT1jGhMKLvwclRXnWlUyIhQLcVbvo2RirNttWXory7mI2NxwxhP67Ox1xpU0Qw==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1701157750;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=YLgjvXOFkIe5TTXLiL99lv7XPJkgX/dWYZFltAdFpg4=;
 b=TODftqr/AMnOKXH1Nry0Ztdwm+ERUDrAJ0/I8F3kJQjHuY57gm2dNbd7QaX5VymaNCeEu/
 nnEz4m/rfRme08DQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=r4TgOSWo; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=TODftqr/
Subject: [Intel-wired-lan] [PATCH net-next 2/5] igc: Use netdev printing
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
Cc: netdev@vger.kernel.org, Kurt Kanzenbach <kurt@linutronix.de>,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

All igc filter implementations use netdev_*() printing functions except for the
flex filters. Unify it.

Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index d4150542a5c5..4c562df0527d 100644
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

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
