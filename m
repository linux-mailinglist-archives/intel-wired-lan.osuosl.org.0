Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D849C85FB93
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Feb 2024 15:50:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 84FE74190E;
	Thu, 22 Feb 2024 14:50:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E1b4Ec1A7XvB; Thu, 22 Feb 2024 14:50:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9211140545
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708613437;
	bh=DNioT5a4lTcVK1nsBVAB9z1G7dRD0pn5M35G38MxJHc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=rtyCbbOfeQPUCG8w4TIqR0smXeIgiG3nqhl+0x+7fvRuensLmr4xnBq54w8PKgFx5
	 kRNenIdGRUtCF9kirzPbykiRPRGEuMjYdikx2x4jPcsWWreSzwxt5Q2u/+MF8wgP81
	 sR7xOmV7aZbe8Uz2RUuOx11grPVLP1JztR3/LBFTOSBmJ2cM04EaTk5shwGcyoazI2
	 LA/M5EHuRiUGEktzy93RdNZStHHEBHH5C+v8cSBg7XU3I3cmxFCUjaCccWpXVdNncF
	 VHZX7tqYfSOtCcJ2Z2rQGLBZNp7EUMBfNj2L4NL2fOXtin6ZO9XDR1AbNMwt/qG7fv
	 qnfamgJVMi45A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9211140545;
	Thu, 22 Feb 2024 14:50:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AECBA1BF59A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 14:50:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A77B760E2F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 14:50:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V78f9SxXkZrw for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Feb 2024 14:50:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6D3D060E3A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6D3D060E3A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6D3D060E3A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 14:50:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10992"; a="2949290"
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; 
   d="scan'208";a="2949290"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 06:50:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; 
   d="scan'208";a="5670920"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by fmviesa008.fm.intel.com with ESMTP; 22 Feb 2024 06:50:31 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 22 Feb 2024 15:50:22 +0100
Message-Id: <20240222145025.722515-1-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708613434; x=1740149434;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ai+POYHLNKjc0oXBJKD89ThCIyYIBpTvizWJxsexl1s=;
 b=Xy4wrnf2PfZDC/TZpcTD/CVE+BjAKXNwgDIw6dvzhoyDSMba26rz8e8H
 9BWjYJ1jS1Fv1LaqjzBuOx9vsJ9KmQZisVp2bmVcZxOHVftterH/i0dOy
 atZ5ys6e9kxxEyuBeSomY7M77ERy4jcJKHhbqhdxWfpoUGiQ+Q3OM4i4e
 rxhvdOO1NPROd/FBunDXlf31VYusxlUVc3FlQVOtxsyyijjDwWN9NZz9z
 COGcItiF0S/8U4adXeE6y7IfTLMZXOfTmWK9gVJW7XdNIS+GJ20c8zYRx
 PsbrFaJqZhucNFDQtdO7w0Iyh9CFP+APna/j+tnwpkleeywXb0vsznogY
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Xy4wrnf2
Subject: [Intel-wired-lan] [PATCH iwl-next 0/3] intel: misc improvements
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: netdev@vger.kernel.org, Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 anthony.l.nguyen@intel.com, magnus.karlsson@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

here are not related improvements to ice and ixgbe. Spotted while
working on other issues. First one takes care redundant Tx disabling on
ifdown. Second one is about rather obvious getting rid of devm_ usage
and last one is plain refactor of stats update.

Thanks!

Maciej Fijalkowski (3):
  ice: do not disable Tx queues twice in ice_down()
  ice: avoid unnecessary devm_ usage
  ixgbe: pull out stats update to common routines

 drivers/net/ethernet/intel/ice/ice_common.c   | 23 ++++----
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  4 +-
 drivers/net/ethernet/intel/ice/ice_lib.c      | 55 -------------------
 drivers/net/ethernet/intel/ice/ice_lib.h      |  2 -
 drivers/net/ethernet/intel/ice/ice_main.c     | 44 +++++++++++++++
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 54 ++++++++++++++----
 .../ethernet/intel/ixgbe/ixgbe_txrx_common.h  |  7 +++
 drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c  | 17 ++----
 8 files changed, 109 insertions(+), 97 deletions(-)

-- 
2.34.1

