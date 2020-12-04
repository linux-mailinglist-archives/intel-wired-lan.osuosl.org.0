Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F3892CEC30
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Dec 2020 11:30:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BFB7F8778B;
	Fri,  4 Dec 2020 10:30:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t4yzHiAkzdEQ; Fri,  4 Dec 2020 10:30:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6B1CC87812;
	Fri,  4 Dec 2020 10:30:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5DB911BF391
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 10:30:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2C6CA20763
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 10:30:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fKqjdbLkGiGR for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Dec 2020 10:29:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 6EFBE20551
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 10:29:59 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id f24so5979810ljk.13
 for <intel-wired-lan@lists.osuosl.org>; Fri, 04 Dec 2020 02:29:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=So8nR/+TGOHKI8YuGPoCpAuJbgXY1+7Z6aKdtfAcFRs=;
 b=aJR/VMmcsWYVZOQD4ndCpzEUaMvKQnZGCRIe/JmGPbpOmT3hVOVYoy8Kp4NLuwG1/X
 oYIM8zSHpYPvyRC3n9QJFIbxj74IrvZACRHpIs65+ms63Ce6UJVvgZee45AB1ybyTFFC
 puD3GSKvXm1+UcZ+e5TL9AwmPMpJz8Cwz0/jOL3cbmeEU4choM1EEl041tJs/i2/TjJW
 3Qcn+zTid6JC0bEz7LRa62Jt2EnlX4aekHk/ntoFLGd1hYGWAi1iks2nXJUWMxewtAmA
 o5LDAjOYjZn2HK3IsUn4p1nYiVIAx5aNvPeVlZgClge2Z2aa0laim+B/QlXZDtJodvsS
 Ms4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=So8nR/+TGOHKI8YuGPoCpAuJbgXY1+7Z6aKdtfAcFRs=;
 b=BFnnVOb3Mhk6fJg2mbZ8yCrsj1r7V3OCk8/aiG29NBimTw2zTlSIML6iHCK4MFYaeU
 PjkTMCEehkKQ1r1iPy298ObTL68NNOXlXXeviS2ic6YWxHEDMm2RkoeiscfOY91jTvKF
 oO7gVUrjSKhYEOpjEqI54c82Ufc/fQ31oS5jZk/JjvgzWWmb5MUyjZMtJMytnslHhKFu
 0jwRUIr4GJebnCvYEsZuHMtw4JiSZ2092eFZQPxz5rfRIRvN75Yz5Ldabom62mgBBDCh
 EYdXk3Yh3Uv0Xg5OCTq5vVvI3fKYxa629a9udaj4eo9BpHI+dL80FmaoskQXqfUoE5aL
 0j1A==
X-Gm-Message-State: AOAM531TPAQOQ1JHi8I8qLnGY8bDf61kQH43I16pacDeTU9Cewzk8QFf
 7m6RZqI8t6D5wX0EzWzL1x4=
X-Google-Smtp-Source: ABdhPJwCkpGmh1eFASP0RSM302qX2ny3ITLPlqR8xshLeF7KBQx5UWSO2wPReK01NvP9zJCD4pYJwQ==
X-Received: by 2002:a2e:9718:: with SMTP id r24mr3253682lji.20.1607077797549; 
 Fri, 04 Dec 2020 02:29:57 -0800 (PST)
Received: from localhost.localdomain (87-205-71-93.adsl.inetia.pl.
 [87.205.71.93])
 by smtp.gmail.com with ESMTPSA id d9sm62738lfj.228.2020.12.04.02.29.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Dec 2020 02:29:56 -0800 (PST)
From: alardam@gmail.com
X-Google-Original-From: marekx.majtyka@intel.com
To: magnus.karlsson@intel.com, bjorn.topel@intel.com,
 andrii.nakryiko@gmail.com, kuba@kernel.org, ast@kernel.org,
 daniel@iogearbox.net, netdev@vger.kernel.org, davem@davemloft.net,
 john.fastabend@gmail.com, hawk@kernel.org, toke@redhat.com
Date: Fri,  4 Dec 2020 11:28:56 +0100
Message-Id: <20201204102901.109709-1-marekx.majtyka@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 bpf 0/5] New netdev feature flags for
 XDP
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
Cc: maciejromanfijalkowski@gmail.com, Marek Majtyka <marekx.majtyka@intel.com>,
 intel-wired-lan@lists.osuosl.org, jonathan.lemon@gmail.com,
 bpf@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Marek Majtyka <marekx.majtyka@intel.com>

Implement support for checking if a netdev has native XDP and AF_XDP zero
copy support. Previously, there was no way to do this other than to try
to create an AF_XDP socket on the interface or load an XDP program and
see if it worked. This commit changes this by extending existing
netdev_features in the following way:
 * xdp        - full XDP support (XDP_{TX, PASS, DROP, ABORT, REDIRECT})
 * af-xdp-zc  - AF_XDP zero copy support
