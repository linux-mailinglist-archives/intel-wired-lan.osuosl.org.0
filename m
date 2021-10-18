Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CE3B1431C90
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Oct 2021 15:41:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 60C86405F2;
	Mon, 18 Oct 2021 13:41:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TDDrvM938DiA; Mon, 18 Oct 2021 13:41:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 76D20405F1;
	Mon, 18 Oct 2021 13:41:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E2E681BF2F6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Oct 2021 08:52:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CF7D8401E5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Oct 2021 08:52:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FUhpLQL_5f0H for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Oct 2021 08:52:13 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com
 [IPv6:2607:f8b0:4864:20::536])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B17AD40119
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Oct 2021 08:52:13 +0000 (UTC)
Received: by mail-pg1-x536.google.com with SMTP id f5so15397565pgc.12
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Oct 2021 01:52:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=aX1q/AvHGc/Ra4hlspkIptp953jBTj0mEFehIhWjIL0=;
 b=mv95BUttY3Twdp8VdBJeJahB8S4PuvrKVHCyt4C9mk3dbVx3vIWWGpGIRA+6vOUWYe
 32G8gtooP1UZQFemNm+NPC/BAGUED96odO+GE8uSz7loWSNYCqQgcQPK51+zhCbqmIR7
 Qunj2Nu5AMJ31868ndoUit1HS+SnAqAVWnxf8o9Gzz1AvvnVqTFM6wfssEiVvLeQGd3j
 R8b6OSnfo9TSa328tGUv9b7UhB79mkT0O26BkZeFhj8mN//pxoBVTJxXG908z8uBEn6I
 mU1rjdevv8oHajf/Rw+kVhCbduPHcGj1zJ8wdusrIYGPugLZlZjdCveR9T2AzJ2ole5v
 3AWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=aX1q/AvHGc/Ra4hlspkIptp953jBTj0mEFehIhWjIL0=;
 b=zORguYtRsProkPetvklFNabLjNwmLdbLYEq3mV7HtSsEUy3rpMaICHmjhHwFZDVuL7
 994hc4J6vQyGFhK3tzui05r6riHwUp4VSTISuKekAUSZICX1ull5PU6G5RofIsk/l2eZ
 5EEhFApQbLjZ18oGqjQ4yRo84rQ6UB0vxp00OuLOfUaRGQoLkQ6JqlPujiIHRgRIBvYR
 eMfbT94FLg6yO17i9WyC4dhg2RHay2KtuzWflPBsiygfGOYBZbhCEs1SNg7V5WcOYaeu
 uywZg1teVPl8wwbdVNoV79Q/6qUocwutC5ALL7yvn2wbuwzAhGqK0difd1YLk1sKSiu9
 INhQ==
X-Gm-Message-State: AOAM533Ww1cWglTxvZJLhZRuZVXZdhB/lgwTPey/ONRRdK+c/KYFnfoG
 fpruh0xHbbDV71eYH/5Zjnk=
X-Google-Smtp-Source: ABdhPJyhQ7NMuZyr34/zlZTEzOCiI+/4eJIRggsI208CsRGSQnd1yr99LMHGCLzpTEjcjRT2pgUNPA==
X-Received: by 2002:a63:955b:: with SMTP id t27mr14014269pgn.391.1634547133191; 
 Mon, 18 Oct 2021 01:52:13 -0700 (PDT)
Received: from localhost.localdomain ([193.203.214.57])
 by smtp.gmail.com with ESMTPSA id h4sm12173838pgn.6.2021.10.18.01.52.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Oct 2021 01:52:12 -0700 (PDT)
From: luo penghao <cgel.zte@gmail.com>
X-Google-Original-From: luo penghao <luo.penghao@zte.com.cn>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Date: Mon, 18 Oct 2021 08:51:54 +0000
Message-Id: <20211018085154.853744-1-luo.penghao@zte.com.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 18 Oct 2021 13:41:44 +0000
Subject: [Intel-wired-lan] [PATCH linux-next] e1000e: Remove redundant
 statement
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
Cc: netdev@vger.kernel.org, Zeal Robot <zealci@zte.com.cn>,
 linux-kernel@vger.kernel.org, luo penghao <luo.penghao@zte.com.cn>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This assignment statement is meaningless, because the statement
will execute to the tag "set_itr_now".

The clang_analyzer complains as follows:

drivers/net/ethernet/intel/e1000e/netdev.c:2552:3 warning:

Value stored to 'current_itr' is never read.

Reported-by: Zeal Robot <zealci@zte.com.cn>
Signed-off-by: luo penghao <luo.penghao@zte.com.cn>
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index ff8672a..21ec716 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -2549,7 +2549,6 @@ static void e1000_set_itr(struct e1000_adapter *adapter)
 
 	/* for non-gigabit speeds, just fix the interrupt rate at 4000 */
 	if (adapter->link_speed != SPEED_1000) {
-		current_itr = 0;
 		new_itr = 4000;
 		goto set_itr_now;
 	}
-- 
2.15.2


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
