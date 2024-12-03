Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CCD549E1CC8
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Dec 2024 13:53:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0214D40708;
	Tue,  3 Dec 2024 12:53:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id h2QvV-7fIfLC; Tue,  3 Dec 2024 12:53:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 37B25405EF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733230395;
	bh=cqgTLQzeNXN1w8MNikd9mWoeWyqluFhi2uFC2JJVcr4=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=UYKwqF9KB0ON03gC/TCOvs1HEEvaAGexMTRLrlC47TbHF38we3sdO7Q8E/Wsj2AGx
	 1f9Pl+xyJ9mVrfy2PmDjBfjWwEcP9VVCOxZPbqj/YI14/LDOXpSdsT6PyGmGG4bVzZ
	 S3X63C4zNHaS02D+vDFxte9ZjBbL//urK2qLaMaxqQ2fDWVTkvm8eIEJnw12y0TjHW
	 4wrlqqrA+nf0Yaw0qBoOuizAI9xrkggfuJJzdatQTAt9gkLnhmAroCGOSc6SFiM3H9
	 FmBVydIix+yNqQECYamsaapki7bScreQ1dXczc21hS3yzIziX6bePvyga6m55/CMnK
	 vfLw3YAtoRe1A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 37B25405EF;
	Tue,  3 Dec 2024 12:53:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id A14A860
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Dec 2024 12:53:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8EC2E405E6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Dec 2024 12:53:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qjWw5x-OCsnx for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Dec 2024 12:53:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 77F07405E1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 77F07405E1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 77F07405E1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Dec 2024 12:53:11 +0000 (UTC)
X-CSE-ConnectionGUID: 1qM6SdNaR8qmu7htdip9fA==
X-CSE-MsgGUID: NGfAjJpZSL+1/f0pEXBWsg==
X-IronPort-AV: E=McAfee;i="6700,10204,11274"; a="44050230"
X-IronPort-AV: E=Sophos;i="6.12,205,1728975600"; d="scan'208";a="44050230"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2024 04:53:11 -0800
X-CSE-ConnectionGUID: VRscLp6ZRf6blZMEZARRuw==
X-CSE-MsgGUID: loQUAiFPRYysEB1/DNNWog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,205,1728975600"; d="scan'208";a="93889624"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa009.fm.intel.com with ESMTP; 03 Dec 2024 04:53:09 -0800
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 7BFDC2FC55;
 Tue,  3 Dec 2024 12:53:08 +0000 (GMT)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
Date: Tue,  3 Dec 2024 13:52:55 +0100
Message-Id: <20241203125255.115651-1-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733230392; x=1764766392;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wgLQ8u7KRuTAl2laukrQT/h3e2tgwbSrvwrFG+FY6iU=;
 b=gpIXZ1lGKdDPf9oAmJwL0fW1rUwD2pMUCFoK8TtIFpm0J1QXIJo1Neii
 SN8uw+ny4SxdPdfuhdxIkykK6qq8D09B1NIZrcbmY5A4pmoTaCIcTSKFY
 ey9Rlcv7PNfpQDvWVdSTyBNmIeruCQELYt6F/PMDXBax4Zak1EZT2mNoi
 5bYqOk89qaB+jFP1wM2l+eeDes1njrEyPEgwVol8qJNSYvb6hk6o9jPyL
 p6vta/RgYT/pWE7lETBen1T9ccEw8KiU72iiOQ4n36YYAoNQq2P8+0Qwe
 GCjW5HaiuQXxeAnvURyHKrjqbXqKqk7L3zTpRwzW4Krfmdg+Dub74tzAf
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gpIXZ1lG
Subject: [Intel-wired-lan] [PATCH iwl-next v1] ice: Extend ethtool reset
 support
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

Extend the job done in:
commit b699c81af068 ("ice: Implement ethtool reset support")
by adding ethtool reset function for safe mode ops structure.

Suggested-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index b552439fc1f9..d338a5ee8ab2 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -4841,6 +4841,7 @@ static const struct ethtool_ops ice_ethtool_safe_mode_ops = {
 	.set_ringparam		= ice_set_ringparam,
 	.nway_reset		= ice_nway_reset,
 	.get_channels		= ice_get_channels,
+	.reset			= ice_ethtool_reset,
 };
 
 /**
-- 
2.38.1

