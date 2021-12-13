Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AEC94735BF
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Dec 2021 21:20:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CF91B402C5;
	Mon, 13 Dec 2021 20:20:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7hLqpFhNI4TW; Mon, 13 Dec 2021 20:20:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DBCD7402BD;
	Mon, 13 Dec 2021 20:20:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1A3CB1BF2C0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Dec 2021 20:19:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 033B040361
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Dec 2021 20:19:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com header.b="morvbd8L";
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
 header.b="I9Z4arpI"
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PupsBgObuUq3 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Dec 2021 20:19:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7CA4540182
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Dec 2021 20:19:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639426797; x=1670962797;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=S8yHGei1HS3uACtlQsWs6hGTNoW7SDpwwD+9ezWH4DE=;
 b=morvbd8L/quZit1z2CsKwy6iqqJWMpOt2DFBUdxCvDVgFMgF35IvIiiR
 /pmGkl4J95iY4ZBckp5YJbPVb6uraVi1jq3Z2xbVy7YpWY2vA7oVpKeXw
 WbLbtcvNBvC2J2hfR7daS4sDMwVNAbFrbUgZZG7o+OHW90jA9yQfM95yO
 h6woPuABjwZvnj9Nf1/n2P0M47NCXWO5hwb6mAArsh1b/cpTTHPUiipfh
 5NoQYvcNuj63MPLxWFwR+8odzhYhnkY90eFcVCswi553htg1yDZ/E40mG
 rvneM113l2YkNHhavBJhuW/OeGis3pvBEfOqOWoxrZLsMOQAWnIRZVW6X g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10197"; a="299603799"
X-IronPort-AV: E=Sophos;i="5.88,203,1635231600"; d="scan'208";a="299603799"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 12:19:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,203,1635231600"; d="scan'208";a="518815672"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga007.fm.intel.com with ESMTP; 13 Dec 2021 12:19:56 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 13 Dec 2021 12:19:55 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 13 Dec 2021 12:19:55 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Mon, 13 Dec 2021 12:19:55 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Mon, 13 Dec 2021 12:19:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LWZHQ1JoHvpZpk/iG3llrEXMKyPM+QzVwK7d65cjHV4ceuW1hYaQevxeJrWBfHMJyVtiHJ+p0J4FbWMwjt+J8JdHuUpu1A5mpk8Gp/pGl9XPhzqYG5LBW8nhgS/mUnSSgNKiwbdxzcbdlbaBhNqvwbD/bDBYGifIghGwmLwsqak2zT0aHmt8S0shLop8Z31BL4IMlTQsX3vxWyJUxNJw38wAFyLmRYHxP3uf2KsrctqLyZcf2SCNxZb+tx+/uX7MdI6VCRow9VzapJqM/c2MzL4fk9Nb+fjN7++fTdmqXrvCB4wdY/g9LflPRxGcAmsoTOmX6HvT1YE6nbU1qNwQZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S8yHGei1HS3uACtlQsWs6hGTNoW7SDpwwD+9ezWH4DE=;
 b=TwQMSvCQH4PqbRM3sdQCtmOchbVujF3fxHdIvrLMi8TL4bwn1vFJHVy03trfLQsQx4rBYW7+GuAxTr8PSykZbODFfjrwtQOlllbtVk3m2Q63XkeQNSBMnzJ/fqrY8fkmXMwpA1m4skFR9hTWYSuIZKjrtRNb3ozT7h4GW2SK+DOW/QCL8Ml1UtoF8Kvrd3FYZi41/nKy1fBACzvUhTtICSu1thbHS3iQ1wkbz1zGd6IJUtRVC+h4MTth0AAW3CapJNGEsjjHcBq7IqFL9+lNUCEVEE7Rl0fFwOm9G7xSSUkSbVS/WEQAPU2jMfZibMBAsjuJ/2KzX7OLnf636+xA3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S8yHGei1HS3uACtlQsWs6hGTNoW7SDpwwD+9ezWH4DE=;
 b=I9Z4arpIacFEn66KxsPE/42/ija04cEyd9yVEQTjemZ9p0FFASGSgj/B4S0UAPK6yiAr6lDarnD+6DCAKMhEzYSyupFPCB12MaxnUb29sAhdRWzkbhaAHEiWL8t6wNxoewfdjuWBM2lePmmlPiPVoEXTX4rvah1jxHrmWW+uAto=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA0PR11MB4528.namprd11.prod.outlook.com (2603:10b6:806:99::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4778.15; Mon, 13 Dec
 2021 20:19:53 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::10ca:cadc:48f6:b883]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::10ca:cadc:48f6:b883%4]) with mapi id 15.20.4778.018; Mon, 13 Dec 2021
 20:19:53 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1 0/2] i40e: Hw tc offload
 and hw tc offload settings
