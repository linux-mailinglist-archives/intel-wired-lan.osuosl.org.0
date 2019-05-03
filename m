Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D621302A
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 May 2019 16:28:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 88C9D84526;
	Fri,  3 May 2019 14:28:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lCzz0VLrNS_s; Fri,  3 May 2019 14:28:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C615A844C7;
	Fri,  3 May 2019 14:28:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4C4BC1BF350
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 May 2019 14:28:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 47B6187A20
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 May 2019 14:28:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UM5-1itJ9kWy for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 May 2019 14:28:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C93FB8797D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 May 2019 14:28:34 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id w20so2797991plq.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 03 May 2019 07:28:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=kMGLnhggc8cifwRrjEK9HALOorMf0mLsznAzU3ByQJ4=;
 b=shNY8wGsdG7K1gn0sScFEu/UG87+cKxU8rBCXtb8tyo+rAKekJK+7uISp4XTWWgBA4
 mMR6f1lRqLExLgSCD47O08vLxUrzx+Aa7MtEwDM1fYTizYyGG991dxO+1rGubS8CeqGL
 fuH0M46aEiOtlQIEybjoTs34L1vO9NcvFKaJCb2f7xoKFeK2vROY6owPj1Y4VdRET597
 yXFSgXFQfIIaA0gouVJTOTy0z/eoMMxy5g+gNiK7bm0B/v3ylUmrwBMUtJZGJKxh2owY
 9r45sdCvSgKdqpkckoiMVZ/5UPCn26BqC/8kYXBAKiZXhrY+0dj4HX8W3Z4OJFLiRSYl
 +Mqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=kMGLnhggc8cifwRrjEK9HALOorMf0mLsznAzU3ByQJ4=;
 b=OoEWNZYNFSB3AYQF4ZGd7T57PayuXH+QbqM3q57AUJvUDBjicaO46mffgYQsKDElTQ
 B2m+P7RfMjUurd/0nnUZ51oXGmHqZJOOS2yBif1lB6UW0YOGd2ELxFi4d49l91scpM6G
 yoVKcnC4TsTFNYQT7XmhQ1p1jSGE7Tc/l0tfiMZPlaxdhnilTLnC7/r3Nm3eHkw0TTY7
 +3NjiVKHC+i8SkvpqAdDZldfY+0yVhtj7Dvx7C41k9v0wGwQoEHU2y97Z7J9f+JK5HkW
 gtGsfEBp5Q7eH9EPZZnymoXfxzYM8/IEWGKsjyg5NBEaKRIt/W4seKd3mpXDJ6VPeOv8
 T7tA==
X-Gm-Message-State: APjAAAUpc5H2WySXB7Xu02dXvRQ8Q0eWbbq1GNDsH0ogx5lrQ/AMMTWs
 d6pTDKjqJymtuxM37Lb4GMo=
X-Google-Smtp-Source: APXvYqzLw5RFP+moTLdaj7O6UqQIbnzuJQcywkHNCxDgZyn604CU0+GbY7CVtCWF8KqN+EQLh/fuSQ==
X-Received: by 2002:a17:902:8c81:: with SMTP id
 t1mr2372272plo.333.1556893714461; 
 Fri, 03 May 2019 07:28:34 -0700 (PDT)
Received: from oslab.tsinghua.edu.cn ([2402:f000:4:72:808::3ca])
 by smtp.gmail.com with ESMTPSA id s19sm2789351pgj.62.2019.05.03.07.28.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 May 2019 07:28:33 -0700 (PDT)
From: Jia-Ju Bai <baijiaju1990@gmail.com>
To: jeffrey.t.kirsher@intel.com,
	davem@davemloft.net
Date: Fri,  3 May 2019 22:28:23 +0800
Message-Id: <20190503142823.15319-1-baijiaju1990@gmail.com>
X-Mailer: git-send-email 2.17.0
Subject: [Intel-wired-lan] [PATCH] net: e1000: Fix some bugs in error
 handling code of e1000_probe()
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
Cc: netdev@vger.kernel.org, Jia-Ju Bai <baijiaju1990@gmail.com>,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When "hw->ce4100_gbe_mdio_base_virt = ioremap(...)" fails, the driver
does not free the memory allocated in e1000_sw_init(), and also calls
"iounmap(hw->ce4100_gbe_mido_base_virt)" that is unnecessary.

Besides, when e1000_sw_init() fails, the driver also calls 
"iounmap(hw->ce4100_gbe_mido_base_virt)" but 
hw->ce4100_gbe_mido_base_virt has not been assigned.

These bugs are found by a runtime fuzzing tool named FIZZER written by us.

To fix these bugs, the error handling code of e1000_probe() is adjusted.

Signed-off-by: Jia-Ju Bai <baijiaju1990@gmail.com>
---
 drivers/net/ethernet/intel/e1000/e1000_main.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000/e1000_main.c b/drivers/net/ethernet/intel/e1000/e1000_main.c
index 8fe9af0e2ab7..7743c4d9723f 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_main.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_main.c
@@ -1227,12 +1227,12 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	if (hw->flash_address)
 		iounmap(hw->flash_address);
+	iounmap(hw->ce4100_gbe_mdio_base_virt);
+err_mdio_ioremap:
 	kfree(adapter->tx_ring);
 	kfree(adapter->rx_ring);
-err_dma:
 err_sw_init:
-err_mdio_ioremap:
-	iounmap(hw->ce4100_gbe_mdio_base_virt);
+err_dma:
 	iounmap(hw->hw_addr);
 err_ioremap:
 	disable_dev = !test_and_set_bit(__E1000_DISABLED, &adapter->flags);
-- 
2.17.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
