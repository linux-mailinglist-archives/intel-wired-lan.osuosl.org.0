Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 04568501C8C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Apr 2022 22:20:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B414783FA2;
	Thu, 14 Apr 2022 20:20:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jwP490EFo5Gd; Thu, 14 Apr 2022 20:20:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A471C823E0;
	Thu, 14 Apr 2022 20:20:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B5A2F1BF393
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Apr 2022 20:20:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A1683409E0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Apr 2022 20:20:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=silicomltd.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yfzUsZSenSoa for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Apr 2022 20:20:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
 (mail-eopbgr80135.outbound.protection.outlook.com [40.107.8.135])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0465440142
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Apr 2022 20:20:34 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=So2/mIlvllklREj9Y0goO42D33DmF/DbmL4cwayL6Or4agQlTX4THjiBRUdexbnE46AKjl7TiPQ48TTdscmXt8Ou4AJzqBGdHRehJpLex7p6/HqqQYklW5SJm4CUUFSL/w8lPm4Ji7N2VXgHIdDhA+uR/trS8TyaagGbEvhgzHSIMpyei2DXpMGdFpaL1QoLViwkaA7zx/g+MYBuoWVqvQ1MW6YA586v9fNGjZxFauAz7a+TKVn3tA9m1QGp3J78TVnpG+exP4GJNuNrfeQIpEwIpZNxtr1JoEbrmQO6/4sZ0Qf4B8IqxGYbd+0seITTc1Ig41Wh2UBT9UHsVFkw6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a+wHA5EI11JerEr5o/Vhk8DA5Zqvje8Co8z0AHceqvw=;
 b=isDp+ThzHW8dyMp9yyMHyyw0hunDjLOPEEVxAAOhyp1yPyVt5cNeR1h44xm/112kmaLQ8EZKRSCkDUw/DfSxm3/VmHGnpFI0hM3fliVB7PV4qMkQo6SNRrezUYNxuVkAe1U1cY93blG8JnHgu78sXNsbTJY1R03iWEObsKwZqucqo8CrkgrblFoJRwrA4EmATKaNYuFT33st7dOwQ3hq25HTJpwL47xgDIsasla1iU3j56ku5CLGsDWT2QpBTKZsfkk1GGT1gpIrZ6mH6kl6soKfNaI1lmou28/JuLLm+JdfUO0luEBA6Ui47vyuoukFP0sndxekBRWPlDedQCe0QA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silicom-usa.com; dmarc=pass action=none
 header.from=silicom-usa.com; dkim=pass header.d=silicom-usa.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=SILICOMLTD.onmicrosoft.com; s=selector2-SILICOMLTD-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a+wHA5EI11JerEr5o/Vhk8DA5Zqvje8Co8z0AHceqvw=;
 b=Juld03Y6jj279/6kp6hAFfw7hGw5xdTZtZQklArTy8tMzA2X7QHLKc8omhY8TQ/Nkf9ulHhgIUcq3apIal6kjYJpHAWolze41N7CkWfuNj0JYYehk+holEwZXkdLuzISSDRW0kDcD6xizndelGOsx+3z0XOeholTsC1y6GkihdM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=silicom-usa.com;
