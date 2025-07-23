Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 88CDFB0F008
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Jul 2025 12:38:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 23F13608F0;
	Wed, 23 Jul 2025 10:38:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ognT77lH-STW; Wed, 23 Jul 2025 10:38:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7507960A50
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753267111;
	bh=RdolgAGbIXBLedpykti9kIz6Art73HCb0ATm77WcxgI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=iuvQwGGkH/hfSrDR30bF+Kdd2UIv8hjMbpGlRzj/R/gFvbkPS9q/XXvlPjo+3s4DV
	 X6sWAXFMk1boNXU3vTI5Beev3Nvxzd2NyXL1FE/Ws36g/zDWizSltVvHjTFOyCjOBP
	 +z40VQJVKA/fEOP2jm32yXj0Qz5iSMnf4oPv/kfYBKRWsbV58g3Euu2yHsmmwpCU1l
	 8psxQEgHtSDsKTrTvb4CcGftIJM2mjpJeR12tAga9mRHxW1160fAWR9UuqMs88kfmx
	 zYa6W3veynkfYFOsILV424P5hpkeyHVNDBYKyYyPvfSfsFWaZnWKKvKqrUQ0l/NBR8
	 8VU6kE7r/98EQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7507960A50;
	Wed, 23 Jul 2025 10:38:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3884CDA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 10:38:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2AB32608D1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 10:38:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id e3UlQ5Cxy06g for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Jul 2025 10:38:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 76834607AA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 76834607AA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 76834607AA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 10:38:29 +0000 (UTC)
X-CSE-ConnectionGUID: WEnbete0S7eObQcTiim72w==
X-CSE-MsgGUID: 1HZte3NLThGaXBDuSqLh7w==
X-IronPort-AV: E=McAfee;i="6800,10657,11500"; a="58160092"
X-IronPort-AV: E=Sophos;i="6.16,333,1744095600"; d="scan'208";a="58160092"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2025 03:38:29 -0700
X-CSE-ConnectionGUID: QB0FC6DPR8GBVATirdbe7w==
X-CSE-MsgGUID: p3FNczzhScG+nhTQIUL4Bw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,333,1744095600"; d="scan'208";a="163473654"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2025 03:38:28 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 23 Jul 2025 03:38:28 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 23 Jul 2025 03:38:28 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.52)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 23 Jul 2025 03:38:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YsoLW+8KWYukbGKdFLo2c/Bydyz1eTtORapdpRBF4S3u/8xnqX82AqWrBxD+zHZgHlPPlTQx6ZNBjBN4EbsGl/Uck5+Xpl6xTMP5b04TpUgm248g1aLvaInH2Zx1s/M75ANp3t8zPqNwFkib4m7eZHdW6XpLt+vx2z9Jrg2M1+dzu22zw3LJouJHvU2HMHTO0RDGdN/jE4wH4YIxRvcXfdb9j74iV7Wc9at3NMstVTMenVmIf2SCFvehnupo7jJv7HXm5O1368kATVRQeoInsn3S2RZ7eghqoUj54uYYXisoWoXA1jjyXdUeC1KdU1ZqUT+lU+bPLR6MEggr07wUzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RdolgAGbIXBLedpykti9kIz6Art73HCb0ATm77WcxgI=;
 b=mTNkKWMJxJEbB028w4pUR+r4zaE8WjfegWkGkzl78HBQDtbliRm01hBN15AM0T+829Zd2eVlOF75XowTQWC1mdRAWI0UyhEL4nAHhDpPHSnjv35tqFOrQmXVeFbCrDBJ5IOuJrfRE8+DKGZkeOiT3cvzy1yUhvJKeaSJ4vIWRO0aRHhW5H6FO15Vn83ZTknz3Sc6XFSzhBT2cJwDx5D8sUSjwIObbccPIjh6RyDbbO2asqj5cUQF7C2mu3WeQ7/qjB5hK8DYB6OaNGkUvvjqhv4sByZNdNp93AZuUF13gfmjNUAmLNjqwqcE9EobYkjuHuG7jXcx2ogvEdUMhQRlYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by CY8PR11MB7948.namprd11.prod.outlook.com (2603:10b6:930:7f::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8943.30; Wed, 23 Jul
 2025 10:38:12 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%4]) with mapi id 15.20.8922.037; Wed, 23 Jul 2025
 10:38:12 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "dawid.osuchowski@linux.intel.com"
 <dawid.osuchowski@linux.intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 08/15] ice: check for PF
 number outside the fwlog code
