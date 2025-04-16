Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C931CA8ADFE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Apr 2025 04:16:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4480981FB2;
	Wed, 16 Apr 2025 02:16:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aq0oQ_u0gG6e; Wed, 16 Apr 2025 02:16:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4B72A81F4C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744769775;
	bh=dszeMrw8wBGDhJaqDJIFLaLMDJG3O3X78Cnd7QO1I1k=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=wQ+Iw4CBNO6kWyteYP2ijof0KrEkmpk5rtlq8Ifs223xaedGOq63h1ugNHO5ArxHx
	 +em6KYR7k/T8du3R30+DrB0MBvTs9POfon3O5C3+SZXHNhXFm3aD5GG5hfYFBvFvcs
	 N/ECZC7FCMclEUAGgo4sjZoXNewDaYIgGIzhjfmJqqiRCfOOzgSdhcYqDdR62Wa9CP
	 f/If6e1kfQq8eN0iiA19QE/obzp4+6MU1GcW9DEjY30Ah4Fa+EDydAw2YrUbwpi+NU
	 Jb6qly35oKE9Jg1HBEnc/BRKaCusluxWAk3+rBGQ0MygkngAYSnX1C8D2pC7X4uzam
	 TR97/FpmZisaQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4B72A81F4C;
	Wed, 16 Apr 2025 02:16:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 41E31435
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 02:16:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3367A83BA4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 02:16:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yXZIPq6xO0bI for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Apr 2025 02:16:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=tatyana.e.nikolova@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3641581F4C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3641581F4C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3641581F4C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 02:16:11 +0000 (UTC)
X-CSE-ConnectionGUID: Agq/5X4ISU27Juy1KfuARw==
X-CSE-MsgGUID: K4v1TqbVQT+2YWournSaXg==
X-IronPort-AV: E=McAfee;i="6700,10204,11404"; a="50125552"
X-IronPort-AV: E=Sophos;i="6.15,214,1739865600"; d="scan'208";a="50125552"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 19:16:11 -0700
X-CSE-ConnectionGUID: x/ISpcDZRkiwnOOAhxYGEw==
X-CSE-MsgGUID: p4m+Hoz5TmWraD5vmKhY2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,214,1739865600"; d="scan'208";a="130605788"
Received: from bnkannan-mobl1.amr.corp.intel.com (HELO
 soc-PF51RAGT.clients.intel.com) ([10.246.114.218])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 19:16:11 -0700
From: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
To: jgg@nvidia.com,
	leon@kernel.org,
	intel-wired-lan@lists.osuosl.org
Cc: linux-rdma@vger.kernel.org,
	netdev@vger.kernel.org
Date: Tue, 15 Apr 2025 21:15:44 -0500
Message-ID: <20250416021549.606-1-tatyana.e.nikolova@intel.com>
X-Mailer: git-send-email 2.45.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744769772; x=1776305772;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=igbLN6YEauLxV1FxrClG0VZk6wS5aG4GlZD9dd2WrU8=;
 b=YcxlQSuu1c/5OQo9kwUZh3X3NKxBym4tHPQoXMXgQl6dt9S+nrYxKa61
 HnIS8ovqarZvalLxIZkTs8gEDdJeOI/AUVRpsZtHDBp50rHENSJS0rRJf
 BlfnxoDp+IGJAMZktPjia5A3DyU1wc2eH6Kla0IuvtME/nQque2wIHdvj
 0qdZrJZhxYKQGTCCMT4S2fb8J/Pq7X6xhpwf2QFK8syUTfs3lXfXYHUQU
 P2kxUQABIcb45e4QA7lic6Yu6y0En4X3CGpWsZJa4SmgUB/Lke3vAf1a0
 DvAGhRtOGm+F/7RwK/zpwDVbgkThg5XXJTWRN3GSTDC6RH4FBr+6JFslX
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YcxlQSuu
Subject: [Intel-wired-lan] [iwl-next v5 0/5] Refactor to prepare for Intel
 IPU E2000 (GEN3)
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

