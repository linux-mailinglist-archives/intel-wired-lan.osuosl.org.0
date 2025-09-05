Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BE0BB45BFA
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Sep 2025 17:13:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0E34E60E0B;
	Fri,  5 Sep 2025 15:13:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AkKNwhh2RWfR; Fri,  5 Sep 2025 15:13:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4365360E18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757085235;
	bh=TS2c4+8QcxzYCQJ9dOwqNrRRCyzgODztpgqxHCDceTQ=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=6RwDvFVlVfTMcvTmrUmIxR5yUB5QYvqW4j5SHfk+ERzVXenNPL133oH3/aHg8yPZt
	 mTyTjHD+vW2URKixKNXWBjHLCA2QykKHGT2CQFPzcZiJ/i299yGIMQ3QQ0h9Kg3og6
	 yBgQWqpxVEE/EMnHVmGKOrAhQJJHcamgR5qPZl5R7GkfrY23X4wfwZS5d3AnKuDt1g
	 Au2qN4GL6iaQ2M2lUU2i+bW88DAqpVX8EMKvcgEnVm5lJj3gOZHkRIazi1jsTj7gwn
	 67hNdXHx9brYYzpRfOWpiTKDopSKLvUUguPf2TYK0UEVOz7NR/DAfgksQbRU8m1utY
	 91b++4NSJ2OLg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4365360E18;
	Fri,  5 Sep 2025 15:13:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 2C967B69
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 03:41:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 13526403A3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 03:41:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XMEBsJBwDhYX for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Sep 2025 03:41:11 +0000 (UTC)
X-Greylist: delayed 1810 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 05 Sep 2025 03:41:08 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A22A54026E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A22A54026E
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=220.197.31.4;
 helo=m16.mail.163.com; envelope-from=liuqiangneo@163.com; receiver=<UNKNOWN> 
Received: from m16.mail.163.com (m16.mail.163.com [220.197.31.4])
 by smtp4.osuosl.org (Postfix) with ESMTP id A22A54026E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 03:41:07 +0000 (UTC)
Received: from neo-TianYi510Pro-15ICK.. (unknown [])
 by gzga-smtp-mtada-g1-4 (Coremail) with SMTP id
 _____wAXNKwdUbpo_djoGA--.23003S2; 
 Fri, 05 Sep 2025 10:55:26 +0800 (CST)
From: liuqiangneo@163.com
To: anthony.l.nguyen@intel.com,
	przemyslaw.kitszel@intel.com
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Qiang Liu <liuqiang@kylinos.cn>
Date: Fri,  5 Sep 2025 10:55:15 +0800
Message-ID: <20250905025519.58196-1-liuqiangneo@163.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID: _____wAXNKwdUbpo_djoGA--.23003S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7ZF13XryUWr17ur17JFykGrg_yoW8Gr4rpF
 W8u3sIgry3XF45Way8Xay5Jr90ga92vw4rGFyDAw4rZw1DCrsrGwn7t3y0yFyxZrW0vF1I
 vF45Aws5C3Z3J3JanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07UGXd8UUUUU=
X-Originating-IP: [116.128.244.169]
X-CM-SenderInfo: 5olx1xxdqj0vrr6rljoofrz/1tbishG-YWi6TaZSWAAAsO
X-Mailman-Approved-At: Fri, 05 Sep 2025 15:13:53 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=163.com; 
 s=s110527; h=From:To:Subject:Date:Message-ID:MIME-Version; bh=TS
 2c4+8QcxzYCQJ9dOwqNrRRCyzgODztpgqxHCDceTQ=; b=nBWNsNyyuSn5F3z0s/
 QzuJv8Nrbaah8YFsYpiXBbpyF3JgDSGG9FNRwAxBqGD7H036I9Q9aK82x5K9KdHu
 +6UDW257J3VuIKMeyotgPpehQblGttdcVyScOdaRQHYz49Q9OVtUZlMcKyKtr3hY
 vhtdpt64LiYq5OfcpMbbNZK/s=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=163.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=163.com header.i=@163.com header.a=rsa-sha256
 header.s=s110527 header.b=nBWNsNyy
Subject: [Intel-wired-lan] [PATCH] ixgbe: Remove self-assignment code
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

From: Qiang Liu <liuqiang@kylinos.cn>

After obtaining the register value via raw_desc,
redundant self-assignment operations can be removed.

Signed-off-by: Qiang Liu <liuqiang@kylinos.cn>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
index bfeef5b0b99d..6efedf04a963 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
@@ -143,18 +143,14 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *hw,
 
 	/* Read sync Admin Command response */
 	if ((hicr & IXGBE_PF_HICR_SV)) {
-		for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
+		for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++)
 			raw_desc[i] = IXGBE_READ_REG(hw, IXGBE_PF_HIDA(i));
-			raw_desc[i] = raw_desc[i];
-		}
 	}
 
 	/* Read async Admin Command response */
 	if ((hicr & IXGBE_PF_HICR_EV) && !(hicr & IXGBE_PF_HICR_C)) {
-		for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
+		for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++)
 			raw_desc[i] = IXGBE_READ_REG(hw, IXGBE_PF_HIDA_2(i));
-			raw_desc[i] = raw_desc[i];
-		}
 	}
 
 	/* Handle timeout and invalid state of HICR register */
-- 
2.43.0

