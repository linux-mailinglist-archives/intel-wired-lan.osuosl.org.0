Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A704530F1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Nov 2021 12:37:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3678A403F2;
	Tue, 16 Nov 2021 11:37:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PNhHCOTlPsim; Tue, 16 Nov 2021 11:36:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 22D8340004;
	Tue, 16 Nov 2021 11:36:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F2E991BF86B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Nov 2021 11:36:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DC95240464
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Nov 2021 11:36:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=oracle.com header.b="OC6ETK/p";
 dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com
 header.b="FrLOULDd"
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sNB3Q4Lrs8bD for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Nov 2021 11:36:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com
 [205.220.165.32])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A033440457
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Nov 2021 11:36:45 +0000 (UTC)
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 1AGBEKW3003941; 
 Tue, 16 Nov 2021 11:36:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : content-type : mime-version; s=corp-2021-07-09;
 bh=MU8FxyYoNzZNVF69LlE1qgnIr0VZqNX1sEnV20VbaSw=;
 b=OC6ETK/pWPM1pPjDdSAtM5nDgkGkDTo9pKs4Eu5Yh818j1pDlCU7WLWZZmcSYVQah+on
 BG9s8s9n0und99YG71KQqMdzzMK+5PZLO1NCqZAnSP7asVh79598xS+K/l5wJkGz4fzE
 deBrjsFmcoAeKQVb3SyUL0r5b0pw4DOYLhbDCc9EOsMyH2Tw8y6IrMTjtQqiJLmlCNNy
 pXksVS81zzOPLTp1DBaEN98r2dZunKLjT41jzlUiBf9M+zfH4MpawRZ/xdT+SahkSHz0
 Hdy7Xgxj02ikWzmQpYB0MNmJMKcC7t7FDZ89jnJ9xD+9Kn95Q9sXjSYQAnsEcwT4eKWd UQ== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by mx0b-00069f02.pphosted.com with ESMTP id 3cbhtvr8jh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 16 Nov 2021 11:36:43 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.1.2/8.16.1.2) with SMTP id 1AGBadjv173001;
 Tue, 16 Nov 2021 11:36:41 GMT
Received: from nam10-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam10lp2107.outbound.protection.outlook.com [104.47.55.107])
 by aserp3020.oracle.com with ESMTP id 3ca5659q14-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 16 Nov 2021 11:36:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Tpx1k7dSKM6CRR1dUw36dB+gDL4GofQv4lEtTdWzs2DEgKTnJ88B3uhB+QN+2fDWLHZj1caa70pUeEehoQuV7Qhvvbhcvquv7gdBt7Gx6fU2JzAcI3kU71LEN27CpF36t6SjTDtTeK0E4goJatXWtSzl/2VLX39/LvtdlP1vkROwlqRRCVgUiiIpplXeq60FKPUyM3NTRXHObGiwv6/HOaziOIGGTlKNz0sC6rGF3RGKiw+j+RuKNxKOIM0Ehh3wVvjVn82Ao//nvPZp1Vubl9d6vc2zWzo4ckh5Roo3aSPV6+0Mvu3wpoKQJvx1QdJ9vW8VWNfDXzpM1VAJ1KhHFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MU8FxyYoNzZNVF69LlE1qgnIr0VZqNX1sEnV20VbaSw=;
 b=lChVPwmKxQkD4ibDxubHGKYb6EWETaXzbXsVMunWxtkqLORbQXPSewEMzSSvQ2G/iZy8kcvnwCex7xKFpBBNZVq4IWnFeytfHvO9qswSzR8siHmx65hkOEq4laKJSmWtEOoUcjYZqtFYVhqij1KMNDSI42e4NZzf/F1ZHW2Tv25IkxkX64W4VFR1IRNcLSgD14PqGf/ztOXI2XrjUnJ2ntgizAt6W/q5ehMtJTv019KvJKJWX9/RTuf1bpYET6/2uylPaj83Fqt5w/1pfbAzC42QclFiN5i0Dunob2rMuekOh2u12AvYjl6C0NuB9ARrB2jS+OiUzaw+m9cQNBIXrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MU8FxyYoNzZNVF69LlE1qgnIr0VZqNX1sEnV20VbaSw=;
 b=FrLOULDdIvzTk/1pn1BHYt58SPU1RuAtF47CjwmGI8QA07jTd79kq+cKXUb93zUnv69Y2eOZ0OguM+SvM/2KlZR5JVWaDPAwx510gfOebGseP5V+D7Z0exGwe+BV3WXqfSz6iBHeRFAoDXcQrwe/IBh0c4u5mzVcL/YJbEOGTd0=
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by CO1PR10MB4724.namprd10.prod.outlook.com
 (2603:10b6:303:96::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4690.27; Tue, 16 Nov
 2021 11:36:39 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::d409:11b5:5eb2:6be9]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::d409:11b5:5eb2:6be9%5]) with mapi id 15.20.4690.016; Tue, 16 Nov 2021
 11:36:39 +0000
