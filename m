Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 93F9F8B2F97
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Apr 2024 06:57:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 02504613D3;
	Fri, 26 Apr 2024 04:57:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0EkHQpe4BQR4; Fri, 26 Apr 2024 04:57:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4653A613BF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714107451;
	bh=Izog6573ofIMESvjIDpKCaAS5XcCCSki/GZya1d8e+g=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=X+nKk7AnvjLoQjjMtPSddGlyWvWu/tEJy4+/HKTDTOREoplV8AiR7vTCMiokpwYfW
	 A3zXbn5+HMKei6sJFjF3od7BJxro7X8kdxIl6puszdl/WsyBsWhwVzhDNRKJZUL7FV
	 NX+XI3JCiyNsTZ/+6pi49h7LITMlOcjes4dg1DL8lzXS+F8hXIx9c5sm6fX2gA8NO+
	 A+xQcA9ZNI59HNAmd5Yl7npmlxLvysNcQGCbzfYiuH3PGf/6lqa5IX7ylex1jJobtT
	 nxhmDqvxN02HrsMd4boonw5sk5KJqfPzr4TSNEEJAV91lL0RhFBLgUaP8zPOFcnHhA
	 dwU+8473GxzEA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4653A613BF;
	Fri, 26 Apr 2024 04:57:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 28C6A1BF3B0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Apr 2024 04:57:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1381441EDE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Apr 2024 04:57:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KKEhIVlEqrA7 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Apr 2024 04:57:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0B08941EDB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0B08941EDB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0B08941EDB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Apr 2024 04:57:27 +0000 (UTC)
X-CSE-ConnectionGUID: J4N9HRMESJSrLcgbLN/XkQ==
X-CSE-MsgGUID: EP8Fc3BxR7KTNYnZKon5Sw==
X-IronPort-AV: E=McAfee;i="6600,9927,11055"; a="32330216"
X-IronPort-AV: E=Sophos;i="6.07,231,1708416000"; d="scan'208";a="32330216"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2024 21:57:26 -0700
X-CSE-ConnectionGUID: rNZ5SxXJQPWwzH1rdpXXpg==
X-CSE-MsgGUID: bIoNZiEzReGzk8YV4DhEkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,231,1708416000"; d="scan'208";a="29965733"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Apr 2024 21:57:26 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 25 Apr 2024 21:57:26 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 25 Apr 2024 21:57:25 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 25 Apr 2024 21:57:25 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 25 Apr 2024 21:57:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d+7SirxYwtnaVzPF701y6br7QLxZOhEpo/v/hyjCwDIc5+yLdN6wbcl84vEHUd166gkVPvMwEiNqw1PHWq9Nj0IPJXItl+T4T0ZT2lbKRVY6sH/d3PplMmuxxnAPbJD2Tvsf1IrshA0Zb8HLBk+uqV/yJKPOhOAeamu3NQKsqfzque/+Mih5gfOjCDqXmBPs/eMp+aPhVLUmpb4NM5CWidh8tE89OtuPslCpABlTxd7cawcneYY0BotCYiOW2bK29TS1bcOdpvwaQV4KNSqVB/YYEIcKnA7RzX50lt7Dpnm3/FkhRBfhRTo3xxLjFpDkiVtBSyNg8pnsN0jcnc0U5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Izog6573ofIMESvjIDpKCaAS5XcCCSki/GZya1d8e+g=;
 b=ejf2wejGIITEgfomQb8TOqViq49xU+p0r02W4yFDVnQjehtQmgcR/9W/bD1JDOvq6hHUD7qLj3jBB14A1oyICFogKWN2keyet7fyQeXiMiDPBg/IUTNuP3K4UjhN2OOyJUP8X4bJAIA7vJ9GwTmzgWfnfwXj3CdCg10BTwCYkBp2/Xvi6RtwqSwQ4VOuOklNq17WvekjdeQZokTphRKp4fD3H+mAMNDlSzdkrUIHD1rPv2HOTNtPKTCMiL2+izZ7LDAEHBh/PEEfzm8aIRTJFnOigK+yv9owTjcmrI+JjjQFXFYGcoXKhEVDdgHgJ0frJyUkvLQkQgxkxSelBtgAwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by MN2PR11MB4550.namprd11.prod.outlook.com (2603:10b6:208:267::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.30; Fri, 26 Apr
 2024 04:57:23 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9%2]) with mapi id 15.20.7519.020; Fri, 26 Apr 2024
 04:57:23 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: =?utf-8?B?QXNiasO4cm4gU2xvdGggVMO4bm5lc2Vu?= <ast@fiberby.net>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] igb: flower: validate control
 flags
