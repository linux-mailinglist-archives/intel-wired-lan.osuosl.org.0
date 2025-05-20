Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3127FABE4D0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 May 2025 22:36:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C933B610D1;
	Tue, 20 May 2025 20:36:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id J2io2SUWhFWZ; Tue, 20 May 2025 20:36:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 44FA3610C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747773382;
	bh=LJxNgsOXkfEn8VvbztVnzgoVJ4MKZxw7zyI/QjMp2Ak=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Ko1U0waOWJO2SOXyfMBXkKMCk/+hi3e5Cuha9m13rEPkP2UVoZmg3y5bdtCZWtRnP
	 d7s5eoWKnHXFQqX0as8xGcXLbga7nIrF0JLWHXMzJdTtt8bY3CwZM2dSta2lnBY0xX
	 7NyaFBWb8KgJw4ZP3J0Hv7BSmnewbp/IBOpS2HDEFmWqWSNQYBBSd+qyOxd8kc14nJ
	 96tCNIFW86IOGw6x7YU/DbMhZocx0oqXBr+JFSgbyI92PdZFMb8xmNWvi0KM40OC2h
	 nzm/VOpLbXQub2+NrvZUn/Op5BMEiofio/SwzcCmvtQGAv/krE5X/2WvXQSsaIf2v0
	 xF6BM0wHoBh6A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 44FA3610C4;
	Tue, 20 May 2025 20:36:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 634EED4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 20:36:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 58C326103A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 20:36:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6RMUwKw5rqwI for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 May 2025 20:36:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::52b; helo=mail-pg1-x52b.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B59D861035
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B59D861035
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com
 [IPv6:2607:f8b0:4864:20::52b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B59D861035
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 20:36:16 +0000 (UTC)
Received: by mail-pg1-x52b.google.com with SMTP id
 41be03b00d2f7-af523f4511fso4740515a12.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 13:36:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1747773376; x=1748378176;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=LJxNgsOXkfEn8VvbztVnzgoVJ4MKZxw7zyI/QjMp2Ak=;
 b=E6POHXlpuS1GRS0Mgn/L9B3v71hOWTd9S0ILrynO6Q25lsv6xmRM1z+MwMHhhfZCkL
 YC/4zPe2at4/32tF35XugDL77HJeYTMFvaedI5qni+YDcNcVlcUmaIaQLfQgihHxIhbr
 qhCwo2SzCuzk+4a1XH5ZGMXTssqI1jWdllo8rLtOWgbE3Yh0wqtMrjeLJwxuJZy9yDFw
 UxbMx8ej983rMdgQulQxOJi4NtNGSKFSOTUEKAD92hh8xggaWuDjr1hF+V1QaLLn3xKP
 FkJfCENY0uHfx5Uve+EB4JISrH6Pj4dHRV1u+tZxe/IW2vq6499XXcmndB4KTjThP4cX
 p66w==
X-Forwarded-Encrypted: i=1;
 AJvYcCUfH/RvF9fyJqCP1kjn0PKJl85G+TMMTjFl93ZORJbcAVPmhK+DYP2mvPgNLRukq/CmuN3/SR59ubmK+7BMk8Y=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzbhL7oaL6OsAaf+vDFQcI1DJ5qD+bEtUEyJmzD7VaJWmaO8J9T
 orOc9hJBz21ZixnJ4H235HrspvxPXsPCD1MG4gNsIL5jTF6e7Hc6TKs=
X-Gm-Gg: ASbGnctjeDzLA0ys0D2fUprDEndCBBeo3uDI2480ILYXq0jXeTlpyE9RLVJsnrWXeqY
 V9tpqS3t/ZN1tpFuYQTwIV4Yom1UZ0dIIIhGZGDxE2mGoy7V+LnBR1oKvR6Pi0/QbmLm87j5n6P
 x3OItu4fh7J83zhXwjw9G0ImzkiCMG639lQouo+a65bSUbw7P4VNRjy5vNjBnychLITHTUolqTO
 LkV4xiUSIIDP7I9ht2ucePW4MtMbyNJNzTbsXw2WpPGpFRwduOs6vQiVvRL/2VVKO5LsNQDTR2m
 a3/NU3OfH++IL2R7WksSmckzJabQz8Od5Zg+CgCrb5UTJIA15FfPGMQUAcKyxIyN68RL5yh8aiI
 FbQ5lFuzofMjo
X-Google-Smtp-Source: AGHT+IFMjXzxlLgDuz6liqwqBsE6c/B15yq/4Qcwe5vGmbvaEcoMyR5RQOp+vL18fNrzg3UHc/xoMw==
X-Received: by 2002:a17:902:e946:b0:22e:3e0e:5945 with SMTP id
 d9443c01a7336-231d4562130mr235286095ad.50.1747773376032; 
 Tue, 20 May 2025 13:36:16 -0700 (PDT)
Received: from localhost (c-73-158-218-242.hsd1.ca.comcast.net.
 [73.158.218.242]) by smtp.gmail.com with UTF8SMTPSA id
 d9443c01a7336-231d4adbf5esm80721645ad.64.2025.05.20.13.36.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 May 2025 13:36:15 -0700 (PDT)
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
 horms@kernel.org, dsahern@kernel.org, ruanjinjie@huawei.com,
 mheib@redhat.com, stfomichev@gmail.com, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org,
 oss-drivers@corigine.com, linux-net-drivers@amd.com, leon@kernel.org
Date: Tue, 20 May 2025 13:36:11 -0700
Message-ID: <20250520203614.2693870-1-stfomichev@gmail.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1747773376; x=1748378176; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=LJxNgsOXkfEn8VvbztVnzgoVJ4MKZxw7zyI/QjMp2Ak=;
 b=OU4a0yzpNZcTxY9qIl0TjyeEFrLxs7U+uSIFYwTeoNLi+clgfRJsFE+cwvOVKVzIBe
 +uMUeTIE1tROZ2Z6zRbLLEpcibmPPH3kj1/trZ1PT0k01eHayVn9Knfl9C4hN+Rah8n+
 xY1Fm+GTbcvUoqakqDklwsbXe58fhovk8aO8cBtMu5uufciFGDdjH25wo4s4B1fvL1tZ
 YKY4j+2I9cqrevUPe+ltnfYYqKR4DCB5ihvTUGcswd0fV1R0A50B/vUaDjcs6PAKMsXw
 5ue7qkHdJLb07wXhiCCqhRxDkBxrXfR/2UUuMzeUh1x6q72Mwc0oggNXJ1jwxnwiI9nn
 MGeg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=OU4a0yzp
Subject: [Intel-wired-lan] [PATCH net-next 0/3] udp_tunnel: remove rtnl_lock
 dependency
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

Cc: Michael Chan <michael.chan@broadcom.com>

Stanislav Fomichev (3):
  net: ASSERT_RTNL remove netif_set_real_num_{rx,tx}_queues
  udp_tunnel: remove rtnl_lock dependency
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
 drivers/net/netdevsim/netdevsim.h             |  1 -
 drivers/net/netdevsim/udp_tunnels.c           | 12 ------
 include/net/udp_tunnel.h                      |  9 ++--
 net/core/dev.c                                |  2 -
 net/ipv4/udp_tunnel_nic.c                     | 33 +++++++--------
 net/ipv4/udp_tunnel_stub.c                    |  2 +
 17 files changed, 34 insertions(+), 89 deletions(-)

-- 
2.49.0

