Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 39DB892D1D0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Jul 2024 14:42:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D52F682041;
	Wed, 10 Jul 2024 12:42:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZroE0GcIItVI; Wed, 10 Jul 2024 12:42:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A56CE82065
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720615357;
	bh=TMMii64hLBF2fPDulrY0mamojXuv/hUwycAgbvgPCVE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=x5ZaCQ04Y5JRihfSNNWidkPmKs/Msuo8g/b9lzjXxcSxDIq3MUtiroaxwtCEHXuQH
	 KCXIMZZTGGfd1v1RiJUEZA+2Q0NLOulCGvZlTzzZ55z/AlLD6LbMW3iHFIySkTM9mR
	 lS+TZe2lZ2guM7ntBMYCg1gqf/UoYXFK5p5bS1OVTEMCqEQhGZs5rXpmcBBZSnwj0o
	 rITmr99l9Yl07J+NaIrf4itvf+JX+3frUtcJ9/n6QPtUl6pU2Cs9uhYktPsnh6M/Mk
	 zCNTD/gihEcBXwLltxyQ90WT6PslPMzHmh02V1+XPJ3ama7l6b/9MlxH2ELihwsT/l
	 LyQoKW9I0XJZg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A56CE82065;
	Wed, 10 Jul 2024 12:42:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 13D331BF310
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jul 2024 12:42:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F2B2E40304
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jul 2024 12:42:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EHjZrB4sujos for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Jul 2024 12:42:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=109.73.34.58;
 helo=mx1.t-argos.ru; envelope-from=amishin@t-argos.ru; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CA9AA415BC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CA9AA415BC
Received: from mx1.t-argos.ru (mx1.t-argos.ru [109.73.34.58])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CA9AA415BC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jul 2024 12:42:32 +0000 (UTC)
Received: from mx1.t-argos.ru (localhost [127.0.0.1])
 by mx1.t-argos.ru (Postfix) with ESMTP id BE195100002;
 Wed, 10 Jul 2024 15:41:42 +0300 (MSK)
Received: from mx1.t-argos.ru.ru (ta-mail-02.ta.t-argos.ru [172.17.13.212])
 by mx1.t-argos.ru (Postfix) with ESMTP;
 Wed, 10 Jul 2024 15:40:19 +0300 (MSK)
Received: from localhost.localdomain (172.17.215.5) by ta-mail-02
 (172.17.13.212) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Wed, 10 Jul
 2024 15:39:59 +0300
From: Aleksandr Mishin <amishin@t-argos.ru>
To: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
Date: Wed, 10 Jul 2024 15:39:49 +0300
Message-ID: <20240710123949.9265-1-amishin@t-argos.ru>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [172.17.215.5]
X-ClientProxiedBy: ta-mail-02.ta.t-argos.ru (172.17.13.212) To ta-mail-02
 (172.17.13.212)
X-KSMG-Rule-ID: 1
X-KSMG-Message-Action: clean
X-KSMG-AntiSpam-Lua-Profiles: 186432 [Jul 10 2024]
X-KSMG-AntiSpam-Version: 6.1.0.4
X-KSMG-AntiSpam-Envelope-From: amishin@t-argos.ru
X-KSMG-AntiSpam-Rate: 0
X-KSMG-AntiSpam-Status: not_detected
X-KSMG-AntiSpam-Method: none
X-KSMG-AntiSpam-Auth: dkim=none
X-KSMG-AntiSpam-Info: LuaCore: 24 0.3.24
 186c4d603b899ccfd4883d230c53f273b80e467f, {Tracking_uf_ne_domains},
 {Tracking_from_domain_doesnt_match_to},
 d41d8cd98f00b204e9800998ecf8427e.com:7.1.1; t-argos.ru:7.1.1;
 mx1.t-argos.ru.ru:7.1.1; 127.0.0.199:7.1.2;
 lore.kernel.org:7.1.1, FromAlignment: s
X-MS-Exchange-Organization-SCL: -1
X-KSMG-AntiSpam-Interceptor-Info: scan successful
X-KSMG-AntiPhishing: Clean, bases: 2024/07/10 11:05:00
X-KSMG-AntiVirus: Kaspersky Secure Mail Gateway, version 1.1.2.30,
 bases: 2024/07/10 05:16:00 #25942711
X-KSMG-AntiVirus-Status: Clean, skipped
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=t-argos.ru; s=mail; 
 t=1720615302; bh=TMMii64hLBF2fPDulrY0mamojXuv/hUwycAgbvgPCVE=;
 h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type;
 b=tAZqzLe8/E1Qunux37pPDHSj9VIi+92RRuKI3olX8dDF4gl1qSY9P6ZmTU4k9VSbh
 MR47HzSNFig1fWyezAKHFBdaTtdQ4frKtnMsm9Vr/u7R7I63mLm1AZa+Kgj18YVt5c
 IRJ9TtVk3dza1UanVYuTWvED4/jsiP9DVPjHkPMgtwriCre3zfAO9aeVGNI9/ndgBb
 epld8A3XoznXHWlj3TSQ7pzmBRnpTio4d9dF8jCtJQM4TLK2jDF81iSya4NN9h0uom
 YhX/A9cByLxDvf7aczvobBUxKXo+QO4ISJt1yZrqPQC+sUaUFr53G9ChUumMgRCe5q
 fy2PmGBbKLJ/g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=t-argos.ru
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=t-argos.ru header.i=@t-argos.ru header.a=rsa-sha256
 header.s=mail header.b=tAZqzLe8
Subject: [Intel-wired-lan] [PATCH net-next v4] ice: Adjust over allocation
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

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Aleksandr Mishin <amishin@t-argos.ru>
---
v4:
  - Remove Suggested-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
  - Add Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
    (https://lore.kernel.org/all/6d8ac0cf-b954-4c12-8b5b-e172c850e529@intel.com/)
v3: https://lore.kernel.org/all/20240708182736.8514-1-amishin@t-argos.ru/
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

