Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 25FC9A37DD1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Feb 2025 10:06:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2D71C60D88;
	Mon, 17 Feb 2025 09:06:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8vDXPIPPUsXN; Mon, 17 Feb 2025 09:06:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3AFE460D8C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739783203;
	bh=vc5dcehpvjLSGZx/pfRZERJ1+COB8L6q+JxXZP0kEOc=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Tt0JysYqXS29MqKLo845WJL5HosKl2Nv9fwRzAJHg7oQ3ZbMRFbxFEw3Ds1x39gn3
	 Fq6dFoN+DiONmvt7zYL78Tex8BsYjC5+YW9QRBRZQGBK3mu6ZOXDCM5uFCRO63HeGq
	 ll3muJq1Z9X/CkuV8jNqLNdTRPM8J0flKaEGnTKkVcSDlXX5h5qcfACJ9qrPOOPRwr
	 zCe5drrYUTvIzGA7kh2y8AJ3IgknzKhJz22ko/Xi2t8xkHUwHkGOgipir/tBT7j4+Y
	 W3N5GL8/fNs4nopR5qo76XzFHRocGInrW4uuuzsCmV8AWX+QJYNvBk4eGFj43Lg143
	 8kdYqc+zaWV9Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3AFE460D8C;
	Mon, 17 Feb 2025 09:06:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4A521DE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Feb 2025 09:06:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 366F54027C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Feb 2025 09:06:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AY5mvW3uWiVZ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Feb 2025 09:06:40 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E696F405FC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E696F405FC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E696F405FC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Feb 2025 09:06:39 +0000 (UTC)
X-CSE-ConnectionGUID: Wop6xeoESaCYstH9USrxNg==
X-CSE-MsgGUID: 7TTof5uFR2SMeI4COoIE1Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11347"; a="51078475"
X-IronPort-AV: E=Sophos;i="6.13,292,1732608000"; d="scan'208";a="51078475"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2025 01:06:39 -0800
X-CSE-ConnectionGUID: 61nso0TORY2JvT1zZXh1Xg==
X-CSE-MsgGUID: R07LcAZERIWE3inunRVCtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,292,1732608000"; d="scan'208";a="113937576"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by fmviesa006.fm.intel.com with ESMTP; 17 Feb 2025 01:06:37 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, marcin.szycik@linux.intel.com,
 jedrzej.jagielski@intel.com, przemyslaw.kitszel@intel.com,
 piotr.kwapulinski@intel.com, anthony.l.nguyen@intel.com,
 dawid.osuchowski@intel.com, horms@kernel.org, pmenzel@molgen.mpg.de
Date: Mon, 17 Feb 2025 10:06:32 +0100
Message-ID: <20250217090636.25113-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739783200; x=1771319200;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DUDpm184CnAqvw0VolVN5A57W+QNXKcQy8FrVRJLn7o=;
 b=ACJKnsZO0mhhtVHa5v5H9bLusyVJihEMsaOEyxwhR6kzdBFRRsq7uITx
 uOufj9sNBFi7+l1rgxRBpt/FEU7qQLSQs95Dlc2TVCd8rRBE9hUBjbRui
 9ZjFpVvQviA2M6K8UTG70GrppcU9+P45tJeE5HHeByIL9YJP4J24gccUy
 MjGgvsbvSNrdSbswuYpGwyMuOfYirpLpyJOxG6p9zIptJnwjXgDWRZQjr
 /5u6epHN0NhZq32NeUBKo6Tvh06GcXp0LFWXQ9ebQ8IANc7Ijj/UknnpB
 ZvENF3Q3JwHyUNI+XmOPbH86q711ryHe1G9LLu9ptfu6OWaVXXvhssNZn
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ACJKnsZO
Subject: [Intel-wired-lan] [iwl-next v3 0/4] ixgbe: support Malicious Driver
 Detection (MDD)
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

Hi,

This patchset is adding support for MDD (malicious driver detection) for
ixgbe driver. It can catch the error on VF side and reset malicious VF.

An MDD event can be triggered for example by sending from VF a TSO packet
with segment number set to 0.

Add checking for Tx hang in case of MDD is unhandled. It will prevent VF
from staying in Tx hang state.

v2 --> v3: [2]
 * improve patch 1 commit message based on Paul comment

v1 --> v2: [1]
(All from Simon review, thanks)
 * change wqbr variable type in patch 1 to fix -Warray-bounds build
 * fix indend to be done by space to follow existing style (patch 3)
 * move e_warn() to be in one line because it fit (patch 3)

[2] https://lore.kernel.org/netdev/20250212075724.3352715-1-michal.swiatkowski@linux.intel.com/
[1] https://lore.kernel.org/netdev/20250207104343.2791001-1-michal.swiatkowski@linux.intel.com/

Don Skidmore (1):
  ixgbe: check for MDD events

Paul Greenwalt (1):
  ixgbe: add MDD support

Radoslaw Tyl (1):
  ixgbe: turn off MDD while modifying SRRCTL

Slawomir Mrozowicz (1):
  ixgbe: add Tx hang detection unhandled MDD

 drivers/net/ethernet/intel/ixgbe/ixgbe.h      |   5 +
 .../net/ethernet/intel/ixgbe/ixgbe_sriov.h    |   1 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |  42 +++-
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.h |   5 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c |   4 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c  |   3 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 223 ++++++++++++++++--
 .../net/ethernet/intel/ixgbe/ixgbe_sriov.c    |  50 ++++
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c | 120 ++++++++++
 9 files changed, 430 insertions(+), 23 deletions(-)

-- 
2.42.0

