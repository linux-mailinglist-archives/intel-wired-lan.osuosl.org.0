Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C54731CC78
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Feb 2021 15:54:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A69218714C;
	Tue, 16 Feb 2021 14:54:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DOKo8617l1Yu; Tue, 16 Feb 2021 14:54:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EF84787146;
	Tue, 16 Feb 2021 14:54:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 171171BF3CB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Feb 2021 12:24:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 11A216F4A4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Feb 2021 12:24:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O_uBQ3LA5N91 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Feb 2021 12:24:20 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 564D46F4F7; Mon, 15 Feb 2021 12:24:20 +0000 (UTC)
X-Greylist: delayed 00:16:56 by SQLgrey-1.8.0
Received: from m12-14.163.com (m12-14.163.com [220.181.12.14])
 by smtp3.osuosl.org (Postfix) with SMTP id 25F036F4A4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Feb 2021 12:24:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
 s=s110527; h=From:Subject:Date:Message-Id; bh=7+Zfjjs9Ah3I25lTRn
 9mVs6v6P7IaEZ1WvDV0OO4SYo=; b=ELbcgOK0fyD7imMxflkksEq21Bc6JTz14+
 JZvXyN50MTTLklf1wtOeMrMM+mXXo769IXDO9Wn45WOT6gh1wpdJevR4i7XIsYOE
 h3h2bXNQsi+19b5zi6lAfstzgPwuiKfXSk/Idaf8iq7C1Amj8Z8bsKjpt1MAOr0d
 C56yYS6Ag=
Received: from localhost.localdomain (unknown [125.70.196.55])
 by smtp10 (Coremail) with SMTP id DsCowADXmLZ6YypgQ_cJlA--.29413S2;
 Mon, 15 Feb 2021 20:05:18 +0800 (CST)
From: Chen Lin <chen45464546@163.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Mon, 15 Feb 2021 20:04:58 +0800
Message-Id: <1613390698-3637-1-git-send-email-chen45464546@163.com>
X-Mailer: git-send-email 1.7.9.5
X-CM-TRANSID: DsCowADXmLZ6YypgQ_cJlA--.29413S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7CrWkKr45tFW7AFyfZFWDurg_yoW8XrW5pa
 y8X34xGF1Sqr48Wa4kXw45ZFZI9a10grW5GrWfA3yY9F1Ykr48K3WDtFyUAa409r45GrW3
 ZFyayr4DCa13GwUanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jhuc_UUUUU=
X-Originating-IP: [125.70.196.55]
X-CM-SenderInfo: hfkh0kqvuwkkiuw6il2tof0z/1tbiGh46nlaD825JEgAAsz
X-Mailman-Approved-At: Tue, 16 Feb 2021 14:54:40 +0000
Subject: [Intel-wired-lan] [PATCH] net: intel: Remove unused function
 pointer typedef ixgbe_mc_addr_itr
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
Cc: linux-kernel@vger.kernel.org, Chen Lin <chen.lin5@zte.com.cn>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Chen Lin <chen.lin5@zte.com.cn>

Remove the 'ixgbe_mc_addr_itr' typedef as it is not used.

Signed-off-by: Chen Lin <chen.lin5@zte.com.cn>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |    4 ----
 drivers/net/ethernet/intel/ixgbevf/vf.h       |    3 ---
 2 files changed, 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
index 2be1c4c..e4da5ac 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
@@ -3383,10 +3383,6 @@ struct ixgbe_hw_stats {
 /* forward declaration */
 struct ixgbe_hw;
 
-/* iterator type for walking multicast address lists */
-typedef u8* (*ixgbe_mc_addr_itr) (struct ixgbe_hw *hw, u8 **mc_addr_ptr,
-				  u32 *vmdq);
-
 /* Function pointer table */
 struct ixgbe_eeprom_operations {
 	s32 (*init_params)(struct ixgbe_hw *);
diff --git a/drivers/net/ethernet/intel/ixgbevf/vf.h b/drivers/net/ethernet/intel/ixgbevf/vf.h
index d1e9e30..1d8209d 100644
--- a/drivers/net/ethernet/intel/ixgbevf/vf.h
+++ b/drivers/net/ethernet/intel/ixgbevf/vf.h
@@ -16,9 +16,6 @@
 
 struct ixgbe_hw;
 
-/* iterator type for walking multicast address lists */
-typedef u8* (*ixgbe_mc_addr_itr) (struct ixgbe_hw *hw, u8 **mc_addr_ptr,
-				  u32 *vmdq);
 struct ixgbe_mac_operations {
 	s32 (*init_hw)(struct ixgbe_hw *);
 	s32 (*reset_hw)(struct ixgbe_hw *);
-- 
1.7.9.5


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
