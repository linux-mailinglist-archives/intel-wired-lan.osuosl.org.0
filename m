Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9087757F9D6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Jul 2022 09:05:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1B5CF4185C;
	Mon, 25 Jul 2022 07:05:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1B5CF4185C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658732723;
	bh=QPGdlj5y/Pqxu3+YnzjwFut3hC8tIi13EJoTqPGgH5M=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=KAmklL2ttZKwomD4hW98Wv0QwXsHy6IA//nq15oDxtvrzJ+DGPOtowATV7QhyMPzW
	 PPG2y3rI80oHjd7/PAtbYJXptG/q70PhNL+NlIVmeBoNn/maJ5fIDVrPkD3GioPpSU
	 r0F70t7HhYWSwSHh4oPYXfk64Jm5RndRn2waGGgEzmtVtGCwxFVCluzVjOYJc9eD23
	 BKUv+MUlahlvTPJ8hbqfFTPyrTKM4dqtsAeucrUXHsK4cfMOuIrgpbLsfg9WulQEPH
	 lgmrlq11Z8eEbZdF9hbhaQp7bqhHVmugQufvEAnt1o+H49/Val1N94cG1einP19TA8
	 7FGnq5AzwDV0g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8TMPv9DxJgR2; Mon, 25 Jul 2022 07:05:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6AEA5417D3;
	Mon, 25 Jul 2022 07:05:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6AEA5417D3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E3DE31BF9AD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jul 2022 07:05:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BC1D140CB0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jul 2022 07:05:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BC1D140CB0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X5gbTh6nqq60 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Jul 2022 07:05:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 149DC401C2
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com
 [205.220.165.32])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 149DC401C2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jul 2022 07:05:09 +0000 (UTC)
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 26P6frmf015549;
 Mon, 25 Jul 2022 07:05:08 GMT
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3hg9antbnj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 25 Jul 2022 07:05:08 +0000
Received: from pps.filterd
 (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.17.1.5/8.17.1.5)
 with ESMTP id 26P5Ax7q006379; Mon, 25 Jul 2022 07:05:07 GMT
Received: from nam11-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam11lp2174.outbound.protection.outlook.com [104.47.57.174])
 by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 3hh659vq85-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 25 Jul 2022 07:05:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b3M6yy1kaBzLt949+TKK/fOafUuP9M37dr0dVqVcQLE7KQ5RDAdnPTQrEabir5sDH7nIIFtttnvQFFNksZPsDiDmNP0plzrlHXlbplOAY/3J2Osuo8+4kHuSYmsQc9DopGct2oHS9zX3DggBUptp/rTk1j8TOiOVcj8+wIptubo4biTOhtFVId7ejJpqutMgCLiMGJEPy/pu2VUETZw35zZeGio4CTMReqLaTBiJPUfXcI4FGN+1R4P7yKm+ag5CRR2atkCOmBuY2SuxVndlgnn0rb02kJi/5ly098YmSgqOM5/kIj6yuZodSxhWnAcFebqnYumUmbc40V4wV68hvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BiS233JbEkRgp7MWmfWlr3iEmr8pR3rRV1bqDU1vVyE=;
 b=gh0rA0d/abDWIL4TgJtr29c98FEdvoZFztXGl7vqcxJfUGp9Ud79mwrZ7DoQbD/rvsD1WdF+kBcZ1scN1Cdt36dMCiYyEmyetOpivkS4d0YhU1jQaK+hiUXuYOtlYF6D4kzed8LS7TBzGdhK5+A94FzVsfa/M4Ilm2lmt20QW2vMH1zLIxQfT+pm8ypSYlHzFKfVr2XMWVbUW4As/fOUc97NjpbtoPQicGEMTd17kdHuPgT7m91u3bG3rKbvl3dPmhqvjfrj4ANQJxEWE5QPI88CEvHv5K8SQNJiutiMhi1G2WYtDq0IS+6yKkysPeRnjrk9cVWiGgPw2WRG+hJxww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by MWHPR10MB1264.namprd10.prod.outlook.com
 (2603:10b6:301:9::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.19; Mon, 25 Jul
 2022 07:05:05 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::24dc:9f9a:c139:5c97]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::24dc:9f9a:c139:5c97%4]) with mapi id 15.20.5458.024; Mon, 25 Jul 2022
 07:05:05 +0000
