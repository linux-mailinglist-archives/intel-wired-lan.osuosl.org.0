Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 154DA604927
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Oct 2022 16:25:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9460240CCA;
	Wed, 19 Oct 2022 14:25:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9460240CCA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666189517;
	bh=03UiVxYlFp1A8fqZBOdP8+iXVORZ7Igc25DxCqyEHqI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vft9OcXjS0qWhozj0u2aCv9H2wStR2UmQO/CifYH4QK6tryMAyYzqPPguhQk/BfQa
	 g+zeqBZkM4C6dhvR5L85PF1obcKmsu/xBGn4g67YjlU9w9cNPw4DCTK6FAyxvt3wW1
	 l3y8ud0CX9msZqY5CP4bCui/TU9hDeS/lSP2C5vnTgZ+Dq11ACjc1/66El/KxRLeB1
	 xQ6oLfGHw9O/xPrcFhWjHEJRUcC7GW/87dgvXxgvYYtnqWVTRZMy+HSwIeyCvZhQKi
	 vHRM0T9oqa4XATEIkw1yfAN4J0qSanUUuBQcWmp2F4+VjnF9kCKoQJCHSalnQsQTFg
	 Q+FNBz+HSyivw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YlPWa7TpOdML; Wed, 19 Oct 2022 14:25:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2CCD640C99;
	Wed, 19 Oct 2022 14:25:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2CCD640C99
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C48971BF403
 for <intel-wired-lan@osuosl.org>; Wed, 19 Oct 2022 14:25:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9A57B40C99
 for <intel-wired-lan@osuosl.org>; Wed, 19 Oct 2022 14:25:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9A57B40C99
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DmYGty1Vhf8q for <intel-wired-lan@osuosl.org>;
 Wed, 19 Oct 2022 14:25:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 929C24052C
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 929C24052C
 for <intel-wired-lan@osuosl.org>; Wed, 19 Oct 2022 14:25:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="332981678"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="332981678"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 07:23:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="607118431"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="607118431"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP; 19 Oct 2022 07:23:13 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 19 Oct 2022 07:23:12 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 19 Oct 2022 07:23:12 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 19 Oct 2022 07:23:12 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 19 Oct 2022 07:23:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ww63qmZfYfOX1na6/spYTScst9671/m2sTAO1qQY3epM8o+6Ej7l02HY8aiU7oxpYlBHCjWbUgdcFahMV77Grri/MeOBfuoSg/UjRVFPjuygMnA/bRqAKd2qKKgRLK9iwkAR8MqJ/QF0A4BsvgfhfzIlZWujOTNnYVMHB1PX8NxdHqTVPEGOpQpApW9LXTcl8Xb6UlItIf0CxFa/epOF6Us8b3PIfbHuEouegPmp3zBJJWPsbL+/X0vGxA2qGGiDYHioJwcUHeC3gtYmbG33W8T0GivvWRH0nKxLb0lJCX3q+dX3h+HHw5/7/CSdZoJMN1lNgBMN77foL/nR/X2lVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R2FBA6Uma+AZBKYTmnI6VCSjYkJIrCZDqyG+9DqpHdI=;
 b=ERxCUDHqJZK7J8294ypXeqUZPi+JhYU/DVZOBsQDNVsxVFnSrllG6uME06dIuQifqr5g2CQzuQKPA1E+Yg7wyUh+x5AHi56vK+KMyzeoMneOdpEhJX8GOaN6fUey6cubLpIsRRs+W2sq0v/viSMUL9DaSZHLAYA350ULF5yxTYS8DOjQWr8lrh5BNJIij7KjBsjClmwitJqdGdPAL3hUxBqNkhWRDHnOdJYKnGfDwzJQ61OSNjL10ctuUvXKrhY1i/bJhM1wdCqA7pAUvGbvFN5qh7pJjHrqSPz3bS7JM3/j8z1aUQVI5iDWVznI1B+C7AHpHunOuNXey5Gc+65lAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by SA2PR11MB5082.namprd11.prod.outlook.com (2603:10b6:806:115::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.33; Wed, 19 Oct
 2022 14:23:10 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::ec4c:6d34:fe3f:8c60]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::ec4c:6d34:fe3f:8c60%4]) with mapi id 15.20.5723.033; Wed, 19 Oct 2022
 14:23:09 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: Gal Pressman <gal@nvidia.com>, "intel-wired-lan@osuosl.org"
 <intel-wired-lan@osuosl.org>
