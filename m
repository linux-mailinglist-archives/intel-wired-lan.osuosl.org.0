Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AF0A813101
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Dec 2023 14:10:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8C86F4367F;
	Thu, 14 Dec 2023 13:10:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8C86F4367F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702559443;
	bh=hGfJ0XvGbqFzKFnN+L605fFP5fGowsfD5mctuiClcqU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZF6drpwl5wJWXOEK5OmToFtTBc+qCnfi+p1/2mGTRI2uBl9IR3BamJ/cDbSx/bmPD
	 AXQxdomGORYI3rWFAcqm/Qo1KF6ObJmbpWJ5TjB0cTWZYKISIUtH9RbTfpTRkt+pI0
	 eMgTvoRgta1YceQNBfNSXGy1TLekG64B7JGl9v6obOTDXvy4s4MD88ATSLLzTaHQiI
	 10zrCtMbqyLsonuNGgJJez+6zVJexe0aWARONIw7aVXolLRsjZ8sTdycqRWTtzra3b
	 MoZVAr0O8j7AABredN8iRhXn1WDAOuzukeh/qOdorcSBTvP6uYKgkhhaGEWBRYCAei
	 m/fNgf57dYCnQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G_sJz3utlGAC; Thu, 14 Dec 2023 13:10:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1F2F9402F4;
	Thu, 14 Dec 2023 13:10:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1F2F9402F4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8BB6B1BF36C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 13:10:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7113F60EAB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 13:10:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7113F60EAB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BzPmAVaDjqks for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Dec 2023 13:10:35 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ACA1660E8D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 13:10:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ACA1660E8D
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="2200236"
X-IronPort-AV: E=Sophos;i="6.04,275,1695711600"; 
   d="scan'208";a="2200236"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2023 05:10:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="777894335"
X-IronPort-AV: E=Sophos;i="6.04,275,1695711600"; d="scan'208";a="777894335"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Dec 2023 05:10:34 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 14 Dec 2023 05:10:34 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 14 Dec 2023 05:10:34 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 14 Dec 2023 05:10:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n3PKdnQsBVyE1XDIaIUGvZjTKNpj5Gh5cOzrb2c3gd8YW/k1+Je4zIUOugJJRL+CQiHwf+2qFZa/TaLKXhMkmTYRHjmXTFLIQI0EoSwx1JJ+1O6bfjNE0wJyzUZjQwN0JlmGEynvLo8/KPkyu9pMBRnAFun53+PVH4C5unswGXsYWMWhwpPEy9wEiA9O4Vo7VBu41HZpTVHdjGeEDTBrhOgLDzTPC6tWUpy4pkI9xrXR+t4nsRODh4jH5X9dsJkA5uWksuyf1/SjjHFy+bUYC4WyYuKu3P4oCba9SaC+cdoDLcAameaHWBzr+UXQzXvKHHUwuA24swU8W1UHQqR1IA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dGisOdLbdT6WLwQNk9BmQy1ebGqahZyxz+mzpayZS44=;
 b=WFi8nNyJvfBjilRQSRmMt8TvNyPPRMDbm3Xs+DhmbElHPtgqURnpBIkH78gvHH+MRpDWVS+rIwaLyo/TLzTgZG85SsFuthUbzCRo/eCvE0qdO6lLamJZCo+CwcP8fKxgr1dKpDaaoDo7jAUvVTBAS4N3Sr6brfjaagu4x+DDtk9+9LsnE8kV2UUHlDe8SDFsDpiEAIHtqxRk5P3wRtAlSrXg6nuh3g1KRJ0oKr2XY48qBRJVA1qSEa8eqbz30eg/VgJ98ciSR9A39stVRC96QBINgZ+pOHdotb4Ao4Creq1To9W4lFH9lpev6uIXWg12t07iC7YwyjT8AzL4xRuP6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by SA1PR11MB8542.namprd11.prod.outlook.com (2603:10b6:806:3a7::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.28; Thu, 14 Dec
 2023 13:10:30 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::1498:c32d:2d2:975c]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::1498:c32d:2d2:975c%5]) with mapi id 15.20.7091.028; Thu, 14 Dec 2023
 13:10:30 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 12/15] iavf: field get
 conversion
Thread-Index: AQHaJ9/7M/2bLTBQ8EWNwqi+V9qB1LCozgGg
Date: Thu, 14 Dec 2023 13:10:30 +0000
Message-ID: <BL0PR11MB352125A835D6DD2B0355503C8F8CA@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20231206010114.2259388-1-jesse.brandeburg@intel.com>
 <20231206010114.2259388-13-jesse.brandeburg@intel.com>
