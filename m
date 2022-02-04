Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D81B4A9FFB
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Feb 2022 20:24:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E6DDC8198D;
	Fri,  4 Feb 2022 19:24:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yxxjMDHDC5jz; Fri,  4 Feb 2022 19:24:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F1C6F8141D;
	Fri,  4 Feb 2022 19:24:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 368F81BF5A4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Feb 2022 19:24:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 30F6D8141D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Feb 2022 19:24:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DSOl_NzIKuuk for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Feb 2022 19:24:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7D717817AD
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Feb 2022 19:24:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644002672; x=1675538672;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gdnhGI3nHJSwGjkPXvVj+DL1dyXG0L4VmGXrVlm8+Mo=;
 b=DF9F+w7q9ezlRUJR9vD3C9GYG0zuDS6XGdAQWRd1wmXgFH80+bHUO0+Z
 lW+THBxUCYD100i/BCP4yULlC/nKkr2VfzLxc2DShgmwPLZ5p1ju0Ude2
 HCb4hasu2yYIKRTYAQWpOJ64NbMV6Qquj0zXr/bzOB3juV6s3pRDUmi5T
 ezNv5CteTPfSCcBtoOUqWflcEFPUIaxT5DFLJrxAWQHNDiQFVkrY2vHpk
 pHXEgZ6C5yce7pvzipOR8TPKT2O5zWeqQmWIrmyThTrJdNLNB0GOTaoGJ
 A7MyrjRAs9SqI0GB50u4a+SC4VwYywQCXASEeJ0tGMFqvxm6csxseBIid Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10248"; a="228400256"
