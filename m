Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DC712D14EB
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Dec 2020 16:42:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 491BA86E40;
	Mon,  7 Dec 2020 15:42:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J3am2zRfaiOI; Mon,  7 Dec 2020 15:42:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4C49186E71;
	Mon,  7 Dec 2020 15:42:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 745131BF28A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Dec 2020 15:42:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6C82A8798E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Dec 2020 15:42:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zrSRKTnQrISW for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Dec 2020 15:42:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0b-00154904.pphosted.com (mx0b-00154904.pphosted.com
 [148.163.137.20])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 19A4F875FA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Dec 2020 15:42:01 +0000 (UTC)
Received: from pps.filterd (m0170396.ppops.net [127.0.0.1])
 by mx0b-00154904.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 0B7FVc3C001264; Mon, 7 Dec 2020 10:41:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=smtpout1;
 bh=Yl033VIlG1IECCjazmwRTE+HQDUuq8uOXglGVuShf2I=;
 b=G34dyOyGblFd2YcR9LX28R7DjWfM8vQ1x+qoQkBDw1DzUwZyQTszl3Pe5qnDYu/vyaJH
 ceE69OAr7tsl0HmFPFcQdDzpwj6/3EbdZuLdSXzg+ty5h55zi2Hxp83DAbXqAYxYwJxY
 /Q/fwhtjoAwJL9VOGvc+orE29DqDI7kriitKCW4VQ2wuaGll73F324oy8s05Yd36TVoF
 EzWYYhAbiMXofcvHLKgTgelGLKIkVeGo8WT6YqA7dEoGrqUk9KLCmbbqlOxpjZ3wAHW4
 HV6A5JQQXYWPitwxCj2E1Di/pvzJCl/LIuSKkiDpqIzbh/fq2EYrE7seHfv2xU//rN9v MQ== 
Received: from mx0a-00154901.pphosted.com (mx0a-00154901.pphosted.com
 [67.231.149.39])
 by mx0b-00154904.pphosted.com with ESMTP id 358b6ndm5t-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 07 Dec 2020 10:41:51 -0500
Received: from pps.filterd (m0090351.ppops.net [127.0.0.1])
 by mx0b-00154901.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 0B7FUt7H013621; Mon, 7 Dec 2020 10:41:50 -0500
Received: from nam11-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam11lp2176.outbound.protection.outlook.com [104.47.58.176])
 by mx0b-00154901.pphosted.com with ESMTP id 359kc64jq8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 07 Dec 2020 10:41:50 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IZxAzuNNYDMyjEI3g+jFpJARmAkLl4hV7QEFEit/v8UW+9FR4ChJJzq1XMJuuf2r4/ecpNFSz3/ErkmeNaaFHAm5AxI5j6F7DivAqPXEBsWaFnRKakNjrid+glexKtsIIWtCCMgRTJBZ62XlWEFIfPILs8Sl+g6CWWDKWUXO6WuoHIc7iAFpLENEGLCMUI8pJ4U/xxFYWvsHfeZlANX6L1dR9umziS/oZZ4oCCJI52TiWqU1+Hp29CD8VCbBhs0nOjwcVkkaGYzKFYCueUc8OrJUmysaAeg1K5C1kFhV1j1AYPBDN0eCywHmD80IUpPwqMC1PrfdqSQ5EpJLu2XzzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Yl033VIlG1IECCjazmwRTE+HQDUuq8uOXglGVuShf2I=;
 b=ZQHgihSr/lfwhJc5p88Fde5GC5TOIb/HvvOzs2dBtolQdFDvSDschyTJ50MDVM31ZQMOmd+WaXgs9dLVSWiKfxA32n0CbO/RdhdsY8ehrGdM63IBe8kbeuU//QiXj3vrh329fpNsK4Hj/hBwUoUpvSSVZxS1/mR4XzTM6vdQ9KijguIAU0XHw0d9VRTI9Z0WTDffLVZs6ryktzSvNix0AWdnawCrzr1eRz5DzPA1UAEXW5mg16wFRXZmCz0BZb2xwFtuyrnfBSEDTwtZwmQ2Ag5+mcqRzYmfxGFd5XzLe2PfHhdkTrDhMTzrxFKOmKYMKDC3bIg7EK6nKpCmk7halA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dell.com; dmarc=pass action=none header.from=dell.com;
 dkim=pass header.d=dell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Dell.onmicrosoft.com; 
 s=selector1-Dell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Yl033VIlG1IECCjazmwRTE+HQDUuq8uOXglGVuShf2I=;
 b=aJ+MiAAJp66j1k/yCwM4jslRnuo9rYS9+zTHciNduwLpXCSnQ+afzg1Kk3c2BY90lZ/p0R3ryVu7EOs00WDb7x1fJM1zCQzOKcNugaJs0QCRAcp7nsHfRmNxkdFG2B6ksOsofvJII/DER7qiEw5jlafx1DWju0PsLRhSNFYpCRU=
