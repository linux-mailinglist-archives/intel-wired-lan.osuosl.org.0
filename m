Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 41D5998EEBD
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Oct 2024 14:07:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 844DC820BA;
	Thu,  3 Oct 2024 12:07:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R9fUoWU0VlFU; Thu,  3 Oct 2024 12:07:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B229B81B71
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727957244;
	bh=G4IO9Zmf7Hb8Qkj+yBFE2ofvG7tJOLBgx1/NEELOk0Y=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IHMcAoFxvjHVD65wrOe8RXK2ZmWSZJ3V38+w7EqnB2IxLS5hye9MJ+rqYRgqlqyBg
	 NQB3XROluUa6IyAihakfEK6xHsl7otHEbtPC0MUDCjZrlMYn19OoFGsfmahGplLTWK
	 YXx/mj2zzyOTKkGFko/rlJyqlVp/i2t4pkCtD47cqrodVLjWgJsThrfPFn8Wl9/iwj
	 auU9o3BFN6CcaV1dzCeIMOCJp3Cg4sadedFt4JFXVIEL1IEtXk0X8pqkWoDleOBrbc
	 3PVW3q7a0EaK7itRuKLLVVHiuV4N/B1vDdIYoB4AmosxgX/GkrvTLjDrt5llsC8314
	 yl4/xdcGIg/Cg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B229B81B71;
	Thu,  3 Oct 2024 12:07:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3FAAA1BF5DD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2024 12:07:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2C28440017
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2024 12:07:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WJT-O3gLNjK9 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Oct 2024 12:07:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 03CEB410B1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 03CEB410B1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 03CEB410B1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2024 12:07:21 +0000 (UTC)
X-CSE-ConnectionGUID: H9x3WJZIQXOOa8JzQGXlNg==
X-CSE-MsgGUID: 0Eb90yRTQqumvXHeM5CEyw==
X-IronPort-AV: E=McAfee;i="6700,10204,11214"; a="27033440"
X-IronPort-AV: E=Sophos;i="6.11,174,1725346800"; d="scan'208";a="27033440"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 05:07:21 -0700
X-CSE-ConnectionGUID: diDyrhUuT0qPlvZb968uzw==
X-CSE-MsgGUID: wT3tjoxKTbSjBRJF0yEvgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,174,1725346800"; d="scan'208";a="74341781"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Oct 2024 05:07:21 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 3 Oct 2024 05:07:20 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 3 Oct 2024 05:07:20 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 3 Oct 2024 05:07:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=H9uwQFcBuoh08V26YWbmlEDOvma7O/uORWuDUoeyn+6hrTg/3RhK3/Q0DE2LUIQOF28y+OG25lEUQ9i1AeNN1+NUwISb/RU/tlx7Bb1v+1BqfMOmH9ZEamnvMO/U2UO1NVeu2xnicVZYDoawXrO9fTtMcFONi8WF3e7Ha3O36GKWQsFEqZ+HX6F9z+PPkanOqGHoLHWKFVbsXKHLorn+D3qgrZAhRR8UhtXOCPJW4u2HhssYMz3mDqMWV3eRdCdI4eMAXplU3yrErMvCvAMQeLoMNMO4RNRer0Eq6p01Z6YR0aDWI6jqYI0v+kBbkhj/lh3/HRgTKT09gQa4Zft5aQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G4IO9Zmf7Hb8Qkj+yBFE2ofvG7tJOLBgx1/NEELOk0Y=;
 b=zAYHIuTJlrCcI4bQ1VHdyjqxbIofcZub9nocwso5PgmdhbktxrUTFAsffjcJ9XdaiWgDTP9xEAD7zf2OYnGEDfSKBmzLHVAEZ5aOLj2gPALAR3OUXn58waulqr1ruTzz4ueMnbXcb56Ef8ny3Q8KQ3ATK+6EnalBaEtQPpxarNQhPaLyfPaNioIT5WsjqZyO7L9wbzNjAJz3DakddqPM787QCOsTbjVSPbqEDGwwN8zy6dfnCY8Pt42GMy/AOflWAyY7tJIGwrSzVbKSLgrmmoafcWINii3ZztEfuo3x4oAHPhtlVre5VIk1pirj87ihBeNQ0IUb67nUAEFYjzm9fg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by MW5PR11MB5908.namprd11.prod.outlook.com (2603:10b6:303:194::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.16; Thu, 3 Oct
 2024 12:07:17 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%6]) with mapi id 15.20.8026.016; Thu, 3 Oct 2024
 12:07:17 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Simon Horman <horms@kernel.org>, Marcin Szycik
 <marcin.szycik@linux.intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: Fix increasing MSI-X on VF
