Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B611F42B9D1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Oct 2021 10:01:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 410AD40474;
	Wed, 13 Oct 2021 08:01:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x3T_bbplooOr; Wed, 13 Oct 2021 08:01:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F10D440473;
	Wed, 13 Oct 2021 08:01:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 687941BF5DE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Oct 2021 08:00:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5698A6080C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Oct 2021 08:00:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=oracle.com header.b="IhZQqH+A";
 dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com
 header.b="veloyS2P"
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OcIgiaTp1pc6 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Oct 2021 08:00:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com
 [205.220.177.32])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 13F5B60773
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Oct 2021 08:00:56 +0000 (UTC)
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 19D7GnqY028774; 
 Wed, 13 Oct 2021 08:00:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : content-type : mime-version; s=corp-2021-07-09;
 bh=SAhrCk5o7BZWtBQZ+k0qY2hOXMjLjfLVzfnyJ5tYTNs=;
 b=IhZQqH+A3n/ygxXmxZ8yYpiQNrRsbLsbIKtYTIte4Fu4R2DkOrPyHdJdM2f6CQM3g08F
 ALVWNh6XofgTF2syjD4yLGzGhw0iziWoyWl9heTJRBwo2McWs+pCXtMuF0uMZ4FEuCuZ
 s/o5uNdn9Oloif7zMfw8p8mz32v1DOWi8A6YjPM2tOc9JUj0K7134tYWJYfQp8hnEue3
 P6Pf0v0gSmnTq5efkrUGkVkugeCiD7NhCD6VZdvioOmdRusSX4OL9L1hzZzh2zfKCaJI
 0+55L7Hb55kN/4cWsGW1YMcx1RwfxybO/zSNzUnyxKc93BHPR9dAifZwRJT4VWEjnps0 Dg== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by mx0b-00069f02.pphosted.com with ESMTP id 3bnkbh23e9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 13 Oct 2021 08:00:45 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.1.2/8.16.1.2) with SMTP id 19D80TOU195243;
 Wed, 13 Oct 2021 08:00:36 GMT
Received: from nam10-bn7-obe.outbound.protection.outlook.com
 (mail-bn7nam10lp2108.outbound.protection.outlook.com [104.47.70.108])
 by aserp3030.oracle.com with ESMTP id 3bkyxt2555-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 13 Oct 2021 08:00:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BjMu7898ODLIhhnJZ5fidL6LC7bnS/njZy2ggZEccssuwAL6B1n9j2Kfxbs/CW7f5wtzFg2/8bXMkgTF790gOdsjWcFij82IwNGOpb/KQpRwinVRw2q62JSJqP7DVHywrylE9r/h7ubj4wVDJqeW52UtOLggAYV/6j9jBjHCt8FA+RNf6fsGWYFieYvu2HuUwJJHuoq/dZL0zYMgaUDeZRdnrT6AYCWgysIDXuh/RWjlljuj8cvOXwoBV0uxGmvyrcUY/42lrOy7aVJjgS6PevrAu3xiiQ8WcMRZ0KcWI2c/Nh5TOg1uLfW7OaKpFC11wgEInJC51NMaaK+3OGpMwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SAhrCk5o7BZWtBQZ+k0qY2hOXMjLjfLVzfnyJ5tYTNs=;
 b=KffAKgIerpI7rKI11f8+wgryWawswxixzU1/J9uZ5QYbcwdrbNrwl037+uTwHt4/zUIV/7lNKRSRcbW4m6b52iNGTvm7aUmukluiHn3nYiNLayM/cbeYoKarPRJCHayQtSD6aw/leefaSSkImL8GZ2yvEvQP7wNayddByz3Wg4qhNskGzyGoSGancFprTVEyrksALcxv5AuhEp1Wn6y2Nqrwx2F/QL83ejZbjwtYlCnPjhuNSFLV8TBf6xmMJ5Znt7N6XxAnswSz13SsGHucYGIPSs3kV7EwTaxy7X1K1kje1DGvebrjWH1FEx5Eic9pm18rBWfh6nd/ZA1acT9NRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SAhrCk5o7BZWtBQZ+k0qY2hOXMjLjfLVzfnyJ5tYTNs=;
 b=veloyS2PDRZogsaJEki6lYP9LAX/z6hS3j7ljcULjjF9Lo/SIGv5e8rt5s5b6cPIxSYuPa5o1XDa6O7kK8BxsBFeZGBPVPqI3JREtYsgr2yrltPi7VHXY9bu1pxAYh+mycVJF1HrHs4Zu//oIero78b9UDppoEAnAfyJpXV+3q8=
