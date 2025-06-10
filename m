Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 50EE5AD4030
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Jun 2025 19:15:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 31B6E6141E;
	Tue, 10 Jun 2025 17:15:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZOyhij42SCRv; Tue, 10 Jun 2025 17:15:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DFEC361447
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749575729;
	bh=OIpCecH4yJO034nC1LHMnR1mqJnd63DXTBjtuXwa8mc=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=UhGVN+A64Fv8JXK6FWzjUFiXUk62w1Z3NHBjw36LD+RaeXJYI90IDmc1jJX0KoL0X
	 dTvJ204sv3ffGHGqHJud5VaxEYq19KzIMiHSjst+GW782bc5LRgEWpd9EhFM5VPA6N
	 voly3KrF6w4ktqFnacVBI5bKgnECU2/x+43ADDgu6pGWd33jEp/Oq/Hc4Tm9813oRy
	 R6l+jTS2AmqQLVN7Q0P3cX1qLXDYLPLWr9yRuX95WBn5HeYVRiQhAc0/SPedwIVOb1
	 wTrNvdkHWAttRHTHxFhDq5GsDYKM3rz6keoEd9KcliVLtKooohZc8qfkoRClnB/4vr
	 V4mEI8x+5oNMQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DFEC361447;
	Tue, 10 Jun 2025 17:15:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 357711F2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jun 2025 17:15:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 27E5340227
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jun 2025 17:15:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Tn4r3IQV3_G8 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Jun 2025 17:15:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1033; helo=mail-pj1-x1033.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 928964000B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 928964000B
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com
 [IPv6:2607:f8b0:4864:20::1033])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 928964000B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jun 2025 17:15:27 +0000 (UTC)
Received: by mail-pj1-x1033.google.com with SMTP id
 98e67ed59e1d1-311d5fdf1f0so4786582a91.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jun 2025 10:15:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1749575727; x=1750180527;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=OIpCecH4yJO034nC1LHMnR1mqJnd63DXTBjtuXwa8mc=;
 b=s58hX/jIbCHciyuNrHIR83XMoz83+y+YDCAQL87SoaprO4OBya6aj7pmQcWfLEq8+o
 jieEErKyxldZlcSy1tXXSkTneMWxhUvhn2ZNSNRPhtTe2cOlP9CCFFtlaYBNJ5g7cI5M
 axJVX05FYhM7oKOnMM4IN3JIBL6Fzf24zVWlIrFdm4vU4L/xNz8xg3baHvM8YrZ7XbN5
 pueQsdobMRzO4RzmEDxhdm6Wh8xTXuFXZABZ/FnYUy4JaIoZEuxEq6vOrgTDh05QnJAz
 ZoiBlez+qlayrAXgWEDn3BeQqg4FhCNlAHLe292hP+K5l0SffWEYbBXMfC2bvioCIgFc
 Evxw==
X-Forwarded-Encrypted: i=1;
 AJvYcCU2z6N7F49OsbfE9zwmXBoilOHK4ia4v5UxYkYQHodrVESurxAP5274ddayGaniWRDKRv5Kbtq2JNYSfy/lpIs=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzFMmzT6vJ3G55ReR8CwC7Jg7UA/13GdzuBcRlbz4wQQKLE1X0m
 Udsqq3Hfer3910llv4bqY00fKkKgIV3rEZB+VbSMJNW7b0H+eTY6u/M=
X-Gm-Gg: ASbGncsH3x8oWb7rwrRXPTIfIxA/o0BKudgT8uE0Ajtz/mUXhwX9QZdnMeAHFTLV3YB
 zElQcozhD4J2oI6dajI0O9e4TTzVKLtvRYO+qxK9ecOtXLPzTMc5X2S3QB45Owe0f3E9RTaCDCh
 E0DFsiSbyIX4vub0Ylw68YNBFuMSD73EYq2zD4fT2/oj/FP4SwjZQfb7rZR2bTWx6cR6X5UgfrD
 70qUwfjJ+3tN4Zt1YzbU8tO2LsN/V8FXkkrjteb2cxkmcm8IrFb9cVAiqnqgtskAq9P8LqXNohE
 IMtGA7WV40lLetadKiM+qyoUyCD5ftUWW3/vJ7NQ/IPTwUdlrZY+sGL8k4CcZisuRuAGGPa8jfs
 iaCF0r3/DKSVDqZ6KKKCM9H0=
