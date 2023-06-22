Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F2E473A22A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Jun 2023 15:49:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C00F083C01;
	Thu, 22 Jun 2023 13:49:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C00F083C01
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687441747;
	bh=yprlL/JuR0zgg8rJfg5H7yl39iXAr14dYLHPX0tko7s=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=u4irSKuvpV/k/JzwI2AlFFy4JuAmCREJv5Jdoe02QXnpkpCSm9WXKQ9jE09HWPtpR
	 tpmsunN8jD+ORV6S1nvZJ78hpKlmhf64VFDo7Pe/LEZ2feWoBPHhf/algJrCctFxcv
	 7dJIGGPAT1F+1BT501VKZYhU72H73E4TkRhc0vtClPP9UEoGkutquRJEEND9XP5kWn
	 tWlcQqJHMHxBpjZLeNEFSdVrYuii+bc8SLSBYnkvvH+NVWofyhteDlKb+IFFkvOWHj
	 o4NCtBhxb/uVREy8uIkLECBvEfGYibuNCwl3nG3ZyQVmVhh1jImzBYkAhnOsipOb3j
	 EWQVHZAJkRjlg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xl95radScEAF; Thu, 22 Jun 2023 13:49:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 58D0F83BC8;
	Thu, 22 Jun 2023 13:49:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 58D0F83BC8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 384831BF356
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jun 2023 13:49:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 10B8460D64
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jun 2023 13:49:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 10B8460D64
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K0Zm1Vo9DEFH for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Jun 2023 13:49:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3CA0E60AAD
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3CA0E60AAD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jun 2023 13:49:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="390234090"
X-IronPort-AV: E=Sophos;i="6.01,263,1684825200"; d="scan'208";a="390234090"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2023 06:48:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="804791810"
X-IronPort-AV: E=Sophos;i="6.01,263,1684825200"; d="scan'208";a="804791810"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by FMSMGA003.fm.intel.com with ESMTP; 22 Jun 2023 06:48:58 -0700
Received: from giewont.igk.intel.com (giewont.igk.intel.com [10.211.8.15])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id C075734918;
 Thu, 22 Jun 2023 14:48:57 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 22 Jun 2023 15:35:11 +0200
Message-Id: <20230622133513.28551-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687441740; x=1718977740;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5bqKBe2QicSBfNf44K15xcLQj/tbykVfFY2zzwg5tFo=;
 b=jhzs1bQAUjjLUaZKvs4UUcMfvl0jTrRAl9LLxdAIcYyGVGR+/dFG6rG/
 81enqReSfJxQ0WrbAoVytA8n35Uy9lfdVXTUaV96gEdUNeqBXfnR6uvM+
 GpcuVHrPX7pmtFwqCuYq1jxSraxEBFgMnsUQEM0M4W8grVKyns4doFKbw
 qfNjrN3EQBP/bITSdRAI6P1vhCMvE1deIOypmDITCl+kLniVfhh9Rk0fS
 KQCz6oJpUF167iMlBeg/Wwvf7ETr1V6R6E50VUfysTYcLrF8tL7h3qqEE
 9UMEwi8ZtEHp3HVphQ2AATWOCq9WtHykF8PUxnuKekgzjtOUQ5dqx2mbs
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jhzs1bQA
Subject: [Intel-wired-lan] [PATCH iwl-next 0/2] ice: Direction metadata in
 tc filter
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

Add matching on direction metadata when adding a filter via tc. Also rename
related enum values for readability.

Marcin Szycik (2):
  ice: Add direction metadata
  ice: Rename enum ice_pkt_flags values

 .../ethernet/intel/ice/ice_protocol_type.h    |  9 ++---
 drivers/net/ethernet/intel/ice/ice_switch.c   | 11 ++++--
 drivers/net/ethernet/intel/ice/ice_switch.h   |  1 +
 drivers/net/ethernet/intel/ice/ice_tc_lib.c   | 34 +++++++++----------
 4 files changed, 32 insertions(+), 23 deletions(-)

-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
