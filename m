Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA1B464E85A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Dec 2022 09:58:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3394941016;
	Fri, 16 Dec 2022 08:58:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3394941016
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671181112;
	bh=Rg1HRr2YCQEm532oS6ditSkmaf9+kIkfZH7b00DE9Iw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=vyV/8QRn90+HkZPaeO3b1YEJ2b9XhPlTauWQw4DhF/cDBwvU2GaeGcNYhu48Iqpbs
	 d8etE0B39BNhMwOBFBAMxVDAfHawKUhrkrrY3DJsRblyPRjLIxkj5aqBqYK++hOAn6
	 tk7BeaLfnu9xCIGOmXCPpYkTShCC24O/RQGqYknbXL7fj50lZO/AyJJwxT5CpCwBCI
	 raBzgz35EWT4ISyld3GINA6t9cRf5jXuWpdCLMPRuRwclNvaFXGmdiv6YN4cswS5j0
	 9tAIF+UDUQ7NOW7bk5JdPzl6oU/3MlsSNAsdwx5xWKHVMRmZpurPIZaWdS2Dwm9e7L
	 O1GEtmufS8wrg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lFE7VGbT_3fY; Fri, 16 Dec 2022 08:58:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 22770404DA;
	Fri, 16 Dec 2022 08:58:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 22770404DA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E9BF31BF3B5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Dec 2022 08:58:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C38B3404DA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Dec 2022 08:58:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C38B3404DA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7eGYbhdMuBrM for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Dec 2022 08:58:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A358B40459
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A358B40459
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Dec 2022 08:58:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="383256475"
X-IronPort-AV: E=Sophos;i="5.96,249,1665471600"; d="scan'208";a="383256475"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2022 00:58:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="738471463"
X-IronPort-AV: E=Sophos;i="5.96,249,1665471600"; d="scan'208";a="738471463"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Dec 2022 00:58:09 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 16 Dec 2022 09:43:09 +0100
Message-Id: <20221216084319.11699-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671181104; x=1702717104;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PKhICnqQBLqA4nCAn41lCOQ8rxw1ow8CLgKH6Kn1Qmo=;
 b=fUpH+SCjrasfILnhNl6MaFsJjzfnZzG+oMzRCXE6isC7d2wp9MyGY6y6
 x0ZEKQb1Bitbtmb+gtQ+EY4Cb1t97hLT7q4vHcuUA6LD+aCiYkj9Wg7ZO
 WNXujGI74YuONkELmEZTbfwypo5oLfcZjwiimJeZEyrZ2RgeGXv3fj/tu
 fv15WU5hd4jUfKj/BwszLrX42gTWiP2M+bhy9gxSkEccg6XeV/nskpyKi
 qqwLQdhBzpWzrzKIOUZiGfurGZn//fRgghdJPskIBSZn0487muGVhkmSq
 GQ0eummC7aMfOv6kC8Fp6KJJLRZgPjoO+7s1G73tEtF+3kD4mfHWyyYrj
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fUpH+SCj
Subject: [Intel-wired-lan] [PATCH net-next v2 00/10] implement devlink
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
 drivers/net/ethernet/intel/ice/ice_main.c    | 1063 ++++++++++--------
 drivers/net/ethernet/intel/ice/ice_vf_lib.c  |    2 +-
 10 files changed, 1256 insertions(+), 1044 deletions(-)

-- 
2.36.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
