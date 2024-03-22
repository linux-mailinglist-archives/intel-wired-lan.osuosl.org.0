Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02A58887489
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Mar 2024 22:44:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4E87041952;
	Fri, 22 Mar 2024 21:44:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Hb40SGLi6Cx7; Fri, 22 Mar 2024 21:44:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5B10E41955
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711143896;
	bh=aFw/OQG29aDbkjs3fRt0bV+6IKSsVOMFCkabtsNvmBA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=c426GhQvYstABM6ZcQ7iI/1TXWWIqPdwIvxEiRE4smfq3G0lSC7OkN+CNihcoKaCN
	 +7oQcgvdrVTUT62B31njK1GMlpBwd92LelPl+0Qo+4uitTaaFrwk6fCbM/bJn2TxeF
	 WiDTed9ZRy1jFS8Mvx1W69yqK1c6WMxEBp93WBBQ9zN7sVoBwh2I3gtyuqF1yZCNU4
	 PnZaNNjvohHfWwPV0d5ie3IrV2UwuUbcE6GXXQtbEkstv/lQhZip5vvn9wwPpBXEG3
	 WMG3+kYxS8TETNm62mCeW+XdGwiaLHbK12/MDhl5GGMdIrtDGOSAgKB9oJE1G8Z+yI
	 Ibvx+bVaSNx8g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5B10E41955;
	Fri, 22 Mar 2024 21:44:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 223571BF2C9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Mar 2024 21:44:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0E8DF41931
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Mar 2024 21:44:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SbAVg3x89Nqz for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Mar 2024 21:44:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1F24C41949
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1F24C41949
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1F24C41949
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Mar 2024 21:44:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11021"; a="28689861"
X-IronPort-AV: E=Sophos;i="6.07,147,1708416000"; d="scan'208";a="28689861"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2024 14:44:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,147,1708416000"; d="scan'208";a="19733206"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2024 14:44:49 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Fri, 22 Mar 2024 14:44:43 -0700
Message-ID: <20240322214445.1653263-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.44.0.53.g0f9d4d28b7e6
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711143890; x=1742679890;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CMBLmcnUlcdJunkEaJYnQdrJrWnsUkTAtEEWSgV8ASM=;
 b=hWwtbeTy4B2VSmEjyogtgjaaXs4ghVtJNJYcEbGQzMuj9+vCx8FSvKNd
 SUTIKuVpch0AR8UiymR6be/afoGK5B0LSjwH628EvnmrjloZrRwsj43CG
 CR3G5xSWj9TLGQeT8qzLsTRqFra7oq1d6gYrL2fjRKSSjqRikTS/RkHe3
 D3Kq5hobiHKjVQxURFENBICuIGS+h37TF6/3b+zUJ+lVnbOl5+Ox/xb1J
 ckyZMBq5d0BWqk6p8RTEPabmEXj0a2ObKfTcfGXP6WLA7eKjHJlGYJC3Z
 6A+ZVH49Lkjs35i0/jknkJuIxF1s/0sUjVKINbsPOb/3R8FkZew2r2nbR
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hWwtbeTy
Subject: [Intel-wired-lan] [PATCH iwl-next v2 0/2] ice: minor cleanups for
 VF IRQ logic
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
Cc: Jacob Keller <jacob.e.keller@intel.com>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

While working on implementing Scalable IOV support for the ice driver, I
found a few minor gotchas in the VF logic where the existing code is not
ready to handle Scalable VFs.

First, the recent support to allow programming the VF MSI-X count
initialized some values in ice_sriov.c in the for loop for creating VFs
using the sriov_numvfs interface. We will need to initialize these values
for Scalable VFs as well, and this should belong in
ice_initialize_vf_entry().

Second, when programming the VF IRQs in response to virtchnl commands, the
current virtchnl logic hardcodes the assumption that hardware IRQ indexes
are VF relative. This is true for Single Root IOV, but is not true for
Scalable IOV where the interrupts come from the PF space. Cleanup the logic
to look up the IRQ index from the q_vector, making this flow more agnostic
of the VF functionality type in the future.

