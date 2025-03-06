Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C9B10A54C49
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Mar 2025 14:33:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2585183B19;
	Thu,  6 Mar 2025 13:33:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vuLuyFa5tNWx; Thu,  6 Mar 2025 13:33:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1807F83B00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741268024;
	bh=JeB6TEd2jbZ/vhbwwyhnPMtMH5P3eQejKTEHtXPIpY0=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qvsTQSS1de/a9c6QfcS59w4Zi5c/g+4IwhgwsI6LXlemLHfuh2fUipwsuBNRt7mFC
	 NwouChCNuRGEc5rrAKyMcO4WxkXtMQgL4Q2NcnTRbm1oHe5lpEoQGPSms0NrCts3NL
	 MZVARGgpZYi7K5dcICLtBoNLXsq9zRV5+5QmW21d8hHBS05K4Xe4ouYOiHRfU8/qqM
	 +wP8QeC4M5VXkwB8lanjY7+gU0A7+tDmcT41xCYvXmJwfHBKFL5yki+R+DyG3qtoX9
	 GAVcS2s3K3qVzyTi/SrqwzKuRGC7K0izBauztaR24ztV3i4CvBrGFd4Qbc0EfvhoVB
	 HajamO51ItdVw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1807F83B00;
	Thu,  6 Mar 2025 13:33:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id A007295F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 13:33:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7F713412CF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 13:33:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id K8lzdFzbD-0z for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Mar 2025 13:33:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 399F8412C4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 399F8412C4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 399F8412C4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 13:33:40 +0000 (UTC)
X-CSE-ConnectionGUID: GAfGlHAzSsK+v39x2H4fnA==
X-CSE-MsgGUID: qfxHDkLkT+OuGN3TKP2m0w==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="42190598"
X-IronPort-AV: E=Sophos;i="6.14,226,1736841600"; d="scan'208";a="42190598"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 05:33:40 -0800
X-CSE-ConnectionGUID: zYhmt25lQ0OVORjiR4sF2A==
X-CSE-MsgGUID: qeqhj0p6S1alFxBQpFXtUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="118937112"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Mar 2025 05:33:40 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 6 Mar 2025 05:33:39 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 6 Mar 2025 05:33:39 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 6 Mar 2025 05:33:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aI3zMozLPCZyKufu4HFu0pVvZ4L9LU1/zlQctIB2GmZvFjxCjMbGRQap3JfedHBlVt/+XflB0Jy6X3H+/pfQrjI2YSI/5eZVENETqSVl2oT3CtFu1GqPsahvMkQ50HjeanGjt16TzouI2eNbKeYtvL3ld8THsFgIkVGe+Cc5BUMcjuDPmggT+V/0kuvGSvEKICoht3TLuP0aqVrC1XUgETlCI4MIkDQT+C20xYmmU0TGlgn7e5m9xdXQIsA28WyOfEc+os7RuQkXN1JR5fwpfX0+QDvjpSQV46deMIBeImuW+gTRLGu39G9YHTnxv7uaSoJ16wVCOPqtLrP2m2UOYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JeB6TEd2jbZ/vhbwwyhnPMtMH5P3eQejKTEHtXPIpY0=;
 b=AFrzrtKHTnsuA7c2IEJ4lW2PjTQXS6TWxCFMMUyxhKWpwjoykHogBi/WWqHtdYwUKpcslU6PvBVT+V7BNTHdbiNcuSLTI3Z5oUvzTSaFbEGOjO2YeKVHcGELRnY/irBCGwT50r6RvEZmDerKTcNQEVdaBcSLA6v3hoX28qMLExqcHWA1fbDKjoI4ZtHYA3Nar+RwPSM3jG72I/80JeVQUP186WMtiuYHB3zm7bNgFXqEmGuRO4Eaj2+bsBwvIjz7LAAoYioNbyhXFKUXeqU7lTsYcPqIqZlbkjIR5p8675l/Oz6SWKP9LJcjjXKpjfJiuwFgfOypa4nwm+w1HYHR2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7785.namprd11.prod.outlook.com (2603:10b6:8:f1::8) by
 IA0PR11MB8398.namprd11.prod.outlook.com (2603:10b6:208:487::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.17; Thu, 6 Mar
 2025 13:33:37 +0000
Received: from DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::7a4d:ceff:b32a:ed18]) by DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::7a4d:ceff:b32a:ed18%6]) with mapi id 15.20.8511.017; Thu, 6 Mar 2025
 13:33:37 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: Simon Horman <horms@kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "jiri@nvidia.com" <jiri@nvidia.com>, "Polchlopek,
 Mateusz" <mateusz.polchlopek@intel.com>, "Mrozowicz, SlawomirX"
 <slawomirx.mrozowicz@intel.com>, "Kwapulinski, Piotr"
 <piotr.kwapulinski@intel.com>, "Wegrzyn, Stefan" <stefan.wegrzyn@intel.com>