Authentication-Results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=oracle.com;
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by MWHPR1001MB2127.namprd10.prod.outlook.com
 (2603:10b6:301:33::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4587.25; Wed, 13 Oct
 2021 08:00:25 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::d409:11b5:5eb2:6be9]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::d409:11b5:5eb2:6be9%5]) with mapi id 15.20.4587.027; Wed, 13 Oct 2021
 08:00:25 +0000
Date: Wed, 13 Oct 2021 11:00:12 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Grzegorz Nitka <grzegorz.nitka@intel.com>
Message-ID: <20211013080012.GB6010@kili>
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ClientProxiedBy: ZR0P278CA0134.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:40::13) To MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28)
MIME-Version: 1.0
Received: from kili (62.8.83.99) by ZR0P278CA0134.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:40::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4587.25 via Frontend
 Transport; Wed, 13 Oct 2021 08:00:21 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4c4567a5-7d64-4404-77a6-08d98e1f8378
X-MS-TrafficTypeDiagnostic: MWHPR1001MB2127:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MWHPR1001MB2127172E58020EA3B67A725E8EB79@MWHPR1001MB2127.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:475;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: D75HO+o6kORPsZLDPWgoyqaWu+G/W8Y1bQd4qxLHobkGSRFh/Z8WLxghfoqc4ehStvcRRLFEasVXmO5cQ0unXzUelwnQuAoz6MUy15AhiERbxJJTRr3y+KF6oGFRa+gLlkdyMC5EESKN2AztkjFcSrDRnphIX8wf/yEYmRTbfzeAFRzexorMdJYMCcY0hmwrYNzXeKr50+ZySMBtAKW506eWhNKGvdse0moaCeg2G1JqSCHgLSTRt0b3G53Yx1e2RCJSqJwhr2IPfHjerR90GLn8PXBEXVfG7F5aV7yzqeLCNf7VZXVSft0yA42/ATQM7WnR4YcXKL07DX1Rv8Fv0aue8z29iYfJ5pjlOpew5v8nAeaqp51BSrXgdXrWhordsF1baGXQRBXXKMp6bF8Gfx0I5VpSAy3wZJobpAhkyGpnbOuNjvTrUZy4UNKZdRutwlWu1HHp7z/8UgVqz4krBix2vqfM6Cbkps6a8o1/QxG5XixG4GQH7m5lPRcblYW0MImmXMSNUTIYd/8MSjT+nPbtP7laYyYPOAu902FvD+mAG/xBYtlusDJgQU5aHtMXWtvyfLQNhTqu1VkWK9i7X+aHHDE04vMIveFE7VeEI2ooogRTQY7Fd8ByMkrUo72ZI6VovdR+WhK2ykGyg5PDVWZ57gt0YASMC3z+lgLaq3Lymo1bB8e0n1Rwg1p/vdGoxjqvf0Gm2yiVQ8qL1FzwDw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1001MB2365.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(54906003)(33656002)(52116002)(33716001)(8936002)(186003)(8676002)(110136005)(508600001)(44832011)(6496006)(1076003)(38350700002)(316002)(6666004)(38100700002)(2906002)(66556008)(4744005)(956004)(9686003)(26005)(5660300002)(55016002)(86362001)(4326008)(83380400001)(9576002)(66946007)(66476007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?s2a1TWqu0sI/8GcZEBk4fc5JVt/SXzS40ibFWO1UycLqXXhXlBkrkSONj6Iz?=
 =?us-ascii?Q?JQyMl+Lgctbm1qiFAklr/PHRw3e2emM4eZyjZd757B+zk5pkiRxhQGIsdahD?=
 =?us-ascii?Q?3Nc8OynzBAyBExZ29++01IVqUgfLIgE0uxFeF1Nx+sMHYBH62960O2Xn0Qtq?=
 =?us-ascii?Q?vRQTsw4ZT+E46tzUlrBL942ukF0Pe/Xmi2dfyCIhRMFHE7BARC/yD9h/GMIH?=
 =?us-ascii?Q?Ad8Dj1SA3t+MzukGyyEOEbREKu8c5iLkclkdj1T4Ow/sklVmt9AWtNZf/poM?=
 =?us-ascii?Q?9Cj5AoQvUkwbCABBbboQTGHjw+IJw6Us/mmT1FTQydmsijkqXikjNtOfuXIs?=
 =?us-ascii?Q?I6NaItjyZiOcdo8itA8OXzQ0hj0gk8kKYM+BIs1woS5uQNMMwwiC8LYOlxOE?=
 =?us-ascii?Q?OFMim5efhu/gtCnndp4AtgmUr6EKnMAH8Tw/nfTRk8pClOAqRLFonKRlItTd?=
 =?us-ascii?Q?1pkR6c5ITWS+jaF/5SgZqYkP1odE8VqTI0mWsHkFKeCMEslcvQu90LMiMc53?=
 =?us-ascii?Q?U6D1KmmnKjGyJrFVgYIh91O6FauMM1i/lL+Vbk+txetCZmb7b3o2T423lv6e?=
 =?us-ascii?Q?Pl1FaPRhIcZyMQOqvWkoxneDNPVk/mOGrFVqx3eoHG4/4uIvxl7a9Dm5/OUY?=
 =?us-ascii?Q?9wBbL837wWGBZXavkCmsSUHreNHLk976qq7C0r2bdzgy7f1pOZ0kDikvnYX5?=
 =?us-ascii?Q?Xpv6AFliyHle9ObTohCw3oYhZRhHf9xMf2GllbWiMdmU7TyOQsQoFHvHtBGP?=
 =?us-ascii?Q?DkIeD0S8735iq4RdCubUSNOHUV8AkZFnMdPF91gnmdp0MRlCse+IYznNzuWi?=
 =?us-ascii?Q?r6lUhBPkLgrHEtqYeo7HXqOrdH48VQ83b2uVc/YK6Wc8GcRhnw6L4aIR+vGh?=
 =?us-ascii?Q?k53GELLFoQNKIku4dktWP6XsTHrG2gaYo8883HkwZOIE6tlOrIBZtKTsdglG?=
 =?us-ascii?Q?7Q0i/nsFDlSDKQwjfVpw0PlIrnvmq8No0RmQkGUpP55NqrqBI3emsuBWAr+u?=
 =?us-ascii?Q?9TVDkOuiu3uzVr0nRqBlhcZCugWejNY8XICJrnkzFeeT7OIQ2Jissntz+jFi?=
 =?us-ascii?Q?Kw2zImwHquSjaOidYNnSW8Gq7tRVYhpYa+EAS7V1LIrE6wU7J09nA8hho1JB?=
 =?us-ascii?Q?LEtjGE73oM/MR6BQgXUroXHTSGiPssf+enFK5CIESMEWIs2UE2DZWNY+WlTS?=
 =?us-ascii?Q?SMqXLeGybkqpdep3nYqxxJWqnrD5vIz7D5ye4kT5pxILGAmWPC15ipCGSKnm?=
 =?us-ascii?Q?XyRy93f1WFEr9WuqOUo6w1Fgz9i066imM0vCnab3zTUwfrhoPUYCjZzYuLej?=
 =?us-ascii?Q?rZtud43v0jiOs1nnFZJZbRQp?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c4567a5-7d64-4404-77a6-08d98e1f8378
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2021 08:00:25.3334 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AyeLh5qgMfkF1HaLrD3ABsgF25Y6QftxtiUD6clGyPS+nrjO2bBwwzU350X9OfKecdibFiqXPYeYtxSHUZS4G1Xhkbks1DWiKrvf0FCgtIQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1001MB2127
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10135
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 phishscore=0 suspectscore=0
 mlxlogscore=999 mlxscore=0 bulkscore=0 adultscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2109230001
 definitions=main-2110130053
X-Proofpoint-GUID: DGPMQli41NC_E3EpG898WMDB8uB2nnuV
X-Proofpoint-ORIG-GUID: DGPMQli41NC_E3EpG898WMDB8uB2nnuV
Subject: [Intel-wired-lan] [PATCH net-next] ice: fix an error code in
 ice_ena_vfs()
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
Cc: netdev@vger.kernel.org, kernel-janitors@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Return the error code if ice_eswitch_configure() fails.  Don't return
success.

Fixes: 1c54c839935b ("ice: enable/disable switchdev when managing VFs")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
---
 drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 4d0b643906ff..2bd783ec685c 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -1975,7 +1975,8 @@ static int ice_ena_vfs(struct ice_pf *pf, u16 num_vfs)
 
 	clear_bit(ICE_VF_DIS, pf->state);
 
-	if (ice_eswitch_configure(pf))
+	ret = ice_eswitch_configure(pf);
+	if (ret)
 		goto err_unroll_sriov;
 
 	return 0;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
