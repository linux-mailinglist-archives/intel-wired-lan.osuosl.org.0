Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A2DF78F60C
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Sep 2023 01:19:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 30B4C41F8E;
	Thu, 31 Aug 2023 23:19:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 30B4C41F8E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693523957;
	bh=+VqGso0cb8HxWablC8pHETrTDy+Deaa7DSO4LIM7YqI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=U3PC/EMmv9a4599eI9ENsVSHFdLXp+g7SAcp8Nx1WSOphnbLVQzDNY3sdePX4OvND
	 lm4s5ynp7Cg/kwfqr6apG6K17pLSYWURCQbA3lmRIkcrpDw9+iy1X0caL6BJzHcsmx
	 azUcKuzDv0qJDcglb9ckbUMIh77xbEtv9ZTVm/EDsOtlv5PxUXY2bEPoJ9h2cAIT5B
	 LP995BM53TclJuvSNi5aXi4nzBBMF+WUJfH2xg9fUz0KkZ1F8HQ2M6YgppebyIjg2P
	 DOqfW2Nr+0WeTRCbJPRVemflgP9pIZdf4adQfRKV6XCEclVf5F0HYvbvDz+RfG1wRQ
	 iMDS502+F2dsw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EW0KrrGhIleJ; Thu, 31 Aug 2023 23:19:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C5B9541F29;
	Thu, 31 Aug 2023 23:19:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C5B9541F29
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8F41B1BF35D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Aug 2023 23:19:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 65AD140201
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Aug 2023 23:19:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 65AD140201
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DmMDWX2ttTq8 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 31 Aug 2023 23:19:09 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8CC754014E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Aug 2023 23:19:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8CC754014E
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="407086145"
X-IronPort-AV: E=Sophos;i="6.02,218,1688454000"; d="scan'208";a="407086145"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2023 16:19:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="805212114"
X-IronPort-AV: E=Sophos;i="6.02,218,1688454000"; d="scan'208";a="805212114"
Received: from mbeste-mobl1.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.251.215.15])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2023 16:19:07 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 31 Aug 2023 17:18:55 -0600
Message-Id: <20230831231859.3480459-1-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693523949; x=1725059949;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=i5qx/pxjdHWB1Ip8E3xSUNRXO4QYJIeB3/DXpkM9GBc=;
 b=kWGVZycMjV2f6rNMAXMy58CDoamq6I1PVySbfPTqvgcxSl2RT6RLBu0J
 746cTmwbZe7EQO3iG8xdFEBAo4hsdVKh8Idnzx2SLKNi81IFjPqVtG18V
 +d3/rIkyonrN8mNlH0/9NZzk5/HWvivWazQujZi0+H2swikM9zAhFXCqB
 reDjnajZlfAn8FLmF5WyAaUl2ekNP9y9vn3RtZveFp6IPDSdn0zirM6sk
 hAT/t3qu3mRHugANEajdqHMeJ4IXGSqCUb81djEDHDOuv4pCI/0yGqzm3
 Cn3D4LPsw/voIabIpxSxbgMEZRSGj9a42lwTIVRijf6eMT8cbRZQk9Jcg
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kWGVZycM
Subject: [Intel-wired-lan] [PATCH iwl-next v3 0/4] Support rx-fcs on/off for
 VFs
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

Allow the user to turn on/off the CRC/FCS stripping through ethtool. We
first add the CRC offload capability in the virtchannel, then the feature
is enabled in ice and iavf drivers.

We make sure that the netdev features are fixed such that CRC stripping
cannot be disabled if VLAN rx offload (VLAN strip) is enabled. Also, VLAN
stripping cannot be enabled unless CRC stripping is ON.
---
v3: Fix Tony's comments in ice_vf_init_vlan_stripping() (3/4)
v2: Move patch "ice: Fix VLAN and CRC strip co-existence" from 4/4 to 3/4
    Other minor fixes from Tony for the same patch

Haiyue Wang (2):
  ice: Support FCS/CRC strip disable for VF
  ice: Fix VLAN and CRC strip co-existence

Norbert Zulinski (1):
  iavf: Add ability to turn off CRC stripping for VF

Paul M Stillwell Jr (1):
  virtchnl: Add CRC stripping capability

 drivers/net/ethernet/intel/iavf/iavf.h        |  2 +
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 59 +++++++++++++++-
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  4 ++
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |  3 +
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 67 +++++++++++++++++--
 include/linux/avf/virtchnl.h                  | 11 ++-
 6 files changed, 139 insertions(+), 7 deletions(-)

-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
