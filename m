Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CB7BF7D4EDB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Oct 2023 13:34:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 525154ED1A;
	Tue, 24 Oct 2023 11:34:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 525154ED1A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698147288;
	bh=xUACtUbodKUmGfpRzE2BGGNURoKTXDJAMttSxhkICsw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=GtsXZnKb/+s5VklTwe10OfP43hK3OIpFdaWg6ysKc5iWffzywjLppHceSykDT6dug
	 hkPAuQDpOrzgd9cC9A7Bb/htMdbTfYyUhd4FOakjJ4D99cLC+ys/PEIX5okSuZcs6F
	 AiTq2gPo1TzVWM3LS5ahvIvmE/IQeFAVZeiwPJWUdnLWSmdCHYyF3ibxSTjp54Kzcs
	 3JducLBpDzGicf2L/yrDogwno93gnrDXhGH/3zheb4TyXH0qt0YpgwD38Rql1oUi9E
	 sz0/ipDleDLCiAeEbgmHXR830AN8K7cmw7EDwXnN2PGs8fDVzpN4mCnoojw0moO/0H
	 TtyJzcwjlyJ2w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nyP-A-cG7y9Z; Tue, 24 Oct 2023 11:34:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0A7134ED1E;
	Tue, 24 Oct 2023 11:34:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0A7134ED1E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E6E001BF311
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 11:34:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C69FA42ECD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 11:34:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C69FA42ECD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FORD13S-reew for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Oct 2023 11:34:40 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5DEBA4054E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 11:34:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5DEBA4054E
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="5660513"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; 
   d="scan'208";a="5660513"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 04:34:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; 
   d="scan'208";a="6145938"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by orviesa001.jf.intel.com with ESMTP; 24 Oct 2023 04:33:20 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 24 Oct 2023 13:09:14 +0200
Message-ID: <20231024110929.19423-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698147280; x=1729683280;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CKvAcJ0UICqy+gXSIAnwDmufo4fKFX/tjp+tbbgzTG4=;
 b=CtLs9bhmMmbuC6yxjHJXbaxomyxPN8CWz5/4Nb+sHXaxOhksGv7fZa+y
 h3iGz96wbPUpxSLihoNsiWgPOKOITZeznBMpu49gSwBhnO893YNAPElOf
 PLpohhNUm/wEQ3kSuhWyZMxx2rCPgKydLNbFKUVfkRoSEarYDPtR9hc7C
 U8r7LQpkWPAQQ8au7CR868JKjqK4cLSAGpsiuAKVnvVpl/yI0pCo9gH+J
 MEzmK/GcAA87K9nnpJzCbbwI6mRaLFdtnBppekAjskDVge60HOZS7k8HX
 t5cJSXkfODv67+dEEyKWWD0r7Wh35S+oc3LijlqJzDrNHUDe3tM9h3QP/
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CtLs9bhm
Subject: [Intel-wired-lan] [PATCH iwl-next v1 00/15] one by one port
 representors creation
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
Cc: wojciech.drewek@intel.com, marcin.szycik@intel.com, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 piotr.raczynski@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

Currently ice supports creating port representors only for VFs. For that
use case they can be created and removed in one step.

This patchset is refactoring current flow to support port representor
creation also for subfunctions and SIOV. In this case port representors
need to be createad and removed one by one. Also, they can be added and
removed while other port representors are running.

To achieve that we need to change the switchdev configuration flow.
Three first patches are only cosmetic (renaming, removing not used code).
Next few ones are preparation for new flow. The most important one
is "add VF representor one by one". It fully implements new flow.

New type of port representor (for subfunction) will be introduced in
follow up patchset.

Michal Swiatkowski (15):
  ice: rename switchdev to eswitch
  ice: remove redundant max_vsi_num variable
  ice: remove unused control VSI parameter
  ice: track q_id in representor
  ice: use repr instead of vf->repr
  ice: track port representors in xarray
  ice: remove VF pointer reference in eswitch code
  ice: make representor code generic
  ice: return pointer to representor
  ice: allow changing SWITCHDEV_CTRL VSI queues
  ice: set Tx topology every time new repr is added
  ice: realloc VSI stats arrays
  ice: add VF representors one by one
  ice: adjust switchdev rebuild path
  ice: reserve number of CP queues

 drivers/net/ethernet/intel/ice/ice.h          |  13 +-
 drivers/net/ethernet/intel/ice/ice_devlink.c  |  29 +
 drivers/net/ethernet/intel/ice/ice_devlink.h  |   1 +
 drivers/net/ethernet/intel/ice/ice_eswitch.c  | 562 ++++++++++--------
 drivers/net/ethernet/intel/ice/ice_eswitch.h  |  22 +-
 .../net/ethernet/intel/ice/ice_eswitch_br.c   |  22 +-
 drivers/net/ethernet/intel/ice/ice_lib.c      |  81 ++-
 drivers/net/ethernet/intel/ice/ice_main.c     |   6 +-
 drivers/net/ethernet/intel/ice/ice_repr.c     | 195 +++---
 drivers/net/ethernet/intel/ice/ice_repr.h     |   9 +-
 drivers/net/ethernet/intel/ice/ice_sriov.c    |  20 +-
 drivers/net/ethernet/intel/ice/ice_tc_lib.c   |   4 +-
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   |   9 +-
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |   2 +-
 14 files changed, 553 insertions(+), 422 deletions(-)

-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
