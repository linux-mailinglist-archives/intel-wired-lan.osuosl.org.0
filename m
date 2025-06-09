Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 84F1FAD23CC
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 Jun 2025 18:25:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0BE2F6134C;
	Mon,  9 Jun 2025 16:25:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YvO-k4llfDIl; Mon,  9 Jun 2025 16:25:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7E2A8613AB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749486349;
	bh=OIpCecH4yJO034nC1LHMnR1mqJnd63DXTBjtuXwa8mc=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XnvRf3PQhpmkDvsFGBqzdEOSNsGIhXXErJfkbUD+HQV3VmsJqYef0+E5mhlRJ7bG1
	 6PgVORllywGdOARaT7Q6JaPFTM2Ou5ERHERWCM71ru0bWZRwrngzvmPQ25mhoCXbQS
	 ot/NSe3006Zp7Ft7muDrPUtiHYMSlVDFlp6E1VQ7q06ZnL/w4O91EJGCRmPr1J9egH
	 Zxz3P6IdalGlYWbE1S6ZhnkogKUmsxRSJ95IukA9EvmsHjWYQEY6nkjSQcroJfIhqd
	 DlIrto4GkIV4OFCn0ug8J4o9vm2RxoFXxEUeNRVjkrOavkgQ10CWfDWiSbgxOYL/f1
	 SK4qGv/3VOF4A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7E2A8613AB;
	Mon,  9 Jun 2025 16:25:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id B5D03CD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jun 2025 16:25:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A815C61181
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jun 2025 16:25:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Uver5KoLFDHu for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Jun 2025 16:25:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62f; helo=mail-pl1-x62f.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2066161019
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2066161019
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com
 [IPv6:2607:f8b0:4864:20::62f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2066161019
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jun 2025 16:25:47 +0000 (UTC)
Received: by mail-pl1-x62f.google.com with SMTP id
 d9443c01a7336-235ef62066eso56070735ad.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 09 Jun 2025 09:25:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1749486346; x=1750091146;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=OIpCecH4yJO034nC1LHMnR1mqJnd63DXTBjtuXwa8mc=;
 b=g6jhvMr/0kIDdaGThW3JDF7PxHWF9HDDXIqph3enYlZ4ZGXegPzzsoiwu/Aw4ZmJ6H
 BhW8PaN91gTtPJGTUh894MMw73Wmeh2jDsoUz+KSGUGdA1DG3vpxAq/6zfLqBQMHBmQw
 u3i2IQisQ3t+NIox5iKRt2u6jZPUDe4IrrWTtphzMm9Gt0ClWaOacTkIEAULYTSZvbxT
 XV2qhYu2xSdbEz0cw1z6wpGZkehhnbX/211Fr4vS3D86krueLhaRHM9LllVGyAEAx0RU
 5/0csvnNAJp2N/ywnvl4Jrxr5GyqhqVZqI0fELedCp+2N1zGwX/NOuvV7NnWGI/FXDog
 pfSw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVlfvmItG+YpTayg1bPRNn2TJiQgmLOYZaoK7uaag0YgTiWq7TIz4b9kZntVDN3gGA45HIpDnGP5FtvB66bieU=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwxpPuj8898rVLi9LZKhvV4cIL5X2qyqsrZZSxJaQy6otqjWe3B
 nGvObeXBPH8UT1YDzXXZi5sYBtZ5abRaddiqq6f1EtTrftQHWHeECm8=
X-Gm-Gg: ASbGncsBmiVZnaaFCsRjJuVhY0nKEpx0v4Sm58EU2wNpRYEmxagXM/7RS8QxpKOwOxT
 oAH5TqiR7LlndQWOKM87YS8TJ6k7fZkWO98JezBp7PLkxnL67SaJSR+uZEh4qo9sYNij+wyZbF0
 HFzHJpDqVuneg00I/Dus7/v0vi0ETmTW9ZZZZvlYYfZrORMJvzeMNeU6rW8TJg2VcvnpuVkrUwN
 W80g0Jt2hFpueQHtyWT+mbRDwtT3ng85mrLhBhDRvPEH6+HmfVtxW6eqej6SxuI7mejEK869PSn
 u1CbGYeGTCyztRAoYbsM9p4aIFiRwjK5wy5BPOwd2ZYXmAgZCHXX6E90GnJy485/jZpP15f2zs8
 tvQtwnsYzZz21sh2X6gobZww=
X-Google-Smtp-Source: AGHT+IHYVWs/aBeS3lTlg3/K3udkjbze0k0eLP7AMX1rK05yCKVcKjArQ7KqvyIMbRkK2g9/HnBNFw==
X-Received: by 2002:a17:903:41c8:b0:234:e3b7:5cd2 with SMTP id
 d9443c01a7336-23601da9abbmr211770595ad.46.1749486346165; 
 Mon, 09 Jun 2025 09:25:46 -0700 (PDT)
Received: from localhost (c-73-158-218-242.hsd1.ca.comcast.net.
 [73.158.218.242]) by smtp.gmail.com with UTF8SMTPSA id
 d9443c01a7336-23603078936sm56017125ad.21.2025.06.09.09.25.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Jun 2025 09:25:45 -0700 (PDT)
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
 horms@kernel.org, dsahern@kernel.org, shuah@kernel.org, mheib@redhat.com,
 ruanjinjie@huawei.com, stfomichev@gmail.com, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org,
 oss-drivers@corigine.com, linux-net-drivers@amd.com,
 linux-kselftest@vger.kernel.org, leon@kernel.org
Date: Mon,  9 Jun 2025 09:25:39 -0700
Message-ID: <20250609162541.1230022-3-stfomichev@gmail.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250609162541.1230022-1-stfomichev@gmail.com>
References: <20250609162541.1230022-1-stfomichev@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1749486346; x=1750091146; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=OIpCecH4yJO034nC1LHMnR1mqJnd63DXTBjtuXwa8mc=;
 b=arScz7X7TekVjWsY9UFH9Gp7bVG/YJblTdUiJ5xrzN7ixUh7Y85W3/dKt/+923VRil
 WtQs5gv15xr8/+Yjj75UJi7dc9uUh0dbDxTOWRRfiZGkobU8N6ykTdW+UYbCKrU/Cbn1
 EapWNS81HLiUBWXYXyNo4nTnt1re/3tsq6etsyOUQniMSNsi8ttNv5RbfzpMgKEK4GG6
 C6T8c+hpMsnOJy05M8a+VZD0dyVxg2MOewlk6CvkZUS2Aju4lzKi7EYsumjBBvEW7clF
 0S8jUd6WZjqpBXYr8M6BgnsP0fcMOtB7SlfxBv510xRzWOOtJg0Lsq1qF9VZzamJSs+u
 q+9Q==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=arScz7X7
Subject: [Intel-wired-lan] [PATCH net-next v2 2/4] net: remove redundant
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

