Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E87D6A2C0CA
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Feb 2025 11:43:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8CEAA849EA;
	Fri,  7 Feb 2025 10:43:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tl4i_zIE1Pw5; Fri,  7 Feb 2025 10:43:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E9DC5849E3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738925030;
	bh=3wDfV6e0BRfMLkn+l1yV2uVOt9M1yJ0AkGp7VXs4D2s=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=2gTjaMzvapkfeV5KGIbUFeewK/9F9uzjWRhrCMIkQM4L820k3Uhypy/Km2efcHCxr
	 a1UeW6kMNQ+RuCjqwShKQ7v8SBpn62uEt5usFzLyciWyvPLwsZ/XqJB01bbkan8JJB
	 XOV6ObCtaJAOc27NUjbV4I/UkDJZZ8hqXXs8NPI3t/tHtrdQm4hTjJQKGNtxbfogTH
	 tJS2Hu49PyfNiRScLMIYCnX6EMhgmauQuy41sCsyNz6q1igaoDh/oo/kXP5YGOAcnZ
	 cRT+ieovd60LlTfBBuPjy9tqeeOBeuvukgSkQDvoTQv1tOKh3sYO0VyZslV+MUBsSg
	 f9wi/2DIZlbzw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E9DC5849E3;
	Fri,  7 Feb 2025 10:43:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id AF9F8E4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 10:43:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 939DB40425
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 10:43:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wr-qV95R92yB for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Feb 2025 10:43:46 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9BD67403FC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9BD67403FC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9BD67403FC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 10:43:46 +0000 (UTC)
X-CSE-ConnectionGUID: G7Sg9VSOSTaYHtLEJeIOlg==
X-CSE-MsgGUID: taKX23vlTOO+WN2oLfJd/g==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="62039826"
X-IronPort-AV: E=Sophos;i="6.13,266,1732608000"; d="scan'208";a="62039826"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 02:43:46 -0800
X-CSE-ConnectionGUID: a+RYWCvIS7OVefdW2AaAvA==
X-CSE-MsgGUID: 4UFibppgSHSXkCarmM2WRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="116429784"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by orviesa003.jf.intel.com with ESMTP; 07 Feb 2025 02:43:44 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, marcin.szycik@linux.intel.com,
 jedrzej.jagielski@intel.com, przemyslaw.kitszel@intel.com,
 piotr.kwapulinski@intel.com, anthony.l.nguyen@intel.com,
 dawid.osuchowski@intel.com
Date: Fri,  7 Feb 2025 11:43:39 +0100
Message-ID: <20250207104343.2791001-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738925027; x=1770461027;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+P3HLtADhmrmNGgsvWskNIvrO88Mxapm/ysDKpFFEqY=;
 b=IDoZRnjuUX4WquMgvIcvhF+X55M0gVd4mZVY4XiYOb/w56IR+6nv0SgE
 p/6zDhnHGiKgXIsw0zt7v/A0Aout7OULPV8QaUj1+MIu4ogMBmhhu8QUT
 lavgnra1Ud26dl+OkYwyAOygaJ+N6Fa/vux3peLvu+pL+plVUfLS5urFx
 hkPUznVHkqcj0srIsEC7EWdQWxmKA0LjdKh6OchjrEI5cG+/1kj4KC2WB
 WhIvVXn0C48A8dJ5ND5+Il/MRUWa3YftBln4ff+BF4XSyIrtt78Zy5q4/
 sM8wgbPhc+z4k9/FNe0ZvExDNX5h2FjVhxA2ocHqbilXkI1/stcldhqDA
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IDoZRnju
Subject: [Intel-wired-lan] [iwl-next v1 0/4] ixgbe: support MDD events
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
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 224 ++++++++++++++++--
 .../net/ethernet/intel/ixgbe/ixgbe_sriov.c    |  50 ++++
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c | 119 ++++++++++
 9 files changed, 430 insertions(+), 23 deletions(-)

-- 
2.42.0

