Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6456158F519
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Aug 2022 02:10:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2C95540BC2;
	Thu, 11 Aug 2022 00:10:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2C95540BC2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660176628;
	bh=RFWuw4s2np/VVNTsIZkOwTaJh63MBJCoQfGG7IEq33s=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EIXMNNGprcSa6I7ZdOIqUTr9wwu7GaNwt/9qlS8T8tiyT1XXNh6pKvr7+5vMgXgKl
	 e+1CIOaXOwYtXPnSsMnC7c9Qgp4LZddp2r/jRvGYLCWQAGRkbXX4Z+O3/VlEO1vzHg
	 tiHcUgUbbMvCobIkT2S7UJYhK8Ezqwc4TZ/XqT0s0sAuMGB5FZeYN5dKH5Uvl6UvDG
	 RnedGPFrFlp603qfhKFRxGj5Xqp+t9Wpk1nv2zbgEDF7UPf2FgILSqxv92V6yu5uyT
	 D2YJzd8B8S3/VzSK+87JY3k0W5slnHkwTiCCajprbz2T3rDH5kI4yodmR74XjAhI50
	 0CPdzNHUvk4sQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qNpKOkjca7RD; Thu, 11 Aug 2022 00:10:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1699C40BAD;
	Thu, 11 Aug 2022 00:10:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1699C40BAD
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D33F21C1148
 for <intel-wired-lan@osuosl.org>; Thu, 11 Aug 2022 00:10:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AC18F827AF
 for <intel-wired-lan@osuosl.org>; Thu, 11 Aug 2022 00:10:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AC18F827AF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n76b89CVSdW7 for <intel-wired-lan@osuosl.org>;
 Thu, 11 Aug 2022 00:10:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 534C1827A0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 534C1827A0
 for <intel-wired-lan@osuosl.org>; Thu, 11 Aug 2022 00:10:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10435"; a="292014296"
X-IronPort-AV: E=Sophos;i="5.93,228,1654585200"; 
 d="asc'?scan'208";a="292014296"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2022 17:10:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,228,1654585200"; 
 d="asc'?scan'208";a="581446010"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga006.jf.intel.com with ESMTP; 10 Aug 2022 17:10:19 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 10 Aug 2022 17:10:19 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Wed, 10 Aug 2022 17:10:19 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Wed, 10 Aug 2022 17:10:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FotBf/6jpHC/BuimHyougzufQDDEl4vNTttG+8HK9njxbifhAkmbPC55tJXNKeGYefjjowiUOBSDg+LbPYfPPBbQp4jDP/KMC7Yg9TpZrgmz6Een7O2GGH/3eCaPs6ZyOsD030FL8F5ZzVeIdFExUXvrPeyp0DlFE81ThLzmbgS3RjsALSnr9xpT60M5VmwkN7Rvn23BAMXgYuC/vKIiaYiF6HTuGrHRy3hK+1w4gMEsLSgGX9oU5HYkF+UhRNjrdXxCzIRTxiQ1xklU8AVjubmPseEI5r8hrWifXzd96JX9q7MhhJD4qocixrG/sDfu8yCr2zoY1Ik08IzEfP2S0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1dT3FZYnJfYmxTciKm4Mq/z6sXpIgfkPAxlHNE2p93k=;
 b=Wf/pQUyJZOuO8jtO/rIteSJonpkHFMPXSG/aOl4Y2ayfQuwOVYI/2Sy/bhIEuS+XOjHZYxlI0gn0qCG76gF1zRvtjAUjqwCtNMxXMg5SOaG4X+D9DLaZeUz/ktArD1z8Lm7OapfUvpKmgHETRixfMzStzzy8PDMToLH7TTEP5GZwaBF8jVTW+NzN3bsVMXSEH23STckwLJijrlZFJdohUePzu+beXUYUTS9hgk23loPKqg3igzKH+ZxLIQhXrjMJws8PBE6+NIwvS8bw0jqU4xelVwJgBxW2pdD06hWHv0LHpPUBFS0GTSb9siewmG+hG7u+e8QZ8815hQ/cyWpZXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5479.namprd11.prod.outlook.com (2603:10b6:208:317::18)
 by BY5PR11MB4434.namprd11.prod.outlook.com (2603:10b6:a03:1c2::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5525.10; Thu, 11 Aug
 2022 00:10:14 +0000
Received: from BL1PR11MB5479.namprd11.prod.outlook.com
 ([fe80::d4b:972c:839b:4872]) by BL1PR11MB5479.namprd11.prod.outlook.com
 ([fe80::d4b:972c:839b:4872%4]) with mapi id 15.20.5525.010; Thu, 11 Aug 2022
 00:10:14 +0000
From: "Rustad, Mark D" <mark.d.rustad@intel.com>
To: "Venkataramanan, Anirudh" <anirudh.venkataramanan@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2] ice: Allow 100M speeds for
 some devices
