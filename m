Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B2FA67AFA7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Jan 2023 11:27:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 28BD240C03;
	Wed, 25 Jan 2023 10:27:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 28BD240C03
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674642427;
	bh=xGShGGNWx1uhvByDz7wGT+VZZFyET7VPiX0rp2aA0dg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=N2DqariaTsg97EXnHSAIGbIixDlBZi98QYG98sP/NYEPOYFNgZm0nSVypDeuYzRS9
	 TTdkfUM+kUp76XO0vk59sj2pTQ3Dfcf05KzHDE/gzhFsv2WjQNJ5y3yEJZCetfhqmt
	 DTBJ+xW2YPPDtWN4h1MJIuCiRWAHKd/WFm4CysxHhv0enUUnPx+XWK2n4vOpjmf6+F
	 IO/qCUrp9kABihRu3Y4x2vB0qfrd6UVgUy/C4X+xReZFKLGB5sLg0VrF2MwyplJy3t
	 S/IKpB76zz8tDf+Z7JTDepQD4ZgxWx7SPIdJvOM0PxfBFt/ZB0OV5/W5bQCJhcM3Q5
	 NgMs1/ipy0Uxw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oMceiqXlN712; Wed, 25 Jan 2023 10:27:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 21A6940283;
	Wed, 25 Jan 2023 10:27:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 21A6940283
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EFE341BF2BF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 10:27:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C4F4541833
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 10:27:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C4F4541833
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rhc5Ed0f2eiC for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Jan 2023 10:27:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 07CD141584
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 07CD141584
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 10:26:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="391029441"
X-IronPort-AV: E=Sophos;i="5.97,245,1669104000"; d="scan'208";a="391029441"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 02:26:59 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="770673875"
X-IronPort-AV: E=Sophos;i="5.97,245,1669104000"; d="scan'208";a="770673875"
Received: from hextor.igk.intel.com ([10.123.220.6])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 02:26:58 -0800
From: Michal Wilczynski <michal.wilczynski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 25 Jan 2023 11:26:50 +0100
Message-Id: <20230125102650.1805470-1-michal.wilczynski@intel.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674642419; x=1706178419;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=A6/RZRKrXAIEEZQQw5la9hByHLONIunVRjsfhW4zci0=;
 b=cAYsAFJH0lrJRC6YRNPlEeWc3N2VZhIJb3QWoCjQ0HYyAK1l1o6YimgW
 hkz5PPXx/6FXe5iBXo4Him4OQKuxN6BpYCpp3L2LlHg5FCd5bJ5kEe4Mr
 GGO1Lb2sEQPiJZOh+5PAUrptYQm8aC/hg+rW61VGQXNGHVlNL3Q4rGh36
 uBqT+sE3EgNTjK8WK7WK2SFeJi3Cvizae0qBjfmT/U39/ZDZ2Q7BjEfqP
 ViYuRZGKfqWvjtkhxq1H7N2xxgC2r35V3bk/xnVyQi4IkjAjMcEGqZN80
 lAwmRJmy5YZzn++UJav9qvNEnTG/CuQEocQVyIoNXdNYzMgV/mTtRaPQa
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cAYsAFJH
Subject: [Intel-wired-lan] [PATCH net v1] ice: Fix check for weight and
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
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently checks for weight and priority ranges doesn't check
incoming value from the devlink. Instead it checks node current weight
or priority. This makes those checks useless.

Change range checks in ice_set_object_tx_priority() and
ice_set_object_tx_weight() to check against incoming priority and
weight.

Fixes: 42c2eb6b1f43 ("ice: Implement devlink-rate API")
Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
Acked-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
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
