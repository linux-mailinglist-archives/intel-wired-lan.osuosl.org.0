Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 07C775603E8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Jun 2022 17:12:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 97D5041B36;
	Wed, 29 Jun 2022 15:12:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 97D5041B36
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656515533;
	bh=c+33rIynkckNkLFuj9Rbs+XboXZvjHncHAQJpDDl8f8=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=w9CJexppaGsGwTGH6vOvpmmvis9U3HL+HihHYHLlb6ZVsez/UyGf1Uz0iKSZbvczs
	 oO8xnyS6LdIM+YJI1hZVj8fTKl1G7lF6BFaQu8tCRhDXRAWLqRuqHZs7/Syd93359E
	 8V92lDf4gswZre88LxQQhpbI365dg0614w3lgkO7rS2FCVeGLQJ6eEJKH8wu/iy04f
	 dO6jhXK6dvZ9TLAxGqLWGkr/EnecGbYj1JaaYb8vNizF7zldhtrpfShSF350Jc9dal
	 iWQvK7JxxxxJS0GYpTgl+WyEbMcd3grbWEGMr1kPvgHrcH2O5DnYwYeBkDsKyLQm0V
	 uSDsq5aDBiXCA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m-PdDvCMVVDk; Wed, 29 Jun 2022 15:12:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4A9A141A5F;
	Wed, 29 Jun 2022 15:12:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4A9A141A5F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2091B1BF28F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jun 2022 14:30:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E95B8415B2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jun 2022 14:30:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E95B8415B2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WHMKGKyyoNE3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Jun 2022 14:30:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0401F401B1
Received: from smtpbg.qq.com (biz-43-154-54-12.mail.qq.com [43.154.54.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0401F401B1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jun 2022 14:30:24 +0000 (UTC)
X-QQ-mid: bizesmtp86t1656513011th4nq7cj
Received: from localhost.localdomain ( [182.148.13.66])
 by bizesmtp.qq.com (ESMTP) with 
 id ; Wed, 29 Jun 2022 22:30:09 +0800 (CST)
X-QQ-SSF: 0100000000200060C000C00A0000000
X-QQ-FEAT: ACkb0FcbxRk3MGc6ImTK9UmnAVdZePcX1z96KWehZyPgYCmwgwh4XGH0SK2vf
 qQnDDf2BildBdjrHleiBlFKBB3otwxfXqb9gKI9UA0TeO1rvBd7wc4LUGIKswbKXozxVmcN
 Y3X9btPWLkVVoF3+IzaSz2EH5BG3I7xkQN/CrEJ17zv6yGw5wbiEb6M72OU6111pi6x9cDs
 00YhsHRbTtHx050+5bXFjt1OuiobZkfBeWXzKWJvebSnyguR7cSLSdkScGbpdRhY5ZRrYYn
 Qn4b8dU9lTYyuuqsXkP5WfqpACzD6vovaIh9ESeTQL2AQLqYkjDMGmDLBp3dSnA8aKG6pTj
 vTd36H/Nk/pswRq0hk=
X-QQ-GoodBg: 0
From: Jilin Yuan <yuanjilin@cdjrlc.com>
To: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com
Date: Wed, 29 Jun 2022 22:29:52 +0800
Message-Id: <20220629142952.18664-1-yuanjilin@cdjrlc.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:cdjrlc.com:qybglogicsvr:qybglogicsvr4
X-Mailman-Approved-At: Wed, 29 Jun 2022 15:11:26 +0000
Subject: [Intel-wired-lan] [PATCH] intel/ixgbe:fix repeated words in comments
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
Cc: netdev@vger.kernel.org, Jilin Yuan <yuanjilin@cdjrlc.com>,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Delete the redundant word 'for'.
Delete the redundant word 'the'.

Signed-off-by: Jilin Yuan <yuanjilin@cdjrlc.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 77c2e70b0860..23b7e1d9652e 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -5161,7 +5161,7 @@ static int ixgbe_hpbthresh(struct ixgbe_adapter *adapter, int pb)
 }
 
 /**
- * ixgbe_lpbthresh - calculate low water mark for for flow control
+ * ixgbe_lpbthresh - calculate low water mark for flow control
  *
  * @adapter: board private structure to calculate for
  * @pb: packet buffer to calculate
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
index e4b50c7781ff..35c2b9b8bd19 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
@@ -1737,7 +1737,7 @@ static s32 ixgbe_setup_sfi_x550a(struct ixgbe_hw *hw, ixgbe_link_speed *speed)
  * @speed: link speed
  * @autoneg_wait_to_complete: unused
  *
- * Configure the the integrated PHY for native SFP support.
+ * Configure the integrated PHY for native SFP support.
  */
 static s32
 ixgbe_setup_mac_link_sfp_n(struct ixgbe_hw *hw, ixgbe_link_speed speed,
@@ -1786,7 +1786,7 @@ ixgbe_setup_mac_link_sfp_n(struct ixgbe_hw *hw, ixgbe_link_speed speed,
  * @speed: link speed
  * @autoneg_wait_to_complete: unused
  *
- * Configure the the integrated PHY for SFP support.
+ * Configure the integrated PHY for SFP support.
  */
 static s32
 ixgbe_setup_mac_link_sfp_x550a(struct ixgbe_hw *hw, ixgbe_link_speed speed,
-- 
2.36.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
