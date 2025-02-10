Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E1DCA2EF71
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Feb 2025 15:14:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E731760B39;
	Mon, 10 Feb 2025 14:14:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8cCU0y9CF9EL; Mon, 10 Feb 2025 14:14:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4F46260B4B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739196896;
	bh=/ppPEYE5BKnP4fHBiFZHX16yEgsT2e5LzsSd1bfq3Jw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=kXewhrwX9EJH1v0VlspzD6NoMF/Os1AeNk0qnVtF0u5Q72E/warpLbjJ7zhBkjgXQ
	 AuHBViA7IJNIdry2XwKi5/FmWWEfUQ8X11aOq53zKImbA5CfasZjtqVrMExROf4S3X
	 7kgn1XsmwdRUSBVIo7zATLSIN2br9Wj4vvoFiXOQtdzKQS2Iagx4civVRmLRq0FI/h
	 bA7xvIyjIWLCdhBb0ganHmclryssSORe1GStKL5syEHcpNTSdLfJZ6S2bPAfhPu+Gh
	 Zz3GLnJ1VER+LkFs4NT6s+wIBCwH1VAfroUVfS+i2Bbe5ry0nVQgtyqrNpSXlTuAYw
	 YN+lUwZehhDsg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4F46260B4B;
	Mon, 10 Feb 2025 14:14:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 37F30199
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 14:14:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1890C40B3F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 14:14:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oIe2m1rPosvB for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Feb 2025 14:14:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5305F40B37
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5305F40B37
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5305F40B37
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 14:14:54 +0000 (UTC)
X-CSE-ConnectionGUID: m4sZFpIlRLWuQ5xRdzxlsw==
X-CSE-MsgGUID: 6nfrg6R0Tlqi4ldO4m2RsQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="39927448"
X-IronPort-AV: E=Sophos;i="6.13,274,1732608000"; d="scan'208";a="39927448"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 06:14:54 -0800
X-CSE-ConnectionGUID: Xu8AkrUUSfK/1qUGHnqHQw==
X-CSE-MsgGUID: k01/QOPeSNKBZq0fE126fw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="117420999"
Received: from gklab-003-001.igk.intel.com ([10.211.3.1])
 by orviesa005.jf.intel.com with ESMTP; 10 Feb 2025 06:14:52 -0800
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 10 Feb 2025 15:11:09 +0100
Message-Id: <20250210141112.3445723-1-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739196894; x=1770732894;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=eaVXXxlaM72F4eilC1sCE6YtTDVewjhTEDKE45VE+AU=;
 b=nbOd7LuFauLImTRESNPkszNJOmlmNshDc5d5W21KPpOjcnyHl2hU4hXu
 Kr73xwliY09LxjazZE8pprEB5K/t+fZsgJHV8rhhaYMHeZemc2WdwcHXp
 5yVe4T6MxCwjFppMMgFHvlKbn2nK8ScQcSsXZUuLJjqbIKeHz/MBGLurX
 mMkRTIMZw59IS/2eaSlWWXhvbWYpuxmC0UVJuhA1T0DxcJ9JGdU3/MeAQ
 M9W33SYKfJaVtZ7y7YkrD+QcjxC4/Tf24P3hboADHXwD28WQ0a90DWH8m
 InIcoKojukjTuXUWzsZM6rmjQ7HJ4W9wF+XVyQya1oiSVBf+QCeShTfXX
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nbOd7LuF
Subject: [Intel-wired-lan] [PATCH iwl-next v2 0/3] E825C PTP cleanup
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com, horms@kernel.org,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patch series simplifies PTP code related to E825C products by
simplifying PHY register info definition.
Cleanup the code by removing unused register definitions.

v1->v2:
* remove sync delay adding from the series (patch 1/3). To be submitted as
  separate patch.
* fix kdoc (patch 2/3) in ice_phy_reg_info_eth56g struct

Karol Kolacinski (3):
  ice: rename ice_ptp_init_phc_eth56g function
  ice: Refactor E825C PHY registers info struct
  ice: E825C PHY register cleanup

 .../net/ethernet/intel/ice/ice_ptp_consts.h   | 75 ++++---------------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 19 +++--
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   | 35 ++++-----
 3 files changed, 40 insertions(+), 89 deletions(-)


base-commit: 820e145d30facd90981914efefddb82c9786c963
-- 
2.39.3

