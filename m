Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F1C823E2333
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Aug 2021 08:22:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3BE6F404C1;
	Fri,  6 Aug 2021 06:22:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZvaWjD_gFjTb; Fri,  6 Aug 2021 06:22:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AA0F740472;
	Fri,  6 Aug 2021 06:22:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8F5031BF296
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 06:22:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 757A4402D8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 06:22:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KJeHjkQqzsQE for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Aug 2021 06:21:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7447E400C9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 06:21:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10067"; a="299904920"
X-IronPort-AV: E=Sophos;i="5.84,299,1620716400"; d="scan'208";a="299904920"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2021 23:21:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,299,1620716400"; d="scan'208";a="442806768"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 05 Aug 2021 23:21:58 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 5 Aug 2021 23:21:57 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Thu, 5 Aug 2021 23:21:57 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.107)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Thu, 5 Aug 2021 23:21:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fzdG8Y44LLdlatJW4g0yor4oZG09t24ZXN25aw6VY9pX2J6KLHOwW0uSlZ4Hx1OuqKEA9civPIcDjGvsF2EqAxhPQBr4tGdLss7Hqf0jogFjOJLOrFbcRUB/gXhc4vjkUqip193NCes98YjSFPaJZAzbB2lcoB8g4NFmcE2mq9tMOgZUgUq7Xcj+e/vH353rJHHmEGPpuRDaEApsvAeGqeanj35KGiD0SpG86B7LQKEvDjuuj+fhRv5OexvHyOINoM00PKWFZCDXR/kzbYnBHCPE0VnltHWn17yM6bjWGBHOuzTTCKp6WvJa/uQzxGQekGnWMipWJgSzjrOqIOT2bA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sLtHqoBMvTJ1YoPt0VkdDr+n6ixiZjq9zRPXTxERn5s=;
 b=KAzEXlnFXpbX/U/yOEgOWtSEqzbRvMg3tu2gaYuqbw3Kw9wN4TE86Q/IfLTTT8uR/WdDa0x3F2ZQFmHgApIfUXFUR5UwJV/qO1JDcGfPp08VxvQWaCLcXMAlBrw/PW5zo+pjGj6r4nsF0VHIhVRM+IsZ1ogxDXvSVZlJCOq0he00+SOkl4iVOqiM9JjLmILJOWirLiANdcG1iCIhByINgvyNnsxpa2NFrck5cO7aq3NWkeRMrDl/2qWP/VYl5SqFcZDdDtJpcuOjoJCyhOWrC2Y2pgirisDAVUHYY0Fypn49I1NMucE+Vc9Qo4TZPGlQh4MhZFn0tGsN43KsKG4MJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sLtHqoBMvTJ1YoPt0VkdDr+n6ixiZjq9zRPXTxERn5s=;
 b=tjK816moFH7nfp6tFAx+w7iK/sQCcifpGyrd8q+qQbUaMsteYKwx1s7A7uyfjCY8dA3PfcOzrOPSzO3XsNKQXhBD6AOa7CL7tETefM4Aetw7AlqBPVmUe/cn0iUmGGl4C7O/1mXH3U8fwfwwWfA2/1RrZv80tNDYoOhWp+afpwI=
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BYAPR11MB3704.namprd11.prod.outlook.com (2603:10b6:a03:f9::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.17; Fri, 6 Aug
 2021 06:21:18 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::4d0f:77de:b513:595d]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::4d0f:77de:b513:595d%5]) with mapi id 15.20.4394.017; Fri, 6 Aug 2021
 06:21:18 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Venkataramanan, Anirudh" <anirudh.venkataramanan@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: Prevent probing virtual
 functions
