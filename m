Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E2563B4A9E
	for <lists+intel-wired-lan@lfdr.de>; Sat, 26 Jun 2021 00:38:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B790460603;
	Fri, 25 Jun 2021 22:38:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OkK8-J8p_OLf; Fri, 25 Jun 2021 22:38:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C1F84605E0;
	Fri, 25 Jun 2021 22:38:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D9FD41C11A9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jun 2021 22:38:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C8B58605E0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jun 2021 22:38:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YkMto4WuhEhk for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Jun 2021 22:38:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C4CB8605DD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jun 2021 22:38:45 +0000 (UTC)
IronPort-SDR: hPiS9NIFiWCwyhFW4vB56uomQXlVWrrUAUj5jSG0FyMw4pBEjsoIFvgOpzJTRAp7jQb85bcKrU
 F0vcGh+b2ksg==
X-IronPort-AV: E=McAfee;i="6200,9189,10026"; a="271607620"
X-IronPort-AV: E=Sophos;i="5.83,300,1616482800"; d="scan'208";a="271607620"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2021 15:38:43 -0700
IronPort-SDR: 9VtrhlGfAK/fZuP2vpphUEychnDzFf1gjiW7T+mpCDojpLdMEqZmJVZa6eVaQh5OvMG0er07sK
 71BvSUX53x/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,300,1616482800"; d="scan'208";a="475007673"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga004.fm.intel.com with ESMTP; 25 Jun 2021 15:38:43 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 25 Jun 2021 15:38:42 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Fri, 25 Jun 2021 15:38:42 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Fri, 25 Jun 2021 15:38:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vj8yJ9e3T7R6vB6cuKIUbDS4u8NdV1rt9QZNIKNvqaOBzyd3NE1E1OMAyjJCv0bh8OdNVOpcPkQBe7KfqWE0m04yDbL9pIreo9eZVQj7g8BHXsB4fpxvEwNxHXF4GFk0sTBboTDx4oozTdgS0fxXCSM0ZXivI7pSQvhSnO+2aWu35x+SbCwG0WwR73tIvdaWHgkDFWoGs7Qrl3AlPUYayBgkWJGGkr+KePFBo6FKjEKhbT2i1le+6K8Ql1FlWwWqOqGw4QXvKxIFqNC0t4B61eW2HWwFocX0J8jWWMwq02olijVLmTa9k8FPbj9LY+85kLv2rCgojrLzkbVcoHikyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U8nVpGzsuJiVZggNk6ws9B89MTK+6dx4VpSvGNN4U3w=;
 b=btYY4Aj30LxAU7z5LwL+HeKoyVKZppGy0cRacsyWKe4NyGRlwqfJmqvgueuttOLip1RWNTQjabcMTzN4dVxn3wLhj8ysGIauX5hThGBDmv3UWJh7B6ws1yeCPyilI8/+nyIONeCAUtxKgPin3Sqq7h1ndXVCz+LXCu/e6u5D08g+nAYY6c221PEWvwanPF/2KWq+xCeWFPYLQkSnefk4i276oPjudZdI42m+Cu5dv9Osy/JN4bbO5dW58n6jsS02A14mrHcszGZAusiGl3AwcHykfznoohv35LVxFRGl6YjrVt6n0XMrla6Y8fKGrwB0ymyoEzf4I73/KrOwe68CSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U8nVpGzsuJiVZggNk6ws9B89MTK+6dx4VpSvGNN4U3w=;
 b=li9TZi/umqnmEnmcq/VHXIysF9O4EofxIe8qPfOHF27DL475lrOJxNbyE5buTfNNnsxNhIcNP2vdVOQ2L9R9yQoQfKYvEDQv9WnLbhNR1BOJnhzkTZcaI/pcnX2jPHv2afDr5LDg6PWk95HjvP6CVhu6eiY4NI9LTy7mqQBZgPQ=
