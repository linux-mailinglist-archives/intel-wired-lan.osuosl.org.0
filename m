Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A06A81462A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Dec 2023 12:03:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C6B8E83DB1;
	Fri, 15 Dec 2023 11:03:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C6B8E83DB1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702638232;
	bh=U4209t8e/fb6rgCqbLqCMuavtPXgQmWhVHw3AOuXcGM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=d+nFh3rtkAjbWY/qzvLze7T7O05bGel+29Ps2zcWYEzfPGfVpE5bDNSH+yv2I8HAV
	 mpXdTi4nsDqXy+QbzLrvTA1BuCctfpUPC6kUYu/TNH3KS5NglfuTX2dORu31h9COsW
	 2rEHI63eNvhInwvuxzUdXseMHwe9C2y2o+/N78oJI8JdCqFyGU4hN/Gan14XrMfwT1
	 fiMdQf3Pt4vEa5UMa22LeWAiOSJkmV/UlXS/ePp1PlWlpzc7ktiuRhFPp27bNvt3vI
	 n4ck0uqQrBOc1wlX7dtwz0n8iEXLSniNbaqcixYmBtUxfsnXhSku61etoZ0iYlaw63
	 TSrv/0izs9Onw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fw5EfZPCunnv; Fri, 15 Dec 2023 11:03:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5864A83947;
	Fri, 15 Dec 2023 11:03:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5864A83947
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0251F1BF83B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 11:03:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D7A6E83AB2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 11:03:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D7A6E83AB2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B2zMTZTLKzlY for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Dec 2023 11:03:44 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0736381EDE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 11:03:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0736381EDE
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="385679104"
X-IronPort-AV: E=Sophos;i="6.04,278,1695711600"; d="scan'208";a="385679104"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2023 03:03:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="918408307"
X-IronPort-AV: E=Sophos;i="6.04,278,1695711600"; d="scan'208";a="918408307"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga001.fm.intel.com with ESMTP; 15 Dec 2023 03:03:42 -0800
Received: from rozewie.igk.intel.com (unknown [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 60C7B39C82;
 Fri, 15 Dec 2023 11:03:41 +0000 (GMT)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 15 Dec 2023 12:01:55 +0100
Message-Id: <20231215110157.296923-1-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702638224; x=1734174224;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ifBqiRbZSFJIDtKEP14esPwUo7A2NcTv92fXWwVO+E8=;
 b=LS/AVTEyk/foXkfrD7L0/tdInODoPXqwCokAsdPKr7kvGb1i6h38DhqM
 q/V3TkdOAvM1an2s3J/Os1n2ipOESMh1OybYJyra+0pKTxqa6NRHfF+nz
 AQiM3JFTnhC/vRVV5UD1Lm7ztA7RGaCBPRjfcA9Vi7i2Nx0vkJGJZFYj9
 rsVjXv24/O6JSpry5HPRO1RP+pjBeUF1xm7C7yG7SBzQldM13ecgFKCqi
 QSm/SJ3NTgRLqbf8/+8OGjD5FkGPZlkj9LZqUtGrk8IwCxrHxX1h18VQj
 rLyk+dwbuEF0ue/a2PiT4967ulrMzH1FhDziyf5zWECRtTRUAXscNUoPb
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LS/AVTEy
Subject: [Intel-wired-lan] [PATCH iwl-net 0/2] Fixes for link-down-on-close
 flag
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
Cc: netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Small series of fixes for link-down-on-close ethtool flag usecase.

Katarzyna Wieczerzycka (1):
  ice: Fix link_down_on_close message

Ngai-Mint Kwan (1):
  ice: Shut down VSI with "link-down-on-close" enabled

 drivers/net/ethernet/intel/ice/ice_main.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
