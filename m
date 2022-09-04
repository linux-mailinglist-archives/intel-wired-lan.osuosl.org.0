Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EE6195AC4C5
	for <lists+intel-wired-lan@lfdr.de>; Sun,  4 Sep 2022 16:23:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0C168408CF;
	Sun,  4 Sep 2022 14:23:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0C168408CF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1662301381;
	bh=KtAt5+ccJxMZRgCtKyYDnd74O7T0cUQZcY5bbWFrYfs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=T8QtU11XdQ/Vv2/kfbJtT7rLeTlF0eZm6D2bu7bzdIEkRhp7lTgJEM4NEb3QkcQYX
	 /Z2RnNj0bUwPXNcUC6JWrKzYpQtMtWQ1UIXXlwZPS0uXLX1+viDIUlep8Ml1Ax3GLU
	 joC5v4djCUnlxLJk+N9bxQf+MQdHk+/6i0/ywHDeii6bQFPFgjkLvQx49MC9tEqknk
	 5b8w9OteerAVd/uRLRCCiwk8gv64eI9XAIlaWQQOBwtjHf73tULtf3jaCscWi4Ae2N
	 +Uf9iWCgyGQZlPriqzCxLoQTVz6y9/E8YUF36IUHlUdx/Vqzu5ZtZZxJNnfqWjLBe6
	 012XkN2V+B77g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f3rjTNB5_aBN; Sun,  4 Sep 2022 14:23:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BA688408BB;
	Sun,  4 Sep 2022 14:22:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BA688408BB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 789021BF2BB
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Sep 2022 14:22:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 52E5780E7E
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Sep 2022 14:22:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 52E5780E7E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RZS_ocYiH3hx for <intel-wired-lan@lists.osuosl.org>;
 Sun,  4 Sep 2022 14:22:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1D26580C37
Received: from smtp.smtpout.orange.fr (smtp07.smtpout.orange.fr
 [80.12.242.129])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1D26580C37
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Sep 2022 14:22:53 +0000 (UTC)
Received: from pop-os.home ([90.11.190.129]) by smtp.orange.fr with ESMTPA
 id UqWOoEaZwJvOZUqWOotKwX; Sun, 04 Sep 2022 16:22:51 +0200
X-ME-Helo: pop-os.home
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Sun, 04 Sep 2022 16:22:51 +0200
X-ME-IP: 90.11.190.129
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Sun,  4 Sep 2022 16:22:46 +0200
Message-Id: <7cd7cb09607c46763e846d1fa7158ce9fdfca3e6.1662301342.git.christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH] ice: Simplify memory allocation in
 ice_sched_init_port()
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
Cc: Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 intel-wired-lan@lists.osuosl.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

'buf' is locale to the ice_sched_init_port() function.
There is no point in using devm_kzalloc()/devm_kfree().

use kzalloc()/kfree() instead.

Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
As a side effect, it also require less memory. devm_kzalloc() has a small
memory overhead, and requesting ICE_AQ_MAX_BUF_LEN (i.e. 4096) bytes,
8192 are really allocated.
---
 drivers/net/ethernet/intel/ice/ice_sched.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sched.c b/drivers/net/ethernet/intel/ice/ice_sched.c
index 7947223536e3..118595763bba 100644
--- a/drivers/net/ethernet/intel/ice/ice_sched.c
+++ b/drivers/net/ethernet/intel/ice/ice_sched.c
@@ -1212,7 +1212,7 @@ int ice_sched_init_port(struct ice_port_info *pi)
 	hw = pi->hw;
 
 	/* Query the Default Topology from FW */
-	buf = devm_kzalloc(ice_hw_to_dev(hw), ICE_AQ_MAX_BUF_LEN, GFP_KERNEL);
+	buf = kzalloc(ICE_AQ_MAX_BUF_LEN, GFP_KERNEL);
 	if (!buf)
 		return -ENOMEM;
 
@@ -1290,7 +1290,7 @@ int ice_sched_init_port(struct ice_port_info *pi)
 		pi->root = NULL;
 	}
 
-	devm_kfree(ice_hw_to_dev(hw), buf);
+	kfree(buf);
 	return status;
 }
 
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
