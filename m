Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C3EE9F2A4A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Dec 2024 07:48:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8CC38406F1;
	Mon, 16 Dec 2024 06:48:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YkRZCyt6_iUJ; Mon, 16 Dec 2024 06:48:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6F995407B8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734331729;
	bh=aBRWPYcT3oiSpm/1Zdnphbnocg8SE7LUawe8wNmGkZ0=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=w479QhTb5JnTxSCEKoI+Q7HJvuM5Aek6cPS2FRGeCN/WvwDsx+7HEMJET78XlM2bP
	 19OPw2KiCiFcRhed0Dp8KwRWuuZc1KeMnc88lrqR9zgPvV1QZr0IHZ2jjVHz245wt/
	 l6sMpSUAcXMpt8lFH/V29DBU/5NicbvTi9WwW/k1hscCa84PqToJ3eTlYJmBh56OqH
	 REWAe6RvewJdm19crMeh18+povNEuobRGgmu4MvOiUdVdbdHKUEeT/NAWMm9/fg8P8
	 f+2esjXBMZYoKrKBRVGTzH6JjMTRDaz9nacZhTDMyuNb0op+jv5NSu0QaftLt2OQ7y
	 Nx28w2ujRmU9Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6F995407B8;
	Mon, 16 Dec 2024 06:48:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 0C2BEC5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 06:48:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E1CC981BF5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 06:48:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sk6vjxqciDkw for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Dec 2024 06:48:46 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BD5C181BC6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BD5C181BC6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BD5C181BC6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 06:48:45 +0000 (UTC)
X-CSE-ConnectionGUID: qhXqRzpvRee/MXVqpExPxA==
X-CSE-MsgGUID: 0Or5zWwBQjuVheAQsNP7Yw==
X-IronPort-AV: E=McAfee;i="6700,10204,11287"; a="34848174"
X-IronPort-AV: E=Sophos;i="6.12,237,1728975600"; d="scan'208";a="34848174"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2024 22:48:45 -0800
X-CSE-ConnectionGUID: 0ZYhOhqLRF2QZFp/LSt1ow==
X-CSE-MsgGUID: H+0+CYdpREuAj9JqRrXIKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="128101836"
Received: from mohdfai2-ilbpg12-1.png.intel.com ([10.88.227.73])
 by fmviesa001.fm.intel.com with ESMTP; 15 Dec 2024 22:48:41 -0800
From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>
Cc: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, bpf@vger.kernel.org
Date: Mon, 16 Dec 2024 01:47:11 -0500
Message-Id: <20241216064720.931522-1-faizal.abdul.rahim@linux.intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734331726; x=1765867726;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=f6imVHIwBO5y+VNI+OBSEm0607sjuDvEWjjMWJjz7Jo=;
 b=axzr4p6yAP+9nMzGJ69RuIT0i95RSIaRTYalP34zXqdvci0XbevwKu7j
 Yt0rn28tmBQNL5QJlyHe9XiaPamc4axHuAx3ZUAJXCKontlvjzZXjbKlT
 GUvrqCqwmPFtYAZtHDXQgyCmz711ZliRXBGJOvkMrBepNLNMkb45Q9p8Y
 rApP/dNnc8wu4GCIxlNSB9yOgphQneDzwFkV8MJXPo/xiCHR0yKENHDX2
 ZbzmPFwyVleVmcwm4Yhvk6lxyuj+f7yuruULeuwx1dsR1aFcCcIQIZGvA
 TKdTNzfvJscOHU1xETZHYY0MCyp+q1Ce359aAhqXllsF9HhDJVm7mdAHT
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=axzr4p6y
Subject: [Intel-wired-lan] [PATCH iwl-next 0/9] igc: Add support for Frame
 Preemption feature in IGC
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

Introduces support for the FPE feature in the IGC driver.

The patches aligns with the upstream FPE API:
https://patchwork.kernel.org/project/netdevbpf/cover/20230220122343.1156614-1-vladimir.oltean@nxp.com/
https://patchwork.kernel.org/project/netdevbpf/cover/20230119122705.73054-1-vladimir.oltean@nxp.com/

It builds upon earlier work:
https://patchwork.kernel.org/project/netdevbpf/cover/20220520011538.1098888-1-vinicius.gomes@intel.com/

The first four patches in this series are preparation work for the subsequent patches.

The patch series adds the following functionalities to the IGC driver:
a) Configure FPE using `ethtool --set-mm`.
b) Display FPE settings via `ethtool --show-mm`.
c) View FPE statistics using `ethtool --include-statistics --show-mm'.
e) Enable preemptible/express queue with `fp`:
   tc qdisc add ... root taprio \
   fp E E P P

Note:
1. preemption can occur with or without the verification handshake,
   depending on the value of the verify_enabled field, which can be
   configured using ethtool --set-mm.
2. Enabling FPE with mqprio offload is not covered in this series, but
   existing code prevents user from configuring FPE alongside mqprio offload.

Faizal Rahim (6):
  igc: Rename xdp_get_tx_ring() for non-xdp usage
  igc: Add support to set MAC Merge data via ethtool
  igc: Add support for frame preemption verification
  igc: Add support for preemptible traffic class in taprio
  igc: Add support to get MAC Merge data via ethtool
  igc: Add support to get frame preemption statistics via ethtool

Vinicius Costa Gomes (3):
  igc: Optimize the TX packet buffer utilization
  igc: Set the RX packet buffer size for TSN mode
  igc: Add support for receiving frames with all zeroes address

 drivers/net/ethernet/intel/igc/igc.h         |  45 ++-
 drivers/net/ethernet/intel/igc/igc_defines.h |  15 +-
 drivers/net/ethernet/intel/igc/igc_ethtool.c |  96 ++++++
 drivers/net/ethernet/intel/igc/igc_main.c    |  80 ++++-
 drivers/net/ethernet/intel/igc/igc_regs.h    |  19 ++
 drivers/net/ethernet/intel/igc/igc_tsn.c     | 330 ++++++++++++++++++-
 drivers/net/ethernet/intel/igc/igc_tsn.h     |  15 +
 7 files changed, 586 insertions(+), 14 deletions(-)

--
2.25.1

