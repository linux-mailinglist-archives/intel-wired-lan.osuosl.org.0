Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7648781D155
	for <lists+intel-wired-lan@lfdr.de>; Sat, 23 Dec 2023 03:58:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F1F6C4150F;
	Sat, 23 Dec 2023 02:58:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F1F6C4150F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703300294;
	bh=gYL7rz/kW5P9i5/Jc3j8gmlSCzvU2q7M1X16FRRZVE0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=10Yt/lqVAn+NKWQk9goo3ZMLOaEbU3Wq1rRCGxU3X2I4G8DOeJG4c5sL8GVxSaKeQ
	 483jw0eVb1MqTTXv8B1cKAMiFm1mpqfcCletEaQbz8zt0zYSIlTrxUS01wL7/AQppj
	 1np9sTBIZTN7Gv5GcZZiw9IOwvkrXg8VXQqiR1Guc64CY80s6f+y9CciyMPGLNW3wr
	 jOqRkajTuJZoFk49URZ5412yBxSQrxGilrpMB+Qa3f9YJ8qT1A/YLvmlwTq/L7PKXA
	 X0icPY7eejgTB1E+mYumXq4laJ2GNkoobaPnHn5Nput7+8xdfMhp3jbAtSge3SWQb+
	 spYZ/+/QcL+pQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rbehGhyqlgfi; Sat, 23 Dec 2023 02:58:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6FC88415FA;
	Sat, 23 Dec 2023 02:58:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6FC88415FA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 81D5D1BF3EC
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 02:58:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 661F260AFC
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 02:58:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 661F260AFC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0D6VQNnbqMQ0 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 23 Dec 2023 02:58:05 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6CC6460AFB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 02:58:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6CC6460AFB
X-IronPort-AV: E=McAfee;i="6600,9927,10932"; a="386610754"
X-IronPort-AV: E=Sophos;i="6.04,298,1695711600"; d="scan'208";a="386610754"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2023 18:58:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,298,1695711600"; d="scan'208";a="25537368"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa001.jf.intel.com with ESMTP; 22 Dec 2023 18:58:00 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Sat, 23 Dec 2023 03:55:20 +0100
Message-ID: <20231223025554.2316836-1-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703300285; x=1734836285;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=97pO/YlarLZGpmpMeSstT9cUYD1KWSch4pdQIvRSQLc=;
 b=XLFT6QbTlPDTFXsx3W7/UClTmKdLkvk/0QMfBCxceuoodCl17J0QfVMl
 34zURGacNn1gJmBD4dM59z/MlIEnNVqvMrf3Rpp4PP+0b/eVS31H9c5LT
 fiTxwfSXvhwT1XaHe/ReY81a4CyAmA6bP1Nn0MFlSeqWzoKzlIdysJxQV
 3DeJty/U69Nu6YA4pvZVxXsLyL2Qy3ILpRbFIfdf4DH0iLrtgkQBPH1Em
 isRc0K2nOVzRupafXT6JFuyhmiwy7egatH+Kli9apew+MIZzBUyIMJM2c
 t5A2DI70uaZgR8PD2Jm5N0hc5Cp+qPXUBfzgebhB4a/lR0QN/HMZbTDOF
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XLFT6QbT
Subject: [Intel-wired-lan] [PATCH RFC net-next 00/34] Christmas 3-serie XDP
 for idpf (+generic stuff)
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
Cc: Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Alexei Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

I was highly asked to send this WIP before the holidays to trigger
some discussions at least for the generic parts.

This all depends on libie[0] and WB-on-ITR fix[1]. The RFC does not
guarantee to work perfectly, but at least regular XDP seems to work
for me...

In fact, here are 3 separate series:
* 01-08: convert idpf to libie and make it more sane;
* 09-25: add XDP to idpf;
* 26-34: add XSk to idpf.

Most people may want to be interested only in the following generic
changes:
* 11: allow attaching already registered memory models to XDP RxQ info;
* 12-13: generic helpers for adding a frag to &xdp_buff and converting
  it to an skb;
* 14: get rid of xdp_frame::mem.id, allow mixing pages from different
  page_pools within one &xdp_buff/&xdp_frame;
* 15: some Page Pool helper;
* 18: it's for libie, but I wanted to talk about XDP_TX bulking;
* 26: same as 13, but for converting XSK &xdp_buff to skb.

The rest is up to you, driver-specific stuff is pretty boring sometimes.

I'll be polishing and finishing this all starting January 3rd and then
preparing and sending sane series, some early feedback never hurts tho.

Merry Yule!

[0] https://lore.kernel.org/netdev/20231213112835.2262651-1-aleksander.lobakin@intel.com
[1] https://lore.kernel.org/netdev/20231215193721.425087-1-michal.kubiak@intel.com

