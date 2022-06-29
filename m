Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 466AA5603E5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Jun 2022 17:12:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D18DA612F6;
	Wed, 29 Jun 2022 15:12:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D18DA612F6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656515520;
	bh=8rFrgsPdp2NUbUfk+SRAX5wvqfnl53xHnMYvewvuMFA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=6dDV3Uv69ZCha8olZlwZHXuNJOxz8lMTEdr7f4BxAzbwWfK0IFiZ9S256KmsAAp+k
	 I04SAIEwk4sCDt9TQIwOEjxbAKjTeADQZLff8HWms1c5ulPou/flXj8uKqMf9LwqfB
	 +wS18NwjZl2fDL2LFkEArWPhP3IOqdxwJ38ABJrBtaY5+XBEFJ7IgwY0q+R3erTh+7
	 CEMwzCtbEpvimW/RKUWooizUlscuECbuA6ZbEyU4pzhN1NKNLuqd0+9R1NaS/s737/
	 BJSA5Mfzr3Umqu10G2GjsQBPUmZhuBunFcRDLDiX0tRr6NQHReOqgzGZ6wN/8WqEw6
	 175pYWlbluyOA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WMOMDD8tc6zK; Wed, 29 Jun 2022 15:12:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CD757605B0;
	Wed, 29 Jun 2022 15:11:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CD757605B0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F26331BF28F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jun 2022 14:22:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CC96741B34
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jun 2022 14:22:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CC96741B34
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nl9zLx91cFn9 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Jun 2022 14:22:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3A30C41A56
Received: from smtpbg.qq.com (biz-43-154-54-12.mail.qq.com [43.154.54.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3A30C41A56
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jun 2022 14:22:16 +0000 (UTC)
X-QQ-mid: bizesmtp85t1656512516torh9h9i
Received: from localhost.localdomain ( [182.148.13.66])
 by bizesmtp.qq.com (ESMTP) with 
 id ; Wed, 29 Jun 2022 22:21:53 +0800 (CST)
X-QQ-SSF: 0100000000200060C000C00A0000000
X-QQ-FEAT: c0j92dw6IxKSeiEhrm+PtPxktskjXZcL4jlLKZjz7sO7OU5wzT87U/K4i93M1
 SIXryARAEXvXxv8ewgPkqT8uNecc8E29dDtO47pw+aNrj8xqVlE/kxAyWin8eWOUZuZPioZ
 Hy8wKoBUlufjdCMEqtDETjL9Z2pK+a1WvihZ52kZzAZ6Suotgy44vC3to4tP0DUQzObdo2B
 qfKmyv7xsWx49nK79I1zbk4IxNW0jycTMfX6mLJzR8f8FmwPyt06ivN/9p3rVz/GEO3CpKA
 Aj6PBwEXzTTC1C7xwUjtV1AuLnVB1+gd4TviIieLQ9ClUfjaKhFp7pfKAeaK/KUOetFvPum
 ZWcs3f2roAscvhvtgg=
X-QQ-GoodBg: 0
From: Jilin Yuan <yuanjilin@cdjrlc.com>
To: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com
Date: Wed, 29 Jun 2022 22:21:47 +0800
Message-Id: <20220629142147.15535-1-yuanjilin@cdjrlc.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:cdjrlc.com:qybglogicsvr:qybglogicsvr4
X-Mailman-Approved-At: Wed, 29 Jun 2022 15:11:26 +0000
Subject: [Intel-wired-lan] [PATCH] intel/igbvf:fix repeated words in comments
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

Delete the redundant word 'on'.
Delete the redundant word 'slot'.

Signed-off-by: Jilin Yuan <yuanjilin@cdjrlc.com>
---
 drivers/net/ethernet/intel/igbvf/igbvf.h  | 2 +-
 drivers/net/ethernet/intel/igbvf/netdev.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igbvf/igbvf.h b/drivers/net/ethernet/intel/igbvf/igbvf.h
index 975eb47ee04d..57d39ee00b58 100644
--- a/drivers/net/ethernet/intel/igbvf/igbvf.h
+++ b/drivers/net/ethernet/intel/igbvf/igbvf.h
@@ -227,7 +227,7 @@ struct igbvf_adapter {
 
 	/* The VF counters don't clear on read so we have to get a base
 	 * count on driver start up and always subtract that base on
-	 * on the first update, thus the flag..
+	 * the first update, thus the flag..
 	 */
 	struct e1000_vf_stats stats;
 	u64 zero_base;
diff --git a/drivers/net/ethernet/intel/igbvf/netdev.c b/drivers/net/ethernet/intel/igbvf/netdev.c
index 43ced78c3a2e..f4e91db89fe5 100644
--- a/drivers/net/ethernet/intel/igbvf/netdev.c
+++ b/drivers/net/ethernet/intel/igbvf/netdev.c
@@ -2537,7 +2537,7 @@ static pci_ers_result_t igbvf_io_error_detected(struct pci_dev *pdev,
 		igbvf_down(adapter);
 	pci_disable_device(pdev);
 
-	/* Request a slot slot reset. */
+	/* Request a slot reset. */
 	return PCI_ERS_RESULT_NEED_RESET;
 }
 
-- 
2.36.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
