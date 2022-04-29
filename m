Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1876C51710C
	for <lists+intel-wired-lan@lfdr.de>; Mon,  2 May 2022 15:57:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9DD5D40273;
	Mon,  2 May 2022 13:57:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H_sFzq_IG2PZ; Mon,  2 May 2022 13:57:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 622D740257;
	Mon,  2 May 2022 13:57:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C9ADD1BF28A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Apr 2022 23:56:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BF15781753
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Apr 2022 23:56:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=arista.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CcshaQLBwTIh for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Apr 2022 23:56:36 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-il1-x163.google.com (mail-il1-x163.google.com
 [IPv6:2607:f8b0:4864:20::163])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 133FA81454
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Apr 2022 23:56:35 +0000 (UTC)
Received: by mail-il1-x163.google.com with SMTP id r11so4957439ila.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Apr 2022 16:56:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:dkim-signature:from:to:cc:subject:date
 :message-id:content-transfer-encoding;
 bh=rhWp1AKBOyqcG3QjLO4nWaJXvvyqXsoLu/c9Xuqgxf4=;
 b=DDXeea3nJFUmkktUqQQGQYaL4Vb7bILUyRqRDccBhHIqNEoYUzPgv2u8kiYP5N7ogA
 ns9tRybs4PAqY3nZxxyiGZPPYMCJY8Ff+iubY6beyS+pWh5mqW9jCKNB4CL/vJNsh2vH
 Kfl/u6fwRQSBEy8KRierB0yUkV4DJhJNMVm6ub0cploW464GC0reZNhq4l4JCIzk3O2Z
 tHSiO6+WPoLu0seRy9oEJcHNHq9/dY4iTpRv9VqMTEB3N4FnlqZu0JHtOdwbBHWNAtDg
 0GdWbMPXXLgPpCIq1vAnZAdiDAOh2MCbX/5XGoFoHsoJyBVySYZ/mErBnLqo5nx8u6Oq
 S5/Q==
X-Gm-Message-State: AOAM531iVOqMQh1c9Dupq2/tZ17WSLWMa7wkXaTFL4YBzjsBHNIrUcF2
 WQO41cBbXWBmUueRZ6UH9jdbTFDcu7ErHdU4N0bFwX/igFIv
X-Google-Smtp-Source: ABdhPJxAayWgz3tZPEUuIHsUOIZfNThDXu/GbVfddf4sHIZaslnH/EGHTdkX1w8JoBMbbmcLLpl59JjhogjM
X-Received: by 2002:a05:6e02:1c45:b0:2cd:95dd:ae1a with SMTP id
 d5-20020a056e021c4500b002cd95ddae1amr701931ilg.100.1651276595115; 
 Fri, 29 Apr 2022 16:56:35 -0700 (PDT)
Received: from smtp.aristanetworks.com (smtp.aristanetworks.com.
 [54.193.82.35]) by smtp-relay.gmail.com with ESMTPS id
 a7-20020a056638164700b0032b3a7363f6sm235056jat.20.2022.04.29.16.56.34
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 29 Apr 2022 16:56:35 -0700 (PDT)
X-Relaying-Domain: arista.com
Received: from chmeee (unknown [10.95.70.41])
 by smtp.aristanetworks.com (Postfix) with ESMTPS id 2D1CA3045064;
 Fri, 29 Apr 2022 16:56:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arista.com;
 s=Arista-A; t=1651276594;
 bh=rhWp1AKBOyqcG3QjLO4nWaJXvvyqXsoLu/c9Xuqgxf4=;
 h=From:To:Cc:Subject:Date:From;
 b=o4iJMhSMeeqwukInPgtCBAav5GBwiKBq4YBQxSYpINNXybYE3dNsSH2nBiDWetj5Q
 9huzeLWStt2Yh/qUvoBEvZKegxKs8NzLoFnK0N27kAbq230EJ3QKCoNFR5HL77wCHc
 N7Oy74d3ymAVp8hSsgzY65yTWmK/dVbD3VMLbSpMz1fZPBVjvGN/k909n57ICGqDoq
 ijOYjejoCZ/vTeCkc144dWzX9biyOT4xC2OgnHwwdaxF11EQbjheUibmKZrf85eIyH
 mYflXpTndSTs7Da6KV8zhE8PPMmM3ab+jzTxpRRrfmfIx9a7LcMxKOqfoMIr1MWX0l
 yJsYIxYZXasAg==
Received: from kevmitch by chmeee with local (Exim 4.95)
 (envelope-from <kevmitch@chmeee>) id 1nkaTN-0003Sm-TX;
 Fri, 29 Apr 2022 16:56:29 -0700
From: Kevin Mitchell <kevmitch@arista.com>
To: 
Date: Fri, 29 Apr 2022 16:55:54 -0700
Message-Id: <20220429235554.13290-1-kevmitch@arista.com>
X-Mailman-Approved-At: Mon, 02 May 2022 13:57:17 +0000
Subject: [Intel-wired-lan] [PATCH] igb: skip phy status check where
 unavailable
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
Cc: kevmitch@arista.com, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, Takuma Ueba <t.ueba11@gmail.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

igb_read_phy_reg() will silently return, leaving phy_data untouched, if
hw->ops.read_reg isn't set. Depending on the uninitialized value of
phy_data, this led to the phy status check either succeeding immediately
or looping continuously for 2 seconds before emitting a noisy err-level
timeout. This message went out to the console even though there was no
actual problem.

Instead, first check if there is read_reg function pointer. If not,
proceed without trying to check the phy status register.

Fixes: b72f3f72005d ("igb: When GbE link up, wait for Remote receiver status condition")
Signed-off-by: Kevin Mitchell <kevmitch@arista.com>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 34b33b21e0dc..68be2976f539 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -5505,7 +5505,8 @@ static void igb_watchdog_task(struct work_struct *work)
 				break;
 			}
 
-			if (adapter->link_speed != SPEED_1000)
+			if (adapter->link_speed != SPEED_1000 ||
+			    !hw->phy.ops.read_reg)
 				goto no_wait;
 
 			/* wait for Remote receiver status OK */
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
