Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E8D4B67B19A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Jan 2023 12:38:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 52AD88213C;
	Wed, 25 Jan 2023 11:38:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 52AD88213C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674646694;
	bh=G3rkK3RFZBbXw/hUt0eXX500bPj5ZlDwIhB8FBnulE4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=QutOg1NVPX/de5Mcjqf4qtuGL4SE0z/+XX9m5LxQigxWtWzIQoi/XZtfF4mQVfPzh
	 SIMtl2mAPQN8uQc4SMm8aNVdM5PP5zV28SzP7t2ZZpfNdTDpYuznF3nLltAiJuX+tX
	 QtZ6Oubc6G2usOIqJRMphRhNYFbKkNy9VATBAGvb8up/P2H95xavkHlxgmAl5rvXJG
	 a6UA+ErVJeVFomg5cY/oylwD3txcNNinsdI6DmNIEjWzTe65mn1MzZOKYFwef275zL
	 7ljinNFZSU06ynfZ+rQulLvRLHzsjF180fRll8+58wJA52pZlYx15MlnOwEHov4GQS
	 AuViDJ54wGiVg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wDaoOd-GchsJ; Wed, 25 Jan 2023 11:38:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 45A0B82133;
	Wed, 25 Jan 2023 11:38:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 45A0B82133
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CB13B1BF580
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 11:38:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 521054049F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 11:38:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 521054049F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kTdsQgYYnQ2L for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Jan 2023 11:38:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E068B4013D
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E068B4013D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 11:38:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="306198119"
X-IronPort-AV: E=Sophos;i="5.97,245,1669104000"; d="scan'208";a="306198119"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 03:37:50 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="804977624"
X-IronPort-AV: E=Sophos;i="5.97,245,1669104000"; d="scan'208";a="804977624"
Received: from hextor.igk.intel.com ([10.123.220.6])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 03:37:48 -0800
From: Michal Wilczynski <michal.wilczynski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 25 Jan 2023 12:37:40 +0100
Message-Id: <20230125113740.1814392-1-michal.wilczynski@intel.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674646686; x=1706182686;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=12+IfJqnboNeaPcCrnDbrNfW8gP/2meWipxBw/EYolU=;
 b=Q37HuVY/G6AIYKTQ+FpLt9s8SY02hCPa9nMVAwMWilETAUZaQukPdOXk
 ZrtwTS7UIt6PXKHuQkNOYRMBZOsfLJ9snlUV8O+OAEiWi/W9bfk5rHjrz
 2M0PZzpM3QtSb++lmz4f0Ey14ThazAwZuUvLMovCmMVfbCFEKhc7JWEud
 S6CS4UMIDxpO0bnfsIuFtY3gTf2VzJMOCV4tGYNM+AQXPGBflRSWPziL/
 wxHyCu3zTKa+OMwkKnS/h/6venqDTsxvM01xmJdS88VQyNMt2E388HPKw
 Ga+1emsOf/YhLDtKg43VQ17FxshmYb/RtE3thNTgDIX+h6WDSgY0SUuVM
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Q37HuVY/
Subject: [Intel-wired-lan] [PATCH net v2] ice: Fix check for weight and
 priority of a scheduling node
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently checks for weight and priority ranges don't check incoming value
from the devlink. Instead it checks node current weight or priority. This
makes those checks useless.

Change range checks in ice_set_object_tx_priority() and
ice_set_object_tx_weight() to check against incoming priority an weight.

Fixes: 42c2eb6b1f43 ("ice: Implement devlink-rate API")
Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
Acked-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
---
v2: replace "doesn't" with "don't" in a commit message

 drivers/net/ethernet/intel/ice/ice_devlink.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index 8286e47b4bae..0fae0186bd85 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -899,7 +899,7 @@ static int ice_set_object_tx_priority(struct ice_port_info *pi, struct ice_sched
 {
 	int status;
 
-	if (node->tx_priority >= 8) {
+	if (priority >= 8) {
 		NL_SET_ERR_MSG_MOD(extack, "Priority should be less than 8");
 		return -EINVAL;
 	}
@@ -929,7 +929,7 @@ static int ice_set_object_tx_weight(struct ice_port_info *pi, struct ice_sched_n
 {
 	int status;
 
-	if (node->tx_weight > 200 || node->tx_weight < 1) {
+	if (weight > 200 || weight < 1) {
 		NL_SET_ERR_MSG_MOD(extack, "Weight must be between 1 and 200");
 		return -EINVAL;
 	}
-- 
2.37.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