Thread-Index: AQHX8Brz94cxwdC42Eyh4lZGZWe4saww3RsA
Date: Mon, 13 Dec 2021 20:19:53 +0000
Message-ID: <4a1340d6941d7c1b3653eb29a934570a1197a7ac.camel@intel.com>
References: <20211213121248.4137-1-mateusz.palczewski@intel.com>
In-Reply-To: <20211213121248.4137-1-mateusz.palczewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.40.4 (3.40.4-1.fc34) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 69908ffc-f7b6-4d5c-9fbc-08d9be75ec41
x-ms-traffictypediagnostic: SA0PR11MB4528:EE_
x-microsoft-antispam-prvs: <SA0PR11MB4528CC60EADF9C9BDA08814DC6749@SA0PR11MB4528.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ltzUxgwXkSqogWlGdqd39pOXPdvj0otDgV/9FiZElJDdqKWqprBVHVsjzeu/kVe5KtglqI2iNf5A3K1MmTE18gg97pGvLpmVMV5fdoIwiM2izh+q38ZCWfRDSd2nIdqIJXMQHRy0ifXFnfKSfIESaL4kjFugWd7advPKei2Su9W9rFsnBYc46X6FwORkG4jOenKFVZ3MTiiDkhh+qL6XItayLuiUWNQt9PDlNIwBbKfKH8574VFR11q7OYmB+HshlSBxgLRa96Z8kJb4+Yb48sXIuZfTsdt0dAtRqR2alln9vqXsbRuOQotC4jLe3Ws0LZECSN5F/RiK2En1xUmfvj32/J7v9Fw4j8H5O6UNF0btxv6NJTffv8zDYMgrz4nRorNCRTfELAhnLDXpAZ3pn9oXvyW6wdg+pLZEqsldLS9A+KJswwCCL4MnKcKhRiWyl/OdZkxKDcRM5VPtueMQp/SLvYaRaGLsEYbyoBRP4bw+87DUYiuuZU5C+mTVOqzVwt39bUoq+xroMdIevTBzJQ2r7da5DpDVQnHfsYPEVEfUTibtg8XSVLpl/Re76Svu6zQYbrMtjgr7O2PDqt7adN6JJ8C5OLgMmIrZGisIbPDoOqK93/vgqqB7WCdqI3dqIsy85dWrZhzzC7J4j/iCtRUCVQV6H5RvlHDBzAk/h5jEivdqJk+GF9ZBRUnTGYAnkgIBta5KkpLoGvjC1pIMBg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(508600001)(8676002)(8936002)(66446008)(66946007)(91956017)(2906002)(66476007)(76116006)(64756008)(66556008)(4001150100001)(316002)(4744005)(122000001)(6512007)(2616005)(83380400001)(110136005)(38070700005)(36756003)(186003)(26005)(71200400001)(5660300002)(6506007)(6486002)(38100700002)(82960400001)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YnVETUZxdXJNNm8zYkRhT1BmVVA5d1ZJNHlNb1orMXVodElNZE5DV2wzaVBK?=
 =?utf-8?B?MUdqLzdJbXk4THY0SzNOeWhpNHQxK0poQkVRNlZWa0pDYmdRaDVFWGNyZ3ly?=
 =?utf-8?B?VDZsWUlsYVhDL3g3ajBySThDSEpLQ2JtRDJvelExdXMzeGJZT0Nlb2VFL1Vv?=
 =?utf-8?B?THJBN0Y5TVJrNkNOVjU5d21VQmtPS3htdEhEM3Bnc1Q1bDUvUEoxTVZ5ai84?=
 =?utf-8?B?aXB4V3ZRcjdQMHZrdjVDN3hOalV0VTlRZS85bzBvK0lhWmE2dVR3WGptaVpH?=
 =?utf-8?B?Z2M2R3NSTDFIWUZZa2YwVzk4WEJEb3RzSnpjczVheVJKeDMwTzNsTHRDNnp3?=
 =?utf-8?B?eG0wREU4QXNPMHFFQ1hpQmxhNk1kS1hzeVNSOTdHL2YyR0RGLzZBVWQ0MVFX?=
 =?utf-8?B?THdGNFY2VjliYWVCZ0RTL0VkVlBEM3Fla0d2c01zWXkrb1VNbEtla2ltbC9z?=
 =?utf-8?B?azJzZkNvcTVaMzBHemVSaFd6aGFyWFFOd1p2ZytjbFgrejR3c1J0K0Jjanlt?=
 =?utf-8?B?b1J3Lzg5Y1FXQVhSQWZhc3dVanM2eDNIbnY2QUhhZS9oUDdybnRBU3dTNDVl?=
 =?utf-8?B?bHNQNEZYVTNQeWtobVplTGRMRURmUjFQSWtkT0FQTTViQnlqQXZvdmFzZGx5?=
 =?utf-8?B?V3AwUGY3RG9jYVVNRlliQzdidmJDVk1sOFVnbENabVdhM3lIdTNvaHQyYXlL?=
 =?utf-8?B?ZFNNTkNjYW55UjVnTzJ4TW5jT091VTFTY09kS2ZIdTZqSndmaXJYYWcrRWM1?=
 =?utf-8?B?VVBDK1RGcnhjTlBjeU1BM3RuRXNsaWFqTkh5dEV0LytWNTlmc1MrZVNxU1hN?=
 =?utf-8?B?R0Yybjhhc0ltWFBEZUs0NHBWTCtIRlVlR0ZKVDl4eE40b0I4VU9sOURxbkZr?=
 =?utf-8?B?MkZQY1BRZjFpKzFMV3kzZHhqeSt1L1BBT2JrYlBaU1B1aGpkRkRUdTBqaDVn?=
 =?utf-8?B?UldVZVZGek5LYm50WkNKMS9VOVVNUDVOSDBYTEk0MGFhOFlVUk40eVpNMjk3?=
 =?utf-8?B?KzcxM3JUbFRxLzc1ajhaaUc2Mlkwa2MvNVhPMEdqTVQ3T0MvNnByY2FVNDZP?=
 =?utf-8?B?ZWFOVThZRGxoWUduVjhDaS91dUZqSWQzMUxrVXcwZXZ0SDBEYTBqUk05WnVI?=
 =?utf-8?B?VEd2SDAxQnpXR2FIb0ZLZThoNTVsSVVSemU4V0dSU1daazRjeHZSMStacXgz?=
 =?utf-8?B?VHIwNm9SNE0wY25PQ2w3V0w5R3BzRG11L3BTWUpCOWlLSmdxSUNWZ0R2SEgy?=
 =?utf-8?B?ZUMwWndwWjhkWVo3SmcyUXpVV1VGUVVLOXBkQ3cvdnJlWXdUZGgyWHRJSytL?=
 =?utf-8?B?ZmszbWFWOXlMcFIyQ3lteCtLRC81TlprMmtXZ2p2RXNkQ29OZUdNYmUxTzVO?=
 =?utf-8?B?dkxyS3lubjNKeEJSaUdtQWVYS0QwTThDVmZuR1FCOGxJU1IxR3E2aU5rSTVh?=
 =?utf-8?B?a2oxWlk2dWJDK1M1cmZra0pwOUxocU1RVU9ac3ZKMXJPa0t2VXRPV2VVUWdk?=
 =?utf-8?B?Zm5idVluZm16UzdZWWpqRFBPdVFnZ2UyMVluUFRkREtVcGZrbzlSc05LWGtN?=
 =?utf-8?B?TXlWdjA1RWpyUys5N3dqa2lvVlJQb1h6SnE1cm0wcGVYTDUzaTVnRHIyZDBy?=
 =?utf-8?B?YlQzalVqbGozRk5UZ2dpQkdGMEQ3d3VKTEVlL3J2cW5PdS9vbW42dCtDLy9I?=
 =?utf-8?B?Zlo4czVRRE82a0VnVm8vdE5pTDQ1WkNvVkI4d1JSa2FWcnFsTHBzckpsZFNR?=
 =?utf-8?B?ZjV2Z0VNMi9nZ0p2eWtzcSsxa3p3aitGVXFyQ3poVXdaTnFHR0NVK0FOTnRT?=
 =?utf-8?B?M0dHeFQ3L1pKTVY4RG5ZZVpSZGc4cE02aFZ6SGZsL05MLzlscUhyWUdzZ1dw?=
 =?utf-8?B?RTdxME1jNXNMSWtvWThUU1d1TmFVMWlWbEk5MTByL2orRit4RUdJMXZwSkR5?=
 =?utf-8?B?SkxZN0FKK2NlWmN1K1crQ3NoemliSWhNeXFUN1VnWEkzdmhXWURoOUFoQkx2?=
 =?utf-8?B?d1M3U1p5OVFyZWVnVnFXV3lDL0hEbjAvcDY0SHN0TEhFYkhyTzFQSmxvakNK?=
 =?utf-8?B?aExLNDhRNmdsaHdRV1JUSnNaR0J3T3h6cys0SGZPRnFpUFk3OE5WejMrWEhN?=
 =?utf-8?B?ek54d0VwWDRkNkkrQ04rMW9FcldwcHFPaHZKcU04QVMxZjNJb25naTFpTmtu?=
 =?utf-8?B?clJXR1ZQSkpWZEg0NVU3dmhoM2JQNmREaDZMbXB2MzJQcDV2SjNWVUk5WU53?=
 =?utf-8?Q?osdiKJXZC+SZVFi8nB4Y6xyHwsdiCNzvK0LwC4Impg=3D?=
