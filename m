Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F10BB645F24
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Dec 2022 17:42:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 749E881FC9;
	Wed,  7 Dec 2022 16:42:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 749E881FC9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670431364;
	bh=l11F1h8FjTnBVpy6IC3Frw9oGQhpKMwhZgs8kLl+smk=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=8temQlY6CzbNuVRnKc7tZr5n13Q8drmm76XDlrvrKDsiTdKvyRct75Ct3M7/ClkVQ
	 0Tik55ysDb2VBvXTsUTfK8+Plk+gYjfi/yg9UlcnUeiyWP4adrp8PzBTt9CqQ3oJbS
	 jYCQujlcDi2PF2r/G00Q/wNsg4Yu6RMk3AJzlomTeUSoDc+uiSS6MDz5eDNYX/yJCk
	 ayw/jvzYgcNXKyRYv4H5ygphI4dCTjldC9JnZNr+mUAhH9JFsm+qh7CwBn5WsOwUUj
	 B+VMKgCtlTsp/lilN9hH4XfbPEa/GIkjv8GJ6EyzFClNPzQnjsBBCz16F0CZ0sz3jw
	 PNm77rZn+QUuA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z82nM8S0_3gx; Wed,  7 Dec 2022 16:42:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7B36281FA9;
	Wed,  7 Dec 2022 16:42:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7B36281FA9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0A7221BF82F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Dec 2022 08:57:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E4072403C1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Dec 2022 08:57:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E4072403C1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V6UYYIYQV4if for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Dec 2022 08:57:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 42F0440360
Received: from szxga03-in.huawei.com (szxga03-in.huawei.com [45.249.212.189])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 42F0440360
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Dec 2022 08:57:33 +0000 (UTC)
Received: from dggpeml500024.china.huawei.com (unknown [172.30.72.56])
 by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4NRrgB5Hj2zJp8s;
 Wed,  7 Dec 2022 16:53:58 +0800 (CST)
Received: from huawei.com (10.175.112.208) by dggpeml500024.china.huawei.com
 (7.185.36.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Wed, 7 Dec
 2022 16:57:28 +0800
From: Yuan Can <yuancan@huawei.com>
To: <jesse.brandeburg@intel.com>, <anthony.l.nguyen@intel.com>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <karol.kolacinski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>
Date: Wed, 7 Dec 2022 08:55:02 +0000
Message-ID: <20221207085502.124810-1-yuancan@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.175.112.208]
X-ClientProxiedBy: dggems701-chm.china.huawei.com (10.3.19.178) To
 dggpeml500024.china.huawei.com (7.185.36.10)
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Wed, 07 Dec 2022 16:42:35 +0000
Subject: [Intel-wired-lan] [PATCH net] ice: Fix potential memory leak in
 ice_gnss_tty_write()
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
Cc: yuancan@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The ice_gnss_tty_write() return directly if the write_buf alloc failed,
leaking the cmd_buf.

Fix by free cmd_buf if write_buf alloc failed.

Fixes: d6b98c8d242a ("ice: add write functionality for GNSS TTY")
Signed-off-by: Yuan Can <yuancan@huawei.com>
---
 drivers/net/ethernet/intel/ice/ice_gnss.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.c b/drivers/net/ethernet/intel/ice/ice_gnss.c
index b5a7f246d230..a1915551c69a 100644
--- a/drivers/net/ethernet/intel/ice/ice_gnss.c
+++ b/drivers/net/ethernet/intel/ice/ice_gnss.c
@@ -363,6 +363,7 @@ ice_gnss_tty_write(struct tty_struct *tty, const unsigned char *buf, int count)
 	/* Send the data out to a hardware port */
 	write_buf = kzalloc(sizeof(*write_buf), GFP_KERNEL);
 	if (!write_buf) {
+		kfree(cmd_buf);
 		err = -ENOMEM;
 		goto exit;
 	}
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
