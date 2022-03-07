Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CE9D4CFF30
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Mar 2022 13:53:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C1BD5410C8;
	Mon,  7 Mar 2022 12:53:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DjniidpFCTro; Mon,  7 Mar 2022 12:53:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B08A1408A6;
	Mon,  7 Mar 2022 12:53:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DCBFD1BF3C4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Mar 2022 12:53:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D59F8405D4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Mar 2022 12:53:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=oracle.com header.b="0kHyfdCt";
 dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com
 header.b="TN3P9H2m"
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 62wN1pAM7ySI for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Mar 2022 12:53:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com
 [205.220.165.32])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DF3284012D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Mar 2022 12:53:36 +0000 (UTC)
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 227BvxbN019187; 
 Mon, 7 Mar 2022 12:53:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : content-type : mime-version; s=corp-2021-07-09;
 bh=/KHr53ZtRcPFK/9ikWZQ081SObpF2+uczLxFh5kCNkA=;
 b=0kHyfdCtYNovcjnOInSEyl5BxXLjb8bCxsifFmhkMiemAIHnrK1GiWzk4PA31LufO2Ck
 Bg2Dm16WUNIeZh1bjZ6gXm662jNIQbc4JkNOLLQkre5s8SLjqI/I0oEZr45ZOZZMD5JA
 +xIbY7arbyEdrN7CwKSujZ6yJtDxnCOzc80MopIQkkeRb8RrSzGx2CKbDlP1NPX8ezDD
 n1O3E3QclZXuFYzNrCjGQ8dikwM/Ift5CSqsVy/umNPOK1o68MfSyq02a4LaZdclOoly
 g9GAgtuWGKjaRKsn+ZzbMOl5guoD32mg1jBWmgjVdHQU/BVEZH2pN2Eukvpc6bwYfa2Y /Q== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by mx0b-00069f02.pphosted.com with ESMTP id 3em0dtuqdc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 07 Mar 2022 12:53:35 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.1.2/8.16.1.2) with SMTP id 227CoddR028911;
 Mon, 7 Mar 2022 12:53:34 GMT
Received: from nam02-bn1-obe.outbound.protection.outlook.com
 (mail-bn1nam07lp2041.outbound.protection.outlook.com [104.47.51.41])
 by userp3020.oracle.com with ESMTP id 3em1ahyhph-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 07 Mar 2022 12:53:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lTV+WdABhN9UVVg9dism/ranwxWvrSJjuMg0OXLD8xxVyTJpQcCeIVQQKHnsaqJUXfocQOzQrXpyQiMaLP1FEPrcWqzkiS9thp8wedsm9XuhAZFSix1a8eKD/+38Kqd0NsroFrT1U8qSLoi/3jY81suMpZ58yQzc6YqrhUN3x0jzZr8e2Pd5uiJZGZvlCYsl7j4qSWdj2O5PJfmwaXzAQexyPQkrEI5lYnSKY2urhjt7Zhh175j00gx0QpAi7uzW8bu/Ghv0sxTc7GHfv7cvKdCNCUbzfAgykukoVgtIp3iG5gG1T5VXh2/e32SWzlIhaGg/UMWV1vHx4veVWtU7vQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/KHr53ZtRcPFK/9ikWZQ081SObpF2+uczLxFh5kCNkA=;
 b=UWJOccOsGVLp8bcPuQA992BMMzdy0RJ2DWXqSiZuwREnFeiGtG8tqr0JqdbDc3UjMhWiBUNJ7qM8q5+cVgOa2739xCJIWDFVJ8QP8uyLHeymRjfXGV+bI2mn+EdtkofKSdLoP6Id3y8mQg1czjFfaPAqfLJ7e7BmYek8+dYYYAyPVfj50AqnXv3Hx+cb5DIs8ZCJjKYt/VATrFm7igdLOxxUGZbe3+boShdGFpPELf2/eiLf7SpXnnyVf0rMwSxnZbLWd/PwBctcL9yt+cs5wRlefwXGMlZ99pTTCv9VRjfKFKQV1itr5m29l1DWYVOVIdhY0HYLvZzg5o5iNsI96w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/KHr53ZtRcPFK/9ikWZQ081SObpF2+uczLxFh5kCNkA=;
 b=TN3P9H2mypRqZRNnfweDn8BoaTf6RQqCZ77o+CoJJTylQrQA6FTor2GN2M8HHcc7oSG8GZ+FM9hwjU5d3H3R0DTIxHO7r1pDp0BBxjBWeVphs/aY6rJ1N39t8ojZt6PLSijkWiGIYGfC4SliHG6pqp+mguwNuO4oMbeE6VnkeaA=
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by SN6PR10MB2847.namprd10.prod.outlook.com
 (2603:10b6:805:cb::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.14; Mon, 7 Mar
 2022 12:53:31 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::2c3d:92b5:42b3:c1c5]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::2c3d:92b5:42b3:c1c5%4]) with mapi id 15.20.5038.026; Mon, 7 Mar 2022
 12:53:31 +0000
