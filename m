Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wPvGJ/ZnAmr5sQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 May 2026 01:36:22 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F2B05174F9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 May 2026 01:36:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C2F9D40AAB;
	Mon, 11 May 2026 23:36:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bF0gsjtuPaZz; Mon, 11 May 2026 23:36:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C05DB40AAD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778542578;
	bh=qcR/6wE6F+iqDK+lkDLycI3dgwV21Gz3kZ9julG5BlU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=sQVk7JDiNchX9AsI3cBpC8k7Z5doAu7u4hKtf2GEipGTm0EWOyypISEpoydAHqEHi
	 NRkjea28dq4hdOAvsMCdAhAKwvyDxwlJod+w2P5JNQoy3Iz4svkCa2S7xwNQLQhptd
	 4h9JNbzjsumouILoMC2GPMRH14RRlw0yn5ELEPgJWrtiQdvUX6D3LUeNiyClDNOUOh
	 1RrCigHU7nm8N6kUNoZNN/EK+qYB+f+PcjkgJtHTmetdVMomIkPxNNbBHYAKPZZJcr
	 7OnC1nO8w78fxre9MGyFn4jVMaHLvMGy6RtC6BeG+omnF9RwL0je7OJ/Pg0y/zDMIs
	 SYB+AAZX4CdUg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C05DB40AAD;
	Mon, 11 May 2026 23:36:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 65479128
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 23:36:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4ACD360883
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 23:36:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2-WbZhqgZe2i for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 May 2026 23:36:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A9B8B60881
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A9B8B60881
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A9B8B60881
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 23:36:15 +0000 (UTC)
X-CSE-ConnectionGUID: 4hQQjMocRDq7vRWx9IJIzg==
X-CSE-MsgGUID: DRAhx0T3ScK5HXDdxVlRzw==
X-IronPort-AV: E=McAfee;i="6800,10657,11783"; a="90027338"
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="90027338"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 16:36:14 -0700
X-CSE-ConnectionGUID: np66YzULQhmj6fnv5hlIGg==
X-CSE-MsgGUID: rLKRkU0qS6W0sfOaZK6wBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="237687218"
Received: from gklab-003-001.igk.intel.com ([10.91.173.48])
 by orviesa009.jf.intel.com with ESMTP; 11 May 2026 16:36:09 -0700
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: netdev@vger.kernel.org
Date: Tue, 12 May 2026 01:31:51 +0200
Message-Id: <20260511233159.2558165-1-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778542576; x=1810078576;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=h0RbbMyl4ISFTqOCqM+Ahs/GjJGyeaHl1jS/J7XBG/w=;
 b=FlkosG5sEd7d9OL/4uvt9B7ydhXfGmoQlALx3+r21TiGklv6/WjhoEhw
 A7LRGj9KZ97lr+Dh4ISjXOuJ90jiPpif78YOzJdU7mQmJHcTi/XoWb6Xo
 tfrnQdWLUDxk5l19HzzNzey9nfR9mJZCy/FeShLhOBrWa0vpFylr+MGSp
 9RrsoYrFC+IrSnfGLvABscPV5HwRVBXVLBVK9NOLJt6rD/td+iiMPUSp2
 7m5jgk3CkJxJGl8XPjhMqFyffbVShsPKTYkPRgRgJ9K4q06DQ+70cfXY6
 RRTwphMxnURbIarueDsKcIWNlEAuLQ2Nwgf9EnotZmlyPWgq8AbtJnGuk
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FlkosG5s
Subject: [Intel-wired-lan] [PATCH v8 net-next 0/8] dpll/ice: Add generic
 DPLL type and full TX reference clock control for E825
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
X-Rspamd-Queue-Id: 6F2B05174F9
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:kuba@kernel.org,m:jiri@resnulli.us,m:edumazet@google.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:Prathosh.Satish@microchip.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,kernel.org,resnulli.us,google.com,intel.com,gmail.com,vger.kernel.org,lunn.ch,lists.osuosl.org,microchip.com,davemloft.net];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.986];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Action: no action

NOTE: This series is intentionally submitted on net-next (not
intel-wired-lan) as early feedback of DPLL subsystem changes is
welcomed. In the past possible approaches were discussed in [1].

This series adds TX reference clock support for E825 devices and exposes
TX clock selection and synchronization status via the Linux DPLL
subsystem.

Here is the high-level connection diagram for E825 device:
  +------------------------------------------------------------------+
  |                                                                  |
  |                           +-----------------------------+        |
  |                           |                             |        |
  |                           |         MAC                 |        |
  |                           |+------------+-----+         |        |
  |                           ||RX/1588 |PHC|tspll<----\    |        |
