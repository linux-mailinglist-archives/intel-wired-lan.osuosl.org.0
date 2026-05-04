Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cFiYEj6s+Gn2xgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 04 May 2026 16:25:02 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E6D1F4BF52F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 04 May 2026 16:25:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 467D2819B8;
	Mon,  4 May 2026 14:24:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5bwCIXADjCYs; Mon,  4 May 2026 14:24:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B4CBE81A6D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777904698;
	bh=kX/yuDTyrNy6Q8McQvBtc5XfaDNdxAqktutasJnhuPA=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=tZdOcDHHrhI35JUtkMYt51NyyFkGAEVVVMsNRaO7vA97efY1SXkq62Gz2OZoGuor0
	 JsCcMOhiW0Wj+3AuPdgke/SGV8PfIL9FupjbCTKzn/JIsw7sBBm2vqj9F5EaP//MYl
	 3ft4faj99g6Y8TTRpmccf+AbEiTzo6rZgyBpllvLJXVDfVs5lKI6TDftNtZ4fGm6Gs
	 Sbin/0/ZuW7EXp8a2psor9/dM8BimQjk/MHWnudFD7HFTD84D21A3yqLUJbJCfVxnp
	 2kNvV9chTfv5vAOyo+nvNkeRn4KlP+BHjMTVcer9mAZB4pnW3sg4yByGKLIWNwQr41
	 NF4f2mgpOsdqg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B4CBE81A6D;
	Mon,  4 May 2026 14:24:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id ACF27204
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 14:24:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 929C661171
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 14:24:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GWvk2lu1WENB for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 May 2026 14:24:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8320C60EBD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8320C60EBD
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8320C60EBD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 14:24:54 +0000 (UTC)
X-CSE-ConnectionGUID: k3Ip9rciTGOOvBS/qN0n5g==
X-CSE-MsgGUID: MB2vvhkERGyrdb5jQHITqg==
X-IronPort-AV: E=McAfee;i="6800,10657,11776"; a="78691603"
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; d="scan'208";a="78691603"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 07:24:55 -0700
X-CSE-ConnectionGUID: oNwi77ReRvqctkNN1Sebzg==
X-CSE-MsgGUID: b0dDRgZsRYmfnpDjojkztQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; d="scan'208";a="230935394"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmviesa006.fm.intel.com with ESMTP; 04 May 2026 07:24:53 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org
Date: Mon,  4 May 2026 16:24:46 +0200
Message-ID: <20260504142451.4161845-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777904696; x=1809440696;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=u9QAqbxxkv4Jyk8sMgNMipr0e8IzMMKRqQwmVEF/39c=;
 b=YrR3C9nbn3Utnx5aF+p4MkuqJ66BM/6idbEmUQ4GlQFBrjV54qbkyhym
 CO3C1IU0JvMieZg77WwRZudrbKHBMcim7S+hoTdaUNl15eEeKwIbcsJ3g
 GAvYT3g1sqxgQaeybnvgZk4Z1kiYe4Z7VXBAiv+BYOK3nECiTU4xtapj+
 n2NvKuxzX2qV8H+9JpJilrJnkthMX7+QGl4imUx1jdhMUUy6dTKSTdbuO
 PFfj2816ZGIu/yYqhcN5SUL98nbaxgXTNZik5nvyy7bkOUthf4GCr0PZM
 dh7+qj0xUwZqdN4TCnNMkCCIE0ENVh582N1XJUeJ3zmK18aN+Vwmil0e2
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YrR3C9nb
Subject: [Intel-wired-lan] [PATCH iwl-next v2 0/5] ice: five small fixes and
 cleanups
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
X-Rspamd-Queue-Id: E6D1F4BF52F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
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
	NEURAL_HAM(-0.00)[-0.999];
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

v1 -> v2 updated mail subject with PATCH iwl-next


 drivers/net/ethernet/intel/ice/ice_dcb_lib.c |  13 +-
 drivers/net/ethernet/intel/ice/ice_dcb_lib.h |   2 +
 drivers/net/ethernet/intel/ice/ice_dcb_nl.c  |  30 +++-
 drivers/net/ethernet/intel/ice/ice_dpll.c    |   6 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c  | 141 ++++++++++---------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h  |   8 +-
 6 files changed, 113 insertions(+), 87 deletions(-)

-- 
2.52.0

