Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BF5975CC9B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Jul 2023 17:51:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B21986139A;
	Fri, 21 Jul 2023 15:51:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B21986139A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689954708;
	bh=FvDmOEC0l0WmfPOzV3PvyJmGpl9I11x6Y8kDrAnw9Jg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=5fNtfSWST3ML0UueS4+Hjs8/YkduBfgMQ8lYR4ItbAAcATpehmEwr0hn4VCX/WEwa
	 VcTGVuHjhL47XGyRcHmKddH1SSgk7egrqZwOrb3PFHAY1SSQMtKCL2nEPmbIM2DHJo
	 a8PF+rmwPLXTSz8yJPN/Pdr9n/nmBNkA/0/FjFHBZvXJrYMTTdpMdsV3HSUXNtV5Rv
	 Jbyvey6dApKgUOlxSTxIKYLC6z4kj9ivaABvg9wvMRrumrfuNRLJb+FxzbVgwCYSt5
	 glNw8yJbIATnkon1yZjgPY1PKTWnsVKjsYNFVl24Mo9q8ctKiwKGHTY1prDrMXYN4K
	 1x5q824dLYbMw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cvRERgSFggh8; Fri, 21 Jul 2023 15:51:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B27056130B;
	Fri, 21 Jul 2023 15:51:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B27056130B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 336FC1BF23C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jul 2023 15:51:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0AEFB8227F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jul 2023 15:51:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0AEFB8227F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RhjzUT8-frsU for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Jul 2023 15:51:41 +0000 (UTC)
X-Greylist: delayed 425 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 21 Jul 2023 15:51:41 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4A5B382272
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4A5B382272
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jul 2023 15:51:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10778"; a="369721910"
X-IronPort-AV: E=Sophos;i="6.01,222,1684825200"; d="scan'208";a="369721910"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2023 08:44:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10778"; a="815005768"
X-IronPort-AV: E=Sophos;i="6.01,222,1684825200"; d="scan'208";a="815005768"
Received: from mmichali-devpc.igk.intel.com ([10.211.235.239])
 by FMSMGA003.fm.intel.com with ESMTP; 21 Jul 2023 08:44:32 -0700
From: Michal Michalik <michal.michalik@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 21 Jul 2023 17:44:21 +0200
Message-Id: <20230721154424.11834-1-michal.michalik@intel.com>
X-Mailer: git-send-email 2.9.5
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689954701; x=1721490701;
 h=from:to:cc:subject:date:message-id;
 bh=hKL+Z9doFdF8qYTs2PF1S//CgyoMKwMMmllvAbcIOvU=;
 b=DwMpGyjT4yRATonJVcaIJBwGSiTgf7kihPjbdoX65EpS0lh2RbNk1O1r
 TmOSJ8UvC7fupAvS2jgvOXQtuwp9+hdk/i5XBjY1f5Ph7sIe6tt1uMK8g
 BltxkTwTn8ZUvG94EBRkASMqC+ItXNGmLU/xHQb66h31TuReuK17EZGpW
 5AAWbhDyCbrkntOblgNnFCv68Loh6oT6Oj6JJCiYEWKFnmWbedbZnFGo8
 /J3TDadoeuMz4eZdIUyrgdL7WxaPQ7duJFM9OYVM4ZDwhmsuqtcXlBrCS
 95Hy7Zxa+Jub02c4lzfhVJCvrnxtBcWtMyARdpc5cSa5yjr0UP2k6q7Yd
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DwMpGyjT
Subject: [Intel-wired-lan] [PATCH net-next v2 0/3] ice: add PTP auxiliary
 bus support
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
Cc: karol.kolacinski@intel.com, anthony.l.nguyen@intel.com,
 jesse.brandeburg@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Auxiliary bus allow exchanging information between PFs, which allows
both fixing problems and simplifying new features implementation.
The auxiliary bus is enabled for all devices supported by ice driver.

Michal Michalik (3):
  ice: Auxbus devices & driver for E822 TS
  ice: Use PTP auxbus for all PHYs restart in E822
  ice: PTP: add clock domain number to auxiliary interface

 drivers/net/ethernet/intel/ice/ice.h            |  14 +
 drivers/net/ethernet/intel/ice/ice_adminq_cmd.h |   5 -
 drivers/net/ethernet/intel/ice/ice_ethtool.c    |   2 +-
 drivers/net/ethernet/intel/ice/ice_hw_autogen.h |   1 +
 drivers/net/ethernet/intel/ice/ice_main.c       |  11 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c        | 582 +++++++++++++++++-------
 drivers/net/ethernet/intel/ice/ice_ptp.h        |  41 +-
 7 files changed, 489 insertions(+), 167 deletions(-)

-- 
2.9.5

base-commit: aa29136c92a1122f30e3fdc3f36306ef00ddcf73
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
