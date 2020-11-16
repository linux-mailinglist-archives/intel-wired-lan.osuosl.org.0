Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C59AC2B3FD5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Nov 2020 10:35:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1D69F2043D;
	Mon, 16 Nov 2020 09:35:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wfRsbB-4o4UX; Mon, 16 Nov 2020 09:35:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C5D482044A;
	Mon, 16 Nov 2020 09:35:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 649D11BF470
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 09:35:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 55B472043D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 09:35:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vMO1gexuASvM for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Nov 2020 09:35:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
 [209.85.167.68])
 by silver.osuosl.org (Postfix) with ESMTPS id B96BD20104
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 09:35:12 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id v144so24120770lfa.13
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 01:35:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=phafJMA73+KNOmHJBlDaNagv8vGkjcmIaidHQZjre5g=;
 b=VimgtruRxZPULC4qattrtFlD0286R2FnJ8dcr0wRMQ6KLayA5SXdQjqeZS80CCvkkt
 e9xdAjcBxHLSy8LitTPB/6OQ3gPe+7xfhVPvnr7xNvg57M6DxxpvJCUtlRktvv1rWiFr
 tlPW+C03EQ4J2b4z/y49Uj+VobHVGYHs8jl6sMehtkGJaMTqSa4J2HzaJUZxoehRhX6E
 Og8nk2jfQdqKB/aWeSaTzSEgjp7c+97Y5VUlRwAK8SKggJ58zNSrOEnyExnxhn6XRJkp
 AWJ1UyCBRMfORZ//IlTfIx9raiI1onYeaEZ+Z6O3qxpoWZOq5FnlpctAXpFRFDXLq0nG
 62iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=phafJMA73+KNOmHJBlDaNagv8vGkjcmIaidHQZjre5g=;
 b=XpwgdtSQTIB2/9lXeHZGhb3kEgnL0zGbUT9V+u5tpk9Ep/nD1PQdcY31IPIixCx+rY
 g/9dFr75lMDlywW6ZMTIPVvDD45vJwfMh1yUci9n9yu00NCM2NXwQB4EglrClZmslNlG
 LqNw2jXnnGKsHcNYD9yNX3Urns0QQfS6J1LH8guSah0RnvAkGt8WTiGlztcAndrUIX8F
 Z6d/O7wzTYpcbFpRyGywDUij+Y71d7Olprpob5VaOshh6sbvIgjYzmz7EjcmpcGazOb5
 ucVGEjXM0kR4Y5lWpKCxUNxlo0forSX3ehbfEKrSNr3UJH3WYP07upN5cGNFSCyeCymb
 dNUQ==
X-Gm-Message-State: AOAM531EF16pq92ByfKG00Cvr6DqPc7Raa85cLaGWtDfaHLgUwZRsyI4
 ejIAX8Y/9yAXsEdfqGB12Qw=
X-Google-Smtp-Source: ABdhPJxVqmfN2e4+h/bCRxlDwFEvQCslssey+W3hiVKCreqO4jwBhaQqVcPdVREk+7csPhECbGFrjQ==
X-Received: by 2002:a19:cb8f:: with SMTP id b137mr5193330lfg.448.1605519310761; 
 Mon, 16 Nov 2020 01:35:10 -0800 (PST)
Received: from localhost.localdomain (87-205-71-93.adsl.inetia.pl.
 [87.205.71.93])
 by smtp.gmail.com with ESMTPSA id t26sm2667986lfp.296.2020.11.16.01.35.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Nov 2020 01:35:10 -0800 (PST)
From: alardam@gmail.com
X-Google-Original-From: marekx.majtyka@intel.com
To: magnus.karlsson@intel.com, bjorn.topel@intel.com,
 andrii.nakryiko@gmail.com, kuba@kernel.org, ast@kernel.org,
 daniel@iogearbox.net, netdev@vger.kernel.org, davem@davemloft.net,
 john.fastabend@gmail.com, hawk@kernel.org, toke@redhat.com
Date: Mon, 16 Nov 2020 10:34:44 +0100
Message-Id: <20201116093452.7541-1-marekx.majtyka@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 0/8] New netdev feature flags for XDP
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
  - bnxt, 
  - dpaa2, 
  - mvmeta, 
  - mvpp2, 
  - qede,
  - sfc, 
  - netsec, 
  - cpsw, 
  - xen, 
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

Marek Majtyka (8):
  net: ethtool: extend netdev_features flag set
  drivers/net: turn XDP flags on
  xsk: add usage of xdp netdev_features flags
  xsk: add check for full support of XDP in bind
  libbpf: extend netlink attribute API
  libbpf: add functions to get XSK modes
  libbpf: add API to get XSK/XDP caps
  samples/bpf/xdp: apply netdev XDP/XSK modes info

 drivers/net/ethernet/broadcom/bnxt/bnxt.c     |   1 +
 .../net/ethernet/freescale/dpaa2/dpaa2-eth.c  |   1 +
 drivers/net/ethernet/intel/i40e/i40e_main.c   |   2 +
 drivers/net/ethernet/intel/ice/ice_main.c     |   4 +
 drivers/net/ethernet/intel/igb/igb_main.c     |   2 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |   3 +
 drivers/net/ethernet/marvell/mvneta.c         |   1 +
 .../net/ethernet/marvell/mvpp2/mvpp2_main.c   |   1 +
 .../net/ethernet/mellanox/mlx5/core/en_main.c |   2 +
 drivers/net/ethernet/qlogic/qede/qede_main.c  |   1 +
 drivers/net/ethernet/sfc/efx.c                |   1 +
 drivers/net/ethernet/socionext/netsec.c       |   1 +
 drivers/net/ethernet/ti/cpsw.c                |   2 +
 drivers/net/ethernet/ti/cpsw_new.c            |   2 +
 drivers/net/tun.c                             |   4 +
 drivers/net/veth.c                            |   1 +
 drivers/net/virtio_net.c                      |   1 +
 drivers/net/xen-netfront.c                    |   1 +
 include/linux/netdev_features.h               |   6 +
 include/net/xdp.h                             |  13 +
 include/net/xdp_sock_drv.h                    |  11 +
 include/uapi/linux/if_xdp.h                   |   1 +
 net/ethtool/common.c                          |   2 +
 net/xdp/xsk.c                                 |   4 +-
 net/xdp/xsk_buff_pool.c                       |  21 +-
 samples/bpf/xdpsock_user.c                    | 117 +++++-
 tools/include/uapi/linux/ethtool.h            |  44 ++
 tools/include/uapi/linux/if_xdp.h             |   1 +
 tools/lib/bpf/ethtool.h                       |  49 +++
 tools/lib/bpf/libbpf.h                        |   1 +
 tools/lib/bpf/libbpf.map                      |   1 +
 tools/lib/bpf/netlink.c                       | 379 +++++++++++++++++-
 tools/lib/bpf/nlattr.c                        | 105 +++++
 tools/lib/bpf/nlattr.h                        |  22 +
 tools/lib/bpf/xsk.c                           |  54 ++-
 tools/lib/bpf/xsk.h                           |   3 +-
 36 files changed, 845 insertions(+), 20 deletions(-)
 create mode 100644 tools/lib/bpf/ethtool.h

-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
