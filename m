Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B6ABE912719
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Jun 2024 15:58:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1E05960644;
	Fri, 21 Jun 2024 13:58:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vF3HbOoM9ivV; Fri, 21 Jun 2024 13:58:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CBA4B60622
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718978326;
	bh=and10G2WNilehgYGSAS2262IHcPKkVOWx6IM4eyzXBY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kBO73cAfl4ZJHkDVxBY79HEhmbcbb6ITnNAF0TOOclcw395PLWXaBrZWFnT0WjOEy
	 nQ0cIbfufmUSh53nfDUQrmeoOl0vpoAd6+SLsFMDO+4lDW3OkQtz9RDoCFGBr8tYt8
	 Q/k/GvanelP/zkqXfAdyFBQeahUCeo8Gz6xGmcEO0Fa7odarX6eles0xkLkHk4Q7TC
	 wZQNqKStQ+EoHW/tlj4JQTJRrfn8nNKqrc133qU7gmefRylmsXfOrOL2LuqR8RmhGm
	 jmOrZJBPTeogYqHsV2nG3Xa4iyNbqpeUvgdgRBcJWE7zkGYixXC4jU6BF1+M72g189
	 MxwR/an4KbxYg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CBA4B60622;
	Fri, 21 Jun 2024 13:58:46 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 51AA31BF348
 for <intel-wired-lan@osuosl.org>; Fri, 21 Jun 2024 07:55:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3C1AA84721
 for <intel-wired-lan@osuosl.org>; Fri, 21 Jun 2024 07:55:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dfT6C1nTyAAc for <intel-wired-lan@osuosl.org>;
 Fri, 21 Jun 2024 07:55:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=todd.e.brandt@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 206278467A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 206278467A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 206278467A
 for <intel-wired-lan@osuosl.org>; Fri, 21 Jun 2024 07:55:46 +0000 (UTC)
X-CSE-ConnectionGUID: oA+gkCrDTC27ji04gC036g==
X-CSE-MsgGUID: 0OgNn7Y1TLOefrdCA/KbnQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11109"; a="12177432"
X-IronPort-AV: E=Sophos;i="6.08,254,1712646000"; d="scan'208";a="12177432"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2024 00:55:46 -0700
X-CSE-ConnectionGUID: 4Qk+kT8IS9mPF55XXe2Wuw==
X-CSE-MsgGUID: icicdEKRSRiOb3jRc4FF7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,254,1712646000"; d="scan'208";a="42474283"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Jun 2024 00:55:46 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 21 Jun 2024 00:55:46 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 21 Jun 2024 00:55:45 -0700
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2507.039;
 Fri, 21 Jun 2024 00:55:45 -0700
From: "Brandt, Todd E" <todd.e.brandt@intel.com>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [PATCH iwl-net v2 1/1] e1000e: fix force smbus during suspend
 flow
Thread-Index: AQHawtw8tXXcyhZZNUOKHVzIvVq0l7HR2WGw
Date: Fri, 21 Jun 2024 07:55:45 +0000
Message-ID: <6be9d31678aa4d8bbe9e1ddb75a2791f@intel.com>
References: <20240620063645.4151337-1-vitaly.lifshits@intel.com>
In-Reply-To: <20240620063645.4151337-1-vitaly.lifshits@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 21 Jun 2024 13:58:45 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718956547; x=1750492547;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qpE9Y2ro0trtEUsy3uptweWLzfwIDDioHypeBpi+g5Q=;
 b=edqQcizYhJkqiw4VBZeR0Whxo1R9xNnCCYMBOIPjHnd513Oqq+pwZIO+
 JgDdMgWzrtSKA21KGiT5O3q7n+PsFrRx7+6j9QD62RPU288uCulcNtDNQ
 gFW+CRDLkg5TAqBQO7aPGC+IqXi/DoFTwlCYBxy5NsqCfkAyo1ZtrijwP
 gX+vn5EZFt0wp0sTsv6vlagxcJ8DdX2LzAg2xrl3h1ZpfMDL4CEojHsEY
 0SYWIvnLPPNth8nIhrN4R60e1jQzCPYGQONm8sRORVGa9CQ4uqmiZqMuz
 jEjf55gLMCImII93qiggFWt4H7gV1xwE7IxbNf6RUAxLWY3grwW4Mu+5M
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=edqQcizY
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/1] e1000e: fix force
 smbus during suspend flow
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
Cc: "hui.wang@canonical.com" <hui.wang@canonical.com>,
 Dieter Mummenschanz <dmummenschanz@web.de>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

