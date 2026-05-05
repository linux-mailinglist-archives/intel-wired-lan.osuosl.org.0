Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WE6DCCYN+mntIgMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 05 May 2026 17:30:46 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ED824D0368
	for <lists+intel-wired-lan@lfdr.de>; Tue, 05 May 2026 17:30:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 15CF640A82;
	Tue,  5 May 2026 15:30:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jDg5ejP4ZkZ2; Tue,  5 May 2026 15:30:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AECCF40AA6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777995040;
	bh=w8LGlOBYIAvHI+P3ej113KoNEWAWWBE47MXU9sD9xGc=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=qg/FGd24Ghml1OZLkKrdICigQ22QVP4A7EKii9dMyaCw7pLWXVZgmuqah1lEwF9UK
	 DfoEamdnMXA7NdrJeccd7Mptf9YNl4qkqYCk7Eq+wxauy5fA0ChxokkNjkignZswcz
	 hPqxubIuZYrr6tIAs9Y308xt+gZPe+dIdrwlOsqWfWLIs0N1MdOj4OgeAxvsfAfBKQ
	 PRltxA4ZWQv2Ln1lwcIzfgeeh24WuRO2GP93A/+Qulxts7lBDqsIog7s/HMO6Yjdjn
	 +Yx4FvzbOD5D+p4c897k0UIikQx21p2oFGfkw/i9aDepsFmQmiDgNvIST3Zl/hMcnA
	 sXn+ZBZ1I4nfw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id AECCF40AA6;
	Tue,  5 May 2026 15:30:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 91FBA280
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 15:30:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 84030608B0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 15:30:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id t528Md3dO7F7 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 May 2026 15:30:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4DF85607CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4DF85607CE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4DF85607CE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 15:30:36 +0000 (UTC)
X-CSE-ConnectionGUID: rg+HbxYOTp6G03wxOVAXKA==
X-CSE-MsgGUID: WbxIwDG8QHmEadFbtgxuuQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11777"; a="104316977"
X-IronPort-AV: E=Sophos;i="6.23,217,1770624000"; d="scan'208";a="104316977"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2026 08:30:36 -0700
X-CSE-ConnectionGUID: DgEFnLZkSteLllHdnnS9Yg==
X-CSE-MsgGUID: QztnzmU6Smi7nhtc0Z+reQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,217,1770624000"; d="scan'208";a="234971504"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa010.jf.intel.com with ESMTP; 05 May 2026 08:30:33 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Alexander Lobakin <aleksander.lobakin@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 Kohei Enju <kohei@enjuk.jp>, Jacob Keller <jacob.e.keller@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 nxne.cnse.osdt.itp.upstreaming@intel.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Tue,  5 May 2026 17:29:18 +0200
Message-ID: <20260505152923.1040589-1-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.54.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777995037; x=1809531037;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Ok+4ECv3s+pYujUHLo68Z1g1L6HzzFD6IgmwTokVWG0=;
 b=fw5Zm5p6F7P6VRdPkTcpI2d9OrMSx3RcU6TmW4BT22y8/qhqVXnCG2kx
 Sb1vuJSm1SR8Je3nO4+AhmEwzKrGKfSCrs3xJNdnnhLaWwtBeMyfcDUq1
 +iUFPzFom/m7UU0Ywym4HJvHKn+L2zhiDyjV/HJ5g+UtbFFM6BBEgJthI
 S1yd4qYjbTTx5VhRAHoJpfQwTSykQFZVzIaTlgouoo3qq30MRkvr7hCZZ
 VuXu48EUCcYDnoKSclfiHj6ZHkoU2BME+qalXmUcIoZug7myANY0dPx28
 y91ENYp5Fx2KaG4zkgiRI7X6G4XVhVGKMxxZ3U/Cxm6Z3b5mOwnTi2uOP
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fw5Zm5p6
Subject: [Intel-wired-lan] [PATCH iwl-next v5 0/5] ice: add support for
 devmem/io_uring Rx and Tx
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
X-Rspamd-Queue-Id: 0ED824D0368
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[iou-zcrx.py:url,intel.com:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[aleksander.lobakin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_HAM(-0.00)[-0.996];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]

Now that ice uses libeth for managing Rx buffers and supports
configurable header split, it's ready to get support for sending
and receiving packets with unreadable (to the kernel) frags.

Extend libeth just a little bit to allow creating PPs with custom
memory providers and make sure ice works correctly with the netdev
ops locking. Then add the full set of queue_mgmt_ops and don't
unmap unreadable frags on Tx completion.
No perf regressions for the regular flows and no code duplication
implied.

Credits to the fbnic developers, whose code helped me understand
the memory providers and queue_mgmt_ops logics and served as
a reference.

Alexander Lobakin (5):
  libeth: pass Rx queue index to PP when creating a fill queue
  libeth: handle creating pools with unreadable buffers
  ice: migrate to netdev ops lock
  ice: implement Rx queue management ops
  ice: add support for transmitting unreadable frags

 drivers/net/ethernet/intel/ice/ice_base.h    |   2 +
 drivers/net/ethernet/intel/ice/ice_lib.h     |  18 +-
 drivers/net/ethernet/intel/ice/ice_txrx.h    |   2 +
 drivers/net/ethernet/intel/idpf/idpf_txrx.h  |   2 +
 include/net/libeth/rx.h                      |   2 +
 include/net/libeth/tx.h                      |   2 +-
 drivers/net/ethernet/intel/iavf/iavf_txrx.c  |   1 +
 drivers/net/ethernet/intel/ice/ice_base.c    | 247 +++++++++++++++----
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c |  15 +-
 drivers/net/ethernet/intel/ice/ice_eswitch.c |  26 +-
 drivers/net/ethernet/intel/ice/ice_lib.c     | 227 +++++++++++++----
 drivers/net/ethernet/intel/ice/ice_main.c    |  79 +++---
 drivers/net/ethernet/intel/ice/ice_sf_eth.c  |   4 +
 drivers/net/ethernet/intel/ice/ice_txrx.c    |  43 +++-
 drivers/net/ethernet/intel/ice/ice_xsk.c     |   4 +-
 drivers/net/ethernet/intel/idpf/idpf_txrx.c  |  13 +
 drivers/net/ethernet/intel/libeth/rx.c       |  43 ++++
 17 files changed, 566 insertions(+), 164 deletions(-)

---
Note: apply to net-next, not Tony's next-queue (ready to be sent as
a PR).