Thread-Topic: [PATCH v2 0/5] Add support for DMA timestamp for non-PTP packets
Thread-Index: AQHY4o49ev0KReGUxEyWlnOqPWSac64UNSoAgAGJqPA=
Date: Wed, 19 Oct 2022 14:23:09 +0000
Message-ID: <SJ1PR11MB6180523C0BEBB1AECB72C109B82B9@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20221018010733.4765-1-muhammad.husaini.zulkifli@intel.com>
 <44132260-2eba-1b92-af75-883a3c4e908c@nvidia.com>
In-Reply-To: <44132260-2eba-1b92-af75-883a3c4e908c@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|SA2PR11MB5082:EE_
x-ms-office365-filtering-correlation-id: 12196815-ece0-496b-67c2-08dab1dd72dc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Yrw0vedjdIxNkc7cSl7bVQCT8P+RVJWdKLYzZX4zE/2zEMojV8fJNzxK0pkPwlkqKP5reDqzLitTuV7RmOlvJ9jPK84X4dnTB0+HVeOnJV/mvqAfrMes3ln9EsP8pacROi7UozVbIngW3f/XdXjn7JMue1Z6zmgEKOqfQYfFhSJcBBlV97lGO5TfmSzv3lYlzXoGC9j3i5rNsD85eZ45uL5NqFF6rzqT21esbWJdkBZtwh4hM9bwlrTSGgfr7fPOSp+Lj3OgRTVIpYqzQucDGXvy7Lc5fq872b7sqdOaL4+l0PmNsyF4m+JdUP4gQ3WX2Rg5TNufB5I/cO1mNOCD/6Dc5X0RCLH7/6jE7L9DxlTuxVcqac3ejAr+oP2gcgsq/MPaalRx7APjWolrcC/5PRt3fu2MP/F0Png/7UEpIoZ+OO6KBOTKU2nvUJG8M8ZscHZnp3ugRwTWWsvYSZslGNFdvPdQ/18nskoXoMusOzHeReUIHnr3kBAJsiZRS6lu1voHszaWAmZDaq69YQfJU6vFDP8z4cdLeAp1xdOXtlmWJNmZWMCFQUEipJtngULRW4M9JeMdGHnUeuMwk2WpNPKGKEELHe7gMj1oHlmCWBlZKkJ7M2Fis/17zGZAWeLtjWlAo1UQlRboqjQIGj/dybmR26FgBEVX3puCmk32T0pUay1Km11Ey9I5LNDV0ctxR3WrZeGwRu8F/OhmshGMeigGm093wsGCo4pWDlKadMy8k2Kbjw6OhMzGFtJ6ELrsR7BGx9puHLQ6Puyu4ZY5XA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(39860400002)(396003)(376002)(136003)(366004)(451199015)(38100700002)(82960400001)(122000001)(86362001)(38070700005)(71200400001)(76116006)(66556008)(66476007)(64756008)(5660300002)(66446008)(4326008)(316002)(110136005)(8676002)(66946007)(54906003)(7416002)(2906002)(8936002)(52536014)(186003)(83380400001)(41300700001)(107886003)(53546011)(478600001)(26005)(9686003)(6506007)(7696005)(55016003)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UWlnbm1IR3NEUGViam9SbWlnWUZ2Wi91RXVLTTF3MFRkMFl4ZUFSMTFlb3Iw?=
 =?utf-8?B?RW5oZGprd3Q1UFdqblRzSWFQWEwyWElsM05vSi9Ma0Z3ZTNtWG1NdVppMzB1?=
 =?utf-8?B?R01WVmZLNk9BOEVWM0kyNS9mSDU5TTFXRXJ2amFQamFUSkg5aWJocDBpQUF1?=
 =?utf-8?B?YWFqTDJ6aFhscTM5MUczM2FxS0hzNVUzWXloZ2pFOTJIVVN6enZpU1NFUlBm?=
 =?utf-8?B?ZjRCK1A0dzViblEvOVV5VmVKS2JURTQ0UU5jWms4dnhrYU11bjZtWnBIc3l2?=
 =?utf-8?B?bkJQdGpOWmxzdFhkY1UzZWYvUUhZc0VzREx0MnBTNnBIQlFaS3grS2tsOHNt?=
 =?utf-8?B?MkZtK1FQbFRBdmJNU25KYWxwQWlyT1ZOYWh1cUtQcUpCenVuOXNheFR5SVY1?=
 =?utf-8?B?UzJXakpTTUhkckRqZHRVOUpHRGdaeHpsRW5tV1A2MjVndFhKYWtSQkVSVFZI?=
 =?utf-8?B?TTBBZDVSOTRYajZkRmFXYUR0NGVNbmpHR1dSenVPRndFZGgzbk5NakpqdjdV?=
 =?utf-8?B?ME1hTno2TGlpUmpZa3diVzZqNExOREJFMzM0L2RUMG44VGpQdzJaUTh3ajY0?=
 =?utf-8?B?anVzSHRIUDZmZ0dQcGM4WWI4ZEdhL2JITGtUekg3azBISnRzSTJ2c0tXb1E2?=
 =?utf-8?B?bnZ2YVNIR2tBNEl3ZzNKTFVVZHhiR2tZMXBVVlQwcXVLZENmZ2RWTTJmRkJF?=
 =?utf-8?B?TmRrVVRQYXFaNnhPaldhM2ViZE11R0xpYzRMNnpBZWVBRVJ4ODBQY29OdGdZ?=
 =?utf-8?B?eTRaN3FrejRFaFp2b1MxY202T1ZQa1YyU2tHTXpMKzdQY2psN1h5LytUOUlu?=
 =?utf-8?B?bGZQRzB3Qy92d1VJeGVKVlFJdEU4K0VWZ1BnbGFIRk9DbW5Rb1VpYTF6czBH?=
 =?utf-8?B?TjhnMHVkQ1plWHJzeGxsOWEya21yZ0lTYmFGMG1GRy85ZktLM1RVcGFIeGJK?=
 =?utf-8?B?c2pnN1VadGEvajZ0R0xxQzNlUjVyT0lJZGhXV09tQ0lwL3IwT1VSTlk0T3I4?=
 =?utf-8?B?U1E5c1RMdFRnNENLRDM0ZXh6NWU1ZHZKbGl1VDU3MG1rWG40ODhPbzBWVUJ1?=
 =?utf-8?B?MUttcHFyVWNBaUM4dDgzSWJPdzExNzViN0JBYUNZMVplelh5MFY5cW9UanBz?=
 =?utf-8?B?RURPY0RPOGs1Tk1xZG51YWhheWw2Zy9iVTE4Mk5sbzlaQ29XdTFKaGRXL1Nl?=
 =?utf-8?B?N2tFVTZ6dGpOMHZLUEh3bGRXVlRkeklkYzltUlNTUFVHa0FnTFdVTEo1eWpR?=
 =?utf-8?B?a3RwQ3EySjV4eHdvVG4ybVkxemovRWI4ZUE0YVcvb0pGQ0JXM3lpY2RTcGNi?=
 =?utf-8?B?eGVSL3lrVHExQXIraFR2NUplZ2h2VllvTzFGc2NLT0RQZnNvVTlWU1NYN2hS?=
 =?utf-8?B?TktoOTR5N0NOTEg1SFpzckpwTjUrcWRXR3dyY0JkUkhMOG0zZFMxaG5sU2di?=
 =?utf-8?B?ZzY4L1dtdFFvcjNrcklzTGVoL2ZtTnpObUZVOU5tSVAyZDd1OVFqRW1ISU1E?=
 =?utf-8?B?UzEvc2VjczJCL3pQWS92S0NwRjZpaE5SK3NLYkgzczczeTVZa1V6MHE2WWRy?=
 =?utf-8?B?Q3labUh6Ni9zSkR0aUdIUm51cjgrR3A0N213a3N4Tm1tWmh0aWpxcDFoWHNZ?=
 =?utf-8?B?WmpyWUJxK3AzR0dtSlRsTFZmaUhyTXBuMmVZcHEwUTVLaGx3WktuYlI3N2xH?=
 =?utf-8?B?anBOcUwrdldGU211NDQ3cVJnc1AxSXRHY3J5bUpNQlZGZUcxZHVObWE5UDlw?=
 =?utf-8?B?WnptYUNzUVNMVnl5WkVjT0hmVGhVRVNNbWREeG1kUS9CRmx2SXlwR1pubW9L?=
 =?utf-8?B?YVVwY2ZqbDJXZndnaStTT0h2KzF3YTROMHRsaEU2Mm9ZdWFNa2dqYmE0UGw0?=
 =?utf-8?B?S3YrUFRSUE5zNjZrM1hoQjNESTJBVGlURk54TEt5bFh6YlVURTZaTW1Vdk9j?=
 =?utf-8?B?bmZUeUhNWE80UThMOXVXTlhXVDQrMlhnbE5XbTMwbUdLOTNYZmlmZ1Zsa1Bz?=
 =?utf-8?B?TVVDMm85Uks1UXk4N2MveTgvUzZ2OHhmZ3BTT3ZMcGljT0gvU25xRmpPd0dH?=
 =?utf-8?B?a3BpRkw1aDFRY3RMTGMwcFY4Z2kzeWlGZVNWbFNLTUhJZUtuZHlVQzNXN3c1?=
 =?utf-8?B?OWNMZ1RMaUFwSVFFV0ZDM2MvbXBPSmhUTTNLWXNiUVZyS1ZkZE1kUXIrVVVu?=
 =?utf-8?Q?xnZS8MFGuikKtmHpq8wzyVQ=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 12196815-ece0-496b-67c2-08dab1dd72dc
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Oct 2022 14:23:09.8813 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: u9Dk5XRk6ByqCX2pUpL/oemjX+fLHlvVHfiqAtjvR9D/Zp0loeUMT4ud5iJ9+EIAuqcCT6LYRj/SXy7xOwqyd/MxKuU1Olh/Gr5/mqctrSVyAw61WnwsekNOdMgZQyCA
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5082
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666189510; x=1697725510;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=R2FBA6Uma+AZBKYTmnI6VCSjYkJIrCZDqyG+9DqpHdI=;
 b=A4YZXZhuNCoY7XeY8sNXpUMyZJVonTNaVWaxOibx6VRfNU/NXEI7Kh38
 JR+krI9Yd1HSWei1tCZxcUfLukER9MBzRG1ZMyRUwNXqiplpcDdP114St
 0+BHTLvqCoqH6ZgPpn+cYT9CFVLdhaQ4s4+NZpuAPbkqH83CQQNwMvFZG
 znBObBWXvMxyjVk0xJE/6jeYhmu6fAzY6JQtSQ7JBtrosHck2KCo71qH/
 dEtD0YoVkp1Z4RzuQFG93lhB4YUaNDayqnLBoXcw7nb8UyNHy6T8DgbJA
 SgCZuXaCr/cjDCjqIVS8/PTVvffuDLu7zg/KPEPI7WVv4i+2nqNY9Yx1r
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=A4YZXZhu
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 0/5] Add support for DMA timestamp
 for non-PTP packets
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
Cc: "leon@kernel.org" <leon@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "saeed@kernel.org" <saeed@kernel.org>,
 "edumazet@google.com" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "michael.chan@broadcom.com" <michael.chan@broadcom.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "andy@greyhouse.net" <andy@greyhouse.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Gal,

