Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C9EE9B3C32
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Oct 2024 21:48:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DDDB76083E;
	Mon, 28 Oct 2024 20:48:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cI-GfSIv72k9; Mon, 28 Oct 2024 20:48:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 16EEB607FA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730148512;
	bh=uaRkXSu9c5nnZUe2jwcpvkVjDB62jZNFaqANxc6wdEw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Vf7yXQx/yUHRf1q0J3cpTor+7az7oIJenzLlKO48YZAmo2tH1/1FNxakgZm9twpy4
	 owE1S/rGeu8VC7zbjl+/+bEpL6fsSWWOqwHXfyDlBbxRg+RikEuj0PH5aDQpc7Lyny
	 //PDHlyrRqDo3H4r0yanNW7I5/B6XED0v1RJHT5hNSHSo3O4AcaBTlL4A7pV+DzcrY
	 1kw2BdiQoSaw00w6evU6o82kTAfaamDHnxxgEopElVeoTyioxSgmlSyeUGfYgpI6+7
	 qXcN1z7x2GEP/U3RSmkWEzb8RLm8idTRSauqztmZ2oq4BDeBbNBC8Yl/22fj7/f306
	 HL1zWhCk9tTPw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 16EEB607FA;
	Mon, 28 Oct 2024 20:48:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id A32DF112A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 20:48:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9159D60722
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 20:48:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id skJ5Uuy9jU0C for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Oct 2024 20:48:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D3DD9607C7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D3DD9607C7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D3DD9607C7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 20:48:28 +0000 (UTC)
X-CSE-ConnectionGUID: 2nwVdICRT7ScJ01IXusaWg==
X-CSE-MsgGUID: C+4d5mXnQDyo+GXyEvweMw==
X-IronPort-AV: E=McAfee;i="6700,10204,11239"; a="33685464"
X-IronPort-AV: E=Sophos;i="6.11,240,1725346800"; d="scan'208";a="33685464"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 13:48:28 -0700
X-CSE-ConnectionGUID: GS9LcOXoQBWErAqTgD1Sxw==
X-CSE-MsgGUID: plqjDdVbRYuw60lBlggk0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,240,1725346800"; d="scan'208";a="86529740"
Received: from unknown (HELO gklab-003-001.igk.intel.com) ([10.211.3.1])
 by orviesa005.jf.intel.com with ESMTP; 28 Oct 2024 13:48:26 -0700
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 28 Oct 2024 21:45:39 +0100
Message-Id: <20241028204543.606371-1-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730148509; x=1761684509;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=SvRvHWEPkL1s1/bhNIhAxLbUg0uF/huboOQbYt9COnI=;
 b=TAbBKJs1gPNUVxjUF/5iB9Bk9bQuypSOJug6NmvFuTiH/fnh9x9/NqM0
 q6MilUMAV7uj0+nuhLD75PSYXnymhQPC8D2tpVMaofIhkGfhVLH4UGjdh
 B8F4DauQoPuLVAF15LWekjLI8R+0NM6iuGaWDuW6YYK7kuvK7iQM/003Y
 o555O5Bn9QpOd0lMQ9cXb1Ir5dltpgP1wVU7MxYVIujfFme9tS0zAcDhQ
 RenhijD6UhXYpD8YfSIwMM2AVT8NQ26oe6tOUbac64T1mWXiws4EgjHH0
 vhLh8sGu0gjio4RRtczGhxhJqkHmqALQlFt0Tf13NAMzan5yCSnNfYEsx
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TAbBKJs1
Subject: [Intel-wired-lan] [PATCH v3 iwl-net 0/4] Fix E825 initialization
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

E825 products have incorrect initialization procedure, which may lead to
initialization failures and register values.

Fix E825 products initialization by adding correct sync delay, checking
the PHY revision only for current PHY and adding proper destination
device when reading port/quad.

In addition, E825 uses PF ID for indexing per PF registers and as
a primary PHY lane number, which is incorrect.

Karol Kolacinski (4):
  ice: Fix E825 initialization
  ice: Fix quad registers read on E825
  ice: Fix ETH56G FC-FEC Rx offset value
  ice: Add correct PHY lane assignment

 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   1 +
 drivers/net/ethernet/intel/ice/ice_common.c   |  47 ++-
 drivers/net/ethernet/intel/ice/ice_common.h   |   1 +
 drivers/net/ethernet/intel/ice/ice_main.c     |   6 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c      |  23 +-
 drivers/net/ethernet/intel/ice/ice_ptp.h      |   4 +-
 .../net/ethernet/intel/ice/ice_ptp_consts.h   |  77 +----
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 281 ++++++++++--------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  37 ++-
 drivers/net/ethernet/intel/ice/ice_sbq_cmd.h  |   7 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   2 -
 11 files changed, 247 insertions(+), 239 deletions(-)

V2 -> V3: Removed net-next hunks from "ice: Fix E825 initialization",
          replaced lower/upper_32_bits calls with lower/upper_16_bits
          in "ice: Fix quad registers read on E825",
          improved ice_get_phy_lane_number function in "ice: Add correct
          PHY lane assignment"
V1 -> V2: Removed net-next hunks from "ice: Fix E825 initialization",
          whole "ice: Remove unnecessary offset calculation for PF
          scoped registers" patch and fixed kdoc in "ice: Fix quad
          registers read on E825"

base-commit: 19acd6818aa7404d96cd5d0e4373d4ebe71448c2
-- 
2.39.3

