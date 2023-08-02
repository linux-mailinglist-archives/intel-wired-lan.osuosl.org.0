Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CD34476C7A6
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Aug 2023 09:57:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 653CC82032;
	Wed,  2 Aug 2023 07:57:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 653CC82032
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690963029;
	bh=CYNqroPB/V5ij6CaOVc7BfaWgBXxtYtrHTA5v6yfVzI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZVWkf0kHDrDwzlT9NHautU5CEHmXNNcxVVuPV4KLSP13u8+o2ZAG7b9wCfphKnLGY
	 MOiXWgbaoJVzeBS3HysE5rGuWtDbkvEcS5/4enNXN0kWt/IYsHslntmfuMgQtlSG6z
	 zloXDoTmz76YRnC5FkLYMDFl3eDG3Elq+78A3pNhok5EIhgu31pkjzPJSHBY1zjA0D
	 VPDiN9S6uam2YLHS6N60FIEuwvOA3dQb0EBjotdoRpgl2uQAEnkzReudPITsc4XgBQ
	 sMTT+UEkG0phH2ZMhLB/x264d7KWGFqeZDIKLnjKHM2iTeq1MKQCtdwBnZaX9PmyvN
	 6uu5n8vjrMMRw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IJtpbpfVoqdc; Wed,  2 Aug 2023 07:57:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E31F882010;
	Wed,  2 Aug 2023 07:57:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E31F882010
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 38BB71BF869
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 07:57:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A250D60B3D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 07:56:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A250D60B3D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zwpc1z24MfRv for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Aug 2023 07:56:46 +0000 (UTC)
Received: from mgamail.intel.com (unknown [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C2DFE60E79
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 07:56:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C2DFE60E79
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="359554408"
X-IronPort-AV: E=Sophos;i="6.01,248,1684825200"; d="scan'208";a="359554408"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2023 00:56:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="722773508"
X-IronPort-AV: E=Sophos;i="6.01,248,1684825200"; d="scan'208";a="722773508"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP; 02 Aug 2023 00:56:46 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 2 Aug 2023 00:56:45 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 2 Aug 2023 00:56:45 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 2 Aug 2023 00:56:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a1KMcebVnthOaioVugDz/GwWhAaGh+zHaMi51zjAktGp4EprQLYTmr5F6rzi0FoFDIPNXt6VK26RJRxHpowvBdcPAnBer74jhu3QARIcA1ZU3Qllme4jntGe53vwtiEIuUlBOLikyf0Y8BI+FcOtkJPcSdP6g+HbrN47NkxOpg5ak58xP6CgRi9jSFpiXXIqbVVYirnyjE8Tl+WkQrZOGxdJhSGCjigIp7SO5ZYPKswGz5My8al1kPXys2nXf8DUlhHnGdY09pM61urWYqok2Jo4+cAHXxKIeG2rX0rLt0+6KVYe/MDCA8gOI04DQBFzn8wdGbbmNGYQ1VQ4mGon5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dAsTMnif0usCFoT6qp0BwGowJD5Kacm7fy8Ekf01ti4=;
 b=RfG4VlRhw5sUxvKYgKge9KvLzO4pjTvOkF15vcfPqKn2FFMpMdV7zrHcEPZAE7ROiprerrzUBGAQOQHmMOz6OmGr6M27NyTy2US1EguGzFgtCqZMIyCfChT5Gwolh6CXJQzLdqYq0oQBLtUqoL0Sc9QAtijSkEjYjweoLXI+A4rv/JMoC7IFlPCYg5f5UZcacov+crZWVp91hnwV1agMiW5nUeXf43448zbGFncfICA7RhUpmLhO/lSqpclwwneXrYL+ZupBVkjuakkXltzxru8H7/uVnrHImcgdyhsPNKFHI6n9WkuqL5BofPryW5XvIZgPytQRQRUMg7bBw3NBIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3723.namprd11.prod.outlook.com (2603:10b6:5:13f::25)
 by PH0PR11MB5657.namprd11.prod.outlook.com (2603:10b6:510:ee::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.45; Wed, 2 Aug
 2023 07:56:37 +0000
Received: from DM6PR11MB3723.namprd11.prod.outlook.com
 ([fe80::1e9e:bb95:66b2:e3f1]) by DM6PR11MB3723.namprd11.prod.outlook.com
 ([fe80::1e9e:bb95:66b2:e3f1%4]) with mapi id 15.20.6631.045; Wed, 2 Aug 2023
 07:56:37 +0000
From: "Guo, Junfeng" <junfeng.guo@intel.com>
To: ivecera <ivecera@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 13/15] ice: support double
 vlan mode configure for parser
Thread-Index: AQHZl3FeyVGJqhbFH0uZFsiCcEqOB6/JD9GAgA3ShPA=
Date: Wed, 2 Aug 2023 07:56:37 +0000
Message-ID: <DM6PR11MB3723333CBC5612DD0A385121E70BA@DM6PR11MB3723.namprd11.prod.outlook.com>
References: <20230605054641.2865142-1-junfeng.guo@intel.com>
 <20230605054641.2865142-14-junfeng.guo@intel.com>
 <123b098f-c398-6156-e861-6cb8f06e87eb@redhat.com>
In-Reply-To: <123b098f-c398-6156-e861-6cb8f06e87eb@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3723:EE_|PH0PR11MB5657:EE_
x-ms-office365-filtering-correlation-id: cf43d6da-a44d-47bb-e870-08db932dffd1
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PCVfILnMKB2VtpcjXGtcpC6gbELL5x6YU6KUSHCFT4HAqfNEvIpG11qZjprce0Z0piHikhRWBy92XWKT6s37OGUCI4vBc1k55Qe/fT6KAMeAwo5f92Vh1iGhMS9dj9X648XXMmw42m+jhg++DgOExlh2PJbuBiGyHnl6yLZqk3nkyM7v7bhyRDwTP4klv4rjPrcPYx+3aM+PmNHxd50bSBz1x6ICWpbc7h1Kq7uwHiYthVMylIOzUOgvutfWFq0Oy4O62GzVWGOu02tKdsMWxXfJYH155ZLIQGX2gG9ZzZh8HlM3J5NvOssHqM8p5XpTEQH9Xnlz9N8GDpzWRfNHqExpYl/r+pS4bCl9r3Wwuc1Hgy584BQw3R9ddFN3mGCTE38L5tRZdhwepS2337Z2Ws+IW4V9ITUa7EU6DjaSFf4h+glTz+LmFMDJdgNalv+IzNg2HRugEU3YmkDobFA/icUxGKJNFH7AXPJ9v2jMu1kRrBq7zCAvLVS/CTy2A8b8JURfW/gaWDulb8oImvaU+kyEWhdu4LyhC2/CZl1zXrm2L6dBOBe+zLd/gj6SfWXlV1Va9B+D/kAD58Rf24MhEENH3H5igfcQFL4HO1nJ/5EjVBpl7P+MzL+yGDIV8sWS
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3723.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(376002)(366004)(136003)(396003)(346002)(451199021)(55016003)(186003)(9686003)(316002)(86362001)(478600001)(122000001)(54906003)(110136005)(38100700002)(76116006)(71200400001)(66946007)(66556008)(66476007)(66446008)(33656002)(64756008)(7696005)(4326008)(82960400001)(6506007)(53546011)(41300700001)(26005)(52536014)(8676002)(5660300002)(8936002)(2906002)(38070700005)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RUgwTTBqaUJjd1UvN1hJZGYra1hJU3h3NkFkd3hRaG11aVlIeHBrSko4NUts?=
 =?utf-8?B?TjVUM1NQRzV0YnlBM05wRUNHVFR3anR0eHRpWXVmaHpTTlExdFZ5L0x5K09E?=
 =?utf-8?B?MDd1TWxTUlhNK09TV2dFMXFCcFFna0dCczNyODRjcmQ1UXNwYVBIUFZCZGgz?=
 =?utf-8?B?NDB2K2l3SWxaSGZCOExZT3JrcWJsc1JWMEM0Q29oc1o5N3NjMlZDazBuQmhw?=
 =?utf-8?B?KzlRdVVSUGxvY1p3ZWM2VTVGVllNNTV2RDJqQ1BVcEZVaXZHbjVnamtUNnd0?=
 =?utf-8?B?TGpmSjNHZXBhMEZVOFNOeWhxVFhVYXp6VUI5TkdTRmxUOGtVRTlTMDRRNnBm?=
 =?utf-8?B?akJ5R3REN044MkIyTndCTTZ0OGh6Y3VqOWxUOHY2YVBSd29jZUpTc2FxT3hm?=
 =?utf-8?B?d2gwWnhBRTFacFlDcmN2RmJ0VUpPaHBuNkNKeHZVTms5OFhMYnd1Zk5Wa0hx?=
 =?utf-8?B?R094bWg4aHorQ0JhaENMUFJWZTBKWTFJNWZQZ2x5VzRlVlBxdHdVbXYyaG1o?=
 =?utf-8?B?L1FUZUlROVJCSkFKWW5ROUpjQ2dvRHpTcFl2cG53WWNlbVZCTG1PVWhyU0VT?=
 =?utf-8?B?SXFNWUpLblk3ZkJVZ2gxdWsxSTV2VDJUVFJHbURRUThIbUZwaEc5aDRYTWlQ?=
 =?utf-8?B?Mys0RW9qeXVFT0NQZ0YzT3k1aHdteThtM0wzd0tYNWZyaytKS2VHczUvSlpP?=
 =?utf-8?B?dmFjbE40RTFOWGFrWGVRVEpBR1JEeCtmZ2tjUDR2ekFRQy90TEpZQm9GS3F6?=
 =?utf-8?B?V1JVK1RzdjVjTUw4K1lyOFMzdVhtbXlNQXpFanoxQ1pIL0JkbE11eHFjZFVw?=
 =?utf-8?B?RG9sOEQxdlN2Sy9uZkFkcjhsMzNzc004TzlwWVhaWmM2VitvRWYxRjJMQ1Ji?=
 =?utf-8?B?RWYzNDBZRkU3a0hVOXVUbmtBaDFvOTVYOHc1VFA0ZW93TDJCUWRGSGF3SlVG?=
 =?utf-8?B?N0pYK3JOdVkyTXlXa0J4U1RsdnJUYjVaZzV6RGh6ckxDelJpWEtQZXF2Snph?=
 =?utf-8?B?cnFiUlpidmdXRjk2VHpHR0tVK3lHNmZGOS9ObFJtT3pNWEJoc000dzY3Rmdx?=
 =?utf-8?B?ckdHV3VYNEQyZHVGc2FzNCswWjBJaUgrRk9aRGhqazdiM3VUNlZ3Nk1jcnNM?=
 =?utf-8?B?MXMwOUtEUGgxaFcxVjNGOS9zcmZ2WE1OeGdKQXdsdWhuSGdsYzVrYzUyS1Ba?=
 =?utf-8?B?akU4ZnNoR1hpMjVMRUorSjZrTCtZY2l0UjFqdG9Ld3VJM2U4Wis3K1FwamZC?=
 =?utf-8?B?SDdmYXF4MVBNdE9kWXI3a215V29XOVlVSDRHeTI1bEV5am9MRSt1SENLOGYw?=
 =?utf-8?B?eTdwV1J3a1IvU1N5YUFCTDhmaEk5SENRd2JBY0krblloQ01aaStMRXAwVVhm?=
 =?utf-8?B?T0JISm5lZ0k4ZkhvREZIQVBKVnlPZElKUVdJWUlQaW1rZmdDbHc0b1Mzdnph?=
 =?utf-8?B?UVRYYk5wZVFVTlBKRllhbHVsL1lZQWhoV1UzMnF3Z1BEdGFOWVBVSkdySHpK?=
 =?utf-8?B?bTJjQTFxYTNZSjJBQlZzbWsyTW9JWEsyajBjVlE3ZjJCRG1zZVk5dDRqSHJM?=
 =?utf-8?B?UWJncXlVYStreHAxYkRYN2xxOFNuZmp0dlJRckNJWjhoK1QxMlliMUVOS1p6?=
 =?utf-8?B?UlJkMUFhR0FocThiU21tWEk3Z0FyclROV1F3TEw2eHk5RWxmalJoV0ZnUXhQ?=
 =?utf-8?B?M2pFQ2lyU01IbnpmcWJ5YnA3dkZaMXR4WjRvYTlLNFkwb1l2S2ltTlk2aytn?=
 =?utf-8?B?QVdoMXk5UXdoUGhtOCt4ck9QbTVpU3lhc05NNEwxelY5L1gyN2YvUFRLazdY?=
 =?utf-8?B?RFA5QmZMNUhhajBXbmUvQjlTU2pkU3h1Z056QjU4bWhRa0ZTc01Wb1dwNkhP?=
 =?utf-8?B?bXhNdXphMXV3Nm9GcStQcFRYQkhFZHMzUHVyRnh3UzVCUW1GVXNsbER3V29j?=
 =?utf-8?B?NWVlSzdZWmJRVVpJeWlObzVGdElrekdPZFA5RW1mWVRWY2NTL2J0RTRaMTZn?=
 =?utf-8?B?ekJlem1hamlrd1pWSGFxN1FLdVdCS25ZKzJiYW5kVFpBNkNsM0RRL3ZMNVZY?=
 =?utf-8?B?cVA2R3dOcG9uM1RzaE5UejkvZ25uL25yQ2VaSHJIamdnRjFtWGJLUUZxenZn?=
 =?utf-8?Q?aZ0jp4C/W7WQxSprq7o9eMCKK?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3723.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cf43d6da-a44d-47bb-e870-08db932dffd1
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2023 07:56:37.7310 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bQMaCZ2ZbvYuU4p3ae+tF2Gi3KbPhe6fHuwxlIaTbIPy61UT10BVL4YKFkT+dB2ZH6y56SNs8mtHC6FhIBQFtg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5657
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690963006; x=1722499006;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dAsTMnif0usCFoT6qp0BwGowJD5Kacm7fy8Ekf01ti4=;
 b=mchFX8sPLyJRjXZKGeCsLo4qkPCKUH30AORjKPSjmoaCRER1Uv4eCbvU
 ckIAC2M1FfwmAmWAwR6kDYjeDacUYKaMt3fZUMofIVF/Gf9LKwS6AYR8m
 Cwpcie9ulDLb0lCrqBrvNzrCds9kyDZcsrNCyDEjOioO41FpQPvcgOw/V
 fFFnEMihLl4PoEuXQ6cT1cQWDaMkxgtFwtMpj0kwfoxEnKW+RWOnFvDeE
 0DWeR9X1qBurCmrWQmUod8kOlr96/ON1RhrQ9St5ykBSTkHsj+w4V3M9r
 o1qzimpdP7yCCxIe1Cr9yO+GdLxz6WjMJUemPG9SLY+ZuDae9zefGhF/J
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mchFX8sP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 13/15] ice: support double
 vlan mode configure for parser
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
Cc: "Zhang, Qi Z" <qi.z.zhang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Ivan Vecera <ivecera@redhat.com>
> Sent: Monday, July 24, 2023 19:10
> To: Guo, Junfeng <junfeng.guo@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Cc: Zhang, Qi Z <qi.z.zhang@intel.com>; mschmidt
> <mschmidt@redhat.com>; poros <poros@redhat.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 13/15] ice: support
> double vlan mode configure for parser
> 
> See inline comments...
> 
> On 05. 06. 23 7:46, Junfeng Guo wrote:
> > Add API ice_parser_dvm_set to support turn on/off parser's
> > double vlan mode.
> >
> > Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
> > ---
> >   drivers/net/ethernet/intel/ice/ice_bst_tcam.c | 28
> ++++++++++++++++++
> >   drivers/net/ethernet/intel/ice/ice_bst_tcam.h |  4 +++
> >   drivers/net/ethernet/intel/ice/ice_parser.c   | 29
> +++++++++++++++++++
> >   drivers/net/ethernet/intel/ice/ice_parser.h   |  1 +
> >   4 files changed, 62 insertions(+)
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice_bst_tcam.c
> b/drivers/net/ethernet/intel/ice/ice_bst_tcam.c
> > index bd3ebc8a5f5b..e29c7d6c554b 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_bst_tcam.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_bst_tcam.c
> > @@ -267,3 +267,31 @@ ice_bst_tcam_match(struct
> ice_bst_tcam_item *tcam_table, u8 *pat)
> >
> >   	return NULL;
> >   }
> > +
> > +static bool _start_with(const char *prefix, const char *string)
> > +{
> > +	int len1 = strlen(prefix);
> > +	int len2 = strlen(string);
> > +
> > +	if (len2 < len1)
> > +		return false;
> > +
> > +	return !memcmp(prefix, string, len1);
> > +}
> 
> Isn't there any existing implementation for this general purpose function?
> You can use strstarts() function instead of your own implementation.

