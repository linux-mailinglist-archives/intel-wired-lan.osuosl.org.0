Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 360438A85AD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Apr 2024 16:15:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C41E781258;
	Wed, 17 Apr 2024 14:15:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9--4PFeaPs-7; Wed, 17 Apr 2024 14:15:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C6BE48127C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713363339;
	bh=lbCQ26+aWoDdQxa4CzP7+0iHcDyVxuX3YwWibp6BKxY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=JBFdAPmPdgJIcUC0e244izlyWZoQAN8DydgRU7fKQ3v2naTRXktEYuNH9QxDEMEv+
	 Ktx+gQtC69iYXvSswQ3kv+rWI2BCfEkGE2mmYtWDXU5GMVYNKMxQQcBKX1S6BMWBxW
	 7L8wAayjLw9KlhPRhhlNspyMP+A972AMKB/rVMm5vxtQ7zDutaIOsAbvdCn3SU3bNZ
	 HKSN4LzHl88spXV9bUllscu96T7yluK2VxkSjTXPzSHgZWnTatLyxlPXY1Ncb0BuiJ
	 0I39pJ6IGsyNSgRFNahgmM78AJX0lHZ24m4/siucPKj78bUaf3NURLzcrtYRoKgS4z
	 MsASAhMsQEUVQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C6BE48127C;
	Wed, 17 Apr 2024 14:15:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7E7F51BF46D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Apr 2024 14:15:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6A1EE4053D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Apr 2024 14:15:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id krzuG7sUwm64 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Apr 2024 14:15:37 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C5AE24029F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C5AE24029F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C5AE24029F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Apr 2024 14:15:36 +0000 (UTC)
X-CSE-ConnectionGUID: 82UwAU+JR6iX9r/Hp/Bqig==
X-CSE-MsgGUID: 6oZ/t7CXTL2Kh2Bh8905zg==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="8737119"
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; 
   d="scan'208";a="8737119"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 07:15:36 -0700
X-CSE-ConnectionGUID: 5Zq7/RrJRbmKLLdSfckYMw==
X-CSE-MsgGUID: TdjBa5heSNG8iU7qC1Grlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; d="scan'208";a="60050415"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by orviesa001.jf.intel.com with ESMTP; 17 Apr 2024 07:15:32 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 17 Apr 2024 16:20:20 +0200
Message-ID: <20240417142028.2171-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713363337; x=1744899337;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=IwfWNPWVBZNxZI3Dk4aMQgJmBNpm4beFZBiuwuZ5v/k=;
 b=JXC2RTB/EEesFdZ5xUeA++rHMY0cIe4n2GaTRJ+6SMfylWvvT/8dWNQk
 NR+xMzqHoniFcwhohSEW2XO0dg+UpWk6BfJMkpZS9XXMigmmZw+WvU5es
 7I0jqpE32vSSr28jwAGcGeG+JC6T54BOzXLmt5IpxI532srBiAMkcKnoP
 c70VsNHHeHKhCHY0pYWGzQBWuMG385QhwpqInu3GJo9Hl2Cye9piT6jMk
 CIGTcJQ91FJZLpM/YgN1Ro67QUmvVzT5fxAIrfsyDTq+JGs9is3K+Xjix
 ZQw7tf0IpAzqgC5HA8FNoc8fJqMt3LN8Kwg2rnE3VOhrxaatYjUfh7AK8
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JXC2RTB/
Subject: [Intel-wired-lan] [iwl-next v4 0/8] ice: support devlink subfunction
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
Cc: maciej.fijalkowski@intel.com, sridhar.samudrala@intel.com,
 mateusz.polchlopek@intel.com, netdev@vger.kernel.org, jiri@nvidia.com,
 michal.kubiak@intel.com, pio.raczynski@gmail.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com, wojciech.drewek@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

This is second patchset split from subfunction patchset [1].
Important changes from previous version:
 * remove unnecessary checks for devlink port type
 * link correct devlink port to subfunction netdev

Follow up patchset with subfunction port representor will be the last
patchset for subfunction implementation in ice. It is a little
unpleasant to split it like that, because devlink port should be linked
with port representor netdev. In this patchset use devlink port without
linking it. It will be done correctly in the follow up when subfunction
port representor is available.

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

v3 --> v4: [4]
 * get rid of unnecessary checks
 * fix cosmetic issues (whitespaces, wording)
 * move unrelated chunks to separate patch
 * move implementing activation/deactivation to last patch

v2 --> v3: [3]
 * fix building issue between the patches; allocating devlink for
 subfunction need to include base subfunction header
 * fix kdoc issues

v1 --> v2: [2]
 * use correct parameters in ice_devlink_alloc() thanks to Mateusz

[1] https://lore.kernel.org/netdev/20240301115414.502097-1-michal.swiatkowski@linux.intel.com/
[2] https://lore.kernel.org/netdev/20240408103049.19445-1-michal.swiatkowski@linux.intel.com/
[3] https://lore.kernel.org/netdev/20240410050809.125043-1-michal.swiatkowski@linux.intel.com/
[4] https://lore.kernel.org/netdev/20240412063053.339795-1-michal.swiatkowski@linux.intel.com/

Michal Swiatkowski (1):
  ice: treat subfunction VSI the same as PF VSI

Piotr Raczynski (7):
  ice: add new VSI type for subfunctions
  ice: export ice ndo_ops functions
  ice: add basic devlink subfunctions support
  ice: allocate devlink for subfunction
  ice: base subfunction aux driver
  ice: implement netdev for subfunction
  ice: allow to activate and deactivate subfunction

 drivers/net/ethernet/intel/ice/Makefile       |   1 +
 .../net/ethernet/intel/ice/devlink/devlink.c  |  50 +-
 .../net/ethernet/intel/ice/devlink/devlink.h  |   1 +
 .../ethernet/intel/ice/devlink/devlink_port.c | 503 ++++++++++++++++++
 .../ethernet/intel/ice/devlink/devlink_port.h |  38 ++
 drivers/net/ethernet/intel/ice/ice.h          |  12 +
 drivers/net/ethernet/intel/ice/ice_base.c     |   5 +-
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c  |   1 +
 drivers/net/ethernet/intel/ice/ice_lib.c      |  52 +-
 drivers/net/ethernet/intel/ice/ice_lib.h      |   3 +
 drivers/net/ethernet/intel/ice/ice_main.c     |  66 ++-
 drivers/net/ethernet/intel/ice/ice_sf_eth.c   | 327 ++++++++++++
 drivers/net/ethernet/intel/ice/ice_sf_eth.h   |  33 ++
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 drivers/net/ethernet/intel/ice/ice_xsk.c      |   2 +-
 15 files changed, 1048 insertions(+), 47 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_sf_eth.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_sf_eth.h

-- 
2.42.0

