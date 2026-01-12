Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DAC57D13103
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Jan 2026 15:18:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9695F84EBA;
	Mon, 12 Jan 2026 14:18:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GbkFncLN4K1z; Mon, 12 Jan 2026 14:18:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 19A4284ED3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768227520;
	bh=Ls+7iv5ETZtuRzjeq8m/w891u3U8+gWOuWqfAV73G0o=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=uJvmgRrhC2lBABSZcfoJqix5EQkYAm7HEHMzO1lP77SSRVnhvujqt8UJoyDwuOJH6
	 vIKVCqUKjbT6TqPJpZNjqaSrY78gHGahBvLuhlf+ttzLIp5tVTHGGuhL7qKnn1Kk9h
	 8/h8g1f88dO3mTLN/gyFEOKyoLEg/6t1uEt7yJ6ZNu5H0m5rPxh/v2zfcA3h94QL0S
	 0fSfJ/D+zVvV9zQfS7S1QId+D6wPsReQScS3BKkS10dISjxX60t0M1odofK5gHr+gs
	 6mnAobbDeutClmCc/onWfjo2z46ezD/ZDTUGvo9IwEvRZ872RnRubR54ZEHppOq5nG
	 mhUdtMdAP1xIw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 19A4284ED3;
	Mon, 12 Jan 2026 14:18:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2E36118D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 14:18:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1414C6F4F3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 14:18:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f0xcXcX0JpPn for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Jan 2026 14:18:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5777A6F4F2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5777A6F4F2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5777A6F4F2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 14:18:37 +0000 (UTC)
X-CSE-ConnectionGUID: hBudZquKRkOojJRh4P+snw==
X-CSE-MsgGUID: NcBf63IWS6irP92krjp0Rg==
X-IronPort-AV: E=McAfee;i="6800,10657,11669"; a="73352278"
X-IronPort-AV: E=Sophos;i="6.21,221,1763452800"; d="scan'208";a="73352278"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2026 06:18:37 -0800
X-CSE-ConnectionGUID: rVOT95v5QEeVCqlu981b5Q==
X-CSE-MsgGUID: cMpwmWyVTiOvqeTm28QMgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,221,1763452800"; d="scan'208";a="227355621"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by fmviesa002.fm.intel.com with ESMTP; 12 Jan 2026 06:18:36 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Date: Mon, 12 Jan 2026 15:01:01 +0100
Message-Id: <20260112140108.1173835-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768227517; x=1799763517;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vPeDa8uyWuQnIXSJZ4FwePDJ5JKSHDvAEnccORld0bc=;
 b=Z6FNS0i9B2L3MUNcb3sn4S2UYKUr8MpuGFh1Vo/+9bxYWmVob01WItFT
 In+QR+9oaJfN8TI74p25Db1jlAajK3WECaW8PPZs46DCBrZHQHkth5gPT
 roUpyxheJaCrOLSgXzJaXtYyIhGwd9yqhDRYrGZxe1EYMO/tQTlUDUIPL
 zJF3rKBJz1FqhLhkUnSx9/hlAOsdK34nhIaXYRCKANjEHZcP9UbCIMEYC
 I2y0WwppIIDK3hmG2b2jcaQnIIclrjwBOy3RB79NibXyxvkbKDAVG5XwG
 ZsXEAuO47bwLNMo6b2O0QWT8RaIsFBaqpibKYEEp87PeUF8hnKY9PIGY+
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Z6FNS0i9
Subject: [Intel-wired-lan] [PATCH iwl-next v1 0/7] ixgbe: enable EEE for
 E610 devices
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

Align SW structs with latest FW changes related to EEE enablement.
Address compatibility issues caused by the buffer size changes.
Implement ethtool callbacks which can be used to enable/disable EEE, but
generally the feature itself is enabled by default. What's important it
works only for link speeds > 1Gb/s, so even if enabled, it gets down
anytime link conditions aren't met. Once met again the feature gets
restored. Still cannot configure LPI timers and EEE advertised speeds.

Jedrzej Jagielski (7):
  ixgbe: E610: add discovering EEE capability
  ixgbe: E610: use new version of 0x601 ACI command buffer
  ixgbe: E610: update EEE supported speeds
  ixgbe: E610: update ACI command structs with EEE fields
  ixgbe: move EEE config validation out of ixgbe_set_eee()
  ixgbe: replace EEE enable flag with state enum
  ixgbe: E610: add EEE support

 drivers/net/ethernet/intel/ixgbe/ixgbe.h      |  13 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c |  77 +++++-
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |   1 +
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  | 250 +++++++++++++++---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  42 ++-
 drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |   1 +
 .../ethernet/intel/ixgbe/ixgbe_type_e610.h    |  38 ++-
 include/linux/net/intel/libie/adminq.h        |   1 +
 8 files changed, 358 insertions(+), 65 deletions(-)


base-commit: 8fccf912252d8d61064058caf4d6e1085c5ac309
-- 
2.31.1