Thread-Index: AQHbEO/RGXVlEOwaEkKKSUZkuSToFrJwbqWAgASI5MA=
Date: Thu, 3 Oct 2024 12:07:17 +0000
Message-ID: <SJ0PR11MB58658891193D7751F07C3EFD8F712@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20240927151541.15704-1-marcin.szycik@linux.intel.com>
 <20240930145141.GA1310185@kernel.org>
In-Reply-To: <20240930145141.GA1310185@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|MW5PR11MB5908:EE_
x-ms-office365-filtering-correlation-id: d6af2d33-e1f3-45db-4cad-08dce3a3ecf0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?ASYyIrrHyRvfRT4VI0pFTj0aH3xcsbYYmhCZjRcqbcoTFRWdhl6Y2OkBiQf1?=
 =?us-ascii?Q?kejv9auEQ8WTyy3YD4tvyWqycWZFK1YyCCGZcvbA4LXWlQPkpTmwkiYk+boT?=
 =?us-ascii?Q?JW1AJm+QAfraZSysaUFU8vr01RwHVgqQQWWYXVnJzt4zgBntzsligVyB0GXf?=
 =?us-ascii?Q?juN59o+P6Pa55/c4hHRoD/Fazi5MzUwk0m0Mp7O8Wd9enroD3EMhtZVvQ3y3?=
 =?us-ascii?Q?w6A09WVdhw2Xs92NIsUe4mU/1SwL4u3r4DXzcAfENu0vMMicnskEPkB3miBf?=
 =?us-ascii?Q?OAG66+NRqVT8Qac0W7EKIV3ikI8YnRX0L7BKwgQSSQZlyfClV7xnauN0XpW0?=
 =?us-ascii?Q?SzhGH/4eiRnRmIEB0Ruiy06OpXgMIn6kfvrvQ7CgQ/QzugLS08w0ohT+BTP4?=
 =?us-ascii?Q?jlzlxh9ckuDAc2u3Lld3vKrTuGCtlt+P1uACnhCF9AxmpmhNBTZaYRknSk14?=
 =?us-ascii?Q?FlCrlCxvGoFueMo3I/IlHv2sv0zhouLAnVS2GtN6GUKLATUKVVAhlE9aZqeq?=
 =?us-ascii?Q?nMvubmr7PkouwNGtX7S9zHszsPXDnSncm3suSAxSfc+cQu3qtZPlOW+MCvlE?=
 =?us-ascii?Q?11uGD26JPBYCzy67QRdULd37wg7ciZD9GwfoFljXk/2EuBZCBugo9L8GWkkZ?=
 =?us-ascii?Q?hQM7VXyAQP/nYHtwZWZwsKe4Kvp6fSPUIOASY72Y68glA1VC9GDPRM0M+chp?=
 =?us-ascii?Q?srocW7712polIrVuKlyoI6+dqMpFXDtxAEgFJzKsRcNAT2MFLg1AUXlpovWD?=
 =?us-ascii?Q?cobqGk+eJf0x0KShCSGJFGyNroEjXBXOHte2XffBhYxhnkDuQWJg9yoZo1Uw?=
 =?us-ascii?Q?qu1jHjlmfRrci8I+sROGN6jf2Bx1DzLNoNQ8oy2GVizfeTK2eesuc8185s/A?=
 =?us-ascii?Q?I4NNaZxVkJC3d+3CYEIHhBJNns1n1SYcsbiZWb19y/2qSl1MThad/NHyyfkT?=
 =?us-ascii?Q?sF5ZNPV/YN84i8yof7ps8+bIjbIP3hWwfo5GPf1w+ObX+7eDPmlLp4AGPNTH?=
 =?us-ascii?Q?XTj+rrDIJTwc521SditclyLS61UTik/1HDgesX2ltjjw0iNrGU/Tz7isadnI?=
 =?us-ascii?Q?DiWQi0VzmQIpeDYhch9yj13SqJjaQl5PWgOmYaWJ/vQYbvATka56yBuLF2Cg?=
 =?us-ascii?Q?cQ4hsKZqrXpa1v6G0456DebZ1VRc5QV8YcsAfBBcaNsiXaYBfpWd34TGXkx/?=
 =?us-ascii?Q?j3MXZEiROcGDYD0ozdb3FRdYW8OubxixfX994PAhScn/71eU8nr2ajGrb9Me?=
 =?us-ascii?Q?S3d1ffIJlH49kKfADiN0OrAER0IiFddyvtya6TPbHaQcIjLHb0QiWiZ/5WfI?=
 =?us-ascii?Q?EHw0YgqD7jDpPCuhn3ni/Ouoad+bYHMHqDkVBPuQold2XQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?q1mvpcqYxg9xlDoExRP88BzfVgotvVBFhO0zCF21snv0+mBY6EIXRcReCDjw?=
 =?us-ascii?Q?kocOaxjvYLfyffrXLEXz1VIdtTTK+KGM1ekE7L+fXp5btuvwc+wtaxUhvN2y?=
 =?us-ascii?Q?vKoT2LIgupGwdayFvRajhL/1YDAYmmEuwrYsRYILpQG89Fe/BEs9up0MFXg7?=
 =?us-ascii?Q?hjBMpW397hzOcFWn6IUuDZJiMAoehJi3qPvES5FqkKAwj8RcmjUqJdsV+JVi?=
 =?us-ascii?Q?eHDcxuX5Y/ScYMCO44oPxbgXA8f3zC0OFYpUjfPY8PA7PxOuqcsRzTz/GmCX?=
 =?us-ascii?Q?Ia1fthYyzisjvFPM6drDO8YFlY/+x93R2URCvEgSrAXZeHj3bG1BvDnMho4N?=
 =?us-ascii?Q?DLywO/cYxGH1l9+6B3BGsW5MN23Nm0wTGYbZPH1kcrEblfNVRdfzq5k+/teU?=
 =?us-ascii?Q?tUulCwXCOjdEfQhj/9434hchx81JbeoSAkBWigYOjoHKZCjSGc9Hfc5W8Ly6?=
 =?us-ascii?Q?fqgBTpcsbTPrafgDbzSRZkcdCUnMTU0fnWus4p0ytS4rUOcj0NMM5sIKq0uj?=
 =?us-ascii?Q?f9+WHN1Sg/QIroBqFBuG549gHHKvMI0QEavXlY+j9OTQkwYRinjt13+JUdlk?=
 =?us-ascii?Q?xJp+MxTYX+cJjkxMUr3A+CRy2kWKyHvapnnzNPOzlzB1F0bN6qmnDzYt8/Pp?=
 =?us-ascii?Q?zd+GvSzUSxTOSpmZyKqEvwMaaQcYPObPImKRR6O5EmYyvedwy1bOvLgIrjFZ?=
 =?us-ascii?Q?ruhlUB69Rq5dqkUc9uHxUQTMiQeoPsOu1kFD9/9pIlFrqUwTRNmqTmpYfKNU?=
 =?us-ascii?Q?P+OOGzwxfN0C1V98JUto0qGX8vzBylqdyf0Bve0d4xuQxYKtA7vuJUhUsdDX?=
 =?us-ascii?Q?H2v/uygTpy3Obi2fyHie1iIrgEAE79VnX96anGF8tOR303CziWytCe4aXUm6?=
 =?us-ascii?Q?jmm0UmhYhiZIcPoJTEmtRT6V+378MZjvk3t6/KxMsdzUlKtIss4GKJiqnOKs?=
 =?us-ascii?Q?bxwv94LkImyFIEYA9wI1LOSr+ttmCW7Ax645dJkyntH3oQFLgC/8dmd699pk?=
 =?us-ascii?Q?aRHo3jzq4jH1sowb4MGr/7JvEUjpoU5+KFpW9U+B3mj6ftvZIRHDuWnov0tf?=
 =?us-ascii?Q?ZdH9mG5vGz6I2GFT6WnJRgJce7nVtBa/FY3JHpfLQfFL7/GjXn6d2S5iJsxP?=
 =?us-ascii?Q?1lcMqSQ5wOhtF/eGaw8D4va11H0M5c31ve80wHFN8GPPvAwqSAZR2Lm4y/fL?=
 =?us-ascii?Q?7JvohjxoxxpsS6155qfLzgizZrbQG/w7GDPJEuyyhOi0Jv9RwnznLEH7t6jz?=
 =?us-ascii?Q?4JG05sT4XfqvjgE307EjX++bauQAZKa3AKXf5OFeIDIAjt1odueCrMqphIaK?=
 =?us-ascii?Q?/KbykI0uk6gKPRbGbVyPmXc5PT6SpNKG/IHOKhnl9hZAFe6dTmUsGoDbvUox?=
 =?us-ascii?Q?vQGEEiAP4T4StFgJbP2NErDQiTTPaMRS7b+6OP298R7b5JTkuE1+MBEcsqsh?=
 =?us-ascii?Q?OFalJgVdcpcOha0k2E00cL2XRbt7PA/l18ZWPt17GUOcQucqqjEwH7CMq2l3?=
 =?us-ascii?Q?qIVpnv6qHWfJ95IbdcmZRQuPbJk2Orpz0WefdKORV2ztc/F4VlPDUbSrtJSf?=
 =?us-ascii?Q?F1yLQ+6Vi+Zs+9NEL+kSanjzZaarFGHbPwZgqlkm3GKRG9x8nID74OXfgdPl?=
 =?us-ascii?Q?HA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d6af2d33-e1f3-45db-4cad-08dce3a3ecf0
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Oct 2024 12:07:17.3866 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mJ1rzOUnwLXVfz7h6/xdSYNAWmKyqFbkPg744FpXz+9Sq5LMGeM45ot7fw95POeWiQQoUvNvpojEjUvhb0ABthpCKnXoNCvYxIwFnrPLfH4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5908
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727957242; x=1759493242;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hJESBxoA1a1Y3KDoUixspoZILkcYriaro05d84YGEfg=;
 b=Fv6uuaGD8YtteEfMp9tHg3YG7Ekf3Pt9m2i4w+lYL6stoqCBMkP4wvVh
 BAR1uPLBkff6dYPIBDOWRipN+uhur4Y9S+sHnj3B3cTZY39WmAI3z3K+/
 eZzuxhOB56+kBYG3Wx1Wi/ZvpZhWdN0bzSi2V+gunyA6BGJOuyYhl+7Fd
 dkoMQrbcTw0Fy4Xn3azaaxbAfQJ/fhlXYUdkyqqcw9SezJ84l+BmVN1wm
 7si06VRj5pwc/b1bzVnYoE7+jbF0XJ2hmkMZWdP7rB86tBXJuoDEpIQfV
 KaKP1JNtSTamR2e9ZjYQ1QnH5Djy3smwEWnpx/YTA+ysULXxbu0npBGj6
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Fv6uuaGD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: Fix increasing MSI-X on
 VF
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
Cc: "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of S=
imon
> Horman
> Sent: Monday, September 30, 2024 4:52 PM
> To: Marcin Szycik <marcin.szycik@linux.intel.com>
> Cc: Keller, Jacob E <jacob.e.keller@intel.com>; netdev@vger.kernel.org; M=
ichal
> Swiatkowski <michal.swiatkowski@linux.intel.com>; intel-wired-
> lan@lists.osuosl.org; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: Fix increasing MSI-X =
on VF
>=20
> On Fri, Sep 27, 2024 at 05:15:40PM +0200, Marcin Szycik wrote:
> > Increasing MSI-X value on a VF leads to invalid memory operations.
> > This is caused by not reallocating some arrays.
> >
> > Reproducer:
> >   modprobe ice
> >   echo 0 > /sys/bus/pci/devices/$PF_PCI/sriov_drivers_autoprobe
> >   echo 1 > /sys/bus/pci/devices/$PF_PCI/sriov_numvfs
> >   echo 17 > /sys/bus/pci/devices/$VF0_PCI/sriov_vf_msix_count
> >
> > Default MSI-X is 16, so 17 and above triggers this issue.
> >
> > KASAN reports:
> >
> >   BUG: KASAN: slab-out-of-bounds in ice_vsi_alloc_ring_stats+0x38d/0x4b=
0
> [ice]
> >   Read of size 8 at addr ffff8888b937d180 by task bash/28433
> >   (...)
> >
> >   Call Trace:
> >    (...)
> >    ? ice_vsi_alloc_ring_stats+0x38d/0x4b0 [ice]
> >    kasan_report+0xed/0x120
> >    ? ice_vsi_alloc_ring_stats+0x38d/0x4b0 [ice]
> >    ice_vsi_alloc_ring_stats+0x38d/0x4b0 [ice]
> >    ice_vsi_cfg_def+0x3360/0x4770 [ice]
> >    ? mutex_unlock+0x83/0xd0
> >    ? __pfx_ice_vsi_cfg_def+0x10/0x10 [ice]
> >    ? __pfx_ice_remove_vsi_lkup_fltr+0x10/0x10 [ice]
> >    ice_vsi_cfg+0x7f/0x3b0 [ice]
> >    ice_vf_reconfig_vsi+0x114/0x210 [ice]
> >    ice_sriov_set_msix_vec_count+0x3d0/0x960 [ice]
> >    sriov_vf_msix_count_store+0x21c/0x300
> >    (...)
> >
> >   Allocated by task 28201:
> >    (...)
> >    ice_vsi_cfg_def+0x1c8e/0x4770 [ice]
> >    ice_vsi_cfg+0x7f/0x3b0 [ice]
> >    ice_vsi_setup+0x179/0xa30 [ice]
> >    ice_sriov_configure+0xcaa/0x1520 [ice]
> >    sriov_numvfs_store+0x212/0x390
> >    (...)
> >
> > To fix it, use ice_vsi_rebuild() instead of ice_vf_reconfig_vsi().
> > This causes the required arrays to be reallocated taking the new queue
> > count into account (ice_vsi_realloc_stat_arrays()). Set req_txq and
> > req_rxq before ice_vsi_rebuild(), so that realloc uses the newly set
> > queue count.
> >
> > Additionally, ice_vsi_rebuild() does not remove VSI filters
> > (ice_fltr_remove_all()), so ice_vf_init_host_cfg() is no longer
> > necessary.
> >
> > Reported-by: Jacob Keller <jacob.e.keller@intel.com>
> > Fixes: 2a2cb4c6c181 ("ice: replace ice_vf_recreate_vsi() with
> > ice_vf_reconfig_vsi()")
> > Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
>=20
> Reviewed-by: Simon Horman <horms@kernel.org>

Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


