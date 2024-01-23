Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CC5F4838E0B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jan 2024 12:59:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5999C81444;
	Tue, 23 Jan 2024 11:59:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5999C81444
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706011142;
	bh=2YthHp11SssUVkbiadhX2tOUjjSy3xNryq2DsI5BBzs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=2oPdlhancAOF32PZrDuCAGZBZLxedRdOTuVWHznvjRmQJJiZ8o57aeW8Oc7zGIX20
	 epnogkcyaBg4Qs1acfhp1BqDK6cSLXNlMsOf8PIPA1Su5SdwJAgiVog7fT2IGj3Vi6
	 Fp5zS+ukA8BlQkUKgQWk5ed1tcZrZxl0msWOYrI4ryXFdvY3n8cuqptV7rdY3SvuPa
	 uMINnuMPHCpBC3Y5Qwgdfb+bcvq5zBy5HG9UR4OXoGBSoOhyTy4cvajkBXRMc2/jkW
	 q1K4CJMqrDu3DJ3dBLMSAvLZHOQmhsahgRD2S/m9ULjwvkGviODQIodyBAvaG1mHJl
	 pGvxTe1HCLpVw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xoP43FUj_E8V; Tue, 23 Jan 2024 11:59:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 79D5281447;
	Tue, 23 Jan 2024 11:59:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 79D5281447
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EA3E01BF3BC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 11:58:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BFB3B402F5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 11:58:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BFB3B402F5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cgVJ6244TCfo for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jan 2024 11:58:54 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 032CC400C8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 11:58:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 032CC400C8
X-IronPort-AV: E=McAfee;i="6600,9927,10961"; a="22968559"
X-IronPort-AV: E=Sophos;i="6.05,214,1701158400"; d="scan'208";a="22968559"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2024 03:58:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,214,1701158400"; d="scan'208";a="27726675"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orviesa002.jf.intel.com with ESMTP; 23 Jan 2024 03:58:50 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 23 Jan 2024 12:58:44 +0100
Message-Id: <20240123115846.559559-1-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706011134; x=1737547134;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1bcccqTa96mUpHCwKNDIE1Dq4lVJdFzX/5s9BZMZVoo=;
 b=H9s+iuZAweX0+Pb3k5IPHfgrfEeIslq+kMnkRZg3DFMsZ5psHSkjre5O
 uML3y4knkVJ7i281mkKOvN+Gy0wIFd0ATxQzqDIjGfX189P+wg9gBF5Y0
 vFyVbdEk/C9Kkf+3XorQHuEMdRQ/lHO0795GDLJpM69Sts08pQdbg4iyo
 RndNn0M55NAZXmWcZ3prpGtHaNXF4lzmH6dFEq+c4pPDfKoPjyvjgo0/k
 /cj3YHPSBInx6nf9I/eaOlDfQ0ZgIat/y144fvERad0wmD4JKP7CuI3Uz
 6IJ1vxkO4IifghOMwPi4YLd5Jhx0IusR7XeHL2MIlVMVZ7cm0GZMEc/u6
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=H9s+iuZA
Subject: [Intel-wired-lan] [PATCH iwl-next 0/2] ice: use
 ice_vsi_cfg_single_{r, t}xq in XSK
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

Ice driver has routines dedicated for configuring single queues. Let us
use them from ZC control path. This move will allow us to make
ice_vsi_cfg_{r,t}xq() static.

Thanks,
Maciej

Maciej Fijalkowski (2):
  ice: make ice_vsi_cfg_rxq() static
  ice: make ice_vsi_cfg_txq() static

 drivers/net/ethernet/intel/ice/ice_base.c | 134 +++++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_base.h |  10 +-
 drivers/net/ethernet/intel/ice/ice_lib.c  | 129 ---------------------
 drivers/net/ethernet/intel/ice/ice_lib.h  |  10 --
 drivers/net/ethernet/intel/ice/ice_xsk.c  |  22 +---
 5 files changed, 142 insertions(+), 163 deletions(-)

-- 
2.34.1

