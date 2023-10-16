Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06EF17C9FFE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Oct 2023 08:56:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4FE2C41516;
	Mon, 16 Oct 2023 06:56:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4FE2C41516
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697439393;
	bh=NEg/ofTVQ/n8uNu/w9z/3guBqVMd69VN5eNctdVzq1s=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=O8nHEKWO+njkG4n9uCuQ4hFOEEVB+vF/VF0T2ioPgSYetuwLXTIJ0Tnvs7bsnHU8Y
	 dqnBD4XxXEFgv8LyQNDKWC8H63hmasqemh9maqaxns0kYfXF4nSi4hda8Efdvp6Oe0
	 dXLltWX1Ch4/W9gSXF46bh2h9NNYYCz95zqvnrAkf4Z0m7xCtj9tFomTVKAzOtD2Cv
	 M0WtsWC8fTAkZY9URo4MD8tH8yzJLkfq4jGo/mhZgNDhmHoHQ/F85uH6wY0xc5xcXM
	 YYTLGwvlLWWUPGWhEWMHgCpnDMk6Etenge8d96JVBRsY1wlmmYK1RJpxUO9KcLjO2+
	 UDfsuK6RD5Wqw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ovjRe4j3BdPt; Mon, 16 Oct 2023 06:56:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 96F82414E0;
	Mon, 16 Oct 2023 06:56:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 96F82414E0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7DFA01BF33D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 06:56:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5148040868
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 06:56:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5148040868
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iXJq5h5MbVx5 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Oct 2023 06:56:24 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E64E440866
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 06:56:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E64E440866
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="471691841"
X-IronPort-AV: E=Sophos;i="6.03,228,1694761200"; d="scan'208";a="471691841"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2023 23:56:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="871975129"
X-IronPort-AV: E=Sophos;i="6.03,228,1694761200"; d="scan'208";a="871975129"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Oct 2023 23:56:21 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Sun, 15 Oct 2023 23:56:21 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Sun, 15 Oct 2023 23:56:21 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Sun, 15 Oct 2023 23:56:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=melXemrxnboBTFYNClaS9WarRfHxCBax2Gg61B5vNmv5Ji+eufGQc679dpFohMczSUP0IgnO2uzp2VkWQNqGORmWKSL18rxbFotrdovuk3GiJVW0DeENPfBLQKwyDcEPteny905xGLfUvPaO3m0SSt+Hc+5eZRE+mDW8waYKaJzpigkIZBDGPajBcC55UWmooUpxPwgVfOLmdwFkhrBRvcmtRgb2NAoPV0XFipZoSDC1tvwfJmP1gAjNme3ZvtmqufJDnH9k/LjQT0FeSOap6cy9gOd1MnrpXIrDL2dPTlWkYtJxhPTW5g+5fKzJA0Ipga5eaLCM4u4X0RBzBHZfDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jnzjfHwrqGFSUH4CbCVUws5A0M3Uc8dFW1LehihFUHo=;
 b=EGC7Sb9qRWZ3akwEmB7+bpA85sl36YzXsOPL0mHSaxygTHoe2maOE7uygQrg305ZcKGf64JEZtHNhsDipP3VQig1tkKFCdyNfATlALi4cVjgoxfRLrCMw9/D4m9CihQK7kF9neO+GqC1aUK6OczyAicEwgbqtsjED3FHnZqFlxVdl8xpbzgTtRhPFbhgQkdV5oSrNDAJF8mHXGFIVliVSllXHbdsU3dFoFJQ2HjdWJkHgjCRRoQlyW9XRo1EXrAIo9pzJO/oM3r1VZ7TkzVdEXqcWjqbAfsKwZA4HSrHBIKz7OCli2c0ALKthJLlM5EuSX8uyo4PiVeZcN2yPrRhDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW5PR11MB5859.namprd11.prod.outlook.com (2603:10b6:303:19e::9)
 by SJ0PR11MB5088.namprd11.prod.outlook.com (2603:10b6:a03:2df::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.46; Mon, 16 Oct
 2023 06:56:19 +0000
Received: from MW5PR11MB5859.namprd11.prod.outlook.com
 ([fe80::4129:33d2:69ab:3dc3]) by MW5PR11MB5859.namprd11.prod.outlook.com
 ([fe80::4129:33d2:69ab:3dc3%6]) with mapi id 15.20.6886.034; Mon, 16 Oct 2023
 06:56:19 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Jagielski, Jedrzej"
 <jedrzej.jagielski@intel.com>
Thread-Topic: [PATCH iwl-next v5] i40e: add restore default speed when changed
 PHY doesn't support it
Thread-Index: AQHZ/cvOoXHC54wf+ki0oyRx56ClkrBHp9EAgARWdFA=
Date: Mon, 16 Oct 2023 06:56:19 +0000
Message-ID: <MW5PR11MB58598BE9AE5947A2D385ABA8E5D7A@MW5PR11MB5859.namprd11.prod.outlook.com>
References: <20231013115245.1517606-1-aleksandr.loktionov@intel.com>
 <b8f3eb2e-afaa-48c7-c830-300f888b1f1f@intel.com>
In-Reply-To: <b8f3eb2e-afaa-48c7-c830-300f888b1f1f@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW5PR11MB5859:EE_|SJ0PR11MB5088:EE_
x-ms-office365-filtering-correlation-id: 1fc89740-0c2e-4341-a3ca-08dbce14fff0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: c7QcfA2U8XIf59sFrzNsbImwsz0glLLo9rzGZkoAO7zcVoTfc4rpXCIS7ztx9tElGNt7uXKhhupDwFOpL1XBf2UTZu9lLlOdIbYXbrn862jocZC/CG6/UZaGEuyL2L7zfoDr0RyyxnHDkmAAf7yNLeNV4XDRQcEgCP32ot921V1Cz2Pe0pAkTkji7Yhf4BynzFoAeyvAh6O/jIORnRPsJXWIySUCXG5SBk1nl3VkYjpyN2Lrk3RCe6qJ+ifnflnkhLahWp9YAQftONvy95sWdXQdrUSmkhHC+8mOoNr0ZA+6QB4rV1umZ3ayQVc4+BQ6l5koPFL1jkcCAM208+Eo4w3/VzH7xAZgGf1T7n+tqWoe8q6EY/1CKrUw1SqN5GmP6859EecZkXmDcsX9sWOX/5+4kVLg4ww6Q8KKld05AgoxNeI3zDfhfG8OwRUtzlsajway/05LeJduaXP3R0sHEkiewIuwoBS9HVtQ5EpHaem46rM4uW2B/NT9vzqdp5HfyZUvP3RWkFiv10PJFMNxSuzqZ4yKFNjTlxJWXQgD15Q6MMPSQP47cLPrpAg4FpL+RVAJLyuF3sqUPmxwK4BdaecAlxlUB8nmCwng0YHN1CsUu7gVoKZ1H6TcLUI51EaS
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR11MB5859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(39860400002)(396003)(136003)(376002)(366004)(230922051799003)(1800799009)(186009)(64100799003)(451199024)(7696005)(6506007)(53546011)(83380400001)(26005)(55016003)(38100700002)(9686003)(52536014)(38070700005)(122000001)(33656002)(86362001)(66476007)(5660300002)(4326008)(8676002)(8936002)(2906002)(110136005)(71200400001)(316002)(64756008)(6636002)(41300700001)(66946007)(66446008)(76116006)(66556008)(82960400001)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?R0NORnQ3aEN2c3o2Uld2L3U0RUNwSm9Yai96YVBhc0lhNFRXLy9pbnZwUW83?=
 =?utf-8?B?YkY4YjRJc0N6OGR6QU5QaVdIdHg1Y2pXbDltbGtXOUJEN0JURTRVdGZGQXQx?=
 =?utf-8?B?dWFYK0JqM3MrQnVCUERRd1lyeHA3RlA2WXpadys2Sks4b1kyYkk0eVVHb3ha?=
 =?utf-8?B?V1AxNEtuL1dpaGdNU1NFWEc5TEVaNHVvSjNONktUMzRxSEF1MGFDcHl5dVZL?=
 =?utf-8?B?cmpDV2FXT3dWVTU1WWp1VVJ3RHlQdDcvTy9tVWlSNFJ5WFV6STZoMEVHaHNT?=
 =?utf-8?B?aEp1aDVwWjQ3MEZKcitocUdYZzQ3Z2pJMjdYNDErbEZLcFJzdUdxd0dDbEtN?=
 =?utf-8?B?QkRIaXYxNUZ0OUc0Y0xsOVI1RFQwQkVpeTdIZm4ybWxaaWNBNUdsQWlzUHdn?=
 =?utf-8?B?RTRlV0JOeW1BU1dQMExYbFpwZnFRRStVN2U3RndKTjdTUU5SU29DU3praHgx?=
 =?utf-8?B?N3ZReWE4RStZTmtLVUQwaVlrbDJmN2puSFN0SFBhbkdyNXdkQ1VOOG1ZWDhO?=
 =?utf-8?B?OUNZeEJWUTdwdTh4eXVUMWJHc242Zk1MWVRIVkx0SlFKcEJZc1JGdVIxaGVq?=
 =?utf-8?B?b2JyQTdlNFB6Y2phYzJUc0V2eTEyK1JnWDFIVk1PdmJQWUQrQ1NCa3JpRTRX?=
 =?utf-8?B?Vi9NSExXeVg3dlVsQ1NwalBiOWl5Vzc4UUd3a1R0M3J6SCs2aVFsY1RWQ2lh?=
 =?utf-8?B?aXhIc0wwRlpDOXZsM0RVeHlLMzQ3TnNCV25LaTZmT2s5YUtBd2o3K2ZCelYy?=
 =?utf-8?B?L0FvQjcxREhYZGlKSVhNOGxDNkR2c2kvRFJKTmZCNUY0QTJveG9SZnRzaUlS?=
 =?utf-8?B?MG9zNG02bjNmTGFoTDZKNDkxaE1WWXZBRkp3aXg0aWZwTldnQ0NZc0xTa3Q3?=
 =?utf-8?B?YTNUcVhhOGlBbWZkRytZNE95UW1yL09LYTdJQVR4Q3I4Ui94MWJ5WXE5d0pK?=
 =?utf-8?B?WmJuUFhTcElGMG1iMUJ5Q0x1TW1PYzBLS2EzVjI1cEFhYVowUUVGNERnbk5x?=
 =?utf-8?B?YjcyZXAxNGRSakRGK2I2bHgwK0gyUVJTQnZ1YW5EZUJZQitNTWdQbEJGQkRl?=
 =?utf-8?B?YUhDZGlhNG5DUXdwTSs1ejVoYlRNVTI4UEdObllsL3dncEF1RG90ZjcrWVpW?=
 =?utf-8?B?MXlsVTNSZDN5NFJEa0dVUlZKa0NyaVV0OFFnd1YyL2hTWWtBWjFVenFldzZl?=
 =?utf-8?B?Y3VubzJIVVJySWkyWTdTOUtld1llWXp2SjdRU0RBazd5Yk4wYk8rSzJNV1lP?=
 =?utf-8?B?SWptTTJqMC95dDJFTFRuVXVGbm9PV25QMnMzdWJlNC9lTndyZ2ZWZlZtNmVj?=
 =?utf-8?B?UlJ2eEhCQ3dqZmw2U3IrMExvS2czWjB3L25zZHpUWlJOWjBYaVY0T2wzNkJl?=
 =?utf-8?B?Nm0zVVRJWkxseDNxS1RVWlpKT2pYdER4WnVNZ3Q5cjBVckVIdDZybWNQMTNT?=
 =?utf-8?B?L0EzSURNbDdTM0tWK2xFMWd5TURFVG9mbjZRQXlXVlR5UkplSkJWd1hXbGpL?=
 =?utf-8?B?UUhXSklsaENNQkVrTFB3dnZLUnhZZnRpL1JWMlY4YTlGMzlxd1AzOGNoNkpx?=
 =?utf-8?B?aUJoY1lpZWtrVStZcXZZMzJTRUlFWTVIU1VpNGQ3NTBGQ2hUU0d6V0dTT0xn?=
 =?utf-8?B?VnJzYVJXNFl5MnFIQmMvbk1xcUVrRVZVdFMrcEZpWjBmaFRUZ3FxanFKdDlL?=
 =?utf-8?B?bkNuUk5aOGtNTW53MFI0N1dsdHNWVEk5Y0I1N1k3dUV0MUZpeHBROFJ6ZW9R?=
 =?utf-8?B?UWY4RVE0QWtvRGtrbW9keG51YVVQKzEvYXc1bEpGL1k1a2pERWVHckZVRXNp?=
 =?utf-8?B?MTBHY0ZUOVdTd0k1TXVRNWtTVEExQm5BcjNQVjlkb21wYUYvUkowK2R2dTFi?=
 =?utf-8?B?REh4b21BZk13SHpLZmJlZ25yRkJ5OGF4Yisyc1AvcnFWNVZzd3RNWSt2alUv?=
 =?utf-8?B?eVEybjlDZHJaR3NHNlVsS2MvU0FpQW5pMVR1VkFWUHlFVUc5YTlnZDlOSS9n?=
 =?utf-8?B?Ri9Hc0pqUUJLbTF3eHFNVnpkd0JuK3dRdWRHMFZOTCtJSFJjNjNFMW1mY210?=
 =?utf-8?B?ZG5RVGpyM0V1dzgxNVhlYUtOU1Y3Z0trR3liYmFlVjJOT0dzZE0xaVFrMWFK?=
 =?utf-8?B?Wk1WMWVFS0U1TDkrbm9sM0NHRCtva3htVzFSOExGSkRLYjFHOTRnUkt2T3M0?=
 =?utf-8?B?clE9PQ==?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW5PR11MB5859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1fc89740-0c2e-4341-a3ca-08dbce14fff0
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2023 06:56:19.1367 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rKtmfr/UvsJypR2AaxD1nP5I3xa4e/ZAuA5zByr1OeXvxlrEnCgVfRxJDGi3FRnl6jJwYxxqXrQEoahzyph62oHcnmI6NIUqMlhWV437pDo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5088
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697439383; x=1728975383;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jnzjfHwrqGFSUH4CbCVUws5A0M3Uc8dFW1LehihFUHo=;
 b=F0YKQ4K6rC3Po5DxggWuHOP9cfaimtxuNNohEhfLbKoLE/QFeC45RKUF
 aas8jLK0m9NFs53fRHdZmjpHtxsMxHWV3r8p6Omas5LlEAyabCpK3JbT7
 4ecsvsXw3ODLI/TB8gc8IsjuK+yAeoEBidAiRDtzJj+HT0gKv0OjsXXVZ
 mczajCkLWloMXSlOuB5B527X1JbB79njbFNl1K/kUJDMmUb3H6wyXoP3k
 hddIP/0WH69X/H42UXc1IJi4bc4ekA/8TnUUN4ijn30MFn6ChR2qeC9vn
 QKsBDiyu9773lDwKwZBx1EVSi/Z4MsOo0GOnC9qOn/sFKYSfOqSX1zEWQ
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=F0YKQ4K6
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5] i40e: add restore default
 speed when changed PHY doesn't support it
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Sent: Friday, October 13, 2023 2:35 PM
> To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; intel-wired-
> lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> Jagielski, Jedrzej <jedrzej.jagielski@intel.com>
> Cc: netdev@vger.kernel.org
> Subject: Re: [PATCH iwl-next v5] i40e: add restore default speed when changed
> PHY doesn't support it
> 
> On 10/13/23 13:52, Aleksandr Loktionov wrote:
> > Currently, there was no link after plugging a different type of PHY
> > module if user forced previous PHY specific link type/speed before.
> >
> > Add reset link speed settings to the default values for PHY module, if
> > different PHY module is inserted and currently defined user-specified
> > speed is not compatible with this module.
> >
> > Co-developed-by: Radoslaw Tyl <radoslawx.tyl@intel.com>
> > Signed-off-by: Radoslaw Tyl <radoslawx.tyl@intel.com>
> > Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> > Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> > ---
> > v1->v2 fixed Reviewed-by tags
> > v2->v3 fixed commit messages and tags
> > v3->v4 fixed commit message typo
> > v4->v5 cc to netdev@vger.kernel.org
> 
> good move!,
> now you have to focus on the rules more, like those:
> do not post next version before 24h of prev one;
> 
Ok

