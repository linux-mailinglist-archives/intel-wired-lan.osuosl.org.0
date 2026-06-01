Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id COM9GMBOHWrDYgkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 01 Jun 2026 11:20:00 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C0B0761C455
	for <lists+intel-wired-lan@lfdr.de>; Mon, 01 Jun 2026 11:19:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1488661066;
	Mon,  1 Jun 2026 09:19:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EAKDGvWdOOY3; Mon,  1 Jun 2026 09:19:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4B73C6105B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780305597;
	bh=oA5bsDtIZSt3cShcMZ4BGB45w4QHh/4WwzSV8lAbN3M=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=DRil/EO0Mu5achElcpfAMIg1YMgk/g2KU1+DJCzKZH4mcInt7dV8RTp+lrchLVw9T
	 wJRvBamMiMRh88Z8KBUttnBPiZPDXmKiBTYrquK1z2WYCQ3QqZVaWGbg7hwIet/2Mt
	 2WGu7RFhdIAlQqqDATHZRhhpDnaLLgvouNoJIXbbXoJqV3947bzZjp410GXMpXvoaU
	 ZvfxL3d6VacbEQu6ypIEi1TAi8LfCMJv9BCAAZ3oTt4QHDVE9WWrPWQ6Ir532HQrp+
	 0TbJsNdp9KRVL8ifXRMPhtmFuDnJDWeehafyZr+MfAyqi7Rmwzmc4jRt1fTobRD4wZ
	 CWyadchRbRvEA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4B73C6105B;
	Mon,  1 Jun 2026 09:19:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 68510257
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jun 2026 09:19:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 51B4984980
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jun 2026 09:19:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qLrp1rFEu35X for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Jun 2026 09:19:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=sergey.temerkhanov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6CA2184941
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6CA2184941
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6CA2184941
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jun 2026 09:19:54 +0000 (UTC)
X-CSE-ConnectionGUID: 4JwTAmENQriIUvxjEqovtA==
X-CSE-MsgGUID: Tyy0DX82RjGFZ/ylZLjVwQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="80791618"
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="80791618"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 02:19:53 -0700
X-CSE-ConnectionGUID: NEX49fVIQDKT0110sd6LTQ==
X-CSE-MsgGUID: E7PaYq+LQ4a89SfFue5GbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="247802569"
Received: from gnrd8.igk.intel.com (HELO GNRD8) ([10.123.232.137])
 by orviesa004.jf.intel.com with ESMTP; 01 Jun 2026 02:19:53 -0700
From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org
Date: Mon,  1 Jun 2026 09:19:48 +0000
Message-ID: <20260601091951.3017848-1-sergey.temerkhanov@intel.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780305594; x=1811841594;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Ewsugi7x5bALYLq3VAEl7zO7p5iDH/402TKmzMxyUI4=;
 b=mrzYlwbJQ9gb2b90Vo2BBckxQC7qLNQNOKItSx49sLwf9/SkdM1Sf3IH
 f4k8tFzrxnAplZXO3JESLD61nrGM4tADZ10m0VJp2p1HeNo24NbBIAg0F
 jzQpisacfD4xBSAJFDUavw3mIs3vGFkXdTjg5pvwd4QvYu0yK9eL2IVnI
 rAbOvo9uw+oQhh/8aWtOpT2f3/7WmCPsSF3idOR9x0V1F6FAhey0zFltQ
 7lhKRnFpc++cyyVLdlPJiAgHcefymR8eJk0mC/i6ECg2nLsGttgu79wXa
 hnw0lPqtvRYo3JT2slQ66KHoW2GO55l5jhn280yuNEn+IRVXw8lJ+/a6w
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mrzYlwbJ
Subject: [Intel-wired-lan] [PATCH iwl-net v3 0/3] Rework ctrl_pf pointer
 usage in struct ice_adapter
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sergey.temerkhanov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.799];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,osuosl.org:url,osuosl.org:dkim];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: C0B0761C455
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Rework usage of the control PF pointer in struct ice_adapter, so that
it is always has a consistent state, since it is global for an adapter.
Utilize RCU for reading the pointer value and atomic operations for
changing it. Zero out the ctrl_pf pointer when the control PF is removed.

Previous version:
https://lists.osuosl.org/pipermail/intel-wired-lan/Week-of-Mon-20260511/055077.html

v1->v2: Rebase onto the latest dev-queue branch
v2->v3: Cosmetic fixes

Sergey Temerkhanov (3):
  ice: Convert ctrl_pf pointer in struct ice_adapter to RCU
  ice: Zero out the PTP control PF pointer at ice_adapter cleanup
  ice: Cache struct ice_hw pointer for split register reads

 drivers/net/ethernet/intel/ice/ice.h         |  10 +-
 drivers/net/ethernet/intel/ice/ice_adapter.h |   2 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c     | 116 +++++++++++++------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c  |  26 ++++-
 4 files changed, 114 insertions(+), 40 deletions(-)


base-commit: 03d0beff9856a569d0da91ea0ccdc28045c2b2d0
-- 
2.53.0

