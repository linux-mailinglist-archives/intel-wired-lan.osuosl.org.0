Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WAkmDztuB2rY2gIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 May 2026 21:04:27 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D2AA8556910
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 May 2026 21:04:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1C7218459F;
	Fri, 15 May 2026 19:04:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i1Q8VjrJWWgx; Fri, 15 May 2026 19:04:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7B7DE845C3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778871863;
	bh=ZUIRlMyE7Ei3MPxgfq398tqiU2yDe2lKWhr16d32EH8=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=VpNfB+QPiVmIh/h9OnxIgwmWpTw4rTf3lC5TCXk1/JQtfcAaC4BCvSOeyq4VMKSHJ
	 NVfn6AmvUnZKM/aeROMsoPUy87uasrboE51iNX67+IQ+zk+PPzVMHJ2d7G1vmAG+sI
	 UoK82jyVfSoKw9PIkLn3Afk0mnkG4TSDLsrK7n2dYHA7eADnD6ad3VJGa+4Vbm9kQT
	 SPRPlMSpzHqIZ7AcXFPogR0RalPc7GtFiF1oc8ARj2b5Uqg06qItUDMfw+Nq64650c
	 CKXeju2dVEU2B53hB6UHs5jxlADQsgXgOxQOkYNjZZFnxvqHytOS27gbQzboGSgFbl
	 GHHbaWukkAMtQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7B7DE845C3;
	Fri, 15 May 2026 19:04:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id CBFDF282
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2026 19:04:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BA0F840FD6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2026 19:04:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RaWFSK0oQH8E for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 May 2026 19:04:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9E02240FB9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9E02240FB9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9E02240FB9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2026 19:04:19 +0000 (UTC)
X-CSE-ConnectionGUID: GBw62bDAQHWmp1M0PU3bjg==
X-CSE-MsgGUID: ETISjrAgSz2y7GImD/dqEQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11787"; a="79725695"
X-IronPort-AV: E=Sophos;i="6.23,236,1770624000"; d="scan'208";a="79725695"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2026 12:04:19 -0700
X-CSE-ConnectionGUID: oXDAhsc2QdiyuCfl5fL8Vg==
X-CSE-MsgGUID: kHBkbUshStS3S5OjmrBe2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,236,1770624000"; d="scan'208";a="238895618"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa009.jf.intel.com with ESMTP; 15 May 2026 12:04:18 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org
Date: Fri, 15 May 2026 21:04:13 +0200
Message-ID: <20260515090000.5112345-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778871861; x=1810407861;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Ent00k7exvK8hToZmNFZmmOeIHqZFUsATQ6w071IpCY=;
 b=mz1aXraAHsH75q1LCCdad0gnYcxbAJ4zH8Eg5MBbGJ1ZKYlQQRKl25fS
 hKpXX6WhoA5zosZYMLQi3oOa17oFQs8g4l80Qyag6RgDt3MSrr+u17Uy6
 uR5V2/dSFT0SuazxovEiAGOldq3z77dHWls1u3X8vF/sHrOEKpV4wD1S8
 b8Q9PY0K4Qg/ewOor4zpiUc+NaP5VrFrJ2/ApeJxA/IxfU1wP9WonT4SI
 gFmUURAZmGuFQYTnE6LsEc4uMWlvEvZtoBseqNiKl9HyW1TTNwX+Afc3K
 MqUlSOoiYs4wFqADDTrrI7zpaIYt/MApAr4EB3PkcW5oUCD2WlzUoGdUl
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mz1aXraA
Subject: [Intel-wired-lan] [PATCH iwl-net v5 0/4] ixgbe: four bug fixes
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
X-Rspamd-Queue-Id: D2AA8556910
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.29 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

Four fixes for the ixgbe driver, covering a SWFW semaphore timeout
miscalculation, a false-success return in the cls_u32 nexthdr path,
an adaptive-ITR u8 overflow, and wrong bit positions in the UP-to-TC
register normalisation.

Patch 1 fixes a timeout too short for X550 family FW update operations,
which caused spurious EBUSY failures during module-update and SR-dump
commands.

Patches 2-4 fix correctness bugs with user-visible effects: a cls_u32
nexthdr offload path that silently dropped filter-install errors, an
adaptive-ITR path that corrupted the mode flag via u8 truncation, and
a UP-to-TC validation loop that cleared only UP1 regardless of which
user priority was out of bounds.

Patch 3 reworks the ITR write-back to keep the mode flag
(IXGBE_ITR_ADAPTIVE_LATENCY, bit 7) and the usec delay in separate
operands until the final store, and clamps the delay to
[IXGBE_ITR_ADAPTIVE_MIN_USECS, IXGBE_ITR_ADAPTIVE_MAX_USECS] via
clamp_val().