Received: from VI1PR0402MB3517.eurprd04.prod.outlook.com (2603:10a6:803:b::16)
 by AS8PR04MB7654.eurprd04.prod.outlook.com (2603:10a6:20b:290::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5164.20; Thu, 14 Apr
 2022 20:20:31 +0000
Received: from VI1PR0402MB3517.eurprd04.prod.outlook.com
 ([fe80::5dd5:47e1:1cef:cc4e]) by VI1PR0402MB3517.eurprd04.prod.outlook.com
 ([fe80::5dd5:47e1:1cef:cc4e%6]) with mapi id 15.20.5164.020; Thu, 14 Apr 2022
 20:20:31 +0000
From: Jeff Daly <jeffd@silicom-usa.com>
To: intel-wired-lan@losuosl.org
Date: Thu, 14 Apr 2022 16:20:18 -0400
Message-Id: <20220414202018.800-1-jeffd@silicom-usa.com>
X-Mailer: git-send-email 2.25.1
X-ClientProxiedBy: BL1PR13CA0322.namprd13.prod.outlook.com
 (2603:10b6:208:2c1::27) To VI1PR0402MB3517.eurprd04.prod.outlook.com
 (2603:10a6:803:b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5c9412a1-d267-4f20-adcd-08da1e5438e1
X-MS-TrafficTypeDiagnostic: AS8PR04MB7654:EE_
X-Microsoft-Antispam-PRVS: <AS8PR04MB7654EAE5ABDFABC38AFAD7AAEAEF9@AS8PR04MB7654.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OByHzZ0mwtnkSOO+w4U5UQIVb071uBO1cLYO1en519PcWPVmFgKkSpg9JlxF+PpiwtdAq89Dcmu4Jla9MTINj5Pu8Oau5FZuDA9QwUnLaE2LWiCF4j7hqk+G087vp2u1EDMiV2qidxH699iEM3JGanW5tik6u6lJZEULZwsiXXEgUma5bVUCD0nNHWUCuM04LhFAlCR9PCwPZENeVpk60QCT3vBJTLJvSdJ9eiUPzWIQrA5NJ18XEZKIiMlnSBT/W4z0mXQm422AbtgjhEejsTQwOXMppjgF8ccjOajmwErOsAhZo9LddPaH4QQ9n6JBr5x1+sAbZeHHX296o6M8uYRWHTP6qE6xVDeudS3gffxloPlWA03mJ8+eMn2x2dW4YsXA5znc+aFhdSH284LNQmZQdi4riP6DdDVp1WEjvhTlPNzJxJ+cFBPXVWfaFr5nJO62SBHvYvutoOqztnzGHPrlMKvvZzCJ2BGCa4i+jjtdUVkxuIQ9ooNfKKyRdGjOnJlJpWbykL/wJjs4QPceVoRUPRl7xS0BJ8WuqOiILQ01EcVuk9qwOFxXRyb18alozPscUWQLusW8qxsM9+IhLS32tXiyDkSEcqtB5pP0L6XHr0KvcNMqh/4VlsChH2K2tnW7XwBK3MWDJ7eLOhKXc5I7G22eeHSKt0YXJhpX3ta+QQ59vL29PJA/UsPh8TwhKrjvq2p/7SFOLvQy8vpr3w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR0402MB3517.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(8936002)(38100700002)(38350700002)(5660300002)(36756003)(2906002)(6512007)(1076003)(186003)(26005)(6916009)(6506007)(54906003)(2616005)(8676002)(508600001)(66476007)(316002)(52116002)(66556008)(4326008)(6486002)(6666004)(66946007)(83380400001)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?TLGCL2YH7cVFv7JBm40Ms6qN13+h0hikrcZMABFjfd3H0MQkDjMv9yvfe35o?=
 =?us-ascii?Q?uqv3bTfVPKcSpccCpuShvzIl49flsIQxTSh8aPHR7/NWArH9Y6WbqcHur2kM?=
 =?us-ascii?Q?k8WLh+tFe8/1tJsMlybKRCaloLJr6m9pTdDbxOMzCQKOW0VT/2MfpevGOfWl?=
 =?us-ascii?Q?zezp7bqFoYovKpIsRrb8wK0tUty/j95eXj2K4mmKa/mMga6L8w4Cf6Xxwo6X?=
 =?us-ascii?Q?Jy3WBSYWTcP8STyYyqdDDE2gzwq/LFcv3cmZ1FS/tGv2nYWHy6b1JE+85Oiy?=
 =?us-ascii?Q?msZ8+vnrT3oRCquZETUDP/ruBGUUZJ1PYneaH4SqDHNjUE/3WZlwMisoTW2V?=
 =?us-ascii?Q?3Qp+cNBGpsjV3c//AggYV0C3sFCElJJO2uEs9ZD47GZnjrDF7r5aP9K4yfzn?=
 =?us-ascii?Q?5v5ZQy4BJyjS7RhPsPqns8WiKd2VlGd/spoJcq9G8Da1sH5mSjOOaY6CEzZE?=
 =?us-ascii?Q?PMuqbnc9qMigBw2nTFUgB+kPkuqlnAH1qFd/PIV0UxGYKrdce0Eel+EG9D3k?=
 =?us-ascii?Q?vAXI0WpWbudMyXA+kPEfPOMmSLV+l1JBayel9ngCqZplMlO8rwdx1zG9c3de?=
 =?us-ascii?Q?PBh3WCJV1jUVhwplQch9PI8RUHWMAZtVRcn6NzC5liijXjZ41qP41gauvKmg?=
 =?us-ascii?Q?PC1FkQXVeY7nh9nNrgIB4rGggN9yx4R+eDpMFvS5xw52ngjNlJhke3ayNUh8?=
 =?us-ascii?Q?dTK5PFrZq5KZ8QiUYOuquAX88nuK07AyuNR0JKPHC87nRMkYKq5lT+jlLeQ3?=
 =?us-ascii?Q?RXE1nFT1WT39pbENycuT1jmvVpP3/VaTAvcm3FuX23UsowElUkwNpBtZdXOE?=
 =?us-ascii?Q?1oySwMGH17b6KzyLbXO4gD0O04/7iIxN+9+1Pc8/UuGc1L0ufdHuJ0xv5p8V?=
 =?us-ascii?Q?fqEbAkm+M1cGw2AuZ36blMJjBPWHZXknpas0pSwR4souG6j7gli2KxRKnQc2?=
 =?us-ascii?Q?85z35y0wAunJ4g0App/V9uULts156XPKs3sIzS0c+GOsiUMzq/tsUUJtvjTw?=
 =?us-ascii?Q?y7yvrH6rRG1UftsMsycDIfjtt9Zx7JZuQkgJk1yN+8NaiaGMmxLaMT+wW9QF?=
 =?us-ascii?Q?N12sl9v/mhmVzaKaEdHgEfoRLy1n2prbhL9eKW3rsyPn6C7VPavsqeT2pm9w?=
 =?us-ascii?Q?IoBA918WwbJef3rjpJWhYn9qH4MvdwgvjvpD6Geyi3H65G7XUx1oKQzIogwU?=
 =?us-ascii?Q?tqtNWQM22rlyzRldpaihZQNFyNzK56A9BNDam6VpADM9N/HrIyGbb6FvZF2p?=
 =?us-ascii?Q?1FODwn2e/Jk3Ejm2WHTU/C5gnvqkcxqkFynOdIZ6FRd8yHZ8gtR0gUVORRtM?=
 =?us-ascii?Q?n9pU+Z+mFjfu9Ek9cUvHX3pLCbajBf+0cgFA48XLkXS2N4vQJn/gzGkaFEtY?=
 =?us-ascii?Q?TzZO1WeZOtW4gIyRrv7Crjs+18u3WxIhZVvKb2wLFRuyv0RjCy+Y/oiVZCdg?=
 =?us-ascii?Q?f5j4vHxAz9W/9vOAeD4jOqvIV1iVHjWTRub7a52qmS4Oz+98Cd4gzgXlvRxb?=
 =?us-ascii?Q?kUNCjMRBxUh8FiqrYwQk+rrmSOPwd45njkgnmBMlwezCKxqNLjEsEHgTMViW?=
 =?us-ascii?Q?xTeqFNyp3JfUyALPyZzXwx7FR8Hf8vRBJ3FcPt6bWcP/FM827WajwCohZkVf?=
 =?us-ascii?Q?KnxI+osk/L7Hnr2aRph2rFcVsdZByNEZbewj56sSahijEyeXRF2RUrE9gA/8?=
 =?us-ascii?Q?WKCVB+r7OqgkuNID9sNobLc9gLIGUnJZ2CnDVe1jZhuNCItU2ElZXyLVq/52?=
 =?us-ascii?Q?Bf+1d+3//Q=3D=3D?=
X-OriginatorOrg: silicom-usa.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c9412a1-d267-4f20-adcd-08da1e5438e1
X-MS-Exchange-CrossTenant-AuthSource: VI1PR0402MB3517.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2022 20:20:30.9090 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: c9e326d8-ce47-4930-8612-cc99d3c87ad1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: s/zxWjjgLkIyDRS1fnS9NnO5hpSB7MMveCWF5gRBSudjE4Nzk1XCLbbj+ZDULELCxmUDBI51DphwRA6Vd+Ryow==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB7654
Subject: [Intel-wired-lan] [PATCH] ixgbe: Fix module_param
 allow_unsupported_sfp type
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
 open list <linux-kernel@vger.kernel.org>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The module_param allow_unsupported_sfp should be a boolean to match the
type in the ixgbe_hw struct.

Signed-off-by: Jeff Daly <jeffd@silicom-usa.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index c4a4954aa317..e5732a058bec 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -151,8 +151,8 @@ MODULE_PARM_DESC(max_vfs,
 		 "Maximum number of virtual functions to allocate per physical function - default is zero and maximum value is 63. (Deprecated)");
 #endif /* CONFIG_PCI_IOV */
 
-static unsigned int allow_unsupported_sfp;
-module_param(allow_unsupported_sfp, uint, 0);
+static bool allow_unsupported_sfp;
+module_param(allow_unsupported_sfp, bool, 0);
 MODULE_PARM_DESC(allow_unsupported_sfp,
 		 "Allow unsupported and untested SFP+ modules on 82599-based adapters");
 
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
