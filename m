Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 11BCA388FCA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 May 2021 16:05:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A37A5606E5;
	Wed, 19 May 2021 14:05:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YFp7tabxOB8V; Wed, 19 May 2021 14:05:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A297560719;
	Wed, 19 May 2021 14:05:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 732841C1187
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 May 2021 06:17:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6072A6064E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 May 2021 06:17:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cuDHrd3wCf_s for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 May 2021 06:17:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from szxga06-in.huawei.com (szxga06-in.huawei.com [45.249.212.32])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 55D7D6064D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 May 2021 06:17:45 +0000 (UTC)
Received: from dggems701-chm.china.huawei.com (unknown [172.30.72.59])
 by szxga06-in.huawei.com (SkyGuard) with ESMTP id 4FlMzy0pGrzmXGZ;
 Wed, 19 May 2021 14:15:26 +0800 (CST)
Received: from dggemi759-chm.china.huawei.com (10.1.198.145) by
 dggems701-chm.china.huawei.com (10.3.19.178) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.1.2176.2; Wed, 19 May 2021 14:17:41 +0800
Received: from localhost.localdomain (10.67.165.24) by
 dggemi759-chm.china.huawei.com (10.1.198.145) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2176.2; Wed, 19 May 2021 14:17:41 +0800
From: Guangbin Huang <huangguangbin2@huawei.com>
To: <davem@davemloft.net>, <kuba@kernel.org>, <jesse.brandeburg@intel.com>,
 <anthony.l.nguyen@intel.com>
Date: Wed, 19 May 2021 14:14:43 +0800
Message-ID: <1621404885-20075-4-git-send-email-huangguangbin2@huawei.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1621404885-20075-1-git-send-email-huangguangbin2@huawei.com>
References: <1621404885-20075-1-git-send-email-huangguangbin2@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.67.165.24]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 dggemi759-chm.china.huawei.com (10.1.198.145)
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Wed, 19 May 2021 14:05:05 +0000
Subject: [Intel-wired-lan] [PATCH net-next 3/5] net: e1000e: remove repeated
 word "the" for ich8lan.c
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

There are double "the" in comment, so remove the redundant one.

Signed-off-by: Hao Chen <chenhao288@hisilicon.com>
Signed-off-by: Guangbin Huang <huangguangbin2@huawei.com>
---
 drivers/net/ethernet/intel/e1000e/ich8lan.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
index 590ad110d383..cf7b3887da1d 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -4639,7 +4639,7 @@ static s32 e1000_id_led_init_pchlan(struct e1000_hw *hw)
  *  @hw: pointer to the HW structure
  *
  *  ICH8 use the PCI Express bus, but does not contain a PCI Express Capability
- *  register, so the the bus width is hard coded.
+ *  register, so the bus width is hard coded.
  **/
 static s32 e1000_get_bus_info_ich8lan(struct e1000_hw *hw)
 {
-- 
2.8.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
