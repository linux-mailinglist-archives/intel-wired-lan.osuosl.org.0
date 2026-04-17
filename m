Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +4y8OW7T4Wl+ygAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Apr 2026 08:30:06 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AC644176AC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Apr 2026 08:30:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4744980782;
	Fri, 17 Apr 2026 06:30:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dLV411wSYAEU; Fri, 17 Apr 2026 06:30:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C3434807D7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776407400;
	bh=TlLBjY2hg80Ss4CWXn20m4uRRUNt8uS/Ke9cE8+CUs4=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Dw1aHP6s61veAZ6Bo+k3qJaM8pV55+nbtueiLA/wlaubW9canWCAn/7uTWQmL/Lc7
	 cI5kYVOnfvFDRGtLPmNG14KjHicjIimU3ZtGkyZCrvTFdSLainHJ8DlymkLwrP9AMK
	 rEbKCSzVsmteEqb/M9VsDRExtxxpeNKH3xmOLWEt/2VSuEOKf3/K681T+emakoaTU2
	 HkVs3SitlmJscegSwF+W1yJywFVYyMQXZAOiqCzEqUZM+f7iIqBaIXIrrlyraxhUp/
	 AeR7HlSS45hh+9V+Z6fopXaFLW3J56/yJVOEqXPoTMFqGee6wzQxBsqm9YAIGfw4M8
	 FZ7BpyLYvvcfA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C3434807D7;
	Fri, 17 Apr 2026 06:30:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 22F32259
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2026 06:29:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1476F4054A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2026 06:29:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jJZAmAaAausC for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Apr 2026 06:29:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4504C40544
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4504C40544
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4504C40544
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2026 06:29:57 +0000 (UTC)
X-CSE-ConnectionGUID: mflB9XZ6QYi8MGOk5pC/Qw==
X-CSE-MsgGUID: Sbqrc5PFTcWs7MioKaXjjQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11761"; a="94987398"
X-IronPort-AV: E=Sophos;i="6.23,183,1770624000"; d="scan'208";a="94987398"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 23:29:57 -0700
X-CSE-ConnectionGUID: KwjDxTPLQpy+2db6yA0fNQ==
X-CSE-MsgGUID: zLZawi1ISGWnVsMte7Gf/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,183,1770624000"; d="scan'208";a="235329560"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa004.jf.intel.com with ESMTP; 16 Apr 2026 23:29:56 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org
Date: Fri, 17 Apr 2026 08:29:50 +0200
Message-ID: <20260417062954.1241900-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776407398; x=1807943398;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DzYVyl+UxGxHQKTpFAwP3BM3hQD64CpjO5PiAUi02gA=;
 b=H/5HcH/j3cUaXMZNJW3VMDCdi26Se8V/Z7uNufiGpyVdY9WCOK/D5S1m
 jSDp+jYdMhLcZrdHBAfH7pUqlpXNMIqXommoLeubV/LjCXfT3WREfo7TC
 gjd7wQbvyvs7PHGwcdZTm+O9iJnODY+wtrBj35X1NZ0905G9PnUPsdhH5
 2kFMErEbn4Ih08bvxlooQaezuu7D8oXLkmXX+qwRV/Jj/dq5CoxPklFo5
 dzEt6YK6Q8jGwUNkXAne3PPSwAZydyAJFwwAxgCpSI/pP4EevIpdAOprM
 Dk8FFwgaOpridH99rgl5HO1fU04ognIHorj9+HIToyS59JIDq7o0iYL8J
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=H/5HcH/j
Subject: [Intel-wired-lan] [PATCH iwl-net 0/4] ice: fixes for pause
 reporting, autoneg, RDMA and EIPE
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
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim]
X-Rspamd-Queue-Id: 9AC644176AC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is v2 of the ice fixes patchset for iwl-net.

v2 changes:
 - Dropped patch "ice: fix 'adjust' timer programming for E830 devices"
   as it has already been applied to the iwl-net tree.

This series fixes four issues in the Intel ice driver:

- Asymmetric Pause capability was missing from the ethtool-reported
  supported link modes, causing ethtool to always show Pause as
  unsupported even when the hardware supports asymmetric flow control.

- Autoneg disable was only attempted when AN had already completed,
  ignoring the case where the link partner does not advertise AN ability
  at all (AN37).  Both conditions should allow the user to disable
  autoneg.

- RDMA was incorrectly disabled on E830 devices with 4 or more ports
  because the generic port-limited-capabilities path capped maxtc=4 and
  then cleared the RDMA capability bit.  E830 does not have that
  limitation and must be skipped.

- On E830, Ethernet Inline IPsec Engine (EIPE) decryption errors trigger
  a checksum-error path that returned early without reporting the error
  to the OS.  The packet must be forwarded to the stack with the
  checksum error flag set so the OS can handle it correctly.

Jan Glaza (1):
  ice: report EIPE checksum errors to the OS on E830

Konrad Knitter (1):
  ice: fix autoneg disable when link partner doesn't support AN

Lukasz Czapnik (1):
  ice: support RDMA on 4+-port E830 devices

Tomasz Lichwala (1):
  ice: fix asymmetric pause negotiation reporting in ethtool

 drivers/net/ethernet/intel/ice/ice_common.c   |  2 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.c  | 30 ++++++++++++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c |  2 ++
 3 files changed, 31 insertions(+), 3 deletions(-)

-- 
2.52.0

