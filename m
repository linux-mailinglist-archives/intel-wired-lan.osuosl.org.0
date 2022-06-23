Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 58039558B3D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Jun 2022 00:31:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DB5AF42542;
	Thu, 23 Jun 2022 22:31:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DB5AF42542
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656023509;
	bh=EJJuuYwQ4l4NziRcd9BEahbGclhmxtwZvUXKnjQGIPE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=8QT9sTWWvGAk7IiMu04sp5YEbG4CLGqTk9sCogIsCVArj+gWQ2W63JOYUQWk0v4X9
	 o0WKbnWcWHZyaB0VPk7FzIECe0b+fyFJvM0KVSWC9IP3j/unniAc+mGIBKhwF+8c3P
	 7cFq0OfuKDaTeiTQaasBdioYve3crxPevcgjORIMpKsbPms7JKkrYTMWWHvEg/qqw8
	 YzYIrhJUByxRbok4HPtoDbwZKErcBz/bm3SVvQyAChQXqFmwa9qGNamNkDFcNxcg3D
	 +e7FhKp7qmhZzYc/piYHVrFLG5fCjuxyXI7G6DlJFto2TEeiTs+9HH5qtdTokOsjSr
	 bLGfmZSqz0YzQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ASFeZoyqj4ZL; Thu, 23 Jun 2022 22:31:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 96146424BF;
	Thu, 23 Jun 2022 22:31:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 96146424BF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EECBE1BF39C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jun 2022 10:50:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D3AD2424D3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jun 2022 10:50:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D3AD2424D3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lfDyUS7sPwz7 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Jun 2022 10:50:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6D4C7424D1
Received: from smtpbg.qq.com (smtpbg123.qq.com [175.27.65.52])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6D4C7424D1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jun 2022 10:50:43 +0000 (UTC)
X-QQ-mid: bizesmtp85t1655981365t8g78aiu
Received: from ubuntu.localdomain ( [106.117.99.68])
 by bizesmtp.qq.com (ESMTP) with 
 id ; Thu, 23 Jun 2022 18:49:21 +0800 (CST)
X-QQ-SSF: 01000000008000B0C000D00A0000000
X-QQ-FEAT: ZHWZeLXy+8efjliGw0J+4mgi5XMlzqjYXS1kQ9yhRyp8gNMRFxisYHk4hJi6O
 taHYdyTx4fRauf2pEpyCg4ZgLlsPACDR7zHo+ZE4YORkjVZ9JateavsPdLvQ8Oz3UkrNzjq
 scjr+61sHBlMQcdMr3U3aulfyjkI2h7vyNtDZuSGrFiJGEeMyBx685u9/kjZaXzFfltQ1EI
 aBkr763mto5E9cYSTG5ZgHwxw4C7IIJ3VPoZmHi+GF8GR+kpU6FDGJyTzwc1mtLSWa6yLZi
 N86F2cr7A+0ReqNCYzbCvitdMmK9M2Owjd2YptCfcS4Hm/73M69Giu8/exe84tW6OYjb50Y
 tdyiN/d+SlDcjfn2i2QOReV3nstMg==
X-QQ-GoodBg: 0
From: Jiang Jian <jiangjian@cdjrlc.com>
To: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com
Date: Thu, 23 Jun 2022 18:49:19 +0800
Message-Id: <20220623104919.49600-1-jiangjian@cdjrlc.com>
X-Mailer: git-send-email 2.17.1
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:cdjrlc.com:qybgspam:qybgspam8
X-Mailman-Approved-At: Thu, 23 Jun 2022 22:31:43 +0000
Subject: [Intel-wired-lan] [PATCH] ixgbe: drop unexpected word 'for' in
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jiang Jian <jiangjian@cdjrlc.com>, intel-wired-lan@lists.osuosl.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

there is an unexpected word 'for' in the comments that need to be dropped

file - drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
line - 5164

 * ixgbe_lpbthresh - calculate low water mark for for flow control

changed to:

 * ixgbe_lpbthresh - calculate low water mark for flow control

Signed-off-by: Jiang Jian <jiangjian@cdjrlc.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 5c62e9963650..0493326a0d6b 100644
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
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
