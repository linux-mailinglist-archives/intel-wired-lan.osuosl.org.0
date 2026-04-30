Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aKDkCGRK82ngzAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2026 14:26:12 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 06CCC4A2BC9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2026 14:26:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0060484C7B;
	Thu, 30 Apr 2026 12:26:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8_rmztuasmn8; Thu, 30 Apr 2026 12:26:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7468084C6E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777551968;
	bh=HWL80eJag4ou2jmAGhfcXSaCfpY7Oq0RGwjJDU+Z6cM=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=S4SNu1Pi+UfKBV7KQ81fqtFjPt1LgzQcYSB7/Yge5vV4SsKJzoS8MmyLmKE7YUQc4
	 DTv1ZQChTHSnEEYS+EPvCr6ufYmc2YpW/U+rGmrB/qvISv8NAAWC77+eLsJm7+JqSS
	 M0QnGW8131D8jiRQOtqGqihxO2bpLieY9DDU2tAWNl8lc74SrGxUmH/owCpXlnpTuM
	 +PcbVFzODdtWI8DBvhmG37vk8Jz9h4ajJ94Cz4Osfod48EMiLue8v0kqwSWuKvP0YF
	 re73bDbL38Mqkx6faSLpzzo9wU7kfhkeT5+e+8O7QNeFrwn6qfKRMlRPwo/cfRuIGY
	 viAV2pffECovw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7468084C6E;
	Thu, 30 Apr 2026 12:26:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id ED81018F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 12:26:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DF7234245C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 12:26:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XiTFrqov63YD for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Apr 2026 12:26:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DAD50403D6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DAD50403D6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DAD50403D6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 12:26:05 +0000 (UTC)
X-CSE-ConnectionGUID: BMfUBgJvQRCkvxxL50tFhQ==
X-CSE-MsgGUID: 262j+rXjQZywLQPUJXhYdg==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="78689180"
X-IronPort-AV: E=Sophos;i="6.23,208,1770624000"; d="scan'208";a="78689180"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 05:26:05 -0700
X-CSE-ConnectionGUID: cSnv3J4PTpO/KHFmOGTMGw==
X-CSE-MsgGUID: duS/1KRASjuFWY8mlw9i9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,208,1770624000"; d="scan'208";a="233538420"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa006.jf.intel.com with ESMTP; 30 Apr 2026 05:26:04 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org
Date: Thu, 30 Apr 2026 14:25:57 +0200
Message-ID: <20260430122602.126722-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777551966; x=1809087966;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WoSZTJZgD5sk1nHAskzI2NqSbzu34TMeqUl/m7B6ltc=;
 b=kfkkdlyUvYZ9eDx0fsNirBFNL8VB7m+jBjE/9qvzuSO1rRId90zFwjm2
 oEAJNFbSpG3GxKRhL7sssK2KmB7QNRCc0OFtc2gc3QJ/v0iWEsTUjVUHJ
 6NSrgISbjqT23AN5+B7VXXVC5YJ7uxUWfxYFSFbBGjmOk0wiBSYT7whPF
 Y69+DLciCdyrzduPBNSzp1Nq3rEzsdCYYt9HVfY7Cxaj5tKYCQesbBk8I
 1NGV/1eZvF+3Vxz/m02Opp8ID8R6dms/to68GkPdtBFl3U6j7GXEk2GrG
 VqQHL4HZemESWEPwjAQR0WSSbVF3bTZWhPrbWkX5k2cb8cT7ZwCISr1K2
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kfkkdlyU
Subject: [Intel-wired-lan] [PATCH 0/5] ice: five small fixes and cleanups
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
X-Rspamd-Queue-Id: 06CCC4A2BC9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]

Three correctness fixes and two cleanups for the ice driver.

Patch 1 corrects a kernel-doc comment in ice_ptp_hw.h that described the
ETH56G MAC Rx offset field as unsigned when it is signed (trivial doc fix,
no functional change).

Patch 2 removes the PF_SB_REM_DEV_CTL sideband register write from
ice_ptp_init_phc_e82x().  PHY access is enabled by default on E82X and
the register write was a leftover from an earlier SWITCH_MODE workaround
that is no longer needed.

Patch 3 renames ICE_SMA2_UFL2_RX_DIS to ICE_SMA2_UFL2_RX_EN to match
the actual active-high hardware semantics and inverts the three use sites
in ice_dpll.c so that the logic remains correct.

Patch 4 replaces the static per-type frequency tables for CGU pins with a
single DPLL_PIN_FREQUENCY_RANGE(1, 25 MHz) entry.  The firmware defines
an any_freq capability for configurable CGU inputs, but the old tables
restricted users to 1 PPS or 10 MHz.  GNSS pins retain a 1 PPS-only
entry since they are physically constrained.

Patch 5 exports ice_dcb_need_recfg() and calls it in the four SW LLDP
netlink setters instead of memcmp() on a non-packed struct, which is
undefined behaviour due to uninitialised padding bytes.  The redundant
memcmp in ice_pf_dcb_cfg() is removed since callers now guard it.

Aleksandr Loktionov (2):
  ice: add correct handling of SMA/u.FL states
  ice: use element-by-element comparison for DCB config changes

Arkadiusz Kubalewski (1):
  ice: fix DPLL pin frequency range in CGU pin descriptors

Karol Kolacinski (2):
  ice: fix ETH56G Rx offset type description in kernel-doc comment
  ice: remove unnecessary PF_SB_REM_DEV_CTL write for E82X

 drivers/net/ethernet/intel/ice/ice_dcb_lib.c |  13 +-
 drivers/net/ethernet/intel/ice/ice_dcb_lib.h |   2 +
 drivers/net/ethernet/intel/ice/ice_dcb_nl.c  |  30 +++-
 drivers/net/ethernet/intel/ice/ice_dpll.c    |   6 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c  | 141 ++++++++++---------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h  |   8 +-
 6 files changed, 113 insertions(+), 87 deletions(-)

-- 
2.52.0

