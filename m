Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A1EE394DFD3
	for <lists+intel-wired-lan@lfdr.de>; Sun, 11 Aug 2024 05:38:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 76F9C40BA7;
	Sun, 11 Aug 2024 03:38:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3CgSIsIyFLkb; Sun, 11 Aug 2024 03:38:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9A3FC40C0B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723347522;
	bh=cX2J2sqEJ4bcoqsofcO7CasdaY8ClYr+p0T/NSECGcY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NdRNkvEHMgBnBkmXD895ac9Do6uFi0+zMteZagbKMrpCtcaZevOVUnvRDTyLlevBR
	 3xGmXN9/vXaI2gi2U4UTdr5xl6Kf38C3hC3MSpo6ZhwiJCO5+ZHGIJAplwnz0CuGK6
	 4QhPMG3lvFkm5M4NgXW2xUuBTpbMthYrfqNWvmkf26MYUwvlz5VhntuksFSXhLyDu4
	 NxGARWBQQZniTn2b79/eMZC085QX52/XTWUeGdEZrBDqnNdT8NDeQK6+ce6VLBpU7I
	 2gTjA9lWiFzxvvJJ2Kmy3bQ49JGFtex43+B3ewxXzWDfoJWpVo4DLN3Oevd3j4YMbZ
	 syLSlRNs7chCw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9A3FC40C0B;
	Sun, 11 Aug 2024 03:38:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 58D221BF3F9
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Aug 2024 03:38:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 517F340B83
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Aug 2024 03:38:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yQGUp-qFyAg0 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 11 Aug 2024 03:38:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org F08E840B7B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F08E840B7B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F08E840B7B
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Aug 2024 03:38:38 +0000 (UTC)
X-CSE-ConnectionGUID: /AcQN8FdR1KV6XHlSzDNSw==
X-CSE-MsgGUID: /whTqc0lR/2KEeD8mBGC7A==
X-IronPort-AV: E=McAfee;i="6700,10204,11160"; a="21457769"
X-IronPort-AV: E=Sophos;i="6.09,280,1716274800"; d="scan'208";a="21457769"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2024 20:38:37 -0700
X-CSE-ConnectionGUID: CJ/sE5E3RdyDcbQC9iCCPQ==
X-CSE-MsgGUID: gxN91+AvQjybrnXFInq+4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,280,1716274800"; d="scan'208";a="57828239"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Aug 2024 20:38:37 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sat, 10 Aug 2024 20:38:36 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sat, 10 Aug 2024 20:38:36 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sat, 10 Aug 2024 20:38:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xu9M+6vaeOImo2ttG7aW0lKeNPKJ7+phstOP4pyulGFlFsd4t7TAL7aVHYlNHYekoXl1uaEWp45J/a0nvrhnWhBaIRDchiCRSPWBuTNjVOdWPzcllE6xNrfpGAnAN3R3aTBFudyz4kNQwZ6+nGZ1ngPtORdzSRwJ3Z9NDOaNYnqp+dTgquA43zHAir/8IUTn7iWGHfhOGK1QshgfhVxIu22yVsV/gPZgCiE2neq8F+Twtw/45YWm/kS0aEeWwiQDJQdR1Yp60P0Cx4EpwJUypa2Fzn+/c5uueanW0BShuVU6PMf2ajYkLX6fY1JqvtHhPQmP/Yyrtxe9AKutSwVYiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cX2J2sqEJ4bcoqsofcO7CasdaY8ClYr+p0T/NSECGcY=;
 b=xhm4D8LV+AvjxJVIBiaKou9hPbDL2KyhWLyxP9/2tuRCtKFqgpUeflp4Jjbv65WKwpWAN0wIKeLEnC5ckwn2xLGyD9Zgk6u/XeDbP7TBTUAhoQBvEk82NGg2zimHSQLd0zFKO40daqKyRVV8IFisq38OF4e7NivS+Wl76l5JLZVOVu62rgNNBOwZJJ25rTb/8H7anOVA1Wk7JaPzD239Zhb7ERryXflTjm009ip31b9s0o9sQKAiYWewU2EhGTufypu88Y1kjASa4546K+QWEaUbrDDbnVzsCUVTX/SHGjJ5P2s5cWYUrgpl6ddJMMbCTykOVbaqHEgLMnR0zXkoxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by SA1PR11MB6615.namprd11.prod.outlook.com (2603:10b6:806:256::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.24; Sun, 11 Aug
 2024 03:38:33 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%4]) with mapi id 15.20.7828.016; Sun, 11 Aug 2024
 03:38:33 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3] ice: Implement ethtool
 reset support
