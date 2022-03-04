Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 158214CD3CF
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Mar 2022 12:53:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5AF8B401F4;
	Fri,  4 Mar 2022 11:53:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QT4864IJ4Plj; Fri,  4 Mar 2022 11:53:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3367F401E5;
	Fri,  4 Mar 2022 11:53:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4AAF41BF2A9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Mar 2022 11:53:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 38896401E5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Mar 2022 11:53:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2a4j1ypfWTFL for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Mar 2022 11:53:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com
 [205.220.177.32])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2161B401B6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Mar 2022 11:53:19 +0000 (UTC)
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 224AOcFr014127; 
 Fri, 4 Mar 2022 11:53:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : content-type : mime-version; s=corp-2021-07-09;
 bh=9qbVHuHQcFmkiqyxUaSsz/zJ9eFN5kEtmsBAt39BvBo=;
 b=JJt1K4sVK2VCR4l/ymF1Jy2ZOOrSQDxjGgxrkDKvWyvJV5eoXZqkRx+MFCtvWzz8rVy1
 KIktWSDqqZIiPcVeYpIzH9Foj0VAfAj4IABcMvfdLB59s1/uPcT9SNXlbpM9gTKpwoJQ
 neG7yKRXwFJiBS+gyZ1oYw5o/eN3wmqQ9aRScAN/iM9c3KYt2RrE0Knx+jMc8/cjymk0
 ZYnDbywKEWE6yomSSIDlRP9DhRohsTF41VtiFxPsedL3rNphpZ4LMYckC40326tdHdXM
 LUUagkx7FozMh16E7xQh61WXB1ynbDQlDYTze5yYvA2VvWmbUpXaAqtRPLCD1Fgo/8Dz sw== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by mx0b-00069f02.pphosted.com with ESMTP id 3ek4hv9k3m-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 04 Mar 2022 11:53:15 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.1.2/8.16.1.2) with SMTP id 224Bowjs094481;
 Fri, 4 Mar 2022 11:53:14 GMT
Received: from nam10-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam10lp2102.outbound.protection.outlook.com [104.47.58.102])
 by aserp3020.oracle.com with ESMTP id 3ek4j8s632-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 04 Mar 2022 11:53:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RAxQooy3v++mo3HSN3Eu96AVBz9DCOjlVNiFdKYEPypJmgJ05XDVMx8Szxn24HGK/xeY45TK8lMBpX03GF3h/rQ3r4qtpkqqNnKEY/2puR6Kp1LGa2nfBaaCXVJg2rEgby36TkWfoNLHIvkPOTWaoklGWSULwVGYxBv6s5gMVIDTYQ0fdPP2hXacAcO6YZspDOQuz7W7okfD/Ld2pHuuU41rSKDYsoUeOV0ZbtMtRscGb/k11UFHtBbiFpvewx5mAUvCtVTyiO5xzTdY/fjcC2bWLlAOPAswxMv63t+Pwdt4aYg9NWROjNN9n6zN8T/ZcnsAGZKdgFJRun2ne7HlxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9qbVHuHQcFmkiqyxUaSsz/zJ9eFN5kEtmsBAt39BvBo=;
 b=CFqRpTNGZvdR0axRUWElyK54R6TKeXlyC7TUOQIdlSkihVLXNX/RSz64M9KvX90cIO+lR/Ae4A+YNf5dNQGP8f8Ou8KMxQPtiOkVtcA5OgUAyUpW8KU2IpcWTW8OwyETeBdYL1u3E4TvPuezVOL8Et720NSGfQRkJyxg1Ks6vjaQu77tcvxj1zRIXRl9qgsG1b4QZ69mQ7B17ZNHd6VxbUs1RS4ndbhiSgIv0ilhvn2RgHGR368DSu1YoEjlUhTtLruNOMD3bCZ42jJCodpHgVcw1U17IeteB7s2/VKDDXjwk5LxbpLpPeOT8c9RGZsrzGtjP66qf6SxIF4exnU1RA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9qbVHuHQcFmkiqyxUaSsz/zJ9eFN5kEtmsBAt39BvBo=;
 b=UuU0mmPsdw20YDa5L+cKFA4GaypGQ5xxyq1isJJ8oQzZHmoiMjKKAPP/i+e3ureYmrrhWS6QWFoT/CbEx6a9c4n9UZTZBqVdk/lvC/y/ma3Y2/AD6sEBZofktkSonngbuekpIYqjYeWGE0tnvxS/kuo1G5sEY4Je7ZtxUCTptIk=
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by BY5PR10MB3826.namprd10.prod.outlook.com
 (2603:10b6:a03:1ff::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.14; Fri, 4 Mar
 2022 11:53:13 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::2c3d:92b5:42b3:c1c5]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::2c3d:92b5:42b3:c1c5%4]) with mapi id 15.20.5017.027; Fri, 4 Mar 2022
 11:53:12 +0000
