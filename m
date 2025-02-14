Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 39E22A36066
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Feb 2025 15:29:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E5CAE82768;
	Fri, 14 Feb 2025 14:29:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WWmJutlu899J; Fri, 14 Feb 2025 14:29:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 385C6836F0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739543355;
	bh=I0QSXt98MfE9wEJYDG2mQTqNIlnRDnE/0AhYnF1IRTM=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=rga6JSoarn5AYY6kk9jxALstO/nX4p0scElFxCxEAF2LHne7zY1D+VfOnYvL6b1B0
	 Ubn0ZRxu+6fGdxL8rBozKXL+0TMaGZShUzzlUTwuAhG/4cYTYeH2jH71yFYQ/POmaB
	 hnO1gIqBz6jyKugwwfWUqGV5JN/cJ9MiHvtIgVsUl3wNkIRDlRTvZuw8Ov3rnroPvh
	 IcORn6HcriSz/bq0MlU1/JoOBbjgboW+sGcnDt+2nBKVn0lxDjHlWL3ijtGd2KfpZX
	 c4goePkMXA+5jHoS0KTOSJ2XlvQ7pfup7bsJRJn/oMREQePTmVujop21L7ZPCPRkfj
	 uWQxw4S2AjTZA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 385C6836F0;
	Fri, 14 Feb 2025 14:29:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8818C1E3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 14:29:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 786D1822B9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 14:29:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zu68jngeOWYB for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Feb 2025 14:29:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org AC7ED820EF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AC7ED820EF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AC7ED820EF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 14:29:11 +0000 (UTC)
X-CSE-ConnectionGUID: vqPd4Cl8TtqyNjjQ9ETQQg==
X-CSE-MsgGUID: ZGyDHKJ9Qr6C3aXIP/+dpg==
X-IronPort-AV: E=McAfee;i="6700,10204,11345"; a="50936611"
X-IronPort-AV: E=Sophos;i="6.13,286,1732608000"; d="scan'208";a="50936611"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 06:29:11 -0800
X-CSE-ConnectionGUID: yhRmoxXxRES6C48rlt7aZQ==
X-CSE-MsgGUID: TGRmPjXJQTOYAIHGKoatJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,286,1732608000"; d="scan'208";a="118503735"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by orviesa004.jf.intel.com with ESMTP; 14 Feb 2025 06:29:09 -0800
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Date: Fri, 14 Feb 2025 15:23:29 +0100
Message-Id: <20250214142332.600124-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739543352; x=1771079352;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8ebCSotvFXFk2/Y8xiThO7AqnC7ddIlvXSZi4B79NY4=;
 b=jJoC006wSYWPJSeCP7nzNl31h1C/0fPZuPBOh/kc/jTKm1v7gky8yuIs
 nl3rrMmtAYBPlhhINNvw7IxFrwWHqsNFHeYtM8cgpO0nMqB2sDGd6avi1
 w4lQZz8xLZh0fEYIHQTec01J1GG+/zgTUt0zRSEdHifH6Zve+P1Ri+g7y
 QialaFM65UlE9nOI2DDYEEKPOBc8kCy2xg8z7kz5U4jxRbFMYXf0NaTbr
 jmF0lhi9gfGV3332NJQuazDrpOOo0aUw5yKP5VYcXtXcB8S95FbNPlhJo
 7cXWocJw/fDngC3wXgC5/t13O2hLo8e2dO7grMlgLnI9XF8W5tqoWRAo/
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jJoC006w
Subject: [Intel-wired-lan] [PATCH iwl-next v3 0/3] ice: decouple control of
 SMA/U.FL/SDP pins
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

Previously control of the dpll SMA/U.FL pins was partially done through
ptp API, decouple pins control from both interfaces (dpll and ptp).
Allow the SMA/U.FL pins control over a dpll subsystem, and leave ptp
related SDP pins control over a ptp subsystem.

Arkadiusz Kubalewski (1):
  ice: redesign dpll sma/u.fl pins control

Karol Kolacinski (2):
  ice: change SMA pins to SDP in PTP API
  ice: add ice driver PTP pin documentation

 .../device_drivers/ethernet/intel/ice.rst     |  13 +
 drivers/net/ethernet/intel/ice/ice_dpll.c     | 950 +++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_dpll.h     |  23 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c      | 254 +----
 drivers/net/ethernet/intel/ice/ice_ptp.h      |   3 -
 5 files changed, 1009 insertions(+), 234 deletions(-)