Thread-Index: AQHakA4QaVoWAegywE6qfVyVDsliobF6C/bA
Date: Fri, 26 Apr 2024 04:57:23 +0000
Message-ID: <CYYPR11MB84298C5B4BC240F9039967ACBD162@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240416144335.15353-1-ast@fiberby.net>
In-Reply-To: <20240416144335.15353-1-ast@fiberby.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|MN2PR11MB4550:EE_
x-ms-office365-filtering-correlation-id: ede6c846-338d-4c8f-f795-08dc65ad5ca3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|376005|1800799015|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?eHlVMEhMZk9NRHB0eDZhNVpvajdtWHZRL2ZDS29Dd0hOTWpDV21EZFhWZmlM?=
 =?utf-8?B?bDA3RWhkRU5xU1JVTnRQdE5rWm1WNmhIYU4ybWQ1ZXJTeVZXNmxIdmFCM25p?=
 =?utf-8?B?ZG56SkR4TzFvNGNWdEcwbEhtQkxTazBNNDRyWmphWGFmUDgyUnY4Q25EVUhu?=
 =?utf-8?B?V0N0RnI2VzJSZXVuQ2ExRXZNbnRBZ2l6Q2RBb21LN0RQOVgzWUZsc0JaNjh4?=
 =?utf-8?B?TUIvbnE2OS9LTTFicTdTdE96eVZBa1lQZ1dtSVRLSEFGUjFhS0l0YzlQVW1s?=
 =?utf-8?B?NG9nSkxydzRjc2U5RWQ5RENsczhtaUN0MGhBcm8rZVEwK1FNY3J1OEZxY1pk?=
 =?utf-8?B?Ui9wU1YzN2N1RUEvKzlySXUxZ1lpcjhOWEpWcE5FZi9qNHVkWmdKSzJ1d3l4?=
 =?utf-8?B?c3RwZms4QmgyU0l3VTRIRGtWZU1nbks1Tnk3UlRsV3NEZys0YncyY25YV2l0?=
 =?utf-8?B?NEVqSXg1RDUwTTErYVNOVVV2czRYZkZyeVpsYkNmNFhRY2s4dWlSY3krUFdB?=
 =?utf-8?B?cys2V1lURFNFZ0FQZU5Id3BINzZNTVJRWHNMelQ3QnNCZ0Nvb25tbWVXTTFM?=
 =?utf-8?B?dkhIbXA1b2M0bEdpNC9wZWpiMm9WK3lsMm5LUW4wcm92QnI2VUQwbjJWR1Ry?=
 =?utf-8?B?bWdwMXJzRHdxWm00cVc1Sy9qTDJkc0ZTOEo5YTR2clVRMVV2RGxwZUx4Ui9Y?=
 =?utf-8?B?VERLZHI4dDJveW5WemYzRnNWUlQrSE1BSFRWdEJNVndjVjZDZ04rUVQ3VjlH?=
 =?utf-8?B?QzFvQnJxSU0vZEVYNkVIZzdrR1J5OWRmQkVZRDdzcmdpYzN1SCtieFo4MUVK?=
 =?utf-8?B?N3o0djBtZWFYV2lUY2dYckZHSmhkSkVrc1A3dzlKNTRBeC96Ym5rSDFaL0tu?=
 =?utf-8?B?endpckVKK1RaSXlkZHJ4S1M5MWtoK2lHekRvei9Gc0QyRXgzOHJadU5EbW8z?=
 =?utf-8?B?eW5MbURMNWdBUG5oakVoTUlKdVY5eWxFZkV4MVFqeCtqOXNyY2JpUzVBZkt2?=
 =?utf-8?B?ZFc3NjhWK01XM1pxUzJxQ3ZWU05ZOUNxZFc5UHF3ZWU3ZVlQLzBjbjc1L0hm?=
 =?utf-8?B?MVVCYzNlSTY1RjRMQTRLZ2h6aVYrNEN6MzR1MlBxN1JlUWtRUG5paTB0UTl1?=
 =?utf-8?B?RExqeGQwZ0QvTjAxblo0QnJLaEV3eHp1V0l3RmtTaE1ZdVczV1A4bndZTUkr?=
 =?utf-8?B?Uzc4ZFowbVhrcStDbTY4dVEvd2JENWdlUXV2YldLWFQ0TVU5UUNaWGhPK01E?=
 =?utf-8?B?UG5vNS9UaFR5RHluUDlOQzk4eWMxNU8zemdCVzhJd2E3NGlVdWRxNlRROXph?=
 =?utf-8?B?K1RrZ0psTDFTNXdwWDJwSjRPM0t6VnJGR2dFbUZvZXRqYldQOEtiek1KN0Rk?=
 =?utf-8?B?STIvTFB1VmlxUmUxdk0vdE82L21OOHhqMkVJRlFpL3FQck5EODFUSDQ2UjA5?=
 =?utf-8?B?YWpnTU5PZ3d1UHhHc3ZuYTVBSi9kZWtoZjQxbkYxUnJtcTlpMXRQL20wVTRw?=
 =?utf-8?B?T2V5MDl3eWRlbTBkalI0Ryt1a1h3NEdITVF0R3haZm1aNTlUdk1UZFRWT1M2?=
 =?utf-8?B?NUtuMitBMkJCOGp1V016bWpYSW5GNkN5YkhZRktvRnI0c2o0YUZOT1Y1RXcy?=
 =?utf-8?B?UEQwbkpNZ0RSNWVLRXQ5ZjQvQ3piQXl6bXdCVHFmOGNqMnhXQk92UU9RMnVF?=
 =?utf-8?B?S3diRlJIZXcyRzk3Qi9KeXc1eng0dHBLMDAvaGpjeGpGbFYzU1hzT3ZNbzUy?=
 =?utf-8?B?RWkyUnlwQlFKL3JsL2ErOWZYazFKcEdmNUVWZW9ZOE9aNW41WjRHRnZScDRt?=
 =?utf-8?B?ZTJRdyt3MEtaSHRSYk1nUT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VUMvRDR0S0thSnNmSUpUdHd6MHBUMTY0Q1YrcW1TblRjck52RjZ3ZUFEVEJJ?=
 =?utf-8?B?R1VNZHd3Zml4a0FxTVRsb3FiVmh0M3RlNXFxMmlXODdveTBZc0VNYXNDM2xO?=
 =?utf-8?B?dDBZaUhaRzVJZGFQOEIxUU12dzhvTTQ4K2o2bXBjUlpyNitZNGZ5S1FEUnZS?=
 =?utf-8?B?YThxcHVYWlQ5Z0lwbkFPeU1EYUtwdHdlUGIzWVZ0MlJYUGcvZnZGVGFrYmF5?=
 =?utf-8?B?UHZzbEQ5N2JRbm1YZ2NQTTA5VWRLQndaKy9neHFqSEQ1VUJyd1V5TWNuaDZv?=
 =?utf-8?B?bU92UHQwU3gwTUJ4WWN2TzZKTnhHNjdZSnh0VmZST2U4MkJjeWY2UnU1bjVv?=
 =?utf-8?B?VnRCdE8xcVhwVTdoeTFUWkZ4OVJQTzBhcXVMZkE5RDF5a1IwdWVneC9Ra0dx?=
 =?utf-8?B?OUJoZ295Q2R4T0UzR1BQMzNIUXpxOTUrV3hzMkhHK0J2WE50OEkzWEVzZm8y?=
 =?utf-8?B?cGUrWFNWelg2VGVUTWVYamlrbS95MVNJOHRIUlFmenJYUlR6MFMrbWhpeU5r?=
 =?utf-8?B?TmRzem1FWDJISlVmM2JCYlRZcU1mVDFBbXpZd0wzRGZIOUwzTitlZnJ5dlNn?=
 =?utf-8?B?eVNEUUZlVm9OMm1Kb2VSMXFVdHpqRi9TanZERmdoYUUvejBVcWZKSVd6WStR?=
 =?utf-8?B?SUp6U05uUU5YY3h4QmhZbjRIT2JqSms4aUQ0S2tpV1lTb3Zxbm9IclJITkxu?=
 =?utf-8?B?Q1VRQk5xcjBLTWhkSjRGSFZqWEdFN3FUb3FiNCtDQ1lqcGtSYW1qcWU4YnU4?=
 =?utf-8?B?UzloOHJBUUNIbHNIbjFWU3pPNTBuK2tXbEhoNzB5Sk4vcjFmN2lIUDJMKzYr?=
 =?utf-8?B?VFNHRGNMdVZqVXhTRWRIZTY2cnViaEJJN3lNWGlnMnZyMCsybVJKeTk1R0dX?=
 =?utf-8?B?K24rNEhTSm1kSUFWUnRJWmJ6bG5wNjVLM2pyWllNNGdhRXFpZk9id2lqWHBp?=
 =?utf-8?B?M05XN0hqZGZzS2dIMUlPV3ZPYzlRYVkyREpHeWthL2Jrc1NkSEEwVTJudkZU?=
 =?utf-8?B?YXpRWUszeHcxdDBCQkxuc1hQMkNoMXFRaGQzaXozdEhORHF6V3YweUFNZ3Y0?=
 =?utf-8?B?Vk9yQWVxZDhJdWpncVo4WkJYbitxRVpsNGVOcDNzVzBMTld4VU5wTzJyVmtK?=
 =?utf-8?B?WUkzL0RKRE51eklSSXdUNjdOWUdwdjRFQVllTHVGSUk0K0puM3RRZllySWtn?=
 =?utf-8?B?b2tESk85RU8yTit5MDY5M2pwS3RoZ0k3SDFFWmMxWGUydVVGSlBxcXBvQkpw?=
 =?utf-8?B?WjY2Z1BKWGRsRTRMcU1sbkNFZm1hNE9aRnpkaER6bVhielZlemsySTNCL1Uy?=
 =?utf-8?B?ZGF3eEZWdnVLRXlEMlo1OFgweGFwQjVMNUFhWWRIb0k5eUl1Y2JTQlR4ai9T?=
 =?utf-8?B?OUV4SDBsb1d0UC9JOTdyR0I1YlhRc3ZxeE5sS2lkajJQNXFlUElJdkZwODVR?=
 =?utf-8?B?dlZsa0ROSXpqbi9FTjZSblI3cVg1NkFicEhUL3piM3NTbGxmV1V0S01kdFlX?=
 =?utf-8?B?dTJpaFZBdVErKytKNWVpWFR4MHBEck9PMkJiZW9VTndsTE1UeEYrSlQ2WUhE?=
 =?utf-8?B?THRPU0xQdE0wVnJEVk9iUGx4VnRHdi9NU05ZSU5MeVdDMm1GR1NrWjFNMEYv?=
 =?utf-8?B?SU8yTGNJdlFhcXZYZ0Jib0c2aDB0NHF5WGREMnNrZElZamg2UFFsaUJKTTdH?=
 =?utf-8?B?b1Z5L1RJaDl5Um1Yd2VocWJGZ1EySWMxeEhpUDRNODBDMUxpY0cwQ29UZStv?=
 =?utf-8?B?Qk8zOTBTbXhPcksyYXFWeWJOSEt2YUVteVNWODkwTmFDSFFIdkNmS1VtMkYx?=
 =?utf-8?B?UXVuT3Q2b2lwU25USTN2MitodG11WFUvSVZqLzVGL3hSVmVwL2pqK0xtSUs1?=
 =?utf-8?B?NHhoSUtseCtyRmFHM21VWW9mblhxRDFVcTI5VER3TEluTWQzL0JQQmJvbzQ5?=
 =?utf-8?B?OWdoZW1tbGUvMmo2ZmZTYWRwTUVmc2hzZ0FXWmpaYXgxM1lOa25TZmQ2cm9z?=
 =?utf-8?B?V2pPR2lsNzlPdXhRcEFQZEM2MkVZUGwvdmpNaHRyZG4yTXNmQTFTY0VLd1pC?=
 =?utf-8?B?dkk5VjlqUVlrUGFnUi9SaWx1YXFnUnRSZk84L2YrUVAyVHlyYlRnNkJGVkRN?=
 =?utf-8?B?a1VJdDZSOWhqSWNmdC9RSFd0QkxyUWRLQ1h4SnR4cW1pV1NSckZkQ2c5K3o1?=
 =?utf-8?B?SXc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ede6c846-338d-4c8f-f795-08dc65ad5ca3
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Apr 2024 04:57:23.7145 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: x2pnRBFB0OPpl5afvjqTJb5zcB7AnVmb6rneB8vE6Fp33Glds7aJoAAcWduAOx3CLckWUhRdyF5/XTvYyYBIPqaAD+Y/QaMO8DgY/cUxrhr5C1FiXdn2h1KY2GkkZsSQ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4550
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714107448; x=1745643448;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Izog6573ofIMESvjIDpKCaAS5XcCCSki/GZya1d8e+g=;
 b=eIHOZpXYvA58iFN1YvWwxCQMugG5BbqF4E5sNXSXfXn1loHEVqrz4fMX
 HPRZ5TSAx0TnQNgwu8H1quGVqXUV2QTetfBlwobZdYl3Kqi3SX7xndWrH
 XgscOELHwkrKlpS2UZomsE5zRo3vNV9cDaryyCq3zZLgKIWcEYb1czKFa
 z5dkA45LFnXgbEH4GdQm6T8uuvqi1qFhwhv7A5mw/qdAFzS6NDgHpORQ8
 b+koj1ATxcTc84clI6/YO46t/FgVQe3uLN3dBLCOgvY0Ui1tlxUJ/mHH2
 BuX1Nhuud6ymoi8Or1dLIDU3egqKU9fy8yAidmDeSJN198QLTRVmmRCZl
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=eIHOZpXY
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] igb: flower: validate
 control flags
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBBc2Jqw7hybiBT
bG90aCBUw7hubmVzZW4NCj4gU2VudDogVHVlc2RheSwgQXByaWwgMTYsIDIwMjQgODoxNCBQTQ0K
PiBUbzogaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmcNCj4gQ2M6IG5ldGRldkB2Z2Vy
Lmtlcm5lbC5vcmc7IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IEVyaWMgRHVtYXpldCA8
ZWR1bWF6ZXRAZ29vZ2xlLmNvbT47IE5ndXllbiwgQW50aG9ueSBMIDxhbnRob255Lmwubmd1eWVu
QGludGVsLmNvbT47IEFzYmrDuHJuIFNsb3RoIFTDuG5uZXNlbiA8YXN0QGZpYmVyYnkubmV0Pjsg
SmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz47IFBhb2xvIEFiZW5pIDxwYWJlbmlAcmVk
aGF0LmNvbT47IERhdmlkIFMuIE1pbGxlciA8ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldD4NCj4gU3ViamVj
dDogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIGl3bC1uZXh0XSBpZ2I6IGZsb3dlcjogdmFsaWRh
dGUgY29udHJvbCBmbGFncw0KPg0KPiBUaGlzIGRyaXZlciBjdXJyZW50bHkgZG9lc24ndCBzdXBw
b3J0IGFueSBjb250cm9sIGZsYWdzLg0KPg0KPiBVc2UgZmxvd19ydWxlX21hdGNoX2hhc19jb250
cm9sX2ZsYWdzKCkgdG8gY2hlY2sgZm9yIGNvbnRyb2wgZmxhZ3MsIHN1Y2ggYXMgY2FuIGJlIHNl
dCB0aHJvdWdoIGB0YyBmbG93ZXIgLi4uIGlwX2ZsYWdzIGZyYWdgLg0KPg0KPiBJbiBjYXNlIGFu
eSBjb250cm9sIGZsYWdzIGFyZSBtYXNrZWQsIGZsb3dfcnVsZV9tYXRjaF9oYXNfY29udHJvbF9m
bGFncygpDQo+IHNldHMgYSBOTCBleHRlbmRlZCBlcnJvciBtZXNzYWdlLCBhbmQgd2UgcmV0dXJu
IC1FT1BOT1RTVVBQLg0KPiANCj4gT25seSBjb21waWxlLXRlc3RlZC4NCj4NCj4gU2lnbmVkLW9m
Zi1ieTogQXNiasO4cm4gU2xvdGggVMO4bm5lc2VuIDxhc3RAZmliZXJieS5uZXQ+DQo+IC0tLQ0K
PiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2lnYl9tYWluLmMgfCAzICsrKw0KPiAg
MSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQ0KPg0KDQpUZXN0ZWQtYnk6IFB1Y2hhIEhp
bWFzZWtoYXIgUmVkZHkgPGhpbWFzZWtoYXJ4LnJlZGR5LnB1Y2hhQGludGVsLmNvbT4gKEEgQ29u
dGluZ2VudCB3b3JrZXIgYXQgSW50ZWwpDQoNCg==
