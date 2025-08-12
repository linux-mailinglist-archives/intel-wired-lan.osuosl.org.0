Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 137EBB21FF3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Aug 2025 09:55:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B733641F66;
	Tue, 12 Aug 2025 07:55:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rugpb_iQLR9e; Tue, 12 Aug 2025 07:55:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8F19841F6C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754985314;
	bh=EstXPrrERUXhncRMs7vfL9VNUeOreUPoK6OsUT3vWZ0=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=7lXUtV6lZZqxrTp722B7YyUFjKiiS4wjCgZl1AmlMVK2edw0Gei1rlbauwkw1nzzd
	 4jcES9UW4G8c0UFl2+hS5ZSb0Rt81x1yOb54wIz6pVPhaJgt03El2rY4C72mBn5+8D
	 fi9YWzQVaosSmohQ4JzKjejKi3lwppz7QW+o30TbyRlp18a/WdsSt8mpUQ6MQ+wFZN
	 0FZ4ehyMejPzUXdcn6vmQAEBBowtUG4AOFN3VU4e0Pjdhfpr6Xz/lD8S9IBLdwIRKU
	 zI0Q/RiHlqj30GnEBDuEn5bpmc/+C9E3ydj4VYKKMih100YHUhV3k+Wp3znQTJKKcD
	 bS0Z/f5MAnoPA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8F19841F6C;
	Tue, 12 Aug 2025 07:55:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 85FE2158
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 07:55:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7824041EE5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 07:55:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oMQh-5ui9LnO for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Aug 2025 07:55:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::634; helo=mail-pl1-x634.google.com;
 envelope-from=kerneljasonxing@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9227A40F08
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9227A40F08
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com
 [IPv6:2607:f8b0:4864:20::634])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9227A40F08
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 07:55:11 +0000 (UTC)
Received: by mail-pl1-x634.google.com with SMTP id
 d9443c01a7336-242ff06b130so3655225ad.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 00:55:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1754985311; x=1755590111;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=EstXPrrERUXhncRMs7vfL9VNUeOreUPoK6OsUT3vWZ0=;
 b=ML+zzCYfpbRbP6S+omu4W+Ux3W5tqAXR8hbRR9xau+z0qsdip48P1LcrwEbqx2mmqW
 ZqVnZvmXnoFmF8STDwu4xAn0m44L3TF8lm1iT/xMh9FRIt967YKE/+BMlKbo9NJGdkuk
 dSTlT8b+zKP26ePrexOwfYjwOzJXUPAgiilOCbBnDdQT16Prley/RNJSmgWpFwgapxhX
 W0kxS32RSVSnlQ1QUt7A3ObREWLExDk4bIH4QoqIBabE6SnAPt1yChdqYXZzOhWVleHU
 CFsAab/jh8ClQXFwcEkpkYbqPOJrRfGKyGS3a+yDAMlpUVn1EkFBeiOESRMWBkTBKpMV
 gh+Q==
X-Gm-Message-State: AOJu0Yx9HamzDHer44vPe9U3vodmxvo89lMYq84F8GekbTj+XXbhO0f5
 /p+mSJnEQTktv+0ZJXegQI23riSNUseO9oD6+ZBdGW4IppcHosCAZhi7
X-Gm-Gg: ASbGncs8YoVeko7vCroxA/dLZr2qghTCcRgh2n+g0kpsZCjFC8dhqjB1Oj5F76nBnLV
 FXjsqJmjNvX0lXl/G/FiX8QYTXgZJfJ7GgPu1X+Ixy0hUGn87nSM5rtjI2AfSeJ5EW0E4lUcQd+
 /uTpaR1EF46M5Bhyr8FjdcWLpZrMd/kxHA6zA7S1vWPt4P+OXmxzW+457WK9BbaVk9TLaBgeSCy
 S05uZGIDCI7cZR6eTHvZIoHncftHooTM31xm8SPrn/+Ian9L0bZxeEDYrwHv1NWqWoC8NRzJAab
 4c68MN1HwIpfpvf5Uu5a372aFO8bTe8IAK4F9shfiHqhM660m0GXY1yGAChmIvLebJ6FXDJeips
 jsApaONORYFvtZTpDQdiBaQX1sUaqS8+gWmrUdplbUKZ1F6xftR6zdtYXbOaZ2eA5joAzsg==
X-Google-Smtp-Source: AGHT+IEEvxfIOwJmDYTr2qxi+cu180YYS+zstj+NKAdeIK2ciZcGCc+lfoTc6bhGzHHgzTk1QUBsyg==
X-Received: by 2002:a17:903:3583:b0:240:3e73:6df with SMTP id
 d9443c01a7336-242c203d426mr184129105ad.14.1754985310849; 
 Tue, 12 Aug 2025 00:55:10 -0700 (PDT)
Received: from KERNELXING-MB0.tencent.com ([43.132.141.21])
 by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-b422bac12d4sm24651320a12.32.2025.08.12.00.55.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Aug 2025 00:55:10 -0700 (PDT)
From: Jason Xing <kerneljasonxing@gmail.com>
To: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, horms@kernel.org, andrew+netdev@lunn.ch,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, sdf@fomichev.me,
 larysa.zaremba@intel.com, maciej.fijalkowski@intel.com
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Jason Xing <kernelxing@tencent.com>
Date: Tue, 12 Aug 2025 15:55:01 +0800
Message-Id: <20250812075504.60498-1-kerneljasonxing@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1754985311; x=1755590111; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=EstXPrrERUXhncRMs7vfL9VNUeOreUPoK6OsUT3vWZ0=;
 b=jQO+E+KJHa0aYGhuY6LRULmA7FYd7c165u5RP7+cMlZ+7yO/SaUcfhMgULoBZh6q6d
 xUA+pREiYph2IE4zwBGDETQvf43UskVTNcaprE5p7CdOvPz95ZO11mqoGPmt76sXN232
 hRH/ivtxbGXFBEdZA2X7/daeSZM2Q0tibvVp/pm1Vg9aswVMuvFkBqW63oqC/nS63SgU
 YvXzF9dC9k8h7d6N1rErhr8r7YnAWFTxj6L16xEnRHCrxc9LZY8Wgg3LlRi5j9ZN+ycB
 O1RLD4KW0nodIAqloecbn0rGAnfOL9vKVnrgeJ+luykm3ZTwZdZvzI/H+Afm7pQhU8e9
 7vgQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=jQO+E+KJ
Subject: [Intel-wired-lan] [PATCH iwl-net v2 0/3] ixgbe: xsk: a couple of
 changes for zerocopy
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

From: Jason Xing <kernelxing@tencent.com>

The series mostly follows the development of i40e/ice to improve the
performance for zerocopy mode in the tx path.

---
V2
Link: https://lore.kernel.org/intel-wired-lan/20250720091123.474-1-kerneljasonxing@gmail.com/
1. remove previous 2nd and last patch.

Jason Xing (3):
  ixgbe: xsk: remove budget from ixgbe_clean_xdp_tx_irq
  ixgbe: xsk: use ixgbe_desc_unused as the budget in ixgbe_xmit_zc
  ixgbe: xsk: support batched xsk Tx interfaces to increase performance

 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |   2 +-
 .../ethernet/intel/ixgbe/ixgbe_txrx_common.h  |   2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c  | 113 ++++++++++++------
 3 files changed, 76 insertions(+), 41 deletions(-)

-- 
2.41.3

