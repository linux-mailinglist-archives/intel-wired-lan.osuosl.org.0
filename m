Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cFgPFM4omGlqBwMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Feb 2026 10:26:38 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 93CDA166328
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Feb 2026 10:26:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 33C7183DD0;
	Fri, 20 Feb 2026 09:26:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dO7fwtPzKz98; Fri, 20 Feb 2026 09:26:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ADDD583E34
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771579595;
	bh=37T5iZ1jh+7EHPJ60hl9uNUtygjyPXshG4j+pkNr+2M=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=izIyna3NzUjLlgkuNUhlTKXqqAmfMN68mhIMOKc7VnC6JwcwBmXxkqYpj/3DwYlGD
	 teQC0ebeSjvh/8zRm0dy41cCSxWK8chs0AEVu6rIal23PZMk+61UHKSCIm9wR8NXHa
	 UkmPxelxHQTZtAS3yM6QjEwLjfiJgY+nklJp1lcgEhiqn25joO5bRzhumZjWHz790w
	 MOLf99wgxtTIasy42zf/uVT4z1WWB+0rWhIRRNE1hpLVrmnVTDXFIPt76CZA92px0t
	 ioYpuy0L2OABRwubZCFYNwLdlLo9yukIVi3bTNU6P8dFrE5CiHDCQmkKPlSuRvfHKs
	 5tm90S6CjkYdw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id ADDD583E34;
	Fri, 20 Feb 2026 09:26:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1D3C71CE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Feb 2026 09:26:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0E777406E9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Feb 2026 09:26:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ku9cOOasNZ4J for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Feb 2026 09:26:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 204F6405CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 204F6405CE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 204F6405CE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Feb 2026 09:26:32 +0000 (UTC)
X-CSE-ConnectionGUID: zylttqkbRRqCyRZFJ2JLfA==
X-CSE-MsgGUID: fjlm44t7QMOBdwjZTfuA7g==
X-IronPort-AV: E=McAfee;i="6800,10657,11706"; a="72373465"
X-IronPort-AV: E=Sophos;i="6.21,301,1763452800"; d="scan'208";a="72373465"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2026 01:26:32 -0800
X-CSE-ConnectionGUID: F9BhZlYTQQOZit3tH1R8qw==
X-CSE-MsgGUID: ciKCG1nkSKGnR5j7B4vNqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,301,1763452800"; d="scan'208";a="214030004"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa010.jf.intel.com with ESMTP; 20 Feb 2026 01:26:32 -0800
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, aleksandr.loktionov@intel.com
Date: Fri, 20 Feb 2026 10:26:28 +0100
Message-ID: <20260220092630.720082-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771579593; x=1803115593;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lyp5Xhf9Uz/O9UFSOZCogRvPaliG7+luXfZB0IaqxBM=;
 b=UkffDY3wk+ab6LhELTL3tWKK3/tvuNR0KBrV4ft/sS6SIS44AvQbByvd
 tXsjRyU5mZ6NwBDt/qRyxuDqFTo3H9dBKH/THXWq6LrbVsSiN5oo+knf0
 O/X0fxiMuyC8Ww+K0/tVDftBFS76R+1ORF0R0Yr8fjLjNHEamQPdqwUdb
 vM4mHRCZbkmKQsCj1E5Cw5Vukij14mhyuYqkGgejAKnYXrw9Zg+j8w2a9
 RYL2rYcZ4HN9QbHLd4Km0svvi7w8kzP72xUC9XCwDDKUJFVehPHNadbwG
 zi3Htwoop+SEb3uwtVPekzzaQ/z4u10avOk07AeAc6AgSMnwfi6DpZitq
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UkffDY3w
Subject: [Intel-wired-lan] [PATCH iwl-next v3 0/2] ice: implement symmetric
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCPT_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.988];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,osuosl.org:dkim,intel.com:mid];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 93CDA166328
X-Rspamd-Action: no action

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

 drivers/net/ethernet/intel/ice/ice_ethtool.c | 48 +++++++++++++---
 drivers/net/ethernet/intel/ice/ice_lib.c     |  7 ++-
 drivers/net/ethernet/intel/ice/ice_lib.h     |  1 +
 net/ethtool/common.c                         |  3 +
 4 files changed, 47 insertions(+), 12 deletions(-)

-- 
2.43.0
