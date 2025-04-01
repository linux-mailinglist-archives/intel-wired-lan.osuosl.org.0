Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 46411A78540
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Apr 2025 01:36:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 99FD761ACF;
	Tue,  1 Apr 2025 23:36:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VvCE6VgWwwy0; Tue,  1 Apr 2025 23:36:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0CF7B612B2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1743550575;
	bh=bLiPhS2VPzGS5Ju+fOgDpThWdzebrUAYJPNmX7E1/nk=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wK9CUJLwAGSYYv9rZGHoDZs8VXBKuTk/iCsA5iFr+E9wEX2Ady/UKxMjh6vWqig81
	 sJ1D19PLJUo15Ir6MIZEkXYTwYs6kZwhw1MBKgEXIRlUiLe5IwdeL3LmZtOVkqVPL7
	 TNGMmDeHa6aV54D+x2FkyvcHb7/vaEb3dAvUjphpxGOmBe7jsrz26YQozaPxZgUBLK
	 BgA7A+b/godrQcf8lyU0Po/8CC3UH2kKpbrZKMc3tYYIwEq19R0LnnPSbI1gGcsaYq
	 846OOfBh6yLlXv9gtja+Q+zrwKzwFgsdy+KZ/LeyQPbx1oR50xjdusFdjba1youMwG
	 GiGQzrqMVGftQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0CF7B612B2;
	Tue,  1 Apr 2025 23:36:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 7553117E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Apr 2025 23:36:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 21B4884765
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Apr 2025 23:36:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id q6eLM5pWN06t for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Apr 2025 23:36:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BAAEB847A6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BAAEB847A6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BAAEB847A6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Apr 2025 23:36:07 +0000 (UTC)
X-CSE-ConnectionGUID: oU0cuBMJShqeIcqHCwI32g==
X-CSE-MsgGUID: ENOBxm97RhyEh1v1a3L5+w==
X-IronPort-AV: E=McAfee;i="6700,10204,11391"; a="55527615"
X-IronPort-AV: E=Sophos;i="6.14,294,1736841600"; d="scan'208";a="55527615"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2025 16:36:07 -0700
X-CSE-ConnectionGUID: s5hdVtKyQfmYF/5EH5sS7A==
X-CSE-MsgGUID: WmeZcmdITWq06w3QfFK5zg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,294,1736841600"; d="scan'208";a="127354858"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2025 16:36:06 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Tue, 01 Apr 2025 16:35:33 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250401-jk-igc-ptm-fixes-v4-v4-5-c0efb82bbf85@intel.com>
References: <20250401-jk-igc-ptm-fixes-v4-v4-0-c0efb82bbf85@intel.com>
In-Reply-To: <20250401-jk-igc-ptm-fixes-v4-v4-0-c0efb82bbf85@intel.com>
To: Anthony Nguyen <anthony.l.nguyen@intel.com>
Cc: david.zage@intel.com, vinicius.gomes@intel.com, 
 rodrigo.cadore@l-acoustics.com, intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org, Jacob Keller <jacob.e.keller@intel.com>, 
 Christopher S M Hall <christopher.s.hall@intel.com>, 
 Corinna Vinschen <vinschen@redhat.com>
X-Mailer: b4 0.14.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743550567; x=1775086567;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=r9elFfmdNnFOLsoFRTnfW3g1ifqPmYejRjnzaCtqkus=;
 b=axpaFxo+ncZMPypLzq0UGkdlXXnJ7hPtg21foMCIctf/fOs3O83B0j9x
 Q2qqXx+LlN8Zbr6PXwlVXim95v9kWpOkDuHWKZrZTLCPu3S9UMSRJPu6u
 al6vcWyFh8n7gDfqolHT+Cx36eS6HEbSl/dU++Fn+5bz+rlDsWn4UD9Gf
 i8b2bBbF0LrQmP1eo4eI7soDfd4TS2NhEMRo5njE/4BaHmMJBAAosnOd6
 f6omp5OoX73oIsGDsSd3n4Z2Mb87S4JbvVvlmjYB3Ty3nXkP+OCHQCTsL
 C+ShL00xBjjZ1b+vhoZeKFh/H/m2NP9/7yDtCIRjvzmSjlwQiqmeuHQcu
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=axpaFxo+
Subject: [Intel-wired-lan] [PATCH iwl-net v4 5/6] igc: cleanup PTP module if
 probe fails
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

From: Christopher S M Hall <christopher.s.hall@intel.com>

Make sure that the PTP module is cleaned up if the igc_probe() fails by
calling igc_ptp_stop() on exit.

Fixes: d89f88419f99 ("igc: Add skeletal frame for Intel(R) 2.5G Ethernet Controller support")
Signed-off-by: Christopher S M Hall <christopher.s.hall@intel.com>
Reviewed-by: Corinna Vinschen <vinschen@redhat.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 491d942cefca7add260a76b06aea9d2e2a9e4cce..e62d76e857c7d7d3197014d90902a1abad4ee497 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -7231,6 +7231,7 @@ static int igc_probe(struct pci_dev *pdev,
 
 err_register:
 	igc_release_hw_control(adapter);
+	igc_ptp_stop(adapter);
 err_eeprom:
 	if (!igc_check_reset_block(hw))
 		igc_reset_phy(hw);

-- 
2.48.1.397.gec9d649cc640

