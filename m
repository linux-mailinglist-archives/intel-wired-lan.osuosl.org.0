Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iCmXAkfe/Wn0jwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 14:59:51 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D18754F6ABF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 14:59:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B1D5140E37;
	Fri,  8 May 2026 12:59:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3LslyF10Ap1c; Fri,  8 May 2026 12:59:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 52D6640F54
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778245185;
	bh=Nv0mTNy+Ubpvvq/b79hQKkvImz/wKWgQN5YDaswWf4w=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=GV2n3/pUo/RVi/0MI4g4OUUD8Ap2x32JbjSYtZN4K0JR3r8eVW+xZruA8Xggj2rz0
	 LBckbG+AQg+OoW896kWcXdB/qO2Mn6XjByesSl28p6ZuLeDY2cEpfo/HmeonkFMk23
	 V3aUbwYb/vr/ySOxFVptueUmQIkREmuundoXsj0aBV/lccZ79IuwvrgsqN/7Cea9l5
	 iIxdCo+RAmNOuL+MR94+Qe2RxQTQq5b3NxocMSL98FomgCJ4hULQm5KmvL9FV1fSUO
	 NHJKQ0+DWA5cqmuhcXq3b8NcP5HrLYIZhgJn/1Pzrhnyb8mK8CcnKjOnqN05iLSC25
	 cbBxtGalBd1EQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 52D6640F54;
	Fri,  8 May 2026 12:59:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 7FACF358
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 12:59:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7159E40F00
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 12:59:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D1N5MTD1m_eo for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2026 12:59:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 500F740E37
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 500F740E37
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 500F740E37
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 12:59:42 +0000 (UTC)
X-CSE-ConnectionGUID: fU7vBHscQZKZEBAt2t3HVg==
X-CSE-MsgGUID: 2M3S1gzuRnGyRIfh79FPZQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="79199852"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="79199852"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 05:59:43 -0700
X-CSE-ConnectionGUID: 71w7MdL8REmoYuq4rRbu+Q==
X-CSE-MsgGUID: KgGuZ4MPQ825zBvYOvUa1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="241730090"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa005.fm.intel.com with ESMTP; 08 May 2026 05:59:36 -0700
Received: from vecna.igk.intel.com (vecna.igk.intel.com [10.123.220.17])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 58E6F28795;
 Fri,  8 May 2026 13:59:34 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Michal Schmidt <mschmidt@redhat.com>,
 Jakub Kicinski <kuba@kernel.org>, Jiri Pirko <jiri@resnulli.us>
Cc: netdev@vger.kernel.org, Simon Horman <horms@kernel.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 bruce.richardson@intel.com,
 Vladimir Medvedkin <vladimir.medvedkin@intel.com>,
 padraig.j.connolly@intel.com, ananth.s@intel.com,
 timothy.miskell@intel.com, Jacob Keller <jacob.e.keller@intel.com>,
 Lukasz Czapnik <lukasz.czapnik@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>,
 Tariq Toukan <tariqt@nvidia.com>, Mark Bloch <mbloch@nvidia.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Fri,  8 May 2026 14:41:53 +0200
Message-Id: <20260508124208.11622-1-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778245184; x=1809781184;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Cecj/jI4Hf3y5GjyNmlPt5sbEVv1v3dHbPozo7/APAo=;
 b=Z2LcCq8bFmA9To+k4wHoJ6iZz2z8u2TA3zDJ38eDGR5/SPy3UucZkXOj
 U2DddUW/88Sf9hbAnux4+mAxX0LzTLXv9gw2TKv13DOdrO+FU75ttUNSH
 bIRXlWCKqJJH95vjymlRvYqF24yWd2y3G0SOwUlWtuLrlw7T1eDfSUESM
 4SjuCBtMl9i47CkNRGVIvIIzgX2Pu2WnAAfIWNoPPnZy2eF10Ql+A5Gzv
 peshX1nvXP0fxKBPrybhQ4BAX8JUwpzlEwXHssfp3dprionTSOusc19tv
 6O+6Y70qm3S2gVBR/hM1SikoaSqLLdcSxY2xiyHYBW2uAIbIBQQ+fFGP4
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Z2LcCq8b
Subject: [Intel-wired-lan] [PATCH iwl-next v1 00/15] devlink, mlx5, iavf,
 ice: XLVF for iavf
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
X-Rspamd-Queue-Id: D18754F6ABF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[25];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_HAM(-0.00)[-0.978];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: no action

Code is also available here:
https://github.com/pkitszel/linux/tree/xlvf-iwl

There are two dependecies:
https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20260429102426.210750-4-jtornosm@redhat.com
https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20260427151827.43342-1-mschmidt@redhat.com

The purpose of this series is to allow iavf to use more than 16 queue pairs,
in two modes, up to 64 and up to 256 queue pairs.

Devlink changes:
1. Extend devlink by two callbacks used by shared devlink.
   Callbacks provide option for the driver to have constructor/destructor
   for the priv data attached to the shared devlink instance.
   Use the callbacks from ice.
   mlx5 is just touched to have additional param passed.
   Non-null additional param for the constructor is used in: "ice: represent RSS
   LUTs as devlink resources"
2. Extend devlink resources API to allow user to assign resources.
   Before it was only the driver to assign resources, without any way for user
   to interact. ice' RSS LUTs are exposed that way.

