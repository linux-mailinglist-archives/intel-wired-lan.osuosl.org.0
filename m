Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 32B8D2D9B15
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Dec 2020 16:35:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E8F9987280;
	Mon, 14 Dec 2020 15:35:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NuYR7YPJNEJe; Mon, 14 Dec 2020 15:35:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 06ECE8729A;
	Mon, 14 Dec 2020 15:35:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A57361BF2E5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 15:35:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 81832228B0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 15:35:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ASiQPQg-Ak2p for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Dec 2020 15:34:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-00154904.pphosted.com (mx0a-00154904.pphosted.com
 [148.163.133.20])
 by silver.osuosl.org (Postfix) with ESMTPS id BF61B20C92
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 15:34:57 +0000 (UTC)
Received: from pps.filterd (m0170390.ppops.net [127.0.0.1])
 by mx0a-00154904.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 0BEFSbJJ010229
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 10:34:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=smtpout1;
 bh=PH4VrMex6VelAado/JuRPdp52ERlBzmgA38FwjRkxvk=;
 b=XlEBPzrInNkJxqlbKwqZAdrcM7IEBtfAHBCdTOEKHOkJfO4WbA19IlYAIQdsmBDzP+iM
 Bsjv2xDmz4XRfK6ltU/YhtMtl/QOz2VfLa7vrYZLe7/EE56ZGy5pHYJWCkAyKW1zIFbh
 MiEytatEfdwnrUkpSRvBbYvOjCK+rfVX7dmPBOapBavOs8Jhw2jnU5odLWdIoORwB6eu
 T9DGmHqOdAuNNK+QL+AxzAks35YyDvzC6k2WJ6f7En8iVx+JtoBa82YCWdgZyKlFGz1G
 SOnYUfmRr6FbpTyX96Gm8X//UyWlEOhARXCiwTELZlAvyN0oEw1CRsQ6eC2z7nWHNXgt 7g== 
Received: from mx0b-00154901.pphosted.com (mx0b-00154901.pphosted.com
 [67.231.157.37])
 by mx0a-00154904.pphosted.com with ESMTP id 35d4uj4sk0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 10:34:57 -0500
Received: from pps.filterd (m0144104.ppops.net [127.0.0.1])
 by mx0b-00154901.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 0BEFVCCF142850
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 10:34:56 -0500
Received: from ausc60pc101.us.dell.com (ausc60pc101.us.dell.com
 [143.166.85.206])
 by mx0b-00154901.pphosted.com with ESMTP id 35e6cvcqr6-4
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 10:34:56 -0500
X-LoopCount0: from 10.173.37.130
X-PREM-Routing: D-Outbound
X-IronPort-AV: E=Sophos;i="5.78,420,1599541200"; d="scan'208";a="1641438814"
From: Mario Limonciello <mario.limonciello@dell.com>
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, David Miller <davem@davemloft.net>
Date: Mon, 14 Dec 2020 09:34:49 -0600
Message-Id: <20201214153450.874339-4-mario.limonciello@dell.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201214153450.874339-1-mario.limonciello@dell.com>
References: <20201214153450.874339-1-mario.limonciello@dell.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.343, 18.0.737
 definitions=2020-12-14_06:2020-12-11,
 2020-12-14 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0
 priorityscore=1501 spamscore=0 phishscore=0 clxscore=1015 impostorscore=0
 lowpriorityscore=0 adultscore=0 bulkscore=0 mlxscore=0 mlxlogscore=624
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2012140108
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 malwarescore=0 adultscore=0
 phishscore=0 spamscore=0 suspectscore=0 mlxscore=0 mlxlogscore=775
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2012140108
Subject: [Intel-wired-lan] [PATCH 3/4] Revert "e1000e: disable s0ix entry
 and exit flows for ME systems"
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
Cc: Hans de Goede <hdegoede@redhat.com>, Netdev <netdev@vger.kernel.org>,
 Perry.Yuan@dell.com, Mario Limonciello <mario.limonciello@dell.com>,
 linux-kernel@vger.kernel.org, anthony.wong@canonical.com, Yijun.Shen@dell.com,
 Jakub Kicinski <kuba@kernel.org>, Stefan Assmann <sassmann@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

