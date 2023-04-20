Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 925D86E8A30
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Apr 2023 08:12:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A0BED42128;
	Thu, 20 Apr 2023 06:12:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A0BED42128
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681971120;
	bh=2uMCh59K4j52B4ZH2TyyHavChlzIqTMdXV82Q7UrKcI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=MipVrAyJgl8mFvLK96wwMzGyM/f5JEf2Ljur3u6YMNyNl3/4Ih9/AOS7aglqJHWtb
	 S76v075IUzmdgW6UHN6fvOb9TqM2xpqYI1mBrkNcp8ouki+zkCnhWiBmsEFGTHWb38
	 F5IU30qukW0jY6MLYt5VCu58XfEio/NpEubF5e0FjRKkJcPjOI9gsIULw/gDq5aE+i
	 mch+RUv6MYxWHhpSiPuh3lVmegQ6IX1fBlmKqc/AZ2W8Z5/rBJIrrDWoZtne2C8f2n
	 g4bIhbTe/U3ZR+v184cm5sfYixOOi0pkNgQZvj+9CeOCrx3veY0VpaBtcRyj9eV55B
	 pi9/wieW1kb9A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5IilrWOKPBzm; Thu, 20 Apr 2023 06:11:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 570554210A;
	Thu, 20 Apr 2023 06:11:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 570554210A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5BC701BF4E5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 06:11:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3A6EF840A1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 06:11:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3A6EF840A1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rx54_NrPeUUG for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Apr 2023 06:11:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0FBD983FBB
Received: from mail-m11875.qiye.163.com (mail-m11875.qiye.163.com
 [115.236.118.75])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0FBD983FBB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 06:11:51 +0000 (UTC)
Received: from localhost.localdomain (unknown
 [IPV6:240e:3b7:327c:23f0:3094:ae0e:b1de:5bef])
 by mail-m11875.qiye.163.com (Hmail) with ESMTPA id 443D228045F;
 Thu, 20 Apr 2023 14:11:46 +0800 (CST)
From: Ding Hui <dinghui@sangfor.com.cn>
To: anthony.l.nguyen@intel.com, mateusz.palczewski@intel.com,
 sylwesterx.dziedziuch@intel.com
Date: Thu, 20 Apr 2023 14:11:42 +0800
Message-Id: <20230420061142.31798-1-dinghui@sangfor.com.cn>
X-Mailer: git-send-email 2.17.1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
 tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCHhgYVklNTE5MHklPSkhKGlUTARMWGhIXJBQOD1
 lXWRgSC1lBWUlPSx5BSBlMQUhJTBhBSUgdS0FIS0JPQRoeSx5BGUofHkFOGR4dWVdZFhoPEhUdFF
 lBWU9LSFVKSktPS0NVSktLVUtZBg++
X-HM-Tid: 0a879d4a52692eb1kusn443d228045f
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PFE6FTo6Kj0VQxYSCgISNg9D
 IUhPC0NVSlVKTUNKQkxKSktNQ0xCVTMWGhIXVR8SFRwTDhI7CBoVHB0UCVUYFBZVGBVFWVdZEgtZ
 QVlJT0seQUgZTEFISUwYQUlIHUtBSEtCT0EaHkseQRlKHx5BThkeHVlXWQgBWUFJTE1CNwY+
Subject: [Intel-wired-lan] [RFC PATCH net v2] iavf: Fix lost VF MAC when
 repeatedly set same MAC
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
Cc: dinghui@sangfor.com.cn, intel-wired-lan@lists.osuosl.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Since Intel iavf-4.6.1 from the official website, we found a a VF's MAC
lost scenario when we repeatedly set the same MAC address to a VF NIC.

But I checked linux inbox iavf [1], the logic is same as iavf-4.5.3 in
iavf_replace_primary_mac(), which not lost MAC.

Reproducer:

  # eth4 is a VF NIC
  ip link set dev eth4 address fe:11:22:33:44:55
  # set again
  ip link set dev eth4 address fe:11:22:33:44:55

iavf-4.6.1 ~ iavf-4.8.2:

If the new_mac is existed in mac_filter_list, in iavf_replace_primary_mac()
we will set the same iavf_mac_filter with both f->add and f->remove is true,
and in iavf_process_aq_command(), we handle iavf_del_ether_addrs() after
iavf_add_ether_addrs(), so we will delete the MAC just after added it.

The linux inbox iavf:

First set old f->remove true, and later call iavf_add_filter() which
auto set back f->remove false, so the mac_filter is not both f->add and
f->remove true, so the MAC will not lost.

Could you confirm the issue of driver from official website? And try to
fix it?

Thanks.

In the RFC, to avoid the lost issue, I simply reset f->remove to false for
the mac_filter we will add.

Because the inbox driver does not have this issue, sorry about that the
email is only sent to you guys without open list.

[1]: 35a2443d0910 ("iavf: Add waiting for response from PF in set mac")

Signed-off-by: Ding Hui <dinghui@sangfor.com.cn>
---
v2:
  - code: new_f->remove = false

---
 iavf-4.8.2/src/iavf_main.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/iavf-4.8.2/src/iavf_main.c b/iavf-4.8.2/src/iavf_main.c
index f1c06b65..962e577d 100755
--- a/iavf-4.8.2/src/iavf_main.c
+++ b/iavf-4.8.2/src/iavf_main.c
@@ -1080,6 +1080,7 @@ int iavf_replace_primary_mac(struct iavf_adapter
*adapter,
 		 */
 		new_f->is_primary = true;
 		new_f->add = true;
+		new_f->remove = false;
 		adapter->aq_required |= IAVF_FLAG_AQ_ADD_MAC_FILTER;
 		ether_addr_copy(hw->mac.addr, new_mac);
 	}
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
