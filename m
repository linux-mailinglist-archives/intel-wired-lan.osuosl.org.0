Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AB3385995F1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Aug 2022 09:22:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1EDE841CA7;
	Fri, 19 Aug 2022 07:22:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1EDE841CA7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660893731;
	bh=l9gK+aZT5XyCl7C6Wd1ouzQbKSEkA156eUOEprRuQi4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qjYhzxzACQUt18QzHdireGDysPAXzyo1qb16EKrGyOwBYAlHwjODH57AzvXL426j7
	 8X1IzYusTk/z7zdESJA9Qieh60WlB6JktlQHnMtwcJPNkQd5t+7LLjZuLQy9U6xEHU
	 V7wI7lPyjnbxQR8RjVYbbSSjaK4NADLL6NqSH76u3IOwdHMC+c18Nl5ONvptKLURC1
	 XYIzX/Y1SX7UNy/8U6b9WRYMqjPq+QZueh5q58pkLDpqJo/pl3nEfSZndfOBTQCDCO
	 o367l3tpZzoxlVNloE6HLlrxktTGEVUTTDDdGJIKbazb9QAf77x+cuKUT0dKHJ+5SG
	 m3Jugz4NOjDaA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1WKnztwjyxfK; Fri, 19 Aug 2022 07:22:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8666641B9B;
	Fri, 19 Aug 2022 07:22:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8666641B9B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 707F41BF319
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Aug 2022 07:22:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 489F760615
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Aug 2022 07:22:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 489F760615
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I4_KcHpiASrF for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Aug 2022 07:22:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CF8D460597
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CF8D460597
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Aug 2022 07:22:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10443"; a="294231698"
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="294231698"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 00:21:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="853689647"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga006.fm.intel.com with ESMTP; 19 Aug 2022 00:21:55 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 19 Aug 2022 00:21:55 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Fri, 19 Aug 2022 00:21:54 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Fri, 19 Aug 2022 00:21:54 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Fri, 19 Aug 2022 00:21:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WYp9FYMf7XdR/1HhyXqILqNPmHY+LqDYpHztcz7RIpp4lkvaxxHo9V65eLgS9AI4ZkunfRjGHCGUVXlZ2a9NmbLk+WAVxV2ofei7FJXLdCeIUULSCDdz64IvM0fv9dctRB8laXGeHfxXLgSXqNekPoWptfKGgSIboUy3fF0/pGgkECxdOvlq4LoOLsNqRroEwg+bi6OVjUAe8w/kYrnNDDPcLrINWnhgbaxhjMAmaAuTnfXeiYYqrh8KtL9rSAc+1CGyWoRIxeqriohdPMcIHpQkKjb+S80vrqeaB6knVDiXZKSe2lZpeiaFKVh5ggr/VdmpuXHpqfSkvAHORSratQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B+eejZplzHlap3MNRfBDqsUyZYgkATBlptJSrVwB3Nk=;
 b=hOZDJ/yIW9ADfIxrwc7HK980jB6RiGzGemLhEcgcvriDaQK5Zt+k+5Obxjm7oFypSpiH12pfndlONyIp/+XNsNx0bHwTUm5oW8hM7DbQntUHe10za4GXGzoIAYKeliNEd/1hjdsu2pBvY5IZhPKV2OoTTYFH4nijcaXxcVJXuGXdBn1Dmy4n2OTUsHkd+vKBo8JVNVEqbp+zt9825AdgshIUkTj5j4Kb3ihIf4m/eC4TjAAckiIpM+d1+JYzIoooi8mOTedVZOT9KxI6HYZqHMKg5KFn4KEFTPem2cbMDhxIO3ygrBd7gbaQ8aEVQ2geidwePH3BxNENh6kAmsFZGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5768.namprd11.prod.outlook.com (2603:10b6:510:131::21)
 by BN6PR11MB1315.namprd11.prod.outlook.com (2603:10b6:404:49::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5525.10; Fri, 19 Aug
 2022 07:21:48 +0000
Received: from PH7PR11MB5768.namprd11.prod.outlook.com
 ([fe80::646b:20aa:f396:a2b]) by PH7PR11MB5768.namprd11.prod.outlook.com
 ([fe80::646b:20aa:f396:a2b%5]) with mapi id 15.20.5546.016; Fri, 19 Aug 2022
 07:21:48 +0000
From: "Dziedziuch, SylwesterX" <sylwesterx.dziedziuch@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Palczewski, Mateusz"
 <mateusz.palczewski@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] ice: Fix inventory failed error
 during flash update
