Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F1265019B4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Apr 2022 19:11:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 988464161F;
	Thu, 14 Apr 2022 17:11:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vxlYhaPGRC_C; Thu, 14 Apr 2022 17:11:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 346F44161D;
	Thu, 14 Apr 2022 17:11:01 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 399131BF39C
 for <intel-wired-lan@osuosl.org>; Thu, 14 Apr 2022 17:10:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 347E860E22
 for <intel-wired-lan@osuosl.org>; Thu, 14 Apr 2022 17:10:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=silicomltd.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xpBaGfES-wlN for <intel-wired-lan@osuosl.org>;
 Thu, 14 Apr 2022 17:10:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
 (mail-eopbgr150094.outbound.protection.outlook.com [40.107.15.94])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3A8FD60E0D
 for <intel-wired-lan@osuosl.org>; Thu, 14 Apr 2022 17:10:55 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fni3Xyd27R5Aw+7GAxF5EQs9UcGV85qFNglzLIFv9QkVKCDSfDUAUZmCnERS7uvi/RU4YAqO3ZLCpLMp1nMZr84cZJo7ujRHMygteZ9m3Aas5YqGo+06REDYdU7C6t6gqRtCZEm+ZAb1vZxWfLWfgidtzhwAm2pZrm7ZZpqHVQ9bLbSDJrmJrWQkjXQdo6olSjeuIBbt+2v928So3iPGI8nL4IQQ1GfV9Vt1nw2hv9KQbZl3KC49t8QKkyKOkG9Ssg0wEIfn4TKDCkx7F8wD17yFxkXW0Dj+5paGk2iMITT7x87FjP4j7Flh4A6C6RYSwDIphg8bUS5OBUbkBrUCgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PsUw5SW/55tFY9Yvr+xUuitWYVQrWGRE1hBlmnwXsOw=;
 b=N9TG/m+jdsJm60+7Vkjp0dkW0ylda+IsZ2mWUOrNcXb21a0kAHzLXMZn0hRtfoHrWkHr49Abzy4sxu6tnZNeaL9OY3Vko2rl6XXBEm7zelUjh4Djf6dGNcZSDfv42lk2wUAlRxC6J74q6K8QnPmnZYMPU0LWTeQIXdwB4DdVym20hkXBKuRiwU3kZ4ug7pjChLxSMXcJVirkBFYYS+0IJBFQaMJDi6lcI0xZyaEm4DMW2T625VfEWAiG5+lFcddU/h/TKXhDUAhwQrhXxuRJ6Zjp7FQJKIbX8z0Lf11YFf47PVbQ2ffiOh2ETvrZbJ2aajJlcNWsI/MV3vf55W5vhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silicom-usa.com; dmarc=pass action=none
 header.from=silicom-usa.com; dkim=pass header.d=silicom-usa.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=SILICOMLTD.onmicrosoft.com; s=selector2-SILICOMLTD-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PsUw5SW/55tFY9Yvr+xUuitWYVQrWGRE1hBlmnwXsOw=;
 b=EhCaZN0HkFwrhE9X8TZRNA1/tHQ4DFDVpJw9n7d56U+TruMxkbjvJKTvnYDeFjSCf+ixkySflu+Sqfe/dhqJHzDk+GUUkKqACp5EXqEbGMV/QUa7Ur6VK9hFS4foBbV4gCkmtsHBUDnPojGOl+s3hhqLqD6TGMA+OgxwsNhurF0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=silicom-usa.com;