Received: from DM6PR19MB2636.namprd19.prod.outlook.com (2603:10b6:5:15f::15)
 by DM6PR19MB3993.namprd19.prod.outlook.com (2603:10b6:5:1::12) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3632.18; Mon, 7 Dec 2020 15:41:48 +0000
Received: from DM6PR19MB2636.namprd19.prod.outlook.com
 ([fe80::8a8:3eb2:917f:3914]) by DM6PR19MB2636.namprd19.prod.outlook.com
 ([fe80::8a8:3eb2:917f:3914%7]) with mapi id 15.20.3632.023; Mon, 7 Dec 2020
 15:41:48 +0000
From: "Limonciello, Mario" <Mario.Limonciello@dell.com>
To: Hans de Goede <hdegoede@redhat.com>, Jeff Kirsher
 <jeffrey.t.kirsher@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH v3 0/7] Improve s0ix flows for systems i219LM
Thread-Index: AQHWynlfqP1K6e0vqUqfE6etAZ98TqnrpJ0AgAAfsNA=
Date: Mon, 7 Dec 2020 15:41:48 +0000
Message-ID: <DM6PR19MB2636A4097B68DBB253C416D8FACE0@DM6PR19MB2636.namprd19.prod.outlook.com>
References: <20201204200920.133780-1-mario.limonciello@dell.com>
 <d0f7e565-05e1-437e-4342-55eb73daa907@redhat.com>
