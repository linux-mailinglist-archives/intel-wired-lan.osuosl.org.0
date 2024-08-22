Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 803AF95C14D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Aug 2024 01:10:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2C2AC8138E;
	Thu, 22 Aug 2024 23:10:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mQjSweccYWw4; Thu, 22 Aug 2024 23:10:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 78FAE81AF4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724368203;
	bh=RFWX2cinBIO6xOaffSSaIYHyRanL2VaLxGkBzU8S0ko=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=4e7QK51fhdsotiURpFpc+6BygINCgIq3oaiAbMk5wtM+GAM10Wn4HFiIgrM0JLEdk
	 HTvVoM5rZGeq3haSuCpzmVKORd3qgN6PRIhTyxqziNKM6x+K8tZ7jsfQc+aqAc8D33
	 NNuJlcAl+D6oKOrdOTXOdZK0SBb8330G4+e5cHoMB6Q//DmyH7pllYr3ehyA98nQj5
	 VBKrgB5W1/LAGM7l62Mqym2uivKyM85ikjRL4BtY5ETkOzdJVabVlP192GrWjXfVwH
	 LxwMGQIbgC69laGpXTyitxszdfjp27q5c0vzDhIlFfu/Zs3BG1TXuCdX8alTX0dxSi
	 heGLpY3h6uyEw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 78FAE81AF4;
	Thu, 22 Aug 2024 23:10:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 58F0A1BF338
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 21:34:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 51D0F401F1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 21:34:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0EzTgNiFnQkA for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Aug 2024 21:34:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::536; helo=mail-ed1-x536.google.com;
 envelope-from=colin.i.king@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0920840F86
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0920840F86
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com
 [IPv6:2a00:1450:4864:20::536])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0920840F86
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 21:34:14 +0000 (UTC)
Received: by mail-ed1-x536.google.com with SMTP id
 4fb4d7f45d1cf-5becdf7d36aso1797932a12.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 14:34:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1724362453; x=1724967253;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=RFWX2cinBIO6xOaffSSaIYHyRanL2VaLxGkBzU8S0ko=;
 b=sTvfgzsR+l4eBoLdH98n0RIMHkHlQ34ULUyaaGkROZGaeFC3OL+UcxDvtYm3cUwggD
 KyfeN5OA3oI6GLcvNQWoUXYV0A/iseZAWB0Un6s+xXtMxaVJAWqRxkMoYJZPpKzVF9oU
 lAlIXJ0hbx5XWW/4PQDj0UZkG7cvQsz8z4+XHiBt4SGFOJ+n3FaCMGhmobMkIoQuXfX+
 Pu1bntpALb2g/Zlstgtv8g3hjdG7kUxhWr5TYpzS6Ov09eN3aomUxfWE2M9BryxLXwZU
 R8Wq1gOJEYtcaG41UeBCGaFNfJusdzkvugg+eBK6Z93tvWfJoMWmNSW4V3qIahWwAiOJ
 8zQA==
X-Forwarded-Encrypted: i=1;
 AJvYcCV42dOzm2zEoLlV6cG0x8UCYP2DHk5U7/J5ToeqTGQotekIhe9laTcqsca36HpyG52xfg+hFoadQTjwWFqaY9Q=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwZh9vTfW/qrfdXFRDQioplee65Twudc/1/CmB1WijQl9kCXBlB
 /PkmJDKwR75ktK+dP8f9IXqEwIs70dytI5NGiPfftAIwoMCsY3sV
X-Google-Smtp-Source: AGHT+IEVB3TMuJPdwSDpRWpHTVyOYscabrPsA9ZAKrw6yJXPdtiCdNU4xwQLMzzGWoF1fR2IMqAp1A==
X-Received: by 2002:a17:907:1c27:b0:a86:7ba9:b061 with SMTP id
 a640c23a62f3a-a86a54d1230mr1371766b.64.1724362452654; 
 Thu, 22 Aug 2024 14:34:12 -0700 (PDT)
Received: from localhost
 (craw-09-b2-v4wan-169726-cust2117.vm24.cable.virginm.net. [92.238.24.70])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-a868f43795asm167582366b.98.2024.08.22.14.34.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Aug 2024 14:34:11 -0700 (PDT)
From: Colin Ian King <colin.i.king@gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
Date: Thu, 22 Aug 2024 22:34:10 +0100
Message-Id: <20240822213410.644665-1-colin.i.king@gmail.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 22 Aug 2024 23:10:01 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1724362453; x=1724967253; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=RFWX2cinBIO6xOaffSSaIYHyRanL2VaLxGkBzU8S0ko=;
 b=Ylr/xtwgQHfzmIS+E7y8EcqM+QXw2svFavGIJy0XV7ubJyHQ0eIHCMkNJj+D5U7bqS
 93tJJp9HGapGum4RNP7UG2Nl6dTmjIivIKQW/8NRgL5y5se+Rlztiq+6mGXc1OyxHq+1
 l1TbXfqjzXc71MkdmecDqaWoO7hA7HZH5f7N+VIEmUZXEHeJ3Ow8DcguxTrQ+5TkZVab
 AYVWfv2wXcAk1CHxY3t6GIZTvh8eOgKHF4MKpC1oOsNNTegiEeyNAN8uGH/WB4V12nkf
 GsfxTnMqNxcBgHTzn6ZgMZPHrk2ZuqRiieA2gwXOj4WUUEBE/Vg1Te9NlOSFOy2SDW9Q
 rFdw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=Ylr/xtwg
Subject: [Intel-wired-lan] [PATCH][next] idpf: make read-only arrays tx_itr
 and rx_itr static const
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Don't populate the read-only arrays tx_itr and rx_itr on the stack at
run time, instead make them static const.

Signed-off-by: Colin Ian King <colin.i.king@gmail.com>
---
 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 70986e12da28..d50e5cab05fc 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -3149,8 +3149,8 @@ void idpf_vport_init(struct idpf_vport *vport, struct idpf_vport_max_q *max_q)
 	struct idpf_adapter *adapter = vport->adapter;
 	struct virtchnl2_create_vport *vport_msg;
 	struct idpf_vport_config *vport_config;
-	u16 tx_itr[] = {2, 8, 64, 128, 256};
-	u16 rx_itr[] = {2, 8, 32, 96, 128};
+	static const u16 tx_itr[] = {2, 8, 64, 128, 256};
+	static const u16 rx_itr[] = {2, 8, 32, 96, 128};
 	struct idpf_rss_data *rss_data;
 	u16 idx = vport->idx;
 
-- 
2.39.2

