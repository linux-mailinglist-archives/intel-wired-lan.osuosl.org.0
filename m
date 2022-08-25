Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A613D5A106D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Aug 2022 14:28:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8B5028136A;
	Thu, 25 Aug 2022 12:28:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8B5028136A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661430536;
	bh=ZAuLiTOzfLv4+/d92ueF66thake/iKF7xy0s2HTka5A=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=iweE2MMmMTZJIM3eUjFrxRlOXe35l2WPAgbxJOvu08841lB5gQ+c5orDB4lQd3GFw
	 qACqAgPh4A4OJiGHcCyrWD/AkvsKywvIHJrssGpGrfDElMV91sivFW7vcgcKqb8i7r
	 NfhadKix7a7KendVe5E3cl6Ff+YYmBlmFuOkc3IiXgAbxxUU+q/Zlw19UTo2cNwBA8
	 JZKVOwfSDB+q40Om9DeCQczarmwpI/7FVgTFy9LVvns7tjHT7B8FlLcyovbU8ANJKa
	 oUb/zajyJPCT52N4TwSsOI3XlmffBB0IMzvEpW5Kx2rwg/XT9sxBkf4GO7vPzdNCam
	 XgiZroYou8/FA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Np9ewmqvEqCR; Thu, 25 Aug 2022 12:28:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 893EB8143A;
	Thu, 25 Aug 2022 12:28:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 893EB8143A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9BA641BF3EB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Aug 2022 12:28:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 75C0B8136A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Aug 2022 12:28:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 75C0B8136A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V4HbvLOAYE83 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Aug 2022 12:28:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4692681339
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4692681339
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Aug 2022 12:28:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10450"; a="380515715"
X-IronPort-AV: E=Sophos;i="5.93,263,1654585200"; d="scan'208";a="380515715"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2022 05:28:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,263,1654585200"; d="scan'208";a="561008028"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 25 Aug 2022 05:28:48 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 25 Aug 2022 05:28:47 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 25 Aug 2022 05:28:47 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 25 Aug 2022 05:28:47 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.47) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 25 Aug 2022 05:28:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PRDTMBpKt+u5N+ojlm8oriuYZb4P1qK/7NVgpOsygWMuJuI77CgR9L+AnbXsq9s2GnJsK/3a86kqh0wuyVmWt6XczgT3CwYz/hUQZ+t7KxipIgh2Gwt+WlZt87NimPi7sz+u/Gnu9mdZvmHdR+2ygMIMdi/5wB2366YXVNRU0TnKhoK9Ygss9aVZWx0IjKAIB5zTdsuYpKL6VTspjwzwQ7BVSrQUCgyaiEN622dCLm7lNvmnhrnwqcAxvrlGDsqtmQqzCT68J3bfSQQ8RqT7az/HWDXTtFU+2Pi/nR2w6V5VH89GBGNzGPWMJHp+PRMpCXGtgE6ZCwRjJ1lBJ065Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0C22nsjhKnLJMCczqB/Nz6DQpOfHIznWoWILHAIbhy4=;
 b=NbhoVI5jOI5bwK3HPlLoGqjtfIJWXTKxUy2AfhBNilKqQuJjzU29v2wvuxIkFgYkpHwevimBPyEj9n1hPBkOv/bFEulpz4Gmo/XNQWx4QbSsrZi9guPrNfMp5UJY0EqVtRHyEwEVaEuzDTVORq5/XbHXFIPn/GUK1wnuAqbwkz9ZyWt4o1cQIUhXPd2SB0My/P8Yj0tPTZdIfWpZmAN/Jd50XUELGuFJg92QAt9CwEd5o9snFO7Z6eNwL39Jh+vfhpPgIqP1JCdd8k0IUTEHp4ThuEXnpoo8bolyPJFiwlnNNZcBY//eXZKEWE+NsSXNQrZTch0/8+FNZS1DcCzDpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by PH7PR11MB6354.namprd11.prod.outlook.com (2603:10b6:510:1fe::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.15; Thu, 25 Aug
 2022 12:28:45 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9%4]) with mapi id 15.20.5546.024; Thu, 25 Aug 2022
 12:28:45 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Michalik, Michal" <michal.michalik@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH next v1] ice: Check if reset in
 progress while waiting for offsets
