Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mJ9oGW5boGm3igQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Feb 2026 15:40:46 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BD73C1A7BF6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Feb 2026 15:40:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6B95961600;
	Thu, 26 Feb 2026 14:40:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9wsS8dIFvnUq; Thu, 26 Feb 2026 14:40:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D5DED6160B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772116843;
	bh=nlT6t7HOyCuDggAXB/Bg3P3kGEb7ouI0ssC3TydBU0c=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=5jqgh+dd2cMF+wvbSYctOz0p1wpYx5yQmnNdc19LKFfIaZ3YG8bdSoRCGTsuJv4Iu
	 Cq5ucmtX/XLq7TLNBPdr0YMJjnyPdAgR6jKWb3AvpsviUEoa+q0Ob9jK/3n3vpRALr
	 6kc4FI+rYhYXS0NrPC1cRe/4ZAUC3+0f2aYEc4p0JV5BV2Bcm2GnyU0ypRSYZQuv2E
	 Qnz3K1sGo7vP4kC2htTTU3P7eV5RBkl+vSnKf2FPet9IHZLsjjo5QLooQa/lPaXXH3
	 f0GShQoxcgB647TFO819/M3MwjtV/4ckRSYeEkRlwzeAW5eehnwIYYFZIAw+v6fOFX
	 BY67Odlq+KOSQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D5DED6160B;
	Thu, 26 Feb 2026 14:40:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 19F6723D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Feb 2026 14:40:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0B4B1844E3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Feb 2026 14:40:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EyXFoyVa911k for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Feb 2026 14:40:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 38B0A8446D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 38B0A8446D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 38B0A8446D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Feb 2026 14:40:40 +0000 (UTC)
X-CSE-ConnectionGUID: hnZSeD2wR26JY8ly5hocbA==
X-CSE-MsgGUID: tEeRz+lDRoab4lWjyPWobg==
X-IronPort-AV: E=McAfee;i="6800,10657,11713"; a="76784550"
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="76784550"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 06:40:41 -0800
X-CSE-ConnectionGUID: aaCEPmIXQJO5ZJ6yL/eqXQ==
X-CSE-MsgGUID: VRN6VyEbTIuw8KHKaM4V6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="254353834"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa001.jf.intel.com with ESMTP; 26 Feb 2026 06:40:40 -0800
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, aleksandr.loktionov@intel.com
Date: Thu, 26 Feb 2026 15:40:35 +0100
Message-ID: <20260226144037.400815-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772116842; x=1803652842;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4qJEPQL3k8uWe/F0JSIQRqf5CjPbIYGk3lkjHKeSYrg=;
 b=Qb3w4pkLXIlk8W3ZrxTQ2N1vnb5YGDWAniMXdbNCRO/IrhWX+qkBSFMq
 4PVShFrjCg9nOve/asz4DRiMP0+rmdBKFm15pXbT1Hm0SZc/r0DqNfNNb
 IylurHucLHig0a4YAG5kR47qaKxEbqzBEXvLm6RpktijX0k0j0DxC+TQ4
 gqvhxEuS4xYwhYCbtLJYk3oBTGiGyvGNsc0sFpcLaSuzH3IXcxm23uTIa
 +sAYqmen3NV71+JouW5UQhDiMHX/qiuIEuITZeIHB2IPmf9eIXsx3H82k
 +dxJAVQek6+QCnhJnPc90mNuAauPc4sLpfmIy9Ampd8llHz8ZMtL6nGPu
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Qb3w4pkL
Subject: [Intel-wired-lan] [PATCH iwl-next v4 0/2] ice: implement symmetric
 RSS hash configuration
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.999];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: BD73C1A7BF6
X-Rspamd-Action: no action

The ice driver has advertised symmetric RSS support via
supported_input_xfrm since the capability was added, but ice_set_rxfh()
ignored the input_xfrm parameter entirely, so enabling symmetric hashing
had no actual effect.

This series fixes that.  Patch 1 extends the ethtool core so that
drivers hashing GTP flows on TEID can report it honestly without
blocking symmetric-xor configuration.  Patch 2 wires up the ice driver.

The need for patch 1 surfaced because GTP flow profiles in ice always
include TEID in the hash.  ethtool_check_flow_types() calls
get_rxfh_fields() for every hashable flow type before allowing
symmetric-xor; ethtool_rxfh_config_is_sym() rejected any bitmap
containing RXH_GTP_TEID since it has no src/dst counterpart.  TEID
is the same value in both tunnel directions, so this rejection is
incorrect: including it does not break symmetry.

Rather than hiding TEID from the reported fields (which would silently
misrepresent hardware behaviour), patch 1 fixes the validator, and
patch 2 reports TEID honestly.

Tested with tools/testing/selftests/drivers/net/hw/rss_input_xfrm.py
on an E810 card running kernel 6.19-rc8.

---
v3 -> v4:
 - Drop the ICE_HASH_INVALID fallback in ice_get_rxfh_fields() that
   fabricated default L3+L4 hash fields when no hardware RSS config
   exists for a flow type; returning zero fields is more honest and
   avoids misrepresenting hardware state
 - Drop the companion "if (!l3 && !l4)" special case in the
   pair-completion block; it was only necessary to cover the synthetic
   defaults added by the fallback, which is now gone
 - No functional change to ice_set_rxfh() or the ethtool core patch

v2 -> v3:
 - Split into 2 patches: ethtool core fix separate from driver change
 - Drop the RXH_GTP_TEID stripping workaround from the driver; instead
   fix ethtool_rxfh_config_is_sym() to accept TEID as intrinsically
   symmetric (patch 1)
 - Fix ice_get_rxfh_fields(): the v2 unconditional assignment
   "nfc->data = ICE_RSS_ALLOWED_FIELDS" clobbered fields set earlier in
   the same function; replaced with pair-completion using |= so only
   the missing half of a partial pair is filled in
 - Remove ICE_RSS_ALLOWED_FIELDS define (no longer needed)
 - Report RXH_GTP_TEID honestly for GTP flow types

v1 -> v2:
 - Preserve valid symmetric RSS fields instead of overwriting nfc->data
   unconditionally

Aleksandr Loktionov (2):
  ethtool: treat RXH_GTP_TEID as intrinsically symmetric
  ice: implement symmetric RSS hash configuration

 drivers/net/ethernet/intel/ice/ice_ethtool.c | 40 +++++++++++++---
 drivers/net/ethernet/intel/ice/ice_lib.c     |  7 ++--
 drivers/net/ethernet/intel/ice/ice_lib.h     |  1 +
 net/ethtool/common.c                         |  3 +++
 4 files changed, 40 insertions(+), 11 deletions(-)

-- 
2.43.0