Thread-Topic: [PATCH iwl-next v5 12/15] ixgbe: add support for devlink reload
Thread-Index: AQHbhFkHfvv9OSN8EEuFCSmDTIMVUbNl7xqAgABAHmA=
Date: Thu, 6 Mar 2025 13:33:37 +0000
Message-ID: <DS0PR11MB77854D98B36D3863E79FAD1BF0CA2@DS0PR11MB7785.namprd11.prod.outlook.com>
References: <20250221115116.169158-1-jedrzej.jagielski@intel.com>
 <20250221115116.169158-13-jedrzej.jagielski@intel.com>
 <20250306093854.GQ3666230@kernel.org>
In-Reply-To: <20250306093854.GQ3666230@kernel.org>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7785:EE_|IA0PR11MB8398:EE_
x-ms-office365-filtering-correlation-id: a987e375-f429-4629-1270-08dd5cb37ff9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?rb0IjXZbUWsMOpFRJ5kpaaV26L+CUGMYrS9NW9j8xJTQXNz6lgAbrqD7IxNC?=
 =?us-ascii?Q?5NOrmNMVm9lSzIbSGx71LBXO69881tVnTkJCMAlSENM/3RICjAByY+z9j+Oy?=
 =?us-ascii?Q?HU7+Z0mRrgu4g08gamTMXHjiaYlL/UqZcuebBJY0bzc2DC0h3EmpENxnK1k9?=
 =?us-ascii?Q?V3nwr9C9UeGONRqe1sV6AbvmUbLFYvtMqZqN+p9LFEK/UOgj1qqVlFf4fL5d?=
 =?us-ascii?Q?4vIw65GUr+0o8OR7p3TPKO+KW5YS1GDHU5cmUpER8zW1JTEIT6dEFBa0ByKB?=
 =?us-ascii?Q?xmCUAY3UclG9XVGMXFr3xBZFwtApuwisc7izP/vHAf1cGg3oBH7VdEG+VIux?=
 =?us-ascii?Q?ZCdsNwAW2YHUfNyw5KRqzaa0cU8r5/KWP4Gn/S70qpgz+odv2GLasdUrGlxu?=
 =?us-ascii?Q?jf2/QaONtP4xcl0ZJdz9VLkgRLL3H5v7vOEXnvSMpxNFvAMbdZBX+ys85zNX?=
 =?us-ascii?Q?JyQCtFLLFqEDaucAFKH6/Gg1A/c7PRO49o+pdwzZNqJ6R1jxT8a2kX/hlt2C?=
 =?us-ascii?Q?qB/ewnuZ7O0nlvGxEiBd1mtwAtqOtaYn2c7dffaF4TiU66k3EzA7fB5O+enc?=
 =?us-ascii?Q?VMto94QJ2+5EMUjIDXR2SclgygWqtXfhj40hCOYedqR028rBMRiuTZvaJVnk?=
 =?us-ascii?Q?cdA4QfPsQPy/RZcOXjBU2HWpzqiezBI1r2jnyYprcDAm/gQdLeaqajlSLQmN?=
 =?us-ascii?Q?ypNGzzqzRQAcPpq9CW0v2dQL6sSQtHbyAPVrlNaa/gcVg09xMw6sq56s7Qri?=
 =?us-ascii?Q?Z+j7qpwSnbgr02iYKoSj4meHTgoHgEwy+9/nwtLAxm3ciev6fc3gQXMlDInc?=
 =?us-ascii?Q?3BNBOiXr2HHV6VwwgRNn40MCuH9Jm4TS3YakssacJ8IbG92Bwzs+Jpwusw7C?=
 =?us-ascii?Q?7gn2vgMpDYBJST7tdgVqb/zPkoSGgwbwL47ciTBNwQHjgdanbz6AV5GIIXxU?=
 =?us-ascii?Q?4o6CzP7ckUJ5qAGrYQhBYFb+7x0JDH9Mr6nmAF6AiyufG5qvAoXH+vT8HdkR?=
 =?us-ascii?Q?f/5XiPwfhQXXoIDLO5mjM2gK3qaGJ8aZkKbvVC4Tr7BH2rziGEd8fiqC0dDv?=
 =?us-ascii?Q?pYSzf5CwG8gD8752EI8kDDTWLp/qVz0c1iwv9cFZXA39KKdzeeROmaKq9XDK?=
 =?us-ascii?Q?i0UpaErkckqmZL8BK5NCu+cr2wqSlaegTjGYN2525w2wrqTeKOe+mExWUUoh?=
 =?us-ascii?Q?7UW+GgABkOmFkpIluKPWt7TrUXaRpHkPwRuLreUSpwwQEPFfx2HlUBtbGKZw?=
 =?us-ascii?Q?mprTKGvBhPtmGOXl8nrIICi0HgmZVVs7XK99NXvBtjSCOC3+1xJIe4kIgEvP?=
 =?us-ascii?Q?LJE5ZHOLpbqciG5dCxF6inEmBhTCDfcgt29YmVqsjcvf5tyf1lIKqIOv1/JM?=
 =?us-ascii?Q?l8rzz4mYCYAyObdT8ZOs724Yhn2ZHyfDWilNwQPN1h8vUcX4Onvl48ACgYr9?=
 =?us-ascii?Q?3fY3OauQoebVJa5yq0sjzLN4hpRXklYY?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7785.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?YaETHdlo559vL20xgQ1i1hT/5V5fZBVi2ES/cY2qw4xVJlfNeI6I/LubiRGk?=
 =?us-ascii?Q?rlGN2T9TmD63ecF2zmPhFwFEGnlqGY7zEjQdbZBt3cLmmNPkaPqPI6VqM475?=
 =?us-ascii?Q?ogBou1Z72AyqkjHU1gTrQ6Rp/02zSK2ZXhTaP3KnoBYt+f/PFmEMI9h9YAWo?=
 =?us-ascii?Q?NwE0q7XmtE6/WVkMZVYFi+a7Jt4BywsLaLHgPAMD0iPLsuWuyXKaD1oR5VnB?=
 =?us-ascii?Q?IkNOV9YiKraDhV/rnvemmsfgR1KDzjL1a8MlJpuOPF4aiI6Haoya+frpEW0w?=
 =?us-ascii?Q?USvPGa1OdrP+J698K7v273iS74qV/cXIIQbm7M7+oyhxEfdkJ0qoXYTeEKkD?=
 =?us-ascii?Q?EVxXY/B9TmWBmBwI4lGNOfad2YPdhlhOQrroApbqVMxwAjHQbNo2Y5NRZRsu?=
 =?us-ascii?Q?73WoCtMytpnCMBKN+f0NncvgEuS5j1DOwfz7bKBiTeifUJCKhV0YIbQSpBZv?=
 =?us-ascii?Q?BmUIYcSkWyQghZDFKs6RDR1yGkKkotUIvcEgLUwRhvkQeyM/Yz0xAvTUIUbA?=
 =?us-ascii?Q?TrwLn2ytLih0xtjTTg0LB3cdogabEwn9kGniWUQEOHTdKhg0AmA+njJhobHh?=
 =?us-ascii?Q?pvrLj6Yr61P37Ju6NlV0v+VxPE4EQRq6x5oxTL0jML8oJlwwNZALW/dMCrgO?=
 =?us-ascii?Q?9X/3evNAtxKnSLSIhvvgzj92i4ZWSLsxZnVTDJFt+l8TwFOH92dltnUHMd3u?=
 =?us-ascii?Q?KbV0qoBOVVdgKjbNi6HqYYFytzj739FKny1fvDRqFMXz8jIy4pyRpKyTWJ9X?=
 =?us-ascii?Q?EjIX6AMvBBvrlNy4i8NPCWNGuSLQrFnG4cIouojb4ZULSnU7dvZagdzjC+1D?=
 =?us-ascii?Q?kIe04MQKcQ8QTnnuAOb1rgilslOXcjV2hD2ijtfMgMBb7v7TV+ud20Q0bTG/?=
 =?us-ascii?Q?V6worMP5FSm3AF5HHJR0pltRgK354TuJb62SWQrj/wGWlEMBcTKfRIT7SZsm?=
 =?us-ascii?Q?UIlbKLmN1BFEW/mykP1+PVvy5I3VI8MgG09SvQvCxyHX0qkaGzikyPwbRzMH?=
 =?us-ascii?Q?tHyPWwa7E7dpf9r8xlwmNhqmv3g32c2aY4fX8b75M3Fqjd+g7rin+HS0be0Z?=
 =?us-ascii?Q?VIbe/51KIDUJyrp9ZQBANdBqVSKeJVhWcHX3aNo+vhesjMcMwWvFsg2kpwiy?=
 =?us-ascii?Q?+axhJM+j2CjG4WKTGaHPr9nxqN7Yh86EFdF+CUeoY4m5IN/stB5jjrry8R/C?=
 =?us-ascii?Q?H8q7blKPt1WYDdmFZXw5IoTj8Bhy4CZTqwIz/ecg27K5T+rDpx2c10B87BKm?=
 =?us-ascii?Q?s1D4ZxLxEo3E4VNzcxGRQJFhFepy8jgXQbRwwyEbR3PTUN5jG6OCx9ZCIqWd?=
 =?us-ascii?Q?JiS1DcMvIjegPBR1zDiloJJtEj4dyXjx6+q3JTg7LW+MytV3y7zbWsF/7bei?=
 =?us-ascii?Q?WEMWWDxRRxL0VA/gW/lyEeHkanUmQcacxn2+Q0evJyCWjXZmRH/nVz9mBgc5?=
 =?us-ascii?Q?D7jPOleLr1+adMQid7KvzVXClY8HB5OkeA/t6Pgbhm369HFXUXEGSyu6JsPX?=
 =?us-ascii?Q?/LOSMKVlpfa7zS6N0MdDUX93cv6H5fU9hS6fI0VueGiJ8Suglw/qs110PKR0?=
 =?us-ascii?Q?uoQwSGV9Grj9i8gI2YNyHzZDBX8gJZLSeZw+Wa06?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7785.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a987e375-f429-4629-1270-08dd5cb37ff9
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Mar 2025 13:33:37.2014 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /g1ODA1BAxBEjO/YS/M6Rc7y5+oRvsxe7DC5NBbzUcrr1GDuZSFuvpdPSKAlg/yyeb4oTMKFrDKpRa/o777jzEczHiOP4okqELDp2TFpjsM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8398
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741268021; x=1772804021;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=z5uWCcfLVtq3xTMeWxZXVoMmjJo3qpna3JsWsbiSJ9g=;
 b=jJS+J09QWNXmYVbTjRIPSUbQN1I79ExlgfpT/tptEnZ7wFRmrmNEsda/
 6u6F7jAuMPDbwbCAJaE2gBqQnLH0RuW08xDd83lhtkWAXQtQlte8Si7Af
 BzuqsBxm791gRBjTyUXuKVskiuJFSy9wuCepN1C8ApLCOOUS5krVTZESI
 HL5ZBaeTYRjz3j7mS9dxmD1Jfz8nz6A8QgwE535O8mF5bP9PP4RcYBcPD
 +3PAOiiCltF3cZoQW4iMXpI37YVwNjxOM/hvJ9g2A49EdBMMQ1nxTkaQ1
 klWyVJQ5fUHGPaX+PyLaXCdMM58FvbbcYqH1BcvWkYZUTJpvM552x9y0T
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jJS+J09Q
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 12/15] ixgbe: add support
 for devlink reload
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

