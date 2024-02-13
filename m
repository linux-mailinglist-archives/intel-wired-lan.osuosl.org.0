Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A3EF8529B1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Feb 2024 08:23:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6E8A460AEF;
	Tue, 13 Feb 2024 07:23:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DzAkxrguU7W1; Tue, 13 Feb 2024 07:23:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8AAD360AF0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707808992;
	bh=Ocaf2m/UDQIRZrLN4zRjob2AGXh+gkehCoGz5ts26M4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=sPAZoBqzndWnxbNvSTpR4P1apM8gNdUqSgPZHsMAE/LkAQ6m/FRzd+R5S+puyvsX9
	 4QM3kk2H/CyB/o7Ns0xEppfjuIemtWlVH4/NyzV448B9dGyUD5HbMUETCzUbTeRLPj
	 u5BDXAsuhFfTVwavqXak24we+egVl7ktU7gjMzj6YFKh23bPaCDisOK4+CK7cXr7C6
	 oDTHI/U/lVxd2TeOOPTIqra+BrT8Q7fYXxfhU8YpbhCFLELbO/X6g0PhiVGqOem8A3
	 iCLW+iGJKRSnkOLWE5WJFjr/Y+hod5yKUGxWV9Rb5EqAAh1Cm6BWwUn9qOtF1gs07G
	 5rHa/0gDBH4pA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8AAD360AF0;
	Tue, 13 Feb 2024 07:23:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 25B631BF5F5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 07:23:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1BF2540898
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 07:23:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vxXmGk8X0NmM for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Feb 2024 07:23:09 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3029A40833
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3029A40833
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3029A40833
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 07:23:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="27247931"
X-IronPort-AV: E=Sophos;i="6.06,156,1705392000"; d="scan'208";a="27247931"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2024 23:23:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,156,1705392000"; 
   d="scan'208";a="7385189"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by fmviesa003.fm.intel.com with ESMTP; 12 Feb 2024 23:23:06 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 13 Feb 2024 08:27:09 +0100
Message-ID: <20240213072724.77275-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707808989; x=1739344989;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fmMjSV/TwcjoFRbSnNFfL1tMSWdjsIk64WX/awgYy9s=;
 b=Kh5QjqctUiMyg8ZCR9bcyIdtEOTjq11963+jhKTRVyD5i/bFQ8ijqolm
 enr470rSZe94K+4Fn+F4q1FjZhdsoz2A6xXdUKOst5IjdCJ3lcG2EpI4H
 B8ed8iXltR/5Vx3ijkKaRwMYw6uA9nGP6MkWaE4zuDr1TegVV7HUsTGRJ
 m0LEH72Hs0gpx3UDaeAaCRczisU00cEpLjdFssTOlSvNnGm5XwXxJB37j
 x2b1SG4fThMYdtYkKSqVIh71ZfdCITX2dunbj3jmse5sKLvcos6CQRx/R
 jtjJwJ8PM6WZ0y5kGpfsiAC8UWzLpVT/w3Bn8DeHEccDLmBo1GW9+6ogQ
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Kh5Qjqct
Subject: [Intel-wired-lan] [iwl-next v1 00/15] ice: support devlink
 subfunctions
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
Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 maciej.fijalkowski@intel.com, sridhar.samudrala@intel.com,
 netdev@vger.kernel.org, michal.kubiak@intel.com, pio.raczynski@gmail.com,
 przemyslaw.kitszel@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently ice driver does not allow creating more than one networking
device per physical function. The only way to have more hardware backed
netdev is to use SR-IOV.

Following patchset adds support for devlink port API. For each new
pcisf type port, driver allocates new VSI, configures all resources
needed, including dynamically MSIX vectors, program rules and registers
new netdev.

This series supports only one Tx/Rx queue pair per subfunction.

Example commands:
devlink port add pci/0000:31:00.1 flavour pcisf pfnum 1 sfnum 1000
devlink port function set pci/0000:31:00.1/1 hw_addr 00:00:00:00:03:14
devlink port function set pci/0000:31:00.1/1 state active
devlink port function del pci/0000:31:00.1/1

