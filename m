Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C655730260
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jun 2023 16:53:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2C03361361;
	Wed, 14 Jun 2023 14:53:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2C03361361
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686754401;
	bh=TSrjxFW+XnsKyInhiAIs9NV26Q+nn4HmpA7Oe5PJbd4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=yFdZ9VZOLQrOoxv13WaM6RUd8GQmGANLSuwyIsScIK5ZgjkaTJZlYRKma6Nxkc8kE
	 yj2tE2C5f1WZ1yeFPw51dIg8/NzNHgat2P3NadrhcxYVzb0fWhYSvst9S4oY+EJn3f
	 Zli7ekpGYEERdfA2Evf2PIyCazCVmwv6B2K1WG6hkNJWkjYDs/njkCupLBs47h7sGV
	 nJsz4viLOpX8vysFJuE4IjWRabaGcWmv2nswmLCoz0YOYsjhqINi1C5RGY7ZzXLzZe
	 hey4jtigRVWcm+8OJ1+GX0U3QNxm/m2dNq9OnoOyJl9mv9LDTv309zJT5UlRTKGGIS
	 21YfBVyzUYMIw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eUDnDarz6jMO; Wed, 14 Jun 2023 14:53:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1434761341;
	Wed, 14 Jun 2023 14:53:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1434761341
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 757861BF2B7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 14:53:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2E367401DB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 14:53:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2E367401DB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e9yDYfnyy0vt for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jun 2023 14:53:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AD05D41E39
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AD05D41E39
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 14:53:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="387040538"
X-IronPort-AV: E=Sophos;i="6.00,242,1681196400"; d="scan'208";a="387040538"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2023 07:53:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="782114841"
X-IronPort-AV: E=Sophos;i="6.00,242,1681196400"; d="scan'208";a="782114841"
Received: from pgardocx-mobl1.igk.intel.com ([10.237.95.41])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2023 07:53:08 -0700
From: Piotr Gardocki <piotrx.gardocki@intel.com>
To: netdev@vger.kernel.org
Date: Wed, 14 Jun 2023 16:52:59 +0200
Message-Id: <20230614145302.902301-1-piotrx.gardocki@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686754391; x=1718290391;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fj9DXsvWrj81d+2jTqsvEn4kEKCA81tyuhprouAkq7Y=;
 b=OIE5gT5knseuJeyqPk+oaJiTCG5FGNh2H8g4mHFNtTQ2/39R2rBLd5Vv
 e3m3dby5kSrVBqNw2ceS2VJ5NEFDgG9URkwfIxdXyzVzDBP26XS78cJ3v
 JzU6hYwHC5NPo2jh/E2Uyt27G80BjCyTp4pf8P7VmSAyRV4DI6dgr8LEz
 p3vJFdcv+0kQRhhlNbQvpBftrLgwXs4gT+QlCESYvpwXwEyVlJVWG4Ghs
 gyl0COwWGdcyGi64aEuRYmelrcOoCaiCRw75WvYsjnaKka/Tv+1wQeX6m
 6a9CV6cW/sBbG8mPAZaCWTFyIC/Ovl+qz0kU3vzW3FCy6ln00PDUKyWsS
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OIE5gT5k
Subject: [Intel-wired-lan] [PATCH net-next v3 0/3] optimize procedure of
 changing MAC address on interface
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
Cc: pmenzel@molgen.mpg.de, przemyslaw.kitszel@intel.com,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 simon.horman@corigine.com, kuba@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The first patch adds an if statement in core to skip early when
the MAC address is not being changes.
The remaining patches remove such checks from Intel drivers
as they're redundant at this point.

v3: removed "This patch ..." from first patch to simplify sentence.
v2: modified check in core to support addresses of any length,
removed redundant checks in i40e and ice

Piotr Gardocki (3):
  net: add check for current MAC address in dev_set_mac_address
  i40e: remove unnecessary check for old MAC == new MAC
  ice: remove unnecessary check for old MAC == new MAC

 drivers/net/ethernet/intel/i40e/i40e_main.c | 6 ------
 drivers/net/ethernet/intel/ice/ice_main.c   | 5 -----
 net/core/dev.c                              | 2 ++
 3 files changed, 2 insertions(+), 11 deletions(-)

-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