X-Google-Smtp-Source: AGHT+IFNn384M0APO9NR5szwd5Jx/eM8GcxVstTXNBBj5YHPeF57nNlZNzxLY41eKB4Udjdn0vnI0g==
X-Received: by 2002:a17:90b:390e:b0:311:e8cc:424c with SMTP id
 98e67ed59e1d1-313af2603c8mr453324a91.25.1749575726795; 
 Tue, 10 Jun 2025 10:15:26 -0700 (PDT)
Received: from localhost (c-73-158-218-242.hsd1.ca.comcast.net.
 [73.158.218.242]) by smtp.gmail.com with UTF8SMTPSA id
 98e67ed59e1d1-31349fc3e72sm7562065a91.31.2025.06.10.10.15.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Jun 2025 10:15:26 -0700 (PDT)
From: Stanislav Fomichev <stfomichev@gmail.com>
To: netdev@vger.kernel.org
Cc: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, skalluru@marvell.com, manishc@marvell.com,
 andrew+netdev@lunn.ch, michael.chan@broadcom.com,
 pavan.chebbi@broadcom.com, ajit.khaparde@broadcom.com,
 sriharsha.basavapatna@broadcom.com, somnath.kotur@broadcom.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 tariqt@nvidia.com, saeedm@nvidia.com, louis.peens@corigine.com,
 shshaikh@marvell.com, GR-Linux-NIC-Dev@marvell.com, ecree.xilinx@gmail.com,
 horms@kernel.org, dsahern@kernel.org, shuah@kernel.org,
 ruanjinjie@huawei.com, mheib@redhat.com, stfomichev@gmail.com,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-rdma@vger.kernel.org, oss-drivers@corigine.com,
 linux-net-drivers@amd.com, linux-kselftest@vger.kernel.org, leon@kernel.org
Date: Tue, 10 Jun 2025 10:15:20 -0700
Message-ID: <20250610171522.2119030-3-stfomichev@gmail.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250610171522.2119030-1-stfomichev@gmail.com>
References: <20250610171522.2119030-1-stfomichev@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1749575727; x=1750180527; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=OIpCecH4yJO034nC1LHMnR1mqJnd63DXTBjtuXwa8mc=;
 b=P9CmyWPuWT4roCwoSpKpjs5K5UkQ7QUxOV27umi1Dtki44/zuxwsgbOlaRnfmwAL4z
 JEzRafsROkFIEPOWpwsYipvkinX+jTIM4AivaXRIBBMhmjA2WSk5IUBIQjRgIzG+rFt9
 PprET8+0tFI1e7r00puU/DdmF6+g8Se6wDzifNl0aAjkn6vK1Jpa0IAj4HRNyd+6Iku4
 tg7ErRrD1BzW/u64ATMYr3AG39O7az1RAfeI7MoFT4elcyZfMTMa6CKLIJdjYprJgt6M
 yZ+Vcxthc76IP4IhQlT3BOK0tAvcYdSshJhO7qWtwKFhS/CqRzeR6TCrOBFQZzj50afW
 c0aw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=P9CmyWPu
Subject: [Intel-wired-lan] [PATCH net-next v3 2/4] net: remove redundant
 ASSERT_RTNL() in queue setup functions
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

The existing netdev_ops_assert_locked() already asserts that either
the RTNL lock or the per-device lock is held, making the explicit
ASSERT_RTNL() redundant.

Cc: Michael Chan <michael.chan@broadcom.com>
Signed-off-by: Stanislav Fomichev <stfomichev@gmail.com>
---
 net/core/dev.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/net/core/dev.c b/net/core/dev.c
index be97c440ecd5..72997636b8ec 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -3179,7 +3179,6 @@ int netif_set_real_num_tx_queues(struct net_device *dev, unsigned int txq)
 
 	if (dev->reg_state == NETREG_REGISTERED ||
 	    dev->reg_state == NETREG_UNREGISTERING) {
-		ASSERT_RTNL();
 		netdev_ops_assert_locked(dev);
 
 		rc = netdev_queue_update_kobjects(dev, dev->real_num_tx_queues,
@@ -3229,7 +3228,6 @@ int netif_set_real_num_rx_queues(struct net_device *dev, unsigned int rxq)
 		return -EINVAL;
 
 	if (dev->reg_state == NETREG_REGISTERED) {
-		ASSERT_RTNL();
 		netdev_ops_assert_locked(dev);
 
 		rc = net_rx_queue_update_kobjects(dev, dev->real_num_rx_queues,
-- 
2.49.0