commit e086ba2fccda ("e1000e: disable s0ix entry and exit flows for ME systems")
disabled s0ix flows for systems that have various incarnations of the
i219-LM ethernet controller.  This changed caused power consumption regressions
on the following shipping Dell Comet Lake based laptops:
* Latitude 5310
* Latitude 5410
* Latitude 5410
* Latitude 5510
* Precision 3550
* Latitude 5411
* Latitude 5511
* Precision 3551
* Precision 7550
* Precision 7750

This commit was introduced because of some regressions on certain Thinkpad
laptops.  This comment was potentially caused by an earlier
commit 632fbd5eb5b0e ("e1000e: fix S0ix flows for cable connected case").
or it was possibly caused by a system not meeting platform architectural
requirements for low power consumption.  Other changes made in the driver
with extended timeouts are expected to make the driver more impervious to
platform firmware behavior.

Fixes: e086ba2fccda ("e1000e: disable s0ix entry and exit flows for ME systems")
Signed-off-by: Mario Limonciello <mario.limonciello@dell.com>
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 45 +---------------------
 1 file changed, 2 insertions(+), 43 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 6588f5d4a2be..b9800ba2006c 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -103,45 +103,6 @@ static const struct e1000_reg_info e1000_reg_info_tbl[] = {
 	{0, NULL}
 };
 
-struct e1000e_me_supported {
-	u16 device_id;		/* supported device ID */
-};
-
-static const struct e1000e_me_supported me_supported[] = {
-	{E1000_DEV_ID_PCH_LPT_I217_LM},
-	{E1000_DEV_ID_PCH_LPTLP_I218_LM},
-	{E1000_DEV_ID_PCH_I218_LM2},
-	{E1000_DEV_ID_PCH_I218_LM3},
-	{E1000_DEV_ID_PCH_SPT_I219_LM},
-	{E1000_DEV_ID_PCH_SPT_I219_LM2},
-	{E1000_DEV_ID_PCH_LBG_I219_LM3},
-	{E1000_DEV_ID_PCH_SPT_I219_LM4},
-	{E1000_DEV_ID_PCH_SPT_I219_LM5},
-	{E1000_DEV_ID_PCH_CNP_I219_LM6},
-	{E1000_DEV_ID_PCH_CNP_I219_LM7},
-	{E1000_DEV_ID_PCH_ICP_I219_LM8},
-	{E1000_DEV_ID_PCH_ICP_I219_LM9},
-	{E1000_DEV_ID_PCH_CMP_I219_LM10},
-	{E1000_DEV_ID_PCH_CMP_I219_LM11},
-	{E1000_DEV_ID_PCH_CMP_I219_LM12},
-	{E1000_DEV_ID_PCH_TGP_I219_LM13},
-	{E1000_DEV_ID_PCH_TGP_I219_LM14},
-	{E1000_DEV_ID_PCH_TGP_I219_LM15},
-	{0}
-};
-
-static bool e1000e_check_me(u16 device_id)
-{
-	struct e1000e_me_supported *id;
-
-	for (id = (struct e1000e_me_supported *)me_supported;
-	     id->device_id; id++)
-		if (device_id == id->device_id)
-			return true;
-
-	return false;
-}
-
 /**
  * __ew32_prepare - prepare to write to MAC CSR register on certain parts
  * @hw: pointer to the HW structure
@@ -6974,8 +6935,7 @@ static __maybe_unused int e1000e_pm_suspend(struct device *dev)
 		e1000e_pm_thaw(dev);
 	} else {
 		/* Introduce S0ix implementation */
-		if (hw->mac.type >= e1000_pch_cnp &&
-		    !e1000e_check_me(hw->adapter->pdev->device))
+		if (hw->mac.type >= e1000_pch_cnp)
 			e1000e_s0ix_entry_flow(adapter);
 	}
 
@@ -6991,8 +6951,7 @@ static __maybe_unused int e1000e_pm_resume(struct device *dev)
 	int rc;
 
 	/* Introduce S0ix implementation */
-	if (hw->mac.type >= e1000_pch_cnp &&
-	    !e1000e_check_me(hw->adapter->pdev->device))
+	if (hw->mac.type >= e1000_pch_cnp)
 		e1000e_s0ix_exit_flow(adapter);
 
 	rc = __e1000_resume(pdev);
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