Date: Mon, 7 Mar 2022 15:53:19 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: karol.kolacinski@intel.com
Message-ID: <20220307125319.GA16609@kili>
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ClientProxiedBy: ZR0P278CA0174.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:45::20) To MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3ea31aa0-dbd3-4f41-1426-08da00397bab
X-MS-TrafficTypeDiagnostic: SN6PR10MB2847:EE_
X-Microsoft-Antispam-PRVS: <SN6PR10MB2847B6549947C3FAFC5BC3918E089@SN6PR10MB2847.namprd10.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: e4tl3JyFhoPpgWDXt3T8/HwYmbCULdz1w8xjPeNtkgZWR3ALBQ2ze6BH0JEY1gSypyhOvPBdOHN8lQ5ReoG6z9jE6zGQJPBE8utL0xBQu+iDAFv8Z+Q9QsIocz/d2crSYl/WD3qDWGwWOeia2FjDwWiAysoqbIl1X3VnJP7CvciaH33yVHuZHpWXiJ8i8ZDOcaiGFrEQSWMjJLawyHpT0pnqjHyy5CKb6UfDW+LblqVeKSCnA+wn/j+VTpnlYMsattPH0G3Uha1iCXZZnWG7/n8C06NVHhFSO22QkQcnX5hFWMK8EAlpo02K5vh7dMMu3pzMvlEqJNLQcaXLKzFhoM79+YTmBTpgdiNyjxL70r1hlFIkkYucwyVQSbJgeXNfnrCpsADIIoGZEZW4PVoCdySq3jhlOX6v75G8MvVyvFREmfChw6jWFMqnT7SEwfSlIAn0VqpTW3RD0Z5B2pWGmXjD+3bz+eCl4HCrBJ3nIP7oGAq1F3FvWnVMp/294rIBjZ0FS8KsV5WlDl+0AYCMcTuJ1YtMbH71OuYp2ik6AMf/WZCWtJc4a7BhM4bDS6jVGeXGmDzZt3pvHpXY6rlLTvSOoL6orX9pzlE1fFtr6rkr/iM4qWmeo98Tj7GZtaGS/fnN3fISF5SkPbG0apekAxpgasY2NQp/CZ9V+jBFjoTPHD0DxhX2PIBG5qNapEii7v38a8WzFs7k2MCRFOSmjw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1001MB2365.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(7916004)(366004)(186003)(6512007)(9686003)(2906002)(38350700002)(44832011)(86362001)(26005)(316002)(33656002)(6916009)(1076003)(38100700002)(6486002)(33716001)(83380400001)(66556008)(66476007)(8676002)(66946007)(4326008)(508600001)(52116002)(5660300002)(8936002)(6666004)(6506007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Kbou+iKBhpP8FbMRs6C7J/z+nRRP28WdqadJPxjQjt9JKf5senyJw6b74PpF?=
 =?us-ascii?Q?gaJkv9jP3cLv3EzuCwJK6bFAkHsr1x7etjn/2m5OGQCnWhAsbfSkhtL5CDvE?=
 =?us-ascii?Q?GpxbgY/YurKsoy8tAqMmB9k+U0bqfNWnCPufX7TTrvHDKT6uYdtbAKycDMO1?=
 =?us-ascii?Q?wXTaaixxOtOxF5jFG0P4/KYlx3/+BgLRr0ivxG/zbcyn+sid71ADSiqG1CmW?=
 =?us-ascii?Q?9IFEEMSgMBj1z8jp7DLGbjQeCi1nIH1T7Y1SWYnli5zwaR1WSXq474qMT/cO?=
 =?us-ascii?Q?xuHOEINHK8x6d8U4tBQi4GQfwpjmSJAt8T9GyUimi+nxQ0bq8zzT0Bsr7psr?=
 =?us-ascii?Q?/8xEHCgG3BuHP/vs2SgF1wToZGfQw7cO0kuzWwxwyp1c0wEwfvRIWVkQSIbr?=
 =?us-ascii?Q?U71FUA4vjEcI+g4XjlsgdnnTrRsK+bQsxkH+WZYAqBxmaoqVsblIoK7V0fqi?=
 =?us-ascii?Q?YXxh2TtxE19U6G5VfkDUiImrK0RH/cV/NZuEfWREL9KZ2EHr2tnicUWu4Kem?=
 =?us-ascii?Q?RoRDVTRzaC2XLiA+XOsn4mmyzOe0oLNZR45e4k9c29pFyjI1ggyDcpzoHORw?=
 =?us-ascii?Q?Ch9CAbVImjp+i2ECLQW2/wE8Gi6X7n7btwdO1XtuMZRnGsXCMe2DOyrJSN2P?=
 =?us-ascii?Q?isjLRBdBHcSLFRJh+ECUxVqKpHP1BcZIfOKWWYpwaGmfk0YfW2Z+TYU5j3yg?=
 =?us-ascii?Q?GUq4hZbYS4Rfcm7CbFHsfYfyos8F77D348ALN3aZ+Ru/iGqeAuiLQw5rxVNA?=
 =?us-ascii?Q?3SBuC4QNeB2RbO1C0ISw53gnX6vmAAetabu0tKILikV5dl8x+EeAZASeXbLw?=
 =?us-ascii?Q?sOfvUI0Iec32N2uCVZAADNEvSkxrLm99MVsZNDuPqVmx5i/9nxZo1fJ8E2aV?=
 =?us-ascii?Q?wvImtCNQcrKhv2V62b0vMD/uIGkg8XmDyc9riafs+XAHxAIoyuREDXnMszQ+?=
 =?us-ascii?Q?sjqH6lY0qUSsCU2OWyRktKKJdss/AzEUjgY18qAmHbqx/aWiSw2Y24pch+Rj?=
 =?us-ascii?Q?NXxCfgV3V3c7to5eu6wXAm6ioqqPF1Neiv0v/0TKaSc3Tq+6zzIpuQPZy0k9?=
 =?us-ascii?Q?WsOFhDH5xCZoyT5/I1X+Cru4QXWp8Ja+U9gn9IHoQ/oqFAa5bprKtcjqyKt7?=
 =?us-ascii?Q?qD/6+EPpPkNEsxlzUH/yzmoZO+8vH3gZFrwBh0YVpG8v7AWwVzbGGsGb8wM7?=
 =?us-ascii?Q?OpW18HVVgoYCzc000J1Ssyfm8+4GXU01BlPLVN/pDKHsAk4WZD0dp3S5I5C/?=
 =?us-ascii?Q?B/ACN/zgI9bb29vrLMJGqJ5ic1HS9sWWCuXGKyvxcZuT2RU4NuNDTJknLym2?=
 =?us-ascii?Q?ZGCeC1gIqg/qF1q8sUKHuEMxUfvqA9FdlqCe5lxE2xkNFixxzmXEksM3fgZk?=
 =?us-ascii?Q?PwRsx1plD0z9MphCv6tA4C7B/sHnQ37CMAJM6dTO6s7JEQwHy7Xj1pPs6OPJ?=
 =?us-ascii?Q?WKx/KZs5GKobHxTkSTGsU97eDAYHEeoP8uG6XdNPZd4WBwquLC4+sXHY6B6z?=
 =?us-ascii?Q?sMSBzXtZ2Pd6STCW5odDHDrGiB2g59a+/D013mhMaAgftTWyscGqVKrFu5Gl?=
 =?us-ascii?Q?6GhWXe3HUbqOHTj1yRq1vHsrs/Cuo5gPCn7MxIUvbA2pLgfUpKEYxP7uJYxL?=
 =?us-ascii?Q?M6CLVJK/E5AZwMaZC2WfqIFJQXH3ntRUzEcv19501DoHK426l510id2Ct9UC?=
 =?us-ascii?Q?fx8RJw=3D=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ea31aa0-dbd3-4f41-1426-08da00397bab
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Mar 2022 12:53:31.5541 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZLuV69ibfB+Pgie9LiCT+5oEIIu5BaMnWaG021nhTRPju3FGgRqCtoUCx5psBTITcLD5bcqFDJqjWM/6ESfhDF4mjd61nmBwAN2gZu55z0E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR10MB2847
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10278
 signatures=690470
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 phishscore=0 bulkscore=0
 malwarescore=0 spamscore=0 adultscore=0 mlxlogscore=944 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2202240000
 definitions=main-2203070074
X-Proofpoint-ORIG-GUID: zARjOuIOg5Q7o6F9sajCBWoRVa0biBOw
X-Proofpoint-GUID: zARjOuIOg5Q7o6F9sajCBWoRVa0biBOw
Subject: [Intel-wired-lan] [bug report] ice: add TTY for GNSS module for
 E810T device
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

Hello Karol Kolacinski,

This is a semi-automatic email about new static checker warnings.

The patch 43113ff73453: "ice: add TTY for GNSS module for E810T 
device" from Mar 1, 2022, leads to the following Smatch complaint:

    drivers/net/ethernet/intel/ice/ice_gnss.c:101 ice_gnss_read()
    error: we previously assumed 'pf' could be null (see line 30)

drivers/net/ethernet/intel/ice/ice_gnss.c
    29		pf = gnss->back;
    30		if (!pf || !gnss->tty || !gnss->tty->port) {
                    ^^^
Check for NULL

    31			err = -EFAULT;
    32			goto exit;
    33		}
    34	
    35		hw = &pf->hw;
    36		port = gnss->tty->port;
    37	
    38		buf = (char *)get_zeroed_page(GFP_KERNEL);
    39		if (!buf) {
    40			err = -ENOMEM;
    41			goto exit;
    42		}
    43	
    44		memset(&link_topo, 0, sizeof(struct ice_aqc_link_topo_addr));
    45		link_topo.topo_params.index = ICE_E810T_GNSS_I2C_BUS;
    46		link_topo.topo_params.node_type_ctx |=
    47			FIELD_PREP(ICE_AQC_LINK_TOPO_NODE_CTX_M,
    48				   ICE_AQC_LINK_TOPO_NODE_CTX_OVERRIDE);
    49	
    50		i2c_params = ICE_GNSS_UBX_DATA_LEN_WIDTH |
    51			     ICE_AQC_I2C_USE_REPEATED_START;
    52	
    53		/* Read data length in a loop, when it's not 0 the data is ready */
    54		for (i = 0; i < ICE_MAX_UBX_READ_TRIES; i++) {
    55			err = ice_aq_read_i2c(hw, link_topo, ICE_GNSS_UBX_I2C_BUS_ADDR,
    56					      cpu_to_le16(ICE_GNSS_UBX_DATA_LEN_H),
    57					      i2c_params, (u8 *)&data_len_b, NULL);
    58			if (err)
    59				goto exit_buf;
    60	
    61			data_len = be16_to_cpu(data_len_b);
    62			if (data_len != 0 && data_len != U16_MAX)
    63				break;
    64	
    65			mdelay(10);
    66		}
    67	
    68		data_len = min(data_len, (u16)PAGE_SIZE);
    69		data_len = tty_buffer_request_room(port, data_len);
    70		if (!data_len) {
    71			err = -ENOMEM;
    72			goto exit_buf;
    73		}
    74	
    75		/* Read received data */
    76		for (i = 0; i < data_len; i += bytes_read) {
    77			u16 bytes_left = data_len - i;
    78	
    79			bytes_read = bytes_left < ICE_MAX_I2C_DATA_SIZE ? bytes_left :
    80						  ICE_MAX_I2C_DATA_SIZE;
    81	
    82			err = ice_aq_read_i2c(hw, link_topo, ICE_GNSS_UBX_I2C_BUS_ADDR,
    83					      cpu_to_le16(ICE_GNSS_UBX_EMPTY_DATA),
    84					      bytes_read, &buf[i], NULL);
    85			if (err)
    86				goto exit_buf;
    87		}
    88	
    89		/* Send the data to the tty layer for users to read. This doesn't
    90		 * actually push the data through unless tty->low_latency is set.
    91		 */
    92		tty_insert_flip_string(port, buf, i);
    93		tty_flip_buffer_push(port);
    94	
    95	exit_buf:
    96		free_page((unsigned long)buf);
    97		kthread_queue_delayed_work(gnss->kworker, &gnss->read_work,
    98					   ICE_GNSS_TIMER_DELAY_TIME);
    99	exit:
   100		if (err)
   101			dev_dbg(ice_pf_to_dev(pf), "GNSS failed to read err=%d\n", err);
                                              ^^
Unchecked dereference

   102	}
   103	

regards,
dan carpenter
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
