Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 081FF65306D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Dec 2022 12:54:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3F20640B67;
	Wed, 21 Dec 2022 11:53:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3F20640B67
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671623639;
	bh=7jT6fdqp8GRSyY71TQYquiBluqNwnHb0bxPMa+9F73Q=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=5sVYX2gQdwXMJRDeEMuFcS2B7Xu3qxRNh3yw/knJfX8cwClJyo1LEiPv8K9iwBVs6
	 b8ymuCY5EbUMkjY+g3bsS2FoG+SvM67faDGGMJ17XNjsZr1nm1ldlfvJplz/WjTSl9
	 K2jxamvry0Xy+qLhhkhFeLNwzCSL2tM8trSpchXWmLRyVhrJchJfdbJGObo9GLwtHt
	 GUW95yu1o+0DjH/dJ6h/ZTjwQNDHB80Sh5izEJhBkLNJdKeND0cFKRK+2PR6CihHtA
	 ASzHwncotGWMdrhsvvEIMSoYGGsnpX+sN9KdObWUBzUlhRd44y1lRcBUCArM2YbvKs
	 LS4YrH0n9q7Rg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id obUZFvfXF4u4; Wed, 21 Dec 2022 11:53:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 290F040B64;
	Wed, 21 Dec 2022 11:53:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 290F040B64
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 150961BF616
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 11:53:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E365040B79
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 11:53:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E365040B79
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aLNRbQN8oW-d for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Dec 2022 11:53:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E412240B64
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E412240B64
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 11:53:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="321766131"
X-IronPort-AV: E=Sophos;i="5.96,262,1665471600"; d="scan'208";a="321766131"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 03:53:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="714799327"
X-IronPort-AV: E=Sophos;i="5.96,262,1665471600"; d="scan'208";a="714799327"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by fmsmga008.fm.intel.com with ESMTP; 21 Dec 2022 03:53:47 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 21 Dec 2022 12:38:12 +0100
Message-Id: <20221221113822.12858-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671623631; x=1703159631;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qF9kAdhDW/wbMXwFn6eLLxyKOC1xJq+QawEpqZCs+qo=;
 b=lP3c/L1fsO6xgjV/zCmOmnhWKGi4paGZQLa+PdHHdTBNpM99zmW3YIZG
 7c+j68jpaI26lEQZsuw1cZy5QM8Uskv8hLRvg7J271iQ9mq97yH1u+lI/
 g1MBVuW97JhJV7OXKCdIaVPbrnAlLk7pJNWeXD+N71Fqxl3IhMrAtDJXs
 dE3sw7xFCBrjPgSgXxWaaSQ0CkdEvWZsmZ+4gBaaPfs8BMJAGeNJedQaO
 +93To04mKy6veDO/iTtfAu/rd/tX7QWMW1O6kjFAGHH5Iq8+ULf6iV8Q7
 Y5mbReFbMC9OIKDq/AsSV1E7qlx5VpIf9fErX19hLtw094XsNFtdGJAZ7
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lP3c/L1f
Subject: [Intel-wired-lan] [PATCH net-next v3 00/10] implement devlink
 reload in ice
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
Cc: mustafa.ismail@intel.com, benjamin.mikailenko@intel.com,
 jesse.brandeburg@intel.com, leszek.kaliszczuk@intel.com,
 przemyslaw.kitszel@intel.com, shiraz.saleem@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

This is a part of changes done in patchset [0]. Resource management is
kind of controversial part, so I split it into two patchsets.

It is the first one, covering refactor and implement reload API call.
The refactor will unblock some of the patches needed by SIOV or
subfunction.

Most of this patchset is about implementing driver reload mechanism.
Part of code from probe and rebuild is used to not duplicate code.
To allow this reuse probe and rebuild path are split into smaller
functions.

Patch "ice: split ice_vsi_setup into smaller functions" changes
boolean variable in function call to integer and adds define
for it. Instead of having the function called with true/false now it
can be called with readable defines ICE_VSI_FLAG_INIT or
ICE_VSI_FLAG_NO_INIT. It was suggested by Jacob Keller and probably this
mechanism will be implemented across ice driver in follow up patchset.

Previously the code was reviewed here [0].

[0] https://lore.kernel.org/netdev/Y3ckRWtAtZU1BdXm@unreal/T/#m3bb8feba0a62f9b4cd54cd94917b7e2143fc2ecd

I did basic tests:
 * devlink reinit without a traffic
 * devlink reinit when there is a traffic
 * devlink reinit when some features are on (like switchdev, VFs etc.)
 -> reinit is blocked
 * check KASAN output while do the tests

v2 --> v3:
 * there was another crash, this time in rmmod (apologize for that) ->
 cleanup remove path
 * KASAN found that there was memory leak because calling setting cpu rx
 map twice, fix it by calling it only in VSI config path

v1 --> v2:
 * fix crash caused by merger error with VSI statistic

Jacob Keller (1):
  ice: stop hard coding the ICE_VSI_CTRL location

Michal Swiatkowski (9):
  ice: move RDMA init to ice_idc.c
  ice: alloc id for RDMA using xa_array
  ice: cleanup in VSI config/deconfig code
  ice: split ice_vsi_setup into smaller functions
  ice: split probe into smaller functions
  ice: sync netdev filters after clearing VSI
  ice: move VSI delete outside deconfig
  ice: update VSI instead of init in some case
  ice: implement devlink reinit action

 drivers/net/ethernet/intel/ice/ice.h         |    6 +-
 drivers/net/ethernet/intel/ice/ice_common.c  |   11 +-
 drivers/net/ethernet/intel/ice/ice_devlink.c |  103 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.c |    2 +-
 drivers/net/ethernet/intel/ice/ice_fltr.c    |    5 +
 drivers/net/ethernet/intel/ice/ice_idc.c     |   53 +-
 drivers/net/ethernet/intel/ice/ice_lib.c     | 1047 ++++++++---------
 drivers/net/ethernet/intel/ice/ice_lib.h     |    8 +-
 drivers/net/ethernet/intel/ice/ice_main.c    | 1090 ++++++++++--------
 drivers/net/ethernet/intel/ice/ice_vf_lib.c  |    2 +-
 10 files changed, 1253 insertions(+), 1074 deletions(-)

-- 
2.36.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
