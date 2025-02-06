Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E184FA2A35E
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Feb 2025 09:40:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8BC6861124;
	Thu,  6 Feb 2025 08:40:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pAHajVhubcAm; Thu,  6 Feb 2025 08:40:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D137A6116B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738831229;
	bh=wFrIeR2erwUQm2Sr1glFe6YJ3lDwCEJQG/d3lkD+iko=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=EBWnH3l0AMuDqXAtoCf9j2rB7HIaCcxvZaLBScBep9yZB9vss+/i8xdkZl2rlNfFZ
	 CNdLPfoOvOsUUFO7Z4AmNSkFsZfxES5nrZwgCAov79CRVSomkui9XJmHz5zcgyffPw
	 r/kTVEtZf3SrnHTlKsx8nY1nAmAxBK+w/7fEqt4hJ8QE6S6OxEY6mjc9dNlUBxrxuj
	 EH6dDHwOc6d1j2wE2UkY6VoRy8Y29Ir9N3mYUYNwggZW2paRoXBz07N+igcfshO8ZG
	 xwDkOZhmgLFeDwxc9NUg9IOJAHb93zcSwdIKFbx+PoQ6RiSC5JyYqQNW0lW5M0GXyy
	 S0yNrn0LunfBQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D137A6116B;
	Thu,  6 Feb 2025 08:40:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 37E09CF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 08:40:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1CDF6813BD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 08:40:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nwx_zMV3p7L8 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Feb 2025 08:40:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 70D2F81393
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 70D2F81393
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 70D2F81393
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 08:40:26 +0000 (UTC)
X-CSE-ConnectionGUID: k63+P8h8Q6mUcV6KtDzFvw==
X-CSE-MsgGUID: FUM6tY5tSz6jm/vWhGOc2w==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="49667819"
X-IronPort-AV: E=Sophos;i="6.13,264,1732608000"; d="scan'208";a="49667819"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2025 00:40:26 -0800
X-CSE-ConnectionGUID: iOFVivvQRuOli/LD+8maIQ==
X-CSE-MsgGUID: sL4QVyujShCKT/m8CYcQ8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,264,1732608000"; d="scan'208";a="110979363"
Received: from gklab-003-001.igk.intel.com ([10.211.3.1])
 by fmviesa006.fm.intel.com with ESMTP; 06 Feb 2025 00:40:24 -0800
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  6 Feb 2025 09:36:52 +0100
Message-Id: <20250206083655.3005151-1-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738831226; x=1770367226;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=di+hvTmQjctnKvY30xevDPGzRJy0W/wSEhqMf8pXGV8=;
 b=PyGuF2S5rZ+Qhw+EmCfpzOdah/qOFrzSe6xKzD8Q7giSjDaTUFvdFe6T
 4/um0XPrKHtF2IL0wZpEeuTgdPy4b5nTAeMN8zjf/uChNlvHrJZgpSQ9b
 moIRSYUStMU3lHBXcC59YImb8Jt1z/ZUhUlj1NjuXUEdMQV8v+h0zdgBb
 J/6xGjTbIf/GPdLyqNBYrKYhpu6tPMG311sNjW/hz+OLdQlftGrQDHGOg
 2Y4zC7H6f4WBZwmcr/5iyWNytTiDVNbcN+LRt4FlHVugMlf7Vyz3B23xG
 l7yNZ3kAqJzuISKe4RQgtW032MtkN/NvlXAImu9XEPgmt1u7oQjkex9bG
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PyGuF2S5
Subject: [Intel-wired-lan] [PATCH iwl-next v1 0/3] E825C PTP cleanup
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

This patch series simplifies PTP code related to E825C products by
simplifying PHY register info definition.
Cleanup the code by removing unused register definitions.
Also, add sync delay compensation between PHC and PHY for E825C.

Karol Kolacinski (3):
  ice: Add sync delay for E825C
  ice: Refactor E825C PHY registers info struct
  ice: E825C PHY register cleanup

 .../net/ethernet/intel/ice/ice_ptp_consts.h   | 75 ++++---------------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 20 ++---
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   | 36 ++++-----
 3 files changed, 43 insertions(+), 88 deletions(-)


base-commit: 70bdf16570c2c207a562e996833ff196a4bd7029
-- 
2.39.3

