Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D8EC096C2E7
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Sep 2024 17:51:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 95EE6608A8;
	Wed,  4 Sep 2024 15:51:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ugX8IvVWCJLO; Wed,  4 Sep 2024 15:51:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 93267608AE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725465082;
	bh=YAcBbNK2V9s969eLdZlWPL7SHL7g4Ra2mjODjmfunLs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=kECxWBD5oh/fr72mCJrvE/I6cU5XJLv1VyMWbMZhyGAUmJOM3YwC0qLi5pz5NoZ75
	 Jgtpl409FfZLWFkH2sZaJoM3D9L+r6m8scFJgHfQaROFt74E6PqbP8u/WVQtneMdPK
	 nxdrbD5jW+TBsWEtjsHkMjoR+JcnwDGt4IpDm1rgk8rc+A8VGErfn8N5St+gu77e7I
	 V82dm5JcpcJ0KQpi+jlj9D7ywnC1O/IHTGFnl6WaBBwRPUYrCTrbTaqa6A7Px1JA8y
	 /Aja4bLCs0ejctFNRfD4I3bcEa4GCnzcqbJZmj0YpoHsdTFx2cs88u5Ayq1eVvktzM
	 uUijLTzQ+as/g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 93267608AE;
	Wed,  4 Sep 2024 15:51:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4BA0C1BF40B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 15:51:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 38842608A9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 15:51:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8bwtaNP-8VBq for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Sep 2024 15:51:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 48270607C3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 48270607C3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 48270607C3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 15:51:18 +0000 (UTC)
X-CSE-ConnectionGUID: 7tzy5yD/RqicnCCqAKSAfA==
X-CSE-MsgGUID: VNRVUZlkQpW1fmx8gCU8hw==
X-IronPort-AV: E=McAfee;i="6700,10204,11185"; a="34737128"
X-IronPort-AV: E=Sophos;i="6.10,202,1719903600"; d="scan'208";a="34737128"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 08:51:18 -0700
X-CSE-ConnectionGUID: in9rYBYpQlGP4u4Wf4LHzQ==
X-CSE-MsgGUID: 7jytzqScRX+8LbY0ZnHpsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,202,1719903600"; d="scan'208";a="66041811"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa008.jf.intel.com with ESMTP; 04 Sep 2024 08:51:15 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  4 Sep 2024 17:47:42 +0200
Message-ID: <20240904154748.2114199-1-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725465079; x=1757001079;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=y7K0XuRk4s2I3UAuv+2/CKOqjAjq4Y52W4VRKs5k61E=;
 b=fgBhr95EMj0+t88RIYYAUANkB+dxGZc5IcFC7R7TfH9xJ57AbM7OVvT8
 YaZpHp4MglwxGCgrlYfYapQqDnjTrmGZUFHuJqVHeOzflcHU+eTKpEo8N
 Axvz9fb/lquPgpepdrNorrUpbDuK53a3KX4rnR/tzF/QoLLsTy9kaLp0r
 WpMmbTmERmYSwZEpaBm3KzPyNg1tllVmhWlv/xntFSJt9qH0kuDXWOz+D
 COC2v7YsxInrQi//O9SN4d4/iOfYgYAErHMu/fruAYPDPlpuYFWQmkzV2
 p4gayks/dn6mNSYUZAl6ZwyFIxY5Kwp7ZUHHl7h3YjkhiCcdCcKMWk5ZS
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fgBhr95E
Subject: [Intel-wired-lan] [PATCH iwl-next v2 0/6] idpf: XDP chapter II:
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
* convert Tx completion to libeth (this);
* generic XDP and XSk code changes;
* actual XDP for idpf via libeth_xdp;
* XSk for idpf (^).

Part II does the following:
* adds generic libeth Tx completion routines;
* converts idpf to use generic libeth Tx comp routines;
* fixes Tx queue timeouts and robustifies Tx completion in general;
* fixes Tx event/descriptor flushes (writebacks).

Most idpf patches again remove more lines than adds.
Generic Tx completion helpers and structs are needed as libeth_xdp
(Ch. III) makes use of them. WB_ON_ITR is needed since XDPSQs don't
want to work without it at all. Tx queue timeouts fixes are needed
since without them, it's way easier to catch a Tx timeout event when
WB_ON_ITR is enabled.

Alexander Lobakin (3):
  libeth: add Tx buffer completion helpers
  idpf: convert to libeth Tx buffer completion
  netdevice: add netdev_tx_reset_subqueue() shorthand

Joshua Hay (2):
  idpf: refactor Tx completion routines
  idpf: enable WB_ON_ITR

Michal Kubiak (1):
  idpf: fix netdev Tx queue stop/wake

 include/net/libeth/types.h                    |  25 ++
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  92 ++--
 include/linux/netdevice.h                     |  13 +-
 include/net/libeth/tx.h                       | 129 ++++++
 drivers/net/ethernet/intel/idpf/idpf_dev.c    |   2 +
 .../ethernet/intel/idpf/idpf_singleq_txrx.c   | 110 +++--
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 394 ++++++++----------
 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |   2 +
 8 files changed, 441 insertions(+), 326 deletions(-)
 create mode 100644 include/net/libeth/types.h
 create mode 100644 include/net/libeth/tx.h

---
From v1[0]:
* drop the stats implementation. It's not generic, uses old Ethtool
  interfaces and is written using macro templates which made it barely
  readable (Kuba).
  I'll be rewriting it separately.
* replace `/* <multi-line comment>` with `/*\n * <multi-line comment>`
  since the special rule for netdev was removed.

[0] https://lore.kernel.org/netdev/20240819223442.48013-1-anthony.l.nguyen@intel.com
-- 
2.46.0

