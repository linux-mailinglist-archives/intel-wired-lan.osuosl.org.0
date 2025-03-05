Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E100A50483
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Mar 2025 17:22:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8229F81B10;
	Wed,  5 Mar 2025 16:22:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xPKvN9ch0iqh; Wed,  5 Mar 2025 16:22:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7C2B2811D8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741191739;
	bh=JJ0zmITMqCNStJ74AOBi1UE1Q2mQuFAZIWyse1wnZs0=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=NGHJCBT5uhY/xJtkxqj9u5Tk8zC1OGlo/M/6/Fnt2NvljwO9lIRF0aWGlWZLxV8yT
	 Xzg3c8Ti5FfHxcZzkH4ofFhPQ3+CHyICNUJSpDMz3OvWU+euvRtTDGzIaFzpNFDyKD
	 MftrdutcuRNTDccVBX8QRbXIHtZpotWMSerGPeJB83L3bcufAwDVJDC3fIJ85M3k7Y
	 UhNt8YSrTLQ29beY2zFHZHhtJAhE/Wd2GMeadJtl7rZCl2DuCOAph1BTACpnzA9GnV
	 XqLqoTuFjK9++Z7g1shRb948sNT0uekNk5G7GArUW25NmHh9SF12JP9VffimyqjJr9
	 ku4i2ZLcD1M2A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7C2B2811D8;
	Wed,  5 Mar 2025 16:22:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 89F6395F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 16:22:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 67749608EB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 16:22:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gilYCqdoo_HC for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Mar 2025 16:22:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 84380608D1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 84380608D1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 84380608D1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 16:22:15 +0000 (UTC)
X-CSE-ConnectionGUID: vQq+24X4TyujnPKUmShncg==
X-CSE-MsgGUID: zeYXwAXOTF2W7jqno8UxFg==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="42026366"
X-IronPort-AV: E=Sophos;i="6.14,223,1736841600"; d="scan'208";a="42026366"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 08:22:15 -0800
X-CSE-ConnectionGUID: mMOOr5OgRUKBjXWggRPiRQ==
X-CSE-MsgGUID: 1jGkdLoVSI6dWxok8TQhew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,223,1736841600"; d="scan'208";a="123832845"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa004.fm.intel.com with ESMTP; 05 Mar 2025 08:22:10 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Simon Horman <horms@kernel.org>,
 bpf@vger.kernel.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Wed,  5 Mar 2025 17:21:16 +0100
Message-ID: <20250305162132.1106080-1-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741191736; x=1772727736;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=v13//dhbWZHhDVaFI/IbNE+FzNKUL+cXelUKHDL/Wds=;
 b=kNPSttgDq/cTkHnJOosh0mYt752OZw3zgOuJydfCvVlAdXSi+xTjwEtQ
 sqN5FlSdcsurk2NJAV2VLlhMp/pyw0lJ7d57/t3NC73T+OSlLCHoFdpBX
 UTr8eBnMmyV4T/etVPOSmiwk0IvAPc4sPskCN6rKg7rsgPeN5u5tui1eH
 SdkBe0mouIkh8ex5w273fn6yTiVSCnN2606N3mV6IWF8kEjoN+e/hnWK1
 PnR178QdEsXm/HrPBhjOnVbevT5ADvgWD41/7R5MFj+EJlaOO2gbDQdwL
 3k5Ek4f6aQGB8uzg6FzeK8IiyqKJ67ND07cbXHXwsyWnW81Gx+6BWrf3s
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kNPSttgD
Subject: [Intel-wired-lan] [PATCH net-next 00/16] idpf: add XDP support
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

Add XDP support (w/o XSk yet) to the idpf driver using the libeth_xdp
sublib, which will be then reused in at least iavf and ice.

In general, nothing outstanding comparing to ice, except performance --
let's say, up to 2x for .ndo_xdp_xmit() on certain platforms and
scenarios. libeth_xdp doesn't reinvent the wheel, mostly just
accumulates and optimizes what was already done before to stop copying
that wheel and the bugs over and over again.
idpf doesn't support VLAN Rx offload, so only the hash hint is present
for now.

Alexander Lobakin (12):
  libeth: convert to netmem
  libeth: support native XDP and register memory model
  libeth: add a couple of XDP helpers (libeth_xdp)
  libeth: add XSk helpers
  idpf: fix Rx descriptor ready check barrier in splitq
  idpf: a use saner limit for default number of queues to allocate
  idpf: link NAPIs to queues
  idpf: add support for nointerrupt queues
  idpf: use generic functions to build xdp_buff and skb
  idpf: add support for XDP on Rx
  idpf: add support for .ndo_xdp_xmit()
  idpf: add XDP RSS hash hint

Michal Kubiak (4):
  idpf: make complq cleaning dependent on scheduling mode
  idpf: remove SW marker handling from NAPI
  idpf: prepare structures to support XDP
  idpf: implement XDP_SETUP_PROG in ndo_bpf for splitq

 drivers/net/ethernet/intel/idpf/Kconfig       |    2 +-
 drivers/net/ethernet/intel/libeth/Kconfig     |   10 +-
 drivers/net/ethernet/intel/idpf/Makefile      |    2 +
 drivers/net/ethernet/intel/libeth/Makefile    |    8 +-
 include/net/libeth/types.h                    |  106 +-
 drivers/net/ethernet/intel/idpf/idpf.h        |   35 +-
 .../net/ethernet/intel/idpf/idpf_lan_txrx.h   |    6 +-
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  126 +-
 drivers/net/ethernet/intel/idpf/xdp.h         |  180 ++
 drivers/net/ethernet/intel/libeth/priv.h      |   37 +
 include/net/libeth/rx.h                       |   28 +-
 include/net/libeth/tx.h                       |   36 +-
 include/net/libeth/xdp.h                      | 1869 +++++++++++++++++
 include/net/libeth/xsk.h                      |  685 ++++++
 drivers/net/ethernet/intel/iavf/iavf_txrx.c   |   14 +-
 drivers/net/ethernet/intel/idpf/idpf_dev.c    |   11 +-
 .../net/ethernet/intel/idpf/idpf_ethtool.c    |    6 +-
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |   29 +-
 drivers/net/ethernet/intel/idpf/idpf_main.c   |    1 +
 .../ethernet/intel/idpf/idpf_singleq_txrx.c   |  111 +-
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   |  678 +++---
 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |   11 +-
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   |  113 +-
 drivers/net/ethernet/intel/idpf/xdp.c         |  509 +++++
 drivers/net/ethernet/intel/libeth/rx.c        |   40 +-
 drivers/net/ethernet/intel/libeth/tx.c        |   41 +
 drivers/net/ethernet/intel/libeth/xdp.c       |  449 ++++
 drivers/net/ethernet/intel/libeth/xsk.c       |  269 +++
 28 files changed, 4925 insertions(+), 487 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/idpf/xdp.h
 create mode 100644 drivers/net/ethernet/intel/libeth/priv.h
 create mode 100644 include/net/libeth/xdp.h
 create mode 100644 include/net/libeth/xsk.h
 create mode 100644 drivers/net/ethernet/intel/idpf/xdp.c
 create mode 100644 drivers/net/ethernet/intel/libeth/tx.c
 create mode 100644 drivers/net/ethernet/intel/libeth/xdp.c
 create mode 100644 drivers/net/ethernet/intel/libeth/xsk.c

---
Sending in one batch to introduce/show both the lib and the user.
Let me know if I'd better split.
-- 
2.48.1

