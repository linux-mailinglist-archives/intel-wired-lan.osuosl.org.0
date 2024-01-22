Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A9AC836FCD
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jan 2024 19:24:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 62E77419DF;
	Mon, 22 Jan 2024 18:24:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 62E77419DF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705947884;
	bh=13CVSa85dwq2Y+q+rycXDEDUUNLTdul+2Z/yGzJSwqE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=7NgXZwQ5zNj0VYMH24IFC95WotpXNeCkWge6mVoT7rtu58LV6LxcKedIJmxDb9lRt
	 +FhIDM57BxzzBkHf0EmKz4gcMrmeI8zEqDgX95bQjj1DvVVH5HujkMZ9iHwid3lW1C
	 8K0pOFdZ5DfocvZpjdLJE/mXJLHmSxYNIN/sFl9ceL85ejaNVALqmHxoevcxzV9sF8
	 XcysKpBaM3ydzAWD3YCxEc1Dcq9N2aKftijo9L7mULV0YMd1Yzb2A8vY0l3VKeM/qB
	 7BVpyx+zJDaO//86Xwn+pAP7q+DNZtRALOqk3Pv8VrTLbZHFBEAGdkP/OSbAc/sBBo
	 AVLLFol24KIHA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xY95nSOK9ZFA; Mon, 22 Jan 2024 18:24:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5CC7440359;
	Mon, 22 Jan 2024 18:24:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5CC7440359
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1CEDB1BF3CE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jan 2024 18:24:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 01C6A404F4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jan 2024 18:24:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 01C6A404F4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D_W5GOT_k1lA for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jan 2024 18:24:37 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2BB1E40491
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jan 2024 18:24:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2BB1E40491
X-IronPort-AV: E=McAfee;i="6600,9927,10961"; a="22766525"
X-IronPort-AV: E=Sophos;i="6.05,211,1701158400"; d="scan'208";a="22766525"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2024 10:24:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10961"; a="819804060"
X-IronPort-AV: E=Sophos;i="6.05,211,1701158400"; d="scan'208";a="819804060"
Received: from anguy11-upstream.jf.intel.com ([10.166.9.133])
 by orsmga001.jf.intel.com with ESMTP; 22 Jan 2024 10:24:34 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 22 Jan 2024 10:24:17 -0800
Message-ID: <20240122182419.889727-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705947877; x=1737483877;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BN2puuDkxpWwMAj4amtMey5YY1b0Tb3TkcyzNi6w7IQ=;
 b=dqPauMkZcEKqYgfUQnNOC/F6yUkzAJUsEN8yfXqrkw4U+2JtbVswzRNj
 tk+iitR1bPHSNyh6/yHSn8d4vv1d3XAOY4stZJEuh6TqLaS8vL0AHDTJb
 tS861BvyJSy4b1ZEgYCv27E7zbYJzoJWkLcmciqhjDUpj7pC0LinndOWH
 eLNSJ4vGzA52Rv+Qne95r2yFl3iJLshapUGSDgW6ILmKz54NW84oITq+y
 oCLjBW83s5KnLZJw8SVuKzsc/DEBWKvizVSKvD4MAkPUAxKZ3T6wTbI8A
 J8LEp7m1Jo14AGdLFDPoii30FHoRQ5yHXx8jkmjjLdCqYWYIJsfne9aVX
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dqPauMkZ
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: remove duplicate comment
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
Cc: netdev@vger.kernel.org, Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>

Remove a comment that was not correct; this structure has nothing
to do with FW alignment.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_debugfs.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_debugfs.c b/drivers/net/ethernet/intel/ice/ice_debugfs.c
index c2bfba6b9ead..85aa31dd86b1 100644
--- a/drivers/net/ethernet/intel/ice/ice_debugfs.c
+++ b/drivers/net/ethernet/intel/ice/ice_debugfs.c
@@ -64,9 +64,6 @@ static const char * const ice_fwlog_level_string[] = {
 	"verbose",
 };
 
-/* the order in this array is important. it matches the ordering of the
- * values in the FW so the index is the same value as in ice_fwlog_level
- */
 static const char * const ice_fwlog_log_size[] = {
 	"128K",
 	"256K",
-- 
2.41.0

