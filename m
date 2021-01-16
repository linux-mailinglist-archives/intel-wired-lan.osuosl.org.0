Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 402622F8BCE
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 Jan 2021 07:14:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A5078874FC;
	Sat, 16 Jan 2021 06:13:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id adC4UzZs5keQ; Sat, 16 Jan 2021 06:13:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 18C8B874FE;
	Sat, 16 Jan 2021 06:13:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 998961BF861
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Jan 2021 06:13:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9033086E3C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Jan 2021 06:13:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k2VrD15vHFPz for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 Jan 2021 06:13:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com
 [209.85.215.172])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 974C386DBC
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Jan 2021 06:13:51 +0000 (UTC)
Received: by mail-pg1-f172.google.com with SMTP id g15so7416898pgu.9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Jan 2021 22:13:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=r6ZBFq9DkJZ2tpvGqG5+pJx56O4V/iX/AfXLlHPFg4Q=;
 b=EsSGgNod3bsqzTiIFYRjLKg90zqiIvQOvQ6nKwWid+ssFOEvw/lL7DRixQWv36E9bP
 Yu2j9Isf2B4iVPPXXXSn+VI0oQQWaFACgNzMnVLJf37nCOqldzkdCHP/0jIbGCzX2DCG
 uLyljBIi/1yyRMJi/uQgyzdZIYGAuryOtEJEAXz5gTRWlT37K4FcIlRfB2c7vZCPwDxB
 vqYSQFpYQCV/1MEUX34PSfUJAbVhIsUVs3qnULMWOEdtQtlEs7yUAEx+ITBXGCHIAnAL
 jR+4rw9coP28DLhRjLo66IkLT4DJcVBROUQzN4tXUH3bxkuYHEc7HnYc0U0Z9gbVAjU3
 94kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=r6ZBFq9DkJZ2tpvGqG5+pJx56O4V/iX/AfXLlHPFg4Q=;
 b=i+wHXOMFz6gO8ety5halEw9Cfm9IWWfnyaTndeyf6O4hGLsZN+6MDkzvhl5epZEihn
 kDx7MD2d9Dm2/o5dQPfs4XpUZGwM7Lq2Oqxf1yv9puGACf6M4035pZIe59bHhoFvcfWJ
 bcQHWApWz17jqnoCUvMEyL1gAgmfZDD1uniMrZwSqtLAa4/M+ppqxzE/kvq8uI6Xep6l
 Dep3qHcOvmotmMxIDRLvv+nLmVNEFAeJhQboQnQymOMlc5LWJCBrLnXlNoFDe51IGmg5
 EbOmLjDA99pdOW8YhaA6i0n/JN1OjdHWYMsbhoSaUgaQx3lEAn28VwM+bivXHhD/zzAD
 JeQg==
X-Gm-Message-State: AOAM532DA6xRIfeYDlB3y1dWEcEHpgU/P+Ii2SVT23x02gOJzl3hJekA
 FW7mCTvy4moWMOYKv89SYrQ=
X-Google-Smtp-Source: ABdhPJwCn1gNfstQ9YdIORANyi+qvRInI90IuWxV/fUbjrbKN+XnUU2pkBVpbVDOup2dxPTOta2UYA==
X-Received: by 2002:a65:460d:: with SMTP id v13mr16099601pgq.414.1610777630983; 
 Fri, 15 Jan 2021 22:13:50 -0800 (PST)
Received: from localhost ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id b13sm9933821pfi.162.2021.01.15.22.13.49
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 15 Jan 2021 22:13:50 -0800 (PST)
From: Xin Long <lucien.xin@gmail.com>
To: network dev <netdev@vger.kernel.org>,
	linux-sctp@vger.kernel.org
Date: Sat, 16 Jan 2021 14:13:36 +0800
Message-Id: <cover.1610777159.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.1.0
Subject: [Intel-wired-lan] [PATCH net-next 0/6] net: support SCTP CRC csum
 offload for tunneling packets in some drivers
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
Cc: Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>,
 Neil Horman <nhorman@tuxdriver.com>, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patchset introduces inline function skb_csum_is_sctp(), and uses it
to validate it's a sctp CRC csum offload packet, to make SCTP CRC csum
offload for tunneling packets supported in some HW drivers.

Xin Long (6):
  net: add inline function skb_csum_is_sctp
  net: igb: use skb_csum_is_sctp instead of protocol check
  net: igbvf: use skb_csum_is_sctp instead of protocol check
  net: igc: use skb_csum_is_sctp instead of protocol check
  net: ixgbe: use skb_csum_is_sctp instead of protocol check
  net: ixgbevf: use skb_csum_is_sctp instead of protocol check

 drivers/net/ethernet/intel/igb/igb_main.c         | 14 +-------------
 drivers/net/ethernet/intel/igbvf/netdev.c         | 14 +-------------
 drivers/net/ethernet/intel/igc/igc_main.c         | 14 +-------------
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c     | 14 +-------------
 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c | 14 +-------------
 drivers/net/ethernet/pensando/ionic/ionic_txrx.c  |  2 +-
 include/linux/skbuff.h                            |  5 +++++
 net/core/dev.c                                    |  2 +-
 8 files changed, 12 insertions(+), 67 deletions(-)

-- 
2.1.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
