Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5165CAA5265
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Apr 2025 19:12:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5C8AC40D6C;
	Wed, 30 Apr 2025 17:12:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xT-dMCAUqhPX; Wed, 30 Apr 2025 17:12:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A7378404DB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746033150;
	bh=nowNmoj2HFTktvbCcm6bqQ6mYl2GD+/MzaJcNtjJJpE=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=WslJM1yY1RdeRIXHqe7Cu0h/OdIe8O4WkCOoN4cSQlRvddfMNjPp/ghMZLFISZVnC
	 Z6YsTsRG8BwIehtGfwMRgKhMVXINvjU21rWAivz0PPQKaL1BdyU5vbz0Sdug/yXsuX
	 9o9NSK3oR4a8DpBr01OI2flGoTcSl4eXSkr3G2G17ZmOC34t/hN9AnmpJ+Vr4amAx/
	 cK43jFhMTKD0HqgWdyhYyVFh9NXf316BfOkweQk8XOgvk6vXmBEFF46icsZa8iD46J
	 yJMB/T77JXZgFk9UBkIbjVKTJmtX7C+RLPFsNWT3L4c4ATuNxV5KRpPSiKrCewhAdT
	 rroQo8bOqPEew==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A7378404DB;
	Wed, 30 Apr 2025 17:12:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id C0173236
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Apr 2025 17:12:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A70CB40D3F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Apr 2025 17:12:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pRii8hez_izd for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Apr 2025 17:12:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A3233406AD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A3233406AD
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A3233406AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Apr 2025 17:12:28 +0000 (UTC)
X-CSE-ConnectionGUID: hb77LnnuSm61QdCnCIv+PA==
X-CSE-MsgGUID: fMdxOPsQR6uyEvf3RnrWNw==
X-IronPort-AV: E=McAfee;i="6700,10204,11419"; a="51370085"
X-IronPort-AV: E=Sophos;i="6.15,252,1739865600"; d="scan'208";a="51370085"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2025 10:12:16 -0700
X-CSE-ConnectionGUID: sXxF7arZQQmaIXYRpBl/mw==
X-CSE-MsgGUID: xsELgrtaTKuqVWjvNNTpSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,252,1739865600"; d="scan'208";a="139358951"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2025 10:12:15 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 30 Apr 2025 10:11:51 -0700
Message-Id: <20250430-jk-hash-ena-refactor-v1-0-8310a4785472@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANdZEmgC/33NQQ6CMBQE0KuQrv2mLQWKK+9hXJTysVUspiUVQ
 7i7TVdsdDmZzJuVBPQWAzkVK/EYbbCTS4EdCqKNcjcE26dMOOUVFbyE+wOMCgbQKfA4KD1PHlq
 lGfJOlqpCkqav1Nglsxdi3yM4XGZyTY2xIQ0++S+y3P+nIwMKpW5KWVetEF13tm7G8ainZwYj3
 yPtD4QnpKFSoOrlwGi9R7Zt+wIeYj+fBwEAAA==
X-Change-ID: 20250423-jk-hash-ena-refactor-9ac1e2b83a5e
To: netdev <netdev@vger.kernel.org>, 
 Anthony Nguyen <anthony.l.nguyen@intel.com>, 
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Cc: Jacob Keller <jacob.e.keller@intel.com>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
X-Mailer: b4 0.14.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746033149; x=1777569149;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to:cc;
 bh=u0BBFSaUV64wj5ByuxZknCqGvWsF4wHEH18gXkfwdac=;
 b=XfymUZKpDwmzXtatUGA0I3yYIi7jKy2Tu9xIUehVe/dFaJ8D1LF5Ql8S
 A/omE94TnGj0shHGbVegB9xacMLPg4Zm3WN5e7hkQ4ymtO5ve1cX5pgzr
 uGYg+Iy+92YltwTxwPMTLGslEEDK7VR8bxdPiQfsu56v/4dPyhsKpBWOb
 eZ/g1z+sd3YRGR1PnGOdeNmFS5YlmT30HzpNdVk8CXc3Z4VJiO1dmOHdZ
 7+xnfxercrPyF22+DqLG5k6NhZt985g/0DzVeqRfL03O1XbiF1S8yJ669
 ktv+e1QXkF3oiEbwaJDzZhGlOXywbGqZv1jRaPUYQrSVyXdJWxRUCjpmL
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XfymUZKp
Subject: [Intel-wired-lan] [PATCH iwl-next 0/2] net: intel: cleanup RSS hash
 configuration bits
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