In-Reply-To: <20231206010114.2259388-13-jesse.brandeburg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|SA1PR11MB8542:EE_
x-ms-office365-filtering-correlation-id: 1291ec45-a4dd-4704-d6ff-08dbfca60c6d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yft78qqg+AmWO8zOO9OlBEuVIX9Q1648YnSdENE9C4NClq+MeY91awjx2+Ss84m5dn0mUQdm2V/tygOXTf4fCu8SXCsAhgfaeMSW2e5vXco0eouNZr3e0PcPpzWxLCjiOvUnaMlSa8hlPxuyafEA42axwLWcEKB+DU9uBAw4t4Ds7j1WcpS0HzBArMCKZ8R2YpwBELfRMfX+GXeA2qK/n9SYYkB+RtduXruJXuPvhSDOMhX0cbmggLh/zfg3TzpV9AIXlVaV3n8no7HNrgrRAmcu8R6N3/e5DO1QJwPUTTIa6DL4Oi+AgJ5qRlzs6eh1xFbcENvp3l62eaZsez+UU5bXJksBGhkx6dZcJS72rTAYbe1fulquJCFcUmixHDYkGAyzu1vwFldIV1yGwi10jgzrYCYmS6pGEeRlrHy8nzxHRkoILMfH5fE5EWlPBTgVzxgILVcPNOr11rOTC6SinKTCK8+zH7cfNzBNwSumi2T8HYeUKj5GTbxVMj8XJm8MGc6S561kvMwuUSKVh9JT61iKU0Y60mvGnX7KAnhuOtQDVGcXv3r6FIQqT6YYhQWgj7p+/4rKDbP3BtpcoWxg9bdNEd0oAGaHcdPtKeNZxuEOI+G563UXLPHixOyfmhbz
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(376002)(366004)(39860400002)(396003)(230922051799003)(1800799012)(451199024)(186009)(64100799003)(53546011)(7696005)(6506007)(9686003)(83380400001)(26005)(8676002)(52536014)(86362001)(41300700001)(4326008)(33656002)(8936002)(2906002)(5660300002)(38070700009)(54906003)(66556008)(110136005)(66946007)(66476007)(316002)(66446008)(76116006)(64756008)(71200400001)(478600001)(82960400001)(38100700002)(122000001)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?IUFj7gXKm2RdRi6irpp5NdFrlJm8SCy2WVjuRRCb85y3zv7jBaNYs+myRYwl?=
 =?us-ascii?Q?wvumILkbZeBbHj2+3waptOFLTlu9+ICm9xZ3i8nxZCDKA+9WWtVG17o6SX2n?=
 =?us-ascii?Q?SHIKhaGwBN+f/bBR0ohPTnP9PYsmKyTdTw0co5Ugsrn8IIlDhKnv8St1jZXF?=
 =?us-ascii?Q?Czuxp9WMXR5VwJrMXLljcHeUfol02jxCsgblitd7dDibJ4mZRnTOvzASiaOB?=
 =?us-ascii?Q?tFb4bDC7nPDqO9XvSAcmiNpZUL+fziv+YQf9FKymtm0hv6NvlouUoJNmnGuf?=
 =?us-ascii?Q?dYpDrnUyrVcbUuDvvzrWN7djeTkhaUrM6heo3y0sDPx0smrwXumRrByha2AI?=
 =?us-ascii?Q?buFg1dOOUl6NDsm3GN8loD5Ld63SIu1oiRqhZMYlwionZQn+Y8USRXDMFku+?=
 =?us-ascii?Q?0MHWIodilGJuPiN53/P79dOpI+R/5PjIwb0/Ng8DTnpGm/6dnwpKfYQ+RYPD?=
 =?us-ascii?Q?PE1kpcHDdthljJMceU6xtXp9nooOu1Gk5XJwvonbzgiP4XU2OyYo6BqjenUD?=
 =?us-ascii?Q?rydUZxSI84sA2pIK9q1GB6sQM3AoNz23hFhG8UBf/vZYOjtCkpdUwAFiGWog?=
 =?us-ascii?Q?uV4KbN2jfCqHIQDLU2lS/d1jgVG2VR5r3A4IVbcIsgL6SXlXAgDZYAanqFgz?=
 =?us-ascii?Q?BzWwJUevuH4yglpprDjJ5g/nIUmXCSBqu5Ag2jAyArp0+PWRW0T0im1YPVCF?=
 =?us-ascii?Q?MWf9oV9J+yq6E/V95MImv/hzwhV1gumGur24JU0AF1xTbEhiHULd5T3aa4FX?=
 =?us-ascii?Q?bwQRz7YTyt6cac4OeWPMROVmhnmOYn8t8JgeRpM70GhGom5KMSfqDGfV2P4R?=
 =?us-ascii?Q?0IIK5uLD9IsRfo8Xv40FYOCoJz8QhRhZHRcIn+fSDWOjaNJbw+o3CFYJ+Raw?=
 =?us-ascii?Q?PJmH0yZ1ZMcaNFpavsVWuwYyiTU1+4xxiVebCwfVUqGxWGvoVkmpxGCmshnj?=
 =?us-ascii?Q?zdvX2mD8LUgxyh0chLTT38Y06f1qMDLeH+2RnysSp6LLsDu4nu8Luy26a30h?=
 =?us-ascii?Q?iSpufCFDMDFWEEIwJOH4nFt0EWN5AjgqS6sBqBVluQta8pYOZwnB+yfcoHfu?=
 =?us-ascii?Q?EBcUZIXF/uFVAmCO25D+k/ORbiBH5TQUYKKOhtPSDRnSNfCL9+Fpb4VxScwv?=
 =?us-ascii?Q?nPCd2q4JvCmDRV5PbDXKiyB6gIxeAHxG8mc0WmAyHLPwXU5nTVwVURZeLA7r?=
 =?us-ascii?Q?xfZKG5v+sqBTclA9VCI2vEJXhMres4g5FHRqpfRId66nARYFHIsvhUhSzkUw?=
 =?us-ascii?Q?B8+hy7C9nJmUh/8Eb49iJMVYMEICP96sHFfnpdhpTlkszXlqKbXG0bzUDG5D?=
 =?us-ascii?Q?xMqoRa8ZuisrXK6/8PAzhoYpCc2gPSx8ZvhhJmdzpV4kMnzu0RlYGA7QZ/Of?=
 =?us-ascii?Q?7HqQO3VRn+h2UFxAiu+GzZwh8oM1uPhSWnJGTxmpDjaDEL8ggibpV8pwBhER?=
 =?us-ascii?Q?YO2Exyz877kLSvVEB5IOXq1lHXcRZkAwNSTeLuQrK9lNNX4kZTYV9+XrYrLx?=
 =?us-ascii?Q?7D9n0O/o0Azzx17Ik66XFjpq3/59DlGancx+m7bg7j5/gr7aVjW9Hfrl8zGU?=
 =?us-ascii?Q?2FnzZN0PLvUonGLgQ5PPQGzs3quolzMYLfLdPMr7kkUgwg7w2qVwul0ypIZB?=
 =?us-ascii?Q?lg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1291ec45-a4dd-4704-d6ff-08dbfca60c6d
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Dec 2023 13:10:30.6119 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TCnQKrPJwNqBXDcadkh7M4YBXKsxDXq4m+nb5IgOA53kvZisj6ly/T47MwstbhglNfnB3vP/rCBU6/g97ZRgq51kVn87xgMcwDWwcD0w6JI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8542
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702559436; x=1734095436;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nF9SCQUSL4rWi1+Zyb9otahAgu4GPR8/Zr6AFI4wjjM=;
 b=Y0ksbOJzrxY3PxslSK9aStl87UbEvWflVxwtrBDkMTnj0Et5LzvkQNP6
 O8NuvUk18lZ5uTaZFZP50nVXpegYDEsZhfY2qPATHOn1mS1xydmgbKwEZ
 2+LmlbOFhm3ZUzpo9zEr2PLAcxXqEVrhsPgmjJ+YQxRvsrWqjDnszc1R5
 zlHc2KIHV6tjmhUZ4v9IHr9Mr6TDepOS6wpJGyJI1KMZ5yiYiMUXi6+0Z
 7kqJiVTh1kN+Q38XSk3g/cUIvH4oC8zg3PWbBPsU9jf/XM4bJXgVn4532
 peVAzCAxc7m3c4o0DbURC10kR04S8STxr1aC+vikIcpcUmBpFwIQStyz9
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Y0ksbOJz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 12/15] iavf: field get
 conversion
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
Cc: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, Julia Lawall <Julia.Lawall@inria.fr>,
 "Lobakin, Aleksander" <aleksander.lobakin@intel.com>,
 "marcin.szycik@linux.intel.com" <marcin.szycik@linux.intel.com>,
 "horms@kernel.org" <horms@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jesse Brandeburg
> Sent: Wednesday, December 6, 2023 2:01 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>; Julia Lawall <Julia.Lawall@inria.fr>; Lobakin,
> Aleksander <aleksander.lobakin@intel.com>; marcin.szycik@linux.intel.com;
> horms@kernel.org; netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 12/15] iavf: field get conversion
> 
> Refactor the iavf driver to use FIELD_GET() for mask and shift reads, which
> reduces lines of code and adds clarity of intent.
> 
> This code was generated by the following coccinelle/spatch script and then
> manually repaired in a later patch.
> 
> @get@
> constant shift,mask;
> type T;
> expression a;
> @@
> -((T)((a) & mask) >> shift)
> +FIELD_GET(mask, a)
> 
> and applied via:
> spatch --sp-file field_prep.cocci --in-place --dir \  drivers/net/ethernet/intel/
> 
> Cc: Julia Lawall <Julia.Lawall@inria.fr>
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
>  .../net/ethernet/intel/iavf/iavf_ethtool.c    |  3 +--
>  drivers/net/ethernet/intel/iavf/iavf_txrx.c   | 20 +++++++------------
>  2 files changed, 8 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> index 11150bdc63d0..90d8f1fcc3aa 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c

Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
