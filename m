Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C41D147CC0A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Dec 2021 05:20:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6432A4154B;
	Wed, 22 Dec 2021 04:20:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EATOET-5wE0Q; Wed, 22 Dec 2021 04:20:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 46E4D4152D;
	Wed, 22 Dec 2021 04:20:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4D8A61BF86C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Dec 2021 04:20:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 483D641547
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Dec 2021 04:20:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qYldqtOFfmOn for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Dec 2021 04:20:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8C72F4152D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Dec 2021 04:20:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640146809; x=1671682809;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PwgxCIxLniV/IXAcweIJEpqmLG6U9eJADt6VnqSxaU8=;
 b=Ad+kzkcpdFWWpFmv0kT2CJzwxuIXT7G+HzP6tBFqxxLMtPnhyzdAlXKa
 RfSN/MxtFdRhXLlQ+bk0PO3I5CP3ucwiHHtqIvKfKY7n5/B+g1n07XL/p
 4iDlQfC5lCxiQP/5TwOJYMci5+oO5KfNOugAk1QGINmIi1C2xTcleI7Te
 2Dba6X8B5VPYZW+roT4zeu5zf0NCqUqUmKCeY9nwZPplGPFogf/HlY6gE
 Q/p6kcZxq/UmvaLwdMGMdFH6WJdJhz72X8rvWdl0ohDUUp/5Plw0OuK+5
 BhOTyp0cwWP075HIXzSvPi+hkpejEKDpja4qnuCdSE0S6hAK92FXz6+hh w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10205"; a="301307895"
X-IronPort-AV: E=Sophos;i="5.88,225,1635231600"; d="scan'208";a="301307895"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2021 20:20:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,225,1635231600"; d="scan'208";a="468036717"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP; 21 Dec 2021 20:20:08 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 21 Dec 2021 20:20:08 -0800
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 21 Dec 2021 20:20:08 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 21 Dec 2021 20:20:08 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 21 Dec 2021 20:20:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NlOQwOwfGyCyc1f72Olm06swf9zo5Pb+x7giK9i/b/1YLiRRM4q9qfuuaqDgze6rJVSaLnNm8tnW0wvFvNeteKKQM1sL7y8XeGWututgo8PckZo7YVCpGnuqF/DTrRSwugpReg5JTNd3REXD4IgubK1UPxg4HSR51GBANt7fcmsWDCg3p3VgcZMRLXq10E02BD7fSGQVtZg7dAucAHSpABFuHNQUezypjPKsptUeh4H9AhK8hBgfN1/Yuu7sfGnU5e0dxtSXp9ykMcDpXBvfnWeminON8n5/kgeaOZ94m5EB+L/0npiWtVLHi3GSGdVOfk2yWmXYUj/30bHVhKW3Wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/6CKkHFoFuhMe6PNZWZu+1CriIvM0nDt97DYHoTPP+w=;
 b=fGmkTgS5rD+NdS9nsAdMewa7nAgZoRZUPhboRsuT86zr3SQpk6N7rosA1wrliKMvDSk04HHCI9tkIYshIzMHWVqEfGbVsqdcEu1rYR25gjisXmiK9+IR41JYX11aP1/MRkX38NRAoarJXzOcxtndyMsC1fBdHAnIyBf/VbBNyTL/EZSTfaYNxd2vushji+Le42uosJk/PsYs/psqQEqnn+aLm7VsGObSvqkhErXRFCNalRAaescxVGoUuT2DFxi5YqZSE9EXoT0mdLIcUukfWtjb2XAk+IAR91iPuAoWRPnCFNgJ7XBmqchVH0gbPcQasALKlSDSsZxewqRU0hy+tg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BY5PR11MB4135.namprd11.prod.outlook.com (2603:10b6:a03:190::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4801.15; Wed, 22 Dec
 2021 04:20:05 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::bc02:db0b:b6b9:4b81]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::bc02:db0b:b6b9:4b81%5]) with mapi id 15.20.4801.020; Wed, 22 Dec 2021
 04:20:05 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: Ruud Bos <kernel.hbk@gmail.com>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 1/4] igb: move SDP config
 initialization to separate function
Thread-Index: AQHXzAmdVcGbB+JvoEarH6ruqWvZTKw+PjGg
Date: Wed, 22 Dec 2021 04:20:05 +0000
Message-ID: <BYAPR11MB3367CA2FDB67CE39D6C8EB51FC7D9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20211028143459.903439-1-kernel.hbk@gmail.com>
 <20211028143459.903439-2-kernel.hbk@gmail.com>
