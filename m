Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DA56497D046
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Sep 2024 05:27:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E3AB284BB8;
	Fri, 20 Sep 2024 03:27:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BoOFiOP4LY-n; Fri, 20 Sep 2024 03:27:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 29E4184A88
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726802859;
	bh=rTJK/qf4Sy/YpyQBUJT/OIU3hp492ttUR4/Ei0wzlVQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HK23R+jxPiITfT/St8CCe55gknJRYkIIf3Sj54ZXLgusIZtwDnX9LwnrVrqZnIbxX
	 xAUWOGENc+Wg+EtfS54QTRwU8kfZa4hypjW1d6lYCB645svV4SlVrqQ3Wk5QYeJgjR
	 d12y1+Pbb8XaCrAOOz8lx0Fo2dWfrArWyh4t3WUhKRbR5gMZb//EaUFquyXiMcU5zD
	 NZNPTqkG/7HWBxijrHr4+iIbGlskJCbo+rvDv05gjKVwAvS/muywyY5dBQGO/aRJNZ
	 8tcFRurg4w9oGtakkw2XLCeqHYm88z7iFANgeuKShtbCzxVPsb26bRpcwMxOAWvjgt
	 2UAF+xgITKKEQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 29E4184A88;
	Fri, 20 Sep 2024 03:27:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3062D1BF5E0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2024 03:27:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2AE45404FF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2024 03:27:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JjCIKyANMV5a for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Sep 2024 03:27:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7936D40120
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7936D40120
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7936D40120
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2024 03:27:35 +0000 (UTC)
X-CSE-ConnectionGUID: dFkwJav/SDqFzNGaa8jWWA==
X-CSE-MsgGUID: RCYU/i4WTHuNLhavEPTBNQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11200"; a="25670776"
X-IronPort-AV: E=Sophos;i="6.10,243,1719903600"; d="scan'208";a="25670776"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 20:27:34 -0700
X-CSE-ConnectionGUID: tAr+tTalQA+jMKcZxC4+hQ==
X-CSE-MsgGUID: QuGERp3CSQaddjI1PMbZYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,243,1719903600"; d="scan'208";a="70590749"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Sep 2024 20:27:34 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 19 Sep 2024 20:27:33 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 19 Sep 2024 20:27:33 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 19 Sep 2024 20:27:33 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 19 Sep 2024 20:27:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rNZxwK8+PMkW1y1b6gTlc2J7607iGi/i0yPYYUYvatpIh//tEl9Nv0yQSuh2Utvr9eZqSdtt8YK6g/tipaRxGFp1izCl0gwOejOwPW/faH8fD4bvGNlQzPjyqN0IBJLuq/Z0p3RSexpVs5wvk/FUcDmc+Dda6LR1/V2V78ruDIZ0OsrTBlpiCrSfMhehykcrXQBFeVZZqtEmSRoaKUQwm/nmSwp42q2eu+lecug1RXH74cs97YBVWujSYgAG84Od/+m2tgkywV3eIidnlnw8GoVz3wF+lPPq/IHYsv9pGqDDEVkEDYAXRXhL3S8hvFdYXQvjGHPlSfAQ8PiNOqvkrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rTJK/qf4Sy/YpyQBUJT/OIU3hp492ttUR4/Ei0wzlVQ=;
 b=TjqphngJ5kE21qAAZwf8z2OAQNxs7c8IlKa8VJmgzjzvUiZWdsQvz+rDgZDvWqY4sAMPIbXAmchVXLu9AMNFL1KqlBCaIAhU/QfFGgQuKZ8GwNoxz2rTqpg5vcrOzMD73UIRalUqFRU6qtB9EdvvJlLtVulamuYUqEyrAKgDFMhw5IvFRsr2t5UbWqfb45Mr8WZaFcxvI7kj4bE+37it8YY776A+IPPKQMT4tI5CZ4blGYVCQKQVIvny7urroXpQnkQnApl+2ELkvL8F6Xl54tUVHUzJqNrGwwJoxP7HGq1y7hA+3edB5xXd5zGS56X6V6DTNC30oCNyn1OBeSwPXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by CH3PR11MB7722.namprd11.prod.outlook.com (2603:10b6:610:122::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7962.24; Fri, 20 Sep
 2024 03:27:29 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%5]) with mapi id 15.20.7982.018; Fri, 20 Sep 2024
 03:27:28 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2] ice: disallow
 DPLL_PIN_STATE_SELECTABLE for dpll output pins
