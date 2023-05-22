Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 572A070DFE0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 May 2023 17:04:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 57629820F4;
	Tue, 23 May 2023 15:04:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 57629820F4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684854283;
	bh=bkIwGqORXe4VTHqkdCleNL1c3bxXrcNNQqV6EHLGGaU=;
	h=To:From:References:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5JV7uRLeuLAOCXKU2FD4spU8Y1i+2jPPL/6EXMZNP/3CPc0wtVQvHFPRgAXIchys2
	 4o3B86lINAR3bLb4rAysyw/eD4Bkp1paGaWAGULRXa1CsDD9D4VpZdRFBDkT8jU5zk
	 +0WRs/OSHzckX1w69c0oduyqyqce596H9kkiid4sd99JX7l7zOy/rd7S75TTl25T+W
	 ozz1Dz7qR81jn4Brs/bLsENOJvEm5eXZCvN4IOHLbk//+VXMkjlm1yAyYXALLRN/Hv
	 2f/KnFfC180E8NQZb+hTj9hCa5YPnSgw5DHMp7UgcrFrcDnBYCY/GdJIUvZl0+RL/N
	 g/mqKdH0+iN+A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Er3sgqGljkd2; Tue, 23 May 2023 15:04:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F2685820D4;
	Tue, 23 May 2023 15:04:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F2685820D4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4C2CB1BF38B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 22:43:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 309AF605B0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 22:43:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 309AF605B0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uTpTH4EFOKUz for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 May 2023 22:43:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7E1486059B
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com
 [205.220.177.32])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7E1486059B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 22:43:24 +0000 (UTC)