The virtchnl API does not define the RSS Hash configuration bits directly
in virtchnl.h, but instead implicitly relies on the hardware definitions
for X710 and X722 in the i40e driver.

This results in duplicating the same bit definitions across 3 drivers. The
actual virtchnl.h header makes no mention of this, and its very unclear
what the bits mean without deep knowledge of the way RSS configuration
works over virtchnl.

In addition, the use of the term 'hena' is confusing. It comes from the
I40E_PFQF_HENA registers, indicating which hash types are enabled.

Rename the 'hena' fields and related functions to use 'hashcfg' as a
shorthand for hash configuration.

We could define the enumeration of packet types in virtchnl.h. Indeed, this
is what the out-of-tree releases of virtchnl.h do. However, this is
somewhat confusing for i40e. The X710 and X722 hardware use these bits
directly with PF hardware registers. It looks confusing to use "VIRTCHNL_*"
names for such access.

Instead, we move these definitions to libie as part of new pctype.h header
file. This allows us to remove all duplicate definitions and have a single
place for Linux to define the bit meanings. The virtchnl.h header can point
to this enumeration to clarify where the values are defined.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
Jacob Keller (2):
      net: intel: rename 'hena' to 'hashcfg' for clarity
      net: intel: move RSS packet classifier types to libie

 drivers/net/ethernet/intel/i40e/i40e_txrx.h        | 43 ++++++------
 drivers/net/ethernet/intel/i40e/i40e_type.h        | 32 ---------
 drivers/net/ethernet/intel/iavf/iavf.h             | 10 +--
 drivers/net/ethernet/intel/iavf/iavf_txrx.h        | 40 ++++++-----
 drivers/net/ethernet/intel/iavf/iavf_type.h        | 32 ---------
 drivers/net/ethernet/intel/ice/ice_flow.h          | 68 ++++++------------
 drivers/net/ethernet/intel/ice/ice_virtchnl.h      |  4 +-
 include/linux/avf/virtchnl.h                       | 23 +++---
 include/linux/net/intel/libie/pctype.h             | 44 ++++++++++++
 drivers/net/ethernet/intel/i40e/i40e_ethtool.c     | 81 +++++++++++-----------
 drivers/net/ethernet/intel/i40e/i40e_main.c        | 25 +++----
 drivers/net/ethernet/intel/i40e/i40e_txrx.c        | 25 +++----
 drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 46 ++++++------
 drivers/net/ethernet/intel/iavf/iavf_main.c        | 17 ++---
 drivers/net/ethernet/intel/iavf/iavf_virtchnl.c    | 33 ++++-----
 drivers/net/ethernet/intel/ice/ice_flow.c          | 45 ++++++------
 drivers/net/ethernet/intel/ice/ice_lib.c           |  2 +-
 drivers/net/ethernet/intel/ice/ice_virtchnl.c      | 44 ++++++------
 .../ethernet/intel/ice/ice_virtchnl_allowlist.c    |  2 +-
 19 files changed, 289 insertions(+), 327 deletions(-)
---
base-commit: deeed351e982ac4d521598375b34b071304533b0
change-id: 20250423-jk-hash-ena-refactor-9ac1e2b83a5e

Best regards,
-- 
Jacob Keller <jacob.e.keller@intel.com>

