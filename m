Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AAE28A823A9
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Apr 2025 13:36:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 59B9240B47;
	Wed,  9 Apr 2025 11:36:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2_sDoLJ766qG; Wed,  9 Apr 2025 11:36:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D609C409B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744198599;
	bh=4j1N5pMFQ4czo6z1z4vjYqB0eG/+8SMEle9YncFOdvQ=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=qaa0+1rPtWJm9gUJauH1KfoajEwICvNXsTJANohfWhL92OEQpX0ZHZ6M2ftpIemFa
	 lkDqxcDMxIaZkFGsyr3r/aTJMmiMa6/IXOelqTL74gp7hvtWWaPV6rkq3UxIvMLcWn
	 Ogsty3l4cxFM1JQWgxhhYtevKQNJbIrZl7s/dyryTKdfYRZJqRkCMyC8xnqPVbvWHa
	 w9hOyLXAE5DG513W7qs4Frvto7u8z9qjzo63l9ZtVOopBtUBdPyEFmFlnXTi2U50TM
	 7+o/xaSRgDYbJpw+AjWEaYe9b4fUy1WQThkc5GEDFiKBtmyG8e8s+aFuoi+wa7gmxE
	 uxf651QNkO3fQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D609C409B3;
	Wed,  9 Apr 2025 11:36:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 01BF8108
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 11:36:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D415260AEC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 11:36:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mmQoTd9bAfS5 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Apr 2025 11:36:37 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=martyna.szapar-mudlaw@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3C52D60AD5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3C52D60AD5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3C52D60AD5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 11:36:36 +0000 (UTC)
X-CSE-ConnectionGUID: 8dms8KdvSla7DRSfWcs2WA==
X-CSE-MsgGUID: 6+1Zkz2VS5m63+/oNx6MOg==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="45799643"
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="45799643"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 04:36:36 -0700
X-CSE-ConnectionGUID: 5C6ty4mcQZ6nqglthWqhMw==
X-CSE-MsgGUID: uWGRG6pQT2e0da+eN+n0wA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="159536640"
Received: from enterprise.igk.intel.com ([10.102.20.175])
 by fmviesa001.fm.intel.com with ESMTP; 09 Apr 2025 04:36:34 -0700
From: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
 Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
Date: Wed,  9 Apr 2025 13:36:21 +0200
Message-ID: <20250409113622.161379-2-martyna.szapar-mudlaw@linux.intel.com>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744198598; x=1775734598;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=eiqoUi6FvN65bOZqURNCLAncfpVXuS7lmO9PkclFt3A=;
 b=BB/b0Ib/KZpg0/Z6QUx9oB8tVyJp5hWJlFGqm/KFT5t1uGbNFK0qJGJR
 ztvZoi1tKkxanv0qnAJESfuWDDetTHU2cMN3vY51WA0OdEZREoQfCSeJy
 NMr2bHrLO/TLXCKpf3dmnHuBW5cK+wBwbMdoYH2GfqtmBuzBbXviRWclc
 bY11D/gHRXlvho/sDf7D1+ivW3y84JMggnZu1NFW2h2i73zxn6n32YXiU
 ScIgqXpewqz9xIZyr9SArNFzOGnsveL72IfxDPEO9GKYE15Okf3/Y0J91
 WITdIqRceEoWI6eOHzPa9+3K8sMn4ZSWKK1C0INSRk+lNQEKleqybRoKP
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BB/b0Ib/
Subject: [Intel-wired-lan] [PATCH iwl-next 0/2] Add link_down_events ethtool
 stat to ixgbe and ice
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

This series introduces a new ethtool statistic, link_down_events,
to both the ixgbe and ice drivers. The purpose of this counter is
to track the number of times the network link transitions from up to
down.
This statistic can help diagnose issues related to link stability,
such as port flapping or unexpected link drops. It is exposed via
ethtool.
Patch 1 adds this functionality to the ice driver, while patch 2 adds
the same support to the ixge driver.


Martyna Szapar-Mudlaw (2):
  ice: add link_down_events statistic
  ixgbe: add link_down_events statistic

 drivers/net/ethernet/intel/ice/ice.h             | 1 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c     | 1 +
 drivers/net/ethernet/intel/ice/ice_main.c        | 3 +++
 drivers/net/ethernet/intel/ixgbe/ixgbe.h         | 1 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c | 1 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c    | 2 ++
 6 files changed, 9 insertions(+)

-- 
2.47.0

