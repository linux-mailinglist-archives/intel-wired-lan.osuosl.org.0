Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 00731961974
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Aug 2024 23:52:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 58E3040696;
	Tue, 27 Aug 2024 21:52:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mWGAKXBCrGaU; Tue, 27 Aug 2024 21:52:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7C2BC40675
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724795571;
	bh=R0dYxeVXE8QqSp7NFKi7pwSEs42vydAijnuNOVrVBO0=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=UDfXxrGRuxlt8BWERNn5YecoCxdVHURqLcXN2lZnC5TvBFrNKAQ7ZVKJKrL4aQ3ae
	 TjiHOyE5iyTtcVnMoawTBTaqHKzWwZ9m0rBvENSMtEFV6Iq4pKIFxS6i31OhPSS/4g
	 L6aAVi1liWS/BxVwQhz8ke7YNYkx+8nnNjgbVuLJMoRpxjugbLceBzVBs5wA3ULJ79
	 3vGyahnAb0cZzhXJwOeXNhC5KPfm1mMUcbsHnoERjwbFANy8Jhnhm04zO+LdjISK9o
	 5uZ1T0bOnnwaYphgo2LKbnD9EaOh3q+DG88rqmB/QR7F9zM+zR7sG4X8t/aouPW1Hn
	 GZrxCgseeo/+g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7C2BC40675;
	Tue, 27 Aug 2024 21:52:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 061071BF27E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 21:52:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E66E68114E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 21:52:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ktsYIJhAXJSh for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Aug 2024 21:52:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8A3EB80FC6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8A3EB80FC6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8A3EB80FC6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 21:52:48 +0000 (UTC)
X-CSE-ConnectionGUID: 9D+yhkCsQiikj+TrZiqe+Q==
X-CSE-MsgGUID: 4n7GngY4R12nL2mQqh9A/Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11177"; a="27068814"
X-IronPort-AV: E=Sophos;i="6.10,181,1719903600"; d="scan'208";a="27068814"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2024 14:52:44 -0700
X-CSE-ConnectionGUID: aWj6/4+hRFe2viutZADYxg==
X-CSE-MsgGUID: f5HeaRCfRaC6oGm0FDM3jg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,181,1719903600"; d="scan'208";a="63189471"
Received: from jekeller-desk.jf.intel.com ([10.166.241.20])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2024 14:52:43 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Tue, 27 Aug 2024 14:52:03 -0700
Message-Id: <20240827-e810-live-migration-jk-prep-ctx-functions-v1-0-0442e2e42d32@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAIRKzmYC/53Oz27CMAwG8FdBOc8o/4B2p73HxKFxXDArKUqy0
 An13Rd6qnZjR9uffp8fIlFkSuJ98xCRCiceQx3U20bguQsnAvZ1FlpqKxulgRolYeBCcOVT7HL
 Nw+ULbpFugHmC/jvgc5nA2713+tA6jXtRvRrpeVq6PgXfBwg0ZXGslzOnPMaf5Ymilvs/+ooCC
 V7tnJO9VYjNB4dMwxbH69JS9ErW6hVZV7l1u04a6xDJ/JXNWjavyKbKzjfWSm9acu1anuf5F8d
 KVuugAQAA
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, 
 Vladimir Oltean <olteanv@gmail.com>, 
 Anthony Nguyen <anthony.l.nguyen@intel.com>, 
 "netdev netdev"@vger.kernel.org
X-Mailer: b4 0.14.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724795569; x=1756331569;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to:cc;
 bh=zjqag5WgCrWbK1QowSc6fXZoZb4M/cwfOe8/J2FMjsI=;
 b=QVazsy7+6rAm5XBtUmahV7BHWAzwbkGnKPhLy2fR4jVyIdP7a9IbpuUk
 jdrNumW8Isp9tPRh9pvFC3H+R3aiOeiZLJExqodQBJllp9KZJBEwd1xuG
 pEkakXotduqutpOnjPQKefuv/as+w/S5IAZ1VwWrdCet4c9EH81np2TL+
 7Yod0uBmUJElLpgvoDDZNxTcOYaIlC3Mu/pwxKUpEFSLgn2BuX9VdLbHQ
 izXd1eUev94yNUnPSM7kOrxwm0o4N6gPQYVvppKvrIIDTLCgeYm6aRGU9
 Q0v/sfm3NKL37l9c+lCsemRnf9suUsQUDxm6LE0BxjsxFUZHeJbFmFAFE
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QVazsy7+
Subject: [Intel-wired-lan] [PATCH iwl-next 00/13] ice: use <linux/packing.h>
 for Tx and Rx queue context data
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This series refactors the Tx and Rx queue context data packing in the ice
driver to use the <linux/packing.h> API. This is intended to aid in the
future implementation of unpacking context data for live migration. While
it strictly does save a few bytes in the module according to bloat-o-meter,
the savings is quite minimal (~200 bytes).

