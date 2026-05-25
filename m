Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AHVwMy5dFGqPMwcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 May 2026 16:31:10 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 694055CBBF4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 May 2026 16:31:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C321C83DBC;
	Mon, 25 May 2026 14:31:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S4Ln0RU8nk4O; Mon, 25 May 2026 14:31:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 269EE83DB9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779719466;
	bh=4+QbGEhEsquEoKxIhD2AqcM08oL+NVhQbtrM0BhEX14=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=4D2IRoGHAYz14Ip0ByqulQRzHKBwUpomD6IxzDY8VwZffci9uTNZ8qg8nzS+3Rwox
	 q5fZ68L3Hfofg84Y8VYDiuhSfRJsA3qPIe9v2LpgqgwNpOZSEkydBn13xr/XiM5yiJ
	 LCk1HSSI5jQKd3tiI2+iB1TxM6RA0VmETe/x35q/7SI1rpBqEukdYMDKDfnNgbGsoc
	 Y1CV45B+5yTh1bc9ipxsOWKeCY1tf8obmhK7qK6txvVAZgVVAmOfPVtZu2ISvwQhxs
	 Wka8Gy7ZQ/GkqvuoXN3qDGPSQY1WEqKC1m9E9k1x9CpN+ZL5okCH66QMIsz9AstoyE
	 aIWQV1F56H21g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 269EE83DB9;
	Mon, 25 May 2026 14:31:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id BE117265
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 May 2026 14:31:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B085F83DB1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 May 2026 14:31:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9rxARHRmpaQS for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 May 2026 14:31:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=sergey.temerkhanov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C658283506
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C658283506
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C658283506
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 May 2026 14:31:03 +0000 (UTC)
X-CSE-ConnectionGUID: UFHDQyZhRFGUFLs3baZtRQ==
X-CSE-MsgGUID: Hrhz1W4mQ/SDjiCfMBL/Kw==
X-IronPort-AV: E=McAfee;i="6800,10657,11797"; a="80596721"
X-IronPort-AV: E=Sophos;i="6.24,168,1774335600"; d="scan'208";a="80596721"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2026 07:31:02 -0700
X-CSE-ConnectionGUID: nvL+cXkzQMGhns8v9KSxZA==
X-CSE-MsgGUID: kZITJZNgR8CBwnc+tBgYew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,168,1774335600"; d="scan'208";a="237189227"
Received: from gnrd8.igk.intel.com (HELO GNRD8) ([10.123.232.137])
 by fmviesa006.fm.intel.com with ESMTP; 25 May 2026 07:31:01 -0700
From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org
Date: Mon, 25 May 2026 14:30:57 +0000
Message-ID: <20260525143100.2758251-1-sergey.temerkhanov@intel.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779719464; x=1811255464;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WMTE157dD8g+v5naxxaBeOIvwYVp6WNe8lrymqYZFTI=;
 b=FtsTyMLv1qEN10RfUBe2lUg8Tx+rZ/rRV0iqIgGy2kkagN5NbhvteeRV
 IvCZYb+tVGsN2DAbPnWkGFPJrPCK7Kp5FXk+n+9uCpZH7q9wmV2m24dLQ
 iA3Kff/R07fGgTQcHtGUDCTsqqQhYLVu0KdgeF6bjuO3JouTmGapmSOZT
 b8sZik9VtvB21zm7S5v1wfItXMbuB6faXzkvz+gJw5yomqpPibV9D5nDl
 99sWm+s6ebQIn+TJJ2pCQoDkuiavwgHg2ZKFsgSA+GxmFINdOcUTKhzPs
 Zph9QSHJ+Pr5SzDTDNNJThq+gEMIIBrjabP1fGvQsdPuV/T5wDuhfpbdJ
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FtsTyMLv
Subject: [Intel-wired-lan] [RESEND PATCH iwl-net v2 0/3] Rework ctrl_pf
 pointer usage in struct ice_adapter
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
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sergey.temerkhanov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.998];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 694055CBBF4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Rework usage of the control PF pointer in struct ice_adapter, so that
it is always has a consistent state, since it is global for an adapter.
Utilize RCU for reading the pointer value and atomic operations for
changing it. Zero out the ctrl_pf pointer when the control PF is removed.

Previous version:
https://lists.osuosl.org/pipermail/intel-wired-lan/Week-of-Mon-20260504/054842.html

v1->v2: Rebase onto the latest dev-queue branch:
        297c032796ab ("igc: add support for forcing link speed without autonegotiation")

Sergey Temerkhanov (3):
  ice: Convert ctrl_pf pointer in struct ice_adapter to RCU
  ice: Zero out the PTP control PF pointer at ice_adapter cleanup
  ice: Cache struct ice_hw pointer for split register reads

 drivers/net/ethernet/intel/ice/ice.h         | 10 ++-
 drivers/net/ethernet/intel/ice/ice_adapter.h |  2 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c     | 66 +++++++++++++++++---
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c  | 26 ++++++--
 4 files changed, 89 insertions(+), 15 deletions(-)

-- 
2.53.0

