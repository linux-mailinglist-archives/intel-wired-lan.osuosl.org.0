Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mAsiDZ1fxWlM9wQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Mar 2026 17:32:29 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B33323386D2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Mar 2026 17:32:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 060ED811FA;
	Thu, 26 Mar 2026 16:32:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7msvHV_MZ2rU; Thu, 26 Mar 2026 16:32:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0FDA38120E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774542742;
	bh=by5z3A0rPanwhNCA2ttCc8M6NhdqITe5QGfzKcZ38Sg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=yxMVHIcVkwsJe5bMqPoTgu9ZAO8ASd6ONa6bn02jeBOjsUbtIk4+l4ELlV0zOlpb3
	 Dak0Yon1vWHXQLLLEgL5ER4gg6ajJvCawkt+CUI32nxSEWhcrXVrcZmXV4zbXmu97K
	 mAZkqe4NvH4kGsyNcGQzQJQMzNsBwIrJIV6JRQx5oLNIlIbnrTS/WH90iqO5J6jd+4
	 qJUlv9L1h1NgsSabcF2tx72jFYHXo7qs7tA1Gchl9dxoBhHzmEcosoGTSMXy5TftPQ
	 agnC03QsDrMYxVL8Aavh5rmDbzIUmfDAqYfNKpL0d9BncYIN1IjRwHitw8prXPN1ai
	 onljOEb4cfQog==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0FDA38120E;
	Thu, 26 Mar 2026 16:32:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id AF7611D3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2026 16:32:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A094360853
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2026 16:32:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Jixt_pqeOxe9 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Mar 2026 16:32:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4D2986084C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4D2986084C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4D2986084C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2026 16:32:18 +0000 (UTC)
X-CSE-ConnectionGUID: wWGahFFRTW2ggWksyezXkQ==
X-CSE-MsgGUID: Afj6UhWzQvmnjxEcOUR+ZA==
X-IronPort-AV: E=McAfee;i="6800,10657,11741"; a="74636524"
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="74636524"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 09:32:17 -0700
X-CSE-ConnectionGUID: yWty21wOQLieRFpmZS22Eg==
X-CSE-MsgGUID: 2/jK9f1iQ2WB6beh716Fgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="225310843"
Received: from gklab-003-001.igk.intel.com ([10.91.173.48])
 by orviesa007.jf.intel.com with ESMTP; 26 Mar 2026 09:32:13 -0700
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: netdev@vger.kernel.org
Date: Thu, 26 Mar 2026 17:28:24 +0100
Message-Id: <20260326162832.3135857-1-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774542738; x=1806078738;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wwTIrqtwLgvHf+RVkDregSmCC7vSro8vZJLp94r7apQ=;
 b=FbGO5AFvyCEZiW9QkxXutjadamopzygC1RXRmbrm3iUTa/tQKNjSwcwx
 FVmlvY8gttZRJ6a7L8f53XmBiWlcdMNilG9FdzTRMTo7aF6mRX93Hv9Xu
 k6BNHgzlIjCMd0uG2StSyJcri+FxlWGTqsl9IrRm6EYyiHtRLxg5KJ2EL
 4hvSHxafI7XPTPJjjGeg65YFSI0lFpRGCM0GiCeeYDoaXgu+CJi7qKzHP
 GU7KfEQaW4KhUoiwnONfnw8mmXdh3hgoRNmgiZB5dhddfAijR9TJ0mktL
 0WHsZyT8v7kOlfokS0zsBIFbeWGYRkoNJDZuZ0ZkQqWOy97oRP5yIaPmL
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FbGO5AFv
Subject: [Intel-wired-lan] [PATCH v4 net-next 0/8] dpll/ice: Add TXC DPLL
 type and full TX reference clock control for E825
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
Cc: ivecera@redhat.com, vadim.fedorenko@linux.dev, kuba@kernel.org,
 jiri@resnulli.us, edumazet@google.com, przemyslaw.kitszel@intel.com,
 richardcochran@gmail.com, donald.hunter@gmail.com,
 linux-kernel@vger.kernel.org, arkadiusz.kubalewski@intel.com,
 andrew+netdev@lunn.ch, intel-wired-lan@lists.osuosl.org, horms@kernel.org,
 Prathosh.Satish@microchip.com, anthony.l.nguyen@intel.com, pabeni@redhat.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:kuba@kernel.org,m:jiri@resnulli.us,m:edumazet@google.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:Prathosh.Satish@microchip.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,kernel.org,resnulli.us,google.com,intel.com,gmail.com,vger.kernel.org,lunn.ch,lists.osuosl.org,microchip.com,davemloft.net];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: B33323386D2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

NOTE: This series is intentionally submitted on net-next (not
intel-wired-lan) as early feedback of DPLL subsystem changes is
welcomed. In the past possible approaches were discussed in [1].

This series extends the DPLL subsystem and the ICE driver to fully
support transmit‑clock (TXC) reference selection on Intel E825‑class
hardware. These devices expose a dedicated TX reference clock domain
separate from PPS and SyncE/EEC, and they allow switching between
multiple PHY‑sourced references (TXC0, EREF0, SyncE). Until now
the kernel lacked a DPLL type to represent TXC‑class devices, and
the ICE driver had no way to control or report the active TX reference.
The series introduces: 

Subsystem‑wide improvements:

- A new DPLL type (DPLL_TYPE_TXC) to represent devices that generate a TX
SERDES reference clock.
- Improvements to pin registration for fwnode‑identified pins.
- Addition of a notification source identifier (src_id) for more accurate
pin event routing in both netlink and internal notifiers.