Thread-Index: AQHbBPIIVvrLkUIW2UmG9TdpHfMAsLJgD6+Q
Date: Fri, 20 Sep 2024 03:27:28 +0000
Message-ID: <CYYPR11MB842941FEDF539839C6BB1D9CBD6C2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240912085428.686314-1-arkadiusz.kubalewski@intel.com>
In-Reply-To: <20240912085428.686314-1-arkadiusz.kubalewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|CH3PR11MB7722:EE_
x-ms-office365-filtering-correlation-id: 54dc6174-44b9-4c0f-6313-08dcd92427c5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?CYeu9a24fN/Zq+GTkIEMhGQsSfzyn2/0A2kdE01wYo2Cum2WvGTMbHRvuA8Y?=
 =?us-ascii?Q?qPfMSN0bnH5Dq6wZ568jgspcFv3yqd4lUnWEuKUFJJFeY1n47dlT6MDjUdw0?=
 =?us-ascii?Q?6+tTw3LfzHnHeYXVSYHI2yL1iIBiaMR/UjU+LV1qksWd6ulanUpcr7sZOwdJ?=
 =?us-ascii?Q?1G9C+TuJ62i/NYQuI6tTEyYt42xHNjhvE8t71FNW1X+tRirlbpSNbkwboWw+?=
 =?us-ascii?Q?vZMiCjbCCE9zrog29tzqEG4utggZuFgfUBxADu9AyvnM9x+h07tHbpN17JKv?=
 =?us-ascii?Q?pqZbpgEA9oo7ai379o0oEys39N+Q0S4bOqWPmjYV2h0kUyIYcui2nInS6GV+?=
 =?us-ascii?Q?XPcL9YJgvLK+v7h4rz+3BYt/JESKL0UldbKsqT080l103Lv/qV+9bvWCVW5o?=
 =?us-ascii?Q?/pJ+6jrTP8a92D9YUgct8lQcsK/nQHIOiiwIikSR13tvntjRbPSpM6Tj+JCS?=
 =?us-ascii?Q?MP2dG8Kbxy62JE59NO7Fhd2dZ4ZNXjlgkIoZvzAqvTuGwNmsZgpj5cFE1tT1?=
 =?us-ascii?Q?sGLt1pVF8E/AV48lIBEFi1uPlkKJOF8Y57HKDrfAy3s3cp78Qj7tAYbeV6kk?=
 =?us-ascii?Q?G1B2CLq+zRwLv1R8Zzzei+Hf6JY3Dpb5cZJYwrdmIuiLqiLPnn1LzbvqlCp1?=
 =?us-ascii?Q?OMpHwTXnxCwVat3nOXx3vAh7T3bMIFfHb2tomZS+SEhChGTYQueVrVYPwXEv?=
 =?us-ascii?Q?3fw9WXtaNrk4N+B+D36zYGP0l68WWu/v8Qm/itIKk42RexY99/duMux3kXUg?=
 =?us-ascii?Q?fNedzBDqeF6/Z2s04Zj5nPZtlB8WABNWSDpP03BHDa28IViiCdq0ZtXtjW71?=
 =?us-ascii?Q?JuscrYngVHlEI9cS2Lxa7iUP244mKZM5wQVXZF9gz9GlXM47sFnzSwYCoV/t?=
 =?us-ascii?Q?Fn+PGyJjvhaZ5C6gjloCFD0aQuyHbI3R6shyr17jmY5vEGV8qwPX/X84WQc7?=
 =?us-ascii?Q?07l0OALjCXJIFNF3Eh4r6ZIyoNb05FKsBjkEk2gkTv/I20cL/VjFgDi4RHrR?=
 =?us-ascii?Q?MmAnm1ygUMztOAaCzJ3/Lo9kzwMz8aYswenajftvepm206kiT201OEii5d1u?=
 =?us-ascii?Q?pfDMBN7Zyxy6tLyJDLr+GFxz9u03tEYxIF2MC3NXzkksVyHullA1Tdd/c8yh?=
 =?us-ascii?Q?GkICcxT/bpIsP7/VsVsZgB1rR1BaaV6K5THi483bW1/u4ZD5Ma8ODRf+KQQO?=
 =?us-ascii?Q?N4mBzAG63fH4Sx6demZIdKiSqFak5I3b9mBxTfKtNbugos3I0rdfWYd5EgJI?=
 =?us-ascii?Q?3DOjEQtvmoN/nx4cFHc1tqbelVESUPlD+J8uvEA5dgHJWaR7ZeGhzlDfkGVY?=
 =?us-ascii?Q?/ocGWE/uVva3R06ocfNbDEwl0gwz4sQU8TeYRwoIlfPt0ryeSsnZUKT4hAxB?=
 =?us-ascii?Q?kaZZWwYgbCprSVR5QnbMdRLrIKnqY6+KKn9N1HRfHHyD9bJCmw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?0RdtrAsQmQkoucSXZoj+WZklYyz59VnBjcL8wkhMxvi1ZEjWBM33KzOOpS7C?=
 =?us-ascii?Q?937Qnqs6RDKwH1Dwk/gn+EZ4DavzLrp10Il1a77x25pf1HMMFZJa1fk6w/sg?=
 =?us-ascii?Q?4xcq9jVbaV9h4BY3h7dgmRuqZNE7uFbWCI743egzqAd9mAUOqxucKBKbDZ0F?=
 =?us-ascii?Q?5YbTaFb4fPow1oGAOBEj8C+GqoW6oiWSGAc1qLf4jxqhM2v/eHGB3Tp6HdI+?=
 =?us-ascii?Q?Vn7ChTtZjMg+neH/WuvSz7yrm5kywEeQaZ2cV69k7rqsncoBWYrrknWKuAG6?=
 =?us-ascii?Q?i8xNC3U9NGsjH2Z90r3UL/9Dca8awOhDhfVn9Ec+80el+S5YQztDHfSSolrn?=
 =?us-ascii?Q?PlopRt6r7MKBG/vzTZtp/m0fnj7J7vU8AjraMrFjLFFSnY+caAf24ptCOvSa?=
 =?us-ascii?Q?aORSc+4JtMCHAOzNLs3ebCGOWrbaDZ5v8jOPAtlmR4j34fZqM1Fwy0SJsvKu?=
 =?us-ascii?Q?It24+kH4dvBnDuC8dAc4DwKlCYdKOB2u4wpShi/wF+2GdVctufQPXngeTRAH?=
 =?us-ascii?Q?HeZfl0rOngW+ca+igJ84IWLKwpgtr9W5WeZJJqC0FzMPO6vTVESrKzxJdV48?=
 =?us-ascii?Q?FW6k4K2aJhZElP3OvWJRnyR/l19FImA0G24FHly7R93v0sjhKH5mOe2iEzxv?=
 =?us-ascii?Q?Ct8hCZSuECmj1yOWJ9AKFZWTGMt9WFPKnzM67AshhpVrYU/qZPp8xXSCHydu?=
 =?us-ascii?Q?y2TbPdWB2hmxuR+9SAnpO/07dXZjtlM+Vlm0tzU4moP2707+UhBtKPjt73cK?=
 =?us-ascii?Q?WU/ejqHKaKYCW6BDdNVa3/+fOb7NpWF7GoLfRYsBhrdGgihmHP0vB0nfKCUB?=
 =?us-ascii?Q?V1Yq05TILG3TnNboC2wglntm9dU464etOD7uDBLTG3BwD2mpKZ+aMSDO7FIi?=
 =?us-ascii?Q?FjehwffBm2Sq8Bp0t17URhzwMqyNtIwy8/lcQd1lj9xRXRm2dKpWMRl4EdsL?=
 =?us-ascii?Q?/nBaiXM2kUgfqGH0D6zQWyDKrg8+cO30bXl13RJ/T3QLcWB3BAJxRiFKqRda?=
 =?us-ascii?Q?FVk7HjD/DjVyvlNIfuobCETxJaj+Vjqt2F0mOFdcRTDCsOMNuuUeAQ0i59dj?=
 =?us-ascii?Q?uV8if8pOYEYaQlO1Da23yUtXnvqWDC9ysCMVVKbSaF27ISN/mka1YNlUBXuW?=
 =?us-ascii?Q?7tVBLDB2UiW1hq7Ij9uR2U3jV+u+gzAxGdjOAGX3If40QVElkJ+RjrLfY/Az?=
 =?us-ascii?Q?fyqEPAYBll6xX8vlqkI6U+iL+9JgpOnu4mFSdzn2W5W6HwxwkQwXezWRzmj9?=
 =?us-ascii?Q?2cIsruxqjuwNoneKyB40vbzTq0CMSNG523VTUGEThVOKgmFt9rZZsSHzx6BR?=
 =?us-ascii?Q?3k9GPGlWSXeVz27yRdhdpIHFXbAQyvPQycGfIQkQeQWtYW2SKh92j8dPo4cd?=
 =?us-ascii?Q?lIO2sX0ip+2/SAjW9Twm3Pwi33wAxU2oPBQfMuML/+Q8UkkGqQLekGfvYaGT?=
 =?us-ascii?Q?a+ber3Da7/nwQO8l8Gp1In6cExPI1GAvz+qpOhry4NjprRbS6AbrEYJgy6gB?=
 =?us-ascii?Q?5VMuksSuduIozj+NbfNrJQse6vcL3lXn+VsT/04oI8xZjShGFPonv3g4QEnr?=
 =?us-ascii?Q?blgNkcElVl81toJyYlhRL3yNKDff8inRLPFBAbRmJg+3jP+0h3G8A5e3DcUG?=
 =?us-ascii?Q?RQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 54dc6174-44b9-4c0f-6313-08dcd92427c5
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Sep 2024 03:27:28.8476 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 04B5tB0JSFUIK7FFmT49L8ZictrLa5yOJZ1gYwvVEZ27OQcFejWez6dU3KVEDUBFzv+hlErHC+BNTE5ND7Oljm2FRjR9XERY+5memgf5vNfxEuiSWZbPbWoGcrL3SKgp
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7722
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726802855; x=1758338855;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=neJ9K4LqnwfLbYbLYBvzgAaOPJUJ2KAmMiE3HWcmddY=;
 b=VC7VbmDC1XEB4/CsvF9pA3lCBoFAfB4uCkuf8Y8StEN47BYSjb5tkQ2d
 yXQZc6+f+Bxmz0Rx8g7Ombxg6Ue0XFdtIEKAtWXiPs64StVyOh0N4xpl4
 RnHuuu/zbHyuee3J5gwaFzXaaqW5G7kq98ZjUfYZT53ArwS1GOc2rduvI
 +lZ5cc2VIg90I0Tq7xtP3Z52cNvZv5i1oNOETulSWI7lo/yp+SUAA2gDi
 pEWXMvQetHDkz+fGYfWJEeLfVoI8yJ89buidzfIBlonIWMRTclZ1w9Od+
 v9Iz09Eg+N0/Of4/hqtXUOiPOfcjZxhkvI/lEBfM6FxJ5tzz1v9oZWbeY
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VC7VbmDC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: disallow
 DPLL_PIN_STATE_SELECTABLE for dpll output pins
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
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 Paul Menzel <pmenzel@molgen.mpg.de>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
rkadiusz Kubalewski
> Sent: Thursday, September 12, 2024 2:24 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Paul Menzel <pm=
enzel@molgen.mpg.de>; Kubalewski, Arkadiusz <arkadiusz.kubalewski@intel.com=
>
> Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: disallow DPLL_PIN_STAT=
E_SELECTABLE for dpll output pins
>
> Currently the user may request DPLL_PIN_STATE_SELECTABLE for an output pi=
n, and this would actually set the DISCONNECTED state instead.
>
> It doesn't make any sense. SELECTABLE is valid only in case of input pins=
 (on AUTOMATIC type dpll), where dpll itself would select best valid input.
> For the output pin only CONNECTED/DISCONNECTED are expected.
>
> Fixes: d7999f5ea64b ("ice: implement dpll interface to control cgu")
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---
> v2:
> - use more explicit commit title
> - add empty line between commit message paragraphs
> ---
>  drivers/net/ethernet/intel/ice/ice_dpll.c | 2 ++
>  1 file changed, 2 insertions(+)
>

 Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A C=
ontingent worker at Intel)
=09