Thread-Index: AQHXg+oa6EI/sf3DY0WbctzcsJP5YqtmDk4w
Date: Fri, 6 Aug 2021 06:21:18 +0000
Message-ID: <BYAPR11MB3367B5404EC9C3C9708E7E93FCF39@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20210728193910.644656-1-anirudh.venkataramanan@intel.com>
In-Reply-To: <20210728193910.644656-1-anirudh.venkataramanan@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e6246f05-bcef-4d46-256c-08d958a2670a
x-ms-traffictypediagnostic: BYAPR11MB3704:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB37040E014A315625FF487845FCF39@BYAPR11MB3704.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FxisnkELlaHtadAQtz7QmMxgs380gBYTazQ3My3EykGOsL6nTaliQjVC+nbSrqsMDxLx5bcFaPoCY4YiiTHbhkfQL9yqa3J8uyr+exglYHJw67fRGLrlwQ8mEjAtvJ5J8zajRIZbvjfevn5mPnzk5upSd5Gm1gMplT86bdbAZtIslngVKQ4adgey/PQYrcFCN/N6qrm4RSUkZpxXEJS0OoVj+mIrJJAG+1yUHbNGLTiIBDcjsf67FiN+jiutXsAk32w0sxd6FfSvMxvrYiIrMTzPZOikZcswDsb9jjB0tI5tohDIBK15SvTwMbo1mcB+edOtznmZsbuNn+j7KfJyfJbxZnEdfAKTq3PVN1+EWJm3WVv1qPIDFb2sS8YiK6VvLI9nSLYoQQ+yv8NieLH0kEOyXrC0MhBki6AOJ/3ovcjzo9TQwqWZ4PnTQnhwlFHdv0A3miOqUNKmfssDO8hS4Pp1RUgWm78sDzNALC37NbtkvJZgWSmEfDuZ76UbU35zGxQ41OvBXNvy6ASPOpLe182ts6wPbVH2IJsgPRK2aTCzZIAY35eIDPlAzhSyqj3sYR6+QZp9nKVTEXkixe+00WatPCuHokYdNHMaUYaUuJx430J+h/U++JZf3xnGTY3pxL32xD+zON50T/ZkWPz3yHz377gVVMKo958gSBTb5MwBMokncSU8d7SFVLko0hHRY8It8hxYFFU/y0UH0wgBWg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(396003)(136003)(39860400002)(376002)(366004)(6506007)(38100700002)(122000001)(53546011)(26005)(478600001)(7696005)(186003)(110136005)(8936002)(52536014)(76116006)(66556008)(64756008)(83380400001)(2906002)(316002)(66946007)(66476007)(66446008)(71200400001)(38070700005)(9686003)(86362001)(5660300002)(8676002)(33656002)(55016002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?OXeK+KgPJrPDFcCvYhrzvxvTfHc50W7/xbqT1QvC2g8+CrGZwx6QFn2oAq55?=
 =?us-ascii?Q?lUwh/GWb+DKd52+AOVdAUNegjG8JnSYGqX1RWxWq55BGDBp6znD5f7vvtmga?=
 =?us-ascii?Q?mcFE9pXfQj2GmNHvEslP5C1oxcspIm6zJmfIp/2e6RoMZCom8pb4gtLWAW/e?=
 =?us-ascii?Q?lwrzK7ir1pHifxGd/LtAbOr6al4ZIs91JRWlKBrvWe8b15U7G4DE72nVFVZZ?=
 =?us-ascii?Q?/cXRHN80Ouf+P+y1/sxpSfU01kFYN1/P8ETovjnKJRMjcWdU9J6Y0YuT44V1?=
 =?us-ascii?Q?RPiz1jD/KjACOsmDUHiPLmtk3bLeQf+dBGSmvJrZaItlHjv8lIwHh+WPjqsf?=
 =?us-ascii?Q?lgV7PGiMheeQrEXUJsy9CLYlqRfqzYIkIJMmuCsptQxgPfVQNw0XXFBsWJEk?=
 =?us-ascii?Q?IGhRjoWgeBDpi/xiv+Qk4CTRfHyy97hCxTbUZTy8M1IPFvrpiF0c/WxsLx0q?=
 =?us-ascii?Q?eiEtEnZCpCXKF6/p13kwxEGXdssIoy/NA1NjU2qojC1byX5LIfQDMrmggLBa?=
 =?us-ascii?Q?p9n6Z1lMv6iOnfU7LhrZLixajbPdc+tO0ID13+hH/ljjfwF7iBNP1Ua5EpUB?=
 =?us-ascii?Q?/3jF8qWXOOghEzi8uER3/SK6s0OcHrjh6o7NvB7jQT39258nJZNGEiJnPmgV?=
 =?us-ascii?Q?SfXDUdySKgo1gUmg1B0px7mMpIR2QW877qu2T1Ev0yJgOqwNwazAGqTzlpUM?=
 =?us-ascii?Q?3lK7vFDJqqEzB56qL35MJ4hFGJXlYpokuuYavqM1A/nBfAxHYKMYFr3L1zk7?=
 =?us-ascii?Q?sIGRchhs37Cy6kYlLyJmkjNpjuyZBs3ULze3F2RPG2WvWvjsErY6fbX4BEoP?=
 =?us-ascii?Q?DfEccWouKCm+XA6ennSR1IsNGrXXz5VUb4K8udwdDAx6zDBs9V8ZmvWxprtP?=
 =?us-ascii?Q?ZvkdY5tjPWcFFppWAYFaFaYFYtmiXbtb2ZrRTiXNJBjCq3ZcJdMY4xaNpr+e?=
 =?us-ascii?Q?LSjtw/XIhe7s+U9k3VlrNJfCtuVITK8lVLXTFGejo0q69AX4Y2BFw7y40juI?=
 =?us-ascii?Q?NemEKqgFqgZi+fpsrp3/2KhyjTG60ryZjVX7njW6s1r3d47dF5C1ga/rFyUy?=
 =?us-ascii?Q?mpxFCE0neJCzuxkER8MiUVXLdjW2nUCx8rNU6T/99qfc74VfeL0m3Anb9RgM?=
 =?us-ascii?Q?q1RQA0c2BWwjCQryFf1GxQBr6FdplCA1F/KPAM4Vh1LuwPOeCE6LjRxYOjV/?=
 =?us-ascii?Q?KyZvjMhjsM2u+G9sz6Ac9v8IchfPiRw+T4XOh0CcKE4yO09S2zl/qYBcf5Gv?=
 =?us-ascii?Q?5TIazf4m96BAbT0RXsAfSOm/FXXSMmh45+rZPCTp3q/3UTiIDd9xKs1FeJ1c?=
 =?us-ascii?Q?MdcPbyCVLYPSChayQV0Uyz98?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e6246f05-bcef-4d46-256c-08d958a2670a
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2021 06:21:18.5170 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 428Df1A/5sIEcxneGwqRMP/yWEW8Gwbacq4QqzpDx5TQJYjdcUbeQbx36kNCLb8ubcwqvi0LfimYDngGh2kkWg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3704
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Prevent probing virtual
 functions
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
> Anirudh Venkataramanan
> Sent: Thursday, July 29, 2021 1:09 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net] ice: Prevent probing virtual functions
> 
> The userspace utility "driverctl" can be used to change/override the system's
> default driver choices. This is useful in some situations (buggy driver, old
> driver missing a device ID, trying a workaround,
> etc.) where the user needs to load a different driver.
> 
> However, this is also prone to user error, where a driver is mapped to a
> device it's not designed to drive. For example, if the ice driver is mapped to
> driver iavf devices, the ice driver crashes.
> 
> Add a check to return an error if the ice driver is being used to probe a virtual
> function.
> 
> Fixes: 837f08fdecbe ("ice: Add basic driver framework for Intel(R) E800
> Series")
> Signed-off-by: Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
