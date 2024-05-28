Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 065FB8D1D62
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 May 2024 15:49:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9EDCB81A16;
	Tue, 28 May 2024 13:49:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B7ZKWCmP_a1e; Tue, 28 May 2024 13:49:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 909F381836
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716904162;
	bh=K3lU1rDAYc1X3TBcZ7SmlyQJFUaGlUU0be4VYV7lxGA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=4K17/P/5eXyXW5W+diBZWQJEDYMJO2qa2phEth77jQm31/uWDxtIZyxNlGHs04g3k
	 hxraKQJOku23Hdz29TAC6c8w/nlaH3q7X/C7ySb0ZskR/h1akwu6Yeb5gipg6dXJPk
	 /wileXurXTvIZPxjytdrnQpsHpg16YBJzlUXQBlPWVsjGw6ISPvO9OhEZh3q9gU1va
	 w469kf5xs1W7qTJ0E40up+NnIUJqcRurm2Ubebo3m2cm42qDxjTErH3RIlUGjeAXF0
	 x3K2Ml8wJsKNO6usXjttRXks1/QWJFMHtwzmkBWOXRlAeBxn8BEOpYglwKnmV62fY9
	 5MTiTsuQKBPuA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 909F381836;
	Tue, 28 May 2024 13:49:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 21C041D2868
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 13:49:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0D27E60841
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 13:49:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fYJxS292iT_D for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 May 2024 13:49:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1D05560784
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1D05560784
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1D05560784
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 13:49:18 +0000 (UTC)
X-CSE-ConnectionGUID: 1nJqFnhZQjyUnVkX3axYNQ==
X-CSE-MsgGUID: 4AwSftJ9RNuavn3uwy17TA==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13436971"
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="13436971"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 06:49:18 -0700
X-CSE-ConnectionGUID: HsgTr1Q9QTGVYZLBynusyA==
X-CSE-MsgGUID: MZgd4IstT7inPchGoX479A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="35577389"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa008.jf.intel.com with ESMTP; 28 May 2024 06:49:15 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 28 May 2024 15:48:34 +0200
Message-ID: <20240528134846.148890-1-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.45.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716904159; x=1748440159;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=N1n/J3TdFsoMMp9tMgptlou6ON9SzyuaBDHKPoaxhO0=;
 b=AJapwwEDARSA0jgRc1mGnbyyzNkJx6n7Qg36Z0wX/UOcfAELbev1LesG
 9t9s3nHgsVlHGHKS0HTzRvRCq+AfZQSh/RSH7sdiFB8fSbORJ/aKMiZBB
 68qa8ucSBLmg8mX9auGsCLAkSmW6dRacybuocIoE62rbl5745b7NrkING
 e844gSBn5RXba3bwQRg2q+T15C5AeVFPkEVsboy12rRnUosB8oog1FE7p
 4fzfZlFO1ZV4zvqYZQC5GREh0jxwTrxlEZXMp3BU7vbDz/mZyc6N9Sx10
 On49IPKFesMnt8HaWrKNPdUldl18cSlbYxtevyhXVR/eYmdOH4vmIyvAr
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AJapwwED
Subject: [Intel-wired-lan] [PATCH iwl-next 00/12] idpf: XDP chapter I:
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
Cc: Mina Almasry <almasrymina@google.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

XDP for idpf is currently 5 chapters:
* convert Rx to libeth (this);
* convert Tx and stats to libeth;
* generic XDP and XSk code changes, libeth_xdp;
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
 drivers/net/ethernet/intel/idpf/Kconfig       |   26 +
 drivers/net/ethernet/intel/idpf/Makefile      |    3 +-
 scripts/kernel-doc                            |    1 +
 drivers/net/ethernet/intel/idpf/idpf.h        |   11 +-
 .../net/ethernet/intel/idpf/idpf_lan_txrx.h   |    2 +
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  800 +++++-----
 include/net/libeth/cache.h                    |  100 ++
 include/net/libeth/rx.h                       |   19 +
 .../net/ethernet/intel/idpf/idpf_ethtool.c    |  152 +-
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |   88 +-
 drivers/net/ethernet/intel/idpf/idpf_main.c   |    1 +
 .../ethernet/intel/idpf/idpf_singleq_txrx.c   |  311 ++--
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 1410 +++++++++--------
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   |  178 ++-
 drivers/net/ethernet/intel/libeth/rx.c        |  132 +-
 16 files changed, 1824 insertions(+), 1423 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/idpf/Kconfig
 create mode 100644 include/net/libeth/cache.h

---
Applies on top of "idpf: don't enable NAPI and interrupts prior to
allocating Rx buffers" from the -net tree, otherwise may work unstable.

From RFC[0]:
*  *: add kdocs where needed and fix the existing ones to build cleanly;
      fix minor checkpatch and codespell warnings;
      add RBs from Przemek;
* 01: fix kdoc script to understand new libeth_cacheline_group() macro;
      add an additional assert for queue struct alignment;
* 02: pick RB from Mina;
* 06: make idpf_chk_linearize() static as it's now used only in one file;
* 07: rephrase the commitmsg: HW supports it, but never wants;
* 08: fix crashes on some configurations (Mina);
* 11: constify header buffer pointer in idpf_rx_hsplit_wa().

Testing hints: basic Rx regression tests (+ perf and memory usage
before/after if needed).

Note that I'm on a vacation starting 30th May and return 10th of June.
I may sometimes reply, but no new versions in the meantime =\

[0] https://lore.kernel.org/netdev/20240510152620.2227312-1-aleksander.lobakin@intel.com
-- 
2.45.1

