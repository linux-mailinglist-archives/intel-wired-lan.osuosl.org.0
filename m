Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 78AC2AE6CA8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jun 2025 18:45:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 903C560DE4;
	Tue, 24 Jun 2025 16:45:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eK_Knvrb0yJd; Tue, 24 Jun 2025 16:45:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BCB0361164
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750783543;
	bh=I649jIeXannSj1LA5t/AXIKJ+ECrd/1aaKamAsSJ4mE=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=QZNfa00j9w+Qo3lHqCIbbwFARUnK3wZd7OtpyrMucDj9CXZHE8E2Ji4PFqN1/g89Y
	 XOw3Jbf259GfTv39rZtqwah30dmOH4kLSgtBbiztWfkBN2G1tUJ5N1wEPtUIPcGzK0
	 sK8qKynj2KimbWhXiCF45Z8Y3l4Ho/jNyfgh6KANBrlyFe8gv90chClmGDo+syzo1R
	 nkMtFt/XUKxiea92rT61jISMnfmEqxU44h6lrS1z576SgaSG6/X9t1Gdcb63xVIYtO
	 5sSR9LhIDnFAsbO+Eks/CkEm9id/EHtPP16FRHaKTTWSdvmjqIAfUq4wfoBOBxPfg7
	 czdiLQ7+eNlSA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BCB0361164;
	Tue, 24 Jun 2025 16:45:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1F825154
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 16:45:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1132D813EB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 16:45:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Kh0ZBr-Nd_Jg for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jun 2025 16:45:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 331128143C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 331128143C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 331128143C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 16:45:40 +0000 (UTC)
X-CSE-ConnectionGUID: oNt61LnaTnmdI6MCIR18uw==
X-CSE-MsgGUID: 1V+yQX3dSSK7H8SGaDVJXw==
X-IronPort-AV: E=McAfee;i="6800,10657,11474"; a="64091116"
X-IronPort-AV: E=Sophos;i="6.16,262,1744095600"; d="scan'208";a="64091116"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 09:45:40 -0700
X-CSE-ConnectionGUID: 5NFWzIo6Q4GSW5m3wksPRA==
X-CSE-MsgGUID: MO7JTzrlSE6vpJ/kEndfbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,262,1744095600"; d="scan'208";a="152669441"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa010.fm.intel.com with ESMTP; 24 Jun 2025 09:45:36 -0700
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
Date: Tue, 24 Jun 2025 18:45:03 +0200
Message-ID: <20250624164515.2663137-1-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750783541; x=1782319541;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=D2JZgvRKKVVmYAYCRUOstzK4i3/dFTFjJTnVHXkHHmE=;
 b=Q1y3q+nUIFGMuk94w+CVTgYbEVZUuXQAbT6hdT0b8i61jgJ8tlB/6Rlt
 xwcLJe4FAB3uzKx94IrAFx12Rfrphn1ETFUqKLvL6rC6pY3xFrbOcDZm4
 egGpd19lSTXnrFXHQsFtMf1WDCYJTm45fDDpCaKAik+gfb40ZGjP3xQao
 B9qjPJXKScZL5Wb50MuTSBK054NcFXrJauKzIfJhhajPu+mqGXTqYLl2d
 YgjzApB+TPy7f9Lv4atY4CdQ/6LKnX9c4Nh0HfEm7CggSwejOs69WOZ0D
 yKIe95VE3MM0ihe7XI/ToI5MBbs0jB+VlX1uDygO2YDuFqZXaP4/jpPho
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Q1y3q+nU
Subject: [Intel-wired-lan] [PATCH iwl-next v2 00/12] idpf: add XDP support
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

Add XDP support (w/o XSk for now) to the idpf driver using the libeth_xdp
sublib. All possible verdicts, .ndo_xdp_xmit(), multi-buffer etc. are here.
In general, nothing outstanding comparing to ice, except performance --
let's say, up to 2x for .ndo_xdp_xmit() on certain platforms and
scenarios.
idpf doesn't support VLAN Rx offload, so only the hash hint is
available for now.

Patches 1-6 are prereqs, without which XDP would either not work at all or
work slower/worse/...

Alexander Lobakin (8):
  idpf: fix Rx descriptor ready check barrier in splitq
  idpf: use a saner limit for default number of queues to allocate
  idpf: link NAPIs to queues
  idpf: add support for nointerrupt queues
  idpf: use generic functions to build xdp_buff and skb
  idpf: add support for XDP on Rx
  idpf: add support for .ndo_xdp_xmit()
  idpf: add XDP RSS hash hint

Michal Kubiak (4):
  idpf: add 4-byte completion descriptor definition
  idpf: remove SW marker handling from NAPI
  idpf: prepare structures to support XDP
  idpf: implement XDP_SETUP_PROG in ndo_bpf for splitq

 drivers/net/ethernet/intel/idpf/Kconfig       |   2 +-
 drivers/net/ethernet/intel/idpf/Makefile      |   2 +
 drivers/net/ethernet/intel/idpf/idpf.h        |  31 +-
 .../net/ethernet/intel/idpf/idpf_lan_txrx.h   |   6 +-
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   | 129 +++--
 drivers/net/ethernet/intel/idpf/xdp.h         | 172 +++++++
 drivers/net/ethernet/intel/idpf/idpf_dev.c    |  11 +-
 .../net/ethernet/intel/idpf/idpf_ethtool.c    |   6 +-
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |  31 +-
 drivers/net/ethernet/intel/idpf/idpf_main.c   |   1 +
 .../ethernet/intel/idpf/idpf_singleq_txrx.c   | 110 ++---
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 427 +++++++++--------
 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |  11 +-
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 113 +++--
 drivers/net/ethernet/intel/idpf/xdp.c         | 452 ++++++++++++++++++
 15 files changed, 1138 insertions(+), 366 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/idpf/xdp.h
 create mode 100644 drivers/net/ethernet/intel/idpf/xdp.c

---
Sending to get reviews and to trigger Intel's validation.

From v1[0]:
* drop the libeth_xdp part (submitted separately and accepted);
* fix some typos and kdocs (Jakub, Maciej);
* pick a couple RBs (Maciej);
* 03: create a convenience helper (Maciej), fix rtnl assertion fail;
* 04: since XDP uses its own queue cleaning routines, don't add 4-byte
      completion support to the skb code;
* 05: don't use old weird logic with negative descriptor index (Maciej);
* 06: fix invalid interrupt vector counting in certain cases;
* 07: fix cleanup timer is fired after the queue buffers are already freed;
* 08: fix XDP program removal in corner cases such as PCI reset or
      remove request when there's no active prog (from netdev_unregister());
* 10: fix rare queue stuck -- HW requires to always have at least one free Tx
      descriptor on the queue, otherwise it thinks the queue is empty and
      there's nothing to send (true Intel HW veteran bug).

Testing hints: basic Rx and Tx (TCP, UDP, VLAN, HW GRO on/off, trafficgen
stress tests, performance comparison); xdp-tools with all possible actions
(xdp-bench for PASS, DROP, TX, REDIRECT to cpumap, devmap (inc self-redirect);
xdp-trafficgen to double-check XDP xmit). Would be nice to see a perf
comparison against ice (in percent) (idpf must be plugged into a PCIe 5.x).

[0] https://lore.kernel.org/intel-wired-lan/20250305162132.1106080-1-aleksander.lobakin@intel.com
-- 
2.49.0

