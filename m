Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 02EF2911F0E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Jun 2024 10:44:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D3A5B42EE7;
	Fri, 21 Jun 2024 08:44:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q70-gMfLann4; Fri, 21 Jun 2024 08:44:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1C21B414EE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718959443;
	bh=8QqVE+Gv5FhBvkU/fXcWacCn2rAAwntVLyLJyKvj0HU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=xgy9i0iMnrNUawyDV8eBujsuXY8rUHOyke5b3cd0/s+JO2PDgv8pAM1Re36eFjRQd
	 dv1Nxs+VZXcbdSrGCf6GGXUrdI21i1mZTuzUcoXllPVTR2KhUU0gvFlyehuYk0Y2hF
	 bTof7c/tNDv/VnnW8/jwNj/LP7FkorGLWAxCFdzxU4qMIXqQZhXhJqSGq0SbW2U8MB
	 FZ62gBNSFUeDi6mNnGJe/Nibun3FfTJ8POp/jLwzLdeHxcA/m3wk46syWXuFQLl/k2
	 C+l3Jqb22e0TE3dwSBmx6cFV+29wkf7ceHgCxf71AR6qdMmdU86vRfW+2w7R9wEsz2
	 OVXifTW+bDa4g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1C21B414EE;
	Fri, 21 Jun 2024 08:44:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CE78D1BF841
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jun 2024 08:43:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C376440257
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jun 2024 08:43:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Fkj839q1LciX for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Jun 2024 08:43:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=sergey.temerkhanov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5A17B400FB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5A17B400FB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5A17B400FB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jun 2024 08:43:53 +0000 (UTC)
X-CSE-ConnectionGUID: fPOCFe+GQa27gd0soKgqvA==
X-CSE-MsgGUID: IK1wcBhKSPa6DvOZCcZZgg==
X-IronPort-AV: E=McAfee;i="6700,10204,11109"; a="16129474"
X-IronPort-AV: E=Sophos;i="6.08,254,1712646000"; d="scan'208";a="16129474"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2024 01:43:52 -0700
X-CSE-ConnectionGUID: o6sCZOlqTEWzdr3c4mep/Q==
X-CSE-MsgGUID: Phe9FEdWSfSyFodYDlXmoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,254,1712646000"; d="scan'208";a="65765165"
Received: from unknown (HELO localhost.igk.intel.com) ([10.211.13.141])
 by fmviesa002.fm.intel.com with ESMTP; 21 Jun 2024 01:43:51 -0700
From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 21 Jun 2024 10:42:40 +0200
Message-ID: <20240621084244.26525-1-sergey.temerkhanov@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718959434; x=1750495434;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3HBoWOKl6SbY13vd0tm05QnlOYhyCgkxJmDDKHhVy5E=;
 b=kx8W724Oz/EUFz5qJ8SP6lWsC/YI+TPuPd6MXCLfomKPqds3jcyiGNoq
 OffZB4IG5sSFwUX0aa0r60b9PF9EkCT+gqJ5Syd6F5C88vGgMIA5aSNxT
 mjEgrsiMf/QAaTz5JnNc28w+gIG6DNcl31zphQXZZQN+rmn9bglP0MtZ6
 nR5cF+Erl8EFjou/oQsFOQsWUcHxol5voENki4KQIqV7sKMWnFC8BiLPs
 7WS2hdO1Zq1VgGj0zE7r/CI2d6jSUJ2TuYSheFvBue42d1OiPJqBNDovv
 DqcaVaF1iDHblJ0jVhMmlQxGBVvIhZvRdXM8FOGOVUEy6Cv1i5JyuX2Yu
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kx8W724O
Subject: [Intel-wired-lan] [RFC PATCH iwl-next v1 0/4] Replace auxbus with
 ice_adapter in the PTP support code
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
Cc: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This series replaces multiple aux buses and devices used in
the PTP support code with struct ice_adapter holding the necessary
shared data

Patches 1,2 add convenience wrappers
Patch 3 does the main refactoring
Patch 4 finalizes the refactoring

Sergey Temerkhanov (4):
  ice: Introduce ice_get_phy_model() wrapper
  ice: Add ice_get_ctrl_ptp() wrapper to simplify the code
  ice: Use ice_adapter for PTP shared data instead of auxdev
  ice: Drop auxbus use for PTP to finalize ice_adapter move

 drivers/net/ethernet/intel/ice/ice.h         |   5 +
 drivers/net/ethernet/intel/ice/ice_adapter.c |   6 +
 drivers/net/ethernet/intel/ice/ice_adapter.h |  21 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c     | 338 ++++---------------
 drivers/net/ethernet/intel/ice/ice_ptp.h     |  24 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c  |  22 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h  |   5 +
 7 files changed, 111 insertions(+), 310 deletions(-)

-- 
2.43.0

