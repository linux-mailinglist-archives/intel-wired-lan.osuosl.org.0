Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 433054EDFE0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 31 Mar 2022 19:44:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C43C5410F4;
	Thu, 31 Mar 2022 17:44:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fJk2uEMB3lF5; Thu, 31 Mar 2022 17:44:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EDAEF40493;
	Thu, 31 Mar 2022 17:44:34 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 571891BF9AC
 for <intel-wired-lan@osuosl.org>; Thu, 31 Mar 2022 17:44:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 43F1F83F4B
 for <intel-wired-lan@osuosl.org>; Thu, 31 Mar 2022 17:44:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=nutanix.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zJWpjmT2GpyQ for <intel-wired-lan@osuosl.org>;
 Thu, 31 Mar 2022 17:44:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mx0a-002c1b01.pphosted.com (mx0a-002c1b01.pphosted.com
 [148.163.151.68])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 577E183E48
 for <intel-wired-lan@osuosl.org>; Thu, 31 Mar 2022 17:44:28 +0000 (UTC)
Received: from pps.filterd (m0127838.ppops.net [127.0.0.1])
 by mx0a-002c1b01.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id 22VEU7sJ029588;
 Thu, 31 Mar 2022 10:44:27 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nutanix.com;
 h=from : to : cc :
 subject : date : message-id : content-type : mime-version;
 s=proofpoint20171006; bh=Kt3jNIlQNeBJeH/VwjaQnCS00Ia4Kblyt1oRDW67CIQ=;
 b=lY0P4LtY1IcBsZYF9Z0vHPneoktMGwBjTJ94OQ69lSeCFlKaITFZaCOc6KJk0tv1Ep7D
 7CKF5yfk1mjvUbZju3xebeoGLgvmKKAhxba5SZ/YC35flEK95/7OnJwod5ygC8Fxwb87
 Ce94n3BS86NbfzIlGA6x9uH00QibrdXT/IDcN5n/Dq0MOT27O0gU/XsXBZ1L3AiZOs55
 5UZJ/c7QSMqhjUhKc0nyQkMvlyOyr19XfJ+oN7jNMqSX/ixWEWo1u8jSlF4Z1EiJCip/
 fsuJ4JDkgq2hMsxZVcjnMdboGJOioTt6aqkz6E/FpvXFFpEl75+bQGuxBCaMVZvVxV8z LQ== 
Received: from nam04-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam08lp2040.outbound.protection.outlook.com [104.47.74.40])
 by mx0a-002c1b01.pphosted.com (PPS) with ESMTPS id 3f22cxbn04-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 31 Mar 2022 10:44:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k/uXMEWNfpdlBT5TgnBRE3wExTXaWJYssEwY7kVilSLCQhqQH/1lNSLT9EwexRRmA8mYJzEvAJkMIkh+zvRllXb39C4YzsHCdVQ0b/yNQfoIOJCWkgatZb20UyOmzJ7J8qNwStem0Ij9Pq5zN5Y7weaX8+Mht5eUJizdsLE5GjQwy0rFtLwb7+/y4Yq6ec+0SDE9SjsF774XU1W1/U2Ak5IsKEDwmr0ADkn/ybxhKpu3CBJPl3Ed3Vv/62nUrePTOEGUTD+z34OOAdhj46keVCf2wspFRbS9Adj4zff7AWU5OsaT6ibS4c1umTzb0z8bXGBFH/YCkd3RxH8DqCDwiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Kt3jNIlQNeBJeH/VwjaQnCS00Ia4Kblyt1oRDW67CIQ=;
 b=RO7+/P+5sRGbCaeD3wXRpBqpcNFPHiwbpzcSC/mQ2fNgbO3pRJ8FYoui6zzaF/YzBuZVnrZzcrOl7f3KNuFa6DeZPlQO5MF38b9g2WxlW97XlofhQEY51H1z1qqogWCPUp3Hpa5H1UeIzXxhBL19/rDXPaF0ywhhYffAK5DrE6AC/0CD+/ME/GSpxmQzf5igsKD6+Jspl93ThT0q/4Qe61IhuQERoCNyf0ZFyZuZ6T1fC3ovcdPeyoCDZKLQL6QcF6XCQvB1hT84jED9itm/pmKcQDW9imdFfKui8OhDEwr6mYT7zICEK7iIru7YSLyqnVBK8Y7+D/IEjy2lyJIi0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nutanix.com; dmarc=pass action=none header.from=nutanix.com;
 dkim=pass header.d=nutanix.com; arc=none
