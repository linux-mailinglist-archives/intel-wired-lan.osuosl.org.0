Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CA3D06D1ED9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Mar 2023 13:16:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 20B9D61702;
	Fri, 31 Mar 2023 11:16:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 20B9D61702
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680261371;
	bh=D5nwcH3IYG6N85MFQU0UnwAnPYpPYbvtcn1QLob3ahc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=OBxqLzy0eux6fgBEevN6KRLyGUFPZfWtnhWIQ2hN2DZ+UJK5CHVvzItodq7R5Zwqn
	 /bKqNylbcLkocTVsqkkYNB3RG0qLuoiYSzqHTr1Coq+070THGFUcKpsHgcySmyC5c8
	 7jsTCz7ZgMMRJLWIMdDxmzEFJUzA5BuhOX91+IndhUyax3NyKGa68XtDptzPFaI+Zd
	 05maHM+7fgErydB1WZKP6Q9TnmHKMavXdkhQSEFYnNEqo5hHysFbd1Kk5IPlr7kB1b
	 3hfsr/2HzevSY6TBhgGzomF3egi6ulm6JScqe5jzkvjWq3m2W3xS3Q/luHUHv4W4w7
	 2QLt1hTuiwZIg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3yfiwDIXQp42; Fri, 31 Mar 2023 11:16:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 10040616FC;
	Fri, 31 Mar 2023 11:16:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 10040616FC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EB8081BF2F6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Mar 2023 11:16:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C3C3E616FE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Mar 2023 11:16:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C3C3E616FE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TtGKOpIP-MKj for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Mar 2023 11:16:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D0B4560A7D
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D0B4560A7D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Mar 2023 11:16:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="404145466"
X-IronPort-AV: E=Sophos;i="5.98,307,1673942400"; d="scan'208";a="404145466"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2023 04:16:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="931124292"
X-IronPort-AV: E=Sophos;i="5.98,307,1673942400"; d="scan'208";a="931124292"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by fmsmga006.fm.intel.com with ESMTP; 31 Mar 2023 04:16:01 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 31 Mar 2023 12:57:43 +0200
Message-Id: <20230331105747.89612-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680261363; x=1711797363;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CAfZ1cVuv4wY0rsWo7piwDden06uFqs9+xX1wozLqPE=;
 b=bjZn8KP2w3rtVp7nUBFqoaXeA+vnZF8kLjKNekaoNk6jJX+bMJNpUv1k
 U5qOlUvYLDaKRh3a9SlbdEQLYgW2N31b1T4SMJsB0XEMg927GCYzhbyPy
 +EfutolIJt/H76ZSi1bsJGuflkFBZH85Sq6kaOGnIdJgaX6veW6uUbMlf
 6POB2xRIMlTWe9hnhk9uyZ/AhgdwPz3pVvCAfs6Ha3r8+eDIohVNNkggq
 mhpls5itnaBEG6r84FTtV3kXIKDsg1jOJdM869y+24byl/i2AgkJYPbk+
 iTlUgJyukuM3jRH97nboPvDmwgxmcGbmiNbUbc547NeAPAFKPiChfpnax
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bjZn8KP2
Subject: [Intel-wired-lan] [PATCH net-next 0/4] ice: allow matching on
 metadata
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
Cc: netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

This patchset is intended to improve the usability of the switchdev
slow path. Without matching on a metadata values slow path works
based on VF's MAC addresses. It causes a problem when the VF wants
to use more than one MAC address (e.g. when it is in trusted mode).

Parse all metadata in the same place where protocol type fields are
parsed. Add description for the currently implemented metadata. It is
important to note that depending on DDP not all described metadata can
be available. Using not available metadata leads to error returned by
function which is looking for correct words in profiles read from DDP.

There is also one small improvement, remove of rx field in rule info
structure (patch 2). It is redundant.

Michal Swiatkowski (4):
  ice: define metadata to match in switch
  ice: remove redundant Rx field from rule info
  ice: allow matching on metadata
  ice: use src VSI instead of src MAC in slow-path

 drivers/net/ethernet/intel/ice/ice_eswitch.c  |  76 +++----
 drivers/net/ethernet/intel/ice/ice_eswitch.h  |  14 --
 .../ethernet/intel/ice/ice_protocol_type.h    | 196 +++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_repr.c     |  17 --
 drivers/net/ethernet/intel/ice/ice_repr.h     |   5 +-
 drivers/net/ethernet/intel/ice/ice_switch.c   | 182 +++++++---------
 drivers/net/ethernet/intel/ice/ice_switch.h   |   9 +-
 drivers/net/ethernet/intel/ice/ice_tc_lib.c   |  34 ++-
 drivers/net/ethernet/intel/ice/ice_tc_lib.h   |   1 +
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   |   3 -
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |   8 -
 .../net/ethernet/intel/ice/ice_vlan_mode.c    |   2 +-
 12 files changed, 319 insertions(+), 228 deletions(-)

-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
