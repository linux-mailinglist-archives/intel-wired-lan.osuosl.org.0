Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CD3EA4FC815
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Apr 2022 01:29:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7E39560E2D;
	Mon, 11 Apr 2022 23:29:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EBJ1yU9YrTip; Mon, 11 Apr 2022 23:29:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9735560DFA;
	Mon, 11 Apr 2022 23:29:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7FA4E1BF399
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Apr 2022 23:29:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 696DB60DC6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Apr 2022 23:29:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h_eMHCE6VtkL for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Apr 2022 23:29:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8734760E2D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Apr 2022 23:29:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649719754; x=1681255754;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lddoPyStTy1KkbG7Sa3PwRI+5d/QGM12oFzcgXMQxU0=;
 b=CMKUN/lkb8wDmrn+FRrQzFZEeesNc4xaVKH0MdaoFmR7WJXJIZFJRkab
 Qe+u0je5VLgpCcy8euDbZOeA8dCssbOrgmI1agTDbuUTG9QME9F9Tnkw6
 Y0Jy0MYSGw64aKE9uU31x4aHqlkt/Ftlha/ciKthp4ncy4f5QpEMezA3N
 qFkGsdPw6hocF1b7CSFWEDSlrLgIPyBBKslnU1pn4gOrSL5q4ztYmJDVc
 mtYV1/m8Red1p+2OaZRic1bWl5BA8pMcVAFNlK/5L5RBsJniSll2lI6fJ
 zMF99qU8OIQDmdsR+0PpM8gMGjN+oI5nQ4JDFBjprudrmVyU6CEhi7iWh Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10314"; a="244121033"
X-IronPort-AV: E=Sophos;i="5.90,252,1643702400"; d="scan'208";a="244121033"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2022 16:29:13 -0700
X-IronPort-AV: E=Sophos;i="5.90,252,1643702400"; d="scan'208";a="660246413"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.7])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2022 16:29:13 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Mon, 11 Apr 2022 16:29:04 -0700
Message-Id: <20220411232907.1022602-4-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.35.1.456.ga9c7032d4631
In-Reply-To: <20220411232907.1022602-1-jacob.e.keller@intel.com>
References: <20220411232907.1022602-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 3/6] ice: remove return value
 comment for ice_reset_all_vfs
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Since commit fe99d1c06c16 ("ice: make ice_reset_all_vfs void"), the
ice_reset_all_vfs function has not returned anything. The function
comment still indicated it did. Fix this.

While here, also add a line to clarify the function resets all VFs at
once in response to hardware resets such as a PF reset.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_vf_lib.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index aefd66a4db80..24cf6a5b49fe 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -359,12 +359,12 @@ ice_vf_clear_vsi_promisc(struct ice_vf *vf, struct ice_vsi *vsi, u8 promisc_m)
  * ice_reset_all_vfs - reset all allocated VFs in one go
  * @pf: pointer to the PF structure
  *
+ * Reset all VFs at once, in response to a PF or other device reset.
+ *
  * First, tell the hardware to reset each VF, then do all the waiting in one
  * chunk, and finally finish restoring each VF after the wait. This is useful
  * during PF routines which need to reset all VFs, as otherwise it must perform
  * these resets in a serialized fashion.
- *
- * Returns true if any VFs were reset, and false otherwise.
  */
 void ice_reset_all_vfs(struct ice_pf *pf)
 {
-- 
2.35.1.456.ga9c7032d4631

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