Received: from AM0PR0402MB3506.eurprd04.prod.outlook.com
 (2603:10a6:208:17::29) by AM0PR04MB6609.eurprd04.prod.outlook.com
 (2603:10a6:208:16c::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5164.20; Thu, 14 Apr
 2022 17:10:52 +0000
Received: from AM0PR0402MB3506.eurprd04.prod.outlook.com
 ([fe80::193e:c83e:7e13:ddb]) by AM0PR0402MB3506.eurprd04.prod.outlook.com
 ([fe80::193e:c83e:7e13:ddb%6]) with mapi id 15.20.5144.030; Thu, 14 Apr 2022
 17:10:52 +0000
From: Jeff Daly <jeffd@silicom-usa.com>
To: intel-wired-lan@osuosl.org
Date: Thu, 14 Apr 2022 13:10:28 -0400
Message-Id: <20220414171028.22107-1-jeffd@silicom-usa.com>
X-Mailer: git-send-email 2.25.1
X-ClientProxiedBy: BL0PR0102CA0036.prod.exchangelabs.com
 (2603:10b6:207:18::49) To AM0PR0402MB3506.eurprd04.prod.outlook.com
 (2603:10a6:208:17::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 505a0e24-55b7-4244-2f86-08da1e39ba98
X-MS-TrafficTypeDiagnostic: AM0PR04MB6609:EE_
X-Microsoft-Antispam-PRVS: <AM0PR04MB660980986A4EB3197DCC2809EAEF9@AM0PR04MB6609.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZtOKqWAM5AkD5NiKzDn2t4L2C6GHVOjUiSQK9DA2VHgCF8tGIab1/XHQm62WgWtrZ8uCrIOuhDd7+nO88slsuc3QfjITFETOT4omn+1lT3jA9RLj9CScWn9ZJLBFyAHEZuq2yL5WldIDtiM4WrNMxzJmtUJ2Qn3983I2P2RlG3BQV6SZZ+mEFYqnaKS48EjveXIBca1r3y1/9SC2scFKyzI6fwDXjPzYcj9n/+Q2a348SAvuHRTMit/wzPMGoth0NXTTnVrf0QNg4k/vbIvGb+rfX9E+jceOekIUZv0rVSnbbodu+cDypKIQrSK9qhYimvOd+ZBFt+rYHGtg5NQwUwZJSDYumrj3h0R1aCvOfoGTY++VbCqHvrXmxyA+GGJy2b6ntqbMuPJiwxriQjLijIkeG49Tu/8ZJZViju6X2WsFNFum0RDk+GHMZlSv43hcQwOIIkrKw3s+s3KV76+v7JxYxUtyut+0LhQEw976GNpGOI1OnDvQUea6rZKdSYDReDKezMdbl47FOfk+NfTL2+V4YO7pTw/pnPBRHFmPLxWcZUMg9nswxztNqOn5RcS5H94XmQcvYZ81i/ChDsWFrSt943b3hNBqoI8+bbiSUrNx6Nosn1oju8kDp+QTFMdozcaKIO9ZfxLvw8GPshH0a06ZHZqpjHbB0oHXYyOBkjAX/qIGsn/92x2fgLVOAkJSoP3v+0vB3fMZ4hWSI13O3LKScbyYmPCU65GgJW/GrQY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR0402MB3506.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(6916009)(316002)(52116002)(86362001)(36756003)(83380400001)(2906002)(1076003)(38350700002)(38100700002)(6512007)(2616005)(186003)(26005)(508600001)(66556008)(66476007)(8676002)(66946007)(8936002)(5660300002)(6506007)(6666004)(6486002)(219693005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?towj+qJXZ/J5pfdH97iqVVInkEO++zpqvE3U9t+dOR9yNU4VdH/c3K+iyWmk?=
 =?us-ascii?Q?myeJvAVrD2N4USzgTUMPdgslCyTJJ0r97A4kJJ385dH7smsFLZ5DdnUNIolt?=
 =?us-ascii?Q?ptvG03KvKQt5utsysyvC76HNHwrBSnC1KGcy3G8a9GnJUx0hKskEcQhBDtpS?=
 =?us-ascii?Q?9DZt7EsL5KSIFGqHk4Yg5wrh/pI0AbgOU61fzopBLbWlCp7m6qwqnn5ZNM39?=
 =?us-ascii?Q?xR/myhm+l4lv2towDc+2j8EMzjkA+6Kxl4/vKoczUuuomNkPxHCzwXis7uQ/?=
 =?us-ascii?Q?RwErSrpZ3TMqOsitkC3XvGInfdz29w5qH5+dm1FjE/macR+ltMIy+GILUG4r?=
 =?us-ascii?Q?fNHT87H8zYQNFXsLb/AY/kjYLELjeobXwz2tuq7NhGIlLbWpc47iIm8plY+M?=
 =?us-ascii?Q?sfSRnIDZMwTu4fQiJ2M0nplaYodUV/MtvEZ0jU7TXf9ZkFVcXh0P1S6ugVZZ?=
 =?us-ascii?Q?/NXgZvHaO0RO3zq4Ng5SIw522g47emLLjZVxcBXwUlSKRKAMTcrEmnjp18TK?=
 =?us-ascii?Q?A5AsMWWYDmxwhRXGb+iw1Whpkdj4RvNoo/VAAL4Q3CeV2/YRH4Y5qRFexCUX?=
 =?us-ascii?Q?5to5Njhat8KvjipsN/Tdf0pi1SybK9ZgdHX4Vf/VOSiYVZqOb//recI3H5Iv?=
 =?us-ascii?Q?e467Uvt4v5NJG22c7LuZt5kth0plRXd/mN9ubEw11Cg2km7FyLL/s4tP6eJO?=
 =?us-ascii?Q?eZfoOFf3gKlCGzHRAOlGSYmmGAWku5SmJrWFiJEy3nnerAWS5edZHoy8KRKm?=
 =?us-ascii?Q?CWl0t2jbJn3fX44svPrmKOdrSxBtOEHygX6SVYXSEGtvhOGP+CMcXilRXtiN?=
 =?us-ascii?Q?HdPHiwfxKTczoJXlISn1VLI/kGYNEdDxXHex6vLmKiNCsy0Y3R4+syYCIORN?=
 =?us-ascii?Q?dzN+rxu5USf2M/gdNwLUnWUcw3zTrbS6m13B3gMtfQkQKn+p6F9Im43t/1hm?=
 =?us-ascii?Q?QkmZRUVA6uXNSVvjNboIvfJ+x9UgWlbv5NKSq1TPcXlQgK5lRxtIkQGGL3Qf?=
 =?us-ascii?Q?iB1dHcecdfwO4Zp1gMeDngvlsIieXSghiqCbsaCCUTPfuWo9M1h/tSLyKb7Z?=
 =?us-ascii?Q?+7aOiJsWti28pGK25dKuKU+iJrLDlPSJTy3RxW/DBaiaOTw0/hxk1GL9FD0o?=
 =?us-ascii?Q?iWHqGrZkApC7Cl245/6zDRnvuX74y5uBCTBcuXQxYjindESid81QuKy5sS6G?=
 =?us-ascii?Q?msKivLMI4F0Lc9ChI9+UqiHQqfYO/t+hPT63bMPDKl7lobSFiB7ypd705LG1?=
 =?us-ascii?Q?KqeTyRxV/nyzhLNITm9zXlC3CJMJeT3urq2RjgyGkW3vkGV5VjggfuLRfmg2?=
 =?us-ascii?Q?SUSEtt1eb41MU6Qpu+1Azu5vjJcsqdWyLAD6wALa6biTa3zdLqMRhwK07+UI?=
 =?us-ascii?Q?UX1L8q8BTmvc+Yt9wvhEDO1geAE7lLEPma5/s2TSXEgZmERij2Fcv7lH3aoU?=
 =?us-ascii?Q?Z2tDgw2EBUYgBjfO/pDTWMAp/S4XHAoOyzEqQEN8fO3A6D62CWj67LZ8opao?=
 =?us-ascii?Q?fr5K2xPBtbhvaj55ngKq7+bhaO6ns5d+cT1y0Exc9IzkRSsJVBltAkCf+/EA?=
 =?us-ascii?Q?iYcY98bwCQRKpFZlT/BAz6p9MPwIhYdD7mAsooVLHNrIfuiJ+wQnW3gV0wRJ?=
 =?us-ascii?Q?xZVpusHN+Fv9JW2WnU6Hqb7Ma4XB9mF6ubPXRtxqiqCys1L81ClaQ5o+35cI?=
 =?us-ascii?Q?Xs4fo4GhfsZNwjA8fxHnGr3abK9qWYHisZmW3SINKMxOpuv1Q6zYqRLUzBeb?=
 =?us-ascii?Q?8hWR0caPkQ=3D=3D?=
X-OriginatorOrg: silicom-usa.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 505a0e24-55b7-4244-2f86-08da1e39ba98
X-MS-Exchange-CrossTenant-AuthSource: AM0PR0402MB3506.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2022 17:10:52.0413 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: c9e326d8-ce47-4930-8612-cc99d3c87ad1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: e73tVseld67yZb2+iYwsvc3XU8bRjaUkmLLPwJQS9AFeQzobRurcEWpSg5KfZle9ekcbGQqf0ItaUhzLVofiAw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6609
Subject: [Intel-wired-lan] [PATCH] X550EM NICs do not support 1G Cu SFPs by
 default from Intel,
 this patch enables treating these SFPs as 1G SX SFPs via a module parameter
 similar to the parameter that allows the driver to be able to recognize
 unsupported (by Intel) SFPs.
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

Signed-off-by: Jeff Daly <jeffd@silicom-usa.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  8 ++++++++
 drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |  1 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c | 16 +++++++++++++++-
 3 files changed, 24 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index c4a4954aa317..0d638e4bbc60 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -156,6 +156,11 @@ module_param(allow_unsupported_sfp, uint, 0);
 MODULE_PARM_DESC(allow_unsupported_sfp,
 		 "Allow unsupported and untested SFP+ modules on 82599-based adapters");
 
+static unsigned int cu_sfp_as_sx;
+module_param(cu_sfp_as_sx, uint, 0);
+MODULE_PARM_DESC(cu_sfp_as_sx,
+		 "Allow treating 1G Cu SFP modules as 1G SX modules on X550-based adapters");
+
 #define DEFAULT_MSG_ENABLE (NETIF_MSG_DRV|NETIF_MSG_PROBE|NETIF_MSG_LINK)
 static int debug = -1;
 module_param(debug, int, 0);
@@ -10814,6 +10819,9 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (allow_unsupported_sfp)
 		hw->allow_unsupported_sfp = allow_unsupported_sfp;
 
+	if (cu_sfp_as_sx)
+		hw->cu_sfp_as_sx = cu_sfp_as_sx;
+
 	/* reset_hw fills in the perm_addr as well */
 	hw->phy.reset_if_overtemp = true;
 	err = hw->mac.ops.reset_hw(hw);
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
index 6da9880d766a..0ffe09c0d5a8 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
@@ -3645,6 +3645,7 @@ struct ixgbe_hw {
 	bool				allow_unsupported_sfp;
 	bool				wol_enabled;
 	bool				need_crosstalk_fix;
+	bool				cu_sfp_as_sx;
 };
 
 struct ixgbe_info {
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
index e4b50c7781ff..aa12d589c39b 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
@@ -1609,6 +1609,8 @@ static s32 ixgbe_setup_ixfi_x550em(struct ixgbe_hw *hw, ixgbe_link_speed *speed)
  */
 static s32 ixgbe_supported_sfp_modules_X550em(struct ixgbe_hw *hw, bool *linear)
 {
+	struct ixgbe_adapter *adapter = hw->back;
+
 	switch (hw->phy.sfp_type) {
 	case ixgbe_sfp_type_not_present:
 		return IXGBE_ERR_SFP_NOT_PRESENT;
@@ -1626,9 +1628,21 @@ static s32 ixgbe_supported_sfp_modules_X550em(struct ixgbe_hw *hw, bool *linear)
 	case ixgbe_sfp_type_1g_lx_core1:
 		*linear = false;
 		break;
-	case ixgbe_sfp_type_unknown:
 	case ixgbe_sfp_type_1g_cu_core0:
+		if (hw->cu_sfp_as_sx) {
+			e_warn(drv, "WARNING: Treating Cu SFP modules as SX modules is unsupported by Intel and may cause unstable operation or damage to the module or the adapter.  Intel Corporation is not responsible for any harm caused by using Cu modules in this way with this adapter.\n");
+			*linear = false;
+			hw->phy.sfp_type = ixgbe_sfp_type_1g_sx_core0;
+			break;
+		}
 	case ixgbe_sfp_type_1g_cu_core1:
+		if (hw->cu_sfp_as_sx) {
+			e_warn(drv, "WARNING: Treating Cu SFP modules as SX modules is unsupported by Intel and may cause unstable operation or damage to the module or the adapter.  Intel Corporation is not responsible for any harm caused by using Cu modules in this way with this adapter.\n");
+			*linear = false;
+			hw->phy.sfp_type = ixgbe_sfp_type_1g_sx_core1;
+			break;
+		}
+	case ixgbe_sfp_type_unknown:
 	default:
 		return IXGBE_ERR_SFP_NOT_SUPPORTED;
 	}
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
