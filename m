Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2aanKeZLRmohOAsAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Jul 2026 13:30:46 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BBAD36F6BA2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Jul 2026 13:30:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=61AXBrcB;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DDAE740798;
	Thu,  2 Jul 2026 11:30:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A3EAteRKO3PI; Thu,  2 Jul 2026 11:30:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E7CEA4072E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782991843;
	bh=jeJS2MKRrY4uEOU9rIxtV80vRlPz2RBs0ZRfWWAqL0o=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=61AXBrcBSrziWLIRdFuw1mTAyHChTe1u/5YiElNAS3gDJyqSocx+ArfMoQQM/6CHd
	 g39pT6F3hOiGXPiuCXRGvqKr9ANcEuxf8tzr4srPR5qBUsQyMN9vEzz08Vsg5+WqLq
	 70+xOZwFxcAGF6/9GyM92fCH0C66Td/Qi35RpEdQq8/OL7hC/z2uVxnb16iqdXf1sm
	 GzTMwVqW5R7EoftgZXqFxWxkCkbDsKT0qIWKRrZZQ+z2JnVTlefWiEvn1++zJhosj3
	 SJnq+9G0Ay8IrcyBPQifDzHSyxYK9uOe4PcfW9TcbrMrDnAxxpiKrByIn1psKorJFz
	 u0DI/hYOiTepA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E7CEA4072E;
	Thu,  2 Jul 2026 11:30:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id F3644127
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 11:30:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D924D82349
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 11:30:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PHrsYUgfNVQk for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jul 2026 11:30:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4A7D882376
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4A7D882376
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4A7D882376
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 11:30:38 +0000 (UTC)
X-CSE-ConnectionGUID: O/wuXEy2RMu0gEX+GaiY/A==
X-CSE-MsgGUID: alBlHPJ0R4e33rAUblDJyg==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="83611716"
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="83611716"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 04:30:38 -0700
X-CSE-ConnectionGUID: iZnM8CcuTqi/9jMIu8hz3Q==
X-CSE-MsgGUID: nza/4zQVTUeTkkkiOLPaKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="251788386"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa010.jf.intel.com with ESMTP; 02 Jul 2026 04:30:36 -0700
Received: from gond.igk.intel.com (gond.igk.intel.com [10.123.220.52])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 8E4BC284FF;
 Thu,  2 Jul 2026 12:30:34 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, sandeep.penigalapati@intel.com, ananth.s@intel.com,
 alexander.duyck@gmail.com, anthony.l.nguyen@intel.com,
 Marcin Szycik <marcin.szycik@linux.intel.com>