Patch 4 corrects the Fixes: tag to 8b1c0b24d9af ("ixgbe: configure
minimal packet buffers to support TC") per Simon Horman.

Changes in v5:
 - DROPPED "ixgbe: call ixgbe_setup_fc() before fc_enable() after NVM
   update" (was 2/5 in v4).
   ixgbe_setup_fc_e610() is documented as an init-time-only operation.
   Calling it unconditionally from ixgbe_watchdog_update_link() on
   every link-up event causes it to issue an ACI set_phy_cfg command
   with IXGBE_ACI_PHY_ENA_AUTO_LINK_UPDT on E610 (Linkville) devices.
   That flag instructs the firmware to re-initialise the PHY, which
   immediately drops the link; the resulting link-up triggers another
   watchdog call, which issues another set_phy_cfg, creating a rapid
   reset loop during early init.  The E610 firmware's fault-detection
   logic sets IXGBE_GL_MNG_FWSM_RECOVERY_M in response, causing all
   E610 ports to report "Firmware recovery mode detected. Limiting
   functionality." and enumerate no network interfaces.
   A correct fix must gate the setup_fc() call on an actual NVM-update
   event rather than on every link-up; that rework will be sent as a
   separate series once the interaction with the E610 ACI PHY-config
   path is fully understood.
 - 1/4 (was 1/5), 2/4 (was 3/5), 3/4 (was 4/5), 4/4 (was 5/5):
   renumbered only; no code or commit-message change.

Changes in v4:
 - DROPPED "ixgbe: add bounds check for debugfs register access"
   (was 2/6 in v3).  The WARN_ON_ONCE(reg > IXGBE_HFDR) guard added
   to ixgbe_read_reg() fires on legitimate driver code paths on
   X550EM_a / E610 (LKV): probe reads IXGBE_EEC(hw), which on those
   parts resolves to IXGBE_EEC_X550EM_a == 0x15FF8, exceeding
   IXGBE_HFDR == 0x15FE8.  IXGBE_LINKS_10G_LANE_SYNC (0x17000) is
   another in-driver register beyond IXGBE_HFDR.  The premise of the
   patch -- that IXGBE_HFDR is the highest valid MMIO offset -- is
   incorrect, so the read-side guard cannot be retained as written,
   and the debugfs-side bound suffers from the same wrong ceiling.
   A correct debugfs-only bound (against pci_resource_len(BAR0)) will
   be sent separately if/when needed; that work is outside the scope
   of these -net fixes.  Reported by Larysa Zaremba.
 - 1/5 (was 1/6), 2/5 (was 3/6), 3/5 (was 4/6), 4/5 (was 5/6),
   5/5 (was 6/6): renumbered only; no code or commit-message change.

Changes in v3:
 - cover: removed Patch 1 squash-history description.
 - 1/6: add Reviewed-by: Simon Horman, Reviewed-by: Jacob Keller.
 - 2/6: add Reviewed-by: Simon Horman; no code change.
 - 3/6: add backplane-link guard in ixgbe_watchdog_update_link().
 - 4/6: add Reviewed-by: Simon Horman; no code change.
 - 5/6: rework clamping -- use clamp_val() with mode and delay as
        separate operands; clamp to [IXGBE_ITR_ADAPTIVE_MIN_USECS,
        IXGBE_ITR_ADAPTIVE_MAX_USECS].
 - 6/6: correct Fixes: tag to 8b1c0b24d9af; add Reviewed-by:
        Simon Horman.

Changes in v2:
 - 1/6: Squash two patches; fix commit msg ("200ms" -> "1s"); three
        explicit mac.type == comparisons instead of range check.
 - 2/6: Add Fixes: tag; reroute from iwl-next to iwl-net.
 - 3/6: Add Fixes: tag; reroute to iwl-net; skip fc_enable() when
        setup_fc() fails to avoid committing stale FC state.
 - 4/6: Add Fixes: tag; reroute from iwl-next to iwl-net.
 - 5/6: Add proper [N/M] patch numbering.
 - 6/6: Reroute to iwl-net; swap to (expr >> ..) & MASK operand order.
---

Aleksandr Loktionov (4):
  ixgbe: fix SWFW semaphore timeout for X550 family
  ixgbe: fix cls_u32 nexthdr path returning success when no entry installed
  ixgbe: fix ITR value overflow in adaptive interrupt throttling
  ixgbe: fix integer overflow and wrong bit position in ixgbe_validate_rtr()

 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 17 +++++++++--------
 drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c |  8 ++++++++
 2 files changed, 17 insertions(+), 8 deletions(-)
