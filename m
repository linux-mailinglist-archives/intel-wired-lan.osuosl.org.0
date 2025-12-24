Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C971CCDCA7E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Dec 2025 16:17:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E625781260;
	Wed, 24 Dec 2025 15:17:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YE5P-biz4UYr; Wed, 24 Dec 2025 15:17:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6DE488121C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766589450;
	bh=gGWuTJdyvySiWfAASA251NRmq/c7xS9B99//sMiHEYM=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=hVBorc/eEx8x6QjUtivQIa23zL8pmAYLKOTrj1cDyH45Rf0Ac5bC6tF70GILIm9g+
	 3+DiIQqm4XC8hMlSPQrcAKDJTOoS1m4H9FoYlUYDTIakLcOppASTIRrpsXQuG67Rju
	 Dv9EGwr+1x60y34IQiXos1AkOoM0e3+FsL0Y0NAP6aAE08yXpnANIL9nWByKBb6B2U
	 SDVg+HyPDtqwksRyu9qmhjqYqD5aBS5FgxtG0QVV1fCBl4CtoC+eSjFHIC34GPbK1h
	 m5RI1yRV93kKkEhU3iw336GEmDNQ76jp+0pUjQYElE1qF0hwYe0WSFcdW8adEIik8c
	 2Ww4YU4lehzlQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6DE488121C;
	Wed, 24 Dec 2025 15:17:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3E869BE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Dec 2025 15:17:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 242E360697
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Dec 2025 15:17:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xRUwsjGo2g21 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Dec 2025 15:17:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6ACF560652
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6ACF560652
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6ACF560652
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Dec 2025 15:17:27 +0000 (UTC)
X-CSE-ConnectionGUID: 770UzxGJRGa0L6QtM4gWvw==
X-CSE-MsgGUID: hHIHwScAQOKbHEYgUoCPQw==
X-IronPort-AV: E=McAfee;i="6800,10657,11652"; a="68583278"
X-IronPort-AV: E=Sophos;i="6.21,174,1763452800"; d="scan'208";a="68583278"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Dec 2025 07:17:27 -0800
X-CSE-ConnectionGUID: 85ZYxzLBSDCSCdI+tQUB9g==
X-CSE-MsgGUID: Cp99QbOsS06SMIhDbQ25aA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,174,1763452800"; d="scan'208";a="204574546"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.70])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Dec 2025 07:17:26 -0800
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Vitaly Lifshits <vitaly.lifshits@intel.com>
Date: Wed, 24 Dec 2025 17:17:18 +0200
Message-Id: <20251224151720.1427716-1-vitaly.lifshits@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766589448; x=1798125448;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=o28uHV2+xigY0GAg4sLI0GCP954q6b0cxe4Iw86eVWg=;
 b=Y1qFfx+E/wjJOE2TgKbkGoZ2MbaxdpqzcX2AWpRbam5wyRkKyIuhoRQS
 6hdF+zkmkAwRJgILF11Cnb4nhvF646xWjuiUIaPu/B5heDZOk19l34xZu
 VU9v/Sk9mkviBC5CY7oMpyAcG6nCeUvozmle/BP6Mich04H1JgjydDA1f
 IXIcZJvDwGZRXgOPY/b2hURWquJ6vMDLZAdWybIzkyP8LxQtw+hiqTkhJ
 h41654SiLU10Nf18CJ/q7RO/bLM8H+SQmDqGMaVUNzcCT8Y2VdxfAMeSk
 AyuNgzvxII+uDqUsxqr7tWZu2sUGTz6nih8bfGf9LIw2Aek4Q6+Xhwg5G
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Y1qFfx+E
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
 drivers/net/ethernet/intel/e1000e/ich8lan.c | 29 +++++++++++++++++++++
 drivers/net/ethernet/intel/e1000e/netdev.c  | 15 +++++------
 5 files changed, 40 insertions(+), 11 deletions(-)

-- 
2.34.1

