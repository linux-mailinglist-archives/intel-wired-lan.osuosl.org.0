Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 406ADB2479F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Aug 2025 12:46:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 14E158237B;
	Wed, 13 Aug 2025 10:46:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A6O788N4BSKf; Wed, 13 Aug 2025 10:46:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8AF6D822D7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755081965;
	bh=WOM3SoOxDdbujJgqJ3MwGx1pjp7/by9VyTKAY7RSdj4=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pouI3O0tkfM5BGwoq/my/9XWj/JbbqKTpQOS1XW47pSEpokNPJjG9Wr2nef1QlpCS
	 aQu5Gfq8kf8/W3K9DVSUmTzwl9Ofe0wmHQLumE925jURnQa5aewQyZm/Ltbnh4A/HL
	 5lkhe0xxdsS9VoD1aC3AMcS18MXSDSkVZyDUD75TZYXHsKMf4EHZh+/7tbjKqRv52J
	 GCE4pUGXZr0ExHxxI9tG4lJUO7wmaCv5K48x9Pu7F20NoSpX10t8XT9I0nblDyycue
	 rsEpJvvYtr7VRY2ptWSsFDkUXOAdAWaQbfEXWwBZkk6DAU/utHVTSvBaT8fgmR/L+2
	 gA52rnTESpJZQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8AF6D822D7;
	Wed, 13 Aug 2025 10:46:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2F307938
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 10:46:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 69E07402F4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 10:46:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id n5E0rBp_V_1Q for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Aug 2025 10:46:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CD2FF40308
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CD2FF40308
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CD2FF40308
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 10:46:00 +0000 (UTC)
X-CSE-ConnectionGUID: jVmWI2UJQpGhpVh7btTw2A==
X-CSE-MsgGUID: ZqisAJVKQHetFDJw49I+KQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="44949623"
X-IronPort-AV: E=Sophos;i="6.17,285,1747724400"; d="scan'208";a="44949623"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2025 03:46:00 -0700
X-CSE-ConnectionGUID: IHL64nbVRseMDAx3NFzYjw==
X-CSE-MsgGUID: j4eYLnsZS0S5JxslVjayxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,285,1747724400"; d="scan'208";a="166066915"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa009.jf.intel.com with ESMTP; 13 Aug 2025 03:45:58 -0700
Received: from pkitszel-desk.tendawifi.com (unknown [10.245.245.219])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id E670128785;
 Wed, 13 Aug 2025 11:45:56 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: netdev@vger.kernel.org, Greg KH <gregkh@linuxfoundation.org>,
 jeremiah.kyle@intel.com, leszek.pepiak@intel.com,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Lukasz Czapnik <lukasz.czapnik@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Wed, 13 Aug 2025 12:45:14 +0200
Message-ID: <20250813104552.61027-5-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20250813104552.61027-1-przemyslaw.kitszel@intel.com>
References: <20250813104552.61027-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755081960; x=1786617960;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zWpQ1c5L9NPlZEjWZnLW6PcxCzV9reX84W6tSG08Wtg=;
 b=YC3fufeyJbeWXhpVpBYJgGnG243bnSHNfvzAOfZzEie/Hu6vvqs7+g0a
 AJtmFZFkowemnH71U6q3dLCzdsXMTX8rFcBIdZvDHpcT7gunVZYt8H+lo
 LSoRFkKfHLYlCQgoGUzht5ZKHSxdS2kCDccD3ExWRc/4nPSZJq4GTePuR
 RolGZuB/HMgPFTsSezE6jabqjSYmWtFUOV1pHs0T4OWFBMIR7sUbr6iyn
 gb1Lt4kfdszLu+DFEiAgdZleeaMwfJmigSVG0uJ2NHXj3/X1i2zFm6KSw
 8H/5DMo8nNnr9c4owTsBclvPZO2+ysAhBbPvgS/gPELtTC0uSptwsAmj+
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YC3fufey
Subject: [Intel-wired-lan] [PATCH iwl-net 4/8] i40e: fix input validation
 logic for action_meta
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

From: Lukasz Czapnik <lukasz.czapnik@intel.com>

Fix condition to check 'greater or equal' to prevent OOB dereference.

Fixes: e284fc280473 ("i40e: Add and delete cloud filter")
Cc: stable@vger.kernel.org
Signed-off-by: Lukasz Czapnik <lukasz.czapnik@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index b6db4d78c02d..c85715f75435 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -3603,7 +3603,7 @@ static int i40e_validate_cloud_filter(struct i40e_vf *vf,
 
 	/* action_meta is TC number here to which the filter is applied */
 	if (!tc_filter->action_meta ||
-	    tc_filter->action_meta > vf->num_tc) {
+	    tc_filter->action_meta >= vf->num_tc) {
 		dev_info(&pf->pdev->dev, "VF %d: Invalid TC number %u\n",
 			 vf->vf_id, tc_filter->action_meta);
 		goto err;
-- 
2.50.0

