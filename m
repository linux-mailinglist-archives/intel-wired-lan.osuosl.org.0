Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 53A705603EA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Jun 2022 17:12:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E706A84102;
	Wed, 29 Jun 2022 15:12:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E706A84102
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656515541;
	bh=CzCahy126HySf3wfSnDUnyiHmsUFwug23eIk62wHvDg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Mn/IoFIpO6ZzUk+t9iDBLL1qseiQKmB+VWFC8CwMSaBBXQIsM3wpSRHXja1yPznB3
	 FSN3r6ljVPGxmqUBlEl+pRjKH3GX4Msgq/icfB/nvviDOPdeJEX2+8xpedxD1KqmKC
	 n/seunRYqgtkQcvcZ1usJGUC1RqFFpw2KCz5AFRwj8PMEkkLhMX7f52JLbLRXUP7k0
	 6mcNIc1biFRKEAgW2JuBUYVOJmIM877ApZkjncvZTxr6FRxI+3sMxTferAGGR3vpk8
	 nHjWDocn1w1aTcvg0ua8CTLRriFWHnillRU+/bcNRMQYwM2jGmWj+EYxMurkwTKnD+
	 9fRU0eVjb0pWQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NOYT0Et0dmAN; Wed, 29 Jun 2022 15:12:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CF068827BB;
	Wed, 29 Jun 2022 15:12:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CF068827BB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 441261BF28F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jun 2022 14:34:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2AA58408A5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jun 2022 14:34:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2AA58408A5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SqNn7fH1LD2w for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Jun 2022 14:34:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E3A40405A8
Received: from smtpbg.qq.com (biz-43-154-54-12.mail.qq.com [43.154.54.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E3A40405A8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jun 2022 14:34:32 +0000 (UTC)
X-QQ-mid: bizesmtp65t1656513261tfud432q
Received: from localhost.localdomain ( [182.148.13.66])
 by bizesmtp.qq.com (ESMTP) with 
 id ; Wed, 29 Jun 2022 22:34:18 +0800 (CST)
X-QQ-SSF: 0100000000200060C000C00A0000000
X-QQ-FEAT: ZHWZeLXy+8dy2IPb5OrWCa7omzZetmReOw5KuLhq7YQxXkAo7SR+PHOoaDvKU
 tUFDiqbQI3GkZT6YgApcsrxmjwJb4uLxtqV5Bv53DZuEAfYK8/CmwXTobt/862lIH1d+uJd
 1Z0J5647yZEtbmnfxYC6RUG6d81i9snZXXXqzVaQXlTNYO0Y12vsqTKcoxlfu2J24kqdCfs
 wym840SOmrv5ONKjCnXGJUb4XvOdRfvOUg9Mb1m/ZtPVov2lPVJtJV7nTFhahNiEOIKUUql
 bwMfSz+tTaBFQM9yexG53DRBM2ZNOpoWzKhb856YeuRIVmIpdG0/cNW1oh4QY+Kzparago+
 j2OEtkB5XTeVNml37g=
X-QQ-GoodBg: 0
From: Jilin Yuan <yuanjilin@cdjrlc.com>
To: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com
Date: Wed, 29 Jun 2022 22:34:01 +0800
Message-Id: <20220629143401.20380-1-yuanjilin@cdjrlc.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:cdjrlc.com:qybglogicsvr:qybglogicsvr4
X-Mailman-Approved-At: Wed, 29 Jun 2022 15:11:26 +0000
Subject: [Intel-wired-lan] [PATCH] intel/ixgbevf:fix repeated words in
 comments
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

Delete the redundant word 'slot'.
Delete the redundant word 'we'.

Signed-off-by: Jilin Yuan <yuanjilin@cdjrlc.com>
---
 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c | 2 +-
 drivers/net/ethernet/intel/ixgbevf/vf.c           | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
index 55b87bc3a938..2f12fbe229c1 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
+++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
@@ -4787,7 +4787,7 @@ static pci_ers_result_t ixgbevf_io_error_detected(struct pci_dev *pdev,
 		pci_disable_device(pdev);
 	rtnl_unlock();
 
-	/* Request a slot slot reset. */
+	/* Request a slot reset. */
 	return PCI_ERS_RESULT_NEED_RESET;
 }
 
diff --git a/drivers/net/ethernet/intel/ixgbevf/vf.c b/drivers/net/ethernet/intel/ixgbevf/vf.c
index 68fc32e36e88..1641d00d8ed3 100644
--- a/drivers/net/ethernet/intel/ixgbevf/vf.c
+++ b/drivers/net/ethernet/intel/ixgbevf/vf.c
@@ -964,7 +964,7 @@ int ixgbevf_get_queues(struct ixgbe_hw *hw, unsigned int *num_tcs,
 	if (!err) {
 		msg[0] &= ~IXGBE_VT_MSGTYPE_CTS;
 
-		/* if we we didn't get an ACK there must have been
+		/* if we didn't get an ACK there must have been
 		 * some sort of mailbox error so we should treat it
 		 * as such
 		 */
-- 
2.36.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
