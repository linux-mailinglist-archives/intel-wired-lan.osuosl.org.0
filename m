Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DFBC3A4C01F
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Mar 2025 13:20:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9BCB681E84;
	Mon,  3 Mar 2025 12:20:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GkmuVBo2x6Fu; Mon,  3 Mar 2025 12:20:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8894A81E8D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741004433;
	bh=HFCta2y8y8bUgLdU008IP9FrdzJXV4ItTlqh93xakDw=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=1NoyQV/3JskOTmgPuFR2qt8Kdug/6/n/jsytNQyqk7VA2yzyoLOZQiF/qsOVXEqXq
	 GRl8BbQbqeCK9tFzrITiE5H5cu7dXYwUw/2j1IkpeXbnDK22WLesbqNq+nGMwNjkki
	 Ak9i5OotOAsXou4gbI68K7VRj+3Ilohi53Fal39X2il5iTAfIly+/mBwttobC/ZsNq
	 0rPGrHxFewUuzFz5+otBH9tYbkDhHjjotrr00KrRCxGXoQkwco8VcNVQB+mUoX5eUV
	 yq+HuNPblomoAYU+K/fFNXKaC9UQPGFFAHxKakQC+3Tp1ns59ZcVqiXyx36ymb9UFf
	 /CuE8SJS/agYQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8894A81E8D;
	Mon,  3 Mar 2025 12:20:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1E047C1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 12:20:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 01BF681E7C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 12:20:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RBbpQvozkrr2 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Mar 2025 12:20:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0E5B481E61
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0E5B481E61
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0E5B481E61
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 12:20:29 +0000 (UTC)
X-CSE-ConnectionGUID: XY0hSJWMRsq+wDJ3l9v+sQ==
X-CSE-MsgGUID: f91bpHXZQMO4DhjY8MZs1Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11362"; a="41052426"
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="41052426"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 04:20:29 -0800
X-CSE-ConnectionGUID: oKukZZFXRH68sS2LSbI4og==
X-CSE-MsgGUID: C3iNrGAkQfGbYmt88O2THA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="117976097"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by fmviesa007.fm.intel.com with ESMTP; 03 Mar 2025 04:20:27 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org, andrew@lunn.ch,
 pmenzel@molgen.mpg.de, Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Date: Mon,  3 Mar 2025 13:06:26 +0100
Message-Id: <20250303120630.226353-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741004430; x=1772540430;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kUYpmkUuMpjH5qH6TkoatDdSONJoaxi7IvJFsbgS+DE=;
 b=StveBFuYMbLEZ2sErHN+rU4TmETaZTnJ/Wi1HyD/QK/demO7anHIuBXr
 jsB8W7cqAQQ2rgE2E0Gn8xpquudEnKrviX9AaAa10GQ/icCL90vvg+9zQ
 61SyhKCzqbDHAYodpe7fXRgcFUuTGmwatm0dcirFsgFFaPfDYv3McLgJu
 WLDXyoC6fgAmlpB6QgF31T3a3tlDVXwt+xs/8DnQCnT9B+mr6gZtlyRfE
 Xbyksd+xC6u+BIxzcEof4mKyZc8tbw0x6+2XqYu04SvargtHx6bMRXiuD
 D5kNvE8YByCtL9YL8cRaN8F1ouS2G0PfRlZiTea046T6L35ntx7dmWORU
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=StveBFuY
Subject: [Intel-wired-lan] [PATCH iwl-next v3 0/4] ixgbe: add ethtool
 support for E610
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

As E610 adapter introduces different approach to communicate with FW than
the previous adapters using the ixgbe driver, there is a need to adjust
some of the ethtool callbacks implementations to the new pattern. Some of
the features are now set using Admin Command Interface (eg. controlling
LEDs) which among the ixgbe supported device is specific for E610 only.
That means ethtool callbacks related to these features need to be handled
specifically in case of E610 adapter. E610 introduces also different rules
(eg. setting FC, setting WoL) for some of the features what also needs to
be adjusted.

This series is based on the series introducing initial E610 device
support:
https://lore.kernel.org/intel-wired-lan/20241205084450.4651-1-piotr.kwapulinski@intel.com/


Jedrzej Jagielski (4):
  ixgbe: create E610 specific ethtool_ops structure
  ixgbe: add support for ACPI WOL for E610
  ixgbe: apply different rules for setting FC on E610
  ixgbe: add E610 .set_phys_id() callback implementation

 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c |  29 +++
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |   1 +
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  | 171 +++++++++++++++++-
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  10 +-
 .../ethernet/intel/ixgbe/ixgbe_type_e610.h    |  14 ++
 5 files changed, 212 insertions(+), 13 deletions(-)
---
NOTE: initial version of the series has been sent as V2 - it had been
tagged by mistake. Sorry for messing out.
So this revision is in fact V2.
link to the initial version:
https://patchwork.ozlabs.org/project/intel-wired-lan/list/?series=446487
---


base-commit: 35c698223836714535e5413753b5899ca2a05d0a
-- 
2.31.1

