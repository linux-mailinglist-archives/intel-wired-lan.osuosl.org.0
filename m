Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B7B89E956
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Apr 2024 07:03:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 33D5C4052E;
	Wed, 10 Apr 2024 05:03:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FuLBxiyilOPl; Wed, 10 Apr 2024 05:03:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D064F40506
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712725420;
	bh=TcpEt6h2l+pB9AoaBCee31ftYfKmjS2gjMGowrJ3R3c=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=SXj0J5hdXZ79kwILbsi5GzjyjLIpoWGq8VscSWkz6mgqp21ukJfDEv+2avuV5wDCl
	 K7oOiCCJm58mij0NBxxFqWgRiLGYNH+xfFIHB1r4mDMAgsBUnZq12A391mCvp6kvnK
	 P+jX/+aA3+jc+2Xvo7PXIELXHAdGHd8Wxqx/rIszF1dSJCkKj7S4crRm35KzYeelEZ
	 ttNRyR/3eCoG852wLjsFlKq4AQH0W2hjhONrD2Y1mtNTlrHYtgYXcclevC3vscO2MT
	 l4eJnXQP10jpgmQAZHdEDOqtU1nLUId7ZGtNeYIUidQcDzlW6v1xvy1UwgPPkPRVua
	 sufGLFkuSYBPQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D064F40506;
	Wed, 10 Apr 2024 05:03:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DB4641BF5A8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 05:03:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C469F6066E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 05:03:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id g0zGGpBbF-GR for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Apr 2024 05:03:37 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1A6B36063C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1A6B36063C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1A6B36063C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 05:03:36 +0000 (UTC)
X-CSE-ConnectionGUID: ofIwR18tQj+EYEMXyblq5Q==
X-CSE-MsgGUID: aII5LD+PT9SoJ2AbSapQGg==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="19456191"
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="19456191"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2024 22:03:35 -0700
X-CSE-ConnectionGUID: KxTTcR3dTu6B8W3YzHxEGg==
X-CSE-MsgGUID: jUjLoal7Qg6Im28F/904sQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="57875969"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by orviesa001.jf.intel.com with ESMTP; 09 Apr 2024 22:03:32 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 10 Apr 2024 07:08:02 +0200
Message-ID: <20240410050809.125043-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712725417; x=1744261417;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=W1ZYgVuzm2bAtZpkE6s/m0uAXudswt6pgaoOfJavFEI=;
 b=LzFEFy/k88H6i+W/o0I3v/iTlDB36yRgmzvwRGkBE/NHCuYOLLFSK4es
 M8Q28t875AVDdtmWW6taRr7Iz/FLtMk5tkslYJeLZwI7sm1pDj4ZsWqdj
 l3EJwCTfx3pcWvrh1nws2WtiDniWJgFlj3GLldUXWGsACbStnrzWyeMb9
 gLKXJaAtbayqbxp7uqqvXRIJmaIZW/G82j5qf8KdyfSzN0MstPHMXnVkL
 IEJSx2RcyUULoUqTKB731phlm4CSZ/j1NcB5xGn3JLhfbsrEPM+MLF2Al
 iHOaazLMs94SO2/dJTqsofD7LwddQAWxpLsnqcawQhVK7cv8XhYZafRp7
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LzFEFy/k
Subject: [Intel-wired-lan] [iwl-next v2 0/7] ice: support devlink subfunction
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
 maciej.fijalkowski@intel.com, mateusz.polchlopek@intel.com,
 sridhar.samudrala@intel.com, nex.sw.ncis.osdt.itp.upstreaming@intel.com,
 netdev@vger.kernel.org, jiri@nvidia.com, michal.kubiak@intel.com,
 pio.raczynski@gmail.com, przemyslaw.kitszel@intel.com,
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

v1 --> v2: [2]
 * use correct parameters in ice_devlink_alloc() thanks to Mateusz

[1] https://lore.kernel.org/netdev/20240301115414.502097-1-michal.swiatkowski@linux.intel.com/
[2] https://lore.kernel.org/netdev/20240408103049.19445-1-michal.swiatkowski@linux.intel.com/

Piotr Raczynski (7):
  ice: add new VSI type for subfunctions
  ice: export ice ndo_ops functions
  ice: add basic devlink subfunctions support
  ice: allocate devlink for subfunction
  ice: base subfunction aux driver
  ice: implement netdev for subfunction
  ice: allow to activate and deactivate subfunction

 drivers/net/ethernet/intel/ice/Makefile       |   1 +
 .../net/ethernet/intel/ice/devlink/devlink.c  |  44 +-
 .../net/ethernet/intel/ice/devlink/devlink.h  |   1 +
 .../ethernet/intel/ice/devlink/devlink_port.c | 512 ++++++++++++++++++
 .../ethernet/intel/ice/devlink/devlink_port.h |  37 ++
 drivers/net/ethernet/intel/ice/ice.h          |  12 +
 drivers/net/ethernet/intel/ice/ice_base.c     |   5 +-
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c  |   1 +
 drivers/net/ethernet/intel/ice/ice_lib.c      |  52 +-
 drivers/net/ethernet/intel/ice/ice_lib.h      |   3 +
 drivers/net/ethernet/intel/ice/ice_main.c     |  66 ++-
 drivers/net/ethernet/intel/ice/ice_sf_eth.c   | 317 +++++++++++
 drivers/net/ethernet/intel/ice/ice_sf_eth.h   |  33 ++
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 drivers/net/ethernet/intel/ice/ice_xsk.c      |   2 +-
 15 files changed, 1040 insertions(+), 47 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_sf_eth.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_sf_eth.h

-- 
2.42.0

