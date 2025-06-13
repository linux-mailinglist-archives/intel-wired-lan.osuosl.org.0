Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D451AD964E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jun 2025 22:33:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BBA3C80DAB;
	Fri, 13 Jun 2025 20:33:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D4yswhqfbRuf; Fri, 13 Jun 2025 20:33:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2B10A80DB0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749846810;
	bh=pwRAnCMRMy4NI04BUJ5xATTCrVm8zFet775Y9+JU/To=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=S0n1HWfFKvCG71kWHkKpsY2SuvFoysnA4elfw6mxYAKL6E50Op/GmYx6eceNLAik8
	 YO+5wJWOallKj3S7XPYcccZz0Tr22eYBETxou9YfiyCaxaUNnlqROFpGkCK3UE8cFa
	 RHUOAQhHZySfxlsGPYjtTMcIj0XVKuJxoi/yECS9ZNmRYR+1mFupF5biUaGVSKNQGW
	 t2NwoP8bl0k35l2bY+lhdzt5lrSrAM0skulBnoc0/L8q88vBQsKtzlNX/zLn362gYV
	 ql7SiCBwNPsHbaHmr2xaQ98G3JsjLnODMuhWxXQfm1jI3NvjIEa2tkXcH5ODmdnK+G
	 muIsaKxI2JcKQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2B10A80DB0;
	Fri, 13 Jun 2025 20:33:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 472E81BD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 20:33:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 440E440A39
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 20:33:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UMdQIXtYkZIG for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jun 2025 20:33:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::534; helo=mail-pg1-x534.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A4DD540A25
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A4DD540A25
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com
 [IPv6:2607:f8b0:4864:20::534])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A4DD540A25
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 20:33:27 +0000 (UTC)
Received: by mail-pg1-x534.google.com with SMTP id
 41be03b00d2f7-b2fd091f826so1998372a12.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 13:33:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1749846807; x=1750451607;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=pwRAnCMRMy4NI04BUJ5xATTCrVm8zFet775Y9+JU/To=;
 b=cnZF2wO3PjCzMBLGzBt8Msr4FfrNRFQ6T+xxR4O/grE8HtGRsCB4/DErvw0f807h9c
 WGfY0kmnUv8EJQUQ6EaYEHLdYbIPeATcT7/Y1DIeC4RtU4PYNT8SxYNwLeaHlzdvTBuX
 ickYhDJwnpyXRCdloGPZHb3h0usrBcj8HpyJ2rJbEXnhdEf7XgF17T56UsG51EA+++22
 lqdcv1StWklhc/SUoaPoCG59d/SCWekW1a9IMW+TM9D9UPCOig3w/CVU6Osju44NlTjS
 8xLvKlAhvSpzBGkYtSQG/Pc3ZpMYpW4tYLS04uqxn09UwnTqhWfB5hc7y5kG9uXv5MgX
 Y53Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCU8Tw3jVSwcDIQMfSDPH9H3KERR5ws79MCnir41nQZPOzVe0LmzF2gCH67hEQ8imM0ED7zIXkzZdndbmJrS6tc=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxlcueAb1twMlU/ilai4ZHoBhLcb7+lx0z5GYt80XZie4vLW3hn
 hUP5bzBbuioYwzxlV/YiScFTHiZtiuauCcNeAGzj+l+RzQAanD1TxMc=
X-Gm-Gg: ASbGnctU9Z4d/dINPQ6cO/e9M6qUIj/2FjdZ89ysLxQcluMNrI7AFkRmJYkHeO4BJT6
 OMiv5LshX/EerXgjhiW7Ackq1sKtNQVXbQeNO4jPV+KnEKKdOADcKsrEmEZg5Kx2EYt0uAVhIWr
 57vvLVhxio5bsZfs/mP0wnIWBy8xLwpgeGP/E5DWpUGlPKFyyiq5mx4ZLv6csYKNXu+g/7qnUsn
 YPb0ir9JIfBB1DpAwxz1HhVNbCmqbQEdrJVkj0CsSSS2hU0HSDond9ZZqmZeTcXYg0xN9ClmACq
 GlGL/fJLMATHMpwTjInlU6grkEYL3HXbuO/u7rMn0mYuZhjKSuNC1zeEZzu9mBZZPomjOFwMafD
 H5hjS312kRjui1SFLHmay+uY=
X-Google-Smtp-Source: AGHT+IFofoxaBBjnJtXHhezT3t2Miq2Uz35b+y2fjwYckYFssZ1+zOwtoBfHJPoJcIM6hLG+m6recw==
X-Received: by 2002:a05:6a20:7346:b0:21f:54e0:b0a3 with SMTP id
 adf61e73a8af0-21fbc62cb6bmr1432515637.2.1749846806751; 
 Fri, 13 Jun 2025 13:33:26 -0700 (PDT)
