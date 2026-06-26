Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id cavmLnsSPmoI/ggAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jun 2026 07:47:39 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 789036CA762
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jun 2026 07:47:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=l3gV235j;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BF27B821C7;
	Fri, 26 Jun 2026 05:47:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id no0PnLqT494x; Fri, 26 Jun 2026 05:47:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 295BA821AE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782452856;
	bh=H48cvs97Khlf4xvRcHC1E565UJSXN/21EEA5xFeq6Is=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=l3gV235jTICBnQUmcNN/D7QJAq99Dxf9DYFYnqiWsz9HMnfkV++4zY0xLD5a/B05C
	 VzQtaXREecnNFDGLnkDwkUJO6UyRWZbl2gFmJ0CNBmoWAShVGEhUUiL+AFiK9cilxt
	 lEN0lkpP0L5HaFwzYc5CORAlIVKGkGzr9t8tjM75QzVK4RMTWMNE4716sgQ8gvoXiX
	 oSXrMW07d4egBwrpeuc4hHr/WexuMki73I3m1YFfeaYzvCoeZyOCpIhuAu/cJeAXDO
	 al9WbBP/DnnnxwYjcOnvEcGlo6FRyA44lCHYBO0SXPkgvzid5wt2vX5Mq4LgFBzBJ6
	 cDnajaAXwQJUQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 295BA821AE;
	Fri, 26 Jun 2026 05:47:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 5CA39231
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jun 2026 05:47:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4E1C640C9D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jun 2026 05:47:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iTEq5PT7raGC for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Jun 2026 05:47:33 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7279040C7A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7279040C7A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7279040C7A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jun 2026 05:47:33 +0000 (UTC)
X-CSE-ConnectionGUID: FDXmwLbzQJ61kZvIw/HprQ==
X-CSE-MsgGUID: SCsFaze5TVuMFsCtgQnqXg==
X-IronPort-AV: E=McAfee;i="6800,10657,11828"; a="85798037"
X-IronPort-AV: E=Sophos;i="6.24,225,1774335600"; d="scan'208";a="85798037"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2026 22:47:33 -0700
X-CSE-ConnectionGUID: Jlz4PYoUS2acI1/4QdazrQ==
X-CSE-MsgGUID: 4YdA1x6CRP+uyuT9h4SJWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,225,1774335600"; d="scan'208";a="275485693"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmviesa001.fm.intel.com with ESMTP; 25 Jun 2026 22:47:31 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org
Date: Fri, 26 Jun 2026 07:47:28 +0200
Message-ID: <20260626054730.1126969-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782452854; x=1813988854;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=54qse0Zod1IPGDYwpG/5iToZX2jpx6R59l5KQJ9Nw7A=;
 b=bTwlndly97szD3ruZ5WJr6N+vj95xT6vltmligaD27JTkat4/4RS7Cmi
 KR2cxK969C+AGoV1Now2QbEENCJyKo2qhsvlzVCTBThUSZE8s3PcAUz52
 MPYPBGpnd4MIFZQbMN+NESzV+N+WUtody+kkOPD1XiK+In0Gw2j65UT1i
 62muLRehIYUAtd7Rni39HB4Jo7rUvRz+fRu0RJ3wsWRTHF3B1VFfBKas+
 LnZFOZOQY36T1T7Kb2bZ/YMPlabFEwoBx4qCEluaTdH2D4S0tEkyaH8qz
 lucJM8LOtd1RHPw+rG+ZbIUgoVYkZnORGSNmyy/nQhMT3fThIah104+/n
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bTwlndly
Subject: [Intel-wired-lan] [PATCH iwl-next v5 0/2] ice: implement symmetric
 RSS hash configuration
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
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	ALIAS_RESOLVED(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:from_smtp];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 789036CA762

The ice driver has advertised symmetric RSS support via
supported_input_xfrm since the capability was added, but ice_set_rxfh()
ignored the input_xfrm parameter entirely, so enabling symmetric hashing
had no actual effect.

This series fixes that.  Patch 1 extends the ethtool core so that
drivers hashing GTP flows on TEID can report it honestly without
blocking symmetric-xor configuration.  Patch 2 wires up the ice driver.

The need for patch 1 surfaced because GTP flow profiles in ice always
include TEID in the hash.  ethtool_check_flow_types() calls
get_rxfh_fields() for every hashable flow type before allowing
symmetric-xor; ethtool_rxfh_config_is_sym() rejected any bitmap
containing RXH_GTP_TEID since it has no src/dst counterpart.  TEID
is the same value in both tunnel directions, so this rejection is
incorrect: including it does not break symmetry.

Rather than hiding TEID from the reported fields (which would silently
misrepresent hardware behaviour), patch 1 fixes the validator, and
patch 2 reports TEID honestly.

Tested with tools/testing/selftests/drivers/net/hw/rss_input_xfrm.py
on an E810 card running kernel 6.19-rc8.

---
v4 -> v5:
 - remove redundant (u64) type conversion

v3 -> v4:
 - Drop the ICE_HASH_INVALID fallback in ice_get_rxfh_fields() that
   fabricated default L3+L4 hash fields when no hardware RSS config
   exists for a flow type; returning zero fields is more honest and
   avoids misrepresenting hardware state
 - Drop the companion "if (!l3 && !l4)" special case in the
   pair-completion block; it was only necessary to cover the synthetic
   defaults added by the fallback, which is now gone
 - No functional change to ice_set_rxfh() or the ethtool core patch

v2 -> v3:
 - Split into 2 patches: ethtool core fix separate from driver change
 - Drop the RXH_GTP_TEID stripping workaround from the driver; instead
   fix ethtool_rxfh_config_is_sym() to accept TEID as intrinsically
   symmetric (patch 1)
 - Fix ice_get_rxfh_fields(): the v2 unconditional assignment
   "nfc->data = ICE_RSS_ALLOWED_FIELDS" clobbered fields set earlier in
   the same function; replaced with pair-completion using |= so only
   the missing half of a partial pair is filled in
 - Remove ICE_RSS_ALLOWED_FIELDS define (no longer needed)
 - Report RXH_GTP_TEID honestly for GTP flow types

v1 -> v2:
 - Preserve valid symmetric RSS fields instead of overwriting nfc->data
   unconditionally

Aleksandr Loktionov (2):
  ethtool: treat RXH_GTP_TEID as intrinsically symmetric
  ice: implement symmetric RSS hash configuration

 drivers/net/ethernet/intel/ice/ice_ethtool.c | 40 +++++++++++++---
 drivers/net/ethernet/intel/ice/ice_lib.c     |  7 ++--
 drivers/net/ethernet/intel/ice/ice_lib.h     |  1 +
 net/ethtool/common.c                         |  3 +++
 4 files changed, 40 insertions(+), 11 deletions(-)

-- 
2.43.0