In-Reply-To: <20211028143459.903439-2-kernel.hbk@gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 77d236b2-ea27-4073-87e4-08d9c50254d4
x-ms-traffictypediagnostic: BY5PR11MB4135:EE_
x-microsoft-antispam-prvs: <BY5PR11MB41353EA32EA6493F529A3B86FC7D9@BY5PR11MB4135.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:597;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QVU+Jofd5M3SUjSAkob5TEaeCDhtT9FiHCDvd2YnWGvJNfxxb+T7t7POOXAm4fmbfS7xZYlZNrwQ1PTSqKL0LzFfQUezUu+hBamMb8nZ4/fg67bcvYW4sd3RpcjYheuRj9ig2b/x0CfWM4hfezwv4L5DZIHcdHnH8d711cdXVQFoOWT/XlTAP/UQZD3+u1RkBIc57/pYXk55tdT/brTPqDPEnrt4Xii92PziMcDlHtlCvQabQQWTPHuDIQSrBWD78YRJHg1B+kL8yFegXdeCsFgW4AVI5Yg5d9am79kKnu9PdvhewGXJ58MEANyDaLc5XSfW/0QPY/gmwwnGry8Nw4aFl/Rp5DXcUgCgKnHPe0ITF8pbuQSGFxO/N/6LAsDKAdw31ayjuvFYTPkbJ1uibNd0mkZKIzFv3mcnd4GeeS6Z1wa/p7SoEPETaFkkTuni9fRo2lT5VA5BLNgWK3FJH3wPmhNFdV8ZDNN3Wg9r8AYOk2cFPNuIWr3BVKLLqUBguk+VH4fhDwBkY6jVImZoqCNXE8Sp/8RgJ7yPexPZ/h6gZk0c3ra2gNt/bfD0qcNOlNid1rZfnkGXlGN4EStbcq6//pYe5yPgdddXWTdpSxv6OabHzwkarFtqboQgKezKPsSioDfWjYPEqFfpTR4/KVhqKFNZPiP/Jaf583FBEcmcSazOgWWy/3IFr+WBLrdJ5umxUlE3WARN+Z7USfAlUQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(38100700002)(33656002)(5660300002)(71200400001)(110136005)(122000001)(55016003)(38070700005)(186003)(508600001)(8676002)(83380400001)(52536014)(316002)(54906003)(8936002)(4326008)(7696005)(26005)(9686003)(4744005)(64756008)(66556008)(66476007)(76116006)(82960400001)(2906002)(86362001)(53546011)(66946007)(66446008)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?eUrbKLWtjJbL7sorz2cx5s8hh5cp05SxFeAlUbN7mAG/0s0DQLwYKr8i2O2n?=
 =?us-ascii?Q?8/NbYp7naVCzY+8XKEbFvpVArnLh3CqA0IM4X+4kUEMkj6CkgjHg9p1D5JDf?=
 =?us-ascii?Q?9wYbz6UZvfmDa5NjSh1u+TgbGWRq2PW3z9UyeNCiACNJ+Q13pqDPyAsmPrPs?=
 =?us-ascii?Q?4Zhi7qT5xd5VGHPOpdLTFMpShSpu8L5ijJXqg1RKlAYChWVAhzw++ETIPhSt?=
 =?us-ascii?Q?31rXNnGolg0w4Okiw49FXf4lvHDG8eMC6jrjXe1PFBKYWvL7lo19gmZvBV8i?=
 =?us-ascii?Q?j4VqIZKeHTHEx2o6qBJnN8XrIkGawPnZEE8CtkL3ohawEU8+TEv1tVndyk6y?=
 =?us-ascii?Q?kCiJv9yUYy7+m4ySN1rWyjBoooUPKRkXr70BAnZ0dRtVPMKAKfzvoCmZlPmT?=
 =?us-ascii?Q?jcVMU2cks3PX5CHLmHFbJ3dCd9GxQzHqPpzfOtfMLWzD9xEPKZWGxHraqA4o?=
 =?us-ascii?Q?fOsqhZGjS+uoPNvwBvKGwiLt7bHxBNM83igSayiG0HYWHt1P0PSnOcraOlaq?=
 =?us-ascii?Q?CDUCn5NN9kf36SeaDgHIKfdm6/5mXXfVxhurIzC5n2AgG1PznL4Zt8+eCFuu?=
 =?us-ascii?Q?lneSTPlp06Zn6x10hlldcqspVj0Q3wu4jy+iBAZzubljfz5MaobR2nXbuOrF?=
 =?us-ascii?Q?W+L7wxWxrR+Mn34JJLikfhpIhQsrt7LNSpoQCWsLbJgUCUBW6kneO4RdJ9Lc?=
 =?us-ascii?Q?XC+lJ2hofk0R4nNdtB7vKBKzHUDaFeK0gb+vHnFEsjGWNlkBsgkImImfore4?=
 =?us-ascii?Q?ZQWTkc3rEAcWFrHKFrHooV8Hkp+ojVd29g3WhxhxEUaeP0t/kkHtqn5zI3ZM?=
 =?us-ascii?Q?LunpQbAD3U/n1UKHYWHf4yc/DYS7v6Cp+Ih+wz1P4sQiJauhIlqjD923LvFT?=
 =?us-ascii?Q?Peg44krevuxHEiCuYXf96ND7+BGoOf9a9V1lS24LRQWma8ZEEfIjvOm/BnyF?=
 =?us-ascii?Q?/YFk65a5DIVOGyVG+bkKAc6Jqzf8EfUhv2V7l2QiVAu3xaa5xui36O4d+p5k?=
 =?us-ascii?Q?ZxQkIWfXHF3nIpWtBuCfpxJrdCZywaU7a0emLYX4ZFSE82ov3Rc1NqSCTcfM?=
 =?us-ascii?Q?iI993td1Gl8cV92jkQDSnfLpIbv1Y1cRCqk/XSRzEpC+AL+he5eKmewWMGc6?=
 =?us-ascii?Q?zHut8+BRDC1W9f8iJdzhHFZHq0bDN+UPqrZkZGbezabtnHS93XyvI1fJoKiU?=
 =?us-ascii?Q?Y+cniKGffyf5Pv9irRC4bVzWPzJwQL7B2t709i3o1hwcrRf4mGGPkVhGAeZI?=
 =?us-ascii?Q?17kSehSP/vZlDahumGsmWJVWwjbxe0SssxL2+7t3olxLWycPR0YIOXkpA1YG?=
 =?us-ascii?Q?hJPE2XVkzOadPEwef6XQG23bfgShiQo8XH0q/nQWa02h3KdwDmUPPpC6NubA?=
 =?us-ascii?Q?HOhrGvdJdZFfD/S3clCwDgRfuLqtYAwze5wIRoAMH1xAzTzx2nKiVemNiiW7?=
 =?us-ascii?Q?FdsVdqPzOl1yyy/3yQcUn3HCL0pShUsElBjLIidDCMlSgUOKm0azJ5sDNwEc?=
 =?us-ascii?Q?WSJ5or3GEhpHpT4+OZVZqcSdMbBhvg/2+wzouBS/oS4u89EAdTxY5/qYxahK?=
 =?us-ascii?Q?hgu8UJyLcNDU7T6IFVlIqKJHh9ux/oyu8drY+JbHOCPb+UPLOSSD+rO103hA?=
 =?us-ascii?Q?lQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 77d236b2-ea27-4073-87e4-08d9c50254d4
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Dec 2021 04:20:05.2363 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7kVVUudE7vGAW7t+sk+QNqKxP0zOvCRQoKDvpasxY1QSGBMjI1q6Cgrn5giSWVyx5TlbT6E1wmyUnzzskmmPjg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4135
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 1/4] igb: move SDP config
 initialization to separate function
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "kuba@kernel.org" <kuba@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Ruud
> Bos
> Sent: Thursday, October 28, 2021 8:05 PM
> To: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; richardcochran@gmail.com; Ruud Bos
> <kernel.hbk@gmail.com>; davem@davemloft.net; kuba@kernel.org
> Subject: [Intel-wired-lan] [PATCH net-next v2 1/4] igb: move SDP config
> initialization to separate function
> 
> Allow reuse of SDP config struct initialization by moving it to a separate
> function.
> 
> Signed-off-by: Ruud Bos <kernel.hbk@gmail.com>
> ---
>  drivers/net/ethernet/intel/igb/igb_ptp.c | 27 +++++++++++++++++-------
>  1 file changed, 19 insertions(+), 8 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
