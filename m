Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 55DB650DEDD
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Apr 2022 13:35:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0AD8F814B8;
	Mon, 25 Apr 2022 11:35:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6o_J9lutR4sa; Mon, 25 Apr 2022 11:35:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E196181516;
	Mon, 25 Apr 2022 11:35:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9D3011BF3CD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Apr 2022 11:35:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9890D8148E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Apr 2022 11:35:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lGt6vNQh1gHi for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Apr 2022 11:35:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B3EC58144C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Apr 2022 11:35:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650886515; x=1682422515;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CBJv70HmH0B6vaKtvRQgcsuz/a1XMfeIzx1ajkLnD00=;
 b=iPNbyrCDYBwaS+d0373spV1Yr5kkMvqEl1SqFZcq3ZIn87qOQ5Taml0B
 xHUgmp0BaSRWa83YRdtKhKwz6qOxHqGrWueAfV4iXkrBdArv+CQzAJZ/5
 TNN0B1QASrIwdvrQCSoUGr5u9Uv3/+hXtcalO+ZTucvuB3ytcAmYVMymf
 HdS5G+CBti8nUbhaX7WKTkq3FPWC8nrLETC74YQHaKInYGcxWEo6RrzKM
 zW3bGEYeYwQjglGanfiYENytf+wJzH69DvEbBUEGE7sXtkM8LxMczD8sc
 ll19sDqmPnrkJFeaFmUzjiwBrspouizD70D9SzDmD8lSuWCeVks54sjme g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10327"; a="247148947"
X-IronPort-AV: E=Sophos;i="5.90,288,1643702400"; d="scan'208";a="247148947"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2022 04:34:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,288,1643702400"; d="scan'208";a="660117105"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga002.fm.intel.com with ESMTP; 25 Apr 2022 04:34:45 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 25 Apr 2022 04:34:45 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 25 Apr 2022 04:34:44 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 25 Apr 2022 04:34:44 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 25 Apr 2022 04:34:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RjWgejKCCDhcFZFdKj/zLyfRLe0k6O3iy9k/FRG68VrDu8eDNzYHcFQ3YvX/VbGm7PuLLdwHwO8SgVgtWbBLPbMc83zXuFA7yU/Jix2OmpoIyvmlp3YvzMbEgqYXCvJ+SRcDJsWz4obTweBrzSWQWEwtwCEiLtzCM1aRBwR5V/WrI9vS4ZfSeczkjCsOBFaSJUx6qILUV3QXWFiw6xkavKp9bdsMzIqvrkAgcp8tw7FSaykHcinBgTbIqG7uYnfZGRO9KOMuk/ze91J2OrWpe2zB4mn7LDMBzH1+QnUvfxcgMYexNJxx/aXN13Ql1TJQJdNahfwFehlhBTzv66ZnUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JHZd2Ayhpvvzyg4mNK9ZFlQO/9NKHxktFHA4bz1fvRo=;
 b=N9iUP+LfBW8+xaIPLF7WKDPuJvOEeOmrjU8EySyx5+qNudwsZec1DKdDhr91I9BAPcknxbnBGrBEwAHAM0mMW01jaxN5kQ/6k8XDy44JuNdtqzcrUR6IFZZmvPgPgYOs+nYP3CXr1v5TIn+a3AVry2jHpZYGGXWs2DD0kHfL7Q1Gd8ug3n5V6JVHgJ4N+oW4IBzIUDVL08puQz1VR2SNSH7IbThG7y6rzaa9gJTN5EMqXy7ppC9OymK5R473xrgVi9V7I/gSct33qDrW6uviM1DScFPcS7/7f3YgZa/aP4n0RMIZgRSHEeXRymCNJQLl8xvUZvgJQXQSVnoSIWO5Tw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 BN6PR1101MB2354.namprd11.prod.outlook.com (2603:10b6:404:9b::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.13; Mon, 25 Apr
 2022 11:34:42 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::555a:eb0d:3532:d9d8]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::555a:eb0d:3532:d9d8%7]) with mapi id 15.20.5186.021; Mon, 25 Apr 2022
 11:34:42 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: Leon Romanovsky <leon@kernel.org>, "David S . Miller"
 <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] ixgbe: ensure IPsec VF<->PF
 compatibility