Hardware/driver support:

- ZL3073x: allow control of the SyncE_Ref pin state.
- ICE/E825: full TXC DPLL instance with dedicated pins (EXT_EREF0 and
SyncE) and proper integration into the notifier/mux logic.
-A new CPI (Converged PHY Interface) subsystem implementing the low‑level
command protocol required by E825 PHY clocking control.
- Extension of the Restart AN AQ command with a TX reference clock
selector.
- Complete support for selecting, enabling, disabling, and tracking the
active TX reference clock for E825 devices, including peer‑PHY routing
and safe clean‑up of unused clock sources.

This enables proper userspace‑driven clock control via the DPLL API and
is a prerequisite for advanced SyncE deployments, link recovery modes, and
multi‑clock orchestration on E825 NICs.

Patch summary:

dpll: add new DPLL type for transmit clock (TXC) usage
Introduces DPLL_TYPE_TXC and publishes it through netlink.

dpll: allow registering FW‑identified pin with a different DPLL
Relax the (module, clock_id) matching rules when fwnode pins are
involved.

dpll: extend pin notifier and netlink events with notification source ID
Adds src_id to pin notification paths and updates all callers.

dpll: zl3073x: allow SyncE_Ref pin state change
Advertise hardware support for state toggling.

ice: add TX clock (TXC) DPLL interface for E825 devices
Introduces the ICE TXC DPLL, its pins, and relations to existing PHY
fwnode pins.

ice: implement CPI support for E825C
Adds the CPI command engine used for PHY‑side clock control.

ice: add Tx reference clock index handling to AN restart command
Wires the refclk field into the AQ Restart AN command.

ice: add TX reference clock (tx_clk) control for E825 devices
Implements full clock‑selection logic, state tracking, cleanup, and
DPLL pin ops integration.


Testing was performed on E825C hardware in multi‑port configurations,
verifying TXC pin exposure, SyncE/EREF0 switching via DPLL netlink, and
link recovery across all combinations.

[1] https://lore.kernel.org/netdev/20250905160333.715c34ac@kernel.org/

Changes in v4:
 - rebased
 - edited, shortened the commit message in 3/8 patch
 - moved ice_get_ctrl_pf to the header file (patch 8/8) and
   removed duplicated static definitions from ice_ptp and ice_txlck
   modules
 - add NULL/invalid pointer checker for returned pointer from
   ice_get_ctrl_pf (patch 8/8)
 - edited error message in case AN restart failure (patch 8/8)

Changes in v3:
- improved commit message (patch 1/8, AI review comment)
- improved deinitialization path in ice_dpll_deinit_txclk_pins to
  avoid potential NULL dereference. NULL checking moved to
  ice_dpll_unregister_pins (patch 5/8, found by AI review)
- removed redundant semicolon (patch 6/8)

Changes in v2:
- rebased
- added autogenerated DPLL files (patch 1/8)
- fixed checkpatch 'parenthesis alignment' warning (patch 2/8)
- fixed error path in ice_dpll_init_txclk_pins (AI warning, patch 5/8)
- fixed kdoc warnings (patch 6/8, patch 8/8)

Grzegorz Nitka (8):
  dpll: add new DPLL type for transmit clock (TXC) usage
  dpll: allow registering FW-identified pin with a different DPLL
  dpll: extend pin notifier and netlink events with notification source
    ID
  dpll: zl3073x: allow SyncE_Ref pin state change
  ice: add TX clock (TXC) DPLL interface for E825 devices
  ice: implement CPI support for E825C
  ice: add Tx reference clock index handling to AN restart command
  ice: add TX reference clock (tx_clk) control for E825 devices

 Documentation/netlink/specs/dpll.yaml         |   3 +
 drivers/dpll/dpll_core.c                      |  32 +-
 drivers/dpll/dpll_core.h                      |   2 +-
 drivers/dpll/dpll_netlink.c                   |  10 +-
 drivers/dpll/dpll_netlink.h                   |   4 +-
 drivers/dpll/dpll_nl.c                        |   2 +-
 drivers/dpll/zl3073x/prop.c                   |   9 +
 drivers/net/ethernet/intel/ice/Makefile       |   2 +-
 drivers/net/ethernet/intel/ice/ice.h          |  12 +
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   2 +
 drivers/net/ethernet/intel/ice/ice_common.c   |   5 +-
 drivers/net/ethernet/intel/ice/ice_common.h   |   2 +-
 drivers/net/ethernet/intel/ice/ice_cpi.c      | 347 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_cpi.h      |  69 ++++
 drivers/net/ethernet/intel/ice/ice_dpll.c     | 327 +++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_dpll.h     |   6 +
 drivers/net/ethernet/intel/ice/ice_lib.c      |   3 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c      |  27 +-
 drivers/net/ethernet/intel/ice/ice_ptp.h      |   7 +
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   |  37 ++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  34 ++
 drivers/net/ethernet/intel/ice/ice_sbq_cmd.h  |   5 +-
 drivers/net/ethernet/intel/ice/ice_txclk.c    | 256 +++++++++++++
 drivers/net/ethernet/intel/ice/ice_txclk.h    |  41 +++
 include/linux/dpll.h                          |   1 +
 include/uapi/linux/dpll.h                     |   2 +
 26 files changed, 1194 insertions(+), 53 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_cpi.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_cpi.h
 create mode 100644 drivers/net/ethernet/intel/ice/ice_txclk.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_txclk.h


base-commit: d1e59a46973719e458bec78d00dd767d7a7ba71f
-- 
2.39.3

