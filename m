Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 146B89297E7
	for <lists+intel-wired-lan@lfdr.de>; Sun,  7 Jul 2024 14:55:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7968081370;
	Sun,  7 Jul 2024 12:55:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HzrxqX2xi8Kv; Sun,  7 Jul 2024 12:55:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 52D37810CF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720356947;
	bh=epqWeQUi4VGtbzKlPwU27boN/ZOl4R0JS4AYo6u3mNg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=dL/TH6hdNg04w8Ja3Q9Avpr1Yl863c1eiWDfHoF4QWaJOKwwN4jVMykJJGq2rOxbS
	 rVgfXAYDY35z2jgLwQDtLDK9z1GpRZL0yg43JbzUNZ2Kh846YOci2X1bRLvW79cQB4
	 Twcc5+PkrJUHF1CgdJ1HF4XgoJmRTriK2HrBu/Yctnogk6Ye3NQrQXlsfkJnUMOjhc
	 OBCKrfJkLyonuozWxlln4LOU7zks6FfZDQWWB2Dw/6pR5r0SgZH5ivWkxZ45BAjQc7
	 ESnG5+8ppMEq164uRnTqEDyk3chd5K/HKmRvMHP2fpP+rN5kaKDh33vmDa1jaY7FCb
	 xFhp5qQg0laWQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 52D37810CF;
	Sun,  7 Jul 2024 12:55:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 52A991BF2C4
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Jul 2024 12:55:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3D4A681005
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Jul 2024 12:55:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 57GI74Zx8bOS for <intel-wired-lan@lists.osuosl.org>;
 Sun,  7 Jul 2024 12:55:44 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1107380D97
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1107380D97
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1107380D97
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Jul 2024 12:55:43 +0000 (UTC)
X-CSE-ConnectionGUID: tYSSBwaSTIG/dNco6v5uxA==
X-CSE-MsgGUID: 4mf72bRrTB+zsLQrxfiAiA==
X-IronPort-AV: E=McAfee;i="6700,10204,11125"; a="28723340"
X-IronPort-AV: E=Sophos;i="6.09,190,1716274800"; d="scan'208";a="28723340"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2024 05:55:44 -0700
X-CSE-ConnectionGUID: 29qQB5d0QByj+IG+noHX1w==
X-CSE-MsgGUID: tIxHmSCoRHKInGn757BvVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,190,1716274800"; d="scan'208";a="51692250"
Received: from linux.intel.com ([10.54.29.200])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2024 05:55:42 -0700
Received: from mohdfai2-iLBPG12-1.png.intel.com
 (mohdfai2-iLBPG12-1.png.intel.com [10.88.227.73])
 by linux.intel.com (Postfix) with ESMTP id 2973D20738C7;
 Sun,  7 Jul 2024 05:55:38 -0700 (PDT)
From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
To: "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Simon Horman <horms@kernel.org>,
 Richard Cochran <richardcochran@gmail.com>,
 Paul Menzel <pmenzel@molgen.mpg.de>, Sasha Neftin <sasha.neftin@intel.com>
Date: Sun,  7 Jul 2024 08:53:15 -0400
Message-Id: <20240707125318.3425097-1-faizal.abdul.rahim@linux.intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720356945; x=1751892945;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8CQywXGpVZmoXAWi7aQtBVNWRM3RoZSfC5ilnp7epOE=;
 b=jbjYVfUwrgMuwy9S+4Ql9FzwL0iOmJCvpT5YDmWwzorAcEpzHWqIK2ZG
 dmRxuIzGD09vvykSoGWHfAv+ww6pyRmuy5BmDSMafNHLDN2dY7bh4Oa3D
 meY/cNbFXl0/prg4l0X65Pt3sxisaeeSXsIf8U6QGGV/COy6nWN/t8GJj
 h00FNw8NcDtFZS/q+Fse1MF5nBWiCw6cpl/B2ufan0wpFJAn8a+y+bpS7
 Kx4QO00YggelTp8T55S9qei7icTUlitkFpvm+2yF3OnnB3Jlk/dR89hVV
 G29IN3bRpPdrFBGCvCrqCHDeEsN2jnEX4eR+lfdjhEe1O+OJQmIfptC18
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jbjYVfUw
Subject: [Intel-wired-lan] [PATCH iwl-net v2 0/3] igc bug fixes related to
 qbv_count usage
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

These igc bug fixes are sent as a patch series because:

1.  The two patches below remove the reliance on using the qbv_count field.
   "igc: Fix qbv_config_change_errors logics"
   "igc: Fix reset adapter logics when tx mode change"

    qbv_count field will be removed in future patch via iwl-next.

2. The patch "igc: Fix qbv tx latency by setting gtxoffset" reuse the
   function igc_tsn_will_tx_mode_change() which was created in the patch:
   "igc: Fix reset adapter logics when tx mode change"

v1: https://patchwork.kernel.org/project/netdevbpf/cover/20240702040926.3327530-1-faizal.abdul.rahim@linux.intel.com/

Changelog:
v1 -> v2
- Instead of casting to bool, use !! (Simon)
- Simplify new functions created. Instead of if.. return true, else return false,
  use single return. (Simon)
- Remove patch "igc: Remove unused qbv_coun" from this series which is targeting
  to iwl-net. This patch will be sent to iwl-next. (Simon)

Faizal Rahim (3):
  igc: Fix qbv_config_change_errors logics
  igc: Fix reset adapter logics when tx mode change
  igc: Fix qbv tx latency by setting gtxoffset

 drivers/net/ethernet/intel/igc/igc_main.c |  8 +++--
 drivers/net/ethernet/intel/igc/igc_tsn.c  | 41 ++++++++++++++++-------
 drivers/net/ethernet/intel/igc/igc_tsn.h  |  1 +
 3 files changed, 36 insertions(+), 14 deletions(-)

--
2.25.1

