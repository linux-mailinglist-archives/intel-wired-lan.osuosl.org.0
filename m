Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E2D99A6C70
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Oct 2024 16:42:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8042760731;
	Mon, 21 Oct 2024 14:42:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tkjZDX5KWcKB; Mon, 21 Oct 2024 14:42:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D00046065C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729521767;
	bh=TxxNlQWZ97169dFuR7VfNxFw6+EIBFt3wAL6pJkzKBo=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=rnfqUGIaNCGzgpSlrncLQ1Abei9x8GSShJeMfKgYrMchnsrwONdnQXaIlcUVQEXy1
	 m/CmihYvvL9r81iVMrBL12tTWsxIpeV3nJyV6w3xz+cwyWi9pwS2Tupqbk4DkPE3ED
	 67/XGGgAQEbPFuwkZRznUtH1CQhBO4WGesN/tbOGif6O5MzlwPc6z5UkOjOLtPW/z1
	 l3fnmXbquT3LvXNjNG0b9INg5LkdG5maw8ra6t7qrDnRDR81RElv1VSU1YrYhhPg0G
	 9WwiR63M7jyFalPfpx0VXt9EpbK72zQgtt52tOvj19kMM4Zta6x4AEm9Hkz6Cbj4EF
	 Ys4MjGrutv9FQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D00046065C;
	Mon, 21 Oct 2024 14:42:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id A44E071F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Oct 2024 14:42:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 85228605DC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Oct 2024 14:42:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6MIpqsoJAl-H for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Oct 2024 14:42:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A97E26059A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A97E26059A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A97E26059A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Oct 2024 14:42:44 +0000 (UTC)
X-CSE-ConnectionGUID: tUWG/CwRTrSmBcjOvJPVFw==
X-CSE-MsgGUID: HjrCTdEJQR+7X7YpF5X5EQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="28783935"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="28783935"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 07:42:43 -0700
X-CSE-ConnectionGUID: AvKQVR9DQl+Im2hIxrmhUA==
X-CSE-MsgGUID: JjScTn6gS5W6+X80IAoysg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,221,1725346800"; d="scan'208";a="79183353"
Received: from pkwapuli-mobl1.ger.corp.intel.com (HELO
 vbox-pkwap.ger.corp.intel.com) ([10.246.19.66])
 by fmviesa007.fm.intel.com with ESMTP; 21 Oct 2024 07:42:42 -0700
From: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
	Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Date: Mon, 21 Oct 2024 16:40:27 +0200
Message-ID: <20241021144027.5369-1-piotr.kwapulinski@intel.com>
X-Mailer: git-send-email 2.43.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729521765; x=1761057765;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0jMj2R4y40mpfGAjo7u60beUyCLYy3jUUb5fV/e/Fzk=;
 b=YHEIjLua7PtzjmYqBTROABUpVABe5qCLde8PFHP+D83vQs5KJhGwWs2r
 FD5R8W6B/mtTrGvsqgzstvDJ4csOJo5ASC9rvzMlhA7AVfkwr/twRPJXK
 xaypBPkTzAP/nY3Be8H/yKbjXrSkOyBvwUuKb2jEjnPrtw1nf3Stx5bxB
 i6tEUmuhhtoDVu3fkFPcyP6dmRl/0hEylBDawUyCkJ7B2CJ4dAQL8sUUr
 tvx3qZThcULrq+EuL9R5f5KZX76sYRCZYPUPw4FvYAqfzx0quihpRj04r
 PzjsItIgFJ2wfdN7GMGGYjv33nfHht7toh4iHrCafNBdqw5QVPiyZzo1Z
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YHEIjLua
Subject: [Intel-wired-lan] [PATCH iwl-next v2 0/2] ixgbevf: Add support for
 Intel(R) E610 device
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

Add support for Intel(R) E610 Series of network devices. The E610 is
based on X550 but adds firmware managed link, enhanced security
capabilities and support for updated server manageability.

Piotr Kwapulinski (2):
  PCI: Add PCI_VDEVICE_SUB helper macro
  ixgbevf: Add support for Intel(R) E610 device

 drivers/net/ethernet/intel/ixgbevf/defines.h      |  5 ++++-
 drivers/net/ethernet/intel/ixgbevf/ixgbevf.h      |  6 +++++-
 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c | 12 ++++++++++--
 drivers/net/ethernet/intel/ixgbevf/vf.c           | 12 +++++++++++-
 drivers/net/ethernet/intel/ixgbevf/vf.h           |  4 +++-
 include/linux/pci.h                               | 14 ++++++++++++++
 6 files changed, 47 insertions(+), 6 deletions(-)

-- 
v1 -> v2
  allow specifying the subvendor ("Subsystem Vendor ID" in the spec) in
  the PCI_VDEVICE_SUB macro

2.43.0

