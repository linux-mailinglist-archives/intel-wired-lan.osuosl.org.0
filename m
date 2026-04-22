Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id d23YOUD16GnaSAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Apr 2026 18:20:16 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B37B1448753
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Apr 2026 18:20:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5DE7E60DB0;
	Wed, 22 Apr 2026 16:20:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NuQ7adWXsZfs; Wed, 22 Apr 2026 16:20:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BAF6560DBF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776874811;
	bh=0opA4S5HZjOnLSZMufi0fYXRH7/cC906jGC9QLHgEe0=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=snjRV4BYpEnyVtiqlLZES9Phrb4JAGR4w+ge3Q/9fY0NjzEhIkj0o8kQJ8wdlDsTc
	 i514n8zV3D0QSuipOIwfCPapHkX+pmMaqMILPYXhBtEuMKgv3kV1Dta/ac4+yoqMX7
	 bzjm7cqdq/pnJnkHAOXY1nC56qBUeP0zZFWXF4mRtzR5HD2jTU/TYkpv1IUZjWyfCo
	 73qEKgdKZRjlDEx5C4o5xQV418C6qCklIzcIzzKpmDaH6P5ZOCUHfENvnBqDEfZG3q
	 89uvCaCLYU4jrGlSlPG1+oDDaP9LSFP6Gmhq7r+OUvhWlIQ+G2lqPnk0ct33lsfXu+
	 TJW3D6Xm1xZIQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BAF6560DBF;
	Wed, 22 Apr 2026 16:20:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id A1FD824D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Apr 2026 16:20:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 88535401C7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Apr 2026 16:20:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8I_1GSk-xOZJ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Apr 2026 16:20:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=khai.wen.tan@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E16534029B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E16534029B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E16534029B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Apr 2026 16:20:07 +0000 (UTC)
X-CSE-ConnectionGUID: MZMQzrMZQDqL8d7R2CcEHg==
X-CSE-MsgGUID: uD972XVaS5Oxt7uKRi66XQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11764"; a="88134459"
X-IronPort-AV: E=Sophos;i="6.23,193,1770624000"; d="scan'208";a="88134459"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2026 09:20:07 -0700
X-CSE-ConnectionGUID: w0LEF1wJTcy4bK6zG8h0tw==
X-CSE-MsgGUID: g1ONIYzqTkuMuwXE53Wm/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,193,1770624000"; d="scan'208";a="228052418"
Received: from unknown (HELO localhost.png.intel.com) ([10.107.255.61])
 by fmviesa010.fm.intel.com with ESMTP; 22 Apr 2026 09:20:03 -0700
From: KhaiWenTan <khai.wen.tan@linux.intel.com>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, faizal.abdul.rahim@intel.com,
 hong.aun.looi@intel.com, khai.wen.tan@intel.com,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
Date: Wed, 22 Apr 2026 23:56:58 +0800
Message-ID: <20260422155701.7420-1-khai.wen.tan@linux.intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776874808; x=1808410808;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Ut5giVmbsImJs8yL0H3YCWudMqhBdgqTW7EV5XSP3Ls=;
 b=Qt2cBY4djaOg3BYo/VhGHGnpo5rUgpXkyhcJ36TV/rSJtQiECZR0jAU/
 R5+dKX8X2kl/gxDvMpRQdGrMuj/WoVeIPWYckOT9ZFo801HPJ1Aeq1Xje
 ZtoTOPSIHZcOKVIm3Sa0bPrxoMVpaIArz97OS1vDz0EasKxiUfFag9iu5
 QspuibGmVUzRIHiPYF0Sf/UDf9vsyBo8MOmElv11gtHtGDLIH2gRMFWe7
 GEZh5xV2bdk/XK4chZS6V++K11uoaJlcNOaXtEWghgUdpnMPM+zFaqH7N
 1eev7nk/Hvk3ddHZ0mP0tfm3YzmpO1YHV9aUhwJaQJUtNUx5vK/Tov5tu
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Qt2cBY4d
Subject: [Intel-wired-lan] [PATCH iwl-next v3 0/3] igc: add support for
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
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:faizal.abdul.rahim@intel.com,m:hong.aun.looi@intel.com,m:khai.wen.tan@intel.com,m:faizal.abdul.rahim@linux.intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[khai.wen.tan@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,linux.intel.com:mid,ozlabs.org:url];
	FROM_NEQ_ENVFROM(0.00)[khai.wen.tan@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: B37B1448753
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>

This series adds support for forcing 10/100 Mb/s link speed via ethtool
when autonegotiation is disabled on the igc driver.

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

v2 at:
https://patchwork.kernel.org/project/netdevbpf/patch/20260416015520.6090-4-khai.wen.tan@linux.intel.com/

v1 at:
https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20260409072747.217836-1-khai.wen.tan@linux.intel.com/

Faizal Rahim (3):
  igc: remove unused autoneg_failed field
  igc: move autoneg-enabled settings into igc_handle_autoneg_enabled()
  igc: add support for forcing link speed without autonegotiation

 drivers/net/ethernet/intel/igc/igc_base.c    |  35 +++-
 drivers/net/ethernet/intel/igc/igc_defines.h |   9 +-
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 203 +++++++++++++------
 drivers/net/ethernet/intel/igc/igc_hw.h      |  10 +-
 drivers/net/ethernet/intel/igc/igc_mac.c     |  16 +-
 drivers/net/ethernet/intel/igc/igc_main.c    |   2 +-
 drivers/net/ethernet/intel/igc/igc_phy.c     |  65 +++++-
 drivers/net/ethernet/intel/igc/igc_phy.h     |   1 +
 8 files changed, 251 insertions(+), 90 deletions(-)

--
2.43.0

