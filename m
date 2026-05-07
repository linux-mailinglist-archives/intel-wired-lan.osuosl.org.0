Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6LVeHBtd/WlWbgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 05:48:43 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 42D984F13F3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 05:48:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BEE72414CB;
	Fri,  8 May 2026 03:48:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N7gtJwTcGuGG; Fri,  8 May 2026 03:48:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1C710414C9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778212120;
	bh=Y+Iovo2BX1YOXbf5FlyaNUyEjV/bQI08Zym9OXJLDEQ=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=vnU/bYsZTVv1JsVAa3GtIou0eOp+8zDaDAVBD9mzNSkhDIYmiEfs+JVp7O98Y0N6H
	 oRDkoO7kcT4VLVWAdt++S87CyGGJ6wswetbXUB1qy+iGAdrxr9ZDzXovWm+N3Rw8K4
	 WbG4z7PY3Hug6Flbczrgd8UpFlkZDDHOZQzecK4VaA5dsg0cp4sDEufwMrK1i7bmqC
	 H5y5D9bn0vtD51vX5HO0E4h9yCoxRk9hvfXaxk/8I9+mNCgIvqkvHaLZq7od1NNbxt
	 3hT06HRSyGCZ3LfY1i+ynTz3TOfhTzGHcqKV5dhRt8yeVj3qdlVBIEZj5vftqSlC1f
	 rgJYOBChfUTwA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1C710414C9;
	Fri,  8 May 2026 03:48:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 94ACE272
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 03:48:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 86824414C5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 03:48:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id c-Jp6ZCAoVQC for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2026 03:48:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=khai.wen.tan@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 40833414C4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 40833414C4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 40833414C4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 03:48:36 +0000 (UTC)
X-CSE-ConnectionGUID: Q6OG2VXpTLK6ybVA/jJAlw==
X-CSE-MsgGUID: 9re3Cxg8RoasWN+7jTCR3g==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="90278833"
X-IronPort-AV: E=Sophos;i="6.23,222,1770624000"; d="scan'208";a="90278833"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 20:48:36 -0700
X-CSE-ConnectionGUID: 3/Z9CBXmTRSYCygsnAIrvw==
X-CSE-MsgGUID: JiV19TWjR6mRUIHunpGUFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,222,1770624000"; d="scan'208";a="236767290"
Received: from unknown (HELO localhost.png.intel.com) ([10.107.255.61])
 by orviesa009.jf.intel.com with ESMTP; 07 May 2026 20:48:32 -0700
From: KhaiWenTan <khai.wen.tan@linux.intel.com>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, faizal.abdul.rahim@intel.com,
 hong.aun.looi@intel.com, hector.blanco.alcaine@intel.com,
 khai.wen.tan@intel.com, Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
Date: Fri,  8 May 2026 05:47:02 +0800
Message-ID: <20260507214706.309984-1-khai.wen.tan@linux.intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778212118; x=1809748118;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9sJ6IMJ5LymCVMvZk1BOFaSeUfznGdj4PM9e7IORzXI=;
 b=HJI5z7TWXTK8jsKOK7V41Qop/bJ4aPW5ylK77CU4rFQbfNSRbYg7aJfS
 BTEuhhPtMuaab86dmiQa6osb3+ynIQatQ7mNeHNPrWMbd+dIrpnkDteGt
 nrXCk3NxanY00GATLNp9Uj9msSZ0tkqaVoSv7xasjeIHFBEYickOflBzg
 UB7JpUaA5U9gk/UAErNpYDETQfjvXpfzTlp35ciiz3R3AOLHnb1M/0ax6
 siEfIh4w9UMRIWoOmbyBEVlW2eTp396e/PBnNwKzOSPpuwFo+4fWYH+k9
 OiiuRIVMDTE450bNlTSmUH0fkKyQwm6i9HcC3NKepNIz/Qk9Cw1k8OQnL
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HJI5z7TW
Subject: [Intel-wired-lan] [PATCH iwl-next v5 0/4] igc: add support for
 forcing link speed without autonegotiation
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
X-Rspamd-Queue-Id: 42D984F13F3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER(0.00)[khai.wen.tan@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:faizal.abdul.rahim@intel.com,m:hong.aun.looi@intel.com,m:hector.blanco.alcaine@intel.com,m:khai.wen.tan@intel.com,m:faizal.abdul.rahim@linux.intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:dkim,ozlabs.org:url];
	FROM_NEQ_ENVFROM(0.00)[khai.wen.tan@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-0.987];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>

This series adds support for forcing 10/100 Mb/s link speed via ethtool
when autonegotiation is disabled on the igc driver.

Changes in v5:
- add removal justification to include copper context in commit
  description for igc: remove unused autoneg_failed field (Paul)
- check that cmd->base.duplex is either DUPLEX_HALF or DUPLEX_FULL
  in igc_ethtool_set_link_ksettings() (Simon)
- dynamically override hw->fc.current_mode to igc_fc_none during
  link configuration instead of mutating requested_mode (Simon)

Changes in v4:
- Validate that autoneg is AUTONEG_ENABLE or AUTONEG_DISABLE early
  in igc_ethtool_set_link_ksettings() to avoid passing unexpected
  values to igc_handle_autoneg_disabled(). (Simon Horman)

Changes in v3:
- Modify condition from "if (duplex == DUPLEX_HALF)" to
  "if (duplex != DUPLEX_FULL)". (Simon Horman)

Changes in v2:
- When forcing half-duplex, set hw->fc.requested_mode = igc_fc_none,
  since half-duplex cannot support flow control per IEEE 802.3.
  (Simon Horman)
- Split the original single patch into three patches for clarity:
  patches 1 and 2 are preparatory cleanups; patch 3 carries the
  functional change.

v4 at:
https://patchwork.ozlabs.org/project/intel-wired-lan/cover/20260428060009.311393-1-khai.wen.tan@linux.intel.com/

v3 at:
https://patchwork.ozlabs.org/project/intel-wired-lan/cover/20260422155701.7420-1-khai.wen.tan@linux.intel.com/

v2 at:
https://patchwork.kernel.org/project/netdevbpf/patch/20260416015520.6090-4-khai.wen.tan@linux.intel.com/

v1 at:
https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20260409072747.217836-1-khai.wen.tan@linux.intel.com/

Faizal Rahim (4):
  igc: remove unused autoneg_failed field
  igc: move autoneg-enabled settings into igc_handle_autoneg_enabled()
  igc: replace goto out with direct returns in
    igc_config_fc_after_link_up()
  igc: add support for forcing link speed without autonegotiation

 drivers/net/ethernet/intel/igc/igc_base.c    |  35 +++-
 drivers/net/ethernet/intel/igc/igc_defines.h |   9 +-
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 210 +++++++++++++------
 drivers/net/ethernet/intel/igc/igc_hw.h      |  10 +-
 drivers/net/ethernet/intel/igc/igc_mac.c     |  35 ++--
 drivers/net/ethernet/intel/igc/igc_main.c    |   2 +-
 drivers/net/ethernet/intel/igc/igc_phy.c     |  65 +++++-
 drivers/net/ethernet/intel/igc/igc_phy.h     |   1 +
 8 files changed, 268 insertions(+), 99 deletions(-)

--
2.43.0
