Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B348EAE5A70
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jun 2025 05:22:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6A59560A3C;
	Tue, 24 Jun 2025 03:22:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JJoXdC0xhVLY; Tue, 24 Jun 2025 03:22:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EAD4860AA9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750735328;
	bh=kzjGhNmhv1uGLHkWQfch6KAFBFsSDJoKTBbg6d7Rkps=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=iUGTGYunxjEXPCLN8gLl1VMtJsPCHMStrer/6AcVMsQfiXlMDWgK3a2CKfjVD4NG2
	 UqTa6otf2Qs3vsmkorcbDxhkZjfFTbTCh/AzIxE+PQllZtLONh6rIY8tKN1CiVSywN
	 4+einJjGbLLQlEidcPDOJhCGbPmMmEBHE3QqD9sp1TJ7LaGc5Vn+i/Bmfj5sRAHBFO
	 SOInABugT3NdwjYIbhle3GFk9nGdDzxOP33WQnnCiUBsVMnFwu8/WG0IWcpzlPJnw2
	 wqRAyvlvq5vaTeoO4da2GO0BH5seo7ruHpzDF3scFsuE2YFQNxmLCoQXaMkNH7wrix
	 ngt4OzK3am8OQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id EAD4860AA9;
	Tue, 24 Jun 2025 03:22:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 68BB8154
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 03:22:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6037F60AA9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 03:22:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ujlI5wV2yDsg for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jun 2025 03:22:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=162.243.126.186;
 helo=mail-vip.corpemail.net; envelope-from=chuguangqing@inspur.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7AFCC60895
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7AFCC60895
Received: from mail-vip.corpemail.net (mail-vip.corpemail.net
 [162.243.126.186])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7AFCC60895
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 03:22:01 +0000 (UTC)
Received: from jtjnmail201612.home.langchao.com
 by unicom145.biz-email.net ((D)) with ASMTP (SSL) id 202506241100315435;
 Tue, 24 Jun 2025 11:00:31 +0800
Received: from localhost.localdomain.com (10.94.6.249) by
 jtjnmail201612.home.langchao.com (10.100.2.12) with Microsoft SMTP Server id
 15.1.2507.57; Tue, 24 Jun 2025 11:00:30 +0800
From: chuguangqing <chuguangqing@inspur.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub
 Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
CC: <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, chuguangqing <chuguangqing@inspur.com>
Date: Tue, 24 Jun 2025 10:58:53 +0800
Message-ID: <20250624025915.1692-2-chuguangqing@inspur.com>
X-Mailer: git-send-email 2.43.5
In-Reply-To: <20250624025915.1692-1-chuguangqing@inspur.com>
References: <3bf6df3b-affe-4f10-8b05-29f3393d19e0@intel.com>
 <20250624025915.1692-1-chuguangqing@inspur.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.94.6.249]
tUid: 2025624110031415c3819e8b85ca5c6989f831ba4e68d
X-Abuse-Reports-To: service@corp-email.com
Abuse-Reports-To: service@corp-email.com
X-Complaints-To: service@corp-email.com
X-Report-Abuse-To: service@corp-email.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=inspur.com
Subject: [Intel-wired-lan] [PATCH 0/1] check the ioremap return value first
 (supplementary CC)
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

Always check ioremap() return value  before use.

chuguangqing (1):
  ixgbe: check the ioremap return value first

 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
2.43.5