While initially implementing the logic, it was discovered that the packing
code does not work properly if the provided buffer size is not a multiple
of 4 bytes. This is also fixed by this series, along with some general
improvements to the API including the addition of pack() and unpack().

First, several improvements and cleanups to the packing API are made:

An additional sanity check is added to packing() to ensure that the
bit indices do not point outside the bounds of the provided buffer.

The packing() implementation is adjusted to work correctly when given
an arbitrary buffer size.

The duplicate kernel-doc for packing() is removed from the header
file.

The packing API gaves the pack() and unpack() wrappers which simplify
the use of packing, and enable better const correctness checking.

The pack() and unpack() implementations are separated and packing()
becomes a simple wrapper that selects between the two operations. This is
intended to improve the logic as several conditionals can be dropped.

A suite of KUnit tests for the packing API have been added, based on
simple selftests originally developed by Vladimir.

Additional unit tests for the packing library are added.

A bug in the QUIRK_MSB_ON_THE_RIGHT of the packing API is fixed, along with
additional unit tests covering this behavior.

Following the improvements to the packing API, the ice driver is
refactored:

The int_q_state field is removed from the ice_tlan_ctx structure and
packing definitions. This field is not used, and can't even be properly
packed or unpacked as its size exceeds 8 bytes.

The existing packing code based on ice_set_ctx() is ripped out and replaced
with an implementation based on pack().

The sizes of fields in ice_tlan_ctx and ice_rlan_ctx are updated to better
reflect their actual size.

The setting of the prefetch enable bit in the Rx context is moved into
ice_setup_rx_ctx() where the rest of the Rx context is configured. This is
less surprising than having the ice_write_rxq_ctx() always overwrite that
field of the context.

The copy_rxq_ctx_to_hw() and ice_write_rxq_ctx() are updated to align with
modern kernel style guidelines. This includes removing an unnecessary NULL
check, updating the kdoc descriptions to align with the check-kdoc, and
making ice_copy_rxq_ctx_to_hw() void. This ensures the style for these
functions will match the style for the similar functions needed to enable
live migration in a future series.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
I opted to include the packing changes in this series to Intel Wired LAN,
because the changes are only required due to the new use with the ice
driver. I also do not believe any existing driver uses
QUIRK_MSB_ON_THE_RIGHT, so I don't think the fix for that quirk needs to go
through net or stable either.

The packing library changes were discussed here:
https://lore.kernel.org/netdev/a0338310-e66c-497c-bc1f-a597e50aa3ff@intel.com/

In addition, several of the changes are taken from Vladimir's github:
https://github.com/vladimiroltean/linux/tree/packing-selftests

Strictly, the changes for pack() and unpack() are not required by ice, but
Vladimir requested that we try to use the new API so that I am not adding
another driver which needs updating in the future. In addition, pack() and
unpack() enable const checking.

---
Jacob Keller (8):
      lib: packing: add KUnit tests adapted from selftests
      lib: packing: add additional KUnit tests
      lib: packing: fix QUIRK_MSB_ON_THE_RIGHT behavior
      ice: remove int_q_state from ice_tlan_ctx
      ice: use <linux/packing.h> for Tx and Rx queue context data
      ice: reduce size of queue context fields
      ice: move prefetch enable to ice_setup_rx_ctx
      ice: cleanup Rx queue context programming functions

Vladimir Oltean (5):
      lib: packing: refuse operating on bit indices which exceed size of buffer
      lib: packing: adjust definitions and implementation for arbitrary buffer lengths
      lib: packing: remove kernel-doc from header file
      lib: packing: add pack() and unpack() wrappers over packing()
      lib: packing: duplicate pack() and unpack() implementations

 drivers/net/ethernet/intel/ice/ice_common.h    |  13 +-
 drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h |  33 +-
 include/linux/packing.h                        |  32 +-
 drivers/net/ethernet/intel/ice/ice_base.c      |   6 +-
 drivers/net/ethernet/intel/ice/ice_common.c    | 333 ++++++--------------
 lib/packing.c                                  | 304 ++++++++++++------
 lib/packing_test.c                             | 410 +++++++++++++++++++++++++
 Documentation/core-api/packing.rst             |  71 +++++
 MAINTAINERS                                    |   1 +
 lib/Kconfig                                    |  12 +
 lib/Makefile                                   |   1 +
 11 files changed, 838 insertions(+), 378 deletions(-)
---
base-commit: 2c163922de69983e6ccedeb5c00dec85b6a17283
change-id: 20240812-e810-live-migration-jk-prep-ctx-functions-d46db279b2c6

Best regards,
-- 
Jacob Keller <jacob.e.keller@intel.com>

