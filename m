Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6624D4EFA25
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Apr 2022 20:49:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D4367418FC;
	Fri,  1 Apr 2022 18:49:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QP8Gn1mjZEip; Fri,  1 Apr 2022 18:49:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1A81F418F3;
	Fri,  1 Apr 2022 18:49:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 643D01BF30A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Apr 2022 18:49:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4F41384368
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Apr 2022 18:49:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=nutanix.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ADYl0N8qsd82 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Apr 2022 18:49:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mx0b-002c1b01.pphosted.com (mx0b-002c1b01.pphosted.com
 [148.163.155.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C1C5B8435C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Apr 2022 18:49:15 +0000 (UTC)
Received: from pps.filterd (m0127844.ppops.net [127.0.0.1])
 by mx0b-002c1b01.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id 231GAggR003475
 for <intel-wired-lan@lists.osuosl.org>; Fri, 1 Apr 2022 11:49:14 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nutanix.com;
 h=from : to : subject
 : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=proofpoint20171006;
 bh=PV3IwKHxwJfsfGSlNjbpLHoa4aihDVFbJTUow8AOk8w=;
 b=tAEukI1CCQBJcL04PQPMdeV/p7LB+tpseqW5G9WGUYgrZwtC+Cn3HnZl1hMnIAHBnlOd
 5uiyTNrFbU6Xt/fhsqkjbo28pdeGjBMbWSPRSkJn3m1uG6P9bRI8HUOnIvqsYn7OmNyx
 Gd2PtL9pcuB55/VmAvVDcfZn/NS/eoOHpQ10jz0OPoZ/Fb2Fugq/KYg2VX+uGYqGOVED
 ToitGnHmwn7KYnAEzWY5E6tpr3g6JPmlsSWMCIdpBsgNEOMJxJ+MaH2+9ifCZNc3B+Cc
 XcqxFUIA28wWiPR5qZQSUAIa4BzJjkG27sIIoUxgZSUg6JadS/xJTZ29S4YJuwc9uMWE jA== 
Received: from nam10-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam10lp2103.outbound.protection.outlook.com [104.47.58.103])
 by mx0b-002c1b01.pphosted.com (PPS) with ESMTPS id 3f22c0pb4u-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <intel-wired-lan@lists.osuosl.org>; Fri, 01 Apr 2022 11:49:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V2DYHn1fuFyggFfFV1W5JbzqYJWGnmepeeCDBDkVuHND9nNmWX9G2wC4xenrHte4149Wu7jDbRmY6SXXUIe+LGEfskareYU3SNrQj5OJ7+KI18r6f+uCnw6WoNG9eaDFEwY98jqR3XasdFJnqNDVV7juIYAuihQ13aK/5TeMfpkS7bY6R/3owxihjE5aZIOkeUjBYHCIWdZvLoSwQTTF/rxDYPHl8v2hWlBNyo08mCgdAnrIynEFLYUF5JxgaJcDslMNo+biPJSsu3RqG51jeT3yxpS4K8LB1yW18weZ4Wwb190Xt4alP3BzZyqBrucPeXU2Ovv4/RVj61rxzCoa1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PV3IwKHxwJfsfGSlNjbpLHoa4aihDVFbJTUow8AOk8w=;
 b=Si4uSbryoBFISSPAts5uoKtLD0ghUJtS92Z+VJ0GNskmvnYNk/8VI+bjyQ6WqVRsEv8akM3lX3pUvrzcBf2/pjqBDKd11+IWwWiEjBe/lSfQ5deNZiXf61fzCiO91xzZgkvVyIedZzOu3Wp9N1F8CzcWXRi8qS3pCD63Jv7oS/DE4aJl4c/pR8ONNmgZ/tqO0wNfgzdhs3P5kcpeCddQ7ArLKTz5MCVgnNnZD1JHtl9FbOGQ9YvubKCyMGGARstJ2j35IAzBaZDB0btGZLrg9geHetxmkZN7GvONhpSaxmvXS2qk2lznDnTIZNIUiIEf177GfRYSxqxJc7yAFHlE7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nutanix.com; dmarc=pass action=none header.from=nutanix.com;
 dkim=pass header.d=nutanix.com; arc=none
Received: from SJ0PR02MB8862.namprd02.prod.outlook.com (2603:10b6:a03:3fd::8)
 by DM8PR02MB7864.namprd02.prod.outlook.com (2603:10b6:8:23::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5123.25; Fri, 1 Apr
 2022 18:49:12 +0000
Received: from SJ0PR02MB8862.namprd02.prod.outlook.com
 ([fe80::3580:8973:41bc:fe63]) by SJ0PR02MB8862.namprd02.prod.outlook.com
 ([fe80::3580:8973:41bc:fe63%6]) with mapi id 15.20.5123.021; Fri, 1 Apr 2022
 18:49:12 +0000
From: "Kallol Biswas [C]" <kallol.biswas@nutanix.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: bug in i40e-2.14.13 driver ??
Thread-Index: AdhFK4uEFseXr7dmQZ6a8liD4G0ezwAAT4OAADL6NYA=
Date: Fri, 1 Apr 2022 18:49:11 +0000
Message-ID: <SJ0PR02MB8862779A913E85B1E45870E8FEE09@SJ0PR02MB8862.namprd02.prod.outlook.com>
References: <SJ0PR02MB8862A7F336A45D8E8B0090C4FEE19@SJ0PR02MB8862.namprd02.prod.outlook.com>
 <20220331112607.0337e1eb@kernel.org>
In-Reply-To: <20220331112607.0337e1eb@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 505042d8-9241-4f24-85fd-08da14105010
x-ms-traffictypediagnostic: DM8PR02MB7864:EE_
x-microsoft-antispam-prvs: <DM8PR02MB7864CF5C4FC343F586DE7385FEE09@DM8PR02MB7864.namprd02.prod.outlook.com>
x-proofpoint-crosstenant: true
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FyyFEFkjL+HXsOR3zJXJ1ZAw9lGyvbteOEyNYSo7w0u4EWeet4yzrbINlVaWvyKcKG64bvQfG1xbFnGPwUqsMwXgKyD99DpkkTgGVrUXGvd/q2X2Kb/cpDEGkXp+uZWdPJSSiR61sCunxyHbBjAarkM8Ma44BWXJunvoSl5YtjiFc0RJkvJwngZM+CfQg55HVT1SjdC5DXo0bA2PXD+Fjh4w37PvvAkFNp8CKCZRcIHytbRZL+3hHy8R3Gi3vIKMJZ+J2q1iUMabNj/83Sa4xhB4YVvtzRidbfQq5GfRmA8ooNYZ0bLqhcWrvNAtivrwxTEFl/XnLhbweZzd+RB23e4Z8P54SizKjV2OmKP57/+d9qnnpCcEZ7BLV/Y1g0en0GdRuVhXgixxJDb0jvGtysDb75QWLg5K9UYPaSz/D6DEv1ra/6ltWAXFuse879xw4ktPOUX5tz/nzGNi5AySAdhEybTb9eZEHMST/82K9RIlDgYXUFtllNvDMmfeCMKDBYguOcoHCpQ8O9HmcE/BF1zaEZMFKJY9hmQ0l0Bjbd23cobe9Ox+wFrarcCTfEx5gsWraADJsGuezrZp0EyCypa2AbeFx9ypveeysvzeLWiDSRTj9Texpn1p9X9Ydhcs/fGIDOZTwAdGUbzzLxzPY4hVIk1WVisjdTLLC1BCEdfGfoJYj3J52ETul+GEk4JiCHo5X2Vz71KwwPvlOVMC5g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR02MB8862.namprd02.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(508600001)(2906002)(86362001)(71200400001)(40140700001)(33656002)(38070700005)(5660300002)(9686003)(26005)(186003)(52536014)(83380400001)(316002)(6506007)(8936002)(53546011)(122000001)(6916009)(55016003)(66476007)(66556008)(64756008)(8676002)(66446008)(66946007)(7696005)(76116006)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qXMm4CNmtdxFcWz/O5T9gIZSh8ERz/9I70nSizBRdkvmQ7+UihUHm3dB8SmI?=
 =?us-ascii?Q?Fw3wRsOdY0MV3+7NIOVgX4WP4sCW5bo0Rh+hwxCFX3Bm4JzEU9VcEygQvP/n?=
 =?us-ascii?Q?Xs9EBjNKYRnkiwbJdbE+YP8Tac5Q50eivkOMG83v6sHRyGILcocWICh3k3Q5?=
 =?us-ascii?Q?VZ1+DpNyJnnJS2sQ1d1Xx562e/hXbQXGoiw436J+4Flm/HIq/YppSB95iOgR?=
 =?us-ascii?Q?PjQ9E73DdZ8P7zbeOQ79N0kRZ7yu5+MhdRksjvrh1LyWKcHWPMA68LKrRPiX?=
 =?us-ascii?Q?4az3yC5r67waA5vmB/7OdP2uFwnz1hl8hpo4oJMYAFw+X1Avd3Nfohx2kpXr?=
 =?us-ascii?Q?URmqP+HDjOXxAaBHo1OHJYn8zK3Lp1gmEJ17HAXijo0glazdCqa35/GZpNpb?=
 =?us-ascii?Q?BGYvSjsPxnu+FvsnGancqgFA6GOYNDq9ibC4W5GBRf09lGU0eYSCHsIITLln?=
 =?us-ascii?Q?UZ3QZQ1rbhegVVOkRI1Sa1O3MmVcwm73ydNBodQ0trfGTwnfn0VqWdEi4M6i?=
 =?us-ascii?Q?7U4fE/gc3JJspcPfMhLmjlc6S9/7UJBjHnDuC07jibfmi4P+Mg4D5/anK7JV?=
 =?us-ascii?Q?y++c24wso0rOpUixtqED1HgPQe/OHzKXbau/96HtkyjJP+QBrLFBmg3CGbMb?=
 =?us-ascii?Q?W0QbbhFam1juxA/Vr3wAmnyjCjB+goUUk8B/9XbYiuAaKac1KlgqwZJAYEAB?=
 =?us-ascii?Q?kIv7iYxlPgoGs1OhvnqORcu7o7WoXxy5gxjnWjJ9kI9Y/dnJLgjuXNY3XMrm?=
 =?us-ascii?Q?87gP7BelCTEr+YhX1N5NVkyswCIAyYQAXb5LlUyT3PVCFx1lAPyKPshAsaIM?=
 =?us-ascii?Q?/c5DShtZB8cmfrxmlz+MEDKpUCwLDhwx3S60nghZHPPrNDEldVIAHjglCXYJ?=
 =?us-ascii?Q?rk4neFAV6i3J2R8issCEJ7IQVH9gVy+HuQYD0xrAAeUw+txWiLkr+GdpeWBb?=
 =?us-ascii?Q?X6vJRy0lsc3uc3LVL4kC4e453B3/EggLbW7WGL0lVe99Vsi+FFPTsaGeb40v?=
 =?us-ascii?Q?CzPoTQW2rR4IxXs1b8IzHo5ib/prdFsXmzD4QIRDvDZuAsjrWiGm2eYJWAFP?=
 =?us-ascii?Q?gC8zqYvm3/o2Y27UwWweZlzrBXrZwaM2UcGxJrZXEKzLujU4K90sof2clsAl?=
 =?us-ascii?Q?DBEm6uJcvYdXzYCxBC7rizfytuSdOgOsOk6rPah3/558dECEZDtBnSnO0065?=
 =?us-ascii?Q?KrEIleQKWzI0/eenyh0pNE6Bbc1W+lCuhzspDoCc21my/ajBT8WHCOLly73z?=
 =?us-ascii?Q?geUKztD/ShbRCgOdOX7xEl9bF8szEQmlBVlHhmhhZyiEY4JeT8r2g9+DTQCu?=
 =?us-ascii?Q?leoxwaOKklAX5vS7WOAgGCTCysco0iwL6Zvnpt2kfPD8aNPVerj6NH+U/4dD?=
 =?us-ascii?Q?ssV55zjUcVW9bFgAOsFY9xHbqCgkYRFMEw7qijhl56dcWh8pUQbDoi/r1x4L?=
 =?us-ascii?Q?chICvKzzDaeiDmIAVk1/jgH0AZUllYz/jxZAa+ix+bnfO1tNiCs3eDGbqZq7?=
 =?us-ascii?Q?P6KNbhiRf6v+wlSCcOGKIgkjt67IX9rImrMz06JvHMeGCwxLpphAnYmRXPnf?=
 =?us-ascii?Q?aqs3ZxTz7blwwcS+W3FOzdiXJ1UZGxBpriYnaK7/ORCulk7HGtnw/RbsaLuB?=
 =?us-ascii?Q?Pnst6EVA43Wk7lrpISnMqWp1k5zZ5OQX28IpQLXyZZ2K55K5io2s8ezVO3sp?=
 =?us-ascii?Q?bUS7ZZy7DlO4k4L70jD+VWhjSAOlhI3SivHDqDk3A0pBA3mn1iJpPkYI/LPM?=
 =?us-ascii?Q?/GgrN5RGGUF6Q14cfjBivmQiAzeJL1w=3D?=
MIME-Version: 1.0
X-OriginatorOrg: nutanix.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR02MB8862.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 505042d8-9241-4f24-85fd-08da14105010
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2022 18:49:12.0218 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: bb047546-786f-4de1-bd75-24e5b6f79043
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bXhsm8chYRXSDq5tcSs+h4jHz9AGStchPGFa9AEPb1P1EDr9Q6ScTOwt+mJE/OINhcTAfK82GzPODAM9+MzFz4mWUnRwnf5Ba0dSoqbxZ/k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR02MB7864
X-Proofpoint-GUID: ilLFQcJn43PTJO0os6XJUd4LTUc5D9W_
X-Proofpoint-ORIG-GUID: ilLFQcJn43PTJO0os6XJUd4LTUc5D9W_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.850,Hydra:6.0.425,FMLib:17.11.64.514
 definitions=2022-04-01_05,2022-03-31_01,2022-02-23_01
X-Proofpoint-Spam-Reason: safe
Subject: Re: [Intel-wired-lan] bug in i40e-2.14.13 driver ??
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

I have debugged this further..

At init time  num_queue_pairs is 60
[    5.384729] i40e 0000:b1:00.1: Features: PF-id[1] VFs: 64 VSIs: 66 QP: 60 RSS FD_ATR FD_SB NTUPLE

At crash time (detect hang routine)
Num_queue_pairs is 64.

The driver crashes accessing 1st of last 4 uninitialized structures.

What changes num_queue_pairs from 60 to 64 at run time? Maybe bug is there.

Any input from i40e developers?

-----Original Message-----
From: Jakub Kicinski <kuba@kernel.org> 
Sent: Thursday, March 31, 2022 11:26 AM
To: Kallol Biswas [C] <kallol.biswas@nutanix.com>; intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org
Subject: Re: bug in i40e-2.14.13 driver ??

Sounds like the out of tree version of the driver, adding the intel-wired list. Feel free to skip CCing netdev in the future on reports about code that's not in tree.

On Thu, 31 Mar 2022 18:17:14 +0000 Kallol Biswas [C] wrote:
> Hi,
>      We have been getting a NULL pointer dereference in intel i40e driver.
> 
> [  105.551413] BUG: kernel NULL pointer dereference, address: 
> 000000000000000a
> 
> PID: 369    TASK: ffff980d62d70000  CPU: 16  COMMAND: "kworker/16:1"
> #0 [ffffb0354e26fb00] machine_kexec at ffffffffae059db5
>     
> /usr/src/debug/kernel-5.4.109/linux-5.4.109-2.el7.nutanix.20201105.224
> 4.x86_64/arch/x86/kernel/machine_kexec_64.c: 441
> #1 [ffffb0354e26fb50] __crash_kexec at ffffffffae12584d
>     
> /usr/src/debug/kernel-5.4.109/linux-5.4.109-2.el7.nutanix.20201105.224
> 4.x86_64/kernel/kexec_core.c: 957
> #2 [ffffb0354e26fc18] crash_kexec at ffffffffae126ab9
>     
> /usr/src/debug/kernel-5.4.109/linux-5.4.109-2.el7.nutanix.20201105.224
> 4.x86_64/include/linux/compiler.h: 292
> #3 [ffffb0354e26fc30] oops_end at ffffffffae02a3da
>     
> /usr/src/debug/kernel-5.4.109/linux-5.4.109-2.el7.nutanix.20201105.224
> 4.x86_64/arch/x86/kernel/dumpstack.c: 334
> #4 [ffffb0354e26fc50] no_context at ffffffffae065ff8
>     
> /usr/src/debug/kernel-5.4.109/linux-5.4.109-2.el7.nutanix.20201105.224
> 4.x86_64/arch/x86/mm/fault.c: 848
> #5 [ffffb0354e26fcc0] do_page_fault at ffffffffae066ad1
>     
> /usr/src/debug/kernel-5.4.109/linux-5.4.109-2.el7.nutanix.20201105.224
> 4.x86_64/arch/x86/mm/fault.c: 1552
> #6 [ffffb0354e26fcf0] page_fault at ffffffffae801119
>     /usr/src/debug/kernel-5.4.109/linux-5.4.109-2.el7.nutanix.20201105.2244.x86_64/arch/x86/entry/entry_64.S: 1203
>     [exception RIP: i40e_detect_recover_hung+116]
>     RIP: ffffffffc07ae0d4  RSP: ffffb0354e26fda0  RFLAGS: 00010202
>     RAX: ffff980d64e6a000  RBX: ffff980d5b788c00  RCX: ffff980d6f426e08
>     RDX: 0000000000000000  RSI: 0000000000000001  RDI: ffff980d5b788800
>     RBP: 000000000000003c   R8: 0000000065303469   R9: 8080808080808080
>     R10: 0000000000000000  R11: 0000000000000000  R12: ffff980d62d86000
>     R13: 00000000ffffffff  R14: 0000000000000000  R15: ffff980d64e6a848
>     ORIG_RAX: ffffffffffffffff  CS: 0010  SS: 0018
>     
> /home/mockbuild/rpmbuild/BUILD/i40e-2.14.13/src/i40e_virtchnl_pf.c: 
> 7253
> #7 [ffffb0354e26fdc8] i40e_service_task at ffffffffc078ff9b [i40e]
>     /home/mockbuild/rpmbuild/BUILD/i40e-2.14.13/src/i40e_ethtool.c: 
> 5000
> #8 [ffffb0354e26fe78] process_one_work at ffffffffae09818b
>     
> /usr/src/debug/kernel-5.4.109/linux-5.4.109-2.el7.nutanix.20201105.224
> 4.x86_64/kernel/workqueue.c: 2271
> #9 [ffffb0354e26feb8] worker_thread at ffffffffae098ca9
>     
> /usr/src/debug/kernel-5.4.109/linux-5.4.109-2.el7.nutanix.20201105.224
> 4.x86_64/include/linux/compiler.h: 266
> #10 [ffffb0354e26ff10] kthread at ffffffffae09e378
>     
> /usr/src/debug/kernel-5.4.109/linux-5.4.109-2.el7.nutanix.20201105.224
> 4.x86_64/kernel/kthread.c: 268
> #11 [ffffb0354e26ff50] ret_from_fork at ffffffffae8001ff
>     
> /usr/src/debug/kernel-5.4.109/linux-5.4.109-2.el7.nutanix.20201105.224
> 4.x86_64/arch/x86/entry/entry_64.S: 352
> 
> -------------------------------------------
> 
> movzwl 0xa(%rdx),%edx fails as RDX: 0000000000000000  (offset 0xa from 
> 0) causes NULL pointer dereference
> 4:27
> mov    0xe8(%rbx),%rdx program rdx, and %rbx is ffff980d5b788c00
> x/x 0xffff980d5b788ce8
> 0xffff980d5b788ce8:     0x00000000, so %rdx gets programmed with 0.
> 
> crash> i40e_vsi.state ffff980d62d86000
>   state = {0}
> crash> i40e_vsi.netdev ffff980d62d86000
>   netdev = 0xffff980d62d87000
> crash> num_queue_pairs
> crash: command not found: num_queue_pairs
> crash> i40e_vsi.num_queue_pairs ffff980d62d86000
>   num_queue_pairs = 64
> All Tx rings
> crash> x/64g 0xffff980d61f11800
> 0xffff980d61f11800:     0xffff980d61f11c00      0xffff980d61f12000
> 0xffff980d61f11810:     0xffff980d61f12400      0xffff980d61f12800
> 0xffff980d61f11820:     0xffff980d61f12c00      0xffff980d61f13000
> 0xffff980d61f11830:     0xffff980d61f13400      0xffff980d61f13800
> 0xffff980d61f11840:     0xffff980d61f13c00      0xffff980d61f14000
> 0xffff980d61f11850:     0xffff980d61f14400      0xffff980d61f14800
> 0xffff980d61f11860:     0xffff980d61f14c00      0xffff980d61f15000
> 0xffff980d61f11870:     0xffff980d61f15400      0xffff980d61f15800
> 0xffff980d61f11880:     0xffff980d61f15c00      0xffff980d61f16000
> 0xffff980d61f11890:     0xffff980d61f16400      0xffff980d61f16800
> 0xffff980d61f118a0:     0xffff980d61f16c00      0xffff980d61f17000
> 0xffff980d61f118b0:     0xffff980d61f17400      0xffff980d61f17800
> 0xffff980d61f118c0:     0xffff980d61f17c00      0xffff980d5b790000
> 0xffff980d61f118d0:     0xffff980d5b790400      0xffff980d5b790800
> 0xffff980d61f118e0:     0xffff980d5b790c00      0xffff980d5b791000
> 0xffff980d61f118f0:     0xffff980d5b791400      0xffff980d5b791800
> 0xffff980d61f11900:     0xffff980d5b791c00      0xffff980d5b792000
> 0xffff980d61f11910:     0xffff980d5b792400      0xffff980d5b792800
> 0xffff980d61f11920:     0xffff980d5b792c00      0xffff980d5b793000
> 0xffff980d61f11930:     0xffff980d5b793400      0xffff980d5b793800
> 0xffff980d61f11940:     0xffff980d5b793c00      0xffff980d5b794000
> 0xffff980d61f11950:     0xffff980d5b794400      0xffff980d5b794800
> 0xffff980d61f11960:     0xffff980d5b794c00      0xffff980d5b795000
> 0xffff980d61f11970:     0xffff980d5b795400      0xffff980d5b795800
> 0xffff980d61f11980:     0xffff980d5b795c00      0xffff980d5b796000
> 0xffff980d61f11990:     0xffff980d5b796400      0xffff980d5b796800
> 0xffff980d61f119a0:     0xffff980d5b796c00      0xffff980d5b797000
> 0xffff980d61f119b0:     0xffff980d5b797400      0xffff980d5b797800
> 0xffff980d61f119c0:     0xffff980d5b797c00      0xffff980d5b788000
> 0xffff980d61f119d0:     0xffff980d5b788400      0xffff980d5b788800
> 0xffff980d61f119e0:     0xffff980d5b788c00      0xffff980d5b789000
> 0xffff980d61f119f0:     0xffff980d5b789400      0xffff980d5b789800crash> struct i40e_ring.q_vector 0xffff980d5b788400  q_vector = 0xffff980d61c92800
> crash> struct i40e_ring.q_vector 0xffff980d5b788400    
> q_vector = 0xffff980d61c92800
> 
> crash> struct i40e_ring.q_vector 0xffff980d5b788c00
>   q_vector = 0x0
> 
> So q_vector is not set after around 60 queues, yet in the driver we do 
> a deference
> i40e_force_wb():
> (q_vector->reg_idx) and die.
> 
> Gdb macro:
> define print_i40e_q_vector
>     set $vsi = (struct i40e_vsi *)$arg0
> 
>     set $q_vectors = $vsi->num_q_vectors
> 
>     printf "vsi %p q_vectors %d", $vsi, $q_vectors
>     set $index = 0
> 
>     while $index < $q_vectors
> 
>         set $q_vector = (struct i40e_q_vector 
> *)$vsi->q_vectors[$index]
> 
>         printf "num_ringpairs %d\n", $q_vector->num_ringpairs
> 
>         set $index += 1
>     end
> 
> 
> end
> 
> Ouput:
> 
> crash> print_i40e_q_vector 0xffff980d62d86000
> vsi 0xffff980d62d86000 q_vectors 64num_ringpairs 1 num_ringpairs 1 
> num_ringpairs 1 num_ringpairs 1 num_ringpairs 1 num_ringpairs 1 
> num_ringpairs 1 num_ringpairs 1 num_ringpairs 1 num_ringpairs 1 
> num_ringpairs 1 num_ringpairs 1 num_ringpairs 1 num_ringpairs 1 
> num_ringpairs 1 num_ringpairs 1 num_ringpairs 1 num_ringpairs 1 
> num_ringpairs 1 num_ringpairs 1 num_ringpairs 1 num_ringpairs 1 
> num_ringpairs 1 num_ringpairs 1 num_ringpairs 1 num_ringpairs 1 
> num_ringpairs 1 num_ringpairs 1 num_ringpairs 1 num_ringpairs 1 
> num_ringpairs 1 num_ringpairs 1 num_ringpairs 1 num_ringpairs 1 
> num_ringpairs 1 num_ringpairs 1 num_ringpairs 1 num_ringpairs 1 
> num_ringpairs 1 num_ringpairs 1 num_ringpairs 1 num_ringpairs 1 
> num_ringpairs 1 num_ringpairs 1 num_ringpairs 1 num_ringpairs 1 
> num_ringpairs 1 num_ringpairs 1 num_ringpairs 1 num_ringpairs 1 
> num_ringpairs 1 num_ringpairs 1 num_ringpairs 1 num_ringpairs 1 
> num_ringpairs 1 num_ringpairs 1 num_ringpairs 1 num_ringpairs 1 
> num_ringpairs 1 num_ringpairs 1 num_ringpairs 0 num_ringpairs 0 
> num_ringpairs 0 num_ringpairs 0
> 
> 
> Source code:
> 
> static void i40e_vsi_map_rings_to_vectors(struct i40e_vsi *vsi) {
>   int qp_remaining = vsi->num_queue_pairs;
>   int q_vectors = vsi->num_q_vectors;
>   int num_ringpairs;
>   int v_start = 0;
>   int qp_idx = 0;
> 
>   /* If we don't have enough vectors for a 1-to-1 mapping, we'll have to
>    * group them so there are multiple queues per vector.
>    * It is also important to go through all the vectors available to be
>    * sure that if we don't use all the vectors, that the remaining vectors
>    * are cleared. This is especially important when decreasing the
>    * number of queues in use.
>    */
>   for (; v_start < q_vectors; v_start++) {
>     struct i40e_q_vector *q_vector = vsi->q_vectors[v_start];
> 
>     num_ringpairs = DIV_ROUND_UP(qp_remaining, q_vectors - v_start);
> 
>     q_vector->num_ringpairs = num_ringpairs;
>     q_vector->reg_idx = q_vector->v_idx + vsi->base_vector - 1;
> 
>     q_vector->rx.count = 0;
>     q_vector->tx.count = 0;
>     q_vector->rx.ring = NULL;
>     q_vector->tx.ring = NULL;
> 
>     while (num_ringpairs--) {
>       i40e_map_vector_to_qp(vsi, v_start, qp_idx);
>       qp_idx++;
>       qp_remaining--;
>     }
>   }
> }
> 
> How in the above for loop 
>     num_ringpairs = DIV_ROUND_UP(qp_remaining, q_vectors - v_start); 
> evaluates to 0, is not clear.
> 
> Have we seen this problem before? If so, is there are fix?
> 
> Nucleodyne@Nutanix
> 408-718-8164
> 
> Nucleodyne@Nutanix
> 408-718-8164
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
