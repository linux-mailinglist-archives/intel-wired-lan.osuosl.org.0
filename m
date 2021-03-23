Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D806D346D69
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Mar 2021 23:41:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 87214403F2;
	Tue, 23 Mar 2021 22:41:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hBj_0AzmcWy6; Tue, 23 Mar 2021 22:41:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 86A2E403EA;
	Tue, 23 Mar 2021 22:41:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E93FD1BF2BE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Mar 2021 22:41:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E1CE0608A4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Mar 2021 22:41:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JhW_wxVU1vJy for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Mar 2021 22:41:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 19CC96089F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Mar 2021 22:41:17 +0000 (UTC)
IronPort-SDR: N+uSoy2bZ+u1CNnHSHx9DrvvD4k8Vq6b7uiCWS17XFMgdejboZwbd8otZeB6isBopuTGIiFNCK
 +M6bz/3sNDgQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9932"; a="251937692"
X-IronPort-AV: E=Sophos;i="5.81,272,1610438400"; d="scan'208";a="251937692"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2021 15:41:16 -0700
IronPort-SDR: 6TkU0g1lQW09gWVKGOnYw8WdpPdXZZnS89jNTeFLJnR6hAe1LSxOkwOjnRHshTf7Y3OCLgqlYM
 HprW8sPtEkAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,272,1610438400"; d="scan'208";a="604461627"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga006.fm.intel.com with ESMTP; 23 Mar 2021 15:41:16 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 23 Mar 2021 15:41:16 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Tue, 23 Mar 2021 15:41:16 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.176)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Tue, 23 Mar 2021 15:41:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i0PQY4/c7qZzGn5MUkys0bZELCiQxQX0kYey3eQJxZBOEiuThKHr251kvysDymK2L53yBcXy/im+4u+nBjmPL1HaezCd5nW7Y2fJcj3wWoZpnoFufGdsm3ER9H/N5HCmd+LE0wLeMA5udoLuqb96p54JyAgRLd1N2lX5Jz3ZeOjPDEX/983KVbX5AYBgXmzRKnX3884Oz8gmJzZgXurKmeru6YsACF6zVpQFKf7JpHSvl087I9KtlbIn7kMsH0qv/GtXqxA2KN9iN3A1I6tDzHL8xZiNf6pz34NeTLYq2um3bjScno0cnKLayA0yzW1yW7clNnKkx5rULluwKBU6Mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=837UpIeH2Rpg622a7h87nUHp0kCUmB8/9KMf7bUq2lY=;
 b=UOkDaM3i5s6cT4SI8FegabCb9Ef01UfeAXk+rRJrgDACH5FmWVYblXAUHIgShOPpKhG8dFPJ457EDU5UoMIiGXRGDCWDFDB0mVh+e+s3998lC1qW/t4oT2XrgzY9pc2BnawnC8vgK+WLmyx656db5T1/bLvyS7nM/rYmxhcCTMnrq00993vxSZGk+2wjVh+MXWvCwSKIANDqOLNxclcUsPVQCEDWV3STg7kBdQra7HMOTkRWJL0iXefTIzX+RHWdUeBCFow1yjRiEPBBEcIK7v53hSMwpYg/APudlvcIx8+cqN4IsN891mSeCXGKYbSvqu6kBIO5Yfzcyo50+7VAhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=837UpIeH2Rpg622a7h87nUHp0kCUmB8/9KMf7bUq2lY=;
 b=WTTXUoF63YTSXaVd9durwXilNaTTgIxp6qozSTZ+srzV1V1fy9IxQ5VmvNg6pNO8VEBfCnWi7XsCojfHUPsqPYDw0saW/PpyfbRQImEdEMQ4jHBPiD2Xyfu9y6ej6AjRgyvjpotWzqCRzRzi8A1KUKAkemGptac8CVWvVgrrsCg=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MWHPR11MB1359.namprd11.prod.outlook.com (2603:10b6:300:20::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3955.23; Tue, 23 Mar
 2021 22:41:14 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366%3]) with mapi id 15.20.3977.024; Tue, 23 Mar 2021
 22:41:14 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net 06/13] ice: Recognize 860 as iSCSI
 port in CEE mode
