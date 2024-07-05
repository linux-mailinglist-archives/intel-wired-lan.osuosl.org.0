Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 666B692A569
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Jul 2024 17:12:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6D83540576;
	Mon,  8 Jul 2024 15:12:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LDOOlb7pDQId; Mon,  8 Jul 2024 15:12:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1AE4B40A9E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720451564;
	bh=s+XlZT7Zau6TfDZLEbOwy3xPtGFBs9GZzuVmW0T8wrc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=twU1GTSkqZflW7VtGSUtcrnBUu6+SvsuScfEPH8RI+lW0cYnXtafLojIhqKX4JQ44
	 maYR30UjqVs/5rfaPjntTJLu9+HmSTMCjqliQFbE5jEzRgL8P2Ao5hQFU10WT1BwS+
	 Kiy4OGMJMD8s8xBxiUeTApYl6Uh23MAE+bEtrtiGed9MUTabZPuy7w6bpaDnbKKb4X
	 +O8Kq4uOHWdKW/RLkezTdDSdGb7/xKKDqWwbNWXqLdUc1MDsPnI8pcyXlohJsWEsiG
	 w6eZBXeJOq+FnH+A9MzM+i0MXQRXpmrd39RgoXvJiBBjlUsHMlGrf8Zj+GRudYk8iE
	 VYwgjo5zB+PzQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1AE4B40A9E;
	Mon,  8 Jul 2024 15:12:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 48CE71BF281
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jul 2024 16:48:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 342F34018A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jul 2024 16:48:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VujB7HVCtRc7 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Jul 2024 16:48:06 +0000 (UTC)
X-Greylist: delayed 552 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 05 Jul 2024 16:48:04 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8D7AC40175
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8D7AC40175
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=109.73.34.58;
 helo=mx1.t-argos.ru; envelope-from=amishin@t-argos.ru; receiver=<UNKNOWN> 
Received: from mx1.t-argos.ru (mx1.t-argos.ru [109.73.34.58])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8D7AC40175
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jul 2024 16:48:04 +0000 (UTC)
Received: from mx1.t-argos.ru (localhost [127.0.0.1])
 by mx1.t-argos.ru (Postfix) with ESMTP id 88AC9100002;
 Fri,  5 Jul 2024 19:38:02 +0300 (MSK)
Received: from mx1.t-argos.ru.ru (ta-mail-02.ta.t-argos.ru [172.17.13.212])
 by mx1.t-argos.ru (Postfix) with ESMTP;
 Fri,  5 Jul 2024 19:36:53 +0300 (MSK)
Received: from localhost.localdomain (172.17.215.5) by ta-mail-02
 (172.17.13.212) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Fri, 5 Jul 2024
 19:36:33 +0300
From: Aleksandr Mishin <amishin@t-argos.ru>
To: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
Date: Fri, 5 Jul 2024 19:36:20 +0300
Message-ID: <20240705163620.12429-1-amishin@t-argos.ru>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [172.17.215.5]
X-ClientProxiedBy: ta-mail-02.ta.t-argos.ru (172.17.13.212) To ta-mail-02
 (172.17.13.212)
X-KSMG-Rule-ID: 1
X-KSMG-Message-Action: clean
X-KSMG-AntiSpam-Lua-Profiles: 186342 [Jul 05 2024]
X-KSMG-AntiSpam-Version: 6.1.0.4
X-KSMG-AntiSpam-Envelope-From: amishin@t-argos.ru
X-KSMG-AntiSpam-Rate: 0
X-KSMG-AntiSpam-Status: not_detected
X-KSMG-AntiSpam-Method: none
X-KSMG-AntiSpam-Auth: dkim=none
X-KSMG-AntiSpam-Info: LuaCore: 21 0.3.21
 ebee5449fc125b2da45f1a6a6bc2c5c0c3ad0e05,
 {Tracking_from_domain_doesnt_match_to}, mx1.t-argos.ru.ru:7.1.1;
 t-argos.ru:7.1.1; 127.0.0.199:7.1.2;
 d41d8cd98f00b204e9800998ecf8427e.com:7.1.1, FromAlignment: s
X-MS-Exchange-Organization-SCL: -1
X-KSMG-AntiSpam-Interceptor-Info: scan successful
X-KSMG-AntiPhishing: Clean, bases: 2024/07/05 14:29:00
X-KSMG-AntiVirus: Kaspersky Secure Mail Gateway, version 1.1.2.30,
 bases: 2024/07/05 10:39:00 #25854340
X-KSMG-AntiVirus-Status: Clean, skipped
X-Mailman-Approved-At: Mon, 08 Jul 2024 15:12:42 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=t-argos.ru; s=mail; 
 t=1720197482; bh=s+XlZT7Zau6TfDZLEbOwy3xPtGFBs9GZzuVmW0T8wrc=;
 h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type;
 b=WCqWs5G9OjmuaIJuFPb2XKbdhfiBWqQmmy4zZlEiypH3kqWGlAyi62lgTBJXYB6OD
 ZKvz3TA7DYr9CH4EFXumApiQuFQH4Zj6fPV8F0on2/F+fMZep+79jKcDh5PSuyoxg4
 FdvLjlzk5IPvDbo/3ScBccRMFbEWxHOis7n+i+ySqNpzWMy1WHOlSDrkWU+HWPmxj9
 6mljpmwFq8ViLQp1oGjSaMMOzgmCbEwZxVgvqcZ7t4WUPeAGpF2EueKMwEUBzTRGA4
 qoIjkrd001ytwaMiCoUH/F7xsP6lOeuOcNuHhmXoUQMH0rPvWYDKtDXjsRbY0vgBT4
 VdMpoShmJMP3Q==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=t-argos.ru
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=t-argos.ru header.i=@t-argos.ru header.a=rsa-sha256
 header.s=mail header.b=WCqWs5G9
Subject: [Intel-wired-lan] [PATCH net] ice: Adjust memory overrun in
 ice_sched_add_root_node() and ice_sched_add_node()
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
 Aleksandr Mishin <amishin@t-argos.ru>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In ice_sched_add_root_node() and ice_sched_add_node() there are calls to
devm_kcalloc() in order to allocate memory for array of pointers to
'ice_sched_node' structure. But in this calls there are 'sizeof(*root)'
instead of 'sizeof(root)' and 'sizeof(*node)' instead of 'sizeof(node)'.
So memory is allocated for structures instead pointers. This lead to
significant memory overrun.
Looks like it was done for "coverity[suspicious_sizeof] workaround".

Adjust memory overrun by correcting devm_kcalloc() parameters.

Found by Linux Verification Center (linuxtesting.org) with SVACE.

Fixes: dc49c7723676 ("ice: Get MAC/PHY/link info and scheduler topology")
Signed-off-by: Aleksandr Mishin <amishin@t-argos.ru>
---
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

