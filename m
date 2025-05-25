Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 693BEAC32F3
	for <lists+intel-wired-lan@lfdr.de>; Sun, 25 May 2025 10:38:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 82DF74068F;
	Sun, 25 May 2025 08:38:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JQ7Lp7SDdclZ; Sun, 25 May 2025 08:38:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DC6B240698
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748162332;
	bh=ltVu7320OiulhTnF9Z3ygc4/U8I8k8YcJ8NOX5f1X0U=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=lQfrifkJ+7CSdsrHUQz7HxVnw2BrprWyI3ozyNDghWzEXhzVNlnA4e88o729Lyhqn
	 O/Zp6FDPQk2Gj+JPeolOFHyGuC7hv5LJXH/v3yb03SfrdSyARnJKnHmQxXU7yygmqx
	 UPN2zvRCdQKZaOAc7dx2wsKmG5AsTaTMbSCXnQNDyjYSeDZoWz7GAln170HELBC0Nm
	 6Ga2G4ly+atzI4H6lJQX0n3HRg0hEuShoFqBDM/4MDjP7WUIzVcklItgfsGXldjPkr
	 f9h/+I6N9MPq53RT6oSZU1dq2VmWkRHrGjDBKm0cirQOBzTPNRgmTJfMxFwNybFfKu
	 mPtyPVnHkmviw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DC6B240698;
	Sun, 25 May 2025 08:38:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 56E8519D
 for <intel-wired-lan@lists.osuosl.org>; Sun, 25 May 2025 08:38:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3DB3F4006F
 for <intel-wired-lan@lists.osuosl.org>; Sun, 25 May 2025 08:38:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OjmIlFf3isbW for <intel-wired-lan@lists.osuosl.org>;
 Sun, 25 May 2025 08:38:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6E32940062
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6E32940062
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6E32940062
 for <intel-wired-lan@osuosl.org>; Sun, 25 May 2025 08:38:50 +0000 (UTC)
X-CSE-ConnectionGUID: nMub+vKyS9ChQHk2dWS8Bg==
X-CSE-MsgGUID: 5YRBLzy9QyuwWjxwf0KLSw==
X-IronPort-AV: E=McAfee;i="6700,10204,11443"; a="50049250"
X-IronPort-AV: E=Sophos;i="6.15,313,1739865600"; d="scan'208";a="50049250"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2025 01:38:50 -0700
X-CSE-ConnectionGUID: hfDEfyk0Thme7zxrmJeuaQ==
X-CSE-MsgGUID: p3XdN523Qtmkp1Wg1lWiGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,313,1739865600"; d="scan'208";a="141770598"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.51])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2025 01:38:48 -0700
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
To: intel-wired-lan@osuosl.org
Cc: Vitaly Lifshits <vitaly.lifshits@intel.com>
Date: Sun, 25 May 2025 11:38:43 +0300
Message-Id: <20250525083843.287228-1-vitaly.lifshits@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748162331; x=1779698331;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fVV1DNs7JmyLZt+Ywa9N3r0xXlPyeFpmgoy6bEBRh90=;
 b=MkLCuTvMoSJZ4fwuvc1sd7NPD7VbzjVi6ICG595t7KfcSv2Zpcn1bywr
 xiW/Sddg3W/4L7xaateYSLuhp5GJ4IwuCcotq92sel8m/PRj2YdjD/t9c
 ml7raC9IMm5EgADfE0fcTR6sUAv7yjxcyVtuDLZJ3jSwvLt5JGRrNyIwe
 +NkRF0MS39b0trvGL8bPcw9T9Hu+YereMbYbs55pCYjWldOCJW50sHtyc
 Cn99hRXLWRaU5D2o5hRYLx7WCLUU+GYGm0nRf/uTJNoxweMyQzCqvnXHP
 xMYZ6pI0f53uCOjctEy57yp1+6YPExKC9dOaN5KInF2/WFDsMzHf7FkjL
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MkLCuTvM
Subject: [Intel-wired-lan] [PATCH iwl-net v1 1/1] e1000e: set fixed clock
 frequency indication for Nahum 11 and Nahum 13
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

On some systems with Nahum 11 and Nahum 13 the value of the XTAL clock in
the software STRAP is incorrect. This causes the PTP timer to run at the
wrong rate and can lead to synchronization issues.

The STRAP value is configured by the system firmware, and a firmware
update is not always possible. Since the XTAL clock on these systems
always runs at 38.4MHz, the driver may ignore the STRAP and just set
the correct value.

Fixes: cc23f4f0b6b9 ("e1000e: Add support for Meteor Lake")
Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 14 +++++++++++---
 drivers/net/ethernet/intel/e1000e/ptp.c    |  9 ++++++---
 2 files changed, 17 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 8ebcb6a7d608..9d2098ed4969 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -3534,9 +3534,6 @@ s32 e1000e_get_base_timinca(struct e1000_adapter *adapter, u32 *timinca)
 	case e1000_pch_cnp:
 	case e1000_pch_tgp:
 	case e1000_pch_adp:
-	case e1000_pch_mtp:
-	case e1000_pch_lnp:
-	case e1000_pch_ptp:
 	case e1000_pch_nvp:
 		if (er32(TSYNCRXCTL) & E1000_TSYNCRXCTL_SYSCFI) {
 			/* Stable 24MHz frequency */
@@ -3552,6 +3549,17 @@ s32 e1000e_get_base_timinca(struct e1000_adapter *adapter, u32 *timinca)
 			adapter->cc.shift = shift;
 		}
 		break;
+	case e1000_pch_mtp:
+	case e1000_pch_lnp:
+	case e1000_pch_ptp:
+			/* System firmware can misreport this value, so set it to a
+			 * stable 38400KHz frequency.
+			 */
+			incperiod = INCPERIOD_38400KHZ;
+			incvalue = INCVALUE_38400KHZ;
+			shift = INCVALUE_SHIFT_38400KHZ;
+			adapter->cc.shift = shift;
+		break;
 	case e1000_82574:
 	case e1000_82583:
 		/* Stable 25MHz frequency */
diff --git a/drivers/net/ethernet/intel/e1000e/ptp.c b/drivers/net/ethernet/intel/e1000e/ptp.c
index 89d57dd911dc..992aec8a4538 100644
--- a/drivers/net/ethernet/intel/e1000e/ptp.c
+++ b/drivers/net/ethernet/intel/e1000e/ptp.c
@@ -295,15 +295,18 @@ void e1000e_ptp_init(struct e1000_adapter *adapter)
 	case e1000_pch_cnp:
 	case e1000_pch_tgp:
 	case e1000_pch_adp:
-	case e1000_pch_mtp:
-	case e1000_pch_lnp:
-	case e1000_pch_ptp:
 	case e1000_pch_nvp:
 		if (er32(TSYNCRXCTL) & E1000_TSYNCRXCTL_SYSCFI)
 			adapter->ptp_clock_info.max_adj = MAX_PPB_24MHZ;
 		else
 			adapter->ptp_clock_info.max_adj = MAX_PPB_38400KHZ;
 		break;
+	case e1000_pch_mtp:
+	case e1000_pch_lnp:
+	case e1000_pch_ptp:
+		adapter->ptp_clock_info.max_adj = MAX_PPB_38400KHZ;
+		break;
+
 	case e1000_82574:
 	case e1000_82583:
 		adapter->ptp_clock_info.max_adj = MAX_PPB_25MHZ;
-- 
2.34.1

