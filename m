Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B67B7068D2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 May 2023 15:03:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A5102429E4;
	Wed, 17 May 2023 13:03:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A5102429E4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684328622;
	bh=slFmYUDchfPoPeQhjiNZxA+PoYsSioYRRd4IbXe2xME=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=f7ZWDFlI7iar3r1ESO0pDuq4swXIV16dcMU6iVey2KEJC8SledJvTy7LWwyE5yHmn
	 lBHSKpuT6Q4mVeZmcivfUqVG6PdFMH6Avgex8Jk+R9S/THqDzMfdaIQ3qiVB1GX5Q/
	 5ZKpi55qUHJEFT7Kijmzt7V+yy5lT6ZdfbGCr4LOSbJjWL1sGAgLnkVbqFPmqTVii+
	 gxyu2/VCi5QglkV5fTAKjKnTs0K3vGUEAbhhiAYceR27FUsgMp4i+QmMVYPiFAErew
	 Immcrp8F5Sye36YHS6s517qNpZhH5htniNZ4RXnKN50RHw7AmmsrEd0+bst7WE/2nl
	 yzXlvrBCcwqiQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vvlreiYM9BOr; Wed, 17 May 2023 13:03:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6848340182;
	Wed, 17 May 2023 13:03:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6848340182
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4F4051BF489
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 13:03:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 24951405CE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 13:03:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 24951405CE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b22H_KQrh2_S for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 May 2023 13:03:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5A26F40182
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5A26F40182
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 13:03:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="332112190"
X-IronPort-AV: E=Sophos;i="5.99,282,1677571200"; d="scan'208";a="332112190"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 06:03:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="732418367"
X-IronPort-AV: E=Sophos;i="5.99,282,1677571200"; d="scan'208";a="732418367"
Received: from pgardocx-mobl1.igk.intel.com ([10.237.95.41])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 06:03:28 -0700
From: Piotr Gardocki <piotrx.gardocki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 17 May 2023 15:03:21 +0200
Message-Id: <20230517130323.332462-1-piotrx.gardocki@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684328615; x=1715864615;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xrxODUmPKKMGPmZugmCF5BOwuF4i5BzlArV966rFs90=;
 b=nPDPdDFgMMezJFqZanlYLSkfJP9DHJpuxBa6jK+p7IJLY5xtgrtx/1hs
 SW33jCPFbl5ZHjh5Y3a5hcVZX2UDxRI+SzBr/zVReUp7317GaGFMPuHyq
 IKmf/3BSkBEhKVwqLuSY+AsjkExErO+JOf0zA7Mm6eEHF2wwx1SNKeIiJ
 hwp1EGXfAlayKAUxQiRSbtjGbhMv1OyYUIw/KQnwjMDeI0FzuNhUAi/Ti
 38Nb62DozuSOCkw8NeNKu7MTUbTtX450h3pn987+6f1uTLugSPrVJneXA
 ZKc0JUvZkZohnLblITJbuNisV8foVXU8+uP/FREBckeEMm3D15myD6h7Q
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nPDPdDFg
Subject: [Intel-wired-lan] [PATCH iwl-next v3 0/2] iavf: cleanup procedure
 for changing interface's MAC address
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
Cc: przemyslaw.kitszel@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patchset cleanups .ndo_set_mac_address callback in iavf.

The second patch addresses potential issue with iavf_add_filter function
failing to add a new MAC filter to the list. However, it does make
an assumption that the new MAC address is different than the current one.
The first patch protects from this issue by skipping the entire procedure
if the MAC address doesn't actually change.

Without these two patches iavf is sending two AdminQ commands to PF driver:
VIRTCHNL_OP_ADD_ETH_ADDR to add new MAC filter and VIRTCHNL_OP_DEL_ETH_ADDR
to remove the old one. Even though it does not seem to cause issues, it is
very error prone. Skipping these callbacks is more reliable.

v2: added missing Signed-off-by and comma in second patch
v3: fixed malformed second patch

Piotr Gardocki (1):
  iavf: add check for current MAC address in set_mac callback

Przemek Kitszel (1):
  iavf: fix err handling for MAC replace

 drivers/net/ethernet/intel/iavf/iavf_main.c | 48 +++++++++++----------
 1 file changed, 25 insertions(+), 23 deletions(-)

-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
