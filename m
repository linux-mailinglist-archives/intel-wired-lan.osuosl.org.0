Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EB7D6B87EF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Mar 2023 02:59:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E52884038E;
	Tue, 14 Mar 2023 01:59:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E52884038E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678759141;
	bh=YCt5UjISYbKBEFs9eV6sh6ov51Ak1ST0lphCxDhVuyo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=oigkmJcSjFEjgP3yO6/WcWACNLYAqYCNK5XzzwDxxQjyrrKDrN9481GHVGzu7VPiS
	 ELF/pdyvH/kfkzaoYpmCRx5NyR/L0bRmikoMY1N81+h27FrYFj/HRjG0xKDCcfpW/B
	 pGuu7zKR7XHhkxUr9f6mn+s1hd78qPLhxOOsWXTRywy6hiEEN9EMBsdfio/SNEy4tQ
	 VESVe+V1WYdpvPjmcXl9owI3UibO7nkGy8wAnTtZKXv9FZQj3sOYUU1RDQeU/phZBH
	 SczzhwpkG3labyOPCIuuWloXs41y+4ROrICAjSPveel54SCt3P1L5UfbG8tskwn/TG
	 ah034ks+JHSyw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JyvPtSHk-oTS; Tue, 14 Mar 2023 01:59:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B1105400CB;
	Tue, 14 Mar 2023 01:58:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B1105400CB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2317B1BF954
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Mar 2023 01:58:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0977D81BE3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Mar 2023 01:58:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0977D81BE3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QGb48axwd-P0 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Mar 2023 01:58:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EA44881BD9
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EA44881BD9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Mar 2023 01:58:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="321159183"
X-IronPort-AV: E=Sophos;i="5.98,258,1673942400"; d="scan'208";a="321159183"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 18:58:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="747826265"
X-IronPort-AV: E=Sophos;i="5.98,258,1673942400"; d="scan'208";a="747826265"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga004.fm.intel.com with ESMTP; 13 Mar 2023 18:58:51 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 13 Mar 2023 18:58:51 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 13 Mar 2023 18:58:51 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 13 Mar 2023 18:58:51 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 13 Mar 2023 18:58:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g/akufmbCDGJC8hmESTu3IlhGm8WZZz0xUMyPwz0ymH+1LD8UHAK1fwfwhwG01ddwbFjOeDbi1yb579rU83NrfOXKkYfURdspeEwg/b48jlDId7lNi3WwmpWn7ZtuhNMmr7c03v2L81Tu6fD1k/9xUziwyQ0T10VobNGY0ulhnn2QA4yTTyT+G5CzQkwNYtUg05ctphgEPcCJyUc8ubRHC3rjK+Ox+MbNTDOKxsXkc7+otKh6JXOogED17GKK5eEOrcAbM+aexzc3KeJbNl4vy4/1g4o7uUIVLK09ynlsJVPyyKPoc3rDcSOi75UdLy1J+RMuDaIU0IJCiGOMLB6aA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uRN3NFiz+mhdf+XjAtIhppWHArR9v0ebr6nFgLKitoo=;
 b=JAiabSrR6Ait0lFzMM2cPjkWnolkK4HJJlCGdEcC7V0bbjctwzOcwbWKen82FnApXiOp8UwRYGpqyi2TzptEV1Y5x450WywuVmB4pcn2+L5rK5yJZ5X8PyYqaYJVE/bRU9QJzOYH+typHHHb6qQoH66cIEOcAna1eIpz1wQeYD77QR++OMKRpEAWm/pD/O03srwzlI9xDfRVotniQ8ltd3emujV6r5W9qNveZT6eUvIjjXskagvEDtzCd3iO85PnqZwe3GxR4EV/rTAyn46IdiXDUfW3Ezwr0fhUpp8qa0yh1OADhv+4CLSBOKZyaeNTlDPgDTESQpaLau1FQuUQWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3723.namprd11.prod.outlook.com (2603:10b6:5:13f::25)
 by BL3PR11MB6409.namprd11.prod.outlook.com (2603:10b6:208:3b8::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.22; Tue, 14 Mar
 2023 01:58:44 +0000
Received: from DM6PR11MB3723.namprd11.prod.outlook.com
 ([fe80::b060:3d57:bbe5:baa8]) by DM6PR11MB3723.namprd11.prod.outlook.com
 ([fe80::b060:3d57:bbe5:baa8%4]) with mapi id 15.20.6178.024; Tue, 14 Mar 2023
 01:58:43 +0000
From: "Guo, Junfeng" <junfeng.guo@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] ice: add profile conflict check
 for AVF FDIR