Sure, will update in the coming version! Thanks for the knowledge!

> 
> > +
> > +struct ice_bst_tcam_item *
> > +ice_bst_tcam_search(struct ice_bst_tcam_item *tcam_table,
> > +		    struct ice_lbl_item *lbl_table,
> > +		    const char *prefix, u16 *start)
> > +{
> > +	u16 i = *start;
> > +
> > +	for (; i < ICE_BST_TCAM_TABLE_SIZE; i++) {
> > +		if (_start_with(prefix, lbl_table[i].label)) {
> > +			*start = i;
> > +			return &tcam_table[lbl_table[i].idx];
> > +		}
> > +	}
> > +
> > +	return NULL;
> > +}
> > diff --git a/drivers/net/ethernet/intel/ice/ice_bst_tcam.h
> b/drivers/net/ethernet/intel/ice/ice_bst_tcam.h
> > index 7b69f3b88da5..873ff42fcdb7 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_bst_tcam.h
> > +++ b/drivers/net/ethernet/intel/ice/ice_bst_tcam.h
> > @@ -27,4 +27,8 @@ struct ice_lbl_item *ice_bst_lbl_table_get(struct
> ice_hw *hw);
> >
> >   struct ice_bst_tcam_item *
> >   ice_bst_tcam_match(struct ice_bst_tcam_item *tcam_table, u8 *pat);
> > +struct ice_bst_tcam_item *
> > +ice_bst_tcam_search(struct ice_bst_tcam_item *tcam_table,
> > +		    struct ice_lbl_item *lbl_table,
> > +		    const char *prefix, u16 *start);
> >   #endif /*_ICE_BST_TCAM_H_ */
> > diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c
> b/drivers/net/ethernet/intel/ice/ice_parser.c
> > index eddbc80d71fa..33b649a4644a 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_parser.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_parser.c
> > @@ -343,3 +343,32 @@ void ice_parser_result_dump(struct ice_hw
> *hw, struct ice_parser_result *rslt)
> >   	dev_info(ice_hw_to_dev(hw), "flags_fd = 0x%04x\n", rslt-
> >flags_fd);
> >   	dev_info(ice_hw_to_dev(hw), "flags_rss = 0x%04x\n", rslt-
> >flags_rss);
> >   }
> > +
> > +static void _bst_vm_set(struct ice_parser *psr, const char *prefix, bool
> on)
> > +{
> > +	u16 i = 0;
> > +
> > +	while (true) {
> > +		struct ice_bst_tcam_item *item;
> > +
> > +		item = ice_bst_tcam_search(psr->bst_tcam_table,
> > +					   psr->bst_lbl_table,
> > +					   prefix, &i);
> > +		if (!item)
> > +			break;
> > +		item->key[0] = (u8)(on ? 0xff : 0xfe);
> > +		item->key_inv[0] = (u8)(on ? 0xff : 0xfe);
> > +		i++;
> > +	}
> > +}
> > +
> > +/**
> > + * ice_parser_dvm_set - configure double vlan mode for parser
> > + * @psr: pointer to a parser instance
> > + * @on: true to turn on; false to turn off
> > + */
> > +void ice_parser_dvm_set(struct ice_parser *psr, bool on)
> > +{
> > +	_bst_vm_set(psr, "BOOST_MAC_VLAN_DVM", on);
> > +	_bst_vm_set(psr, "BOOST_MAC_VLAN_SVM", !on);
> > +}
> > diff --git a/drivers/net/ethernet/intel/ice/ice_parser.h
> b/drivers/net/ethernet/intel/ice/ice_parser.h
> > index d4de0796a292..02ea2ef5fc91 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_parser.h
> > +++ b/drivers/net/ethernet/intel/ice/ice_parser.h
> > @@ -56,6 +56,7 @@ struct ice_parser {
> >
> >   int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr);
> >   void ice_parser_destroy(struct ice_parser *psr);
> > +void ice_parser_dvm_set(struct ice_parser *psr, bool on);
> >
> >   struct ice_parser_proto_off {
> >   	u8 proto_id; /* hardware protocol ID */

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
