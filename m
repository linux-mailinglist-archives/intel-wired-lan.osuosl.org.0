Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UB+qBBVf/mmppwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 09 May 2026 00:09:25 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FD224FC2DB
	for <lists+intel-wired-lan@lfdr.de>; Sat, 09 May 2026 00:09:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A564940DEF;
	Fri,  8 May 2026 22:09:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qaHTzSNLnqdt; Fri,  8 May 2026 22:09:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5FBBC41104
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778278154;
	bh=uLHzQyOPEJEJGkFH5l7eU5xubxmYqwO7MmVfMNTLNB4=;
	h=From:To:CC:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=n0/2h+bGj9sNJQIVX+HXOKwp+/W/ELBBvuXuEc5z0mbnasQTLSGtnjh/dBtk3KvVI
	 PXrlwdBx8y0it9gVHof3kzHkE6p3rPCynrtFO5IrcMlZVfdfGVI3A2wROnFnQ8sCRJ
	 8dio6bF9fTcGLcb+7QRifZ4jE12JoYC5mWx9h4VZcYdejZ6FFjqTwDRa2VB/5nJ7pX
	 VkDN+pieoLdYV9SNO4geqy/ASd/ff2Ihqh2f+B7pFESBWNXSnkK+LVLMuxqzxFBqN3
	 CmzBlGWvKp5drfkA7702xPfHeadMUd1A2iOxGSFw+uygAfRlMOyiNlG55Mz/0qTcRU
	 uNnndkNx6864w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5FBBC41104;
	Fri,  8 May 2026 22:09:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id B7B12358
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 04:07:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B56ED409D6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 04:07:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yhiD_hHZ8SG7 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2026 04:07:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=67.231.156.173;
 helo=mx0b-0016f401.pphosted.com;
 envelope-from=prvs=65883a0750=rkannoth@marvell.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A974E404A0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A974E404A0
Received: from mx0b-0016f401.pphosted.com (mx0b-0016f401.pphosted.com
 [67.231.156.173])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A974E404A0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 04:07:50 +0000 (UTC)