> more metadata:
> I would remove the word 'add' from the Subject line; You still need to change
I don't agree, because it's not a fix it's a new feature implementation => 'add' feature.
If you have a better idea please suggest a full commit title which fits 72 chars. What I have now it my best.

> author to Radoslaw.
> 
The patch was seriously modified, so we are co-authors.
And I'd better leave my e-mail, which is still alive, on top for better community support.

> > ---
> > ---
> >   drivers/net/ethernet/intel/i40e/i40e_main.c | 65 +++++++++++++++++++--
> >   1 file changed, 61 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c
> > b/drivers/net/ethernet/intel/i40e/i40e_main.c
> > index d0d0218..6829720 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> > @@ -10076,6 +10076,55 @@ static void i40e_reset_subtask(struct i40e_pf
> *pf)
> >   	rtnl_unlock();
> >   }
> >
> > +/**
> > + * i40e_restore_supported_phy_link_speed - Restore default PHY speed
> > + * @pf: board private structure
> > + *
> > + * Set PHY module speeds according to values got from
> > + * initial link speed abilites.
> > + **/
> > +static int i40e_restore_supported_phy_link_speed(struct i40e_pf *pf)
> > +{
> > +	struct i40e_aq_get_phy_abilities_resp abilities;
> > +	struct i40e_aq_set_phy_config config = {0};
> 
> just `= {};`
> 
> > +	struct i40e_hw *hw = &pf->hw;
> > +	int err;
> > +
> > +	err = i40e_aq_get_phy_capabilities(hw, false, false, &abilities, NULL);
> > +	if (err) {
> > +		dev_dbg(&pf->pdev->dev, "failed to get phy cap., ret =  %i
> last_status =  %s\n",
> > +			err, i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
> > +		return err;
> > +	}
> > +	config.eee_capability = abilities.eee_capability;
> > +	config.phy_type_ext = abilities.phy_type_ext;
> > +	config.low_power_ctrl = abilities.d3_lpan;
> > +	config.abilities = abilities.abilities;
> > +	config.abilities |= I40E_AQ_PHY_ENABLE_AN;
> > +	config.phy_type = abilities.phy_type;
> > +	config.eeer = abilities.eeer_val;
> > +	config.fec_config = abilities.fec_cfg_curr_mod_ext_info &
> > +			    I40E_AQ_PHY_FEC_CONFIG_MASK;
> > +	err = i40e_aq_get_phy_capabilities(hw, false, true, &abilities, NULL);
> > +	if (err) {
> > +		dev_dbg(&pf->pdev->dev, "get supported phy types ret =  %i
> > +last_status =  %s\n",
> 
> s/  / /g
> 
> (in English: replace double spaces by single ones)
> 
> > +			err, i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
> > +		return err;
> > +	}
> > +	config.link_speed = abilities.link_speed;
> > +
> > +	err = i40e_aq_set_phy_config(hw, &config, NULL);
> > +	if (err)
> > +		return err;
> > +	err = i40e_aq_set_link_restart_an(hw, true, NULL);
> > +	if (err)
> > +		return err;
> > +
> > +	pf->hw.phy.link_info.requested_speeds = config.link_speed;
> > +
> > +	return err;
> > +}
> > +
> >   /**
> >    * i40e_handle_link_event - Handle link event
> >    * @pf: board private structure
> > @@ -10086,6 +10135,7 @@ static void i40e_handle_link_event(struct
> i40e_pf *pf,
> >   {
> >   	struct i40e_aqc_get_link_status *status =
> >   		(struct i40e_aqc_get_link_status *)&e->desc.params.raw;
> > +	int err;
> >
> >   	/* Do a new status request to re-enable LSE reporting
> >   	 * and load new status information into the hw struct @@ -10109,10
> > +10159,17 @@ static void i40e_handle_link_event(struct i40e_pf *pf,
> >   		    (!(status->an_info & I40E_AQ_QUALIFIED_MODULE)) &&
> >   		    (!(status->link_info & I40E_AQ_LINK_UP)) &&
> >   		    (!(pf->flags &
> I40E_FLAG_LINK_DOWN_ON_CLOSE_ENABLED))) {
> > -			dev_err(&pf->pdev->dev,
> > -				"Rx/Tx is disabled on this device because an
> unsupported SFP module type was detected.\n");
> > -			dev_err(&pf->pdev->dev,
> > -				"Refer to the Intel(R) Ethernet Adapters and
> Devices User Guide for a list of supported modules.\n");
> > +			err = i40e_restore_supported_phy_link_speed(pf);
> > +			if (err) {
> > +				dev_err(&pf->pdev->dev,
> > +					"Rx/Tx is disabled on this device
> because an unsupported SFP module type was detected.\n");
> > +				dev_err(&pf->pdev->dev,
> > +					"Refer to the Intel(R) Ethernet
> Adapters and Devices User Guide
> > +for a list of supported modules.\n");
> > +
> > +				return;
> > +			}
> > +
> > +			dev_info(&pf->pdev->dev, "The selected speed is
> incompatible with
> > +the connected media type. Resetting to the default speed setting for
> > +the media type.");
> >   		}
> >   	}
> >   }

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
