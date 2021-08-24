Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 855833F59B0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Aug 2021 10:11:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C258940534;
	Tue, 24 Aug 2021 08:11:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1DqvR3jd6nDE; Tue, 24 Aug 2021 08:11:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8707F40541;
	Tue, 24 Aug 2021 08:11:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1BDD11BF2B9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Aug 2021 08:11:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 07D4040357
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Aug 2021 08:11:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=oracle.com header.b="ylxV8+09";
 dkim=pass (2048-bit key) header.d=oracle.com header.b="GeZF/prX";
 dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com
 header.b="Ljqt59+O"
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fOSzvTGfeXix for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Aug 2021 08:10:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com
 [205.220.165.32])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9A333400BA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Aug 2021 08:10:57 +0000 (UTC)
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.0.43) with SMTP id 17O7LtCP021314;
 Tue, 24 Aug 2021 08:10:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : content-type : mime-version; s=corp-2021-07-09;
 bh=on/GJubK+w7HU5rPu0OYEntcGGz3tyNL6g+gS5HNNr0=;
 b=ylxV8+09LqQx7aa/W/Y/cuMRwmFzihImyk48/O5mcbzYIhehwhE/pWRqeDE56di9hto0
 1igOeNNpx11w7iKfyAKSFGkEChjws9IW13WM6zSXjzSaM13GJJr44j0uWl+4iEObqE9q
 CmZzXkSzL6kZSY/TucHx43ZWDq01h2+YHGi/QCXubhNaePDkTsJ9/JX1KbDff2CxdRDa
 cOlgDq49zaHaNOKmABOYMw60yIKRfdUJgjEX51MhbCM5oO0T3EmBgW7fFRyLpm+uyD95
 MVMGHTDwrrGzPGFigKz961oO92RLk2nv+fqZC79djJ64agDTiwj0Fk4ghPYY87I8kOa8 DA== 
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : content-type : mime-version; s=corp-2020-01-29;
 bh=on/GJubK+w7HU5rPu0OYEntcGGz3tyNL6g+gS5HNNr0=;
 b=GeZF/prXoIrFIDYxcNWUHUS4q25CPtJW+8eVzi3t/2I9nj4yghoLpKIdgwUb/uFnu4zn
 vZlp1Yx6+KP3xW7W2lQCfYLPgQyaK7v0n6FN+myDbLukbx4LxW3Af5oJjkThqOr2Y1Ko
 hJ+0x5SWy0QhS97KqXhu+AgOzwcgXFjZJoNCETiI4Ln35kvllU99Rc4iXZOBcMQZ4zgp
 ZO1jOaDDELObO+DPXwqzPjNK+M9S9NtPA/9F5OZ5fGLcuHI0u35n/bzbd1MFBylyS4Bf
 T9Kn7mR3PjCLKk+8AMkY0qjho+tWMdQVXSo2ucIGZP49+T1BfqN2gUssBNuc3nyDTogJ DA== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by mx0b-00069f02.pphosted.com with ESMTP id 3akxrebh24-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 24 Aug 2021 08:10:54 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 17O85WAX016247;
 Tue, 24 Aug 2021 08:10:52 GMT