In-Reply-To: <d0f7e565-05e1-437e-4342-55eb73daa907@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Enabled=True;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SiteId=945c199a-83a2-4e80-9f8c-5a91be5752dd;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Owner=Mario_Limonciello@Dell.com;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SetDate=2020-12-07T15:22:41.6229061Z;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Name=External Public;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_ActionId=39b0ae18-a5d1-4afd-8c1d-13344afa4a46;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Extended_MSFT_Method=Manual
authentication-results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=Dell.com;
x-originating-ip: [76.251.167.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 21866001-96b4-4978-8102-08d89ac69c2d
x-ms-traffictypediagnostic: DM6PR19MB3993:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR19MB399392EAF9AD5227637AAF74FACE0@DM6PR19MB3993.namprd19.prod.outlook.com>
x-exotenant: 2khUwGVqB6N9v58KS13ncyUmMJd8q4
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: t5N/SjnsarLrm07P+9RR5YC9ZgIm/2i4alDMwL7ovW+j3cxrp3B/LMjfNMnDRcnCkJNyX/xLhDGfwCmyqzmzICJio4aM2UijSdiFhztJO+pOpkcKuV++k1SymvAvEyW1/pUux1DE8tvqIaGWVNL0HIiuGfgF8TCAbsp+2sGBlcgthKzHA2+QWNB4frVS/8yQn5FVpu9+QcbbUM6Lnan9GYFd4xUI9F20XYcKYmfqqsvu6GYySvlZsZspV4farq7uG9IXcAQVkMOwMfq4akU4HbfZLkVnlXtWnB8k/t3fauV65vRUWOC7yLiGBSiPrXJd9UaqFFP99h2PYbNw0PzUZhcRqF+DOVSJfNv9Kem9YPDmTqw/fuk6y97DJ18PWEbqYkcIMqh17ExyeHREcNlWgPfvoerP3jVafJfKzjErKnktNKfBps6Z0HdyxrkoXQ8AcGEXDBnOYc7l099tkRESVg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR19MB2636.namprd19.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(346002)(376002)(366004)(396003)(136003)(66946007)(5660300002)(66556008)(110136005)(4326008)(86362001)(64756008)(71200400001)(83380400001)(966005)(2906002)(52536014)(76116006)(7416002)(8676002)(8936002)(54906003)(9686003)(478600001)(186003)(66446008)(66476007)(6506007)(55016002)(786003)(33656002)(26005)(7696005)(316002)(32563001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?OEk3N3d1dWZZSXp6RTB4SS9VYytQaFp0K25rL2ppWG9oTUYyWm9UYzB1aFRx?=
 =?utf-8?B?N2VIYXI5ZFplZmtpdXlnTTJJdGd0TUMzR1Rmak8xbERGSXpiZGZMdEUya3lT?=
 =?utf-8?B?RjVtRmFldlo3bzA1aHZPZ0RpakduUTNlYTQxMGxQZ0M5Y2wzR3l5RnovSTYz?=
 =?utf-8?B?cXJpeWM2V2o0UmlWcmtLbzdUUVcrcktTMjRjblQ2Vk5ISWdxemVKTWZHeTFz?=
 =?utf-8?B?RFBQeHBRMHB3QXF3QTVYdWpsQitDT1k2MEZXSnFyRDAzazVGMFpMRVlVNEVa?=
 =?utf-8?B?RU1pRjAzeTVOZnp0WFpWOVMrZzJsaUMyRE1hM3JTSWNNUk9UaTBhd1djaWwr?=
 =?utf-8?B?Wjh3ODQ2V2ZSamJYd21HY05UMnJKb1o2djNpMW5DYStOSFZ6TjgxM2RFb3pO?=
 =?utf-8?B?blJSd1hzenhML0grTVIrbTIxL0Y5bXN6Y3VZcDJrUkNjYnJFbDcya0RyUHFn?=
 =?utf-8?B?NEoxWnB6WmxNcno4NFY5MzlnbXBITHdqWVpWQkdKNTFrMm5LVXIwNUR6UEVj?=
 =?utf-8?B?UjN3dCtFMU9GOWwvOTl4aDJPUXVXTTlidEZYWDhMRGdicXR2OVJUWFhMcm16?=
 =?utf-8?B?NkNLbitweWJkQWtTTVdIMSthUGcwTFR5ZCsvT0l3dzJNUmY0SVlGakFPVTRx?=
 =?utf-8?B?QVhzSlZjNXdQcVhYVmdwSjJOQ1V3dkR2NFVXWFRZUnZsa1FUdm4xSndBMmo1?=
 =?utf-8?B?YzhiNW9nSkFNajhqK3A4aWFkUVVYeS9JZWdKOUZITnFtRVVYWjBBMDAySDk2?=
 =?utf-8?B?OFlpSEpEczhjamg3RU9SMEpMV3N1akVURXMzZ1UyRlNBanBsWHJPQlZFMDRG?=
 =?utf-8?B?OWx2N0VPVmhUN29YNzJ4VnZlYklkOUl3Q1VvbGdEdnVQejNWTG5HbWc0dzJS?=
 =?utf-8?B?dThoZVl5R29sV1AxYU94eUFldjFwaklMYzN2V3VOVnkrQXhZd2NWQXg0MWxi?=
 =?utf-8?B?dVdmRDFuM0pJQkp6bFFFbDgzU0YrUVMwQnl5YlU4TG9pY3pjT0FUVmxTbXVK?=
 =?utf-8?B?aExiR0Y3emVkcm4zb2FaVmhIZjkxOW1VWlZ1UE9iU1ZDcFplTDJIRmhxWXpS?=
 =?utf-8?B?WUdKdWtqM0Q2WjRpY3Y1UHI0ckF4QWs5Z1VobnN0QmNUUXZBa2p3VEVMTjJs?=
 =?utf-8?B?bWVIaVRNYVhiMmZIZWYxMm9oRk5SNjlSN285czRESFNIT055TVhuRnN1VFpr?=
 =?utf-8?B?QmE3eTNlUUxtS2VLVytYLzJ5RE9ZWWVqZWFKNjZ5b3kvR29oRkRrYk5VOGw2?=
 =?utf-8?B?WU1MbTNTM3FUdUFRZWhKTzM2ZDZmS0ZNbzROU0JQT0pZSFlRNVZ0UFR1cUxm?=
 =?utf-8?Q?9WvyqkDyproIc=3D?=
MIME-Version: 1.0
X-OriginatorOrg: Dell.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR19MB2636.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 21866001-96b4-4978-8102-08d89ac69c2d
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Dec 2020 15:41:48.6905 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 945c199a-83a2-4e80-9f8c-5a91be5752dd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uoK6jRH8KdoNxqUar9rmd3QSy2kedsMLrEL9KYdfqdy0P10rlXn0bsOPgAXHbSQEUzhI5CKPL2YOB/Vu3zqx8mQwy4WQMrBAInHMrrZ4oi4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR19MB3993
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.343, 18.0.737
 definitions=2020-12-07_11:2020-12-04,
 2020-12-07 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0
 priorityscore=1501 malwarescore=0 mlxlogscore=999 lowpriorityscore=0
 bulkscore=0 suspectscore=0 phishscore=0 adultscore=0 impostorscore=0
 mlxscore=0 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2012070100
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 mlxlogscore=999
 bulkscore=0 suspectscore=0 mlxscore=0 spamscore=0 phishscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2012070100
Subject: Re: [Intel-wired-lan] [PATCH v3 0/7] Improve s0ix flows for systems
 i219LM
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
Cc: Linux PM <linux-pm@vger.kernel.org>, Netdev <netdev@vger.kernel.org>, "Yuan,
 Perry" <Perry.Yuan@dell.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "anthony.wong@canonical.com" <anthony.wong@canonical.com>, "Shen,
 Yijun" <Yijun.Shen@dell.com>, Jakub Kicinski <kuba@kernel.org>,
 David Miller <davem@davemloft.net>, Stefan Assmann <sassmann@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> First of all thank you for working on this.
> 
> I must say though that I don't like the approach taken here very
> much.
> 
> This is not so much a criticism of this series as it is a criticism
> of the earlier decision to simply disable s0ix on all devices
> with the i219-LM + and active ME.

I was not happy with that decision either as it did cause regressions
on all of the "named" Comet Lake laptops that were in the market at
the time.  The "unnamed" ones are not yet released, and I don't feel
it's fair to call it a regression on "unreleased" hardware.

> 
> AFAIK there was a perfectly acceptable patch to workaround those
> broken devices, which increased a timeout:
> https://patchwork.ozlabs.org/project/intel-wired-
> lan/patch/20200323191639.48826-1-aaron.ma@canonical.com/
> 
> That patch was nacked because it increased the resume time
> *on broken devices*.
> 
> So it seems to me that we have a simple choice here:
> 
> 1. Longer resume time on devices with an improperly configured ME
> 2. Higher power-consumption on all non-buggy devices
> 
> Your patches 4-7 try to workaround 2. but IMHO those are just
> bandaids for getting the initial priorities *very* wrong.

They were done based upon the discussion in that thread you linked and others.
If the owners of this driver feel it's possible/scalable to follow your proposal
I'm happy to resubmit a new v4 series with these sets of patches:

1) Fixup for the exception corner case referenced in this thread
2) Patch 1 from this series that fixes cable connected case
3) Increase the timeout (from your referenced link)
4) Revert the ME disallow list

