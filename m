Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 550AE92A56B
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Jul 2024 17:12:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CC8EA40B05;
	Mon,  8 Jul 2024 15:12:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YjQY1Z_RaccK; Mon,  8 Jul 2024 15:12:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D600840A9E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720451566;
	bh=9OVsh85Dfs0XARwMw+sWdfga+OlFbW2bccJIHpyv98E=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=gwZLfsiV+Jz63S2XLJS2l/P0DP1dmifB9VFp/PQU9PbDtAcEte2pvqPCLT/2/dk76
	 MPhT4YILdfLRSngGYmhDjrOZmE6Ua8MXDOkQhKVBUfi+dNrZyu/tvbGbXIeZmvhmUg
	 XKsxMO5G3fXL1imYjffAhqfjKqlnAv0dtJp/cLjqcIKXgnHCSntORhZ7U4nq+b3bgn
	 470jIxuIOcPtGcE0Q3AlPj9NoQoRt//xbfEsnLsoMiIZ/jeh5rCbPAUDQPUx8TiDwE
	 29uJTukKKiOgwbfg91lwqvCl9SxQEbBFaGk+fHd11/eFGvS1ZON0set0PO6r0Il7VF
	 T8SwSKveszLfw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D600840A9E;
	Mon,  8 Jul 2024 15:12:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C700B1BF3B0
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Jul 2024 14:08:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AC62981213
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Jul 2024 14:08:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AQOA6IOFCrkL for <intel-wired-lan@lists.osuosl.org>;
 Sat,  6 Jul 2024 14:08:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=109.73.34.58;
 helo=mx1.t-argos.ru; envelope-from=amishin@t-argos.ru; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0967B811FF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0967B811FF
Received: from mx1.t-argos.ru (mx1.t-argos.ru [109.73.34.58])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0967B811FF
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Jul 2024 14:08:00 +0000 (UTC)
Received: from mx1.t-argos.ru (localhost [127.0.0.1])
 by mx1.t-argos.ru (Postfix) with ESMTP id 66274100003;
 Sat,  6 Jul 2024 17:07:12 +0300 (MSK)
Received: from mx1.t-argos.ru.ru (ta-mail-02.ta.t-argos.ru [172.17.13.212])
 by mx1.t-argos.ru (Postfix) with ESMTP;
 Sat,  6 Jul 2024 17:05:58 +0300 (MSK)
Received: from localhost.localdomain (172.17.215.5) by ta-mail-02
 (172.17.13.212) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Sat, 6 Jul 2024
 17:05:37 +0300
From: Aleksandr Mishin <amishin@t-argos.ru>
To: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
Date: Sat, 6 Jul 2024 17:05:18 +0300
Message-ID: <20240706140518.9214-1-amishin@t-argos.ru>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [172.17.215.5]
X-ClientProxiedBy: ta-mail-02.ta.t-argos.ru (172.17.13.212) To ta-mail-02
 (172.17.13.212)
X-KSMG-Rule-ID: 1
X-KSMG-Message-Action: clean
X-KSMG-AntiSpam-Lua-Profiles: 186347 [Jul 06 2024]
X-KSMG-AntiSpam-Version: 6.1.0.4
X-KSMG-AntiSpam-Envelope-From: amishin@t-argos.ru
X-KSMG-AntiSpam-Rate: 0
X-KSMG-AntiSpam-Status: not_detected
X-KSMG-AntiSpam-Method: none
X-KSMG-AntiSpam-Auth: dkim=none
X-KSMG-AntiSpam-Info: LuaCore: 21 0.3.21
 ebee5449fc125b2da45f1a6a6bc2c5c0c3ad0e05, {Tracking_uf_ne_domains},
 {Tracking_from_domain_doesnt_match_to}, mx1.t-argos.ru.ru:7.1.1;
 d41d8cd98f00b204e9800998ecf8427e.com:7.1.1; 127.0.0.199:7.1.2;
 t-argos.ru:7.1.1; lore.kernel.org:7.1.1, FromAlignment: s
