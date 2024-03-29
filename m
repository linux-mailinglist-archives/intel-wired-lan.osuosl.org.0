Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 218F8891791
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Mar 2024 12:23:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9CB2C822BD;
	Fri, 29 Mar 2024 11:23:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AaoOGh0JznQw; Fri, 29 Mar 2024 11:23:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0757582320
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711711429;
	bh=9bQlO5+IPaRZlR9M4h2no5v0EBwGi1jhiipvzzIjyhk=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=ruiXRl5y8TXpYTrU5A2nauflLAUrAerpJWZMYWWlUwEW4g2lQwgsJsq8XtWYU01lK
	 baZGPfdAsuTFa9SSnY7ULijdayLbUVs0YwXHmWhNeaSh5duTPfXGzU+l4Tet/aCDbh
	 uSquZ081zdDkIxLmu7G9ABSj05lybCoWCoxBi4uSdM+q/zUsGYc1cmD9zeClb2oksV
	 oeLa2jTMYSFld24NT9mE/7Fn6dU3AqkpUANu+zz3KlF/JKWSKkzB0/xUDVjGTjqi0k
	 C7CxvJ/xrBqB3SUexNZxipaPlzpKxmiCKFU59RFGlzZLzyMwLs2VPkNkOKVJ2GyE9w
	 livWdw9GOCIKQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0757582320;
	Fri, 29 Mar 2024 11:23:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9F7211BF298
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 11:23:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 97CB160E6B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 11:23:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I1x4bc2ktj6E for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Mar 2024 11:23:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B52126067C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B52126067C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B52126067C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 11:23:45 +0000 (UTC)
X-CSE-ConnectionGUID: IxDM4qsgRb+yfICjMy3jMA==
X-CSE-MsgGUID: yAVoOwcaR/yqw8XeEXDJIw==
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="6755171"
X-IronPort-AV: E=Sophos;i="6.07,164,1708416000"; 
   d="scan'208";a="6755171"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2024 04:23:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,164,1708416000"; d="scan'208";a="16836687"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by fmviesa010.fm.intel.com with ESMTP; 29 Mar 2024 04:23:43 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 29 Mar 2024 12:21:44 +0100
Message-ID: <20240329112339.29642-14-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711711425; x=1743247425;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Zyiddza1bIuKIDl1i6Jr4CeTZ0fTMIZ3uw0n4da+wNY=;
 b=VUf8Q68OQi9HPLM7TKRwnUzO7DsMcq734+PkQDeHMH0X/OuLg+LxVYR7
 ijxUoqa8CRmAEeaY4IIlmKHhwtYXTjalkQKnBtwOj0h7YwGfHKi9Xu/Fm
 kBz+vJOB7/ZZbGOpV1qSN1lTlUZqFFMQY6jIKwvc5s3lw9yh1hgOjsySp
 dQ5OZAYReVsE/6ezuaKkjfOqTRZ+eKOX1/vZEWzCXPuRAFL3+qiq/Unab
 0EAYszkWa7Y2alN0zfTrNEFATbMcRTgoSJR0jHk9SCV4NkzKlNpCbKW4X
 pJoE0pcqW0eS6j4+RDqG3kMUrKy2QGR0AEJdErTkce1vxl2F3Wgp8gGZ2
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VUf8Q68O
Subject: [Intel-wired-lan] [PATCH v3 iwl-next 00/12] Introduce ETH56G PHY
 model for E825C products
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
Cc: netdev@vger.kernel.org, Karol Kolacinski <karol.kolacinski@intel.com>,
 anthony.l.nguyen@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

E825C products have a different PHY model than E822, E823 and E810 products.
This PHY is ETH56G and its support is necessary to have functional PTP stack
for E825C products.

Grzegorz Nitka (2):
  ice: Add NAC Topology device capability parser
  ice: Adjust PTP init for 2x50G E825C devices

Jacob Keller (2):
  ice: Introduce helper to get tmr_cmd_reg values
  ice: Introduce ice_get_base_incval() helper

Karol Kolacinski (4):
  ice: Introduce ice_ptp_hw struct
  ice: Add PHY OFFSET_READY register clearing
  ice: Change CGU regs struct to anonymous
  ice: Support 2XNAC configuration using auxbus

Michal Michalik (1):
  ice: Add support for E825-C TS PLL handling

Sergey Temerkhanov (3):
  ice: Implement Tx interrupt enablement functions
  ice: Move CGU block
  ice: Introduce ETH56G PHY model for E825C products

 drivers/net/ethernet/intel/ice/ice.h          |   23 +-
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |    1 +
 drivers/net/ethernet/intel/ice/ice_cgu_regs.h |   77 +-
 drivers/net/ethernet/intel/ice/ice_common.c   |   58 +-
 drivers/net/ethernet/intel/ice/ice_common.h   |    2 +
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |    4 +
 drivers/net/ethernet/intel/ice/ice_ptp.c      |  263 +-
 drivers/net/ethernet/intel/ice/ice_ptp.h      |    1 +
 .../net/ethernet/intel/ice/ice_ptp_consts.h   |  402 ++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 3659 +++++++++++++----
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  286 +-
 drivers/net/ethernet/intel/ice/ice_sbq_cmd.h  |   10 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   60 +-
 13 files changed, 3912 insertions(+), 934 deletions(-)


base-commit: 0f3e0f83f872052bd96011f32c8b138337cf3d1a
-- 
2.43.0

