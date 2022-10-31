Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4683A613040
	for <lists+intel-wired-lan@lfdr.de>; Mon, 31 Oct 2022 07:22:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5E19A40126;
	Mon, 31 Oct 2022 06:22:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5E19A40126
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667197354;
	bh=Qz0gnhmecR5XVygHlfrSA+Jwov9lpG5A+onnVusRlw4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tnq0fy4q851Da1otghtiL6iluTg+AlGI3O2oLDmeH6E+WKUrH3JSBTtWQkoCcqpQC
	 L3fDp0fjYBIbkLpDWEWDfnDFdIhwkKD5Yurpvv20ZPT0A8j8ZveMWbikSQjKwiB7Vn
	 tRKwC7uBNz7EJ4CDBI8PaCO5oqoSlszf6JORRRFrX7/R/E9OiI5+qh24OPDIutT49J
	 Z45PIUPUBVEzuEuRW12aF2May2uPkNS9MYm6YGLBRiHPfciNOlnoiYBclUH9K1s557
	 wfX94KsbDoLe6jhJJ47++7KLHM3upNGPQevjoCucEyMgNhefNFasxArwxRSVI3uo0I
	 EntQ7BAAl+0qg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U-nW9du2bHTq; Mon, 31 Oct 2022 06:22:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 327784011C;
	Mon, 31 Oct 2022 06:22:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 327784011C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CDE791BF3A1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Oct 2022 06:22:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B0C2380DA8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Oct 2022 06:22:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B0C2380DA8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dtUJSCmDqEFe for <intel-wired-lan@lists.osuosl.org>;
 Mon, 31 Oct 2022 06:22:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8A18F80DA6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8A18F80DA6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Oct 2022 06:22:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10516"; a="289216829"
X-IronPort-AV: E=Sophos;i="5.95,227,1661842800"; d="scan'208";a="289216829"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2022 23:22:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10516"; a="633419170"
X-IronPort-AV: E=Sophos;i="5.95,227,1661842800"; d="scan'208";a="633419170"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP; 30 Oct 2022 23:22:25 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Sun, 30 Oct 2022 23:22:24 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Sun, 30 Oct 2022 23:22:23 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.44) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Sun, 30 Oct 2022 23:22:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P/BuGoDS/DkNAQsnajnA2P5vsLLAIQeg+UnGIVrbwu/GoOU6nKl33w63LHQyAcR7mHffQz6BlUi++LUmauzX270KFB9LtBL+rrU8SPAwpb2jIC5CzvTZqHQkGtjdv78B9iAEuLEWmN8JF2sZN/umtXAdj4TonOOsq7PyS2PccgYPEJMWEWVr2m4fs107DkF/VE56uDPRHh963dFbqSHyGE+zbmMDUZkJDhcrBZEblfwiZM3OdBm+y8vYZREdQ84a0Wyp+QXBDyb8Ei4iu9Y3vPhGjAFP1BUjN3ySGQ68EoZrxIqh8ESYDkHijmkcCfjrGBe8nbyoVKe6tTQ6w9FLVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SCJvdu5fN6pfhRN0BzMIaFKjlj0o74PkNK4yrpKPMDI=;
 b=D6ogA2+r5zdhhrrS64HB6ihepgqltLRDm9T0adDmtoysN5Qr8w1PSgylM7UxDCHhFZr38GtwO+ip2h7z/gRhp38ld/g93KPfSq2ABfoWdRXRtkojV22oHfulzLT5d/Mj3UPBjxR5BGOJSK6XbxAy1psiL/cLAoXuMlngg4ca4+n1Y6XM8XV/GiwFYdHi3dW+dS4k0GLbzAlY8ZvRqvAg6MW68KYX95Sw6e9nTUkYza0LuAO8/YZ+h/cepyDNYeE8dCBZxBgheUIzEZ7JZ7hFWwy5nTa6HXJAefklXUFh31n0n40p2Plxnyf3TO5CbWkzFgePr+IBGhiKI+n+IEJ5hA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by PH0PR11MB4950.namprd11.prod.outlook.com (2603:10b6:510:33::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.19; Mon, 31 Oct
 2022 06:22:21 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::888:2df7:7c31:e1e5]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::888:2df7:7c31:e1e5%7]) with mapi id 15.20.5769.019; Mon, 31 Oct 2022
 06:22:21 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Maziarz, Kamil" <kamil.maziarz@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1] iavf: Change information
 about device removal in dmesg
