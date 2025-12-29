Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 815C4CE7406
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Dec 2025 16:50:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 20E916090C;
	Mon, 29 Dec 2025 15:50:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pJwR1lOmCqUR; Mon, 29 Dec 2025 15:50:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7C7BF6086A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767023403;
	bh=MTT/bVpg7pyWZmyL9oXZ/v3fopiiFi0UeFS7J+OfaUo=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LV2z/6XwfUyrINIX0a7WhJzu9IF60Qlpe492opsOLaVyTfG+dUz6++YNQHddlcF6+
	 PuP+1b8z+TWRjh8RWXTT2kqCzPGtnqL5Xmzncyn7/uFs5AHNYSS1q/ZCLdCJ4pebY+
	 Np4Gk/XT4AP6yYpNLyPk8iA+hwHT35sxizGrgO/wQkunJL8nmFA/UveSOmPsUu1a/9
	 pYgUlkPbZhdBnIwZNEbpc9roYJH7TBRyM3fSZtJKJHhsTD8dnv9G7s9R69c830q1VP
	 lLOVp5YqAjG2/KAen8YvStbSdEKQnz62OGSnyBWDYE4OQHn0Q6HsvyD85hJLFw16Dj
	 14WzHATAJIT0A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7C7BF6086A;
	Mon, 29 Dec 2025 15:50:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id ADE2BD8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Dec 2025 15:50:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 94FAB4060F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Dec 2025 15:50:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ObGwlGbKexaL for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Dec 2025 15:50:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7E91E405E6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7E91E405E6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7E91E405E6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Dec 2025 15:50:01 +0000 (UTC)
X-CSE-ConnectionGUID: cYrY5xrESpGrl4kZJNaTmg==
X-CSE-MsgGUID: dADfY41GSoGatjQH1R5a9A==
X-IronPort-AV: E=McAfee;i="6800,10657,11656"; a="68519173"
X-IronPort-AV: E=Sophos;i="6.21,186,1763452800"; d="scan'208";a="68519173"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2025 07:50:00 -0800
X-CSE-ConnectionGUID: 0ZyU1mopSwGqvzn8SDmd0g==
X-CSE-MsgGUID: lLekTVGlRXup/q+tZowlyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,186,1763452800"; d="scan'208";a="200833416"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2025 07:50:00 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 29 Dec 2025 07:50:00 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 29 Dec 2025 07:50:00 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.51) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 29 Dec 2025 07:49:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=A3mY8Mni34eRtNqT0mESMPgvLZY6HbzPkTQOjLCHWO0ga7dMglq0Ydu9hwd6cEIjPTQMagFhzuD6iaUd+IxAeOMa/jl8ncyH26YA4OU6VcKgBrm9H5sRWbt8yKQGWP5ETnLXUoeUORzuvckTfnN7VRiPIeAi0cIranmvePPOFlRDFrpwaoyXg8rOlW+syyoLy2EzINmf1Kv2AgY8E0zkGBSMpBrmaKjueD76xL8ukkh42ju4U+cBIRDZFe3nVPyDFh/1BmaJ6cXHU3Gmv6RdRa5o8qgq+lxhOZPXn8FR/FP6sTPtOWYlXYLi6qaU+srFy0NB9POnfXhdUdKXjbNhxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MTT/bVpg7pyWZmyL9oXZ/v3fopiiFi0UeFS7J+OfaUo=;
 b=s2+eBH2kLIEWo3lZhg3Wurzwf/38gtmDOKQvbGMU0CqngLlF1EVdEZ8QtUfyr2lIe24opZoIN+hEcoyykkXamLaHYnCvLRmjmdIOzMHHGp/oFgixWdNmOslJqaaW9CuQzRYbVuCRld52ctNACpyNNMOePVGe2AW5WQ6CGYsMyocuYitzBKykayGLrFWGvfuMRMzaiRzaNv1+nPbz0epFhFK6ZGMbA8m86xVlJfb5slQkCXDamhKypwB/6ARz6zLvbvqLCJDZq+yk/3c2oB5ZFTBNk8gDNLMh++N9xgWh+UDim2mtj0EMov01xkh5mfYdvwSeBgXPN8HOPRUnMnBfTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS0PR11MB9480.namprd11.prod.outlook.com (2603:10b6:8:28d::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9456.14; Mon, 29 Dec
 2025 15:49:57 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9456.013; Mon, 29 Dec 2025
 15:49:57 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2 2/2] e1000e: clear DPG_EN
 after reset to avoid autonomous power-gating
