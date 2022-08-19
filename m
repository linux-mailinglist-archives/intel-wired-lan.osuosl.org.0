Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 52BE0599992
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Aug 2022 12:18:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1F941842BF;
	Fri, 19 Aug 2022 10:18:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1F941842BF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660904306;
	bh=WvngdInK3JmQc/dGqwBBeUWDa9tsPWyF+ev1dGYBFdw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=SOet6cfseXGywdjp+UOLRkXODn0HgFQ7luEYwsfmb3eOTzE8h4YiD6LjnvFw0awEH
	 PCr/Ney4UUt0JUFHQAR7+NqRmY1oWxRc/UrNqvy5fEK2FNv6/9stMbqS/M7xK4bayW
	 fEUK4SDCMnPkMEVygZjIUmnl6DzEVXgoWy7UaPhsgIIIilURCt0UnlfAImM//BLkVA
	 uMF6YyKoe5CTDEvZmAyLsOjMkGfssIrJq13xSmRBIcgAh2F6NlS9lSX9NtN4dmSwte
	 8p+Qo754JdEpCB4rwg7UItITn0lRa8lICELvDQA5yxoQXiDFYuFE8DCyyxrV259V0r
	 fxvL6N7EepzyA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MK8Jypm-ENiQ; Fri, 19 Aug 2022 10:18:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 13E7E842B0;
	Fri, 19 Aug 2022 10:18:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 13E7E842B0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C85411BF867
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Aug 2022 10:18:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A21836080A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Aug 2022 10:18:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A21836080A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 14Mio89JmGND for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Aug 2022 10:18:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8AE2C607E1
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8AE2C607E1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Aug 2022 10:18:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10443"; a="279946505"
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="279946505"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 03:18:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="784103808"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 19 Aug 2022 03:18:05 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 19 Aug 2022 03:18:04 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 19 Aug 2022 03:18:04 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Fri, 19 Aug 2022 03:18:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cfbKwxAKAgoOgLt0yLwJY6qD6dVNANqC7uS81fcoNJOxVssT7wCJed0BJb6yJ0Qbu4cd6APRIHxauUQ+wD3/OJpiOrdsA6K/n7MmIQBIXX0V9BOzv0ZkP7bfG9JPq/6fgrjiF5Zbo7PVbNNk+OqqPepszxlPnBkhFzxT4JJR41gcVjGTx4QHovXx+WLcHxJCJv4qeeDmohJ1jOenQxxbfZjxv4e12TDnqFjMEqixDTEKUJKcCFWfDyl30JmdaKSYcpno42AOuKBr9XmvM7pmdN+kxvytlK+UnyJdR7bYoH49k2HJ8RWvT9il3dGmI5hiNAQLl8KD2c2W+s3/Uw9PVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=phCHxSROVDEtbNWGmsIWZiGmwhHkXFznVr5Z3r6ggxo=;
 b=E9e1MRHOPOSUwZxlUETscmdlULsaD45lBHsDWsLkXdPCrVJViR4iwfnRK0xOttKwmwnjdygecXwkNN1KumAop69zFX8kdsY/xfqxPBayM4peHBl3PVP98/eMRG9Szwvf1KpudGNChw+5m6EwCHqQiw7mcBBhBIy+7brnayUGkX7Va0M8ylqyEDhyFSOlFLJbkUIccrjBVDLHKG7erS0USSuNTy4xVgMsmFBEDKbvjlSR/JOGlw+z8EsCGWb519xEzYDCWtCNBSDLv9rA4xMdA/CXMvboV08oHGsm3oLFUlDBb4POjnOebfwUM53oXOU9MylwtUA4LLK6F7Z8fVvO2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by BL3PR11MB5699.namprd11.prod.outlook.com (2603:10b6:208:33e::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5546.18; Fri, 19 Aug
 2022 10:18:01 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::bca1:115a:1523:fb82]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::bca1:115a:1523:fb82%7]) with mapi id 15.20.5504.028; Fri, 19 Aug 2022
 10:18:01 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>, Marcin Szycik
 <marcin.szycik@linux.intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3] ice: Add support for ip
 TTL & ToS offload
