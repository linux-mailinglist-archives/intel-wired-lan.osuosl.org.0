Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D492F722F68
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jun 2023 21:13:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 22AAA40263;
	Mon,  5 Jun 2023 19:13:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 22AAA40263
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685992394;
	bh=MrUPDapyV3TXU/SnFP3Lt6FAJq/p7o6d25D0Ec2g7Xo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IjxdhXpSd8vLVX0S0Hy+qMvfRq+6pHsqcfx+g+WUs/wl4vKj6KWgpEyb0Mr75P2Rd
	 acgdsMRGrwyXqPTRm3zS/XpigDA7zV0rk0uDQbuwKac8nt8t4ENdZuAyQ7oIDTmr/+
	 dDZN2swHz2i2DbM2E4tEyOQ6LUAdtE2cmJl0yAk7cyL7PGWTJh9U0IMKKRruZj3145
	 xu3TibqndH+hLT4/kArOEG8bRIU00cud+kzEPQ6RsIKivDxLXRMaKuBCxkC5STKgx8
	 i2InT2G2BT3ZeKKtFwIiLN66QW1mzmlM50ZFBTSvWW484oKIzTOx4uCsb3wRnOBlVc
	 JKdgInmnHY3xg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8RqXM7WKtR79; Mon,  5 Jun 2023 19:13:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6A1BD414CC;
	Mon,  5 Jun 2023 19:13:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6A1BD414CC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E9D801BF400
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 19:13:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B67EF60B89
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 19:13:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B67EF60B89
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AmwX2__A4guG for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jun 2023 19:13:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 572A560669
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 572A560669
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 19:13:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="355310035"
X-IronPort-AV: E=Sophos;i="6.00,218,1681196400"; d="scan'208";a="355310035"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 12:13:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="778674969"
X-IronPort-AV: E=Sophos;i="6.00,218,1681196400"; d="scan'208";a="778674969"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP; 05 Jun 2023 12:13:02 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 5 Jun 2023 12:13:01 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 5 Jun 2023 12:13:01 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 5 Jun 2023 12:13:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NtTUsuqOKLG3eqbDsKi1JnlbYarADBoeqsBb3aPqR5l4cZ7rzy9an25rOnIFff0oouRMIG9HUZzuCMGnfEk8wwp0XxsGOtFg2cyr+QCotCS+SiTPrIypt3L2pzjOpx6R7TvUa8iMzh18z/qEyzzMiTL0uydndl1KnU/ri2NZdeKRt5aNlWtea9aikwTFBOuQTIfyd7ymuBhnkPbzEgJ1yE3y8GAnUD1Yh/R64dcm+BvHrOFeM3omJXI0D83akZHQj1CppOlbyk4ArycTdnujjRiQp/HjtQxCKlN2Ct6Tznc7ndbRyFgr14NTNAarvq5Ym6srA75JTnIsusMS6Oq3tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/n29Z0gGnZGYFt20iRIO38S3s/hYEaJeFWG7yv6cvgo=;
 b=e9tNul/YUm1rBLx5J4k8jr+IjnbSXF58K85jhD0AnIAsu0NtGhFSGOURVU5Pb6gcYYMIPBwcaYpX0eojJEk1JJB+uE1iqoJ83hI9ayCNy5XHTNS4Qjap5gC2MlyVNITOwq667hWWKVpx4fSYDZk+PE0+LQ5pbwGJr1lQwTqw2p2iDLMxseQ0ONWMIUtHQDzQsCclBqZyVnnjbvI+ipCwgdnG653B8lV0hLgfllghFBi2bJi0l5i9FLsWNre7eUC7IIT3M3UZmFfqMy5H2pg7bGh8SXA37hb1KLS7etfMfEPuXJVosRJInqCRPx+vA6xXRgQkRPrcP9umeKa8pW6XRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW5PR11MB5811.namprd11.prod.outlook.com (2603:10b6:303:198::18)
 by CY8PR11MB7874.namprd11.prod.outlook.com (2603:10b6:930:7c::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.33; Mon, 5 Jun
 2023 19:12:59 +0000
Received: from MW5PR11MB5811.namprd11.prod.outlook.com
 ([fe80::5c8b:6d4d:5e21:f00f]) by MW5PR11MB5811.namprd11.prod.outlook.com
 ([fe80::5c8b:6d4d:5e21:f00f%6]) with mapi id 15.20.6455.027; Mon, 5 Jun 2023
 19:12:59 +0000
From: "Ertman, David M" <david.m.ertman@intel.com>
To: "Ertman, David M" <david.m.ertman@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH net v2 00/10] Implement support for SRIOV + LAG
Thread-Index: AQHZl9qVd//+0FA2AUud6Xcrungkoq98k1+g
Date: Mon, 5 Jun 2023 19:12:59 +0000
Message-ID: <MW5PR11MB5811118836C780A1B0B4F9D6DD4DA@MW5PR11MB5811.namprd11.prod.outlook.com>
References: <20230605182258.557933-1-david.m.ertman@intel.com>
In-Reply-To: <20230605182258.557933-1-david.m.ertman@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW5PR11MB5811:EE_|CY8PR11MB7874:EE_
x-ms-office365-filtering-correlation-id: 515f6e34-9cb5-43d9-3a53-08db65f8e0ae
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EMxg7INHxY0WehCHV3tpLF8kcC3JB2GqsstvD2ljGgFI0WqC/vL+Zr+406efV5w1VN/smwYXAX3vab92L0BFKHGkdFwYNX38t89FA8VibBMsR0IRV6TJ7bov2XidRA70VDoxsytMOMiBMUSsbe5XMHVpxDDLXCbYodA/cMfdsem0ezqjeX9jHSEFtHkeHyd0Ieu4Dt3RRDdp07WHN9JtXba68mMsOBlQDjDme00rMR1OWa8sXwynn9ijiVD9zbBVELnmx2FkyZfEWWLC0iFOaWrvTDc0UFiWAhsbpKT6nXMF/DEVRqZhkINi+B9nVshkrgFulKjyOXWftjtOOQz+1U0F5V41THlW7tIjs8gH3b/BwEi+70M4NpK5Jkk+WOLXG9zz65cUkdreksB1BhBXirWXh7dEeUDsz4af1IV2rTuHbFV6n9HxyAFC3ipRGrDTa0dezs1Dqzto9RiEszvcvcFe1tLsi1FjX6/1JQKd8Gv8Ir7d03IDh6HJ/ChbqPY2W8wGaBw+FuyvVMECiW3opX67yKbAMgG+FDDyTkyGQ1pXMZrFXliDs7x3bzSnmFeV2sgKzL9sj7VrDkV0L+y5D31qf/coamzOCvzerimmByckEvQHWYlLvC93TPt6LOvA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR11MB5811.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(346002)(376002)(39860400002)(366004)(396003)(451199021)(110136005)(2906002)(38070700005)(71200400001)(33656002)(478600001)(86362001)(52536014)(38100700002)(41300700001)(8936002)(8676002)(5660300002)(82960400001)(55016003)(316002)(4326008)(66556008)(122000001)(76116006)(64756008)(66476007)(66946007)(83380400001)(6506007)(66446008)(53546011)(9686003)(26005)(186003)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QVY0VDFZVTJsZEdRb3UvbU1KSVY0bmcrRzNWZWRDWnU4T3Ivclc5VTRScW5o?=
 =?utf-8?B?N2lRM1ljV09oRENVN3llTzFpcUVDeGg1T3F4aHdrQTZrQnlqVnJ4cXpSeUdL?=
 =?utf-8?B?cVNhemVzQXpTeDdzT0t4VTdIV3FnejRuOENqdmM5UnA0WmROZ0pqOGo4aEVM?=
 =?utf-8?B?aE9VNHV1ZFI0eDJZYnFPMk5JMzV3QStwOHhWU1lzRXZZQmVmcDgyVWp0WUta?=
 =?utf-8?B?UWsyME00a1dmcW13TnU0dm8vb1FmL2o5NDh0ZmlHNVk0RlA4SGN5T2NJVjFq?=
 =?utf-8?B?U2c3NnludGhJRUtsVTB6NStEcnZZTVd0ck5FSXl1aVp4ZFRXbVp3d2ZSV25R?=
 =?utf-8?B?VUZ6MW8xVDE4YmE3UXN3K1VvZmJEOW51eUYzdjB1all3K0V6MlZoSVcvczlV?=
 =?utf-8?B?M0tPVEYzWlorY0ZzSkQvWnkwVnd0Uy9obHIyd0ltYktEVDhsUFV3bS9kMU1Q?=
 =?utf-8?B?UnoxWE9FWUl3eUpyNlVReTgrbmdpNU5OTUxEYWowU1AyTE9vaG5QY2N4Q0tu?=
 =?utf-8?B?RHdzQ01hb3NWUlNqdDh2ZnoxTEU0bGE3VVFoZHkweXZvZVAwY3dyS1ZvdnVD?=
 =?utf-8?B?THpQcmtDUlNJYU9PZGhDK3hjdlFxWm9Ta1FYVmRnNXBOWnNKbTlweHEzb25U?=
 =?utf-8?B?TFBHckU3dlU4NVhzRlR5WHJlV1IzVzVEbVp0ckJiV1lOL2EyeXFmOXdFdEdx?=
 =?utf-8?B?eXc5aFcwWHF1QytKMU44TnZWOTZybkdJYjZNemY1UWVsMmZlSHJGbE5hSFlZ?=
 =?utf-8?B?SnZHZHFqU1J3c2VKRnlZbUthWFBsQ1JodmNoMnY5MC93YytDT1RSc2ZwL2Z6?=
 =?utf-8?B?K3Z4eG00bnQyMHRNT3JPdEpReE1zbHhkVmlTdXhjU3lMc25vTzVOdU5tQ3p1?=
 =?utf-8?B?WDlJMnZkUm4vZXZoVFFXRVJVdytiUDk5ZHdMV0NNVDU5QTI5aWNwQUJHR3ky?=
 =?utf-8?B?SnpSRUl0dDFqSEJidS8za3FtZ3Q1YW1WWXlHNlBSSDV2Y3EwQkJHbzh0YmhX?=
 =?utf-8?B?L3RrQjRFZktBZC9NRS9RSERhWEFwaU5aNnpnVTZJUUVuUGtLVFZiU2lMRUxm?=
 =?utf-8?B?L2RmOGNrQ2J5eG4wMjVHOG5CTncvVW91SmNEVTYzZXZXdmlYTXQ1aTVCZ2ZV?=
 =?utf-8?B?NlY0aXJ1d3g2dWtVNXl3V2xweEQzeUZIenUzL1diMURjZC8zNzFSSFlhUVdL?=
 =?utf-8?B?OHRTd3QzYXlBWU53TTFqLzdyRkQ0dHJHZTRTTkNTZnQxdmpnbkJHTktBcXNw?=
 =?utf-8?B?TnB5cEVEdXZTVjlCN2V1ZHVmYVlJT280RnNPelVzZEE4UDRsTWVseXZqL09n?=
 =?utf-8?B?Y3U3UmI2NEZLbzY5UHJxQmZiMG1xM0lmb1htcFpWQ3g1RmJlMmxuRUZSOStu?=
 =?utf-8?B?SU50cG5RWUhnWWRqczNBbzk1ZE9WZVF5WWt3Q2Q4dkJ3UkRERnlDaWU5dmZ3?=
 =?utf-8?B?T1djbkJhSXpPOWZzWHpKVHZISUtRREsxSmlpc1hZcTBtNlJlYVU4MEwwbXdM?=
 =?utf-8?B?Z3ZUamRQYk5uSldOSlYrVGE4cjY4S1JlYmt4UFNheWNPb1VwQTU4YkhZQU9r?=
 =?utf-8?B?dU9HbG5DRVBvNGxFcGNtOHlBTW1za0thQ0FHSlF4MEZIakVOZUV2bWZZMXR5?=
 =?utf-8?B?Nk1vWHNzMmt2U3dhckllSUFpYnE4Y3BQbDhIVmltTzZIZ3F2S0kxU1BpMVhP?=
 =?utf-8?B?YldlSnp1SlIzZ2J5NEVBTnVaVnFEWTd5T2I1c3JSb291a3ZueFBQZGFUTjZD?=
 =?utf-8?B?bWY4MDVTMXBmVVNXb0NqMTBWUTQyWUFTK01yZzRmNTVEbkZiTFhIbGdlWmN3?=
 =?utf-8?B?VWMya0hiUmxyeGR2V2Y5Y2l0eCtDKzJTYlJYWVQzMHBHdmxDeURrYk1rMUVr?=
 =?utf-8?B?TzRFbU0zd2NvSkwxUGd4WURheEdMNUo1dG9wNVBsaXRMdkZMSEQ2eTdhUVZP?=
 =?utf-8?B?LzVnaExxbk1iblR3eVpGSlRTR29PN1lXVzdHdzltVVhUSDNQTnAvK0hEMG00?=
 =?utf-8?B?dGh3L3JOMlRRU3E4OEt3NnFCK3RFTVRQbmtTeVZ6UXp2RkVlUzFTVVFzTHFp?=
 =?utf-8?B?RVo5dGlrWUFDMnNXV29YWTlOTjMwZ1Qvdk9ibUs0UldseHlJVW9FeDg4bVoy?=
 =?utf-8?Q?Ezqa1BXxQdd9s4XdA5eOW6z8o?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW5PR11MB5811.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 515f6e34-9cb5-43d9-3a53-08db65f8e0ae
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jun 2023 19:12:59.8669 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NQO8+Y4I9hU6sfi9v+whaXLJgNP1up3rLsAIkA+NcHOZKsC7nke1fArLVF2uxB+VNksiknp/2SDkV11c7RKE8TRSayopqSjq9OY58Z6oECg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7874
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685992385; x=1717528385;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/n29Z0gGnZGYFt20iRIO38S3s/hYEaJeFWG7yv6cvgo=;
 b=E9vanuGapYrtMhEFUZz9/0qKxnq6Y0LNmB0gqca6kacvgClOxNXV2c75
 D1gxs5HIT93dXqoFMKSIYsC4JkfkwSB4bABp83KXt0GO6NhN93ZJBsc0p
 Xw5DqSrOTRYTBmpbQDX6wITc2G8LTRZzQuy8CfsHejBXkLiX6HBtSRZ9g
 23DigIHYlso7vtym6PHhrHR+2/yRydIiGdi9rND4aWItcu8XSymew/2dk
 rWQWPqzXPz72Z9KUOAqvI4uDJ5KYO/wFXPLcYRDYO9/doT24HzNUoTjFW
 DST06xtNamx/KTiUEe+s9AhUhPu2Aa4g6oVA65sG/pgN/6KVzVvaB7fvy
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=E9vanuGa
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2 00/10] Implement support for
 SRIOV + LAG
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiBGcm9tOiBEYXZlIEVydG1hbiA8ZGF2aWQubS5lcnRtYW5AaW50ZWwuY29tPg0KPiBTZW50OiBN
b25kYXksIEp1bmUgNSwgMjAyMyAxMToyMyBBTQ0KPiBUbzogaW50ZWwtd2lyZWQtbGFuQGxpc3Rz
Lm9zdW9zbC5vcmcNCj4gQ2M6IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmcNCj4gU3ViamVjdDogW1BB
VENIIG5ldCB2MiAwMC8xMF0gSW1wbGVtZW50IHN1cHBvcnQgZm9yIFNSSU9WICsgTEFHDQo+IA0K
PiBJbXBsZW1lbnQgc3VwcG9ydCBmb3IgU1JJT1YgVkYncyBvbiBpbnRlcmZhY2VzIHRoYXQgYXJl
IGluIGFuDQo+IGFnZ3JlZ2F0ZSBpbnRlcmZhY2UuDQo+IA0KPiBUaGUgZmlyc3QgaW50ZXJmYWNl
IGFkZGVkIGludG8gdGhlIGFnZ3JlZ2F0ZSB3aWxsIGJlIGZsYWdnZWQgYXMNCj4gdGhlIHByaW1h
cnkgaW50ZXJmYWNlLCBhbmQgdGhpcyBwcmltYXJ5IGludGVyZmFjZSB3aWxsIGJlDQo+IHJlc3Bv
bnNpYmxlIGZvciBtYW5hZ2luZyB0aGUgVkYncyByZXNvdXJjZXMuICBWRidzIGNyZWF0ZWQgb24g
dGhlDQo+IHByaW1hcnkgYXJlIHRoZSBvbmx5IFZGcyB0aGF0IHdpbGwgYmUgc3VwcG9ydGVkIG9u
IHRoZSBhZ2dyZWdhdGUuDQo+IE9ubHkgQWN0aXZlLUJhY2t1cCBtb2RlIHdpbGwgYmUgc3VwcG9y
dGVkIGFuZCBvbmx5IGFnZ3JlZ2F0ZXMgd2hvc2UNCj4gcHJpbWFyeSBpbnRlcmZhY2UgaXMgaW4g
c3dpdGNoZGV2IG1vZGUgd2lsbCBiZSBzdXBwb3J0ZWQuDQo+IA0KPiBBZGRpdGlvbmFsIHJlc3Ry
aWN0aW9ucyBvbiB3aGF0IGludGVyZmFjZXMgY2FuIGJlIGFkZGVkIHRvIHRoZSBhZ2dyZWdhdGUN
Cj4gYW5kIHN0aWxsIHN1cHBvcnQgU1JJT1YgVkZzIGFyZToNCj4gLSBpbnRlcmZhY2VzIGhhdmUg
dG8gYWxsIGJlIG9uIHRoZSBzYW1lIHBoeXNpY2FsIE5JQw0KPiAtIGFsbCBpbnRlcmZhY2VzIGhh
dmUgdG8gaGF2ZSB0aGUgc2FtZSBRb1Mgc2V0dGluZ3MNCj4gLSBpbnRlcmZhY2VzIGhhdmUgdG8g
aGF2ZSB0aGUgRlcgTExEUCBhZ2VudCBkaXNhYmxlZA0KPiAtIG9ubHkgdGhlIHByaW1hcnkgaW50
ZXJmYWNlIGlzIHRvIGJlIHB1dCBpbnRvIHN3aXRjaGRldiBtb2RlDQo+IC0gbm8gbW9yZSB0aGFu
IHR3byBpbnRlcmZhY2VzIGluIHRoZSBhZ2dyZWdhdGUNCj4gDQo+IENoYW5nZXMgc2luY2UgdjE6
DQo+IEZpeCB0eXBvIGluIGNvbW1pdCBtZXNzYWdlDQo+IEZpeCB0eXBvcyBpbiB3YXJuaW5nIG1l
c3NhZ2VzDQo+IEZpeCB0eXBvIGluIGZ1bmN0aW9uIGhlYWRlcg0KPiBVc2UgY29ycmVjdCBiaXR3
aXNlIG9wZXJhdG9yIGluc3RlYWQgb2YgYm9vbGVhbg0KPiANCj4gRGF2ZSBFcnRtYW4gKDkpOg0K
PiAgIGljZTogQWRkIGRyaXZlciBzdXBwb3J0IGZvciBmaXJtd2FyZSBjaGFuZ2VzIGZvciBMQUcN
Cj4gICBpY2U6IGNoYW5nZXMgdG8gdGhlIGludGVyZmFjZSB3aXRoIHRoZSBIVyBhbmQgRlcgZm9y
IFNSSU9WX1ZGK0xBRw0KPiAgIGljZTogaW1wbGVtZW50IGxhZyBuZXRkZXYgZXZlbnQgaGFuZGxl
cg0KPiAgIGljZTogcHJvY2VzcyBldmVudHMgY3JlYXRlZCBieSBsYWcgbmV0ZGV2IGV2ZW50IGhh
bmRsZXINCj4gICBpY2U6IEZsZXNoIG91dCBpbXBsZW1lbnRhdGlvbiBvZiBzdXBwb3J0IGZvciBT
UklPViBvbiBib25kZWQgaW50ZXJmYWNlDQo+ICAgaWNlOiBzdXBwb3J0IG5vbi1zdGFuZGFyZCB0
ZWFyZG93biBvZiBib25kIGludGVyZmFjZQ0KPiAgIGljZTogZW5mb3JjZSBpbnRlcmZhY2UgZWxp
Z2liaWxpdHkgYW5kIGFkZCBtZXNzYWdpbmcgZm9yIFNSSU9WIExBRw0KPiAgIGljZTogZW5mb3Jj
ZSBubyBEQ0IgY29uZmlnIGNoYW5naW5nIHdoZW4gaW4gYm9uZA0KPiAgIGljZTogdXBkYXRlIHJl
c2V0IHBhdGggZm9yIFNSSU9WIExBRyBzdXBwb3J0DQo+IA0KPiBKYWNvYiBLZWxsZXIgKDEpOg0K
PiAgIGljZTogQ29ycmVjdGx5IGluaXRpYWxpemUgcXVldWUgY29udGV4dCB2YWx1ZXMNCj4gDQo+
ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlLmggICAgICAgICAgfCAgICA1ICsN
Cj4gIC4uLi9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9hZG1pbnFfY21kLmggICB8ICAgNTMg
Ky0NCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfY29tbW9uLmMgICB8ICAg
NTcgKy0NCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfY29tbW9uLmggICB8
ICAgIDQgKw0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9kY2JfbmwuYyAg
IHwgICA1MCArDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2xhZy5jICAg
ICAgfCAxOTEyICsrKysrKysrKysrKysrKystDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pY2UvaWNlX2xhZy5oICAgICAgfCAgIDM0ICstDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pY2UvaWNlX2xpYi5jICAgICAgfCAgICAyICstDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pY2UvaWNlX2xpYi5oICAgICAgfCAgICAxICsNCj4gIGRyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2ljZS9pY2VfbWFpbi5jICAgICB8ICAgMjYgKy0NCj4gIGRyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2ljZS9pY2Vfc2NoZWQuYyAgICB8ICAgMzcgKy0NCj4gIGRyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vfc2NoZWQuaCAgICB8ICAgMjEgKw0KPiAgZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9zd2l0Y2guYyAgIHwgICA4OSArLQ0KPiAgZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9zd2l0Y2guaCAgIHwgICAyOSArDQo+ICBkcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3R5cGUuaCAgICAgfCAgICAyICsNCj4gIGRy
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdmlydGNobmwuYyB8ICAgIDIgKw0KPiAg
MTYgZmlsZXMgY2hhbmdlZCwgMjE5MyBpbnNlcnRpb25zKCspLCAxMzEgZGVsZXRpb25zKC0pDQo+
IA0KPiAtLQ0KPiAyLjQwLjENCj4gDQpTb3JyeSwNCg0KVGhpcyBnb3QgZmF0LWZpbmdlcmVkIHNl
bnQuICBJdCBzdGlsbCBuZWVkZWQgdG8gYmUgcmUtYmFzZWQgb24gY3VycmVudCB0aXAtb2YtdHJl
ZSBhbmQgaXMgbWlzbGFiZWxlZCBhcyBuZXQgaW5zdGVhZCBvZiBuZXQtbmV4dC4NCg0KV2lsbCBy
ZXNlbmQgVjMgaW4gMjQgaG91cnMg4pi5DQoNCkFnYWluLCBzb3JyeSBmb3IgdGhlIHRocmFzaC4N
Cg0KRGF2ZUUNCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcg
bGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
