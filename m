Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7682EA32059
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Feb 2025 08:57:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CC61F408BD;
	Wed, 12 Feb 2025 07:57:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id h972RUEyjJYu; Wed, 12 Feb 2025 07:57:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B39F5406D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739347052;
	bh=E8bQZLKjI92RsKhbl3WvQqfB1TlNCz6opK7chtCAPHQ=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=x77aBT+3E8if+hFkRq8gd7eyT0QhWKf+gshEHUWENcZcZ5rrRkQdin6B2YvqkguJm
	 dS4JH7ViuTsa6h/rQuNJPFHCUPNo6EE2smFtof5nI8GtOqVdrgMw20U2T8ekQ92K9u
	 +Dsctcx6a5XQhnbcy9KmioVymHPi4PeSvhHzIC9Get3lXsTphrpoC1eYDKw53K+tgV
	 LUKW8UvAM11DLHjHeO3FVMuz+/neNNUxrxvZ3tC+5q0wvqgM+CoVMpfWNHatUdqoYU
	 Uyybc4ucSGFfw30uRkczhSF6fhK+2bIlVGgHW6mJqv+4nc5mMS1cbHmak9k4PMP+Fe
	 aiXi+TvrSbwtg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B39F5406D0;
	Wed, 12 Feb 2025 07:57:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 280B9194
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 07:57:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0B8C160FFF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 07:57:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bffRiLE_seB7 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Feb 2025 07:57:29 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org EE49260FFE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EE49260FFE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EE49260FFE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 07:57:28 +0000 (UTC)
X-CSE-ConnectionGUID: b/S7CFX9TXm7bwZTJB+qEA==
X-CSE-MsgGUID: xX1LRnE4SXy8/HzfoEXsyQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="50212339"
X-IronPort-AV: E=Sophos;i="6.13,279,1732608000"; d="scan'208";a="50212339"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 23:57:28 -0800
X-CSE-ConnectionGUID: 1lKTA/QGTyWV/+AecBgniw==
X-CSE-MsgGUID: LbN4xIrvTA+b/n4p/XWg9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,279,1732608000"; d="scan'208";a="112579840"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by fmviesa006.fm.intel.com with ESMTP; 11 Feb 2025 23:57:25 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, marcin.szycik@linux.intel.com,
 jedrzej.jagielski@intel.com, przemyslaw.kitszel@intel.com,
 piotr.kwapulinski@intel.com, anthony.l.nguyen@intel.com,
 dawid.osuchowski@intel.com, horms@kernel.org
Date: Wed, 12 Feb 2025 08:57:20 +0100
Message-ID: <20250212075724.3352715-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739347049; x=1770883049;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bawJBUfmeOQnUhZ6+iULfTHU7QKQD0CodGc7JvJtgwQ=;
 b=bRxivjW+plIj1RtnBqdW36AcVn22fZUgRabvONWW9WKtRuCw13TmawQc
 0dkHiFjdzaYDdCSx7ENriX/qaue1Sel6EVu1GYdU4VKVUaCTKC7Fhqhwq
 +EKiy6/lz8qxlPQI5fR/HmqNjHmcOFgO34kjrBXWlPEHvXXsKDTS71jmu
 aMpS1Z4S74mzTXf5GjFC+gteVWyPjHKZAz/NhpgGIScCSoC8x7op9U2bp
 VuoaaVqZ/77O3hnXjWYJ7g7c05dwniPj+k0ETvB5MFbzzvbTLc3RQ7ZYy
 bnnCyzTLYKKmHtQ+XLvY6hmep4CbhIXDt87r46ROE3Ub6uC9ujcXlVncR
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bRxivjW+
Subject: [Intel-wired-lan] [iwl-next v2 0/4] ixgbe: support MDD events
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

Hi,

This patchset is adding support for MDD (malicious driver detection) for
ixgbe driver. It can catch the error on VF side and reset malicious VF.

An MDD event can be triggered for example by sending from VF a TSO packet
with segment number set to 0.

Add checking for Tx hang in case of MDD is unhandled. It will prevent VF
from staying in Tx hang state.

v1 --> v2: [1]
(All from Simon review, thanks)
 * change wqbr variable type in patch 1 to fix -Warray-bounds build
 * fix indend to be done by space to follow existing style (patch 3)
 * move e_warn() to be in one line because it fit (patch 3)

[1] https://lore.kernel.org/netdev/20250207104343.2791001-1-michal.swiatkowski@linux.intel.com/

Don Skidmore (1):
  ixgbe: check for MDD events

Paul Greenwalt (1):
  ixgbe: add MDD support

Radoslaw Tyl (1):
  ixgbe: turn off MDD while modifying SRRCTL

Slawomir Mrozowicz (1):
  ixgbe: add Tx hang detection unhandled MDD

 drivers/net/ethernet/intel/ixgbe/ixgbe.h      |   5 +
 .../net/ethernet/intel/ixgbe/ixgbe_sriov.h    |   1 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |  42 +++-
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.h |   5 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c |   4 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c  |   3 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 223 ++++++++++++++++--
 .../net/ethernet/intel/ixgbe/ixgbe_sriov.c    |  50 ++++
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c | 120 ++++++++++
 9 files changed, 430 insertions(+), 23 deletions(-)

-- 
2.42.0