Thread-Index: AdiztNMUDPhQtfVyS0CWgHX5aIe6nw==
Date: Fri, 19 Aug 2022 10:18:00 +0000
Message-ID: <PH0PR11MB501347E61EB382796AE664A6966C9@PH0PR11MB5013.namprd11.prod.outlook.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 46e77d07-44fb-4875-11ec-08da81cc1879
x-ms-traffictypediagnostic: BL3PR11MB5699:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NMpAj079kv3D48uEYHu/c9qXXpnIhM91MyH9kPwvZu0PBravCatGyatKfaKjBtxncOp74JubnSxcQmNgaZIbocA5sYQM1/I2U6XQ8ENWJZd7u/k5H/KRx+fpFIOxkPFrhNk0fHKYdkOq3EOi4/SHkMdDhM9Epha6j9/Y4AcLSn7D2NlKY+ZDlbegh4GE8qCZa8zEQLteRNJad5KNu22ZOC4zmO78Bo6ljl4r4O97ePMLp8yulVjy23FvHOtKIY+7Cis08sUhrL++/bwtJHPL3u0i5wt6o0CJk8IhXYcy6hueyeVE6ssRvjfg/dsWuFhD+4Ynw8JKqbibjHEURFOP4XZ5pCv3e+5BDwBSeRYCOFgcPu/Ktx9F1an5ziQR932n0rfU3jkqYZ+KTHB7RQCc3vxiYlYxj9qZfFUIh3lNWAQSi1WxYVfsFEoqwlb1YQKUsXlODPcWdJvOwvd+h/bnKHUtTBkyrMp4ZV0HOuFWK9nq2paI+s63wY2vxDkoJk6Rw4sLjJEq7xdO4ziB+uTdo1QiULLCqgVSUdn5y3LVstdFSKzNauIOMsN48EMSZahJe221/wqlR48dZyQ+mIMARTEulXukY7LMw8HKld6I4eMBKyokp1CwMy3M18QtldqootaItkNcPvMS7Ka+W8Ft9yQTvwxAhYYnlcvFFTipL1BPqJturO6e1hnCtdhj+I2LYIGkHc1e4zkeKy2UNX/4OEtokBWlLnVAA7TNP/SWgBWfoh89ah4FlTncfOAqBQ8slWS2GQ2/k8I34euDAc0DEM5qBzBzMdc6P+K8JNIDz9I=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(136003)(376002)(39860400002)(396003)(366004)(86362001)(38070700005)(82960400001)(122000001)(186003)(83380400001)(38100700002)(76116006)(110136005)(316002)(33656002)(2906002)(5660300002)(52536014)(8936002)(64756008)(66946007)(66556008)(66476007)(8676002)(41300700001)(7696005)(26005)(53546011)(6506007)(9686003)(55016003)(66446008)(478600001)(966005)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/u4Tau5BSUGU5+luqNgFKrirGnRlqOYXDezjeCUe2V01QiC6iZH6tyswVmds?=
 =?us-ascii?Q?y+YleaXTaU/PlhkOGvqypn0X0kQx30auQCWTeXjF6OkPGo8T8gEWNRKAgtva?=
 =?us-ascii?Q?eYklw65Sb54ptVQHh/ZsO0iV2kklpXD2+bCIn6R9mTkwiweuPFV2OsLz0iLm?=
 =?us-ascii?Q?5LnUEtRQ44ZRmi1lc+PtSNI6AKlfVH3Feiu9D8cbv/dByag1HInlAD0bmvWc?=
 =?us-ascii?Q?+x0yv+E2zAoxvi4OWxfquu4xpMXHapvQwYNP7D5OaoM5HKdMeUsH9LG2Y6jt?=
 =?us-ascii?Q?ukNRKPIhMyu4erUEa8+GZnMEGscwXDXOp7AdtHntsrW69SChyhsRmp28IqAb?=
 =?us-ascii?Q?IciQCwSgxcIxDbHXyEwcwI+ngtItmd3Sri/wMeRQLwJZdJak1GGrBYwMHmwo?=
 =?us-ascii?Q?is4mmGGOa8exojX/oLp4Z/6XBEkLiiSZL2ZeGPMWaR7HTk5blb03ducyYm4N?=
 =?us-ascii?Q?jX7ZaNAUiFtXJpNp6KV5zdUdA0IYjbYOfpuwGZVkyd+CVRuC7mleDVsRhqo+?=
 =?us-ascii?Q?M920kCqLIw32SXbUZugBI7DVvU7pt4Z3AfBtO7XTxQEQGdiDfp4Dwa9WJk8l?=
 =?us-ascii?Q?8aGU6Yuu6IK2DgyqaSDMH2aWArEcBXwaohy0xDRhHV1teM8jsiyvClhp6xP2?=
 =?us-ascii?Q?MITUr9a9d39CQXFQa2FZdoVqIrA3uHbk7YrnKL0/U7NIFsChaCN2LjGpTQNO?=
 =?us-ascii?Q?08nqebidwgWGT3AZigTITFq4m3QP+KFkF9AsMps618ybW2TP2wStcNG3x9bh?=
 =?us-ascii?Q?y9js3qYAWlwu1oLzHZYmkRJjC22UGF1HEzeW/0nLfs8qn4EQrmv+8H4mLyGt?=
 =?us-ascii?Q?VkkliU/XtPsO/EhvleFAC93yBa1WailwTuTB9VWhDqGieYKSLL7aJ/ffiRKv?=
 =?us-ascii?Q?fGBDtSJGujeMMTqsvAYAYS/xByCWdTbIK5nPSbGCWHcRIA3FWZxLidbKoPiO?=
 =?us-ascii?Q?lf3HQYJ9SoMatJshTBgHxKi0okc9wlZG6eR7VxiNBE2JRxjIUkId3Z52w/SX?=
 =?us-ascii?Q?kypM4m0226o8zls38rmTIzX4Fe44rTTBaBd8Z4LuQFVzMTQOjRWxY0k2JJD4?=
 =?us-ascii?Q?aRJvNyG/9nbh/KAZaFADqVElv8HECf2/adY2KU97hKCHHunpOPvXBBahND9Y?=
 =?us-ascii?Q?DDvWBvvl6wl3X+vwmxRzB4mre2RoNYYP6FdhhLN+rLKWo/F8I6GBmVycu6a4?=
 =?us-ascii?Q?kFvPK9JXAruuMdsZBRRPCnSKF3yO/2iLcoL+WHjIrNvLRXiEn3doXfTlcOvA?=
 =?us-ascii?Q?UPjwnhi01IXjO//sCpTvWwlTFsPQGdKt+8OEToekvrc7SYz0pLlqXw3jo/ej?=
 =?us-ascii?Q?3BANavzvqBExfvOU0ZnB7s0V5Rju0G715yc1yI0qxqsno1ZRDn91Yl/d0rQe?=
 =?us-ascii?Q?Vu/I39JeuKSOOho6Sd8EnWpVt+HJn0jnZuhtkZahQwpTzb79s9GOKFzyThGD?=
 =?us-ascii?Q?e0RNajq32jFbBMK3dIxXhRD6xSQuZaqfG8TMuEcNqXW2Ayq/XkJsnZc7BYQF?=
 =?us-ascii?Q?V3mljqigIhyoypicA0btSvRqu1wuhd20BmvKyV45bjXb+77jPoxBtpB4OF94?=
 =?us-ascii?Q?lwL4WpNVtJZh9KBwdbUcj3acv26GUBnivao8gFXcoZEx7GHGdgx9F+MrN+O7?=
 =?us-ascii?Q?RQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 46e77d07-44fb-4875-11ec-08da81cc1879
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Aug 2022 10:18:00.9620 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GYS8tmapJAqOaw87VeLWwthfd+dE++XnrBBgCL2UV+pRZzXmJdMj3SmCgoMZY12sGUjlDE+R5g9pL3beBmiFc48Ve97j3JhQ4gQZH2BBlTs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB5699
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660904299; x=1692440299;
 h=from:to:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=2biWC0Z6zC1vY8s9VNN31l5FasUB7w2k6x08ie+I/1U=;
 b=SiyAXOSN80UcU8+PnrTDZ3pPTtXe6QnY+d+yerCFhUt55S4C6polGqGE
 1q9u0CgFu0GPIZCPT7zpzrmaoysTlJkPT0zEet4TkIVPVzK8I23HuNbeX
 HxhO2nyS2x/y8kR7eQvZn5Z4tP9+s0yC7sxSleFtgYH/qDrthN1m8ffIA
 UiipJLX3eqj2ueihNsNBOZC4gjWkTzFdWluE5VyzAuna7p7o0wt40hVbL
 j22mftCv9xAIcNRDvAPEUmtHwARSU3X8iS63Wq3oFdClDvfb+t0pB0NQg
 OsYPQm5MaHWevIKODLl/H6k6XEAjEptFZATKkTOQq6GEpc20JfQ4+rw7Y
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SiyAXOSN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3] ice: Add support for ip
 TTL & ToS offload
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

> ------------------------------
> 
> Message: 2
> Date: Fri, 29 Jul 2022 13:03:37 +0200
> From: Marcin Szycik <marcin.szycik@linux.intel.com>
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v3] ice: Add support for ip
> 	TTL & ToS offload
> Message-ID: <20220729110337.11243-1-marcin.szycik@linux.intel.com>
> 
> Add support for parsing TTL and ToS (Hop Limit and Traffic Class) tc fields
> and matching on those fields in filters. Incomplete part of implementation
> was already in place (getting enc_ip and enc_tos from flow_match_ip and
> writing them to filter header).
> 
> Note: matching on ipv6 ip_ttl, enc_ttl and enc_tos is currently not supported
> by the DDP package.
> 
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
> v3: rebase (update ICE_TC_FLWR_FIELD_*)
> v2: wrap bitops conditions in brackets, use be32p_replace_bits to set
>     TC field in ipv6 header (thanks Alex!)
> 
>  drivers/net/ethernet/intel/ice/ice_tc_lib.c | 142 +++++++++++++++++++-
>  drivers/net/ethernet/intel/ice/ice_tc_lib.h |   6 +
>  2 files changed, 144 insertions(+), 4 deletions(-)
> 

Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
