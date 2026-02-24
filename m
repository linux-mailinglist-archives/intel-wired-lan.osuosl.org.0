Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GMZrLp/knWnpSQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 18:49:19 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 322AF18AB7D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 18:49:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A801B40AB8;
	Tue, 24 Feb 2026 17:49:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nYBlF4q3Jeol; Tue, 24 Feb 2026 17:49:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CB76940ABB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771955356;
	bh=mB9O0Fhm2js0HGCs5/NTI/zVMfqHv3cgj4dK76wV6M4=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=4UPbFrRqzJu+iOU0Gm44gx36mU6ACB83ZIJhiYAMgI/G0KugtXp8NT8DXHIqm4f/n
	 h5KkZ4pFmo0w7z4qPhrnMa0G9Yu7WEQCpQyUzwQT5fQlBjhHycJmF6/1klqggonHyn
	 Z7kCchag+A2Jo/PssKdMOd9JId90eLwNf58w2+WvaWJJ1TzlNqw1kKJo2FTHMQ55EH
	 vVFpaM0rOKo109l0Tq5ydqMvpQeJAqkHwDIelywNvy7bOkibdU6qFClTvKmjoSk7Bk
	 W0JExXAg09hTzpTGO4MzLWZwxczxrEw/5mfHZajftEj5toAjSbRKjldH4hkHRdBsVw
	 l4VvGrEundvrw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CB76940ABB;
	Tue, 24 Feb 2026 17:49:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3B2BE237
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 17:49:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2D79360DD4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 17:49:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eB7yy_Cf-ZtM for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Feb 2026 17:49:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 527FB60DFE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 527FB60DFE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 527FB60DFE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 17:49:14 +0000 (UTC)
X-CSE-ConnectionGUID: BEFUmKomTbeDBRH/EEUrBg==
X-CSE-MsgGUID: lhGRHtM/RxayjG0+VF+NwA==
X-IronPort-AV: E=McAfee;i="6800,10657,11711"; a="98444495"
X-IronPort-AV: E=Sophos;i="6.21,309,1763452800"; d="scan'208";a="98444495"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 09:49:06 -0800
X-CSE-ConnectionGUID: cgKAUa66Tuy3HwMMfh0Yuw==
X-CSE-MsgGUID: x8yiX51ISMWPVFsT1j4Llw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,309,1763452800"; d="scan'208";a="220088494"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa003.jf.intel.com with ESMTP; 24 Feb 2026 09:49:02 -0800
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
Date: Tue, 24 Feb 2026 18:46:13 +0100
Message-ID: <20260224174618.2780516-1-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771955354; x=1803491354;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=u4IRNFH9va3OeQ5nrZg8gWMVIxl5+G7rTkHNbJnhzAA=;
 b=ZtAdMPtvyH+bUFplZXPcj2tdlyRpfaiDsJTmLpKRzeS4EJd87e6qYfiQ
 1VuIPI2eERb8utA5z9CndeCswpI3TT+zvt8TfxkUQ9n8/RmRSYwdVkHW5
 paALcvkX7CpNITWO8sYdflCORcDDRDsDUmug1YNuCrclYGwzMWwjsB9mt
 OzewJ8AYAENdJ0eZI0FEqigblsR/urgF6P6w2GLuHcIxjT/P5vy8orm5D
 GPwSH4nQwdfNCeBeY5owCkPYykeOdxmZwUl+sJ9yYn7VLkPnDAG0m2qeB
 jzzkVc22s8rQHOoAAioG9H17+s1+yR7QuH/P7VDKRkpS1+HmJyHVJqFhU
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZtAdMPtv
Subject: [Intel-wired-lan] [PATCH iwl-next v3 0/5] ice: add support for
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,devmem.py:url];
	FROM_NEQ_ENVFROM(0.00)[aleksander.lobakin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_HAM(-0.00)[-0.981];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 322AF18AB7D
X-Rspamd-Action: no action

Now that ice uses libeth for managing Rx buffers and supports
configurable header split, it's ready to get support for sending
and receiving packets with unreadable (to the kernel) frags.

Extend libeth just a little bit to allow creating PPs with custom
memory providers and make sure ice works correctly with the netdev
ops locking. Then add the full set of queue_mgmt_ops and don't
unmap unreadable frags on Tx completion.
No perf regressions for the regular flows and no code duplication
implied.

Credits to the fbnic developers, which's code helped me understand
the memory providers and queue_mgmt_ops logics and served as
a reference.

Alexander Lobakin (5):
  libeth: pass Rx queue index to PP when creating a fill queue
  libeth: handle creating pools with unreadable buffers
  ice: migrate to netdev ops lock
  ice: implement Rx queue management ops
  ice: add support for transmitting unreadable frags

 drivers/net/ethernet/intel/ice/ice_base.h    |   2 +
 drivers/net/ethernet/intel/ice/ice_lib.h     |  15 +-
 drivers/net/ethernet/intel/ice/ice_txrx.h    |   2 +
 drivers/net/ethernet/intel/idpf/idpf_txrx.h  |   2 +
 include/net/libeth/rx.h                      |   2 +
 include/net/libeth/tx.h                      |   2 +-
 drivers/net/ethernet/intel/iavf/iavf_txrx.c  |   1 +
 drivers/net/ethernet/intel/ice/ice_base.c    | 259 ++++++++++++++-----
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c |  15 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.c |   1 +
 drivers/net/ethernet/intel/ice/ice_lib.c     | 183 ++++++++++---
 drivers/net/ethernet/intel/ice/ice_main.c    |  70 ++---
 drivers/net/ethernet/intel/ice/ice_sf_eth.c  |   4 +
 drivers/net/ethernet/intel/ice/ice_txrx.c    |  43 ++-
 drivers/net/ethernet/intel/ice/ice_xsk.c     |   4 +-
 drivers/net/ethernet/intel/idpf/idpf_txrx.c  |  13 +
 drivers/net/ethernet/intel/libeth/rx.c       |  43 +++
 17 files changed, 509 insertions(+), 152 deletions(-)

---
From v2[0]:
* rebase on top of net-next-7.0;
* 3/5: fix [hopefully] all inconsistent locking (Jakub, Tony);
* 4/5: pick a hotfix from Kohei.

From v1[1]:
* rebase on top of the latest next-queue;
* fix a typo 'rxq_ixd' -> 'rxq_idx' (Tony).

Testing hints:
* regular Rx and Tx for regressions;
* <kernel root>/tools/testing/selftests/drivers/net/hw/ contains
  scripts for testing netmem Rx and Tx, namely devmem.py and
  iou-zcrx.py (read the documentation first).

[0] https://lore.kernel.org/intel-wired-lan/20251204155133.2437621-1-aleksander.lobakin@intel.com
[1] https://lore.kernel.org/intel-wired-lan/20251125173603.3834486-1-aleksander.lobakin@intel.com
-- 
2.53.0

