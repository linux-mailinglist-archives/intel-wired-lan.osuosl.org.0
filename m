Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BCF1966022
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Aug 2024 13:10:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 997628415C;
	Fri, 30 Aug 2024 11:10:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 38htxz6_8veN; Fri, 30 Aug 2024 11:10:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C596A84155
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725016246;
	bh=tqkWHhYtX777Q9IKZEadMfV+OuqylCVMVfrRCtWYux8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Qp41qMwIxgvifNPASlZLkdbn4VCZijlibWvuVhpzKs4gAKIYdpJsRhSNFp4FUHKGI
	 5mgs2ihZO7aW9C9zSTbngKIIece/+h3vGy+lVMcFwFuQNYfvUpA8af8AN1HvvK1m60
	 rOwALqb1OH5+iHfWtIBMxe2+gGAvH+wySwpw1Rk1lZaoOGzo69/dLEDEqrtr7GCL0A
	 CiSTWl77cUNbV76cX8lYqUaqk6mh79PawoJhBHq8jv/VN3qnvmeslFxxBoTN/0nC63
	 i0EcO+VPgVU0RQpxFmHx/rdWLEmzU6PJfxELsrrUML5lS/2pQcIRxtpBgwyDVIdkZ1
	 YogeIZV1V+iPA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C596A84155;
	Fri, 30 Aug 2024 11:10:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5159C1BF370
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 11:10:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 491F54243E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 11:10:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YmXXj1BQMzUi for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Aug 2024 11:10:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2380341A70
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2380341A70
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2380341A70
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 11:10:41 +0000 (UTC)
X-CSE-ConnectionGUID: j76WoV3cRKK+lDwZgGGuQA==
X-CSE-MsgGUID: GW6u8G89SkqtQtPbqrOyvA==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="23517585"
X-IronPort-AV: E=Sophos;i="6.10,188,1719903600"; d="scan'208";a="23517585"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2024 04:10:42 -0700
X-CSE-ConnectionGUID: vXIhqjaSR6OdAb7UYAq3nA==
X-CSE-MsgGUID: gyWOcw3LS4iIyVseqKtNxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,188,1719903600"; d="scan'208";a="68273565"
Received: from kkolacin-desk1.igk.intel.com ([10.217.160.108])
 by fmviesa005.fm.intel.com with ESMTP; 30 Aug 2024 04:10:39 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 30 Aug 2024 13:07:18 +0200
Message-ID: <20240830111028.1112040-11-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240830111028.1112040-9-karol.kolacinski@intel.com>
References: <20240830111028.1112040-9-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725016243; x=1756552243;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tKnPTu0sKsUolgfaknV08Jbr9xf/S4C5cERyTobmygc=;
 b=Di7ZdyHrjAY3g9lvbD057Tej9UnDQ5rOJLnwNIR/ESfr8AelfGTcSI+f
 9bfI6kuOpJ2DUHyxAqHd2k3IkWtSfQDlBnUzJnPS6igNOrTTuRhxkpoyj
 k9YoC+LLrGt9AG93GL46nQrQaPXPmJO0HRUkIr8+1gLuPwgXNhCuNDfAk
 aIHgX2JVETMFGUfncHFPz/NMWVcSbCEjIBqXuNEig2f/tCKu3KVQmx3+w
 PQYI4MaJSDTe/wORNcAj50Z6vjiAKrp0O8GvZLket0t1LMEq32QRPeFrL
 ENywwShGkPCzqB3kpbo1oq0bAu9W28CukAKb81IHYLvd0BOpYSqQ5EInm
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Di7ZdyHr
Subject: [Intel-wired-lan] [PATCH v4 iwl-next 2/7] ice: Add SDPs support for
 E825C
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
Cc: netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>, anthony.l.nguyen@intel.com,
 Simon Horman <horms@kernel.org>, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add support of PTP SDPs (Software Definable Pins) for E825C products.

Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
---
V1 -> V2: Removed redundant n_pins assignment and enable and verify move

 drivers/net/ethernet/intel/ice/ice_ptp.c | 20 ++++++++++++++++++--
 1 file changed, 18 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 34ce1a160f73..9879a6f2150d 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -20,6 +20,16 @@ static const struct ice_ptp_pin_desc ice_pin_desc_e82x[] = {
 	{  ONE_PPS,   { -1,  5 }},
 };
 
+static const struct ice_ptp_pin_desc ice_pin_desc_e825c[] = {
+	/* name,        gpio */
+	{  SDP0,      {  0,  0 }},
+	{  SDP1,      {  1,  1 }},
+	{  SDP2,      {  2,  2 }},
+	{  SDP3,      {  3,  3 }},
+	{  TIME_SYNC, {  4, -1 }},
+	{  ONE_PPS,   { -1,  5 }},
+};
+
 static const struct ice_ptp_pin_desc ice_pin_desc_e810[] = {
 	/* name,      gpio */
 	{  SDP0,    {  0, 0 }},
@@ -2605,8 +2615,14 @@ static void ice_ptp_set_funcs_e82x(struct ice_pf *pf)
 #endif /* CONFIG_ICE_HWTS */
 	pf->ptp.info.enable = ice_ptp_gpio_enable;
 	pf->ptp.info.verify = ice_verify_pin;
-	pf->ptp.ice_pin_desc = ice_pin_desc_e82x;
-	pf->ptp.info.n_pins = ICE_PIN_DESC_ARR_LEN(ice_pin_desc_e82x);
+
+	if (ice_is_e825c(&pf->hw)) {
+		pf->ptp.ice_pin_desc = ice_pin_desc_e825c;
+		pf->ptp.info.n_pins = ICE_PIN_DESC_ARR_LEN(ice_pin_desc_e825c);
+	} else {
+		pf->ptp.ice_pin_desc = ice_pin_desc_e82x;
+		pf->ptp.info.n_pins = ICE_PIN_DESC_ARR_LEN(ice_pin_desc_e82x);
+	}
 	ice_ptp_setup_pin_cfg(pf);
 }
 
-- 
2.46.0

