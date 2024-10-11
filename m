Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3706F99A0B2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Oct 2024 12:03:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9BAEC820D1;
	Fri, 11 Oct 2024 10:03:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D6SmBFRcRAVD; Fri, 11 Oct 2024 10:03:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E4107820BC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728641001;
	bh=QQLwxFyIylkxgBcJnjhdUWlF87S0h6vLQ7N4Mn2m0WA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=w4ji2yE8+cn58ZZ8J/SOij3N6eQR3TY6OwjC0CVZBtSZKAVGgKUhHjf9e9DBKXGxu
	 0vTk6SaYIUOA33A3Ke46qyPKNABpaMkreTQ0UXRWVz+ym2nwWZnHpHhSWMjLsbzBAD
	 j9DX7B5oP1cApi67fw5geVAQ1uzErvtJQonkye8jnLNjBamTxcD5VesKvzsOTEjH0A
	 x7f5UbjBPMIlb2MuVxsJV9Hvt5cA01KK4xIO24v8bWbNWyLTtZtVQLW30IE80E+q2w
	 oYNUalHOdSyKGPJxNbRtdYC5DIfUTk2vng8HLyVtMB8sYGnTCnvIocBePfH0XERxJ0
	 hLd+sbJjfx8+w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E4107820BC;
	Fri, 11 Oct 2024 10:03:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2BC721BF85D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2024 10:03:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 19C82820BA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2024 10:03:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WEoUd1pitQ_d for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Oct 2024 10:03:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 118A5820AC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 118A5820AC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 118A5820AC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2024 10:03:17 +0000 (UTC)
X-CSE-ConnectionGUID: A6ikcyX3SBmdslo17Js/Qw==
X-CSE-MsgGUID: RFAtinYESZ2bHP0EVY85Kw==
X-IronPort-AV: E=McAfee;i="6700,10204,11221"; a="27845674"
X-IronPort-AV: E=Sophos;i="6.11,195,1725346800"; d="scan'208";a="27845674"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 03:03:17 -0700
X-CSE-ConnectionGUID: 6tIchFg8Qs+Ceh33JpwWRQ==
X-CSE-MsgGUID: 6VKnFYQKSGqvufo1cMW5WA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,195,1725346800"; d="scan'208";a="81383418"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Oct 2024 03:03:16 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 11 Oct 2024 03:03:15 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 11 Oct 2024 03:03:15 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.49) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 11 Oct 2024 03:03:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=obQaM94X3KRkOz5hhU3uKKR3wccXCTEnzg25XPxkA72bDFKGCpvpmr3EuoTfvRM/0n0HQeLcYTywLnSCaQO8KLfYrhNbqZbUA8N0TTIoZm8jubSPwYVlrmMy6UcK1eJibDOUvhC2rF9T8/B+Wi8RQZklAHW7sevZnMAE6ujesFqdiU4UGgtJYFZrvZOmj16eXlgx0T1OZz+Ul/sfrSVvBMX53J7c5Z2sJxtOGn+4yIQlZGY0JNoyvK4lxL34nc4IRYE4JSI5FfiH+Pcxuswkl6V3YjB6nQkeCA1Apmr+AgwrCKs6NeKKAA+ZNpC931QGZtU15i9iM7p3OKgFMURIUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QQLwxFyIylkxgBcJnjhdUWlF87S0h6vLQ7N4Mn2m0WA=;
 b=wfrGerbxQyNwLAvhmkqRTNczpPyaoDVOVf/asfaMg8072gK6kpmBv+ZTEmMz5YBvCULA4CT48zkdrlJ8Dv4i+l+FX5TWc3PQCTQ7Q6pXIgVFI019wwwef/a0hkCuAMfEQOtwZPqEmf2W2KaFkwxlk/vnEhCgGVhyow4NGhm081GHtkqZRYFoB/mpJkio9/fk5U5RpYfXXU7PjR0QEnLuAnyC8kHuzS9tbLoMRY4Hq4WQUWXz4fFZlDQHmxNnKGvaSAeLecEwsXT03U3G/hGE3Wd3BwCocexLWvLAlfQFRVOWPh6RSsnT/8HzlmUS646KAro5grpwh2jDz0Pq/4r0/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by PH0PR11MB5078.namprd11.prod.outlook.com (2603:10b6:510:3e::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.21; Fri, 11 Oct
 2024 10:03:12 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%5]) with mapi id 15.20.8048.018; Fri, 11 Oct 2024
 10:03:12 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 3/4] ice: minor: rename goto
 labels from err to unroll
