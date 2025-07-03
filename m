Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A167BAF70A9
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Jul 2025 12:40:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E8EDD60E0E;
	Thu,  3 Jul 2025 10:40:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2CKGDK3ipwlr; Thu,  3 Jul 2025 10:40:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 59E2460D9D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751539201;
	bh=zqyqcmzFSBUDYjqKQmxZony3sGHurYaKa67pNQBSGA4=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=soBzcg8m/Fo4KExTf4gEhEQU4CzcKHbNEhhFfTFFapbwHp0QpUFbi/YeongElpfSU
	 SijQC1x4GfUsigQknGd9c8yY1uM4l2megFOXm1XF9zII4QmqslkFe8vI3gC10OwLtg
	 8qJLVKR4wEYhxv2RA6o5OculzVNEgRG1nOigC9pC6tDy/eRC4BEKOxjdruxrut7OdN
	 9upPBlTWXg7Ob6aSpU4LYh5DUH5Zn82it7R5UVGrArOf1Id4JyUYGNQem/+Npoo8he
	 +K/JDyXZx88DQCHqZ2tSUeMrWo8i2wSd2cYCF9MPxYFop3GNe7bzfP2wdAFUjUIxly
	 u9VfBa70Jgn1w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 59E2460D9D;
	Thu,  3 Jul 2025 10:40:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3E88C75
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Jul 2025 10:39:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3903840595
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Jul 2025 10:39:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4NXiFGttEnlr for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Jul 2025 10:39:57 +0000 (UTC)
X-Greylist: delayed 1812 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 03 Jul 2025 10:39:56 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C84ED40513
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C84ED40513
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=220.197.31.5;
 helo=m16.mail.163.com; envelope-from=haoxiang_li2024@163.com;
 receiver=<UNKNOWN> 
Received: from m16.mail.163.com (m16.mail.163.com [220.197.31.5])
 by smtp4.osuosl.org (Postfix) with ESMTP id C84ED40513
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Jul 2025 10:39:55 +0000 (UTC)
Received: from icess-ProLiant-DL380-Gen10.. (unknown [])
 by gzga-smtp-mtada-g0-0 (Coremail) with SMTP id
 _____wDXz5_hUmZo74LVCA--.57467S4; 
 Thu, 03 Jul 2025 17:52:34 +0800 (CST)
From: Haoxiang Li <haoxiang_li2024@163.com>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Haoxiang Li <haoxiang_li2024@163.com>,
 stable@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Thu,  3 Jul 2025 17:52:32 +0800
Message-Id: <20250703095232.2539006-1-haoxiang_li2024@163.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID: _____wDXz5_hUmZo74LVCA--.57467S4
X-Coremail-Antispam: 1Uf129KBjvdXoWruF1fXw1Duw47JFyDWr1xKrg_yoWkKFg_uw
 4FvFyfArWUKr1F9w4YkF47Z34FyF1kXFykua12k39Y9w15GryDXa4DZr9xXr4qgF1DuFnx
 Ars3JasFyFy2qjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
 9fnUUvcSsGvfC2KfnxnUUI43ZEXa7sRKiiSDUUUUU==
X-Originating-IP: [211.71.28.34]
X-CM-SenderInfo: xkdr5xpdqjszblsqjki6rwjhhfrp/xtbBEgB-bmhmSx75sAAAsR
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=163.com; 
 s=s110527; h=From:To:Subject:Date:Message-Id:MIME-Version; bh=zq
 yqcmzFSBUDYjqKQmxZony3sGHurYaKa67pNQBSGA4=; b=bAHTcEfKSMHDjwiSZg
 hJQ1k1nBR2UbZQb12xuRQuvCRQ9Xd9enEtlTpuU7z7n35kSLjZdBvnz2rD+e/ads
 0g3RaJ0Ewzwe+dgE76P5mbh4YmVGgUTsIGrL4i6Co093ISlPjAWJJE1/9RuZ7pss
 5zW9hO6D75dXQQmvKzQxzCc3U=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=163.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=163.com header.i=@163.com header.a=rsa-sha256
 header.s=s110527 header.b=bAHTcEfK
Subject: [Intel-wired-lan] [PATCH v2] ice: Fix a null pointer dereference in
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

Fixes: c76488109616 ("ice: Implement Dynamic Device Personalization (DDP) download")
Cc: stable@vger.kernel.org
Signed-off-by: Haoxiang Li <haoxiang_li2024@163.com>
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
Changes in v2:
- modify the Fixes commit number. Thanks, Michal!
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

