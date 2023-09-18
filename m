Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C43417A4181
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Sep 2023 08:48:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 54836404C1;
	Mon, 18 Sep 2023 06:48:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 54836404C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695019695;
	bh=oB/yYSwOxHg9D1SRJRrbNF7eaTvnvvhVY/r4gAlPi+c=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=juKd7pacLHim2OowAJYkvZqm6RUA7EMP1vcq5nL0e1DeyeNMuGLNfs5AAVWEMbQDL
	 e0MLs+rx8RtR3INTKZgK4u7EJEIHEvNOZGAgdgNDHHSsROmB3bRfm5n8gUmJ731w3/
	 bxH4rLxwxH9nVSrFlHOTQzxzr/x9g6tFjLaQATV/pkmFodcSzmWvrXrmS0pyCnGLd7
	 ZYnIawUfVxpTVmrABmj5s2wJ0zCgW5/dyZxT+r0YT00MXmbKs50Qxh+dZC0fC/xmhJ
	 SE1uvwu6A7hUKXDJQr7YnUaKRoUEGNGd887wDk5HsRZr5DTzlBCpcaRNa5X9dGmDbw
	 JwKake3I3NHiw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cHzxj9tBvF0U; Mon, 18 Sep 2023 06:48:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 47EDC41486;
	Mon, 18 Sep 2023 06:48:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 47EDC41486
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DB6701BF40F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 06:48:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B0A5240446
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 06:48:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B0A5240446
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I4eysb8tZjtr for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Sep 2023 06:48:08 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 94255400FE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 06:48:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 94255400FE
X-IronPort-AV: E=McAfee;i="6600,9927,10836"; a="369907509"
X-IronPort-AV: E=Sophos;i="6.02,155,1688454000"; d="scan'208";a="369907509"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2023 23:48:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10836"; a="869452216"
X-IronPort-AV: E=Sophos;i="6.02,156,1688454000"; d="scan'208";a="869452216"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by orsmga004.jf.intel.com with ESMTP; 17 Sep 2023 23:48:06 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 18 Sep 2023 08:24:02 +0200
Message-ID: <20230918062406.90359-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695019688; x=1726555688;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GS1gck9ANbiz+tFMOrhAj4TzAhzOgIqU7Aa0jlYpc2w=;
 b=DBsXllqD+3FDISHObULgaC+7aaFn9VeKNGpMmzaJWDaJAEKAOBolxp3P
 GaAKkDPuckCJRVNe+TiyK14v7TIJLeORRnJByvKX3Q7oscQaVb0z6278O
 NH2PimuAVpZbRhrh8xGMZBvh6QC0QUaN7iedKmGWA7/NVqEtbSQRkeKs0
 lpt6zmBEQfv7atoJBvZ2wCPoMPllGF8gxqwk3ED0Y8hcRG9/gXg2xMAkI
 bLnMz6TrO7nmfFzxSrSosArVYMH/r40QwIK06bIrQGiliFGelUFMJGDHQ
 rLOlvbazFLWTA7HH01KzDpf+SbnH0ZDj5HEs8FsWwOaLWVMaQ5V2Ga6su
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DBsXllqD
Subject: [Intel-wired-lan] [PATCH iwl-next v2 0/4] change MSI-X vectors per
 VF
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
Cc: netdev@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 maciej.fijalkowski@intel.com, przemyslaw.kitszel@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

This patchset is implementing sysfs API introduced here [1].

It will allow user to assign different amount of MSI-X vectors to VF.
For example when there are VMs with different number of virtual cores.

Example:
1. Turn off autoprobe
echo 0 > /sys/bus/pci/devices/0000\:18\:00.0/sriov_drivers_autoprobe
2. Create VFs
echo 4 > /sys/bus/pci/devices/0000\:18\:00.0/sriov_numvfs
3. Configure MSI-X
echo 20 > /sys/class/pci_bus/0000\:18/device/0000\:18\:01.0/sriov_vf_msix_count

v1 --> v2: [2] (Sorry for long time between versions)
 * rebase
 * reword commit message in ice: implement num_msix field per VF

[1] https://lore.kernel.org/netdev/20210314124256.70253-1-leon@kernel.org/
[2] https://lore.kernel.org/netdev/20230615123830.155927-1-michal.swiatkowski@linux.intel.com/

Michal Swiatkowski (4):
  ice: implement num_msix field per VF
  ice: add bitmap to track VF MSI-X usage
  ice: set MSI-X vector count on VF
  ice: manage VFs MSI-X using resource tracking

 drivers/net/ethernet/intel/ice/ice.h          |   2 +
 drivers/net/ethernet/intel/ice/ice_lib.c      |   2 +-
 drivers/net/ethernet/intel/ice/ice_main.c     |   2 +
 drivers/net/ethernet/intel/ice/ice_sriov.c    | 257 ++++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_sriov.h    |  13 +
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |   4 +-
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |   2 +-
 7 files changed, 258 insertions(+), 24 deletions(-)

-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
