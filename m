Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sBB9CGJm8GnKSwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 09:48:50 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C2547F39B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 09:48:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4875D4112A;
	Tue, 28 Apr 2026 07:48:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7BXrv8tEmk3r; Tue, 28 Apr 2026 07:48:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8F5DE41121
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777362525;
	bh=72kvUDy67XvkuOCjTdd6EaMNEGi97jXi33FAtt2eb9o=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=SZGbPj3mSIlsGuVPOcc9sCplaW5bkf9Tt9mx2sJvQyAcxKT+/zb3FhFyy4sZBSrQh
	 KG7zYP3baSSuKNSWZxs1Lo2kGooV21soAZSmhmwUE1KlbU36DxZ656jgZw6Im06Uyj
	 /qtmtoz4MFIxXBb60Ppus8HZu5OQnpVwk2AhcHP0zcWsqqHnYbyXFDBuE+xxtYnZH9
	 p3mUnCuQkgaHllBA5qsBVRnIMguDLLqRLPRGA8KkrVlQm+KLYYjUADSZYZ4S614vAC
	 RnTItSMoEQkyqzBS/Vv4ND3BcqGtbjCl5lztsvjtHofALTlDV8SWoBSdxyQMdOUS4V
	 WKFPzF1PUAXNQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8F5DE41121;
	Tue, 28 Apr 2026 07:48:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 890E5231
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 07:48:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6F14683595
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 07:48:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uH3cvvdZ_lTQ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Apr 2026 07:48:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4C31181DF6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4C31181DF6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4C31181DF6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 07:48:42 +0000 (UTC)
X-CSE-ConnectionGUID: o4T6po1jT1eqRfLqYvEj6g==
X-CSE-MsgGUID: WGJCjy5URF25aBW4mn7k/w==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="82114974"
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="82114974"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 00:48:41 -0700
X-CSE-ConnectionGUID: 6zDqpDuoQdS5dOu/lJqulA==
X-CSE-MsgGUID: 81SKb8KxQ/S+MTVdb8qPmQ==
X-ExtLoop1: 1
Received: from os-delivery.igk.intel.com ([10.102.21.165])
 by fmviesa003.fm.intel.com with ESMTP; 28 Apr 2026 00:48:37 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, jramaseu@redhat.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, aleksandr.loktionov@intel.com,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Date: Tue, 28 Apr 2026 09:06:45 +0200
Message-ID: <20260428070647.777141-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777362522; x=1808898522;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1J1mF9VLA4ad+WVCKHtPLi8k9wXENH/phrj6cZ2eDTM=;
 b=Cvq62SrIWnlYY39cdJyaNEVpNBj7wLq6QnjDENCNkcpjgK4hjJzPKHiC
 PPx9gBG83we9Py2dDyAyCT9S1zz+SXbFkn+naWuxcsHco7/vdXaVVHsDt
 RI2SdHERh5w1RBOqrcpIpcRlj92Vgpp/9NiAClBw0aupTruMbuBScQL+m
 YtWZ3nN1p2P9FgWd+oRb9cVa7s7MjMaebndGHyWfe8NwNpU5FvxXlqDyl
 3AX8wzgOuv6rwFD5lP0yiNmrssK2xp2hwwLrIIrFZRQVtyCXR10xRJZht
 64W2aB5drJOPYNVtjwImArVsUsTMSS0wCKsTd20oN29tZ8JHhq8bo4apb
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Cvq62SrI
Subject: [Intel-wired-lan] [PATCH iwl-net v1 0/2] Rework ice Tx checksum
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
X-Rspamd-Queue-Id: 81C2547F39B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[michal.swiatkowski@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]

Hi,

Jakub find the problem with how ice handles Tx checksum offload [1].

The issue is that IP_CSUM/IPV6_CSUM should support only basic packet
types. Kernel assumes that if there are extensions headers and there is
no HW_CSUM software fallback should be applied. Here is a patch that
introduced that [2].

However, software fallback can't be applied when TSO offload happens.
That is the situation that this patchset is fixing.

When TSO is enabled and IP_CSUM/IPV6_CSUM is on, kernel is assuming
hardware will be able to calculate the checksum, but later on the
extension headers are checked and if there is no HW_CSUM the
skb_bad_offload() is called.

Following the documentation ice driver is capable of HW_CSUM support, so
switch from IP_CSUM/IPV6_CSUM to HW_CSUM. Other Intel drivers (even
previous like i40e, ixgbe) also supports HW_CSUM.

The HW_CSUM was used to indicate that GCS (Intel name for checksumming
offload using additional descriptor) is support, which is variation of
HW_CSUM. Even without GCS th HW_CSUM is supported. First patch is
switching to use custom Tx ring flags to allow HW_CSUM usage.

[1] https://lore.kernel.org/netdev/20260310150557.1138437-1-jramaseu@redhat.com/
[2] https://lore.kernel.org/all/5fbeecfc311ea182aa1d1c771725ab8b4cac515e.1729778144.git.benoit.monin@gmx.fr/

Michal Swiatkowski (2):
  ice: always do GCS if hardware supports it
  ice: use NETIF_F_HW_CSUM instead of IP/IPV6

 drivers/net/ethernet/intel/ice/ice_lib.c  |  4 ++++
 drivers/net/ethernet/intel/ice/ice_main.c | 21 +--------------------
 drivers/net/ethernet/intel/ice/ice_txrx.c |  2 +-
 drivers/net/ethernet/intel/ice/ice_txrx.h |  1 +
 4 files changed, 7 insertions(+), 21 deletions(-)

-- 
2.49.0