Thread-Index: AQHYoregeEVSEr/rS0Cg7bIl+hyMsa2bMl6AgAolUYCAA5BVgA==
Date: Thu, 11 Aug 2022 00:10:14 +0000
Message-ID: <E98612EF-23CD-4FF2-9953-B4CD8815C1E1@intel.com>
References: <20220728192332.159990-1-mikael.barsehyan@intel.com>
 <f55dc242-eaa1-fa58-38d7-1b48f3d00394@molgen.mpg.de>
 <b7b6c6b8-58d3-2aed-7124-44ce585ef783@intel.com>
In-Reply-To: <b7b6c6b8-58d3-2aed-7124-44ce585ef783@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3696.100.31)
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 961b75fe-ef8d-4357-5472-08da7b2ddd53
x-ms-traffictypediagnostic: BY5PR11MB4434:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5VKnB6Pn5s72uwl/+17nu5XWZZOhQ53DDXXJ5czqYm4afONh5YAagfYErYC/XDX/DAdDMsBqaXReYz2dLq6ZKudU9YVHTQ1RiUye59bILKzpU+5CHxtw5rGL8cZdLht4oATckCoJ3DwXWsxQlbAM1YsAjUJuG3m2v0ZqJRP0xgDSxLLPDBguliQEOJOjRee77ipAxZkmT50opPGA+blnntLgFZ6wsI0u3QBdL6yGu3zPslpxoSZALd2hEFimf9bKvEdu2Xiqj9r+eiXvW8nr2/F1r8s4VrALOb0uA8+bC9c9rpmA8VpIfL2gDPpHYllU+6Qb9E1LsPEXlQXS5I9fd3Nrkt3YZ4cwbA/yQcD7s/vxnpgqdg48mGn2r4X1QUqlRSVSwOjcwhvvX4uYIe5q0o3rEY6GdSej1YumijUPfHUBiMtKiyZUjgE14EbJay3z0SkYVb8WL1aApjcnB+Zrp5C3sJ3uKDB/WNZ0gVekU6K7z1ioWeeFKkRq2Hnobkw55qUzAcv9XucydAtTKpBjubPc8FlxM6FN/Hhnh1I/b7/8K3xcoiRbUeUBFCPYSfpHqRGV+zeIzxmgRunEeb3MA8i/tYThd99e1Pzr42xLiMTU7uPxcDZtlN1r94oP2HcGF+E4bJE67AMr/pMIur8Fet4y1doEsYhdQAeMROGUeYbi2NdrXcZfwx/dYl0HlC5t08oFTU4wRmyYrkGljdfgfDDrhcAVZEk0bMGl16lZd2iWp6oobW3Z5Cs34z1tKtgInJ0Sfr2CvVFrJvKLqDv0+d+cvhD+WjMdguS1ZU50SJJYjpp9Fpe8e0DxvMd/vKtqRmdB/3+pLFntXm2vD/Q8Kw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5479.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(396003)(376002)(346002)(39860400002)(366004)(6636002)(66446008)(64756008)(66946007)(5660300002)(66476007)(8676002)(66556008)(4326008)(316002)(91956017)(76116006)(37006003)(8936002)(38100700002)(122000001)(6862004)(33656002)(82960400001)(99936003)(86362001)(2906002)(38070700005)(478600001)(6486002)(6512007)(6506007)(26005)(41300700001)(71200400001)(53546011)(186003)(36756003)(2616005)(45980500001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RTRZNW9nUHp5UW1hQTVTL0FteUQzQjRXOWRQQlkweW9xZE94bncyL2FhM3FJ?=
 =?utf-8?B?c0xJbHdrRmlTamh5c1NYWE1GRDMyOG1WdmtDMGlNMW51QUhvZ2Vtdk9VR2Vi?=
 =?utf-8?B?Rzd1MnM2Z2VXMUVUcjJMeE5JVVlhTStHWm5ZMEtRYldFTHVuMlpYUGdMZ1Nv?=
 =?utf-8?B?QWhoK2lkbjM5MkNubnhtNHFNS2NibC9wZEhwQ0FiVUpoQVRUcFdMVHc5NWp4?=
 =?utf-8?B?QlFYN2ZXOU9OUHZjbjkveW52bzlsSThieUY4ZnZPdjloYXNEQXpUdmtFZ0Nx?=
 =?utf-8?B?dHJQcm1kdHNHMEpSaklZYkxIMmNpaUdBd2pKVlp4NVBNdHJFWkNKT1hzY1RT?=
 =?utf-8?B?MDlhT1pVK1VoclFSenhSalhnQUtCR2h3UklxYnlOUm9WL2xxdEVZdFdOdDRX?=
 =?utf-8?B?SDNPN0M3bTNTM3p3VlVvYjdCT0RVTFhFQW95Uzh3RlMrNTlYN251RVNsRVQ1?=
 =?utf-8?B?M3hQdEZ5MHNVWWx3YldDMk51K3BPVDlrRE5CUWJLTnlQWHNSV2ljbHFPTVM3?=
 =?utf-8?B?cjJKaVo5OFcyVWg1Z2h1ZFIwZmoyV3FFNDdSQ05UQ3pvbFIvL2M2T2pGdER5?=
 =?utf-8?B?VmdlSmpiaC84b1l3Z2Q2aDJaM050QlJ2Nm5PV0FFT3A0V21aNm5XbWJ2WDIr?=
 =?utf-8?B?Tlo3ek1rQi9UOEJEZUVxamJsWWlSd1IvWWJhRS9Da3ZUTzVWM0ZaZng0M0gz?=
 =?utf-8?B?Y2ZIZWI5TlN6MG1zNFB2bW5GbWk5cXovQVQzRmF1blZIdlVwRmtHNzNxWVFx?=
 =?utf-8?B?MGhuL2lzckdkcXVwUTYwM001bHBTV0dPc2xVRlQyOVNpeitIbktMeWN3a0hF?=
 =?utf-8?B?M29zWlVPY250S2tybmpOUURkUmdIMGx3dWhTQkt1Z21jMGFWNzd1SlhEeVVD?=
 =?utf-8?B?djhSSmRNSUhmZTM1N3ZMc3lydUgxZCs3Zmx4QzdYVDZLUHBzWFVFL0puWC91?=
 =?utf-8?B?eEpPWEdXZk1Bc08rQm9RT1YxMm51N1FrOW9qSlJHSlh0Smp5bGk0T0ZTN1Zw?=
 =?utf-8?B?N00rbFAzTzRIWjRNY2hqNHFtbk0wL0N6V1cxRGF1RnE5L3B4d05nMCtOb2pI?=
 =?utf-8?B?NGljOGFPWkJCd2F2RDF3R3M5dUJrdUE1QkVjMm1aU1UyQnhoNUMvdzZ6eVBZ?=
 =?utf-8?B?NVVuOUxIa0JVWUIveUNhTGU3WFhqeWh3T0k0azU0SXlUVG8yMG53b0xRV0dU?=
 =?utf-8?B?VkYvaHc0VlF3N2FPOFVEYTJrSFRNellCa3psRWJqSGdRUWU1SjVJbmtqVEgr?=
 =?utf-8?B?bjJCNnIvOW9VTS9jNEQ5OFJhQTEvSTBnZmNjZ3UyUHpmMUVGMStrQnZlRUpW?=
 =?utf-8?B?d2hjaUlwWmdVY2lPaHlTVWtZd2RhRXNnSG55TTd4Z3hYdmtoVUVIQ1B4Yk5W?=
 =?utf-8?B?Uk5XdXZLZXkzcDB3THA2TGlrQTh6TjZFTUJKeHkvblFqUGJwOExRcjBVSXA3?=
 =?utf-8?B?ZlRUeDJVeWMzVDZyQ3lSUGtvdWtKc2tzcE9XTUd4cmFYTnpxdXBwajlqMkZE?=
 =?utf-8?B?QU0yd25MZXExMkJNNldQWUxMNFFna3VheVNxTWJMWnNTUHd1Y0x0aERyNkdS?=
 =?utf-8?B?ZjN5MWxxaWpYY0N0Rk8zMXIzODRFOTFHc2lJdjhNRk4zVEg2eTlDbjZDYmt0?=
 =?utf-8?B?STFJcXNmdU5JVmJZbmlhdnRFNUNoZWttcjlCaENUdDRNR1lxNGhMK284aExM?=
 =?utf-8?B?WXlLM25sUlIwOTBjQnZWbktKakpmWVRXREhHcHFCdzNna2M1cmxyT2Y1ejNl?=
 =?utf-8?B?aS9kLy85cE84Sk5zYWNRRTBwY2FBampkWWRhajhPNVNYWUNaZ3BNMEFaQWt2?=
 =?utf-8?B?Q3diWUowdUpCYTVPcTRLZ0J6bmZFMWFYOGFuRlQ1a09kSkZCMDlRQTZBT21R?=
 =?utf-8?B?ekt0SnI0V1BQejg1dUc0YnA3NnVtUjRoVmJGZkJPUWFkTVlIL1VreU9MYVRN?=
 =?utf-8?B?RmVWYWttSU5FYVR4MWVzMU0xb1hSNWVUSHA5TWUxUi92RU4vSUp2NDlDZFZa?=
 =?utf-8?B?NUlaNUQvbEY2T3NIMGVBNm5CNUFwYko2R2pja2UxUXhRZHhwTTVZajdzSm5n?=
 =?utf-8?B?V0JGWXhwZVpxN1JZdzloR1FycEx5dm1wYnFzOVRmTjRZc3h6SWdSOENRWEFR?=
 =?utf-8?B?eTlkakhUY0tuc1o1U2M3WHNVZ2Z2cXZyRytQSXBOd2R4ZXIvVlYzRHNpbTVE?=
 =?utf-8?B?YUE9PQ==?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5479.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 961b75fe-ef8d-4357-5472-08da7b2ddd53
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Aug 2022 00:10:14.2848 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FEAcgXB6bcaEKkLH4+wx8kJsNiwGPJOG07s1RbF+oP8b50zZUYHb8rUm1U4RzMH1LHnZaRQvn4Z9grN38hSi9w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4434
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660176620; x=1691712620;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:mime-version;
 bh=9+UuGT22dY0kRdlXQrVot6uXCfvGtFAuawqFFf0y2KQ=;
 b=Ls5YG23NRyuliQ2/eobP4SqgRW+rzn3KzFdFNsJSqvqL9obxJPuJwIfM
 0tf1m3ytteeKtAd0Fq3lZALJ8ljXSP3iL3XMs++nZmnTMVx5kgluiWd1S
 /PWkhS/wvd+If622Du+IvbSF35MSBJLrWtXdlziuqlFb505U3FqXjs/9h
 BZqA2NgatC3/GMPX+aPEKdvKDQy1IjtDuc+IPQiTgYuSvYu6GUQOMfgeN
 lXIB/G1CpgCzYmCW2+0J9FVn05Fq7oT+zPWS8pwGn296Xje5rxRoQZJy7
 7BBZz3KONeOfgNRCCOeb59c+KuCa9UFNtkh8Dxmzlzf3fNwwfwGn+GvpP
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ls5YG23N
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ice: Allow 100M speeds
 for some devices
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
Cc: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Content-Type: multipart/mixed; boundary="===============8305595877357910430=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============8305595877357910430==
Content-Language: en-US
Content-Type: multipart/signed;
	boundary="Apple-Mail=_0281CB17-D70D-452A-819F-EF3F625593BB";
	protocol="application/pgp-signature"; micalg=pgp-sha256

--Apple-Mail=_0281CB17-D70D-452A-819F-EF3F625593BB
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

> On Aug 8, 2022, at 10:44 AM, Anirudh Venkataramanan =
<anirudh.venkataramanan@intel.com> wrote:
>=20
>>> diff --git a/drivers/net/ethernet/intel/ice/ice_common.h =
b/drivers/net/ethernet/intel/ice/ice_common.h
>>> index a74df1d3a002..2734296bdd3b 100644
>>> --- a/drivers/net/ethernet/intel/ice/ice_common.h
>>> +++ b/drivers/net/ethernet/intel/ice/ice_common.h
>>> @@ -205,6 +205,7 @@ ice_aq_set_gpio(struct ice_hw *hw, u16 =
gpio_ctrl_handle, u8 pin_idx, bool value,
>>> int
>>> ice_aq_get_gpio(struct ice_hw *hw, u16 gpio_ctrl_handle, u8 pin_idx,
>>> bool *value, struct ice_sq_cd *cd);
>>> +bool ice_is_100m_speed_supported(struct ice_hw *hw);
>> I=E2=80=99d name it `is_100mbits_supported`.
>=20
> Naming is a bit subjective I suppose. As long as the function name is =
sensible and readable, it's fine.
>=20
> To each their own I suppose. :-)

It really is better to always have the driver prefix on symbols to avoid =
any possible namespace clashes. So, it is best as it was in this case.

--
Mark Rustad (he/him), Ethernet Products Group, Intel Corporation


--Apple-Mail=_0281CB17-D70D-452A-819F-EF3F625593BB
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename="signature.asc"
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - http://gpgtools.org

iQIzBAEBCAAdFiEE6ug8b0Wg+ULmnksNPA7/547j7m4FAmL0SOUACgkQPA7/547j
7m72OxAAvH1cPjK93f0/3QYjNofuRXe4Wli2yD9WuFn0L/Uq2o6bdbCvKAT1fiKt
XtY8Z27nDOUd3oEHB2Bw8qa1vvl7NMrBKkmoS4+R967EdsIUIephoohX0xOX+Pjk
IXzSmQ45JVP0RqCk69/Lzzpo0xDLgxmFEg4T5VBUqD0JqTAxwCiWGm1Uf7a39WXd
Yi5v2epHzd3KxEI2D8Py9exJ5ylyEsye2/7x7CCmAIg8DxCsUFAK4lq3iMReAbOp
FWqfsgomjH9+BW6C5tunlzjK1zxbmK9Qm7x/dqzqqu4DY9gYGyK3EztXel8NFrnu
iLyDtfmc6mEuaicQhMgCa5WXQHoRlFMGDMim1BERL1bn3XLehIJQRVhU3n9wNAs7
507uRY9cJ3i0jFQ/bIPwVGYkPPG2IWkF4PUTiZmDhP+QXOK3YYvgxKOhCFBMWDvw
WGLjWBNruN+MTq5kACIJtbn+p81Epee3Xa/qTy/kcbk0L1wMIC4646I7vP5P6iQe
SlQAu9AwJE+oUU5lGtTGl1YwcRXntjOrhasgPl4Trkzo7sSs0qz5V4jcHLWvSU4m
F/eICW6jcogt2OS4STNxMnUJt+Dgl5qBEw37QHoabLY0oQjq/aFKaQC4/2RE2ajO
KFkIa31+WvIxOcM0H3mjJQaKUPot5CWRJL3LDcKSvev/MgGWKBg=
=2n2k
-----END PGP SIGNATURE-----

--Apple-Mail=_0281CB17-D70D-452A-819F-EF3F625593BB--

--===============8305595877357910430==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============8305595877357910430==--