I just built and tested your patch on the latest 6.10.0-rc3 tip. It seems t=
o have fixed the issue on three of our machines, but the issue still occurs=
 on our Meteor Lake SDV board (otcpl-mtl-s).

[  130.302511] e1000e: EEE TX LPI TIMER: 00000011
[  130.390014] e1000e 0000:80:1f.6: PM: pci_pm_suspend(): e1000e_pm_suspend=
 [e1000e] returns -2
[  130.390033] e1000e 0000:80:1f.6: PM: dpm_run_callback(): pci_pm_suspend =
returns -2
[  130.390039] e1000e 0000:80:1f.6: PM: failed to suspend async: error -2
[  130.574807] PM: suspend of devices aborted after 293.955 msecs
[  130.574817] PM: start suspend of devices aborted after 376.596 msecs
[  130.574820] PM: Some devices failed to suspend, or early wake event dete=
cted

$> lspci -nn -s 80:1f.6
80:1f.6 Ethernet controller [0200]: Intel Corporation Device [8086:550d]

-----Original Message-----
From: Lifshits, Vitaly <vitaly.lifshits@intel.com>=20
Sent: Wednesday, June 19, 2024 11:37 PM
To: intel-wired-lan@osuosl.org
Cc: hui.wang@canonical.com; Lifshits, Vitaly <vitaly.lifshits@intel.com>; B=
randt, Todd E <todd.e.brandt@intel.com>; Dieter Mummenschanz <dmummenschanz=
@web.de>
Subject: [PATCH iwl-net v2 1/1] e1000e: fix force smbus during suspend flow

