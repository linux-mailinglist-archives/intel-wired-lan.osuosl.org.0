Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 07A8F91EDA2
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Jul 2024 06:11:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A19D6607EC;
	Tue,  2 Jul 2024 04:11:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5OfJ0v8Ny3Lb; Tue,  2 Jul 2024 04:11:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D42C9607FF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719893510;
	bh=zrQaO2p1aLcLypYXJSz7QMcDNaOssb7yDbHo7HUHxlc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=4BybN8NdctihbB3syT5F2bMJi2Z5PtuWs5Nu9DmE+W0jefJcMxN0ayJRJyjIWngt+
	 LphIlDS69SitLrF2QBzMOKwp+RfM49aD1DCUXgrS4WwZJahEB9OrwncF0rt5AjHy1c
	 H5PSZ5IQP7yFkNFkGwvaqWOsN4tRwADIk76ot6/K+o8BF0vbSlKq856afr51roXAvy
	 FqX9inp5VMxpdCqJcfCJz6tRzSc+D0tBw8f6c0v7yLgHdlXsIbHMjw4i4oCiIxMWuB
	 X9V3dBZfYtK3p8l94XayaNckh0+yzzDYtaeDMSyzFbfTZKzw0bd168OBBAA1XHDULi
	 ahZlXXjyOKE5Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D42C9607FF;
	Tue,  2 Jul 2024 04:11:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B09971BF32E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2024 04:11:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9CA67607BC
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2024 04:11:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id luTFkV23nEpp for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jul 2024 04:11:49 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 882FF607AB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 882FF607AB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 882FF607AB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2024 04:11:47 +0000 (UTC)
X-CSE-ConnectionGUID: KIMSjkhQSTSLLZTGZ0szqA==
X-CSE-MsgGUID: ZM78evCJSWGXlUX/Grxjsw==
X-IronPort-AV: E=McAfee;i="6700,10204,11120"; a="27669422"
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="27669422"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2024 21:11:47 -0700
X-CSE-ConnectionGUID: qywdC6m6RkKYtYu1bUTvkg==
X-CSE-MsgGUID: 7B6Wink2Sd+W4YcsEk8E0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="76927270"
Received: from linux.intel.com ([10.54.29.200])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2024 21:11:46 -0700
Received: from mohdfai2-iLBPG12-1.png.intel.com
 (mohdfai2-iLBPG12-1.png.intel.com [10.88.227.73])
 by linux.intel.com (Postfix) with ESMTP id DF0BF201A797;
 Mon,  1 Jul 2024 21:11:43 -0700 (PDT)
From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
To: "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>
Date: Tue,  2 Jul 2024 00:09:22 -0400
Message-Id: <20240702040926.3327530-1-faizal.abdul.rahim@linux.intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719893508; x=1751429508;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mc4Zha+28ecEgqhpnzlYk/P3mGB1eaGefj2BgbUSpPo=;
 b=JoTatE/O6gfGEJXSMrEt6a+GwmFptWzeaL1FL7+4FZJcNpe+JjMou8qT
 pCbLP+0nGIueX8vWzXn9hdI9sgsncoLMjA0/gtp5NQ/edg7/FW2Y9BsTL
 8e1sDN3Nlm0AU74Dsa1AyeV68jZ11iltUHng4DJMzLwOl0YrWxw9Iw+gE
 FhBbsA/X/nsnBCjWOE2HBCrH2liqC0PVpRhKm6sopwPDYbugWme0Yy7tl
 immfZMBqkhTvQ7mOovRIPOSCdai3Jbffq6nMMuVRSzYHD4aTRs0ILGdvA
 HkSHqU43SYLapV3xgBwKNcOhLW941yZoSjl1HFrxtnlRelAf2+tECLuTk
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JoTatE/O
Subject: [Intel-wired-lan] [PATCH iwl-net v1 0/4] igc bug fixes related to
 qbv_count usage
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

These igc bug fixes are sent as a patch series because:

1. The patch "igc: Remove unused qbv_count" has dependency on:
   "igc: Fix qbv_config_change_errors logics" 
   "igc: Fix reset adapter logics when tx mode change"

   These two patches remove the reliance on using the qbv_count field.
 
2. The patch "igc: Fix qbv tx latency by setting gtxoffset" reuse the
   function igc_tsn_will_tx_mode_change() created in the patch: 
   "igc: Fix reset adapter logics when tx mode change"

Faizal Rahim (4):
  igc: Fix qbv_config_change_errors logics
  igc: Fix reset adapter logics when tx mode change
  igc: Remove unused qbv_count
  igc: Fix qbv tx latency by setting gtxoffset

 drivers/net/ethernet/intel/igc/igc.h      |  1 -
 drivers/net/ethernet/intel/igc/igc_main.c |  9 +++--
 drivers/net/ethernet/intel/igc/igc_tsn.c  | 49 ++++++++++++++++-------
 drivers/net/ethernet/intel/igc/igc_tsn.h  |  1 +
 4 files changed, 42 insertions(+), 18 deletions(-)

-- 
2.25.1