Date: Tue, 16 Nov 2021 14:36:27 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: maciej.fijalkowski@intel.com
Message-ID: <20211116113627.GA11394@kili>
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ClientProxiedBy: AS9PR04CA0076.eurprd04.prod.outlook.com
 (2603:10a6:20b:48b::18) To MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28)
MIME-Version: 1.0
Received: from kili (102.222.70.114) by
 AS9PR04CA0076.eurprd04.prod.outlook.com (2603:10a6:20b:48b::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4690.19 via Frontend
 Transport; Tue, 16 Nov 2021 11:36:37 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c9b21ae9-861b-4b0d-e771-08d9a8f55adb
X-MS-TrafficTypeDiagnostic: CO1PR10MB4724:
X-Microsoft-Antispam-PRVS: <CO1PR10MB4724BE36765B4CEF2A920BF78E999@CO1PR10MB4724.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4k4uypC/qhuXHsJV2tpRLtIRttAXjn2/T2hddqq2tJCwl0pUTDBw5DplusNzSQK3KV6YMNn320M35/TSByI5X7YpuqCNzUY2g6VwvR5nWIa9iMP82UbpbJICbPw+x4QQ7+U8Au/2liANQ55/4WpkEKMiYIc+rNH457x+9NOrTWDzMvt5Qqq+0M2sZTjvhMS4oVTS7H/rDkoMer9OL/CYHq3ndLtsew+VFAk1gn1GwSVDYyrP7lRzL0LNWa29D3So9M3bbgXZD65zLBeul5tPn14ixCyjFCLbaZenLtsN6ykr5AlZbnA3Q6EzU7L89VudIB5+MlkXE1xxQALWrNNZc7GOCoq81lXro++taV1Ig2r1dlubHhg45D0wrZdsftYeuWKTPEatTEcSkTE52xR3q9Cv/ILH9i5MLHb3LvxMZpmfjKjR3ycPfLwAwil4Kvjtpy2F9PWfPRbkwWDDP4na54t+PQKQ5Y3epstFeEFfUmHGgA0Y1QU6HhDQJ41eOng4CcZF/A3DaNtn/eteV0v5Mfw05je5GyqresVaeHet1TWiAjfckIe/whPP/TWo0JHfEu2C4v2h48OYbIH9IXP1PvQMQnkC321hs3TnJ1u+H24mfyGMk74UxcEOIREAVbDdp2iRCw43H0gBx9xd58rA0ZA0na18SZQaOYUckCO/PpwMAVNXwJo4bBGlA+7tzLP3QggX4R/iwpOCWyyL6tC23g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1001MB2365.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(8676002)(44832011)(2906002)(6666004)(316002)(956004)(33716001)(4744005)(1076003)(8936002)(9576002)(4326008)(66946007)(6916009)(86362001)(66476007)(66556008)(186003)(55016002)(26005)(508600001)(33656002)(6496006)(9686003)(52116002)(38100700002)(38350700002)(83380400001)(5660300002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Cdw4+4kP/B2rH4n6Ahtj1uuswKJrJn2a02I4QdyDwzcgBViEZ+SfnOEoZnr5?=
 =?us-ascii?Q?4r1Y3Xzxt23ueq6vqDouaU+Yg7TLwJ0e0oer2KmDmrX6iBwN/mgd6f9YuQ3T?=
 =?us-ascii?Q?CsuAEeG3AqmJGngmAb40ov8wwIXqoKmyY5uK3WoLjfiX55nKWqWAQ8iX8dX1?=
 =?us-ascii?Q?xbnNrGogBSujQTaYpe6b5Uk6zzIzGbyF/tzFwhMG6wffcOU738puoCvKoj0d?=
 =?us-ascii?Q?tezOfiQlSiE3a5nRRjwSfZDaqYShuu1kY2zenKaIKGP8cx5ibLKUPtLuwTEk?=
 =?us-ascii?Q?IxIR7BF/PZOdTRez6b5OSiK7ul1xLTQ+vb4UL0OaKi6PvRM04haJxxNKZusX?=
 =?us-ascii?Q?LuRaB5dt+OJdDJPWde/xvjeWG8tPHSOKekKLVAdriUm4KFDs08a/1uhWjosc?=
 =?us-ascii?Q?Pf5lxfK6Bw04HE3C6MJL4zr7gQOb6D9mn+UG1asyM7pNoMbEXJN52edtCCSD?=
 =?us-ascii?Q?1dM4JqgIQHXss1PJ0b7rwIGlb/wMFVBqpwdxaUN/EqauP5aZ1n1w1EwwaQ9p?=
 =?us-ascii?Q?UcUB69gWR7PWkfFZV5rINM3u9h7Y5qAHEkA4OERNMp3mueWjx6rBJzGjMBpS?=
 =?us-ascii?Q?vz73P9elGOow8k1jA/BeohDrHWxSbrCeWS6wYszFoo4l48S40d7htMp1c6mM?=
 =?us-ascii?Q?loELxoNNKEhQbUuOFEPJYWbr7xPhlAFFdCSSRgjOCsjyubrfc5/wCAwgMSg+?=
 =?us-ascii?Q?GmvSsYasO1bvOn5kjVQHI4Qz7u6CgigNPhpe0/cA4CSdWA0KawULo3nmMc+u?=
 =?us-ascii?Q?TbTBBb8EQ6gy2bdrjY6GuCPSZ8STpDqbPSLJCW57TWH5iuzHGgB1mc7Jr1UM?=
 =?us-ascii?Q?HRhvcXuPZROK50k2HkCjcwCDRPEyK+SqlW2BpTSTRmrzhfUDNgdZYnG4czjG?=
 =?us-ascii?Q?eatKpZhLDhIhpcjKfLZOtKiGpbs3qbKO5nmijFAT1rJeQx15fdvmyh2EPNdS?=
 =?us-ascii?Q?rEBZZunEBYPZtWzDtqjPvpBw3iTZP2/Q35iO62koLdzMieoGgDpwcq83fc+R?=
 =?us-ascii?Q?ksdXwQ113dLifAwu/FWyzMIwbWLocTFX/EmLq16aEVmD77mtz/F7XsBxMFAm?=
 =?us-ascii?Q?NCulZx7szgAWWkfAWEi8LGasEJdlcedSf62V0t7Dw3MlEQLAWYczbActt3kf?=
 =?us-ascii?Q?VkN0JT2HdPyiHBm7aH7u48Ah4Dk8HsizLGqVrpSOzk3gKzNMazJEIiI6z6uX?=
 =?us-ascii?Q?LRTI73fXiALiobGRS0jayFbQHeNRQQOLEunnoF4qSoNGxVwK75n+sJtJqOI3?=
 =?us-ascii?Q?K6nuQeN1TC9x7WDOGyn/fXkvKqSebVwMuvVsmYuYGQl0sVYjnHEqgoFc3M58?=
 =?us-ascii?Q?Yg/A5r6SlP1YNHcKUhcxrvZgP43QBV6ycxt1PkkmJ6Pz7HJciAxDL/vxyfRX?=
 =?us-ascii?Q?TgWCuAs09Sm4Dw1hfLiTAMwB6msVJBmzr9p5DkCuHcVkifzr2IwggaUbz6L0?=
 =?us-ascii?Q?82rbPE+u7UD5CpYt6PZMdQD7wWKSo6IVRAEzBBtqzXBpo0Xg3LEs+KbSa44E?=
 =?us-ascii?Q?SLZ3C3gSeTiWvpw8R8cdVoZPlbrjWu634mG3fnCEvsU3uuT3T+U+BUgFBNwd?=
 =?us-ascii?Q?O9LgxGOj1xxJxwFrsI6CSiCOX5nHXc9SSHcYOl74xAeEwGeva1Kuxz3ZygcW?=
 =?us-ascii?Q?rpYxVesRA1koT6fxzDxEMjyihKbPaXAFkokbYvSvhPCLcRxHok9OsbiokO0O?=
 =?us-ascii?Q?Wp20APn+uzcjTCzdrA3rL+U38ZA=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c9b21ae9-861b-4b0d-e771-08d9a8f55adb
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Nov 2021 11:36:39.5750 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7+jk7nB9bPss1wrNwJhdrW6MVnrCuKxi4WZfmM2po4g38KKROgy4R8I4l0wbyHUSK0S9Y3olF+xqXPYCZvnNctZTtP/uCM+AcKMR1+KW/7U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR10MB4724
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10169
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=687
 adultscore=0 mlxscore=0
 spamscore=0 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2110150000
 definitions=main-2111160059
X-Proofpoint-GUID: yFyZ3PXRi4B6FTNlYQxV9uK_xQigDKmi
X-Proofpoint-ORIG-GUID: yFyZ3PXRi4B6FTNlYQxV9uK_xQigDKmi
Subject: [Intel-wired-lan] [bug report] ice: split ice_ring onto Tx/Rx
 separate structs
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

Hello Maciej Fijalkowski,

This is a semi-automatic email about new static checker warnings.

The patch e72bba21355d: "ice: split ice_ring onto Tx/Rx separate
structs" from Aug 19, 2021, leads to the following Smatch complaint:

    drivers/net/ethernet/intel/ice/ice_main.c:5933 ice_update_vsi_tx_ring_stats()
    error: we previously assumed 'ring' could be null (see line 5929)

drivers/net/ethernet/intel/ice/ice_main.c
  5928			ring = READ_ONCE(rings[i]);
  5929			if (ring)
                            ^^^^
The patch adds a new check for NULL but presumably it can be removed

  5930				ice_fetch_u64_stats_per_ring(&ring->syncp, ring->stats, &pkts, &bytes);
  5931			vsi_stats->tx_packets += pkts;
  5932			vsi_stats->tx_bytes += bytes;
  5933			vsi->tx_restart += ring->tx_stats.restart_q;
                                           ^^^^^^^^^^^^^^^^^^^^^^^^
  5934			vsi->tx_busy += ring->tx_stats.tx_busy;
                                        ^^^^^^^^^^^^^^^^^^^^^^
  5935			vsi->tx_linearize += ring->tx_stats.tx_linearize;
                                             ^^^^^^^^^^^^^^^^^^^^^^^^^^^

Because the previous code didn' check

regards,
dan carpenter
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
