Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 66E5B76548D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Jul 2023 15:08:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EB9EB815CA;
	Thu, 27 Jul 2023 13:08:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EB9EB815CA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690463325;
	bh=koiEZtHy8Q5TRahoa9m62RW0IcSRf9S80mXEUCcf0+8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GR20/ns0rVRqu0g5lEPSU5R69NqIfzHi+ZFniB0sSvhTvBfTVjVqkLgPR5eeHhmkW
	 vs3iYpxpK4ZW0nGgPE8ocV9OiLhwfVgcS0mmQk/WDKmhe1dCYXxhrJNLHULpYpDD1B
	 4S63x2lWv8xZePP+SPf5qBcldUHYD0t9yu9mKFvtvo67IPO1pwf3tlq6D+nqngznju
	 AL8dg97I8Y4JNjl41OXJaZjB5M3D2lj2Ch+qf080vZZIsWKuI+pneT2yNvxsHYv+cv
	 5O5G8TVScCQjE+sCNCVYnS77tT3/xD8fq9Hg7sL3JrHVW8P2cBeLmiDP7iV6GmSSxR
	 Fqx8iM5lIWfEA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TUm-tKZmUvjS; Thu, 27 Jul 2023 13:08:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D7C9A817AD;
	Thu, 27 Jul 2023 13:08:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D7C9A817AD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1B3C31BF429
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jul 2023 13:08:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E45E98148F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jul 2023 13:08:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E45E98148F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t3wukFViy4zE for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Jul 2023 13:08:38 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1379781440
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jul 2023 13:08:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1379781440
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="367182384"
X-IronPort-AV: E=Sophos;i="6.01,234,1684825200"; d="scan'208";a="367182384"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2023 06:08:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="817079406"
X-IronPort-AV: E=Sophos;i="6.01,234,1684825200"; d="scan'208";a="817079406"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 27 Jul 2023 06:08:02 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 27 Jul 2023 06:08:00 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 27 Jul 2023 06:08:00 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 27 Jul 2023 06:08:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X6CkHqZVpKOZ9HMv0SaheNazzJeHEGX6yf1NwLLS64GBlwxkw4GDEXERgUajXWFQ3SyqM9fyLAWXSqdWvl5ZZagO5yNaQsj6xpTtVKdTidgjFjTP0Ow6/58Gx+x6CZBoe9CLU/KloRiMgNlIdsS4Udm9rw31q0h+RllZiVgRuW0Ge8O9FiL/SNP2JrHV4Jx0GmnSgNVyN9p+1QkPj4DxRniIjgioLHz8H9Ji9EhTXImxtQPTLjlXx+p/gkXRfvzQims1A/+9HxdZar6pNjR/B9WODjByZHNOWglbzHpPHANGJARUmryPk+1ea0vIrbI1aVQwbqmBHXDZUKTV53zGfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v2qxKqbDRX1vKRPmibz6p71Z6X7JTTL8nTHRjAJF4js=;
 b=dWUPZ0AU/PMJXpt7+2UAcXKiBdoEdlSnPsciVOjVvYSKldf8XRCcj0CUw/B3fn/EbZ5XqJU+AYPwLtmpPGAb3CdZADcUgSEZfiVMFIyTNZAKxTPzzI99uegZXbXAT7m4opILMWXrdKsrL5ShwxcHVVftM5WQmm+Y1rvJ/PG1Tqe45dFkqyHCBo75NruVs6/S/y+RQ69RJGuSYbugmgDpg7w3PbaatWti6VbVWRtytotzMIw8J+KLc1Sh0WRTh5MLek6VRWVltP6PrW/lSR0qWnxZfU7Gil/CVW3c+v3FcOe6hVSyHvvVC506I/R8CZ6vj8A4XLlNBsL0mQo6MwGHuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH3PR11MB8414.namprd11.prod.outlook.com (2603:10b6:610:17e::19)
 by SJ0PR11MB5790.namprd11.prod.outlook.com (2603:10b6:a03:422::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.33; Thu, 27 Jul
 2023 13:07:59 +0000
Received: from CH3PR11MB8414.namprd11.prod.outlook.com
 ([fe80::a1ff:b7ba:1d51:fa4a]) by CH3PR11MB8414.namprd11.prod.outlook.com
 ([fe80::a1ff:b7ba:1d51:fa4a%4]) with mapi id 15.20.6588.031; Thu, 27 Jul 2023
 13:07:58 +0000
From: "Michalik, Michal" <michal.michalik@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH net-next v2 0/3] ice: add PTP auxiliary bus support
Thread-Index: AQHZu+pBJiZ/3VXUR0C8V3JQIaodkq/Ky/iAgALSxLA=
Date: Thu, 27 Jul 2023 13:07:58 +0000
Message-ID: <CH3PR11MB8414693D8ADC73F5DD318F7DE301A@CH3PR11MB8414.namprd11.prod.outlook.com>
References: <20230721154424.11834-1-michal.michalik@intel.com>
 <fd27e730-d740-1c90-53eb-9e8b20acd978@intel.com>
