Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B9FF633860
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Nov 2022 10:27:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AEF3860F7A;
	Tue, 22 Nov 2022 09:27:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AEF3860F7A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669109256;
	bh=Ltb8YsLcIhWmTetDa/HHHvY21TFhXsJnbJriCgaJ4Dw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=H8opo7xx7ARf/uCWZp0L2fwy0Rx2yzTnn3StIFFhgNCi1CFNOgxKeZmZ5nm5FzO4f
	 lRaLvXP82PCvJY+VNDWjD5UMzJTVAGMlQjCzkkYbdKQ1tGTcdLAJ4W5QGykwapuHj+
	 1rnP4cYdJq8vnFLa7xggbyjMnFlTjnCZ3MjOo30vT+Z9BxE3UR5wWai9gqpK7XjwSg
	 1OJv1QzbgVlTpVVGlN4AKURMp5yUhaHD83hLajZRHsVS1h4gxTpTO3zVb3F03kWXa0
	 GYZT9Fz7Q46SxYJOx2AsFEYdEweol0LkGxKSwWQMhOJIE66qkx7mzaqt7ZP6bc/er2
	 uWwqYnxQz4irQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w3Jion_E1c4J; Tue, 22 Nov 2022 09:27:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B490860E3B;
	Tue, 22 Nov 2022 09:27:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B490860E3B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A85591BF309
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 09:27:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7C9D9408B6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 09:27:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7C9D9408B6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6JHZhRQURjvj for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Nov 2022 09:27:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C698140160
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com
 [IPv6:2607:f8b0:4864:20::532])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C698140160
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 09:27:29 +0000 (UTC)
Received: by mail-pg1-x532.google.com with SMTP id 62so13530717pgb.13
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 01:27:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=eATo/hld30hJMYbs854XvpQGAeslm1I6YJ3BHDFYFEg=;
 b=DnN9e12DKviUoXwFICf5sapudXogUeFXygWG71QgEqNRDGbqQpSAq14Rxv47sI0yMd
 FpBokc0IPYSSaz/yTNXtQk8Nk2It7Np5W+typbfn5SR+oLGGcooqBvv1MJPq+pqewMsx
 /Ea7koCiANp+SKZkLyghsDHGpiZ511bzggu0Ai2WcySLFQR9O3NCklI6Mh+lm3/TdkF8
 kO1gDrUMaOLFhqy428Rwni7RjuJlC6xkn2fTVPZRB0EhwtxJKbvD9zvYYbkuta1VfVx1
 3u6FgNsdC3QQk1cC9wnaogd2LZySWQr67EXy+7fr7J3bSk9/I2pPXHs0tGDLY+fUaupi
 BAdA==
X-Gm-Message-State: ANoB5pmyQcatlJXGNQwf+0nlZeirnfFD5PMtqHxhmigpdVY6x1dDMnW9
 qkAoFnxE4+3Z1CsnJ4sUiZxnLA==
X-Google-Smtp-Source: AA0mqf5FEiWQeGphury5+1tD79SfHYxjMoofOiV7AmZQVVrt3KAqnKKRF05vDd/tj0redx0XMfIMUw==
X-Received: by 2002:aa7:9293:0:b0:56b:9bf4:c1c4 with SMTP id
 j19-20020aa79293000000b0056b9bf4c1c4mr14057458pfa.67.1669109249227; 
 Tue, 22 Nov 2022 01:27:29 -0800 (PST)
Received: from fedora.flets-east.jp ([2400:4050:c360:8200:8ae8:3c4:c0da:7419])
 by smtp.gmail.com with ESMTPSA id
 g10-20020a170902d1ca00b00178acc7ef16sm9678567plb.253.2022.11.22.01.27.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Nov 2022 01:27:28 -0800 (PST)
From: Akihiko Odaki <akihiko.odaki@daynix.com>
To: 
Date: Tue, 22 Nov 2022 18:27:07 +0900
Message-Id: <20221122092707.30981-1-akihiko.odaki@daynix.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=eATo/hld30hJMYbs854XvpQGAeslm1I6YJ3BHDFYFEg=;
 b=Dh3UF3El3dMJ6YHfGqSY2/yW/4eIWI4c2NX7FXI3gZTQg52GpepQx2iYs+axwGyBch
 xiLrUm+XzFNiFGIfuuQRPX9rt6coTdn4F9lkTciXMvemJQXPzHd68W7F/hIphcnaTbBV
 8cByzmD0CZttP5yYv4Rs0IuLYG/6TWS6YFUemU+GT8E0CXUkzN22hbt4eFMS2TinVBRl
 x0SmsG5H6gYOAnieaxxv5MxW4lHVdXfqFXPd2AI4NhLFOiybEtgqwU5eZikBFTVreFz9
 L5njN1gHd6uREwoD6fbog1A8q5qxdd1uYNjAqvPpzZnWJaClkz1cMnLhqB2DWZd8wFyp
 Q9Zg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=daynix-com.20210112.gappssmtp.com
 header.i=@daynix-com.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=Dh3UF3El
Subject: [Intel-wired-lan] [PATCH] igbvf: Regard vf reset nack as success
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

vf reset nack actually represents the reset operation itself is
performed but no address is not assigned. Therefore, e1000_reset_hw_vf
should fill the "perm_addr" with the zero address and return success on
such an occassion. This prevents its callers in netdev.c from saying PF
still resetting, and instead allows them to correctly report that no
address is assigned.

Signed-off-by: Akihiko Odaki <akihiko.odaki@daynix.com>
---
 drivers/net/ethernet/intel/igbvf/vf.c | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igbvf/vf.c b/drivers/net/ethernet/intel/igbvf/vf.c
index b8ba3f94c363..2691ae2a8002 100644
--- a/drivers/net/ethernet/intel/igbvf/vf.c
+++ b/drivers/net/ethernet/intel/igbvf/vf.c
@@ -1,6 +1,8 @@
 // SPDX-License-Identifier: GPL-2.0
 /* Copyright(c) 2009 - 2018 Intel Corporation. */
 
+#include <linux/etherdevice.h>
+
 #include "vf.h"
 
 static s32 e1000_check_for_link_vf(struct e1000_hw *hw);
@@ -131,11 +133,18 @@ static s32 e1000_reset_hw_vf(struct e1000_hw *hw)
 		/* set our "perm_addr" based on info provided by PF */
 		ret_val = mbx->ops.read_posted(hw, msgbuf, 3);
 		if (!ret_val) {
-			if (msgbuf[0] == (E1000_VF_RESET |
-					  E1000_VT_MSGTYPE_ACK))
+			switch (msgbuf[0]) {
+			case E1000_VF_RESET | E1000_VT_MSGTYPE_ACK:
 				memcpy(hw->mac.perm_addr, addr, ETH_ALEN);
-			else
+				break;
+
+			case E1000_VF_RESET | E1000_VT_MSGTYPE_NACK:
+				eth_zero_addr(hw->mac.perm_addr);
+				break;
+
+			default:
 				ret_val = -E1000_ERR_MAC_INIT;
+			}
 		}
 	}
 
-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
