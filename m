Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 92454B22E4D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Aug 2025 18:52:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4427561ABE;
	Tue, 12 Aug 2025 16:52:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cUiBRDTmEBL9; Tue, 12 Aug 2025 16:52:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9A25F61AEC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755017571;
	bh=t+kdI7O3+WFpx1L6oTIhl0zjZ0zoyPfLtDhYQyFU0ak=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bD7+EMDQrvYfABo2gIEhOkWhRueOnYDX+aryJDTv9MZAzyshek7JdMAor90371I7R
	 t/8XM+wUbYFOj5b9e3Ouy4nV9B6VPH0lkK5Wd6z1ABHxhGwiDARidskAIY84igGauq
	 szseRtGuLaNcHHqVjp22TEhThzB3T7hftMvFvBN+p8D+m6MF3/Kn9LmIaVi9I+c6hP
	 6FhFTsyx0v78qSOWnZqzNRAEDCfmBECwIZEQvV95gKU/PBfe2muz7bkjOMQbgLtHbi
	 tpkoCtQi150aa3Zqdjj8ygLyNjq2O0z6hM6lyXrzq2RtyEEYJznFwsfN/5KbVP4FKf
	 t7unYQwVASjFA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9A25F61AEC;
	Tue, 12 Aug 2025 16:52:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2184E1C9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 16:52:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1322861483
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 16:52:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gkFEKEVlF3Gm for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Aug 2025 16:52:49 +0000 (UTC)
X-Greylist: delayed 431 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 12 Aug 2025 16:52:49 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 520C660595
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 520C660595
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 520C660595
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 16:52:49 +0000 (UTC)
X-CSE-ConnectionGUID: 6q4GSoQRRz2bAoQgwT1uaA==
X-CSE-MsgGUID: 0513CzdaSS2irtqkLpflDw==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="57162839"
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="57162839"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 09:45:36 -0700
X-CSE-ConnectionGUID: HwEgCUtSQ8Od9J0hXGObpg==
X-CSE-MsgGUID: o2/FIQ2YRLOF+JeBvxVimw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="203430245"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 09:45:35 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 12 Aug 2025 09:45:34 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 12 Aug 2025 09:45:34 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.42) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 12 Aug 2025 09:45:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=h6rcKs5v4lCBiHGgCS+hXuJPMOyBfIuRDNoSnxWsOz3DjMctwrVmGQD2RXCW2X8Yy6IoV+DiRzsYMsDoa+k5zrImJUDQR4SLarNlrB8ZvtVuuk9ENgTsuhkNfBxX6fZa38K2zn1gC6UoMSgx5SUTqxa6wIhmMJTbfe95WZT/ROi5zcpZMPbXkxSXW/VerMkc/JcriMD2y+5USczMkWiJ8+wNC3kTXhHKcJULfj3apDWCRNDbJpFnWhXbny+QxBxzY5rkG9aHElDvCxKCpfQdwhudSX7hb3Op33UscfsED9tbd9zSUsIzrRYZ22FGgqVcgzG2jp+hDhn458YqZLnDBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t+kdI7O3+WFpx1L6oTIhl0zjZ0zoyPfLtDhYQyFU0ak=;
 b=FHBHCjkH3OQFS4NyEPNmdOyuuIrFasfzOrjJ396Kw7Oiud5yezu+Teoj2U0p+XPtCC7Xb/h0ARJ0BebQuA0+1XilNYZ4RlsSikCEJtUkuI9O7enTlHd4/6B+nSMamy2izBiibmqwC7kaEgL40Lo3IJ913hwQvGKtjE5ZjvibJzeWAjMH0MdR6KjfBJFnI25LJMC5NIN02U6jq8YjrIMT37xEsuJHtmxJmaBqqVxt2C//B36TShN9tHnBA0coNQsvqF10bEWsjPwntoXB62DJxLtvDuf3zdHZQ9pGf+Pkj7/ZpkkPcoftREg88+qasr+p7m5kJvwcg2MHWdaY2nAaSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by CY8PR11MB7083.namprd11.prod.outlook.com (2603:10b6:930:51::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.22; Tue, 12 Aug
 2025 16:45:32 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%5]) with mapi id 15.20.9009.017; Tue, 12 Aug 2025
 16:45:32 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Hay, Joshua A" <joshua.a.hay@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Hay, Joshua A"
 <joshua.a.hay@intel.com>, "Chittim, Madhu" <madhu.chittim@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v3 5/6] idpf: stop Tx if there
 are insufficient buffer resources
