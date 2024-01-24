Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4296D83A4A3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jan 2024 09:56:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C22194363A;
	Wed, 24 Jan 2024 08:56:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C22194363A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706086577;
	bh=PpWQWJpYkDehFFRYCFWE0+2P1/XzZiBiXbECZUVKFfQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ykro67doVAFpnGAZto27IH6LvuqswNYnra7+nfXyMbAMvbh5raQmxVkDT1onaGYx0
	 9KSG8a0AIceX2pEUVHJSeobvRjx/PQQ9GBs6dkEIgt1rTQbI+fBdpjZWzWEJqcp/TO
	 w8cJv/CRbZbJysfdNaHxoJ+pfpYzNV51Tjx5vB/yZ+Cvwk4x5XmqznxxYATF6k+ilN
	 bnCpPCrR0OtEsTPcbLYlYAB8H8zVWwQYo2l8QQMMQ5ba45kbQyvgRYJsSkY+NQ/1TN
	 6/N98GQMXJmR+1cbb7h1y/SdJuhoGp7YtJI/I/L/HRaFiwWfPvDZ8O3qviNHtFGT7m
	 3WEvrLsmpFUvg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dVLr5GTACVH3; Wed, 24 Jan 2024 08:56:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E020D42FCB;
	Wed, 24 Jan 2024 08:56:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E020D42FCB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5E21C1BF94D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jan 2024 08:56:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 35BB74026F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jan 2024 08:56:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 35BB74026F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 27tIgV_Hzfj2 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jan 2024 08:56:04 +0000 (UTC)
X-Greylist: delayed 1904 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 24 Jan 2024 08:56:04 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 300D340148
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 300D340148
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jan 2024 08:56:04 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>
Date: Wed, 24 Jan 2024 09:55:30 +0100
Message-Id: <20240124085532.58841-2-kurt@linutronix.de>
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
 bh=PpWQWJpYkDehFFRYCFWE0+2P1/XzZiBiXbECZUVKFfQ=;
 b=LCupJw2wd2gwM0FwNCEw8xXbBGMOielC/9ZpbF384ybJCD0+NqeQ/s9llYPJKm9bCoNLq+
 WxQCdx4q7ElipFh6WilDeo+bleSwVxK5zwp4IsimIldyWlPAJglbgs/2HPOQ4EeOYIBwMa
 5QO0vmLcU4twMVUovnTE6Cfch3+xIpE48rY9GWCkmLlq8K19unO4NWYoovp9OsK+ex5p2q
 KoS9pIfl2SjgmXk1dHMyE9kD5YuIiL0c07Y9gsifMjXGhq6Z/SM1nhPC7TzPG09KP8yAon
 RkXYAIlLA7Tx0RmxK3qsyms1TRR5DMEmKfG5YqzK9Z/Yh/6r1TDOncUmFd8Y9g==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1706086562;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=PpWQWJpYkDehFFRYCFWE0+2P1/XzZiBiXbECZUVKFfQ=;
 b=vKSFO5kUm6ModsdQyN1FFAPp/jKtL2kasnvIC722qkxgnNRvODuxCXHZBbYw97Zs7H5Jfu
 w/fNVaragIb05ABA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=LCupJw2w; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=vKSFO5kU
Subject: [Intel-wired-lan] [PATCH v2 iwl-next 1/3] igc: Use reverse xmas tree
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

Use reverse xmas tree coding style convention in igc_add_flex_filter().

Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index ba8d3fe186ae..4b3faa9a667f 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -3577,9 +3577,9 @@ static bool igc_flex_filter_in_use(struct igc_adapter *adapter)
 static int igc_add_flex_filter(struct igc_adapter *adapter,
 			       struct igc_nfc_rule *rule)
 {
-	struct igc_flex_filter flex = { };
 	struct igc_nfc_filter *filter = &rule->filter;
 	unsigned int eth_offset, user_offset;
+	struct igc_flex_filter flex = { };
 	int ret, index;
 	bool vlan;
 
-- 
2.39.2