Received: from nam12-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam12lp2175.outbound.protection.outlook.com [104.47.59.175])
 by userp3030.oracle.com with ESMTP id 3ajpkwuge8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 24 Aug 2021 08:10:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dPHFdm4kJ2IjqzCiq6BTLsrureD7kB7t4BJiZxNLEq8/uf7iAkZ4SbEq8yXkJ1zQXRm9RsybIL1sFKVQ2019OqQCm6fW+J6HBvstWLbNd2gYFmNqrSgxY/esvW7h07bf48BvxfNcTLgBfCt0fSEJd0pxRVpWx5YwuySn6bZ9Vx/Ih7mN5qkRgNcw6kI+xv7vu+/9quSVWjsGhUla/+LCzT2BS76eRs/lzXKfn3cpaQ6v4dR5iMcldCUNZw2/kdzd4qjxbG3LwRKnWQLWlQcoQ4U81UMfu3NRC2z0QA848+P/EXp4lsTSXmJd3PROSe2CZ4EFlMOnG6RBrAG+ixnVcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=on/GJubK+w7HU5rPu0OYEntcGGz3tyNL6g+gS5HNNr0=;
 b=YrAqM45BiGp/exnQCr58w7aaN2Epot1lykuB9nqnKH0gTmhE4pULm371QejdVUhl1AEVi7trSwTxKWBzx5N1u/cFjpszjHldfcC8/0J+Qif9M+asBcEBRdfgLOayH5CZ2WEXV/01PEkWWLbdIEMzMOWRlYRuNSKmRSnCjEhWOoKbIiNBdjboBBcXvdCx2n2PXwvkevNr1VWNavYbBFF1WSfBQonXmB+kJzgNyUnuCmAcFzIhMNrFmppApfvx8OjCVHgidA2nbvoiHtNzdyKUNc5b2wtkEtcLR7JaQGu0vT8PGfiBIq8KPPo/y2xXIlFd8gq+h41Q6Ul/wQN8KppwaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=on/GJubK+w7HU5rPu0OYEntcGGz3tyNL6g+gS5HNNr0=;
 b=Ljqt59+Ocdo/eeiipVM5d7iHnt4squIA4yjVaiTCjD1uNKTS7MW+4fmVfENmwBrfKWxzL+YSY0TqKoyIzqpgVtuCjHQPu0Z9hJMAzTIGLUtK+XS6RHFYbEwaxqIk/0AxAMEbUW9uLt0lmU6mnfhRbkn2hb0Msils9fTeYMhCUXg=
Authentication-Results: kpanic.de; dkim=none (message not signed)
 header.d=none;kpanic.de; dmarc=none action=none header.from=oracle.com;
Received: from CY4PR1001MB2358.namprd10.prod.outlook.com
 (2603:10b6:910:4a::32) by CY4PR10MB1814.namprd10.prod.outlook.com
 (2603:10b6:903:11d::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.24; Tue, 24 Aug
 2021 08:10:51 +0000
Received: from CY4PR1001MB2358.namprd10.prod.outlook.com
 ([fe80::784c:a501:738a:143a]) by CY4PR1001MB2358.namprd10.prod.outlook.com
 ([fe80::784c:a501:738a:143a%2]) with mapi id 15.20.4436.024; Tue, 24 Aug 2021
 08:10:50 +0000
Date: Tue, 24 Aug 2021 11:10:39 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: sassmann@kpanic.de
Message-ID: <20210824081039.GA16756@kili>
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ClientProxiedBy: ZR0P278CA0140.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:40::19) To CY4PR1001MB2358.namprd10.prod.outlook.com
 (2603:10b6:910:4a::32)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from kili (62.8.83.99) by ZR0P278CA0140.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:40::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19 via Frontend
 Transport; Tue, 24 Aug 2021 08:10:48 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 543998ef-53de-4cfb-5c6e-08d966d6af9f
