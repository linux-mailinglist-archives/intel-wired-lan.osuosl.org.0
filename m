Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +LZ2IONSz2nqvAYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 07:40:51 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5123239121D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 07:40:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D8FAB40F1A;
	Fri,  3 Apr 2026 05:40:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ASstaikqNDmp; Fri,  3 Apr 2026 05:40:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1280340EE8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775194841;
	bh=Dmw9qiJBduZm9KQ7Ce1YFwIaqfz3mawCd133uqLsBL4=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=rogI2Luazuxr+zWG4MhaVamS8GqKkf2HemT7eN+ECLrbJmbFi0o82l7XkdwIywdzL
	 usVbu9IrVm6O6sLT6NgFWQ0Z5s5WbFeTnk15Ig/MN0aaQp8VCRRkeMPsojfCzDdjSf
	 QKgGt33aRG71yUpMG/cnFMGei0pqeNI1Yazu5K06ptSASpowpCw4tTuI2XdV5eohOV
	 evbSJ0ypJO2nOzoDudTZ9tfbCBP46lLgdZWdnGghC0BJasCWFl8iAuzfPRTl4cH+ig
	 rGref9yoUBkzKFSHjuXWLI32a9qqS6rIYT0Eni5SKTueJ2Bo4BRnSbM6sZFZmCTIX7
	 ql4TGPySFRkMA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1280340EE8;
	Fri,  3 Apr 2026 05:40:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id DAFB71F3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 05:40:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CD2DB80C7E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 05:40:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rUFjYtG4bYGU for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Apr 2026 05:40:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2003F807D6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2003F807D6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2003F807D6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 05:40:32 +0000 (UTC)
X-CSE-ConnectionGUID: dsb+kgHbQBSLEzQRNNQ6eg==
X-CSE-MsgGUID: 8tEpywp7RACNsCjpMJIPmw==
X-IronPort-AV: E=McAfee;i="6800,10657,11747"; a="75981736"
X-IronPort-AV: E=Sophos;i="6.23,157,1770624000"; d="scan'208";a="75981736"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2026 22:40:32 -0700
X-CSE-ConnectionGUID: r8rkyP3US8i0+qhHWtPFkQ==
X-CSE-MsgGUID: rt+e5uHsTriKacNi9nmdlA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,157,1770624000"; d="scan'208";a="223904907"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmviesa007.fm.intel.com with ESMTP; 02 Apr 2026 22:40:30 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org
Date: Fri,  3 Apr 2026 07:40:18 +0200
Message-ID: <20260403054029.3789616-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775194833; x=1806730833;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kh+YWAf2VTHtmbkV09DF9p9P9mXR7YSvgJUqzn1JDT4=;
 b=U+4Si+L1Bjbs2qsXDnackdDLdp9LfiEScE/PwvOazrvoD5zDRKd7ywGS
 mQcnwXEYQXfugAnN3mIao2352V0AvQDgj4RVQO+pbVCLXwyTCnAJqBMVw
 TZ9k97Fevt7xK1y4Sr5Qi9qynI1NBIQoCkbSU3lMN6NouNZeYITMYbgSj
 TBPWwUbGxU3pma6oSbppoOwpGd+/sFkxncD5ZGd04EXDmgGi1DfPMSnJW
 jdB/cKHjv8pCVqQFLLFTGEMmRFH6UFwmiubNiY/bKhe1QkbEESBM3ZLD2
 IkJUo2RuczlkCvyfljE/+xNGTdz89oHUvScAFCPYxdj0KBZ/FE2XZPRmk
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=U+4Si+L1
Subject: [Intel-wired-lan] [PATCH iwl-net 0/10] ice: bug fixes -- no link,
 tc-flower, VF rate
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
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCPT_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 5123239121D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Good day,

Ten stand-alone bug fixes for the ice driver, all targeting functional
regressions or silent failures that affect connectivity.

