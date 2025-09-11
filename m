Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A49F1B53907
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Sep 2025 18:23:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2B6966149A;
	Thu, 11 Sep 2025 16:23:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4fbiKd2MLEQo; Thu, 11 Sep 2025 16:23:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7FE6E61C3A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757607802;
	bh=XCwrGRO97YkJIEkr4qW+0YIGnzV5HKJWbkkw/PCI8OM=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=YU0fowzt5qUcEDewiodbxZPS/ZNAx/drrfdhMyluagE9OMu+HQEDfcCVfLSKqd4W/
	 6uCUKDscooWb5/VDDEEQEeplOLqfa6TJ7yPWVr25S4KHAWKwLsNa2RoK/0aGJ9DKqE
	 5JKJA0kTqPZuyFZKjRKYfzA0lwB/ToUf3IDfTOho/MEz5UewbEL1EDWtU+WybTsrrf
	 IilIf9g6TTaygIL/T9bCpY6I+zJZHMQjMyvzTMAlWuWaFPZEg3i9m5Y/7gOYVkOakn
	 r3qkDc34COsEQLnoFnEkvHZfOQafCbxkaVJhhRUbkpwlcNw/H39/YP/I1Mzb1jUbjK
	 iuGYewZEEUUHA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7FE6E61C3A;
	Thu, 11 Sep 2025 16:23:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id E554BE20
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Sep 2025 16:23:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D744C404C4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Sep 2025 16:23:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gl3fzv8ng8oq for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Sep 2025 16:23:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E19E141254
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E19E141254
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E19E141254
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Sep 2025 16:23:19 +0000 (UTC)
X-CSE-ConnectionGUID: Z7Y52qmpQe23R0opK/BSgw==
X-CSE-MsgGUID: inIP5vhFRie6NPWwjyddHg==
X-IronPort-AV: E=McAfee;i="6800,10657,11549"; a="70635158"
X-IronPort-AV: E=Sophos;i="6.18,257,1751266800"; d="scan'208";a="70635158"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2025 09:23:19 -0700
X-CSE-ConnectionGUID: x5zKOf7hSfabZCo0ADEN1w==
X-CSE-MsgGUID: zLbzXO2QS7+fmXCgos7fOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,257,1751266800"; d="scan'208";a="173284615"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa009.jf.intel.com with ESMTP; 11 Sep 2025 09:23:14 -0700
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
 Daniel Borkmann <daniel@iogearbox.net>, Simon Horman <horms@kernel.org>,
 nxne.cnse.osdt.itp.upstreaming@intel.com, bpf@vger.kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Thu, 11 Sep 2025 18:22:28 +0200
Message-ID: <20250911162233.1238034-1-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757607800; x=1789143800;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DYL7IWUsaDbfVJZ2joy03x7CTtObGiVRcUw+SmpLj54=;
 b=Qrkp3D2lCP/gVFNuaFDsyiGSF1U07WsLtFd/cAraSuXQf/9ArB3BqlS8
 89RsDfGLGesXujdDxTO+wLlJkTeJnEaxG6DBVlMBPVGd3gsRkHCnNn5F4
 75MuzQ5k0V6/OISe2K5VPfZxqCBm2hZDRwyM6rhJUi9NyMI+00IuD0Mtk
 +DjDMct3QUh2ORWV0kLK60MEgWI1sbsKkCG8YP5/vbgKnW7NnQBZroN3Y
 6Q9PTtcGGSt8qJ3DkzARp1nSgVMVyr4gQYUNYeyQyPQcIRLJF6CkFN9pM
 t6YXD1EPtP6B3tbkxLHsjyAW7vFbK99Brk5aEPJANm2LjLSGcc2YzhCBc
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Qrkp3D2l
Subject: [Intel-wired-lan] [PATCH iwl-next 0/5] idpf: add XSk support
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

Add support for XSk xmit and receive using libeth_xdp.

This includes adding interfaces to reconfigure/enable/disable only
a particular set of queues and support for checksum offload XSk Tx
metadata.
libeth_xdp's implementation mostly matches the one of ice: batched
allocations and sending, unrolled descriptor writes etc. But unlike
other Intel drivers, XSk wakeup is implemented using CSD/IPI instead
of HW "software interrupt". In lots of different tests, this yielded
way better perf than SW interrupts, but also, this gives better
control over which CPU will handle the NAPI loop (SW interrupts are
a subject to irqbalance and stuff, while CSDs are strictly pinned
1:1 to the core of the same index).
Note that the header split is always disabled for XSk queues, as
for now we see no reasons to have it there.

XSk xmit perf is up to 3x comparing to ice. XSk XDP_PASS is also
faster a bunch as it uses system percpu page_pools, so that the
only overlead left is memcpy(). The rest is at least comparable.

Alexander Lobakin (3):
  idpf: implement XSk xmit
  idpf: implement Rx path for AF_XDP
  idpf: enable XSk features and ndo_xsk_wakeup

Michal Kubiak (2):
  idpf: add virtchnl functions to manage selected queues
  idpf: add XSk pool initialization

 drivers/net/ethernet/intel/idpf/Makefile      |    1 +
 drivers/net/ethernet/intel/idpf/idpf.h        |    7 +
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |   72 +-
 .../net/ethernet/intel/idpf/idpf_virtchnl.h   |   32 +-
 drivers/net/ethernet/intel/idpf/xdp.h         |    3 +
 drivers/net/ethernet/intel/idpf/xsk.h         |   33 +
 .../net/ethernet/intel/idpf/idpf_ethtool.c    |    8 +-
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |   10 +-
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   |  451 ++++++-
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 1160 +++++++++++------
 drivers/net/ethernet/intel/idpf/xdp.c         |   44 +-
 drivers/net/ethernet/intel/idpf/xsk.c         |  633 +++++++++
 12 files changed, 1977 insertions(+), 477 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/idpf/xsk.h
 create mode 100644 drivers/net/ethernet/intel/idpf/xsk.c

---
Apply to either net-next or next-queue, but *before* Pavan's series.

Testing hints:

For testing XSk, you can use basic xdpsock from [0]. There are 3 modes:
`rxdrop` will check XSk Rx, `txonly` -- XSk xmit, `l2fwd` takes care of
both. You can run several instances on different queues.
To get the best perf, make sure xdpsock isn't run on the same CPU which
is responsible for the corresponding NIC queue handling (official XSk
documentation).

[0] https://github.com/xdp-project/bpf-examples/tree/main/AF_XDP-example
-- 
2.51.0

