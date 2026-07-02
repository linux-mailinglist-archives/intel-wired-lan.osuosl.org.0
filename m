Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id gB1eCNgwRmrULQsAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Jul 2026 11:35:20 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EBB5F6F5518
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Jul 2026 11:35:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=zCkTuaft;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E048441317;
	Thu,  2 Jul 2026 09:35:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lB72WJaHDiMX; Thu,  2 Jul 2026 09:35:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 34F0C413A6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782984914;
	bh=676AuxgOCexYQRsFqswbAH4F9KPDhyj25SUNW2IgOcE=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=zCkTuaftA30922S1+Zv4W2CIWyuiUQAoMXwuIBXGgkBeo2C3kkypUvFdpcsrCXiZ1
	 jAj9hbCPLZnn9Qb0PUVeK/Pdg26nPq+H2PeLRPwnIq63nLMrpf3jDnqzsIjCmAPOS+
	 rmvFq9exqg99AgHaQlGuoKfltgAnxf8Hl3L6bY91toCYsG/VeU+y3xS6dM2T2/1tUN
	 lM9vnggpU8I8y123+3ZsKBY8p6agANUKjBPef6tPjEpseoq8/bmzn9oAI0FH76hoxw
	 dhYZw+Ag3dPGMCDIPhuEpQErWwKVNCWx1b1ab62fg7fMl/SPlImkXKdn3rLCfNQbBa
	 g2yPjrERFeL+Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 34F0C413A6;
	Thu,  2 Jul 2026 09:35:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id CAFA34B5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 09:35:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B6F3281E6B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 09:35:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xDLjUNok3gLL for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jul 2026 09:35:12 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E855C81E37
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E855C81E37
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E855C81E37
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 09:35:11 +0000 (UTC)
X-CSE-ConnectionGUID: VqZnN2E8RjKufORweGfTSw==
X-CSE-MsgGUID: Bkx98NXaS2GgTkcDGmsKAg==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="87649800"
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="87649800"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 02:35:11 -0700
X-CSE-ConnectionGUID: 8CcPIbC2SbywBWf03FR83A==
X-CSE-MsgGUID: bhC1K6BYSMWnom7kKuS2Ow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="253476401"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by orviesa009.jf.intel.com with ESMTP; 02 Jul 2026 02:35:10 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Date: Thu,  2 Jul 2026 11:15:47 +0200
Message-Id: <20260702091553.57112-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782984912; x=1814520912;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+3smbMZN9q9hfDM0psll/UkMFyPSBbzwLxtftVIxZSY=;
 b=CQXhrZHeFAXLZcG+P5dSTgkam+LbSJVQ4RpMXzIqxWJumNPUjC1685RM
 xBJOUF5n9aMF6zYDyEInfovH2RPnnPkZu6UGTDT3bykfvoPsajvn8Adus
 Bt+DSN5B0eV47LFmxlMS87qk1L7XXZEnXUPALh/PpOFlT1ZQuS7IDKXno
 3pqGPFnHAYqjJreGxj1QTnfn2t2d0YaGzJXHY5RVO+ZR+cDPTpzBeAo8C
 /amYujf/eUhe7+Pj3bnfiQs1kDCLnGW6D72XIr5OyMQq1alTd2Z0t8MOe
 aELrzt8hjrjHEDDkPW7mn4R8ckcBXhMAS34qYhsLa7j2nQ1ROVPYf4WJQ
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CQXhrZHe
Subject: [Intel-wired-lan] [PATCH iwl-next v1 0/6] ixgbe: improve FW/SW data
 synchronization
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:from_mime,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo];
	FROM_NEQ_ENVFROM(0.00)[jedrzej.jagielski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EBB5F6F5518

There are some possible discrepancies between data shown by the driver
with the actual NIC/FW state.

First 4 patches address problem with link state correctness. In some
scenarios FW may not be able to notify the driver about link change.
Along with fix, refactor the whole approach to LSE (Link Status Events)
enablement. As there's no any reasonable argument for disabling LSE
during driver life cycle, make them constantly enabled.

5th and 6th patches address problem occurring when FW changes MAC address.
There's no any kind of notify/event accompanying that change. Therefore let the
driver to poll for the new address.

Jedrzej Jagielski (6):
  ixgbe: E610: init Link Status Events mask just once
  ixgbe: E610: prevent from disabling LSE
  ixgbe: E610: do not disable LSE on driver down/remove
  ixgbe: E610: re-enable LSE unconditionally
  ixgbe: E610: add MAC address runtime refresh
  ixgbe: take rtnl lock before ixgbe_reset() is called

 drivers/net/ethernet/intel/ixgbe/ixgbe.h      |   1 -
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c |  49 ++++-----
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |   4 +-
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  |   2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 100 +++++++-----------
 5 files changed, 63 insertions(+), 93 deletions(-)

-- 
2.31.1

