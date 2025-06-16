Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E8D8DADB687
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Jun 2025 18:21:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6A04B80DE1;
	Mon, 16 Jun 2025 16:21:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2Ozurfyv0M_D; Mon, 16 Jun 2025 16:21:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E305080DBC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750090880;
	bh=VpBWNqe15V8+KavYjcJ0yYawZufKK5c9dNkPp38Ln4Y=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=tG3pqWaithD3Scs9QxuylO9/zulVg7/wvMkJ9uSINb9/u0/mtEHCEeL78xG/eQma4
	 zWjAidkXAwHeQu/3fHlZ5qbveSf37gRI4AuwsLN16fwtejKMSk3Vvkw6xaWxdcANGF
	 YnEUynw6FEZNcJO+zLa74U5opCeGMLNs9tPmF1mWRooynP9I1OyoiFc5oer+07nr38
	 nQelT1CUGxNTrQLbUhwC4jyr5xtdcawhc7VlHdHjmL6KAcyVTSjAeXTLkMEIImcAZX
	 jmNdf6azKqrCycdfRLm/DRRRZ9gznicab1d4gSBoCeLaDfGz6zX/C2AVlj6ogdQ86G
	 Ye6DLABYDO2Jw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E305080DBC;
	Mon, 16 Jun 2025 16:21:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id EBD3B1A4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 16:21:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D1DC280DB2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 16:21:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0YkDLuYxM7xY for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Jun 2025 16:21:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::536; helo=mail-pg1-x536.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 32ACF80DAC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 32ACF80DAC
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com
 [IPv6:2607:f8b0:4864:20::536])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 32ACF80DAC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 16:21:19 +0000 (UTC)
Received: by mail-pg1-x536.google.com with SMTP id
 41be03b00d2f7-b2f1032e1c4so5199311a12.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 09:21:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1750090878; x=1750695678;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=VpBWNqe15V8+KavYjcJ0yYawZufKK5c9dNkPp38Ln4Y=;
 b=UV6pGj1wKuc0X9mCqy+onolPauz4TanAPhXhskt133/I3F8t3ueGeF2kWj9bkhY7ih
 5YzxxyrdtGPAFuOBUeval2UCP3et1p3bpwT5mQOr8Jerx1qM77umL0R+u/nbiZVDiTFy
 o067VSma0+uFZaVgqvP8dDZqkPCgO1qWjSNgc0Jw+IoNZzwLnppFC//qLE0wg1TWgL3i
 NatcJhoek7hqIS860/hBJVbuFgbwPNIgbaLw83h+Kijy358zNFKGNn/aABFFLRWYnoR8
 NGBNwZiSO2ynqbBSVUM3bdctukF1CprJ515GKHz1FAxHbR3eoOUUK58pDOxzW2Zo3zof
 OpZA==
X-Forwarded-Encrypted: i=1;
 AJvYcCULJOGBUsPKjBx5atBzOptDRAg3uRNsiuYGHZ+6Rwd/nbVRXHFRNmWc3Jl8GZ7zpQ8aNBrgq8OdEwqcnf8P7+Q=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yy2hmYiUJclUHAwNOsfzj80WS3qObb5ynoj5vIGPLjMT7dA5DaK
 dxO5OL/oCLIlfsHnnVfp/wx8HqbROo47Sxe99WiW5WFgjTiPr96q+9o=
X-Gm-Gg: ASbGncs1TZ0+yoLqOujCzRsKapZ6WiOL8vwfDDH7VpyD2NCQKuqKC6n+4E4R5Kkh9uw
 4jgJPgEG0OzvmKcR/zC86bEHnj3zRPYJg7F/dATKc8ojA8l4Lz/XGnbW1mMBBiPSzxgSB+/HcZT
 J4xf0x9flksM3EuBD0O2fkA+jNoTgyQQnpiCVi2g/oMBK03GuxpQbwLaaVPSezedCx0zhgsuU47
 vaZ0tD8z6EyBSWpb5bPBeunzMmcU8r0Yt/VBaKv0LnFIyuTHWEiDE8CaMSsIqTRTfFjRg+nJP0K
 i8+3rk++phnPbSn1Bbq/UoLC+dFg6mhuc8tymvIgfgbQgmKsYMJEBV+VDYrio0qwbyZAB6K2Gec
 spWdyISybFX+LLZnV85sa1tk=
X-Google-Smtp-Source: AGHT+IH5DqWr8tn3eyoLjnJaVFTvxrJy9DsLY+LkxxLU5h/ESvqg52ldyexR7aG8aD+QL/ZCJHTmfw==
X-Received: by 2002:a05:6a00:1989:b0:746:24c9:c92e with SMTP id
 d2e1a72fcca58-7489cfdaf27mr15181815b3a.8.1750090878424; 
 Mon, 16 Jun 2025 09:21:18 -0700 (PDT)
Received: from localhost (c-73-158-218-242.hsd1.ca.comcast.net.
 [73.158.218.242]) by smtp.gmail.com with UTF8SMTPSA id
 d2e1a72fcca58-7488ffee55bsm6989549b3a.1.2025.06.16.09.21.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Jun 2025 09:21:17 -0700 (PDT)
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
Date: Mon, 16 Jun 2025 09:21:11 -0700
Message-ID: <20250616162117.287806-1-stfomichev@gmail.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1750090878; x=1750695678; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=VpBWNqe15V8+KavYjcJ0yYawZufKK5c9dNkPp38Ln4Y=;
 b=LjEewmb70Qd+eurP3cq/2FGPG7//Vtrt60Ukwy/TqewLbtDSi9ejnTMdbp+hsCIYgy
 3ShMckVDiyI8JMmGtvXcJNry0IrzLIjv4YUUGzbRygMknlVvrjnjPn1Ld0o2pkhWwGmR
 hqS2Dl9/nCgBa3+m23ezM2wpJP/Gmq9dasqPtM3KIxXhamO0fvh/b8b6j5LV1m1tQdRh
 L65QtLmMZ/cvphQd1wKrCxSi2bFkX3Bxd1MCSdrsjzmhne5SKdt4WG4HWWmKeJiZt+gg
 os19/IBNTtcVIPhuALVN61+ZLjbAyWcmPf1ALzm0GA9rZXe8CVzHAjwFF00Oqip/LZI7
 TO2g==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=LjEewmb7
Subject: [Intel-wired-lan] [PATCH net-next v5 0/6] udp_tunnel: remove
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

v5:
- remove unused variable (lkp@intel.com)

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
 drivers/net/vxlan/vxlan_core.c                | 35 +++-----
 drivers/net/vxlan/vxlan_private.h             |  2 +-
 drivers/net/vxlan/vxlan_vnifilter.c           | 18 ++--
 include/net/udp_tunnel.h                      | 87 ++++++++++++++-----
 net/core/dev.c                                |  4 +-
 net/ipv4/udp_tunnel_core.c                    | 16 ++--
 net/ipv4/udp_tunnel_nic.c                     | 78 +++++++++++++----
 .../drivers/net/netdevsim/udp_tunnel_nic.sh   | 23 +----
 22 files changed, 176 insertions(+), 172 deletions(-)

-- 
2.49.0

