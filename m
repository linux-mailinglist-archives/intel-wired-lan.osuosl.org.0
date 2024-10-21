Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DF059A6C04
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Oct 2024 16:24:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2F35480DB0;
	Mon, 21 Oct 2024 14:24:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zqAebfaYc9Fg; Mon, 21 Oct 2024 14:24:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3948880DB1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729520684;
	bh=hxt/vd/k1NChmiKGjuFuBEMZh+qVNXjF9vrUKCplJts=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=HorJ2pJ285yBWcNStMM8hJcAGycYaV+yq3CsYrFRMLNGql9K3WAqMN/RkhfaBfMaH
	 /CP0FZJaXfPx7NHQgw9PMw5A+Jo8ut5ZZ2O3bvNxvGsr5w4sp02jyEH80pCft3Ceb8
	 mFYP6iuGDOt3yyZvHirOKR72cVXZB0/mtCtqC2DKfDuxJybAvnlGD+iAD0s8uxHKrN
	 OlOYrqtdlO5Tsn2hewH9xEXjY4vHBFlwyxLDRB//uHZam7hVPiVWXD6fmnNuV+L/ZI
	 +ThPP5zcAQW0nPJTiMQtxcAthKIvDQyE72MMIREDl9Pmx+DAma1WDKclx1cp42q2Sa
	 3OnruE//jzh+Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3948880DB1;
	Mon, 21 Oct 2024 14:24:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 21D22AF2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Oct 2024 14:24:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F07C5404F6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Oct 2024 14:24:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id icblQ7WOWwke for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Oct 2024 14:24:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7C850402D6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7C850402D6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7C850402D6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Oct 2024 14:24:41 +0000 (UTC)
X-CSE-ConnectionGUID: 72BS7EXeRFey9Yp9hDLLVA==
X-CSE-MsgGUID: IFmij+X8TqSLrmh6CDCUCg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="28781476"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="28781476"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 07:24:40 -0700
X-CSE-ConnectionGUID: K/mVzZNPTeyWcbXabMW+6w==
X-CSE-MsgGUID: RNR/rDYxRJCBtdFcUPU2Kw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,221,1725346800"; d="scan'208";a="102857310"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by fmviesa002.fm.intel.com with ESMTP; 21 Oct 2024 07:24:38 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, richardcochran@gmail.com,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Date: Mon, 21 Oct 2024 16:19:53 +0200
Message-Id: <20241021141955.1466979-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729520681; x=1761056681;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=pc4NBde+fXjBXx1YyOAYXQyIKmBbSnOydn+XQMOwhH4=;
 b=N3OdEKR+90K5s9L5eM0Ohlm+eP1czrB8QzgywCipS3fqjk+bwLxBTjZf
 KR68mylkt/WuTZmql063Qm6Qoc+q0ZsyqbcB/nytqkehzCtv/tclVbXpY
 eRm8I7x+r+WozpmILtcDp1+1LTEnV9DHXVwzKWs461AdTIs4rNNGgkC5Z
 BxPz5QtmbcrPlGIcl/y8mNWnNK0n/8k9L1FSfV4znZBe4IiA/jo+u9IHK
 OI71O8PMtPPa2AZyjyJyulQjAdrej8o6fEBU/1K7SJvjQsBCYZwpLOjIw
 vzIaa//qrtE9YTiAhmWUKW6GyGK27xQXqu0LCIuMlEkVYRiMSvZVEtsTg
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=N3OdEKR+
Subject: [Intel-wired-lan] [PATCH net-next 0/2] ptp: add control over HW
 timestamp latch point
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

HW support of PTP/timesync solutions in network PHY chips can be
achieved with two different approaches, the timestamp maybe latched
either in the beginning or after the Start of Frame Delimiter (SFD) [1].

Allow ptp device drivers to provide user with control over the timestamp
latch point.

[1] https://www.ieee802.org/3/cx/public/april20/tse_3cx_01_0420.pdf

Arkadiusz Kubalewski (2):
  ptp: add control over HW timestamp latch point
  ice: ptp: add control over HW timestamp latch point

 Documentation/ABI/testing/sysfs-ptp         | 12 +++++
 drivers/net/ethernet/intel/ice/ice_ptp.c    | 46 +++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 57 +++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  2 +
 drivers/ptp/ptp_sysfs.c                     | 44 ++++++++++++++++
 include/linux/ptp_clock_kernel.h            | 29 +++++++++++
 6 files changed, 190 insertions(+)

-- 
2.38.1