X-MS-Exchange-Organization-SCL: -1
X-KSMG-AntiSpam-Interceptor-Info: scan successful
X-KSMG-AntiPhishing: Clean, bases: 2024/07/06 13:56:00
X-KSMG-AntiVirus: Kaspersky Secure Mail Gateway, version 1.1.2.30,
 bases: 2024/07/06 10:24:00 #25877639
X-KSMG-AntiVirus-Status: Clean, skipped
X-Mailman-Approved-At: Mon, 08 Jul 2024 15:12:42 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=t-argos.ru; s=mail; 
 t=1720274832; bh=9OVsh85Dfs0XARwMw+sWdfga+OlFbW2bccJIHpyv98E=;
 h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type;
 b=P1QjhmEFyxTltzs+6NgTumtEWj/CYrYpIm4MiwIBU0KFreARwmCfwdXKMUwC626tB
 KLvQiOupHZ6bkGro/LvBD1xo6EfMjkvuUJyF64BksrlnTRblRLmckCpe4IjtMKOkhB
 fDl11hjti+Z2i9LJZeG+ieAvIpt5Mg+E8dqb9PMP6nAvtKY4EEbVxOAVsjOk3h9qow
 MEdl5EusmbVbOQDr10+/bAwAorq5tMXV5qovEhkT2PTxWe4I8iwsVJsFXPYmokf6WJ
 x1BqhMooHVFABEyNBmcRHkGoD+p7GRqOH201HhEj/IXJcT+ujc2VWKi61FoBRL+S5r
 LzwXtHEg6UuTQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=t-argos.ru
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=t-argos.ru header.i=@t-argos.ru header.a=rsa-sha256
 header.s=mail header.b=P1QjhmEF
Subject: [Intel-wired-lan] [PATCH net-next v2] ice: Adjust over allocation
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
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Aleksandr Mishin <amishin@t-argos.ru>, Simon Horman <horms@kernel.org>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In ice_sched_add_root_node() and ice_sched_add_node() there are calls to
devm_kcalloc() in order to allocate memory for array of pointers to
'ice_sched_node' structure. But in this calls there are 'sizeof(*root)'
instead of 'sizeof(root)' and 'sizeof(*node)' instead of 'sizeof(node)'.
So memory is allocated for structures instead pointers. This lead to
significant over allocation of memory.

Adjust over allocation of memory by correcting devm_kcalloc() parameters.

Found by Linux Verification Center (linuxtesting.org) with SVACE.

Suggested-by: Simon Horman <horms@kernel.org>
Signed-off-by: Aleksandr Mishin <amishin@t-argos.ru>
---
v2:
  - Update comment, remove 'Fixes' tag and change the tree from 'net' to
    'net-next' as suggested by Simon
	(https://lore.kernel.org/all/20240706095258.GB1481495@kernel.org/)
v1: https://lore.kernel.org/all/20240705163620.12429-1-amishin@t-argos.ru/

 drivers/net/ethernet/intel/ice/ice_sched.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sched.c b/drivers/net/ethernet/intel/ice/ice_sched.c
index ecf8f5d60292..d8b6054f3436 100644
--- a/drivers/net/ethernet/intel/ice/ice_sched.c
+++ b/drivers/net/ethernet/intel/ice/ice_sched.c
@@ -28,9 +28,8 @@ ice_sched_add_root_node(struct ice_port_info *pi,
 	if (!root)
 		return -ENOMEM;
 
-	/* coverity[suspicious_sizeof] */
 	root->children = devm_kcalloc(ice_hw_to_dev(hw), hw->max_children[0],
-				      sizeof(*root), GFP_KERNEL);
+				      sizeof(root), GFP_KERNEL);
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
+					      sizeof(node), GFP_KERNEL);
 		if (!node->children) {
 			devm_kfree(ice_hw_to_dev(hw), node);
 			return -ENOMEM;
-- 
2.30.2

