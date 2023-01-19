Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EFE6672DEE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jan 2023 02:17:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B343B821E8;
	Thu, 19 Jan 2023 01:17:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B343B821E8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674091032;
	bh=9QwBPwruz5j5jtyFBKkuzfYy4eYBBWSo0/BAJUDCL9Q=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Vfz/LXUis2TVp0ZHGyxZP3IcAACJbGP7pKwYNNr7KUN+5qzeDplykuLtmaPr6SpOK
	 IECVoQWbLJqgfzm+eHbj82tyPSP5izBzxT4lNgUZ8VfUuL1mqnE9ANKHp40S1aLH5X
	 CwLYocDq35CQk5YPkGTsiW0xPhB4HScK7Xpp8bH86TadUzlJ/tgQQR7OwBz6HUuAU4
	 eImm5ZIpAH0aQB7KfPqFhcVENOxV9n4MkpeE+lvMQPVBM+nza15o6pNoL9i+/NC8je
	 OTCIY0qFQSzpJA2vQKXgqNBHYqBTqus8Nvyu5fONBgEi+KN15mc4VxKAWjmAQZQ02N
	 j2bvpDLKnPgkw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Gfk06VIj658r; Thu, 19 Jan 2023 01:17:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B70428218D;
	Thu, 19 Jan 2023 01:17:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B70428218D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 93C111BF95F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 01:17:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 683C34192D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 01:17:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 683C34192D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zQPdqrKoGFlQ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Jan 2023 01:17:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EADC4418A4
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EADC4418A4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 01:17:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="304840721"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="304840721"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 17:17:02 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="783881857"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="783881857"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 17:17:02 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 18 Jan 2023 17:16:41 -0800
Message-Id: <20230119011653.311675-2-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.39.1.405.gd4c25cc71f83
In-Reply-To: <20230119011653.311675-1-jacob.e.keller@intel.com>
References: <20230119011653.311675-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674091023; x=1705627023;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dtN6cqfICt/yfq4MCOGCN4azNN5Kau///aMcbthSyJA=;
 b=aid6iDCq6K6pQ7hLbyb1au85GknyqeapenY5a0i8Dgt8Gm+VcjnWB9Fw
 baoxSjkUMTHBbyW3pehpQ0zihKGcsqoM5LipY8Sjgx+cV/6T5T5pAQ1FE
 6GsPOxG1yCB6es/I3KGoV8hGUzcoo/4O3DnbLlJK/CDRysa3p7wq5Ps2i
 O4fdPmnf5otwruokgJfaMECysVj04mdKi+yUhJckCsFQihYwI+wvdJKvV
 nD509AqcMtb/IG/IbbGYPy/BVWJfRRaUROM8Vs58G5lxkfwN1K5cfm5Lq
 9I4BLszr9Tf4E3zN2Z7J3fXshxJdDU2NQmpkcQd3UZhE6va2XyTY77qfp
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aid6iDCq
Subject: [Intel-wired-lan] [PATCH net-next v2 01/13] ice: fix function
 comment referring to ice_vsi_alloc
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
Cc: Anthony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Since commit 1d2e32275de7 ("ice: split ice_vsi_setup into smaller
functions") ice_vsi_alloc has not been responsible for all of the behavior
implied by the comment for ice_vsi_setup_vector_base.

Fix the comment to refer to the new function ice_vsi_alloc_def().

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
Changes since v1:
* Add Reviewed-by tag

 drivers/net/ethernet/intel/ice/ice_lib.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 04f31a83e327..62d27e50f40e 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1527,7 +1527,7 @@ static int ice_get_vf_ctrl_res(struct ice_pf *pf, struct ice_vsi *vsi)
  * ice_vsi_setup_vector_base - Set up the base vector for the given VSI
  * @vsi: ptr to the VSI
  *
- * This should only be called after ice_vsi_alloc() which allocates the
+ * This should only be called after ice_vsi_alloc_def() which allocates the
  * corresponding SW VSI structure and initializes num_queue_pairs for the
  * newly allocated VSI.
  *
-- 
2.39.1.405.gd4c25cc71f83

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
