Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D84A1949073
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Aug 2024 15:13:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6D46C409F4;
	Tue,  6 Aug 2024 13:13:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0nAbhELErS12; Tue,  6 Aug 2024 13:13:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7D2D240643
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722949990;
	bh=Pke4kLv1E1S3rnqi605CCMNNoopktOf78/VIN2CGvgU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=yGtkSsm4UisHJ30k74bX9y5IjklaD68DA97QrvcEzygtzUCfG4oBHHijWFkQ5Lx6I
	 xMHLWR2FDpwj09VjKTC4U3ShVv11qVZ+h171fuDN0wdrniYKCGt7Q1QoSyZX9aNS7O
	 W+N2HoWs0N+d8mdF1l1cOFljx969h+DB4M5X5+ww6cRA2z9pCknNCrngOtswS/7Juw
	 LfCzfb9f+LO2Z2Qy/76DoUn8Uq7RQOK1B/3ZnCeTzRpT1xSDVKHGJBGo6MprO9JHyf
	 rYgzS7O45+qVhAehCPEVZE3JLXyJO6gWFKAFDIQgPy9im3HS65PRXewSj+CTddd2G5
	 qPE6uvmASpFsQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7D2D240643;
	Tue,  6 Aug 2024 13:13:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 485B21BF300
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 13:13:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 349E8403B2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 13:13:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LytXor7OogWH for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Aug 2024 13:13:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 155CC40201
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 155CC40201
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 155CC40201
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 13:13:07 +0000 (UTC)
X-CSE-ConnectionGUID: RvpH/qYYSLyCeARSb/ucJA==
X-CSE-MsgGUID: tkIkwRINSj6q2DCiz5Xcjw==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="20842069"
X-IronPort-AV: E=Sophos;i="6.09,267,1716274800"; d="scan'208";a="20842069"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 06:13:07 -0700
X-CSE-ConnectionGUID: /XC1YCq0SWGEmSlaI7KRDA==
X-CSE-MsgGUID: a8y5dv21SYG/Lnl1X4NGKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,267,1716274800"; d="scan'208";a="56475793"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa009.fm.intel.com with ESMTP; 06 Aug 2024 06:13:04 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  6 Aug 2024 15:12:31 +0200
Message-ID: <20240806131240.800259-1-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722949988; x=1754485988;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DKGJLrTyOqt1XPnoqbqhrpWB91AlQVU5IgRU+XQcuyQ=;
 b=iMTeUG0uuh1O57bQG1tD9Z3tQO5pPSNLHrFFvZD8Fy6UDhqtDnvn8HdG
 BbSAvyfiHoS6a1S+2fj0ge3QLpzMWmMDK5PBVpZ4jOs14O6WgbOKe1k3+
 cuRfhuCfjFYJ1OyUW8ANu8MhLxW1aCmaAoJUZAk6wSp8dnxMKjCZNy6bd
 Ne9SUb1SIpLqXlQf4pVUSBZ/5hqUdmC3wzLL36XJm2gYPtFP+TrijZn+q
 tD8ax8YO9rVOb31O/lnS39II55WmPycj85DMhONhiorhP6l1pCILjcb4F
 Ye4Jx9wGk9CeLIJ+zlfiHNk/ZmY9HXs40affQpDbulDX75/lWjJ9TtyfJ
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iMTeUG0u
Subject: [Intel-wired-lan] [PATCH iwl-next 0/9] idpf: XDP chapter II:
 convert Tx completion to libeth
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Joshua Hay <joshua.a.hay@intel.com>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

XDP for idpf is currently 5 chapters:
* convert Rx to libeth;
* convert Tx completion and stats to libeth (this);
* generic XDP and XSk code changes;
* actual XDP for idpf via libeth_xdp;
* XSk for idpf (^).

Part II does the following:
* introduces generic libeth per-queue stats infra;
* adds generic libeth Tx completion routines;
* converts idpf to use generic libeth Tx comp routines;
* fixes Tx queue timeouts and robustifies Tx completion in general;
* fixes Tx event/descriptor flushes (writebacks);
* fully switches idpf per-queue stats to libeth.

Most idpf patches again remove more lines than adds.
The perf difference is not visible by eye in common scenarios, but
the stats are now more complete and reliable, and also survive
ifups-ifdowns.

Alexander Lobakin (6):
  unroll: add generic loop unroll helpers
  libeth: add common queue stats
  libie: add Tx buffer completion helpers
  idpf: convert to libie Tx buffer completion
  netdevice: add netdev_tx_reset_subqueue() shorthand
  idpf: switch to libeth generic statistics

Joshua Hay (2):
  idpf: refactor Tx completion routines
  idpf: enable WB_ON_ITR

Michal Kubiak (1):
  idpf: fix netdev Tx queue stop/wake

 drivers/net/ethernet/intel/libeth/Makefile    |   4 +-
 include/net/libeth/types.h                    | 247 ++++++++
 drivers/net/ethernet/intel/idpf/idpf.h        |  21 +-
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   | 144 ++---
 drivers/net/ethernet/intel/idpf/virtchnl2.h   |  33 +-
 drivers/net/ethernet/intel/libeth/priv.h      |  21 +
 include/linux/netdevice.h                     |  13 +-
 include/linux/unroll.h                        |  50 ++
 include/net/libeth/netdev.h                   |  31 +
 include/net/libeth/stats.h                    | 141 +++++
 include/net/libeth/tx.h                       | 127 +++++
 drivers/net/ethernet/intel/idpf/idpf_dev.c    |   2 +
 .../net/ethernet/intel/idpf/idpf_ethtool.c    | 498 ++--------------
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |  32 +-
 .../ethernet/intel/idpf/idpf_singleq_txrx.c   | 172 +++---
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 538 +++++++++---------
 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |   2 +
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   |  37 +-
 drivers/net/ethernet/intel/libeth/netdev.c    | 157 +++++
 drivers/net/ethernet/intel/libeth/rx.c        |   5 -
 drivers/net/ethernet/intel/libeth/stats.c     | 360 ++++++++++++
 21 files changed, 1633 insertions(+), 1002 deletions(-)
 create mode 100644 include/net/libeth/types.h
 create mode 100644 drivers/net/ethernet/intel/libeth/priv.h
 create mode 100644 include/linux/unroll.h
 create mode 100644 include/net/libeth/netdev.h
 create mode 100644 include/net/libeth/stats.h
 create mode 100644 include/net/libeth/tx.h
 create mode 100644 drivers/net/ethernet/intel/libeth/netdev.c
 create mode 100644 drivers/net/ethernet/intel/libeth/stats.c

-- 
2.45.2

