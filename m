Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 557F56280DE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Nov 2022 14:12:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6D02381911;
	Mon, 14 Nov 2022 13:11:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6D02381911
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668431518;
	bh=VYkty6NFUtlx0OngjJz1dmRqu67NQ4y4/N8MWbw+qrk=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=l+9LAEe0ZYhVwfmO5+szOE9uEewwVJSiYgaUQn0Uv4NuajCHofgwManePeQ/5ifei
	 +hFb5+E871y4OD4Bz04N+rRpeqnFO1HYW/fjKbmrcDgOiKclF9J2kG2VPQUSOBgacg
	 YFtxE24OohX7003ZqFATdJAQWME33tz4jdn7yotiL3v5MTszVXLnwYMpbbXUVkvqQk
	 3hdk332hqdyriMUvTCGUGqQcLgsx2z993pl2JkIriBLFD5iBRZBKQsuyJ/nXC9KgIj
	 G4HcTd506OEZC5UDmOet8H6kUbW1ozy/3e+Q6pKRFGFRTe7j4pY107dObhR1eGAlQC
	 jpsCKZ1LorfPg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IRj1EpDklb0c; Mon, 14 Nov 2022 13:11:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 49286817FF;
	Mon, 14 Nov 2022 13:11:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 49286817FF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 422C91BF379
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 13:11:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 292C0817FF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 13:11:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 292C0817FF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yqo99HjR4TE5 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Nov 2022 13:11:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 68EDC817D3
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 68EDC817D3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 13:11:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="309590999"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="309590999"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 05:11:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="616305813"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="616305813"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by orsmga006.jf.intel.com with ESMTP; 14 Nov 2022 05:11:45 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: netdev@vger.kernel.org, davem@davemloft.net, kuba@kernel.org,
 pabeni@redhat.com, edumazet@google.com
Date: Mon, 14 Nov 2022 13:57:42 +0100
Message-Id: <20221114125755.13659-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668431511; x=1699967511;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=u1XEetprpcT9DVPX1AZNlJyceve4yFTp+k+XYN2n7A8=;
 b=LpyLr3Vmk6A4UJkeFnGu/aSv4FWvqXiWyEsxJ3x+nt34GLRNWPPwkNhb
 ZSf+Xktpd5yQ8FTqe9D1u3qN2XO+26kYD5iN0Lq7uzz0BSgRP4Ol4JiY0
 1DL7O9tY1xkMl6EaztAmn5Iu+vfTvrfjbiLBV7m1ckVyShSTJkFzur1Tc
 W84qYcsyxwUrSCXQ7mnj+5f/CB7B8uyQlU+ojKDUoPsnNuu8hKGplZ2wx
 Ki4GFekWYCeWyt2CcYS6OIwGtuZ2j0bhrDDH/VGtNxrOtY0grQkzcKNEQ
 zWxsMFO+rjzF0B9bPhHsZKkJwMTKI1HHm9tpUpsz/A2OTYSk1kltyiaFT
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LpyLr3Vm
Subject: [Intel-wired-lan] [PATCH net-next 00/13] resource management using
 devlink reload
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
Cc: mustafa.ismail@intel.com, leszek.kaliszczuk@intel.com, jiri@nvidia.com,
 intel-wired-lan@lists.osuosl.org, shiraz.saleem@intel.com,
 przemyslaw.kitszel@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently the default value for number of PF vectors is number of CPUs.
Because of that there are cases when all vectors are used for PF
and user can't create more VFs. It is hard to set default number of
CPUs right for all different use cases. Instead allow user to choose
how many vectors should be used for various features. After implementing
subdevices this mechanism will be also used to set number of vectors
for subfunctions.

The idea is to set vectors for eth or VFs using devlink resource API.
New value of vectors will be used after devlink reinit. Example
commands:
$ sudo devlink resource set pci/0000:31:00.0 path msix/msix_eth size 16
$ sudo devlink dev reload pci/0000:31:00.0
After reload driver will work with 16 vectors used for eth instead of
num_cpus.

The default number of queues is implicitly derived from interrupt
vectors and can be later changed by ethtool.
To decrease queues used on eth user can decrease vectors on eth.
The result will be the same. Still user can change number of queues
using ethtool:
$ sudo ethtool -L enp24s0f0 tx 72 rx 72
but maximum queues amount is equal to amount of vectors.

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

Patch 1 - 10	-> cleanup code to reuse most of the already
                   implemented function in reload path
Patch 11	-> implement devlink reload API
Patch 12        -> prepare interrupts reservation, make irdma see
                   changeable vectors count
Patch 13        -> changing number of vectors


Jacob Keller (1):
  ice: stop hard coding the ICE_VSI_CTRL location

Michal Kubiak (1):
  devlink, ice: add MSIX vectors as devlink resource

Michal Swiatkowski (11):
  ice: move RDMA init to ice_idc.c
  ice: alloc id for RDMA using xa_array
  ice: cleanup in VSI config/deconfig code
  ice: split ice_vsi_setup into smaller functions
  ice: split probe into smaller functions
  ice: sync netdev filters after clearing VSI
  ice: move VSI delete outside deconfig
  ice: update VSI instead of init in some case
  ice: implement devlink reinit action
  ice: introduce eswitch capable flag
  ice, irdma: prepare reservation of MSI-X to reload

 .../networking/devlink/devlink-resource.rst   |   10 +
 drivers/infiniband/hw/irdma/main.c            |    2 +-
 drivers/net/ethernet/intel/ice/ice.h          |   23 +-
 drivers/net/ethernet/intel/ice/ice_common.c   |   11 +-
 drivers/net/ethernet/intel/ice/ice_devlink.c  |  263 +++-
 drivers/net/ethernet/intel/ice/ice_devlink.h  |    2 +
 drivers/net/ethernet/intel/ice/ice_eswitch.c  |    6 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |    6 +-
 drivers/net/ethernet/intel/ice/ice_fltr.c     |    5 +
 drivers/net/ethernet/intel/ice/ice_idc.c      |   57 +-
 drivers/net/ethernet/intel/ice/ice_lib.c      |  789 +++++-----
 drivers/net/ethernet/intel/ice/ice_lib.h      |    8 +-
 drivers/net/ethernet/intel/ice/ice_main.c     | 1354 ++++++++++-------
 drivers/net/ethernet/intel/ice/ice_sriov.c    |    3 +-
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   |    2 +-
 include/net/devlink.h                         |   14 +
 16 files changed, 1517 insertions(+), 1038 deletions(-)

-- 
2.36.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
