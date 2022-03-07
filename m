Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6773B4D00F5
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Mar 2022 15:18:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CF54781D9F;
	Mon,  7 Mar 2022 14:18:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9q67BK2tl3Dh; Mon,  7 Mar 2022 14:18:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CEE5D81D70;
	Mon,  7 Mar 2022 14:18:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 75B4A1BF333
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Mar 2022 14:18:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 538CC405E3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Mar 2022 14:18:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=oracle.com header.b="dsRLB9Ta";
 dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com
 header.b="Ewx4svWH"
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pHBTU1Q89xIR for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Mar 2022 14:18:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com
 [205.220.165.32])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2F61540004
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Mar 2022 14:18:10 +0000 (UTC)
Received: from pps.filterd (m0246627.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 227BjMIW009281; 
 Mon, 7 Mar 2022 14:18:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : content-type : mime-version; s=corp-2021-07-09;
 bh=iXEMGFmUXjuLGPTVuB3vVC9D584EDVpm6bakaDLUXWs=;
 b=dsRLB9TaMtxSU4F26CkGGvfbgAXOzrUBTuJfWuT+FdXNLoMhY9bz6cqrImx4qeLv8npz
 489vhcGgV+OgaeAIiWk9dVU8AZ5DVgnEHcUzX5mEXzrwWVnK7rQF5FOApmRoozx0ErHc
 X0lgnfjQ6KFc3R7ZWln4LM7eNgVL/U+qrUhDCYvJ5dGNR2lDIfNCLlJT1mC48MXOGbzQ
 vIC1F8jReYbqplTpxDnaivZ85GpVJSHfRQENoR7Gar6IpjAC1gzqAKL9ShPVNqs52N09
 FyA4KqWKnlxDM77vYwM5T8HPfyKc0FuU2cTUBpBWx7z5RKmN8nWcY8CnAGTE/zX45Dnw 6A== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by mx0b-00069f02.pphosted.com with ESMTP id 3ekxf0m04k-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 07 Mar 2022 14:18:03 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.1.2/8.16.1.2) with SMTP id 227EFERa025469;
 Mon, 7 Mar 2022 14:18:02 GMT
Received: from nam04-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam08lp2042.outbound.protection.outlook.com [104.47.74.42])
 by aserp3020.oracle.com with ESMTP id 3ekyp170q7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 07 Mar 2022 14:18:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Fp9UmjNU11Z0ek4AEMrhpViqvoxVbYtjt97dDakd5LjW/h112KEHseMrmfFebx0gty8YvqpxViOQ//Y3bCqXlzwzvILwEFhdNBCvfv0KPk/BTHFscRI8InHRElfR6w4tZ9cOcqTCNqbzyg+DdFNZZrGHUx3Q0lr5GWNzxGSlEkA31qlvAZ1VPvSjzb8820gimrkY9TBROCp0QLBs4BD3gWouFSop/kFZnqjU+LzT2aypyGErsUjaF1NXzFiJ1/GnVmpfOquQR3sb/q4+xmIDC7CatueoUKPvmQ3gwGxAtgM/An2k0mupnPGrd5KQ3lwsiUyV2kxG53tDrE+lvzCZBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iXEMGFmUXjuLGPTVuB3vVC9D584EDVpm6bakaDLUXWs=;
 b=f39LccNsGJMuBmq+AzAV6kkyBq/XdJLNF/nf/tgmuWEmKclWWr4u5dXmDhWLorOb4vuso6T/eT3soWm1qEpDBEI/Q2pw9nVX0AugcZyRVIBDrRsRJSlxydlilW5MceFzVAC6OY8RXQA+s6vkRvNvQp2auC9/5/OJvPVJz9e0C0JHPyLsC/6GNW35tZOD8liYk6Lp/HB1ZTwLUMXD3aXrCt/ZlZl48ZL0O4bbAZ3uigXFUpWw5U/AJuuCHow7dooqAd7gVJk/jBnVAJlqtejr7Bo3ecBsfkDgHaV8CL64SiWeXUXjma7+zjjPVVpHPyJ44xXfLjMiiJvhYho3yy45GQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iXEMGFmUXjuLGPTVuB3vVC9D584EDVpm6bakaDLUXWs=;
 b=Ewx4svWHkq25ffXLhsGTrB0DhZFRiM19unrVUUtZu3RhZqv1ohfBcm9hLrx1tftf6fxCvTa+ouJkGgITxM20eGu7YTgEXzT2RpRDTmgY2JAx1gdai7ruwDJxHa322TXU96uJ1bkPpPp6/Y5QiEapy1YA3U8aC38U/K53OFApPOw=
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by MWHPR10MB1502.namprd10.prod.outlook.com
 (2603:10b6:300:21::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.15; Mon, 7 Mar
 2022 14:18:00 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::2c3d:92b5:42b3:c1c5]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::2c3d:92b5:42b3:c1c5%4]) with mapi id 15.20.5038.026; Mon, 7 Mar 2022
 14:18:00 +0000
