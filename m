Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 807F87205CF
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Jun 2023 17:20:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 203A741892;
	Fri,  2 Jun 2023 15:20:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 203A741892
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685719206;
	bh=k1RgMkpXT1oKR6yaIjnTRV4MNNOAfJOXH2HfQjS5Cz0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=HdSq9/sJmlzGxyRMR3nd0qJ5d8oFRpm4JZESnEBn1FA4OZOfm0eXqe2khmSwPgb4l
	 O8zLVvlVDkzU1txT457jjmZW2eMcv5+M2IgJ97SPJryk8l3D8y7Li2i10sZPc/D9/O
	 pA/zHOdVR05i1iqQ8lvHap1gRyU6bbGRrU8veMlwl6KPlmGdMZldxYA8awQTLqRzkr
	 HNTWob2Vgqn2a0qGwrwz/vBf2kdV1yq192Ha3tj+ZFB87fpBEnouXsGWFjbB/1aDBs
	 Xs1Az2n5wyQd2fPQDX71/L0AF/cOeJZT1Ub7H5bn5SlRvAzTrvJK9mtHG555DjlWip
	 yqVf7gPySw8gA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vO_HYaq9nHT6; Fri,  2 Jun 2023 15:20:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 06EFF41869;
	Fri,  2 Jun 2023 15:20:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 06EFF41869
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D7A121BF291
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jun 2023 08:23:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AF8DE4016B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jun 2023 08:23:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AF8DE4016B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gbCi--wNcjVq for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Jun 2023 08:23:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B183140139
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com
 [IPv6:2607:f8b0:4864:20::22c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B183140139
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jun 2023 08:23:50 +0000 (UTC)
Received: by mail-oi1-x22c.google.com with SMTP id
 5614622812f47-3985f70cf1bso1194079b6e.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 02 Jun 2023 01:23:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685694229; x=1688286229;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=MM78kBmbjOQMknldd9jptuEZvjZhQgI216uXdC0hMys=;
 b=ZpmfjEs8hyAhV70MM+m8NEcr2Mg+g8o5al9ulyvyfvd6GFHzsC+aFfgksxRB4S5zCO
 IPIFATaLneRWdF8BRd0Ss5oFuUzP19O2QYBzVNlHW87Ux0TJtIJW7y7OC91qTP7qjmU4
 fcGifZnbsxWTtrXyoNF42EdkOMe8yDjStxFt0HuD89HvhOzPP1rKRSGkcd9lK9SovuRA
 6p1NCvuYgfG6LeeicyGTCK2rwbdRVdaRFsi/k2DusY7LfQgnOQ5op42BBtI6KZOVm9GX
 YZMbf/N9pSBRfuyayPFLp9rqKVxXk2VYbNp4by/0NVXhpRbXKzSD9xSjTWlVqgaWAhjK
 O1aw==
X-Gm-Message-State: AC+VfDyolVFhT8OVQ5k1wOJhxM7aM9pkrws88o4sbQgon25kTDEvbQ4J
 yyynNSS3ZWzmN5KFXxqMCdqI+kdCaSFILgzHlxg=
X-Google-Smtp-Source: ACHHUZ5qKjLlcNkzLzR1/sIGodIrTWPln2mHg/hVxJYeD32X78JXHNYVpOyf9QQEFKM3HItG9HjirA==
X-Received: by 2002:a05:6358:999e:b0:127:ae95:c089 with SMTP id
 j30-20020a056358999e00b00127ae95c089mr5439915rwb.29.1685694229231; 
 Fri, 02 Jun 2023 01:23:49 -0700 (PDT)
Received: from arista-Idaville.sjc.aristanetworks.com ([74.123.28.10])
 by smtp.googlemail.com with ESMTPSA id
 fu1-20020a17090ad18100b0024e33c69ee5sm726251pjb.5.2023.06.02.01.23.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 02 Jun 2023 01:23:48 -0700 (PDT)
From: prasad@arista.com
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  2 Jun 2023 01:23:36 -0700
Message-Id: <20230602082336.50220-1-prasad@arista.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 02 Jun 2023 15:19:39 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=google; t=1685694229; x=1688286229;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=MM78kBmbjOQMknldd9jptuEZvjZhQgI216uXdC0hMys=;
 b=TGcoTco3Zo61cawFU91nWj6kEgpUA2bojJSw0O7oAmiU5dFSPBHgWp4lsKcdYIB4Z5
 x1g8JT8lGOkGXGYsc50lKqvKGNvlMf1sbOnO2roI72A+ZEZm6GGMlCU9bz0u7FzEvl9o
 mTwEGJnP1hK3mVZ2DMI9AuIq7/VuvGSJAjFZJgby/2L/ZBzwXhn1sKMIhu0MECII/PvZ
 jFcsvM+JC3dSTBsml4y8611/acXtsV/gSpdBOHeGhn7zFWJ/sjzW3fuCbfQKGd6apPlN
 qI/zdeBbDKUwPlE8ITKpcjV/lEW3WmTBf+NWCsH9kgGvGqa3zS3uM2DJiRUfzbt/pQC3
 FKBg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=arista.com header.i=@arista.com
 header.a=rsa-sha256 header.s=google header.b=TGcoTco3
Subject: [Intel-wired-lan] [PATCH] intel-wired-lan: igc: set TP bit in
 ethtool_link_ksettings.supported field
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
Cc: gilligan@arista.com, Prasad Koya <prasad@arista.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Prasad Koya <prasad@arista.com>

set the TP bit in the 'supported' field since I226 only supports twisted pair

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