X-IronPort-AV: E=Sophos;i="5.88,343,1635231600"; d="scan'208";a="228400256"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2022 11:24:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,343,1635231600"; d="scan'208";a="566833578"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 04 Feb 2022 11:24:31 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 4 Feb 2022 11:24:31 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Fri, 4 Feb 2022 11:24:31 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.105)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 4 Feb 2022 11:24:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cZYFRpY3SQY9rNJ5HwkI24HEwE23DKydevhmc2v0PL3Eem6edZkTCjpHWRzOBCUztkrZj61ryVHKkpHhop6ipcoQKcSnXur9tHSZQ5ytxqHvxoHRhqcceOEXYQG0V2cxpz6W+8ysLD5iRyb9SGOzHbyMEJ0MEMbkwGpHk3/Ja6u96XTLjMK4EL2eRaB5VgWNfLLkOu3BULR4lhb1+aJjqDxQwzDV4oO8/dJkWFC27j/8a6+j5zo6GaDNA9nCpcS/weeys4YWZXOeu7glPYUHOcd1SZw8XWLV+oXFUE5JID4RHfJs5IIMKycTIaeiKQgXzXDnYjwWmVq0ahW5N5nALQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=84vlviGGWhpdw7Lscgpq4xCYch6w6PGsuhy6icuyTZ4=;
 b=XObI42UEeSdBgC8TAbwplzC4BOn70LAkloeNx5/mjqjnMYZ5Fjd9p7vYSuSpZefskEN8jvijNj7ZpWzf4Z5Yl7zpnvjhI5tCCOjYsMJwrN36m6XqEHrZQSt9DGPPjkOIuqhDhsNkDAMBhxmh9viVaahUld44N06edotowKiH45Nz3DKxrOx87CcEa2pBpKjo1KOfiPLIi+XNOav22Ys6XvmE9wDUeEQfl+LsWH3LsKafHaq8lQjIVzxbpPeMF+83v9xnNnSrFeZr4d9oxrlrvrpHGXiEAVr7tSlDD3Ifnhf+vxEMPjESYrNZUaoZNorahsOY0nCFs1Y2uzcDr2MvAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from SN6PR11MB3518.namprd11.prod.outlook.com (2603:10b6:805:da::16)
 by BN0PR11MB5711.namprd11.prod.outlook.com (2603:10b6:408:14b::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.12; Fri, 4 Feb
 2022 19:24:29 +0000
Received: from SN6PR11MB3518.namprd11.prod.outlook.com
 ([fe80::4d44:28a1:355b:71de]) by SN6PR11MB3518.namprd11.prod.outlook.com
 ([fe80::4d44:28a1:355b:71de%5]) with mapi id 15.20.4951.012; Fri, 4 Feb 2022
 19:24:29 +0000
From: "Switzer, David" <david.switzer@intel.com>
To: Joe Damato <jdamato@fastly.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [net-queue,v2,2/5] i40e: Aggregate and export RX page reuse stat.
Thread-Index: AQHX832XR3jfLkgEC0u1cTJLiRvEZKyEElNw
Date: Fri, 4 Feb 2022 19:24:29 +0000
Message-ID: <SN6PR11MB3518A49809BC6EE6C6A2333BEB299@SN6PR11MB3518.namprd11.prod.outlook.com>
References: <1639769719-81285-1-git-send-email-jdamato@fastly.com>
 <1639769719-81285-3-git-send-email-jdamato@fastly.com>
In-Reply-To: <1639769719-81285-3-git-send-email-jdamato@fastly.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5a55bd81-789e-46be-045a-08d9e813f6f1
x-ms-traffictypediagnostic: BN0PR11MB5711:EE_
x-microsoft-antispam-prvs: <BN0PR11MB5711000CD04EA833A5DB44BDEB299@BN0PR11MB5711.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:404;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AeBOV9+v9ExFAolvESlbb71goF9gA7qqgexOTkb7NIaI4g9eiizYAuNeFVvlUecz6DWa2pNuMSvm//2GaGbmWPEq7zdGdDePGOagovviBZbY12hPGiQ5NH2V07TambwJpWDKV32qs+JnT+M8c1HHd4EBMTvyXXj4VhAHqasQBSma34tm3SY15WJaipAmJrYmZ8guFEv8VWQ2RzEWVeQsQ4mNCSk9raRWD7qdTkM6Fn25e6OEtG5GVFoREwE15KhvqMi6rNKtvWclL3umpdOnBjXWzUDZp0SJUMA8CIemHw1AeIdh24oHKlCqk5L1BhHI1QUt9MKko7zVT3toeZGKZt0QXsQOrzpgt3w4vGdjKwEza0sRiwg84cpqrX+i3PXBMSLobRltGOPG87R8oYRWv7kgoOv5bnrcYXbgG/BOHAa/NXnPHI6xly9+7aF5ZSKyNj8dwAHsfxWhd6uqxbbMkTr8eWgvIwTJXAeSV9Q7SfWJsdhWQBPEZeKUZ6ctr7Y2tyVnv/kLm/mzHpMDhSzTF6cHGHMkbPTuYPJA8mvXEtmaZuW3ZH0HACwq0uX2JAlm8aojtgjMowCzCyrJ0wRg6u3jR606C7R80Q0nmvwkNSVT+ZuZsoI5czKSSldLorp6NxbYwI+IcgnFBXWO5ZqHoyt8Bdw1fHpXbquEyCp8i7erRF5YamMkxrrMGUkq/HfreFh4y/3O/olCiOLHUp4KMELXpQfTpdq93UHcedWSc7naOv9cW8LxomgVCvkK1W0m
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3518.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(122000001)(5660300002)(83380400001)(508600001)(2906002)(7696005)(38100700002)(4326008)(9686003)(6506007)(4744005)(26005)(186003)(52536014)(86362001)(107886003)(55016003)(8676002)(316002)(54906003)(82960400001)(110136005)(66946007)(64756008)(66556008)(66476007)(66446008)(76116006)(71200400001)(8936002)(38070700005)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?69BzWHdswLtftsGdNVeuIwulpGSQijqhFMZDiOnXTG9+DC+g9afYFQjyRhW9?=
 =?us-ascii?Q?4IN+QiCRor730HFOPbDvoX9j6zD6f7PBsCn6L7OIGwvt+vZI5MWT6CuPivv6?=
 =?us-ascii?Q?9wW4dzsoTkJxqSDyJbHI8y0S+p28FfKdG1WZSutozufdK5cPfXrhHHQfxnFW?=
 =?us-ascii?Q?zQNamSXYI72rs0wPHFZcEOyscRycgsQpgx4qPPipdFoEqFyzw6b6wgOHublN?=
 =?us-ascii?Q?/pvryNet/GxyYxvINt/xGGEt4Pr/4RWllj/tF1NxfivLEzwQKUv97uoFJTuH?=
 =?us-ascii?Q?BM4QXyLvwbICPq46QwlcFDRixD5QnPbTHWaxHG5TpS7dEvnw/8IRPo876/Yr?=
 =?us-ascii?Q?fSfVBugGfLme2tUSNiQ7JdQ0VS7bDE2FrcoeIkFt2XABDh51tSdO7O3W1Gmc?=
 =?us-ascii?Q?BRZdObM93InPeuxDYwSFcHA/qmdJh6F5Vc1+pLRZ91sxnuklRhmsoqRqG+0h?=
 =?us-ascii?Q?m5Dz5oqqjSr8sPPhEtvMU3FOforAWe4HzqNiOR2yvrR0iTgg3szaWjLYDa5g?=
 =?us-ascii?Q?wwfz+2xvOj75cN/7smBB9GyPaOGaSbGGc67T5Y5TxDAN+ySVe5v6BOhB10XF?=
 =?us-ascii?Q?lHVoekSLfNqTYTNGYZRbpbVenMFkqhW9aRR4rDMmnooDMbw0Oie0TjYOis+c?=
 =?us-ascii?Q?46Lv9zc/ljxo9EBLp9+w+9Tyg0OR65QSfcP8OV1//YgKsGpORh+WqYWTamY0?=
 =?us-ascii?Q?JlRvdHPmxfWb2KYUwzLDjWwtXD4jcUMmQbXyuQU12Rfa/1MF4IaXviZxDu5z?=
 =?us-ascii?Q?LsqFDTE3jdPj1i5RKasSniTEQkBdc4kW6+4JV3D0Jgv3jzzoT6I5fE1OM68T?=
 =?us-ascii?Q?jdWrwmRldxadDkSOECP6YtGhlAwLdLXdSSIum+UL/ECzVT/wuZpxPW9cx3bd?=
 =?us-ascii?Q?61tXlKx5197UGogwcvCYcu0wi+BrgEsLlA3EBfDVR1oc5wiPGn3mHzeIwcjY?=
 =?us-ascii?Q?fFakZVg9vztzp/61RaosRWzs3yzEmWTGVnCFPOHY9XrCwRaenP2usfWw4i6a?=
 =?us-ascii?Q?0QZ5cOYDw+9wA0wqmCmMRkbFio9TeFJrNoIHH/jmFTKbMwKRqvSjxSC1ERpc?=
 =?us-ascii?Q?MR8lmZ9fZtdVodQwl92flMZYWShj6ujO4t08FhwfGi7NBHMeLpCOf5EJo0bF?=
 =?us-ascii?Q?+VmplDSJpZDQpkwb7H0pi9v8JTl6MgvSdkYksP3yKUrmCw2xI9YccksDzG01?=
 =?us-ascii?Q?qH0C64/3lTbXukWzM/o+HozTKITjGzK9xdtP5lAZ9atxIhuhh4NTrf7pE3k0?=
 =?us-ascii?Q?hEppuhdVX5AWENgtR2m2lsBkE5K0uoFpLvjyk78nifn9FuRqEDp5x2jsK1ze?=
 =?us-ascii?Q?39kfz/xGT+uE+oLQPSSWZwnJyRfcfKk2GENSccS2ZINXQQ/wPP8+PS4slnje?=
 =?us-ascii?Q?8Fie++lvVzTUZMnfx5/Vo6GGZnyWsfUEbYQ1UO8MO3z7kQaSc44uRHvvWs+9?=
 =?us-ascii?Q?dWlcFHsIra7zWcSIkvwWDvEf8WeTzrMiTgBHn7/BohuygIwqs5GJFsoWFEOR?=
 =?us-ascii?Q?DEY7g0PSdX6Ju7zkQsVrjQwWPMQ0rrLaiQzBOqtLriTvw1xEoFqNVe3j+0G2?=
 =?us-ascii?Q?8WaKSE5eONw7h6p7rprUin5q2YeTW+xtgeJz7+G2CgdjGReO8xlA0Cd3k+k7?=
 =?us-ascii?Q?CA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3518.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a55bd81-789e-46be-045a-08d9e813f6f1
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Feb 2022 19:24:29.3555 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HZ8bkjxLIp6HcAjyAtTEfeTLmQyqrXMkK2Sdw+5LiKEfTETFLc13msIKcYvAtZYqo3LDyg0se989p/+u4zrFXA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0PR11MB5711
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-queue, v2,
 2/5] i40e: Aggregate and export RX page reuse stat.
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
Cc: "kuba@kernel.org" <kuba@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>-----Original Message-----
>From: Joe Damato <jdamato@fastly.com>
>Sent: Friday, December 17, 2021 11:35 AM
>To: intel-wired-lan@lists.osuosl.org
>Cc: kuba@kernel.org; Brandeburg, Jesse <jesse.brandeburg@intel.com>;
>Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Joe Damato
><jdamato@fastly.com>
>Subject: [net-queue,v2,2/5] i40e: Aggregate and export RX page reuse stat.
>
>rx page reuse was already being tracked by the i40e driver per RX ring.
>Aggregate the counts and make them accessible via ethtool.
>
>Signed-off-by: Joe Damato <jdamato@fastly.com>
>---
> drivers/net/ethernet/intel/i40e/i40e.h         | 1 +
> drivers/net/ethernet/intel/i40e/i40e_ethtool.c | 1 +
> drivers/net/ethernet/intel/i40e/i40e_main.c    | 5 ++++-
> 3 files changed, 6 insertions(+), 1 deletion(-)
>
Tested-By: Dave Switzer <david.switzer@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