In-Reply-To: <fd27e730-d740-1c90-53eb-9e8b20acd978@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH3PR11MB8414:EE_|SJ0PR11MB5790:EE_
x-ms-office365-filtering-correlation-id: 3621510f-7551-492d-0b6b-08db8ea28018
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4mO2p+M8EWrJflOoRE236wnmuICiLdujD+UvtvEQPVoO4HgLEe2JemPYQRMWMak5gpMVaKfbtUorJA74OxG5nEI9r1B3uA3QdYR1pJki8HAR47OF66MF8EJHwWakwHmlFj36vtmD/MtVqslw6ZYZu9OuCtcCoyA8IZUbMpV/a5LaG3V2+W+CPqS+sPCK1ewRq8IAwzZuzk7PxuyHzBnlAsqNPw8+BbxE4ujZKb8Bi84St8NNz3k+D+GDoC3S051CPihueyYmmsMiv4YS196yqo3/R+1Fn+Gpk3ym63S/ZnBjEyYapz/I/Jhkd9Z013ueDj80KOC367VlO1PaHwksOGKLx+w0L3nT2zW67Ssqq1qf0GKtjLvBGWljdqlaME7C/IwblICfXULWg0fejHz1opepLVtuW3wOcECd5PmYBlLozqzZcJI/AGNyJtMXNMmSQo13eZHwcW70Z+YC8lfhTec3BaUtgxt0OdyU/7s9TspBAVIJBuxuepm4lmxC1CHHXo6Uta57/er7AjFPCIipFPS40j3Wpz3yBP33t875TaXTK5645zrcG7PKCF0g7hy5yxF5EhhVtesNLNTYncBzTfA5umt37QusLYiUajA3d5Gq5i6JNsn4hfIGaPH4Xece
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8414.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(39860400002)(396003)(136003)(376002)(346002)(451199021)(9686003)(55016003)(26005)(107886003)(6506007)(53546011)(186003)(4326008)(41300700001)(316002)(7696005)(66946007)(66446008)(38070700005)(5660300002)(2906002)(8936002)(76116006)(66476007)(64756008)(52536014)(38100700002)(8676002)(66556008)(83380400001)(54906003)(122000001)(71200400001)(86362001)(478600001)(82960400001)(110136005)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aEx1eStjQXNFSVVONUZoL3FrYnhTYnZSbitvejNzaGdWcDc2ZVNLNGNNUVph?=
 =?utf-8?B?TTFUZ2xkM2F5dzVNNnRKaitERDhtTkpqdThGaHhHRnV2TUxQZlVKYW94VURM?=
 =?utf-8?B?SkV1dTZxYU9HTkFuRUFHdVpzTHZJWWJCWXVuTzA4U2EvOTR2S1FESGxUR3Q2?=
 =?utf-8?B?WEIwTVRmSGRvOEJDOEk1K2d4QnRhSjVuVEErOXVJWDZXYlJTcHFJK2x3Qyt4?=
 =?utf-8?B?M0FjendMYTRJaTBCZ1hMWXd4M21KT0lJajhXdVYwUzVwTjN0eFFBTDBMSDND?=
 =?utf-8?B?U1ZTeS9tdCtKdDVhOHNtWllSZTFVWUFsSDNRdjAzSFcyMEdsNjc5YTByRGFk?=
 =?utf-8?B?MG1BNjhQSStjV1hYbldJQnZvaUpha09zUWRZZHRxVFJKa0VQSnpsZWpjQzV6?=
 =?utf-8?B?M2IvT29KaXZoZHlEdjRaQVdBZFRNUUxRMm54S3pMTEVUVW1NMGlKWTZpS3dJ?=
 =?utf-8?B?Sm1URjlXeFBMbUZUS0IzWWpRV1BnVEY5L1NBejREbXl4eVBjczdqamZzaDdk?=
 =?utf-8?B?c3E3OTJPejBnQ0gxbG9pU1RuditkN3BMSmFtTGhHRVZkbFdjT3d0M3hmZ05F?=
 =?utf-8?B?S0hoK3BLZXpFc1Iyc0dKeFprUDdETU1CeXZVRG92eWtaL2tPQ2MxUnZRTWJj?=
 =?utf-8?B?L1h3c29XSUQ3UmRSdVkycFVJUVNDWk50R2toUHg3bE41VHJUcE9VV3BCbm1D?=
 =?utf-8?B?bmw2YW5qQm1qUGVPZ01YMUYwL0drTE43TnhxK0xIck5OL1JOMHdtdDc5TThZ?=
 =?utf-8?B?YVhJQXpCNWZNcXVhWFFYRVFsVUxjdWlpaFgxTUNsYU9sRGtSalFoMVMvUkdx?=
 =?utf-8?B?RVN2UldBUGs5bXFvUE1DUnBzc2M2K1RKZTQxZEF4WDB2QnNUTk4yKzhNSnVI?=
 =?utf-8?B?S0dEUkxqRTV6Zm9zQUVjTVJEYlJuWUVKL3FmL1N4N1h4WUdlQWhGWE95R2Nz?=
 =?utf-8?B?T3lnZ2x1RFR6TU90Y3drcGw4WFVUZCtJaXA0Si9SZHNKaEFPT3ExV2Rsa0hx?=
 =?utf-8?B?R24ySXpvSzNNam5ULzBrc0dBNnF6OFk0N2RBa1JHSDlGWHVXbFpFUTI1TFJh?=
 =?utf-8?B?L2RkNnVtYThNY1FGRFhwRnBHd3JqcXFRZ0tzVm42aVp5emtpbGVrYjFrZFpU?=
 =?utf-8?B?T2tRNVVVTWVuZ0xXQ3lhS3pYUnBPbE52elpvaG0wdkhNTlN1eERnbSthc1Nu?=
 =?utf-8?B?Q2M1YkFZZk9WUytCMUhYeVU0c0ppRWtkT2RLb3NJWHQxa1R4WlExUlkxbWJy?=
 =?utf-8?B?S0NweGdNY2FBcnpkc1N0aXZoKzA1R1h2K0JvenlmMkNGbjZ5ZkxzYkExbHp5?=
 =?utf-8?B?L21nNlIrTnNCNUQ3WWhZdk9UUzMzVXpXVkRFOThqWWg3bzE4eDFvYk41dTNq?=
 =?utf-8?B?YjU3cFA3MVEreTZwMUF2REF2ZXA4UlBUMDF0Z25UU1pSZllOaGliZUJ0a3RX?=
 =?utf-8?B?Q1pLU1JsQjlqTW5tTEtJZ2dCR0dYNllicFlMNWpCZ3JZMDhZV0p3OFdESGJy?=
 =?utf-8?B?VnEyVEdmMHVoZVQzaEpuZGJ4cXlkR0tRbU5CU2NLMlh0bmxkQTMzRnRWb2tr?=
 =?utf-8?B?b1ZzcFVGVDluNkxmeDE5WWNSendsSE9vN2RCZ2d6ZlJLT1FLZ0ZDUkhqVXpS?=
 =?utf-8?B?N1FVZlloOVk5Rk9iZ2x2Rks2MEtxU0YzbUV6OXE0eHJDbnA3aDEwLzVualFv?=
 =?utf-8?B?RFJTRXVqa1NXakVsVUFrcEx5cFFLTGR3MTU0VzRibExvN3crUVBUN2xVekFF?=
 =?utf-8?B?Z2pFNE9ITklvSWxiRTdUNnZpN3pvcmJDZWFWVVAvemthc2IremRkRkJtbi9L?=
 =?utf-8?B?M2k1RUFlZ3UvUnF0aE05cjVJQWd6Zm1oSlVCZ25NTkFlQ1NKdzJjU0pvYTB3?=
 =?utf-8?B?RUljVFlWKzZUZTdGTi9IR2pMcTVzTHlZZnhtOTRRaS9CdlNIWVQ0T3ZYMkth?=
 =?utf-8?B?aitsc2wyMGFPcEpidnQ3eXJtNDdEYzNPVThDdzNmQlN6Kzg3dlh1Q1ZESEZx?=
 =?utf-8?B?WHlJZHk5dGNvR0pLcUVIb2pJaE4zaUUvcnBpOHU2MWdVZVhVbjRnNWlRL25z?=
 =?utf-8?B?TE8rVlVqRkF3ZG9LN0pQTFZJclVRbnI3WTNFKzRtdjN0U1k4UkFEVFgyVUNX?=
 =?utf-8?Q?lFajLaOItCjDp0sHavhgUdvFB?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8414.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3621510f-7551-492d-0b6b-08db8ea28018
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jul 2023 13:07:58.7919 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YuHqGDCF+o6iw2GyaKANZnBpLHL96bxjPFbIyUQfP+tJpjOEsbQDURZo9LqjaMGJfGNL8XmNrPO03rFkFjjmY8DSOSrDZoSo2Q0iVoUbs8U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5790
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690463318; x=1721999318;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=v2qxKqbDRX1vKRPmibz6p71Z6X7JTTL8nTHRjAJF4js=;
 b=d6b2krGjgkYCmChSWuStG8TFBU59V/I2g/WEYFzEtl51uSJpw17vYmrU
 xZrwg/F62GscTK9ynMTRPk00geZ7mZlFsV9K2wzmX0DX5k5SYLqe//bCP
 ZeK2JdC/H+8sxrYiBjeUKzxVf/3t3t9NrTr8As3XjKf09Sn+JLDuIkZRz
 1gKmmTpMNuF/W38rFsp3d9e6otl2MOCj0IR7idXjee1z8nTOIiDZAhuPt
 XPbbsNRb573lmFMSoPDBo5XqWJWbFyocU36uH7CthGx+GahxncuhZU2OH
 9UBiA2dX4dsOrZSh0w/PbHwK9G4pfsASYr47wDvoJj8bdZ5Aox+bBvt34
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=d6b2krGj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 0/3] ice: add PTP
 auxiliary bus support
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
Cc: "Kolacinski, Karol" <karol.kolacinski@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 25 July 2023 8:01 PM CEST, Nguyen, Anthony L wrote:
> 
> On 7/21/2023 8:44 AM, Michal Michalik wrote:
> 
> One last thing I just noticed: s/net-next/iwl-next
> 

Ok! Changing it - thanks.

BR,
M^2

>> Auxiliary bus allow exchanging information between PFs, which allows
>> both fixing problems and simplifying new features implementation.
>> The auxiliary bus is enabled for all devices supported by ice driver.
>> 
>> Michal Michalik (3):
>>    ice: Auxbus devices & driver for E822 TS
>>    ice: Use PTP auxbus for all PHYs restart in E822
>>    ice: PTP: add clock domain number to auxiliary interface
>> 
>>   drivers/net/ethernet/intel/ice/ice.h            |  14 +
>>   drivers/net/ethernet/intel/ice/ice_adminq_cmd.h |   5 -
>>   drivers/net/ethernet/intel/ice/ice_ethtool.c    |   2 +-
>>   drivers/net/ethernet/intel/ice/ice_hw_autogen.h |   1 +
>>   drivers/net/ethernet/intel/ice/ice_main.c       |  11 +-
>>   drivers/net/ethernet/intel/ice/ice_ptp.c        | 582 +++++++++++++++++-------
>>   drivers/net/ethernet/intel/ice/ice_ptp.h        |  41 +-
>>   7 files changed, 489 insertions(+), 167 deletions(-)
>>  
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
