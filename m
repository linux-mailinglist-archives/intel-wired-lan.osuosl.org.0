Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 14B57CA6B01
	for <lists+intel-wired-lan@lfdr.de>; Fri, 05 Dec 2025 09:22:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B4A18607E4;
	Fri,  5 Dec 2025 08:22:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PePMF6WDbG2N; Fri,  5 Dec 2025 08:22:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4052A6090C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764922920;
	bh=DxSXnubB7oX1x4a7jVrJc7TZzt/TlgqzogE3YwdcIpY=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Vfr4KAV4Ol+JUlv1FQ9MsXOT87FYJBkeaEaPZGqy0DgBjPC2l3bSUFFVlmWWA/l9/
	 XZDIe7gjgsuXHGobk+D0G+V+JleLStBvyZSz6uN8dHEYPOGB6F+aYRmHNP+UvMWF9G
	 LRzxWjcI9GuGo7iIo4IRd9j/Aq+730RpUYd/SR1firmjhc3jyOUxAF5a7W+4k7ccpK
	 uXhVxeJffO4bgqF8jEOpaNGR3JN95YEPFtH+ky2UJDAO1VsveYyjPLhilJHdTmVzmi
	 vN+w7wo/l9VxkUJPaNitnF6DZgqwdP/XxdYFjVU05venVyN/2Qepb3g1w9PSflIMJO
	 p6a8CBrHHdS9Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4052A6090C;
	Fri,  5 Dec 2025 08:22:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 209E9E7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 08:21:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 069528496B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 08:21:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BT64KpRw_ujO for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Dec 2025 08:21:57 +0000 (UTC)
X-Greylist: delayed 307 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 05 Dec 2025 08:21:56 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 61A0884969
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 61A0884969
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=220.197.31.80;
 helo=mail-m1973180.qiye.163.com; envelope-from=dinghui@sangfor.com.cn;
 receiver=<UNKNOWN> 
Received: from mail-m1973180.qiye.163.com (mail-m1973180.qiye.163.com
 [220.197.31.80])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 61A0884969
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 08:21:55 +0000 (UTC)
Received: from localhost.localdomain (unknown [113.92.158.29])
 by smtp.qiye.163.com (Hmail) with ESMTP id 2c1de1557;
 Fri, 5 Dec 2025 16:16:43 +0800 (GMT+08:00)
From: Ding Hui <dinghui@sangfor.com.cn>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, jacob.e.keller@intel.com,
 intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Ding Hui <dinghui@sangfor.com.cn>
Date: Fri,  5 Dec 2025 16:16:08 +0800
Message-Id: <20251205081609.23091-1-dinghui@sangfor.com.cn>
X-Mailer: git-send-email 2.17.1
X-HM-Tid: 0a9aed95b78a09d9kunm4a185e11f1eeb1
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
 tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkZSkJCVklLH0kfQxkZSklKQlYVFAkWGhdVEwETFh
 oSFyQUDg9ZV1kYEgtZQVlKSkhVQklVSk5DVUlCWVdZFhoPEhUdFFlBWU9LSFVKS0lPT09IVUpLS1
 VKQktLWQY+
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=sangfor.com.cn
Subject: [Intel-wired-lan] [PATCH net-next] ice: Fix incorrect timeout in
 ice_release_res()
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The commit 5f6df173f92e ("ice: implement and use rd32_poll_timeout for
ice_sq_done timeout") converted ICE_CTL_Q_SQ_CMD_TIMEOUT from jiffies
to microseconds.

But the ice_release_res() function was missed, and its logic still
treats ICE_CTL_Q_SQ_CMD_TIMEOUT as a jiffies value.

So correct the issue by usecs_to_jiffies().

Fixes: 5f6df173f92e ("ice: implement and use rd32_poll_timeout for ice_sq_done timeout")
Signed-off-by: Ding Hui <dinghui@sangfor.com.cn>
---
 drivers/net/ethernet/intel/ice/ice_common.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 6fb0c1e8ae7c..5005c299deb1 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1885,7 +1885,7 @@ void ice_release_res(struct ice_hw *hw, enum ice_aq_res_ids res)
 	/* there are some rare cases when trying to release the resource
 	 * results in an admin queue timeout, so handle them correctly
 	 */
-	timeout = jiffies + 10 * ICE_CTL_Q_SQ_CMD_TIMEOUT;
+	timeout = jiffies + 10 * usecs_to_jiffies(ICE_CTL_Q_SQ_CMD_TIMEOUT);
 	do {
 		status = ice_aq_release_res(hw, res, 0, NULL);
 		if (status != -EIO)
-- 
2.17.1