> 
> Instead of penalizing non-buggy devices with a higher power-consumption,
> we should default to penalizing the buggy devices with a higher
> resume time. And if it is decided that the higher resume time is
> a worse problem then the higher power-consumption, then there
> should be a list of broken devices and s0ix can be disabled on those.

I'm perfectly happy either way, my primary goal is that Dell's notebooks and
desktops that meet the architectural and firmware guidelines for appropriate
low power consumption over s0ix are not penalized.

> 
> The current allow-list approach is simply never going to work well
> leading to too high power-consumption on countless devices.
> This is going to be an endless game of whack-a-mole and as
> such really is a bad idea.

I envisioned that it would evolve over time.  For example if by the time Dell
finished shipping new CML models it was deemed that all the CML hardware was done
properly it could instead by an allow list of Dell + Comet Point.
If all of Tiger Lake are done properly 'maybe' by the time the ML ships maybe it
could be an allow list of Dell + CML or newer.

But even if the heuristic changed - this particular configuration needs to be tested
on every single new model.  All of the notebooks that have a Tested-By clause were
checked by Dell and Dell's partners.

> 
> A deny-list for broken devices is a much better approach, esp.
> since missing devices on that list will still work fine, they
> will just have a somewhat larger resume time.

I don't have configuration deemed buggy.  Since you were commenting in that other
thread with the patch from Aaaron It sounds like you do. Can you perhaps check if
that proposal actually works?

