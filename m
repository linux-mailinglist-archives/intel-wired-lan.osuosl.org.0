Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D599720F03
	for <lists+intel-wired-lan@lfdr.de>; Sat,  3 Jun 2023 11:46:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D8B0940B25;
	Sat,  3 Jun 2023 09:46:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D8B0940B25
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685785608;
	bh=fushl1sBMYy6BC5jMKKcPuHDcBqu9qf5PM/VARHPRG8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Jf3Rc9lLS7n4OeltZ2xS/Ee+Q/HNlm1oYxZra8575goIP7E/L+8ovUcKP0IrPZ1hg
	 Z0KwDFXcXTKXck45M3c31Wa+7BPZdmyZkfgoLiArfeZPyP/3HwmqfE6E8TgLh9mVzm
	 81XL3Pa09H1FC1xPu5W4Tv/K9UG1vCiV7doHfsaqjoOBLgznL24NX3kvs3Ub2xCPB9
	 iHLyTDPMBIFucopIfEChaq4gEaWNLCN9lLcdfdrBtLo016ixbYfQekwoe72L5k7AuR
	 pulpWu7vgeTuF95nvwScK4h98RoBNjdbEjyq4HQ481ar+zWkwnraHPzY8xKW3V1ZJU
	 Zyn5y9CfP6wtQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Vt8L24JtEVvC; Sat,  3 Jun 2023 09:46:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7A7ED400D7;
	Sat,  3 Jun 2023 09:46:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7A7ED400D7
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2FE991BF4E2
 for <intel-wired-lan@osuosl.org>; Sat,  3 Jun 2023 09:46:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 121B342803
 for <intel-wired-lan@osuosl.org>; Sat,  3 Jun 2023 09:46:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 121B342803
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nl0Z97idDB2w for <intel-wired-lan@osuosl.org>;
 Sat,  3 Jun 2023 09:46:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D391A427B6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D391A427B6
 for <intel-wired-lan@osuosl.org>; Sat,  3 Jun 2023 09:46:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="442430749"
X-IronPort-AV: E=Sophos;i="6.00,215,1681196400"; d="scan'208";a="442430749"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2023 02:46:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="711241414"
X-IronPort-AV: E=Sophos;i="6.00,215,1681196400"; d="scan'208";a="711241414"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP; 03 Jun 2023 02:46:40 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Sat, 3 Jun 2023 02:46:39 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Sat, 3 Jun 2023 02:46:39 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Sat, 3 Jun 2023 02:46:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Insmh3Xg+sdvc1JGoFqX+NEI/rkYWYBeeDU3HWHz3yw/Uj+CY/A/cFTwvfSPQv33G9HaSvNDeh9NZPLYXzQkjz7YX3+yCvwNarraqNVXnR5m2lNZOWJ0SfIyIH2YhCYP1Co5WFydgqbZiVcQKW8yJGJbKacxc3yActy9UGaSwUL2MFxg7rw/czSJY1VG+90vxiFBZ20deXFxIOuJnh/7hHB/JuwrJaWgu0LjKukx7Xj3iTugBw9YGREK0IswFqdf5kfo69tZ6zRUksmNnNCOtCLWM9J418oklWXPLMWW0UggH1XnrXXs7xOf5klV6TQFaHbUr0eMb9w/cyFsymr/1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fI/VOROlobmD8IIBqn4X5cIzVC86k9sdyQXrordTiNA=;
 b=BE25anM3El6FiKAUuOD0fxXoGX8+WLuaOZ5kI3/lQ7DsSNFCC9HCOlyXmQ5VuNVawhP2TOJ2cjh6naFfIudcSeiXS8/qIt/z3MQ6ffXAzNFfAslIEi07O0DNKWchrtMs+7xBZoyE+m5zHCgIVaWymtix0u7hSmvMkLkJXVxc1BjT79WWiQlMBRLVgJPbaT0vxHaFR9Y+XWo9t4apCoUaRREeU+IvahQCL6W+3FWT7+UZ2K+gdtB540LbqL2xjIc3maacBAwlJ7NSOvgF823S+Y+D8ojQ7pmaKMP3NjDRvxAP1FMzzQK8/D4upn0g1h7zclOy6ppUMhiK3b+kbz0YTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by BL3PR11MB5681.namprd11.prod.outlook.com (2603:10b6:208:33c::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.28; Sat, 3 Jun
 2023 09:46:37 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::c28a:3fb:3cd4:1e97]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::c28a:3fb:3cd4:1e97%4]) with mapi id 15.20.6455.028; Sat, 3 Jun 2023
 09:46:37 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [PATCH iwl-net v2] igc: Fix TX Hang issue when QBV Gate is close
