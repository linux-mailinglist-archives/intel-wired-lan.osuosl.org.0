Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B7C225603E0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Jun 2022 17:11:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3C6F781A23;
	Wed, 29 Jun 2022 15:11:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3C6F781A23
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656515500;
	bh=AS4ZNqWvkZkFNEMNJRXWGzWanhUX7O+ZDeBZjB6cX/s=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=rumwnNstiI5gY49NIVBs7DDMgi3WjYpiS0ADXa05Qeu21zZFTJ69ADRlKWlzFsGmu
	 8SkhCrQugytVYuZgQ/dcx/TpaeWUcpjYpO/mSs6YIiQ3B5+jDbchw3poPeRjYhQRiI
	 G3g3o4iyJEvJHZ6VkG4bnoAdAPHv31p7AdqDULlvo5ckV/RseBVFffr7hi8EyTDEU1
	 kkWaxg21POdPxJgs4YdnICRrLCwkJBni0KXZ8ajT+pB/gqhCXn3XG2emjZIiytAcGI
	 mio7Nx5sjVLkQSKXVQwSSLJ783z/A8ILQ49bOw7AHTZ3Cdw73H7logVejrvT3Enq1/
	 95z9sjzDGL/zQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yXD_b_j1SSHQ; Wed, 29 Jun 2022 15:11:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 230B8827A8;
	Wed, 29 Jun 2022 15:11:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 230B8827A8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 900CF1BF325
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jun 2022 13:41:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 68E8A40198
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jun 2022 13:41:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 68E8A40198
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5h1G8o0nLtxB for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Jun 2022 13:41:48 +0000 (UTC)
X-Greylist: delayed 00:07:02 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3B0B640002
Received: from smtpbg.qq.com (biz-43-154-54-12.mail.qq.com [43.154.54.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3B0B640002
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jun 2022 13:41:48 +0000 (UTC)
X-QQ-mid: bizesmtp69t1656510095tfjod3ji
Received: from localhost.localdomain ( [182.148.13.66])
 by bizesmtp.qq.com (ESMTP) with 
 id ; Wed, 29 Jun 2022 21:41:32 +0800 (CST)
X-QQ-SSF: 0100000000200060C000C00A0000000
X-QQ-FEAT: XcJ1Se6WjemIkNAHg25b978jKUBDTPupJVdN5gEvjEznt7dXK2BHQm93f7fi9
 gdqSljLpE/iaZ4pvh+supcRcO+y1A0zi03/mXbLQc7h94EPDaeq/r5uojiEReUFvH35p3QI
 sVy4TGh0rYgajBDaY9vOuagMeU8JXco7jJjphrb3MQrIWGlgf4b5WnXgT7iRWhlseLqfLnf
 xEfvsdGlMF9FAt9V1GEzmUKRDhk/56C6KCpSVt6KKwGZ70y8+wT/m6fed3SInsuPXNbZfey
 k9KDIhb/oX3GdvbpRrk9A2SYN0Phv0Sm6S3i/BWkZLRTS0vBqObQ7RH6FVDDDlaqzT5VtEE
 aHwdWwueX1lG86QYP8=
X-QQ-GoodBg: 0
From: Jilin Yuan <yuanjilin@cdjrlc.com>
To: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com
Date: Wed, 29 Jun 2022 21:41:25 +0800
Message-Id: <20220629134125.49734-1-yuanjilin@cdjrlc.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:cdjrlc.com:qybglogicsvr:qybglogicsvr4
X-Mailman-Approved-At: Wed, 29 Jun 2022 15:11:26 +0000
Subject: [Intel-wired-lan] [PATCH] intel/i40e:fix repeated words in comments
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
Cc: Jilin Yuan <yuanjilin@cdjrlc.com>, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Delete the redundant word 'a'.

Signed-off-by: Jilin Yuan <yuanjilin@cdjrlc.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 332a608dbaa6..a6e05b14fec6 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -13028,7 +13028,7 @@ static netdev_features_t i40e_features_check(struct sk_buff *skb,
 	}
 
 	/* No need to validate L4LEN as TCP is the only protocol with a
-	 * a flexible value and we support all possible values supported
+	 * flexible value and we support all possible values supported
 	 * by TCP, which is at most 15 dwords
 	 */
 
-- 
2.36.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