Thread-Index: AQHbFMG/CWFKPrhbL0GQuxzntr0zUbKBX8LA
Date: Fri, 11 Oct 2024 10:03:12 +0000
Message-ID: <CYYPR11MB84293BCB908EB6022673780FBD792@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20241002115304.15127-6-przemyslaw.kitszel@intel.com>
 <20241002115304.15127-9-przemyslaw.kitszel@intel.com>
In-Reply-To: <20241002115304.15127-9-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|PH0PR11MB5078:EE_
x-ms-office365-filtering-correlation-id: 79f4b790-53cf-447f-ad06-08dce9dbeaf6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?YXzyOqT0ywIrtlJjg5/z65xjabk3Citz5OPVkq3GGZHEXIQ+F+IiY90r1kRV?=
 =?us-ascii?Q?bVv1dqE1ObPdUVISK4SMEIFw6ElD7nLF8vSvezm2MEiBxVc1/5KDkeErRBPa?=
 =?us-ascii?Q?KfRfXHieMjELyb0cfrIPBANXHOd5taDFuTnJt+/uWTYGjIUqXtwfCKxXsgLC?=
 =?us-ascii?Q?pPyWW5htawziUkHvCrwADGgXISY7z0iVquB4p/EGnLQHMUNAsSGhlF/rShS6?=
 =?us-ascii?Q?jWyhp2ebn1o3iE4od5mt+YrD0dzluVtVOPezee8soRwMhrRdk7XBcdRPIuHH?=
 =?us-ascii?Q?KivKr1KHaM/QqrC57dPaTDoE4fGuu9jWt239vnLMzF1sYTqgwEum7SBoUjf0?=
 =?us-ascii?Q?0V1h3rp9y6XVcDfEWVnbA/jOfo+jDBNPzIBmsKVUqJ7G9kCvdh0EXFLJ5f/e?=
 =?us-ascii?Q?+kr+Q6MbwnyMbd3ZA37HI9GpmGlguyLHdM6IuzTJeNsB5KFljx2MPhTaKjxT?=
 =?us-ascii?Q?Lcdjaz1mLHd0t8bHyNTeXwSPPlGktbdxTl12BRS8508IicJERLuCHrPbCjfd?=
 =?us-ascii?Q?1NklK4E0rBvf++MVPdB5gd156xl/+dTtKy4R3LuToRlHWNeTyoHh+dLOYruT?=
 =?us-ascii?Q?HLriYvgHffJ/FJWrt+YgDOzPgvRaCTDLx1g+1yU6JcnTsekQytdzfshgfaPZ?=
 =?us-ascii?Q?vGdKbMoskAh3tuz8XqaWT+9xXhRjgraF8Z9ieySww959rTe8ZPR/kR7V0qXC?=
 =?us-ascii?Q?a7dv5MrHRNJBI/96rPJ856cqyzxKfdA2D+58752J3WrEgdhuDHXSWvPYeQbM?=
 =?us-ascii?Q?6dKsfLCJ+RRyQEURtZClb5atcdQFmFhQ+LqNJNt2XxCosaytWsm62x/3jer0?=
 =?us-ascii?Q?CfsgzY9SciqLa9AFFlHeDUOfDwtahdaRVoa4RqBY/yKDbwCbYVfZdlP8GcWD?=
 =?us-ascii?Q?ocHs6WPQ/2QJVbipbYuxFsluKyjbStT5fDWEHIhhKCe8Px1rrfFZpHsjuAVt?=
 =?us-ascii?Q?3b/tRZYVzC8dhs4sWAeMZ+t/KYNvwEFsSUA65qB71UDDf0okZeZsaXgq5GyV?=
 =?us-ascii?Q?LxRXXli7bSYd+sFr1WEUQOduUmRFlSaN6QII3Mu71lKMQgEgMd7Nlh5FdVNM?=
 =?us-ascii?Q?riPxywR+rHxAhYk3V+ztjrc6M6UBII5d5KOrofPIhB0YL4a5wshtrRLsmXTB?=
 =?us-ascii?Q?u1HSm/rXWoEFuw1IRggLx4ABpccYbQOcsXEeDasHG1gpph9r7aMwcINUQ/Y0?=
 =?us-ascii?Q?LzsjT32F2mGqCZkHAqwVb8+yLdV1kMhpFZQ3QorU/NpXabYDp+BOyEJmvaCo?=
 =?us-ascii?Q?crd+4eEefZ/0dYZOFSeuInzLKE9FOMC7AoJT0xoyjaWgr6EqWRfyl7OO9Eh5?=
 =?us-ascii?Q?U09DZaLrLh5QBwKXJ/oqwCJWnNY31LuYGqq7srnL05QGZA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?HYgG3l2DcS/03s90oiru7XRPBr+QA+jBs86n2K2LqnPG51ie84tiXA74DF6C?=
 =?us-ascii?Q?pJxSDk4uNmAvQtSGbqdMPXKXa8y9R0dJRorGM6UjDdidaUYpZcNqNqY6ZPyP?=
 =?us-ascii?Q?tVwFbcNbUlYhmnQQn3z89qZRv4q7BYB9s66JLYn5aSPwn5z2T4sh/mX8Myu9?=
 =?us-ascii?Q?z+Isdji+5wodd6PSoocNxASzQp6oHCYBuD6o0qKaRlVr1R3mryCjYH6L3RZP?=
 =?us-ascii?Q?pPi7asHrelQ2dp1b0kA6qlxISdNXEWP+CCqXF1yVYbOTVEcELVIcL1P+1moC?=
 =?us-ascii?Q?EvytSCJpLd0jMpv7zgSouOSyBKm9PDkzyP0/5Uy0GS4KfliE+ZTHrKkacVp8?=
 =?us-ascii?Q?xAEyU/hzGlIrlfDYNOzGLTwrfm5e5aLQSJfLMnqABdV91xPFBkV8KKhaPvQj?=
 =?us-ascii?Q?z9oNPQHlT/xuUPP1n6bZlZ4+hGwY8Nl8XgkACMUlEn+4OCFuaRelu0dwtd76?=
 =?us-ascii?Q?xsKieKe3z13uk3EDwlBp+whpGlNP3bEZBEdNCcQT7viOpdfk26g2VMXoSuay?=
 =?us-ascii?Q?0N80tmyPvzpBbQ2ZbgaNKI37usZNjrBnMv2OEAgSQEJId5+Nxz7xKOciCNXa?=
 =?us-ascii?Q?/ryXPIBnRcA7+a0qxSc/3RFM+MAv9O5fpedtUscUnIdjceihMF5NfUc6yzxn?=
 =?us-ascii?Q?3j1ZLJpeTRso3Jk0Jz/e3DxAEpXLlUhJyaI6ow2x8acp/Z9V7WFkmw9CNXS5?=
 =?us-ascii?Q?U9q1NH+lCzQ9tXWHYZYereiM+t4EzOb6QgMk8EQkZZWcC2XGork93X0cXlOU?=
 =?us-ascii?Q?0fSZXHWrj0/Vu7KhSkkPGT+4duMTfzudvgeEMggkYsFCD4lMfhnWbOSnCGDo?=
 =?us-ascii?Q?L2xAXc+jEhyIqRb+FVNMEmwprpPnlQ6+xwBUEmtNOlaMcCiiFHFaAsNlTohL?=
 =?us-ascii?Q?NfpVkpoFGARs66Q3Vp77YvocjrkMT6ouBkvREP+cPfLZd8mdgCZE6C3rzhSS?=
 =?us-ascii?Q?Zg4KTpRO6Qz/paPx5NosbpiHxtvUylY9HdAxfet7msA+Wr+2Ca1EeeUoCe8s?=
 =?us-ascii?Q?GMF9qYvg9JnllhRNI5S/6zPverf4USXoFrFiSvOJazvQYKOPzdDvqzzqF4U5?=
 =?us-ascii?Q?i3Z2V0uTNdxkVVxDXV3sPmFHho43yzdeTaFnzbF4OAAd7gMdpyb791Cwk4vb?=
 =?us-ascii?Q?YR/oWaZnFM98nChMTE4vtoafClmjeJJDGPoQ6sApJSo6vBlpMycIUVxs8Ccl?=
 =?us-ascii?Q?Cnxp/PaogqBcmAPsQcNqajTZ/KpMx1/a8AFIPFZ33uLO2/1yjEucwW36/ZO8?=
 =?us-ascii?Q?OWwR0W5iaMOyfEtUK98JyEFx09VH8/zVmC7M0Cf6TC42O9QbrVcCAkiVBMGP?=
 =?us-ascii?Q?N5dyojfvQ+pSa9Zjubuqvba5SpZnIY3hWNNydmcfQ6FPO3itNVNg0DNYPFOW?=
 =?us-ascii?Q?skRxnekRncxVP1wXsNBwVkVBwzE25bvKAVdtPAr2xwiN3fk/EY+64sSUXBUe?=
 =?us-ascii?Q?O4TAOScPCwP2UnVT4VJ2dFcoW/smPKvtuSnV61JawPYqRzA/ql1yCBlEzLNE?=
 =?us-ascii?Q?qHtbVMEY9o9z3SH7SzDUP4Z63D9mDj/+THcXGq1XJcKrZt8BlPSKVjZag/it?=
 =?us-ascii?Q?s3pZPq9wcFHoJ1sXM0V9ri7hO4XVJL++e7oVXbQtoPT2OFCTIvkWBczjYQBa?=
 =?us-ascii?Q?Ew=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 79f4b790-53cf-447f-ad06-08dce9dbeaf6
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Oct 2024 10:03:12.8432 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /HHoVliRhIA6bJCFTZYEzECcnPrEZYWqePZ/QdtT+xAUe6IY1d9/C/ljiNCPUCarsB9hP1nOxi2mSBG7OYO7cqeh62HeJ4d6oBRy2L7Lj7rbw698YVyrS1zdo/SUivdp
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5078
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728640998; x=1760176998;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XGWIdpvxMPY/yxnzwCSB6d6VfesLLW+jzL4ESP40TCo=;
 b=YzpXoYRYB5V7YmwEc6xeQBfN2vcpqggv+7O9+96e7OdLJWk9eJpmu7N8
 3auBaLUU3JI0tbylqBLE9BFvawrdGzKjiIGwvSOAVFS11q3/yyzaNRZme
 WBfjYiuBReUlpABY1R6lJm5lfuAuQSGy38bTgcUjSd/0moYKfSiHjnxaa
 Wo8sXyLraea7PoBMYU3rgWDNBg0TaY3XJO6wmipm+7vhLQ8AQOP/dnTZ8
 dbcktcaeK8v2xHpbuN3dnXqhSxFUBLBouC9rbDcft6ZGZQZ+AvYs6WEQO
 4IoM1b7pioq5r2bRcWDjXtTfso1YEkahXPu68cAUX5cdgWaHZWa9zOPr2
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YzpXoYRY
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 3/4] ice: minor: rename goto
 labels from err to unroll
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Marcin Szycik <marcin.szycik@linux.intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of P=
rzemek Kitszel
> Sent: Wednesday, October 2, 2024 5:20 PM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen=
@intel.com>
> Cc: netdev@vger.kernel.org; Marcin Szycik <marcin.szycik@linux.intel.com>=
; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next 3/4] ice: minor: rename goto l=
abels from err to unroll
>
> Clean up goto labels after previous commit, to conform to single naming s=
cheme in ice_probe() and ice_init_dev().
>
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)
