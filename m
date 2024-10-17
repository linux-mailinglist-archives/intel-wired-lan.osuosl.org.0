Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D6B119A1AA7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Oct 2024 08:26:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 12CE54068F;
	Thu, 17 Oct 2024 06:26:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2114kISW5F96; Thu, 17 Oct 2024 06:26:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D0BAF406A7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729146406;
	bh=cu/V2QsOuPg4B7AmQLg1ONDXypbhMla/xcg3/OU7c44=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8QA/Yk4KBtwP1+/sVXIwCGSQ15q+MTWy/aCGTWN1gPttwYKUzp6FyrcYPgw6uPC/a
	 ZkqD05I0FrjdNnTMplUZLaTiDIKtWjpUrcXlIn1OWrkKNdYsaBX/meAAuXaHWEd49n
	 3FfG16tqxHLF1ysS+85WzzQhg9/V9LOgParPaaOmvMCkMszfxEJi8mtpyCZha+fdyP
	 pF3cbtvaijEqdjTlvGbVxIrRwqqnNQVrvrr+RD0c2vy7PJSnsYD5qtN2payWGGIwP2
	 CfH7ql/x5qvhc0ZDfhG0jS5eDjs4EIOqaRQtLsqUyZGIFrLEFk4JefP8ncqV/16noS
	 CYAhwTK6YlAHw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D0BAF406A7;
	Thu, 17 Oct 2024 06:26:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id E08AC27EF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2024 06:26:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C179C80F04
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2024 06:26:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HaVvWsifyEmC for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Oct 2024 06:26:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B283080E04
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B283080E04
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B283080E04
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2024 06:26:39 +0000 (UTC)
X-CSE-ConnectionGUID: S6UcuFJ4TYa90S1EvorKdQ==
X-CSE-MsgGUID: B3tYxgCFT9GY9gXXN6h9vA==
X-IronPort-AV: E=McAfee;i="6700,10204,11227"; a="46113361"
X-IronPort-AV: E=Sophos;i="6.11,210,1725346800"; d="scan'208";a="46113361"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2024 23:26:39 -0700
X-CSE-ConnectionGUID: 7atG4R/vTAy0/u+4DiGoUA==
X-CSE-MsgGUID: Buyneew4QDmAb/ONUzceBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,210,1725346800"; d="scan'208";a="78789486"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Oct 2024 23:26:39 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 16 Oct 2024 23:26:38 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 16 Oct 2024 23:26:38 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 16 Oct 2024 23:26:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Uc09+R4VBt770Pn4J7DDKn38a4+SV01hvIerT7NC2xq3bQwgXAvyRLVZC+Tq1KXSzPVFrlPEkU1OmjDGY2ZQ8kM3/eZ3Ua3hAkMyfh+8mtpzmeovhuXMxyL/WqfQZkp2UUcQlyGAux+yobwbSmADtlfqkPfaWgnoR9DvsrJ1IxzFDDagsuRsUj1ewpMZSNSflRJqmfhOT0j6dChSoUbtm5R3WSRH8QP800pAZe5LS/xpGYnmEZVuNxnfTEm8WQ1B0UPjWM3r65gzo3ID+CuYF16FqZNepROxH/TN3Q1CUxNUzrnxzxp8ATybYLDsnxt1SR/pCn09tu40FGD+kbCp7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cu/V2QsOuPg4B7AmQLg1ONDXypbhMla/xcg3/OU7c44=;
 b=r7FKLa3bTm0t4EWLx6dJg9v66VDQvKmeaJrV+Pek7cR0OQxuDrp4ldo/mCMT3H/Z7UTzevz7VrMoELn/V8zLJEIQAdF2PmOD0QJphOcqQPLi/XuMx8R9sx5mGasMhLWKOEUhpOKGuknBkjjnN/R2BJ2WxyC/CfhSFCjMEZlY/SzIy0nB7qdB3uKOboCWuyRTzGI6WGyqpPrcvg7HdXBJPLkNs3Un3uv1JjbBIKDBGyWemoWq7zVH0XQeVcHTiNyf2ZgA+EguP7gAGuL7IwusuB4RVD8B+5cp9DZadHWgR+oWhsiylneGDCUcW83qA6qkSZ9EQgQ6h5+DtO7ddGAcUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by DS0PR11MB8020.namprd11.prod.outlook.com (2603:10b6:8:114::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.26; Thu, 17 Oct
 2024 06:26:36 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%5]) with mapi id 15.20.8048.018; Thu, 17 Oct 2024
 06:26:36 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Kolacinski, Karol" <karol.kolacinski@intel.com>, "Kubalewski, Arkadiusz"
 <arkadiusz.kubalewski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v3] ice: fix crash on probe for
 DPLL enabled E810 LOM
