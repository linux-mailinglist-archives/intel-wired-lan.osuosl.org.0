Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C0D6C82251
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Nov 2025 19:48:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B60E260848;
	Mon, 24 Nov 2025 18:48:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lWFPB5OivHG6; Mon, 24 Nov 2025 18:48:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4533160A6D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764010084;
	bh=Qkr16HTnkmk5wEFrTImsuur1jNRDMVS1/IGKuykVwDU=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Laety8y8mHDEsiYESxejWJU+UV1bMT/qjMFdtdBMPOyNuMts5VOCrreuq2oGtVA68
	 M8LFzdw+dLAsWu/kpNAKKXR+9TozzVvCbQyEi9EMn8S9sJevMubCqAmWbvenGQ8dra
	 FWJwr1QCKpwNnd6HFsfxYaePO8szPQ/Atr5cb2QmDRltkZ4N3xJGcCGwqTlXkMQW4r
	 BSVsoPu7sCUWO1ZLARJly8yodDiTlDBPFGXUlaBjImmZvuzQJMOYvFwV0OVywmJ3Q3
	 0dAXIsnBoU7OOYT++RNygY8GCguzgPXsqAE8aBFzpQiH7UmeVrN8Ha6Gk2dNds+A++
	 7jqUZQN3JCfjA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4533160A6D;
	Mon, 24 Nov 2025 18:48:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id A92B234E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 18:48:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9ABF760A99
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 18:48:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MfNp2GR4PFoy for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Nov 2025 18:48:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=sreedevi.joshi@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CEE5460848
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CEE5460848
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CEE5460848
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 18:48:00 +0000 (UTC)
X-CSE-ConnectionGUID: 9RU646n5Qt+V6yfMhdj0Kg==
X-CSE-MsgGUID: 4c7gU1x0RSOT+NaBqSs8lA==
X-IronPort-AV: E=McAfee;i="6800,10657,11623"; a="76341771"
X-IronPort-AV: E=Sophos;i="6.20,223,1758610800"; d="scan'208";a="76341771"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 10:48:00 -0800
X-CSE-ConnectionGUID: byfvj10NTFmfVm7VXBGIpw==
X-CSE-MsgGUID: 2uHI4RNfTamgyFrnFwEEJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,223,1758610800"; d="scan'208";a="196574867"
Received: from aus-labsrv3.an.intel.com ([10.123.116.23])
 by orviesa003.jf.intel.com with ESMTP; 24 Nov 2025 10:48:00 -0800
From: Sreedevi Joshi <sreedevi.joshi@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
	Sreedevi Joshi <sreedevi.joshi@intel.com>
Date: Mon, 24 Nov 2025 12:47:47 -0600
Message-Id: <20251124184750.3625097-1-sreedevi.joshi@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764010082; x=1795546082;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=aEPNYQS/8ZzRiAi3CKQ0v1nHusy/tQqZM30T591yHfw=;
 b=R6EssrqfeB1s7OBz9l4WzVfeSnmJA3Prpbs0pvzYOCZGujJvyKC0B6zG
 yPne7OFRxGC6u5CgoKJIg/4DLM6ZVB7EYqBC13jpcmk7YC55hJRZa8Kvc
 kJkk8/Ueni2GruVWu0MYlFFfeQHXK+qEXGGnDBG9kRiF7upptcwc7MbKB
 2LX9akAwXMPSkKozPMuv+gD41FkoFb1dLUnsOAuLexO32zFUv1vNnwXzz
 knvkcHst7z4XxSNzobxeJ74Xa64YWeplvucdxysjGuBTXESdNPql/OJSc
 gKOjla3fewStEU5GokvjAuOtvusoHvFLYLGe96FapUdR/hQz6hvhCH+gH
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=R6Essrqf
Subject: [Intel-wired-lan] [PATCH iwl-net v2 0/3] idpf: Fix issues in rxhash
 and rss lut logic
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

ethtool -K rxhash on/off and ethtool -x/-X related to setting up RSS LUT
indirection table have dependencies. There were some issues in the logic
that were resulting in NULL pointer issues and configuration constraints.
This series fixes these issues.

Changes in v2:
 - Fixed some issues in patch-1 with goto statements
 - Formatting issues in patch-2 fixed
 - updated the logic during soft-reset (patch-3)
	(Reviewer: anthony.l.nguyen@intel.com)

Sreedevi Joshi (3):
  idpf: Fix RSS LUT NULL pointer crash on early ethtool operations
  idpf: Fix RSS LUT configuration on down interfaces
  idpf: Fix RSS LUT NULL ptr issue after soft reset

 drivers/net/ethernet/intel/idpf/idpf.h        |  2 -
 .../net/ethernet/intel/idpf/idpf_ethtool.c    | 17 ++--
 drivers/net/ethernet/intel/idpf/idpf_lib.c    | 80 +++++++------------
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 36 +++------
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  5 +-
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   |  9 ++-
 6 files changed, 64 insertions(+), 85 deletions(-)

-- 
2.43.0

