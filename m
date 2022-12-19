Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 23414651507
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Dec 2022 22:38:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9BD0481A6F;
	Mon, 19 Dec 2022 21:38:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9BD0481A6F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671485911;
	bh=kqjIc1Xi6iCXcMYZrz5ZyGb+YaTkfcjuZCOfi7/a+vw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Azfh/ST0+iHPyqr1cddGNoxKXbEaZnNwYJJvVJUHgpVMgvCYfu9D1+acHQaL2nDZC
	 tFz+vRhcT+kY6ElPGW8rStSjI75qxTvUDfK/baO9RvPqXt4aZ/Mi6HniOjJGYeKJrN
	 Sh1wbskM0iryaWdhkT2Njb2MK9VugaWinzdQ5X7Di3aMi5Aku9hx0hLro4fQe0G2sE
	 ouZwtjOD+Ntef3qS+4Aoo72vgBHc9fXaV3DWpg9fEgBgTKd9TMYo4q8vTQ8mojZPF4
	 5lA3O2t2B5lbJ1HcCF8j40nuzyczhYD8Txi70RDng0Q+G77Z7j+PTUyHIXLO1fXyTq
	 1qXygaRLENnKA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iuUojjCDNjwo; Mon, 19 Dec 2022 21:38:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 90B6E8141D;
	Mon, 19 Dec 2022 21:38:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 90B6E8141D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AFDDB1BF368
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Dec 2022 21:38:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9500260B9A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Dec 2022 21:38:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9500260B9A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JfWGkGJsEt8H for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Dec 2022 21:38:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 36888600CB
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 36888600CB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Dec 2022 21:38:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="405707416"
X-IronPort-AV: E=Sophos;i="5.96,257,1665471600"; d="scan'208";a="405707416"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2022 13:38:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="896167979"
X-IronPort-AV: E=Sophos;i="5.96,257,1665471600"; d="scan'208";a="896167979"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP; 19 Dec 2022 13:38:23 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 19 Dec 2022 13:38:23 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 19 Dec 2022 13:38:22 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 19 Dec 2022 13:38:22 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 19 Dec 2022 13:38:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IeNQIbgrtcMcSxqjFWxjrfqorScBw29DDqzS5zr0iyqRuq9NWzmE5paH/RRpv8J4kXMh0vDMQ1HxYnusporleYQBwSXJSyYLQsQiEhBfBb3427w8FVt7uCMf/C3YE/46jxweAgp5R7BK1sdx21VP1MNGaTBqGqj56J809wosxAIyvTfQjxNjllp1Nk8OW0vLCXnj6fT7TtWvwCf5RxTCyNYPsDaATAS24oIynP3fMxI3aDy03nWfgZpOWm+l5RSm3p8ihvxOYnK9yW/VsVmvOycJS3gVhrNgucV0vJfDjzkaDZvT1HBbFxvFA0lVRrg+HM0pMxVx2xriUirT2T9sGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Va37VAKR2Fq10as92Vy+jj4rhG1qpGerfvfAnPolDSQ=;
 b=h9AQDQjNHYU/1k/4z9Z/Do579TVp1sUx1eDGKntP3UoJPS2pUh3e8lgxbpovbI+rAPCAWVXkKBtf8eBz2PdaPk4rSqP3lSSTy32O1ifP0NmVV5gKhY6Y7ic3vdshgYhvsvLiv/lCzSs97ixSkOGRe6sHnetpwOj3KACXwa+MXwq6fX23LJj+5VMAKOUK+d7PdNPY0OWFchRC8DxGphUsWoP2EjF643VWozqgJixxkR8zwb2iXLiQDAkedA6jaw7CdXHNwnrDRZLg28OXnDS59r45plTdjRu4BvU+sfcXA6cAts/afEhbP4TUkQajx1zY+oCB+DUJpKNz5iNAY07mEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by LV2PR11MB5976.namprd11.prod.outlook.com (2603:10b6:408:17c::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.16; Mon, 19 Dec
 2022 21:38:18 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::933:90f8:7128:f1c5]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::933:90f8:7128:f1c5%5]) with mapi id 15.20.5924.016; Mon, 19 Dec 2022
 21:38:18 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Temerkhanov, Sergey" <sergey.temerkhanov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next v2 1/1] ice: Move support DDP code
 out of ice_flex_pipe.c
