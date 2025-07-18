Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A5B7B098C7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Jul 2025 02:14:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 816F283BB1;
	Fri, 18 Jul 2025 00:14:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WmpNHXG2iTqZ; Fri, 18 Jul 2025 00:14:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7928E83B99
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752797663;
	bh=7GbJujGa3RRkdJywD1hC+ZRWIUlNUE+2uGjE2UfPcZE=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=2I53MKq/B2oMjxvVqvL0PDvNp0TrkggrBc4WllZiWx3cBthiUUUHVe1ppd1t+MUWD
	 Zxvs1VA/iSolTOG0rtL0TiTw6gC36cYJsgAeHolrndMxTVaSHtkOPDSWZM3LoiuDqW
	 AbQioixfIdjCQtVNbxB7YVpnAVjYN+T08FU5d5Vi8E62vO6t1kr6lOBMXpweLRpYuV
	 lp5dQo2L26unveXBJFzj6+Xfkj/nc/bLugQTUG7ikSoL2j9b1uhBatpr/1G66teNMG
	 3KIluU4EMcRq6g/V90gAaO8+lPyoTsQNQfn433dQGlitF9roQHgokIkwIf0mthMoDh
	 1fvKjgjAYUddA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7928E83B99;
	Fri, 18 Jul 2025 00:14:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4D3E61A6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jul 2025 00:14:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3F2C8411E4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jul 2025 00:14:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id beR02dMiz2VR for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Jul 2025 00:14:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=joshua.a.hay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3E04F411DA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3E04F411DA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3E04F411DA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jul 2025 00:14:19 +0000 (UTC)
X-CSE-ConnectionGUID: JKkysFhtRciYUbNUHe0ISQ==
X-CSE-MsgGUID: NGUyas1ESW2RsG05XZgwaA==
X-IronPort-AV: E=McAfee;i="6800,10657,11495"; a="65345423"
X-IronPort-AV: E=Sophos;i="6.16,320,1744095600"; d="scan'208";a="65345423"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 17:14:20 -0700
X-CSE-ConnectionGUID: ghu+GQr1QXKu3cBBUt8qkw==
X-CSE-MsgGUID: T2tZTX73SqWHgcXl9Tg7CQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,320,1744095600"; d="scan'208";a="188908842"
Received: from dcskidmo-m40.jf.intel.com ([10.166.241.13])
 by fmviesa001.fm.intel.com with ESMTP; 17 Jul 2025 17:14:18 -0700
From: Joshua Hay <joshua.a.hay@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
	Joshua Hay <joshua.a.hay@intel.com>
Date: Thu, 17 Jul 2025 17:21:44 -0700
Message-Id: <20250718002150.2724409-1-joshua.a.hay@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752797661; x=1784333661;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=VHHNB2MwVgwGwQ+xTyeeu9wxDG/2ySU3eiEJpAVpU7Q=;
 b=iPUz0jLLcKxUN8RJKaJLfqyJIL+eZIykUfLpb5kTplem5ffFHW8JeFAm
 AYpX9DvBrbMJqu7cESmS5nyBXmZaKtaEJ/tl9U9I/bYuKLwvpvPNmQj2a
 Jpip5msQC9inA1aHOJ7zMYBkeZdExMpV2kb1NRjploLuXDnaIRfqtT5Ok
 FOnS3mWFAAP13HaE9TZ+hGbVbUTn6txgWvhaAW8kpl0GUGRagVGHyr1t1
 CO9ftfyM+mZ1lGMb4/gEuRq9EoktTEqB7rzulEwK+F1XSew1ew91PaI3a
 NLHof91OfkjGnZ94Hd/W9FIljsgusZ+TcRan2KKAaMvvq8yerKTgiTn/5
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iPUz0jLL
Subject: [Intel-wired-lan] [PATCH net v2 0/6] idpf: replace Tx flow
 scheduling buffer ring with buffer pool
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

This series fixes a stability issue in the flow scheduling Tx send/clean
path that results in a Tx timeout.

The existing guardrails in the Tx path were not sufficient to prevent
the driver from reusing completion tags that were still in flight (held
by the HW).  This collision would cause the driver to erroneously clean
the wrong packet thus leaving the descriptor ring in a bad state.

The main point of this refactor is to replace the flow scheduling buffer
ring with a large pool/array of buffers.  The completion tag then simply
is the index into this array.  The driver tracks the free tags and pulls
the next free one from a refillq.  The cleaning routines simply use the
completion tag from the completion descriptor to index into the array to
quickly find the buffers to clean.

All of the code to support the refactor is added first to ensure traffic
still passes with each patch.  The final patch then removes all of the
obsolete stashing code.

---
v2:
- Add a new patch "idpf: simplify and fix splitq Tx packet rollback
  error path" that fixes a bug in the error path. It also sets up
  changes in patch 4 that are necessary to prevent a crash when a packet
  rollback occurs using the buffer pool.

v1:
https://lore.kernel.org/intel-wired-lan/c6444d15-bc20-41a8-9230-9bb266cb2ac6@molgen.mpg.de/T/#maf9f464c598951ee860e5dd24ef8a451a488c5a0

Joshua Hay (6):
  idpf: add support for Tx refillqs in flow scheduling mode
  idpf: improve when to set RE bit logic
  idpf: simplify and fix splitq Tx packet rollback error path
  idpf: replace flow scheduling buffer ring with buffer pool
  idpf: stop Tx if there are insufficient buffer resources
  idpf: remove obsolete stashing code

 .../ethernet/intel/idpf/idpf_singleq_txrx.c   |  61 +-
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 723 +++++++-----------
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  87 +--
 3 files changed, 356 insertions(+), 515 deletions(-)

-- 
2.39.2

