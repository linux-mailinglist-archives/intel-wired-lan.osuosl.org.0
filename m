Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D4CF2262F78
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Sep 2020 16:05:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5F9EE2E1DA;
	Wed,  9 Sep 2020 14:05:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iZZspKBAXyOb; Wed,  9 Sep 2020 14:05:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A59BE2E1C6;
	Wed,  9 Sep 2020 14:05:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8409F1BF5A3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Sep 2020 08:55:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7CD4486F97
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Sep 2020 08:55:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vLb91t1CqPs0 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Sep 2020 08:54:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 16BB886FA5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Sep 2020 08:54:58 +0000 (UTC)
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id CABAE1E26E649B123902;
 Wed,  9 Sep 2020 16:54:55 +0800 (CST)
Received: from localhost.localdomain (10.69.192.58) by
 DGGEMS411-HUB.china.huawei.com (10.3.19.211) with Microsoft SMTP Server id
 14.3.487.0; Wed, 9 Sep 2020 16:54:45 +0800
From: Wei Xu <xuwei5@hisilicon.com>
To: <netdev@vger.kernel.org>
Date: Wed, 9 Sep 2020 16:51:11 +0800
Message-ID: <1599641471-204919-1-git-send-email-xuwei5@hisilicon.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
X-Originating-IP: [10.69.192.58]
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Wed, 09 Sep 2020 14:05:07 +0000
Subject: [Intel-wired-lan] [net-next] net: iavf: Use the ARRAY_SIZE macro
 for aq_to_posix
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
Cc: salil.mehta@huawei.com, jinying@hisilicon.com, tangkunshan@huawei.com,
 huangdaode@hisilicon.com, john.garry@huawei.com, linux-kernel@vger.kernel.org,
 linuxarm@huawei.com, shameerali.kolothum.thodi@huawei.com,
 zhangyi.ac@huawei.com, intel-wired-lan@lists.osuosl.org, xuwei5@hisilicon.com,
 jonathan.cameron@huawei.com, Jakub Kicinski <kuba@kernel.org>,
 liguozhu@hisilicon.com, davem@davemloft.net, shiju.jose@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Use the ARRAY_SIZE macro to calculate the size of an array.
This code was detected with the help of Coccinelle.

Signed-off-by: Wei Xu <xuwei5@hisilicon.com>
---
 drivers/net/ethernet/intel/iavf/iavf_adminq.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_adminq.h b/drivers/net/ethernet/intel/iavf/iavf_adminq.h
index baf2fe2..eead12c 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_adminq.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_adminq.h
@@ -120,7 +120,7 @@ static inline int iavf_aq_rc_to_posix(int aq_ret, int aq_rc)
 	if (aq_ret == IAVF_ERR_ADMIN_QUEUE_TIMEOUT)
 		return -EAGAIN;
 
-	if (!((u32)aq_rc < (sizeof(aq_to_posix) / sizeof((aq_to_posix)[0]))))
+	if (!((u32)aq_rc < ARRAY_SIZE(aq_to_posix)))
 		return -ERANGE;
 
 	return aq_to_posix[aq_rc];
-- 
2.8.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