Thread-Index: AQHYRNhHTOl2L8e8AE+8stZffQfmg60Apyhw
Date: Mon, 25 Apr 2022 11:34:42 +0000
Message-ID: <DM8PR11MB56217CED4DFFAB90FA256C0CABF89@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <737616899df2a482e4ec35aa4056c9ac608d2f50.1648714609.git.leonro@nvidia.com>
In-Reply-To: <737616899df2a482e4ec35aa4056c9ac608d2f50.1648714609.git.leonro@nvidia.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b9eac317-5678-4168-f4e1-08da26af974f
x-ms-traffictypediagnostic: BN6PR1101MB2354:EE_
x-microsoft-antispam-prvs: <BN6PR1101MB23543508FCAFD39131AC23D0ABF89@BN6PR1101MB2354.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dSs03AehynWd3iR+TCTq/Hd1lFUuifBZ41Muaaw2pNNJhM8AYXytiX9N09vA/dlgd4b/eOluoJUnEYXXvVhLK6q7dEVBObbrHSe8GCbw+0Lsuq58w6eCrquH6KbhbTx+0o3Z79J6zt8sjRks7/AenM09aW5HSnfvqA0M1NEt9RNZpnIeMDluRPoaGrm4Qt/cms60EaPKBAHpGUpGaUmaUdSBym3WfLkBH4Ip7IiWWOMMWhJVGMv5Jg1G2r+lVBITHSoBk6u4BUNJ58lzw0alz+soYUkwIfoKwvGYokXA2SyqJgXy0ajZl6kayqHX7xtLb0cPq8N+2fFf4ntCEp6hABxu3zYLSi8KQI2iQ1d4rZsfcv1tCKdtNjqyAGWO1xQmSgmmFyEeVAy+ZFUBtimK9ga+h9VWQeVWrOyNrd8Ds86yLjn3YMw/WGywTA/uFLqDE32S0Gxk8FNGzwhulcJdqACYV47xpJpnx1b+RabfyMKWJf2mEekbcsuxCeOI1ld40n70JA5++kPWLPvNyXIy/Bgn8VasqgfkfmCXZ99mYEC9ZM8cOa/wBEs8rFVlc8+JdTSgSMBNsJmIt3xTbwIrnPyNRJu55if05hpPUSakSszY5oN9dItKYKWvQ0kaESKuf45EcDWSR7zumdg0KAxTxlg13VM8K7GOBCYv0TVepetORToREiUJSN4iDY3l2N7wStQrDDuw5T1dcgJhb+CV2Y+Fp+yuA7B+XeGTQAHAPoQxfqmPPfhRJuCtARbZGE3vcRwITEs++kp0Dk56YIW9cQ7i5rQsFcRrY6a/lgM7kt8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(53546011)(9686003)(38070700005)(83380400001)(38100700002)(55016003)(33656002)(7416002)(316002)(71200400001)(7696005)(6506007)(5660300002)(86362001)(2906002)(26005)(186003)(82960400001)(122000001)(508600001)(8936002)(110136005)(54906003)(52536014)(966005)(66946007)(8676002)(66556008)(64756008)(66446008)(4326008)(66476007)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?z/6IQum5d6iHnz08ZnQy24KZFL2DKCIllsj7Q1sU4E1yuf5A6gjGGeO8cbbp?=
 =?us-ascii?Q?RK6DSFPHOeWF5RnLvpGhJkHN7Oo2Xy4C6TM68EWNwKAKRpDBlC7Jl+iAwTkP?=
 =?us-ascii?Q?pOQA4g+kbIKfZP1HvEuza9JTeMw9/70vCDo62WdSJYXFNOX8h4i+p2T++oAe?=
 =?us-ascii?Q?YqjIW3wxIGyBDKU9G+T9nn1Jjr4Rx589OlozhMR2iWWU+d9iV98IRNPfT/pz?=
 =?us-ascii?Q?xQN9+6eieUGIpapIEo5pxmpj+QTX1UUCKPv6eIOHXoe3vQqZ7emkoFT3dLiB?=
 =?us-ascii?Q?JtuHbERJ3uOQYa/be4cLENhZgoUtjf7B7JpESjqE+Zz+wAhjYWIUG6sgddlC?=
 =?us-ascii?Q?DwpxiRM3NIW3Na8Efb3kotLLeh6Su9MDs16grHbsP5CZ+12U+qDOXiWLeoc0?=
 =?us-ascii?Q?Dg7JSbrjoV/NX20RU/zc6zL3QcFCV7KwvRukjyLupae19FAo9e8y8FVQxiT6?=
 =?us-ascii?Q?mYqdB/ngTzsbSz/V2E3KIB4NYMyPqckMLClO07lLK5Ih2EmGYYF8pgn4BORF?=
 =?us-ascii?Q?cbd7StWlg9hUxepG73ce9GNjfpOVkGXKxVmqeJmzY0jeB7YbrbNcafv3b/aU?=
 =?us-ascii?Q?PUoW8vA00JN1aU+6zOCFLvcZgIqg1gFFSiBgWuFDEFHRZwtwk9uwbYO9qqIH?=
 =?us-ascii?Q?604hHppzpLtMQOyp1Har4DfSWgAkRY+H4kzk4X1cVtYScXjv9SaLp8v6/LGF?=
 =?us-ascii?Q?o+jjJLajhc5it4385Lt0ABWJ4+iF2ieu0Wpi0mP0PfH+zKb1UgckCHxY/oXi?=
 =?us-ascii?Q?OmnHyaH2TDTfE5VJyUkzfQDB5SqlW7iZTwTBv2O+PDoA4x6LxiyxnkqoQ7kI?=
 =?us-ascii?Q?ZJX43RK/dXkPyTLLyiMbfkQ+mswNmY79MRzNDqIjaFp/WPXzt7nljPAE/kU3?=
 =?us-ascii?Q?jRV5Zg5sSV1exz3y3cRfGwXyCFtaBX6Rzxrxnt09HJfOSdtJJwsBdargpIBo?=
 =?us-ascii?Q?Qe4wB9NIF2PCa/FkQs5zLpQ15jC+eW7+tkOD1wx9uSH1oFoKsxMQ2Vk2XLPS?=
 =?us-ascii?Q?CdG2ksSvQ87nIaPyxdX3RzsbdKaZAgiAqY4CXZ6tjo7+p5VHZPzai+SQeGux?=
 =?us-ascii?Q?9Px1Icg1xZg74BFivrWx677QzlKPP9h5oyvTLc+bYDAO2cByLcxsDdGAWSM/?=
 =?us-ascii?Q?HSgEjGM3WjUWZbHBSrVCily+RdIJbcgc2pdzS4hXhJGLlewtVsebCb0OG+S3?=
 =?us-ascii?Q?cS8k90J/F3pZ8SROJ16jutLesXMbAEc8V/2tJ8ERNqJqvuFEFDtS+FQu6CLO?=
 =?us-ascii?Q?590bUth/VnOOsThhHA/64tqpnH118MGC2TYo1ZHynFplRboeV3Rf1ifcwVFB?=
 =?us-ascii?Q?52sbV1NjV76Q95J8EYU/FEOj4UCdRdjMK5CMHHVUQUtC7n2+3AMWOks2M8Zf?=
 =?us-ascii?Q?iRrR74lK4iipiS6Q7niRGxjCWi578DTbvS+rkY8wSfHqTEzYn7MLzlIA0MQa?=
 =?us-ascii?Q?zlQKI4xTldSOTSzbRJBVcXPDX3Qb46DiqkSGYFtfOS8rj65SXtsk96sN7yKg?=
 =?us-ascii?Q?EMtXRgOswPmvkf5UHXTPZnpqPOILsRT2icMlspnoOjbB0JAVi/4rFcUG52+K?=
 =?us-ascii?Q?e13jtQ8xuFuINDMnRTab8D0B0aeXbLXI1O7pNo/ihDESdmFQZoQA2aS0RCOw?=
 =?us-ascii?Q?TcEYxun7b2B203KGSnWoERzARH6kWiPl7XSGmStuAN/S6nyS0cHSykrLklhu?=
 =?us-ascii?Q?0CODoLTSLVk4kAUEkULPrCMPatXnuuBbYlhDaz42zVPrv+F8gCSBH/YJXSWx?=
 =?us-ascii?Q?JCaE7jIBmKrdWPjI6S0Fq06r6ilzDGY=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b9eac317-5678-4168-f4e1-08da26af974f
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Apr 2022 11:34:42.5609 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5N/5Nly6dTHkQ4c0p/FV0Zh0BujkJsZwdBeNvHK3t2c6JPcivYpNjToZ0iaOCuDma/9m8zec1yQOp8xT+3eo1I+Sh/zQh4MEo92IPCLensI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR1101MB2354
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] ixgbe: ensure IPsec VF<->PF
 compatibility
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
Cc: Steffen Klassert <steffen.klassert@secunet.com>,
 Paolo Abeni <pabeni@redhat.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, Jeff
 Kirsher <jeffrey.t.kirsher@intel.com>, Raed Salem <raeds@nvidia.com>,
 Shannon Nelson <shannon.nelson@oracle.com>,
 Shannon Nelson <snelson@pensando.io>, Leon Romanovsky <leonro@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Leon Romanovsky
