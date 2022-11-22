Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53980633C2D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Nov 2022 13:13:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3A2C5408F5;
	Tue, 22 Nov 2022 12:13:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3A2C5408F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669119211;
	bh=B/sa/HM5LrVA12eifnGmWKl0L7+Pn+/3WW1JpllVuXc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=lHVV1hINrJwKr0U0jNrlgtP/CO7qtkPpIObN50HZdaTDLCm2VNbIW8OFVyDe+rVu5
	 BWWm2Sj8qlJmtyYxKP1GuFAygkxwPUzYrNPJvrHqrAARc61YrR4Qe/Yn48cpjNPNZN
	 XJyGSv10jiVl9zcMHf1hHw3bW5Q+r8mlr1Xqgx0VVA8m5eyQNbOcSsGGWrTDPDhI2q
	 OFg/S11DKhgAzExYEnMB5GFV5TExSlSgonYBNL0r30TuZVPF6r2BdRof9vGyIdT8by
	 8jJiYWd2mdgb5YVR1DJzXCwXDyRM8+h9FpIVwRMQ46NH8KfWo0XzviWRBK0x6ptDZP
	 AvQahFmZj71lw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MMETyLt4qGC3; Tue, 22 Nov 2022 12:13:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 481BA408E9;
	Tue, 22 Nov 2022 12:13:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 481BA408E9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1B92A1BF28E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 12:13:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E96564071B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 12:13:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E96564071B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XrIaQDrJbnL4 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Nov 2022 12:13:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 253DC402AA
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com
 [IPv6:2607:f8b0:4864:20::102e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 253DC402AA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 12:13:25 +0000 (UTC)
Received: by mail-pj1-x102e.google.com with SMTP id
 a22-20020a17090a6d9600b0021896eb5554so8151648pjk.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 04:13:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=FqqH+KtltAIS/pFAox0tP5CorP8judi8TGy+EIrJngM=;
 b=Y/d+lFofNAKk41OTEvPKjshIAcbqfnDNzdXua6jtZ99qLETGGDQM85VDDcsyor0B6a
 4RBS7bAiCbsGBS7nFkBiqwgJla7wuui9Zf5ACOaU7wJkwgSUkNqeQQfsutpuFqalOgSd
 tIvlqj6Mr+vNruAu8iUs17aSThglosDtRCkXLUTI8pAuDCsC4a7sHfWWGGYHILSUNe96
 8VbL9aZzig/lPKV4BejYmsaFqw/9bdJHeeH0FrRjXJ8NSpmjJEuN/V5YXXsDnJMIF4GT
 or7733bHi/USHryeuhsl3lXD288rudubOC4MTNHEEW6KIbTtVWY6Yzx7wC1oEzE+MI+c
 /fQQ==
X-Gm-Message-State: ANoB5pmO9CHHyKI+bM8fUuycH4UCI6yRH7cRK0IqrkQLxToZOVKUHFb/
 kIl0cOqfEoGJgmUPhkHFASflx7jM5DD5xg==
X-Google-Smtp-Source: AA0mqf6MKdOYF2Goa3/2/FWQI2WYKUzDrYu7jWUP2jTUJPr+UkwC7b0ul9u5Zi5tkHIrl0dUwfurRA==
X-Received: by 2002:a17:903:2093:b0:188:82fc:e284 with SMTP id
 d19-20020a170903209300b0018882fce284mr3723448plc.76.1669119204574; 
 Tue, 22 Nov 2022 04:13:24 -0800 (PST)
Received: from fedora.flets-east.jp ([2400:4050:c360:8200:8ae8:3c4:c0da:7419])
 by smtp.gmail.com with ESMTPSA id
 r3-20020a17090a940300b001fd6066284dsm9464602pjo.6.2022.11.22.04.13.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Nov 2022 04:13:24 -0800 (PST)
From: Akihiko Odaki <akihiko.odaki@daynix.com>
To: 
Date: Tue, 22 Nov 2022 21:13:12 +0900
Message-Id: <20221122121312.57741-1-akihiko.odaki@daynix.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=FqqH+KtltAIS/pFAox0tP5CorP8judi8TGy+EIrJngM=;
 b=fMeFNd836ur3ELuYWhGiXArQ+Pgxh04yl63lypuVxjxGnWCrm0Ggu0W802uFRdlm1F
 L+FoXz6kE/vsydcsM9XYxzRB9WsLRj23v8yzoPoOnF2ki0qCxXRx4eUhKXb4/L/j0YDD
 I2EXy0hDhrN5QLyOHhfaGzqKGPDDXKJhWgxrdsaz2nigyygG9A2gtPZDznWNls54MO2Y
 A03UW4miHqWKB6TO5dh8Zf2wkgZcfKt0uoiI0bfk7PbgFJt9MdG8TJVJzM4RouHZIBX6
 LZZa+Rvs0Bd2OS8gCPsGAJyV5D7I3M3DFp7wQG94KOlQCLiCrGV7yUIoONHsZ6EHh02z
 XPuw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=daynix-com.20210112.gappssmtp.com
 header.i=@daynix-com.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=fMeFNd83
Subject: [Intel-wired-lan] [PATCH] igb: Allocate MSI-X vector when testing
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

Allocate MSI-X vector when testing interrupts, otherwise the tests will
not work.

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
