Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 15B9062FF5D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Nov 2022 22:30:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3C55B82247;
	Fri, 18 Nov 2022 21:30:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3C55B82247
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668807009;
	bh=KV78rGTaQ2Cf0nOGYz50EDGA+56Gqw2GvpqiapT6OH4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=SIEbJTIBXAaMdm/mlBhZHBczIBy6eft3+9wUU0PnDDYpoE9ddEChpm7P+j9qh91Qf
	 2O0yd6wZ4skzIJLJ3uomOVYuATWzZJ1By+VGa8S7QgPOskYY9cHnYwflvyLiWRQGau
	 iCMrCV+1XQkHaE45zvZb5WAVW3kFc1NEXokji7efkPs1r0XmzEitJmhVXSP5xK9i5e
	 fUG6IwxqdAIdzhE84M9jeRwUh6/sMJz9fKDHRjDsZjfnnPAmXB61fjouGxh3Iqnb3X
	 qN8Z0n/2T27E/N1JwTCqTi3pPB+OumwMcU7zR4UvLnCO458kPWIxy8QSXcJfcD5J0R
	 kko5mWzJioOxg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IhMDEjET7xCL; Fri, 18 Nov 2022 21:30:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3812382199;
	Fri, 18 Nov 2022 21:30:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3812382199
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 965181BF5E6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Nov 2022 21:30:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 733A841A2D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Nov 2022 21:30:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 733A841A2D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yZJ91wQJJlOL for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Nov 2022 21:30:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2069641A00
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2069641A00
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Nov 2022 21:30:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10535"; a="310871462"
X-IronPort-AV: E=Sophos;i="5.96,175,1665471600"; d="scan'208";a="310871462"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2022 13:28:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10535"; a="618153901"
X-IronPort-AV: E=Sophos;i="5.96,175,1665471600"; d="scan'208";a="618153901"
Received: from unknown (HELO fedora.jf.intel.com) ([10.166.232.13])
 by orsmga006.jf.intel.com with ESMTP; 18 Nov 2022 13:28:36 -0800
From: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 18 Nov 2022 16:20:00 -0500
Message-Id: <20221118212002.17023-1-benjamin.mikailenko@intel.com>
X-Mailer: git-send-email 2.34.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668807002; x=1700343002;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=iZs1TVPHQMWn1IwOXuL1+CxdzbTnWkP26X+v04o7lLM=;
 b=LDnwboH3sS1UJOsbtHCdipVwR23nXbYKI4hsapbqO3IxHnsizhpU46/Y
 NJ4RsZgKIZCw/EbWKlIQ2ahCYU8xGJtbRVi+Du+pvxF3sgb2caGMCWyNE
 S1j09Y3aDyZssbtt2g9xSe6s/x4rXTKWkWgc0CMpXKeH5VsKdczk49iCg
 u2ij0xlyBhOjibKHtHsia3R9vm/3HsykhFyvgKQT3H0GvP6E/zT33Cw83
 fUlQKl37eWTq4sbo1fjavU+CjsdxbpI8XbbgUUoGR0iFuFtd1e7ltKXk2
 EfC1tntWmQxK29jtd/gsRMg/g24nHW7UXe/XohpxuOxoJckWiXqbySFq2
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LDnwboH3
Subject: [Intel-wired-lan] [net-next,
 v8 0/2] Accumulate statistics over reset
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
 drivers/net/ethernet/intel/ice/ice_lib.c      | 240 +++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_main.c     |  96 +++++--
 drivers/net/ethernet/intel/ice/ice_repr.c     |  10 +-
 drivers/net/ethernet/intel/ice/ice_txrx.c     |  40 ++-
 drivers/net/ethernet/intel/ice/ice_txrx.h     |  18 +-
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c |   2 +-
 drivers/net/ethernet/intel/ice/ice_xsk.c      |  25 +-
 10 files changed, 388 insertions(+), 65 deletions(-)

-- 
v2: Fixed styling
v3: Allocate statistic structures when XDP is enabled
v4: Added revision notes
v5: Moved revision notes
v6: Removed unnecessary managed allocations and null checks
v7: Removed unnecessary managed frees
v8: Removed unused variables
2.34.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
