Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F9ABB2479D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Aug 2025 12:46:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 65A5D82349;
	Wed, 13 Aug 2025 10:46:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 86CV6wQssPym; Wed, 13 Aug 2025 10:46:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DAE8E8237B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755081963;
	bh=TQaDBxD5arB3Bt6qK8L0e5fOFsiwvERRK9BXX3UojTE=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8Ka/bA7gs+ITXNCx/tRp87S1SEqaqFGofdjgkl5Qv44ozZuoCH6wn+6LD3s6q4i2/
	 4et1rLk7LHxGhttWqdzGh8zb67Wlhcu97id6uoEx3o13biVD/DgIAOFLOtZpiYGztd
	 K22kWfJMJ+bRUMs5ox4Pj2IaD48aeLS9br6eJULFbcofLNoGz0h1Ec2hVPvKVqSDWG
	 /ydeqbVv9WjziF5hbVazXGmMVlY1mWVqmrCME6f1HiHi0K87CwNAEyJJYwtZGx0bkV
	 oOok/JwrWG+VTlR5rLNnetlOTfdVadfU9DopKdVLMu2VOXugwbTjt1i8hVfKMrDlgf
	 wtFhlXULdiUcQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id DAE8E8237B;
	Wed, 13 Aug 2025 10:46:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 3120F1C9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 10:46:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2E9B5402E3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 10:46:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oUbZtIQ80k-3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Aug 2025 10:46:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DE5EC402F7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DE5EC402F7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DE5EC402F7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 10:45:59 +0000 (UTC)
X-CSE-ConnectionGUID: Y4nnZJTXTW+ptZwjy6eiWw==
X-CSE-MsgGUID: nXe27bn2QaisuJo9ECb6vw==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="44949620"
X-IronPort-AV: E=Sophos;i="6.17,285,1747724400"; d="scan'208";a="44949620"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2025 03:45:59 -0700
X-CSE-ConnectionGUID: eztLY7MOSLKRGtU7lJLaBA==
X-CSE-MsgGUID: yFJvxSRlTauawP69fXYEIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,285,1747724400"; d="scan'208";a="166066911"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa009.jf.intel.com with ESMTP; 13 Aug 2025 03:45:57 -0700
Received: from pkitszel-desk.tendawifi.com (unknown [10.245.245.219])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 1291528783;
 Wed, 13 Aug 2025 11:45:56 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: netdev@vger.kernel.org, Greg KH <gregkh@linuxfoundation.org>,
 jeremiah.kyle@intel.com, leszek.pepiak@intel.com,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Lukasz Czapnik <lukasz.czapnik@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Wed, 13 Aug 2025 12:45:13 +0200
Message-ID: <20250813104552.61027-4-przemyslaw.kitszel@intel.com>
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
 bh=0o2WrFKh2sJbWwI8T+Zz7bvTPK/1w8Dw0ZibaSicrU0=;
 b=BHfzUPpVISTghZCQMCIZisUz592rO9uUgwrHDZaGVykkWMspNmKruqxD
 zFjMyg5WUwO0y2wsirJXKBTLiACYBctdJxbtecJM/1OWeeJ0lj3d5BD1y
 ihfJ002iZ+W8Gi6Ubas5DKHaJ23Ccp5hXrkJSvVVLN4uQph5T30x/8QRM
 CcLXRaplGpUBKduBW7iuP/hEMZDu/JgLae9cZHwBXZShUhuVB5uJiWOkn
 TKUkWq01rZ8CWClWl+5rFHZnLBiZElViI1QCtso2y12J7+jQQMJLkkguo
 jHiYRRCyWlJ7+5lnLQdUmk8xSSo4GZAfdoe8qKkOc4cG7wp+RW258BhMU
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BHfzUPpV
Subject: [Intel-wired-lan] [PATCH iwl-net 3/8] i40e: fix idx validation in
 config queues msg
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

Ensure idx is within range of active/initialized TCs when iterating over
vf->ch[idx] in i40e_vc_config_queues_msg().

Fixes: c27eac48160d ("i40e: Enable ADq and create queue channel/s on VF")
Cc: stable@vger.kernel.org
Signed-off-by: Lukasz Czapnik <lukasz.czapnik@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 1c4f86221255..b6db4d78c02d 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -2395,7 +2395,7 @@ static int i40e_vc_config_queues_msg(struct i40e_vf *vf, u8 *msg)
 		}
 
 		if (vf->adq_enabled) {
-			if (idx >= ARRAY_SIZE(vf->ch)) {
+			if (idx >= vf->num_tc) {
 				aq_ret = -ENODEV;
 				goto error_param;
 			}
@@ -2416,7 +2416,7 @@ static int i40e_vc_config_queues_msg(struct i40e_vf *vf, u8 *msg)
 		 * to its appropriate VSIs based on TC mapping
 		 */
 		if (vf->adq_enabled) {
-			if (idx >= ARRAY_SIZE(vf->ch)) {
+			if (idx >= vf->num_tc) {
 				aq_ret = -ENODEV;
 				goto error_param;
 			}
-- 
2.50.0