Neither of these changes is critical for current SR-IOV support, but they do
prepare the way for Scalable IOV VF support. I'd rather have these cleanups
already taken care now instead of carrying them until the Scalable IOV code
is submitted.

Changes since v1:
* 2nd patch implementation is replaced to work properly within the newer
  dynamic MSI-X logic.

Jacob Keller (2):
  ice: set vf->num_msix in ice_initialize_vf_entry()
  ice: store VF relative MSI-X index in q_vector->vf_reg_idx

 drivers/net/ethernet/intel/ice/ice.h          |  3 ++-
 drivers/net/ethernet/intel/ice/ice_base.c     |  3 ++-
 drivers/net/ethernet/intel/ice/ice_sriov.c    | 12 ++++--------
 drivers/net/ethernet/intel/ice/ice_sriov.h    |  5 ++---
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   |  5 ++++-
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 14 +++++++-------
 6 files changed, 21 insertions(+), 21 deletions(-)


base-commit: 237bb5f7f7f55ec5f773469a974c61a49c298625
prerequisite-patch-id: 3108bcb752993e56fb77c40c95ff495617203de7
prerequisite-patch-id: 8d0c4c9f22c20ccc76d0d7c075b13656aebc6876
prerequisite-patch-id: b1c978f45ccc98cdc40691607fb3c7f48a2d6bd8
prerequisite-patch-id: 7a209537e2a3985c83519ece236a5930a44fd5aa
prerequisite-patch-id: 66c079154bccc094464f56e16f85aa7d65e62aee
prerequisite-patch-id: d5bfb63d33a893c1b6c32f9b1ba535227cecbcef
prerequisite-patch-id: e208622d0074fe4a41c4601d617c7d745082bb82
prerequisite-patch-id: 706680e41a8b021c83090d51ee26e2451f8b3c8c
prerequisite-patch-id: be7f2dd5c7394129c14fceceb37c4b376d08e020
prerequisite-patch-id: 7dd3d0ff34215af649193eb215ef600ad1d3fe7e
prerequisite-patch-id: 56d8c16f6a325ab74a292ea6fc4be121d889165b
prerequisite-patch-id: 8a987b80ebc894e111078a8f3225d6944315e26f
prerequisite-patch-id: 4f37c6c392729994848492e7fda119ce48edc640
prerequisite-patch-id: fb8e3da01887ace6338d279f8b6642f381727c95
prerequisite-patch-id: 7425c65e59d4d97471b0ab83efe31b7bb72c0d96
prerequisite-patch-id: 8bf9b377f8d76f31e9e129c59607f701748a2d9c
prerequisite-patch-id: 7c561eabcdf219b485b50610bd7d3fbefec3d350
prerequisite-patch-id: c506ba95953b408baf21bf316bc573d3044159df
prerequisite-patch-id: baedb1109f1876e33a1c1e25ab35e153524d3592
prerequisite-patch-id: 933d4cc454c20f9a500d2739ec7425a54a2b663c
prerequisite-patch-id: 37c718cc700133d247b004af426942286c1eb756
prerequisite-patch-id: dd8b259bffa17b01c49c6f66fade2e9efd127a40
prerequisite-patch-id: 15c8b6e7a6497ee0fbca15be219f36c4b1399554
prerequisite-patch-id: 10a1c757f63adcdf97609b540bed0cbc9af97aca
prerequisite-patch-id: ae758bd4a436211480b79ea81abdbb1763d7610a
prerequisite-patch-id: 8180848cee44e1a0f6d7f91380595b7e51006aa9
prerequisite-patch-id: 19988c670ee03827979155873f69401534f38a3c
prerequisite-patch-id: 2be3091f90b8e0f40b11218cd6d49ab2188fec1a
-- 
2.44.0.53.g0f9d4d28b7e6

