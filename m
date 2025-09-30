Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CE488BAE9C4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Sep 2025 23:24:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1343182E9C;
	Tue, 30 Sep 2025 21:24:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ka9FKuwucbUl; Tue, 30 Sep 2025 21:24:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8538382DDE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759267445;
	bh=Yd55FNmGCWguUHjTDMMqDKWXEzS1azR0TBsmZJnAko0=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=lrjQIC5EKjEMBfH1jTDlsyZDs2S0yZH+wbM1rHUka0xj9OS8Dv5nkKjzkVCZUtSMW
	 e096uCaUahhA689WGS/YyCgbefFOkYhA0Z62ff8z8C6O8JIqooukLp6YbAqQVX6yiF
	 jBfsLYtOn+rlcFlEB2gcBq9Jr70oD4kV6v3VqAy/2SRwyO0QZsrwtcxm3h6JXSpgS/
	 8kXPeEu531kER/sVLhcn2h42oB3p5TnvGyR1/2Wl/1fZxhnn6T6lTZSTU6SH3mt1bz
	 CgRFmk/Mgt2N7ezCLAuYp8d3cT4D8B0NtyU3XO99szfzyU3PKzminYXDz9bVsudNcv
	 BwF0bzgwDAzEg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8538382DDE;
	Tue, 30 Sep 2025 21:24:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 2FEC6111
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Sep 2025 21:24:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 21C9D40F4D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Sep 2025 21:24:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G2rXfTObh2hp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Sep 2025 21:24:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=sreedevi.joshi@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DDC3E40F5B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DDC3E40F5B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DDC3E40F5B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Sep 2025 21:24:01 +0000 (UTC)
X-CSE-ConnectionGUID: TVNRk2L/QcqLXo3jxFJejQ==
X-CSE-MsgGUID: c1YmY85FSxqCwNGTQsupAg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="65358357"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="65358357"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2025 14:23:59 -0700
X-CSE-ConnectionGUID: tWfmBC4DSHOjMq9YbG6TWg==
X-CSE-MsgGUID: 1osXLQLWQCeMdKbkdAiPcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,305,1751266800"; d="scan'208";a="209336169"
Received: from aus-labsrv3.an.intel.com ([10.123.116.23])
 by orviesa002.jf.intel.com with ESMTP; 30 Sep 2025 14:24:00 -0700
From: Sreedevi Joshi <sreedevi.joshi@intel.com>
To: sreedevi.joshi@intel.com,
	intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org
Date: Tue, 30 Sep 2025 16:23:50 -0500
Message-Id: <20250930212352.2263907-1-sreedevi.joshi@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759267440; x=1790803440;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bnqMEMYrDQ1b2tzbSz+Pwt6++N+gEZwp+C1Le/GByEk=;
 b=m/mn4DvdZ+Ntz0M+TPVQK5/bIjbEhPCXWLflua05HHawZxfC3GLwPpvZ
 lFBdfl7MSTj2P2i+aA4qPMbPrpHs14xLjw3aB7G1vPNp8u1smT43LYKe5
 iqxpA0G0pv1v+fGN9Am6b4IjKJk+bTSg4s9N7wLH3SSKG63ThuJjgJeSi
 Mkeb35/y9fAkpMDrvZ2l8mDLeFIc+rv2rXRlU7IZNQJbOQ6l2Mn+lsnhz
 j5cy47BFEqsryb+8DfBfjKTthEcJXvTUSl1llJEEfl+6wQZAMz9fbTp+t
 iefPUVP82ZPOlCthxlC0AzeRkM/EZ4GnSvv/Qdv5kwW8F4N6nPim9nvYR
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=m/mn4Dvd
Subject: [Intel-wired-lan] [PATCH v2 iwl-net 0/2] idpf: fix flow steering
 issues
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

Fix some issues in the recently added idpf flow steering
logic that cause ethtool functionality problems and memory
leak.

This series addresses:
- Memory leaks during module removal with active flow rules
- ethtool -n display errors due to incomplete flow spec storage
- Add logic to detect and reject duplicate filter entries at the same
  location

Changes:

v2:
 * patch2
	Update commit message to add details of improved validation
	sequence. (Simon Horman)

Thanks
Sreedevi


Erik Gabriel Carrillo (1):
  idpf: fix issue with ethtool -n command display

Sreedevi Joshi (1):
  idpf: fix memory leak of flow steer list on rmmod

 drivers/net/ethernet/intel/idpf/idpf.h        |  5 +-
 .../net/ethernet/intel/idpf/idpf_ethtool.c    | 72 +++++++++++++------
 drivers/net/ethernet/intel/idpf/idpf_lib.c    | 28 +++++++-
 3 files changed, 80 insertions(+), 25 deletions(-)

-- 
2.25.1