Date: Mon, 25 Jul 2022 10:04:56 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: piotrx.skajewski@intel.com
Message-ID: <Yt5AmGA5dx/KjOOF@kili>
Content-Disposition: inline
X-ClientProxiedBy: ZR0P278CA0134.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:40::13) To MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 810ff141-28ad-4355-3d5b-08da6e0c007d
X-MS-TrafficTypeDiagnostic: MWHPR10MB1264:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VZ53weA5vyTIqEpQU3vJUgc12ReSpeRcZXpCQi9Iy9urKJDuAS1O8nyLRtahNy8m4L0ljEd/VNfI/JjyaBH9tHVV/Z1jw8Ggu51+thplzQZ+sKb4jpRUkGcahWHIFezPJUJWT+orRgq6+aopNd59fDkDC6yufizRoJZnJr2Lm4S+zcnmkVwZPySIf7IiP5pzyYjMPAR3DFTfICM0Ug572l1DB5UlHoWimBpvRUmLEV7/bukcOXwB0NAzn41IyDofy/Qu9PtJmOJ5JfhHiT818I8lUiVdScuqa8Dt5LRfN+uqs0r2XQ6A7TdmZ2LkMjrQ+2SVAUB6+SGzjR7ZLbC6itZDEZxJp3ZRsiQdpNDHwwD4w1sx3K1x16R7gfZzxa8MFI4DsSfLNu3QMDNj72rcaTQa6n7koIUunqVx+BmYvAjwa7C7lD3UU1yHdP2wTRs9+4tRg+GxnazVhE/qXssA20DH11KuCtA5gnFkDXe161kj1+6eO9y4L9/u8a/lYUlN4IuzQ6viv1GguutSMlHm9b7T84d0MlsW2tI1UbyixzW3LG8KmEndsDHqeT5sB06vehNFOAcLn6vULxb+PJe89+gHoAusA1/gR2NrAs4V6CGNNJSuz69rrgEHrR4KotEWloNodUHWZULrCAtATTS/kUV4GlY3Cb2CFvGDzzOaBC3s+BZsXYlawP3vj6iths/+DnFY1U8w7PqrT0SlNex1Cg0piMxJaXcn6kOVR/B82lmKIWMSMyTg+OvnFaMVGGwPwBbtnMgoJOjyoFiOhXrwyQkroG2QGVYdZnrqfrtURlSPFizzasZXN/+DcYVyqTgc
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1001MB2365.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(7916004)(376002)(366004)(396003)(39860400002)(136003)(346002)(316002)(6916009)(38350700002)(38100700002)(9686003)(6512007)(4326008)(26005)(8676002)(66556008)(66476007)(86362001)(41300700001)(66946007)(52116002)(6506007)(6666004)(33716001)(186003)(83380400001)(478600001)(5660300002)(2906002)(44832011)(8936002)(6486002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?BfAu9ZwYPkvSlBUPEFH7BnkacB403crzX/0SIlkRturmf912mFt+7KAOPuBS?=
 =?us-ascii?Q?DA7ZkChNSLTSxuwVPllqUBRJLsv3geWuv3VbFyjG2UFQh6wrQKPO9LOoebXD?=
 =?us-ascii?Q?2E5TOYeyl23IEmTdY0hg9lDg7cFZizZ2EzFn6jsWcu74/YzaOHKoyp2RY8p2?=
 =?us-ascii?Q?G+9Jx+usYJfOR0Vv0ygJdiN1ihW2cjAaNLqxnpVPieXC8s4i94pMCifbY+AG?=
 =?us-ascii?Q?uMMoBHw5suDIzH07ENhBY/3JO0cc+dh+ZtQfCHVJYVrWDpYksVy08m25dVMG?=
 =?us-ascii?Q?H+csAIM174TDwpgyLz5z1fr9U34xA/r3L0YcfOfoOE4BFDx89bKf3s8guJtq?=
 =?us-ascii?Q?TgnrESKWnxtpa2gnKLw3GwIaC7deWEraFyreRIeagKheqQsyqGJOVOfBK2W0?=
 =?us-ascii?Q?ICkHM6AVGMKRccwNsBJlfkrWqibZi2Q86B6lpFXKtKdVOhWmp7VQbtyXUT+Z?=
 =?us-ascii?Q?1PPYYVmu9d9eq0TubQASeNwrriZWL+EUX43756DFLcXZS97HVg5oiqb0ivxf?=
 =?us-ascii?Q?9/ko9QuAgWn8+pppOt/bWrGnINPaTNdXjcUJwelEdlBcx5jyCMpog7YEo6h8?=
 =?us-ascii?Q?PKQXnwskkeGTGeGYa+7kyLsxZQihCkPQbrW/hdGVqQP8o71QSUqovhURRuop?=
 =?us-ascii?Q?nQ6bsvHWuToAHGu5kD8wTWR0+VyVcEfRHqRIt/QgGWkxAo+OB7uBBYjCCv5M?=
 =?us-ascii?Q?0JQmvBT1ynql+RboZCEHttM7pnYVOTVSvyQIeUf3Vc5T4y40+Pvm7kMYzZlK?=
 =?us-ascii?Q?9t+60TELPMQ5auBGSgTG3J2dt92hL1LXUVEtVJX8xeLfmb90Tmn23zbD3CFI?=
 =?us-ascii?Q?GhLs9lkz0J02KMGLmFWe4JO7m8JEKei9gMtaRKte6TkEom91Wg3lqYMJc7iN?=
 =?us-ascii?Q?Vct/ImIXppHaAHgFNwENthNeytpJRlQaWM+I280rQlbrOtRQAScxtpxgRgmc?=
 =?us-ascii?Q?Qe4IY27TFQeNum60LRwWbY7mRt8bk1Eq4+S8y67lrnnhmvgWFmT2lVToCpqw?=
 =?us-ascii?Q?y3rUaFDWzwPYdVJNLWeHqqT0neMcy8OfGSO0zh4rLG+IHG5drxtdm0k+hMl6?=
 =?us-ascii?Q?HuJNIsuCHLDfiT6eJnlOBe3PZQb3JknbB0Tm+7JXL128ajYDmttJ7sbJCxQt?=
 =?us-ascii?Q?/5d0DH9L/eArKXmqHMrgVGTxWirm0BMSYsXIfgycrbierEVRl/Qz93rEG2kx?=
 =?us-ascii?Q?BLeKG5LwsTdQCz/dVkASoil4Z2WiY44jTfulJdkc9kj9/e95BTPpJ03qBeE3?=
 =?us-ascii?Q?f4XtKhLTEKHkBfujk5McrK3hbTE3JUNVRT8xXR1s7HIVk3pljArqkQNJXBAZ?=
 =?us-ascii?Q?GKymR3ksf+Nl2wvGOd17v22wSzhMegxz0vZ7rG020wtTYBJRUbeDqJM1YzwI?=
 =?us-ascii?Q?aa6gF1w68YRYuBEjP9o9V+USnt6nk3dTAOsqq4h/7Tyqy+KibOnsc/+4+PN1?=
 =?us-ascii?Q?218dLrCb0BYpC/bTRtDrNAiih6fZboi7nyraccnXKHqKt7D348fT/Cq6ThMg?=
 =?us-ascii?Q?hpjc7kXgL/NR3b9EGulRTN3LTu0pjEkgiqY1BmQBCNlKgwgl77vioevOyspo?=
 =?us-ascii?Q?hSIcDnM7si76oZ/JpkdfotG1B26ly2Un/8ooOJQO0GmD+b35Su8GThuU0+LK?=
 =?us-ascii?Q?Gg=3D=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 810ff141-28ad-4355-3d5b-08da6e0c007d
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jul 2022 07:05:05.4935 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4zffPXPXWWPIBEHREJpZqfjMaiP3y6Oj6H3Bb8UyBrTi3nX/VCdIzdqUZV7kj5P+GBiVxe4UMDdbOTClhp9rAK8nz8olPALnddO37/J+544=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR10MB1264
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.883,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-07-23_02,2022-07-21_02,2022-06-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 malwarescore=0 phishscore=0
 spamscore=0 mlxlogscore=713 suspectscore=0 bulkscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2206140000
 definitions=main-2207250030
X-Proofpoint-ORIG-GUID: XwrVrHkAvnLmFo076WSAQlb2XzQ3CRap
X-Proofpoint-GUID: XwrVrHkAvnLmFo076WSAQlb2XzQ3CRap
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=date : from : to : cc
 : subject : message-id : content-type : mime-version; s=corp-2022-7-12;
 bh=BiS233JbEkRgp7MWmfWlr3iEmr8pR3rRV1bqDU1vVyE=;
 b=xaQIydSaxmc21Fk6ILqH4rT/ZIJA4/ImMZF+xQw6VYmHKYHpVKqwzMCqDoom8z4Jogm0
 QtC0uJ3Bz3KE0PpADMw2pqW6ZuMalTDQIvL2C+PYNphew6HBKSkGTIs849fZXEXrO9e1
 kImHt6y55cMtz5hleRH7bDHqtlo283Z9AYN/4dvA54eWgQlbWF0Vf0y3Np5Ejyft37xq
 xm5z4Osrx/Tl6SxNN6A/q49YJ/LwyCz6pkJ+EfOJWuIqCfyO3B7ZX2G7edDaqG291OGZ
 +vFHTKMRUPTqvAW4ZhYtKy8prJMZSbr9ikKjK920iaE6urgOIdXD25hwqKbRvbSqMBcC BQ== 
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BiS233JbEkRgp7MWmfWlr3iEmr8pR3rRV1bqDU1vVyE=;
 b=xnFVkX+7/8HcAt77e0u8FaUbOJUh2EdXhg1wh0KHN/azBJaQWaiaMWQBH/pXl0F0OuqjseSBlakVcXXp8duu6IxFw3WD353IIj+pECCBWTni4YRQ3S/igvUpzIyWw6V/Hy9WNt5TsznV52x1lASgsORSEorjneJEsTDBWOIsUc8=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com
 header.a=rsa-sha256 header.s=corp-2022-7-12 header.b=xaQIydSa; 
 dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com
 header.i=@oracle.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-oracle-onmicrosoft-com header.b=xnFVkX+7
Subject: [Intel-wired-lan] [bug report] ixgbe: Add locking to prevent panic
 when setting sriov_numvfs to zero
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

Hello Piotr Skajewski,

The patch 1e53834ce541: "ixgbe: Add locking to prevent panic when
setting sriov_numvfs to zero" from Jul 15, 2022, leads to the
following Smatch static checker warning:

	drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c:911 ixgbe_ipsec_vf_add_sa()
	warn: sleeping in atomic context


drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
  1358  void ixgbe_msg_task(struct ixgbe_adapter *adapter)
  1359  {
  1360          struct ixgbe_hw *hw = &adapter->hw;
  1361          unsigned long flags;
  1362          u32 vf;
  1363  
  1364          spin_lock_irqsave(&adapter->vfs_lock, flags);
                ^^^^^^^^^^^^^^^^^
New locking

  1365          for (vf = 0; vf < adapter->num_vfs; vf++) {
  1366                  /* process any reset requests */
  1367                  if (!ixgbe_check_for_rst(hw, vf))
  1368                          ixgbe_vf_reset_event(adapter, vf);
  1369  
  1370                  /* process any messages pending */
  1371                  if (!ixgbe_check_for_msg(hw, vf))
  1372                          ixgbe_rcv_msg_from_vf(adapter, vf);
  1373  
  1374                  /* process any acks */
  1375                  if (!ixgbe_check_for_ack(hw, vf))
  1376                          ixgbe_rcv_ack_from_vf(adapter, vf);
  1377          }
  1378          spin_unlock_irqrestore(&adapter->vfs_lock, flags);
  1379  }

ixgbe_msg_task() <- disables preempt
-> ixgbe_rcv_msg_from_vf()
   -> ixgbe_ipsec_vf_add_sa() <- sleeps

drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c
    884 int ixgbe_ipsec_vf_add_sa(struct ixgbe_adapter *adapter, u32 *msgbuf, u32 vf)
    885 {
    886         struct ixgbe_ipsec *ipsec = adapter->ipsec;
    887         struct xfrm_algo_desc *algo;
    888         struct sa_mbx_msg *sam;
    889         struct xfrm_state *xs;
    890         size_t aead_len;
    891         u16 sa_idx;
    892         u32 pfsa;
    893         int err;
    894 
    895         sam = (struct sa_mbx_msg *)(&msgbuf[1]);
    896         if (!adapter->vfinfo[vf].trusted ||
    897             !(adapter->flags2 & IXGBE_FLAG2_VF_IPSEC_ENABLED)) {
    898                 e_warn(drv, "VF %d attempted to add an IPsec SA\n", vf);
    899                 err = -EACCES;
    900                 goto err_out;
    901         }
    902 
    903         /* Tx IPsec offload doesn't seem to work on this
    904          * device, so block these requests for now.
    905          */
    906         if (sam->dir != XFRM_DEV_OFFLOAD_IN) {
    907                 err = -EOPNOTSUPP;
    908                 goto err_out;
    909         }
    910 
--> 911         xs = kzalloc(sizeof(*xs), GFP_KERNEL);
                                          ^^^^^^^^^^

    912         if (unlikely(!xs)) {
    913                 err = -ENOMEM;
    914                 goto err_out;
    915         }
    916 

regards,
dan carpenter
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
