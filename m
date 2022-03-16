Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A1DF64DB8DE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Mar 2022 20:27:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 46583417D6;
	Wed, 16 Mar 2022 19:27:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y4DRND4ff0Q5; Wed, 16 Mar 2022 19:27:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 35A43417D2;
	Wed, 16 Mar 2022 19:27:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E29E11BF4E5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Mar 2022 19:27:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CC43A400AF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Mar 2022 19:27:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=silicomltd.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZqONKJqM3lHP for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Mar 2022 19:27:28 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
 (mail-db8eur05on2097.outbound.protection.outlook.com [40.107.20.97])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D255F40145
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Mar 2022 19:27:27 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O0HuKPouBODK0cowAL9mtE3MxbZq4Yp9L+EI+warVcR/4/8hwZzuTXOkW6YcY6+8pLyA0Lbk0h440IVHOiPWLN2QzOhXqY0wrLsAVi+2VtDM3MwTiNyrzCvgoUHAbiYWXTXWKinSG+8sA6WhiyTl+/uqc7Vghg5Zg/4SmnClA0Jw7R+CwwS7LoHxZ5cEp/vlJLfQ4RatKMHsdsv31Gf0+bK2EXz1NvprDiVq2NnpHFZxRvpkmoQGKvv2EhR5rzxEszbdaN4N2Wfj+rVVg5C1RYtiI32oWo5Mo6xAM92LOo1FO1wgXIWWZFr225WkMb0v654hWQUZZKuxfpgYuzbMiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EADwajGJsULJdDoLFAxdbsPsbszPc0YvOcEalN1wOUc=;
 b=TJ+qONhO5N4jzB/N/Ic5bdI/qxc//9q4oxU9yayPc+mjR3VMMdiMQW4/q5TWi8fjKOS7hcf+q54Ab6lSCFkV4mkt9ZkcXRdMRKjHoP07nshULBZPC6Zk92hfd+Ps7RwfCr7TfFGvxVhxNwkSPRaMUwvzo5wTH8R1lzaBjduSDz0FJIrFZrFRN3iFMODAxA4+NQghtiWIM13WA5ByUiDVGqGjD+W45rv4yx0m+CGIYwnFRrvU15nwfKHOU6hKSQ1LMfHMHDCFgVwIGNnR9ebOcD1igSy9mr9YJqVnyaCZWukLe5R4TNZpBTLyN2MKWJA4cyaflVYYs50VFvqegjcFYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silicom-usa.com; dmarc=pass action=none
 header.from=silicom-usa.com; dkim=pass header.d=silicom-usa.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=SILICOMLTD.onmicrosoft.com; s=selector2-SILICOMLTD-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EADwajGJsULJdDoLFAxdbsPsbszPc0YvOcEalN1wOUc=;
 b=Sb52SvM38buC37lftMXVuop/aXS5PpqBHiBLUc7N9Fivfehkz/VE4+aY7EQWG99xSlZDap/Kn9i4wnl5XCqITdyx+3FcaB4g3KZW/ZiF0FRYNGIfXjtnWFc8lYtVrqfDpWIjzuhH1HEaY93bQlKMf/pUrpBRyVkOdtSKOg8KSgU=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=silicom-usa.com;
