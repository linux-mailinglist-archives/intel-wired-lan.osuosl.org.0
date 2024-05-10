Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 792468C27A9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 May 2024 17:27:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 023A78456B;
	Fri, 10 May 2024 15:27:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PE_4bjU3r2tn; Fri, 10 May 2024 15:27:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 340EC8455F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715354844;
	bh=a5TGf7Puu2c0xdn8g3vFmCq1uffpSJX3cSW5E+i8iaM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=K7LitimZUwBvGECv86MCh8/E1CqHZ/rXuYgfaXk7E+0bOYJgp0pAMyQgx+kiAi1z3
	 8jK20oRQiEyNdb8R50zOKF0awOfHzzG5/5INJjXWIyGPeY+hPPsM9kz10QQ4tFrJ9M
	 5G9AKejsrzTKVOm/fl3xw0e1MaEWrXGDn8fjgGU5P4ytn3by/iODbtYb7nxBXiYBDQ
	 ipUNjTMMYmD8Y4cSeXVerg8/KLmRIEecGv8nKTBZfj/HDRHnpPHxUxwSD1oqrqvS0K
	 2s3xhpOQdcpEGgJujPECGCyQfjQex7yRfX773iH4xK/mxraLOchL08fED5LQuSGel+
	 b/9Ec8CSlZOYg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 340EC8455F;
	Fri, 10 May 2024 15:27:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3942E1BF304
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 15:27:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 246E942243
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 15:27:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XUPAsvPfS2Ig for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 May 2024 15:27:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 187F342048
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 187F342048
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 187F342048
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 15:27:20 +0000 (UTC)
X-CSE-ConnectionGUID: 84R5JeQXShGyox3RyVnSlg==
X-CSE-MsgGUID: WcnNiG7RRxS0e7NWmseKlQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="15152537"
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="15152537"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 08:27:20 -0700
X-CSE-ConnectionGUID: mJnKh+05SiCO4F6dz7jhHA==
X-CSE-MsgGUID: e1pJtLvwQ8S1QqPIA4qM1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="30208229"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa008.jf.intel.com with ESMTP; 10 May 2024 08:27:17 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 10 May 2024 17:26:08 +0200
Message-ID: <20240510152620.2227312-1-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.45.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715354841; x=1746890841;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Hvmu0qmiPj5Ycf5xm2DItJEUtysjIM+nHDnEiaTAzEo=;
 b=OfMKvJKZ0MJkvu7iACby14smmxuYHmuKusdDYh3YSoDn8IASQdHDLmhV
 9/KaL7vLLs7cEhepTck1sNP3U/Z6fK/Ogih5zEC24MMKtWkSb/yWC4zqx
 erzLNSkIb2ppXYsiF5UWf3YD9ivKqhBu5HuP5b2gUQUoDlgXzl72+QJgF
 4JCclu5PuINjErKuE5n3LVJs2z1QHneGEe50cBBdYphOgl6281XPyf+zF
 MU4a8ldumlyF0+B6PGEczdi2t0O7aYqlUac7g09lvym8UZxwJw1OUpy/K
 mHWH7azhl7h8ND30ug05fg86qvbcR2bkzg5okbMGZ1xjnF5sdvapEkd4w
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OfMKvJKZ
Subject: [Intel-wired-lan] [PATCH RFC iwl-next 00/12] idpf: XDP chapter I:
 convert Rx to libeth
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Applies on top of "idpf: don't enable NAPI and interrupts prior to
allocating Rx buffers" from Tony's tree.
Sent as RFC as we're at the end of the development cycle and several
kdocs are messed up. I'll fix them when sending non-RFC after the window
opens.

XDP for idpf is currently 5 chapters:
* convert Rx to libeth (this);
* convert Tx and stats to libeth;
* generic XDP and XSk code changes;
* actual XDP for idpf via libeth_xdp;
* XSk for idpf (^).

Part I does the following:
* splits &idpf_queue into 4 (RQ, SQ, FQ, CQ) and puts them on a diet;
* ensures optimal cacheline placement, strictly asserts CL sizes;
* moves currently unused/dead singleq mode out of line;
* reuses libeth's Rx ptype definitions and helpers;
* uses libeth's Rx buffer management for both header and payload;
* eliminates memcpy()s and coherent DMA uses on hotpath, uses
  napi_build_skb() instead of in-place short skb allocation.

Most idpf patches, except for the queue split, removes more lines
than adds.
Expect far better memory utilization and +5-8% on Rx depending on
the case (+17% on skb XDP_DROP :>).

Alexander Lobakin (12):
  libeth: add cacheline / struct alignment helpers
  idpf: stop using macros for accessing queue descriptors
  idpf: split &idpf_queue into 4 strictly-typed queue structures
  idpf: avoid bloating &idpf_q_vector with big %NR_CPUS
  idpf: strictly assert cachelines of queue and queue vector structures
  idpf: merge singleq and splitq &net_device_ops
  idpf: compile singleq code only under default-n CONFIG_IDPF_SINGLEQ
  idpf: reuse libeth's definitions of parsed ptype structures
  idpf: remove legacy Page Pool Ethtool stats
  libeth: support different types of buffers for Rx
  idpf: convert header split mode to libeth + napi_build_skb()
  idpf: use libeth Rx buffer management for payload buffer

 drivers/net/ethernet/intel/Kconfig            |   13 +-
 drivers/net/ethernet/intel/idpf/Kconfig       |   25 +
 drivers/net/ethernet/intel/idpf/Makefile      |    3 +-
 drivers/net/ethernet/intel/idpf/idpf.h        |   10 +-
 .../net/ethernet/intel/idpf/idpf_lan_txrx.h   |    2 +
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  746 ++++-----
 include/net/libeth/cache.h                    |   64 +
 include/net/libeth/rx.h                       |   19 +
 .../net/ethernet/intel/idpf/idpf_ethtool.c    |  152 +-
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |   88 +-
 drivers/net/ethernet/intel/idpf/idpf_main.c   |    1 +
 .../ethernet/intel/idpf/idpf_singleq_txrx.c   |  311 ++--
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 1405 +++++++++--------
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   |  175 +-
 drivers/net/ethernet/intel/libeth/rx.c        |  122 +-
 15 files changed, 1726 insertions(+), 1410 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/idpf/Kconfig
 create mode 100644 include/net/libeth/cache.h

-- 
2.45.0

