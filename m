Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E98077756E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Aug 2023 12:09:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0EAA841574;
	Thu, 10 Aug 2023 10:09:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0EAA841574
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691662140;
	bh=10Wi8bzz9I0i8K5s3+xmmizW/A7pupAAjeLN2VxPNFY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=d3kDKtrsP1YNAILAuGJRE/QtpJeEZYbUOKSa721k5TYadzEyd6/RTAOsRa8d5Qz4h
	 VrZ2PRHRv26MnzMwJztIrpeg9m4f4r8eAlVEFtewiYK5Rp//CoKns/kOgMOgM9Ve5k
	 wSYMiTnadv181UbpQ7Xsb9WJs6XGKWgTzo01SIpgaR/n9oKHUnaEy2QNpijv6CluWg
	 2tSbOrTNpbQ3WynGmZAPv47ZmJwU8oUwXkBebXhGY1GZijkZ+juuIjtAHyEgPVzSnc
	 z4DagmBsN3U3z3uAml5aKvv3Q/ZT+PwZ3fYCeRjIHR6MuLame/SPo+3oPsh6gqmx6i
	 Jwu2L6L5+X6ww==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fD4jxzN3TM5c; Thu, 10 Aug 2023 10:08:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CEF6740A76;
	Thu, 10 Aug 2023 10:08:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CEF6740A76
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5E9A91BF34D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 10:08:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2DF2B401EF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 10:08:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2DF2B401EF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Vi0az6TPBJs5 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Aug 2023 10:08:52 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 04B89400A3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 10:08:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 04B89400A3
X-IronPort-AV: E=McAfee;i="6600,9927,10797"; a="356325788"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="356325788"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 03:08:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10797"; a="1062830076"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="1062830076"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP; 10 Aug 2023 03:08:51 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 10 Aug 2023 03:08:50 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 10 Aug 2023 03:08:50 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 10 Aug 2023 03:08:50 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 10 Aug 2023 03:08:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IDy4GnHRQh9FYNHJWAkN8tWWXYnDnHAcHJPwlm1FOsJsgCQooXIXItQemPoaXKt2BsQ76YS+AHy2ff1rXRFMLAxg4sQgb8nx4Z91BOBkTFd0xR0jkrQgT4LhhFLrAGFTTSAwwVl0DrWiP7++Aw7R/QKnlDffwr+bejXocqvZwT9Wl62tZruM/CHOYpDqmb3dfZ5G7MTiHd7ndBi6EICFun11agq1q7Q3qITeAPrt9PMcWz/J/CYDTy8zCYhk3k/B6CHrAN28pO5smIyG/0C2KR6cbdKZQ0oYeY0617r84DcUJQafjWCr/m0jiGC014nzFeT3zzhu7cl3w+ePcqvO3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xwfGBa4OFNEuaOEv4+eVWJacfmkB0YUxnnwWgLg6uAc=;
 b=UXMTcf50JV/jQSuUGuxtNoIYxRxSQvlSeLvgtRB2ScZXuuSXaae70qDc9QvUmrmuakOmQE7zFabZ/k4KGNszA7OvwTkxSyEkWRVYwLSuizeKBiHV9HGb8DPIJIz2RR/jKlJFsZ8j2hxEr0tpxvAyn86qeSg7muLByBEAL/LbZdEV2mlapwMP9qu7wNzGt/VWmYrVEpJOh5Npico238XLcTojmK30g5a0yt93HwnxqjzRNgfUtaS86avi6mnlQxDPZ5YtiSLtaYXlR5Hqz6zADhiDv90U+Ieh2A18etn2mMYHErHroyZ5PbbAZKL1txF0RVA/W/y8nlMc+rN7cWbCWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by SJ0PR11MB5770.namprd11.prod.outlook.com (2603:10b6:a03:421::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.27; Thu, 10 Aug
 2023 10:08:42 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::f04:5042:e271:9eec]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::f04:5042:e271:9eec%7]) with mapi id 15.20.6652.028; Thu, 10 Aug 2023
 10:08:42 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>
Thread-Topic: [Intel-wired-lan] [PATCH 3/4][next] i40e: Replace one-element
 array with flex-array member in struct i40e_section_table
Thread-Index: AQHZxP8YYPid22s9C0e85tqInkpPB6/jWsnw
Date: Thu, 10 Aug 2023 10:08:42 +0000
Message-ID: <BL0PR11MB3122931DBF766C2F88DABE32BD13A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <cover.1690938732.git.gustavoars@kernel.org>
 <ddc1cde5fe6cb6a0865ae96d0d064298e343720d.1690938732.git.gustavoars@kernel.org>
