Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BD11F5A63E5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Aug 2022 14:51:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 24AE64161B;
	Tue, 30 Aug 2022 12:51:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 24AE64161B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661863903;
	bh=OgCE4AMEAyC9gk3lJGtnN7gunEZUJe53DOs1beHtK2Q=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=60DZSvQbT0PyeWG8RKuWA+3POMJaQIBGSVUEsubSRFrQMY5jx0T2TMH1FbURNsGR4
	 PBy67/6w5RZd0Ukj0oJWbNUAwlZYx6/e5cGIKaIwuuEwacj5SPhSWqY1Q/+TDUgm2G
	 2rV+sigrJYkeE0+L3Xt1J5QqpTbXLx7ePd7mUGqXNcXqdjfeklTMzpl/W543XR+FRV
	 Zcj3gozNkF8DJKI71slzgAp6aCS4iFqA9FKsUm8nom4zJcoMfuHO1yybIPhNAQQ1DM
	 5T90eRAzftXb+zK5xELwxx63oTXTYqmOkHtlUUt4JMsngg9VEB6BqcB5RY3mfC8M2n
	 BThZAeGylSanQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jfgmfzF56Gah; Tue, 30 Aug 2022 12:51:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D204B4162C;
	Tue, 30 Aug 2022 12:51:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D204B4162C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4DDEB1BF3E9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Aug 2022 12:51:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3222381323
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Aug 2022 12:51:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3222381323
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MigC2oMwj5Xp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Aug 2022 12:51:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 85AFC812E9
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 85AFC812E9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Aug 2022 12:51:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10454"; a="282136281"
X-IronPort-AV: E=Sophos;i="5.93,274,1654585200"; d="scan'208";a="282136281"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2022 05:51:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,275,1654585200"; d="scan'208";a="680024087"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by fmsmga004.fm.intel.com with ESMTP; 30 Aug 2022 05:51:33 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 30 Aug 2022 14:51:20 +0200
Message-Id: <20220830125122.9665-1-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661863895; x=1693399895;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Sz2pM0oueet+LZH53lL+eqoz2BCqs9OOXqyIhNHl00c=;
 b=ElNXeYzTFgieqFS6Posc0dc5vhd8Xkg5yG5QFMkZt6oj3y3J0EfNUbBX
 BssmLTWlslayVOBbWMH8wrPDFv8bOSLKkKwJgS07mReIozrAI4hf7QtPD
 IJiCGI7yo1HoFk4lTEupImtDh9G8iF5CL6HSWqNun7yC8I72SnNfv13S/
 Vvofn16jTm1Je5/dgRJ22/lmESBbyrvox/ienDjSZVeqYHtsw4EMtWi0w
 irtFxbnSJ8VINnKMcBeQ+pvcYGAYpMq9vvTIru9hOYLR/vMsh8tDBbIbq
 wIEh9GT9UeXNI1vhYbQ5L9YNWsMp+NUyrP/wgUyvLxWp12SxdVi773kUW
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ElNXeYzT
Subject: [Intel-wired-lan] [PATCH v2 intel-net 0/2] ice: xsk: ZC changes
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
Cc: alasdair.mcwilliam@outlook.com, netdev@vger.kernel.org, bpf@vger.kernel.org,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

this set consists of two fixes to issues that were either pointed out on
indirectly (John was reviewing AF_XDP selftests that were testing ice's
ZC support) mailing list or were directly reported by customers.

First patch allows user space to see done descriptor in CQ even after a
single frame being transmitted and second patch removes the need for
having HW rings sized to power of 2 number of descriptors when used
against AF_XDP.

I also forgot to mention that due to the current Tx cleaning algorithm,
4k HW ring was broken and these two patches bring it back to life, so we
kill two birds with one stone.

v2:
- remove doubled fixes tag from patch 1
- add Alasdair to CC as he reported need for bigger rings used with
  AF_XDP ZC

Thanks!
Maciej

Maciej Fijalkowski (2):
  ice: xsk: change batched Tx descriptor cleaning
  ice: xsk: drop power of 2 ring size restriction for AF_XDP

 drivers/net/ethernet/intel/ice/ice_txrx.c |   2 +-
 drivers/net/ethernet/intel/ice/ice_xsk.c  | 165 +++++++++-------------
 drivers/net/ethernet/intel/ice/ice_xsk.h  |   7 +-
 3 files changed, 72 insertions(+), 102 deletions(-)

-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
