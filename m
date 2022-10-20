Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DF222606282
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Oct 2022 16:10:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 07A0B42222;
	Thu, 20 Oct 2022 14:10:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 07A0B42222
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666275044;
	bh=1Mtla5flVgL/8hw39fcwP6NH/CXH7Tc6EIWILVWqfCo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=w2ggbLMzGQsmNPqpElx3B6jMinzvlK+dbvzsJMfUSXRnc57GCK3G505j275lvTpuc
	 ouG0JQQuHa+yOPqY8qYgnxcmWSeKD8SJFU0Ht6DCAdMtX6AkwigUfzUAYRWHtd3qQR
	 4SwxoMKku/6NBA+dXL3lzNnmP6M8QwPRu9EOclCLB8haHmnckuOSQUk6vTLMBrQrRh
	 rtn9jO8QZwx8NYA4e+lRNjkuO1DaKaqhLkwkNiciE6XIMoqdbV9wCW9mM3IBWE5X16
	 gnB+zqfsnMoEulWzcZ8z378TH87jI1t31QPJH37jUIQNIQgyOmMwP7H735S9R9/6JW
	 Cw+ZfWLu375eg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pzJa_efOWgiG; Thu, 20 Oct 2022 14:10:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A0D6741BDC;
	Thu, 20 Oct 2022 14:10:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A0D6741BDC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2D4681BF316
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Oct 2022 03:36:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1439060ABA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Oct 2022 03:36:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1439060ABA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ISr4JRZ5e2lN for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Oct 2022 03:36:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E0E38605A9
Received: from m15111.mail.126.com (m15111.mail.126.com [220.181.15.111])
 by smtp3.osuosl.org (Postfix) with ESMTP id E0E38605A9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Oct 2022 03:36:56 +0000 (UTC)
Received: from localhost.localdomain (unknown [223.104.21.35])
 by smtp1 (Coremail) with SMTP id C8mowAA3J3vEwVBjI1EnDQ--.34714S2;
 Thu, 20 Oct 2022 11:34:49 +0800 (CST)
From: xiaolinkui <xiaolinkui@126.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, xiaolinkui@126.com
Date: Thu, 20 Oct 2022 11:34:25 +0800
Message-Id: <20221020033425.11471-1-xiaolinkui@126.com>
X-Mailer: git-send-email 2.17.1
X-CM-TRANSID: C8mowAA3J3vEwVBjI1EnDQ--.34714S2
X-Coremail-Antispam: 1Uf129KBjvdXoW7WryUZw45Kr4xur1xGFWxJFb_yoWfXFb_Wr
 1I9F1xWrW5GFnYqw4jkrs7C3yYkFWvgr95uF9Fq3yrA34DZw15AFyDWrWIqr4xGr4fAF95
 A3W3tayfC34rKjkaLaAFLSUrUUUU1b8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
 9fnUUvcSsGvfC2KfnxnUUI43ZEXa7xREWEE5UUUUU==
X-Originating-IP: [223.104.21.35]
X-CM-SenderInfo: p0ld0z5lqn3xa6rslhhfrp/1tbiHBug1lpEIOLkJgAAsv
X-Mailman-Approved-At: Thu, 20 Oct 2022 14:10:38 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=126.com; 
 s=s110527; h=From:Subject:Date:Message-Id; bh=NF524UiF1Rlho55kpZ
 ccnpG59hTNeQeOGBdNsC+P6/g=; b=jJ6eKhhsww5+aks+p7x/rHUPb0+ggdofaP
 rVATIC/Fgf6K9Qbb0FyWfduSE9OL77ihCAstUHxIr2f2CsYCtbaLXseYBuDGlzZD
 Y2nIROrJj6OxxufXS9gaNyn0ZGBNCZCDMk3rkSeVT/rGwwau7d30brUBAldpFCc6
 HyojH2CBo=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=126.com header.i=@126.com
 header.a=rsa-sha256 header.s=s110527 header.b=jJ6eKhhs
Subject: [Intel-wired-lan] [PATCH] i40e: add a fault tolerance judgment
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
Cc: netdev@vger.kernel.org, Linkui Xiao <xiaolinkui@kylinos.cn>,
 intel-wired-lan@lists.osuosl.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Linkui Xiao <xiaolinkui@kylinos.cn>

Avoid requesting memory when system memory resources are insufficient.
Reference function i40e_setup_tx_descriptors, adding fault tolerance
handling.

Signed-off-by: Linkui Xiao <xiaolinkui@kylinos.cn>
---
 drivers/net/ethernet/intel/i40e/i40e_txrx.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index d4226161a3ef..673f2f0d078f 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -1565,6 +1565,9 @@ int i40e_setup_rx_descriptors(struct i40e_ring *rx_ring)
 	struct device *dev = rx_ring->dev;
 	int err;
 
+	if (!dev)
+		return -ENOMEM;
+
 	u64_stats_init(&rx_ring->syncp);
 
 	/* Round up to nearest 4K */
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
