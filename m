Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3705431980A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Feb 2021 02:43:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AF18886E95;
	Fri, 12 Feb 2021 01:43:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c1eq9gXHYFjA; Fri, 12 Feb 2021 01:43:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 292DD86EBA;
	Fri, 12 Feb 2021 01:43:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0C4A91C113E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Feb 2021 01:43:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DAB686F5D3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Feb 2021 01:43:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2I6Vp4V76O-4 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Feb 2021 01:43:45 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 29D4A6F6B2; Fri, 12 Feb 2021 01:43:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E08176F5D3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Feb 2021 01:43:43 +0000 (UTC)
IronPort-SDR: vc8IEy4Qq0Vdk9xaKZgKYs+urQn7ehQ3Fa4t2LVrb6tx+4Xud4kq+YC6xI4h1ahm2swKcCbS10
 ZJjfj2XXY0ew==
X-IronPort-AV: E=McAfee;i="6000,8403,9892"; a="243843189"
X-IronPort-AV: E=Sophos;i="5.81,172,1610438400"; d="scan'208";a="243843189"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2021 17:43:42 -0800
IronPort-SDR: chADzwTJ9pWa5g1QkL7ac29eKeQiO3b9LwEEXjlQ6rX1EAaKc2SLyPC5o/37bjoE/M2X46nETN
 bl6Hy9kgRCpw==
X-IronPort-AV: E=Sophos;i="5.81,172,1610438400"; d="scan'208";a="437405880"
Received: from boksimli-mobl.amr.corp.intel.com (HELO edesouza-mobl1.lan)
 ([10.209.182.177])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2021 17:43:42 -0800
From: Ederson de Souza <ederson.desouza@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 11 Feb 2021 17:42:10 -0800
Message-Id: <20210212014212.41570-1-ederson.desouza@intel.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH next-queue v1 0/2] PPS and SDP support for
 i225
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The i225 device has some PHC Hardware Clock features such as Pulse Per
Seconds interrupts or Software Defined Pins signals. This series add
support to some of them.

Ederson de Souza (2):
  igc: Enable internal i225 PPS
  igc: enable auxiliary PHC functions for the i225

 drivers/net/ethernet/intel/igc/igc.h         |  13 +
 drivers/net/ethernet/intel/igc/igc_defines.h |  63 ++++
 drivers/net/ethernet/intel/igc/igc_main.c    |  63 +++-
 drivers/net/ethernet/intel/igc/igc_ptp.c     | 294 ++++++++++++++++++-
 drivers/net/ethernet/intel/igc/igc_regs.h    |  10 +
 5 files changed, 440 insertions(+), 3 deletions(-)

-- 
2.30.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
