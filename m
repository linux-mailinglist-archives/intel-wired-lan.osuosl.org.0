Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AA96388FCC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 May 2021 16:05:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1AE7B84323;
	Wed, 19 May 2021 14:05:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q_ExiSJb5hIS; Wed, 19 May 2021 14:05:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1F86D83BFB;
	Wed, 19 May 2021 14:05:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D2FEF1BF2B8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 May 2021 06:17:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8BB1640E51
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 May 2021 06:17:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tj8PXwUTZ9ZA for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 May 2021 06:17:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from szxga07-in.huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5BEA940E66
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 May 2021 06:17:45 +0000 (UTC)
Received: from dggems703-chm.china.huawei.com (unknown [172.30.72.59])
 by szxga07-in.huawei.com (SkyGuard) with ESMTP id 4FlMzM6gFpzCtWc;
 Wed, 19 May 2021 14:14:55 +0800 (CST)
Received: from dggemi759-chm.china.huawei.com (10.1.198.145) by
 dggems703-chm.china.huawei.com (10.3.19.180) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.1.2176.2; Wed, 19 May 2021 14:17:42 +0800
Received: from localhost.localdomain (10.67.165.24) by
 dggemi759-chm.china.huawei.com (10.1.198.145) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2176.2; Wed, 19 May 2021 14:17:42 +0800
From: Guangbin Huang <huangguangbin2@huawei.com>
To: <davem@davemloft.net>, <kuba@kernel.org>, <jesse.brandeburg@intel.com>,
 <anthony.l.nguyen@intel.com>
Date: Wed, 19 May 2021 14:14:45 +0800
Message-ID: <1621404885-20075-6-git-send-email-huangguangbin2@huawei.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1621404885-20075-1-git-send-email-huangguangbin2@huawei.com>
References: <1621404885-20075-1-git-send-email-huangguangbin2@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.67.165.24]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 dggemi759-chm.china.huawei.com (10.1.198.145)
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Wed, 19 May 2021 14:05:05 +0000
Subject: [Intel-wired-lan] [PATCH net-next 5/5] net: e1000e: fix misspell
 word "retreived"
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
 tanhuazhong@huawei.com, intel-wired-lan@lists.osuosl.org, lipeng321@huawei.com,
 huangguangbin2@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Hao Chen <chenhao288@hisilicon.com>

There is a misspell word "retreived" in comment, so fix it to "retrieved".

Signed-off-by: Hao Chen <chenhao288@hisilicon.com>
Signed-off-by: Guangbin Huang <huangguangbin2@huawei.com>
---
 drivers/net/ethernet/intel/e1000e/phy.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e1000e/phy.c b/drivers/net/ethernet/intel/e1000e/phy.c
index 1db35b2c7750..0f0efee5fc8e 100644
--- a/drivers/net/ethernet/intel/e1000e/phy.c
+++ b/drivers/net/ethernet/intel/e1000e/phy.c
@@ -2978,7 +2978,7 @@ static u32 e1000_get_phy_addr_for_hv_page(u32 page)
  *  @data: pointer to the data to be read or written
  *  @read: determines if operation is read or write
  *
- *  Reads the PHY register at offset and stores the retreived information
+ *  Reads the PHY register at offset and stores the retrieved information
  *  in data.  Assumes semaphore already acquired.  Note that the procedure
  *  to access these regs uses the address port and data port to read/write.
  *  These accesses done with PHY address 2 and without using pages.
-- 
2.8.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