Thread-Index: AQHZlPHKdiZX/uVb10eZVwd5ssfU4693yiwAgAELaJA=
Date: Sat, 3 Jun 2023 09:46:37 +0000
Message-ID: <SJ1PR11MB6180ECFA708852013E38C51EB84FA@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20230602012827.25938-1-muhammad.husaini.zulkifli@intel.com>
 <8e65d308-a64e-96a4-1ed7-4cc27282d65f@intel.com>
In-Reply-To: <8e65d308-a64e-96a4-1ed7-4cc27282d65f@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|BL3PR11MB5681:EE_
x-ms-office365-filtering-correlation-id: 6fe9d771-accb-45e6-2c37-08db64176c97
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: r/DACm9Ux7T7F/XzcNGtugh5YdGg7DY5eTJTmlLZc3kxQ6sel4XmCNyv6rGBacHHIGvY8TavOjnl6i9Ej1auGhKsuNKbGDyV2ihs4o96WSrhVqfpCzApJD3GWGQcd0tf9BwreTNha2WlBielFZpfns7NXYVvs6QbrzOk9irU6U+beYb6WIUvkECW7e6bApevUtfEsuYLkuta4t/FfBJma3BEOgSD4++JYQxeVZzV8oyS+xOqBAXzt9CeLkZV5dgtsQjpfCqxpjIhtybVh/a24iG5gAUWw6rp+hhOkheNOu/Yh8mA13khHVxJsthzbJ62w6+4TE+lqFS7nKP1Ep1W+q/He3KqjHE3XjDQYBTX+eziILTHaDlIJJjnKEaf0aV3SaAlJkZKqLn7GhPti5rJwM3Jx0V5j4S2TVMdjNw85pUk8xPOKO4U8SAgVwdK4RwVxWqhcCCmeapjkF1KMwJDDnir5sqceK0JfTRvRc72yZ8yOfFgQO0UmJNJ5NGpsOlkOlQEXHhVS5jvzO9eWwAymrfVgNIT3C65aa/FFhz2bLz3lz+jfSuotFpCS9WoubdQPRx2kyvMHGc1PSjmSBX3pVtQgRS+decD3SiDc52O1aud+2YHHwIu5gAZD/4ZkF6R
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(136003)(346002)(396003)(376002)(366004)(451199021)(54906003)(110136005)(71200400001)(478600001)(52536014)(8936002)(8676002)(5660300002)(38070700005)(33656002)(2906002)(86362001)(4326008)(122000001)(64756008)(66446008)(66476007)(66556008)(76116006)(66946007)(316002)(55016003)(82960400001)(38100700002)(41300700001)(83380400001)(6506007)(53546011)(9686003)(26005)(186003)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OW42YU1UV0lnbG9YMGlRb1FaUDlxVW9NRGxyV1MxeXFBQ3laZmh4RUxGR3VI?=
 =?utf-8?B?bXNiQmVhay9pVXEwMStBTUFEK21keE1KOGs2blkwSkdkWWpPUU9NZkRERXR6?=
 =?utf-8?B?MDVBdXJMUkxmaDNnRXJZMmoxQ3EyRlpSY05sOERPUmZyZGl4d3dzRTBGYStK?=
 =?utf-8?B?ZEVFbDFuK20yWVZ0RXFMUXIxTnpreHlMdEdkMWZXZ3RuTllmZ1FzN3lVazhO?=
 =?utf-8?B?VnVSSDZ1UitveFdZV2dSYVQrRG5SQ3piNGM3cHZkUlRVZHMrRXZiZDBtc2pu?=
 =?utf-8?B?bE9OSm1PRXJlUlZhNzYzL2k4UlRobm5ZcGRkYTZYY0sxNkJua1pvNjFGYkRm?=
 =?utf-8?B?M2FiY09xeEt0QlQrZmxSK0gzMUJPSnNQaENMWWpQdzg3bHZPd3BqdXJkbjhO?=
 =?utf-8?B?LzNRYjVZMm1SQUVreEd3OWFkRExKY3J2OUhSalZTTlBCdGNNS2VDNElCdWwv?=
 =?utf-8?B?VFRXd1Z3eEh1WnkrZ2xzL0VlYnZGaHEwT3d5L1VMRGNGcE9wd3ZvalRySjhK?=
 =?utf-8?B?OXlJdFZZOVZHSDZneVFKRGFBaVdxdTl4c2lxK0NvS1MwY0dYNG50N3RsdGdt?=
 =?utf-8?B?T0oxeTByVitLUG9weTNzOFZUeE1sYndGN3BUNmlKNWZXWXhoL2VDRUtEZEFs?=
 =?utf-8?B?M29NVlFsK0tBNTVoYUs5V0NYeXhIeUVWYWlRYlIzcU55NURUSm45VjhKck1L?=
 =?utf-8?B?MDFXaDUvanQvelgzUUNyb0Z6UEhSNUI2S0grcXFFUXlhT3VHV2FtYnhHQ2M0?=
 =?utf-8?B?K2tZRThsR3FkWXVoMS9oL3ZOeGFvNVQ1bGlaaGJ2bzdYck9vUWNVYm9ZWVdu?=
 =?utf-8?B?ZDlsTzBkZ0FEN00wMHhFZVZCcUgxU3JBTGhpRW5tNDZLRXNCQlJ5WEgwZmd3?=
 =?utf-8?B?WFN4bk95ZnVtcldsQ2hXN0owQnYzYVkyWDJTVkN2SUxrSU5KUW0wb3QrSVI4?=
 =?utf-8?B?UFBOMENaWDJ5UklaVE9YQ3BuUVp5K1lSUjhsd0VoSzBUOHZsMmU2VFdvd1hV?=
 =?utf-8?B?ZWpJMENkcE02OGZKWHRkdko5cWxOUzNHMmdVZGErTm9WRU82WDM0S3hyanY2?=
 =?utf-8?B?RmFFVERCUEpjSHpXTUJiYmpmUFVYREt6WERPcWllVFAzazZ0STZhT0Nod1RI?=
 =?utf-8?B?aWEyZ2k2QTk0QkhBQjBhNEZ2R1o4d3pnZ0czMVRsbUtKNStXK1AvRkxYaWs0?=
 =?utf-8?B?TEZSWnhDWmd4bVJRMHlXSEhtSkgzeEtBVFRPYzA1R0hMbTR0R3pBOXZuMHJ3?=
 =?utf-8?B?UWRNQm1LSHZvZ0g2OGpZTlBKbHdhS2k4cm9MYS80VDJYOEdwWEZkQnF3VEJr?=
 =?utf-8?B?bUI5c3RJWHBwZ2ZCWTFCa0dJaGdDb1hibGtFNkw3eDRrdFV0ajdHQ2dVY3Fy?=
 =?utf-8?B?VDNOck9STytSZksxNllVajJPVTNYQmMzYXNUS1h0OE1ReFBGNmt4UmZtZ3ZD?=
 =?utf-8?B?amFLVlYyMTJTbGxyVy9BSVFFRVZDQ3hPMWN4eVFRdG1IR3pTeStyUWtwZlRz?=
 =?utf-8?B?ZFpkRGtOUjBZdjRMaUhNYUp1NkVtdmdaSlVQajNEY05keUtTdFdqeXpnQlBR?=
 =?utf-8?B?SFFhYjcrL2V5YmQ1L2lDU1ZqTWU2UDJCcjNYTitZVXV3ZVRGTVpWNjVMUVVP?=
 =?utf-8?B?RkphSVV4ZWw2RkFzeUtadkZsem1DOTlURUhOdllJNERrQ1FSQVZ4Sm9LOU9m?=
 =?utf-8?B?dzBua3JjRVBiTVYzYkFOTTlxR01WcEVmL2xxS1M5cmZDclRGNXZ3dXpqeXY1?=
 =?utf-8?B?K0dtV25mNytnYmNGVjRaTTVvd1AwWXpDZW5wOEJkcURmcUp4aFNOZGx4UHYv?=
 =?utf-8?B?Q3Q4RldtVGRMTUFjL1FtcWw0aEpRYTNJTnlRU0NwMlh5STVNMEttcU1FQkda?=
 =?utf-8?B?M1hHU1lYRmJoYTBkWCtkdlZWelB5RmRhVCtOelJXS3FqVlJtRWdEYzgrL094?=
 =?utf-8?B?ZDN2NGc4KzRabUlLZW1Hem1aYzVTOGFiRVBxTVZNeExFOXEydzhXVGF0dmdP?=
 =?utf-8?B?YW1TZGtxQXFkRWY2dE1WVEZGOVBlOUNlVVdQTnFXYm52Vm0yQnFqenNLNk01?=
 =?utf-8?B?ZWlKSzFwZ2Q5S0R1dlFOS3E5N29lL2xaWmFGbEJHM3I2Tjd4amVndlpTZ0RS?=
 =?utf-8?B?WXFQNkJvbmVYZG1WdTF5MW9IcGo0YkRjZkRwMU4wdTltM29qaWtGa1B2RFdn?=
 =?utf-8?Q?Q4QTVg74ahmen+GQKlvkPv8=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6fe9d771-accb-45e6-2c37-08db64176c97
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jun 2023 09:46:37.1391 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: q7e7h8pN1weVq2K0UbH8zE4gjDjIG3buf2FH2TCgikW8gvoiTS5ZkSBBYGJOkjABCsZaImxydsDZDnp2X29Di1+HDt6w9VDYXCaoZzotfZWBhHKn4Acth3gL5K7azCxw
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB5681
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685785600; x=1717321600;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fI/VOROlobmD8IIBqn4X5cIzVC86k9sdyQXrordTiNA=;
 b=dVctze/grN4ljVHhN7Jd+N1RTCJFRoSYNEHnBA8LUBbZFbh3+nWiYcYy
 QoaTQSlX+6p4UTc7YLzXRHBWe5qtqpi/TAjd3OKjRdvhaqr2eZ7xFmrM8
 U6bumCjOWyBLOPZ0g9YMFM8t8epAROqx96um9QoQ+JKRMROdTs+1L5o6Y
 k1RiA1lhe3p2mKeq9RTTztzePihbWJx4lBciZYGQrvsOhZl/iKF6Ea1uv
 Ejg0WO/fYotIfpDLrDDNve82+CwhFw2gY/CNOeBxKawI0I0cTt+lXfjyq
 gBTT8/55kxTcniLa9H9rwOUH8bslHiedohyD5BKUF1dWAko8ygu4D0X+n
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dVctze/g
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] igc: Fix TX Hang issue
 when QBV Gate is close
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
Cc: "Choong, Chwee Lin" <chwee.lin.choong@intel.com>,
 "tee.min.tan@linux.intel.com" <tee.min.tan@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Anthony,

