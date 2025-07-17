Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 14A26B08F58
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Jul 2025 16:29:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 20178840E8;
	Thu, 17 Jul 2025 14:29:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DQWszTqC4JEN; Thu, 17 Jul 2025 14:29:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7A41783DAB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752762544;
	bh=55i1HjGhqmpxCaQpw88oK2Tw9CHZUq/qc1PPXEbKDW0=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=7dvuX765caokXy7LKixZJMNsgJGDhy0/enxTCsX0WUylmlGmuMCNvu8ArtSlXCDza
	 rGhNhLvwPv5p0RpWqPYsfYbuYhQc2L0IF/NpGZ2HURXgocFCNOqvYPLF6Dgu9ahljk
	 JwY7c65B1Dh19cb4Ohfg8laH6ZAgpwK+zah2dH1G+tm+9T4cFhZSGNjrsYTUuoomV0
	 Jz1m/xhlQgo6asSBCHe+C7ebuT8g2dT8mCRSfu3n2kX0m20xfvCtZnKfx6mhB9CtPT
	 qkpBq6aP94xS6uiPJSij5cIcBT1wYHdKZHEUZ8Im5nQ59bAcCoJJVw/Pp8vnFtM0yx
	 YdUBPmfEo3Rqw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7A41783DAB;
	Thu, 17 Jul 2025 14:29:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4E86EA59
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 14:29:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 34C9D404CA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 14:29:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PBtHnTRbsz75 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Jul 2025 14:29:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9A8AF400D2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9A8AF400D2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9A8AF400D2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 14:29:01 +0000 (UTC)
X-CSE-ConnectionGUID: 8B2m1Za/TjOdoP31SvOnNw==
X-CSE-MsgGUID: dhWKdNnFSa+zz5lfFVKIcg==
X-IronPort-AV: E=McAfee;i="6800,10657,11495"; a="66488604"
X-IronPort-AV: E=Sophos;i="6.16,319,1744095600"; d="scan'208";a="66488604"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 07:29:01 -0700
X-CSE-ConnectionGUID: QXFWvb6CS8SPGac8f4EZVA==
X-CSE-MsgGUID: 0I06mQCURju15jc0O4nzHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,319,1744095600"; d="scan'208";a="157880613"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa007.jf.intel.com with ESMTP; 17 Jul 2025 07:29:00 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: aleksandr.loktionov@intel.com,
	netdev@vger.kernel.org
Cc: intel-wired-lan@lists.osuosl.org
Date: Thu, 17 Jul 2025 14:28:42 +0000
Message-ID: <20250717142859.3346899-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752762542; x=1784298542;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=OZrbCw4JKifkcZHybBIYwGcHjI3XAO5d4AY32WvodMs=;
 b=WyaGKamL43XeW1Qy0BvxZFqcOaLDYDHlZ2Mqaq9uO2iNLWDVch/sif8F
 64/bcDqFo2gE7gi2cTcpWn+iMjXzksNXePNGy4OuWJ+fnCw9fj1r776/0
 cyTITaJ0uA4Wbp2owVwJNnBy/p3BmwO5ShKQB3F+hJ9eM8MfDeH2lsIBO
 iL5GGr5BJRrnGzioXKTS4Unif5VZYdDEg9L4ZQjmjqH7PCecQm2v0CJ64
 MpAKaHcszOndRF5ywhuzKx3olV2tlEzLJAZC59zC17yyW02RgdCMczQoL
 pW+bK4pZpZYbf5CTIzEEVfBeUYKnYGLH10ghQ9FyAe9QlhSPA6qB06/Db
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WyaGKamL
Subject: [Intel-wired-lan] [PATCH iwl-next v1 00/17] iavf and ice: GTP RSS
 support and flow enhancements
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

This patch series introduces support for Receive Side Scaling (RSS)
configuration of GTP (GPRS Tunneling Protocol) flows via the ethtool
interface on virtual function (VF) interfaces in the iavf driver.

The implementation enables fine-grained traffic distribution for
GTP-based mobile workloads, including GTPC and GTPU encapsulations, by
extending the advanced RSS infrastructure. This is particularly beneficial
for virtualized network functions (VNFs) and user plane functions (UPFs)
in 5G and LTE deployments.

Key features:
- Adds new RSS flow segment headers and hash field definitions for GTP
  protocols.
- Enhances ethtool parsing logic to support GTP-specific flow types.
- Updates the virtchnl interface to propagate GTP RSS configuration to PF.
- Extends the ICE driver to support GTP RSS configuration for VFs.

Patch breakdown:
  01: Add GTP RSS support in iavf driver
  02..17: Extend ICE driver and protocol definitions to support GTP RSS for VFs

Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