base-commit: 233a2b1480a0bdf6b40d4debf58a07084e9921ff
prerequisite-patch-id: 2cda134043ccfc781dd595052cfc60a3e2ea48ea
prerequisite-patch-id: 62ac41823e7278621af3745a171aae07508711c8
prerequisite-patch-id: 1330728a760d99174344cb421336ae9b01e17f38
prerequisite-patch-id: ff2afa3e3a2c60a590d17a880b610e2a37e7af0c
prerequisite-patch-id: cbff95efd09cb57e17c68c464ee1e317d01cf822
prerequisite-patch-id: e5be07f7b169f2443c034f04e3d0a00a8d0a8894
prerequisite-patch-id: a5f362eec88b62ff098203469cef8534f176d2a8
prerequisite-patch-id: 545b9e38f61ccfd5b33ab9c3e3a6e7a9f899e306
prerequisite-patch-id: a74b6b981ecd8a320284454d75b1dfc9e555b5f0
prerequisite-patch-id: df0a5f503065fa5869b1c915721a54eb3c7394cb
prerequisite-patch-id: faebd604b0a6eb2a888e99b8977f803abe035abf
prerequisite-patch-id: b7543662f5225ce13a1c95749504c68ef4733aea
prerequisite-patch-id: a7297c1e743f01d118c7f77b39e5755f7a704e17
prerequisite-patch-id: 6f036cdf7bca2a272b153ecc5b3a767f41517c38
prerequisite-patch-id: bb790f877236aad43dae0bdbdceb0a3553260d10
prerequisite-patch-id: 2f53433b0d2a98cd42b18429bdbec1542b175b1f
prerequisite-patch-id: cc9bf85bb9d988d92ab6cb1524bf213ec1351032
prerequisite-patch-id: 112c048b7ae143edda05244b0d8b5ab928d3eff4
prerequisite-patch-id: 124be0607c41aebe292c7b81910857489027baf1
prerequisite-patch-id: b6b5f0e405d566879133d53c26fd998e9f330ff2
prerequisite-patch-id: 777e25e09efe2ec4863e3bebdb247bac3e037c85
prerequisite-patch-id: bf13dbef14d654b243150d4f2603eb90ae497058
prerequisite-patch-id: 76f1c5ef5dacad0600339d5cf843ca14fcfa9dde
prerequisite-patch-id: 586431a13be4f1ecf0adf450242aa7e90975d38f
prerequisite-patch-id: e5c687a47edf3659dca8519e4c5250bbea89171b
prerequisite-patch-id: 9f8081c59e275240cd76911fbede7d2737473357
prerequisite-patch-id: f4d6edba52edea1276e0095e132733f4438de720
prerequisite-patch-id: 5e7afab1204a42d90b8b6a14e3881cf1d4987954
prerequisite-patch-id: 708e14a83a03377f2909b3ce0d72d21a4619a03d
prerequisite-patch-id: ae9720262fb8d1f92b157865f02a9fc7d9aa1582
prerequisite-patch-id: 11c806ab6cc8d29c86218d5760ca22cf3ef2ae05
prerequisite-patch-id: 1aae146d6c20d41b4785d37962052a52c320ac3b
prerequisite-patch-id: 59b00a073b5055091ccf55905e746a372dfc5e8e
prerequisite-patch-id: 5b640578751b48ab50748dbe6f864ce14f1978c9
prerequisite-patch-id: 725ea892cdefd598a1841323c6e74efe160dd3fe
prerequisite-patch-id: 03bb4b3b1f37211fbcd379a19ebff5621c9d901f
prerequisite-patch-id: 877ab147dd7c2e56beeb97bc4651fef89590cc23
prerequisite-patch-id: 798f81cfb09f75af615986689658787d29427e85
prerequisite-patch-id: 4e64a22702fa030f57436da273da1093153cfa7a
prerequisite-patch-id: c8b8f75ae6c949e68a8ee0b6e7b09344a700663f
prerequisite-patch-id: 19fed1ea4aaa320e4a4e46f9c39c7e994f09c7d9
prerequisite-patch-id: 546c7611f620c90a054da039dd19cbc7339edb39
prerequisite-patch-id: 272344e3e7ca650f3833ad62ffa75aa3b080fd72
prerequisite-patch-id: b1d967b8973ec9320e239653773c7caa9d54de70
-- 
2.38.1

