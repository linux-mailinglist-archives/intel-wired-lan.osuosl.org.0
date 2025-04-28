Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C1410A9F765
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Apr 2025 19:36:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6DA9E81170;
	Mon, 28 Apr 2025 17:36:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N-ZSgwfQ6wes; Mon, 28 Apr 2025 17:36:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D763D8120C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745861774;
	bh=mEG0AhVDscq/a9oUfohORBpgIuze2OuqahAaYVhyLvI=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ctJGQ+DRJr2REFplksEerRug8T7kEzn5JAzzRCvtQ8pmdNvSmSDlGjASPWW6ndoMd
	 Fjt8ubvOfApm+xfCs/7XTQ//pldho+qm4LFIX/daPHxV5kVc+XSr0ccOAzaK/enRof
	 6An+jUqhlxO/hGHNnNHLKNI9VBeCJRzVfO1VFQfYZCxNJE8eeSmGQJyfWxDqZBpRBT
	 lEImtFAQNr1MqJ6Od1Urxoon+3PxN2I4iVubsZVuoHAcw+LeyS53US99gBuZoMAwUf
	 j+v0yL1Y2M4YD4/6wpmySrqbI5DgYbpis5XtFv4WN2npXzhXNJDm9EG4NWcL7Nnt0q
	 PdWE9tX762b/A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D763D8120C;
	Mon, 28 Apr 2025 17:36:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id A27B8117
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 17:36:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 913B481211
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 17:36:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vv6yBKAJudQG for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Apr 2025 17:36:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=pavan.kumar.linga@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4E7FD810E0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4E7FD810E0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4E7FD810E0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 17:36:11 +0000 (UTC)
X-CSE-ConnectionGUID: 3yvq8i9QT5e1TcdE7oEXKA==
X-CSE-MsgGUID: vflq6/ZxS12QZFxoXia44g==
X-IronPort-AV: E=McAfee;i="6700,10204,11417"; a="58452150"
X-IronPort-AV: E=Sophos;i="6.15,246,1739865600"; d="scan'208";a="58452150"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 10:36:11 -0700
X-CSE-ConnectionGUID: Od3fpHeCQFSoyDbsxUB1Ew==
X-CSE-MsgGUID: JGdMBqnyRyqiatnsrkNcPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,246,1739865600"; d="scan'208";a="138679006"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.80.55])
 by fmviesa004.fm.intel.com with ESMTP; 28 Apr 2025 10:36:11 -0700
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, milena.olech@intel.com, anton.nadezhdin@intel.com,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Date: Mon, 28 Apr 2025 10:35:43 -0700
Message-ID: <20250428173552.2884-1-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745861772; x=1777397772;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=z+f9DxelzQ/kStLYGXCnqtAx62i1gnnSuzlHnC3GjRo=;
 b=l7mKbxM1uQThki5GdbLLrDnqfieLq8IoiQ2CN7OPm1RTHes8nfrW/aDb
 FQ58+iVpwYpgwKZyCs2z7wXbOY1XUrO0e9LENUNCK7w9yFTbbFSRsMhLI
 O2TbmjMRO9u1ICDKFOlGcsGfY8VWVOryHaknBigF0u0v/Xe7ms4ZeFoce
 Vhbrnl/fy8s4u/kfOc4Lsga+g/6Wgk9Mwa+iaXBlBrNCa74Ovl13yeliX
 JTArlkRIY5a/yTtwLswYvTDHtGpIb/BGH5GaMCTYOLkB8AYh2P0aMzEYm
 F8q/A0IEiG7+bHatbV/Zz2hZaM5FVyCUTCY6NIZVHWGgfvo7/KG5ea/Dm
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=l7mKbxM1
Subject: [Intel-wired-lan] [PATCH iwl-next v3 0/9] refactor IDPF resource
 access
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

Queue and vector resources for a given vport, are stored in the
idpf_vport structure. At the time of configuration, these
resources are accessed using vport pointer. Meaning, all the
config path functions are tied to the default queue and vector
resources of the vport.

There are use cases which can make use of config path functions
to configure queue and vector resources that are not tied to any
vport. One such use case is PTP secondary mailbox creation
(it would be in a followup series). To configure queue and interrupt
resources for such cases, we can make use of the existing config
infrastructure by passing the necessary queue and vector resources info.

To achieve this, group the existing queue and vector resources into
default resource group and refactor the code to pass the resource
pointer to the config path functions.

This series also includes patches which generalizes the send virtchnl
message APIs and mailbox API that are necessary for the implementation
of PTP secondary mailbox.

---
v3:
* rebase on top of libeth XDP and other patches

v2:
* rebase on top of PTP patch series

Pavan Kumar Linga (9):
  idpf: introduce local idpf structure to store virtchnl queue chunks
  idpf: use existing queue chunk info instead of preparing it
  idpf: introduce idpf_q_vec_rsrc struct and move vector resources to it
  idpf: move queue resources to idpf_q_vec_rsrc structure
  idpf: reshuffle idpf_vport struct members to avoid holes
  idpf: add rss_data field to RSS function parameters
  idpf: generalize send virtchnl message API
  idpf: avoid calling get_rx_ptypes for each vport
  idpf: generalize mailbox API

 drivers/net/ethernet/intel/idpf/idpf.h        |  152 ++-
 drivers/net/ethernet/intel/idpf/idpf_dev.c    |   12 +-
 .../net/ethernet/intel/idpf/idpf_ethtool.c    |   87 +-
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |  233 ++--
 drivers/net/ethernet/intel/idpf/idpf_ptp.c    |   17 +-
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   |  639 +++++-----
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |   36 +-
 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |   15 +-
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 1130 ++++++++---------
 .../net/ethernet/intel/idpf/idpf_virtchnl.h   |   81 +-
 10 files changed, 1252 insertions(+), 1150 deletions(-)

-- 
2.43.0