+---+----+                    ||MUX     +---+-^---|    |    |        |
| E | RX >--------------------->              |   >--\ |    |        |
| T |    |    /---------------->              |   >-\| |    |        |
| H |----+    |               |+---------+----^---+ || |    |        |
| 1 | TX <----|----------------+TX MUX   < OCXO   | || |    |        |
|   |PLL |    |               ||         |--------| || |    |        |
+---+----+    |           /----+         <-ext_ref<-||-|----|------ext_ref
| E | RX >----/           |   ||         |--------+ || |    |        |
| T |    |                |   ||         <  SyncE | || |    |        |
| H |----+                |   |+-----------^------+ || |    |        |
| 2 | TX <----------------/   |            | /------||-/    |        |
|   |PLL |                    +------------|-|------||------+        |
+---+----+                              /--/ |      ||               |
| . | RX >---                           |    |      ||               |
| . |    |                   +----------|----|------||--+            |
| . |----+                   |        +-^-+--^+     ||  |            |
|   | TX <---                |        |EEC|PPS|     ||  |            |
|   |PLL |                   |        +-------+     ||  |            |
+---+----+                   |        |       <-CLK0/|  |            |
| E | RX >---                |        |  DPLL |      |  |            |
| T |    |                   |        |       <-CLK1-/  |            |
| H |----+                   |        |       |         |            |
| X | TX <---                |        |       <---SMA---<            |
|   |PLL |                   |        |       |         |            |
+---+----+                   |        |       <---GPS---<            |
  |                          |        |       |         |            |
  |                          |        |       <---...---<            |
  |                          |        |       |         |            |
  |                          |        +-------+         |            |
  |                          | External timing module   |            |
  |                          +--------------------------+            |
  +------------------------------------------------------------------+

E825 hardware contains a dedicated TX clock domain with per-port source
selection behavior that is distinct from PPS handling and from board-level
EEC distribution. TX reference clock selection is device-wide, shared
across ports, and mediated by firmware as part of link bring-up. As a
result, TX clock selection intent may differ from effective hardware
configuration, and software must verify outcome after link-up.

To support this, the series extends the DPLL core and the ice driver
incrementally. The series also introduces DPLL_TYPE_GENERIC as a broad
UAPI class for DPLL instances outside PPS/EEC categories. The intent is
to keep type naming reusable and scalable across different ASIC
topologies while preserving functional discoverability via
driver/device context and pin topology.

This follows netdev discussion guidance that UAPI type naming should avoid
location-specific or vendor-specific taxonomy, because such labels do not
scale across different ASIC designs. The function of a given DPLL instance
is already discoverable from driver/device context and pin topology, and
does not require an additional narrow type identifier in UAPI.

At the same time, a separate DPLL object is still needed for E825 TX clock
control/reporting semantics. Using DPLL_TYPE_GENERIC provides a reusable
class for devices outside PPS/EEC without overfitting UAPI naming to one
topology.

The relevant discussion is in [2].

Series content
- add a new generic DPLL type for devices outside PPS/EEC classes;
- relax DPLL pin registration rules for firmware-described shared pins
  and extend pin notifications with a source identifier;
- allow dynamic state control of SyncE reference pins where hardware
  supports it;
- add CPI infrastructure for PHY-side TX clock control on E825C;
- introduce a TX-clock DPLL device and TX reference clock pins
  (EXT_EREF0 and SYNCE) in the ice driver;
- extend the Restart Auto-Negotiation command to carry a TX reference
  clock index;
- implement hardware-backed TX reference clock switching, post-link
  verification, and TX synchronization reporting.

TXCLK pins report TX reference topology only. Actual synchronization
success is reported via DPLL lock status, updated after hardware
verification: external TX references report LOCKED, while the internal
ENET/TXCO source reports UNLOCKED.

This provides reliable TX reference selection and observability on E825
devices using standard DPLL interfaces, without conflating user intent
with effective hardware behavior.

[1] https://lore.kernel.org/netdev/20250905160333.715c34ac@kernel.org/
[2] https://lore.kernel.org/netdev/20260402230626.3826719-1-grzegorz.nitka@intel.com/

Changes in v8:
- rebased
Addressed AI review concerns:
- caching the module name in the pin object at allocation time and using
  the cached string in netlink paths (patch 2/8)
- dropped references to netlink in the commit message for (patch 3/8, it's
  internal notification only)
- replaced the commit 4/8 with the new one (relax the capability check in
  dpll_pin_state_set)