In-Reply-To: <ddc1cde5fe6cb6a0865ae96d0d064298e343720d.1690938732.git.gustavoars@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|SJ0PR11MB5770:EE_
x-ms-office365-filtering-correlation-id: 9dfba1e2-2d53-4f3a-1283-08db9989c66d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SSWYYHqI3+Ch4QLmnXm81k7wNEtmBss4qWDsuMHtiVuD5D309izjg1W6gUddmFY5eiqWS33dKDjMqQI6vyXqoKjfZzLuvNTiV5AjVVJjaPVdFrrzf5OYja1TkpCQjHacaCgJUdYiFmrAejQTDNxZ3eQFHKKmfVkOazdD4mrhhnyMGDsNP/QQ1Q75fgnnN1ntUQosFpTvI72dW8zFypVlMioEsJGo1gNdqThAdQMrHeKCw9noDHZ526rogkJyJKHBr3bOCoJ0nvvszl4ca55cGy0jS5uOHPbOCZ846OWCdnYvc68gIh5fc6tec+DalfTnn6h+QmWrJWhiM+qoPvkkDqL7XM5w15kuvFtUkugL0h5XLb7eBtVW5nxPSz5zA9vhTHg+kwEYobKwAdiN+r5vJ25Ks5ZG9JEunJRuSoYSDbOTr7WrgwSvYgJlaXF/V8ZY2azCDBnNi8cGb9xgQ3QQZPCuV79FGoxnNGASGyMxi0kQxDmmiAfe2HL3j/+6AAR4usEcfNMFFVNvhxEQhdlY4jYU9xmDob2OlbmYsDCHCI18RHs+zpreVhWWAhhZ6bSgAzqq9HsDDO0Pqt2PUbLSfCGC6elJqRQ0EnZMUFQ+I2Y=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(366004)(136003)(396003)(346002)(376002)(186006)(451199021)(1800799006)(83380400001)(55016003)(7696005)(110136005)(4326008)(4744005)(5660300002)(52536014)(8936002)(64756008)(38100700002)(38070700005)(66446008)(8676002)(316002)(2906002)(54906003)(66476007)(66946007)(66556008)(76116006)(33656002)(86362001)(82960400001)(966005)(478600001)(122000001)(71200400001)(9686003)(41300700001)(55236004)(26005)(6506007)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?A5HR50PgSt+SyZ3vWluTbuCE4/HQTlZj5FDi+vzK5WLiWCZyB0k8npk5Qun8?=
 =?us-ascii?Q?CahHeimDUQSWFOOAPXzpBodxXM1N8mHJ2xwPKHu6FXCj8M/a0OFw7q6y9t/Q?=
 =?us-ascii?Q?uCc7v2ZmfVko64byrJECw6F0rr8jRYw6W8rcXaUqttzC2FkT3CKpo0IzC1Gu?=
 =?us-ascii?Q?5O5ZfRHWG/q3WfVgZ4GaETanYkg9O8UIU0zSmm2yo4R31k/iBtE5qgfyeLy8?=
 =?us-ascii?Q?YGZzYirkJ7TwE3cWuo6GkPNs01i41IOkNfrJ5Gq7+N3FKVgcQgvx/nOMCTLv?=
 =?us-ascii?Q?2mzkCTnowPCOBpthpvaEmTgZvTfx3mONK2s4qKwJum+SyR2tqT2xRz4NK/fg?=
 =?us-ascii?Q?TtQ8CHCbg0oxDaTIyMK7XdS57XgCwvkSp35x2hHqNM9qVz4Nkt8MiVC7Kzbv?=
 =?us-ascii?Q?z+38FLNsXvk96NpoybnBpUXOTPNRhz85Nv2cDiwI7zcnhTyqGqqsf6o6kzr7?=
 =?us-ascii?Q?RR1vgRxEDxvhui88lVsciIqBoowdjQYhB6MrbxN9UUuCCIQkcxtLDaFZ9uDo?=
 =?us-ascii?Q?i+hTgsatwj4+VTbY4vESj049IwDrKae55NSUeHwIEl0bRr9Tu//rB21dm+e8?=
 =?us-ascii?Q?ZMPDuETUTefrnS8I397SPpbc8njeT5UtjOhgSSQkcuU2tKEslOLrycaK3N2D?=
 =?us-ascii?Q?8GvUGmgYIVixGdC6Aawlpd3kLMN2dfYCbmcpWrjjEveO/JxsCwI5ZBWkgHKG?=
 =?us-ascii?Q?oDIc8L1WUTqFSZZNjCvgFHBdiqVMa40VzNXTAPBfxiun8faIVrF4TEPy8Hfy?=
 =?us-ascii?Q?Kho6pWb+xH1hc1CNZKAuaUN1paOX5eishcYNMlagqsdGPYwcMo2jxDis/w+x?=
 =?us-ascii?Q?6PooAxpnv2AAEkl4voyvDNXl/xdK9IyhuDR3RtpOCSAhyqaNfQC1h6KU46JA?=
 =?us-ascii?Q?1bqWLoyBUAasgIu/fPYHcBQ2l83GDZ8QnU7fZYdRiLphJ5yYKajmxlT24z3M?=
 =?us-ascii?Q?1L1qrYPSgyk1MM9uMUDkf22d1rYnkfWNepd75Grmd3Ji53aeVJ7JdzOlrua+?=
 =?us-ascii?Q?is2eo4PEQRY3sBusm9HRVqWQiexRCKbH4xCB6TaK5eKqy0XGqZk4jQ8v7HG1?=
 =?us-ascii?Q?lYRBbaXZj2OEVgGBIvYhFyaO5XkaLinAfeiKDWvQbcJz7lVXf/OzEIOHosK/?=
 =?us-ascii?Q?bxVBppu80jaLIYixN7f6zMYFhrAHxOsW0h6zUdrhwc5rSfjZuejPCLMpa21X?=
 =?us-ascii?Q?JAcpgA4OQdhd5eM3lkFFzcpw4HUzhoeHEvVIGPyIPFFSFjvs+VCzaNgFAN9r?=
 =?us-ascii?Q?Gscddys1KBYlTST2kdUBVaDEal0xcIG2+RwLcXQamka2Ju7jauCy6IbIS4hN?=
 =?us-ascii?Q?/rzY5/eaHkn+TLmvLZZ09iMJKYJ1QLSQ0sHrG52ljXiB0BoaZQkSdW+CGpbS?=
 =?us-ascii?Q?mjb2OEWbl7HpE04+q+Yxe1nNOBc1Hnjt52yAv58Cz2fwH5wICpswVVxTO0Uq?=
 =?us-ascii?Q?KsjfqESvpcMpnz5X2tuGUCPlrt2qWoyVMrvKPt9riH2lspDkFXOmx6/QBFem?=
 =?us-ascii?Q?PPVvl/KlJoAp02Cy1skcs5HYJ/l66EjwJK3PXArKhrkOaf2P9BWIy5aJukdG?=
 =?us-ascii?Q?Db3+dsMXd3e+woUHPaXIJAba6alPyy1GNJSJMNeCKzXi2XyeDWCkjda5tvT+?=
 =?us-ascii?Q?yA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9dfba1e2-2d53-4f3a-1283-08db9989c66d
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Aug 2023 10:08:42.1630 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vpBpECu74B2aCWJreldY7djsq5jkd9mL2mOHKxjsEuZHxEC4Kk/eehDgRvrIkS5O8ydSeNoNg08uTs1WtGNgfdsHPntwuyXaRXWr/Y+uEiqYu/A++9z43CG7NUgdjOhy
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5770
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691662131; x=1723198131;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+Ljfqtbx5eg61lYYw9L2I6IXg07MxQyy3wspptBHNKI=;
 b=g4in4X8EiJ1MklQEYuBoV+JwEyTJwL1JQ0gkXh/bw5hplAxLrNggUOOs
 xnf8++A2Pl1f3rOuhouL+MmgIOSz1cEuC/W0dqeys5mwLiuHAGSw8IaUR
 BovsmjFPHxe2fUW3Ft48Ptrd4RJI3Ko2Z9xMHgSPouqIebyO/+5llnAQq
 QtnbgNrc8lspPLoa52BVQBdd3NB9woVcfVngeANyV5QCyifV7tlvoe5N2
 ZBW82x/zoED3WctfxGBKb0hmMX8Bb5GdQDYLzTTIcgn/KSGGXlcZUf1NM
 sTgYt3GO0cxKC15Yw/mTDl+C9kBv9AZlu4M2YFX+jEqdZr1Oc7qCpQ1sm
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=g4in4X8E
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 3/4][next] i40e: Replace one-element
 array with flex-array member in struct i40e_section_table
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
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-hardening@vger.kernel.org" <linux-hardening@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Gustavo A. R. Silva
> Sent: Wednesday, August 2, 2023 10:37 AM
> To: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; David S. Miller <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>
> Cc: linux-hardening@vger.kernel.org; netdev@vger.kernel.org; intel-wired-lan@lists.osuosl.org; linux-kernel@vger.kernel.org; Gustavo A. R. Silva <gustavoars@kernel.org>
> Subject: [Intel-wired-lan] [PATCH 3/4][next] i40e: Replace one-element array with flex-array member in struct i40e_section_table
>
> One-element and zero-length arrays are deprecated. So, replace one-element array in struct i40e_section_table with flexible-array member.
>
> This results in no differences in binary output.
>
> Link: https://github.com/KSPP/linux/issues/335
> Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_type.h | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
