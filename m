Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 219B023477A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Jul 2020 16:11:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 601B52154A;
	Fri, 31 Jul 2020 14:11:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MyxHjnmaVp0f; Fri, 31 Jul 2020 14:11:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 80B0A204E2;
	Fri, 31 Jul 2020 14:11:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5C0D51BF846
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jul 2020 09:50:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 57B72885E8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jul 2020 09:50:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JI+navJmX9Pp for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Jul 2020 09:50:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DF83D8628A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jul 2020 09:50:12 +0000 (UTC)
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id B63862F8C1D4E834E11B;
 Fri, 31 Jul 2020 17:50:00 +0800 (CST)
Received: from huawei.com (10.174.28.241) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.487.0; Fri, 31 Jul 2020
 17:49:55 +0800
From: Bixuan Cui <cuibixuan@huawei.com>
To: <davem@davemloft.net>, <kuba@kernel.org>
Date: Fri, 31 Jul 2020 18:57:21 +0800
Message-ID: <20200731105721.18511-1-cuibixuan@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.174.28.241]
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Fri, 31 Jul 2020 14:11:44 +0000
Subject: [Intel-wired-lan] [PATCH -next] net: ice: Fix pointer cast warnings
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
Cc: netdev@vger.kernel.org, linux-next@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

pointers should be casted to unsigned long to avoid
-Wpointer-to-int-cast warnings:

drivers/net/ethernet/intel/ice/ice_flow.h:197:33: warning:
    cast from pointer to integer of different size

Signed-off-by: Bixuan Cui <cuibixuan@huawei.com>
---
 drivers/net/ethernet/intel/ice/ice_flow.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_flow.h b/drivers/net/ethernet/intel/ice/ice_flow.h
index 3913da2116d2..b9a5c208e484 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.h
+++ b/drivers/net/ethernet/intel/ice/ice_flow.h
@@ -194,7 +194,7 @@ struct ice_flow_entry {
 	u16 entry_sz;
 };

-#define ICE_FLOW_ENTRY_HNDL(e)	((u64)e)
+#define ICE_FLOW_ENTRY_HNDL(e)	((uintptr_t)e)
 #define ICE_FLOW_ENTRY_PTR(h)	((struct ice_flow_entry *)(h))

 struct ice_flow_prof {
--
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