Thread-Index: AQHbGv2iCdWPeDTPjEm80WgimVZwIrKH9bKg
Date: Thu, 17 Oct 2024 06:26:36 +0000
Message-ID: <CYYPR11MB84293E6C39B4D3968E877E7EBD472@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20241010101253.994271-1-arkadiusz.kubalewski@intel.com>
In-Reply-To: <20241010101253.994271-1-arkadiusz.kubalewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|DS0PR11MB8020:EE_
x-ms-office365-filtering-correlation-id: 4bb29fb9-1628-4d44-2b58-08dcee74a6dc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?jCoX96tnlhXK9Df8qHOpoIM9VufmGtiI3NKObFhePeOp2KZmmkLgROLux71y?=
 =?us-ascii?Q?jC4m9FukiNuRsYMZghFHrfWIVf2gPUSR2C1gBKbQwgeUdIeti/2DbG4vSpBx?=
 =?us-ascii?Q?PptKf/9dHW5yNoNXCEeWDet1Vulnct+GuaQMjHN+x3tqVAIBogAAhj05ylzX?=
 =?us-ascii?Q?tFKUFE0HdZDNrbNCZSkjah9u3K/nYNHm6Ui7e8qlTLvtqPIjYKNJ4oCuEKG4?=
 =?us-ascii?Q?9SUYJvW3Talp2ud7QZetYTv7VIMWVsEXquR+e0eGxJu4gnCI1ELDioehMK6Y?=
 =?us-ascii?Q?zPTwSoczqL8qRzXMPeRR0qig67D+EAq8daJWLvFkn73PFHr0Au59TlwC6pzx?=
 =?us-ascii?Q?h67EibrELeuJa9iT6AcJzeP2pH64EhO5FRtrPiptIbiYXOc75GTWg21o2/c7?=
 =?us-ascii?Q?qWkoXKPCrNVwuQ5K3SQYu7FmT2rW9So/byzvrRFmGbtG/HtZRI070jCNPI5D?=
 =?us-ascii?Q?fGyPf9ryZm0F/ar0ba6HSsL8CzoSnFzdp0qjXdM5616a9J4StFplvZ6i4pYf?=
 =?us-ascii?Q?LkbpuDI/R3HU/EFwkXwJYxR80DwujnzXRuNHKVuuVUeOmMQ9ylWWhDrlK9Wp?=
 =?us-ascii?Q?uxj5Et4Mvjn+A5Mozp5Hp9Gm6E/H+EUPE6X4HqibUVOA7qtSt17rirW/h0vA?=
 =?us-ascii?Q?LMteyri09may1HfMPNym8InP18etiFWpRHMIYIsh3oZfvXcrx6j5RgKZorCP?=
 =?us-ascii?Q?IazIKShC8EeY3lqinfmLZiY0JrGpcwCD7YBm+1QmOqyWmDAlWR3i4H1Sxqw2?=
 =?us-ascii?Q?OtZp9kRWfxBWX0zVoBaQgNdqRYSVQ7t1qBu/LwLTbhl1D2eMWRmKqUpKnzdq?=
 =?us-ascii?Q?GZueI9p7lb5kJUraGI4CPX+ThMi/20QQ46WK92E3IpGPgU2JpCVmOILJ1X6w?=
 =?us-ascii?Q?+I9mWs+ohS7CwN0CXL1Qm41KeI6uFQ6ngFonqaKC7qMYBSbrJ+86qNWuatwX?=
 =?us-ascii?Q?peFnHC3oKrVAqKotUVw0zNUH9Xuuw2UPD0twPbc1bWN2miKjdv6rjyxGFQ44?=
 =?us-ascii?Q?prjyaUBKhMPVKQlh6W+BmaZqSeUAJf6PROLlMfQaN4JQL4J089psiIREouOp?=
 =?us-ascii?Q?KAWD2HI/Q14rNLiXK1mk9MDMNHVhbn1jruRTedYey15oyvx83avIG7GPsmMs?=
 =?us-ascii?Q?IYU+I0nZFmu6PJ1BGoPK+/sPN3Bfoe/QtTBX8OvXfBZ8jh9MHi6NZbUVnkdj?=
 =?us-ascii?Q?aHbdaTzs58HmDXab0SolnqmZIJSxLaoc/cUu+jj4S+QO01AiUqcd9ixAWDiw?=
 =?us-ascii?Q?RqRNnsgNQvz33y/BK1riOr7aXHq1D8YRqkvm11imde/LnFnp1Z1lOVRI+9/j?=
 =?us-ascii?Q?pp67e8UuEizCcwsTho6bU8OnATvXKK5A4peXbmGkESrigBH683pi2v/9GKH6?=
 =?us-ascii?Q?Ay0Hv5s=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?CBuw12szXkK1hlYKceo/VCxBgBTALJGqLPwAAMnM3CWTCmTSEvLtqHbWF1GC?=
 =?us-ascii?Q?ucBJVoWDgT0p1yFcmHfmT4ThkH2Nlzu+a2kJttKkX+GKrnZhcIyVF3vWxnoh?=
 =?us-ascii?Q?rjSIRrk+2ueqXtGiQ5vTlmHsPZX4kp+3RgZfhfQI6HsN413gOQ552jr+FUkg?=
 =?us-ascii?Q?R9pJ2R8ATDjU0YU8dQdM0VYsVxHx2oC/J5DA70/Stt+0zgTLQfn50ZsbCmIr?=
 =?us-ascii?Q?sR7EPrfZjMNXCrVZiQeAfot3zw7+VLpbWnGzedy35vXotHsDLfhoDBRpgInt?=
 =?us-ascii?Q?jCcYSadHOgYwKSar2CFwWfSsyu7Odr6cu9aKKUmEkwlrTAa29plqRYRqyNph?=
 =?us-ascii?Q?IAF3hJA/mb9x/YGkw1+Rfpa94DGNlYnkde9gMjapQ/sHtcRDYzOHKvenBXvR?=
 =?us-ascii?Q?Y1c1skmH5broG3cD6BTd6f/egkgEM/A7OmyUADozdEqo2Yt9AwpJZi6yCuaS?=
 =?us-ascii?Q?QZAKBByYvqsTo/NyAbFt8LHNyIQ+xZ21wIbgEm+GSVHEXootPIWqQyXWrXXH?=
 =?us-ascii?Q?rrJ7yENFuZ4wuh0CMQOd/KD6FHluNmwKZARZAghlcOeC4pa7/BACuD+GZr7n?=
 =?us-ascii?Q?Wr/9iWPL0X2VAiHKrLlt/MD1aMWxMRKWEp9xcUsysHuljQJO2tVjjLqkhciP?=
 =?us-ascii?Q?XAP6O6Cu2bQX/Yerug6HaFhT8QDx2ZLV7IH+3mVDJGAQ7AzCXFBzRmeyPj8a?=
 =?us-ascii?Q?YbBYE6xsbKeDZAmlQN/Wu2UqOM/D0bdS34VuzgLuu+ErHYIly2VtsnGhUclQ?=
 =?us-ascii?Q?bCWGnXET5l7AsIaHHdOCdehhWsMsQUahcZFCC+P4SXnm5Lhg91ZHJjHvm9RQ?=
 =?us-ascii?Q?zC62xCAt/gmFVxpIawZC5j2J7QBPftboIfmSNL+KBJpixQK5UmSUqbJtICKn?=
 =?us-ascii?Q?cjHq0X3XN4ViRx48AXsiqQe1aRwNgSKB6TXBHVZSNoe2/P8yJxor1mzRELec?=
 =?us-ascii?Q?cM7bf6UUG0/HDDeQ8AW2WzBTwOEcsfLNmJ+8DubKYKcvxu6EdHmxbEAm0D9J?=
 =?us-ascii?Q?JTkVNHH7HgMZWLDCsR9KrBv2o0t1NbFxRRWjX40Gu9IsPVBptz5Jq8BXLO1m?=
 =?us-ascii?Q?1Z5zMgbUxvcUydZ/t6w2F/a1k3dpqvNQXkR56EaZR2PYqO3nleahRyvjyPt/?=
 =?us-ascii?Q?Pf3cvBghW4An7phPnOIFNs9H6R1U+w6A3iMqyzrI15fXKeAmWpJ7Mnzifsvn?=
 =?us-ascii?Q?enn8eYGOvJl/GnaliOSkNk+Kpm2zU6kvB0RfV5h3ucGpyZDGXp8zXD/lpx/I?=
 =?us-ascii?Q?7lW20+lrrlj+fEDjdroU4lKfAHeAbV0snjlGKOHQymbZ76elZ3K6Al/lpNCW?=
 =?us-ascii?Q?D0513B+L4A1OgqRPR3gtvHlDqtNPNDY+u56fSswTBnQbTp1FXaJh7LxMHfP0?=
 =?us-ascii?Q?f8yNtJE/q8h5osGiQcqnQJZUIHeZBhUuvusHwyFRcEM2qHScgIHlC+gCIK6Q?=
 =?us-ascii?Q?UE8JFAX+OqNYyLTq4gYBnVNeI532JFOm7YSLcwvWQ3bvy/8avK6avKQVK+lS?=
 =?us-ascii?Q?0eD0yYQX+dzJ1v9JIECl33+vRLNgiKkFh26qUjs1KJLVID/OXWpGmj4rndei?=
 =?us-ascii?Q?mkwY5fpzkBYEqX+hQlBOAaDG5Vt6HzTnEKXb+xC0LVOEWOFB8cjSFbXAEfaY?=
 =?us-ascii?Q?aQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4bb29fb9-1628-4d44-2b58-08dcee74a6dc
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2024 06:26:36.2220 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Plse5wrVbJmRgn0EckW0sueGeP2MCbqImnPdw1i4Nhb1ZRB7nTx19Euw4Ms/HqVDx34fEX7nrWhXozbSg2U9E2TajfzXzV716xntg36OoMJIXZhyUrTifXV/PpJl8tT7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8020
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729146400; x=1760682400;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LEwrA68PZjNQKxwRO4v+F2c5Wbqkc33xsvJYLAnY7B0=;
 b=Rr+II2FyNh+Boyz5s7RmRm+Fe9pixUg0Qnx+zn9DcOEjkYUsMbfMyYUR
 W3UKdumjbxpB1QUUWAo8ddp/ml/v2+Ro6J+Pk6Lwyni4xNdYNCrcfX1vE
 +kDJKIO4Gekf4rPlFhJpqz8j91OvsYGb0XYrjV/at+DijEekGhOPOwcP6
 WF3OipUJpufjcS8wOR9di0IPwYZYRvxgpBAoBsUmp5UU5DfJ/GxW1fAwq
 QbE1E3qf52KRQaIXGxvNqpmyCgfBAcJFywfM1TH3sUa8RxIjQ2fvD/kpX
 g/jgWN7OOraVJ29Mk0ogQ6ezW03sgXJELGfAom8ZBWJuaAW9i0bRvAjQC
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Rr+II2Fy
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] ice: fix crash on probe
 for DPLL enabled E810 LOM
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
rkadiusz Kubalewski
> Sent: Thursday, October 10, 2024 3:43 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kolacinski, Karol <karol.kolacinski@intel.com>; Kubalewski, Arkadiusz=
 <arkadiusz.kubalewski@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v3] ice: fix crash on probe for=
 DPLL enabled E810 LOM
