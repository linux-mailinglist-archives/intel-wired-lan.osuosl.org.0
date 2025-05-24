Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0190FAC506D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 May 2025 16:02:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3455860B42;
	Tue, 27 May 2025 14:02:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O4dqCpW9LW01; Tue, 27 May 2025 14:02:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5FF5B60B4A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748354531;
	bh=Hu286s57mP1NPRtFysQLi/doib7qC4IDVyR6e/Hyw78=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=WgxG+8F7t15jQqT74+59MHEoofDNyjIMkLjzVTBHk+kpLv0356YIGNcrcVQosKGiE
	 g4g4/UjxGhCxduDPan6PdxlLlGnhIIAfsMmz1FLx8itMewDykR99kAFoTB+zwe9cWH
	 peFaNiHOLohh9fCZmxwpvnin9WakGwAvvkGA1ZINaMb9BSB1qtaEYcetMgU1GbYgWk
	 YNsbKZmmjuVqDcQO8gMJNhKCmk+RIjTBBiUwzuwuU0cyNOYUjXB6+hS9ZlhejHe7LR
	 o0+RBlZtA8je7/J6Qjgu6OtwDkFycg5Gv5ZosVuXXHpUxkOElcTglfVSuoyubo+1lY
	 tIg/MofAnukNQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5FF5B60B4A;
	Tue, 27 May 2025 14:02:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id A6DF0119
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 May 2025 07:43:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8D5F74014E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 May 2025 07:43:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8I4nODQfxFrH for <intel-wired-lan@lists.osuosl.org>;
 Sat, 24 May 2025 07:43:08 +0000 (UTC)
X-Greylist: delayed 932 seconds by postgrey-1.37 at util1.osuosl.org;
 Sat, 24 May 2025 07:43:06 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D2A6F40419
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D2A6F40419
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=220.197.31.2;
 helo=m16.mail.163.com; envelope-from=haoxiang_li2024@163.com;
 receiver=<UNKNOWN> 
Received: from m16.mail.163.com (m16.mail.163.com [220.197.31.2])
 by smtp2.osuosl.org (Postfix) with ESMTP id D2A6F40419
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 May 2025 07:43:06 +0000 (UTC)
Received: from icess-ProLiant-DL380-Gen10.. (unknown [])
 by gzga-smtp-mtada-g0-1 (Coremail) with SMTP id
 _____wCH2R_DdDFow8_GDg--.1286S4; 
 Sat, 24 May 2025 15:27:00 +0800 (CST)
From: Haoxiang Li <haoxiang_li2024@163.com>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, sergey.temerkhanov@intel.com
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Haoxiang Li <haoxiang_li2024@163.com>,
 stable@vger.kernel.org
Date: Sat, 24 May 2025 15:26:58 +0800
Message-Id: <20250524072658.3586149-1-haoxiang_li2024@163.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID: _____wCH2R_DdDFow8_GDg--.1286S4
X-Coremail-Antispam: 1Uf129KBjvdXoWruF1fXw1Duw47JFyftFyrJFb_yoWDJrcE9w
 4SvFyfJrW5KryFv3yYkr47Z34SyF1DXr9Y9ay2939a9wnxGryDXwnrZr93Xr47WFyDuF9r
 Ars7ta42va42qjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
 9fnUUvcSsGvfC2KfnxnUUI43ZEXa7sRNvtCUUUUUU==
X-Originating-IP: [183.174.60.14]
X-CM-SenderInfo: xkdr5xpdqjszblsqjki6rwjhhfrp/xtbB0g9TbmgtChXmaQABs0
X-Mailman-Approved-At: Tue, 27 May 2025 14:02:10 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=163.com; 
 s=s110527; h=From:To:Subject:Date:Message-Id:MIME-Version; bh=Hu
 286s57mP1NPRtFysQLi/doib7qC4IDVyR6e/Hyw78=; b=kTo4zrevTgjipbrONC
 5E8JWrSIjZ5R3+wDOjHE7BVrCcnQThZgLl3PBWAHEBXfId7ntFqu5S733kmCpxo8
 bGTNCao/v0r58BcWLXaVHWxfTz7rF09XECe4bOjHFe7/O5H9v04qoC8VvIyiCe9e
 7/D7hV+M1EOnFW31KUxtdAWPI=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=163.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=163.com header.i=@163.com header.a=rsa-sha256
 header.s=s110527 header.b=kTo4zrev
Subject: [Intel-wired-lan] [PATCH] ice: Fix a null pointer dereference in
 ice_copy_and_init_pkg()
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

Add check for the return value of devm_kmemdup()
to prevent potential null pointer dereference.

Fixes: 2ffd87d38d6b ("ice: Move support DDP code out of ice_flex_pipe.c")
Cc: stable@vger.kernel.org
Signed-off-by: Haoxiang Li <haoxiang_li2024@163.com>
---
 drivers/net/ethernet/intel/ice/ice_ddp.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.c b/drivers/net/ethernet/intel/ice/ice_ddp.c
index 59323c019544..351824dc3c62 100644
--- a/drivers/net/ethernet/intel/ice/ice_ddp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ddp.c
@@ -2301,6 +2301,8 @@ enum ice_ddp_state ice_copy_and_init_pkg(struct ice_hw *hw, const u8 *buf,
 		return ICE_DDP_PKG_ERR;
 
 	buf_copy = devm_kmemdup(ice_hw_to_dev(hw), buf, len, GFP_KERNEL);
+	if (!buf_copy)
+		return ICE_DDP_PKG_ERR;
 
 	state = ice_init_pkg(hw, buf_copy, len);
 	if (!ice_is_init_pkg_successful(state)) {
-- 
2.25.1

