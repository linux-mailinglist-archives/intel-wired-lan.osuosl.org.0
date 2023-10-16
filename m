Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2CAC7CA544
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Oct 2023 12:25:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1536E416BD;
	Mon, 16 Oct 2023 10:25:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1536E416BD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697451919;
	bh=cgcUgjqdS0mhRWJcvBYOmz4n3PAWVkyOR4p5teFuNDw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wGy5Ht5xOW7NphAR6YVufOL3ck1jKrIXSVCpHakGAaNBz+mBJRCW4n9mipdbzAloe
	 R5sWlejlPsT+tkhV/ybx/nRLSEXOnkcVU6pIJIWMintuZDQYV2avyJhH2InJUlDixA
	 Bz1JmVUeIA98qY4pkgxEyWFqiOPkfRGX82/z3yybsHUyd0c+wOr0YhbEEOrQw81Y1A
	 oHze6kKF5BMo8ciHlWYSm6uFQVfhPDWhJcN73rTFaf3ZYendt9lrMhM4yzN6qBPfWp
	 gR/repdJ5QZgwRAkIoIUJZy0y9kl10e+m0v2anj8p/T5UsRziY6K9sFfPjgq8g60NY
	 y2JJG1jyEDvpQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X7BW7Om3yYOK; Mon, 16 Oct 2023 10:25:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 79DFD4151D;
	Mon, 16 Oct 2023 10:25:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 79DFD4151D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E86F61BF327
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 10:25:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B3C0780BFB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 10:25:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B3C0780BFB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XjD8kZ7JNb0h for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Oct 2023 10:25:10 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4C8E080C0B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 10:25:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4C8E080C0B
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="370569006"
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; d="scan'208";a="370569006"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2023 03:25:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="749248384"
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; d="scan'208";a="749248384"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Oct 2023 03:25:08 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 16 Oct 2023 03:25:07 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 16 Oct 2023 03:25:07 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 16 Oct 2023 03:25:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gl1ObVwSs4KUY52dkCvREh1clxTlvh+6VSf6Ln2Y3OcSTiDtneoe1o4PVLrhsFssCy89fnp3YBCqJwjzJVSGg4KOIlQ1D7i0xP5jjqj/LD4Hvmif7maa8yXl7H0bwD5XCL1Hj7P/3AzV4AwAmRbRJIuNBmSvwxJbBc1KsOobbP3tEAHde7pM0gxcL4zSCkaj26sZX9eaPhbTfZs7Hsc92zGU5ghnhAXcLCzlMEdyXrmiRDUWCebt12AqG3brYQQkuu8k11u5VBtdTIhaZ2miJEYkW/EM0TVHhtZgMlL6zJRn9D+kopvR4ngM68V46q+UCiZYeCv4IIu/b8qYSNjVKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B/rW7Vf4JlZfQaZUKDFRAtSfcPWcEWQpiQhH0ieY8g4=;
 b=UOJtXKobQOm/K/FmAg121Op4a+60EANqbZWO4hhM0ml5/4E0hJEyfK6uEzWRZ3qk0Rq1PA2UgK8BCYjew4sE48zHBivrVAQ7CNRDPVZNb53XM23GVc3iKFPquZ6VmMqgyvhQXNjXbXMc4ZgW84QEJTVy1k6T9W/yafb2Vq5loOVw4a3f++hWXlVKtsmTFcHo/1EUZyNst8CyUvyQkaT6sMhsOytEHmrQJT3ng3lOQNDOe0T6pBYyecD8WGzLy+uY+G4h+Jv/SqWUXzFBbr9S4+HWFzNPvFoFzEDOujPQdaJvb1t1vFKIjpUdBCNJwqyv8Gd0cD8tDsCbqtFH048zyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by SA3PR11MB7526.namprd11.prod.outlook.com (2603:10b6:806:31c::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.35; Mon, 16 Oct
 2023 10:25:05 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::a2bc:136a:3f41:c858]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::a2bc:136a:3f41:c858%6]) with mapi id 15.20.6886.034; Mon, 16 Oct 2023
 10:25:05 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>, Dan Carpenter
 <dan.carpenter@linaro.org>, Jinjie Ruan <ruanjinjie@huawei.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 1/2] igb: Fix an end of loop
 test
Thread-Index: AQHZ95QOjtHQwFcfE02+YCzWjlaUJLBBmF0AgAqudxA=
Date: Mon, 16 Oct 2023 10:25:05 +0000
Message-ID: <BL0PR11MB3521FD279A6FC102DBEC8DAB8FD7A@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <4d61f086-c7b4-4762-b025-0ba5df08968b@moroto.mountain>
 <95370ca0-c60a-ad91-aa22-60a1d9376461@intel.com>
