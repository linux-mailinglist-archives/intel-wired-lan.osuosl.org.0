Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 30E309EA39F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Dec 2024 01:26:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0E4196068D;
	Tue, 10 Dec 2024 00:26:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jddtQKIrbqpl; Tue, 10 Dec 2024 00:26:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3CB6F6077F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733790406;
	bh=e84sIB0dEwMHeIpxTrADlqUaVKzRm4SIiH0NsasMGyQ=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=4abWjO3iZkMqnrI6JDHsR1n3h01xtMAxcCD4UccaH1XZCc4vznXcUvJaRGODs4q9+
	 MOce8Du1crHICKu10wASjfDIHGmuttkDDfebTF2ZidVFjT+iIQhhBFQIuevVNhOFMq
	 B56yhj1soNneqsOxIuPf63UrTdm3gz1VhgaIl40MXa438JbJiJC1JgbOu+3Y3BfIJj
	 yuSHRcnM9n4GM+TVTdaZ4fCyB4nXJBrmntFFjEb8+WsSu5v/3LcQmj2kJonx3rmyCX
	 n6eSwCK7er/wEtetjJhcVZOjUmhva7VFDWCpLHptennHhMQD2ViDxqXo3OuLE72kdU
	 Y3buZPJuBQa8w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3CB6F6077F;
	Tue, 10 Dec 2024 00:26:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5C440E11
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2024 00:26:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 419E940136
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2024 00:26:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V4uatQ8Lv_0J for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Dec 2024 00:26:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 56B33400FF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 56B33400FF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 56B33400FF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2024 00:26:42 +0000 (UTC)
X-CSE-ConnectionGUID: WJch4aS+T6W4rx2SXmTqJA==
X-CSE-MsgGUID: UHBKG7HwR5GXh9dHum8MTw==
X-IronPort-AV: E=McAfee;i="6700,10204,11281"; a="44791386"
X-IronPort-AV: E=Sophos;i="6.12,220,1728975600"; d="scan'208";a="44791386"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2024 16:26:42 -0800
X-CSE-ConnectionGUID: xOhnTAYVSU2xk+AVwoOtOA==
X-CSE-MsgGUID: Zwa5mrsERkaR3ZTM3a+07w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,220,1728975600"; d="scan'208";a="126132066"
Received: from cmdeoliv-mobl4.amr.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.109.73])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2024 16:26:38 -0800
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Cc: intel-wired-lan@lists.osuosl.org, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, michael.chan@broadcom.com, tariqt@nvidia.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 Ahmed Zaki <ahmed.zaki@intel.com>
Date: Mon,  9 Dec 2024 17:26:20 -0700
Message-ID: <20241210002626.366878-1-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733790403; x=1765326403;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=r5zc0yySDDLCvH/uAqc6cFyI/K7kQYTxKVHdUDc7sTI=;
 b=F5i1+cZyLaB/k81ZBWLgcTRwJ6Y/fJIKZO3qBhX80LDB9AtgZe4SlD4C
 QTKKTz1M4hHUkf1x44pG7rxwBcLTIZ3HkKYlfa7zaiy/qFrSmRoJkdIXU
 8AH5MyToWFeME64DzMGiYRo1pxslzj5QvGVM9nKlh4Yh3opgGZON0DshK
 Ooy01PNpbKKMz4hJ0j5VrjahLvRnQxECC72M6462AESlmXADY1ZnF4lee
 5B/AG7/XnD4CQMGu5fQYpJnC9SdJR+tgIM/5TSJHLLfg5wlza9omE+HQf
 iGDKLN7miytg529ML9MOuITCdJrdqDmxXFd0UbuwvCb8D9kKGd176eZI4
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=F5i1+cZy
Subject: [Intel-wired-lan] [PATCH v1 net-next 0/6] net: napi: add CPU
 affinity to napi->config
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

Move the IRQ affinity management to the napi struct. All drivers that are
already using netif_napi_set_irq() are modified to the new API. Except
mlx5 because it is implementing IRQ pools and moving to the new API does
not seem trivial.

Tested on bnxt, ice and idpf.
---
Opens: is cpu_online_mask the best default mask? drivers do this differently 

RFC -> v1:
    - move static inline affinity functions to net/dev/core.c
    - add the new napi->irq_flags (patch 1)
    - add code changes to bnxt, mlx4 and ice.

Ahmed Zaki (6):
  net: napi: add irq_flags to napi struct
  net: napi: add CPU affinity to napi->config
  bnxt: use napi's irq affinity
  mlx4: use napi's irq affinity
  ice: use napi's irq affinity
  idpf: use napi's irq affinity

 drivers/net/ethernet/amazon/ena/ena_netdev.c  |  2 +-
 drivers/net/ethernet/broadcom/bnxt/bnxt.c     | 26 ++---------
 drivers/net/ethernet/broadcom/bnxt/bnxt.h     |  2 -
 drivers/net/ethernet/broadcom/tg3.c           |  2 +-
 drivers/net/ethernet/google/gve/gve_utils.c   |  2 +-
 drivers/net/ethernet/intel/e1000/e1000_main.c |  2 +-
 drivers/net/ethernet/intel/e1000e/netdev.c    |  2 +-
 drivers/net/ethernet/intel/ice/ice.h          |  3 --
 drivers/net/ethernet/intel/ice/ice_base.c     |  7 +--
 drivers/net/ethernet/intel/ice/ice_lib.c      |  9 +---
 drivers/net/ethernet/intel/ice/ice_main.c     | 44 -------------------
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 19 +++-----
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  6 +--
 drivers/net/ethernet/mellanox/mlx4/en_cq.c    |  8 ++--
 .../net/ethernet/mellanox/mlx4/en_netdev.c    | 33 +-------------
 drivers/net/ethernet/mellanox/mlx4/eq.c       | 22 ----------
 drivers/net/ethernet/mellanox/mlx4/main.c     | 42 ++----------------
 drivers/net/ethernet/mellanox/mlx4/mlx4.h     |  1 -
 drivers/net/ethernet/mellanox/mlx4/mlx4_en.h  |  1 -
 .../net/ethernet/mellanox/mlx5/core/en_main.c |  2 +-
 drivers/net/ethernet/meta/fbnic/fbnic_txrx.c  |  3 +-
 include/linux/netdevice.h                     | 11 ++++-
 net/core/dev.c                                | 33 +++++++++++++-
 23 files changed, 73 insertions(+), 209 deletions(-)

-- 
2.47.0