From: Simon Horman <horms@kernel.org>=20
>Sent: Thursday, March 6, 2025 10:41 AM
>To: Jagielski, Jedrzej <jedrzej.jagielski@intel.com>
>Cc: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen@=
intel.com>; netdev@vger.kernel.org; jiri@nvidia.com; Polchlopek, Mateusz <m=
ateusz.polchlopek@intel.com>; Mrozowicz, SlawomirX <slawomirx.mrozowicz@int=
el.com>; Kwapulinski, Piotr <piotr.kwapulinski@intel.com>; Wegrzyn, Stefan =
<stefan.wegrzyn@intel.com>
>Subject: Re: [PATCH iwl-next v5 12/15] ixgbe: add support for devlink relo=
ad
>
>On Fri, Feb 21, 2025 at 12:51:13PM +0100, Jedrzej Jagielski wrote:
>> The E610 adapters contain an embedded chip with firmware which can be
>> updated using devlink flash. The firmware which runs on this chip is
>> referred to as the Embedded Management Processor firmware (EMP
>> firmware).
>>=20
>> Activating the new firmware image currently requires that the system be
>> rebooted. This is not ideal as rebooting the system can cause unwanted
>> downtime.
>>=20
>> The EMP firmware itself can be reloaded by issuing a special update
>> to the device called an Embedded Management Processor reset (EMP
>> reset). This reset causes the device to reset and reload the EMP
>> firmware.
>>=20
>> Implement support for devlink reload with the "fw_activate" flag. This
>> allows user space to request the firmware be activated immediately.
>>=20
>> Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>> Co-developed-by: Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>
>> Signed-off-by: Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>
>> Co-developed-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
>> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
>> Co-developed-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
>> Signed-off-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
>> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
>
>...
>
>> diff --git a/Documentation/networking/devlink/ixgbe.rst b/Documentation/=
networking/devlink/ixgbe.rst
>> index 41aedf4b8017..e5fef951c6f5 100644
>> --- a/Documentation/networking/devlink/ixgbe.rst
>> +++ b/Documentation/networking/devlink/ixgbe.rst
>> @@ -88,3 +88,18 @@ combined flash image that contains the ``fw.mgmt``, `=
`fw.undi``, and
>>         and device serial number. It is expected that this combination b=
e used with an
>>         image customized for the specific device.
>> =20
>> +Reload
>> +=3D=3D=3D=3D=3D=3D
>> +
>> +The ``ixgbe`` driver supports activating new firmware after a flash upd=
ate
>> +using ``DEVLINK_CMD_RELOAD`` with the ``DEVLINK_RELOAD_ACTION_FW_ACTIVA=
TE``
>> +action.
>> +
>> +.. code:: shell
>> +    $ devlink dev reload pci/0000:01:00.0 reload action fw_activate
>> +The new firmware is activated by issuing a device specific Embedded
>> +Management Processor reset which requests the device to reset and reloa=
d the
>> +EMP firmware image.
>> +
>> +The driver does not currently support reloading the driver via
>> +``DEVLINK_RELOAD_ACTION_DRIVER_REINIT``.
>
>Hi Jedrzej, all,
>
>This is not a proper review. And I didn't look into this, but make htmldoc=
s
>complains that:
>
> .../ixgbe.rst:98: ERROR: Error in "code" directive:
> maximum 1 argument(s) allowed, 9 supplied.
>=20
> .. code:: shell
>     $ devlink dev reload pci/0000:01:00.0 reload action fw_activate
>
>...

Hi Simon

looks like blank lines might be missing there.
I will fix that in the next revision then.