Service task / unload races:
  - A scheduled service-task work item could fire after ice_remove()
    started, racing against freed per-PF state.  Check ICE_SHUTTING_DOWN
    at the top of the task body to close the window.

  - The DPLL input-pin callback accepted DPLL_PIN_STATE_CONNECTED and
    silently converted it to DISCONNECTED instead of returning an error.

Mirror / switch:
  - Mirror rules whose action is "to VSI list" had VSI count never set
    to 1, breaking subsequent deletions when a VSI list was involved.

DCB / LLDP:
  - Two missing `need_reconfig = true` assignments caused FW updates to
    be silently skipped when a DCB change only touched the TC bandwidth
    or TSA tables.

  - ice_set_dflt_mib() sent the initial default MIB to firmware with
    the ETS willing bit clear, preventing LLDP negotiation with a peer
    when the FW LLDP agent is active.

ethtool / link modes:
  - 10000baseCR_Full was absent from ice_adv_lnk_speed_10000[], causing
    an ethtool autoneg advertisement of this mode to be silently ignored
    (user gets "nothing changed" even on capable hardware).

  - ice_set_link_ksettings() derived the Autoneg-capable flag only from
    ice_phy_type_to_ethtool(); PHYs that report autoneg solely through
    PHY capabilities were missed.  Pull the flag from
    ice_is_phy_caps_an_enabled() to fix this.
    Fixes: 5cd349c349d6 ("ice: report supported and advertised autoneg using PHY capabilities")

  - 50G single-lane modes (50000baseCR/KR/SR/LR_ER_FR_Full) were absent
    from ice_adv_lnk_speed_50000[], so those link modes were silently
    rejected by ethtool.
    Fixes: 982b0192db45 ("ice: Refactor finding advertised link speed")

TC flower / switch:
  - ice_find_dummy_packet() chose the UDP inner template for rules that
    match ICE_IPV4_IL with ip_proto==TCP but no explicit L4 field,
    causing tc-flower rule installs to fail.
    Fixes: e33163a40d1a ("ice: switch: convert packet template match code to rodata")

SR-IOV / VF:
  - ice_set_vf_bw() refused any min_tx_rate value when total guaranteed
    bandwidth was already oversubscribed, making it impossible to clear
    the rate via "ip link set <pf> vf <id> min_tx_rate 0".  Allow a
    zero to bypass the oversubscription check so users can recover.

With the best regards,
Alex

---
Michal Swiatkowski (2):
  ice: fix mirroring to VSI list
  ice: select inner TCP dummy packet when matching on ip_proto TCP without explicit L4 field

Dave Ertman (2):
  ice: update FW on all DCB changes
  ice: disallow service task to run while driver is unloading

Arkadiusz Kubalewski (1):
  ice: error out on CONNECTED state for input pin

Voon Weifeng (1):
  ice: add 10000baseCR_Full to advertised link speed map

Jan Glaza (1):
  ice: check PHY autoneg capability before rejecting ethtool autoneg setting

Grzegorz Nitka (1):
  ice: fix missing 50G single-lane ethtool link speed mappings

Yochai Hagvi (1):
  ice: set ETS TLV willing bit in default MIB sent to firmware

Sudheer Mogilappagari (1):
  ice: allow setting min_tx_rate to 0 to resolve VF bandwidth oversubscription

 drivers/net/ethernet/intel/ice/ice_dcb.h     |  2 +
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c |  6 ++-
 drivers/net/ethernet/intel/ice/ice_dcb_nl.c  |  0
 drivers/net/ethernet/intel/ice/ice_dpll.c    |  2 ++
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 29 +++++++++--
 drivers/net/ethernet/intel/ice/ice_main.c    |  2 +
 drivers/net/ethernet/intel/ice/ice_sriov.c   |  8 +++
 drivers/net/ethernet/intel/ice/ice_switch.c  |  8 ++-
 8 files changed, 52 insertions(+), 5 deletions(-)
