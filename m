Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E0035019F1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Apr 2022 19:20:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DCB9B82B49;
	Thu, 14 Apr 2022 17:20:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id om1NU7tidgCw; Thu, 14 Apr 2022 17:20:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C5BF582B1E;
	Thu, 14 Apr 2022 17:20:40 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5B7BD1BF39C
 for <intel-wired-lan@osuosl.org>; Thu, 14 Apr 2022 17:20:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 55FD660E51
 for <intel-wired-lan@osuosl.org>; Thu, 14 Apr 2022 17:20:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=silicomltd.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TWxC2igGGiVU for <intel-wired-lan@osuosl.org>;
 Thu, 14 Apr 2022 17:20:34 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
 (mail-eopbgr30131.outbound.protection.outlook.com [40.107.3.131])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 858B560E50
 for <intel-wired-lan@osuosl.org>; Thu, 14 Apr 2022 17:20:34 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OITG4zf/JWDu4RrRPfnjfYO5TLJM2qOQyompa+jZaRiKuXUY4tW3dZjs1ws4xFx+lUlg0X0lRrZJp9CoIZ2Na/S1J1fAcu5nPyJ8YgR57YdBUAJEFVm/rSqAEH8U4rCyCDR0azd6+T0543YecSVKO2IDHhtwo1Zmgd9iiylEhVNCu6zCzC/w5hv7dbVF8kyLyqLo3XEPhZfKr1boYuv/ZiO+MH4t08ZA5UBFpsU57cQ5gYzXbntAD0GHzHy82wy64N3HVUQokziMWOBbgeUKG1uuImMyzH6yOSR/0MdjwqPClSb+h9o0LbzsRwk261nls87+BgesBwwedrRdltsFJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/+Ru3FKE69Cq4GmFwwDP2OatSnQznOfsv1jmfh/kt6g=;
 b=LiXHMIyw1IdcQ6TZDV84yrh8nwKvy+JIS85HOEVnxqZlR2dH819Ds0UkycC9zw3XsUos5JDzCljTiy+VuhFoNBJZ7rgPzhZ1NsK+dihQ0zymHOZu5500ZIO8694nj92lAQagHlwpL/Wnp+AN1eTrYyE6JtnCsRHzipl+aXr5bhliUJKqXxUp3bmDAFgVFgzU9W4M6Gxm8me+1sVm6ua46zC3nV2buG7I8ysLVxCvLoXjJLhQrFvPUa9r8uiz7sWpXkzhkS82uljjPPWvrO5ptCB8N450cqvh2PRnoGQQEK9HjkGa0OgdZ/lc4Tb31ZIRWq1HL/ZisdiuBSzuqZzzXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silicom-usa.com; dmarc=pass action=none
 header.from=silicom-usa.com; dkim=pass header.d=silicom-usa.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=SILICOMLTD.onmicrosoft.com; s=selector2-SILICOMLTD-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/+Ru3FKE69Cq4GmFwwDP2OatSnQznOfsv1jmfh/kt6g=;
 b=qDOrzpZiD3pZEe5xiE7ip3r4BSzjaHjnmIDfnXPi/RiE8B5OhkG3WZDktMuJmLb3/jzZznQCcwxg5JF11B3i+Lsjhs16UkDs1wI/au9UcfVakt6gn+o6dvfXGZSOjRz4TXZh/2VPaPSJEkWmpcX9i0CqX9NdhDID1Jfy39jeLtk=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=silicom-usa.com;
