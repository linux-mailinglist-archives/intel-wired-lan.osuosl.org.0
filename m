Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BBB8431C96
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Oct 2021 15:41:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A224D405DB;
	Mon, 18 Oct 2021 13:41:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MZyN0Wpj08Qs; Mon, 18 Oct 2021 13:41:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A8550405CE;
	Mon, 18 Oct 2021 13:41:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 388BE1BF2F6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Oct 2021 08:53:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 24FFD401E5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Oct 2021 08:53:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w6RMjNhP1az8 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Oct 2021 08:53:11 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com
 [IPv6:2607:f8b0:4864:20::62e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9C5C040119
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Oct 2021 08:53:11 +0000 (UTC)
Received: by mail-pl1-x62e.google.com with SMTP id y1so10723144plk.10
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Oct 2021 01:53:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cPf45+NYCUPDMuwaEZJIrIqOd+hU213p3bQGW7tfWgI=;
 b=DnsZxBko6KRjJ4qGpDxe8AP1yryGfAXgP6xKgu6PLG7A02Jb+/sOnSqUxr8GTnmshO
 n/n59LMDH/YN18qifJmzZGRyTV1WZaeAZXGyhtf0AQp+9vIvDpifzjefoxUliowHpsdQ
 WL8wEW6S21bLFwomSeIHoMR/ctnfolRHwSNeDelI0dtzJpAEABV9sKxbn9tTKLeE3QEI
 FnJ02ADce3cXxlcc+O+1yIkcNpBRsSbLvt7POOvqw4MLmjJjVbnadoJJ6aFjXHEdn3GV
 Avz8sZA8Jmus7Q3lOa3EqsGjZR3TToHjzANH2hjjPpA+vfcUvlM2w8VGJk465cDrQVX0
 g5Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cPf45+NYCUPDMuwaEZJIrIqOd+hU213p3bQGW7tfWgI=;
 b=X48JuAi5Ne68TUPZMB3Z6uIxHYTpipwdUAocgLuNPhR6hm0ax3HdHdQlmmShwXAVuG
 WeBDnajKMB8UadMdI4msUUJlaWCoTYiEALedeJtb0zor0GS7LwlGet8VmuamVniONt15
 3TSG8g2P4cqUBSMQ4ip4gd0N2lgyVlvjIo8QDGYbrkOocIlvrmNd8WUqbhfiBHJJxJz/
 0KThaxC937YTrovJivdTb1YJfesZdO/qwlLsgWI2pLiz6f7aQxbp3QPOHO3OOp3N+H6J
 82XE6BCXMYUQV81RmuiVsO6rh54jZTTt2rlhVR66ohZdJxWoMqujSV4w0EH1pL/nHK/M
 WR7g==
X-Gm-Message-State: AOAM533L3tZlQMOkzlZTr1YcwoGNALol6HnQQvwIW1pK91kR6GmWCzxo
 zYHOW2rTi6y2D61yd2jTHFM=
X-Google-Smtp-Source: ABdhPJzmi8zYbKJrqmC2j9SNW+6i+RPB91H/iwhaR57kHmLYRD8vjG77lr18TDTbS2PmxK49IwNONw==
X-Received: by 2002:a17:902:778a:b0:13f:672c:103a with SMTP id
 o10-20020a170902778a00b0013f672c103amr26408547pll.55.1634547191078; 
 Mon, 18 Oct 2021 01:53:11 -0700 (PDT)
Received: from localhost.localdomain ([193.203.214.57])
 by smtp.gmail.com with ESMTPSA id u24sm12084921pfm.85.2021.10.18.01.53.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Oct 2021 01:53:10 -0700 (PDT)
From: luo penghao <cgel.zte@gmail.com>
X-Google-Original-From: luo penghao <luo.penghao@zte.com.cn>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Date: Mon, 18 Oct 2021 08:53:05 +0000
Message-Id: <20211018085305.853996-1-luo.penghao@zte.com.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 18 Oct 2021 13:41:44 +0000
Subject: [Intel-wired-lan] [PATCH linux-next] e1000: Remove redundant
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

This statement is redundant in the context, because there will be
an identical statement next. otherwise, the variable initialization
is actually unnecessary.

The clang_analyzer complains as follows:

drivers/net/ethernet/intel/e1000/e1000_ethtool.c:1218:2 warning:

Value stored to 'ctrl_reg' is never read.

Reported-by: Zeal Robot <zealci@zte.com.cn>
Signed-off-by: luo penghao <luo.penghao@zte.com.cn>
---
 drivers/net/ethernet/intel/e1000/e1000_ethtool.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000/e1000_ethtool.c b/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
index 0a57172..8951f2a 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
@@ -1215,8 +1215,6 @@ static int e1000_integrated_phy_loopback(struct e1000_adapter *adapter)
 		e1000_write_phy_reg(hw, PHY_CTRL, 0x8140);
 	}
 
-	ctrl_reg = er32(CTRL);
-
 	/* force 1000, set loopback */
 	e1000_write_phy_reg(hw, PHY_CTRL, 0x4140);
 
-- 
2.15.2


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
