Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BD34725472
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Jun 2023 08:39:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C42C381EA5;
	Wed,  7 Jun 2023 06:39:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C42C381EA5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686119985;
	bh=vA26/HEHqcqXnTwSpfd3b3PO5opJabwkgcp9lskBhCw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=452+HhY5+TltP7jHVPE+G3JXSJeqHLbQXZCBiIyKm0MLqBkn5sfMh+RkTwzN87shH
	 DgVG5txODAEObtbHOBseg5NrTrK/SUxPN1TQP+yK0Pa/c5vHiNLewlrGscf8dUECD5
	 aQ7HHDwkJdA9vVCugZ7k91AKeugeP8Jo2aP0fgBP1tzo5qF9m9n0jU6T0AGhxH1X9H
	 nGYkH9VQ1M893R/X7apR6zqoJ6xS6K36ihhvcvyKOhEzxdkq5Gt75C3NFoPu4IyAMT
	 QBrkGYAIHAz/OZz4xX0LMuNJyQAtD4+7Fxnpl7kqdIkehfPgRnreN6BosvOrKZLw6J
	 pBY78bkqVeycw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z3zaN_nnxhQV; Wed,  7 Jun 2023 06:39:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 918D481CBA;
	Wed,  7 Jun 2023 06:39:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 918D481CBA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 268681BF3E5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 06:39:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0BB88606AA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 06:39:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0BB88606AA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VYH9q6ztuThA for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Jun 2023 06:39:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 00E9C60B69
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 00E9C60B69
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 06:39:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="337263944"
X-IronPort-AV: E=Sophos;i="6.00,223,1681196400"; d="scan'208";a="337263944"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 23:39:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="833537661"
X-IronPort-AV: E=Sophos;i="6.00,223,1681196400"; d="scan'208";a="833537661"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP; 06 Jun 2023 23:39:36 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 6 Jun 2023 23:39:37 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 6 Jun 2023 23:39:37 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 6 Jun 2023 23:39:37 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 6 Jun 2023 23:39:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N+wJjvIQYqiiucM9Z46VTjYGyLbryKZBzLZO3bGW+O0ul14JEdCcCaeilT+gqrNbDCXbOelsOeDNthp1goTbPv0MMbUvD29b6an9h5vkKmMN57T3F0gHrWB36R0vxdxs23rSMjV5I4RLxUmGFFZDts6q+kl/4td8bInVJ4rZfyeTV9oQrN68rs69GEb23kOqyZItE+muBrefJPTfps4zVktGdBGBFMQjsU8u3ujf5llmT+WugcVXw8EjxhSB+4keIzQ1CVAK2sBIWdDJfN0Qce9pBpHN2UDQ/ji6G7orE4yv9oAB+A8C+dBX6qIJSSwAtF/An02Q+jRHd7df5Sf0kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/3Zoa5iITuZFNx1EsaJJxp3ACnci4oCkPqjHAopcvEU=;
 b=WfeclE3PCA4+bp4njie5JGV5XSU6he5nbTOci8/YAYjGO0Q9ewF7oKuBQPQeKx/Pe6g7sPgbAGHjJ1xV//ITXAEXMen+6Vj/aB89O8sv9AJm8Ip1q6ImlzDQ47f5jlvevFpAwLcikJVdwQZ1UO02Rp7gdOljvipy4oc5gMf9xzV6mWFDEg5k6C/moMsr11u2QatjoPTOFt+he9FuXBXDPbjcTt9egavPmHziwbvCVpm+gJ6omSOd0sYYSPF2cwctdZDwA0C/4M06GBuPUzkrZcS1sedUEZuPFXmwU/qJMs6r+zIZESeFfdvt3VfxqQX3RGLitIjVcd0Mri3XahD68A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by PH0PR11MB4822.namprd11.prod.outlook.com (2603:10b6:510:39::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.33; Wed, 7 Jun
 2023 06:39:35 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::fcef:c262:ba36:c42f]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::fcef:c262:ba36:c42f%4]) with mapi id 15.20.6455.030; Wed, 7 Jun 2023
 06:39:34 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 13/13] ice: add tracepoints
 for the switchdev bridge
Thread-Index: AQHZjjq+VMCTK/1CLU2pEc3DNeGUrK9++RuA
Date: Wed, 7 Jun 2023 06:39:34 +0000
Message-ID: <PH0PR11MB50138379DB74E5716FD1C0349653A@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20230524122121.15012-1-wojciech.drewek@intel.com>
 <20230524122121.15012-14-wojciech.drewek@intel.com>
