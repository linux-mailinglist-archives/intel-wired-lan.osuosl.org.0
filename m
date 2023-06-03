Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DFE0F722AF2
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jun 2023 17:25:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7C9DA82201;
	Mon,  5 Jun 2023 15:25:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7C9DA82201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685978740;
	bh=ejcqg93iP0xzYOe5BKvPrTXJgL6Dk+D3W3Kr80H4ROM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=EONlxgqv6NVaLwhYN4ooz2NqH3oqHQiAPpJ3wzUaH1scC4pj0bZeHbAqIh5Bw0Ihe
	 jQ2ExM+uu2akkl3rR6vTyMxYacp9jkYGFL0uXEKSdaucJ65qk0WemcZANKn4gxWAMQ
	 kxcCRdidfUrX4INYt18MTA9YofpvUj2yLG9RW+YUYcYmOU/+3+ZZ6oIjsW/+5rj2U0
	 m/AmQEONmQQu1Ey+l9dwiIZYfPZosz6iuzUpBlGbpItRXaSIqpi6PSo2Xoc/0ao7YQ
	 ib1XXt1KBXEobyHg9qEmBH2D2Miz9TXa8kQbUFOvkhruRIXTHGxZVHkNoA12GnLC8A
	 Xq6H7OjWmRyxQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1MLiYgdsBhRs; Mon,  5 Jun 2023 15:25:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7E884821E3;
	Mon,  5 Jun 2023 15:25:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7E884821E3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 536921BF844
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Jun 2023 06:15:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 37EBA84455
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Jun 2023 06:15:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 37EBA84455
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iqTIiiRj4m4N for <intel-wired-lan@lists.osuosl.org>;
 Sat,  3 Jun 2023 06:15:23 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D53848444D
Received: from mail-ot1-x331.google.com (mail-ot1-x331.google.com
 [IPv6:2607:f8b0:4864:20::331])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D53848444D
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Jun 2023 06:15:22 +0000 (UTC)
Received: by mail-ot1-x331.google.com with SMTP id
 46e09a7af769-6b0d38ce700so2389557a34.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 02 Jun 2023 23:15:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685772921; x=1688364921;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=MZrI9TbuoVdHIiD8cCaZq0GgoyqWTjbg/ktqZ2YIeUU=;
 b=S1Sv36o1MhUHgMHWpomC2rsccT5RPRSq1taX7hg/JzATf4ECPZ+8SMQE4I8u7sECZC
 kYs+nHhuoDMFfrwjIcxhIoaDzNqWqKzRDDbnCx3MqZxG+GTOFMeGqsyv3hPdr7aUlme0
 dQ5GE0R/a648hrIUM/F0Lb5RF/amaSYjfcXb4xzxOpleBPQWF/1eA33l0V2vSpJDZB2c
 WUEkibYwfHDgEt9YPIBvGEB74Jg+o7upHmhsNgPICD9GOhQIkSuA3+Iw+ij9p6IVOCre
 Hn4/RTpLzc+fAmvx62xbjU2enJka/uNyHqPLnRKUo2897HO6VnnmT71FFR7Y6wI2aErz
 e5zg==
X-Gm-Message-State: AC+VfDy7J87VT6fQWRPSN2L7zmMYcsF00N40YsP+GsHttER4oj4YASgv
 cOKC5bnxbiuTTPc5SjayGRs2E1fNgaS6330XvFY=
X-Google-Smtp-Source: ACHHUZ74zEbsNKKP4xKIm2LFaB/KFQVd6ABiuNjHfZARCoKDFNTX021s+F9BjsIMk57o5ad2BeyNSA==
X-Received: by 2002:a05:6808:185:b0:398:596d:69da with SMTP id
 w5-20020a056808018500b00398596d69damr2194675oic.22.1685772921561; 
 Fri, 02 Jun 2023 23:15:21 -0700 (PDT)
Received: from arista-Idaville.sjc.aristanetworks.com ([74.123.28.16])
 by smtp.googlemail.com with ESMTPSA id
 20-20020a17090a1a1400b0025289bc1ce4sm2392319pjk.17.2023.06.02.23.15.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 02 Jun 2023 23:15:21 -0700 (PDT)
From: Prasad Koya <prasad@arista.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  2 Jun 2023 23:15:06 -0700
Message-Id: <20230603061506.4211-1-prasad@arista.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 05 Jun 2023 15:25:30 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=google; t=1685772921; x=1688364921;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=MZrI9TbuoVdHIiD8cCaZq0GgoyqWTjbg/ktqZ2YIeUU=;
 b=SG1Jx/70iiY2BSQLxeCKj+INY0hUAjjg5Z66KR0pFVLZxwbE/Y6ZlwxiIsc8jP7mPb
 YnPRrp5BgW84d4VJ4ZDeQccgJLIXXHGz9fblGwrIjv5m5qAgex+rNnOT0Jaah2Qww3nS
 a8X9ysqwFExbAh8Qx1mPov8XbTa4Y1xN8CpEJDZ59/iYTGMIVWmMmjra8fEQMuBHFNm7
 g0gn4gq0/DmwJ1fRe7CSBHqFN4ugJ8nwwc09EKuyeL0+ktk9K84TSbz3upyqncDecvF3
 BTtiRJitfdVdWwoxTA5DWeDmzfijShJy/thUUN+qJVSmQeUXJxoA0mUhk8wQKVDZT5TL
 6iDA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=arista.com header.i=@arista.com
 header.a=rsa-sha256 header.s=google header.b=SG1Jx/70
Subject: [Intel-wired-lan] [PATCH] intel-wired-lan: igc: set TP bit in
 'supported' and 'advertising' fields of ethtool_link_ksettings
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
Cc: Devora Fuxbrumer <devora.fuxbrumer@intel.com>,
 Salam Noureddine <noureddine@arista.com>,
 Anthony L Nguyen <anthony.l.nguyen@intel.com>,
 Bob Gilligan <gilligan@arista.com>, Dima Ruinskiy <dima.ruinskiy@intel.com>,
 Amir Avivi <amir.avivi@intel.com>, Prasad Koya <prasad@arista.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

set TP bit in the 'supported' and 'advertising' fields. I226 only supports twisted pair copper.

Signed-off-by: Prasad Koya <prasad@arista.com>
---
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 8cc077b712ad..511fc3f41208 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -1707,6 +1707,8 @@ static int igc_ethtool_get_link_ksettings(struct net_device *netdev,
 	/* twisted pair */
 	cmd->base.port = PORT_TP;
 	cmd->base.phy_address = hw->phy.addr;
+	ethtool_link_ksettings_add_link_mode(cmd, supported, TP);
+	ethtool_link_ksettings_add_link_mode(cmd, advertising, TP);
 
 	/* advertising link modes */
 	if (hw->phy.autoneg_advertised & ADVERTISE_10_HALF)
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
