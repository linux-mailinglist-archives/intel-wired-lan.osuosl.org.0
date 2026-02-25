Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eFtPD748n2kiZgQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Feb 2026 19:17:34 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AA50A19C1D5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Feb 2026 19:17:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B6B2961560;
	Wed, 25 Feb 2026 18:17:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id m6mzDASNmBIL; Wed, 25 Feb 2026 18:17:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BEABE6156D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772043449;
	bh=yGl+J8cRsuGCUGCHbGbYBJ/Q8WtcnVtdEUDHuMCkPwQ=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=G6sQgDL0TknoL7DPqKA2Ude6EgM9HmHMdTc6lEBARRfNXxmowHJ4wg6ZwO4FAtDkC
	 EgnW7ERkRSMmWDSDzH8VK3BkUdnfd0AnY317R2jf+VndkQIHQRas8NXtoRhe1y0hCi
	 5Hsizd4lYTIKiYBk0ux7O6ETK9nmut86gUZfwDRbmSB+bo2jhM0hwC0dOqqn/7Kb6S
	 Kv+AjjPGR4Nw5n6UcFB8OxYdAp34y0w1V4YDpSTBgCMfoqmEzjUUmPzJx0Sm7Fj034
	 niBkYUlaoyMKQu0wP8LFxEH5XfQl41rpnyGRmzPj01pQ/GciYB806Av9pUcSL5krZb
	 d5c8ll/E8i/sQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BEABE6156D;
	Wed, 25 Feb 2026 18:17:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6850D23D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 18:17:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4DD7761560
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 18:17:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1HdoCBvisTkK for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Feb 2026 18:17:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 37D9F61029
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 37D9F61029
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 37D9F61029
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 18:17:26 +0000 (UTC)
X-CSE-ConnectionGUID: AXMXTLriQbiNafLx0P8a+g==
X-CSE-MsgGUID: cPTh4wu5RFKjFd7MImUEBQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="72967633"
X-IronPort-AV: E=Sophos;i="6.21,311,1763452800"; d="scan'208";a="72967633"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 10:17:26 -0800
X-CSE-ConnectionGUID: EiyiVOgUSxCRGP3NzQaxSA==
X-CSE-MsgGUID: 0pRomoGlTAWqXMRnqrxLdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,311,1763452800"; d="scan'208";a="254070266"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa001.jf.intel.com with ESMTP; 25 Feb 2026 10:17:22 -0800
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 36A0232C80;
 Wed, 25 Feb 2026 18:17:20 +0000 (GMT)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org
Cc: Larysa Zaremba <larysa.zaremba@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Simon Horman <horms@kernel.org>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@fomichev.me>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Natalia Wochtman <natalia.wochtman@intel.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, bpf@vger.kernel.org
Date: Wed, 25 Feb 2026 18:46:34 +0100
Message-ID: <20260225174646.3514556-1-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772043447; x=1803579447;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UucAOz994cV+L7XaqXObhEfee3wJbdE/6/J3TtjyssY=;
 b=jUCqJ23N8ibsPerDjszDZMvjh1DI8oEY7ss7nYPEbkFp7slz6xJtKsV8
 tpXV+0p/b1s8+Zp3bXNaT93dfqWDBC3ZgQVOO3dfG5t6piFYyivRdRaVT
 Q+utXSVELBay5WEzOm2WgTCpm9kOjMu3sC7OHg4PeJ8r962jysZNJE/ye
 XIyemVDWzKiEVbRGU6AzZhtr4mLVwsbC/T1EGGl4f4+wTdkXgQYuK8wwo
 q1JimMGcQXu6l3596UtlyfDcHlypL2NeyRYlazW2TPlIKsSsg3orhTIZs
 LdmeBS5iIKTheB3uzsgS0VhVfSwX404XHeS0MIFHz3ZSIp+ZAFi4yGH26
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jUCqJ23N
Subject: [Intel-wired-lan] [PATCH iwl-next v2 00/10] libeth and full XDP for
 ixgbevf
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:larysa.zaremba@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:aleksander.lobakin@intel.com,m:horms@kernel.org,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:aleksandr.loktionov@intel.com,m:natalia.wochtman@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:bpf@vger.kernel.org,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,iogearbox.net,gmail.com,fomichev.me,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	NEURAL_HAM(-0.00)[-0.865];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: AA50A19C1D5
X-Rspamd-Action: no action

Update ixgbevf with standard XDP features by utilizing libeth library.

First, in patches 1-4 refactor existing general and XDP Rx code
to use libeth fill queues. Then in patches 5-7, add support for
XDP multi-buffer and XDP_REDIRECT (target and source). Patch 8 addresses
particularities of one HW type by using a software header split.
Patches 9-10 address page pool not being reconfigured on MTU change.

v1->v2:
* fix wrong return value when allocating descriptor memory fails
* tag xdp_prog in ring structure as RCU

Larysa Zaremba (9):
  ixgbevf: remove legacy Rx
  ixgbevf: do not share pages between packets
  ixgbevf: use libeth in Rx processing
  ixgbevf: branch prediction and cleanup
  ixgbevf: support XDP multi-buffer on Rx path
  ixgbevf: XDP_TX in multi-buffer through libeth
  ixgbevf: support XDP_REDIRECT and .ndo_xdp_xmit
  ixgbevf: reconfigure page pool when reallocating buffers
  ixgbevf: allow changing MTU when XDP program is attached

Natalia Wochtman (1):
  ixgbevf: add pseudo header split

 drivers/net/ethernet/intel/Kconfig            |    1 +
 drivers/net/ethernet/intel/ixgbevf/defines.h  |    2 +-
 drivers/net/ethernet/intel/ixgbevf/ethtool.c  |   48 -
 drivers/net/ethernet/intel/ixgbevf/ixgbevf.h  |   98 +-
 .../net/ethernet/intel/ixgbevf/ixgbevf_main.c | 1104 +++++++----------
 include/net/libeth/xdp.h                      |    2 +-
 6 files changed, 487 insertions(+), 768 deletions(-)

-- 
2.52.0