Commit 861e8086029e ("e1000e: move force SMBUS from enable ulp function to =
avoid PHY loss issue") resolved a PHY access loss during suspend on Meteor =
Lake consumer platforms, but it affected corporate systems incorrectly.

A better fix, working for both consumer and corporate systems, was proposed=
 in commit bfd546a552e1 ("e1000e: move force SMBUS near the end of enable_u=
lp function"). However, it introduced a regression on older devices, such a=
s [8086:15B8], [8086:15F9], [8086:15BE].

This patch aims to fix the secondary regression, by limiting the scope of t=
he changes to Meteor Lake platforms only.

Fixes: bfd546a552e1 ("e1000e: move force SMBUS near the end of enable_ulp f=
unction")
Reported-by: Todd Brandt <todd.e.brandt@intel.com>
Closes: https://bugzilla.kernel.org/show_bug.cgi?id=3D218940
Reported-by: Dieter Mummenschanz <dmummenschanz@web.de>
Closes: https://bugzilla.kernel.org/show_bug.cgi?id=3D218936
Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
--
v2: enhance the function description and address community comments
v1: initial version
---
 drivers/net/ethernet/intel/e1000e/ich8lan.c | 73 +++++++++++++++------
 1 file changed, 53 insertions(+), 20 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethe=
rnet/intel/e1000e/ich8lan.c
index 2e98a2a0bead..86d4ae95b45a 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -137,6 +137,7 @@ static void e1000_gate_hw_phy_config_ich8lan(struct e10=
00_hw *hw, bool gate);  static s32 e1000_disable_ulp_lpt_lp(struct e1000_hw=
 *hw, bool force);  static s32 e1000_setup_copper_link_pch_lpt(struct e1000=
_hw *hw);  static s32 e1000_oem_bits_config_ich8lan(struct e1000_hw *hw, bo=
ol d0_state);
+static s32 e1000e_force_smbus(struct e1000_hw *hw);
=20
 static inline u16 __er16flash(struct e1000_hw *hw, unsigned long reg)  { @=
@ -1108,6 +1109,46 @@ static s32 e1000_platform_pm_pch_lpt(struct e1000_hw =
*hw, bool link)
 	return 0;
 }
=20
+/**
+ *  e1000e_force_smbus - Force interfaces to transition to SMBUS mode.
+ *  @hw: pointer to the HW structure
+ *
+ *  Force the MAC and the PHY to SMBUS mode. Assumes semaphore already
+ *  acquired.
+ *
+ * Return: 0 on success, negative errno on failure.
+ **/
+static s32 e1000e_force_smbus(struct e1000_hw *hw) {
+	u16 smb_ctrl =3D 0;
+	u32 ctrl_ext;
+	s32 ret_val;
+
+	/* Switching PHY interface always returns MDI error
+	 * so disable retry mechanism to avoid wasting time
+	 */
+	e1000e_disable_phy_retry(hw);
+
+	/* Force SMBus mode in the PHY */
+	ret_val =3D e1000_read_phy_reg_hv_locked(hw, CV_SMB_CTRL, &smb_ctrl);
+	if (ret_val) {
+		e1000e_enable_phy_retry(hw);
+		return ret_val;
+	}
+
+	smb_ctrl |=3D CV_SMB_CTRL_FORCE_SMBUS;
+	e1000_write_phy_reg_hv_locked(hw, CV_SMB_CTRL, smb_ctrl);
+
+	e1000e_enable_phy_retry(hw);
+
+	/* Force SMBus mode in the MAC */
+	ctrl_ext =3D er32(CTRL_EXT);
+	ctrl_ext |=3D E1000_CTRL_EXT_FORCE_SMBUS;
+	ew32(CTRL_EXT, ctrl_ext);
+
+	return 0;
+}
+
 /**
  *  e1000_enable_ulp_lpt_lp - configure Ultra Low Power mode for LynxPoint=
-LP
  *  @hw: pointer to the HW structure
@@ -1165,6 +1206,14 @@ s32 e1000_enable_ulp_lpt_lp(struct e1000_hw *hw, boo=
l to_sx)
 	if (ret_val)
 		goto out;
=20
+	if (hw->mac.type !=3D e1000_pch_mtp) {
+		ret_val =3D e1000e_force_smbus(hw);
+		if (ret_val) {
+			e_dbg("Failed to force SMBUS: %d\n", ret_val);
+			goto release;
+		}
+	}
+
 	/* Si workaround for ULP entry flow on i127/rev6 h/w.  Enable
 	 * LPLU and disable Gig speed when entering ULP
 	 */
@@ -1225,27 +1274,11 @@ s32 e1000_enable_ulp_lpt_lp(struct e1000_hw *hw, bo=
ol to_sx)
 	}
=20
 release:
-	/* Switching PHY interface always returns MDI error
-	 * so disable retry mechanism to avoid wasting time
-	 */
-	e1000e_disable_phy_retry(hw);
-
-	/* Force SMBus mode in PHY */
-	ret_val =3D e1000_read_phy_reg_hv_locked(hw, CV_SMB_CTRL, &phy_reg);
-	if (ret_val) {
-		e1000e_enable_phy_retry(hw);
-		hw->phy.ops.release(hw);
-		goto out;
+	if (hw->mac.type =3D=3D e1000_pch_mtp) {
+		ret_val =3D e1000e_force_smbus(hw);
+		if (ret_val)
+			e_dbg("Failed to force SMBUS over MTL system: %d\n", ret_val);
 	}
-	phy_reg |=3D CV_SMB_CTRL_FORCE_SMBUS;
-	e1000_write_phy_reg_hv_locked(hw, CV_SMB_CTRL, phy_reg);
-
-	e1000e_enable_phy_retry(hw);
-
-	/* Force SMBus mode in MAC */
-	mac_reg =3D er32(CTRL_EXT);
-	mac_reg |=3D E1000_CTRL_EXT_FORCE_SMBUS;
-	ew32(CTRL_EXT, mac_reg);
=20
 	hw->phy.ops.release(hw);
 out:
--
2.34.1