> Sent: Thursday, March 31, 2022 10:20 AM
> To: David S . Miller <davem@davemloft.net>; Jakub Kicinski
> <kuba@kernel.org>
> Cc: Steffen Klassert <steffen.klassert@secunet.com>; Shannon Nelson
> <snelson@pensando.io>; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org; intel-wired-lan@lists.osuosl.org; Jeff Kirsher
> <jeffrey.t.kirsher@intel.com>; Raed Salem <raeds@nvidia.com>; Shannon
> Nelson <shannon.nelson@oracle.com>; Paolo Abeni <pabeni@redhat.com>;
> Leon Romanovsky <leonro@nvidia.com>
> Subject: [Intel-wired-lan] [PATCH net v1] ixgbe: ensure IPsec VF<->PF
> compatibility
> 
> From: Leon Romanovsky <leonro@nvidia.com>
> 
> The VF driver can forward any IPsec flags and such makes the function is not
> extendable and prone to backward/forward incompatibility.
> 
> If new software runs on VF, it won't know that PF configured something
> completely different as it "knows" only XFRM_OFFLOAD_INBOUND flag.
> 
> Fixes: eda0333ac293 ("ixgbe: add VF IPsec management")
> Reviewed-by: Raed Salem <raeds@nvidia.com>
> Signed-off-by: Leon Romanovsky <leonro@nvidia.com>a
> ---
> Chaagelog:
> v1:
>  * Replaced bits arithmetic with more simple expression
> v0:
> https://lore.kernel.org/all/3702fad8a016170947da5f3c521a9251cf0f4a22.16
> 48637865.git.leonro@nvidia.com
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c
> b/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c
> index e596e1a9fc75..69d11ff7677d 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c
> @@ -903,7 +903,8 @@ int ixgbe_ipsec_vf_add_sa(struct ixgbe_adapter
> *adapter, u32 *msgbuf, u32 vf)

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
