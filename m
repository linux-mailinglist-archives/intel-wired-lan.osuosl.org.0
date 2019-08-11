Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 12B628A18E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Aug 2019 16:52:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BC2AB203CA;
	Mon, 12 Aug 2019 14:52:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X3lA0K5sfwUf; Mon, 12 Aug 2019 14:52:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 46DBD214E6;
	Mon, 12 Aug 2019 14:52:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9160D1BF322
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Aug 2019 20:07:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8A824203B3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Aug 2019 20:07:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sL5ci6qNStQI for <intel-wired-lan@lists.osuosl.org>;
 Sun, 11 Aug 2019 20:07:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-yw1-f67.google.com (mail-yw1-f67.google.com
 [209.85.161.67])
 by silver.osuosl.org (Postfix) with ESMTPS id C4EB420130
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Aug 2019 20:07:55 +0000 (UTC)
Received: by mail-yw1-f67.google.com with SMTP id z63so38057716ywz.9
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Aug 2019 13:07:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=I/wDFVoI+mYQ74OtLuR5i4v0k0nbe35K0FGp9EAyx0w=;
 b=pIXlDgVcOEm/EIgI/2RsUPv++Y6y5rpBhX8wvg64pEbHHu/o9/bzbLKX5cF/QI7um5
 iD8Kfq6ZQ1vep/VD7KldkfcOQY+deSy0lleliv8eFV+jUr606VXykf5oLf8pWW+iSe7v
 ZZkacw8hs4DocrcMyNXXKXJsJqU62Eojj4dRqSA4RShXo6kJ3LmNu/X04Ci25MyNJToM
 lMHSr7+mjfTqSfJ2bNZtRit7rhmVYmeEdF2KQesjtAtQyXh3I8IyOZwOZr1/ECqFGK/M
 JuVnxG5oJlv/hlWil6jkTfcpOnSeePFmHmIAMDWyamWKOI1VVyUl5gamyloQtBA7/FZN
 Lowg==
X-Gm-Message-State: APjAAAWKXKyogSjXwpFla2/oWbDOcT1vN9s/GRnej4chADh1OJjXNUiA
 pgNQYMUBMGn8gpxlui2Zjk8=
X-Google-Smtp-Source: APXvYqyoSDYPWu4RUOvnDARGMo8pOuQZ3RGQOV1HGXtNwNsBcsmUEeugZgXKGibzzlthU+3xSqElvw==
X-Received: by 2002:a0d:f0c7:: with SMTP id z190mr2409714ywe.317.1565554074798; 
 Sun, 11 Aug 2019 13:07:54 -0700 (PDT)
Received: from localhost.localdomain (24-158-240-219.dhcp.smyr.ga.charter.com.
 [24.158.240.219])
 by smtp.gmail.com with ESMTPSA id x138sm23418950ywg.4.2019.08.11.13.07.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 11 Aug 2019 13:07:54 -0700 (PDT)
From: Wenwen Wang <wenwen@cs.uga.edu>
To: Wenwen Wang <wenwen@cs.uga.edu>
Date: Sun, 11 Aug 2019 15:07:47 -0500
Message-Id: <1565554067-4994-1-git-send-email-wenwen@cs.uga.edu>
X-Mailer: git-send-email 2.7.4
X-Mailman-Approved-At: Mon, 12 Aug 2019 14:52:11 +0000
Subject: [Intel-wired-lan] [PATCH] net: ixgbe: fix memory leaks
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
Cc: "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 open list <linux-kernel@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In ixgbe_configure_clsu32(), 'jump', 'input', and 'mask' are allocated
through kzalloc() respectively in a for loop body. Then,
ixgbe_clsu32_build_input() is invoked to build the input. If this process
fails, next iteration of the for loop will be executed. However, the
allocated 'jump', 'input', and 'mask' are not deallocated on this execution
path, leading to memory leaks.

Signed-off-by: Wenwen Wang <wenwen@cs.uga.edu>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index cbaf712..6b7ea87 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -9490,6 +9490,10 @@ static int ixgbe_configure_clsu32(struct ixgbe_adapter *adapter,
 				jump->mat = nexthdr[i].jump;
 				adapter->jump_tables[link_uhtid] = jump;
 				break;
+			} else {
+				kfree(mask);
+				kfree(input);
+				kfree(jump);
 			}
 		}
 		return 0;
-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