> -----Original Message-----
> From: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Sent: Saturday, 3 June, 2023 1:46 AM
> To: Zulkifli, Muhammad Husaini <muhammad.husaini.zulkifli@intel.com>; intel-
> wired-lan@osuosl.org
> Cc: Gomes, Vinicius <vinicius.gomes@intel.com>; Neftin, Sasha
> <sasha.neftin@intel.com>; tee.min.tan@linux.intel.com; Choong, Chwee Lin
> <chwee.lin.choong@intel.com>; naamax.meir@linux.intel.com
> Subject: Re: [PATCH iwl-net v2] igc: Fix TX Hang issue when QBV Gate is close
> 
> 
> 
> On 6/1/2023 6:28 PM, Muhammad Husaini Zulkifli wrote:
> > If a user schedules a Gate Control List (GCL) to close one of the QBV
> > gates while also transmitting a packet to that closed gate, TX Hang
> > will be happen. HW would not drop any packet when the gate is close
> > and keep queueing up in HW TX FIFO until the gate is re-open.
> > This patch implement the solution to drop the packet for the closed
> > gate.
> >
> > This patch will additionally include a reset adapter to perform SW
> > initialization for each 1st Gate Control List (GCL) to avoid hang.
> > This is due to the HW design, where changing to TSN transmit mode
> > requires SW initialization. Intel Discrete I225/6 transmit mode cannot
> > be changed when in dynamic mode according to Software User Manual
> > Section 7.5.2.1. Subsequent Gate Control List (GCL) operations will
> > proceed without a reset, as they already in TSN Mode.
> >
> > Step to reproduce:
> >
> > DUT:
> > 1) Configure GCL List with certain gate close.
> > 2) Transmit the packet to close gate.
> >
> > Fixes: ec50a9d437f0 ("igc: Add support for taprio offloading")
> > Co-developed-by: Tan Tee Min <tee.min.tan@linux.intel.com>
> > Signed-off-by: Tan Tee Min <tee.min.tan@linux.intel.com>
> > Tested-by: Chwee Lin Choong <chwee.lin.choong@intel.com>
> > Signed-off-by: Muhammad Husaini Zulkifli
> > <muhammad.husaini.zulkifli@intel.com>
> >
> 
> No newline here please.