More about the interface:
In order to support more queues for VF, we must give it a bigger RSS table
(GLOBAL LUT or PF LUT). There are 16 GLOBAL LUTs on E810, and there is one
PF LUT for every PF on given card. Both kinds of the mentioned LUTs could
be (re)assigned to VF. PF must hold at least one of the mentioned LUTs at
any given moment. GLOBAL LUT allows VF to use up to 64 queues, PF LUT lets
it to use up to 256 queues.

RSS LUTs are exposed for the user for assignment via devlink resources
API, which I have extended to make it possible.

We have also some "little cleanup" patches, Admin Queue extension
for GLOBAL RSS alloc/free, and two rather big "new opcodes" patches by Ahmed
and Brett.

I introduce also a "whole device" aggregate over all PFs on
given card, via shared devlink instance.

I also extend devlink resources to have custom occupancy setters, that allow
user to modify PF device LUTs assignment.

Finally there is a patch that adds devlink instance for VF and registers
devlink resources on it, combined with all the glue code to make actual
use of the whole series and desired larger number of queues accepted to VF
This (the last) patch contains usage examples.

There is one resource added that just groups GLOBAL and PF LUTs under it -
there are 3 rows of data for each device (PF/VF/whole-dev):
$ devlink resource show pci/0000:18:00.0
pci/0000:18:00.0:
  name rss size 1 unit entry size_min 0 size_max 2 size_gran 1 dpipe_tables none
    resources:
      name lut_512 size 0 unit entry size_min 0 size_max 1 size_gran 1 dpipe_tables none
      name lut_2048 size 1 unit entry size_min 0 size_max 1 size_gran 1 dpipe_tables none
technically the aggregate "name rss" line could be eliminated with just
the two last ones kept (then renamed to "rss_lut_2048" form current
"rss/lut_2048"), I like it like this, but this was just an opinion.
The rest of the series is rather much needed, but I'm always open to
discussion.

Devlink resource changes were RFC-proposed a year ago, link in the patch.

Ahmed Zaki (1):
  iavf: use new opcodes to request more than 16 queues

Brett Creeley (2):
  ice: add VF queue ena/dis helper functions
  ice: introduce handling of virtchnl LARGE VF opcodes

Przemek Kitszel (12):
  devlink, mlx5: add init/fini ops for shared devlink
  ice: use shared devlink to store ice_adapters instead of custom xarray
  ice: simplify ice_vc_dis_qs_msg() a little
  ice: add helpers for Global RSS LUT alloc, free, vsi_update
  ice: rename ICE_MAX_RSS_QS_PER_VF to ICE_MAX_QS_PER_VF_VCV1
  ice: bump to 256qs for VF
  iavf: extend iavf_configure_queues() to support more queues
  iavf: temporary rename of IAVF_MAX_REQ_QUEUES to
    IAVF_MAX_REQ_QUEUES_VCV1
  iavf: increase max number of queues to 256
  devlink: give user option to allocate resources
  ice: represent RSS LUTs as devlink resources
  ice: support up to 256 VF queues

 drivers/net/ethernet/intel/ice/Makefile       |   1 +
 drivers/net/ethernet/intel/iavf/iavf.h        |  18 +-
 .../net/ethernet/intel/ice/devlink/resource.h |  22 +
 drivers/net/ethernet/intel/ice/ice.h          |   1 +
 drivers/net/ethernet/intel/ice/ice_adapter.h  |  52 +-
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   1 +
 drivers/net/ethernet/intel/ice/ice_common.h   |   1 +
 drivers/net/ethernet/intel/ice/ice_lag.h      |   2 +-
 drivers/net/ethernet/intel/ice/ice_lib.h      |   5 +-
 drivers/net/ethernet/intel/ice/ice_switch.h   |   2 +
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |  26 +-
 drivers/net/ethernet/intel/ice/virt/queues.h  |   3 +
 drivers/net/ethernet/intel/ice/virt/rss.h     |   1 +
 .../net/ethernet/intel/ice/virt/virtchnl.h    |   4 +
 include/linux/intel/virtchnl.h                | 136 ++++-
 include/net/devlink.h                         |  33 +
 .../net/ethernet/intel/iavf/iavf_ethtool.c    |   7 +-
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 125 +++-
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 262 +++++++-
 .../net/ethernet/intel/ice/devlink/devlink.c  |   3 +
 .../net/ethernet/intel/ice/devlink/resource.c | 572 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_adapter.c  | 105 ++--
 drivers/net/ethernet/intel/ice/ice_common.c   |   2 +-
 drivers/net/ethernet/intel/ice/ice_lib.c      |  78 ++-
 drivers/net/ethernet/intel/ice/ice_main.c     |  43 +-
 drivers/net/ethernet/intel/ice/ice_sriov.c    |  14 +-
 drivers/net/ethernet/intel/ice/ice_switch.c   |  41 ++
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   |  54 +-
 .../net/ethernet/intel/ice/virt/allowlist.c   |   8 +
 drivers/net/ethernet/intel/ice/virt/queues.c  | 480 +++++++++++++--
 drivers/net/ethernet/intel/ice/virt/rss.c     |  36 +-
 .../net/ethernet/intel/ice/virt/virtchnl.c    |  47 +-
 .../ethernet/mellanox/mlx5/core/sh_devlink.c  |   2 +-
 net/devlink/resource.c                        |  98 ++-
 net/devlink/sh_dev.c                          |  38 +-
 35 files changed, 2102 insertions(+), 221 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/devlink/resource.h
 create mode 100644 drivers/net/ethernet/intel/ice/devlink/resource.c

-- 
2.39.3