Received: from AM0PR0402MB3506.eurprd04.prod.outlook.com
 (2603:10a6:208:17::29) by AS8PR04MB8724.eurprd04.prod.outlook.com
 (2603:10a6:20b:42b::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5164.20; Thu, 14 Apr
 2022 17:20:31 +0000
Received: from AM0PR0402MB3506.eurprd04.prod.outlook.com
 ([fe80::193e:c83e:7e13:ddb]) by AM0PR0402MB3506.eurprd04.prod.outlook.com
 ([fe80::193e:c83e:7e13:ddb%6]) with mapi id 15.20.5144.030; Thu, 14 Apr 2022
 17:20:31 +0000
From: Jeff Daly <jeffd@silicom-usa.com>
To: intel-wired-lan@osuosl.org
Date: Thu, 14 Apr 2022 13:20:20 -0400
Message-Id: <20220414172020.22396-1-jeffd@silicom-usa.com>
X-Mailer: git-send-email 2.25.1
X-ClientProxiedBy: BL0PR0102CA0017.prod.exchangelabs.com
 (2603:10b6:207:18::30) To AM0PR0402MB3506.eurprd04.prod.outlook.com
 (2603:10a6:208:17::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c0b71002-2e80-4236-8ebb-08da1e3b13d2
X-MS-TrafficTypeDiagnostic: AS8PR04MB8724:EE_
X-Microsoft-Antispam-PRVS: <AS8PR04MB87245A351F2265B1E53CD7E1EAEF9@AS8PR04MB8724.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Aznwj04jK0QQGWF1fKkbb2ExFF3+7c1euXiGLikXIfXS/iAXLPvMioYknn3myRqYP8YnZZdPd+omn3qeS4jDvQv3BtRSmpAXsHhfJKU2+xo8iypU5Fwfr82K4+sCU9s7/v+X+kP847qsvKRTGVnDcl2y+QNi1Z6pI5pwOpsOjDL95Uq6SJqbylWtq9TlclBFtRiSF4bbbtOJCn/pBjXT9XIb/artvFnAb9KJAISeEAeQmN4RxvkWBQD5htZhASGOkrBnheeZ3smXO0gKlIKWu2s0XKUm5vBeU0zjr6sOcYIWDHMbfP/FGVU2u7MXf24iS7hvKeRRL7LMdyW0NMdZJkIUlvFtJBjqH2+WN/j/G21krgCf/l958L/M7z5xM7G+nE85TfRULiR25sQY3RJ0kCkig0auI8p5lcMbO+hgfEXa6yla0fHOBVvfarOG/bN+ZOKYlReZXVkTg75liA5rVL3VD1BNs0jkC8CmcHFGra9BgWWV5J4ejXO16t90tFjep4dND/fj3BxtsMttNRG1iP6RPX9xTDAY+ApRXON7DyjNhKA2agP3HyD9BPPZNaLZpZUYcUTgZMSwtFH6g/I80uJUgRwF5fj1bQer17hXcApId4QtHA67eUGqOUYk3sqVdwdkessZne0TBAfpOc2P+ght87sG+mYnhgtt1ZMaarFi3R4MS2ZoFObYVwuIIFBcmP91VBaeGmohpKlPDASRFQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR0402MB3506.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(8676002)(26005)(83380400001)(36756003)(6512007)(5660300002)(38100700002)(38350700002)(186003)(66556008)(66476007)(66946007)(2616005)(8936002)(2906002)(1076003)(6506007)(316002)(52116002)(86362001)(6666004)(6916009)(508600001)(6486002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?N70ABBVCmgSvXi3Cr5J3cQ4g1GDGCF8EjFCFdDiTlZFQlpkNY/l8T56Dfe/l?=
 =?us-ascii?Q?bNO1bhkmf2NDCC6c/2Iz/iRHi918sBJ9Vi+MrZcdKMjPRoXLYjTWQudHgWRB?=
 =?us-ascii?Q?lttTJrpk6DgPgICn7wWQwjb2dFZvgOqAPfFQE4z9TZlpIkeQmDouYbjT0+0F?=
 =?us-ascii?Q?+NGxyLYZCbF6o3iWgR0/jDF906EZPzEtkg/nBJEUC5xh6TiX19kZtLnJz2Lg?=
 =?us-ascii?Q?Rxm7LpPFzt0vLHP1GrPJlNwLjbQXux0KO1uACdL+qWMZO9QxEfNwjLTqc+vK?=
 =?us-ascii?Q?Nbd/LZGQafaMVVGK2jlkLC+k6sVW71KupaqQv2LMMGV6ZpIT2CZ7O7JWP9Q7?=
 =?us-ascii?Q?YykP9NpRBTsFfQnLcdUtZAnbZEzwHeqyc0RyPVa7Q2JIQ058r1E70KoXuHsM?=
 =?us-ascii?Q?4HAeMK5EYLvJmw+aF2HguO5M5Dsr5AdF4lYhY4L3M43RWGYeCliyuH2ZwoQj?=
 =?us-ascii?Q?f7PXiLaG3S7cV7Je9hJIppLf/h8fWHCZTV6RptlwonnJ7YIkFwHXvVW7A/LD?=
 =?us-ascii?Q?ZUv/hkjp/wj8/q4fDLHwdu9bjLey8NXi3fNShkT//qajgQTFbRTJrvOmMaM0?=
 =?us-ascii?Q?sDJHjpA+WYnHlHem3IAq0NtY3Yo3vbKa9Cc3CLJ1eeMcO6KMcAxn5XE+Oq0z?=
 =?us-ascii?Q?nR8ZF84qgqSWbT7nQg//PfYSAH+tXLfvRiCfaOrbI1MhGcWLXTnNadmIMfzo?=
 =?us-ascii?Q?mytuZj3mkgczhm87nowLf7JPG5SglbRFVnIZfoDGcsdn7fVwgTjLRkP+kLyS?=
 =?us-ascii?Q?yoKzJiiy0JWSnrlXDliN5Gtyw1s7E0OvESbGChV4v6CU5oqiCToZXzywa8JO?=
 =?us-ascii?Q?wPZVjEA49fmlgoIy3ZP4ETWZFF/CYuph1GEkmN6KHAHUutK6DZswsvDVBV5i?=
 =?us-ascii?Q?beu0bZWNCznKT3Tntm7DXeYaO340Kx56uD4wq6gfIYodD/vIvrzCnvjgdddb?=
 =?us-ascii?Q?fJOu4dxiaWHeFXFpukXd/mBLPydGXIlgBxjcdhQwRCJGG77DYkLnPrFcXdw/?=
 =?us-ascii?Q?OX5oEfROrLTRJy+F+B8EWwuPPL0ID/3DJ6VxUOUmEfsbc4rPjHh8G2pFP2PP?=
 =?us-ascii?Q?v+uqSE8CBK+hkKE4xYaS40e5bLHTy1NhLk66bJvqDelsvhNY4Jtir5mZsNHe?=
 =?us-ascii?Q?0EqKn4CQHsJzzF1z9lxzXjPsGXPeUzMf/saMahvUG/QumkggC1aTAfK8f0BW?=
 =?us-ascii?Q?kfkXwYLTBnnYf0p01u7tu4YSPMfxwDtg73CFVK+gFJqal1Sf+99wK+0aabSP?=
 =?us-ascii?Q?v2K0Jc/7grYy0oYToUULwtypb2YGrlJQTv+9E0NaVwqGVBqLqw6bSxXQjO+G?=
 =?us-ascii?Q?VoQdr9W6IM2JbJH6Wip0ncBLwAW2YnO9xCKezWC217/b2jm/bEy0FAA/AiMA?=
 =?us-ascii?Q?jLCkHQUdtnyC+zcQAQGMgyT27/VjX5ugOZ2ihmxXY4EhSedi1YSNn6s98BtC?=
 =?us-ascii?Q?rGG7o1NHXKXnR6grrSaAQJ2UynviTunUhyJit9Mk8JIaoKVVO/Y60475wq03?=
 =?us-ascii?Q?Qz5zuR3PQBOBDJ57tySIjTkoTwcCzm7z1Qksrk29Td/gqufcP5aoXXLiY+/p?=
 =?us-ascii?Q?pG0V0X3eZYlCJZ/liedWbArrCIoz1nmN12xLas9ECDhDCM4LY3nR/Pf7KB4v?=
 =?us-ascii?Q?pChqPyfSq61YNDZbFRYqJe6ZUlM7rnHH3vvGJ7kdxBaTe3Gd/2yW8IJ+KbDS?=
 =?us-ascii?Q?4cW0i8YMI33Pxq5mYbh6AeU1WZFbNiK9fqZa/+JxZQzYVy62X4b62u3jylNL?=
 =?us-ascii?Q?5gYVft9d5Q=3D=3D?=
X-OriginatorOrg: silicom-usa.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c0b71002-2e80-4236-8ebb-08da1e3b13d2
X-MS-Exchange-CrossTenant-AuthSource: AM0PR0402MB3506.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2022 17:20:31.1910 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: c9e326d8-ce47-4930-8612-cc99d3c87ad1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: D7AZv3KFTNNo78nhlf/HTGrQ+HgfoZEYTqtPQYUXOpas6DoSWNQRZfnj5hULrADxaYq0pXt+Vu2ZhmrrWMGXzw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8724
Subject: [Intel-wired-lan] [PATCH] Treat 1G Cu SFPs as 1G SX for X550EM
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

X550EM NICs do not support 1G Cu SFPs by default from Intel, this
patch enables treating these SFPs as 1G SX SFPs via a module
parameter similar to the parameter that allows the driver to be
able to recognize unsupported (by Intel) SFPs.

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