Received: from SJ0PR02MB8862.namprd02.prod.outlook.com (2603:10b6:a03:3fd::8)
 by SN1PR02MB3757.namprd02.prod.outlook.com (2603:10b6:802:31::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5123.21; Thu, 31 Mar
 2022 17:44:23 +0000
Received: from SJ0PR02MB8862.namprd02.prod.outlook.com
 ([fe80::3580:8973:41bc:fe63]) by SJ0PR02MB8862.namprd02.prod.outlook.com
 ([fe80::3580:8973:41bc:fe63%6]) with mapi id 15.20.5123.021; Thu, 31 Mar 2022
 17:44:23 +0000
From: "Kallol Biswas [C]" <kallol.biswas@nutanix.com>
To: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: bug in i40e-2.14.13 driver ??
Thread-Index: AdhFIeurOJVqhoT8Qka0vFNk909POw==
Date: Thu, 31 Mar 2022 17:44:23 +0000
Message-ID: <SJ0PR02MB8862FB6E1933AFD6F1A08633FEE19@SJ0PR02MB8862.namprd02.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 385fcf38-1575-489d-044d-08da133e17de
x-ms-traffictypediagnostic: SN1PR02MB3757:EE_
x-microsoft-antispam-prvs: <SN1PR02MB3757EC495F87EC6AFCE660AEFEE19@SN1PR02MB3757.namprd02.prod.outlook.com>
x-proofpoint-crosstenant: true
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DTQaM+O6t5wtE3sTQwfVFOJmprEjEl+NkerI61P2PqoY9ygqGNtEte18FEBsFMNPQScjpKA94cRw4FW2+UH4tWcr/RJBwZ6QyFJsJBg2bAlIUgvhzeD9uVDWhHJecd+sLsjZ5PeRlBuhmhllj+XYNP6sqTCMo6wEpoKaUJBd/+oIQDyWzrUhZm3XDFfLXBPXSRjkb24b9Q0RpZZFRhhhXmS53SW1FBdzuDBEhclOMWCIwSzKaPbEtD7kzK2imIHiLatPboM3fu8Z1G0Fp+7Du/hsyXew1JskBKfTEz5bCVmmz4oPo8sqoTHzL5EqRd7cZDKbo6MAvfzspASYpEP7XOBpe6OKMHeO8mqKSXm3gD9x6W9N1+akwItG5CboANcdtigzgAYzQ2f+fV4WrUg1IDoGb1JjM2X8PmlksoGOAlhWYBExXgHRF6RWQ5jGyv5OQQXAKqV8BR/3YM+BmSa+YYufyBQ3Q0xqmAeKQ74Hx3IaVIybNkf1K6WCcFMk6GH4NymFvbkEPa7ShHHAPg4ILtYPywFC7NtbJwdR6vcUnHp5ic8+e8gNAM/CN9H5evdMdoY64uaHpdjGx1Za8DICmzgt26p0CcJGAEhpxU0cOMNFxNA9od1RAVmKi5RsfG31p4crF9mRqu/scHB45qCqMFUFP7jtT0i3V7pHyKxByiUIC6JNJSTS9h+VvENlQyrfsaatAdZPwsHPhyoL2vsnw9IMzZnl4Du6OkVv9DYqqkwsm1N7yg6Ceh7IUlrCEL3hwqUgSnZv7Fc15e8U3qL7KAIdeB68tdqc59VtjT96T9Y=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR02MB8862.namprd02.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(26005)(186003)(122000001)(166002)(2906002)(9686003)(52536014)(55016003)(5660300002)(40140700001)(8936002)(9326002)(33656002)(83380400001)(7696005)(6506007)(508600001)(38100700002)(66946007)(76116006)(38070700005)(64756008)(4326008)(66446008)(8676002)(66556008)(66476007)(71200400001)(316002)(86362001)(6916009);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?0lK9NEL8gHDn4V+fmuF8d25amv9LcS5no0GaBH+SJ0l+R3bq75ypRFXjsQQz?=
 =?us-ascii?Q?BsSN2rW/fg5lxWLoWFFyjnE/iNEtv5DF/1dcEY3WdX9afPMZ8fjAY5NACa/I?=
 =?us-ascii?Q?z85+PUQtoL2jlgFWDxIK21d/4lquXKb4eqRWhjdIvV20F6TCgV6p5grXZ145?=
 =?us-ascii?Q?uuaK8FArP61iSSlKAQ+wOOSdJ/SLEtBNXF1IFIiyPjVILFUFRqLNweEhKyGB?=
 =?us-ascii?Q?1U05wgybx6xzggbYjpIqrapJ1pBOp2g0uzWxmbbg/r+ru1M1xfv86jBF1wTT?=
 =?us-ascii?Q?I11kiyPuYJSjIeZC48mPl4UVcodx6duy72dJfLmYmpML8mVbyL5FRT2lSV3Q?=
 =?us-ascii?Q?/jD/zb9ttZv0T8D8vmWjqgZe6Kk35uHkn2E/J0AyASYHjTrWlI5evCk3AndG?=
 =?us-ascii?Q?aZthLCtNuVoxNBZj/lhe2VeNCQhE+B1r3oxaNIrhfNF8Lg1U2gwWhAHdaj5T?=
 =?us-ascii?Q?q+xgfF6kCGd2NvB13jqs/J4gEvFnclqnqXOQK/JwQVqoTRCZKV/Rf8tsaUf3?=
 =?us-ascii?Q?kSBPxBSsSySmRylCwWnPKnICPzNjpWSBzWWebeiUQbrMA6ddqqO5e+W7wHkT?=
 =?us-ascii?Q?etAPwps6fJ8V9I1FizhQ/dO+0GjVyDNFbAG2vxBygT7Ftys6L9OqzT5ollzR?=
 =?us-ascii?Q?juyvOQlar196+SWEwxLKiz0goUmoR3/MMPks7mfl+aNO//auwInSen4MxR7d?=
 =?us-ascii?Q?2hOqARYmILHFksORoajltfkpfz4VF+BQhRgG+obI8dh3jeJBzFh1BvP36XBQ?=
 =?us-ascii?Q?RUpBpoIAYc623Uz6ySDJqDEawhnEd360z9k5x5c+UqFDwbwgkRlfJwzp1DM2?=
 =?us-ascii?Q?uMKZQYnTv1I6Q0FV850tNh8L1u4zGqCxhzqAuG/yS768RL85flbxfB71I6m8?=
 =?us-ascii?Q?omgeda14JBVZglh4KphWKE42S2UdYZ92UJwTkJmSFdP8SZ1NBhB8QhZoNeMr?=
 =?us-ascii?Q?UPjIQPtMlDnIvh6+ZyZ/ZOURXtwgr3Bl/8Xu/nKPPqWaM5X0kXX9e+eyIfv9?=
 =?us-ascii?Q?9u0X1KK/ywT8VaLYRFKFT3qhM7/YOeMTz2v/NiQeM0FgaJZQ2qTIhvktuJIj?=
 =?us-ascii?Q?lkI1HmFzugccteYKNsyDNJTisefvhRgb7fDu2qFygF1kVGlxcHYIHTFn6wjy?=
 =?us-ascii?Q?jhrFRriVmAmzxd1O+I9HD3soIrgaq2D5UFFoUTieiKUuP/3GecVqWh90fhBR?=
 =?us-ascii?Q?DY/cmfvEdlFS/Dn+hbhbuISASaw3AiQh6ZZeZvJSY0rbHTC6Ex2Vaiu/P5wh?=
 =?us-ascii?Q?voCPRrzUdz6JedP/yRkhsV7Va0Ud4TnGFjljlbylLw3/vIOy/6gun+d9v0Hy?=
 =?us-ascii?Q?rnkiUs4fUunZwKjjAc3/zDz6hMlSSj1TLXHvLfTr+ZWbQQ43D5/dXrGK0t6q?=
 =?us-ascii?Q?aHt1wi9Hhf2Fz7bocZqAIwxVRYIleih2GWGTpNARYRHTGWhGjlCkvAU2GH/j?=
 =?us-ascii?Q?vxTtY8CtlVN/YmNV5sj83/PPW2eZ/ADvqKR5EuOgyiprX+26VZZv8RNr2oXK?=
 =?us-ascii?Q?4UzhZrWugXv+rDfe6HqXCdGwAPug0F6EuAHBT244cONyfp/nrwbSVIetB9SI?=
 =?us-ascii?Q?YwiTjdiNV9GzwidfVg2B8U84Z4jnguOrEqdi4Pvfq0SSohkN5g1DJkw8ah0o?=
 =?us-ascii?Q?lsbPb8GqlU2NITj26isU/rrYPMIt8AuB2x/m5QFtJFw/gNuRanGxaNhT/Jlh?=
 =?us-ascii?Q?wRdzDNrKBMJkF/9CUqMmGy/KItqb0pokd86bmfYqhSzkczioJo5pbjQFtiP/?=
 =?us-ascii?Q?Kf1FA5UaKYCW74Fw799aPZKXcrMjanE=3D?=
MIME-Version: 1.0
X-OriginatorOrg: nutanix.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR02MB8862.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 385fcf38-1575-489d-044d-08da133e17de
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Mar 2022 17:44:23.4638 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: bb047546-786f-4de1-bd75-24e5b6f79043
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qld3xhPAZo2K+Q6205gN3+PkTpinRK64MkT/WShrHNZwCAQ+DR/gWyFMi/lX48nWDDJ9umNf/W/VYcUIx7d3ZXY8gH7DHSuV9djAlw9bDQs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN1PR02MB3757
X-Proofpoint-ORIG-GUID: txNqwyekENqCxFs8apKT1V7xroEbvept
X-Proofpoint-GUID: txNqwyekENqCxFs8apKT1V7xroEbvept
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.850,Hydra:6.0.425,FMLib:17.11.64.514
 definitions=2022-03-31_06,2022-03-31_01,2022-02-23_01
X-Proofpoint-Spam-Reason: safe
Subject: [Intel-wired-lan] bug in i40e-2.14.13 driver ??
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============3529691869551795358=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============3529691869551795358==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR02MB8862FB6E1933AFD6F1A08633FEE19SJ0PR02MB8862namp_"

--_000_SJ0PR02MB8862FB6E1933AFD6F1A08633FEE19SJ0PR02MB8862namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,
     We have been getting a NULL pointer dereference in intel i40e driver.

[  105.551413] BUG: kernel NULL pointer dereference, address: 0000000000000=
00a

PID: 369    TASK: ffff980d62d70000  CPU: 16  COMMAND: "kworker/16:1"
#0 [ffffb0354e26fb00] machine_kexec at ffffffffae059db5
    /usr/src/debug/kernel-5.4.109/linux-5.4.109-2.el7.nutanix.20201105.2244=
.x86_64/arch/x86/kernel/machine_kexec_64.c: 441
#1 [ffffb0354e26fb50] __crash_kexec at ffffffffae12584d
    /usr/src/debug/kernel-5.4.109/linux-5.4.109-2.el7.nutanix.20201105.2244=
.x86_64/kernel/kexec_core.c: 957
#2 [ffffb0354e26fc18] crash_kexec at ffffffffae126ab9
    /usr/src/debug/kernel-5.4.109/linux-5.4.109-2.el7.nutanix.20201105.2244=
.x86_64/include/linux/compiler.h: 292
#3 [ffffb0354e26fc30] oops_end at ffffffffae02a3da
    /usr/src/debug/kernel-5.4.109/linux-5.4.109-2.el7.nutanix.20201105.2244=
.x86_64/arch/x86/kernel/dumpstack.c: 334
#4 [ffffb0354e26fc50] no_context at ffffffffae065ff8
    /usr/src/debug/kernel-5.4.109/linux-5.4.109-2.el7.nutanix.20201105.2244=
.x86_64/arch/x86/mm/fault.c: 848
#5 [ffffb0354e26fcc0] do_page_fault at ffffffffae066ad1
    /usr/src/debug/kernel-5.4.109/linux-5.4.109-2.el7.nutanix.20201105.2244=
.x86_64/arch/x86/mm/fault.c: 1552
#6 [ffffb0354e26fcf0] page_fault at ffffffffae801119
    /usr/src/debug/kernel-5.4.109/linux-5.4.109-2.el7.nutanix.20201105.2244=
.x86_64/arch/x86/entry/entry_64.S: 1203
    [exception RIP: i40e_detect_recover_hung+116]
    RIP: ffffffffc07ae0d4  RSP: ffffb0354e26fda0  RFLAGS: 00010202
    RAX: ffff980d64e6a000  RBX: ffff980d5b788c00  RCX: ffff980d6f426e08
    RDX: 0000000000000000  RSI: 0000000000000001  RDI: ffff980d5b788800
    RBP: 000000000000003c   R8: 0000000065303469   R9: 8080808080808080
    R10: 0000000000000000  R11: 0000000000000000  R12: ffff980d62d86000
    R13: 00000000ffffffff  R14: 0000000000000000  R15: ffff980d64e6a848
    ORIG_RAX: ffffffffffffffff  CS: 0010  SS: 0018
    /home/mockbuild/rpmbuild/BUILD/i40e-2.14.13/src/i40e_virtchnl_pf.c: 725=
3
#7 [ffffb0354e26fdc8] i40e_service_task at ffffffffc078ff9b [i40e]
    /home/mockbuild/rpmbuild/BUILD/i40e-2.14.13/src/i40e_ethtool.c: 5000
#8 [ffffb0354e26fe78] process_one_work at ffffffffae09818b
    /usr/src/debug/kernel-5.4.109/linux-5.4.109-2.el7.nutanix.20201105.2244=
.x86_64/kernel/workqueue.c: 2271
#9 [ffffb0354e26feb8] worker_thread at ffffffffae098ca9
    /usr/src/debug/kernel-5.4.109/linux-5.4.109-2.el7.nutanix.20201105.2244=
.x86_64/include/linux/compiler.h: 266
#10 [ffffb0354e26ff10] kthread at ffffffffae09e378
    /usr/src/debug/kernel-5.4.109/linux-5.4.109-2.el7.nutanix.20201105.2244=
.x86_64/kernel/kthread.c: 268
#11 [ffffb0354e26ff50] ret_from_fork at ffffffffae8001ff
    /usr/src/debug/kernel-5.4.109/linux-5.4.109-2.el7.nutanix.20201105.2244=
.x86_64/arch/x86/entry/entry_64.S: 352

-------------------------------------------

movzwl 0xa(%rdx),%edx fails as RDX: 0000000000000000  (offset 0xa from 0) c=
auses NULL pointer dereference
4:27<https://nutanix.slack.com/archives/C0373JMNG1K/p1648596476138519>
mov    0xe8(%rbx),%rdx program rdx, and %rbx is ffff980d5b788c00
x/x 0xffff980d5b788ce8
0xffff980d5b788ce8:     0x00000000, so %rdx gets programmed with 0.

crash> i40e_vsi.state ffff980d62d86000
  state =3D {0}
crash> i40e_vsi.netdev ffff980d62d86000
  netdev =3D 0xffff980d62d87000
crash> num_queue_pairs
crash: command not found: num_queue_pairs
crash> i40e_vsi.num_queue_pairs ffff980d62d86000
  num_queue_pairs =3D 64
All Tx rings
crash> x/64g 0xffff980d61f11800
0xffff980d61f11800:     0xffff980d61f11c00      0xffff980d61f12000
0xffff980d61f11810:     0xffff980d61f12400      0xffff980d61f12800
0xffff980d61f11820:     0xffff980d61f12c00      0xffff980d61f13000
0xffff980d61f11830:     0xffff980d61f13400      0xffff980d61f13800
0xffff980d61f11840:     0xffff980d61f13c00      0xffff980d61f14000
0xffff980d61f11850:     0xffff980d61f14400      0xffff980d61f14800
0xffff980d61f11860:     0xffff980d61f14c00      0xffff980d61f15000
0xffff980d61f11870:     0xffff980d61f15400      0xffff980d61f15800
0xffff980d61f11880:     0xffff980d61f15c00      0xffff980d61f16000
0xffff980d61f11890:     0xffff980d61f16400      0xffff980d61f16800
0xffff980d61f118a0:     0xffff980d61f16c00      0xffff980d61f17000
0xffff980d61f118b0:     0xffff980d61f17400      0xffff980d61f17800
0xffff980d61f118c0:     0xffff980d61f17c00      0xffff980d5b790000
0xffff980d61f118d0:     0xffff980d5b790400      0xffff980d5b790800
0xffff980d61f118e0:     0xffff980d5b790c00      0xffff980d5b791000
0xffff980d61f118f0:     0xffff980d5b791400      0xffff980d5b791800
0xffff980d61f11900:     0xffff980d5b791c00      0xffff980d5b792000
0xffff980d61f11910:     0xffff980d5b792400      0xffff980d5b792800
0xffff980d61f11920:     0xffff980d5b792c00      0xffff980d5b793000
0xffff980d61f11930:     0xffff980d5b793400      0xffff980d5b793800
0xffff980d61f11940:     0xffff980d5b793c00      0xffff980d5b794000
0xffff980d61f11950:     0xffff980d5b794400      0xffff980d5b794800
0xffff980d61f11960:     0xffff980d5b794c00      0xffff980d5b795000
0xffff980d61f11970:     0xffff980d5b795400      0xffff980d5b795800
0xffff980d61f11980:     0xffff980d5b795c00      0xffff980d5b796000
0xffff980d61f11990:     0xffff980d5b796400      0xffff980d5b796800
0xffff980d61f119a0:     0xffff980d5b796c00      0xffff980d5b797000
0xffff980d61f119b0:     0xffff980d5b797400      0xffff980d5b797800
0xffff980d61f119c0:     0xffff980d5b797c00      0xffff980d5b788000
0xffff980d61f119d0:     0xffff980d5b788400      0xffff980d5b788800
0xffff980d61f119e0:     0xffff980d5b788c00      0xffff980d5b789000
0xffff980d61f119f0:     0xffff980d5b789400      0xffff980d5b789800crash> st=
ruct i40e_ring.q_vector 0xffff980d5b788400  q_vector =3D 0xffff980d61c92800

crash> struct i40e_ring.q_vector 0xffff980d5b788400
q_vector =3D 0xffff980d61c92800

crash> struct i40e_ring.q_vector 0xffff980d5b788c00
  q_vector =3D 0x0


So q_vector is not set after around 60 queues, yet in the driver we do a de=
ference
i40e_force_wb():
(q_vector->reg_idx) and die.

Gdb macro:
define print_i40e_q_vector
    set $vsi =3D (struct i40e_vsi *)$arg0

    set $q_vectors =3D $vsi->num_q_vectors

    printf "vsi %p q_vectors %d", $vsi, $q_vectors
    set $index =3D 0

    while $index < $q_vectors

        set $q_vector =3D (struct i40e_q_vector *)$vsi->q_vectors[$index]

        printf "num_ringpairs %d\n", $q_vector->num_ringpairs

        set $index +=3D 1
    end


end

Ouput:

crash> print_i40e_q_vector 0xffff980d62d86000
vsi 0xffff980d62d86000 q_vectors 64num_ringpairs 1
num_ringpairs 1
num_ringpairs 1
num_ringpairs 1
num_ringpairs 1
num_ringpairs 1
num_ringpairs 1
num_ringpairs 1
num_ringpairs 1
num_ringpairs 1
num_ringpairs 1
num_ringpairs 1
num_ringpairs 1
num_ringpairs 1
num_ringpairs 1
num_ringpairs 1
num_ringpairs 1
num_ringpairs 1
num_ringpairs 1
num_ringpairs 1
num_ringpairs 1
num_ringpairs 1
num_ringpairs 1
num_ringpairs 1
num_ringpairs 1
num_ringpairs 1
num_ringpairs 1
num_ringpairs 1
num_ringpairs 1
num_ringpairs 1
num_ringpairs 1
num_ringpairs 1
num_ringpairs 1
num_ringpairs 1
num_ringpairs 1
num_ringpairs 1
num_ringpairs 1
num_ringpairs 1
num_ringpairs 1
num_ringpairs 1
num_ringpairs 1
num_ringpairs 1
num_ringpairs 1
num_ringpairs 1
num_ringpairs 1
num_ringpairs 1
num_ringpairs 1
num_ringpairs 1
num_ringpairs 1
num_ringpairs 1
num_ringpairs 1
num_ringpairs 1
num_ringpairs 1
num_ringpairs 1
num_ringpairs 1
num_ringpairs 1
num_ringpairs 1
num_ringpairs 1
num_ringpairs 1
num_ringpairs 1
num_ringpairs 0
num_ringpairs 0
num_ringpairs 0
num_ringpairs 0


Source code:

static void i40e_vsi_map_rings_to_vectors(struct i40e_vsi *vsi)
{
  int qp_remaining =3D vsi->num_queue_pairs;
  int q_vectors =3D vsi->num_q_vectors;
  int num_ringpairs;
  int v_start =3D 0;
  int qp_idx =3D 0;

  /* If we don't have enough vectors for a 1-to-1 mapping, we'll have to
   * group them so there are multiple queues per vector.
   * It is also important to go through all the vectors available to be
   * sure that if we don't use all the vectors, that the remaining vectors
   * are cleared. This is especially important when decreasing the
   * number of queues in use.
   */
  for (; v_start < q_vectors; v_start++) {
    struct i40e_q_vector *q_vector =3D vsi->q_vectors[v_start];

    num_ringpairs =3D DIV_ROUND_UP(qp_remaining, q_vectors - v_start);

    q_vector->num_ringpairs =3D num_ringpairs;
    q_vector->reg_idx =3D q_vector->v_idx + vsi->base_vector - 1;

    q_vector->rx.count =3D 0;
    q_vector->tx.count =3D 0;
    q_vector->rx.ring =3D NULL;
    q_vector->tx.ring =3D NULL;

    while (num_ringpairs--) {
      i40e_map_vector_to_qp(vsi, v_start, qp_idx);
      qp_idx++;
      qp_remaining--;
    }
  }
}

How in the above for loop
    num_ringpairs =3D DIV_ROUND_UP(qp_remaining, q_vectors - v_start);
evaluates to 0, is not clear.

Have we seen this problem before? If so, is there are fix?

Nucleodyne@Nutanix
408-718-8164


--_000_SJ0PR02MB8862FB6E1933AFD6F1A08633FEE19SJ0PR02MB8862namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; We have been getting a NULL=
 pointer dereference in intel i40e driver.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.5pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#1D1C1D;background:#F8F8F8">[&nbsp; 105.551413] =
BUG: kernel NULL pointer dereference, address: 000000000000000a<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.5pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#1D1C1D;background:#F8F8F8"><o:p>&nbsp;</o:p></s=
pan></p>
<p class=3D"MsoNormal">PID: 369&nbsp;&nbsp;&nbsp; TASK: ffff980d62d70000&nb=
sp; CPU: 16&nbsp; COMMAND: &quot;kworker/16:1&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">#0 [ffffb0354e26fb00] machine_kexec at ffffffffae059=
db5<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; /usr/src/debug/kernel-5.4.109/lin=
ux-5.4.109-2.el7.nutanix.20201105.2244.x86_64/arch/x86/kernel/machine_kexec=
_64.c: 441<o:p></o:p></p>
<p class=3D"MsoNormal">#1 [ffffb0354e26fb50] __crash_kexec at ffffffffae125=
84d<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; /usr/src/debug/kernel-5.4.109/lin=
ux-5.4.109-2.el7.nutanix.20201105.2244.x86_64/kernel/kexec_core.c: 957<o:p>=
</o:p></p>
<p class=3D"MsoNormal">#2 [ffffb0354e26fc18] crash_kexec at ffffffffae126ab=
9<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; /usr/src/debug/kernel-5.4.109/lin=
ux-5.4.109-2.el7.nutanix.20201105.2244.x86_64/include/linux/compiler.h: 292=
<o:p></o:p></p>
<p class=3D"MsoNormal">#3 [ffffb0354e26fc30] oops_end at ffffffffae02a3da<o=
:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; /usr/src/debug/kernel-5.4.109/lin=
ux-5.4.109-2.el7.nutanix.20201105.2244.x86_64/arch/x86/kernel/dumpstack.c: =
334<o:p></o:p></p>
<p class=3D"MsoNormal">#4 [ffffb0354e26fc50] no_context at ffffffffae065ff8=
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; /usr/src/debug/kernel-5.4.109/lin=
ux-5.4.109-2.el7.nutanix.20201105.2244.x86_64/arch/x86/mm/fault.c: 848<o:p>=
</o:p></p>
<p class=3D"MsoNormal">#5 [ffffb0354e26fcc0] do_page_fault at ffffffffae066=
ad1<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; /usr/src/debug/kernel-5.4.109/lin=
ux-5.4.109-2.el7.nutanix.20201105.2244.x86_64/arch/x86/mm/fault.c: 1552<o:p=
></o:p></p>
<p class=3D"MsoNormal">#6 [ffffb0354e26fcf0] page_fault at ffffffffae801119=
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; /usr/src/debug/kernel-5.4.109/lin=
ux-5.4.109-2.el7.nutanix.20201105.2244.x86_64/arch/x86/entry/entry_64.S: 12=
03<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; [exception RIP: i40e_detect_recov=
er_hung+116]<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; RIP: ffffffffc07ae0d4&nbsp; RSP: =
ffffb0354e26fda0&nbsp; RFLAGS: 00010202<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; RAX: ffff980d64e6a000&nbsp; RBX: =
ffff980d5b788c00&nbsp; RCX: ffff980d6f426e08<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; RDX: 0000000000000000&nbsp; RSI: =
0000000000000001&nbsp; RDI: ffff980d5b788800<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; RBP: 000000000000003c&nbsp;&nbsp;=
 R8: 0000000065303469&nbsp;&nbsp; R9: 8080808080808080<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; R10: 0000000000000000&nbsp; R11: =
0000000000000000&nbsp; R12: ffff980d62d86000<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; R13: 00000000ffffffff&nbsp; R14: =
0000000000000000&nbsp; R15: ffff980d64e6a848<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; ORIG_RAX: ffffffffffffffff&nbsp; =
CS: 0010&nbsp; SS: 0018<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; /home/mockbuild/rpmbuild/BUILD/i4=
0e-2.14.13/src/i40e_virtchnl_pf.c: 7253<o:p></o:p></p>
<p class=3D"MsoNormal">#7 [ffffb0354e26fdc8] i40e_service_task at ffffffffc=
078ff9b [i40e]<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; /home/mockbuild/rpmbuild/BUILD/i4=
0e-2.14.13/src/i40e_ethtool.c: 5000<o:p></o:p></p>
<p class=3D"MsoNormal">#8 [ffffb0354e26fe78] process_one_work at ffffffffae=
09818b<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; /usr/src/debug/kernel-5.4.109/lin=
ux-5.4.109-2.el7.nutanix.20201105.2244.x86_64/kernel/workqueue.c: 2271<o:p>=
</o:p></p>
<p class=3D"MsoNormal">#9 [ffffb0354e26feb8] worker_thread at ffffffffae098=
ca9<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; /usr/src/debug/kernel-5.4.109/lin=
ux-5.4.109-2.el7.nutanix.20201105.2244.x86_64/include/linux/compiler.h: 266=
<o:p></o:p></p>
<p class=3D"MsoNormal">#10 [ffffb0354e26ff10] kthread at ffffffffae09e378<o=
:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; /usr/src/debug/kernel-5.4.109/lin=
ux-5.4.109-2.el7.nutanix.20201105.2244.x86_64/kernel/kthread.c: 268<o:p></o=
:p></p>
<p class=3D"MsoNormal">#11 [ffffb0354e26ff50] ret_from_fork at ffffffffae80=
01ff<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; /usr/src/debug/kernel-5.4.109/lin=
ux-5.4.109-2.el7.nutanix.20201105.2244.x86_64/arch/x86/entry/entry_64.S: 35=
2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">-------------------------------------------<o:p></o:=
p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
11.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#1D1C1D">movzwl 0xa(%=
rdx),%edx fails as RDX: 0000000000000000&nbsp; (offset 0xa from 0) causes N=
ULL pointer dereference<o:p></o:p></span></p>
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right;background=
:white"><span style=3D"font-size:11.5pt;font-family:&quot;Arial&quot;,sans-=
serif;color:#1D1C1D"><a href=3D"https://nutanix.slack.com/archives/C0373JMN=
G1K/p1648596476138519"><span style=3D"font-size:9.0pt;color:blue;text-decor=
ation:none">4:27</span></a><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
11.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#1D1C1D">mov&nbsp;&nb=
sp;&nbsp; 0xe8(%rbx),%rdx program rdx, and %rbx is ffff980d5b788c00<br>
x/x 0xffff980d5b788ce8<br>
0xffff980d5b788ce8:&nbsp;&nbsp;&nbsp;&nbsp; 0x00000000, so %rdx gets progra=
mmed with 0.<o:p></o:p></span></p>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid w=
indowtext 1.0pt;padding:0in 0in 1.0pt 0in">
<p class=3D"MsoNormal" style=3D"border:none;padding:0in"><o:p>&nbsp;</o:p><=
/p>
</div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.5pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#1D1C1D;background:#F8F8F8">crash&gt; i40e_vsi.s=
tate ffff980d62d86000</span><span style=3D"font-size:11.5pt;font-family:&qu=
ot;Arial&quot;,sans-serif;color:#1D1C1D"><br>
<span style=3D"background:#F8F8F8">&nbsp;&nbsp;state =3D {0}</span><br>
<span style=3D"background:#F8F8F8">crash&gt; i40e_vsi.netdev ffff980d62d860=
00</span><br>
<span style=3D"background:#F8F8F8">&nbsp;&nbsp;netdev =3D 0xffff980d62d8700=
0</span><br>
<span style=3D"background:#F8F8F8">crash&gt; num_queue_pairs</span><br>
<span style=3D"background:#F8F8F8">crash: command not found: num_queue_pair=
s</span><br>
<span style=3D"background:#F8F8F8">crash&gt; i40e_vsi.num_queue_pairs ffff9=
80d62d86000</span><br>
<span style=3D"background:#F8F8F8">&nbsp;&nbsp;num_queue_pairs =3D 64</span=
><br>
<span style=3D"background:#F8F8F8">All Tx rings</span><br>
<span style=3D"background:#F8F8F8">crash&gt; x/64g 0xffff980d61f11800</span=
><br>
<span style=3D"background:#F8F8F8">0xffff980d61f11800:&nbsp;&nbsp;&nbsp;&nb=
sp; 0xffff980d61f11c00&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0xffff980d61f12000</sp=
an><br>
<span style=3D"background:#F8F8F8">0xffff980d61f11810:&nbsp;&nbsp;&nbsp;&nb=
sp; 0xffff980d61f12400&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0xffff980d61f12800</sp=
an><br>
<span style=3D"background:#F8F8F8">0xffff980d61f11820:&nbsp;&nbsp;&nbsp;&nb=
sp; 0xffff980d61f12c00&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0xffff980d61f13000</sp=
an><br>
<span style=3D"background:#F8F8F8">0xffff980d61f11830:&nbsp;&nbsp;&nbsp;&nb=
sp; 0xffff980d61f13400&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0xffff980d61f13800</sp=
an><br>
<span style=3D"background:#F8F8F8">0xffff980d61f11840:&nbsp;&nbsp;&nbsp;&nb=
sp; 0xffff980d61f13c00&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0xffff980d61f14000</sp=
an><br>
<span style=3D"background:#F8F8F8">0xffff980d61f11850:&nbsp;&nbsp;&nbsp;&nb=
sp; 0xffff980d61f14400&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0xffff980d61f14800</sp=
an><br>
<span style=3D"background:#F8F8F8">0xffff980d61f11860:&nbsp;&nbsp;&nbsp;&nb=
sp; 0xffff980d61f14c00&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0xffff980d61f15000</sp=
an><br>
<span style=3D"background:#F8F8F8">0xffff980d61f11870:&nbsp;&nbsp;&nbsp;&nb=
sp; 0xffff980d61f15400&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0xffff980d61f15800</sp=
an><br>
<span style=3D"background:#F8F8F8">0xffff980d61f11880:&nbsp;&nbsp;&nbsp;&nb=
sp; 0xffff980d61f15c00&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0xffff980d61f16000</sp=
an><br>
<span style=3D"background:#F8F8F8">0xffff980d61f11890:&nbsp;&nbsp;&nbsp;&nb=
sp; 0xffff980d61f16400&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0xffff980d61f16800</sp=
an><br>
<span style=3D"background:#F8F8F8">0xffff980d61f118a0:&nbsp;&nbsp;&nbsp;&nb=
sp; 0xffff980d61f16c00&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0xffff980d61f17000</sp=
an><br>
<span style=3D"background:#F8F8F8">0xffff980d61f118b0:&nbsp;&nbsp;&nbsp;&nb=
sp; 0xffff980d61f17400&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0xffff980d61f17800</sp=
an><br>
<span style=3D"background:#F8F8F8">0xffff980d61f118c0:&nbsp;&nbsp;&nbsp;&nb=
sp; 0xffff980d61f17c00&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0xffff980d5b790000</sp=
an><br>
<span style=3D"background:#F8F8F8">0xffff980d61f118d0:&nbsp;&nbsp;&nbsp;&nb=
sp; 0xffff980d5b790400&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0xffff980d5b790800</sp=
an><br>
<span style=3D"background:#F8F8F8">0xffff980d61f118e0:&nbsp;&nbsp;&nbsp;&nb=
sp; 0xffff980d5b790c00&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0xffff980d5b791000</sp=
an><br>
<span style=3D"background:#F8F8F8">0xffff980d61f118f0:&nbsp;&nbsp;&nbsp;&nb=
sp; 0xffff980d5b791400&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0xffff980d5b791800</sp=
an><br>
<span style=3D"background:#F8F8F8">0xffff980d61f11900:&nbsp;&nbsp;&nbsp;&nb=
sp; 0xffff980d5b791c00&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0xffff980d5b792000</sp=
an><br>
<span style=3D"background:#F8F8F8">0xffff980d61f11910:&nbsp;&nbsp;&nbsp;&nb=
sp; 0xffff980d5b792400&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0xffff980d5b792800</sp=
an><br>
<span style=3D"background:#F8F8F8">0xffff980d61f11920:&nbsp;&nbsp;&nbsp;&nb=
sp; 0xffff980d5b792c00&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0xffff980d5b793000</sp=
an><br>
<span style=3D"background:#F8F8F8">0xffff980d61f11930:&nbsp;&nbsp;&nbsp;&nb=
sp; 0xffff980d5b793400&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0xffff980d5b793800</sp=
an><br>
<span style=3D"background:#F8F8F8">0xffff980d61f11940:&nbsp;&nbsp;&nbsp;&nb=
sp; 0xffff980d5b793c00&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0xffff980d5b794000</sp=
an><br>
<span style=3D"background:#F8F8F8">0xffff980d61f11950:&nbsp;&nbsp;&nbsp;&nb=
sp; 0xffff980d5b794400&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0xffff980d5b794800</sp=
an><br>
<span style=3D"background:#F8F8F8">0xffff980d61f11960:&nbsp;&nbsp;&nbsp;&nb=
sp; 0xffff980d5b794c00&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0xffff980d5b795000</sp=
an><br>
<span style=3D"background:#F8F8F8">0xffff980d61f11970:&nbsp;&nbsp;&nbsp;&nb=
sp; 0xffff980d5b795400&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0xffff980d5b795800</sp=
an><br>
<span style=3D"background:#F8F8F8">0xffff980d61f11980:&nbsp;&nbsp;&nbsp;&nb=
sp; 0xffff980d5b795c00&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0xffff980d5b796000</sp=
an><br>
<span style=3D"background:#F8F8F8">0xffff980d61f11990:&nbsp;&nbsp;&nbsp;&nb=
sp; 0xffff980d5b796400&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0xffff980d5b796800</sp=
an><br>
<span style=3D"background:#F8F8F8">0xffff980d61f119a0:&nbsp;&nbsp;&nbsp;&nb=
sp; 0xffff980d5b796c00&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0xffff980d5b797000</sp=
an><br>
<span style=3D"background:#F8F8F8">0xffff980d61f119b0:&nbsp;&nbsp;&nbsp;&nb=
sp; 0xffff980d5b797400&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0xffff980d5b797800</sp=
an><br>
<span style=3D"background:#F8F8F8">0xffff980d61f119c0:&nbsp;&nbsp;&nbsp;&nb=
sp; 0xffff980d5b797c00&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0xffff980d5b788000</sp=
an><br>
<span style=3D"background:#F8F8F8">0xffff980d61f119d0:&nbsp;&nbsp;&nbsp;&nb=
sp; 0xffff980d5b788400&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0xffff980d5b788800</sp=
an><br>
<span style=3D"background:#F8F8F8">0xffff980d61f119e0:&nbsp;&nbsp;&nbsp;&nb=
sp; 0xffff980d5b788c00&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0xffff980d5b789000</sp=
an><br>
<span style=3D"background:#F8F8F8">0xffff980d61f119f0:&nbsp;&nbsp;&nbsp;&nb=
sp; 0xffff980d5b789400&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0xffff980d5b789800cras=
h&gt; struct i40e_ring.q_vector 0xffff980d5b788400&nbsp;&nbsp;q_vector =3D =
0xffff980d61c92800</span><br style=3D"box-sizing: inherit;font-variant-liga=
tures: common-ligatures;font-variant-caps: normal;orphans: 2;widows: 2;-web=
kit-text-stroke-width: 0px;text-decoration-thickness: initial;text-decorati=
on-style: initial;text-decoration-color: initial;word-spacing:0px">
<br>
<span style=3D"background:#F8F8F8"><o:p></o:p></span></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.5pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#1D1C1D;background:#F8F8F8">crash&gt; struct i40=
e_ring.q_vector 0xffff980d5b788400&nbsp;&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.5pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#1D1C1D;background:#F8F8F8">q_vector =3D 0xffff9=
80d61c92800<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.5pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#1D1C1D;background:#F8F8F8"><o:p>&nbsp;</o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.5pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#1D1C1D;background:#F8F8F8">crash&gt; struct i40=
e_ring.q_vector 0xffff980d5b788c00</span><span style=3D"font-size:11.5pt;fo=
nt-family:&quot;Arial&quot;,sans-serif;color:#1D1C1D"><br>
<span style=3D"background:#F8F8F8">&nbsp;&nbsp;q_vector =3D 0x0</span><br s=
tyle=3D"box-sizing: inherit;font-variant-ligatures: common-ligatures;font-v=
ariant-caps: normal;orphans: 2;widows: 2;-webkit-text-stroke-width: 0px;tex=
t-decoration-thickness: initial;text-decoration-style: initial;text-decorat=
ion-color: initial;word-spacing:0px">
<br>
<span style=3D"background:#F8F8F8"><o:p></o:p></span></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.5pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#1D1C1D;background:#F8F8F8"><o:p>&nbsp;</o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.5pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#1D1C1D;background:#F8F8F8">So q_vector is not s=
et after around 60 queues, yet in the driver we do a deference</span><span =
style=3D"font-size:11.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#1=
D1C1D"><br>
<span style=3D"background:#F8F8F8">i40e_force_wb():</span><br>
<span style=3D"background:#F8F8F8">(q_vector-&gt;reg_idx) and die.</span></=
span><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Gdb macro:<o:p></o:p></p>
<p class=3D"MsoNormal">define print_i40e_q_vector<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; set $vsi =3D (struct i40e_vsi *)$=
arg0<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; set $q_vectors =3D $vsi-&gt;num_q=
_vectors<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; printf &quot;vsi %p q_vectors %d&=
quot;, $vsi, $q_vectors<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; set $index =3D 0<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; while $index &lt; $q_vectors<o:p>=
</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; set $q_ve=
ctor =3D (struct i40e_q_vector *)$vsi-&gt;q_vectors[$index]<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; printf &q=
uot;num_ringpairs %d\n&quot;, $q_vector-&gt;num_ringpairs<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; set $inde=
x +=3D 1<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; end<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">end<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Ouput:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">crash&gt; print_i40e_q_vector 0xffff980d62d86000<o:p=
></o:p></p>
<p class=3D"MsoNormal">vsi 0xffff980d62d86000 q_vectors 64num_ringpairs 1<o=
:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 1<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 1<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 1<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 1<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 1<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 1<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 1<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 1<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 1<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 1<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 1<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 1<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 1<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 1<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 1<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 1<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 1<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 1<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 1<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 1<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 1<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 1<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 1<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 1<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 1<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 1<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 1<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 1<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 1<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 1<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 1<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 1<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 1<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 1<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 1<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 1<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 1<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 1<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 1<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 1<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 1<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 1<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 1<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 1<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 1<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 1<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 1<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 1<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 1<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 1<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 1<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 1<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 1<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 1<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 1<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 1<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 1<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 1<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 1<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 0<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 0<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 0<o:p></o:p></p>
<p class=3D"MsoNormal">num_ringpairs 0<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Source code:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">static void i40e_vsi_map_rings_to_vectors(struct i40=
e_vsi *vsi)<o:p></o:p></p>
<p class=3D"MsoNormal">{<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; int qp_remaining =3D vsi-&gt;num_queue_pairs;=
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; int q_vectors =3D vsi-&gt;num_q_vectors;<o:p>=
</o:p></p>
<p class=3D"MsoNormal">&nbsp; int num_ringpairs;<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; int v_start =3D 0;<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; int qp_idx =3D 0;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp; /* If we don't have enough vectors for a 1-to=
-1 mapping, we'll have to<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp; * group them so there are multiple queu=
es per vector.<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp; * It is also important to go through al=
l the vectors available to be<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp; * sure that if we don't use all the vec=
tors, that the remaining vectors<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp; * are cleared. This is especially impor=
tant when decreasing the<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp; * number of queues in use.<o:p></o:p></=
p>
<p class=3D"MsoNormal">&nbsp;&nbsp; */<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; for (; v_start &lt; q_vectors; v_start++) {<o=
:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; struct i40e_q_vector *q_vector =
=3D vsi-&gt;q_vectors[v_start];<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; num_ringpairs =3D DIV_ROUND_UP(qp=
_remaining, q_vectors - v_start);<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; q_vector-&gt;num_ringpairs =3D nu=
m_ringpairs;<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; q_vector-&gt;reg_idx =3D q_vector=
-&gt;v_idx + vsi-&gt;base_vector - 1;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; q_vector-&gt;rx.count =3D 0;<o:p>=
</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; q_vector-&gt;tx.count =3D 0;<o:p>=
</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; q_vector-&gt;rx.ring =3D NULL;<o:=
p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; q_vector-&gt;tx.ring =3D NULL;<o:=
p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; while (num_ringpairs--) {<o:p></o=
:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; i40e_map_vector_to_qp=
(vsi, v_start, qp_idx);<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; qp_idx++;<o:p></o:p><=
/p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; qp_remaining--;<o:p><=
/o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; }<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; }<o:p></o:p></p>
<p class=3D"MsoNormal">}<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">How in the above for loop <o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;num_ringpairs =3D DIV_ROUND_=
UP(qp_remaining, q_vectors - v_start);<o:p></o:p></p>
<p class=3D"MsoNormal">evaluates to 0, is not clear.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Have we seen this problem before? If so, is there ar=
e fix?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Nucleodyne@Nutanix<o:p></o:p></p>
<p class=3D"MsoNormal">408-718-8164<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_SJ0PR02MB8862FB6E1933AFD6F1A08633FEE19SJ0PR02MB8862namp_--

--===============3529691869551795358==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============3529691869551795358==--