Thread-Index: AQHY54WsOpBW5f5xFky/w5Gfm+NsXK4oExSg
Date: Mon, 31 Oct 2022 06:22:21 +0000
Message-ID: <BYAPR11MB336793A913C96D6C2FCF1712FC379@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221024084955.60038-1-kamil.maziarz@intel.com>
In-Reply-To: <20221024084955.60038-1-kamil.maziarz@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|PH0PR11MB4950:EE_
x-ms-office365-filtering-correlation-id: 25cd040f-0b4f-4f97-abb1-08dabb08449f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ViVzppPEWethUC5I7VoV03DxefH1Kzc8iArNTMCeeWh04joEySjNDkYsiUBFH6SHUqEMjVqdqSFjABYQSnc2WlmbxTxePDZ9jvO/JlQ4jI3CXwUGtHEXgf1kKTfoF4/CauJhZJiflPDos9+TqEMtd2gsIil06HapE16+pxnN2rDkBWPLZSrtlh/3b3cnXlSbqxFIsWOVMwkSZYLD/3r3Zlo7pA+cv1dkWSXG7M62QDkzmkir/ajGj34Tlo6Wmsz4nx0qt1VGpdZ319Mc14ZV+4OSVKpFDxVYBN6QxaggJ0UuaWJbdyD5yZc2iVzRxciikFloGHLF5IbC/cMnyM9mOqxIIwpoRYe3kVVRK3YnlzmjFqiRGiuRXH3yqqXz0cwb8WAUzKOXqz2XyqfeSTimcIFZND+OMEuqnsgn/iWBYHJX7FEnBPuIB05w/ovErynoTO3WSKgnlGGHMwVakr0I/ZGySVfROzUkIgcn3ZHhEk9gSMc+2qFkUfgxOj9IrBJY15mSXC0axmQaiQ3i1UhJBrBSRFo7ydS4KBts50RJtyen96yXx5BV983f3KJ01e7o3SJZuFb0IgIjeqxAkLT0YdxRPOc5ji1IrnaRTpLRORh6X7jRQLt57GBpHw3eYX0kdXFsCl+TFVAl7ZlnvbbdgeJwFLg0t2jFrM/ETQMhVjdgu2aAYBLr3Y+qVNyYK2KLuPU+BVE5zHNDFoO9HPsiTs84SfKt3iru+5RP+MzgPZ2K+4L6W8duY8rCUgN6WZamjDkTjWnnswqoEDOmiNBHZA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(376002)(366004)(396003)(136003)(346002)(451199015)(4744005)(71200400001)(54906003)(5660300002)(316002)(7696005)(55236004)(4326008)(478600001)(86362001)(82960400001)(8676002)(110136005)(6506007)(53546011)(107886003)(33656002)(38100700002)(52536014)(83380400001)(186003)(2906002)(66946007)(122000001)(55016003)(66446008)(9686003)(26005)(64756008)(66556008)(66476007)(76116006)(38070700005)(41300700001)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?pZ8xDJm7dqjYSzAAcDb3WT10XFBknKI/SiFnN1g84YyzP9jgxafQE5IVKfbI?=
 =?us-ascii?Q?3nfpHLyT/uAwrPOgYWaVhiQB2C9YeQJT7/4lZfhdCpIq55ONND25mf8tI30c?=
 =?us-ascii?Q?l3bnxX1d403I3tdA47fcBhsqnhNHg8TxYyS1QWKFUCMiKaTPC3o7+8eSFBAA?=
 =?us-ascii?Q?onUoy9dF6ppfH+sL8p6relPVQFmF8aRMArkx3pdonMQ8sPodzTqMGDCUppM3?=
 =?us-ascii?Q?0tNf2Jc5tkDVTvjLw5zl3gi2haHpara0JrogFbiR8zNYUHWp7ZhkPOGTeu6s?=
 =?us-ascii?Q?S4hv4Ld9q7UZLIaHmeHsilR8+966gCMTl+ev6uN9HrT+MgDYrhJjaZxyANPa?=
 =?us-ascii?Q?3w/jZ7JOD9URYiaxWKgVBBBJ1cMm1T3xaMbzZIKEQgIKu3Zb+VkB3IPHXDym?=
 =?us-ascii?Q?3iAOq9Yn2BS36A9hZCbbVn2EAuOAqLJCckmTY3vxa8OvKkp0mSyceJr4hzLj?=
 =?us-ascii?Q?163A93X4OlPV8fJOJYxqSgQ/6H/hNpGI7DLGwg0sTaR621PxVk45bJ9k3/yb?=
 =?us-ascii?Q?+gq6mgF/TRxRDeD81X73CD0nK1uLt19zmi205huYrDyRosK0sTXAeQpMurjM?=
 =?us-ascii?Q?Ph88eInaGJEWdvJ3DIK7xoTBHfTr4SAmGADOVmlzJRvZO8/xBvKaMG74+7FO?=
 =?us-ascii?Q?oOAiLx8z9KJGNE/ztOP08+us9/iiN07InEukBGkXUiPl1HbxL+endRblIunM?=
 =?us-ascii?Q?mjPr95YXFug4F7D7/TlrfKrIlDSQXtgeHj++7kiahiXwidi/et5j2SbHbKuT?=
 =?us-ascii?Q?OaySr34VS6KZOKixczWWkFlEB9CmzfQuD80aTIvK4qZzuk47PDsDMn77j9Ma?=
 =?us-ascii?Q?R/GhPxrkLxUB+DyKzreZai0zNMQ7hPRcZtnO4pNhdIGg20uKhoD50oCdm8c1?=
 =?us-ascii?Q?VCmVu0aEUxko5ivmLzBWk//829Akry74cQhmZwBOZiNk9N9Sk1qsGAWvmkSv?=
 =?us-ascii?Q?KZYvX0eFczTpKKo8DB1zAVFx8JrY8gPHMlRu1rxt6p/228pLPZ3LInPnCal0?=
 =?us-ascii?Q?WqftTkSaVxTi+G2rJr1gb369Rez9sUkuNI0WcCGzLlxueLZOcaCjWqCWEd9r?=
 =?us-ascii?Q?syJzpqGEhjv+a0o/UWDO3e6FzRG5Mn7Xm0CDx4wcEvGw5rW6+jo/puKV5d8u?=
 =?us-ascii?Q?fVsku+LIp1TpqwzTayU/0OWxVVsMjHVLNJLy43hLyBQoW1I/SLOZjfZAw6GT?=
 =?us-ascii?Q?ZIQeBWYxzCWkqzdU02qaDTLVEloz/6oojB6M5u2l9ztJAGR4E/P3z4/YX9Il?=
 =?us-ascii?Q?0oEujYF30mhVhAUvAv9nO8WCKcWy02NR0wI2vx4H39OC619jPKIhqB34xdCb?=
 =?us-ascii?Q?3gteRnGRFgSpFerSAOZCYBa5ZdujOgYHL5voek1zPxkZCYD+KmeVei0rOJSh?=
 =?us-ascii?Q?mPuCdSRRHrV7elL7FQVnxUBp4VlAG44Ny3aK2NXufrsIH3B0V82DyK5zmfYJ?=
 =?us-ascii?Q?aOwzXarXPyVlRgZqGdMKbOU/QezhLqpLpeWJfrtoKrLzQtI8OV+w8XJRK5A4?=
 =?us-ascii?Q?h9Q0rDW6L9GTdorTskO8Fzf0pCrWutyuiEDJ8WxutGYR61fN+BJOwFQAeVt+?=
 =?us-ascii?Q?4wAbafRHK6XX7tEegKuV0AnNGvss0X2O/i1wj5jm?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 25cd040f-0b4f-4f97-abb1-08dabb08449f
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Oct 2022 06:22:21.1168 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zRY98audGR1SaD1zveJM19X3XdBhaI29T4/HvPfMQKJOUw/2Cyjh2NIMTRdLLYnjvJX1HDDaXlq1wMro7TL+0g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4950
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667197346; x=1698733346;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=m7IcRu9DMaHIa/x9OeAFoQL0JanI3GyOXp4PvaXSDSw=;
 b=DFa96AX/yzVjo3q1adhnJ4iuh7/7joJe1Yoll4a1BwYYKWMmq0BREDks
 qfmnk4ivtukBn/NMBxIYS0Sq4h4KSpNtxbrJluGSbHa9JgzLHMXVQ9inh
 46nPxZBuSXnHTSRWP2WBhb/XjKeXM9+IyRATmZY7WHWvGOnNqVAjolj/H
 e/fURPBxXwzDrSXrAIAvKqRCR5u64Ne2DDpvzs+ICgbj2YQjVOZvRn2Xf
 IHb2QexpW3HnnJNBL4XW395r9aShhZdZvYt/geVvDXSbPF5p2HWkwIiF8
 Nw5Qcn5xMy1zr5DFxehbby/p6C4K6mPiFCpsGzYwPV2NpNYZ2nefJZTmC
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DFa96AX/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] iavf: Change information
 about device removal in dmesg
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
Cc: "Maziarz, Kamil" <kamil.maziarz@intel.com>, "Staszewski,
 BartoszX" <bartoszx.staszewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Kamil Maziarz
> Sent: Monday, October 24, 2022 2:20 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Maziarz, Kamil <kamil.maziarz@intel.com>; Staszewski, BartoszX
> <bartoszx.staszewski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v1] iavf: Change information
> about device removal in dmesg
> 
> From: Bartosz Staszewski <bartoszx.staszewski@intel.com>
> 
> Changed information about device removal in dmesg.
> In function iavf_remove changed printed message from "Remove" to
> "Removing" after hot vf plug/unplug.
> Reason for this change is that, that "Removing" word is better because it is
> clearer for the user that the device is already being removed rather than
> implying that the user should remove this device.
> 
> Signed-off-by: Bartosz Staszewski <bartoszx.staszewski@intel.com>
> Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
