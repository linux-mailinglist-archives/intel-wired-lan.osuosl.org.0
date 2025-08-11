Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 62BE4B206F7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Aug 2025 13:12:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D9A5A83E26;
	Mon, 11 Aug 2025 11:12:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VY62yaoxGDfm; Mon, 11 Aug 2025 11:12:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8784183DD0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754910743;
	bh=kCLkyPdEKvihdO3W4rEO0JsJtZNyZLMNomPw/DBDx34=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=m8R2tw4sGOkIF7hTn/qhecfq3dAW1eUW1I91f2HkF9n6i4/tAM4eJjhZBNxxCdg/Q
	 CxzquwTjyj/s8kOcGzxS+6iNksJbJFSZIKCm3F5YF2zg3jnHP7yh2irHNAAr3QYeJY
	 ToAgd+GpPmQDbqEx+TOj2tPn/bz3DDHMVQj0d6n/eYz2ycB4sB5t41NPKaIzH3w8ve
	 nBXMtKSjFt9I6yn2oH1OZyKUBj85c+0xMX8Rju5G/dTZD+1xrR4SAH7dCbbHwoaSr9
	 VLSs6GMaBqZeyxr1ieG+Z8Di5L7XiVLGx1dQ/PUdQ4hUxyw+TcjdBln5h2swdcZJdu
	 22YAMa9ldg77Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8784183DD0;
	Mon, 11 Aug 2025 11:12:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 0057B154
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 11:12:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D97BF40129
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 11:12:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sS1XvZNOqpnu for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Aug 2025 11:12:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1F44240989
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1F44240989
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1F44240989
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 11:12:19 +0000 (UTC)
X-CSE-ConnectionGUID: q5/xswyfSdWEx7YpdDnAMw==
X-CSE-MsgGUID: T5hV5e0QRDy1w/T0mIN8wg==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="56189505"
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="56189505"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 04:12:16 -0700
X-CSE-ConnectionGUID: fTr6v+kASFKa8zUq7yvSFA==
X-CSE-MsgGUID: //sAu/+cR6GcvyH1dBn7mA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="165532733"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa009.jf.intel.com with ESMTP; 11 Aug 2025 04:12:15 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org
Date: Mon, 11 Aug 2025 11:10:50 +0000
Message-ID: <20250811111213.2964512-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754910739; x=1786446739;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+dyA3DX8N3OKT1wbnM9QfIuw/HhMNEtKWhAcx9/saiU=;
 b=PXuUNcrqFoz8CxepG2cL1ExOT2clc8O8R/zX1KznQ5iPZz44+mPEesi5
 P6CKQARSCU5Zxgbk0JILIVrZrRlVXj8elEMUvk6U7BHGdg/hYSHlqeEMk
 QuySBFrVgKoh1YJDthPfslozCmE+Gr4Ibj8d+IMXDj0gE5fLkXoFDvUNH
 EjoWu3BpB9Itrc6Nl9lnXnUI/o3Nl1rYm9z3mpm4F3l26iBdWEYGkvSeT
 t1sJlPaBdko6qMXGld5AbzhzqiBbozKLtetv/dfcGUTO1RbWPUS/qEB1N
 o60e7xIEVogP5ue4K66oks9KYlDkwNdCqoWukPmonMLAAn1tQS1lSMIkx
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PXuUNcrq
Subject: [Intel-wired-lan] [RFC iwl-next v1 0/5] iavf and ice: GTP RSS
 support and flow enhancements
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

This patch series introduces support for Receive Side Scaling (RSS)
configuration of GTP (GPRS Tunneling Protocol) flows via the ethtool
interface on virtual function (VF) interfaces in the iavf driver.

The implementation enables fine-grained traffic distribution for
GTP-based mobile workloads, including GTPC and GTPU encapsulations, by
extending the advanced RSS infrastructure. This is particularly beneficial
for virtualized network functions (VNFs) and user plane functions (UPFs)
in 5G and LTE deployments.

Key features:
 - Adds new RSS flow segment headers and hash field definitions for GTP
   protocols.
 - Enhances ethtool parsing logic to support GTP-specific flow types.
 - Updates the virtchnl interface to propagate GTP RSS configuration to PF.
 - Extends the ICE driver to support GTP RSS configuration for VFs.

This series depends on Przemek's [1], which is still in RFC state [2],
but we expect it to be merged soon. I have tested it on top of it.
[1] https://github.com/pkitszel/linux/commits/virtchnl-split/
[2] https://lore.kernel.org/netdev/5b94d14e-a0e7-47bd-82fc-c85171cbf26e@intel.com/T/#u

Aleksandr Loktionov (4):
  ice: add flow parsing for GTP and new protocol field support
  ice: add virtchnl and VF context support for GTP RSS
  ice: improve TCAM priority handling for RSS profiles
  iavf: add RSS support for GTP protocol via ethtool

Przemek Kitszel (1):
  ice: extend PTYPE bitmap coverage for GTP encapsulated flows

 .../net/ethernet/intel/iavf/iavf_adv_rss.c    |  119 +-
 .../net/ethernet/intel/iavf/iavf_adv_rss.h    |   31 +
 .../net/ethernet/intel/iavf/iavf_ethtool.c    |   89 ++
 .../net/ethernet/intel/ice/ice_flex_pipe.c    |   91 +-
 .../net/ethernet/intel/ice/ice_flex_type.h    |    1 +
 drivers/net/ethernet/intel/ice/ice_flow.c     |  251 ++-
 drivers/net/ethernet/intel/ice/ice_flow.h     |   94 +-
 .../ethernet/intel/ice/ice_protocol_type.h    |   20 +
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |   48 +
 .../net/ethernet/intel/ice/ice_virtchnl_rss.c | 1404 ++++++++++++++++-
 include/linux/avf/virtchnl.h                  |   50 +
 11 files changed, 2070 insertions(+), 128 deletions(-)

--
2.47.1
