Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D50A485F84A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Feb 2024 13:35:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D852841B66;
	Thu, 22 Feb 2024 12:35:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ojtU9SRUOLtC; Thu, 22 Feb 2024 12:35:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F068941989
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708605340;
	bh=zGeJKryQeJ/+hqw3HQYji/76WDcoZ9bYRxFihYJ94Dk=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Sdg/IN4Ffb8bqrauDKNrljMLvyk9LohCfDc3acwcwdfnkqcJlz2aK0BKdSxeAR0Xi
	 ufJr11yjz99csszDvn0DLiJnqJJkmHXfxbzJgmuO383cd9tPbeOZcwqiZ5rvbR32yN
	 /dw0pFHklICvU6m1WGB3HZHgAMBTMm5DlAktzTkiK3+G2PS+fbtgc/h/zIbfSG8qJE
	 4PR1PeoVi13nRJ6vXpMVpyw/LKEcfbN3QAEA0otUI9ubQGwMSIrwRc4BXz8lChRJpV
	 IBm0TCxSqIQNkzAeGYgLVvhHiUYBo2T1OOMUWlujSwQ6u7P7xD+QHvnLlFLtklxvzt
	 HgUwaxsSZNKpA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F068941989;
	Thu, 22 Feb 2024 12:35:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A3ED81BF3E5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 12:35:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9D02760870
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 12:35:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3tKYDK4AjpfH for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Feb 2024 12:35:37 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 893C16060F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 893C16060F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 893C16060F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 12:35:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="28267849"
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; d="scan'208";a="28267849"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 04:35:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; d="scan'208";a="10216247"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by orviesa005.jf.intel.com with ESMTP; 22 Feb 2024 04:35:35 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 22 Feb 2024 13:39:54 +0100
Message-ID: <20240222123956.2393-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708605338; x=1740141338;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ca+MGruxEMjqLGI3yzKt+M6So4IKI0th6ySBztaxHTk=;
 b=EbNVcB+KE35B2I78a6qoP1RPRtx1oJkQfFez6fowax5HIdhgP+BM3Hz6
 txyI8uMFxfFIwO8NEo3NpD+REbixWoQzJAwJID02AWun8UB/AYuuBURXv
 CwzfFVWsGV+Qe6ICyj4aNh7J4q+40QE+u4DxEohPZnfCeQL5XT76i2PwK
 i4jh5k+Ngoc+WxQjSJNLZb4Bje062f4Y0WSdXKpJjpOSbxXrON8mIvWbC
 nQ6HTBOcPqjnPVyziTjmWT0J2Qpq0/y6WoBO/N0+mB8WEUgxTl3s3diJ7
 yUaQSKCNYdXBGYOeiS3l4ecKfCJqdWrn/XNpPMqX4YQE57MtdJy2ZVfoI
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EbNVcB+K
Subject: [Intel-wired-lan] [iwl-next v2 0/2] ice: extend tc flower offload
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
Cc: pmenzel@molgen.mpg.de, wojciech.drewek@intel.com, marcin.szycik@intel.com,
 netdev@vger.kernel.org, sridhar.samudrala@intel.com,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Extend hardware support for tc flower to match ip_proto field (patch 2)
and source VSI metadata when the packets are sent from VF (patch 1).

v1 --> v2: [1]
 * fix commit message, add more examples

 [1] https://lore.kernel.org/netdev/20240220105950.6814-1-michal.swiatkowski@linux.intel.com/

Michal Swiatkowski (2):
  ice: tc: check src_vsi in case of traffic from VF
  ice: tc: allow ip_proto matching

 drivers/net/ethernet/intel/ice/ice_tc_lib.c | 25 +++++++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_tc_lib.h |  1 +
 2 files changed, 24 insertions(+), 2 deletions(-)

-- 
2.42.0