> 
> So what needs to happen IMHO is:
> 
> 1. Merge your fix from patch 1 of this set
> 2. Merge "e1000e: bump up timeout to wait when ME un-configure ULP mode"
> 3. Drop the e1000e_check_me check.
> 
> Then we also do not need the new "s0ix-enabled" ethertool flag
> because we do not need userspace to work-around us doing the
> wrong thing by default.

If we collectively agree to keep either an allow list "or" disallow list at
all I think you need a way check whether enabling this feature works.

If we are making an assertion it will always work properly all the time, I agree
that there is no need for an ethtool flag.

> 
> Note a while ago I had access to one of the devices having suspend/resume
> issues caused by the S0ix support (a Lenovo Thinkpad X1 Carbon gen 7)
> and I can confirm that the "e1000e: bump up timeout to wait when ME
> un-configure ULP mode" patch fixes the suspend/resume problem without
> any noticeable negative side-effects.
> 

Can you or someone else with this model please check with a current kernel
w/ reverting ME check and adding the patch from Vitaly (included as patch 1
in my series)?

> Regards,
> 
> Hans
> 
> 
> 
> 
> 
> 
> 
> 
> 
> >
> > Changes from v2 to v3:
> >  - Correct some grammar and spelling issues caught by Bjorn H.
> >    * s/s0ix/S0ix/ in all commit messages
> >    * Fix a typo in commit message
> >    * Fix capitalization of proper nouns
> >  - Add more pre-release systems that pass
> >  - Re-order the series to add systems only at the end of the series
> >  - Add Fixes tag to a patch in series.
> >
> > Changes from v1 to v2:
> >  - Directly incorporate Vitaly's dependency patch in the series
> >  - Split out s0ix code into it's own file
> >  - Adjust from DMI matching to PCI subsystem vendor ID/device matching
> >  - Remove module parameter and sysfs, use ethtool flag instead.
> >  - Export s0ix flag to ethtool private flags
> >  - Include more people and lists directly in this submission chain.
> >
> > Mario Limonciello (6):
> >   e1000e: Move all S0ix related code into its own source file
> >   e1000e: Export S0ix flags to ethtool
> >   e1000e: Add Dell's Comet Lake systems into S0ix heuristics
> >   e1000e: Add more Dell CML systems into S0ix heuristics
> >   e1000e: Add Dell TGL desktop systems into S0ix heuristics
> >   e1000e: Add another Dell TGL notebook system into S0ix heuristics
> >
> > Vitaly Lifshits (1):
> >   e1000e: fix S0ix flow to allow S0i3.2 subset entry
> >
> >  drivers/net/ethernet/intel/e1000e/Makefile  |   2 +-
> >  drivers/net/ethernet/intel/e1000e/e1000.h   |   4 +
> >  drivers/net/ethernet/intel/e1000e/ethtool.c |  40 +++
> >  drivers/net/ethernet/intel/e1000e/netdev.c  | 272 +----------------
> >  drivers/net/ethernet/intel/e1000e/s0ix.c    | 311 ++++++++++++++++++++
> >  5 files changed, 361 insertions(+), 268 deletions(-)
> >  create mode 100644 drivers/net/ethernet/intel/e1000e/s0ix.c
> >
> > --
> > 2.25.1
> >
> >

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