Thread-Index: AQHb+vjTATVmKESfkUW6CAPq00Z1DLQ/hX0w
Date: Wed, 23 Jul 2025 10:38:12 +0000
Message-ID: <IA3PR11MB8986C5D31E8BA1CE3294B013E55FA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250722104600.10141-1-michal.swiatkowski@linux.intel.com>
 <20250722104600.10141-9-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20250722104600.10141-9-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|CY8PR11MB7948:EE_
x-ms-office365-filtering-correlation-id: 3d11a0b6-c622-484c-007b-08ddc9d50600
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?MUxqdGzf/aPvTkBoT7CBhZfXZJgsdrMcNusKsxk1MxC5BDVMQoTj0FNOPTSA?=
 =?us-ascii?Q?Th1St0qnU9Z9TnsIqn7XnFFJNtYG4GdPklLtGqQCCkvfBYRyvDgbnezrTWzY?=
 =?us-ascii?Q?IIy+wGw88rfYJocgSzVBCq2T3k7zTRcHyLLsTP6XTJNNvGaIAF2U+mvaA1Vb?=
 =?us-ascii?Q?qiF37lei/Z4b2plbd8kPebTIqiLrmaLW+lYlAcaWItDaNHn107cjrA27Ga94?=
 =?us-ascii?Q?HqMe8nxlqCyS7A0V3LoNI/JkTITIHNjThV3dG6HXMjxCMrZ6qay+3HJ4FCN/?=
 =?us-ascii?Q?BEWx+VT9qXxWUo9yyGlqPOElf8tXKozhAUFiIyfVwvDupTqpMS51L6iCtDb2?=
 =?us-ascii?Q?cpDQqA8baZGdAFqZGbvVeKJsZ9FQLJNlXBGuUSPS/FLWOgOxJjjIiNOF7LxN?=
 =?us-ascii?Q?t+MgK9hIYyXq7JXPxiegbmmSn271RyPngZvTuciPaQV9Nw3OUZmepfYnHyRM?=
 =?us-ascii?Q?x43m00eCmLXezcamqlM9My4dfk5K7xBbOeuPMC4mk3IPB/n8NhDxH7Rj+zFv?=
 =?us-ascii?Q?/AB4GtEiRbp8NV9T/tzekd2MO7wnpi5FgwmqbQ5Bj03ucw7E6TFmFmyII0ie?=
 =?us-ascii?Q?bYXchNnBJF19MUtyklZR2KE1vMWO2PHtGqU/+Zf5CtOP3WeVUVH6Lu2IKDKd?=
 =?us-ascii?Q?cOik5UEthb2GLVS7fvrHf61IdjpK8KQgGXzOXFFJLRrGgMtTO0gGjX5XXBrO?=
 =?us-ascii?Q?KbNoDBObGAgaK8i+2Ea1sHJads0YVF/B6IwO+8AeaZUqJmaH+xLzsfW09qDN?=
 =?us-ascii?Q?6PVYKwI1gVnM3cRK+P/9ZG7hHfSo+da0X0We6NHXYWmrHwzhL9jXpSIH1QuF?=
 =?us-ascii?Q?TIEZz64sRBXp5HrPL+qAciO0KPyiIJW7AVJSVReNz9LHiA7beKg2o+6wjEUW?=
 =?us-ascii?Q?4JDkvrzSjqciY2FusaOSS/ojKXcH5pYvsGGH+EEs4JbOdUPDhCeyjeak5o1q?=
 =?us-ascii?Q?bF6cSnu7l0FaNc0xyzlZmAW+cpKImXk1tfvUJ1+OToex9PrOj1C3AMjVIIYh?=
 =?us-ascii?Q?QKgkEkt8fo2MBAaKamVwUdRPKjGT2Y7kFP2ZUBQfmygbMHQkrH+SX/4Ulf8E?=
 =?us-ascii?Q?u0NDZovrkfvoCqeM+rg72zyAnLFU5XtEukpzu7ZDOQHmSBjEPHapAG4MF2GF?=
 =?us-ascii?Q?iM9sK6Owclk8Nnmqmmx3jKiy6zeSUKyREoCPl/JT3nmTk6nCUtc3H6Ptwt6A?=
 =?us-ascii?Q?1nQSmQz/cPYUnO8l8r/eqnKJ73PivTNAdCckHpHAjTwvMFYG0MFZPPjiSyOU?=
 =?us-ascii?Q?15FZTqUdLqTCIYu8cG6eGBEy0yIHUriPodRfGt+SxGV0+UiHX46ukAYdEBDH?=
 =?us-ascii?Q?f4RKtkLFYvyw/VI5bWWMLjc96HY4Z1r4hCgZH9KxFPQkfb59tlRtKgdnlPFx?=
 =?us-ascii?Q?o6MfU0wrQqukoBQOFU/TSIt8jIkuCVO3Htq6UftPo+IsqKj+mIuXhba7Z3bt?=
 =?us-ascii?Q?21zjvqWK6T/7DzVEazzXQ1BWbgj1MB8bYP1O4fjv51/GtWP39+GJIQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9J7wGiPs4GcAhq7akxztYIQypvpv0gQOYVYSdgl5SX5L7hLdNdhUJTvGOHch?=
 =?us-ascii?Q?g4La07wUYeImHfKaLBGVHyFvAizCmYHEMx1dSAjzaGniAgeSVFvRUBq/0nsU?=
 =?us-ascii?Q?pwEZNOIJAAxIDsj3fjxrK7yoM5bvdG9SJGG7wzUCQrqUhLtxLtlrvyVVTdaH?=
 =?us-ascii?Q?T4krZH2vMrYCE1Kt3xZuYNgH0/VBrQbj6rlSTfZck1YS3K7kFmlvBG0AHhqQ?=
 =?us-ascii?Q?C9Bxn6bcHj/1HbYOf1biN97qzKrjcTEnCj2leXkbh7BG5yPCWfT35LlEFL+q?=
 =?us-ascii?Q?xba1lsoXZw3VZSzb46YiskRRzVe1P40YQVIFmrABPydjCJKx1ptQ4biAg92x?=
 =?us-ascii?Q?huvLJVPeMkkgAOdwpbTPiYteXfqJj622XR1DIElE5SlTGxE+uVe3Pr3OhvkM?=
 =?us-ascii?Q?90VF25lB2NninA1ZWsCpcfERr4LaP6OSa/5gWlhpYnW+MGxub5K0uDnxjEj8?=
 =?us-ascii?Q?9J3kdlHtoEkv5ihAmFqWajyI6Lm/6Lq8k2z7vM6+SIZt6FLkslUunyAIiiqT?=
 =?us-ascii?Q?Kgt2M/PQKYBEyTimE29d6CbkoN2+6gZo8lqulP41voHi+FCUFMsTSZgTDUg+?=
 =?us-ascii?Q?2Wu5ahSECAToPVqu5Q3azpYRdbUz2BlvsuD6kk3VdrMSp9m2oemWIp69NjVh?=
 =?us-ascii?Q?Z4OUD/bXIWI8+N5navuFwj+FhUpUJbspR2JxVkLISlt3QiQ32oOZLEObaKMx?=
 =?us-ascii?Q?d5RH9wdzSqVLTxUivOeR/+K/XVkqVHtE1h6mEMS27bZ0+9kp8c7DdJqZQ9ma?=
 =?us-ascii?Q?DgTbb7PIpNXr9ZO+efch7MycBhFg14qTlKh+jy7/koxhXzX2vCFLTd6qbXyU?=
 =?us-ascii?Q?qLnaj2sNaFWkGas+iYdF7s5oKFPqU/fB242SWTnqxtXA6kkSyyETajHh1uy4?=
 =?us-ascii?Q?g4ygq7/e3OaPEEVAIkcumgteOG1qWWznjZZ5ra2uxYxS5WnZ5k4Sx3WhTCso?=
 =?us-ascii?Q?9n1y2H1Wn4/YQTAQd8QbJYiZqTSvKWDzBJXRkry+FYlYqW3tCkBcB7ywbHm3?=
 =?us-ascii?Q?WVsO5fZ8cCSA+aC2YnBBCZbpm+SUlkvs0PU7asYnI9yHxWzKe2DY9oQ6YfBQ?=
 =?us-ascii?Q?kaT09W09f3PdGlVdPA8MXzPaYKdV5MGSvVivLM8rL+CH4CfssZUEzoc+bg/w?=
 =?us-ascii?Q?Yw6ed+0cWCzLH+xBHcvMC8jh63vEF3KOclyoHeJGeAS5ihez60TDdXL9D33y?=
 =?us-ascii?Q?WHXpXxz0P3IaAEGc3hgmcv/N3T4bCCfrxLl7h9w+CB5R0odi+DVlrn/pU0ey?=
 =?us-ascii?Q?K6aFk2LP2cccKysydbK0/DN8rKDSHUCMV2aScx0yf2Nv9ehOnrcWLrwtBpPc?=
 =?us-ascii?Q?Ihi7lo5idhyh3sU5UrDEN+rwUizqSD1WKbfnmWQniwcXZGkL0pqA5Ajc3YjG?=
 =?us-ascii?Q?QdViSlD3VmuooEW+T/ORfe8y9a2nxYKHG1UxreKZMO/MvV6CFEYLn+xGqDbt?=
 =?us-ascii?Q?UH1eUkXivLw69l5UCn56PiqWpjIGdwZFUphngPa3ZWyOtiKL7OCT5a07I3v+?=
 =?us-ascii?Q?Ms513nuOiiLfluYkUjWWRCge68WbZHYm8kadocaNO36rQshdVfx1HHNZvRVf?=
 =?us-ascii?Q?kOGub3ImYELPuy1aTHj25io3cYAyNRmvXfmM0UG+yb00BH3EXUEwySSkcJBh?=
 =?us-ascii?Q?UA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d11a0b6-c622-484c-007b-08ddc9d50600
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2025 10:38:12.1818 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bnPYtL1Et9RmXxwUzfifj0HfCC9HnvJIkIS5GfWBLIfom4H+4trSxhFw4ev5UUHm1g5LErehrphYmWgCon34KaemWRJap1xk38g3OVqWwfw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7948
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753267109; x=1784803109;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CJF6OkzHAqE13Vj02swAWGHmnQRw3MWij86Asfbw9DY=;
 b=Tqw5BHn/wtMKxOC0zuMdQFacDEJKTQ5m8/P9xQ7JXYxzESt3R17NpE4j
 n27bSGv8UnfT6u1K9+kQPJRm65RnSWk/85u0gODAQH4eVXa8jADyUTYNg
 z3THHE3kBpih7xUNlNAwOiky2PpdaEk2BBYG76fRq0T1L56qe1H+Ydz2I
 35Vtc+EfqSrn9fuf2y20Ai6z95hLv46njKRu4o/Iy7VFv/mynh7vzBEMs
 uCjJsLh1mX6nqHntwjgcsd68WCD2DFzHf6nFP6XO1ALFiL2Af8qI7+W/4
 9yUx3hp8naICqtYgmj4ArEHzG+1elcZE8nj4BXicLua1bsEZEBZ5VJjKT
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Tqw5BHn/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 08/15] ice: check for PF
 number outside the fwlog code
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
> Of Michal Swiatkowski
> Sent: Tuesday, July 22, 2025 12:46 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; dawid.osuchowski@linux.intel.com;
> Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1 08/15] ice: check for PF
> number outside the fwlog code
>=20
> Fwlog can be supported only on PF 0. Check this before calling
> init/deinit functions.
>=20
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