Received: from localhost (c-73-158-218-242.hsd1.ca.comcast.net.
 [73.158.218.242]) by smtp.gmail.com with UTF8SMTPSA id
 d2e1a72fcca58-74890084af3sm2135347b3a.97.2025.06.13.13.33.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Jun 2025 13:33:26 -0700 (PDT)
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
Date: Fri, 13 Jun 2025 13:33:19 -0700
Message-ID: <20250613203325.1127217-1-stfomichev@gmail.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1749846807; x=1750451607; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=pwRAnCMRMy4NI04BUJ5xATTCrVm8zFet775Y9+JU/To=;
 b=BZi36e6C3xhhNcyJzT0HSyL3jPm3DyEz2Pko4mgpK9xQ09F3JgFRKFfGQbIrRqRDlV
 SKZmuFNkp2AULcmo9WGo8Ri1ne/HSikrg7vhlzGGMUAzNGh00o97Q2e6oRaJuRNtTB9V
 f5QBRM98BAcUotyps2S3lFphoYmB+JkvODrFRg0AVgcneGP6p34OCx7Qn8QlT9sqzuZn
 KWhj5qkL1fQY0lSR3pdnkdzNW6SaMB+DsLwbGBIdEDih4CZDYel613kc5EI3Ej43WXH7
 T/hqx7HfZi/ZheEslNTFtpsknK8fEQWDLp4YFblGSM8TzlpLB1OzXb/Njzm7yAx1wN+V
 wU/Q==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=BZi36e6C
Subject: [Intel-wired-lan] [PATCH net-next v4 0/6] udp_tunnel: remove
 rtnl_lock dependency
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

Recently bnxt had to grow back a bunch of rtnl dependencies because
of udp_tunnel's infra. Add separate (global) mutext to protect
udp_tunnel state.

v4:
- grab lock in more places, specifically netlink and notifiers (Jakub)
- convert geneve and vxlan notifiers to (sleepable) rtnl lock

v3:
- fix 2 test failures (Jakub NIPA)

v2:
- move the lock into udp_tunnel_nic (Jakub)
- reorder the lock ordering (Jakub)
- move udp_ports_sleep removal into separate patch and update the test
(Jakub)

Cc: Michael Chan <michael.chan@broadcom.com>

Stanislav Fomichev (6):
  geneve: rely on rtnl lock in geneve_offload_rx_ports
  vxlan: drop sock_lock
  udp_tunnel: remove rtnl_lock dependency
  net: remove redundant ASSERT_RTNL() in queue setup functions
  netdevsim: remove udp_ports_sleep
  Revert "bnxt_en: bring back rtnl_lock() in the bnxt_open() path"

 .../net/ethernet/broadcom/bnx2x/bnx2x_main.c  |  3 +-
 drivers/net/ethernet/broadcom/bnxt/bnxt.c     | 42 ++-------
 drivers/net/ethernet/emulex/benet/be_main.c   |  3 +-
 drivers/net/ethernet/intel/i40e/i40e_main.c   |  1 -
 drivers/net/ethernet/intel/ice/ice_main.c     |  1 -
 .../net/ethernet/mellanox/mlx4/en_netdev.c    |  3 +-
 .../net/ethernet/mellanox/mlx5/core/en_main.c |  3 +-
 .../ethernet/netronome/nfp/nfp_net_common.c   |  3 +-
 .../net/ethernet/qlogic/qede/qede_filter.c    |  3 -
 .../net/ethernet/qlogic/qlcnic/qlcnic_main.c  |  1 -
 drivers/net/ethernet/sfc/ef10.c               |  1 -
 drivers/net/geneve.c                          |  7 +-
 drivers/net/netdevsim/netdevsim.h             |  2 -
 drivers/net/netdevsim/udp_tunnels.c           | 12 ---
 drivers/net/vxlan/vxlan_core.c                | 34 ++++----
 drivers/net/vxlan/vxlan_private.h             |  2 +-
 drivers/net/vxlan/vxlan_vnifilter.c           | 18 ++--
 include/net/udp_tunnel.h                      | 87 ++++++++++++++-----
 net/core/dev.c                                |  4 +-
 net/ipv4/udp_tunnel_core.c                    | 16 ++--
 net/ipv4/udp_tunnel_nic.c                     | 78 +++++++++++++----
 .../drivers/net/netdevsim/udp_tunnel_nic.sh   | 23 +----
 22 files changed, 177 insertions(+), 170 deletions(-)

-- 
2.49.0

