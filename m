Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 595B77205CE
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Jun 2023 17:20:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id ECC794188F;
	Fri,  2 Jun 2023 15:20:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ECC794188F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685719202;
	bh=SF9GSSf0MxfmHnmMaxNrUCnkftvit0oKs3pb0XBWpF0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=94t9J5xRL3IZtQpf8K/D7w4nI1s7r3ohyAT/81PilWnHZr/0tBsKUztdH+3SPRi34
	 Ncuuv2MlhRdCcDpAU6tyTw8v3CItHzyauA4O8GCPbTzNNYFgAqj6kHRRGgu1pNu7kO
	 u/xecsSrQ6ou8RxDW4jBMbfR5/SqfnjBsQxV1DECMZ8h4L1WwkxGbwvVRXjmYO2BVV
	 rY3TIxEoAw+KbcqJVpfDcPUJxaPBKmxhv48eqmF6PURVe+eMW80tXBmmlE64pg00or
	 a3bO7NxMR4MQZE9v4Uot3ZzTrfUIKnuT1+d9pCgV1ttsfLODuzGizWnelKlKssu9Ss
	 1HM/jUv+dYXkA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oeEJnrdg3Kpu; Fri,  2 Jun 2023 15:20:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CCC6741869;
	Fri,  2 Jun 2023 15:20:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CCC6741869
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 915301BF291
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jun 2023 08:12:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 765EA83D0F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jun 2023 08:12:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 765EA83D0F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VYNtJrxWLvj2 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Jun 2023 08:12:15 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D256E83CDF
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com
 [IPv6:2607:f8b0:4864:20::102f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D256E83CDF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jun 2023 08:12:15 +0000 (UTC)
Received: by mail-pj1-x102f.google.com with SMTP id
 98e67ed59e1d1-25692ff86cdso1377005a91.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 02 Jun 2023 01:12:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685693535; x=1688285535;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=OxZSFZUb5M6nUpzbXdkbwxYInHl9SkcL9S+BMiuc6p0=;
 b=fDcxwsN1WxHgwVFjkERKfd0p/jUiI6PtfBGXNyU0KkR1CF8TUzwLhlxpafBrIlnwFF
 bqqHo1j0eyzQISjUCezXr2VZBEru3oLtZ7nXeU9inUl7IwnDyCiIL/9GhPuHZf6eJssv
 kvs3wu2+fmCedFpHE+bjC3qtHRzIVeKkjVME94No/twHMCevGaQO2A5DHbhqtsNoHZWe
 GuHZfLxs0VKHk9iUbeqh9/AJR+Q5tEVMVyc2aHgYRR5YRtbOsyhpamkcPlNGG14flVZl
 xHFoQss43ExMtgc+Hy88l+1IXCxzTm5pneVbL8Uy1mTx1sSRE6uAQaiQSM9IKUb8TzeQ
 AGyw==
X-Gm-Message-State: AC+VfDwrF24X0ya/q4Y4SW1zogl6dtjwhhZHi8uDYscQMKIV6TIRwcjQ
 ZjyeVFWykQ1VlaG/RuytjJ0RmchsuiWacjUUpsA=
X-Google-Smtp-Source: ACHHUZ6h7YkmS9hc3KpdCCByvzQW+/QkDY326rXFWpCs//UWlKgyHF+yC0OBAmgVjyNyANj+olEU7w==
X-Received: by 2002:a17:90a:fa02:b0:255:d86c:baec with SMTP id
 cm2-20020a17090afa0200b00255d86cbaecmr1675751pjb.46.1685693534880; 
 Fri, 02 Jun 2023 01:12:14 -0700 (PDT)
Received: from arista-Idaville.sjc.aristanetworks.com ([74.123.28.10])
 by smtp.googlemail.com with ESMTPSA id
 j19-20020a63ec13000000b0052c3f0ae381sm664322pgh.78.2023.06.02.01.12.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 02 Jun 2023 01:12:14 -0700 (PDT)
From: prasad@arista.com
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  2 Jun 2023 01:11:51 -0700
Message-Id: <20230602081151.49938-1-prasad@arista.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 02 Jun 2023 15:19:39 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=google; t=1685693535; x=1688285535;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=OxZSFZUb5M6nUpzbXdkbwxYInHl9SkcL9S+BMiuc6p0=;
 b=CyzTpzdPdb11s9YrmDOygDmIjhu7YqnEVgjvrcyAwscq9yRZD25SGx8ffjFC9jU7CV
 9uRy6oCiHEIdfRJRn/pbHDhFM5/SQJ7Y7gNqYuR2dXliK5V8CcZSg+60h0anCUBBNDHd
 UpAehGJdwXfTNGWN2M1MIrXd/CDEFPv3UGzjDdpUKXAL3zagEzXu895Bv0+t92vaDK7F
 OinxjgPMwpKbPQCCbzEXbz97HIQ8t7hJrtRNidyJUMD5/owfYTpwYnhly+79RYUjp3tm
 MibKYwKlIyGKLeelwDt7LT8rWOLtttiYKi7Y4IoueoMRen4epzxRufZad7DP5Q5dFVhO
 REqQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=arista.com header.i=@arista.com
 header.a=rsa-sha256 header.s=google header.b=CyzTpzdP
Subject: [Intel-wired-lan] [PATCH] intel-wired-lan: igc: intel-wired-lan:
 igc: set TP bit in ethtool_link_ksettings.supported field
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
Cc: gilligan@arista.com, prasad@arista.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Prasad Koya <prasad@arista.com>

if the physical media is twisted pair copper, set the TP bit in the 'supported' field

Signed-off-by: Prasad Koya <prasad@arista.com>
---
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 8cc077b712ad..c796bd805092 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -1707,6 +1707,7 @@ static int igc_ethtool_get_link_ksettings(struct net_device *netdev,
 	/* twisted pair */
 	cmd->base.port = PORT_TP;
 	cmd->base.phy_address = hw->phy.addr;
+	ethtool_link_ksettings_add_link_mode(cmd, supported, TP);
 
 	/* advertising link modes */
 	if (hw->phy.autoneg_advertised & ADVERTISE_10_HALF)
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
