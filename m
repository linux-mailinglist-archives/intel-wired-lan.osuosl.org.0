Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0C356D14F8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Mar 2023 03:24:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EFC5A405F4;
	Fri, 31 Mar 2023 01:24:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EFC5A405F4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680225864;
	bh=xxalE/G6VIF8R8Z0sVct/Uq3XMsKp/1x+Dwxgklqb3k=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tDFoszUUAWGoPS3TY766ccrYAy9stQooIzbpvvReSRIHdU9NaWmL36cIM43EnPKMF
	 ObWRVUmnjoa8R8qgKBYg1wM3kI2ppO7aCgk+U9MEkCVDbL8czUf+AxH/+kTTtD2nYe
	 H+9qkJa93Kbp4jxscAX/Yzmdz2qXFhqQ6DSUrJm1s02pPgG3Yli1BXG6tIMOCtzPQn
	 wtc2l4XpciTm3NNzkLGqW42QdwlYbjptZw9/zOc5DduVh7oMZgT4jqMacJRDz+1qac
	 hbOFHF5YDNr1pDTsrgaTHLQIwFfOXNSu+2QcIa34MFSU89H8rOitICanuOHNSlBziG
	 HYpxynXFawtqA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TV258Esqua5q; Fri, 31 Mar 2023 01:24:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E46C440550;
	Fri, 31 Mar 2023 01:24:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E46C440550
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 37D931BF30B
 for <intel-wired-lan@osuosl.org>; Fri, 31 Mar 2023 01:24:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 106E960B6E
 for <intel-wired-lan@osuosl.org>; Fri, 31 Mar 2023 01:24:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 106E960B6E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kFiAXrh7H1Qr for <intel-wired-lan@osuosl.org>;
 Fri, 31 Mar 2023 01:24:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D9A4B60B35
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D9A4B60B35
 for <intel-wired-lan@osuosl.org>; Fri, 31 Mar 2023 01:24:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="427602144"
X-IronPort-AV: E=Sophos;i="5.98,306,1673942400"; d="scan'208";a="427602144"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2023 18:23:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="635124762"
X-IronPort-AV: E=Sophos;i="5.98,306,1673942400"; d="scan'208";a="635124762"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP; 30 Mar 2023 18:23:35 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 30 Mar 2023 18:23:35 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 30 Mar 2023 18:23:34 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 30 Mar 2023 18:23:34 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 30 Mar 2023 18:23:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kQSxa0SgVQW7LV1vXmb0rtiSMJknIgu+S0chZhnNGiV92JiKDOUtwG3oHCpqmjCWtR7aHgZVrCnq7ak45z4QgKdpWH44sd/XIP5SklKOTeecjLwurS2asO1yoKh+wddW/4dPX2MY8znjaBY/DXMa3ePDkxy2E0b4BJh1ayvyU/RcxMT1eJSTbz+imBRPan/b1NmBA71/7O+RM2p1l99ppLkA2yP/h/88ov/G6MWRXvwKR6Jp38w6doxCTXh+W1+dGkftDE9Aq+mJ7HAFAT+yRHllIiYTT42ddBngB4qC6UxFmF1vwaF4OrWGM9pS9X60vu7H5/bbr8Hi5gdBwX9N7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HTVdvoY43XcPmOyRtwiBPBUFuz6atSAcQAZPZQNvGAA=;
 b=MvcK+vQF4U2uoxb3aEVThIIlP5XAGSznDPzXsMOfjm8QTL7hZFtrDBXwjPulua1DERjYTG/gdxiqjRwheAxiptcdtoZ7q+xmPBueyBRlYg8/XQZ6N0RlmPTqowrkVpC8KZYUq8GwzOv+QBRUDDPnb0BUjnKi/mk3pDUSmlWH6RZUuHWaHll8OER4T0m2HAab4cbu+rqcMMdAuHg/ORO3YcKWaKwDtCvuvNS2rLHraikqbWeI86QPW46/PXkGlHNCzCiXEKiZEJQwHmKdSHKB53JhaVYJSkpH57r3AOuz2g7nImKazWAfs4xeDDA8HRGZ+3LmQVCy72YBregtc0Chzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by MN2PR11MB4566.namprd11.prod.outlook.com (2603:10b6:208:24e::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.20; Fri, 31 Mar
 2023 01:23:31 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::d7f2:79e3:ea65:28ce]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::d7f2:79e3:ea65:28ce%3]) with mapi id 15.20.6222.028; Fri, 31 Mar 2023
 01:23:31 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>, Jakub Kicinski
 <kuba@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1] igc: Add transmission
 overrun counter