Thread-Index: AQHZE8fVQRoh06IGY0OA1qJ4d+Mj1q51u4ew
Date: Mon, 19 Dec 2022 21:38:18 +0000
Message-ID: <SN6PR11MB32297FDE6E9ED6D4B6521062C6E59@SN6PR11MB3229.namprd11.prod.outlook.com>
References: <20221217220947.3232247-1-sergey.temerkhanov@intel.com>
In-Reply-To: <20221217220947.3232247-1-sergey.temerkhanov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN6PR11MB3229:EE_|LV2PR11MB5976:EE_
x-ms-office365-filtering-correlation-id: 7816cdf9-aec4-449a-7bbd-08dae20957f5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TpYTc7kFP6nuItEYHSc6Um2bQ2Dkfp1fMiGTKCFqUMyO95VG9RW5jxBODI4OBB3GIU6WAQCnmmW8dNp5sRNABY4JmDzOqMyWX18jxS4GjaBsbhP9k0mRm6vwTF5W2QIFI8LHScP8FnMwe6c8/tI2Hv0pxoGwN92Jyu3KCrnpirAxNRBKw6DGBXBrs3OR0U5W1Oin7ciTjEbhjxIwzqJkgFO6E/UH7NJDLUfAEBdtmgJdzrUZ0b7UzOnJfVYr2geBnq/nnZP7VjI647RlL1/+ap8xlgqWMXx41AxmAmpqtzjtbhvgl/aoM3Yfvyz04Wyyxwx2T0PFA5dixzPvcD1612RnhNrdFc5vxvE4kmPF+lcbYf+uU2hXIv0mRxA+1/7IndCY+1oeh8UBw2TPE/HP6MtHYEnSsQPBeWkG3033CpkYRFBtb+sxIFtH2XMlolHRFznP+SJHHMcKh7BFi+pzSqjw0CzKAjyZlXJhQJYniXYjjSq/oo5gWl2hPemJVX9nD7ZdLGTPQ5LRg7NugoqHqSFIcVT1BviUA3Oz2hYnaE5hawsAQ7bLxZ3C7Hmp5/qgIEAh20jeobK69QIhwvgfEmoYYtO7NoDZwNT2qC8N0AzQyoZiv2kO32uKroIN0mP+4qwP1rl3oDQFL2061jW2hUY+3DDdZ2C/ZCORybynb7z2Qda5XPI7pmo3OTpG6CVyWKwgiEtX/cOZN/+nHHTfEgdIebbr98E3UZy/oD5odAo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(39860400002)(366004)(346002)(136003)(376002)(451199015)(316002)(4326008)(5660300002)(8676002)(26005)(9686003)(186003)(122000001)(33656002)(107886003)(66556008)(82960400001)(38070700005)(66446008)(76116006)(86362001)(66946007)(64756008)(66476007)(7696005)(6506007)(53546011)(38100700002)(8936002)(52536014)(966005)(71200400001)(83380400001)(41300700001)(2906002)(478600001)(55016003)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?bAN0VUfdlvzImI0tnpnsLTTkwwUCVaZ3AEO8etT8Opec9B7JAyopOPItK2nj?=
 =?us-ascii?Q?TmUURdw8h9ic9IVtJmI3hrkOfnFbiyGrDTsla/y7jSv817lFWFmIpsTUtz9Y?=
 =?us-ascii?Q?QMy2WIac9cvJQ2jlJCrqIvZVfHotVn5PpB7w6u9hE5HNm/dnAzvedoDMZVdZ?=
 =?us-ascii?Q?tnTOy8oQBXBl6HSW+Z+eqG2VG0vaqJRPHuaE9vzU1IYVRWYST+qjtbOihwU9?=
 =?us-ascii?Q?NxP0CeGfwoUOY1HlwPsMYo2tmvzGZM/gRLvavUHxyN45KU5ji3yzXJ1Bk3sT?=
 =?us-ascii?Q?X8EV2/L/WQMAVwQJNp3UThPtNTRdx1T865ZlEWBV3ExC3/38BChcpCSqMaug?=
 =?us-ascii?Q?wleQgaV6syFMhyyjw8rBftNl6vIU2Ln9ZxV8Vu7fYAsPti6un2MU6q72X4Oq?=
 =?us-ascii?Q?ddzcrWB8lu4jPijfWZ8WDhT6Pm8tSuvgckkXEXrrSjLXVoCCC2N4Em3Eh8eS?=
 =?us-ascii?Q?irWGm5B9iCvgva40mdLbF8qbfCrS0swr0qsrYCTlvCrMNLdh67Qs6IRXvaZe?=
 =?us-ascii?Q?rcjTxoCxFuTTyrihDNqZ9HC7QsScpWFz/0C2Gp3ffMZJaCQ2Au32F3zNMznb?=
 =?us-ascii?Q?0Jdga49EyoI4mBzwgG+YBL9j8GSg5rb9KGRFGYgvo2WQGEe38b2LTH/p54rn?=
 =?us-ascii?Q?f5++/1zS892ttqxJBp1+GMvakzVDVvkg6Zh8NKUV41OcQMaOWqOPauV2wkRo?=
 =?us-ascii?Q?k0le8be0pHFAiycsZW5bgmntSrE5Ucq4kPlajF6brQDuOnewwbcHCZah2JUM?=
 =?us-ascii?Q?MfryCOfQJvEOo5SUZ4cEVDT1hFysfuT0nnhboTyVYFWUDosZdnsQ/T1djKfz?=
 =?us-ascii?Q?lOQMIzFG1SQzt9xpWFxO4WDQqolI3ctsMGvNKOHjcm8SgS7Y/2cbHN9r4NWF?=
 =?us-ascii?Q?eghIyNtlwaYVtGjWx+279y0HOUPefgeHJ42F3hCr0/UPXiHNERHDmEedR4+M?=
 =?us-ascii?Q?9hUjKlhVJiSoi2xF3mvibe7cIv3JgwCmoKh8HeRZisUj4aU035q45pkVUpPs?=
 =?us-ascii?Q?QqYTvOpGHkNBRIhA7RO1DC31XDail+0ceDQBtUlO7gS5xioFg3Kun+ULKzpW?=
 =?us-ascii?Q?NZ+/oydi7pC2lClxi9x0s8FvNIS1pMgeWPzaNbI6DnJ9fb52eKWN1BFv4d0g?=
 =?us-ascii?Q?2h/JED0ect2UBU3eJDfLcxpROUSUL0i3KIBHr/Wlf1uaaYkO12SU3iHl7UJd?=
 =?us-ascii?Q?4PQkcNsAlpGhJWLU4zhGPO9W22RwyHN+TYUy0AlUBmrIlJd48f6uOMDqIsSE?=
 =?us-ascii?Q?YSheXOfyG2f+jrr4NyIOp0UGTEMiIT7rKS1KnCLFaz8GyQfdsBvLtVJqkFiJ?=
 =?us-ascii?Q?OZA1wp5nrYOrrHsagomtIEJxYBcuj9oHvA04vooNEZf1HX6TkorcKsr9NQOl?=
 =?us-ascii?Q?2QLZkXbC6DP3L3iGWoRirWN9x8CuD+N9tcuB/bFMahe5jQIXlgX+ukwbQL5v?=
 =?us-ascii?Q?G7FdNuZw9fUALphxyzeNWpsJ9dv6O78TxkpdcAnUHWB8uTSnQZyuL/3w4I0w?=
 =?us-ascii?Q?HBYqY88FsQVV9YjC21fF6EB/E3olitaxPk/uDokNtD4CdPPwTi53X8HxRUqT?=
 =?us-ascii?Q?3b1zKrUreoI6CBvOvzBh5WjLq27Tcz5GPy9WB194lAZmm0LGDE0p1Ymnwzs1?=
 =?us-ascii?Q?2A=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7816cdf9-aec4-449a-7bbd-08dae20957f5
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Dec 2022 21:38:18.4166 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tekOvOg4e4zqkz8vRqyK6qaimdkc9vDLPw8Psbuosh12BEw3XQcRo5meWy2gDVCEBW/cJtljCPdY/RK8iP95uqFDn8zFrWgmbj2hWK/QUQg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB5976
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671485904; x=1703021904;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pdhwAJYmNuu7YMB+6DyjSQ45R47cB2D2QUUNGm8zAbQ=;
 b=R6yrCG7YyKxwmU2RgBH/vEUlrk94bai4QzW5Afy+NxL70yVJ5eIBGHsY
 8+/8C/xxzC9sv5ktJyhetXFDtl8SQVYo+38lDCJEKZUoDpqjlD/yaW3EH
 YBOwTCyKoAzzP+BBokItdEZm8JAwxMEN2PucYxetxn78gFeOv+ekI0Ext
 742IpPwN0e2w9JukyYPcclPF9HYexyXsjGu+2oCnwrl67+O3g4w+K+OmZ
 Ebb6LDyiU/TjAp9VrW0B6TrsNjX2LJU6pdya+YhCH4CYyXlKO0k+0/dPp
 CKvgeq/G9bH2Qz/cj8CRhinL+Ya0u9XHsIrJ4SHIjroi/2Yfx7mAilUHc
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=R6yrCG7Y
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net-next v2 1/1] ice: Move support DDP code
 out of ice_flex_pipe.c
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
Cc: "Temerkhanov, Sergey" <sergey.temerkhanov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Sergey Temerkhanov
> Sent: Saturday, December 17, 2022 2:10 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Temerkhanov, Sergey <sergey.temerkhanov@intel.com>
> Subject: [Intel-wired-lan] [net-next v2 1/1] ice: Move support DDP code out
> of ice_flex_pipe.c
> 
> Currently, ice_flex_pipe.c includes the DDP loading functions
> and has grown large. Although flexible processing support
> code is related to DDP loading, these parts are distinct.
> Move the DDP loading functionality from ice_flex_pipe.c to
> a seperate file.
> 
> V2: Incorporate latest changes
> 
> Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> ---

