Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D5F84CECE
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Feb 2024 17:22:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C029583C10;
	Wed,  7 Feb 2024 16:22:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id USvQb4yX-p_Q; Wed,  7 Feb 2024 16:22:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 040CA83BDC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707322973;
	bh=yw7lDn+8iW/MOxeffN3vmkg/Ca+0cKRdLCk/DsktPW8=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Vbqxew3gHXhNwXLHvMae+hgRQq7Ow9VZrGR2JkvNCbW/cExRQWVjihZ+Qz3aA3Yxc
	 EayXGtfM9punK7pbRgh1zxZaxhTtceo+yMoupb4HfkJ4Qehga0cD/7/JC+GWK4waYU
	 3ySFYohyhhcFLWKLo5p3l1cSfArEhhVT/CjlSwar2e/lib4ARPvfsAM6AvtWzbmZ5q
	 oYqzohSuIFp3o2NGzPT1id/Aicv64xvBB8PtJ0vOSMZiqqC7XkBUexSJ6dnvG2Re1E
	 MwMsmRqeiqEYBnkDA4s6f2ZvFoAtP/GS1jqWDv0HaSlnNDsfm2dqdEWbUSAalvVXFX
	 um00y99V4ICfw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 040CA83BDC;
	Wed,  7 Feb 2024 16:22:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 98A8D1BF3DF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 16:22:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8DE95403E7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 16:22:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 52U4-0Icf0u6 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Feb 2024 16:22:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 62CFB400CB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 62CFB400CB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 62CFB400CB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 16:22:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10977"; a="12109066"
X-IronPort-AV: E=Sophos;i="6.05,251,1701158400"; d="scan'208";a="12109066"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2024 08:22:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,251,1701158400"; d="scan'208";a="32183203"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by orviesa002.jf.intel.com with ESMTP; 07 Feb 2024 08:22:46 -0800
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  7 Feb 2024 17:19:20 +0100
Message-Id: <20240207161923.710014-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707322969; x=1738858969;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=aQ1b2CLhzOW29z9KuXP20eojFRrCjJNS04mGts5OQcg=;
 b=TWdaSCnJHd3P4trqi9o3mH/Rk1DbfhY1n4qdls+R1+FVYy0uyjjcFPWM
 rrELMbCydocnxvSOTgRfJRRZAc3p20wTfa0yNcftlgBXekGSejZiKdvAi
 Y2ySDdv1dUGduNoh7C2g9BocQo6mhkg3k8ipK937PSByzho9onsIcNRME
 44lGeF/zqABmnJUA0yTVCfy28tUJiWIEqKPyD5V4v2qX9Z/Rmf2uNT0Ce
 Y6NFyAzXeM4xxByJ38ZWtDgky0sTjMYWPBfDkEXYI1B1pqx7ykcVmXjHP
 I+v2scQluKcPNuSolsBe1IHzYwJ7v1B8Pknne1qFNvHX16oaMqL7n5IuT
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TWdaSCnJ
Subject: [Intel-wired-lan] [PATCH iwl-net 0/3] ice: fix dpll data access on
 PF reset
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
Cc: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Do not allow to acquire data or alter configuration of dpll and pins if PF
reset is in progress.

Arkadiusz Kubalewski (3):
  ice: fix dpll and dpll_pin data access on PF reset
  ice: fix dpll periodic work data updates on PF reset
  ice: fix pin phase adjust updates on PF reset

 drivers/net/ethernet/intel/ice/ice_dpll.c | 46 ++++++++++++++++++++++-
 1 file changed, 45 insertions(+), 1 deletion(-)


base-commit: cef6969786db632a7948eed6a43ef9a71414ca5b
-- 
2.38.1