- resolved potential teradown race between ice_dpll_deinit_txclk_pins and
  ice_dpll_pin_notify_work() that is about to register the SYNCE pin
  (patch 5/8)
- resolved potential path deadlock during driver probe and error path
  (patch 5/8)
- relaxed kernel-doc regarding cpi mutex usage (patch 6/8)
- fixed ice_cpi.c header (patch 6/8)
- fix retry mechanism in ice_cpi_wait_req0_ack0 (patch 6/8)
- fix potrntial leaving LM.REQ stuck asserted on the hardware (patch 6/8)
- fix kernel-doc for ice_cpi_ena_dis_clk_ref
- removed unused CPI definitions (patch 6/8)
- fix header inclusion (patch 6/8)
- addressed Sashiko issues for patch (8/8)

Changes in v7:
- rebased
- replace TXC-specific DPLL type with DPLL_TYPE_GENERIC (patch 1/8)
- update TXC framework to use DPLL_TYPE_GENERIC instead of DPLL_TYPE_GENERIC
  (patch 5/8)
- AI-review: added short trailing comment to the local mutex declaration
  to satisfy checkpatch report (patch 6/8)

Changes in v6:
 - rebased
 - AI-review: fix unprotected concurrent access to shared clock
   bitmap (patch 8/8)
 - AI-review: fix potential issue in tx-clk pin state request handling
   ('already set' early-exit based now on tx_clk_req comparison, patch 8/8)
 - AI-review: CPI transaction serialization (patch 6/8) 

Changes in v5:
 - rebased
 - reworded cover letter
 - replace 'ntfy_src' new argument name with 'src_clk_id' and use it
   consistently in DPLL notification calls (patch 3/8)
 - reworded commit message (patch 5/8)
 - use FIELD_PREP/GENMSK macros instead of struct bitfields (patch 6/8)
 - reworded commit message (patch 5/8, patch 8/8)
 - refactor the code to avoid sleeping while DPLL mutex is held (using
   work_queue, patch 8/8)
 - added TXCLK pins and TXC DPLL notifications (patch 8/8)
 - removed 'unused clock disable' mechanism from the scope of this series

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
  dpll: add generic DPLL type
  dpll: allow registering FW-identified pin with a different DPLL
  dpll: extend pin notifier with notification source ID
  dpll: allow fwnode pins to attempt state change without capability bit
  ice: introduce TXC DPLL device and TX ref clock pin framework for E825
  ice: implement CPI support for E825C
  ice: add Tx reference clock index handling to AN restart command
  ice: implement E825 TX ref clock control and TXC hardware sync status

 Documentation/netlink/specs/dpll.yaml         |   3 +
 drivers/dpll/dpll_core.c                      |  34 +-
 drivers/dpll/dpll_core.h                      |   4 +-
 drivers/dpll/dpll_netlink.c                   |  26 +-
 drivers/dpll/dpll_netlink.h                   |   4 +-
 drivers/dpll/dpll_nl.c                        |   2 +-
 drivers/net/ethernet/intel/ice/Makefile       |   2 +-
 drivers/net/ethernet/intel/ice/ice.h          |  12 +
 drivers/net/ethernet/intel/ice/ice_adapter.c  |   4 +
 drivers/net/ethernet/intel/ice/ice_adapter.h  |   7 +
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   2 +
 drivers/net/ethernet/intel/ice/ice_common.c   |   5 +-
 drivers/net/ethernet/intel/ice/ice_common.h   |   2 +-
 drivers/net/ethernet/intel/ice/ice_cpi.c      | 364 ++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_cpi.h      |  58 +++
 drivers/net/ethernet/intel/ice/ice_dpll.c     | 401 ++++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_dpll.h     |  10 +
 drivers/net/ethernet/intel/ice/ice_lib.c      |   3 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c      |  26 +-
 drivers/net/ethernet/intel/ice/ice_ptp.h      |   7 +
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   |  37 ++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  34 ++
 drivers/net/ethernet/intel/ice/ice_sbq_cmd.h  |   5 +-
 drivers/net/ethernet/intel/ice/ice_txclk.c    | 285 +++++++++++++
 drivers/net/ethernet/intel/ice/ice_txclk.h    |  38 ++
 drivers/net/ethernet/intel/ice/ice_type.h     |   2 +
 include/linux/dpll.h                          |   1 +
 include/uapi/linux/dpll.h                     |   2 +
 28 files changed, 1320 insertions(+), 60 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_cpi.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_cpi.h
 create mode 100644 drivers/net/ethernet/intel/ice/ice_txclk.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_txclk.h


base-commit: 63751099502d10f0aa6bb35273e56c5800cc4e3a
-- 
2.39.3

