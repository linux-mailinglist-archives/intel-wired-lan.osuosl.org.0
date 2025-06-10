Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9684FAD402B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Jun 2025 19:15:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E4E78613B8;
	Tue, 10 Jun 2025 17:15:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zkDOz9MNgu50; Tue, 10 Jun 2025 17:15:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6B9C76135F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749575727;
	bh=1XpoQDBnkJ85m3RkfJrVclHVsiYiR+siVaD2J76Ul8c=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=W1PKKyOcIWVVhXdd/hNGMwTf3/B4JxNB963ms6Q8Zo7yLXITVGA83oIIGFIoCOcfY
	 qLk9oTj+Wxxo13I3lxqCZi0LRvziinykxYmBgV1DVg9CW4PSpsLp5xj4VSUgldebH2
	 cTTXQUZi7uu90MM7tg3+4atECuKNcZ0QkTSnOeVBLOPCPeUW21sPrQsB2+4RvhTnnD
	 vYXFGv2EZS1k31BaJwd0X4GPCJrIuw6jnHPUASJu2dLqVzEtMB1rCJtDVAgYrzn8Bz
	 8CLwARenWvtbfbSQlXxxmo58ou9XAQ1lkTjAclwIEgmA0Z4EP6/MqNbhSxTZAF1DY9
	 80MTalEanCOBA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6B9C76135F;
	Tue, 10 Jun 2025 17:15:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9AFEE183
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jun 2025 17:15:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7ECFB40B6A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jun 2025 17:15:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JriHzqAajRcw for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Jun 2025 17:15:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62d; helo=mail-pl1-x62d.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 02D9840C3E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 02D9840C3E
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com
 [IPv6:2607:f8b0:4864:20::62d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 02D9840C3E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jun 2025 17:15:24 +0000 (UTC)
Received: by mail-pl1-x62d.google.com with SMTP id
 d9443c01a7336-23633a6ac50so20565335ad.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jun 2025 10:15:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1749575724; x=1750180524;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=1XpoQDBnkJ85m3RkfJrVclHVsiYiR+siVaD2J76Ul8c=;
 b=WNWmGi1YMZzsMr/Bdx9/esNfyKLccWcHjpVZNptchGicBw/kMI3zodDc47SuFK119p
 Q25x+jGYhhV1buiiyV0cBch9QLNenWFBVHEVTOaBFkZsecjkFtYGwBxBU+r01y3vNXuZ
 tClT6AyPPOyh023eV5GJ7mZw3c/DbgQNm9ElJqBD1N/KwnfXphbHkiW9C9yt8NCIB6CL
 Wmk9J5AC1/GKutTl6ZYZhTrYfgPugcC9MSBkDvEDpkeK+0Uq5DhPWenMTYVrk9D2IMnZ
 b7XnAM4wbV7ZeQQj3gu23F1IDV981tngJU4yivSHCgClwsXVt9pO8Y/zSUYJzvBmYmqV
 h8Hw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWZSB8+W/chmgu+O2MDPJCUDHQKW6rWEBGLubSDTH8K3G5zuQbY6X18QeCSTkB9pCBGnejEYK+42pLl4J4LkSs=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzHD49sCihyX+7x6WIzJYCtKc3GnG39LRe4i6QiEOe9T/j7e8+4
 UWJuRbzrf/2RIBN8p8h7Vn3jxDS8r0im4DS/BvXi9+90Tk7zCrdqlQQ=
X-Gm-Gg: ASbGncumco4H6shHRyDungBWBI5AkTaancfea023TaeALP4R0v8l8cUqj+7G78e3Rs3
 8riwdGGhJL9oQs4gkeQqTadgJzcraXsysNbP+0EMKgB2qyEgqNWMUr0BMFWOnG3CVqiH5HvmePf
 foVnVKUdurSVsrszbsMwDKRkBhmOqrL9c5hw3eJRfr5scuKdBMmExfDdngxsDPO7mFSpGGSsY/w
 pogQkc2cdCXAqt0TuSo4SPVYeHK4s/w2XtuFDR2KcgH8SQg/411Qo1XxsJGxwcaReqdbsxupNiH
 ZhThrpKIoM+n0NYTaUe6svI53tQR04Tnw/qC/pH1iHixitrswxaLxjI6r1DwH3NyAEpFDvHSjoL
 PpYHf+yizmRKnU3VTHkeL7yk=
X-Google-Smtp-Source: AGHT+IEE1VyaEjF+SToiH2KCZZ8fObccPrLHHXbkTDAAnPtCNTBgNOACDl44GLw6Tjp2I7FIdab+6w==
X-Received: by 2002:a17:902:e5c6:b0:235:caa8:1a72 with SMTP id
 d9443c01a7336-23641b19943mr1127805ad.30.1749575724034; 
 Tue, 10 Jun 2025 10:15:24 -0700 (PDT)
Received: from localhost (c-73-158-218-242.hsd1.ca.comcast.net.
 [73.158.218.242]) by smtp.gmail.com with UTF8SMTPSA id
 d9443c01a7336-23603504ed2sm73695875ad.219.2025.06.10.10.15.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Jun 2025 10:15:23 -0700 (PDT)
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
Date: Tue, 10 Jun 2025 10:15:18 -0700
Message-ID: <20250610171522.2119030-1-stfomichev@gmail.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1749575724; x=1750180524; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=1XpoQDBnkJ85m3RkfJrVclHVsiYiR+siVaD2J76Ul8c=;
 b=Pq8f6T/EthgNyyLyi5gaOhv64vh5CrZIZKf5CQrPETDYmx9a9rNg8NcaFIf4udN1A7
 qbx6o2714xq0BChrZ/SM5kkCSbah/rqCwmVkNX6z7qgWATRdNoivjLA6khbZxCaNmQDN
 MUQEuwMO9YJxLomgEkX7+3lTmVEqrXWi/LRrmO0kwLzagJ6C7ZzsKxV8IVBy7+3tOrlq
 4zkQ7B0Zqlq2JTjfqVVJWwxCD1lx7iLDV74zl1JnUegX/2ZemTMLaPimKCuJKb3G8SqT
 CHA86LXrK1EGemzayNnP/NS9g2e/rIcpUqJKPGt6iQogEgux2hThvhzj/AAUsQNcjQOl
 iALw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=Pq8f6T/E
Subject: [Intel-wired-lan] [PATCH net-next v3 0/4] udp_tunnel: remove
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

v3:
- fix 2 test failures (Jakub NIPA)

v2:
- move the lock into udp_tunnel_nic (Jakub)
- reorder the lock ordering (Jakub)
- move udp_ports_sleep removal into separate patch and update the test
  (Jakub)

Cc: Michael Chan <michael.chan@broadcom.com>

Stanislav Fomichev (4):
  udp_tunnel: remove rtnl_lock dependency
  net: remove redundant ASSERT_RTNL() in queue setup functions
  netdevsim: remove udp_ports_sleep
  Revert "bnxt_en: bring back rtnl_lock() in the bnxt_open() path"

 .../net/ethernet/broadcom/bnx2x/bnx2x_main.c  |  3 +-
 drivers/net/ethernet/broadcom/bnxt/bnxt.c     | 42 ++++---------------
 drivers/net/ethernet/emulex/benet/be_main.c   |  3 +-
 drivers/net/ethernet/intel/i40e/i40e_main.c   |  1 -
 drivers/net/ethernet/intel/ice/ice_main.c     |  1 -
 .../net/ethernet/mellanox/mlx4/en_netdev.c    |  3 +-
 .../net/ethernet/mellanox/mlx5/core/en_main.c |  3 +-
 .../ethernet/netronome/nfp/nfp_net_common.c   |  3 +-
 .../net/ethernet/qlogic/qede/qede_filter.c    |  3 --
 .../net/ethernet/qlogic/qlcnic/qlcnic_main.c  |  1 -
 drivers/net/ethernet/sfc/ef10.c               |  1 -
 drivers/net/netdevsim/netdevsim.h             |  2 -
 drivers/net/netdevsim/udp_tunnels.c           | 12 ------
 include/net/udp_tunnel.h                      |  8 ++--
 net/core/dev.c                                |  2 -
 net/ipv4/udp_tunnel_nic.c                     | 30 +++++++------
 .../drivers/net/netdevsim/udp_tunnel_nic.sh   | 23 +---------
 17 files changed, 32 insertions(+), 109 deletions(-)

-- 
2.49.0