> ---
>  drivers/net/ethernet/intel/ice/ice_common.c  | 8 ++++++++
> drivers/net/ethernet/intel/ice/ice_debugfs.c | 4 ----
>  drivers/net/ethernet/intel/ice/ice_fwlog.c   | 7 -------
>  3 files changed, 8 insertions(+), 11 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c
> b/drivers/net/ethernet/intel/ice/ice_common.c
> index 9119d097eb08..2666e59b0786 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -1002,6 +1002,10 @@ static int __fwlog_init(struct ice_hw *hw)
>  	};
>  	int err;
>=20
> +	/* only support fw log commands on PF 0 */
> +	if (hw->bus.func)
> +		return -EINVAL;
> +
>  	err =3D ice_debugfs_pf_init(pf);
>  	if (err)
>  		return err;
> @@ -1186,6 +1190,10 @@ int ice_init_hw(struct ice_hw *hw)
>=20
>  static void __fwlog_deinit(struct ice_hw *hw)  {
> +	/* only support fw log commands on PF 0 */
> +	if (hw->bus.func)
> +		return;
> +
>  	ice_debugfs_pf_deinit(hw->back);
>  	ice_fwlog_deinit(hw, &hw->fwlog);
>  }
> diff --git a/drivers/net/ethernet/intel/ice/ice_debugfs.c
> b/drivers/net/ethernet/intel/ice/ice_debugfs.c
> index c7d9e92d7f56..e5b63b6bd44d 100644
> --- a/drivers/net/ethernet/intel/ice/ice_debugfs.c
> +++ b/drivers/net/ethernet/intel/ice/ice_debugfs.c
> @@ -588,10 +588,6 @@ void ice_debugfs_fwlog_init(struct ice_pf *pf)
>  	struct dentry **fw_modules;
>  	int i;
>=20
> -	/* only support fw log commands on PF 0 */
> -	if (pf->hw.bus.func)
> -		return;
> -
>  	/* allocate space for this first because if it fails then we
> don't
>  	 * need to unwind
>  	 */
> diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.c
> b/drivers/net/ethernet/intel/ice/ice_fwlog.c
> index f7dbcb5e11aa..634e3de3ae66 100644
> --- a/drivers/net/ethernet/intel/ice/ice_fwlog.c
> +++ b/drivers/net/ethernet/intel/ice/ice_fwlog.c
> @@ -242,9 +242,6 @@ static void ice_fwlog_set_supported(struct
> ice_fwlog *fwlog)  int ice_fwlog_init(struct ice_hw *hw, struct
> ice_fwlog *fwlog,
>  		   struct ice_fwlog_api *api)
>  {
> -	/* only support fw log commands on PF 0 */
> -	if (hw->bus.func)
> -		return -EINVAL;
>=20
>  	fwlog->api =3D *api;
>  	ice_fwlog_set_supported(fwlog);
> @@ -296,10 +293,6 @@ void ice_fwlog_deinit(struct ice_hw *hw, struct
> ice_fwlog *fwlog)
>  	struct ice_pf *pf =3D hw->back;
>  	int status;
>=20
> -	/* only support fw log commands on PF 0 */
> -	if (hw->bus.func)
> -		return;
> -
>  	/* make sure FW logging is disabled to not put the FW in a
> weird state
>  	 * for the next driver load
>  	 */
> --
> 2.49.0