Thread-Index: AQHXDIaQvWPzKFKlHE25FMg+5yLvP6qSUg3Q
Date: Tue, 23 Mar 2021 22:41:14 +0000
Message-ID: <CO1PR11MB51050195D854CDF881E4CBB4FA649@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210226211932.46683-1-anthony.l.nguyen@intel.com>
 <20210226211932.46683-6-anthony.l.nguyen@intel.com>
In-Reply-To: <20210226211932.46683-6-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.213]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 06f38ab2-59df-40a7-354d-08d8ee4cc407
x-ms-traffictypediagnostic: MWHPR11MB1359:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB13590496D40B6F2F93ECDC5DFA649@MWHPR11MB1359.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XbzZqoCPoSQVzciQ5yaXXXYLVRs01vcK4tkz9qbs+uWTIE8GqFPA59W2oXmOddvYrEMwBlH0EI/7ZL09kxlNHbwOo5R8WzGiUc0eF6VwQDe/lQk0c9nun8SDrt9RIjm/x9IJzhz4bRQNJv67gDU4dvI5iFd+YyEmcx4yOCj4QD4AyKc3Jbk7dmZkO1sLhsoK/OthmvoH28snuSaCQso9noGisXosRQMdLXxX639BTPMsWyJfjQS0NISNo51R66dNcIv9CuhOwd7UjXde0CVEGckKlIE+kMmWtqUlOpy8vOTyViG4a6GdSudJlDy87GxNSmvqioirawRn66V5e/fIHL3sJpL0y1BtdAoplnhxkwzOOxboUcjzKXm7fs4TnMn+5pvPrs/igVc6rqFnahm7iF9ettdyhAbTp4TZM7HzzsQ4fcL7w70PZCBMoSZ4NMpCRnYyTf1wKdEiqIJCi+tM2xK9RaPKKoQ/IFp/OszSI9lqkawZAyACLXVry7nZmU81WcXKdPoSti8EZ4tAgm5qK2/Ujf5iUEpHyDYlQaRzW2GeKOokw7v7IhHAN3IKGovDa4eF1XGv7Qup2sB6it5rlfQpCDMoIDheYowL4U5gvKViuc+MDm3sz99iDa89jGSE8bSiEVRDHrRzPtygnIDz/BmA73mdYV0XI7WemqfnQ6g=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(39860400002)(396003)(366004)(136003)(376002)(52536014)(83380400001)(2906002)(478600001)(26005)(66476007)(110136005)(64756008)(66946007)(66556008)(5660300002)(316002)(76116006)(66446008)(86362001)(33656002)(55016002)(9686003)(71200400001)(8936002)(186003)(7696005)(6506007)(8676002)(38100700001)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?MV0g2PyNg/jOJDDeurh52MbWGbDeCBlwR1U721z2rUsbI9ZqV0y0aWgoyo6I?=
 =?us-ascii?Q?+DmbmdbuOcyQ9AGUnyKDo7RFEjaxNqy4CNHNh8OkKfB74xtSQFkXTv9hwXgD?=
 =?us-ascii?Q?rQms4wMSNTYCO5nxnI6hpMikJkoxpUW2K2xqe3TMW2Xen9hFwj2YYx1PAuY6?=
 =?us-ascii?Q?4CHSxqZKL29vbpSCH0kumq8rknlEXsb2v1oF067oJJHdXYtHwOaXCXTLbb52?=
 =?us-ascii?Q?DmNaSLruKRveTP2ifnUqSWyTQziNI4nch7kbn0jPM8SEkgo3QAuAGREreFI5?=
 =?us-ascii?Q?kSSTbD/slNzkQiTyQ5hrC2NqN/23KprtttUYSEerEQj5iCj4d7hjC8p3i5dE?=
 =?us-ascii?Q?3eBdc0Ardng7DkoRCSTJpbqaOP6RlOpID73dV1q4FXGOjoDco0IswIwI8ZS0?=
 =?us-ascii?Q?MalT/8I5h7AVBL996MdSUK6JzdH/06RRhnwnUz/yZ+Fi3XrjtEK3yIyZB0xC?=
 =?us-ascii?Q?5J3arwS3Wn1eBedGlIhsdBU6JriSx3EWsRRvAuKhWyehPXcwKUQIE/Xzqyu1?=
 =?us-ascii?Q?Eff7/qOhJznw6bwAb9jSuF6qoJDgnJJCK3VtrQg2zRSe0v/ZLGQjCzKLz1Re?=
 =?us-ascii?Q?W6SdafBzgY3hekkdl3dtutstOf2knvemhlhz8fGkzaOIUsGSuKUEESadv65e?=
 =?us-ascii?Q?aehdlwWP72Yjq7pHgKDud2gmDtn2D/NirrXihD6gM8EpvUg9SW5WLEO9BYyV?=
 =?us-ascii?Q?q+98Y4ov/QBZlLH6yT7N8y9Z5G7jSThZjaVhG23wDqzJfJaTdHJXJhCuOLGC?=
 =?us-ascii?Q?+dHMcjmfqX2PSe2DLsIGzTQ6v/1SthX3gj6UW0ro7xxjvqvcwrtGwERe2sTs?=
 =?us-ascii?Q?khZgR58WP8K806mmwV495txrhYITBtZuavGWGjl731if5pxRk3reNTWtSu5h?=
 =?us-ascii?Q?VTmeY81RrHIAcpWYfSl3qgBjqC3H5rfZxUQCL5y/kqkykRU4GC73m+3F+BrZ?=
 =?us-ascii?Q?e1tiFD2+D+/Prf7PMHZJ3WgCIr8MSPR+/KrIAF+bwkjjOpUmcWYOZfA7FjDE?=
 =?us-ascii?Q?XZMfBXvtCYEXnC/ZrMCJCfzbXYIhWR0yhHpPTjhFEidRnhPjPp/x/l7FgiMF?=
 =?us-ascii?Q?DcP9CNNgbTVk2/g+pQ2mszcLuW9WMLACeXOp7iS7sjxUJTTRn6WPedSxxBum?=
 =?us-ascii?Q?71OZs5W2vrthe2ln+/xcsptOuKmDb05d8f9RTQIwZSZlwPolfo7e04/BQxk5?=
 =?us-ascii?Q?+hFYOCoAJ0FExlDAw5dckLBo5WwzCvMSeUiDsK0jl13hP3lEes/aahKcQAWl?=
 =?us-ascii?Q?Y0/KIsKt4j/lG6KJoRq272V3BIf614jPoBcSkeh/boWyiE0D/iCJ9c8gH0tt?=
 =?us-ascii?Q?T9xS4LtAH+4ybh/6BfJB4okn?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 06f38ab2-59df-40a7-354d-08d8ee4cc407
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Mar 2021 22:41:14.5880 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TidftVRxuCgseDQ9Cbk0zUuX0zz4t8ERqfz+7FtHOBxrdExDD4k8rvOd3fwM/OvVi7obTc2V49pOlrrBOpvmk3ULsui3CGhaQbSzRDIbzsg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1359
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net 06/13] ice: Recognize 860 as iSCSI
 port in CEE mode
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

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Tony Nguyen
> Sent: Friday, February 26, 2021 1:19 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net 06/13] ice: Recognize 860 as iSCSI port
> in CEE mode
> 
> From: Chinh T Cao <chinh.t.cao@intel.com>
> 
> iSCSI can use both TCP ports 860 and 3260. However, in our current
> implementation, the ice_aqc_opc_get_cee_dcb_cfg (0x0A07) AQ command
> doesn't provide a way to communicate the protocol port number to the AQ's
> caller. Thus, we assume that 3260 is the iSCSI port number at the AQ's caller
> layer.
> 
> Rely on the dcbx-willing mode, desired QoS and remote QoS configuration to
> determine which port number that iSCSI will use.
> 
> Fixes: 0ebd3ff13cca ("ice: Add code for DCB initialization part 2/4")
> Signed-off-by: Chinh T Cao <chinh.t.cao@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_dcb.c  | 38 +++++++++++++++++------
> drivers/net/ethernet/intel/ice/ice_type.h |  1 +
>  2 files changed, 30 insertions(+), 9 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> A Contingent Worker at Intel


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
