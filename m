Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F1592ABC7
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Jul 2024 00:11:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C3BFE406AE;
	Mon,  8 Jul 2024 22:11:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WffHwZ7Nlhfa; Mon,  8 Jul 2024 22:11:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CEB8940693
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720476701;
	bh=lqlgfh7w5S1N0Xg3sR42UQkt3Wbstut9nFE9pC0xW0g=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=MT+8ZlPJk+xaM6SsjqlPoGNb/XwDbjfpPKGoz95Im3rjffvgEDP2siICYcXH7ljZk
	 jCgfFjc4CCFy9E3JGqb9DiU6xfFXzTHDrdvy+eVwyii44sTSKxivuBrl2f+iLMFxF9
	 1QNUf5mTPAk8RUf2h88+hrgMLnSEy8TLHuHcccUoRYRTNERU6sMfSV14D9gtG9qYUh
	 shWSni+Os2+W1m6xPcu8yelkgr/yrvrRZGIighYg14eSxjwrc2Ygo2WDWgsNRChrvz
	 PpRv0tLSjXrbTtuCk2thgqQAO1+6NE3Do7OIVcxeUy6pHyuy/VeX6rOHWYIahApFrb
	 nzxTQ/z4QS14Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CEB8940693;
	Mon,  8 Jul 2024 22:11:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A93381BF2B1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2024 18:30:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 94C5140220
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2024 18:30:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KEAuf8OyESS3 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jul 2024 18:30:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=109.73.34.58;
 helo=mx1.t-argos.ru; envelope-from=amishin@t-argos.ru; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6401D401F8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6401D401F8
Received: from mx1.t-argos.ru (mx1.t-argos.ru [109.73.34.58])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6401D401F8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2024 18:30:20 +0000 (UTC)
Received: from mx1.t-argos.ru (localhost [127.0.0.1])
 by mx1.t-argos.ru (Postfix) with ESMTP id 4F7D9100003;
 Mon,  8 Jul 2024 21:29:31 +0300 (MSK)
Received: from mx1.t-argos.ru.ru (ta-mail-02.ta.t-argos.ru [172.17.13.212])
 by mx1.t-argos.ru (Postfix) with ESMTP;
 Mon,  8 Jul 2024 21:28:14 +0300 (MSK)
Received: from localhost.localdomain (172.17.215.5) by ta-mail-02
 (172.17.13.212) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Mon, 8 Jul 2024
 21:27:54 +0300
From: Aleksandr Mishin <amishin@t-argos.ru>
To: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
Date: Mon, 8 Jul 2024 21:27:36 +0300
Message-ID: <20240708182736.8514-1-amishin@t-argos.ru>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [172.17.215.5]
X-ClientProxiedBy: ta-mail-02.ta.t-argos.ru (172.17.13.212) To ta-mail-02
 (172.17.13.212)
X-KSMG-Rule-ID: 1
X-KSMG-Message-Action: clean
X-KSMG-AntiSpam-Lua-Profiles: 186376 [Jul 08 2024]
X-KSMG-AntiSpam-Version: 6.1.0.4
X-KSMG-AntiSpam-Envelope-From: amishin@t-argos.ru
X-KSMG-AntiSpam-Rate: 0
X-KSMG-AntiSpam-Status: not_detected
X-KSMG-AntiSpam-Method: none
X-KSMG-AntiSpam-Auth: dkim=none
X-KSMG-AntiSpam-Info: LuaCore: 23 0.3.23
 8881c50ebb08f9085352475be251cf18bb0fcfdd, {Tracking_uf_ne_domains},
 {Tracking_from_domain_doesnt_match_to}, lore.kernel.org:7.1.1;
 127.0.0.199:7.1.2; mx1.t-argos.ru.ru:7.1.1;
 d41d8cd98f00b204e9800998ecf8427e.com:7.1.1; t-argos.ru:7.1.1, FromAlignment: s
X-MS-Exchange-Organization-SCL: -1
X-KSMG-AntiSpam-Interceptor-Info: scan successful
X-KSMG-AntiPhishing: Clean, bases: 2024/07/08 17:13:00
X-KSMG-AntiVirus: Kaspersky Secure Mail Gateway, version 1.1.2.30,
 bases: 2024/07/08 15:35:00 #25918408
