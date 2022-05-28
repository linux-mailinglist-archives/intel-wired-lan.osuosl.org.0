Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 90BA5539172
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 May 2022 15:08:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B2F8F84078;
	Tue, 31 May 2022 13:08:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QAocC2Di7bR1; Tue, 31 May 2022 13:08:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C505B84058;
	Tue, 31 May 2022 13:08:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 91B8C1BF23C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 May 2022 12:33:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 888984120F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 May 2022 12:33:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BIhHQiAsHUPV for <intel-wired-lan@lists.osuosl.org>;
 Sat, 28 May 2022 12:33:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 546C6405CB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 May 2022 12:33:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653741193; x=1685277193;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=uOo7myYBx/RcpwJItduBuV2bS3g6vCg6XkOlXq7505k=;
 b=Iz6HEbJ7sV0V8wjLt4WC5plCgwzJxjyQbpsaRmFDA1WbKsjephEe/TSg
 SX0OPYKw3Wp1WtyDSgeHMKwghxpomVK1LHFaey5flVuEUVxf6MMomP0fX
 EkeSbSnFa8Nw72quXcuJVobqKHWZrFXCStfhwCN+8oURV8esZWyaIvvYT
 +ONUUn9qU2FBX1zCWIFrzRUKk37dfJSe5UNTB/Em55PkfY9qFgNreBp5q
 2FoOVRGrp9R5iHLTpxvdWTaoRSpREXp+yUI45S29e2W92uRnSs+astOaU
 byWaueI6U0CRCNEdeuoNW5KPMTSTuHqpjjZOMPIlUyA00exC5ht+knDsf w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10360"; a="262287021"
X-IronPort-AV: E=Sophos;i="5.91,258,1647327600"; d="scan'208";a="262287021"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2022 05:33:10 -0700
X-IronPort-AV: E=Sophos;i="5.91,258,1647327600"; d="scan'208";a="604391824"
Received: from unknown (HELO jiaqingz-server.sh.intel.com) ([10.239.48.171])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2022 05:33:08 -0700
From: Jiaqing Zhao <jiaqing.zhao@linux.intel.com>
To: netdev@vger.kernel.org,
	intel-wired-lan@lists.osuosl.org
Date: Sat, 28 May 2022 20:31:20 +0800
Message-Id: <20220528123123.1851519-1-jiaqing.zhao@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 31 May 2022 13:08:44 +0000
Subject: [Intel-wired-lan] [PATCH 0/3] Fix "VLAN filer" typos
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
Cc: Jiaqing Zhao <jiaqing.zhao@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

My misspelled search keywords gave some results, guess we need to fix
them.

Jiaqing Zhao (3):
  e1000: Fix typos in comments
  ixgb: Fix typos in comments
  ixgbe: Fix typos in comments

 drivers/net/ethernet/intel/e1000/e1000_hw.c     | 4 ++--
 drivers/net/ethernet/intel/ixgb/ixgb_hw.c       | 4 ++--
 drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c  | 2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_common.c | 2 +-
 4 files changed, 6 insertions(+), 6 deletions(-)

-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
