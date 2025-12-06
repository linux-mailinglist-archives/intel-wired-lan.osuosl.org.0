Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DA3FCAA76A
	for <lists+intel-wired-lan@lfdr.de>; Sat, 06 Dec 2025 14:46:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BCA948422C;
	Sat,  6 Dec 2025 13:46:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3GGqryoXCBu9; Sat,  6 Dec 2025 13:46:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 436BE84233
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765028804;
	bh=+9CwelyAz+0Ek0t3AEc+3UkGKu9oTf3WNum4xNDVGsE=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Esa8ZGhoYfIuSG9HvJSPagbPpQpPKZcDUzM3u24Sd7WF75fF6zbfxvZvecXrGf5Dg
	 U6YkTfCBR4rszt/z1+PqfB3Q56JfbgJ31OF5+tGs/anVjWOeQx63N2eW1ZtnbHLOc9
	 C+u5lB87l9W88Jf/Q2VG6zVvHsulhZeV4xRg3KmRcxQN71oEfIbBghkc3dyVVvyzjs
	 SKtD+rKVuOfQlJRiJMiP3H6BeG+D/NbuxaRH6yxoX3VeiEwm+GtWusZyE/PXORPl2Q
	 28bqaLhMGVSFmvwL/sL833TwNf/MX5rta34qQryumz07bzFQ24QjQ3YX1mF1bcdZug
	 MJoHY9h6m+piA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 436BE84233;
	Sat,  6 Dec 2025 13:46:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id A76BCE7
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Dec 2025 13:46:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8E82B40621
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Dec 2025 13:46:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vAnJ3NwSBR90 for <intel-wired-lan@lists.osuosl.org>;
 Sat,  6 Dec 2025 13:46:40 +0000 (UTC)
X-Greylist: delayed 42662 seconds by postgrey-1.37 at util1.osuosl.org;
 Sat, 06 Dec 2025 13:46:38 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6227F4061D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6227F4061D
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.254.49.234;
 helo=mail-m49234.qiye.163.com; envelope-from=dinghui@sangfor.com.cn;
 receiver=<UNKNOWN> 
Received: from mail-m49234.qiye.163.com (mail-m49234.qiye.163.com
 [45.254.49.234])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6227F4061D
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Dec 2025 13:46:38 +0000 (UTC)
Received: from localhost.localdomain (unknown [113.92.158.29])
 by smtp.qiye.163.com (Hmail) with ESMTP id 2c3ac3254;
 Sat, 6 Dec 2025 21:46:33 +0800 (GMT+08:00)
From: Ding Hui <dinghui@sangfor.com.cn>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, jacob.e.keller@intel.com,
 intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Ding Hui <dinghui@sangfor.com.cn>
Date: Sat,  6 Dec 2025 21:46:09 +0800
Message-Id: <20251206134609.10565-1-dinghui@sangfor.com.cn>
X-Mailer: git-send-email 2.17.1
X-HM-Tid: 0a9af3ea0cab09d9kunm9ddc210f18cfd28
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
 tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCS0MZVkJOGhlNTxlNH0IaH1YVFAkWGhdVEwETFh
 oSFyQUDg9ZV1kYEgtZQVlKSkhVQklVSk5DVUlCWVdZFhoPEhUdFFlBWU9LSFVKS0lPT09IVUpLS1
 VKQktLWQY+
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=sangfor.com.cn
Subject: [Intel-wired-lan] [Patch net v2] ice: Fix incorrect timeout
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

Found by inspection of the DDP downloading process.
Compile and modprobe tested only.

Fixes: 5f6df173f92e ("ice: implement and use rd32_poll_timeout for ice_sq_done timeout")
Signed-off-by: Ding Hui <dinghui@sangfor.com.cn>
Reviewed-by: Simon Horman <horms@kernel.org>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

---
v1->v2: rebase to net branch and add commit log.

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 046bc9c65c51..785bf5cc1b25 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -2251,7 +2251,7 @@ void ice_release_res(struct ice_hw *hw, enum ice_aq_res_ids res)
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