Date: Fri, 4 Mar 2022 14:53:00 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: slawomirx.laba@intel.com, sassmann@kpanic.de
Message-ID: <20220304115300.GA7106@kili>
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ClientProxiedBy: ZR0P278CA0154.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:41::9) To MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e0175be7-9358-4a22-06fa-08d9fdd58f61
X-MS-TrafficTypeDiagnostic: BY5PR10MB3826:EE_
X-Microsoft-Antispam-PRVS: <BY5PR10MB3826D58FD72D4A97ACB009AE8E059@BY5PR10MB3826.namprd10.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8MKeJ8FccvjpLP/zGKJHbRtUWljH1o02NQ7QnDFEnz3rUdUHsDR2PUgAiIQDRk5GPrkSWb2lv/zpLg/0BWH7a12hV9RJZdaj/jiA5RrKPPlVwLdiguaNsAJHQDhVOo1zfb1K4PJMvEZmeu1TJkGzKMhjkVG30Zmk609YEvDVqdVj1FQHM9Q2EqUgAhIJ0uWbKmhTutFtaF7iHvPAt7rYIYzcLzG0UcgRAZbE5SixcB41a/Xow4GDnsceF9AswDaNwWMjFqfJUE0YU0VOeQSxg+7Vkvq301Xug6llobtQV+2oPxIKM7AGPMenzeHAd129y6a1YqJQTRCeY9P9VWzmZJMT8l5ICCFWJRuq1XKGLuru7Tzu5HxYbEsOtcyjuJNnKWh1OvXQPCPia7ICLjejgKk+eh1Kqa57svmpWSXd/XYiUlA86/w/hqyHxqYHwc5oA5Re9h+ANEMcolDOSbFvmXUqttApOHaiuQEpgWSv56OCap1LEGdagB9WchAuFTKMDJXYOenKbriSXpguGv5rAQD5jkaMtKmrupPZ3gpQS7aSQ9vaSY0Dt+ueXV1YlqqZiGYHkQgT4OhO37jReNWD4kH3PNkw0OK3oXCK1u7M+TXpuZptfXFlW9tuEyd3MZelm3NwxW2BSEFulHmhYTNd9yi6Xhzwt3X3S1WcKKDG6VvDDvhgXlEbA8+grZZN/7Xw0B4szfLMeNZVqrash3Wfbg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1001MB2365.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(7916004)(366004)(33716001)(186003)(4326008)(83380400001)(33656002)(44832011)(26005)(2906002)(1076003)(52116002)(9686003)(6512007)(8936002)(6506007)(6666004)(38350700002)(38100700002)(5660300002)(508600001)(66946007)(8676002)(6486002)(66556008)(66476007)(86362001)(316002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?B7kx2sPN20sxZsc18FB+9qZPSdVr2L5oBbHXfCrsbVPYhf9mnz+wNO8llCWp?=
 =?us-ascii?Q?8BnNPiyxye+WsbCNeQyaCjTYbaBCgCjii0M2XP831Gq9cgdnqIV1kblgv1ko?=
 =?us-ascii?Q?PXGWCJghJGUc9tFitxXhZmYO/lpDoZCNfQZH711mMb3+J9qN4ro0Faxq4NS5?=
 =?us-ascii?Q?fg4j60RTXuFp2nbNlD7nhS+pZIRnVkewqXoySBUwHqLE4y0hroFx/T0TOq14?=
 =?us-ascii?Q?cSph09osf7mhjZ/7T4GoNMOKV2QY9yYAX6ij2tU9YCocfdE9HvAyLSQkLfMP?=
 =?us-ascii?Q?cX3FTjwfeik1h2tUSWjCg21fE7N6s0C3DcdxEdc2BOLtyGJwoTal9sHJJ3sk?=
 =?us-ascii?Q?2yvHzLP1H5apvJlVUSe3QV7jNUu4hpNiHdk8KaxXab2EIzv0UPm0bH21Fpi8?=
 =?us-ascii?Q?CZ6AS7ZXebyiqLGE//mk/PKHDaGANpvcg3r247NnbTzWUB7rWHxtyb6Qwm2G?=
 =?us-ascii?Q?sPsM/Cl4xfSyea8+R4R5f52vWDqaoE5G8lt0szcTUJb+WSzj28LrmvPNKASn?=
 =?us-ascii?Q?6MonREvD2MHjNZWTIJ+htAQ6OX3JVEfw7qD/8oU1nwdTMCmpSG7Dcr/msZAz?=
 =?us-ascii?Q?L31LtjAgjCG+HL5j047pLAPYK7tG78j77mUPyctI8u+Scw/5nqsY+5BZOYs+?=
 =?us-ascii?Q?RlKT6TCw/RWfZPMi0OmUc8I3Pedk5XjFY7nF3BpXKJWNUitU3uomU1bYoySJ?=
 =?us-ascii?Q?me9oCJw9rbLtM/wK8wq/c/OIe5oirXYghzF8Sz3+VWUO8D0JmGBVsxAaKMv0?=
 =?us-ascii?Q?5la0cPI+vn6he1QC642WxCVYzLMFaeAr2sRY3q/Rm4Vb6P9TPEXbPw4GT45V?=
 =?us-ascii?Q?ZovlsvMijAwgupwq3W4j6h6Rpz3c1gW5E99v4aoX+87C6zKngVD0DV6EEr3G?=
 =?us-ascii?Q?nwQF/RXULWCBVrJh5oXEftrMdtP7ozT4PIVJ0sz1fR0Q3fCyAaDCyB81xxzM?=
 =?us-ascii?Q?sDHgHSNR6BUYQGXQE+LIdvryFif4qmTMSCVomaG1eKT/TL5kphnUKkN/VYBR?=
 =?us-ascii?Q?B4E9OynDZSI6VtDBhVW4yULJcE5B1rJ2MWJXMwyh+CW32Gsx/iCkS80G43+P?=
 =?us-ascii?Q?Apr7eLNqUizfjLhi6/480+TAmHAo/RiQPFMJfipWHUlda9yF1wyXaECelzyj?=
 =?us-ascii?Q?K1tnmaFefi+1OVfPhOv/2E1YWTO7UqVFnhFzFdRQnOurQBN1VngKiqCCg/1p?=
 =?us-ascii?Q?uA33kxXpOc8FOO7SlRtIbej0+UT0oRevqc2Qe8Co+1kvXsshjbpLYTjpjUAk?=
 =?us-ascii?Q?5wse7jMMoRXLj5cUp4iK155fHgzOdQF/8gdS+e2NbmY949Wy5Di2mrNJwlKP?=
 =?us-ascii?Q?gXcIbPLdk9MFUzCVNxtsFmu37yfHK4ZZOQufMis/Qkst4wmi8e7dt2GP1Ao4?=
 =?us-ascii?Q?VRBd/HSQuhW8olRDomtOW3vl9xOZJEjFM/nOrmuMcmzX9l79hPSFoTEpD4eC?=
 =?us-ascii?Q?T3AvmRHN9UJuydIxgr0cwmgunc/hAFh46B2ez2OeSlQTCk5wM35t3GjSWNIO?=
 =?us-ascii?Q?Qn5BWbm4OUlH+FP+/51I7VpqY/WkZVdjltzG5KgYettYYoQooBrIBvHHSlZ1?=
 =?us-ascii?Q?9NurYv90YUGqPMM2IfxeiEJ8SWywMcUPtOWlFTWeGcyOWiWsSl0jYhja913w?=
 =?us-ascii?Q?ftoXMKp6rS0ITLe74vR22GceJnqV4bxdyF+eFlx3xIX7ku7fmIxxMkOb9bRJ?=
 =?us-ascii?Q?F8tVEw=3D=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e0175be7-9358-4a22-06fa-08d9fdd58f61
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Mar 2022 11:53:12.9060 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QNpeOyGZbjpr31ORFFYW++s5u2K0OVNk6e6dySB3B1pTj5PgSK/cxm9gq1ic8v6Za9DjJBQhvBwz5m3ODZb6aH1XPCSszTiR5Ge+4JHvMy4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR10MB3826
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10275
 signatures=686983
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 phishscore=0 bulkscore=0
 malwarescore=0 mlxscore=0 spamscore=0 suspectscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2202240000
 definitions=main-2203040064
X-Proofpoint-GUID: 4VG_GfcfL0OkKaF-QPO3-9Y6Dj8Cp5DR
X-Proofpoint-ORIG-GUID: 4VG_GfcfL0OkKaF-QPO3-9Y6Dj8Cp5DR
Subject: [Intel-wired-lan] [bug report] iavf: Fix deadlock in iavf_reset_task
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello Slawomir Laba,

The patch e85ff9c631e1: "iavf: Fix deadlock in iavf_reset_task" from
Feb 23, 2022, leads to the following Smatch static checker warning:

	drivers/net/ethernet/intel/iavf/iavf_main.c:2691 iavf_reset_task()
	error: double unlocked '&adapter->crit_lock' (orig line 2689)

drivers/net/ethernet/intel/iavf/iavf_main.c
    2613 static void iavf_reset_task(struct work_struct *work)
    2614 {
    2615         struct iavf_adapter *adapter = container_of(work,
    2616                                                       struct iavf_adapter,
    2617                                                       reset_task);
    2618         struct virtchnl_vf_resource *vfres = adapter->vf_res;
    2619         struct net_device *netdev = adapter->netdev;
    2620         struct iavf_hw *hw = &adapter->hw;
    2621         struct iavf_mac_filter *f, *ftmp;
    2622         struct iavf_cloud_filter *cf;
    2623         u32 reg_val;
    2624         int i = 0, err;
    2625         bool running;
    2626 
    2627         /* When device is being removed it doesn't make sense to run the reset
    2628          * task, just return in such a case.
    2629          */
    2630         if (!mutex_trylock(&adapter->crit_lock)) {
    2631                 if (adapter->state != __IAVF_REMOVE)
    2632                         queue_work(iavf_wq, &adapter->reset_task);
    2633 
    2634                 return;
    2635         }
    2636 
    2637         while (!mutex_trylock(&adapter->client_lock))
    2638                 usleep_range(500, 1000);
    2639         if (CLIENT_ENABLED(adapter)) {
    2640                 adapter->flags &= ~(IAVF_FLAG_CLIENT_NEEDS_OPEN |
    2641                                     IAVF_FLAG_CLIENT_NEEDS_CLOSE |
    2642                                     IAVF_FLAG_CLIENT_NEEDS_L2_PARAMS |
    2643                                     IAVF_FLAG_SERVICE_CLIENT_REQUESTED);
    2644                 cancel_delayed_work_sync(&adapter->client_task);
    2645                 iavf_notify_client_close(&adapter->vsi, true);
    2646         }
    2647         iavf_misc_irq_disable(adapter);
    2648         if (adapter->flags & IAVF_FLAG_RESET_NEEDED) {
    2649                 adapter->flags &= ~IAVF_FLAG_RESET_NEEDED;
    2650                 /* Restart the AQ here. If we have been reset but didn't
    2651                  * detect it, or if the PF had to reinit, our AQ will be hosed.
    2652                  */
    2653                 iavf_shutdown_adminq(hw);
    2654                 iavf_init_adminq(hw);
    2655                 iavf_request_reset(adapter);
    2656         }
    2657         adapter->flags |= IAVF_FLAG_RESET_PENDING;
    2658 
    2659         /* poll until we see the reset actually happen */
    2660         for (i = 0; i < IAVF_RESET_WAIT_DETECTED_COUNT; i++) {
    2661                 reg_val = rd32(hw, IAVF_VF_ARQLEN1) &
    2662                           IAVF_VF_ARQLEN1_ARQENABLE_MASK;
    2663                 if (!reg_val)
    2664                         break;
    2665                 usleep_range(5000, 10000);
    2666         }
    2667         if (i == IAVF_RESET_WAIT_DETECTED_COUNT) {
    2668                 dev_info(&adapter->pdev->dev, "Never saw reset\n");
    2669                 goto continue_reset; /* act like the reset happened */
    2670         }
    2671 
    2672         /* wait until the reset is complete and the PF is responding to us */
    2673         for (i = 0; i < IAVF_RESET_WAIT_COMPLETE_COUNT; i++) {
    2674                 /* sleep first to make sure a minimum wait time is met */
    2675                 msleep(IAVF_RESET_WAIT_MS);
    2676 
    2677                 reg_val = rd32(hw, IAVF_VFGEN_RSTAT) &
    2678                           IAVF_VFGEN_RSTAT_VFR_STATE_MASK;
    2679                 if (reg_val == VIRTCHNL_VFR_VFACTIVE)
    2680                         break;
    2681         }
    2682 
    2683         pci_set_master(adapter->pdev);
    2684         pci_restore_msi_state(adapter->pdev);
    2685 
    2686         if (i == IAVF_RESET_WAIT_COMPLETE_COUNT) {
    2687                 dev_err(&adapter->pdev->dev, "Reset never finished (%x)\n",
    2688                         reg_val);
    2689                 iavf_disable_vf(adapter);

The proble is that iavf_disable_vf() calls mutex_unlock(&adapter->crit_lock);

    2690                 mutex_unlock(&adapter->client_lock);
--> 2691                 mutex_unlock(&adapter->crit_lock);

so calling it again here is a bug.

I feel like I owe you an apology on this one because I asked you to add
the mutex_unlock() here via the kbuild-bot...  It is confusing though.
Does the unlock really need to be done inside iavf_disable_vf() are
can we move that to the callers?

    2692                 return; /* Do not attempt to reinit. It's dead, Jim. */
    2693         }
    2694 
    2695 continue_reset:
    2696         /* We don't use netif_running() because it may be true prior to
    2697          * ndo_open() returning, so we can't assume it means all our open
    2698          * tasks have finished, since we're not holding the rtnl_lock here.
    2699          */

regards,
dan carpenter
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