Received: from pps.filterd (m0246631.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 34MKNrl2021957; Mon, 22 May 2023 22:42:58 GMT
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta02.appoci.oracle.com [147.154.114.232])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3qpp3qktkk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 22 May 2023 22:42:58 +0000
Received: from pps.filterd
 (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (8.17.1.19/8.17.1.19)
 with ESMTP id 34MM6f7s028913; Mon, 22 May 2023 22:42:57 GMT
Received: from nam11-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam11lp2175.outbound.protection.outlook.com [104.47.57.175])
 by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 3qqk2a2chu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 22 May 2023 22:42:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AhJs5JUNBZdbFRThdMLnIGGZbwbAZkkrpQzAyhTHISKVCq9HpS+n4BUtr5tEx8qi7xkouzo9wZ1P5uXtQotYgBPXVestYcaVN1201vFAvpDuwSCYS4SP3SUS4YksRIy9cjYuu8f2w67zVr688I+qd676ThOkPRoOJWU+zEAjSwxjA0+kuz0sDo6et6dib2K7Rp4qHrrKBtD5Y6pwUI5Q+A5gvzsk1mWwG9AijVE5FL9Iq5NpCUG3TM3OaQ+Aet+EcoTmNb8+CsmfL2MkjolyFY+ByVan0Ls2TXTd2+46MmAoqT6vHiLAp6NQX/2mP8pZLZGo4rvXq5mSJCjxypVaMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+x4LjIcpcS+34wzkY+sZHYRICli0sHAdsECdUliq7zQ=;
 b=TIpHKisSUzBp6VYJqt0RX8QlNKQQC5kidliFP4QNdgOaSPqm+bS7SEGoDLFqXBtwoWbLNK/9iafQgIOEEDU2CHN4BWzDLR+bW0HKdgpUCYt7BJ67jNFrNauBfTCDfP1JBxLNH8FT4VOV1qrLy2y0TgUkSvsRUCZ0PdpXq5jbCmXQuba2mLermQyrAdjSzw510ekOg1R4/a+CY0m3UiqWF5GPjFb1lmIcUqdbnzEYl0Ud/VyNUSVBAaAUcvHAQ9ZPsSeYft5v04Xeza+Jh2tixcHWU7T6YfvE/DXPLKmT4UIWGRY2maD/+Ob79+9BcgHbQ8chYq+Q0T0w9ed5RodyCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from CO1PR10MB4754.namprd10.prod.outlook.com (2603:10b6:303:91::24)
 by DS7PR10MB5149.namprd10.prod.outlook.com (2603:10b6:5:3a7::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.28; Mon, 22 May
 2023 22:42:54 +0000
Received: from CO1PR10MB4754.namprd10.prod.outlook.com
 ([fe80::b846:21bf:b5cf:67a4]) by CO1PR10MB4754.namprd10.prod.outlook.com
 ([fe80::b846:21bf:b5cf:67a4%5]) with mapi id 15.20.6411.028; Mon, 22 May 2023
 22:42:54 +0000
To: Kees Cook <keescook@chromium.org>
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
Message-ID: <yq1353om1ie.fsf@ca-mkp.ca.oracle.com>
References: <20230522211810.never.421-kees@kernel.org>
Date: Mon, 22 May 2023 18:42:51 -0400
In-Reply-To: <20230522211810.never.421-kees@kernel.org> (Kees Cook's message
 of "Mon, 22 May 2023 14:18:13 -0700")
X-ClientProxiedBy: SJ0PR03CA0346.namprd03.prod.outlook.com
 (2603:10b6:a03:39c::21) To CO1PR10MB4754.namprd10.prod.outlook.com
 (2603:10b6:303:91::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR10MB4754:EE_|DS7PR10MB5149:EE_
X-MS-Office365-Filtering-Correlation-Id: 207475fe-0e3e-4c7f-93e8-08db5b15e190
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: sxTdtmSg9GxVdtoFnRbly6PoL/+brjCwwmpu6BRKo3g6//ARATxswJqynFXvVbQ7bLW9MZ/n+rHIDRC47Q/VCFJ0obUpz5UkCQ7gea66K1HqvNYIjX8dNW9IXC6D+kJbp5DCohb7Gtj9rfCsXEofBSt3xGhK3OGWoGLB87t05N/Z23HkhxzIcQMxtlL0ZwcueWfEAa+3qsTlhSfpgqFDINkFWTPS6D7lpnT/2ENRB8/XXA2SqvtLhmzetWKwtKpZSuK3bT5+DAhBetmulLnYZpswizsn+d1LtLN9nIFhiukiEBzRVzlyCZPgb3FujVkpoUYNiv5vPiCgpi+eQ9zRr1j0SPNO7Lzp5tMLR1D0xVhNM1Z25u2jF5bhtbkeEgGfN2rCxsRrGmD90Psp6HrQ8CAOGXhhAVZQAvG+P07oMiCfPmLmk55WkEpjcH9myr/zOfz6heL2zwNE35Y272C8Oz88lG4a/kdnYZBKVUv71eFlaGJbLYLKM205+9Oq2MvOtKpfh9SOVf3pWoLYSj17I1PWhGfJH5kmcSZP0ctL/2Iyxf4z7vdj9SV4H4Xi4CP9
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR10MB4754.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(136003)(39860400002)(366004)(346002)(396003)(451199021)(8676002)(8936002)(7406005)(7416002)(5660300002)(6512007)(186003)(6506007)(26005)(86362001)(38100700002)(6666004)(478600001)(36916002)(41300700001)(4326008)(6916009)(66476007)(6486002)(66946007)(66556008)(316002)(54906003)(4744005)(2906002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?E6nNiW6sqY6jgg8Z6lcNAS5+45Z6dz6KM6etTwp4EFYGHe0ojZTHPm0DgAKS?=
 =?us-ascii?Q?C+FKFxfPQp5eRk74JfFXWrNt4PXaU9ByUbV2l0CUsixAsrEvrtpEpiVwlk0/?=
 =?us-ascii?Q?hDKZnIN1ql8nQELwjF+PLI1PcePa8H1ZmXj9Q49WNjli3/RMIowvGtd6avC5?=
 =?us-ascii?Q?urguITbjzqqNZ1vTlEZhhC14wyT8pFjeCqOPfSvg9dADAyvC58CAaVgHfJHF?=
 =?us-ascii?Q?FQ4ArfkR3r4z+dLqZ/ZjtDj6zyVtv1xUtVN/5a3txg/9M9ExCBkp37Dgc/rf?=
 =?us-ascii?Q?DOq6vI3vIQnJvrkGmMa5u+lvXpk9oTxZ/M9MA2r+bDIMrMsCnLO7fuREefTp?=
 =?us-ascii?Q?TlRtvesfm94IH9/pboM+hiBkBvamHpKYDmyVm9nnb0+2oM97v0PufTXDhOMH?=
 =?us-ascii?Q?ax8hkB7g18tzDHqf8PCEt20izk6JNzYdWd59yLj+uRYCi1/g13XShDBkZZMS?=
 =?us-ascii?Q?E1XCtedb7zAJsk4JbNg4ZUw8W/yYfHCke+ydAla4goyWfsZfVWtBGhKhw5cA?=
 =?us-ascii?Q?DtdEgViZJEbfvEjA6gwtgMxfkOOw5H5FPlVHO6+06wUX0BaKIn6ELviaTsBr?=
 =?us-ascii?Q?bfojByYcaPb0Kfpq6Q86Ykvpt5EAlDHzDapkgAktlSfcs1R/u+/etiRFdQKb?=
 =?us-ascii?Q?ODDkm4fAib54eZLyaE/OFN+zstT0mL6LDqAbxDAOh5DwBoV3LNbxDQVRTv3o?=
 =?us-ascii?Q?Bc8lyAOviEA7ekaFnNhOwIbFe83tj/tnYIPdwFHLnMIzpAUCGjc6ekhoACOI?=
 =?us-ascii?Q?FvfSWnxe3jkEqBXWd2iFRUQqdXxJCuM7AdA9I7j8MkYmB2kw5dn2rhXszOhc?=
 =?us-ascii?Q?AEAGXN7Ftrxj0k+2pCassuTtnVgr23MNYZuMiZVr4cHLgtvmq2jBafibEJLM?=
 =?us-ascii?Q?XBhNj9I1k/VdPJDj9Co/V0MxDSmzosW5xKC4W+jNrodhSb2WbLq9V7YHfjuB?=
 =?us-ascii?Q?CGv9xZJiduAXJGxBmS2Kmm+BCR9RcIe50DfAl9RrvLjl2MVjDPega9FFe/uB?=
 =?us-ascii?Q?z1tpqI8EZft4zNJnzvxIXdTFISiEHg3kSt0L7YXJ/REQpL+zg3GHaxc9Wne7?=
 =?us-ascii?Q?olcZzozwnqKhx+PsuBDKe7d3ioTVzgPjp3yK15sbLDnIY5P7jfJO49k7HCfz?=
 =?us-ascii?Q?qjq+rusoG1iaWfKhzmuOU3hGbQquT5/Hjwi/yvQICdj/nhLSBu2FizpGX+cc?=
 =?us-ascii?Q?tDjXTtOw5RC90DSx5uAmALugvMJugT4Cm53Qw4gILjVuDBmZekH0L6aMUxHT?=
 =?us-ascii?Q?BB3gcODxlBhFThwSOTt2mBNL/T2HGh2JzwLrYcwmIU25b7IREIITNsFGrmWr?=
 =?us-ascii?Q?o42Mo9u4+2aNJvvDp4bbXfhDj3klUL6WXi6B/xQ2WyT8BkY7IuVgVh7h0k89?=
 =?us-ascii?Q?zEKPYYk/aQ5EotVvQIsb3Kmj5Bho9PDF/lOoOt4Gw60ifbl+bOlmRXA7xiwh?=
 =?us-ascii?Q?7OUGr349Wd/UlqG0LmaxD2h8invpvbFcZzziB13gF+hTfB4MHb/s5/UXsGyc?=
 =?us-ascii?Q?NqkyoJlVme6OUfPtoE2+WgXGCBnURaIPjzbqi+Al1Wu7tbw8Wga4mAP70kk9?=
 =?us-ascii?Q?qGODydxFLY2sZ7eA6PTUiTbbtRT6JOcANuwvV7sZj9nAUIYBtnDagR7RoEf6?=
 =?us-ascii?Q?8A=3D=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: =?us-ascii?Q?faJnXqNaKaXpkA8BIlgIMJ9ZUVq02Ozvavw+vcaJQVJ6qDikC1xN6pajSIUJ?=
 =?us-ascii?Q?2kNfltjXN8d6W6wpdqJWJp8keWI2yR08nPlD71VgO7M1+wIuOERpya9EOup2?=
 =?us-ascii?Q?7SQ33xxrTAuTtlZZ1u42TI0UxgQksdvZ32r0GuFPH4OyWTgJ4UaCJnMK0p+O?=
 =?us-ascii?Q?Y7rKucy6+IqguAaGWA1WFI3QC8H09++Ox/XKEqP5fRu5cJFQYvOaBTuGAlxG?=
 =?us-ascii?Q?syP5+HgLN+EO2XtU9zbxu+HpqPH8el+VsvWPxBviM0VRkpIa/jXdF+HCrj38?=
 =?us-ascii?Q?nTrI6hLfwBR/m2egVoiZZwIGHeS6itx+EwCE56IzEQYoBDRZT3/SQXzeYU2u?=
 =?us-ascii?Q?nho6hZ8ypUIG9Wlk3KXDDguPmkmjFYwt6JhM1DTVLZ9EBNASS5raE+VfbopK?=
 =?us-ascii?Q?oU2e24yslthxvqW/V+y4A1Vby5r9zG3qIpcbQaiYPHUFCmh0wDli3iPJJMbK?=
 =?us-ascii?Q?FE2nhsWOIjX8h/iKNxy9V1WcW5T3LMcZdlu5BZsLFS50CGnCWn0a0mflhqsv?=
 =?us-ascii?Q?pXapadu+NzVn/Vqtsg8Zt9YX6Fpq9yG2f+Ertdtr2ltcfLA/P/Mq/FD7ZmdA?=
 =?us-ascii?Q?lWheG0hOq5dJSxDxyomGWYM6+I6VIzfwqbVcnUtXRzhBPXPvnm8zwSLxNDcL?=
 =?us-ascii?Q?8h99NHtiVRsCZBk9jZQ7+mL/nBP3Vx4cwktSvJdkzgCAZZndFKrBFHe5X/a/?=
 =?us-ascii?Q?CXP0MMW655kg0ZBIXxswMpDB2r5Ve8huM7/a/FEH95SmTGFnUgAOqyRsydpD?=
 =?us-ascii?Q?JKXOGGYfRD3zr/13Q24EK2mQ1PuSazFQ/NGurDmyaDGmEYHKCGqx0XSl5UnA?=
 =?us-ascii?Q?D5waEptxeWAAa10an3p94xdCpCsc6dTpC9TMc/LsP+ZpFfROVa+92GUq6A/Y?=
 =?us-ascii?Q?UtIUGPBdnP5xJOVcHG6cQat/9WDm8U5WaTIeX1Zv2Tia6qeVtBON5tIPoZvD?=
 =?us-ascii?Q?CWd6espg3ENMXjwkVOAva+sgb3W5TdRlNtWOLLCOx2mpLb8LeMYM1r2a8SwH?=
 =?us-ascii?Q?PwRXlx/j2sAMCil5kEIzDCNkwDPDxX7pPWZCny+xtthJHUuHd0Bm9f7IkJDx?=
 =?us-ascii?Q?RmXODtsjeJBHy6GZuBGeA6elw+9D6JaPh2k678tt2Lo1U9QFD2R5Xa7u+b6J?=
 =?us-ascii?Q?iJz22OX/jxBt2cIzDn48b1i1afrXHvRf51GMxBKpD0qqNnb7TBnbVuVaH+Yb?=
 =?us-ascii?Q?OwqTSMl6Etfo9lLfPB/1Jd/sRqw392b1px6fm6HINqz7MzCvCYk7A4kZf1dZ?=
 =?us-ascii?Q?1JkhCOQT15YZeEODtycUYyg10IG9RqxnA7KAUj5iCWAburhAos1vmD7le5mH?=
 =?us-ascii?Q?2ItIiRDAh/gTV+b8zP44SXaoSxITTOyQVqwEGNdU+JdRDPl98HOriFgXnkms?=
 =?us-ascii?Q?MxQEp/unkIJdsH25Weo7ruDr2Z2p?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 207475fe-0e3e-4c7f-93e8-08db5b15e190
X-MS-Exchange-CrossTenant-AuthSource: CO1PR10MB4754.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 May 2023 22:42:54.1404 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PDJlcBToFUiKpyJYb34Umo5IEtcS82eWgCKS5OJsWEX5hJsrU5EXubqHU9j3UPyyoTLYyDEaYLXlWdeapYtYvJLqQJDpEt8roz/df8NwZKY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR10MB5149
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.573,FMLib:17.11.176.26
 definitions=2023-05-22_16,2023-05-22_03,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 mlxscore=0
 mlxlogscore=999 phishscore=0 bulkscore=0 suspectscore=0 adultscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2304280000 definitions=main-2305220192
X-Proofpoint-GUID: P96rqLQ6kuLkvhmtqln9NQvIEINhzvn-
X-Proofpoint-ORIG-GUID: P96rqLQ6kuLkvhmtqln9NQvIEINhzvn-
X-Mailman-Approved-At: Tue, 23 May 2023 15:04:32 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=to : cc : subject :
 from : message-id : references : date : in-reply-to : content-type :
 mime-version; s=corp-2023-03-30;
 bh=+x4LjIcpcS+34wzkY+sZHYRICli0sHAdsECdUliq7zQ=;
 b=PEwLARzPucK4z1Z8NEFOorwyDLD12bLzvD4S1UZku19+nSgHK9AEDYAPaiNRhEhdZ8yV
 TIxWcgFf2iBb9mvnzUUvLps2yf4kfNCFDIWtcOrfTf7VfwB98XVxlxzl/1y63TjokNwz
 DwAxgFEVgkYKw4am0peumj3CXnQ+fnHz1MMK80IcM3sZw8hVMOjnkwvxd2aDH6z4B8MT
 OwArv5HVQ/G1ecZtYI/NQhTAGWcx8guZObPMGgLWp4T3VtKz7ObqIugoQ84SeMOu3s5d
 GwOFAi/BkYUrxhbnXc+QSGJ0dnzyeB2gPc89frPP73GotUfjUMWR6oWxqhiU6hFx6xDx nQ== 
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+x4LjIcpcS+34wzkY+sZHYRICli0sHAdsECdUliq7zQ=;
 b=CgkA2bzMt4QFymTpNUPd7eAwI+yM0AUSeU1HKj0lBEYvG8jfxfh8cCyXVu3qEOypp235vHy2C783VSqCfx+L8ZdkJigUW/0QXEBgLLSZvsROogUOHVehoEAXvh/2gBdMW/Somx8B7QnrjABdyJljCnWhC9gjG7X61trFmT+mvDU=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com
 header.a=rsa-sha256 header.s=corp-2023-03-30 header.b=PEwLARzP; 
 dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com
 header.i=@oracle.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-oracle-onmicrosoft-com header.b=CgkA2bzM
Subject: Re: [Intel-wired-lan] [PATCH] overflow: Add struct_size_t() helper
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
Cc: "Darrick J. Wong" <djwong@kernel.org>, Daniel Latypov <dlatypov@google.com>,
 storagedev@microchip.com, linux-nvme@lists.infradead.org,
 James Smart <james.smart@broadcom.com>, Guo Xuenan <guoxuenan@huawei.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 linux-hardening@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 Sagi Grimberg <sagi@grimberg.me>, linux-scsi@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Kashyap Desai <kashyap.desai@broadcom.com>,
 Christoph Hellwig <hch@infradead.org>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>,
 Dave Chinner <dchinner@redhat.com>, Keith Busch <kbusch@kernel.org>,
 HighPoint Linux Team <linux@highpoint-tech.com>,
 megaraidlinux.pdl@broadcom.com, Jens Axboe <axboe@kernel.dk>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Shivasharan S <shivasharan.srikanteshwara@broadcom.com>,
 netdev@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>,
 linux-kernel@vger.kernel.org, linux-xfs@vger.kernel.org,
 Sumit Saxena <sumit.saxena@broadcom.com>,
 Tales Aparecida <tales.aparecida@gmail.com>,
 Don Brace <don.brace@microchip.com>, "David S.
 Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


Kees,

> While struct_size() is normally used in situations where the structure
> type already has a pointer instance, there are places where no variable
> is available. In the past, this has been worked around by using a typed
> NULL first argument, but this is a bit ugly. Add a helper to do this,
> and replace the handful of instances of the code pattern with it.

SCSI bits look fine to me.

Acked-by: Martin K. Petersen <martin.petersen@oracle.com>

-- 
Martin K. Petersen	Oracle Linux Engineering
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