NICs supporting these features are updated by turning the corresponding
netdev feature flags on.

NOTE:
 Only the compilation check was performed for:
  - ice, 
  - igb,
  - mlx5, 
  - mlx4.
  - bnxt, 
  - dpaa2, 
  - mvmeta, 
  - mvpp2, 
  - qede,
  - sfc, 
  - netsec, 
  - cpsw, 
  - xen, 
  - netronome
  - ena
  - virtio_net.

Libbpf library is extended in order to provide a simple API for gathering
information about XDP supported capabilities of a netdev. This API
utilizes netlink interface towards kernel. With this function it is
possible to get xsk supported options for netdev beforehand.
The new API is used in core xsk code as well as in the xdpsock sample.

These new flags also solve the problem with strict recognition of zero
copy support. The problem is that there are drivers out there that only
support XDP partially, so it is possible to successfully load the XDP
program in native mode, but it will still not be able to support zero-copy
as it does not have XDP_REDIRECT support. With af-xdp-zc flag the check
is possible and trivial.

Changes since v1:
 * Replace netdev_feature flags variable with a bitmap of XDP-specific
   properties. New kernel and uapi interfaces are added to handle access
   to the XDP netdev properties bitmap. [Toke]

 * Set more fine grained XPD properties for netdevs when necessary. [Toke]

 * Extend ethtool netlink interface in order to get access to the XDP
   bitmap (XDP_PROPERTIES_GET). [Toke]

 * Removed the libbpf patches for now.
---
Marek Majtyka (5):
  net: ethtool: add xdp properties flag set
  drivers/net: turn XDP properties on
  xsk: add usage of xdp properties flags
  xsk: add check for full support of XDP in bind
  ethtool: provide xdp info with XDP_PROPERTIES_GET

 .../networking/netdev-xdp-properties.rst      | 42 ++++++++
 drivers/net/ethernet/amazon/ena/ena_netdev.c  |  2 +
 drivers/net/ethernet/broadcom/bnxt/bnxt.c     |  1 +
 .../net/ethernet/freescale/dpaa2/dpaa2-eth.c  |  1 +
 drivers/net/ethernet/intel/i40e/i40e_main.c   |  3 +
 drivers/net/ethernet/intel/ice/ice_main.c     |  4 +
 drivers/net/ethernet/intel/igb/igb_main.c     |  2 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  3 +
 drivers/net/ethernet/marvell/mvneta.c         |  3 +
 .../net/ethernet/marvell/mvpp2/mvpp2_main.c   |  3 +
 .../net/ethernet/mellanox/mlx4/en_netdev.c    |  2 +
 .../net/ethernet/mellanox/mlx5/core/en_main.c |  3 +
 .../ethernet/netronome/nfp/nfp_net_common.c   |  5 +
 drivers/net/ethernet/qlogic/qede/qede_main.c  |  2 +
 drivers/net/ethernet/sfc/efx.c                |  2 +
 drivers/net/ethernet/socionext/netsec.c       |  2 +
 drivers/net/ethernet/ti/cpsw.c                |  3 +
 drivers/net/ethernet/ti/cpsw_new.c            |  2 +
 drivers/net/tun.c                             |  4 +
 drivers/net/veth.c                            |  2 +
 drivers/net/virtio_net.c                      |  2 +
 drivers/net/xen-netfront.c                    |  2 +
 include/linux/netdevice.h                     |  2 +
 include/linux/xdp_properties.h                | 53 +++++++++++
 include/net/xdp.h                             | 95 +++++++++++++++++++
 include/net/xdp_sock_drv.h                    | 10 ++
 include/uapi/linux/ethtool.h                  |  1 +
 include/uapi/linux/ethtool_netlink.h          | 14 +++
 include/uapi/linux/if_xdp.h                   |  1 +
 include/uapi/linux/xdp_properties.h           | 32 +++++++
 net/ethtool/Makefile                          |  2 +-
 net/ethtool/common.c                          | 11 +++
 net/ethtool/common.h                          |  4 +
 net/ethtool/netlink.c                         | 38 +++++---
 net/ethtool/netlink.h                         |  2 +
 net/ethtool/strset.c                          |  5 +
 net/ethtool/xdp.c                             | 76 +++++++++++++++
 net/xdp/xsk.c                                 |  4 +-
 net/xdp/xsk_buff_pool.c                       | 20 +++-
 tools/include/uapi/linux/if_xdp.h             |  1 +
 tools/lib/bpf/xsk.c                           |  3 +
 41 files changed, 449 insertions(+), 20 deletions(-)
 create mode 100644 Documentation/networking/netdev-xdp-properties.rst
 create mode 100644 include/linux/xdp_properties.h
 create mode 100644 include/uapi/linux/xdp_properties.h
 create mode 100644 net/ethtool/xdp.c


base-commit: eceae70bdeaeb6b8ceb662983cf663ff352fbc96
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