> -----Original Message-----
> From: Gal Pressman <gal@nvidia.com>
> Sent: Tuesday, 18 October, 2022 10:23 PM
> To: Zulkifli, Muhammad Husaini <muhammad.husaini.zulkifli@intel.com>;
> intel-wired-lan@osuosl.org
> Cc: netdev@vger.kernel.org; kuba@kernel.org; davem@davemloft.net;
> edumazet@google.com; Gunasekaran, Aravindhan
> <aravindhan.gunasekaran@intel.com>; richardcochran@gmail.com;
> saeed@kernel.org; leon@kernel.org; michael.chan@broadcom.com;
> andy@greyhouse.net; Gomes, Vinicius <vinicius.gomes@intel.com>
> Subject: Re: [PATCH v2 0/5] Add support for DMA timestamp for non-PTP
> packets
> 
> Hello Muhammad,
> 
> On 18/10/2022 04:07, Muhammad Husaini Zulkifli wrote:
> > The problem is that, when there is a lot of traffic, there is a high
> > chance that the timestamps for a PTP packet will be lost if both PTP
> > and Non-PTP packets use the same SOF TIMESTAMPING TX HARDWARE
> causing the tx timeout.
> 
> Why would the timestamp be affected by the amount of traffic?
> What tx timeout?