Received: from pps.filterd (m0431383.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 647NVKu02841680; Thu, 7 May 2026 20:49:30 -0700
Received: from dc6wp-exch02.marvell.com ([4.21.29.225])
 by mx0b-0016f401.pphosted.com (PPS) with ESMTPS id 4e14g0gjd3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 07 May 2026 20:49:30 -0700 (PDT)
Received: from DC6WP-EXCH02.marvell.com (10.76.176.209) by
 DC6WP-EXCH02.marvell.com (10.76.176.209) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 7 May 2026 20:49:29 -0700
Received: from maili.marvell.com (10.69.176.80) by DC6WP-EXCH02.marvell.com
 (10.76.176.209) with Microsoft SMTP Server id 15.2.1544.25 via Frontend
 Transport; Thu, 7 May 2026 20:49:29 -0700
Received: from rkannoth-OptiPlex-7090.. (unknown [10.28.36.165])
 by maili.marvell.com (Postfix) with ESMTP id 840263F7041;
 Thu,  7 May 2026 20:49:18 -0700 (PDT)
From: Ratheesh Kannoth <rkannoth@marvell.com>
To: <intel-wired-lan@lists.osuosl.org>, <linux-kernel@vger.kernel.org>,
 <linux-rdma@vger.kernel.org>, <netdev@vger.kernel.org>,
 <oss-drivers@corigine.com>
CC: <akiyano@amazon.com>, <andrew+netdev@lunn.ch>,
 <anthony.l.nguyen@intel.com>, <arkadiusz.kubalewski@intel.com>,
 <brett.creeley@amd.com>, <darinzon@amazon.com>, <davem@davemloft.net>,
 <donald.hunter@gmail.com>, <edumazet@google.com>, <horms@kernel.org>,
 <idosch@nvidia.com>, <ivecera@redhat.com>, <jiri@resnulli.us>,
 <kuba@kernel.org>, <leon@kernel.org>, <mbloch@nvidia.com>,
 <michael.chan@broadcom.com>, <pabeni@redhat.com>,
 <pavan.chebbi@broadcom.com>, <petrm@nvidia.com>,
 <Prathosh.Satish@microchip.com>, <przemyslaw.kitszel@intel.com>,
 <saeedm@nvidia.com>, <sgoutham@marvell.com>, <tariqt@nvidia.com>,
 <vadim.fedorenko@linux.dev>, Ratheesh Kannoth <rkannoth@marvell.com>
Date: Fri, 8 May 2026 09:19:03 +0530
Message-ID: <20260508034912.4082520-1-rkannoth@marvell.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Proofpoint-ORIG-GUID: 5XpSRK9UP1TGNbEpxu0D60bRyAkmyrqH
X-Authority-Analysis: v=2.4 cv=bMUm5v+Z c=1 sm=1 tr=0 ts=69fd5d4a cx=c_pps
 a=gIfcoYsirJbf48DBMSPrZA==:117 a=gIfcoYsirJbf48DBMSPrZA==:17
 a=NGcC8JguVDcA:10 a=VkNPw1HP01LnGYTKEx00:22 a=l0iWHRpgs5sLHlkKQ1IR:22
 a=qit2iCtTFQkLgVSMPQTB:22 a=VwQbUJbxAAAA:8 a=M5GUcnROAAAA:8
 a=1rdZWFfAsYpIarNArpIA:9 a=OBjm3rFKGHvpk9ecZwUJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA4MDAzMyBTYWx0ZWRfX0obWHJ2emugt
 AVXQQfpG3hallSw2k2v/eUGF6kBD7WYzN8Lr4L6Irl7LfI/sE30VAU2mICRbFYQR7BNYdMInfng
 HU4AbGcGedhuppQHjgYeoRMUpC5IRxbKDcLkUwcmpPuIW2gvw3wDA6CJkVXSnRTqhAPhyP1BvGy
 f0p+ntvnehab0AmLR2sJt9BFcKZuOjq1PLX/kkfBxSdGj6+rEYNUfuy2mBGW308fSIfp/Q8h/ns
 JFoTihTjxTz37k8oKBK+s9Vj8HLz5FoV5Ck/4JfXbgMMgQCRqRakq4F/861JoxE2/3J9iKSlcdG
 poos7BYGByATjXTeOkYwipaVT3Rld2Zkv0uhYF5n6Sg3dQP2e+uPZCIrlyxo0ZC8fKUn7TrekRB
 GJHwmn348ljWKp8DFmNtXIIctRGib6SZH8ZRJvhmd3I5MTeA7vYAmSYVg6tGlrsGchYx/m/GUep
 saBw3cCgXm4Gw1rKKuQ==
X-Proofpoint-GUID: 5XpSRK9UP1TGNbEpxu0D60bRyAkmyrqH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-07_02,2026-05-06_01,2025-10-01_01
X-Mailman-Approved-At: Fri, 08 May 2026 22:09:04 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.com; h=
 cc:content-transfer-encoding:content-type:date:from:message-id
 :mime-version:subject:to; s=pfpt0220; bh=uLHzQyOPEJEJGkFH5l7eU5x
 ubxmYqwO7MmVfMNTLNB4=; b=Ua0S++r0z8AicZemFOkhatok6BTIgGAzvWmBC/O
 4/OgIAlOKfGewnxyFd6OARXp2nnBuse44bfnDS2rP/QouO34gALJA2fN+5nHgBtq
 PVvAL8mdSbT4aX8L49a6auT/oGFeUfF27ztmq7Sbp4jZvRViClKcys/UCG4ZqR8p
 9nyoCNpX/pVNC2rbA6HrSw22dC05JJZb2KdDLP3RLxakKAjWbdutvgVIywzhh6BX
 FZ4LP+ZewXcqhCZV5u4QoN9EGwX8PV3B/V+dnt7F1kTNDTUi5ilNG7ibTBeK8uEH
 3hA+WwV062FlrdieqEDpU6yyJW29ukHmRdchR0MOD6Lr7hA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=marvell.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=marvell.com header.i=@marvell.com
 header.a=rsa-sha256 header.s=pfpt0220 header.b=Ua0S++r0
Subject: [Intel-wired-lan] [PATCH v12 net-next 0/9] octeontx2-af: npc:
 Enhancements.
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
X-Rspamd-Queue-Id: 5FD224FC2DB
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[marvell.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[amazon.com,lunn.ch,intel.com,amd.com,davemloft.net,gmail.com,google.com,kernel.org,nvidia.com,redhat.com,resnulli.us,broadcom.com,microchip.com,marvell.com,linux.dev];
	RCPT_COUNT_TWELVE(0.00)[32];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[12];
	FROM_NEQ_ENVFROM(0.00)[rkannoth@marvell.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_HAM(-0.00)[-0.979];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action

This series extends Marvell octeontx2-af support for CN20K NPC (MCAM
debuggability, allocation policy, default-rule lifetime, optional KPU
profiles from firmware files, X2/X4 MCAM keyword handling in flows and
defaults, and dynamic CN20K NPC private state), adds a devlink mechanism
for multi-value parameters, and adjusts devlink param netlink helpers
and mlx5 so stack usage stays within -Wframe-larger-than limits once union
devlink_param_value grows.

Patch 1 improves CN20K MCAM visibility in debugfs: mcam_layout marks
enabled entries, dstats reports per-entry hit deltas, and mismatch lists
enabled entries without a PF mapping. MCAM enable state is tracked in a
bitmap updated from the CN20K enable path.

Patch 2 reduces stack usage in mlx5e_pcie_cong_get_thresh_config() by
reusing a single union devlink_param_value and a local result struct
instead of holding a large array of unions on the stack, so the helper
stays under the frame-size warning limit as the union grows (patches 3-4).

Patch 3 changes devlink_nl_param_value_put() and
devlink_nl_param_value_fill_one() to pass union devlink_param_value by
pointer instead of by value. Passing two copies of the union by value in
the param netlink path consumes over 500 bytes of argument stack and risks
CONFIG_FRAME_WARN as the union grows beyond its historical size (patch 4).

Patch 4 (Saeed) introduces DEVLINK_PARAM_TYPE_U64_ARRAY and nested
DEVLINK_ATTR_PARAM_VALUE_DATA attributes so drivers and user space can
exchange bounded u64 arrays; YAML, uapi, and netlink validation are
updated.

Patch 5 adds a runtime devlink parameter srch_order to reorder CN20K
subbank search during MCAM allocation.

Patch 6 ties default MCAM entries to NIX LF alloc/free on CN20K, adds
NIX_LF_DONT_FREE_DFT_IDXS for PF teardown paths that must not drop default
NPC indexes while the driver still owns state, and tightens nix_lf_alloc
error propagation.

Patch 7 allows loading a custom KPU profile from /lib/firmware/kpu via
module parameter kpu_profile, with cam2 / ptype_mask wiring and helpers
that share firmware-sourced vs filesystem-sourced profile layouts.

Patch 8 makes default-rule allocation, AF flow install, and PF-side RSS,
defaults, and ethtool flows respect the active CN20K MCAM keyword width
(X2 vs X4), including X4 reference-index masking and -EOPNOTSUPP when a
flow needs X4 keys on an X2-only profile.

Patch 9 replaces file-scope npc_priv and static dstats with allocation
sized from discovered bank/subbank geometry, threads npc_priv_get()
through CN20K NPC paths, and allocates dstats via devm_kzalloc for the
debugfs helper.

The mlx5 change sits immediately before the devlink patches so the series
applies cleanly and stays warning-free when built incrementally;
pass-by-pointer precedes the U64 array type so helpers are not copying an
even larger union by value. The CN20K patches keep srch_order ahead of
NIX LF coordination, KPU-from-filesystem, X2/X4 handling, and the npc_priv
refactor that touches the same files heavily.

Ratheesh Kannoth (8):
  octeontx2-af: npc: cn20k: debugfs enhancements
  net/mlx5e: trim stack use in PCIe congestion threshold helper
  devlink: pass param values by pointer
  octeontx2-af: npc: cn20k: add subbank search order control
  octeontx2: cn20k: Coordinate default rules with NIX LF lifecycle
  octeontx2-af: npc: Support for custom KPU profile from filesystem
  octeontx2: cn20k: Respect NPC MCAM X2/X4 profile in flows and DFT
    alloc
  octeontx2-af: npc: cn20k: Allocate npc_priv and dstats dynamically.

Saeed Mahameed (1):
  devlink: Implement devlink param multi attribute nested data values

 Documentation/netlink/specs/devlink.yaml          |   4 +
 drivers/dpll/zl3073x/devlink.c                    |   6 ++-
 drivers/net/ethernet/amazon/ena/ena_devlink.c     |   8 ++-
 drivers/net/ethernet/amd/pds_core/core.h          |   2 ++-
 drivers/net/ethernet/amd/pds_core/devlink.c       |   2 ++-
 drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c |   6 ++-
 drivers/net/ethernet/intel/ice/devlink/devlink.c  |  30 ++-
 .../ethernet/marvell/octeontx2/af/cn20k/debugfs.c | 175 ++++-
 .../net/ethernet/marvell/octeontx2/af/cn20k/npc.c | 545 ++++++++-----
 .../net/ethernet/marvell/octeontx2/af/cn20k/npc.h |  13 +++-
 drivers/net/ethernet/marvell/octeontx2/af/mbox.h  |   1 +
 drivers/net/ethernet/marvell/octeontx2/af/npc.h   |  17 +
 drivers/net/ethernet/marvell/octeontx2/af/rvu.h   |  12 ++-
 ...et/ethernet/marvell/octeontx2/af/rvu_devlink.c | 114 ++-
 ...rs/net/ethernet/marvell/octeontx2/af/rvu_nix.c |  69 ++-
 ...rs/net/ethernet/marvell/octeontx2/af/rvu_npc.c | 478 +++++++++--
 ...rs/net/ethernet/marvell/octeontx2/af/rvu_npc.h |  17 +
 ...net/ethernet/marvell/octeontx2/af/rvu_npc_fs.c |  12 +++-
 ...rs/net/ethernet/marvell/octeontx2/af/rvu_reg.h |   1 +
 .../ethernet/marvell/octeontx2/nic/otx2_devlink.c |   4 ++-
 ...et/ethernet/marvell/octeontx2/nic/otx2_flows.c |  48 ++-
 ...s/net/ethernet/marvell/octeontx2/nic/otx2_pf.c |   6 +--
 drivers/net/ethernet/mellanox/mlx4/main.c         |  14 ++-
 drivers/net/ethernet/mellanox/mlx5/core/devlink.c |  72 ++-
 ...hernet/mellanox/mlx5/core/en/pcie_cong_event.c |  36 ++-
 ...ethernet/mellanox/mlx5/core/eswitch_offloads.c |   2 ++-
 drivers/net/ethernet/mellanox/mlx5/core/fs_core.c |   4 ++-
 ...net/ethernet/mellanox/mlx5/core/lib/nv_param.c |  12 ++-
 drivers/net/ethernet/mellanox/mlxsw/core.c        |   8 ++-
 ...ers/net/ethernet/netronome/nfp/devlink_param.c |   6 ++-
 drivers/net/netdevsim/dev.c                       |   4 ++-
 include/net/devlink.h                             |  12 ++-
 include/uapi/linux/devlink.h                      |   1 +
 net/devlink/netlink_gen.c                         |   2 +
 net/devlink/param.c                               | 120 ++-

 35 files changed, 1315 insertions(+), 548 deletions(-)

--

v11 -> v12: Addressed Paolo,Jiri comments.
	https://lore.kernel.org/netdev/20260409025055.1664053-1-rkannoth@marvell.com/
	Added one patch which was rejected by simon in net (as it was kind of enhancement rather than a bug)
	Added one more patch- which allocates two variables from heap.

v10 -> v11: Addressed Paolo comments.
	https://lore.kernel.org/netdev/20260403025533.6250-1-rkannoth@marvell.com/

v9 -> v10: Addressed Paolo comments
	https://lore.kernel.org/netdev/
	20260330053105.2722453-1-rkannoth@marvell.com/

v8 -> v9: Addressed Simon comments
	https://lore.kernel.org/netdev/
	20260325072159.1126964-1-rkannoth@marvell.com/

v7 -> v8: Addressed Simon comments
	https://lore.kernel.org/netdev/
	20260323035110.3908741-1-rkannoth@marvell.com/T/#t

v6 -> v7: Addressed Simon comments
	https://lore.kernel.org/netdev/20260320165432.98832-1-horms@kernel.org/

v5 -> v6: Addressed Jakub,Jiri comments
	https://lore.kernel.org/netdev/
	20260317045623.250187-1-rkannoth@marvell.com/

v4 -> v5: Addressed Jakub comments
	https://lore.kernel.org/netdev/
	20260312022754.2029595-6-rkannoth@marvell.com/

v3 -> v4: Addressed Simon comments
	https://lore.kernel.org/netdev/abDeXLpMMxp7G1v3@rkannoth-OptiPlex-7090/#t

v2 -> v3: Addressed Simon comments.
	https://lore.kernel.org/netdev/
	20260304043032.3661647-1-rkannoth@marvell.com/

v1 -> v2: Addressed Jakub comments.
	https://lore.kernel.org/netdev/
	20260302085803.2449828-1-rkannoth@marvell.com/#t

2.43.0
