Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 88A50A8A564
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Apr 2025 19:29:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9817681E74;
	Tue, 15 Apr 2025 17:28:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7CWzTzV_bYuF; Tue, 15 Apr 2025 17:28:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B1FC6830DE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744738137;
	bh=x2m8idKmLDFqoLd+OW72RqNfJ1N0ctDBIovjiLeW424=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=V2GHlsq8+bl/5u1Ne0w108/UdP9GYx35jvZbcDPAIw56jNcvalU5ooAc/3Ht2XXop
	 vhz39mya6BqNTiJsx+Lyr9A+gkmQoxIdahLTmZOze+UMPCJT7cGA3LitJV0bx102qf
	 LidDgjmeWOm7BRezBw/VYg/XyT7H/0+zSqfoXl/Xfra0QMjlsqayX1bVZUI6EmSB/0
	 p83ETv9OcOOddjWSYnSbkSNBrYfzx55vtotzqncWRkubFH2If62H5ybIC0bp+SO5zB
	 +tGkL3zXjEcTCX5E6iahBDcY2FKslwZoYEaqGRrrOOkkKENRlwF6RzmVGK8FQardHd
	 2ic3XJPrs7fOw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B1FC6830DE;
	Tue, 15 Apr 2025 17:28:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id A0842109
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 17:28:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8E63880D98
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 17:28:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DNapm55iwRTI for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Apr 2025 17:28:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7BCEC81E74
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7BCEC81E74
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7BCEC81E74
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 17:28:54 +0000 (UTC)
X-CSE-ConnectionGUID: ssS89dguSrukkLgd9m1khw==
X-CSE-MsgGUID: ALQoFVzARuyDfOIu9OfxuA==
X-IronPort-AV: E=McAfee;i="6700,10204,11404"; a="46275580"
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="46275580"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 10:28:54 -0700
X-CSE-ConnectionGUID: DK52L1QkRu6Ac8/cs2VS5w==
X-CSE-MsgGUID: NCcMP3k9Rz6bis6wLogFrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="130729626"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa010.fm.intel.com with ESMTP; 15 Apr 2025 10:28:49 -0700
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
Date: Tue, 15 Apr 2025 19:28:09 +0200
Message-ID: <20250415172825.3731091-1-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744738135; x=1776274135;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mEOz3O2WBIS6uD6OUFNzsZVjS3wbFaOZ1bsRQQQMqgE=;
 b=M/ZYbcB8j0iOct9HA232vKZp/B/oG3R7n8IWQXGO3qS8mZ+k41xFqmW5
 FcSautkAISYllGqXL1gmemvH2ogW1E1CgdImO0gnN3Smn2XKaUq1SoVSO
 cy8+tLfSBVgIYREhfxH2uGcgdjLsBc6cPWPRp2I8fE7FlsBN6aerf/kDF
 ndv/2a0TuxmWQQV5wEVd3g4HW4I8vPinYurV8EbeoJ8rUkjNXDPKYo3wW
 TNtkfy6um9yEZtp4rbmmtk0TqPfW/foETFaQTJAZ4ZAmbL1rMkjT6DgKj
 n/DXiFz8iacMd6/6iDjfxYsGG6t38GphozMsJ1u15RyJBTwn0nhxnvdJU
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=M/ZYbcB8
Subject: [Intel-wired-lan] [PATCH iwl-next 00/16] libeth: add libeth_xdp
 helper lib
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

Time to add XDP helpers infra to libeth to greatly simplify adding
XDP to idpf and iavf, as well as improve and extend XDP in ice and
i40e. Any vendor is free to reuse helpers. If this happens, I'm fine
with moving the folder of out intel/.

The helpers greatly simplify building xdp_buff, running a prog,
handling the verdict, implement XDP_TX, .ndo_xdp_xmit, XDP buffer
completion. Same applies to XSk (with XSk xmit instead of
.ndo_xdp_xmit, plus stuff like XSk wakeup).
They are entirely generic with no HW definitions or assumptions.
HW-specific stuff like parsing Rx desc / filling Tx desc is passed
from the driver as inline callbacks.

For now, key assumptions that optimize performance / avoid code
bloat, but might not fit every driver in driver/net/:
 * netmem holding the buffers are always order-0;
 * driver has separate XDP Tx queues, doesn't use stack queues for
   that. For best efficiency, you may want to have nr_cpu_ids XDP
   queues, but less (queue sharing) is also supported;
 * XDP Tx queues are interrupt-less and use "lazy" cleaning only
   when there are less than 1/4 free Tx descriptors of the queue
   size;
 * main target platforms are 64-bit, although 32-bit is also fully
   supported, but the code might be not as optimized for them.

Library code already supports multi-buffer for all kinds of Tx and
both header split and no split for Rx and Tx. Frags can come from
devmem/io_uring etc., direct `struct page *` is used only for header
buffers for which it's always true.
Drivers are free to pass their own Rx hints and XSK xmit hints ops.