Thread-Index: AQHYtueyegWPXOnVL02Gj9woLYxoDa2/joHg
Date: Thu, 25 Aug 2022 12:28:45 +0000
Message-ID: <BYAPR11MB3367352B0297C06643B9B0DAFC729@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220823115626.29063-1-michal.michalik@intel.com>
In-Reply-To: <20220823115626.29063-1-michal.michalik@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5fa273b7-2da9-4e42-2f38-08da86955aaa
x-ms-traffictypediagnostic: PH7PR11MB6354:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wWix+ySxBanyAQqs4DUITBWj4frgDGkgVekeHOp7lo8lWcn06Xr7B2TyX1q+rPxgPgpltCud69OGw50mFyrtCVMlw7bPYPw/TWB/9nBTpu8/7J32+3HR0vJ+Q9QijJ9AWeWwSd72u8eS6c4w2qKCd5d7PLgRmIVVjYiS6i2HEqoyxMA/y0djTo/DEib54w4e1dXEOVNqIw1d0FMKmDVmKyrTbeoYCITdl5P0CTDvH1ddQPP0NUtQGLDInDCcsru1beJh7Nnt/Gl1BL47s2JExlsAs9eS0RxJ0mzAoDEdINDt1x+iPQ1rgoSIdkM/Tr5Kv+JK2G0K8uVcIMPd2STtayEm7+mbABxMN8CWmyT2qF2+gZ9muAqhWkLSBj4jmhhd8CL9Le7+rRKrPI9dSlHhv1S0Q3nMGNogwaEk85yHQ9Uf8hVNRA6H3HKqmTC8aS7Fuy/WF6T671WZNNfsOwW01Jvr75q89DjJVRUPChZDgSQKMekHubKSDeyPsikUsA9Hdiszwa9dkhLJzvB3Tk8mMZ9LmhJUKwgebyhZQh8t193URzdWg+WkZWMzXSrjgnfjtOW5MDAV/kk6W+r+aUss+yB4cRBAdnpbGPbNioEO140RS7ezpCbz3EVCaA9jjRlro1r7JJwbreDgTCZZ0NV+wJ2NVmd6pc4DP+RMzod+ytcrZxXC/aJeo7lqAUg/JKQjF7QwdXrlZnaxaxKHCC7aquB38KJhWoWCh8QAeLrOXTJvnLcSeUeEr3UrSiDERrEMOR8VcCqG0WowlnT90ZeShw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(396003)(136003)(376002)(39860400002)(346002)(122000001)(82960400001)(86362001)(38100700002)(110136005)(4744005)(8936002)(2906002)(8676002)(66446008)(66476007)(76116006)(64756008)(52536014)(66946007)(66556008)(316002)(5660300002)(186003)(38070700005)(4326008)(83380400001)(55016003)(41300700001)(71200400001)(26005)(7696005)(53546011)(6506007)(9686003)(33656002)(107886003)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?eEd970cJ4gkm+/TZ+YdGpQDTrpuazmZdJkKgl4oNfNDNgxSfktnRVz5wPcoC?=
 =?us-ascii?Q?V7gmp1YBb6uJCwVool8Ku0txQBSDjY3N3Aon2pcQVNiPf+YtmGk5dQxnk5EM?=
 =?us-ascii?Q?7equOvWa0B0mas4mVQiwEO/GZFV8Yfax+CuZK1Tp5lMWFAMZMfTqvl0EZuZi?=
 =?us-ascii?Q?WpasOXwo13gZf8GrEQWFG3mI9YbCt5hARCVZEjzjBOoCCz5SMiDhtHGCGBGP?=
 =?us-ascii?Q?DG/mo0hYBrfW+8IK8OMs1aXaSgyFP+J12KcVTsqYMlVtDk+64J8/FeKg/xnb?=
 =?us-ascii?Q?4lHDJgyfoBM0wVjobtSK8vX3JF8fXHDC63dIT4naLuj6DXAjj6UkKF5VxSwY?=
 =?us-ascii?Q?x39FxWFcY1/Dlv40hsqGKsI4PXK3B70jiCZcvifsuZtoXrOSKiPYSdQu5jKM?=
 =?us-ascii?Q?pkKRPYQ1BhWSzYwD6U0vVp1UFa9pATWtohcukusiMlqXTAdVwADt/q6r5f5v?=
 =?us-ascii?Q?7TGXOM2C3iNsE6s3rpKD9uBTl307QCRl5XBFmFm1KLvwFmLqhmBBfInoKUpx?=
 =?us-ascii?Q?6bhT/rsYfK0Z7uQwDb8bTE+J1RNUj9Byt6YCpn/UPeIOY0bRZCFppKBEsz1e?=
 =?us-ascii?Q?AAThRh93BEC0gRwEWdJECYOZroeneWDAvH+c9Y1l3HG4yKE8vFWZPKRH7UM1?=
 =?us-ascii?Q?fihaO7/18Q8BmeZVJAYMKLvA6COzH1T7KCE48nzzbHownpqK7AigJ1aw/yuH?=
 =?us-ascii?Q?i56q5omw4EOR1x/tm8GscoJkprZIlQkAjGNqP3roEeKkWjQrIgng+3N5LB7t?=
 =?us-ascii?Q?DGH/43PCEVo8qWPKL81s60fgGPP7TJh7dpcV5EwFt0d2hackikMpc8onh54g?=
 =?us-ascii?Q?jnoNjPAMt66Am2UJJyiEse4LSGNKs6xBdbAUHJ8JSXIEBaMBoQ9DqNIvtNow?=
 =?us-ascii?Q?eCe5mxReYtEJRh0qao7wWvgZdeTRsr5WjKnj9gPpduthPNYul0FeYNFXlYH0?=
 =?us-ascii?Q?myTOT7w+Do2A+tBMmwrpLvRWylyR+SRRNpzATW0ib2tZZwQsXi/MtiL1SRqx?=
 =?us-ascii?Q?R5LlOs+ERdScnweyDmQbZHlMDC3GW7fUrFATmlzBHhxDSXrmxtPyi+rAF1sn?=
 =?us-ascii?Q?GbRp9fcdtoe4XR3WH3E91yER62Q/D7HQkl805/eW4MmBai7pVOeGRpfaAtwS?=
 =?us-ascii?Q?Z0mNGv/TZVOIyuIgReRr7i3uEH4mzfpoS2gCIFVOWlAaC5EsQwb0jRUGNy4k?=
 =?us-ascii?Q?hRJvN0i6u+506TAPGjNlB2ow/ZkMxgeaXzuUrKLnGk26OCPl3Eh2gyjMN57i?=
 =?us-ascii?Q?UjVPV3F6ZCeM5l73+AudUc72i0RobdIjzy1Pp4POmWBC+/SfAK/mNs/c68Wx?=
 =?us-ascii?Q?QJVt4P/lWGiKvzY+4RMPLUySI9BujWuneWR8ZWUIfFrLX2n3DAGxMk96h797?=
 =?us-ascii?Q?WgWVH3ywwCQukFegsKpe2fijchjnWTuVo4ZNE9h/2ai85eE5Ru818jgI7snX?=
 =?us-ascii?Q?G7Ep9pPdzybGcY1jj1bTak4+cxW0TM28EW3evSmA0qzlVHV855yliv5Vk+M+?=
 =?us-ascii?Q?WS82ARRKDzcSxlFvxHZT7QW3/BGEl/vmyoz4Xo0diS8p7kkolg0b6b51tCjL?=
 =?us-ascii?Q?qk6wfeE2XzaDhkcVc9VdJPPoOqYe4q3WU5ASbmCz?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fa273b7-2da9-4e42-2f38-08da86955aaa
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Aug 2022 12:28:45.5229 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7rUPvImnMz7wG5fbZqT7YQ4DgIdG4k0Z+oja1VWhdHlZrTUiC1mXHBfRrWOt+2J3uUndixSsUzDpX+kIqFhPvg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6354
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661430529; x=1692966529;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LWvEz591xYdd5JWmA2lxazAg68HPQbKgiVCSDu6SVWY=;
 b=lDW6xURhCKiBb4iM39Mi19MIesgNKtBQyiL2kbA901WOIpvrjn5mT7NW
 EI9225pLHnzJty3M3MCiEfLEIXIpB9xskYAMB5v/p19hdmPgw061ir25z
 veoe1f1kXljS0K93T3lqhqAdT3vqi0b/Qkb7VMO++BsFklfVdl6fegqfz
 b5pb0QEVNQ0YMD3ZwdPROvbmPVlXYLk39uef+U8b4Mx2inJ/J82zPVTwm
 Qtl2NuHlGCk1mMdJKgp4oAAzHa+kHlT99wl+5Cg4785uUZWxu/4cNMM1K
 vp9atIbrSGdXj7H0BS/KHRSNgauM/Oe2Q9VeDbXq9oC9gG3mZhwPLEkQh
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lDW6xURh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH next v1] ice: Check if reset in
 progress while waiting for offsets
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
Cc: "Kolacinski, Karol" <karol.kolacinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Michalik
> Sent: Tuesday, August 23, 2022 5:26 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kolacinski, Karol <karol.kolacinski@intel.com>
> Subject: [Intel-wired-lan] [PATCH next v1] ice: Check if reset in progress
> while waiting for offsets
> 
> Occasionally while waiting to valid offsets from hardware we get reset.
> Add check for reset before proceeding to execute scheduled work.
> 
> Co-developed-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Michal Michalik <michal.michalik@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 3 +++
>  1 file changed, 3 insertions(+)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
