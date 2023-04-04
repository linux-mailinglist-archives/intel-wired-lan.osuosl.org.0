Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D8E826D59EC
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Apr 2023 09:47:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5100640546;
	Tue,  4 Apr 2023 07:47:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5100640546
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680594446;
	bh=facVSF8BXRSOmoKjJ5LxSQ/EHPqY7yQmEfuSNGtWvfA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=UDc6DXe6hWYOIuzb0tFntNFugCKlmS5LosSxDOhK7WFo7+yg99MsykgWynYJt9pRR
	 Ol2JstTtcFNd5gmpF2EZsFU3JfWBa4mdQT7AN+7RrE55159tpfxBBlEyRohWTE/U3l
	 pT5bsui7rwNGI6Kcfr8tnAK8d2CDzmko4lT9d1byXD2gPzlvz3tGlR1KmnmMa7d0kQ
	 A3zEP8PxZhq3UIow4c0f4KGTBJGLmYo6png/HZBEafZFqkRtwLOIE3GjmqcZmMUlXx
	 v+w/zMl28bFFdKjYJ31lPs+8Iy6rY0kYnj0UGQlgwW/2KKalS0cg3j1RmWcCKs75Zm
	 ZbBM3Sn+UerJg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5E3t7AbsvOqp; Tue,  4 Apr 2023 07:47:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 806CA405CE;
	Tue,  4 Apr 2023 07:47:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 806CA405CE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D401F1C275B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Apr 2023 07:47:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B2FCC40256
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Apr 2023 07:47:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B2FCC40256
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d3udnidJJlpJ for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Apr 2023 07:47:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A6CAD40546
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A6CAD40546
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Apr 2023 07:47:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="404877587"
X-IronPort-AV: E=Sophos;i="5.98,317,1673942400"; d="scan'208";a="404877587"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 00:47:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="797421805"
X-IronPort-AV: E=Sophos;i="5.98,317,1673942400"; d="scan'208";a="797421805"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by fmsmga002.fm.intel.com with ESMTP; 04 Apr 2023 00:47:16 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  4 Apr 2023 09:28:29 +0200
Message-Id: <20230404072833.3676891-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680594438; x=1712130438;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=q8frmjS9JbaV+Gzo3nPdtGBmDzHBXz957rD4hn+IAOg=;
 b=bZv3FK5r4fsnjyOj6RwIRqC4ProKjdlhxfEdmvNyKOcaaEJzskFJDmoq
 f9rv0IqgZD3Ta3jdOnA2S+LvtDj3IO2B72YekEpv127Cg+NR9yt//t1v3
 BwrELGyYOBUt/sKDDWZfMIHCFSXRtC/fiC5juCgNdOnaO25zoT3qGWnJN
 1z40jyqmj47UdJ4Lr+P6AqAohIKw0PIrA/9UbDMKCnaCUyRvXa7/BP4/q
 ARDwJqvlINTsFlG4vp1Lb3ofpZse+ITpozN1SLBjKTOXW/Z+JVV0eDqIx
 5KJYdytbfAh1wXlHVUhdUO2axPoVhbjrO7o7y5cfA3o+QOu+2sDlGSppu
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bZv3FK5r
Subject: [Intel-wired-lan] [PATCH net-next v2 0/4] ice: allow matching on
 meta data
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
slow path. Without matching on a meta data values slow path works
based on VF's MAC addresses. It causes a problem when the VF wants
to use more than one MAC address (e.g. when it is in trusted mode).

Parse all meta data in the same place where protocol type fields are
parsed. Add description for the currently implemented meta data. It is
important to note that depending on DDP not all described meta data can
be available. Using not available meta data leads to error returned by
function which is looking for correct words in profiles read from DDP.

There is also one small improvement, remove of rx field in rule info
structure (patch 2). It is redundant.

v1 --> v2:
 * fix spell issues
 * use GENMASK to define source VSI mask

Michal Swiatkowski (4):
  ice: define meta data to match in switch
  ice: remove redundant Rx field from rule info
  ice: allow matching on meta data
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
