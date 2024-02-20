Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D44285B9AB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Feb 2024 11:55:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5AFA24148E;
	Tue, 20 Feb 2024 10:55:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SN22DyUyTxZR; Tue, 20 Feb 2024 10:55:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7AA4241192
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708426544;
	bh=9bvIwoKgd+YMN9aJpsdiwkl1aJqihy6VhDsQR6HMyo4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=7xFn6hl4/6Ik6cbEmuNMs6g577UObsvOAIOOE78b+cp6J/iYpAs3St+MPGrJeuVT9
	 Xty5+RRAb3rtwvwUiJdntMDD6IG13QflWrCmad1xiUX/SHolWCJV7sVQgDPjQX7R+G
	 h3YL9bA19aryiUYAN9Sczxwww7GUbLipqZx36YaYzDeUT2DbkKLOIjI2Q7QwOiWaNT
	 XlLlnfUXgKO0aKUIKdykM9IHOQjKgf0X7qCQemXkNHmfWm0I3vfGiTiYcU3spHs/ct
	 rnodamw+jleAnZdrqCokFZaib+6U8ojSWNOW8OCly8PxUKEL+wBXaHkvBZRwSJwyH8
	 OEi+uQqhjNvdQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7AA4241192;
	Tue, 20 Feb 2024 10:55:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9B21A1BF279
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 10:55:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 93A7941583
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 10:55:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x_k4kpg2FmCr for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Feb 2024 10:55:42 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E1A104155D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E1A104155D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E1A104155D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 10:55:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10989"; a="13934158"
X-IronPort-AV: E=Sophos;i="6.06,172,1705392000"; d="scan'208";a="13934158"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 02:55:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,172,1705392000"; 
   d="scan'208";a="4734485"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by fmviesa010.fm.intel.com with ESMTP; 20 Feb 2024 02:55:39 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 20 Feb 2024 11:59:48 +0100
Message-ID: <20240220105950.6814-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708426542; x=1739962542;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=FOQu5qKbXJVFuxXYfcyWb7ERDO73+C1UvTc0Xxrvbj8=;
 b=VRjPQyfAqyYiocNRnDf5FQE7+BCTUYFAfXLGc3mguk294L9/WRkOAeCS
 DR2C8tU5+qCUyGn+znfyviRgpJjptavEo7lwbyG2qtI6WfwW9K1wJrcw6
 i81YZjKisAqyFY5ps7hfNZSZOuRxOGSZe6sOUsTlq/dpTNWsTiF6cUQim
 GOm2w9iYEYArFiGZdrRqMW2FRdW+J+jvIUdeQSLxUtZ2fKb0ysGE/HcqI
 vKFPTsurEAKiBjfiY7ppyLCcRgfHaK6o52A0BxvBR4o6ZwkjFpUlacOra
 cqJ5NooBalSBlQ48qAHcnAqTaIt/sqxdmXkJSjHQNVpcv/xdVedRf4rJ9
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VRjPQyfA
Subject: [Intel-wired-lan] [iwl-next v1 0/2] ice: extend tc flower offload
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
Cc: netdev@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 wojciech.drewek@intel.com, marcin.szycik@intel.com,
 sridhar.samudrala@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Extend hardware support for tc flower to match ip_proto field (patch 2)
and source VSI metadata when the packets are sent from VF (patch 1).

Michal Swiatkowski (2):
  ice: tc: check src_vsi in case of traffic from VF
  ice: tc: allow ip_proto matching

 drivers/net/ethernet/intel/ice/ice_tc_lib.c | 25 +++++++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_tc_lib.h |  1 +
 2 files changed, 24 insertions(+), 2 deletions(-)

-- 
2.42.0

