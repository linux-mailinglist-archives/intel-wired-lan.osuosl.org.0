Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mG2bBKviAWq1lwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 16:07:39 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id ED32A50FB31
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 16:07:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5F307810F0;
	Mon, 11 May 2026 14:07:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pcPsyPPuTI3p; Mon, 11 May 2026 14:07:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6ECB6810BE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778508454;
	bh=PWIEX8v7diOonxdISn2ewtoJNC9Zd2c9cqzaBSlCU/4=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=eWm1NTeuRjgqFkgg2vB2dtHuN4CFryzwXnO13ZqAMYoDLka1C+sUnzYUT9UGe3RQk
	 gKtnET0ui2bogH93WsuYQUKFt3hV2C8lsG6nQI/Ilg6KPkPUjeVq9SIoiQwEbcQwE9
	 l+x7pzn+EvUF4vmijHkuJJsW21Itm945tVbQ7kdY1xSVCSIDCugKsGbBqb2VD63PRW
	 PtLYcSwpDcwrK0B4pzZLUFtEwg03WKpo+Rty/QPKxc1Qu2TUX3gvak6LhTn81Ifgmt
	 fSp0gLyw2ql4dWud8v7a0jYZGacA9Asx4fG6WurWrsYkZZ9sB4mheKtUlNZjZpivPB
	 rHTiJKsJfxO8w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6ECB6810BE;
	Mon, 11 May 2026 14:07:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 210AF173
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 14:07:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 124DC40376
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 14:07:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CPS1sOdbc6SL for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 May 2026 14:07:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E21B740338
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E21B740338
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E21B740338
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 14:07:31 +0000 (UTC)
X-CSE-ConnectionGUID: KA9C5tK4QqCkfchd9g/gRQ==
X-CSE-MsgGUID: 9M+0ijkHRGeUjkMGrA22tw==
X-IronPort-AV: E=McAfee;i="6800,10657,11783"; a="90771753"
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="90771753"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 07:07:31 -0700
X-CSE-ConnectionGUID: iNhMYFJYSASjKTqdridUoA==
X-CSE-MsgGUID: ulJuyrc1R86R1fI2JnhHXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="267820289"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa002.jf.intel.com with ESMTP; 11 May 2026 07:07:29 -0700
Received: from gond.igk.intel.com (gond.igk.intel.com [10.123.220.52])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 617EB2FC4A;
 Mon, 11 May 2026 15:07:28 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, sandeep.penigalapati@intel.com, ananth.s@intel.com,
 alexander.duyck@gmail.com, Marcin Szycik <marcin.szycik@linux.intel.com>
Date: Mon, 11 May 2026 15:06:59 +0200
Message-ID: <20260511130710.38801-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778508452; x=1810044452;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Db/oBTpZ6iiUd+ZhRm7W0Xyps5oD0x3YXFFm6UzEu/I=;
 b=H+CHzD7fyU74x+BJ7sRN2MqMXntMxCGGpLWZPCs02DhnWqjrrW/hRpXm
 aM5SFnBkRb9vXT8jsxaehyLDu6ErTaYKqcEUDffXNfCqdXw795Sj3qWWf
 Kv7GeWj/pDzT5l7zHhoDNwYEaHUjjBnCeqAGoQUSd+cwzLJQSe3g14ser
 9RivXsRzxR/eHJb8m3KywzVJd1ltgYPZ8AI3yaAKShrf8yC0wd+LwCNGW
 GPW1gd9p1VBX/wbZrwSGhh+iv+sSAKKReN0X3o1T5QdPF9QSktaA2Sbnj
 fWWq9A9G+PBr2O7eCuX50GRGKMY6Z6WFoJ9MavWoeXG5vSvwdQjA6Vhhb
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=H+CHzD7f
Subject: [Intel-wired-lan] [PATCH iwl-next v3 00/10] Add ACL support
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
X-Rspamd-Queue-Id: ED32A50FB31
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCPT_COUNT_FIVE(0.00)[6];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,linux.intel.com:mid,osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[marcin.szycik@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,intel.com,gmail.com,linux.intel.com];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-0.997];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: no action

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

Patch 10 adds automatic fallback to ACL block when FD cannot accommodate a
filter due to input set conflicts, which resolves this inconsistency.

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
* Add patches 5, 6, 9 and 10
* More changes listed in patches (if applicable)

[1] https://lore.kernel.org/intel-wired-lan/20200914153720.48498-1-anthony.l.nguyen@intel.com
[2] https://lore.kernel.org/netdev/7192efe4d27c93148b3205e65f37203c89170316.camel@intel.com/#t
[3] https://lore.kernel.org/netdev/CAKgT0Ucxd5-gvEwWAdbL04ER2o++RX_oekUV3E0rYquEgFKj1w@mail.gmail.com
[4] https://sashiko.dev/#/patchset/20260409120003.2719-1-marcin.szycik%40linux.intel.com

Lukasz Czapnik (1):
  ice: use ACL for ntuple rules that conflict with FDir

Marcin Szycik (3):
  Revert "ice: remove unused ice_flow_entry fields"
  ice: use plain alloc/dealloc for ice_ntuple_fltr
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
 drivers/net/ethernet/intel/ice/ice.h          |   21 +-
 drivers/net/ethernet/intel/ice/ice_acl.h      |  170 +++
 drivers/net/ethernet/intel/ice/ice_acl_main.h |    9 +
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  393 +++++-
 drivers/net/ethernet/intel/ice/ice_arfs.h     |    2 +-
 drivers/net/ethernet/intel/ice/ice_fdir.h     |   18 +-
 .../net/ethernet/intel/ice/ice_flex_pipe.h    |    2 +
 drivers/net/ethernet/intel/ice/ice_flow.h     |   39 +-
 .../net/ethernet/intel/ice/ice_lan_tx_rx.h    |    3 +
 drivers/net/ethernet/intel/ice/ice_type.h     |    5 +
 drivers/net/ethernet/intel/ice/ice_acl.c      |  486 +++++++
 drivers/net/ethernet/intel/ice/ice_acl_ctrl.c | 1127 +++++++++++++++
 drivers/net/ethernet/intel/ice/ice_acl_main.c |  311 +++++
 drivers/net/ethernet/intel/ice/ice_arfs.c     |    8 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |    8 +-
 ...ce_ethtool_fdir.c => ice_ethtool_ntuple.c} |  654 ++++++---
 drivers/net/ethernet/intel/ice/ice_fdir.c     |   32 +-
 .../net/ethernet/intel/ice/ice_flex_pipe.c    |   11 +-
 drivers/net/ethernet/intel/ice/ice_flow.c     | 1234 ++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_lib.c      |   10 +-
 drivers/net/ethernet/intel/ice/ice_main.c     |   94 +-
 drivers/net/ethernet/intel/ice/virt/fdir.c    |   32 +-
 23 files changed, 4420 insertions(+), 254 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_acl.h
 create mode 100644 drivers/net/ethernet/intel/ice/ice_acl_main.h
 create mode 100644 drivers/net/ethernet/intel/ice/ice_acl.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_acl_ctrl.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_acl_main.c
 rename drivers/net/ethernet/intel/ice/{ice_ethtool_fdir.c => ice_ethtool_ntuple.c} (78%)

-- 
2.49.0

