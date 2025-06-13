Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AA06CAD9653
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jun 2025 22:33:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6877440A4A;
	Fri, 13 Jun 2025 20:33:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id No27A_DLRDbF; Fri, 13 Jun 2025 20:33:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E511940A45
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749846814;
	bh=hOzLGPoCr0MeSXGXJzKmOKNWDgmi51GcdPfztdwS3U8=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LTiulnuJhkI/kGNDUwhwma97IxBRfumo3Ru4b3Qt8SzMey/e+nluIhCJNn9vdl4SC
	 qVaw/nCjwe7Kkcipkk5k6ItkuOoxgs36WbtggruY5H1MWkdlhlGWmYWCsfeuEDyWkD
	 nmvndRfjiTqDjxv5k17OybBhdo6afEBDYGHO/MjSqFGlNnX+/I2fy2I4UPOvAwwka5
	 UMLqcbOy49KwA+14bK/C4BXQ651yKoRG7kq3CnwbKz1aCM+vdJZIbmtO+TgSYCLzkA
	 Pr2CCv1fM8UYIN7t8PoERXyJDx4pFKUyNAaDDGwoj08awGqeo/ulxDnfCptBgda3R+
	 PI4jxDMa8/GPQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E511940A45;
	Fri, 13 Jun 2025 20:33:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id AF9C0183
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 20:33:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 95E0C81095
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 20:33:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5sAgMI-zG5kx for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jun 2025 20:33:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::52b; helo=mail-pg1-x52b.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0390A80EE2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0390A80EE2
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com
 [IPv6:2607:f8b0:4864:20::52b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0390A80EE2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 20:33:32 +0000 (UTC)
Received: by mail-pg1-x52b.google.com with SMTP id
 41be03b00d2f7-b2f645eba5dso2709713a12.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 13:33:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1749846812; x=1750451612;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=hOzLGPoCr0MeSXGXJzKmOKNWDgmi51GcdPfztdwS3U8=;
 b=a13F3+il/TkHtz3Vj/CtiNp6GDevixyGVtzt4XcfS7BtmdFz0VUO8Wtr/pcv5sGsJt
 g0CYEH75ceYGt9wSt48W8/PHs/X+qjF10stBy+vwsdvkEWD3KfGODvy92Xxix/1Iar8Y
 zG+RlXtk4r3+X0nBYXcpIDHr14C/oU9Wpl8K92uzw+iZbSCksMob9rpcsM/Z42laGZJa
 ReVMSS6j5M4rA0aVY45vSE1pOdzIpzaPnAMv5TiN5HXrJOYsAY3q0i5x/bSlkayzPSAk
 R3f3nTJ6GbMYHXCZK3kmPPB2wKaCcNTeYjm1jCPoxd0qJdX9bEaubS/Ym1lluZJGP2Di
 haLg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVkGM3YsMVFOhG0P/6Qu6vAStt7Pq/HhWkm7bl3pZuH6lG4vNatXQUhlnjdut4QtaQdLwEtZNZMIOR+rrin12I=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yy5swsYJX19Uz/j1/QYwtlZ8Gc2N1aWrrupDNVevdngqRp3snrR
 uJPLpkiolrHCEMA4rtDSF0oj3Gyd/oLdGjyiortNtQ3mzUuFF1Jhw1E=
X-Gm-Gg: ASbGncsoORAzNnr5w+HkFX9pfqRHqRxrj0U2Z1hyHXB129rVgEVzFa9xVlgD/dPUGlh
 zXAYn4ZzPiXEm5DHPuIMiPuCIG++VQw8NesHa7YAVKkbTV+TycMPo2SbjkOtVElF/8WeZvrMNPO
 WZVkjmgwxXCo00ia/r9/JaloEhTwLx0eHJqSKAeSxVbNVbnQIGiGYLfXacLbWPEZpQxsy8UYKbj
 /ZmG6y8Vz01FCwzpVOqhkOh8i/fgg4g3Wu157wVg4Y8Jz1CNFPEIzE97lKcIUS4CKk4hOEgen65
 D7TawAsc7RY6EviUOgpW684/voWR6rYMfznJ/249qAOjvNcu9S8Fds6wLphtuJf1mcIoOeU+wML
 COxehTC3eVipbemuBgLzfSvc=
X-Google-Smtp-Source: AGHT+IFdoxaf/qef0o2ioeIc+/tRZ/Vc7PmUxDQDqlhqOdmXZN5WXtpb/JEBe/wd1BNecTa9vyrSGA==
X-Received: by 2002:a17:90b:35c9:b0:311:be43:f09a with SMTP id
 98e67ed59e1d1-313f1cac7d7mr1317475a91.9.1749846812264; 
 Fri, 13 Jun 2025 13:33:32 -0700 (PDT)
Received: from localhost (c-73-158-218-242.hsd1.ca.comcast.net.
 [73.158.218.242]) by smtp.gmail.com with UTF8SMTPSA id
 d9443c01a7336-2365de783e6sm18861325ad.106.2025.06.13.13.33.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Jun 2025 13:33:31 -0700 (PDT)
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
 horms@kernel.org, dsahern@kernel.org, shuah@kernel.org, tglx@linutronix.de,
 mingo@kernel.org, ruanjinjie@huawei.com, idosch@nvidia.com,
 razor@blackwall.org, petrm@nvidia.com, kuniyu@google.com, sdf@fomichev.me,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-rdma@vger.kernel.org, oss-drivers@corigine.com,
 linux-net-drivers@amd.com, linux-kselftest@vger.kernel.org, leon@kernel.org
Date: Fri, 13 Jun 2025 13:33:23 -0700
Message-ID: <20250613203325.1127217-5-stfomichev@gmail.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250613203325.1127217-1-stfomichev@gmail.com>
References: <20250613203325.1127217-1-stfomichev@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1749846812; x=1750451612; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=hOzLGPoCr0MeSXGXJzKmOKNWDgmi51GcdPfztdwS3U8=;
 b=AZn7R8WLHmmhR1iC0fkC65o55Er0XFLLhfkv1h8k1XKOKr+5N4siG/2k3TjlK3Eljk
 MP+fLS0c+vi4vcUPBV2dHY+ZJ9h3ycv41z7aA42xNbKB7Ko3hlhlNjxHYq/sMJAn8OLn
 Uo4HJ6Oo9t64y/+Ihmuw4QdOyRJFN+9OK3caoS8RlWsA4JZROzLCbmEZFSY2PgiUumZy
 SYiPfUoxGZPnf6E0OsZEpfn+eh+f7C1f4/IeRgGF2ADbs5g15Zo4m72JsDIz2E/h///M
 rVXf6awGaq6vTliDM9BVZpOJgIKPjCfpl9aXgKyJ7w4q1TFZKLWHZPITjjpp34lBzWOa
 jNpA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=AZn7R8WL
Subject: [Intel-wired-lan] [PATCH net-next v4 4/6] net: remove redundant
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
index 43f56b44f351..df1678b1fe24 100644
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

