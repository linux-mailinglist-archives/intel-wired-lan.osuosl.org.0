Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 00B1A62FDFF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Nov 2022 20:29:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 25F1D419FA;
	Fri, 18 Nov 2022 19:29:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 25F1D419FA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668799769;
	bh=pNizJ1bd/Yiwk/Sm5Ogrpe6tmxDY4MC+AjXooBVPh8Q=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=qUnT5m0h27oe9Lq78BEv+YDZUipSrY7TiUf7YGnAqSXbMHhlPyc1j4bg8LEmsEiXC
	 bzicgr0nR0JeUVj2Hl/kH2qkomAX7GxR+rsrqVQqqkhJvmJF+HBeROeKhzFplVWKXU
	 /wayZS426ztoKRv+s/zfrY7qopA9LzFh8sUkyW2uVgmcWxch+6IoD5IGegBWf+lAA4
	 FrRYMHK6IAe4hA7VtPBgez2jvOWD4IBGUjNbyTPPUnnGOYtR5SHtZa09aWT9ug2Vw5
	 Jlc7p9/MoAbJ+l2utdzWwq3+O9uv/BplEk1FXDrQOwxoBfYqk1GXDfWIpHbO+tdmuv
	 9eC0gcZRdIlEA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6abNtbJDEyeU; Fri, 18 Nov 2022 19:29:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D0E21419E5;
	Fri, 18 Nov 2022 19:29:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D0E21419E5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6EA5E1BF424
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Nov 2022 19:29:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4716F419E5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Nov 2022 19:29:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4716F419E5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lan5hSpVZCIQ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Nov 2022 19:29:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3ABD8419C5
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3ABD8419C5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Nov 2022 19:29:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10535"; a="315033703"
X-IronPort-AV: E=Sophos;i="5.96,175,1665471600"; d="scan'208";a="315033703"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2022 11:29:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10535"; a="746114934"
X-IronPort-AV: E=Sophos;i="5.96,175,1665471600"; d="scan'208";a="746114934"
Received: from unknown (HELO fedora.jf.intel.com) ([10.166.232.13])
 by fmsmga002.fm.intel.com with ESMTP; 18 Nov 2022 11:29:16 -0800
From: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 18 Nov 2022 14:20:40 -0500
Message-Id: <20221118192042.14329-1-benjamin.mikailenko@intel.com>
X-Mailer: git-send-email 2.34.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668799757; x=1700335757;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fzIgSjrINmyM6r0UI1AVCy8B7f1fT+80JqESltslGUY=;
 b=CiVSzw0D39KvPX8GqY4g5uDd+chwd+O2gBCInyZGZKA4/+JwsUdQTZeE
 GONWQHkgzVlf4rK2rxtQjf2UFWVAVvO1FOqBcyTVtHZRDe1JSnP+U9rZr
 Nd9wl43YjdIhdc2LUrszyr7dxPiQrH2tHuqf2cUdQKSWX9Iq9MomZLNrN
 muSmfLTuFJYnKSi6Q3ZeYOMqB+4CjWmv7dC3mImRxYKKVnVDjoRAMpirB
 TWglBqJjifCz4mo5Xyot1aZT8T73c2QEb6HR4M8UzpQ43o5o/lld88D5p
 yjRLbhhy06qjJ8Q6mAz1OoMDLDRCN8ikZcNdFMlc8iiBMlr6GQDowOPon
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CiVSzw0D
Subject: [Intel-wired-lan] [net-next,
 v7 0/2] Accumulate statistics over reset
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Resets happen with or without user interaction. For example, incidents
such as TX hang or a reconfiguration of parameters will result in a reset.
During reset, hardware and software statistics were set to zero. This
created an issue for the user where a reset happens in the background,
statistics set to zero, and the user checks statistics expecting them to
be populated.

Accumulate statistics over reset so the above doesn't happen.

Change is divided in two patches:
1. Accumulate HW and netdev statistics over reset
2. Accumulate ring statistics over reset

Benjamin Mikailenko (2):
  ice: Accumulate HW and Netdev statistics over reset
  ice: Accumulate ring statistics over reset

 drivers/net/ethernet/intel/ice/ice.h          |   7 +
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c  |   3 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  12 +-
 drivers/net/ethernet/intel/ice/ice_lib.c      | 246 +++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_main.c     |  96 +++++--
 drivers/net/ethernet/intel/ice/ice_repr.c     |  10 +-
 drivers/net/ethernet/intel/ice/ice_txrx.c     |  40 ++-
 drivers/net/ethernet/intel/ice/ice_txrx.h     |  18 +-
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c |   2 +-
 drivers/net/ethernet/intel/ice/ice_xsk.c      |  25 +-
 10 files changed, 394 insertions(+), 65 deletions(-)

-- 
v2: Fixed styling
v3: Allocate statistic structures when XDP is enabled
v4: Added revision notes
v5: Moved revision notes
v6: Removed unnecessary managed allocations and null checks
v7: Removed unnecessary managed frees
2.34.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
