Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D90E60FC01
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Oct 2022 17:31:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2BD6B60E49;
	Thu, 27 Oct 2022 15:31:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2BD6B60E49
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666884711;
	bh=DIKDip2yuZJYL/mff8WlxhWE6jCv7FqEVZ0rAU/5j1Y=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Nfa9WSXiPNLGYG30q7xaQpIFIdvXyFKYeWk+wdNGqYy9okv9b89g9dP7f3z5G0jF7
	 7ZiCNiJjWaWexHGZch8Qm4cXKCL6Mnz9kLnXnlRHPDPdalfR8Oh4UQl7K6UU9MS6PT
	 qS4pnwwOrTmRDkkfejEOXE+squ0UtDxpR5D714+JQXNDRx3eFJGVx9cpad/Al/OfwZ
	 3eubrm1rZUuyniz1gHCDaCYPKRWV9k5YccXhGS8RxJqiiG5t0+gECIFnoF0sBmvLEA
	 AkGy/7csMh7dPq2W4or1JZpZ3z9AsAih/AUj1ts9Y73ruPNolDAMRlXA2KofMfxuUv
	 Zz5O/MHTlCyGg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id guT1Vbf5O2VB; Thu, 27 Oct 2022 15:31:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 19BE260E24;
	Thu, 27 Oct 2022 15:31:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 19BE260E24
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A02951BF318
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Oct 2022 15:31:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7B3C640360
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Oct 2022 15:31:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7B3C640360
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 61D7Bbcp030j for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Oct 2022 15:31:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B4393400EA
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B4393400EA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Oct 2022 15:31:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="309344580"
X-IronPort-AV: E=Sophos;i="5.95,218,1661842800"; d="scan'208";a="309344580"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2022 08:31:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="583593777"
X-IronPort-AV: E=Sophos;i="5.95,218,1661842800"; d="scan'208";a="583593777"
Received: from unknown (HELO fedora.jf.intel.com) ([10.166.232.13])
 by orsmga003.jf.intel.com with ESMTP; 27 Oct 2022 08:31:42 -0700
From: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 27 Oct 2022 11:23:59 -0400
Message-Id: <20221027152401.30801-1-benjamin.mikailenko@intel.com>
X-Mailer: git-send-email 2.34.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666884703; x=1698420703;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Lla2u6Jcwb31d4AX9icLZ2Ond9HdwhvdRV9u7uxaBus=;
 b=bQ9WXbZHXceQTPe+1ZPMKNC5uZmCd6qnEMjcnPLj+rifsH2BhMKGYzkR
 3gle0c7lpj2lRB6PpZJ9YQOKml7NfpVc5gEut1daUSpAfmyRDBfNbsFBa
 nTE9N6dT+qkSmHLDXQi2LZ/cW8VfW5WO8eCyv6cOMEul7tfgf7er4Udmk
 KwT4IQT6sBMk5ImNtsX/z8QD/pvwdOMBdShLHpdQu84RK6JepcjAEW2e6
 rQfjgj88A0MfiQmo7ZPgcN9CTv6rFHmaLK+cQjsCw2nnUJ8pBYPfIsatB
 2esnW+TkUYwI8rEeUq94+AUSnMhLY6tscAbjsG5QAutBkKuDN4pXGAOce
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bQ9WXbZH
Subject: [Intel-wired-lan] [net-next,
 v3 0/2] Accumulate statistics over reset
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
 drivers/net/ethernet/intel/ice/ice_lib.c      | 263 +++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_main.c     |  98 +++++--
 drivers/net/ethernet/intel/ice/ice_repr.c     |  10 +-
 drivers/net/ethernet/intel/ice/ice_txrx.c     |  40 ++-
 drivers/net/ethernet/intel/ice/ice_txrx.h     |  18 +-
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c |   2 +-
 drivers/net/ethernet/intel/ice/ice_xsk.c      |  25 +-
 10 files changed, 414 insertions(+), 64 deletions(-)

-- 
2.34.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
