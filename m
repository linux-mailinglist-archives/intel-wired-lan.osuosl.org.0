Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB1A634C32
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Nov 2022 02:09:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B13B182068;
	Wed, 23 Nov 2022 01:09:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B13B182068
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669165783;
	bh=WxdPdd9C1aE07buDCoHupu+uv1Nf/oT/z3R4is3FDCs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=uzUjcq4MxTXSeWjKUUv1O9dI0r1n4ZmkiXNR/x1pi6FiFvDNP05Mu/KssHPO/t6mF
	 Qo7lhveBseLyvnrY+usGFKoe1Ybz62LrO7nWKrQFKSmuob2Gewyca9LTdcdWnOrThA
	 jBKAQHLrZv00IMmTsaXmmScYryJqpU7A3fUvA6X59h4t3TNw84uoTUcJrW5TrmvzHW
	 NJ1iXFYk26BYu+VT1Mv4Y4vZobRYCDEbTeGUEmoPBIOxFX5Ur3ndNUmdcZxLxKymiI
	 AVpwqI7zsqn9/6j4M5z/gOhqCR7jgv868cXVuL+JemO5qtIDF0G50JFlCS9VxhMkU7
	 EWTdwNJgU//qQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gQh-MYXUuHBW; Wed, 23 Nov 2022 01:09:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B5EA182054;
	Wed, 23 Nov 2022 01:09:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B5EA182054
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B4C931BF371
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Nov 2022 01:09:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 97F5341901
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Nov 2022 01:09:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 97F5341901
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QeyytrlDaj25 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Nov 2022 01:09:37 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 560AE418EE
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com
 [IPv6:2607:f8b0:4864:20::62d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 560AE418EE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Nov 2022 01:09:36 +0000 (UTC)
Received: by mail-pl1-x62d.google.com with SMTP id y10so14094282plp.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 17:09:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=/V51eYi8kNH703uTKmSzNllQwio3tsi/yeJV9VYuXpc=;
 b=3QW3/WGjlbbxuTW2kzBUrw13P4xe2Im432clXo1h91bUHjM1NXsAolI3/qLxFybY+y
 NaJkv+T5N+SNuMYxdYhjK8Hj3OpguKru+KzMg4xdk8W+fUc4NGNhEpskcJ6J8JieLMCP
 Xf2PkeycTpghCUCbcHXXcsKGpKgY35shybJzyw4C4699ndshmOx6O61P8DiGVMQD1MN7
 wa/pQxSQK25rqTEuYpXL9CdTVkQSGfNcksOWDuaSxRJefhEHrij4XLrvy7BmFFSkXxCT
 B1362vZPqMuaSrinjZGwGu5XeB8DrUtmc4g3mY22FCWGwoMdhpUoKvIy6rh0IXbedUyf
 bB6w==
X-Gm-Message-State: ANoB5plWi4nE3ePSjuOIplNelBqYrOOasjCEeALutXIIMg1JeUjGvvUR
 4RPZQ7Pn7UHp2ZGl31vhOOcOEQ==
X-Google-Smtp-Source: AA0mqf4SsVTVf9E0AAbXr3UbIt92zS4EddB+5oBu/PqBwKXyvwW6uycy40IZ1nU20bQoKPpELPwMVA==
X-Received: by 2002:a17:902:ed94:b0:186:748f:e8c5 with SMTP id
 e20-20020a170902ed9400b00186748fe8c5mr6375972plj.73.1669165776461; 
 Tue, 22 Nov 2022 17:09:36 -0800 (PST)
Received: from fedora.flets-east.jp ([2400:4050:c360:8200:8ae8:3c4:c0da:7419])
 by smtp.gmail.com with ESMTPSA id
 x15-20020aa78f0f000000b0056be4dbd4besm11309911pfr.111.2022.11.22.17.09.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Nov 2022 17:09:36 -0800 (PST)
From: Akihiko Odaki <akihiko.odaki@daynix.com>
To: 
Date: Wed, 23 Nov 2022 10:09:26 +0900
Message-Id: <20221123010926.7924-1-akihiko.odaki@daynix.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=/V51eYi8kNH703uTKmSzNllQwio3tsi/yeJV9VYuXpc=;
 b=lrW4Id5THbQtufiIuhTDV12fIXnXs2AY/a0DuVmYeuisSZPyJkQi00phxQ4u4SNwFY
 6R3pReduNo28T/sy/smgfVHCqcHl4JSEJOC6W4cZEkShcPFuRBhYKdZXjmihnAUcyXRe
 rYOZzWbE6Bx+MCZXs18h0fTfmCv3DmV6ZUutx9wvEAamr0NW0ypkfE2Q+tgG3jJuzJQX
 +YKniqqZ114B1cPCpBeqd5R+oa9KPX1uy9zgrZC+KewsW9OstAzfASiEsXi+N9+p+2Sq
 fMM75XqGe/mEwAck8azYhQWm/VuxpOeBdT8gfmkKlmjPsf8WJhFyPxLCGZaf7fQOxvxG
 9YAw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=daynix-com.20210112.gappssmtp.com
 header.i=@daynix-com.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=lrW4Id5T
Subject: [Intel-wired-lan] [PATCH v3] igb: Allocate MSI-X vector when testing
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Yuri Benditovich <yuri.benditovich@daynix.com>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Yan Vugenfirer <yan@daynix.com>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Without this change, the interrupt test fail with MSI-X environment:

$ sudo ethtool -t enp0s2 offline
[   43.921783] igb 0000:00:02.0: offline testing starting
[   44.855824] igb 0000:00:02.0 enp0s2: igb: enp0s2 NIC Link is Down
[   44.961249] igb 0000:00:02.0 enp0s2: igb: enp0s2 NIC Link is Up 1000 Mbps Full Duplex, Flow Control: RX/TX
[   51.272202] igb 0000:00:02.0: testing shared interrupt
[   56.996975] igb 0000:00:02.0 enp0s2: igb: enp0s2 NIC Link is Up 1000 Mbps Full Duplex, Flow Control: RX/TX
The test result is FAIL
The test extra info:
Register test  (offline)	 0
Eeprom test    (offline)	 0
Interrupt test (offline)	 4
Loopback test  (offline)	 0
Link test   (on/offline)	 0

Here, "4" means an expected interrupt was not delivered.

To fix this, route IRQs correctly to the first MSI-X vector by setting
IVAR_MISC. Also, set bit 0 of EIMS so that the vector will not be
masked. The interrupt test now runs properly with this change:

$ sudo ethtool -t enp0s2 offline
[   42.762985] igb 0000:00:02.0: offline testing starting
[   50.141967] igb 0000:00:02.0: testing shared interrupt
[   56.163957] igb 0000:00:02.0 enp0s2: igb: enp0s2 NIC Link is Up 1000 Mbps Full Duplex, Flow Control: RX/TX
The test result is PASS
The test extra info:
Register test  (offline)	 0
Eeprom test    (offline)	 0
Interrupt test (offline)	 0
Loopback test  (offline)	 0
Link test   (on/offline)	 0

Signed-off-by: Akihiko Odaki <akihiko.odaki@daynix.com>
---
 drivers/net/ethernet/intel/igb/igb_ethtool.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
index e5f3e7680dc6..ff911af16a4b 100644
--- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
+++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
@@ -1413,6 +1413,8 @@ static int igb_intr_test(struct igb_adapter *adapter, u64 *data)
 			*data = 1;
 			return -1;
 		}
+		wr32(E1000_IVAR_MISC, E1000_IVAR_VALID << 8);
+		wr32(E1000_EIMS, BIT(0));
 	} else if (adapter->flags & IGB_FLAG_HAS_MSI) {
 		shared_int = false;
 		if (request_irq(irq,
-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