From v4[0]:
* rebase on top of the latest net-next;
* 3/5: fix the last [hopefully] missing netdev lock (E-Switch code,
       Simon), rechecked with our internal Intel's Sashiko setup;
* 3/5: pick fixes for .ndo_bpf() and safe mode from Kohei.

From v3[1]:
* rebase on top of recent Larysa's changes;
* 3/5: fix the last locking inconsistencies (Jakub);
* 3/5: pick a kdoc fix from Tony.

From v2[2]:
* rebase on top of net-next-7.0;
* 3/5: fix [hopefully] all inconsistent locking (Jakub, Tony);
* 4/5: pick a hotfix from Kohei.

From v1[3]:
* rebase on top of the latest next-queue;
* fix a typo 'rxq_ixd' -> 'rxq_idx' (Tony).

Testing hints:
* regular Rx and Tx for regressions;
* <kernel root>/tools/testing/selftests/drivers/net/hw/ contains
  scripts for testing netmem Rx and Tx, namely devmem.py and
  iou-zcrx.py (read the documentation first).

[0] https://lore.kernel.org/intel-wired-lan/20260318163505.31765-1-aleksander.lobakin@intel.com
[1] https://lore.kernel.org/intel-wired-lan/20260224174618.2780516-1-aleksander.lobakin@intel.com
[2] https://lore.kernel.org/intel-wired-lan/20251204155133.2437621-1-aleksander.lobakin@intel.com
[3] https://lore.kernel.org/intel-wired-lan/20251125173603.3834486-1-aleksander.lobakin@intel.com
-- 
2.54.0