[...]

> +
> +/**
> + * ice_chk_pkg_version - check package version for compatibility with driver
> + * @pkg_ver: pointer to a version structure to check
> + *
> + * Check to make sure that the package about to be downloaded is
> compatible with
> + * the driver. To be compatible, the major and minor components of the
> package
> + * version must match our ICE_PKG_SUPP_VER_MAJ and
> ICE_PKG_SUPP_VER_MNR
> + * definitions.
> + */
> +/**
> + * ice_chk_pkg_version - check package version for compatibility with driver
> + * @pkg_ver: pointer to a version structure to check
> + *
> + * Check to make sure that the package about to be downloaded is
> compatible with
> + * the driver. To be compatible, the major and minor components of the
> package
> + * version must match our ICE_PKG_SUPP_VER_MAJ and
> ICE_PKG_SUPP_VER_MNR
> + * definitions.
> + */

There's double kdoc here. I assume that's why this warning is popping up:

warning: Incorrect use of kernel-doc format:  * ice_chk_pkg_version - check package version for compatibility with driver

> +static enum ice_ddp_state ice_chk_pkg_version(struct ice_pkg_ver
> *pkg_ver)
> +{
> +	if (pkg_ver->major > ICE_PKG_SUPP_VER_MAJ ||
> +	    (pkg_ver->major == ICE_PKG_SUPP_VER_MAJ &&
> +	     pkg_ver->minor > ICE_PKG_SUPP_VER_MNR))
> +		return ICE_DDP_PKG_FILE_VERSION_TOO_HIGH;
> +	else if (pkg_ver->major < ICE_PKG_SUPP_VER_MAJ ||
> +		 (pkg_ver->major == ICE_PKG_SUPP_VER_MAJ &&
> +		  pkg_ver->minor < ICE_PKG_SUPP_VER_MNR))
> +		return ICE_DDP_PKG_FILE_VERSION_TOO_LOW;
> +
> +	return ICE_DDP_PKG_SUCCESS;
> +}
> +

[...]

> ---------------------------------------------------------------------
> Intel Technology Poland sp. z o.o.
> ul. Slowackiego 173 | 80-298 Gdansk | Sad Rejonowy Gdansk Polnoc | VII
> Wydzial Gospodarczy Krajowego Rejestru Sadowego - KRS 101882 | NIP 957-
> 07-52-316 | Kapital zakladowy 200.000 PLN.
> Spolka oswiadcza, ze posiada status duzego przedsiebiorcy w rozumieniu
> ustawy z dnia 8 marca 2013 r. o przeciwdzialaniu nadmiernym opoznieniom w
> transakcjach handlowych.
> 
> Ta wiadomosc wraz z zalacznikami jest przeznaczona dla okreslonego
> adresata i moze zawierac informacje poufne. W razie przypadkowego
> otrzymania tej wiadomosci, prosimy o powiadomienie nadawcy oraz trwale
> jej usuniecie; jakiekolwiek przegladanie lub rozpowszechnianie jest
> zabronione.
> This e-mail and any attachments may contain confidential material for the
> sole use of the intended recipient(s). If you are not the intended recipient,
> please contact the sender and delete all copies; any review or distribution by
> others is strictly prohibited.

This footer still needs to be removed.

> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