Thread-Index: AQHZO3i6rghUrM0IQkqGGpsrQCGUlq7QbuuAgABFltCAA5V0oIAEMh6AgAGgwoCAAAzeAIA6O16w
Date: Fri, 31 Mar 2023 01:23:31 +0000
Message-ID: <SJ1PR11MB61802A439ED9A49DF0C3D5B2B88F9@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20230208044536.10961-1-muhammad.husaini.zulkifli@intel.com>
 <9b1b9cdd-eb6f-183a-8e3f-9116a03f27a8@intel.com>
 <SJ1PR11MB6180D0D59EB01AD1E8FE4991B8A39@SJ1PR11MB6180.namprd11.prod.outlook.com>
 <SJ1PR11MB618086DCCAE226FC19FDCF54B8A69@SJ1PR11MB6180.namprd11.prod.outlook.com>
 <20230220142017.1c0b57be@kernel.org>
 <ba4f9ac9-e8f5-3930-ef76-c51bcecfaf36@intel.com>
 <82d38e5b-52bb-d8c5-1bf8-6129c8813869@intel.com>
In-Reply-To: <82d38e5b-52bb-d8c5-1bf8-6129c8813869@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|MN2PR11MB4566:EE_
x-ms-office365-filtering-correlation-id: 6bb5f2a8-178e-4f00-4ce2-08db318689f7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: O04pqcUJuEtgeqo3fYYKjpf3lnjaIDjanohESQ0gLHGD00PRRaC8o/ptWVFR3pD/lTZcPFGtAjzyE/pMohpR9dPIqAUllDGYjk8NohVWj9zu7yp95Uf36e8lFCEuILKIv6g+SumDtlGsJ84XOjGIlpiY7RD8rLk8BxnhPuwNgwPlpKAjI99vTJJF5K6pFxF/mkRO8QKCjIqWXUlR9+f9uiW1K67iqUW9FdL/mLh7xp+3WDyLpo8eXJRQQTmw+3WdmzZvCi3YsIPfS5KXgVBwEfVXyWKb5U8v44zELMa8Z0esZndVLT47mfbmxXHyW5DIseD4BGbHpI3tUtSJiZl1GyB+v0Ct5uoMvOmmR1MJS/D2ScUEA1OJHuFq2pGxj4tTgVePvHmdHWxfXWCAEz5YTugjvmCHlzQJwot+19cU2jddQ+2OsEHa+ZLp/WkrY4BS2qbaIEXmZVy9Z3MO5PnXEPsFvob/IC5GCcnfQZyAegUpZWGwvXUtia8Pe9h5ISxzwpY6QMOIfhDvFio3Tqk/ip7UsHREiejCM7X0o6eVaWBnexFbE23s2Hokr+27BT6QwybforqPnl6vxj7yMfTizjr2rXtNfG3oBqLQgnUCtV8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(136003)(39860400002)(366004)(376002)(346002)(451199021)(2906002)(41300700001)(5660300002)(8936002)(52536014)(8676002)(4326008)(86362001)(66476007)(64756008)(66556008)(66446008)(76116006)(316002)(66946007)(110136005)(53546011)(6506007)(9686003)(966005)(478600001)(186003)(26005)(107886003)(7696005)(71200400001)(38100700002)(55016003)(83380400001)(38070700005)(82960400001)(45080400002)(33656002)(122000001)(54906003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZUdiNml1aEI0R3U5bzVnWWhIRE9xbUlJL3pXd0xKME1HQUF0eWxzb2FTME1C?=
 =?utf-8?B?TnZEL1dkREtPcXdmR2kxdUdrWCs2b05WOFJrVGxNUlpYU0NYYXNBVEJLVGZZ?=
 =?utf-8?B?MEJYc1FxQTBmT2J0Nk5MNnZ6ZUR4VE1CL3dQVjR4aEc1V2VBWGIvTThPYmht?=
 =?utf-8?B?VlNNVFpJY2FyN2k3Y3locDRnOUpMRGRJM0VrZjRsNEFCRDkvU2toUzFKMTVU?=
 =?utf-8?B?U0tJOEo3MW5PSEVYVzhYRVFWQVJsc2NTd3EybWdXdzViOVh2MEJWVkVBWVNT?=
 =?utf-8?B?UTh1UHB6bjNPUnVqd3RyNUFUM091RVdRemdnOFo1MVpQYWRJd05GMW9PYjE2?=
 =?utf-8?B?eWVpRzNDcG5iNFFZSC9KRmMrVlR0dWlPakgybEorZEpCa2NMM2hUUTRNVS9o?=
 =?utf-8?B?VEp5WXNWejdJS3dTRGU0WlJxMS94cTR2MVdlQldZcHVuNE9QK09ha3p2NHlL?=
 =?utf-8?B?dEVmV1VwQTVwekRyaHNwS2VnY00vQVVIaTdCNm5ydHp5S0dNQWVrbUg4Smw5?=
 =?utf-8?B?ZVRDWGRCYWFCNG9PVmtWK2s5UnBtN3JoS2FmUDZUU0dIaDRUN1hPMHhzOGo3?=
 =?utf-8?B?NHJPRWJkOW1MSEREakRSVUJpbE1FdkdYWndsbFdSWkxaK3JmYjJnakRhdzVQ?=
 =?utf-8?B?bEJ3VWYxZXdxYmlGT1pzM0Z5WGVDeStmVjlRTndVODFjdFVtMG8xUGllWkRN?=
 =?utf-8?B?UjZseEh2ZVFLb1l2NG9hblVGVThlL0xBZC8zV3hLWkNaWUttaXFOeGtKeDNn?=
 =?utf-8?B?c1JwVzcwdzBDL2xYNzBEc1NVYlR4MWhxTEszTWJtRFdOMnBMK0wrWVBNd0Ju?=
 =?utf-8?B?VHFpZkRsSEJ5VllaMDUxWFJBVnl5eXlvVEJjVnJWbVE5ZWtFdUNpR2tSWHJx?=
 =?utf-8?B?dFVzQitvRkUvMnF5VE52N0crN0RXTWxobmxtVUl1M3R4N09ZUStyM3dCRksz?=
 =?utf-8?B?cVBONFZPUVFJREY0YzZFemtBRDg2bmJzS1RrNUpoTDN6aEZpaGxXSnUyWkF2?=
 =?utf-8?B?cnVuYitSREhUR1FjV1NQaE5EV05WYzlkQ0hBeWVEbmpMZUpRckVLVVNZKzV0?=
 =?utf-8?B?YVNTMHNuUjFwSWo2MUI2MENMbGN5YjNiT3R4RTVJNVk2RmRPbG4rdFlHNk4y?=
 =?utf-8?B?ay9SazdBOVhHVENCTFRpYmtEWlR5ZUtFeUJ3Zy9YTlpLL1ZLNVFKcDF4MVpp?=
 =?utf-8?B?cURXSkh6VWR2WTcxMGhHUmtJQnFKbS9Bd3Q2TGs3T3BYcWh0aCs0cnJQcVJE?=
 =?utf-8?B?Y253WFdTTGl0N0FmUTk2TzVvTC82Z0hZbEl2eFdWVjdlUXo1UkU1WUl1NUxp?=
 =?utf-8?B?NGV2Rmo0SUNwMVBuMm0yYjZmeTRUb2ZEUnpBZWRzaDVqN0w1R1lyYXRUWlhk?=
 =?utf-8?B?eDhQU1Jzd09SS3BqNEFxU2FyeElBUFhraHlmVm1weWh4bFQ5Rk11R3dobWpy?=
 =?utf-8?B?Z213ZW15dG1ISFB3eFREYnhYT2IrRHpIcFhMWWlLQkkyNVZSZTRqYmxNVVor?=
 =?utf-8?B?eTFLa2ZZZHp6eFgwcDVrdnNRdDRoRHovUWV1c3FTU1Z2TVd3UWtzYXl2amh6?=
 =?utf-8?B?djFYN1h6Z2EwNHlJWldHS3U2RkVTWHVxcEd0MWxQUVUwa084MlZmRmdOdVNP?=
 =?utf-8?B?cEp5WDdMYXFmeGRjYk5leGxsYVNwbzVZOEVoamhLdnRDOUJFdGZKRUpKTHc5?=
 =?utf-8?B?YUZlOVpLcjVWTzZ6bVY4TElBUnk4M01KWW5vY3UzdTloTnk0d3RsMGlZbXpP?=
 =?utf-8?B?R0FCVlpCdWFUUlRuNnp2L1I5a2RsSGJCdUNRTTBaWURQMVJqMEFoVFJmUGtC?=
 =?utf-8?B?RllKK3Z2NkpVTW44alJETmVYZ3ZWQzBtS2xoRVcrUVJJSVF4UURTaTFoM1Mz?=
 =?utf-8?B?STBQd0xtL1p2ZlpEWVQ5c0pwNTBSNEExRDhkVmN6V2k0UDdzN2ZoeGNCWXQr?=
 =?utf-8?B?Y1dsazBWSTZmeUVyNWp3SXlpZlhWVkpuQzhDWU5iR1A0b051cEhUSWcrQzRh?=
 =?utf-8?B?WlpId1p6UVZYUmMyVUZickNzNk1ZaFhrRDRtSUdVV1JySE5HSUpMeWpJd2Jo?=
 =?utf-8?B?TkZrcnA0Z2JvTytXZG5ndDRhYkpEUUROQWJOamppWExHN1VZYXRJdWE3Zit4?=
 =?utf-8?B?VElSN0FWdDdxNmd0UEw4dXpaTThPR3VKTVVVOUNHQk1xbThPWUpRZHhmbUh3?=
 =?utf-8?Q?eE5cbgkIkIU9dz2ZyLpli/A=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6bb5f2a8-178e-4f00-4ce2-08db318689f7
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Mar 2023 01:23:31.2495 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: a2jj57A6/KoduzKgxVnmBbP3MlEoS6EdhDgczNyG/aEJe9vDfuHEVmfxVTskYaw3JeVDOrei0Ql+wiaUaiV97RuWZQVOA/1ZWY5XeYBWqBUzbYKHEloOZ4cXKjJvFoA9
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4566
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680225855; x=1711761855;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HTVdvoY43XcPmOyRtwiBPBUFuz6atSAcQAZPZQNvGAA=;
 b=GdzfaTSzxdjiXO0zruXMJesBSYtZPUl+InwvQS56gSdZa3eaKYneUahD
 cfaXHh/vwiEbGqmbnrebQ4yeKkkz+sKnGdS5XODEiYkpwg7F5ZKCtN0h1
 niCL6jE5GeWgGciRozk/KKgQCrkVhn1QKaYoPqWweJfJG2SZCchalCI6t
 ps/fkftRFuu29TBnH20OG48Nh9FoMQrxkNIu0rVjimWhi0zbn7CE77mfY
 ckIbV28SGVs8f/J3yE6cxS72Rm3k78Kol1TCo6FroPs0v/3adec6ctO2j
 tiDXnDql/zxKz53COY5uvRPYtkrHM3HbueLrcdytoyOjfNjLkfiRgkZ7F
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GdzfaTSz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] igc: Add transmission
 overrun counter
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
Cc: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello,

