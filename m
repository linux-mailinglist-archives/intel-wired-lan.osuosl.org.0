Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E988CCF7C21
	for <lists+intel-wired-lan@lfdr.de>; Tue, 06 Jan 2026 11:22:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 29B0E40279;
	Tue,  6 Jan 2026 10:22:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UYsxZ0sqfF0A; Tue,  6 Jan 2026 10:22:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CAF2B4074D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767694921;
	bh=fZfPmByYVpu/Nqb+LxUOxLb14U7Hwjt2Md2Zf7McUrQ=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=epqNLmgy3kDKl7P4AGuvCYziI5dkAujq2k/O3Pjty42STqcXPrn+FiojApyVV6e5V
	 kLlek7pa6lrkOmhbuHuK6S9HLvBN+ply7Kcotd+KJniLUX60dZ7MdjJ9JNk5t4wBXn
	 wfNMswOsrUrG7cKqut6Zj8TaL2cvJ25rHnOv/t/kJSDIflla9qju4A5Ny5dh4ZKmgV
	 jWdqOlOI9eYHZnLZ334OwN8AZYxZasqCuQAI7RDmv2qoBpJdlAaAxnZqIjw+ZhJyXp
	 X89qDO7RXKSrW6sjo5SOwdju3kbKqQxDCIvvAQK0Mcjq5nFnipZy9m/GYmebnNB/B7
	 o6NrcYhwXvhDw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CAF2B4074D;
	Tue,  6 Jan 2026 10:22:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2FB26E7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jan 2026 10:22:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 15C36607DD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jan 2026 10:22:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2BvntQl9ZBpt for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Jan 2026 10:21:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6356D60782
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6356D60782
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6356D60782
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jan 2026 10:21:59 +0000 (UTC)
X-CSE-ConnectionGUID: X4i3pZ93Q160sD5sT4cDcA==
X-CSE-MsgGUID: Y+sF3oG2TU6HvDP7zXNe2Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11662"; a="68966577"
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="68966577"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2026 02:21:58 -0800
X-CSE-ConnectionGUID: sO7QWi75TN6F8PGe66Coaw==
X-CSE-MsgGUID: xhe3hQV8RWexuLfe1hlgdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="207175213"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.70])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2026 02:21:58 -0800
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Vitaly Lifshits <vitaly.lifshits@intel.com>
Date: Tue,  6 Jan 2026 12:21:51 +0200
Message-Id: <20260106102153.1577396-1-vitaly.lifshits@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767694919; x=1799230919;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7E/V6wa+xEKGALnOW8FjMhDEOahRQGiQG5dP/Vyg7To=;
 b=aqelQz1H01cKmJ/LyXE7lm+bleeYQLfPbnwX+81GwPMGx3HGjc+qiY3X
 E/xw2OSinzuEP4+XRY9kJdPdaGLsrNq2bK3vIIfWM9yyZ2/UxCjudk0Uk
 P+prax8+g3J6V6wCgcqeHGVRtVdENo1XuIJ87scN/jV5wq4xAwHk+yigX
 YS2CJdQb5X54MBa1x1aac4sUHBNQ3IOo3f+1JQwGrKURaCv0Us2AR280m
 Y8SiIdneLISNiQoJAwUM6fw2BInjMBTcVAL0BCHTS0nltdqYgOXoCaX3I
 FUd+5KCbfRv/1iPXkL6LJ1L9pw/5dcX4XJc2UI1/tl9bhqKvj1WqVdsn4
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=aqelQz1H
Subject: [Intel-wired-lan] [PATCH iwl-net v1 0/2] e1000e: avoid unexpected
 autonomous power-gating on PTP devices
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

Panther-lake systems introduced autonmous power gating feature for
supporting low power state in shutdown state. As part of it, the
reset value of DPG_EN bit was changed to 1. Therefore to avoid
errors such as Tx/Rx hangs, packet loss and packet corruption
clear this bit after performing hardware reset.

Additionally, it requires introducing a new board type for separating
Panther-lake devices and above from the older once.

Vitaly Lifshits (2):
  e1000e: introduce new MAC type for PTP
  e1000e: clear DPG_EN after reset to avoid autonomous power-gating

 drivers/net/ethernet/intel/e1000e/e1000.h   |  4 ++-
 drivers/net/ethernet/intel/e1000e/hw.h      |  2 --
 drivers/net/ethernet/intel/e1000e/ich8lan.c | 30 +++++++++++++++++++++
 drivers/net/ethernet/intel/e1000e/netdev.c  | 15 +++++------
 4 files changed, 40 insertions(+), 11 deletions(-)

-- 
2.34.1

