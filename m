Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sPVgA43UummfcAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 17:36:29 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 79AAC2BF5CD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 17:36:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1113441034;
	Wed, 18 Mar 2026 16:36:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fBoxCcgCzbTd; Wed, 18 Mar 2026 16:36:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 45F9D4102D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773851786;
	bh=9X8+P+fTVG0+B9W8wcHGsiRzAEgaki3Zbz5H2sRnI+U=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=37L1XieiqHSHcB9gbmcYJveIbRD7Re43unPLlWfbTm65EYSVU+XyUsje6qBGwege6
	 g0k/ysLJcTLC3AoZEknuHaC2ed+m5GQRoNLfZowpkOIou9ShT/XFXRP5NZCBRcC/qF
	 ispbvwYAiyjgJjdi2T/1xBGeM26v4ZkmRLUNiqAEYABpta+5NIE15dUpAFkn5QXI3m
	 YHeV3ZA+CZtbQHNVcaJ94U6CfksCxrQr1DGgjFklMzShBZdfdpMMDTjihAwBFVjdYF
	 W7ITayLtNPx2cD2103S+ns+OS3Ai/k9EW+w58SkO1BUX/aZA8zk0ua30WCj1sR/NG2
	 5SB1k6oZqnuBA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 45F9D4102D;
	Wed, 18 Mar 2026 16:36:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1A5DF1B6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 16:36:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0A6BA83330
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 16:36:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lSxcOBGXzIou for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Mar 2026 16:36:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CF6C18291C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CF6C18291C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CF6C18291C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 16:36:23 +0000 (UTC)
X-CSE-ConnectionGUID: 4iNoAGJzQMm2s3Tg9Lfyqw==
X-CSE-MsgGUID: r8SHL14DSo29mkTPcJDY1A==
X-IronPort-AV: E=McAfee;i="6800,10657,11733"; a="62479375"
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; d="scan'208";a="62479375"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2026 09:36:23 -0700
X-CSE-ConnectionGUID: tRW783DEQ7CjYA0WkA9J/A==
X-CSE-MsgGUID: 786qgjQ8S9GvRnfYl5MYVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; d="scan'208";a="218687651"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa010.fm.intel.com with ESMTP; 18 Mar 2026 09:36:19 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Alexander Lobakin <aleksander.lobakin@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 nxne.cnse.osdt.itp.upstreaming@intel.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Wed, 18 Mar 2026 17:35:00 +0100
Message-ID: <20260318163505.31765-1-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773851784; x=1805387784;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=v4Jw0HRkJlIvmfXjzOdEs18CnbvVQAflo4eSAKRVV6o=;
 b=XlDkwmP3thjlhBzKf7wnsduLwMafTAuXrwCUdVR1+nwoBW3CqNO4ixXl
 oKZ7B0OaRE/akYMNioZWOnmH8U0ZejqXNxPS92IT9VaZjFrgApJ7JuJV1
 8Qydw6otEjinyuTC0b7lW3YfPL6rYT9vWNQvUk9fEM4SABGlx289POm3s
 j6Tr2XXMEKR6mILSVjcVz2Md4xDqeeEnQL5FSGR0TkWcJhIN342oWpZ0v
 tuEBdfTxh1N8qCDR20ODC1D/yQXtzJoKDPQpDAj0GYM5/ruoMklMc/NOW
 AcQeXU+go2UhwAJgsNGMa7RfAZX29HoiOHX6+r4ZtCGh0J3l1nBJQKZls
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XlDkwmP3
Subject: [Intel-wired-lan] [PATCH iwl-next v4 0/5] ice: add support for
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
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,iou-zcrx.py:url,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,devmem.py:url];
	FROM_NEQ_ENVFROM(0.00)[aleksander.lobakin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_HAM(-0.00)[-0.995];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 79AAC2BF5CD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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
 drivers/net/ethernet/intel/ice/ice_lib.c     | 225 +++++++++++++----
 drivers/net/ethernet/intel/ice/ice_main.c    |  74 +++---
 drivers/net/ethernet/intel/ice/ice_sf_eth.c  |   4 +
 drivers/net/ethernet/intel/ice/ice_txrx.c    |  43 +++-
 drivers/net/ethernet/intel/ice/ice_xsk.c     |   4 +-
 drivers/net/ethernet/intel/idpf/idpf_txrx.c  |  13 +
 drivers/net/ethernet/intel/libeth/rx.c       |  43 ++++
 16 files changed, 541 insertions(+), 156 deletions(-)

---
Note: apply to net-next, not Tony's next-queue.

From v3[0]:
* rebase on top of recent Larysa's changes;
* 3/5: fix the last locking inconsistencies (Jakub);
* 3/5: pick a kdoc fix from Tony.

From v2[1]:
* rebase on top of net-next-7.0;
* 3/5: fix [hopefully] all inconsistent locking (Jakub, Tony);
* 4/5: pick a hotfix from Kohei.

From v1[2]:
* rebase on top of the latest next-queue;
* fix a typo 'rxq_ixd' -> 'rxq_idx' (Tony).

Testing hints:
* regular Rx and Tx for regressions;
* <kernel root>/tools/testing/selftests/drivers/net/hw/ contains
  scripts for testing netmem Rx and Tx, namely devmem.py and
  iou-zcrx.py (read the documentation first).

[0] https://lore.kernel.org/intel-wired-lan/20260224174618.2780516-1-aleksander.lobakin@intel.com
[1] https://lore.kernel.org/intel-wired-lan/20251204155133.2437621-1-aleksander.lobakin@intel.com
[2] https://lore.kernel.org/intel-wired-lan/20251125173603.3834486-1-aleksander.lobakin@intel.com
-- 
2.53.0