> -----Original Message-----
> From: Brandeburg, Jesse <jesse.brandeburg@intel.com>
> Sent: Wednesday, 22 February, 2023 7:58 AM
> To: Jakub Kicinski <kuba@kernel.org>; Zulkifli, Muhammad Husaini
> <muhammad.husaini.zulkifli@intel.com>
> Cc: intel-wired-lan@osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH net-next v1] igc: Add transmission
> overrun counter
> 
> On 2/21/2023 3:11 PM, Jesse Brandeburg wrote:
> > On 2/20/2023 2:20 PM, Jakub Kicinski wrote:
> >> On Sat, 18 Feb 2023 06:19:31 +0000 Zulkifli, Muhammad Husaini wrote:
> >>> Hi Jakub and Vinicius,
> >>>
> >>> I would appreciate any early feedback or thoughts on this patch
> submission.
> >>>
> >>> History of the discussion:
> >>> https://lore.kernel.org/intel-wired-
> lan/SJ1PR11MB6180D0D59EB01AD1E8F
> >>>
> E4991B8A39@SJ1PR11MB6180.namprd11.prod.outlook.com/T/#r8db595a7b
> 4006
> >>> 7d2315def91d41c9695454d6c9f
> >>
> >> Tony asks very good questions. Driver specific counter always
> >> reported as 0 would be odd for Linux. The counter is of no practical
> importance.
> >
> > Maybe too obvious a question, but it looks like your patch, Muhammad,
> > forgot to add the code that increments the counter?
> >
> > If you add that, then the patch makes sense.
> 
> Oops! it was pointed out to me that your patch had some comment in the
> middle of the code saying that you'll never increment this value.
> 
> But I still don't get it, since your commit message said:
> 
> > Add transmission overrun counter as per defined by IEEE 802.1Q Bridges.
> > The Intel Discrete I225/6 does not have HW counters that can determine
> > whether a packet is still being transmitted after the gate has been closed.
> > But I225/I226 have a mechanism to not transmit a packets if the gate
> > open time is insufficient for the packet transmission by setting the
> > Strict_End bit. Software counters have been created for each queues in
> > response to the IEEE specification. Thus, we can assume that overrun
> > counter is always "0" when setting this bit.
> 
> Generally if a counter isn't reported it's presumed to be zero.
> 
> I think you need to do a better job explaining why userspace needs an "always
> zero" counter, and can't just be told that the counter is not there (so is
> obviously zero)

AVNu TSN Test certification conformance test required this counter to indicate in the
Userapp that whether there is a packets being transmitted on specific queue when the
qbv window size is not sufficient. Then for i226 case, our counter will always be "zero" 
due to the HW mechanism to not transmit the packet if the gate time is not sufficient.

> 
> and if this app requires that every vendor implement a per-queue stat to track
> this item, the code to track the stat may as well be added to core kernel
> instead of for each driver independently.
> 

We are thinking to have a per-queue stat since it will use by other vendor as well
For the certification. I will refactor the code and re submit again for the review.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