XDP_TX and ndo_xdp_xmit use onstack bulk for the frames to be sent
and send them by batches of 16 buffers. This eats ~280 bytes on the
stack, but gives good boosts and allow to greatly optimize the main
sending function leaving it without any error/exception paths.

XSk xmit fills Tx descriptors in the loop unrolled by 8. This was
proven to improve perf on ice and i40e. XDP_TX and ndo_xdp_xmit
doesn't use unrolling as I wasn't able to get any improvements in
those scenenarios from this, while +1 Kb for their sending functions
for nothing doesn't sound reasonable.

XSk wakeup, instead of traditionally used "SW interrupts" provided
by NICs, uses IPI to schedule NAPI on the CPU corresponding to the
given queue pair. It gives better control over CPU distribution and
in general performs way better than "SW interrupts", plus allows us
to not pass any HW-specific callbacks there.

The code is built the way that all callbacks passed from drivers
get inlined; in general, most of hotpath gets inlined. Everything
slow/exception lands to .c files in the libeth folder, doesn't
create copies in the drivers themselves and doesn't overloat
hotpath.
Sure, inlining means that hotpath will be compiled into every driver
that uses the lib, but the core code is written in one place, so no
copying of bugs happens. Fixed once -- works everywhere.

The last commit might look like sorta hack, but it gives really good
boosts and decreases object code size, plus there are checks that
all those wider accesses are fully safe, so I don't feel anything
bad about it.

An example of using libeth_xdp can be found either on my GitHub or
on the mailing lists here ("XDP for idpf"). Macros for building
driver XDP functions lead to that some implementations (XDP_TX,
ndo_xdp_xmit etc.) consist of really only a few lines.

Alexander Lobakin (16):
  libeth: convert to netmem
  libeth: support native XDP and register memory model
  libeth: xdp: add XDP_TX buffers sending
  libeth: xdp: add .ndo_xdp_xmit() helpers
  libeth: xdp: add XDPSQE completion helpers
  libeth: xdp: add XDPSQ locking helpers
  libeth: xdp: add XDPSQ cleanup timers
  libeth: xdp: add helpers for preparing/processing &libeth_xdp_buff
  libeth: xdp: add XDP prog run and verdict result handling
  libeth: xdp: add templates for building driver-side callbacks
  libeth: xdp: add RSS hash hint and XDP features setup helpers
  libeth: xsk: add XSk XDP_TX sending helpers
  libeth: xsk: add XSk xmit functions
  libeth: xsk: add XSk Rx processing support
  libeth: xsk: add XSkFQ refill and XSk wakeup helpers
  libeth: xdp, xsk: access adjacent u32s as u64 where applicable

 drivers/net/ethernet/intel/libeth/Kconfig     |   10 +-
 drivers/net/ethernet/intel/libeth/Makefile    |    8 +-
 include/net/libeth/types.h                    |  106 +-
 drivers/net/ethernet/intel/libeth/priv.h      |   37 +
 include/net/libeth/rx.h                       |   28 +-
 include/net/libeth/tx.h                       |   36 +-
 include/net/libeth/xdp.h                      | 1872 +++++++++++++++++
 include/net/libeth/xsk.h                      |  685 ++++++
 drivers/net/ethernet/intel/iavf/iavf_txrx.c   |   14 +-
 .../ethernet/intel/idpf/idpf_singleq_txrx.c   |    2 +-
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   |   33 +-
 drivers/net/ethernet/intel/libeth/rx.c        |   40 +-
 drivers/net/ethernet/intel/libeth/tx.c        |   41 +
 drivers/net/ethernet/intel/libeth/xdp.c       |  449 ++++
 drivers/net/ethernet/intel/libeth/xsk.c       |  269 +++
 15 files changed, 3576 insertions(+), 54 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/libeth/priv.h
 create mode 100644 include/net/libeth/xdp.h
 create mode 100644 include/net/libeth/xsk.h
 create mode 100644 drivers/net/ethernet/intel/libeth/tx.c
 create mode 100644 drivers/net/ethernet/intel/libeth/xdp.c
 create mode 100644 drivers/net/ethernet/intel/libeth/xsk.c

---
Was a part of "XDP for idpf" series, now submitted separately with
proper splitting into atomic commits. I hope 16 patches out of 15
maximum allowed is not a problem.

All checkpatch warnings are false-positives unless someone disagrees.
Checked with `--strict --codespell`, a well as building with W=12
and sparse/smatch.
W=12 is clean, sparse only warns about "context imbalance", but it's
intended that libeth_xdp_tx_init_bulk() takes rcu_read_lock() and
libeth_xdp_rx_finalize() does rcu_read_unlock(). This is how Eth
drivers with enabled XDP do: lock before the NAPI polling loop,
unlock after the loop is done and the pending XDP_TX and
XDP_REDIRECT frames/maps are flushed (both functions are always
required to be called when using libeth_xdp helpers on Rx).

From "XDP for idpf" series, no changes except splitting and a couple
of kdoc fixes. Also checked upstream Patchwork to make sure I didn't
miss anything.

Targeted for iwl-next properly as no code outside the Intel folder
was changed.
-- 
2.49.0