Thread-Index: AQHZVVH2Q7wjT4SbOUCAUswsGfz1g6743JwAgACowFA=
Date: Tue, 14 Mar 2023 01:58:43 +0000
Message-ID: <DM6PR11MB3723DCB9D3A9AF20EA238F32E7BE9@DM6PR11MB3723.namprd11.prod.outlook.com>
References: <20230309051011.1165676-1-junfeng.guo@intel.com>
 <20230313021720.3274870-1-junfeng.guo@intel.com>
 <08422143-3253-36e1-7319-bdf4a88c4ad8@intel.com>
In-Reply-To: <08422143-3253-36e1-7319-bdf4a88c4ad8@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3723:EE_|BL3PR11MB6409:EE_
x-ms-office365-filtering-correlation-id: e0723e19-965b-4044-ce92-08db242fa410
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: I08AQ7I4wDDG6YWIhXsUnjfFhWOBxvRpVZA9ZGSo1rHxEsgGYiBmjb5dPvQwfRBumptA6vPK5/YjWMxLhHBA1RaDom4mt0QvtxmWi66dKk6UT6cvyewKz9dFrjBwjstsNxQ0+8G2k74RawLty8aVkeVUcJS3x5b+AuYesKqItY5BCb3kv0Z7VJPhh8KvYp209Oi/Yye4MhYLHPml8x5920WMVnMQdRIWYprf9V1gCtJ9AUqdblwwiSmBTkmJ+W7ihos2bxHrt/EX6+mMrN4W8A+x8JJVZVL2N9lOdWJcFlK7RvAPkgvNnle42KPJVCNeoytkKVdx5KzFbxHCaaL5NQ6m1/T5ePvx3ClU+19A9ZSqqtkeyUTTDoN99klsY343w09jdTWo1Qz1li3VlVaAu1EaOnGHl5Ji9V+OnwsR7wNrFfGxdRO2w4TGpzusszPZOHB9ix5k06N/eQb2ADhUbaKJQeQkM6/88Wx+4FEn9Q+DHjjdO02JbnU4mz9Eqozo+yHraq87Mc1KGxC50IGVrkRgoA77Zsr0mRv3eUxKwB8mQ2jLg/vvoVguQDdTnh7OiTFnx1iPBEeDDkze0WTUhQkPrHRD9dnjVkxpZyT4J9eUutYZTHZBJYX2Pru00FRD43sorGt0yFPGwOL358KgxaBkl/GIUOTgMeks9TgF84C3MXCVAyOYpWT6CAD0HYCq
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3723.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(376002)(396003)(39860400002)(346002)(136003)(451199018)(2906002)(478600001)(52536014)(110136005)(8936002)(7696005)(5660300002)(55016003)(83380400001)(316002)(71200400001)(33656002)(66446008)(26005)(186003)(82960400001)(66556008)(76116006)(122000001)(66946007)(66476007)(38100700002)(8676002)(38070700005)(86362001)(64756008)(9686003)(6506007)(41300700001)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V1VtVTNlWnJneVlFZ01EdTVzRkRHT3pDN3gvOXNKYng0ZU52MlZYVEQvaEJ2?=
 =?utf-8?B?S0tFa3F3NlRhcVpXOHlkRDg3eWtyUC9GVEJna0p3c1hDOTRLVmRxUXVMV1Vv?=
 =?utf-8?B?R2txa1NGdHoxaFN0ckxzM1FxOXVjNFBhUGxyQU03K1BOU0VRUlZQOFFNRmJj?=
 =?utf-8?B?elV0RmtxOCttNWNVZmcvRzZYUmdIUmpkRmZ3clRIZU9RMFZSREw3MENNcm1m?=
 =?utf-8?B?WlB1SHhIenU1R1pCMHhjN1Vod1BVdUJEVyt1T3VhODJXZVRnVmVJdnROWDdn?=
 =?utf-8?B?eEpZaWw5ZlVxNFNPMGNCTkt1L2d1YTVDb1NCOWpLNitxUW5saGt3UnNGNWEw?=
 =?utf-8?B?OVBsR1J0ZEoyR0lBbXByTTRNT3ViRzJ0cTJBSnhKYWIrbjZ3aFNIYkpUY0Qv?=
 =?utf-8?B?dkNkZGV6UXlZNjNjREJRam9QU3JMUzJvZVJxVGQ2Wjk1S1RLd0N4S2oxSWla?=
 =?utf-8?B?cTBhMUVOVTBLWG54UmFLSER4aUwvSitNRUZyVHJtUDBnMVpjWjYyQmlQclJk?=
 =?utf-8?B?d2U0a2xmN1F1aTd2aDdLeEw4dEpZYVphb0RRdDdObDdDaGp3MzdIeFQ4RWpK?=
 =?utf-8?B?WUlaQkhpR0JoSTkwSStXSTNCdWVZWEJULytJSnp0bWRQRVNNVi84VkRMZVFB?=
 =?utf-8?B?MUxBTkZGQ2MzSGhUc2xFR3I3ZjltbUVaRTNDeEl3R2hVVFJjdHNjeml4RGNW?=
 =?utf-8?B?QlhROGlpdzBPVEFsc0p5M3RRbEpRTTZaWnNRU0JPeE0yV0Nnd0FJYU9TNTUv?=
 =?utf-8?B?VUpBWWpPblNkNUFEWnJMU1ZaazlBNlE0ME5xcHgybG5IOWRiTFQxTmNZNkJ1?=
 =?utf-8?B?RUEvY0JzU2xqNkVTZW5hNTFNTk5PL0V4ZStjV0ZEZjQwNVFYWE9EL2R2aFA5?=
 =?utf-8?B?REx6NXhCUHZrbFJtWkhUTkE1ZXplb3hURE53Y0ZtZmpDSlAwbDhmZFJuQ0JZ?=
 =?utf-8?B?K0RWbldISHJEOE82ZWtlWnZ6SnVvRmI4dEZIK1RJWDFVVVFkVXdjUjdXSnJ6?=
 =?utf-8?B?bVA0Rzd0U0RQLzhXNjZwVjRyWWs5UGZ0YU45WTUzZ3pVNVFjUFkzZm5UVWxi?=
 =?utf-8?B?RjNSOS9iTUN0SWQ5US9xcncyUktUS3JRRlZqTW1SRjRSZUdhYnYxWnJZNE9E?=
 =?utf-8?B?bDJweHRRTlM3VGphZjJyK3U1UVEzZ3J1ZkNkOGNhMU5DMCtzOHBSSjc1a05M?=
 =?utf-8?B?REVrcENQN2s2SWxoRzRXMTBsWk50U3M4OC95ZGZydEVRY2dtNVdHeEJ2QWdG?=
 =?utf-8?B?THRoeTJZRUdkQWc3djAzdTdmcEM1dHBoYWk4Qk5NYmVFZW9yYUdCWUd3YWNH?=
 =?utf-8?B?U1NHaVlZNDVGdnF3S0kwSEtFa2YxWTdNUEx3bDk0OHUwQ1FIWHFaN0l3V014?=
 =?utf-8?B?ZGt1c2EyRy8xOWp2RjZoU3BWb1p1WjZ2bWNRSzM0a0RyQ1dkZ1JwQnh6Vk01?=
 =?utf-8?B?akRRSzloMEZhNExvVS95RThZa3JXdVpaUXBVRFYzcFNGN1VqZUVJUFJiYlI0?=
 =?utf-8?B?M25mQ1h2RzZNNE5MNnJtUzBOYVpVL00wUTJRRllJNlgxS2ZsZ2l5MWN5RFFs?=
 =?utf-8?B?ZTNaQlduN0ZUQnNmZUlEUnlFb0NiNGN2TWVjUnM3dmlSTW9ZR3RYeDNKclVM?=
 =?utf-8?B?dXhwcHlIQkh1RU8xKzNQbDBnVGoyWDQ5ZGVrejVHUHpIMUxoYzFuZnFjNHVT?=
 =?utf-8?B?b0I4K1F6NHgxUnJkcWtDZWZqVlFSVlJ6NlBMNGpXWEwzWStmYjByQ1FUaldB?=
 =?utf-8?B?aVUxTTlIL256cDdheHY0bUUxSVdtclJyL25QekJDY2g5WFhONkJack5jZ0Yv?=
 =?utf-8?B?QURGdjI1QTBTcUVHeFFsUkdxc1doT1c3d2w4ZmhvV05oeEl6aEV1anZRMVdC?=
 =?utf-8?B?dkF3RGlwTlZHNHRPMTFvZWVhalg1WFRzZzBOT0RRekJaakZjd0Q4UEV6YTFY?=
 =?utf-8?B?K0Y0aHNYSjdEQWp5NVpXdk5nbFdET29jRkNqRjdiWFE3bnlLb3QzR003Qkh5?=
 =?utf-8?B?N1lCbDdobDUyaVlUajgzcktQYStzNGo0b0ZtTmJqdVVNd3R6R2ZESUN3TWRm?=
 =?utf-8?B?L2xSWGx6R1FwOGtmNk5zMXFmM0tJRFo5RkNmVFZINTVFU2FwaHBNQi81bGZo?=
 =?utf-8?Q?RhSTY7h2CDOeb75FBR1xmhNB8?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3723.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e0723e19-965b-4044-ce92-08db242fa410
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Mar 2023 01:58:43.7372 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nj6+4tC8mHiE8JkVVyVpdJ5VIn0XXpSl+jubgpzEtcieUfJSQ4sxdsz129UoKk+yLC0llulX2BrLQX9hlFv3Pw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6409
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678759132; x=1710295132;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=uRN3NFiz+mhdf+XjAtIhppWHArR9v0ebr6nFgLKitoo=;
 b=KFoqJFeNA1uHfpA/DY8VpIP+xXJz30yMd680BIoO7clDSaNv/TQnBdMX
 +Hj05E/0VO8Fz/FMknzKAFPqKIvHZvlPCgajgv06LiVXOaRTCQH2Ghhi1
 uAxSbKhyNA6H+dPdcpcSlGEh0GNfa0AHQIjjvUesdxNid7E5//GPVKCxj
 hI8gB4mYMxSwWK5rM7Dy5Ig48g+hEtf7HzG75qtY+HQwNzZSghBA3SSKF
 BFnLkowMNf+1AkG8BpplrOELtB1Nm1PKA+UjBZ+ZzMGdEJBeMbJPspOKt
 MJ8i86Ph9lNr79q2TGGZZP7oRpdwxv7XM1oaVawGO5U9jjyyg6FYI4EhI
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KFoqJFeN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: add profile conflict
 check for AVF FDIR
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



