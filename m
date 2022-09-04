Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 08A615AC4BF
	for <lists+intel-wired-lan@lfdr.de>; Sun,  4 Sep 2022 16:18:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 95BAC40871;
	Sun,  4 Sep 2022 14:18:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 95BAC40871
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1662301097;
	bh=zaSXak4q6hpiHKd6gIBJV0wbzgdfJV+eGs6bqVBXUkA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=pSY2jNRl8lngni03IURpyRJr2fSLe3DokTTtcovZkTLUrJA2YYPcVHDnn0zqaZqui
	 BkJyUau2yyylv0fPPMYLhsArqyYd5zNG56zaLhIZqe5LaTQjoDwkpE4z5iRyG6NjLK
	 ePXEQk7ByeWokyyRTZsF6EEv73zMSH1PGS4VMZPc/QW7LsGJQrP7v9UETwxJNkJqjw
	 QU6SZ7VbXwLwcd7FrugGGbSDpy4PhC04Ykzpf1cTBfXoexAj/dNMNtpPot7gKxAVzX
	 bRApsX+hd1Cg856DEvE3PL66STTH8wE9zjIc4114FhBvysOtrn+E2XFj4jB8+frlbs
	 Hl1w0P1PriX1Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qPqPKWnYICiy; Sun,  4 Sep 2022 14:18:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 38BF34071E;
	Sun,  4 Sep 2022 14:18:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 38BF34071E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CC0B71BF2BB
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Sep 2022 14:18:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A640C81277
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Sep 2022 14:18:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A640C81277
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x4psRdBw2Dfn for <intel-wired-lan@lists.osuosl.org>;
 Sun,  4 Sep 2022 14:18:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 58EE58124C
Received: from smtp.smtpout.orange.fr (smtp02.smtpout.orange.fr
 [80.12.242.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 58EE58124C
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Sep 2022 14:18:09 +0000 (UTC)
Received: from pop-os.home ([90.11.190.129]) by smtp.orange.fr with ESMTPA
 id UqRoo6N75sfCIUqRooeLOU; Sun, 04 Sep 2022 16:18:07 +0200
X-ME-Helo: pop-os.home
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Sun, 04 Sep 2022 16:18:07 +0200
X-ME-IP: 90.11.190.129
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Sun,  4 Sep 2022 16:18:02 +0200
Message-Id: <55ff1825aee6e655c41cb6770ca44f0fbdbfec00.1662301068.git.christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH] ice: switch: Simplify memory allocation
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

'rbuf' is locale to the ice_get_initial_sw_cfg() function.
There is no point in using devm_kzalloc()/devm_kfree().

use kzalloc()/kfree() instead.

Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
As a side effect, it also require less memory. devm_kzalloc() has a small
memory overhead, and requesting ICE_SW_CFG_MAX_BUF_LEN (i.e. 2048) bytes,
4096 are really allocated.
---
 drivers/net/ethernet/intel/ice/ice_switch.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 697feb89188c..eb6e19deb70d 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -2274,9 +2274,7 @@ int ice_get_initial_sw_cfg(struct ice_hw *hw)
 	int status;
 	u16 i;
 
-	rbuf = devm_kzalloc(ice_hw_to_dev(hw), ICE_SW_CFG_MAX_BUF_LEN,
-			    GFP_KERNEL);
-
+	rbuf = kzalloc(ICE_SW_CFG_MAX_BUF_LEN, GFP_KERNEL);
 	if (!rbuf)
 		return -ENOMEM;
 
@@ -2324,7 +2322,7 @@ int ice_get_initial_sw_cfg(struct ice_hw *hw)
 		}
 	} while (req_desc && !status);
 
-	devm_kfree(ice_hw_to_dev(hw), rbuf);
+	kfree(rbuf);
 	return status;
 }
 
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