Received: from VI1PR0402MB3517.eurprd04.prod.outlook.com (2603:10a6:803:b::16)
 by DBBPR04MB7787.eurprd04.prod.outlook.com (2603:10a6:10:1e3::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5061.28; Wed, 16 Mar
 2022 19:27:25 +0000
Received: from VI1PR0402MB3517.eurprd04.prod.outlook.com
 ([fe80::3c4b:12e1:8c6b:dbb5]) by VI1PR0402MB3517.eurprd04.prod.outlook.com
 ([fe80::3c4b:12e1:8c6b:dbb5%6]) with mapi id 15.20.5081.015; Wed, 16 Mar 2022
 19:27:25 +0000
From: Jeff Daly <jeffd@silicom-usa.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 16 Mar 2022 15:27:10 -0400
Message-Id: <20220316192710.9947-1-jeffd@silicom-usa.com>
X-Mailer: git-send-email 2.25.1
X-ClientProxiedBy: BLAPR03CA0130.namprd03.prod.outlook.com
 (2603:10b6:208:32e::15) To VI1PR0402MB3517.eurprd04.prod.outlook.com
 (2603:10a6:803:b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7a7bf175-ef67-43f0-1c0a-08da0782ffee
X-MS-TrafficTypeDiagnostic: DBBPR04MB7787:EE_
X-Microsoft-Antispam-PRVS: <DBBPR04MB7787C68CDACEAB3004010D22EA119@DBBPR04MB7787.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0SFhJyghotaUJFjNRWxB+2AU+NvATQ7SCa0gVihM6ExWeqOO7mMFgXWLL6elnkYIZbCsWUL0XbyGUL4N3twkc/EPmP7rvWS8VmIoTwTojNnQtj3Bwy9BfTg85Yu+q8ERKu6n6N94vYFaNvfzeyWq5Ac21qYuwAsYe/HHzDNZxpm6QguQY4l0mC80aBduqTqAntcGy1TburbySUqG0phQ5s3DzNFOKbovcGDyOfI5midAIQTn/BUt0Hk7TeKS2IqA21j8lIMjIjY1r87NE2kAl50Z5kEQWAhNLZ07KHoSHfU41zE7uEKDHslHsJ54/Shzo5hg1VqxYnKzg71x72TkeGIuKZksSB1s3Sl05tSoUaw7QduWCret1vNBrUytD8zRmy+KbfgC0Ogh8KpyCIAXofpbDfSAsGuxvFkIHMKQaBW9kDLbp76tbMQFNm/3i9xYxitkOVzt0J5cO4KNN2YaLcGV1cAM+UYWCCWFHl778mx1WW06mQ5LlSAc+/8A035miBK6yOmBgjTAqeQVpXjeI8wZPpFp6ImATR1x2Lzd2cSCcxr/vAMx44SifB/sazeisvcay15shTi4RPKf4IDG1svi3G7QzpTUwhwfCtcpr92yjeTs9INktwk/rBc6941lpxMPQDBfEXIXg5Cx6ugnGoQdIGsActovulq0J0joUpoPtT89+zVYEHb86jlY9yUDLCbufJedmuuqSyNebUaD1w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR0402MB3517.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(2906002)(316002)(66946007)(4326008)(54906003)(8676002)(66476007)(66556008)(38100700002)(8936002)(5660300002)(6916009)(86362001)(6506007)(6486002)(36756003)(26005)(52116002)(2616005)(186003)(1076003)(6666004)(6512007)(38350700002)(508600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?BPNHJynC66/jIAKg1npmustlVHD8H1HLzKrnnPd6oksaHa8jQg0T4x+8g8i3?=
 =?us-ascii?Q?I6Zbmz52YtN42dN9cCoOdKdjaWHTNtUyPHhsfzw2itqS7Bxnchrp0yx+Pqw6?=
 =?us-ascii?Q?b3zz2a48pP00NubC4QH7k/ShsYTA+UzEBxmSfe2+NlgEvy3KweXFI2GzQaU3?=
 =?us-ascii?Q?23bcZKQc85anYAx/UT7pm9z35gilHkK+QuwRxPxw32C1fHL2Px0+NWZqr4XP?=
 =?us-ascii?Q?+spiDlZ62167E0Bdbho/3qhLmqTtKV1EJ8NOmLew5u1s7QKIdpFz/C7ZL24X?=
 =?us-ascii?Q?VmWku0xT1TMF1ZaWgja7nhnS1oj0wj5lNrp4/YU90E13srJVL0vPDNaLt0Z2?=
 =?us-ascii?Q?9ljgRjXxTJ0zDknCOtliJn0lpBCSnEeC6lkMIWsCVSVIEX+9ZsbdxCzvmBn5?=
 =?us-ascii?Q?7a+cZv1S/MBxLYsfaEHata5T+J9W/Lyt6DZ068GwSHBLFTuTGCC6GsSvwX4I?=
 =?us-ascii?Q?pW5+2JqwyrnmkzkqWTow3eeVa9WOZg41J7T1/AM2jqv3LInyCrNVXjR1QJUu?=
 =?us-ascii?Q?yDqjscplrAuJ3omb7oBLRIMdC/BmpSn5ZAAN7OtcpCSuVf8YwDXX2Rp8fYwg?=
 =?us-ascii?Q?YTWm3+rsI8IkPcSJB6NBm6wV/CoXFqkqbgdf8/o99QniyZjCvBS+adBzvKQF?=
 =?us-ascii?Q?v0S6uc2it3YTlIZOmbZhPr00Tq4xL+bKIX8/eBj4A+p4vyNAs6KHlgThGlip?=
 =?us-ascii?Q?V2So1t3eOK4n9pJ7oFEuuoLvWj/dYngCXeHjaQ914UuwhcGoP0fwvX8h63l1?=
 =?us-ascii?Q?bMFu0n2OtP3xf0yEwxQBz/OJYaOjuE3fgxcYu2OUWKZ1arZLVY80xTM0wC5z?=
 =?us-ascii?Q?7ODE3ahNRZs4NQVKIZYM7RwTfoyGviug6ojlpvcOgLgslE9zng56GpHl2gPy?=
 =?us-ascii?Q?oQpAgrJQSSJfA4oJwpJB/rtg+dYjFcJAXQIuE0r7JiMdqjAAc3atMnRR/SqR?=
 =?us-ascii?Q?zmvC5Q4isvYz0MLPpQ7UjIyF2k15E9Sldd2BdQbj+m3uK9ykIxLNdKVJXL7y?=
 =?us-ascii?Q?/XYHuSmSt3/sC5roW26A7I6ec6JfeJGW/RzvhjaM4Z/+Shc7U7sPcE3KvIhm?=
 =?us-ascii?Q?dxTjgktUYTfXQ0rExfEHfx1LzbIhQs0a9YK2cebyVD87vTCrTDod6KP3Rbxn?=
 =?us-ascii?Q?kV4j3gbVF7RCDrNZH/6Kp72Wq49Gmxk/9Ty0+Gui41SBHDDqcJjc2AcpjWXe?=
 =?us-ascii?Q?1pkh8ANhhOd2e7XZ5yh7djKbxLL7TNVffDpY7BeXJdBNDqBmMowl+NuV46JA?=
 =?us-ascii?Q?4b3q1Rl2aCmjZIXPyQmny31SAXrlK1FJQ4eEnlFe5+sKRK+cbkdv1bPz6zdU?=
 =?us-ascii?Q?5rtGfppo/P8hWRxckFyaIwjklrsnZjuQl5df3WkNae6xZFw9Dlqb7uMup3IV?=
 =?us-ascii?Q?t6HxajLXwldB8u4cyLbaCtNGy3cwiHkDryuJBTksJmSIQAONIkKUUk0lvJiY?=
 =?us-ascii?Q?tC4z0f47Oree6S8IHSsZ6fb7jeYWhOsy?=
X-OriginatorOrg: silicom-usa.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a7bf175-ef67-43f0-1c0a-08da0782ffee
X-MS-Exchange-CrossTenant-AuthSource: VI1PR0402MB3517.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Mar 2022 19:27:24.9315 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: c9e326d8-ce47-4930-8612-cc99d3c87ad1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: V7LjiOHeaykKXKs/pb2AqTFSEYo9/otJosMHf/iLvowUrMCUqk4GsRB83FOKnAQCkrAdHBwLEYF95mZtZhLT3Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7787
Subject: [Intel-wired-lan] [PATCH] ixgbe: Manual AN-37 for troublesome link
 partners for X550 SFI
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
Cc: "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Some (Juniper MX5) SFP link partners exhibit a disinclination to
autonegotiate with X550 configured in SFI mode.  This patch enables
a manual AN-37 restart to work around the problem.

Signed-off-by: Jeff Daly <jeffd@silicom-usa.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |  3 ++
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c | 50 +++++++++++++++++++
 2 files changed, 53 insertions(+)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
index 2647937f7f4d..dc8a259fda5f 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
@@ -3705,7 +3705,9 @@ struct ixgbe_info {
 #define IXGBE_KRM_LINK_S1(P)		((P) ? 0x8200 : 0x4200)
 #define IXGBE_KRM_LINK_CTRL_1(P)	((P) ? 0x820C : 0x420C)
 #define IXGBE_KRM_AN_CNTL_1(P)		((P) ? 0x822C : 0x422C)
+#define IXGBE_KRM_AN_CNTL_4(P)		((P) ? 0x8238 : 0x4238)
 #define IXGBE_KRM_AN_CNTL_8(P)		((P) ? 0x8248 : 0x4248)
+#define IXGBE_KRM_PCS_KX_AN(P)		((P) ? 0x9918 : 0x5918)
 #define IXGBE_KRM_SGMII_CTRL(P)		((P) ? 0x82A0 : 0x42A0)
 #define IXGBE_KRM_LP_BASE_PAGE_HIGH(P)	((P) ? 0x836C : 0x436C)
 #define IXGBE_KRM_DSP_TXFFE_STATE_4(P)	((P) ? 0x8634 : 0x4634)
@@ -3715,6 +3717,7 @@ struct ixgbe_info {
 #define IXGBE_KRM_PMD_FLX_MASK_ST20(P)	((P) ? 0x9054 : 0x5054)
 #define IXGBE_KRM_TX_COEFF_CTRL_1(P)	((P) ? 0x9520 : 0x5520)
 #define IXGBE_KRM_RX_ANA_CTL(P)		((P) ? 0x9A00 : 0x5A00)
+#define IXGBE_KRM_FLX_TMRS_CTRL_ST31(P)	((P) ? 0x9180 : 0x5180)
 
 #define IXGBE_KRM_PMD_FLX_MASK_ST20_SFI_10G_DA		~(0x3 << 20)
 #define IXGBE_KRM_PMD_FLX_MASK_ST20_SFI_10G_SR		BIT(20)
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
index e4b50c7781ff..f48a422ae83f 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
@@ -1725,6 +1725,56 @@ static s32 ixgbe_setup_sfi_x550a(struct ixgbe_hw *hw, ixgbe_link_speed *speed)
 				IXGBE_KRM_PMD_FLX_MASK_ST20(hw->bus.lan_id),
 				IXGBE_SB_IOSF_TARGET_KR_PHY, reg_val);
 
+	/* change mode enforcement rules to hybrid */
+	status = mac->ops.read_iosf_sb_reg(hw,
+				IXGBE_KRM_FLX_TMRS_CTRL_ST31(hw->bus.lan_id),
+				IXGBE_SB_IOSF_TARGET_KR_PHY, &reg_val);
+	reg_val |= 0x0400;
+
+	status = mac->ops.write_iosf_sb_reg(hw,
+				IXGBE_KRM_FLX_TMRS_CTRL_ST31(hw->bus.lan_id),
+				IXGBE_SB_IOSF_TARGET_KR_PHY, reg_val);
+
+	/* manually control the config */
+	status = mac->ops.read_iosf_sb_reg(hw,
+				IXGBE_KRM_LINK_CTRL_1(hw->bus.lan_id),
+				IXGBE_SB_IOSF_TARGET_KR_PHY, &reg_val);
+	reg_val |= 0x20002240;
+
+	status = mac->ops.write_iosf_sb_reg(hw,
+				IXGBE_KRM_LINK_CTRL_1(hw->bus.lan_id),
+				IXGBE_SB_IOSF_TARGET_KR_PHY, reg_val);
+
+	/* move the AN base page values */
+	status = mac->ops.read_iosf_sb_reg(hw,
+				IXGBE_KRM_PCS_KX_AN(hw->bus.lan_id),
+				IXGBE_SB_IOSF_TARGET_KR_PHY, &reg_val);
+	reg_val |= 0x1;
+
+	status = mac->ops.write_iosf_sb_reg(hw,
+				IXGBE_KRM_PCS_KX_AN(hw->bus.lan_id),
+				IXGBE_SB_IOSF_TARGET_KR_PHY, reg_val);
+
+	/* set the AN37 over CB mode */
+	status = mac->ops.read_iosf_sb_reg(hw,
+				IXGBE_KRM_AN_CNTL_4(hw->bus.lan_id),
+				IXGBE_SB_IOSF_TARGET_KR_PHY, &reg_val);
+	reg_val |= 0x20000000;
+
+	status = mac->ops.write_iosf_sb_reg(hw,
+				IXGBE_KRM_AN_CNTL_4(hw->bus.lan_id),
+				IXGBE_SB_IOSF_TARGET_KR_PHY, reg_val);
+
+	/* restart AN manually */
+	status = mac->ops.read_iosf_sb_reg(hw,
+				IXGBE_KRM_LINK_CTRL_1(hw->bus.lan_id),
+				IXGBE_SB_IOSF_TARGET_KR_PHY, &reg_val);
+	reg_val |= IXGBE_KRM_LINK_CTRL_1_TETH_AN_RESTART;
+
+	status = mac->ops.write_iosf_sb_reg(hw,
+				IXGBE_KRM_LINK_CTRL_1(hw->bus.lan_id),
+				IXGBE_SB_IOSF_TARGET_KR_PHY, reg_val);
+
 	/* Toggle port SW reset by AN reset. */
 	status = ixgbe_restart_an_internal_phy_x550em(hw);
 
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
