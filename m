Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MBvFNRBA1GmRsQcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 07 Apr 2026 01:21:52 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D72F23A8173
	for <lists+intel-wired-lan@lfdr.de>; Tue, 07 Apr 2026 01:21:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 22355407F0;
	Mon,  6 Apr 2026 23:21:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UPgfMsbo4dgF; Mon,  6 Apr 2026 23:21:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 25B02407D8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775517708;
	bh=7YmkspzO6vU1XuqeESiK3Na4YZb0e1kBsdZFFlLOS5U=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=PMnz8RrEA9hIuG0uqQx6YQCb6yk+Ivkz0j1pKZU5Uwy8T+hgHfXL01r1iN05/AOma
	 mm5KNIqQJ7F+Q7ij0Bcbb0m/IIQqToghyfjzBnlQZWXpKmRmmuFGLg4cGlruKzAdYx
	 6D6v/r7u2/z0K8Fu+abYdwTwTA8YjPw8N6LbmEOMnyv/3KgRZkE6Sp6B6PKj5z7mUB
	 hFX3Fz6+8L6WPFFEWStvogELC9FDHCw2a1lVDe9+PSYWY1i6BnsEvUheVvw7PrrPcf
	 f+0HF4CrfM7/FVq1XFFDqgHLZup+7EOdW2v4yuajQaU94/fi8sVSDj8JG8U5anOjS/
	 hBnDGCL24OhDQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 25B02407D8;
	Mon,  6 Apr 2026 23:21:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4FF562EF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Apr 2026 23:21:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 41A5280D44
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Apr 2026 23:21:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KU_0eKbpJSz4 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Apr 2026 23:21:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=joshua.a.hay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 854A880CAF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 854A880CAF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 854A880CAF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Apr 2026 23:21:45 +0000 (UTC)
X-CSE-ConnectionGUID: thV8JcVRS3CwBfaBVODRgA==
X-CSE-MsgGUID: +RzyXwv3R5SXcsHMkocefg==
X-IronPort-AV: E=McAfee;i="6800,10657,11751"; a="76368982"
X-IronPort-AV: E=Sophos;i="6.23,164,1770624000"; d="scan'208";a="76368982"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2026 16:21:45 -0700
X-CSE-ConnectionGUID: HGI4C95KR1Kb0yjomD8imA==
X-CSE-MsgGUID: 70QloSe0SbiPEaPQaNavfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,164,1770624000"; d="scan'208";a="232050498"
Received: from dcskidmo-m40.jf.intel.com ([10.166.241.14])
 by orviesa003.jf.intel.com with ESMTP; 06 Apr 2026 16:21:45 -0700
From: Joshua Hay <joshua.a.hay@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org
Date: Mon,  6 Apr 2026 16:32:34 -0700
Message-Id: <20260406233236.3585504-1-joshua.a.hay@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775517706; x=1807053706;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7xmwcJYJm6E1fVmwZFpjH2ZcK/4kqQYQeVx6z126pwk=;
 b=EU1i+onZLDYHOG+VoLXwcrfTbTzl2W6GhrRZIM4bBA1cmno9DHLcFHlF
 cdDTYwDBm873pZVw4ZcsasOwUEH0YAycxdX6nFalDdbSZ2iRIwy+DYR2h
 5aLnwJbjSdbFlMRG8JKYaQLFJxRKcrlZ/C2gZ5QVgPwjI4yJr5NUlvlrB
 +PyxVV2o7sUfZSauzqHgoqHWMjk0tq7fEkQSHatlYlNhZ4SOmDM9x7fIW
 mKhtipkhHwiiBfXGiyKmhT7U+0gfiRmIahHAGWxTKilifpgW0eOIO/Kcl
 UuCbLVO44J+QXE640ZhHnxPJ9VEtgyOpt25unKgDx2kHvdJcFmOJ8fXaS
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EU1i+onZ
Subject: [Intel-wired-lan] [PATCH iwl-net 0/2] idpf: queue based scheduling
 fixes
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
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	ARC_NA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[joshua.a.hay@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: D72F23A8173
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This series fixes some TxQ scheduling mode issues exposed by recent FW
changes. 

Patch 1 prevents XDP from being enabled if queue based scheduling is not
supported by the firmware.

Patch 2 fixes a NULL ptr dereference in the Tx path when queue based
scheduling is enabled, and also adds support to process both 4 and 8
byte completion descriptors to avoid timeouts in queue based scheduling
mode.

Joshua Hay (2):
  idpf: do not enable XDP if queue based scheduling is not supported
  idpf: fix skb datapath queue based scheduling crashes and timeouts

 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 49 +++++++++++++--------
 drivers/net/ethernet/intel/idpf/idpf_txrx.h |  6 ++-
 drivers/net/ethernet/intel/idpf/xdp.c       |  7 +++
 3 files changed, 43 insertions(+), 19 deletions(-)

-- 
2.39.2