Date: Thu,  2 Jul 2026 12:29:54 +0200
Message-ID: <20260702103007.97020-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782991839; x=1814527839;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=cH7nlEfczE7YdcgGlWkHCxEkujAtZYJKnkz/SkefEw0=;
 b=Q90JTIkCmqI/tn4HYw2eVsNQqqgbeQDKzFxNRnXhLfHZ3LRAEtjoIiXT
 +SHLmlZyycdUBpV++K2V9TgFOOlNiDeOK2lLhUUrBMFO7OIeINdW1AUwq
 oa55tmPoUHtVAcBYEiElS9KKyHVpzp1lJQlGYCsfTEPMLmTTo308mNcq3
 zk9uPzZ8H+TEwNLM16hsX4RixXyv7jzCjf4tHtOhUSPoQVzboH0nnXnzf
 UFF9qJKwsefwfUa/QKfjVHPl5Ycyhi4lo6MdqvwCgZam8tiuvmQxhPP4b
 o3PJ52s0+tZCSSoU+abEp0+/vl4PxAox+/IQ4K9mebUipkY3J5k0QvNym
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Q90JTIkC
Subject: [Intel-wired-lan] [PATCH iwl-next v5 00/12] Add ACL support
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
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,intel.com,gmail.com,linux.intel.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[marcin.szycik@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BBAD36F6BA2

E8xx hardware provides a Ternary Classifier block for implementing
functions such as ACL (Access Control List). In this series it's simply
referred to as "ACL".

Implement ACL filtering. This expands support of network flow classification
rules for the ethtool ntuple command. ACL filtering allows for an ip or port
field's optional mask to be specified.

Example filters:
  ethtool -N eth0 flow-type tcp4 dst-port 8880 m 0x00ff action 10
  ethtool -N eth0 flow-type tcp4 src-ip 192.168.0.55 m 0.0.0.255 action -1

This is a resurrection of an old series from 2020 [1] with several
improvements, but the fundamental logic unchanged. v1 was almost pulled
in, but ultimately it was decided to drop it [2] because of unresolved
issues. One issue was too many defensive NULL checks. Second issue is
about inconsistency when using multiple input sets. Both are addressed
in this patchset.

More about the second issue:

From [3]:
>I would argue that you need to have some sort of logic that basically
>checks to see if you are going to hit the input set issue and falls
>back and applies the ACL rules. Otherwise you are significantly
>hampering the usefulness of this filter type. It doesn't make sense
>that dropping a field will cause a rule to fail to be added, but
>masking a single bit in some field will make it valid. It would make
>it a nightmare to use from the user point of view as the rules come
>across as arbitrary.

Flow Director (FD) has a hardware limitation where all filters for the same
packet type must use identical input sets. Previously, attempting to add the
second filter would fail.

Patch 12 adds automatic fallback to ACL block when FD cannot accommodate a
filter due to input set conflicts, which resolves this inconsistency.

v5 note:
I haven't addressed *every* issue reported by sashikos; the amount of
issues to analyze and potentially fix was frankly overwhelming: 35 from
left brain (netdev-ai), 31 from right brain (sashiko.dev), and these are
not simple typos, but issues that often require deep analysis, something
particularly tricky in a large, messy codebase that was originally not
authored by me. I focused on netdev-ai, since I believe this is the
"main" one (please correct me if I'm wrong), addressing highs and some
meds/lows. I skimmed through sashiko.dev, but it looked like a lot of
duplicates.
The code has already went through 2 rounds of sashiko. I've
significantly improved code quality (see changelog), likely beyond what
one could expect from such a large code addition before the introduction
of automated review. Before, this would've gotten very little attention
due to the amount of effort required to just read through it, let alone
understand it.
I'm sure both sashikos will have a new bag full of (potential) defects
waiting for me after submitting this version. We could iterate this
patchset till December until it's spotless, however I humbly suggest to
move on now, of course assuming no *human* review arrives and validation
is successful.

v5:
* Purely sashiko [5][6] issues fixing. See specific patches for details
* Add patches 2 and 10
* The biggest change is the addition of proper reset handling, which was
  apparently mostly missing in the original code - see patch 10
v4:
* Fix a bug where filters with different flow types would use the same
  profile, leading to strange behaviour. See patch 5 for details
* Clean up confusing code using struct ice_fd_hw_prof for ACL. This
  struct has many members that are not relevant to ACL. Also remove some
  code that dealt with those extra members (it was redundant). See
  patches 4, 5, 8, 9
* Resend for sashiko. v3 failed to be applied and therefore was not
  analyzed
v3:
* Various minor fixes, mostly reported by sashiko [4] - check individual
  changelogs. Not all comments were addressed (some were irrelevant)
v2:
* Rebase. Notable conflicts were the removal of ice_status and the addition of
  libie (which affected AdminQ communication)
* Reduce the number of defensive NULL checks
* Use = {} instead of memset for definitions
* Use kzalloc_obj() instead of plain kzalloc()
* Move from devm_ to plain allocation for objects that don't require it
* Move iterator declaration to loop start
* Move some defines out of structs
* Fix kdoc (except untouched ice_ethtool_fdir.c functions)
* Adjust style (err for return variable, spacing, rewrite some comments,
* commit messages)
* Remove overly verbose comments
* Add patches 6, 7, 11 and 12
* More changes listed in patches (if applicable)

[1] https://lore.kernel.org/intel-wired-lan/20200914153720.48498-1-anthony.l.nguyen@intel.com
[2] https://lore.kernel.org/netdev/7192efe4d27c93148b3205e65f37203c89170316.camel@intel.com/#t
[3] https://lore.kernel.org/netdev/CAKgT0Ucxd5-gvEwWAdbL04ER2o++RX_oekUV3E0rYquEgFKj1w@mail.gmail.com
[4] https://sashiko.dev/#/patchset/20260409120003.2719-1-marcin.szycik%40linux.intel.com
[5] https://netdev-ai.bots.linux.dev/sashiko/#/patchset/20260603220828.829969-1-anthony.l.nguyen%40intel.com
[6] https://sashiko.dev/#/patchset/20260603220828.829969-4-anthony.l.nguyen@intel.com

Lukasz Czapnik (1):
  ice: use ACL for ntuple rules that conflict with FDir

Marcin Szycik (5):
  ice: remove unused ICE_FD_FLUSH_REQ from PF state
  Revert "ice: remove unused ice_flow_entry fields"
  ice: use plain alloc/dealloc for ice_ntuple_fltr
  ice: add ACL reset recovery and NTUPLE feature toggle
  ice: re-introduce ice_dealloc_flow_entry() helper

Real Valiquette (5):
  ice: initialize ACL table
  ice: initialize ACL scenario
  ice: create flow profile
  ice: create ACL entry
  ice: program ACL entry

Tony Nguyen (1):
  ice: rename shared Flow Director functions and structs

 drivers/net/ethernet/intel/ice/Makefile       |    5 +-
 drivers/net/ethernet/intel/ice/ice.h          |   27 +-
 drivers/net/ethernet/intel/ice/ice_acl.h      |  177 +++
 drivers/net/ethernet/intel/ice/ice_acl_main.h |   10 +
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  393 ++++-
 drivers/net/ethernet/intel/ice/ice_arfs.h     |    2 +-
 drivers/net/ethernet/intel/ice/ice_fdir.h     |   16 +-
 .../net/ethernet/intel/ice/ice_flex_pipe.h    |    2 +
 drivers/net/ethernet/intel/ice/ice_flow.h     |   39 +-
 .../net/ethernet/intel/ice/ice_lan_tx_rx.h    |    3 +
 drivers/net/ethernet/intel/ice/ice_type.h     |   14 +-
 drivers/net/ethernet/intel/ice/ice_acl.c      |  486 +++++++
 drivers/net/ethernet/intel/ice/ice_acl_ctrl.c | 1140 +++++++++++++++
 drivers/net/ethernet/intel/ice/ice_acl_main.c |  377 +++++
 drivers/net/ethernet/intel/ice/ice_arfs.c     |    8 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |   13 +-
 ...ce_ethtool_fdir.c => ice_ethtool_ntuple.c} |  817 ++++++++---
 drivers/net/ethernet/intel/ice/ice_fdir.c     |   38 +-
 .../net/ethernet/intel/ice/ice_flex_pipe.c    |   11 +-
 drivers/net/ethernet/intel/ice/ice_flow.c     | 1267 ++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_lib.c      |   10 +-
 drivers/net/ethernet/intel/ice/ice_main.c     |  162 ++-
 drivers/net/ethernet/intel/ice/virt/fdir.c    |   32 +-
 23 files changed, 4769 insertions(+), 280 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_acl.h
 create mode 100644 drivers/net/ethernet/intel/ice/ice_acl_main.h
 create mode 100644 drivers/net/ethernet/intel/ice/ice_acl.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_acl_ctrl.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_acl_main.c
 rename drivers/net/ethernet/intel/ice/{ice_ethtool_fdir.c => ice_ethtool_ntuple.c} (74%)

-- 
2.49.0