To align with review comments, the patch series [v1] introducing RDMA
RoCEv2 support for the Intel Infrastructure Processing Unit (IPU) E2000
line of products is going to be submitted in three parts:

1. Modify ice to use specific and common IIDC definitions and
   pass a core device info to irdma.

2. Add RDMA support to idpf and modify idpf to use specific and
   common IIDC definitions and pass a core device info to irdma.

3. Add RDMA RoCEv2 support for the E2000 products, referred to as
   GEN3 to irdma.

This first part is a 5 patch series based on the original
"iidc/ice/irdma: Update IDC to support multiple consumers" patch
to allow for multiple CORE PCI drivers, using the auxbus.

Patches:
1) Move header file to new name for clarity and replace ice
   specific DSCP define with a kernel equivalent one in irdma
2) Unify naming convention
3) Separate header file into common and driver specific info
4) Replace ice specific DSCP define with a kernel equivalent
   one in ice
5) Implement core device info struct and update drivers to use it

This patch series is based on v6.15-rc1.

Changelog:

V4 to V5 changes:

- Use exported symbols instead of a device ops struct
- Rename the IDC header file iidc.h to iidc_rdma.h
- Move ice specific functionality to iidc_rdma_ice.h
- Use iidc_* naming convention
- Replace ice specific DSCP define with a kernel equivalent one

V3 to V4 changes:

- Split up the patch series [v3] into three parts and
  send out independently the ice/iidc related changes patch -
  "iidc/ice/irdma: Update IDC to support multiple consumers" 

[v4] https://lore.kernel.org/all/20250225050428.2166-1-tatyana.e.nikolova@intel.com/
[v3] https://lore.kernel.org/all/20250207194931.1569-1-tatyana.e.nikolova@intel.com/
[v2] https://lore.kernel.org/all/20240824031924.421-1-tatyana.e.nikolova@intel.com/
[v1] https://lore.kernel.org/all/20240724233917.704-1-tatyana.e.nikolova@intel.com/

Dave Ertman (4):
  iidc/ice/irdma: Rename IDC header file
  iidc/ice/irdma: Rename to iidc_* convention
  iidc/ice/irdma: Break iidc.h into two headers
  iidc/ice/irdma: Update IDC to support multiple consumers

Tatyana Nikolova (1):
  ice: Replace ice specific DSCP mapping num with a kernel define

 MAINTAINERS                                   |   2 +-
 drivers/infiniband/hw/irdma/main.c            | 125 ++++++-----
 drivers/infiniband/hw/irdma/main.h            |   3 +-
 drivers/infiniband/hw/irdma/osdep.h           |   2 +-
 drivers/infiniband/hw/irdma/type.h            |   4 +-
 .../net/ethernet/intel/ice/devlink/devlink.c  |  45 +++-
 drivers/net/ethernet/intel/ice/ice.h          |   6 +-
 drivers/net/ethernet/intel/ice/ice_dcb.c      |   2 +-
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c  |  47 +++-
 drivers/net/ethernet/intel/ice/ice_dcb_lib.h  |   9 +
 drivers/net/ethernet/intel/ice/ice_dcb_nl.c   |   4 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |   8 +-
 drivers/net/ethernet/intel/ice/ice_idc.c      | 204 +++++++++++-------
 drivers/net/ethernet/intel/ice/ice_idc_int.h  |   5 +-
 drivers/net/ethernet/intel/ice/ice_main.c     |  18 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   6 +-
 include/linux/net/intel/iidc.h                | 109 ----------
 include/linux/net/intel/iidc_rdma.h           |  68 ++++++
 include/linux/net/intel/iidc_rdma_ice.h       |  70 ++++++
 19 files changed, 449 insertions(+), 288 deletions(-)
 delete mode 100644 include/linux/net/intel/iidc.h
 create mode 100644 include/linux/net/intel/iidc_rdma.h
 create mode 100644 include/linux/net/intel/iidc_rdma_ice.h

-- 
2.37.3

