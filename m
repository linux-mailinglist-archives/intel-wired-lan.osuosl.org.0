Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B07AFADF957
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jun 2025 00:25:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F3E3F60B9D;
	Wed, 18 Jun 2025 22:25:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s42_ZDleDH2q; Wed, 18 Jun 2025 22:25:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 26C2B60A79
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750285508;
	bh=mUEZo/bWy4Wf+whxWjOmWfvGhWo4n/HLal3jZ/Fc57o=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=3tDgODr/jkVQrVVDatOZr9ULpgzrfifhw0P4i1jUvjYjx3BNeW0Mlp4QeSCczxJVV
	 96yL3M1wJsq585sHgEl5y5KJzNViUUg2/1pC/0mlsN93n0a6QO4WSV1xKyoEr+8ELG
	 TukNdfVaMS7t7iWsb6lK2Ex/tRqxIrFP4UcNTnthhYtZFwz8jjyjMvZhiSVCbstXZv
	 t4z5ORDy7uV3llIDkXroZKdxoCoE9Zu4Y/oUsdSZHxR8Q1yklCH+h1xZoXKHZafGoI
	 RMOUicfYIuoUg9CUklDJW99h1/bOU+ypzi0DVR53KB+xo/AA5mGuye3VoRfmwWQW+y
	 rdx7aXEIcx0Nw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 26C2B60A79;
	Wed, 18 Jun 2025 22:25:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 0BA75E2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 22:25:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E605D407AF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 22:25:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cMEwAn96y1-B for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Jun 2025 22:25:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C554540402
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C554540402
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C554540402
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 22:25:05 +0000 (UTC)
X-CSE-ConnectionGUID: ngwgYkbpR5+JuDA4Suky0g==
X-CSE-MsgGUID: 5m+TRLR4Ry6wrVN+9P9N8w==
X-IronPort-AV: E=McAfee;i="6800,10657,11468"; a="52447733"
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="52447733"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 15:25:04 -0700
X-CSE-ConnectionGUID: Dd23nvGPSJSF6pDs1bvqEQ==
X-CSE-MsgGUID: iWxuQtHMSRuepUX3zNd2kg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="149870000"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 15:25:04 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 18 Jun 2025 15:24:35 -0700
Message-Id: <20250618-e810-live-migration-jk-migration-prep-v1-0-72a37485453e@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKM8U2gC/03NwQqEMAwE0F+RnA20trrFXxEPolHjaldaUUH8d
 8OePL5hmLkgUmCKUCYXBNo58s8LdJpAOzZ+IORODJnKclVoh+S0wpl3woWH0GzSx+n7whpoRWd
 cp3JjbWs/IFsS9nz+fyrgY0ZP5wb1fT9yJPNqgQAAAA==
X-Change-ID: 20250618-e810-live-migration-jk-migration-prep-838d05344c47
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org, 
 Madhu Chittim <madhu.chittim@intel.com>, Yahui Cao <yahui.cao@intel.com>, 
 Anthony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
X-Mailer: b4 0.14.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750285506; x=1781821506;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to:cc;
 bh=/C0mKxIHEbpL62vBDZxpL6tZO8RNdm66a6YCQJP1wVE=;
 b=NQl+GN2agLmrUrvZXh3QLk0o5ekAX8BBbOi95z+nLj5yQbNG8K1JosR0
 fAGw60dKm+7ZCLs5ioSOIMp7YMdzg0NhcR3Rh5oLORk02H6bWu021wpKB
 wPXFPZHzG6jhvLvCKrUpr5BYrKs9R5dU6mZ4ePEEIFdmz8JMvZ6HpgEG4
 qCiCphY9SJPIAPL/JEB8eZ8q2c+S87wAwFmdMhXLjYolZQYYjdBFsrsMi
 O5J0BYtaVG1ecoddAcnuU/I4ld2N3/xawEpcqSZEp8EZ/KoiLlKWeHPdF
 Ip38ozq92qtNWMbuVHx/4Vvpr7VNxsXk/b9TdwkQckZWSWscYAibrr+YA
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NQl+GN2a
Subject: [Intel-wired-lan] [PATCH iwl-next 0/8] ice: cleanups and
 preparation for live migration
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

Various cleanups and preparation to the ice driver code for supporting
SR-IOV live migration.

The logic for unpacking Rx queue context data is added. This is the inverse
of the existing packing logic. Thanks to <linux/packing.h> this is trivial
to add.

Code to enable both reading and writing the Tx queue context for a queue
over a shared hardware register interface is added. Thanks to ice_adapter,
this is locked across all PFs that need to use it, preventing concurrency
issues with multiple PFs.

The RSS hash configuration requested by a VF is cached within the VF
structure. This will be used to track and restore the same configuration
during migration load.

ice_sriov_set_msix_vec_count() is updated to use pci_iov_vf_id() instead of
open-coding a worse equivalent, and checks to avoid rebuilding MSI-X if the
current request is for the existing amount of vectors.

A new ice_get_vf_by_dev() helper function is added to simplify accessing a
VF from its PCI device structure. This will be used more heavily within the
live migration code itself.

REVIEW NOTES:

This is the first eight patches of my full series to support live
migration. The full series (based on net-next) is available at [1] for
early preview if you want to see the changes in context.

Some of these changes are not "used" until the live migration patches
themselves. However, I felt they were sufficiently large and review-able on
their own. Additionally, if I keep them included within the live migration
series it is 15 patches which is at the limit of acceptable size for
netdev. I'd prefer to merge these cleanups first in order to reduce the
burden of review for the whole feature.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Link: [1] https://github.com/jacob-keller/linux/tree/e810-live-migration/jk-migration-tlv
---
Jacob Keller (8):
      ice: add support for reading and unpacking Rx queue context
      ice: add functions to get and set Tx queue context
      ice: save RSS hash configuration for migration
      ice: move ice_vsi_update_l2tsel to ice_lib.c
      ice: expose VF functions used by live migration
      ice: use pci_iov_vf_id() to get VF ID
      ice: avoid rebuilding if MSI-X vector count is unchanged
      ice: introduce ice_get_vf_by_dev() wrapper

 drivers/net/ethernet/intel/ice/ice_adapter.h    |   2 +
 drivers/net/ethernet/intel/ice/ice_adminq_cmd.h |  14 +-
 drivers/net/ethernet/intel/ice/ice_common.h     |   6 +
 drivers/net/ethernet/intel/ice/ice_hw_autogen.h |  12 ++
 drivers/net/ethernet/intel/ice/ice_lib.h        |   8 +
 drivers/net/ethernet/intel/ice/ice_sriov.h      |   7 +
 drivers/net/ethernet/intel/ice/ice_vf_lib.h     |  34 +++-
 drivers/net/ethernet/intel/ice/ice_virtchnl.h   |  19 ++
 drivers/net/ethernet/intel/ice/ice_adapter.c    |   1 +
 drivers/net/ethernet/intel/ice/ice_common.c     | 233 +++++++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_lib.c        |  35 ++++
 drivers/net/ethernet/intel/ice/ice_sriov.c      |  19 +-
 drivers/net/ethernet/intel/ice/ice_vf_lib.c     |   3 +
 drivers/net/ethernet/intel/ice/ice_virtchnl.c   |  59 +-----
 14 files changed, 384 insertions(+), 68 deletions(-)
---
base-commit: d16813402994bde9201030ef877c9d753227e6dd
change-id: 20250618-e810-live-migration-jk-migration-prep-838d05344c47

Best regards,
-- 
Jacob Keller <jacob.e.keller@intel.com>