In-Reply-To: <20230524122121.15012-14-wojciech.drewek@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|PH0PR11MB4822:EE_
x-ms-office365-filtering-correlation-id: b6495b78-2f19-4cf5-0779-08db6721f52e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cfxOjpFxiQk037YTi08I5J2WxcQT0dHuACvOLtRzgczp23w5PNEYZVlvX5fgCq7GSePKcEW6UCsIvbWElcTvNc4NRrDRdW0fvOUUkgU8osYyvRWU0/e+usJGZnD9lz/RkxisvN21cSjn3UA6DKpGTB8i0YtjgzWBXih5wNDpkc4Y1XZVBSNNB7/XbK1aqkEN1pBXMim3czJ78tCNXqZszQla+zo35hJiw+980Kg51AGfpMRu4GKSWMVNCjr2NtD+weQwYhdT1/8Fh0XdCKt+zOvMzRIxpb2dzj8j7y5mrisSIW9vNmaJVS1lzPdbpKeuQmafzT1Drv0MRQBX1oaliJIv9EVmeiKXgLe8/0cTLdSBzVQCv8OmzlXMgxeevzm9O8/UM1ZrU3XsugDVqj125zmv4CGhx8VE8zRRysrQecMcGk8LYvxNBWS411KroECqmu0vHgQi5JDhvFmNG+A9tINF04x/MkvWBa/3rGz1BnID0cDRdwj5hTY4el16y0GSL5aOW6FRYCnFyk0fSeQOpWerwsb5jJJZts8msxuYjBQ+IXVWOltOLxKct/a4QHP4CD36RUy4J5mIedJ1Pi+Y6rxZRhQQ+mioew1JI65Gpb8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(366004)(396003)(376002)(136003)(39860400002)(451199021)(55016003)(54906003)(7696005)(110136005)(478600001)(82960400001)(316002)(8676002)(8936002)(41300700001)(66446008)(76116006)(64756008)(38100700002)(66946007)(4326008)(66476007)(122000001)(66556008)(186003)(71200400001)(83380400001)(26005)(6506007)(53546011)(9686003)(86362001)(52536014)(5660300002)(38070700005)(2906002)(4744005)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?b2zDgAflelSbnOCWYF3BNI7QdzcSdZ/PehEsLN36oLGW75GLo3hAlgJUbYZG?=
 =?us-ascii?Q?qf/xAufZ7Iru7FWoYhtjfQGnFU7GUPOfDyOiTDkCvGUD/NpJ5S7/OQ74PT0o?=
 =?us-ascii?Q?XD8P/yrmzEKEanFDdjN2NYNI72JqjAfHxiVKICZnIfmjSNtbkAkK2qKtmos1?=
 =?us-ascii?Q?byvtq/bf+ESWf+qFhE2xrS94CC/rQFloX8JNP9PFoZH47oI/YeibM2JJ77OV?=
 =?us-ascii?Q?R+2G9UVyQdskLlRv2msghOjw4WOEBg0Bhy64QPpxTBHU1FSSbY6Di0rF+UbV?=
 =?us-ascii?Q?0oFwUzpOQB4KACXL8AqEEK2ebP4jt/ndjeNTdcQY/sz4mHDnWBWo484vfn9q?=
 =?us-ascii?Q?o7gXKT47H4uiP5qhF7yJp2I35+0egKYubKiTMDhSklLFEZwnOT0sCHBwvqlR?=
 =?us-ascii?Q?7hhVnpaMQjeBbEz156UXg90pfeI/O9DwNwlo5BULKYVb2QHT8crqFPzZi2Yt?=
 =?us-ascii?Q?GwMNdqW8WHSlwqYYhM52H4TTSLzNBwmRzqTvgLiKy32PCZtRPV6JPkpRBTuz?=
 =?us-ascii?Q?cx5iTM9A83X3Y5fFdmrvw6XLSJBsv5ohMMk5nWVdb2SbGeXdCVjaxsz8ZSxR?=
 =?us-ascii?Q?pZwnd0EyXaDd1yuv9HD1pKjHJ5sdZk7MNfQQpsBhLf5o/k+YmBIBxq4cLJWp?=
 =?us-ascii?Q?RH8qakE4dBQgQubFieAzW5FIgNipia6GXUags9EBDeG9rlEZi/En9+VTj/J8?=
 =?us-ascii?Q?28oakq/QgbTMdP5Cb5o8MfjZrxOLAIV11WAX6FfJK3E/j0dRR5k2Zww269DR?=
 =?us-ascii?Q?gIZoibp8czhXv/OtvL3LO/BMN1SS+Pu9n+IsC4eXQ8p6mIz8pMQHedBwN0Y/?=
 =?us-ascii?Q?EAB6APPQJdMB9RC1lGGpMmTvYmDn4mkISEKjxLqK0f9uHaLGXFgtOh6zZAqm?=
 =?us-ascii?Q?JGvaMW7Ltpyw2ha5Q1P0zuWVXMjpVa61CtVQf6CbxhV8p01S3a9W5UVQM9Uf?=
 =?us-ascii?Q?K+SiyX+5o+lWHZSVi73HjolwJEcZ4M9FHu+ieBI/QlustsvpyZqcSf/XFF95?=
 =?us-ascii?Q?XmeBElftkzWSVxSGgEm4IR0KRFL3ICPSFNfj4lu1elQtOnDIKsAj2dHLM4wm?=
 =?us-ascii?Q?Q90dbiOfXCfGGM92EcH0cWoNpDJ4l7UhzUhV9mMsJHyXy2+a0p8fCJqvEnez?=
 =?us-ascii?Q?4ldz0oWeigRJHlpg5+T9rpF2NyORDVFdyWOUPqFXGJE8sDlIjgjcup5DsuFG?=
 =?us-ascii?Q?hO4XyrItKfAHjpgxupFCV4s4IARY75piYGUlJsdLNaa+YpJ/AlFu4UoGAGPJ?=
 =?us-ascii?Q?dxrIufpKyGfDkPwjCWFq7/okXCinG94L/tAbZtWPVAmWpk5ZnW0+ji7HwFex?=
 =?us-ascii?Q?lLzUfFwVdhKgUFGa7kC2lJPkCReGuKp/fi0K7jysIGEn/oxWF/U4+2yorRu4?=
 =?us-ascii?Q?NsMPNO7faVVZIOkflzxjOjBe8riYfTb2oWjbYKZenH8FKt/Ael6sNGynzSkP?=
 =?us-ascii?Q?obKwWUVTqMzduvI6a/IA7AAeHG249pQVoIZY+i3gu4e28Xn0/4xQrfTivra9?=
 =?us-ascii?Q?v4N3Llv011ROny6jpLe7F/xiH5XjeYiF9mRdcng8cZwPQWzexs2usOniUAE+?=
 =?us-ascii?Q?g5loKNOKLL2cyVHjn/BVBSy0FsDYBX89JiDuQnBMzWcjDNiCfZozBXh296Ol?=
 =?us-ascii?Q?0w=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b6495b78-2f19-4cf5-0779-08db6721f52e
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2023 06:39:34.7994 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nfsO6sCkI+gl6215j/gQLH63rjJVyxdaw0/Whz+WH07LDR4or15OIFm3T7+mHahl/plwWNBrLfTbSfb+MTgl92DZO9K/2xEzkan9BVoYYAE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4822
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686119979; x=1717655979;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DvbbLI17ILbZr+a7RaOTZqevx1Mv22KL0dqU4mOLkW8=;
 b=cQ66yFffwkK3eTV/JpEU6T745vBznimMElV7Mhbf/Xo9/7+mtnfJ7d46
 TeZG5oHyWmaPm34ET1u1JGxAbDsMTCkLpA/VvIAmI0LFHjNSLiufqTf8T
 EBOb3FwdPjcsmOZqpbIN/JDntGOosRJ1DCPEq8OT8hUjg601aXNLMRF38
 GWq2y8cXMEU3XuhyLfAHCFMifErVxNiht+S4sCACi5R/w9C34Vl41WInd
 DC2QJWcYIeEoBUKVK30Blz8sJ9m4eM4aac4dMo1xnZ9ZExPrge54ny81w
 ls32n40YIO6pJV35oqXIh9egA0BbBei+s7s1jXy6Cys5WgLpxTlv/Yuz1
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cQ66yFff
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 13/13] ice: add
 tracepoints for the switchdev bridge
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
Cc: "simon.horman@corigine.com" <simon.horman@corigine.com>,
 "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>,
 "dan.carpenter@linaro.org" <dan.carpenter@linaro.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Wojciech Drewek
> Sent: Wednesday, May 24, 2023 5:51 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: pmenzel@molgen.mpg.de; netdev@vger.kernel.org;
> simon.horman@corigine.com; dan.carpenter@linaro.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v4 13/13] ice: add tracepoints for
> the switchdev bridge
> 
> From: Pawel Chmielewski <pawel.chmielewski@intel.com>
> 
> Add tracepoints for the following events:
> - Add FDB entry
> - Delete FDB entry
> - Create bridge VLAN
> - Cleanup bridge VLAN
> - Link port to the bridge
> - Unlink port from the bridge
> 
> Signed-off-by: Pawel Chmielewski <pawel.chmielewski@intel.com>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_eswitch_br.c   |  9 ++
>  drivers/net/ethernet/intel/ice/ice_trace.h    | 90 +++++++++++++++++++
>  2 files changed, 99 insertions(+)
> 
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
