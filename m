Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 455CFAE6892
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jun 2025 16:27:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CD76160DAB;
	Tue, 24 Jun 2025 14:27:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2SbXWzeDijs9; Tue, 24 Jun 2025 14:27:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6113460D61
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750775254;
	bh=uoiLU8dzT115jSQPVvh1prsZ1i2m82ptN4uC86+5irs=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=cXMfiQQNUsReQptQfDUwGY8oMc0yiZZivlv2MqglfhmgD8Jo2C4PK3CKyRYj7lOQD
	 03iZR64TznFHUcrSr/IpWvwd3LtfywnvI4dYycefEOSMO4eXxXVPWtRv83P5SeRfTO
	 JBIF40Hhv8NgYSokdFpsCavBOGpqkaV2b9aiKwpJvy3ieEEZCbBQ2mHxpYrwsLPyDL
	 dBBaJAEWKBd7PAl8weXrWQcybcFQ4R8zJ3gjUadAjzvyUrSi9/S5k1FYdMWTymcDXz
	 rUyjOF86yY7mPiPe8Z2NFF0BjjRsnko+NI6Lz14XvUqy8OcboCceOvMGUxtgfLaBWI
	 D5QbnrNsttnjw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6113460D61;
	Tue, 24 Jun 2025 14:27:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id E0E2F12C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 14:27:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D1F1E60D61
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 14:27:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MVLpnFm_lCSy for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jun 2025 14:27:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3C40060BEE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3C40060BEE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3C40060BEE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 14:27:31 +0000 (UTC)
X-CSE-ConnectionGUID: 0E8jvkgjTMqsT6G6pM0LVA==
X-CSE-MsgGUID: DE9YIkc4S3SAtSP0phKJOw==
X-IronPort-AV: E=McAfee;i="6800,10657,11474"; a="70441027"
X-IronPort-AV: E=Sophos;i="6.16,261,1744095600"; d="scan'208";a="70441027"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 07:27:31 -0700
X-CSE-ConnectionGUID: 5YQPK2EwTRCvcU+EE35vIA==
X-CSE-MsgGUID: QwjWxWECSnSr30T5B7CUcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,261,1744095600"; d="scan'208";a="155965564"
Received: from estantil-desk.jf.intel.com ([10.166.241.24])
 by fmviesa003.fm.intel.com with ESMTP; 24 Jun 2025 07:27:31 -0700
From: Emil Tantilov <emil.s.tantilov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Aleksandr.Loktionov@intel.com,
 przemyslaw.kitszel@intel.com, david.m.ertman@intel.com,
 anthony.l.nguyen@intel.com, michal.swiatkowski@linux.intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com
Date: Tue, 24 Jun 2025 07:26:39 -0700
Message-Id: <20250624142641.7010-1-emil.s.tantilov@intel.com>
X-Mailer: git-send-email 2.17.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750775252; x=1782311252;
 h=from:to:cc:subject:date:message-id;
 bh=UN6drHPpNfDnzyi8urlE+B6aTww0NvsBDxJi71GKjGM=;
 b=cchfnIz4+S/4x50rv7siSXkHvhOorK7X3nVZQgGQEVjwI+6e/UcSAoe6
 ORmNlti9bk/sSSjzPE9Va94+2jRRgEl3lmxk9K2Fom9nXaq83E+IhUZ4t
 nATibAbs8qOerUQZxhV2Kk3Yem051xtDpWhTvFmZmxc4UBqYX+ahqdlC5
 pL12SpaubQKJhXF6YDYQfB9kfQvb46rOrCr2nPPpaky1HORsXMTyyhFBL
 KgUY/093zTjR0jYalJXoAkPib5wIYpmG8v/C9COonOcDOX2+qTxi32r/T
 avR+6xXUcycvaoBW9k3sg1MrM3NzoWpWnlc096eVDlOAsX0jyudF9ib1W
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cchfnIz4
Subject: [Intel-wired-lan] [PATCH iwl-net 0/2] ice: Fix NULL pointer
 dereference and leak in IDC
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

Resolve NULL pointer dereference on driver load when RDMA is not supported.
During reset the driver attempts to remove an auxiliary device that does
not exist. In addition, fix a memory leak in ice_plug_aux_dev() error path.

Emil Tantilov (2):
  ice: fix NULL pointer dereference in ice_unplug_aux_dev() on reset
  ice: fix possible leak in ice_plug_aux_dev() error path

 drivers/net/ethernet/intel/ice/ice.h     |  1 +
 drivers/net/ethernet/intel/ice/ice_idc.c | 29 ++++++++++++++----------
 2 files changed, 18 insertions(+), 12 deletions(-)

-- 
2.37.3