Thread-Index: AQHa6LXhmZfJruNW40uBRZSA1zifUrIgWbaQ
Date: Sun, 11 Aug 2024 03:38:33 +0000
Message-ID: <CYYPR11MB8429D63A2A1B7E43A4ECD593BD842@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240807103505.208650-1-wojciech.drewek@intel.com>
In-Reply-To: <20240807103505.208650-1-wojciech.drewek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|SA1PR11MB6615:EE_
x-ms-office365-filtering-correlation-id: 23f82335-9f98-4359-5af2-08dcb9b71382
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?otSzn/CGyIuNBksMMvHH2maMGqThkbadhUt2JtxpQ195I91bcfDsYWfZs/kV?=
 =?us-ascii?Q?SlBq40sMbPqML+z3EnOjcTAZmiT2GiQmRncdW8b99qcTb2Z9EI2grYMjfcgL?=
 =?us-ascii?Q?lyITK0aN3EBoeuIr/ZFXkVV+co5LgpUWLQRPJkYdcNvVITz4BYWExuNWM3sO?=
 =?us-ascii?Q?s1s2evD8fE26saCAIgpYaCxwHkxo9oZtN3Cbm4WIEAW2kgE0jCzCrqrDBHKT?=
 =?us-ascii?Q?p/d6W124NACF9wC7kXjgvVyxT3BIadi4eJeIGGtNeUzaSf1zNCbRmDuKA83h?=
 =?us-ascii?Q?qHkVM0AsSFO5xbGvp+T2UHvUITf9QgIYJbIxrXKZA8E4HCHlV2I5x1pfyAXS?=
 =?us-ascii?Q?QNAMeNabu7UaOeooHnFbIfXU+sqQ0RWjqnW1eiTAgF79Zb0zanc10D6NSKJu?=
 =?us-ascii?Q?8wk+EEGsVV8Oc7ZZD3oOqVz33l2fxb6H1umjczZl7Lmgo6WiqNRBboc0em1g?=
 =?us-ascii?Q?P2yqlkE83086SrgKxmaB1akwFmpsWFflJ5jPIz+2CtTVZTwUO2i4+KA1T4gS?=
 =?us-ascii?Q?YZSP2zXXq0NkGI6GGyler3P7qEilOh5HMmijZymUbffhzgj/wkiBo1O2nqXp?=
 =?us-ascii?Q?+XSi61kAdrbd24eYsbGBavCxecRxNfsQCXBCg/dZA+GbJk/XPKCmgQdjdtU2?=
 =?us-ascii?Q?xCafhjXQygMiEvf4CzsxLwW0/SkjepxvApM/ei3E/IHX+wlsuncw5RVSrCEa?=
 =?us-ascii?Q?6dWlqS4w7lFnftkYoLHrYv05igBzOFFIWX9/iKSnhQ0tZMdRKQbQe2SiXtlw?=
 =?us-ascii?Q?lwdxpx7oE+AnDBI4Xu7liHoXN5ddYJArQfiru/uMRZfiCQYsvJ2VkUQA9Tpv?=
 =?us-ascii?Q?gHVk6g08webMcUmCclym+Y2LZj5QmXvjWJSkObQfVAgmE5ht+LMQNQ5CXfAI?=
 =?us-ascii?Q?PAWW8eSJUzuIQ1UyjtBpaE60484CPV83HnAkushbSYVlzORaFcJltSttSYrm?=
 =?us-ascii?Q?84ytY5YCZDQCZ3SDihae8hngQojYS4gm66Of2wBZ5zHoCGLg3cjQPgEpRGPl?=
 =?us-ascii?Q?0dA96zXjEcGhxl0ZyB+2XG/WODS8SWnxYOmykK9IDU2pQNVfrQVT5Z6K9aq0?=
 =?us-ascii?Q?3L5fdbWY1cnZfhvlUlSTWSipQMElzCUil5rbs+jKB6n/OTgzYytvu786ZISr?=
 =?us-ascii?Q?aqH0hLJkRnlTIPcLMuo5ZZ2CSuAunImPFWCKv7lyJ+F7pxbPTvAyoiyPA2+C?=
 =?us-ascii?Q?OABvrZHMrDbI06HShuNXCZkHLCpspDk/svWlkRR+SdZpoMMTuF4XwFBvmnES?=
 =?us-ascii?Q?KJdyIPaPnQEOX2jAf5JigoZ7qETOUOd1QFoo08VJ/1/s7Funjvj3cyle9F1A?=
 =?us-ascii?Q?VsPWyT4+8EYWWFjPr0nblQgkMnrTtvwgKG7JsQunO/Tv+9/TqOISPnkvbX3d?=
 =?us-ascii?Q?MvxKgWGNmec1p3XgDjWa8UG2+aO2XcU69a/GeGm7oY0mtgeynw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?bVJ4+mwA5pvnhmYEfQC73s5JnlE84PaBR64vxd0K6GB66SrzMOx/fvUE9Tug?=
 =?us-ascii?Q?x9AMZuU1lYAEF/4ozDgR4+4s/Ltc6RKdUzmIheHktiZ1kEGjoWMl2GPRCyiz?=
 =?us-ascii?Q?jzosjqxPIruBMtCb7XDGaQ18wEqyBWhpnc09gmElnqKfLVStz2fHze9DXbML?=
 =?us-ascii?Q?a6ZKgHY8bPcsJzLlszW7eg+qHPBNkejjkKX0ohHSwH3qt07afhzc/tvwXusS?=
 =?us-ascii?Q?nq+MkV5thjcaZOG9aswBKZlVU13PCGoMpWtR+4fHesFQBMBXnOfsjONkFwAk?=
 =?us-ascii?Q?wJEmVa/G7hKHNlwO1V3PMTKCfkH7byb5MtxY9IWF4jSEN2Eka41b7Y28xe/Z?=
 =?us-ascii?Q?2P0/OvMXw2xKQcu0N8OF2GR4Jwiad9kdbb6DXRi/HqCCaaLCahpP0Y447rJU?=
 =?us-ascii?Q?iAmkUnr38q8YB25tu1mEr4tIcKJclVqJr9lxzoWB4ZviDzVl70421v47OOpZ?=
 =?us-ascii?Q?uRTgvVaIwNq7f8fLbLLW61Wywx5eHzVO2IEfGOXnzyqycuCI0JX7AGpDjCkr?=
 =?us-ascii?Q?3vFrb3QjTKh7ek2O5o4HH0167MPs+W6+M1KamqiBAEjXc6KnRWG6S9eWgUn4?=
 =?us-ascii?Q?YC3VdQQYJNqlssa+5bH94lBy55gzeMhT6JdzFXRESGeBw/fivJt6cexA0An8?=
 =?us-ascii?Q?E6o9CZoGtTnvACWOAtYXbL0GyZsKrq/QzGgR17cXWicfPk4PoQ9ZDrAQxE+C?=
 =?us-ascii?Q?fvlaALr6HQYSMSwKBZ3NcekM+uarVwGzGO0pSfq1n1ebkBfbGmZuBVqpGaw/?=
 =?us-ascii?Q?z5mcXi6YJu/fRMmx0sZWhED3Yl06J8dmLnrThghGF9BX597kFDsdFcu9FgDi?=
 =?us-ascii?Q?7UX7PjuQuo6x7KXHkXQ2cDbVfnV1llQWHcvccyMUsguWeeNdcHq2uMRlawqC?=
 =?us-ascii?Q?4YBH1iMEYSLyGRPwX+2MOENaG864kDLPwX567WmfZaR9jAhBD7Isi3rCk7Ez?=
 =?us-ascii?Q?VKU/vs3D1jwtL516HMFysF3AIzRgi53rhckUrJo1k0YWqpMo6JS5//BmpMbs?=
 =?us-ascii?Q?T0uvFYWJ/4f7XJT5dUWA6hpBzfB/LQCfj4Xv3WbHrl0p1TokCbjoTF9hoZ+8?=
 =?us-ascii?Q?GvQqIMBz5XgB4SbwOAtwObbrbKm+A1FYL7I1Og0/hLtJGoSn+AlcSK7mpMo6?=
 =?us-ascii?Q?n8hZ7VWSMYWK9FgSs12odtLIuiVXW3fWQztDenpDu9J013BERmy2iAsTKEqy?=
 =?us-ascii?Q?Llme1yTUdlscWB5TUXTMJxzMt0eCCKQZzL/E/Pg4uWscwf8KzCL1OxcTIe3u?=
 =?us-ascii?Q?SmucL/a0PH3jPT8kwYN0oKJfNX+wOtuZcUITGtoWEjXx1b5s1VH5iHTIDJUG?=
 =?us-ascii?Q?HV9UqYS9k+FS3wWZFpIHQyBj+4hoLDp6KqqfQ95eg0UJYH5L+YjyTmB/dyPC?=
 =?us-ascii?Q?vaHBwTImU12yUrVwM+Var4iad5lWK2QI1E+IFerQp6lYL9HfXEf5kZPdQc40?=
 =?us-ascii?Q?lkfLYrQF58wASGpTgeFx8usZpVOAv2iUR9fcyG9C0a37IUlUGadJXapmRlo1?=
 =?us-ascii?Q?UdLGqMeoYxryHgmrHmqo9DLhc3hpcKASfLFL22WxHj/yiSZu5/cg1dFDARGL?=
 =?us-ascii?Q?5B9Qhnn3JonjDrAoUAfGCyUOxVKF3MzlutWe26k8SaAt73uc7YLTxM4A+nn8?=
 =?us-ascii?Q?bg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 23f82335-9f98-4359-5af2-08dcb9b71382
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Aug 2024 03:38:33.7168 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5b9108uTS4koBXdn0r3zCV51RF//N6Wmf8Ai3NqwX+wD4YmuI3+RiDJN5Ug4TKdb8yLahws5rM7ip0l/ybVsLOHtTuaSZKM5r3/nMiQp8A6Qzeb+XOGQz33NYL5pxa+5
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6615
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723347519; x=1754883519;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=52JYzB2fWLEBmr7UUwnsgrjSHGPEUK7PlDb1DolP920=;
 b=GeptHKCS3poow2FCLbLEn1ZRTxWUVlbKoOdkv3+enzt+4yyjUgGt9PnY
 jkt3yjUkj2rTvfg9CxVkNp3YrARA/qqoCvxUR3+C7kZpwLldh6Ysw623F
 5Z6LC//PHZrA3iHX/GzXVSsyA3Y22FI/0uSSdxzjpTvcHZmaGlZXZsNZy
 bBFpI8xFB14JsSYizTk9Yn3Kfxp1REyuwVBhMSig9UuwV/hqTg53nMalA
 ibHxi9Y9O5c2iAxNS6Hks9jO12Y3y4nc9CFCGLGaCKR5sbh63B67qxmg8
 +pJiMLC0UYzlu7wGHW8BSISmxbYNPCfDTOU3BT6MlzApqKB7sAHkK5RGy
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GeptHKCS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] ice: Implement ethtool
 reset support
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
Cc: "kuba@kernel.org" <kuba@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "horms@kernel.org" <horms@kernel.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of W=
ojciech Drewek
> Sent: Wednesday, August 7, 2024 4:05 PM
> To: netdev@vger.kernel.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; kuba@kernel.org; inte=
l-wired-lan@lists.osuosl.org; horms@kernel.org; Kitszel, Przemyslaw <przemy=
slaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v3] ice: Implement ethtool res=
et support
>
> Enable ethtool reset support. Ethtool reset flags are mapped to the
> E810 reset type:
> PF reset:
>   $ ethtool --reset <ethX> irq dma filter offload CORE reset:
>   $ ethtool --reset <ethX> irq-shared dma-shared filter-shared \
>     offload-shared ram-shared
> GLOBAL reset:
>   $ ethtool --reset <ethX> irq-shared dma-shared filter-shared \
>     offload-shared mac-shared phy-shared ram-shared
>
> Calling the same set of flags as in PF reset case on port representor tri=
ggers VF reset.
>=20
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Acked-by: Jakub Kicinski <kuba@kernel.org>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
> v2: remap ethtool flags to ice resets
> v3: resend, add changelog, rebase, fix doc
> ---
>  .../device_drivers/ethernet/intel/ice.rst     | 31 ++++++++
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  | 77 +++++++++++++++++++
>  2 files changed, 108 insertions(+)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

