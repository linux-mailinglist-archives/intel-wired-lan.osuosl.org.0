Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2366E66A609
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jan 2023 23:37:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B4ACC415C4;
	Fri, 13 Jan 2023 22:37:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B4ACC415C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673649473;
	bh=WaR9ArQk6+I163EoPDIWUoS9f8ognvw6s1IhI/9tJ/o=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OC9qkwORnqaYgKyKc07Ts+vHX9vV1qvUXOOpbNGtLZJzvTQOtDTtNIxM/fHDGYUDT
	 NbCsF4RUeE2Ot3flJU5UNeGhZkiMNQih1el23IhHt95YIdPNYssob1dPijmvEjESIj
	 T7/jcHPaCh+wF3BR/OnIQjRSY/k4MkBEjhXReGs6SyB0yZFg+mWWYKA/JSEH8hSIH7
	 7gBc857LQDBJxE93vHPJAS7Ypoz8ybzbcsj5oh1rgpy82o2aDhbAaLJ1h3X3NCsqsT
	 qYwK8lrNn6FOVaXDmm9D1JXdPkXza76ebceggV1dKRrWPthgF/Dnqug9a+KMK8TFlo
	 TDGgrsLC4Jidg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H__wHLHa2D8t; Fri, 13 Jan 2023 22:37:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C7830400C8;
	Fri, 13 Jan 2023 22:37:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C7830400C8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1D3A21BF399
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 22:37:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C882A82208
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 22:37:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C882A82208
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0qgLmDsYvqbx for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jan 2023 22:37:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 342D2821FF
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 342D2821FF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 22:37:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10589"; a="351354039"
X-IronPort-AV: E=Sophos;i="5.97,215,1669104000"; d="scan'208";a="351354039"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2023 14:37:42 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10589"; a="726859753"
X-IronPort-AV: E=Sophos;i="5.97,215,1669104000"; d="scan'208";a="726859753"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2023 14:37:42 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Fri, 13 Jan 2023 14:37:23 -0800
Message-Id: <20230113223735.2514364-2-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.38.1.420.g319605f8f00e
In-Reply-To: <20230113223735.2514364-1-jacob.e.keller@intel.com>
References: <20230113223735.2514364-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673649463; x=1705185463;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Csbx3+ZluB7+Fn2Bof4QMhEEkN9VxL7LVWsTFWo/sMg=;
 b=dsowekcVH40D0xjfCi2+E8ilEAs8ecNPlQtGvE94i1xfAkoc6nkMydFC
 V5FlpeLmzC418bQq/dB3VSSPgeJuVya+xnvguz2VlZmmtBu+UZU5y4576
 GNvJbJNNMnAVLM7UtYgXKjpc0SybqXaEUttj/CPMYbd3yFQ8Le6M7rsSi
 PdHlYLs2bAKm8gCs0oC73Is4viUQy5rF/hwI3QfLSmYN8FfSfxNpVFUx8
 PnctY8OkTetdJudQKWMhEU8zgeFf0Ukba66H9GDGtROMBMUh9xVCF4tMC
 TKnkNpFTaVg+mf259ZUy4zdUIeZf44qcKjbGewpOK+forPw5ak7uYlzYR
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dsowekcV
Subject: [Intel-wired-lan] [PATCH net-next 01/13] ice: fix function comment
 referring to ice_vsi_alloc
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
---
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
2.38.1.420.g319605f8f00e

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
