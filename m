Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAAE9649DC1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Dec 2022 12:32:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2550C405AB;
	Mon, 12 Dec 2022 11:32:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2550C405AB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670844774;
	bh=pzCp9946Qm+CuDu/FVFmXcD+K1b4Mj3JV5L5+9ca6q8=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=tMIlaenkxgISiaw6FBz9UcAQREcx70sUU+6+tZa5o/YlFopGfn2TSgEW5jrcN6en9
	 GRkj7wNxWBUuytQu7mtlKX/dst9FsY6Uoy4jByf/LuwTLgaVdAU5KU1gaGb/kaDqIj
	 gY2yEix8FQHTH2VnGRQm/N59MFAsxpaOGbqQOPUweFz9wDdtIRw25IqbgSOzLKEa4z
	 77nthlGZOpPMJwS6ktjo38yMxKhDA3FZUcDm03QiSzKd+tHo0RPP0n+z/AtaG1wcWQ
	 Xf0+VFmJLjGcPwHeJlDaKlhWBwCx6K6a1deYskVRsxKTPGQ/OXPwbho26q2TdzeeqS
	 csmdFeWBZ6JoQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NmqyqnKMSwF3; Mon, 12 Dec 2022 11:32:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1FB1A4026F;
	Mon, 12 Dec 2022 11:32:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1FB1A4026F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C982E1BF2B6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Dec 2022 11:32:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A41CF8134E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Dec 2022 11:32:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A41CF8134E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MJyU2PlXRY-i for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Dec 2022 11:32:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A896A81353
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A896A81353
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Dec 2022 11:32:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10558"; a="317861403"
X-IronPort-AV: E=Sophos;i="5.96,238,1665471600"; d="scan'208";a="317861403"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2022 03:32:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10558"; a="893459654"
X-IronPort-AV: E=Sophos;i="5.96,238,1665471600"; d="scan'208";a="893459654"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by fmsmga006.fm.intel.com with ESMTP; 12 Dec 2022 03:32:43 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 12 Dec 2022 12:16:35 +0100
Message-Id: <20221212111645.1198680-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670844767; x=1702380767;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/6El1mI6P4k3y3GAALHEjsvAifPyosOsYKYtmDbkPHk=;
 b=PfyzFHGC4PbfznjnDT2sSuMJ424kBGu9hqtpmqKqUdHNiK2auhuBWUzJ
 2AdapbBGMok7QWSmozizGJGYWXuA/Gj0LC0PfivobNnT8yBf2LtjBcfKS
 Lb80EXAlju0RiPWqeI7vo4tQTQ8pKkTW7UK2SuBwiN7LLR5Ksq3undv56
 Ioir/7Krmg3q8B0MyTAUS+U8DxxTuIbgEUBSJDMi8PFRWvdoUFwvPO96M
 saYsrN7FGofjTBvBfp4sYf46lwR9JIhhF/Ujcnwmwmeg2o7orbt3+D/kr
 p2xfjAsTK5+egnkNodOq68gIImvEH0NSRemyiJgkpDOsdJUc/6g3qEOBA
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PfyzFHGC
Subject: [Intel-wired-lan] [PATCH net-next v1 00/10] implement devlink
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
Cc: mustafa.ismail@intel.com, leon@kernel.org, benjamin.mikailenko@intel.com,
 jesse.brandeburg@intel.com, leszek.kaliszczuk@intel.com, kuba@kernel.org,
 netdev@vger.kernel.org, przemyslaw.kitszel@intel.com, shiraz.saleem@intel.com
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
 drivers/net/ethernet/intel/ice/ice_lib.c     |  997 ++++++++--------
 drivers/net/ethernet/intel/ice/ice_lib.h     |    8 +-
 drivers/net/ethernet/intel/ice/ice_main.c    | 1075 ++++++++++--------
 drivers/net/ethernet/intel/ice/ice_vf_lib.c  |    2 +-
 10 files changed, 1236 insertions(+), 1026 deletions(-)

-- 
2.36.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