Content-ID: <A55DE6851517FB449064399DBEA028C1@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 69908ffc-f7b6-4d5c-9fbc-08d9be75ec41
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Dec 2021 20:19:53.3185 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oaEZYdo6bZDq6TqbMnGymXOL3Sya3NwN13jcMhahd4Bw1Mz4QhLIdScVF5J5AWamvs0TMnUHbDDuQ1uieuBScEVqLLk43K76bC/V2+vP/mY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4528
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 0/2] i40e: Hw tc offload
 and hw tc offload settings
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gTW9uLCAyMDIxLTEyLTEzIGF0IDEzOjEyICswMTAwLCBNYXRldXN6IFBhbGN6ZXdza2kgd3Jv
dGU6DQo+IFBhdGNoIHNlcmllcyBjcmVhdGVkIHRvIGNoYW5nZSB0aGUgYmVoYXZpb3VyIG9mIGRy
aXZlciByZWxhdGVkIHRvIGh3LQ0KPiB0Yy1vZmZsb2FkIGFuZCBjaGFuZ2luZyBudHVwbGUgc2V0
dGluZy4NCj4gDQo+IE1hdGV1c3ogUGFsY3pld3NraSAoMik6DQo+IMKgIGk0MGU6IERpc2FibGUg
aHctdGMtb2ZmbG9hZCBmZWF0dXJlIG9uIGRyaXZlciBsb2FkDQo+IMKgIGk0MGU6IEZpeCBudHVw
bGUgc2V0dGluZyBjaGFuZ2UNCj4gDQo+IMKgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQw
ZS9pNDBlX21haW4uYyB8IDUgKysrKy0NCj4gwqAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25z
KCspLCAxIGRlbGV0aW9uKC0pDQoNClRoaXMgc2VlbXMgYmV0dGVyIHN1aXRlZCBhcyBvbmUgcGF0
Y2ggc2luY2UgdGhlIHNlY29uZCBwYXRjaCBpcyBmaXhpbmcNCmFuIGlzc3VlIGNhdXNlZCBieSB0
aGUgZmlyc3QuDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3Jn
Cmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxh
bgo=