>
> The E810 Lan On Motherboard (LOM) design is vendor specific. Intel provid=
es the reference design, but it is up to vendor on the final product design=
. For some cases, like Linux DPLL support, the static values defined in the=
 driver does not reflect the actual LOM design.
> Current implementation of dpll pins is causing the crash on probe of the =
ice driver for such DPLL enabled E810 LOM designs:
>
> WARNING: (...) at drivers/dpll/dpll_core.c:495 dpll_pin_get+0x2c4/0x330 .=
..
> Call Trace:
> <TASK>
> ? __warn+0x83/0x130
> ? dpll_pin_get+0x2c4/0x330
> ? report_bug+0x1b7/0x1d0
> ? handle_bug+0x42/0x70
> ? exc_invalid_op+0x18/0x70
> ? asm_exc_invalid_op+0x1a/0x20
> ? dpll_pin_get+0x117/0x330
> ? dpll_pin_get+0x2c4/0x330
> ? dpll_pin_get+0x117/0x330
>  ice_dpll_get_pins.isra.0+0x52/0xe0 [ice] ...
>
> The number of dpll pins enabled by LOM vendor is greater than expected an=
d defined in the driver for Intel designed NICs, which causes the crash.
>
> Prevent the crash and allow generic pin initialization within Linux DPLL =
subsystem for DPLL enabled E810 LOM designs.
>
> Newly designed solution for described issue will be based on "per HW desi=
gn" pin initialization. It requires pin information dynamically acquired fr=
om the firmware and is already in progress, planned for next-tree only.
>
> Fixes: d7999f5ea64b ("ice: implement dpll interface to control cgu")
> Reviewed-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---
> v3:
> - use ARRAY_SIZE()/sizeof() and remove length define
> - initialize also input pins with the generic pins approach
> - remove unused OCXO input pin properities
> ---
>  drivers/net/ethernet/intel/ice/ice_dpll.c   | 70 +++++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 21 ++++++-  drivers/net/et=
hernet/intel/ice/ice_ptp_hw.h |  1 +
>  3 files changed, 90 insertions(+), 2 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)