Ops. OK will remove it.

> 
> > ---
> 
> ...
> 
>  > V1 -> V2: Fix conflict and apply to net-queue tree.
>  > ---
>  > ---
> 
> no need for two '---'

Yup. Will remove this double line.

> 
> > @@ -1521,6 +1521,9 @@ static netdev_tx_t igc_xmit_frame_ring(struct
> sk_buff *skb,
> >   	u8 hdr_len = 0;
> >   	int tso = 0;
> >
> > +	if (adapter->qbv_transition || tx_ring->oper_gate_closed)
> > +		goto out_drop;
> > +
> 
> clang reports issues with this:
> 
> +../drivers/net/ethernet/intel/igc/igc_main.c:1524:6: warning: variable
> 'first' is used uninitialized whenever 'if' condition is true [-Wsometimes-
> uninitialized]
> +        if (adapter->qbv_transition || tx_ring->oper_gate_closed)
> +            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> +../drivers/net/ethernet/intel/igc/igc_main.c:1632:20: note:
> uninitialized use occurs here
> +        dev_kfree_skb_any(first->skb);
> +                          ^~~~~
> +../drivers/net/ethernet/intel/igc/igc_main.c:1524:2: note: remove the
> 'if' if its condition is always false
> +        if (adapter->qbv_transition || tx_ring->oper_gate_closed)
> +        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> +../drivers/net/ethernet/intel/igc/igc_main.c:1524:6: warning: variable
> 'first' is used uninitialized whenever '||' condition is true [-Wsometimes-
> uninitialized]
> +        if (adapter->qbv_transition || tx_ring->oper_gate_closed)
> +            ^~~~~~~~~~~~~~~~~~~~~~~
> +../drivers/net/ethernet/intel/igc/igc_main.c:1632:20: note:
> uninitialized use occurs here
> +        dev_kfree_skb_any(first->skb);
> +                          ^~~~~
> +../drivers/net/ethernet/intel/igc/igc_main.c:1524:6: note: remove the
> '||' if its condition is always false
> +        if (adapter->qbv_transition || tx_ring->oper_gate_closed)
> +            ^~~~~~~~~~~~~~~~~~~~~~~~~~
> +../drivers/net/ethernet/intel/igc/igc_main.c:1516:29: note: initialize
> the variable 'first' to silence this warning
> +        struct igc_tx_buffer *first;
> +                                   ^
> +                                    = NULL
> +2 warnings generated.

I will move "if (adapter->qbv_transition || tx_ring->oper_gate_closed)" to Line 1575 below 
to avoid this warning. 
My environment is unable to run CC=clang. But I believe this will resolve the issue.

Thanks,
Husaini

> 
> 
> >   	/* need: 1 descriptor per page *
> PAGE_SIZE/IGC_MAX_DATA_PER_TXD,
> >   	 *	+ 1 desc for skb_headlen/IGC_MAX_DATA_PER_TXD,
> >   	 *	+ 2 desc gap to keep tail from touching head,

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
