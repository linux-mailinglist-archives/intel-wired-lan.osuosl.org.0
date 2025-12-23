Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 61B06CD8A4D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Dec 2025 10:50:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8251282382;
	Tue, 23 Dec 2025 09:50:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u0E7RgzxiE_Z; Tue, 23 Dec 2025 09:50:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0E6758246D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766483441;
	bh=i95/wuX9ie0C4o3sv55cywBlzg+xWRXM07eqMhKAdLo=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=i1tO2UqJuk+ibsWx3RwU/bJecAYF0IW8v3mynNRJDLrWq3i85nGAJidn/Vy/6LBT0
	 dhXvBwIzPuZ3k/arK8OWP0rfLzKGIBV6Rqxr/NB4YJBiXFiJ2DjQr3s39JGyPHajI1
	 73hsGKDQfNPkuaqU/Fb4moL4qxAGigEc5FrHtiExwAhTqnTCaQLK2TV3H8FX6IiYvR
	 Rj3lqcKje/gJHHSV4okpEjlYCeMx1m0yflpTQ2GvyA7AcZajyc2OhdLxqSXvjmrXJl
	 st9HE/P6PWcWHlBkzQegDclKlWb8B0KvHf8i3uYQM+4uOKIBZ+K587SqbqtqE4VuRn
	 qZjP5Pw4cOmyw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0E6758246D;
	Tue, 23 Dec 2025 09:50:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id ED239119
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Dec 2025 09:50:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DF9424069A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Dec 2025 09:50:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sUdVv-715aFo for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Dec 2025 09:50:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2323340698
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2323340698
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2323340698
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Dec 2025 09:50:37 +0000 (UTC)
X-CSE-ConnectionGUID: LP6G+ckaRAGV4UzGV6uuEQ==
X-CSE-MsgGUID: MeTgaXcEQa6GV8Z0+/cutQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11650"; a="68226475"
X-IronPort-AV: E=Sophos;i="6.21,170,1763452800"; d="scan'208";a="68226475"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2025 01:50:37 -0800
X-CSE-ConnectionGUID: dY5hqBu2TIqcuAUXf3QBxg==
X-CSE-MsgGUID: xPfZcqZpQzOkIcn0WUvX6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,170,1763452800"; d="scan'208";a="199504632"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.70])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2025 01:50:36 -0800
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Vitaly Lifshits <vitaly.lifshits@intel.com>
Date: Tue, 23 Dec 2025 11:50:30 +0200
Message-Id: <20251223095032.1379862-1-vitaly.lifshits@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766483438; x=1798019438;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xGa/FZHpL2q2+x2jWu/6X0R16TLHAuwILGmAaIGl8pI=;
 b=jiFNM+/Dku1GaAd9BZPHeqs8f22VZkV/dXjVdfT08lz7+JoAW6MujrYQ
 +KrDXKymJtj51vzc/KVwt/Pzy9lBVNNE7JGplINT6XC2OxosXyxnNjQiQ
 7v/yPyqW7rAGacXImdbWu9dwCx/Ii3RjYkVIZnKPdDP0fr4Fcmu68+4q0
 hM5tJMhyu/get8KQb9SmZBK1rtEuYYL227jIZzcZ1y7R+F9TzoXljLwIH
 TA1Vm175bh8Tzu4opBNnPgkBozQpZYZ3luuFjK/AFIGVFpv/0N3E8YV1n
 OHt4YXeFv9iOgbc2atBjzfC6j8LSD1UeUsqwAuiPD8E6H5/w+Vu+DvRIN
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jiFNM+/D
Subject: [Intel-wired-lan] [PATCH iwl-net v1 0/2] e1000e: avoid unexpected
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
  e1000e: introduce new MAC type for PTP
  e1000e: clear DPG_EN after reset to avoid autonomous power-gating

 drivers/net/ethernet/intel/e1000e/e1000.h   |  4 ++-
 drivers/net/ethernet/intel/e1000e/hw.h      |  2 --
 drivers/net/ethernet/intel/e1000e/ich8lan.c | 29 +++++++++++++++++++++
 drivers/net/ethernet/intel/e1000e/netdev.c  | 15 +++++------
 4 files changed, 39 insertions(+), 11 deletions(-)

-- 
2.34.1