Thread-Index: AQHcdOh1tmHZ9rXxqkWMw8DuQnIATrU4y3zA
Date: Mon, 29 Dec 2025 15:49:57 +0000
Message-ID: <IA3PR11MB8986A3ABF3826673FB79C3CFE5BFA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251224151720.1427716-1-vitaly.lifshits@intel.com>
 <20251224151720.1427716-3-vitaly.lifshits@intel.com>
In-Reply-To: <20251224151720.1427716-3-vitaly.lifshits@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS0PR11MB9480:EE_
x-ms-office365-filtering-correlation-id: 074ee39f-daf6-47de-c6d4-08de46f1eb18
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?gUWaRmHwKOQtKTlRgrs3t9d6b6hKhULrvtwQ8tfazOyCDh9RjFhWScRAkNv4?=
 =?us-ascii?Q?T3BznwK+upOav2yp8V1gK6Vv7NpPsx1NCn0D2Cd2Jb1zEu6MXxbBAqkoCcAY?=
 =?us-ascii?Q?JbIwq2pi163Tymq7b1jKRoKfBIltk6Rzmoim9g0kpQv8VzRauE0AX6u6LRuZ?=
 =?us-ascii?Q?+gtPgC7e7pxEn10b91GGwxMbI85IDWy7c3phK/EIaFPt+eN7TvRPJfBzhH9H?=
 =?us-ascii?Q?3bkueL5M2BknUb4sQPY+5OGgjyfznGR6y66mVj4UlDMo8iRkc6z2oc1dvTr8?=
 =?us-ascii?Q?4sP2jaxXpmiRNZNje9FBwW8U2qDkx0q8kN3COGhDsyV3IzlMxHVeQaR5m1O3?=
 =?us-ascii?Q?SJ2hGYz4+xvYnE0TMPTHKnJxtCTxuY6VzAKzYniCb4IrLPdITjoe+8YgrExS?=
 =?us-ascii?Q?7RWK99zKJFoC1S9Y2SqUiWj+3qtali97j9aE81rSxlknHPZqd9PGAOuys571?=
 =?us-ascii?Q?GqvAkshpJgEcqXPsXJ7Wx8ssUIBawKDxsed+QNkgeyvYDhn0wdXwyS7AZ4TF?=
 =?us-ascii?Q?j6NF3mYkP2pfNdqb0oAmf9qRtnPAiqdNMTLBj1I5JyuuNfMOrdXdtafk61bQ?=
 =?us-ascii?Q?B0rD6iAkaFMtj6dK6bs1DdxbTM0zs/Ei3WRtteORpsR8pVHpe/JPQTAc/sMq?=
 =?us-ascii?Q?IfbFbRmo0siq5sejM4j5OTm5eZonB0JDkdzC7HTM4uIG9is7826V6u4xbBW5?=
 =?us-ascii?Q?MAFspN1FLmQYwZOxO3VEloG9+J71X8K8UcPGZsLXQGu68JyG5PoYtxAcBdkM?=
 =?us-ascii?Q?h4u/SKLjT7IMArgo9BPgACnXHZyACr6aGadLIYoViJB681D/VYe5yxTIuDZ0?=
 =?us-ascii?Q?ncovjnqHr8sjgSp/8effp6yArUkVjM9JeVynE9j3oa3XGtY9ARou8GGf3VAY?=
 =?us-ascii?Q?YjyTqymUzejhwIBE+pVZ5PE6awd5xgVrJpT46zTpwqDOwCr3eYcDuO2rnjgq?=
 =?us-ascii?Q?QflT+D7bRKTw6idgUebDVXzhpCb99BYXrAM4++r1f9UuvxG9BVky/lB9JKFc?=
 =?us-ascii?Q?HwODcKN0YoDbZmL1c4yx1vpoKVHLqbCAnqtUMAKY5aJ7z7wEWw3PCwiSYNdy?=
 =?us-ascii?Q?D3VN0HlnTnqIlg14lbUdgbzbzthfFyekmQkAB9UcaC+Kr4t36yttGaqDI7/D?=
 =?us-ascii?Q?/FH0WCSXkq+ez64trgDG2w5YFUDFJhjeW5OtvL2uf/ZgtR/Mb1nna59a/GZF?=
 =?us-ascii?Q?9lY0JhFsD8WMCAWZPZrXT71C3a+vJx+lKXBaQpcqUqi8ckv7Bibh8uGllTE9?=
 =?us-ascii?Q?FFzY4AqOlLvs0rl6limrExKvmvZxa/mUPdca8fatzwIC1FYCIaE2GqURz2ww?=
 =?us-ascii?Q?2vypdEAod6FQCka/c5HLL2Q/b03gW2i6IvpkSXwOAQ5pUe7BDzBHJ7lpxcFg?=
 =?us-ascii?Q?6GNrMNZIKuQjm2FuL+a8sVTxn1uYz+FLNllotlF40gWolan1YQUf5Pr4ybSA?=
 =?us-ascii?Q?zYUs0au3eF3bGNqkWCYZ0ZCXHxOYKQuC9jL61vbANXXs+4iut5AHZv4v13f7?=
 =?us-ascii?Q?4cxLSeDkWZk/mZS8RgHg8b1It6mt+B44vrNh?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Z1bT/ydIIZ7gpJiohc61fZRcb2rKmKIVhdl/cqlAYzHZ3IMBnbkdPQRzQKdk?=
 =?us-ascii?Q?EtxcwnAwKZ11UIyDhEmn4d4jhLrdPgvWdkL4FA1gTUfov6ISQtXAOc8sW6mM?=
 =?us-ascii?Q?hWnKmC2te7iDHP1kZ1q7QXha17M804Prt6XEXPemJ+ksG6y9iVQCll67ge8g?=
 =?us-ascii?Q?Rf/e0W6r48ku4r6QxLkAaBDtBjdXb5LqgLA6i51M3BXFwAzPKBoUnrvIZMTp?=
 =?us-ascii?Q?NDOMYhKwWuAEUbjTx5cEzOyDV7jj1fFu05Knj4fezq9ocRTgaJXNDb2loDwv?=
 =?us-ascii?Q?yM3Z3Sg7JBS9Mj/5PV3Mmhm5I+lJrOjiaHfW27efQ5BA9K1jxmrCaa98cPYd?=
 =?us-ascii?Q?nDJBNfGCYx5jB6KHArGltCssl4mnBuIVNTR15xywsa/uEe/NrE+pjvJnbuFg?=
 =?us-ascii?Q?cEa2W98KP1w6xF8HUNvGzWP3oeEqAZaDXA+iTonBvmcBY6BKrcGKPh/zYAC5?=
 =?us-ascii?Q?aaxBPFS1aXdrJoiD2K51/OqBl8fpM8a2Sq1j31nJaU4B2BBVzbrzEPvhTJnu?=
 =?us-ascii?Q?cmzUjPf8H+Lau5xvSt3hUOVI/UZMrDHcOMBeX3iCNPUxmL9tpo1j+QjwJx3M?=
 =?us-ascii?Q?La3Slc9wcJRVAqK2iHfuLNvnfeaRUCfV9XvlIz0lPXPVGuEGkusGb1AV26IY?=
 =?us-ascii?Q?BHn01Xu7nKfjC2BeeJKmvI5VuQXe5YsF+6K5rLW3+sedObXKno8tVk5JdFyc?=
 =?us-ascii?Q?82XaPI6my0pJwBfnZ411fKGQm2DEz2T5w8y/e5meTMADMi57AnSUqs68G391?=
 =?us-ascii?Q?GFA+bOw519ySSVWvOM9Ewql4mOAHK1pfDp2W58io8jqvjIhW+qPZAPN0NRy4?=
 =?us-ascii?Q?l45MxLcyopdB8BNyV0oA1LuSc+yMzkPfgnymaV6U5cn73GGhVSoMBDUxzmi7?=
 =?us-ascii?Q?IfPHtQ3Xt9gj6bm76wuQ4pIsyi9I6IneTdsNlHudgpzaEN3c11Aipvp5iZSu?=
 =?us-ascii?Q?RjF/SZ+UeLOa/Wgshe+rgTx/YUSxyeA+xerg+fdjwqRRlTWGVprHtHYU9EHq?=
 =?us-ascii?Q?o1V5PieoGsDjV7Oq9jOohaiHTFqZVhIrNFISuqYSnG5BuvEVhMQPucE7kx5Y?=
 =?us-ascii?Q?zY/+zt3d5ZLuLwN+mdtDJnfdVuBi8vOuMq4STlodcOpkq7ZNHzmQjnAPqIVF?=
 =?us-ascii?Q?i5lDCIybNWtKlXTi94t7hPrNQWRkIZBLW3n+VCtYbYI24YJVLVY+Bb9V8NJQ?=
 =?us-ascii?Q?kHplVrVFwTfXwbUy1ofDs0P9fBf34N/IW1K1g2+STr3BUy6mcUOQJ+zXTZht?=
 =?us-ascii?Q?/jNWAGcC09hZDRu9WwUZ5ZOncCWww0ctlpIocRQgv7r7euHZMLaJqaKQOmJO?=
 =?us-ascii?Q?y37jFSMQMxJnITg1rDKV5URPdlLYwFEMX4B5YHddZBL2BP66z0soWLrX6lI0?=
 =?us-ascii?Q?IUrVgMOZQu6y7f6xyiOVyFTk6hVoFfA9rtcen2IW5kCRaI1Pfe4DSzEY11oS?=
 =?us-ascii?Q?EswgQGNruodlbDI6wccRcso/YPikPuZ23O6DNRPGy5nhcGDm0YzMv6pxzqLJ?=
 =?us-ascii?Q?1nYiBBKpWRtAdsfeI9HssFM/UezV9uM0dXQCoSoeFmlXBmjspcORPZi53t5d?=
 =?us-ascii?Q?/gTj+Mv4jiKwDDkORxO10ffFv4bUhHACmA7aZBV/iv6pUtTbLMio9Y33kCLk?=
 =?us-ascii?Q?sXwaiL2r4NVxImy/xF9iClGBd1EZBiR/A8T4PPbrCue6wjwTUiFDS+98ofUh?=
 =?us-ascii?Q?Yo3rU2idEED3SIHmaAyn0G+tCMrBRIHsd0uu6wGlFKkyjbN34WONJQq+7zQe?=
 =?us-ascii?Q?1rf9g9+rih8hfXrcQaU/tEUIvMP3OEY=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 074ee39f-daf6-47de-c6d4-08de46f1eb18
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Dec 2025 15:49:57.8482 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ArkWvWO/LkVXYsuPoEXD9j3bNSFyTOroAAAhw3v7B01TglbBWcyKNW/LfJ/m7jhyyYZY6AxLmuuWkJ/9IOLcSGlhEY+NjPpq+R/KOG+qPVw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB9480
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767023402; x=1798559402;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tLJCeZ6iJWecWqCgLBsGmVa7ggl5ntj4zlVQyf6DJwM=;
 b=TotaRWPxC0midsKOSWzakljxwh+KZrXef0jV7R/rXBf+g31Vi6ADBI8G
 wQvaR7aFA5PZ0WECul38OcGCAPLo3M+8vbCTisIbcOMjIg1/Zc3PsyDq4
 +br9C07pLQJRHIaBaFux9SypzkZGldUH7GNI2ajTOzMY//crnrH1ivxWR
 pqLCVxIEUiV+YuELDVp9dhoQUypdB8U2IYvr5UKJ64HpX2MWw0zz2qm7k
 qpcKqxSKj2f8++/DVtszR5AALD+0xI5yXKlublkgFwO8EgLN4M4FOBVaX
 O8yvk8YzyVbF4muVYwTRUwD+uV1BGcfAGSwVL6vkwQMkWlLo4cGREgBZm
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TotaRWPx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 2/2] e1000e: clear DPG_EN
 after reset to avoid autonomous power-gating
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Vitaly Lifshits
> Sent: Wednesday, December 24, 2025 4:17 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Lifshits, Vitaly <vitaly.lifshits@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v2 2/2] e1000e: clear DPG_EN
> after reset to avoid autonomous power-gating
>=20
> Panther Lake systems introduced an autonomous power gating feature for
> the integrated Gigabit Ethernet in shutdown state (S5) state. As part
> of it, the reset value of DPG_EN bit was changed to 1. Clear this bit
> after performing hardware reset to avoid errors such as Tx/Rx hangs,
> or packet loss/corruption.
>=20
> Fixes: 0c9183ce61bc ("e1000e: Add support for the next LOM
> generation")
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> ---
> v2: fix a typo in a macro
> v1: initial version
> ---
>  drivers/net/ethernet/intel/e1000e/defines.h | 1 +
> drivers/net/ethernet/intel/e1000e/ich8lan.c | 9 +++++++++
>  2 files changed, 10 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/intel/e1000e/defines.h
> b/drivers/net/ethernet/intel/e1000e/defines.h
> index ba331899d186..d4a1041e456d 100644
> --- a/drivers/net/ethernet/intel/e1000e/defines.h
> +++ b/drivers/net/ethernet/intel/e1000e/defines.h
> @@ -33,6 +33,7 @@
>=20
>  /* Extended Device Control */
>  #define E1000_CTRL_EXT_LPCD  0x00000004     /* LCD Power Cycle Done
> */
> +#define E1000_CTRL_EXT_DPG_EN	0x00000008 /* Dynamic Power Gating
> Enable */
>  #define E1000_CTRL_EXT_SDP3_DATA 0x00000080 /* Value of SW Definable
> Pin 3 */  #define E1000_CTRL_EXT_FORCE_SMBUS 0x00000800 /* Force SMBus
> mode */
>  #define E1000_CTRL_EXT_EE_RST    0x00002000 /* Reinitialize from
> EEPROM */
> diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c
> b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> index eead80bba6f4..7e277811702d 100644
> --- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
> +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> @@ -4932,6 +4932,15 @@ static s32 e1000_reset_hw_ich8lan(struct
> e1000_hw *hw)
>  	reg |=3D E1000_KABGTXD_BGSQLBIAS;
>  	ew32(KABGTXD, reg);
>=20
> +	/* The reset value of DPG_EN bit was changed to 1
> +	 * clear it to avoid unexpected autonomous power-gating
> +	 */
> +	if (hw->mac.type >=3D e1000_pch_ptp) {
> +		reg =3D er32(CTRL_EXT);
> +		reg &=3D ~E1000_CTRL_EXT_DPG_EN;
> +		ew32(CTRL_EXT, reg);
> +	}
> +
if Panther Lake does not introduce new W1C bits in CTRL_EXT the patch is fi=
ne.
Thank you

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

>  	return 0;
>  }
>=20
> --
> 2.34.1