X-MS-TrafficTypeDiagnostic: CY4PR10MB1814:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CY4PR10MB18145EB27BE1CA9D537E78238EC59@CY4PR10MB1814.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1923;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: aKK8um/yiE1Pdk6Sfd9R4mJM95piHL/BgM9mCXM0yIJ9qQL0mMr71GStwGGZQXChGUeTL3eeR0CwfChM+UpcNQrHyM0tk0F831uUotCmthYH2NOegilc3mg2v++QJE/Y9JtFydpTcO9nIVqaMTcBSUBsThvZLPS+zJTwPnX9YakJALPWP/wqQsp9COQvre9Hj8QSLZiUOKfejU2hiYPyg/yIV1X7gXa+wGyrSQpXlrhkAh0MbU03Sj2EAnFIlqJEI4NI49FNS8PSOOlAPCswtg3Sf+LkM2iPhDicJg5tLbNBepzVKjiC8rrOihe/T73aiHzEa/B01M9U8G0wh3zUlzJ8Yd+a5k7Av9QhwCWkmepwRnAHCv0Co7lOy7sS2xx8hhI8m8yROz7U0+7yfQg468pezDqhEcQZonmJK3bBut1Jy4KMZMRi4nxVo+33k61Sw3cURsCYh/Vy/dW2IbY8HbBGGMjtAuHzluyXenj/pHzFzhW2/bMCtD/c+SbvtBVW4qHFmYqwDDnnIIpYwyinC/XKchD8RFUhSFjyMZENPAaxA4j8iBaKeeXtees9BG+9gV8KTOb/QVtGz854qNNIU1L/Tg1dLmkxiTDWSJjMKwxKVtx0XRPBRLcz4CrrIQaOYG5Q1ZnCgq/dwLAoXA7OzPJ5PSmhjuXaozRDAqIq5o6n0ejDm4CUZardIf1KWLyrAVWs4QaJwVxj3LTyIXz2AA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR1001MB2358.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(136003)(366004)(346002)(39860400002)(376002)(6916009)(86362001)(186003)(478600001)(38350700002)(38100700002)(52116002)(55016002)(26005)(1076003)(5660300002)(956004)(44832011)(6666004)(4326008)(33716001)(9686003)(33656002)(2906002)(8676002)(66946007)(66556008)(66476007)(8936002)(6496006)(83380400001)(316002)(9576002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?5Ycilk0zdZQWkUSyYpnxrJrhlXKkiiImvAewq5fCOkjRY69rB1FpKK2PqKhr?=
 =?us-ascii?Q?Dzf9NUyVUbgnCujFcSwcEpjuYkMk+gybOOcjiskZkYgEqbSdaZS1hmvi9i2H?=
 =?us-ascii?Q?ge2wrCcmtOPGJiZQZnOH3ekO6wvbw1ueDhHGglMuwVNazCsMuvUPenc2iGCw?=
 =?us-ascii?Q?t+53SSEXa7zoC8+oI49cqzJXchsveZ/OTVq90MptXlVBvHiWR1rgsInxBDS+?=
 =?us-ascii?Q?HPBXHSUQ56MZpF9mVapCtDiHu4DNrNp1/6JmQdhyduOQ64aJdrSnFgRTWzUo?=
 =?us-ascii?Q?b19zqH9Xrbbk3+iJT77fZqR+rNu/kecTyvCfMaZnkVy/SDAZzkbDta8qDcOa?=
 =?us-ascii?Q?pcnDFtqyCGvUbDSzY7kFf8YaZ489VbnLkd1x5j3/lzWarXcsoKmJEwRFxRe2?=
 =?us-ascii?Q?QYAyqWGE/ZyYZXiWoJdmzl5SV+cQr89EW1eWzWSmvayaal5H3Seh4aT/9HaH?=
 =?us-ascii?Q?MCXd923fZ2J7W1JZtralJWsJIoihyEGfvjVHZbSRE3Y7cXuZPhSZ+Bk6ULyX?=
 =?us-ascii?Q?qeTCZKJ5B5Is6yiVPh9Dlpo6g3AcIXYOkVPjT8Qld2sWH/lYdc5iFzOSxFf1?=
 =?us-ascii?Q?/mWHaHGdKEo2DUGAtEjajOlg+XG9/SjUNrUEEN2kZQs+o4u8srsZru+xWxEV?=
 =?us-ascii?Q?tEiEnwVtsIkrlloacX6yPY//PqUhcj99xyUZgfM+EVtie8UaO0N78d+0C8qu?=
 =?us-ascii?Q?PIKQ6S4zzQ6f+yfEenKLS3Zr07vori9eikKSm76Piq0qNwMLSuWm1CwNxHo7?=
 =?us-ascii?Q?s0PvX6TTNraNrFQuHnGY4l8pDI4FrrG9JsfsLBhKjAdulLTR+MddVpv+rz6X?=
 =?us-ascii?Q?uP/SUKFFpWoQ8ExYRJ7VBvt2FsGZweodKyXZOVAca4XEAz6TMY9+Z5xAOYhQ?=
 =?us-ascii?Q?AEYN57fXl2vmJYsLoOJY2LnUxwsH4MPZuiFrZlLgb7iPp07x/TuT9Kxgzjff?=
 =?us-ascii?Q?NNKGNDPIU34a6Dl59euDKBseFahG3WMQVn5svh96YgtYfNS5ziPerYoVVmyA?=
 =?us-ascii?Q?A5hV5IGGN3srD5bvDUt0ygUJAbFGpxiWLzKjbdd+VKfpf4pXjV2u1ZIr8zWS?=
 =?us-ascii?Q?cH+zuCir1tk6ju5f0oZkHoIqiFwuH/m8WUXkJrK3ZV3SYXsD0afcBWxHnjgS?=
 =?us-ascii?Q?kqR1mcJnt7WTLKcjsF9Sa+lDUXPWjWsFoqxS7hOBl1UDHJK/mM5X9xHfOfyC?=
 =?us-ascii?Q?z0VLBBaCTDrjR90Gzh/rhDG1RhW5y5Lhx4zqI6NcWu5tE+oY2ZiRfWYMeQ48?=
 =?us-ascii?Q?yAOuIsy69G8UftxXpE/w6nmGmTIXkXf6HN7XT7BAvtw+1h/fseOx/5Jd6Xmd?=
 =?us-ascii?Q?eQh5JJCkDA6LaREb4ZbnN/mZ?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 543998ef-53de-4cfb-5c6e-08d966d6af9f
X-MS-Exchange-CrossTenant-AuthSource: CY4PR1001MB2358.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Aug 2021 08:10:50.8954 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Lxr1UTK8FY5gvCbrVoSV0XuUjk6C5soMzFt3i8TNBluqXZW4Nudp4JKrSEnl5Qlyw0QVp4YdQ+sX65L/yYn/o2oMHJtMAg3zOJS5sUSJCEo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR10MB1814
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10085
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 phishscore=0 malwarescore=0
 mlxscore=0 bulkscore=0 mlxlogscore=999 suspectscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2107140000
 definitions=main-2108240055
X-Proofpoint-ORIG-GUID: unakTNWh-oFaUTsgbO26vuXn3M3DFcfT
X-Proofpoint-GUID: unakTNWh-oFaUTsgbO26vuXn3M3DFcfT
Subject: [Intel-wired-lan] [bug report] iavf: use mutexes for locking of
 critical sections
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

Hello Stefan Assmann,

The patch 5ac49f3c2702: "iavf: use mutexes for locking of critical
sections" from Aug 4, 2021, leads to the following
Smatch static checker warning:

	drivers/net/ethernet/intel/iavf/iavf_main.c:2019 iavf_watchdog_task()
	error: double unlocked '&adapter->crit_lock' (orig line 1968)

drivers/net/ethernet/intel/iavf/iavf_main.c
    1932 static void iavf_watchdog_task(struct work_struct *work)
    1933 {
    1934 	struct iavf_adapter *adapter = container_of(work,
    1935 						    struct iavf_adapter,
    1936 						    watchdog_task.work);
    1937 	struct iavf_hw *hw = &adapter->hw;
    1938 	u32 reg_val;
    1939 
    1940 	if (!mutex_trylock(&adapter->crit_lock))
    1941 		goto restart_watchdog;
    1942 
    1943 	if (adapter->flags & IAVF_FLAG_PF_COMMS_FAILED)
    1944 		adapter->state = __IAVF_COMM_FAILED;
    1945 
    1946 	switch (adapter->state) {
    1947 	case __IAVF_COMM_FAILED:
    1948 		reg_val = rd32(hw, IAVF_VFGEN_RSTAT) &
    1949 			  IAVF_VFGEN_RSTAT_VFR_STATE_MASK;
    1950 		if (reg_val == VIRTCHNL_VFR_VFACTIVE ||
    1951 		    reg_val == VIRTCHNL_VFR_COMPLETED) {
    1952 			/* A chance for redemption! */
    1953 			dev_err(&adapter->pdev->dev,
    1954 				"Hardware came out of reset. Attempting reinit.\n");
    1955 			adapter->state = __IAVF_STARTUP;
    1956 			adapter->flags &= ~IAVF_FLAG_PF_COMMS_FAILED;
    1957 			queue_delayed_work(iavf_wq, &adapter->init_task, 10);
    1958 			mutex_unlock(&adapter->crit_lock);
    1959 			/* Don't reschedule the watchdog, since we've restarted
    1960 			 * the init task. When init_task contacts the PF and
    1961 			 * gets everything set up again, it'll restart the
    1962 			 * watchdog for us. Down, boy. Sit. Stay. Woof.
    1963 			 */
    1964 			return;
    1965 		}
    1966 		adapter->aq_required = 0;
    1967 		adapter->current_op = VIRTCHNL_OP_UNKNOWN;
    1968 		mutex_unlock(&adapter->crit_lock);
                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Unlocked here

    1969 		queue_delayed_work(iavf_wq,
    1970 				   &adapter->watchdog_task,
    1971 				   msecs_to_jiffies(10));
    1972 		goto watchdog_done;
                        ^^^^^^^^^^^^^^^^^^^
Goto

    1973 	case __IAVF_RESETTING:
    1974 		mutex_unlock(&adapter->crit_lock);
    1975 		queue_delayed_work(iavf_wq, &adapter->watchdog_task, HZ * 2);
    1976 		return;
    1977 	case __IAVF_DOWN:
    1978 	case __IAVF_DOWN_PENDING:
    1979 	case __IAVF_TESTING:
    1980 	case __IAVF_RUNNING:
    1981 		if (adapter->current_op) {
    1982 			if (!iavf_asq_done(hw)) {
    1983 				dev_dbg(&adapter->pdev->dev,
    1984 					"Admin queue timeout\n");
    1985 				iavf_send_api_ver(adapter);
    1986 			}
    1987 		} else {
    1988 			/* An error will be returned if no commands were
    1989 			 * processed; use this opportunity to update stats
    1990 			 */
    1991 			if (iavf_process_aq_command(adapter) &&
    1992 			    adapter->state == __IAVF_RUNNING)
    1993 				iavf_request_stats(adapter);
    1994 		}
    1995 		break;
    1996 	case __IAVF_REMOVE:
    1997 		mutex_unlock(&adapter->crit_lock);
    1998 		return;
    1999 	default:
    2000 		goto restart_watchdog;
    2001 	}
    2002 
    2003 		/* check for hw reset */
    2004 	reg_val = rd32(hw, IAVF_VF_ARQLEN1) & IAVF_VF_ARQLEN1_ARQENABLE_MASK;
    2005 	if (!reg_val) {
    2006 		adapter->flags |= IAVF_FLAG_RESET_PENDING;
    2007 		adapter->aq_required = 0;
    2008 		adapter->current_op = VIRTCHNL_OP_UNKNOWN;
    2009 		dev_err(&adapter->pdev->dev, "Hardware reset detected\n");
    2010 		queue_work(iavf_wq, &adapter->reset_task);
    2011 		goto watchdog_done;
    2012 	}
    2013 
    2014 	schedule_delayed_work(&adapter->client_task, msecs_to_jiffies(5));
    2015 watchdog_done:
    2016 	if (adapter->state == __IAVF_RUNNING ||
    2017 	    adapter->state == __IAVF_COMM_FAILED)
    2018 		iavf_detect_recover_hung(&adapter->vsi);
--> 2019 	mutex_unlock(&adapter->crit_lock);
                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Double unlock.

    2020 restart_watchdog:
    2021 	if (adapter->aq_required)
    2022 		queue_delayed_work(iavf_wq, &adapter->watchdog_task,
    2023 				   msecs_to_jiffies(20));
    2024 	else
    2025 		queue_delayed_work(iavf_wq, &adapter->watchdog_task, HZ * 2);
    2026 	queue_work(iavf_wq, &adapter->adminq_task);
    2027 }

regards,
dan carpenter
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