Basically, the original timestamp register collect the timestamp at the PHY level 
and interrupt is triggered for the driver to read it. We observed timestamp missed 
issues when the traffic is high. DMA Timestamp guarantees the timestamp for every
packets as it is delivered through descriptor write-back mechanism.

When there is a timestamp missed, ptp4l application will complain there is a tx_timeout.

> 
> > DMA timestamps through socket options are not currently available to
> > the user. Because if the user wants to, they can configure the
> > hwtstamp config option to use the new introduced DMA Time Stamp flag
> > through the setsockopt().
> >
> > With these additional socket options, users can continue to utilise HW
> > timestamps for PTP while specifying non-PTP packets to use DMA
> > timestamps if the NIC can support them.
> 
> Is it per socket?

Yes it is per socket.

> Will there be a way to know which types of timestamps are going to be used
> on queues setup time?

We can get the which timestamp that is supported through "ethtool -T" command.
May I know why you want to know which timestamp need to configure during queue setup?

> 
> > This patch series also add a new HWTSTAMP_FILTER_DMA_TIMESTAMP
> receive
> > filters. This filter can be configured for devices that support/allow
> > the DMA timestamp retrieval on receive side.
> 
> So if I understand correctly, to solve the problem you described at the
> beginning, you'll disable port timestamp for all incoming packets? ptp
> included?

For ptp, it will always use Port Timestamp.
Other application that want to use DMA Timestamp can request for the same.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