X-KSMG-AntiVirus-Status: Clean, skipped
X-Mailman-Approved-At: Mon, 08 Jul 2024 22:11:39 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=t-argos.ru; s=mail; 
 t=1720463371; bh=lqlgfh7w5S1N0Xg3sR42UQkt3Wbstut9nFE9pC0xW0g=;
 h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type;
 b=DZi7NR4WOJF6Xs7dx8orMK06jRLVVorqm2lgEbqgKENapc/53dTwfbCxlAsmpkhmC
 7DZ3wJYa2jtN3ZOm9lllrC09RQXqHLpXuAlDw0ZPIbM3LpzqJll3EbMzNxj2l+7zoX
 oUwL5bfg1oPWa8iMWQ8YNGfeDbRLRCbVniNyr375bnFuYvXnA65hwHKJCFXtGqWLgq
 VeNwFVvY83QEg85OeY8jrWzliYGJPR3Emqsh7SsWdK23jE6Qb+bva8JMGPbsEHASvv
 VlnepPqiPUEscZ5p7/BYdIaQBXHQ1q/Mn53lJRiqtj3niG8B4d/nRXd7HzEMTJLidV
 ePENkKYOJyBWg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=t-argos.ru
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=t-argos.ru header.i=@t-argos.ru header.a=rsa-sha256
 header.s=mail header.b=DZi7NR4W
Subject: [Intel-wired-lan] [PATCH net-next v3] ice: Adjust over allocation
 of memory in ice_sched_add_root_node() and ice_sched_add_node()
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
Cc: lvc-project@linuxtesting.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Aleksandr Mishin <amishin@t-argos.ru>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In ice_sched_add_root_node() and ice_sched_add_node() there are calls to
devm_kcalloc() in order to allocate memory for array of pointers to
'ice_sched_node' structure. But incorrect types are used as sizeof()
arguments in these calls (structures instead of pointers) which leads to
over allocation of memory.

Adjust over allocation of memory by correcting types in devm_kcalloc()
sizeof() arguments.

Found by Linux Verification Center (linuxtesting.org) with SVACE.

Suggested-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Aleksandr Mishin <amishin@t-argos.ru>
---
v3:
  - Update comment and use the correct entities as suggested by Przemek
v2: https://lore.kernel.org/all/20240706140518.9214-1-amishin@t-argos.ru/
  - Update comment, remove 'Fixes' tag and change the tree from 'net' to
    'net-next' as suggested by Simon
    (https://lore.kernel.org/all/20240706095258.GB1481495@kernel.org/)
v1: https://lore.kernel.org/all/20240705163620.12429-1-amishin@t-argos.ru/

 drivers/net/ethernet/intel/ice/ice_sched.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sched.c b/drivers/net/ethernet/intel/ice/ice_sched.c
index ecf8f5d60292..6ca13c5dcb14 100644
--- a/drivers/net/ethernet/intel/ice/ice_sched.c
+++ b/drivers/net/ethernet/intel/ice/ice_sched.c
@@ -28,9 +28,8 @@ ice_sched_add_root_node(struct ice_port_info *pi,
 	if (!root)
 		return -ENOMEM;
 
-	/* coverity[suspicious_sizeof] */
 	root->children = devm_kcalloc(ice_hw_to_dev(hw), hw->max_children[0],
-				      sizeof(*root), GFP_KERNEL);
+				      sizeof(*root->children), GFP_KERNEL);
 	if (!root->children) {
 		devm_kfree(ice_hw_to_dev(hw), root);
 		return -ENOMEM;
@@ -186,10 +185,9 @@ ice_sched_add_node(struct ice_port_info *pi, u8 layer,
 	if (!node)
 		return -ENOMEM;
 	if (hw->max_children[layer]) {
-		/* coverity[suspicious_sizeof] */
 		node->children = devm_kcalloc(ice_hw_to_dev(hw),
 					      hw->max_children[layer],
-					      sizeof(*node), GFP_KERNEL);
+					      sizeof(*node->children), GFP_KERNEL);
 		if (!node->children) {
 			devm_kfree(ice_hw_to_dev(hw), node);
 			return -ENOMEM;
-- 
2.30.2

