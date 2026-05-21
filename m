Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UGIjKpX/DmomEAYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 May 2026 14:50:29 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D5375A5222
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 May 2026 14:50:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C313F61768;
	Thu, 21 May 2026 12:50:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 52zT8OkazaPp; Thu, 21 May 2026 12:50:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D596D61762
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779367824;
	bh=RZYxFSeqQ2uWkEHekSAe83I1yvUKuWdVfRH6GbXUDiA=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=xvXS/JfXedAnU3JHuNy47gNgxygVpJTlWfUItoMf/mCDSgjnCTVBkZshqKD7y47GD
	 wA5CQW6B8PLKVWKmuFg2IXzWR88Wyg9dQP0cI6HyDIJ7JKfQ7RtKavWcnFD1CTPjXO
	 BNEolq3LB5bkLEnbQaBLIq7eMnoj9O1EwamDBOMtAAJH4V3RQwdx2iD3FsO7gIrSwR
	 90GGW1l3eT6VN8/jcH1tbYdOWF2aUfz4mfQNWTpBA2iLaoO36VzWTVSG8Av2fi7ydB
	 WPoFkGpTx5DHsLJAIkH12URIDAhAc5dUY4VaYDD7mbw61eO5chxzTNZ+gYyDUvMJmx
	 nUbMjhOTJtpkw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D596D61762;
	Thu, 21 May 2026 12:50:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 42E52282
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 May 2026 12:50:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 282FA41F2C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 May 2026 12:50:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OmJmbQ_pK_-R for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 May 2026 12:50:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2681041EDE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2681041EDE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2681041EDE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 May 2026 12:50:20 +0000 (UTC)
X-CSE-ConnectionGUID: JiIRaIm/R0uSbwxxmXDBXw==
X-CSE-MsgGUID: 43f+qJx4RWOp197K2U17sw==
X-IronPort-AV: E=McAfee;i="6800,10657,11792"; a="80013482"
X-IronPort-AV: E=Sophos;i="6.23,246,1770624000"; d="scan'208";a="80013482"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 05:50:20 -0700
X-CSE-ConnectionGUID: nwvutBB2SFuey6Wo/wMcEQ==
X-CSE-MsgGUID: 9q6wDjMLSwqWue1JRiil6g==
X-ExtLoop1: 1
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa003.fm.intel.com with ESMTP; 21 May 2026 05:50:18 -0700
Received: from gond.igk.intel.com (gond.igk.intel.com [10.123.220.52])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 0705328779;
 Thu, 21 May 2026 13:50:16 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, sandeep.penigalapati@intel.com, ananth.s@intel.com,
 alexander.duyck@gmail.com, Marcin Szycik <marcin.szycik@linux.intel.com>
Date: Thu, 21 May 2026 13:49:50 +0200
Message-ID: <20260521115000.4637-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779367822; x=1810903822;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lx1WvBKn0pMi/OHOQ28saLK4HRekU/jnGv6Qhpo1Trg=;
 b=B1+zfrFZ6MCMgzFm3gGIJIQVtKUxALUWCs5grIzYuZr3XCA90APtO/0p
 n4/N41AAQaJIm74umarGKVsYfy8FwmP3hvvpLp2fjagS0sWZJCAYSY1VT
 smQqSdSQ2YgGmhVnCuiPIZyjNRShAQn013GlM+JvQEEkz4vUS2UrOwkz6
 AI7c6ERw43rQxKRWvcCNI3ObWyj9L+47qJ67M+rwRInfKCWTDQKglVRT4
 GvA8FcxD7h6x2BoNd6FyjVaw/+LzXQx1GekuwvEPmk0UpyY+VkeEmuWDj
 OpoTL0gC7B1SFfPqdjEG0Rz2E3Io9cLhLaF+7HWEIJE7zRF4CUYPdTkpM
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=B1+zfrFZ
Subject: [Intel-wired-lan] [PATCH iwl-next v4 00/10] Add ACL support
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
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,intel.com,gmail.com,linux.intel.com];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,linux.intel.com:mid,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo];
	FROM_NEQ_ENVFROM(0.00)[marcin.szycik@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 7D5375A5222
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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

v4:
* Fix a bug where filters with different flow types would use the same
  profile, leading to strange behaviour. See patch 4 for details
* Clean up confusing code using struct ice_fd_hw_prof for ACL. This
  struct has many members that are not relevant to ACL. Also remove some
  code that dealt with those extra members (it was redundant). See
  patches 3, 4, 7, 8
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
 drivers/net/ethernet/intel/ice/ice_type.h     |   10 +
 drivers/net/ethernet/intel/ice/ice_acl.c      |  486 +++++++
 drivers/net/ethernet/intel/ice/ice_acl_ctrl.c | 1127 +++++++++++++++
 drivers/net/ethernet/intel/ice/ice_acl_main.c |  295 ++++
 drivers/net/ethernet/intel/ice/ice_arfs.c     |    8 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |    8 +-
 ...ce_ethtool_fdir.c => ice_ethtool_ntuple.c} |  678 ++++++---
 drivers/net/ethernet/intel/ice/ice_fdir.c     |   32 +-
 .../net/ethernet/intel/ice/ice_flex_pipe.c    |   11 +-
 drivers/net/ethernet/intel/ice/ice_flow.c     | 1234 ++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_lib.c      |   10 +-
 drivers/net/ethernet/intel/ice/ice_main.c     |   94 +-
 drivers/net/ethernet/intel/ice/virt/fdir.c    |   32 +-
 23 files changed, 4433 insertions(+), 254 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_acl.h
 create mode 100644 drivers/net/ethernet/intel/ice/ice_acl_main.h
 create mode 100644 drivers/net/ethernet/intel/ice/ice_acl.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_acl_ctrl.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_acl_main.c
 rename drivers/net/ethernet/intel/ice/{ice_ethtool_fdir.c => ice_ethtool_ntuple.c} (78%)

-- 
2.49.0