Thread-Index: AQHYrXgMAyQmTOeQN0mymROrYy+c1a21MIgAgACrfjA=
Date: Fri, 19 Aug 2022 07:21:47 +0000
Message-ID: <PH7PR11MB5768669AC890675FE5E87034E66C9@PH7PR11MB5768.namprd11.prod.outlook.com>
References: <20220811114552.1577550-1-mateusz.palczewski@intel.com>
 <99098383-28c1-9999-54f2-9cb12cf06373@intel.com>
In-Reply-To: <99098383-28c1-9999-54f2-9cb12cf06373@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 513a8b5f-e8a8-4a29-d531-08da81b37a7b
x-ms-traffictypediagnostic: BN6PR11MB1315:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nkdAItVms/0cYmXZQJRWiwblHddkNhKrxLf7f/KrwrhDgpbYeSoxF6gB52kEpHaTWMQoHj1EizbcccLFRGYKygyFO1h9SZQt3so8Pmd7EpF/9G9wtAHASVh6VbP+Hq/rPA+FluKACdAlRzewBBY/UWU4rCoDATrVnODoz4xAICG3a9Co1BkZ1YCK3HHtYaeG3aPgAHugoBuekNRCz28R6rEREzNcQutrtuHULphZtqSqVcyo3FXkfLXas4Vbab3X2plZ1n7Ds3kR891GJsfRhLThc4DjpURQA6nnxkF+RJ4WyAdCFZssjeHStxnMEIdsG8HcA4U4s3Bp711rBwIB3wNP7HmFsLNCLXYIGylF5oQjHBkKpyHk2ysfLhyhDnCUA6GsMEIekUh90SjJ4EwZG68Cje35IwTZxbV8ch7C1W1xAqJ3P9k5hAu8wdA1jJVjor1UY5H5Mh6GWQupYCR/qssm9/8Dd7iuyk30xKb1x3RLMG462QGVTyNO6LyJev/fmQb9udpiYfwxuxXVQwUX309J64E+5SArcKQbt/zBA29FA1VEXcBoQmHX7wYm+CVOc43VtsLbSCfPtZIFq8kHGLVh8APnIqoZZSLNQO/txBD0tf9WT4LmZSrHkmYjxyfO96+k7m5W5Be5Lxz4i7OvVFqnW8hba8M1cHHEyI/aWy2Ti3qb+CoOowqNLI88/71B8+tgiCpBPYbsRt6Zu7QwwyqTgNg26BQqZZ/a4jlwJclTBQbKErK3zQMYwYDCms66in0Z0610uqa+h8CrTbILiwfmQKjSABxYsoNAPwBAhh8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5768.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(39860400002)(366004)(376002)(136003)(346002)(76116006)(38070700005)(7696005)(66556008)(66446008)(53546011)(186003)(9686003)(86362001)(55016003)(64756008)(2906002)(66946007)(15650500001)(26005)(6506007)(41300700001)(122000001)(38100700002)(316002)(82960400001)(8676002)(966005)(83380400001)(33656002)(6636002)(8936002)(52536014)(66476007)(5660300002)(478600001)(110136005)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?akl6alNRU3NCaCtPbi9VeEJ3VHVnM2dHelIraldQV0lPK3M4ejNzS2dGRkxh?=
 =?utf-8?B?WCtsdnk0NTJRTkQ0cnQ4SjhmNjRNTDIweVBGK2VVRVRVQkY2MGpoWityQzZs?=
 =?utf-8?B?czk1cXlHd0xGN1IvbXZScDZhQnAwd1BHRk5lcEl4bThubVZJVW92NjlIeTBC?=
 =?utf-8?B?ZW0zUTNPVURuVmg0QzNuWU9tYVM5V0llUk1zeno1Q21BelhnQVRWNWR1MGxm?=
 =?utf-8?B?d3BGZTBNeGV0cGdiQXVzRU9IeXpLNXJGdW9KRWxYN0xueW9Ka0oxdzJqUC9k?=
 =?utf-8?B?OU1YMS9GcUZaSFJrN1g5aFlVNzB2ZEJwc0xxNHRxL25EL0FjVUdBYTJoYVhk?=
 =?utf-8?B?YUlGTHVIRW0xQXZIM2FhMm9QVG9QRktpVFd2K2VwRUxpZ1pKK05wbVVKcTND?=
 =?utf-8?B?NnFwenlreWtXMExQWkpWY2x1WEZLenFXUnNzRGNuTnRBcWdKclZvM2FvN2tE?=
 =?utf-8?B?NkFtaWpHbTZKNGZ6WGpQVFMxZ0o4YXZBa2RrdFlrejFIdWJLdU9vUjRSZTha?=
 =?utf-8?B?dERxNUlZK2MrYzdQeW1INzFJVTRyZlQ5b0xGL0lMbTd4TmJ0aUQ5L0Y0czdh?=
 =?utf-8?B?Um1JVDkwM3ViRDlNTUFVQkhNU1hncnowZzkxcXVhMWFtOEM2OVNQZGpieGVK?=
 =?utf-8?B?bENpdFA0UWpteExZM3V2L01hZnRLQ3c5aWxRTkU4M1AybGQ3TWFUalRzbVlB?=
 =?utf-8?B?WXcyZE9pN1ltZy9ySE0zWEpldW5WS0RvbUxiT1dYQjJOQ3FXekpJbjdGNXN5?=
 =?utf-8?B?M1JIQXRQNjZEYzRhMEs2NjVYTmh1ZTlnWFJudXBSTy9obDI0VngxSEJaRGRV?=
 =?utf-8?B?OVY4MWY4dDhLMTRuS0htRFNFbi9aOExGTzNYa25tc2FGWXdVOE5NU1pFZzNP?=
 =?utf-8?B?Q3NQeHhyTkx6NXkzMk90Q0pvbEhEd0lKSmtRek9aYW1TTlQ0SW4vRUtOYlJI?=
 =?utf-8?B?UjdIR01qMXBtbmF6eWVDRk1pQVRLckNzQk5XRmRwV1lVajdoTEpHbWpWQUFy?=
 =?utf-8?B?TW83QlU0TnZnblV2S1ZaVkc0WFRWSElxbDhZUmhTaWw0NVJvZzArZUZ1Z3Zp?=
 =?utf-8?B?blJsSW9jcHoydUJUZFlFSW5MOXRhQS9odFQ0SldEQ1F4OGVRbGMvN2xRdG5h?=
 =?utf-8?B?V09lQzA4Tk5QaXZkeFhvN1p4aFFOSnErY0ZRNjE2TE1GZmUzTW9tRmpBK2p1?=
 =?utf-8?B?VmJ5ZFBkUjhZQWxkTEZ5RVZadURQaFVWMVgvaWJ4WDBFVUJsSit2NGxaTEUy?=
 =?utf-8?B?eERrVFF4T1Z1UUdMTWhkWGNLNll0UnVPZit0Z3RNTTh2NFBMVUVQZ2s5em9D?=
 =?utf-8?B?NlZ5ZkxTcW1JSlZnZUpYTDJHcVhWbGNrWFB1NmFBUDdtV0pUd2loUFJKaWda?=
 =?utf-8?B?aURpWXloSHp0OVNicjdSRkJlSFFJTE9PYnE3amlmUmsrdEFCU3AyS3EwZVRM?=
 =?utf-8?B?S20zRVJIdW9DMzFob0hNaW9rc21YakxWc3ZpdmhWVE8rclZmQndUYW1JeXFq?=
 =?utf-8?B?RXJzM0NXa05PLzJZWkh4NmdpT1VmTDVXQ0VSRTZRaFdqOHpUem5lUFNaS0d5?=
 =?utf-8?B?b3V6dWtJaVJTOTNDNFhHUkQzcWZ3bno0WWxPQlRzOGg1Ri81blVZM2RCWk5m?=
 =?utf-8?B?UjgrS1QxTjlTQVliMDJETkFFZlQvamk2L2JpR09EbFJGZkIrVGpkczdhVy9Y?=
 =?utf-8?B?VFJyaC9abHpzc1kwOWVNZGttc0pGUzFHcnVQTHJGalpzQ2lwdVJ2T0tMeHcv?=
 =?utf-8?B?UkpmQUU1MkhOdWpCMjJLUnRqbmhoVkwyYklhYm4xUzRQWHhJdytiN2VPN0dN?=
 =?utf-8?B?QnE0WDJ1NEJzOUt0UlZoNWNndzZyV0hJQU80SlpvcnpUaHkzVzVkWWtMS0c2?=
 =?utf-8?B?VU1lWEdJcGJ3emlsOTRTWW13MU9YamRhUDRhZGNKSmgrZ0hnT1pKL3F3Ull0?=
 =?utf-8?B?bWZVbGhxQVd1bG8wa3Z3T1QvRnMxZk1URTlZRWRoamtLaDY2em5WYzFIaHNQ?=
 =?utf-8?B?ODdaem40QWRFMjdqQTZoNjdBMVJPYVFoRFhZNU5aNmZYcG1aa2NJS3h2cm9h?=
 =?utf-8?B?UzBIblpXVFlnWXM0dE0yRDk3Mk84RGQ4YjNXUGhMTmlkNElwV284NjJYbW94?=
 =?utf-8?B?QjZiZVFQb0pKdXZVWnV3Vnlld2xEdjNPRTZjR1libG9lMm5pUUZuTDd2ejlM?=
 =?utf-8?B?SUE9PQ==?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5768.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 513a8b5f-e8a8-4a29-d531-08da81b37a7b
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Aug 2022 07:21:47.9787 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cTGkSNFW4r292i1T4FC6U2Y8VTH3kdt++yxEods9SrDkrDNgcr5Rkzzsb3Gu44fRM17EfvZ/dbwquyBuyh4XfuRACNR7a/0F4rPOYS/QPNk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1315
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660893722; x=1692429722;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=B+eejZplzHlap3MNRfBDqsUyZYgkATBlptJSrVwB3Nk=;
 b=h41IKbUjv/uJaeXPEJ3AcJVYScgZZHJI1V8P7Tas9luuKo7h+3Kv+TpA
 5+90Qp0ooYXdaHoAW4iU/flsf3sRjgWv1lC2DoTIWEUChu29UvlLQOoSh
 g4zYkeNwe4uzJKRJIu/z/AdpFkQxR92kVoEEsWyS7dDh9ZR3OthwDkIFM
 VyUiiJ24vEeLXeP6x+j6nJnzzsTFEyNIxn/F6wxX+4S+Haosrubj0rA+H
 a4UiwJIO63ODORAeYv4RUyfAlADVmz8WtwkGEivCP0vFribMNmT75HXW2
 P+92fOhXfjC9CAaw+JYNuEAEVgkxciAN8tth5VlQRye3NXxhS436NUC6w
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=h41IKbUj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: Fix inventory failed
 error during flash update
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> On 8/11/2022 4:45 AM, Mateusz Palczewski wrote:
> > From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> >
> > After updating flash image on E810 card with NVM update tool there was
> > an error: The inventory process failed.
> >
> > This was reported at bugzilla thread #2114483 and caused by the tool
> > trying to read devlink parameters fw.mgmt.minsrev and fw.undi.minsrev
> > but those parameters were not registered by the driver.
> 
> Pointing to an issue when using with our userspace tool is not a good
> justification of why this should be accepted into the kernel.
> 
> > The ice NVM flash has a security revision field for the main NVM bank
> > and the Option ROM bank. In addition to the revision within the
> > module, the device also has a minimum security revision TLV area. This
> > minimum security revision field indicates the minimum value that will
> > be accepted for the associated security revision when loading the NVM
> bank.
> >
> > These parameters are permanent (i.e. stored in flash), and are used to
> > indicate the minimum security revision of the associated NVM bank. If
> > the image in the bank has a lower security revision, then the flash
> > loader will not continue loading that flash bank.
> >
> > Fix this by adding two new devlink parameters fw.mgmt.minsrev and
> > fw.undi.minsrev and function to read they respective values.
> >
> > This idea was proposed before with both write and read funcionality
> > but was rejected by community. This patch focuses on read only.
> 
> How is this different/addresses the issues that caused it to be rejected
> initially? What makes it acceptable now?

One of the concerns in the previous review was that we give the ability to change those values manually which might cause security issues. So in this change we are not allowing to modify those values only to read them for the update process to finish without errors.

> 
> > Fixes: 1adf7ead8204 ("ice: enable initial devlink support")
> 
> #1 this is too big for net. #2 This is not fixing a bug for a tool that the
> community is concerned about.

This issue is actually reported by Red Hat and is fixing the Red Hat Bugzilla mentioned in the commit message.

> 
> > Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> > Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> > Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> > Link:
> > https://lore.kernel.org/netdev/20210129004332.3004826-5-anthony.l.nguy
> > en@intel.com/
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
