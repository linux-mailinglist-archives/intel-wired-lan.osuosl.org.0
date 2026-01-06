Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 670DCCF8B50
	for <lists+intel-wired-lan@lfdr.de>; Tue, 06 Jan 2026 15:14:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 07CA481377;
	Tue,  6 Jan 2026 14:14:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IuIiKQQrF6Ae; Tue,  6 Jan 2026 14:14:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8526F811D8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767708868;
	bh=xFG3BJ624usPSGnivONLo04Z0mjEw/zmioXcunXNnJ0=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=YObXKbDBxBwA4+5b6s1T1KPwWD2iy8WD2YBF7YaFejceTofnNdfWAqFyV8FTJYBot
	 ELA9p7n8NtvmzMYlLI10X5BeJuQfwQ5MKtd30ehSH5DznBLpIWd1fsFcTmpySgPvma
	 NPUkWZspUHnTCzE8mFX+fKmL3fXuvpFOFFeQmvrVkVQ1Hnx/WGzwONP7TzIWgKEHQ9
	 lZwaYP0qo/I10qt/+Son4kZZ6LHdn4866G6cqHmVxrnh7bj7NENRFXgJFGh21vYw4y
	 HZ29t0t9q6Y31VOqpv9AYY9kYzinmgBbWEKyzk4PiBVo0SORwmHtjAr87/UPuPlMMi
	 G442Vwn3iqlGg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8526F811D8;
	Tue,  6 Jan 2026 14:14:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 030BB249
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jan 2026 14:14:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E990940895
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jan 2026 14:14:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2eA8D6dz8i0i for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Jan 2026 14:14:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2877C4088D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2877C4088D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2877C4088D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jan 2026 14:14:25 +0000 (UTC)
X-CSE-ConnectionGUID: xqPmmlV6SlK6HBspUs+4dA==
X-CSE-MsgGUID: dKPN6skbQjGh+Kg1Fc677w==
X-IronPort-AV: E=McAfee;i="6800,10657,11663"; a="86491207"
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="86491207"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2026 06:14:25 -0800
X-CSE-ConnectionGUID: AubAiMGhSleQ3ls/OMQ9nw==
X-CSE-MsgGUID: jkBwwicYTfavP84DJduqeA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="226199273"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.70])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2026 06:14:24 -0800
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Vitaly Lifshits <vitaly.lifshits@intel.com>
Date: Tue,  6 Jan 2026 16:14:18 +0200
Message-Id: <20260106141420.1585948-1-vitaly.lifshits@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767708866; x=1799244866;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=b4LiLGy9J30wtCycH47itDGhNDto6H3hMhEStmVsEgM=;
 b=VdaEzGPnMuL0G7xhLUEjPg6T/H8dtPVeAfRda1y3oEs64D67JA99Fu54
 jPq5Jmv5STJtK5pZmkG4uMYSiRlCMS9g+WTd5myamtBz1TKrJUz58Fa8P
 wAB/1gR482PtOaqoutqDfxxPsxbZgfEF72gwLjb9OkcPpislhIoGtO9d7
 X75Z+wToxIeW2ZgtNaJ6Cv+5koWDcpEwfBQ+mS/Jrq05/7CnW1rbXNihU
 Yz8mcPvO9KGPCoIb6MLycRezR/v4nqsSTjNWkzC5KMhkFrsn8Wu6a/GH9
 FVVrJj1OV8EiDFyb4kfd/qFO6i8gDTL6bn+PxIyLxR94tBBfTJhOQx1sE
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VdaEzGPn
Subject: [Intel-wired-lan] [PATCH iwl-net v2 0/2] e1000e: avoid unexpected
 autonomous power-gating on Panther Lake devices
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


Panther Lake systems introduced an autonomous power gating feature for the
integrated Gigabit Ethernet in shutdown (S5) state. As part of it, the
reset value of DPG_EN bit was changed to 1. Clear this bit after
performing hardware reset, to avoid errors such as Tx/Rx hangs, or packet
loss/corruption.

This patch requires introducing a new board type for separating Panther
Lake and later devices from earlier ones.

Vitaly Lifshits (2):
  e1000e: introduce new board type for Panther Lake PCH
  e1000e: clear DPG_EN after reset to avoid autonomous power-gating

 drivers/net/ethernet/intel/e1000e/defines.h |  1 +
 drivers/net/ethernet/intel/e1000e/e1000.h   |  4 ++-
 drivers/net/ethernet/intel/e1000e/hw.h      |  2 --
 drivers/net/ethernet/intel/e1000e/ich8lan.c | 30 +++++++++++++++++++++
 drivers/net/ethernet/intel/e1000e/netdev.c  | 15 +++++------
 5 files changed, 41 insertions(+), 11 deletions(-)

-- 
2.34.1

