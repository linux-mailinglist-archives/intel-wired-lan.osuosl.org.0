Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id F41BD705173
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 May 2023 17:03:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 129C4408BF;
	Tue, 16 May 2023 15:03:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 129C4408BF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684249398;
	bh=KRzLD/A57OP0GpmUIaX8S5ACsob9tF1tKDBUF0JYNOQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=UNTuxpMu54+WlUN2LtWsENATJlV6XPfmGIbU/+TrT0oPRuvnqXEKS8OR1yhllL0js
	 mCX+aenC91oeeikpaTsMSQf5hTRq2bfkVXOoTPxEnyU238dRzOWjfezzTNz8hVUgaS
	 lXZNUHBoC956mVN1DoKcGM31/Wk/K1Do4YGw9O/j+u2Vqe3cWuj7cSsA2WIoPI0Wo1
	 JTFDY1adlsMNUWsKDOo7hicZvTeuBHq66qfVAtzoWlb9hhlsuw1mbvS6yhE8F/xDT9
	 sk5HTWqsBH3jL+KadvVuI5UznoT69wqNjJuHhkiQ5G4cSI1y4/P39r4VmC9DbIOjbl
	 aGjjZdyrcPuTQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YrrB-xFECJEH; Tue, 16 May 2023 15:03:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C9CCA40336;
	Tue, 16 May 2023 15:03:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C9CCA40336
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B1F791BF2E4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 May 2023 07:29:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 84F3640136
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 May 2023 07:29:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 84F3640136
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C-OiUlnvN_iI for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 May 2023 07:29:36 +0000 (UTC)
X-Greylist: delayed 00:10:59 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 14EAA400D8
Received: from mail-177132.yeah.net (mail-177132.yeah.net [123.58.177.132])
 by smtp2.osuosl.org (Postfix) with ESMTP id 14EAA400D8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 May 2023 07:29:34 +0000 (UTC)
Received: from john-VirtualBox (unknown [111.18.136.15])
 by smtp2 (Coremail) with SMTP id C1UQrACXnV19LWNk_3Y6CA--.18933S2;
 Tue, 16 May 2023 15:15:09 +0800 (CST)
Date: Tue, 16 May 2023 15:15:09 +0800
From: Baozhu Ni <nibaozhu@yeah.net>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 Outreachy <outreachy@lists.linux.dev>
Message-ID: <20230516071509.GA3550@john-VirtualBox>
MIME-Version: 1.0
Content-Disposition: inline
X-CM-TRANSID: C1UQrACXnV19LWNk_3Y6CA--.18933S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrKryfCry3CF1rWr1UJr13Arb_yoW3XrbE9r
 1Ivwn3GrZ8GFyFyF45CrWxZ34Ykw1DXrykAF93K3s5ZrWUJr48uryv9r1xJFs2gw1fJFyU
 AryaqF1fC3y2kjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
 9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IUeructUUUUU==
X-Originating-IP: [111.18.136.15]
X-CM-SenderInfo: 5qlet0x2kxq5hhdkh0dhw/1tbiDh1xelszXaj9PAAAsE
X-Mailman-Approved-At: Tue, 16 May 2023 15:03:12 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=yeah.net; 
 s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
 Content-Type; bh=mTNDN550SBe+Qmpqj+ZWvWkotJk0mYyhGGjg0XR+pnU=;
 b=Bc0/WzAqwic59gTCEI6dhYTKWdSBU1j0FTkrAmZtIVaJaymYPQe4TMm/qfYJmm
 Ubkdohn/JHcSStbDDRw5D9rqtyh0CgUSRLF6PpcKleHMkSu69RADmU7HiayFv9KL
 9UzQ49w6jJ/m0BRizpHBux5uH7RruvE8PUyUUcjqu7NUk=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net
 header.a=rsa-sha256 header.s=s110527 header.b=Bc0/WzAq
Subject: [Intel-wired-lan] [PATCH] e1000e: Add desc after trailing whitespace
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

./scripts/checkpatch.pl check error, so add description.

Signed-off-by: Baozhu Ni <nibaozhu@yeah.net>
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 6f5c16aebcbf..cadeb5bc5e16 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -4198,7 +4198,7 @@ void e1000e_reset(struct e1000_adapter *adapter)
 
 /**
  * e1000e_trigger_lsc - trigger an LSC interrupt
- * @adapter: 
+ * @adapter: board private structure
  *
  * Fire a link status change interrupt to start the watchdog.
  **/
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