Received: from SJ0PR11MB5662.namprd11.prod.outlook.com (2603:10b6:a03:3af::7)
 by SJ0PR11MB5584.namprd11.prod.outlook.com (2603:10b6:a03:3ba::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.20; Fri, 25 Jun
 2021 22:38:42 +0000
Received: from SJ0PR11MB5662.namprd11.prod.outlook.com
 ([fe80::58ac:cdd:41f6:93c2]) by SJ0PR11MB5662.namprd11.prod.outlook.com
 ([fe80::58ac:cdd:41f6:93c2%7]) with mapi id 15.20.4264.023; Fri, 25 Jun 2021
 22:38:42 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] igb: Fix position of assignment
 to *ring
Thread-Index: AQHXXcRoaAsXrLymmk2K5i7h0i6Blaslahfg
Date: Fri, 25 Jun 2021 22:38:42 +0000
Message-ID: <SJ0PR11MB5662B37094977888FBC3202DFA069@SJ0PR11MB5662.namprd11.prod.outlook.com>
References: <20210611224217.94872-1-jedrzej.jagielski@intel.com>
In-Reply-To: <20210611224217.94872-1-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [71.236.132.75]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5bf73985-5655-43c8-676e-08d93829fbfc
x-ms-traffictypediagnostic: SJ0PR11MB5584:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SJ0PR11MB5584BAA0C6AFC9705E60F35DFA069@SJ0PR11MB5584.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2582;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2QKa7R8tzobveUR/eoQdEUs3/ABtJFWVM7laxQx3iVwJnsllD2SuAH2IZH5y0v14jI8da/9MjBVFEQjSteuaja0umI8BPzSkkH5p+lWv2kcFcwBB9TznlMqklYvNEnie2bqdPnKYgbUA3qZEVusu4LuaCEV8QjLmeCTWotaucYewkk3uRRU2xnRAyY+qBvhGCa1VerdRJyDTBU41oAocsgjwS8BdblvGQ2Gb3tu5K1GvdOzu+tBIb8uLnWhtCHxwRBpVMfZvp6A8al14mxJ9LIPF11XBUr7XC1XaPjT0uEVRytmjM57H3sGbL790k2tbblEAVl8w6I9/csHf/JK4sXUPwJxKpSK9noSQPgkr8J/OK4do55CQwuUc3TcJTw8+7eANWrHQT+huGlIucGd+CwHrX0/fj3QZgfYVXk04d5uUv8a5w6yZ30KlKXvMiDu1z1ss6u62eAIwlgNjTeCrOanbbw7oDoxQyzUYF1GIDT2YO8s2MGUgNUwKDp/ViQ7ijVhOAjZX+ZgcvGbc+PRJ0rlQVAZSDLmTDRA/CGvXLBewHvu2z0HLP+/EhVflsXuxIqhSY7GtSnfei0+VKdkJGtNB1FdZ2j1GwggqB0Dixfg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5662.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(366004)(346002)(396003)(39860400002)(376002)(7696005)(4744005)(6506007)(53546011)(8936002)(38100700002)(86362001)(122000001)(66556008)(52536014)(55016002)(66446008)(8676002)(9686003)(76116006)(66476007)(186003)(64756008)(478600001)(66946007)(5660300002)(26005)(107886003)(83380400001)(316002)(71200400001)(2906002)(4326008)(110136005)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?m/+NR5BX8M+130ZqN0Rrv3r81t3vxIfpwymOiFfu9sx/vKeKrGv5Js2mS8?=
 =?iso-8859-2?Q?2Zg5vwamZVgc+GErpV0hfeho6D0bnIzTpe6yuIGGdEh89TXK3QHBpJNwm5?=
 =?iso-8859-2?Q?0L/SEjTBn/j/bVeFTuJ2inTukSI29xQhoVm+n+BlErZniWSdQu1Ke/l6Eh?=
 =?iso-8859-2?Q?fLT8P9ORDsMa86k3C37Qk2XQpeeH4FEMsQctgNg8GVI7SWmflNWzUwcBH9?=
 =?iso-8859-2?Q?lyCZusNxj5Bb/ta1GBcvXzkuvB/X6xCUCkvrgNOEXgvDL0OX5NCOOI6q2b?=
 =?iso-8859-2?Q?ORKV2Mghic3KqmWofZpLAw/MzB2WDT2OOD5cvJsjUga7bAM1NpZWicLFyV?=
 =?iso-8859-2?Q?XDl0S+rT04VlHkpG3PK4RgcTB+96ZpqWP4Y3Y4q+OL5lK5mXgaSb5sb60T?=
 =?iso-8859-2?Q?QrwnwmAelxALmC6oeRMQe5cdrf/8cE2wAi40tHk2wlpi0DkmSAR7TE2ZwB?=
 =?iso-8859-2?Q?0V1zjiPTjZ5+SBEKay90TfQ/2APJHcPdsxa9tKHkwctgrkdA/Js2lcnZNw?=
 =?iso-8859-2?Q?DxX+IWUHj21equhA34duw6KVRLfD6vkwqkJxHW+4/nzETqrANwpCBVsrHh?=
 =?iso-8859-2?Q?K6Yl+t1xVZeozCgbol0XJd6qB+Vrle2HJY5DYwy8sG2FofdYjqDdolFgJV?=
 =?iso-8859-2?Q?NeGF6ax5BmA30Tb/w05Tj6pkxfA/2OKJdCeGysVXokrzHXMZluQi/kPhgv?=
 =?iso-8859-2?Q?DCQ+RitLN9mwIPh/wsJfp6Zx4cTrPCgPasRTVx5ER4gqI9pE1mTmwn18lj?=
 =?iso-8859-2?Q?i5jSFM6xqZr6Y96m5A5cYa2Sdc6yGFoB4rYEJyp80zMJ5DUGj+1TRSy2UD?=
 =?iso-8859-2?Q?pOPvgU0CjrIgLVWqPS0AXah4AOFooK+062FqPb0/ZzSYP3vSLt16YoNhIC?=
 =?iso-8859-2?Q?jhFuVfUD8/X7eDiUxmk2EMCg2MdOJBp6FX4mk+/Z6+eJ5CLmnoUG967j7a?=
 =?iso-8859-2?Q?1AHkbk0v8ttTPuiu/1xVYBpjIZisZINqLhBbKsKJJQlr7prPBPaCMXRzd+?=
 =?iso-8859-2?Q?CeL6AQ95cePJ+fwkCg4ZyKdNT/wEhGvgnAjQBwpOsPFx7iU8ApamADpznJ?=
 =?iso-8859-2?Q?R5bhXTJDYN0hCfc+GdAxXtsjdMYdba6Dwh7yBltUjDrF0yDI7iGL182PMg?=
 =?iso-8859-2?Q?w3sBQMRdpjEDWQnNHXh23Fd1RGtrscmzpsSCsAJQ9csiUYT0ZJsOpMeRDD?=
 =?iso-8859-2?Q?cDx8KWA6xtcq7QspDax3VHe9GROy/ndGWcRtmz+fnLSQdYB5yXwv7qS+L9?=
 =?iso-8859-2?Q?0asCvthPb9CM3n3CY868p/Vq0RHfrGMYqRMsRnEM/tkP6UPLsx3IkyFNGf?=
 =?iso-8859-2?Q?sDDtmIh4D2mVjNSIARY8+XlmJBSifnJQ/BMBGDE4oBwJwHlfvIxsdDtx/O?=
 =?iso-8859-2?Q?zQUPNPYoRA?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5662.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5bf73985-5655-43c8-676e-08d93829fbfc
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jun 2021 22:38:42.1356 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: L8YZsZg1gZn27Veuar9Sn57QQNr8ZkkAzS3ZccVGLliPE2xPRP72BSceNdOriiBmrorwt5wGO/5Fm64B11aSKP8eUqKuKmrc8JEFguptMvA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5584
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] igb: Fix position of
 assignment to *ring
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
Cc: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jedrzej Jagielski
> Sent: Friday, June 11, 2021 3:42 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Jagielski, Jedrzej <jedrzej.jagielski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] igb: Fix position of assignment to
> *ring
> 
> Assignment to *ring should be done after correctness check of the argument
> queue.
> 
> Fixes: 91db364236c8 ("igb: Refactor igb_configure_cbs()")
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>  drivers/net/ethernet/intel/igb/igb_main.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> (A Contingent Worker at Intel)


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