Patch 1    -> Move devlink port related code to separate file
Patch 2-5  -> Add basic support for devlink subfunctions
Patch 6    -> Expose auxiliary bus devices for subfunctions
Patch 7    -> Expose auxiliary device sfnum attribute in sysfs
Patch 8-13 -> Add eswitch support for subfunctions

Michal Swiatkowski (8):
  ice: store SF data in VSI struct
  ice: store representor ID in bridge port
  ice: create port representor for SF
  ice: check if SF is ready in ethtool ops
  ice: netdevice ops for SF representor
  ice: support subfunction devlink Tx topology
  ice: basic support for VLAN in subfunctions
  ice: move ice_devlink.[ch] to devlink folder

Pawel Chmielewski (1):
  ice: add subfunctions ethtool ops

Piotr Raczynski (6):
  ice: move devlink port code to a separate file
  ice: add new VSI type for subfunctions
  ice: export ice ndo_ops functions
  ice: add basic devlink subfunctions support
  ice: add subfunction aux driver support
  ice: add auxiliary device sfnum attribute

 drivers/net/ethernet/intel/ice/Makefile       |   6 +-
 .../intel/ice/{ => devlink}/ice_devlink.c     | 468 +--------
 .../intel/ice/{ => devlink}/ice_devlink.h     |   3 +
 .../intel/ice/devlink/ice_devlink_port.c      | 986 ++++++++++++++++++
 .../intel/ice/devlink/ice_devlink_port.h      |  49 +
 drivers/net/ethernet/intel/ice/ice.h          |  19 +-
 drivers/net/ethernet/intel/ice/ice_base.c     |   5 +-
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c  |   3 +-
 drivers/net/ethernet/intel/ice/ice_eswitch.c  |  84 +-
 drivers/net/ethernet/intel/ice/ice_eswitch.h  |  22 +-
 .../net/ethernet/intel/ice/ice_eswitch_br.c   |   4 +-
 .../net/ethernet/intel/ice/ice_eswitch_br.h   |   1 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  43 +-
 drivers/net/ethernet/intel/ice/ice_lib.c      |  53 +-
 drivers/net/ethernet/intel/ice/ice_lib.h      |   3 +
 drivers/net/ethernet/intel/ice/ice_main.c     |  70 +-
 drivers/net/ethernet/intel/ice/ice_repr.c     | 197 ++--
 drivers/net/ethernet/intel/ice/ice_repr.h     |  23 +-
 drivers/net/ethernet/intel/ice/ice_sf_eth.c   | 354 +++++++
 drivers/net/ethernet/intel/ice/ice_sf_eth.h   |  36 +
 .../ethernet/intel/ice/ice_sf_vsi_vlan_ops.c  |  21 +
 .../ethernet/intel/ice/ice_sf_vsi_vlan_ops.h  |  13 +
 drivers/net/ethernet/intel/ice/ice_sriov.c    |   4 +-
 drivers/net/ethernet/intel/ice/ice_txrx.c     |   2 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   |   4 +-
 .../net/ethernet/intel/ice/ice_vsi_vlan_ops.c |   4 +
 drivers/net/ethernet/intel/ice/ice_xsk.c      |   2 +-
 28 files changed, 1902 insertions(+), 578 deletions(-)
 rename drivers/net/ethernet/intel/ice/{ => devlink}/ice_devlink.c (80%)
 rename drivers/net/ethernet/intel/ice/{ => devlink}/ice_devlink.h (90%)
 create mode 100644 drivers/net/ethernet/intel/ice/devlink/ice_devlink_port.c
 create mode 100644 drivers/net/ethernet/intel/ice/devlink/ice_devlink_port.h
 create mode 100644 drivers/net/ethernet/intel/ice/ice_sf_eth.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_sf_eth.h
 create mode 100644 drivers/net/ethernet/intel/ice/ice_sf_vsi_vlan_ops.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_sf_vsi_vlan_ops.h

-- 
2.42.0