Alexander Lobakin (23):
  idpf: reuse libie's definitions of parsed ptype structures
  idpf: pack &idpf_queue way more efficiently
  idpf: remove legacy Page Pool Ethtool stats
  libie: support different types of buffers for Rx
  idpf: convert header split mode to libie + napi_build_skb()
  idpf: use libie Rx buffer management for payload buffer
  libie: add Tx buffer completion helpers
  idpf: convert to libie Tx buffer completion
  bpf, xdp: constify some bpf_prog * function arguments
  xdp: constify read-only arguments of some static inline helpers
  xdp: allow attaching already registered memory model to xdp_rxq_info
  xdp: add generic xdp_buff_add_frag()
  xdp: add generic xdp_build_skb_from_buff()
  xdp: get rid of xdp_frame::mem.id
  page_pool: add inline helper to sync VA for device (for XDP_TX)
  jump_label: export static_key_slow_{inc,dec}_cpuslocked()
  libie: support native XDP and register memory model
  libie: add a couple of XDP helpers
  idpf: stop using macros for accessing queue descriptors
  idpf: use generic functions to build xdp_buff and skb
  idpf: add support for XDP on Rx
  idpf: add support for .ndo_xdp_xmit()
  xdp: add generic XSk xdp_buff -> skb conversion

Michal Kubiak (11):
  idpf: make complq cleaning dependent on scheduling mode
  idpf: prepare structures to support xdp
  idpf: implement XDP_SETUP_PROG in ndo_bpf for splitq
  idpf: add support for sw interrupt
  idpf: add relative queue id member to idpf_queue
  idpf: add vc functions to manage selected queues
  idpf: move search rx and tx queues to header
  idpf: add XSk pool initialization
  idpf: implement Tx path for AF_XDP
  idpf: implement Rx path for AF_XDP
  idpf: enable XSk features and ndo_xsk_wakeup

 .../net/ethernet/freescale/dpaa/dpaa_eth.c    |    2 +-
 drivers/net/ethernet/intel/Kconfig            |    3 +-
 drivers/net/ethernet/intel/idpf/Makefile      |    3 +
 drivers/net/ethernet/intel/idpf/idpf.h        |   91 +-
 drivers/net/ethernet/intel/idpf/idpf_dev.c    |    3 +
 .../net/ethernet/intel/idpf/idpf_ethtool.c    |   74 +-
 .../net/ethernet/intel/idpf/idpf_lan_txrx.h   |    6 +-
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |   40 +-
 drivers/net/ethernet/intel/idpf/idpf_main.c   |    1 +
 .../ethernet/intel/idpf/idpf_singleq_txrx.c   |  221 ++-
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 1142 ++++++++--------
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  451 +++----
 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |    3 +
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 1132 ++++++++++------
 drivers/net/ethernet/intel/idpf/idpf_xdp.c    |  522 ++++++++
 drivers/net/ethernet/intel/idpf/idpf_xdp.h    |   38 +
 drivers/net/ethernet/intel/idpf/idpf_xsk.c    | 1181 +++++++++++++++++
 drivers/net/ethernet/intel/idpf/idpf_xsk.h    |   30 +
 drivers/net/ethernet/intel/libie/Makefile     |    3 +
 drivers/net/ethernet/intel/libie/rx.c         |  135 +-
 drivers/net/ethernet/intel/libie/tx.c         |   16 +
 drivers/net/ethernet/intel/libie/xdp.c        |   50 +
 drivers/net/ethernet/intel/libie/xsk.c        |   49 +
 drivers/net/veth.c                            |    4 +-
 include/linux/bpf.h                           |   12 +-
 include/linux/filter.h                        |    9 +-
 include/linux/net/intel/libie/rx.h            |   25 +-
 include/linux/net/intel/libie/tx.h            |   94 ++
 include/linux/net/intel/libie/xdp.h           |  586 ++++++++
 include/linux/net/intel/libie/xsk.h           |  172 +++
 include/linux/netdevice.h                     |    6 +-
 include/linux/skbuff.h                        |   14 +-
 include/net/page_pool/helpers.h               |   32 +
 include/net/page_pool/types.h                 |    6 +-
 include/net/xdp.h                             |  109 +-
 kernel/bpf/cpumap.c                           |    2 +-
 kernel/bpf/devmap.c                           |    8 +-
 kernel/jump_label.c                           |    2 +
 net/bpf/test_run.c                            |    6 +-
 net/core/dev.c                                |    8 +-
 net/core/filter.c                             |   27 +-
 net/core/page_pool.c                          |   31 +-
 net/core/xdp.c                                |  189 ++-
 43 files changed, 4971 insertions(+), 1567 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_xdp.c
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_xdp.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_xsk.c
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_xsk.h
 create mode 100644 drivers/net/ethernet/intel/libie/tx.c
 create mode 100644 drivers/net/ethernet/intel/libie/xdp.c
 create mode 100644 drivers/net/ethernet/intel/libie/xsk.c
 create mode 100644 include/linux/net/intel/libie/tx.h
 create mode 100644 include/linux/net/intel/libie/xdp.h
 create mode 100644 include/linux/net/intel/libie/xsk.h

-- 
2.43.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