Thread-Index: AQHb/ZLjQEvyIa7LgUSlUW0eaa4IxLRfUikw
Date: Tue, 12 Aug 2025 16:45:32 +0000
Message-ID: <SJ1PR11MB629732DCFC7D2DD9EB4C11239B2BA@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20250725184223.4084821-1-joshua.a.hay@intel.com>
 <20250725184223.4084821-6-joshua.a.hay@intel.com>
In-Reply-To: <20250725184223.4084821-6-joshua.a.hay@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|CY8PR11MB7083:EE_
x-ms-office365-filtering-correlation-id: 1daa800f-e17d-4800-6156-08ddd9bfa754
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?PIjUqetnn/ckX5yIel5FD/5l6tpFKRkcqOjilTnvbL64O49wHaau41R+49vU?=
 =?us-ascii?Q?OL4DWDmqrP3MoZirmc2bDEeGIduunNMKlvc8X8Zo9kTViRJM1O2oyU1M2zDU?=
 =?us-ascii?Q?G0Fwn1mYEtLKVjHHVOZ9pCWYBgNgxNRtfGKyALcfrf59CtvtYbkhc/DnlO0n?=
 =?us-ascii?Q?WLOaa55sjIzWeD244yyhQwtcoEaQbRa33EwX6Wcy95+KRJ7scStKzt4dj/ZD?=
 =?us-ascii?Q?UXLMkOjrcVASp//0b3RBc+210m+c1gdqU57SINoh+emGMZl4YyNtGyBWWbci?=
 =?us-ascii?Q?i54aseXGLf9XdBUS7TWg2ZYzCNyMFU5yWn19kU4F24xwyeKx/GLg1WepZZRH?=
 =?us-ascii?Q?qQ5EHkbsQbh8eO7LBs5rYv3DZ3W8+nDJreRdVvXCMNLF/1f7EG9OCr+lt8lA?=
 =?us-ascii?Q?WuiP3CP5DJZmS6oZQs/iu4X254UnjQJwrQP4WydWCMEbYIGsMPXc2x8J31+8?=
 =?us-ascii?Q?+kjKRb4wzxx9leQvf5jxrLCCm37uy+EHuD5r4CkzeRSHEYN5B9IAv7/9oWKs?=
 =?us-ascii?Q?j5NK6DuWJO4BQHs20JJODBN6g1JhDVXTpowAnCeqGg8KaDJ6pH/4tA7vCw0H?=
 =?us-ascii?Q?E+wZeyTphXkSlESFbXWCZF4ELbxiciWyOEx1bx2HMzl16GJlAZSff6rJi1ZE?=
 =?us-ascii?Q?Aas8wBo6SVHxhzsJWi1LavskYCXdpiGZvc5tKg6nWWv0eg9u2bn/bNwTgDpc?=
 =?us-ascii?Q?NA1fjukkoWscdQND6tq31DufyeoOMjctR0nQDj5EcZhmT4RsZvEG9tsou5Oe?=
 =?us-ascii?Q?GQENJ1UEqpYzBo+1deYDutAWj9j0hTErqKFqwvSqDupLFdNMIbbFNmqrls87?=
 =?us-ascii?Q?nCmMvHtYAUq75JYr0MsGwwOowDUJNPJDbur5LXR15zGoIoY36bp3ORCl5TkL?=
 =?us-ascii?Q?sG+bwFzLjMLjedCg3rxntxB4fbclOjj5VDed1QOOycPl3fBbaiZZDIO2aEgZ?=
 =?us-ascii?Q?puzkQmZt0utR0FN70NzpWnxyUCUWgbtaydkJQ6ui/p54Wc6cMzN7dkgg8XjJ?=
 =?us-ascii?Q?JzWeYRtLSQBMdWA4AxEJuEkeOU9SmDSBQ3EFyealragmtSU5+bC1gVj94NqS?=
 =?us-ascii?Q?+pcoHWk0CcvxlOkld+OUm7XY4B2lxenhDUe9eu4pf7s3Ytu2iN4zsBqd35Bb?=
 =?us-ascii?Q?SDMB4MoaAdhXWn0TaheSZ9+hOSafXH9jHcfP6J6cETo6W96L+yU9/Grr2rmW?=
 =?us-ascii?Q?mnB1OsG3/SsMi5SrlphasNtb9qqZeQfO1fipMwgj73hVxR3QnmlQI/aMRjmr?=
 =?us-ascii?Q?SiwC84i4xF3P+dA3bvRsZ4v4bSA0PR6GLC5VhkA0J1UYST582pni/wTU+HD3?=
 =?us-ascii?Q?5DKvVnCMVikqeFQ4KuYwAyltrFuAH6ONGLpZT6MQQltcAGwbUyzw3tU+ly0l?=
 =?us-ascii?Q?q+2su74EvQReWrYB+03OCoRATLfCR4K4N3fLLXaH5Ewa9co9ribeD0YpbxBx?=
 =?us-ascii?Q?D+vuGDVtz7K3wxwh3w7UN6mhIMphlt8UQyHAq+2tCxj3M4tlNmeJwykbCBE7?=
 =?us-ascii?Q?gTfKxsVIAHgyxnQ=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vASB252A4tfcEFO8T0ool8E7gYC6F0WcoGSyTRwXXILMsf8HPrpPeSmQjjnB?=
 =?us-ascii?Q?Zy2yJxA3FKzUFG3EAZJnQq0ckQgLcFVbgLst8FG8+MfgTeiRCXufWMcqJXc3?=
 =?us-ascii?Q?3n8+dsx+q1ZRPvEd5sduAtjvmFT1eLWCX6E54KWLHeCzUbKiAWc0V2Xyu73f?=
 =?us-ascii?Q?mlMx8uQUuuq/jtYOMXtHAxfzjd10AgKbZIglQXENrZIlsmbhPOUCje7yYxwk?=
 =?us-ascii?Q?v2U97Af/CiaKq2NTPXOIPnwRkls83hXeuZWoTqUGFYUJtcBqygDlmvJnvnKa?=
 =?us-ascii?Q?TDvf+NXqsBmV+tHyXSQXZgT+u2B5SvvoXxde/BrPCY78nd/KB5U5F/F6tCEk?=
 =?us-ascii?Q?aUqWBibejWf5YCm3uDe4PyH6wZWxgJA+LxeZNZ4RS47t7+3UkHJWVSS+xYkF?=
 =?us-ascii?Q?13qmw19xppIw+gIlS7dTy9R0YRTmChEqgDE2y4GDRz7aumoq0gwEsAmjYLkt?=
 =?us-ascii?Q?qiZQcY9yT/bJ2Hpf+OZxzqu4sUgyE0bVKXTfEnTy7a8Qjqd4P+gGswdkvxHf?=
 =?us-ascii?Q?2OR85SXwOsuQHuwBld/90MNgF3lGQF3h6jjrq/1T1AuQjVrJRtY2PKeZq3PE?=
 =?us-ascii?Q?X/ZXf1myxUxhjL6VyXSop6q4Jeyx+CAMYliMJmD4S6wleAzwmk7kNe3ldgoR?=
 =?us-ascii?Q?tnydLRuEps+S6ACZNYrK7h9xwwbX6w6Vd8MyNjR6QGM6wLSu+/abGoXRZJ5J?=
 =?us-ascii?Q?Tj/bf6YNH/j01TRWl/kC3ORDqKrEJXhM2Y+wF+6GZTTyDZrvnNHMMGbLc3pL?=
 =?us-ascii?Q?6Y0hEYnjxn2BQD/+kDrhlYrp7ww62UXkZrcd7nP02JK/GhtMje2xMXD+x3UY?=
 =?us-ascii?Q?3AXGGFY0rza/4RgW11gJLkeT6q40eYBFKmjIDNrdkVVJ4XpF/K1e8ZSlHGmk?=
 =?us-ascii?Q?qeZ9XIHjkig8Pe/rJ5KxNRCfWvtqIDJN1wOfHBj8J0ykSlADL+fc2n+MYF9d?=
 =?us-ascii?Q?2wKdIrq8Sqlb96Swbclgwuq0IJfo39XbgLOyI0CoqG/s8NQKM6Murs7OG/FP?=
 =?us-ascii?Q?40rk15o7/q/yPce2IaKh7WUZbIrghoqP3E3KH8boM0yhCCYjd8ulLkM9v08+?=
 =?us-ascii?Q?SOQfXsPrQCODuZ4A/ehpFQMpg1gkMH9JHrHBf2fsTv5L9Jr965d0zn0QXoi2?=
 =?us-ascii?Q?3dW/zRbo3iclQHlrIrslbg3kx0JyQTnpjTkQbyNfO/TM9/1TR3D+QMtXHLZL?=
 =?us-ascii?Q?tFmmcWgX+/oFKPi+n08kvWhhQtic8mct9LD5riCa+3ZC6rfx391fRei6M81u?=
 =?us-ascii?Q?tvgubjVGP006J+L/2iv+xfwuUrBVUxDeImh+aDQSjbAeE0URUCD3zK85nuP/?=
 =?us-ascii?Q?Q7frPAAEB+4pOfrMF0R75lvN19mSSn/3aDDX6zQi5mITtkIc5SuW40htA39V?=
 =?us-ascii?Q?jK7JylfiwL+VV/i9ZsMGEt+YNkukirzsPYu+RzBMh3n7QHJkVhbxdm7rbUSN?=
 =?us-ascii?Q?DK9llQ3JQbzibDirXN/k0P37qR8mhtYwDv9XysAL7SFeLjhzOzUdWnf546Ne?=
 =?us-ascii?Q?cv6vFSZuxl5xJUojh3a+0oogWXpyXCXcFeQisx4PcrdqgIpaj4/CDHOxKGiB?=
 =?us-ascii?Q?j/W2yPoMVfJwn2UTbgBm2BycKG4Lc2XNDcvBDdkx?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1daa800f-e17d-4800-6156-08ddd9bfa754
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2025 16:45:32.5232 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6FO5vJozUkHWRV2DErQ5/qiTrcRjJVp36uGhq1v6LjAOIGj/RcSelDqJXmY09z44QUnHbh/vKmW12REDub1Mdg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7083
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755017569; x=1786553569;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=t+kdI7O3+WFpx1L6oTIhl0zjZ0zoyPfLtDhYQyFU0ak=;
 b=T/IxmnefvvZ1Rw8JI/UeG828DK2rbR5SQ85BWsxRgQ29xA0iVkFkVr7Z
 /3A9FnKN1amZrr6gHGwdfyxDXrVUaZwoqKSMn85gVvbx5C21AWP72raxm
 NurdkhnxkGwpBkUdn8z2z8FPSA9AhcknSI89N1SKT+d/sOczUZAPHAJuV
 Wjjt3yPUqEqLWXeh35yleod7DOhxxbmme/Dfb1gHfRt7shJ4Ci0BxdIKv
 xRPPZb1dWSiwOmxgIie1Drc1Dqjj5+tvV05MmLrs/u3xQ2NPg/TJSXBWD
 HLJSzDNXadqBMfutfaVP4kkKHtnxNefHX6gOxJoEzJAbQ/zqKtmWjI8JC
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=T/Ixmnef
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3 5/6] idpf: stop Tx if there
 are insufficient buffer resources
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Joshua Hay
> Sent: Friday, July 25, 2025 11:42 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Hay, Joshua A <joshua.a.hay@intel.com>;
> Chittim, Madhu <madhu.chittim@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v3 5/6] idpf: stop Tx if there =
are
> insufficient buffer resources
>=20
> The Tx refillq logic will cause packets to be silently dropped if there a=
re not
> enough buffer resources available to send a packet in flow scheduling mod=
e.
> Instead, determine how many buffers are needed along with number of
> descriptors. Make sure there are enough of both resources to send the pac=
ket,
> and stop the queue if not.
>=20
> Fixes: 7292af042bcf ("idpf: fix a race in txq wakeup")
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> ---
> v2:
> - Init buf_count to 1 and +=3D nr_frags to account for header
> - s/unsigned int/u32 where appropriate
> - replaced BUFS_UNUSED macro with static inline func
> ---
> 2.39.2

Tested-by: Samuel Salin <Samuel.salin@intel.com>
