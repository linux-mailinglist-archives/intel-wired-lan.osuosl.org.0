Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 84AE5261232
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Sep 2020 15:53:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1A00B86A25;
	Tue,  8 Sep 2020 13:53:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AsqOZXIB7wVz; Tue,  8 Sep 2020 13:53:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 37070869F1;
	Tue,  8 Sep 2020 13:53:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5A7D31BF330
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Sep 2020 12:35:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 49A5B8727D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Sep 2020 12:35:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6yHp9DoBrk1A for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Sep 2020 12:35:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6B50E82097
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Sep 2020 12:35:30 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id u4so18904135ljd.10
 for <intel-wired-lan@lists.osuosl.org>; Tue, 08 Sep 2020 05:35:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FJG3RPIP22/4fnZGUTOwicNC/qGcsSinndMdsuerY6w=;
 b=u0sN0GRZn8/7EWQyZ2PkgN39PQZF0Wz7tM3T0nduaEa9i4FfDqSI1VnSXAi30Fl+Qa
 6l3C/Kb6tRrggjHAElj/oRmI/4z6xY+LsLTlCSGDKNmmEbGhtoeSUcnKc0zxsrEQge99
 R4K6WnknVsR/Qf0ary005SdteXXDqCSdnmTBKjuozq13xmXQ65MgC7dOM9v/vfJrgHmt
 a4JuGA7t4cnoI5Zs5fIZkCpeI1g8op76rCsp3e7/Ke/l0084AhOGEoYxbbgjjqUGsJe+
 CAmT8fZgm7ZktuYbreeEVvZ658JGhF82PIO5U7e9svs6/0e6FwKztncH/hgaJ71tt//s
 dJtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FJG3RPIP22/4fnZGUTOwicNC/qGcsSinndMdsuerY6w=;
 b=LJm6M8g3j3J5lan3+mDWWzE9oNCWJL1ptv9eO5m6gbSzInjQ2K0kwgqBDPETGspZ3W
 dMJamJZXKvs4xBP9J0zylc1lm4erW4lTHO4XOuG+/ChH0EGAAbeyLRaMDN4wBldLgTvd
 n5XAnw/3Bdvn0yl/fwM7kEpPLf6gno/fJ9OEPlPpMYrBMNO9lW02IXEyVhwmEgYbGEQu
 nkXAtPlUhPOgF6BIWQvASZTTWkYlEvIpDWoXtPJptr4cHIejnFr7nRc6oq0KFsNa6nu0
 TcWVkJ/s5safM2cgHb4uY3L4EuW3JbOCur1P6IxXN6nqsqcteVvk3URqSTFn6OH3AYT8
 TZjA==
X-Gm-Message-State: AOAM530wqKrgWxkIyzSt9Vq9cE2S7Z0HzGOb8OvTkxCcoXUP1KOiONV5
 pbGHfG0PWYQgG6QqCTs/E8M=
X-Google-Smtp-Source: ABdhPJwdjeDEwO1KNZEqt59uK3srFnagNPAeYLrZHCwjP9TaMVhOtr7RRjMZhcHyHLGEQoSaDNRRbA==
X-Received: by 2002:a2e:b5c5:: with SMTP id g5mr13360071ljn.319.1599568528382; 
 Tue, 08 Sep 2020 05:35:28 -0700 (PDT)
Received: from localhost.localdomain ([81.219.202.87])
 by smtp.gmail.com with ESMTPSA id 190sm10519186lfa.81.2020.09.08.05.35.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Sep 2020 05:35:27 -0700 (PDT)
From: Marek Majtyka <alardam@gmail.com>
X-Google-Original-From: Marek Majtyka <marekx.majtyka@intel.com>
To: magnus.karlsson@intel.com, bjorn.topel@intel.com,
 intel-wired-lan@lists.osuosl.org, jeffrey.t.kirsher@intel.com
Date: Tue,  8 Sep 2020 14:34:40 +0200
Message-Id: <20200908123440.11278-1-marekx.majtyka@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 08 Sep 2020 13:53:55 +0000
Subject: [Intel-wired-lan] [PATCH net-next] i40e: remove redundant assigment
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
Cc: netdev@vger.kernel.org, maciej.fijalkowski@intel.com,
 Marek Majtyka <marekx.majtyka@intel.com>, maciejromanfijalkowski@gmain.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Remove a redundant assigment of the software ring pointer in the i40e
driver. The variable is assigned twice with no use in between, so just
get rid of the first occurrence.

Fixes: 3b4f0b66c2b3 ("i40e, xsk: Migrate to new MEM_TYPE_XSK_BUFF_POOL")
Signed-off-by: Marek Majtyka <marekx.majtyka@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_xsk.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
index 2a1153d8957b..8661f461f620 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
@@ -306,7 +306,6 @@ int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget)
 			continue;
 		}
 
-		bi = i40e_rx_bi(rx_ring, rx_ring->next_to_clean);
 		size = (qword & I40E_RXD_QW1_LENGTH_PBUF_MASK) >>
 		       I40E_RXD_QW1_LENGTH_PBUF_SHIFT;
 		if (!size)
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
