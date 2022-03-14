Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3674F4D8988
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Mar 2022 17:41:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1E3C44021C;
	Mon, 14 Mar 2022 16:41:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DH8jwdmReJ33; Mon, 14 Mar 2022 16:41:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C6045401DD;
	Mon, 14 Mar 2022 16:41:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E91491BF35B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Mar 2022 16:41:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D4CDD404A3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Mar 2022 16:41:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OA9HIhOBMfDE for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Mar 2022 16:41:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3DEEC4040B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Mar 2022 16:41:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647276103; x=1678812103;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UBDT/QTrQDvVq96QXXDZE3WcF1RrIlr6RMyMVV1DNOk=;
 b=LYb2s7Ol+WKenLYj+M7hHqRpEl8s+Z9tmk/QvK3ukBfdqj4fdeAOjGL7
 in49cWTGmoVmzBLidn1FkQ5gxwD+ldhbbjpDJ2BjGyL8k7mj5pZRQSQ27
 GnhudeT8ZYMhPBFOTBXd8aW6ptYlGmA6up/LA5mDee1Bv1XuVOhmZhggK
 uLIjoOv6HK+rGkdRMVBVvo9CBce98tMTbXszl6w0ZMbpf/17JqJSsrxZo
 PAGDBtAd3kJa7vSngdNTAuJh6/g2gK9LdgbftZFQZF/g/cVF9E86vtw6o
 6l1iOI55GliN4aN82T6nXFl6go3OkrFidyQj9M7jD6khGUszoepg6+pBf g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10285"; a="254910952"
X-IronPort-AV: E=Sophos;i="5.90,181,1643702400"; d="scan'208";a="254910952"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 09:41:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,181,1643702400"; d="scan'208";a="643906634"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga002.fm.intel.com with ESMTP; 14 Mar 2022 09:41:41 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 22EGfeXv025807; Mon, 14 Mar 2022 16:41:40 GMT
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: anthony.l.nguyen@intel.com
Date: Mon, 14 Mar 2022 17:41:37 +0100
Message-Id: <20220314164137.15101-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next] gtp: Fix inconsistent indenting
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Wojciech Drewek <wojciech.drewek@intel.com>

Commit d33bd757d362("gtp: Implement GTP echo request") introduced
this issue.

Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
Reported-by: kernel test robot <lkp@intel.com>
---
There is no "Fixes" tag because patch that caused the
issue is not present in net yet.
---
 drivers/net/gtp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
index 756714d4ad92..a208e2b1a9af 100644
--- a/drivers/net/gtp.c
+++ b/drivers/net/gtp.c
@@ -1793,7 +1793,7 @@ static int gtp_genl_send_echo_req(struct sk_buff *skb, struct genl_info *info)
 	if (IS_ERR(rt)) {
 		netdev_dbg(gtp->dev, "no route for echo request to %pI4\n",
 			   &dst_ip);
-			   kfree_skb(skb_to_send);
+		kfree_skb(skb_to_send);
 		return -ENODEV;
 	}
 
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