> -----Original Message-----
> From: Brandeburg, Jesse <jesse.brandeburg@intel.com>
> Sent: Monday, March 13, 2023 23:51
> To: Guo, Junfeng <junfeng.guo@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: add profile conflict
> check for AVF FDIR
> 
> On 3/12/2023 7:17 PM, Junfeng Guo wrote:
> > Add profile conflict check while adding some FDIR rules to aviod
> > unexpected flow behavior, rules may have conflict including:
> >         IPv4 <---> {IPv4_UDP, IPv4_TCP, IPv4_SCTP}
> >         IPv6 <---> {IPv6_UDP, IPv6_TCP, IPv6_SCTP}
> >
> > For example, when we create an FDIR rule for IPv4, this rule will work
> > on packets including IPv4, IPv4_UDP, IPv4_TCP and IPv4_SCTP. But if we
> > then create an FDIR rule for IPv4_UDP and then destroy it, the first
> > FDIR rule for IPv4 cannot work on pkt IPv4_UDP then.
> >
> > To prevent this unexpected behavior, we add restriction in software
> > when creating FDIR rules by adding necessary profile conflict check.
> >
> > Fixes: 1f7ea1cd6a37 ("ice: Enable FDIR Configure for AVF")
> > Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
> > ---
> >  .../ethernet/intel/ice/ice_virtchnl_fdir.c    | 73 +++++++++++++++++++
> >  1 file changed, 73 insertions(+)
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> > index e6ef6b303222..06296ffc3608 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> > @@ -541,6 +541,73 @@ static void ice_vc_fdir_rem_prof_all(struct
> ice_vf *vf)
> >  	}
> >  }
> >
> > +/**
> > + * ice_vc_fdir_has_prof_conflict
> > + * @vf: pointer to the VF structure
> > + * @conf: FDIR configuration for each filter
> > + *
> > + * Check if @conf has conflicting profile with existing profiles
> > + *
> > + * Return: true on success, and false on error.
> > + */
> > +static bool
> > +ice_vc_fdir_has_prof_conflict(struct ice_vf *vf,
> > +			      struct virtchnl_fdir_fltr_conf *conf)
> > +{
> > +	struct ice_fdir_fltr *desc;
> > +
> > +	list_for_each_entry(desc, &vf->fdir.fdir_rule_list, fltr_node) {
> > +		struct virtchnl_fdir_fltr_conf *existing_conf =
> > +
> 	to_fltr_conf_from_desc(desc);
> > +		enum ice_fltr_ptype flow_type_a, flow_type_b;
> > +		struct ice_fdir_fltr *a, *b;
> > +
> > +		a = &existing_conf->input;
> > +		b = &conf->input;
> > +		flow_type_a = a->flow_type;
> > +		flow_type_b = b->flow_type;
> > +
> > +		/**
> > +		 * No need to compare two rules with different tunnel
> types or
> 
> "/**" is special magic for declaring documentation in kernel and
> doxygen. Just use:
> 
> /* multi-line
>  * comment
>  */
> 
> which is netdev style.

Sure, will follow this style. Thanks for the reminding!

> 
> > +		 * with the same protocol type
> > +		 */
> > +		if (existing_conf->ttype != conf->ttype ||
> > +		    flow_type_a == flow_type_b)
> > +			continue;
> > +
> > +		switch (flow_type_a) {
> > +		case ICE_FLTR_PTYPE_NONF_IPV4_UDP:
> > +		case ICE_FLTR_PTYPE_NONF_IPV4_TCP:
> > +		case ICE_FLTR_PTYPE_NONF_IPV4_SCTP:
> > +			if (flow_type_b ==
> ICE_FLTR_PTYPE_NONF_IPV4_OTHER)
> > +				return true;
> > +			break;
> > +		case ICE_FLTR_PTYPE_NONF_IPV4_OTHER:
> > +			if (flow_type_b ==
> ICE_FLTR_PTYPE_NONF_IPV4_UDP ||
> > +			    flow_type_b ==
> ICE_FLTR_PTYPE_NONF_IPV4_TCP ||
> > +			    flow_type_b ==
> ICE_FLTR_PTYPE_NONF_IPV4_SCTP)
> > +				return true;
> > +			break;
> > +		case ICE_FLTR_PTYPE_NONF_IPV6_UDP:
> > +		case ICE_FLTR_PTYPE_NONF_IPV6_TCP:
> > +		case ICE_FLTR_PTYPE_NONF_IPV6_SCTP:
> > +			if (flow_type_b ==
> ICE_FLTR_PTYPE_NONF_IPV6_OTHER)
> > +				return true;
> > +			break;
> > +		case ICE_FLTR_PTYPE_NONF_IPV6_OTHER:
> > +			if (flow_type_b ==
> ICE_FLTR_PTYPE_NONF_IPV6_UDP ||
> > +			    flow_type_b ==
> ICE_FLTR_PTYPE_NONF_IPV6_TCP ||
> > +			    flow_type_b ==
> ICE_FLTR_PTYPE_NONF_IPV6_SCTP)
> > +				return true;
> > +			break;
> > +		default:
> > +			break;
> > +		}
> > +	}
> > +
> > +	return false;
> > +}
> > +
> >  /**
> >   * ice_vc_fdir_write_flow_prof
> >   * @vf: pointer to the VF structure
> > @@ -677,6 +744,12 @@ ice_vc_fdir_config_input_set(struct ice_vf *vf,
> struct virtchnl_fdir_add *fltr,
> >  	enum ice_fltr_ptype flow;
> >  	int ret;
> >
> > +	ret = ice_vc_fdir_has_prof_conflict(vf, conf);
> > +	if (ret) {
> > +		dev_dbg(dev, "Found flow prof conflict for VF %d\n", vf-
> >vf_id);
> 
> This is just a nit, but generally messages to the log should always
> contain full words and not abbreviations.
> 
> "Found flow profile conflict for VF %d\n"

Will update this, thanks!

> 
> 
> > +		return ret;
> > +	}
> > +
> >  	flow = input->flow_type;
> >  	ret = ice_vc_fdir_alloc_prof(vf, flow);
> >  	if (ret) {

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
