Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 84787AD23CA
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 Jun 2025 18:25:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C655181FD0;
	Mon,  9 Jun 2025 16:25:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JFxMN91iASxd; Mon,  9 Jun 2025 16:25:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 336F281FD2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749486346;
	bh=a4kOKITQRITLOt58CZKljNXLISgdMuGvM6LUD4e7M+A=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=0YXTPrcoqN6XHDSVbfHqdDKAe22dxBp52R4RsK++FQX2LXGVNtMZIxTaP6xg3/IfW
	 4+ZKKgc9YU7BILJg/bc8iQlcxY9emx6rDK7iS6Yr4RYxhzPT959rjnWS7OgOAPd4Pk
	 Aq6XiQ4ewyuGu4kzfM6zd9AJoUfMnPQhI9iZWG6KS/I7PTD1LCrLruwfoHTkmm7muj
	 mFeDT2c27PrJY9cHz+91VqSvJRI5i+BPz+miZpurbQ7begQ7ZcnlC1H/C4gB+61Mgw
	 12Zzb+ugxKo6QTBwdnSpdT+hb6q/6BBbTThLxvgIlQ/FjGioN4uJxdPRYTH4q5oKKX
	 ORHMj2toK537g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 336F281FD2;
	Mon,  9 Jun 2025 16:25:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id B3814CD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jun 2025 16:25:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9901561181
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jun 2025 16:25:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 70uvOcS7lRF7 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Jun 2025 16:25:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::632; helo=mail-pl1-x632.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 16F5661019
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 16F5661019
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com
 [IPv6:2607:f8b0:4864:20::632])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 16F5661019
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jun 2025 16:25:43 +0000 (UTC)
Received: by mail-pl1-x632.google.com with SMTP id
 d9443c01a7336-234b440afa7so46368805ad.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 09 Jun 2025 09:25:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1749486343; x=1750091143;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=a4kOKITQRITLOt58CZKljNXLISgdMuGvM6LUD4e7M+A=;
 b=P/UUXwELnojDabvzEMdXWZQjnNzQXkaam2IYkloju5K1g7aNuJWYiy+aAQ9VTpdcjv
 /GaEwu5WMfTOXy7WcHkIct8u2jte2q/YomBjK4GrxrOS0oFzE+fBAKYz6B86JXDRe8xc
 6u37z6Zcy5YmDrNlRR0sGVfJwB/PTFdKMkzzADkzO/emulKTBschjW9cidZ02eQoZWlk
 L/Cx2pnU/N/KN1wWtaH/otegbpaETKXDYXW79NyKzwNT/RhwFBPF/kFhI/UYtTUHJn1b
 MX3IRpVLk27bB5fju75V/LrJSVIELrFbgwjv/PWNnhyYzxyN8s369r+hv+rMrDXN/YfJ
 /8Xg==
X-Forwarded-Encrypted: i=1;
 AJvYcCV81OYKY7q68/tbCYVkL+y1AA8KtTPaGEV7wLLvlV71aF/wu0fV1vJZY8hV8sHgLCtAcfVvCQZv2rVUmsTT0lk=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yxqn4ZB9ReawBf3hZ3w89KSnv7NyU8rKWVHRkBE3gZyFWvI+pm4
 oBVxPDnweBcX7KhTOLjye+D3HAuiINSmjjajpxHJV8IifGPqcQpkaqg=
X-Gm-Gg: ASbGncv+4rrk/9X6/4jzxY62p+2DiPpq4HNLiKkGXxFrj0Y+5vmkF3AyvSAoBBCSjUg
 XV3Za91wleikyn6TW0bUmccVI1f9ga3EWIeDrYZzZjFT7xZKW/xNro4KBp35uIrrHWUiXsup3f3
 qkfExCkStw/mP8Q7QkpJuJ12QCct3u/hMjgiSR6pSb8tO/L57igkz1PjVjVDp/AQYsOKA740ccE
 snL7CY9Oa1rzAY8RU9/neVCCWcdf5Exjt+THDU4utnVFGd6SWbjeePLuF4myvAjBYAPCYO5+2E0
 NCFO8ZPAIxR/maZPvdzr4UCpNk9/QF8BjyocwSIevPzlznD5pylLPQU5auKF5rFGWxdBG1bTxKC
 Sn50YbBeEW/s5rhhKrXLAjLAMJAEJ/T0tnw==
X-Google-Smtp-Source: AGHT+IHPHlziNsak1LqRUNF3N7nomngCbHiW2pNrdccj9YyCAqRz24LVjTOtRhdyC+7j5Al+6L2/1w==
X-Received: by 2002:a17:903:41c8:b0:234:e3b7:5cd2 with SMTP id
 d9443c01a7336-23601da9abbmr211768695ad.46.1749486343206; 
 Mon, 09 Jun 2025 09:25:43 -0700 (PDT)
Received: from localhost (c-73-158-218-242.hsd1.ca.comcast.net.
 [73.158.218.242]) by smtp.gmail.com with UTF8SMTPSA id
 d9443c01a7336-2360341097fsm56723385ad.214.2025.06.09.09.25.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Jun 2025 09:25:42 -0700 (PDT)
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
Date: Mon,  9 Jun 2025 09:25:37 -0700
Message-ID: <20250609162541.1230022-1-stfomichev@gmail.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1749486343; x=1750091143; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=a4kOKITQRITLOt58CZKljNXLISgdMuGvM6LUD4e7M+A=;
 b=BLG92IcajN9nU8HF/FK2LR/MetEaw104vtvSdebbwe2u/9SdXbxj+KVDOY7z9nQujd
 Awi6bEd7lWAEQbtMNe+gg4y6OQdmxH7sscvc1BGpXLgH2JgPYTH56eotrD3ziYuPD5p7
 u13suUVcE2WJnWdIgdxOtv+Lis9CFXR7+2Fb6b77OJ7EDX+cKZAvNcIE3/thJnPTNIOA
 JhwMcabGAp5hL7u1Oj9ilxo4v8E8W4zw/D+Qv0+u7W7YlfwZwVsolU4iAXm9CdKNftVC
 aCT92bmd70VDGq3PG4IC5ntDzucXsormAxLburzcyB1TzLgoxNxmJ457qTei31Adz8sl
 b1/A==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=BLG92Ica
Subject: [Intel-wired-lan] [PATCH net-next v2 0/4] udp_tunnel: remove
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
 .../drivers/net/netdevsim/udp_tunnel_nic.sh   | 10 -----
 17 files changed, 31 insertions(+), 97 deletions(-)

-- 
2.49.0

