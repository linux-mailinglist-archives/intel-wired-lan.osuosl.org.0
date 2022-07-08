Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 45CCD56BB13
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Jul 2022 15:44:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 77B368477B;
	Fri,  8 Jul 2022 13:44:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 77B368477B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657287846;
	bh=3FUmB9Z0HfQb7SmZI96ZXilZx0MzvHiGTS4+ifY3eJ4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=9k4treBoNQsVpjHOmPlcXfZ+tthyQmOUrQzPQD5end2d47awuyo8+l8IJOqHocfX9
	 E7m9mwxnMNxLamzymzyWJ3N1UJX586eT/DfQeWutcnNiJyJb2+DXSmj519wARwNPkw
	 N09xAKL4cfY3R4fAzMrUTnkiG3nDLcPzwkZTiJf6brCIiknyJLOxkHYEFJuSxYzZnN
	 vo/Bb3+aAKcT8mJ7kE+rNClohzg9JICGTKjvlZlYsUN659R2hrHSrzEYCI9DoUnyzk
	 HkkIEffj3DIDI7e27qNwmuF6lZjjax0Da7LUKw3s3Y0lH1j0ajcxlbVgVWoqvH/EQf
	 1dn0JgcM0s9Yw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s94qGqzWKKgW; Fri,  8 Jul 2022 13:44:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 78AFB8402A;
	Fri,  8 Jul 2022 13:44:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 78AFB8402A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 207D21BF379
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Jul 2022 03:53:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EEC874010C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Jul 2022 03:53:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EEC874010C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oIiL3HUtMb41 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Jul 2022 03:53:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2B79C400EA
Received: from m12-13.163.com (m12-13.163.com [220.181.12.13])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2B79C400EA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Jul 2022 03:53:41 +0000 (UTC)
Received: from bf-rmsz-11.ccdomain.com (unknown [218.17.89.92])
 by smtp9 (Coremail) with SMTP id DcCowAAXVuvgqcdiOwytNw--.46411S2;
 Fri, 08 Jul 2022 11:52:01 +0800 (CST)
From: Zhongjun Tan <hbut_tan@163.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, intel-wired-lan@lists.osuosl.org
Date: Fri,  8 Jul 2022 11:51:54 +0800
Message-Id: <20220708035154.44079-1-hbut_tan@163.com>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
X-CM-TRANSID: DcCowAAXVuvgqcdiOwytNw--.46411S2
X-Coremail-Antispam: 1Uf129KBjvdXoW7JFWkCr4Uur4UKF4ftr1DZFb_yoWfZFX_Kr
 Wjqr4xCan8JF1SvryUtrW29a4j9rWqywn7uF9Fk39Fy343Xw1UCr1DZw1fAr4Y9ry5GF9r
 Z3ZxJryxt34jyjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
 9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IUnqjg3UUUUU==
X-Originating-IP: [218.17.89.92]
X-CM-SenderInfo: xkex3sxwdqqiywtou0bp/xtbBlwI4xmI0WBtgogAAs8
X-Mailman-Approved-At: Fri, 08 Jul 2022 13:44:00 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=163.com; 
 s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=82Uye
 dPEauwT5cf5wHBTyobSyIimwqIK7UX1yZj1hqg=; b=LIoF5qwkAQXiMqjp4eEWR
 CVtdg68cKtOEcacBOjYEKmoZiCoPHUhfz6lKe9BE8JzABD69AUudrB0Xyf/DpWG+
 uq7Ku1Jm4TAI0E9FIMKI45rWHxPixXtNseFr61fn9wg7izaC+wvHdXFqSGg8hEdk
 eqALjah1eTDNs/MdoEyL68=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=163.com header.i=@163.com
 header.a=rsa-sha256 header.s=s110527 header.b=LIoF5qwk
Subject: [Intel-wired-lan] [PATCH] iavf: Remove condition with no effect
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
 Zhongjun Tan <tanzhongjun@coolpad.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Zhongjun Tan <tanzhongjun@coolpad.com>

Remove condition with no effect

Signed-off-by: Zhongjun Tan <tanzhongjun@coolpad.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 69ade653f5d4..52b622ea7d6b 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -2136,8 +2136,6 @@ iavf_set_vlan_offload_features(struct iavf_adapter *adapter,
 		vlan_ethertype = ETH_P_8021Q;
 	else if (prev_features & (NETIF_F_HW_VLAN_STAG_RX | NETIF_F_HW_VLAN_STAG_TX))
 		vlan_ethertype = ETH_P_8021AD;
-	else if (prev_features & (NETIF_F_HW_VLAN_CTAG_RX | NETIF_F_HW_VLAN_CTAG_TX))
-		vlan_ethertype = ETH_P_8021Q;
 	else
 		vlan_ethertype = ETH_P_8021Q;
 
-- 
2.29.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