In-Reply-To: <95370ca0-c60a-ad91-aa22-60a1d9376461@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|SA3PR11MB7526:EE_
x-ms-office365-filtering-correlation-id: 10b68bd0-2244-4a9c-752a-08dbce322a0f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: c2Axro3mwq5+rnusW+plTrCaHDlR5ajxJDLdmYpj+W+EY6anvLqr/CvVaBBAwxNXr54UXNgP4SD/FzfvsvqWy2sWiUQkPMmCDf8via9BekCkcjqWLC+XUwx4rMuU31k5eUOA2bkAYVua+SSkp5mhQK/2EXEKQ7Y4dvoE2RIabp8vpjFoIzgBMkXp/tllpikQMrenROvsqDR5yp9DLIv3/6Yn7oY+7WzY2RE1s6SCB0KrGnjnk4zL+lJbYnrzzE86h4bauaKpllwn7LYSTVtktKkOHeiIpLTyyYCpCTnyvq3QDZ8ZAXfF+HIwx/CSpPUgJ/pSHWzvLJB7sUYImGgaqvuW387XA8NZnlv1E/7akOm4UlpgfaO41/rCk4JcRkymLh6NN72T4tDBCbdI1Rz9aROO7KFNtpg0279o8ze4Q77UAbjne/6nv8UHGSiPMrChDzl0GX8t1te4+eaWOjX+HhQIPpgUDemCHtkaxi6EELrXGdLKxXIVQGu96jhaDu1un9vvn/XJ4VZgb6iNtrK5d+Np3CL2B3j4zkFWRh4YYHNvrPlq4jkUSJjki9oVYaMxA6n1VAcLlXXxw47LsnjRhaOnThJPwl+Lsp6r/07umww=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(136003)(376002)(346002)(39860400002)(396003)(230922051799003)(451199024)(64100799003)(186009)(1800799009)(55016003)(478600001)(966005)(110136005)(76116006)(66946007)(66556008)(66476007)(66446008)(64756008)(54906003)(316002)(71200400001)(82960400001)(83380400001)(86362001)(38100700002)(9686003)(26005)(53546011)(7696005)(6506007)(33656002)(41300700001)(5660300002)(38070700005)(122000001)(8936002)(8676002)(4326008)(7416002)(2906002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?w+c7ul/MEJsK7kWymF3P9V5KYn56weGinZoFzuq8QHUzZo5X89RAX86JL8vp?=
 =?us-ascii?Q?SYAwa+YewYjTwZP86koe/xcEou0mt56H2chVBnbPdjmxJ5aVW6a3yAqOg7Vg?=
 =?us-ascii?Q?Ivf9zRjMFDhKBqi5PR580lewu+o00qlfTNDwpj9zWTIBZ3M6BXsIs3J23kfM?=
 =?us-ascii?Q?gYLLMFgVu1sStbORucbI1tsm3dxmVxCIoSAwGlydo3jsjGjCwQjOGBcQA/8v?=
 =?us-ascii?Q?MBpwjbsdRsfPXy5Pn0XA91yUMzezrLPLY5C7DaEuJyJlRWSYrMrOEpYQFIr6?=
 =?us-ascii?Q?SBSby9yO3xu5E6n8y6I6ZQMTLprxdqOqLvMuaV1BYJ8O/RN+6W9EkyBxRG/2?=
 =?us-ascii?Q?TPOLCeXcgDVm55phjFKthI+gQ6HEEaM0COhNwbX0UpRKUEZ+azhL79OHLfAc?=
 =?us-ascii?Q?iogXW4H/NwKd49OumHh19Rh8S4d6XBHyIplSMEuM/Uh6B8F8VSm/nH7icsyZ?=
 =?us-ascii?Q?+500nexSUSFEmBIdP9lsBtx47HgtydWPKePuS/mLp/TX/MCIdRbA/fMzG1ns?=
 =?us-ascii?Q?aGiYGI3UlQGr6OyMLk/09TYscmErTfrbstCsSrlXGGA+ofMNBV0g1LiuPbFR?=
 =?us-ascii?Q?E4oGF1YVt0YoFzYmj9wO+UmnMVfljgvq13EatOuTui46x+B8Hpzhdkc7KWM4?=
 =?us-ascii?Q?/2uSXAu/aZAOQK+V1v2+TFCu+tWvSID6BZCqKo0l4WwugXttgGhMywUxEUYz?=
 =?us-ascii?Q?Dtcf+sH4MjXgMT2P6lixS/cV8qvUTxlxtG5ageN58T7UnJosY79cEu7ZIdMm?=
 =?us-ascii?Q?ikA+ql5b4Ebv6c2wdpwddiWmROCnN8GjUBgzvn2OumZ/oanpd9sssW24ujAr?=
 =?us-ascii?Q?aF12wxej0QiALKqUe1jlfy4h1fqlwzFPvZh6Y0J9/R2jwjafNilzz0su0CdU?=
 =?us-ascii?Q?+o6HuTDjDsYKTSqYYL0Q1XxrVTbQgNNKo15XK2PDzl5wL3p7DPCJWx7f+Xnb?=
 =?us-ascii?Q?c259GqEluwQLpaOcgrC05fjuYnzh23woQ0/Z7+xTUSnjM2KuHqYtO6jadtLu?=
 =?us-ascii?Q?QToskDZGZc/xHaqyQ2PIUMUI1agRwdPTDfESKvaXxw1ZtDNq34RcXdc14RKv?=
 =?us-ascii?Q?pO67spyeWz6wJ/oFFY6XFMmX6+nbvqhQSJh73reqGlsnRbnYo/32pMarPcxG?=
 =?us-ascii?Q?+Gs6mmnK8C1gZ1wp6u7EQJJpqP7ImszQ272NkonCnx111pmtSINq/8OWZVdF?=
 =?us-ascii?Q?1li0lYMZNveJhbyYVpg7IRZFbWpMJ2C06Xsism3H41UF71Y1l6nGwjW1B1Er?=
 =?us-ascii?Q?6uhaYAjR18gZ3lTNI9aOP6RI5mEfNIuf9bas40Cvu0FFqrqU7yTUL7vZgtE3?=
 =?us-ascii?Q?f5i0fytGKjwv+NglX6aX5IueF4ztH3KeT7e95Do6wHEx7WOk7khWHtNFVgx9?=
 =?us-ascii?Q?+K7yOZ0FmeMKX42qRk3bamrNbI008vuxg43ViYlexdTo8e+ki2CZl4vzNnHg?=
 =?us-ascii?Q?8QqBRmo6YHRBsmui3pDoCMhIpsfZ2buPn5+k+/rLmWi0qI1yVjVwbgfo97i3?=
 =?us-ascii?Q?J67Y0AgIusEVtj8vrt3T9nyR9hez9ule3HjnOw/AkhxK/PWEQ/o3pGNadYRX?=
 =?us-ascii?Q?nLEvg+PatOgYohXbAJ2NN7aDtng9bKrthEZ3xz0vmP20uheJ7VQ0t/XqTbJ5?=
 =?us-ascii?Q?qA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 10b68bd0-2244-4a9c-752a-08dbce322a0f
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2023 10:25:05.2025 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hAZEdj4IRTF6vguC9OFh0lBaUnXKC4pAyv9jiqGkHoATJV1Xn7jLr/El6swkKzGOd3sflOamBUuItbc98khn1IXkPb4sdYCWXUpM5qfldME=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7526
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697451910; x=1728987910;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EbdcjJBxDrXiBpd4uUul/55SK9TbMBfaffYi4nG1iLQ=;
 b=fMpQfdC5m21UcKjGQ1R+JrjYXRrskmi/8fWWfIUheBVO6vUQTYXubs2P
 LA4IfjNIyWY0z0etk9MlFF1YzEAM6/vOa1O3/e/OmiMQqEoPdzzJTPjxS
 eGO7l0aqKo1XNE6R5+fy2FVHKaGRP8Yf3mPMyFuJcSgW9YaR54KOIYMFQ
 A91YLdOwEDHC7PwRmhAoqWf2gSvsnAhnteOAvHsSVRer4L4MrHW3k3zpp
 ULHthXDPVLWUIWEEg1XGdTTxuGoD4YCGGfCyiDmdSaka/BMM1xcXwyRha
 WeCWPk0bl/s9Cfqp7df+BHDJMybhG5BD8he83k1qHMHqhlxkpRnIvffkd
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fMpQfdC5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/2] igb: Fix an end of loop
 test
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
 "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>, Eric
 Dumazet <edumazet@google.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Simon Horman <horms@kernel.org>, Jakub Kicinski <kuba@kernel.org>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jesse Brandeburg
> Sent: Monday, October 9, 2023 5:18 PM
> To: Dan Carpenter <dan.carpenter@linaro.org>; Jinjie Ruan
> <ruanjinjie@huawei.com>
> Cc: intel-wired-lan@lists.osuosl.org; kernel-janitors@vger.kernel.org; Eric
> Dumazet <edumazet@google.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Simon Horman <horms@kernel.org>;
> netdev@vger.kernel.org; Keller, Jacob E <jacob.e.keller@intel.com>; Jakub
> Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; David S.
> Miller <davem@davemloft.net>
> Subject: Re: [Intel-wired-lan] [PATCH net-next 1/2] igb: Fix an end of loop test
> 
> On 10/5/2023 6:57 AM, Dan Carpenter wrote:
> > When we exit a list_for_each_entry() without hitting a break
> > statement, the list iterator isn't NULL, it just point to an offset
> > off the list_head.  In that situation, it wouldn't be too surprising
> > for
> > entry->free to be true and we end up corrupting memory.
> >
> > The way to test for these is to just set a flag.
> >
> > Fixes: c1fec890458a ("ethernet/intel: Use list_for_each_entry()
> > helper")
> > Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
> 
> Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> 
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