Date: Mon, 7 Mar 2022 17:17:46 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>
Message-ID: <20220307141746.GD18867@kili>
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ClientProxiedBy: ZR0P278CA0104.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:23::19) To MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2fe3e30d-0ed8-4c1d-03b2-08da004548a8
X-MS-TrafficTypeDiagnostic: MWHPR10MB1502:EE_
X-Microsoft-Antispam-PRVS: <MWHPR10MB150247670F94118F7A7CE3D98E089@MWHPR10MB1502.namprd10.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Eo0Et9hVa1nJNT7IG8iKn7p9JbBu4x9ZsGN6B1tEAS0xxngBHVQtvf2WIVJhSOB9nmlHr9uhnfuXCiCwhHDElsfiXPFU3Lwl/5zE/bxqSI8LnnjMa/JXlHlCip+IaKOp71HA2XFrGJONj31BIW5RRmo7YQK2N7owSx+RWkx1CoNhI5BCwaYR4g5p+9Bn2OeiolbXdRaSbJYqUieBq0z/yHN1MaKGVDbmGzPjupK4MoiFP8zsER7a2X3x6njjso+Jv2Lpnm3U/MjQo2BM4IfpRgkCOWCj/6qbV42ErT0b1R2lfSG44+yO4O8kbFWLUvPs60Z8tanDXeDzHiy/4sndusGwpzDUMtw+7yE81Q1W7SCdeZQv1VxDbfI/QiCevw/ZR61sm+oQ9v7Jq7in7sbj9zCh+7F/jSXRP09ZKM8VI1AmtFlkca4fAU7j44s9Q9vsjcRAdF46VNS2VwRsHyC0+pHAPAP/94hxDK0QTd551NPyC84FakdWYH0hF0ibMwmWXH4rUjG1ZoBYmWLVxuPicUe0ZKv0HCGMEbOLE3J4oxfolQkC4xYoy7XGoQ3T8cEgwdpNXwiMUBLJBEe/7scHwfBiCvq+hQ2pUh6hsEAulm4W3H7UVYWho2RuPFWuICFsRZ44zzb4/vkhlUs7ux9xHlIJtxoLmx+H3cA19ZQU9ADw58iHs0+bGc3WXe04Dn5jXV3OCDK2+pqRmKML/kFW2A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1001MB2365.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(7916004)(366004)(5660300002)(66946007)(8676002)(4326008)(66556008)(66476007)(38100700002)(38350700002)(33656002)(8936002)(54906003)(110136005)(316002)(33716001)(44832011)(4744005)(2906002)(9686003)(186003)(1076003)(6512007)(52116002)(86362001)(6486002)(26005)(6666004)(508600001)(83380400001)(6506007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?wDrUX6Nd6Qd9NoyH8CaqsfRjbxmvslo59i3vPtkWPDe0X+Z6dlxGngGd5jP7?=
 =?us-ascii?Q?Re8wjxpUznDO0uxXK5t+P5TIdip1DsFq1q8eT8NGoisNSbSvRN3h/TrDHLY8?=
 =?us-ascii?Q?Z6bC4t3n5f4CGJ84s02xeiLUduaHmqU+/rly39avNRgAzvx+AIsCzu6XN31s?=
 =?us-ascii?Q?ax2VTHvl+FeT4tZ0o/ml3fIELKa6vO3lDXJR4TcDCtdgD9B5z6WpAnWzBVan?=
 =?us-ascii?Q?DAtnQFKmqIr7aEDN1QTJoJrxY1wZEDkkOKNg+VXgYPCNN7zJwjvLdMtCWtus?=
 =?us-ascii?Q?9j+walcDSzyfDEii62GBsUvbUK2Z8xHT0GoRbc4HDmU8kfZGYi+98/phUOtZ?=
 =?us-ascii?Q?K3rXbaUZG5Q2VWcyOJpb756RYgOul1q9k5BBmOvoPbgzWX2V9vgmtkUzWOVp?=
 =?us-ascii?Q?J9PFnLyDmGQzxKjBhiYnH5RIUj9xp4T8a5S8SzeeatesvEoZyn1/ER3z62fp?=
 =?us-ascii?Q?XFOSowbFDAtLgwNjHeRyquu5QBKimUs2mrsoYEEo66dEUC1H3iriwo4ccI6Q?=
 =?us-ascii?Q?NIvEf3xxrD/rJrmccV+U/6AYITyBQPNcmMqc5XgnnyeilyX7sZ5MyFA39GrL?=
 =?us-ascii?Q?OX29ktOUWds69kzXrAhwwVpC9oMbuyQjUquaVMaSjFvUdoP4fJJTRPcf8lIB?=
 =?us-ascii?Q?zvuaTg8WfXV9063j/CYiMs1+e//1JyRJ73ZHOfmyyp9vHYG7wceOvUDXmNyI?=
 =?us-ascii?Q?7nWU6rd61DYVnr/IHw2e7NwwcNgRiWVDsYUZWuF15BxnUuaigxWPGt7TzKH7?=
 =?us-ascii?Q?VRXRXPw/f6g7uwrp7iNYz9bPuU0bKSZCqcm6kuJOh6F59lmwQm8+kdO/98qq?=
 =?us-ascii?Q?hPSO9f59ZhT16SH6lKdRZPq0dg6ntB1M+FJkyawH70Ttk7olEhysOYd5o2Kv?=
 =?us-ascii?Q?0b/cC/nvTVAqZXbR9I5YAYziQn3qdcNU/BFtKpzrVJkoGzgrr/HBqONm6JSR?=
 =?us-ascii?Q?IQV3kjDgkOGBPaOMPg88e38nwSW6CZRsiZXhsAMjP5RxH2nb4SlfECivaIvY?=
 =?us-ascii?Q?4YROJX8wivbolyr5zlZvcg22gmi5ZuiAMf1ngbqSR+O7SBKirsVvcgJejWtC?=
 =?us-ascii?Q?nte9pAsZq4CjItPMjrGM5gojXwlUt0USWnhdijAXlG5foqGbR3+OcSe9a1Ja?=
 =?us-ascii?Q?N0HNTq8hakh7oJYyQ2s02o3wfE6RhE7V2B1nx/zJhAj+6cMvr7zm7qf3Nk8y?=
 =?us-ascii?Q?9Q1zLirp1rzdk4KV+KJMkbPxcZ8k1GgvhD/fEZ3hhg3PFrOqVljvxL/lCz0h?=
 =?us-ascii?Q?iBfFG8Er3OWjSDoK9Jb4zxsjd7z0QG4NGj6EPW6ji8eCaNtAPO+yNd3lu7y3?=
 =?us-ascii?Q?1g4vILs8Di13RLCw8LnVDUtJeNuFNlwapbTa49JAk4TIdux5OcszUispYkoJ?=
 =?us-ascii?Q?FTYw/EKzQC6YL5uUVkjD1YjhC/b3wST0JiWlRbnf1wV8RJ0I1KM2n0WEFal3?=
 =?us-ascii?Q?A9d8S1foR7+uaiOgOZR8d/TchmtqH3ovckZ46uNVpfr/oi0iPFJu3Bzy5rmR?=
 =?us-ascii?Q?K8KBQGYeqTmRHvNEa7fs0szfIUE6GQt2JLdy8Kk6xXwnaz1qhHLv4K0wq4gg?=
 =?us-ascii?Q?p8ZAJXXNTJYvQT5qEjhQ3GLw2NVG5Fk2GPSU8ih2wvIL0HExnhM0t/2BYc6a?=
 =?us-ascii?Q?t2ts94+uCkMIuvNfpSVX5xlhFk5n6RNRa3aN/6qoq1FRBL2mynwJttSs+pWG?=
 =?us-ascii?Q?IjeqJg=3D=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2fe3e30d-0ed8-4c1d-03b2-08da004548a8
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Mar 2022 14:18:00.1810 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SuLsqhf7KclA7tm+TyX04Gnm815rV2b+bYNGShjtmCbfd4sjO+3Ih/c2o3b69KDH8AgjDtOMHp30rnQNYdB2UVJeKEjD55X+kufAz9D0Crw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR10MB1502
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10278
 signatures=690470
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 phishscore=0 mlxscore=0
 bulkscore=0 mlxlogscore=999 spamscore=0 adultscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2202240000
 definitions=main-2203070083
X-Proofpoint-ORIG-GUID: eWMHNc9KcYLCyjZY4Fs6t7pV0KFqQUCi
X-Proofpoint-GUID: eWMHNc9KcYLCyjZY4Fs6t7pV0KFqQUCi
Subject: [Intel-wired-lan] [PATCH net-next] ice: gnss: fix a NULL vs
 IS_ERR() check
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
Cc: Sudhansu Sekhar Mishra <sudhansu.mishra@intel.com>,
 kernel-janitors@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The tty_alloc_driver() function returns error pointers, it never returns
NULL.

Fixes: 43113ff73453 ("ice: add TTY for GNSS module for E810T device")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
---
 drivers/net/ethernet/intel/ice/ice_gnss.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.c b/drivers/net/ethernet/intel/ice/ice_gnss.c
index 755e1580f368..333c085a228a 100644
--- a/drivers/net/ethernet/intel/ice/ice_gnss.c
+++ b/drivers/net/ethernet/intel/ice/ice_gnss.c
@@ -253,7 +253,7 @@ static struct tty_driver *ice_gnss_create_tty_driver(struct ice_pf *pf)
 	int err;
 
 	tty_driver = tty_alloc_driver(1, TTY_DRIVER_REAL_RAW);
-	if (!tty_driver) {
+	if (IS_ERR(tty_driver)) {
 		dev_err(ice_pf_to_dev(pf), "Failed to allocate memory for GNSS TTY\n");
 		return NULL;
 	}
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
