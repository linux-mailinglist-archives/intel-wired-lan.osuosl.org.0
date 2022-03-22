Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 522114E464E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Mar 2022 19:55:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E9F29848D4;
	Tue, 22 Mar 2022 18:55:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tOF7Iuh6-NNn; Tue, 22 Mar 2022 18:55:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AA69B848D5;
	Tue, 22 Mar 2022 18:55:06 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C34B51BF9BA
 for <intel-wired-lan@osuosl.org>; Tue, 22 Mar 2022 18:55:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AE9CD418E7
 for <intel-wired-lan@osuosl.org>; Tue, 22 Mar 2022 18:55:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4rIeWambSSUr for <intel-wired-lan@osuosl.org>;
 Tue, 22 Mar 2022 18:54:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9A39B418D3
 for <intel-wired-lan@osuosl.org>; Tue, 22 Mar 2022 18:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647975299; x=1679511299;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=lsOKrLlELSvjt+JkIjpi3XXs67uEcnKybETBVFBjShY=;
 b=LyCH+QHO34aJldXTu1o8A0HT7At/6ur3OVEswWIvSwIwkgGNsK8gWDpI
 z3RN6yPj6UilprinhgyU2mBijyA8qfMNe7bASerBY6jqYqnAh4IHbPS50
 BbHgXfN0s6wryeLexpGVUBhYFAXy7q8jXwxhDR3CDKEiYppilBqoBMkrd
 i6Zwl9a7cXISAQDX/pZZ4oOsP40A8q6mmtkAR2U7YJyinS+9qnGoDiVEo
 BjOEw/zVE7GtOlBs4zABRnV2y6dDS84t8Od6omwnByqW8/tyG+AvJ+9dt
 jXsWU/lv9A+zlSH1rdd4MEZZ8kLwsHaCNUmcME2AZI0lypSq7qpziE4IE g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10294"; a="255481968"
X-IronPort-AV: E=Sophos;i="5.90,202,1643702400"; d="scan'208";a="255481968"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 11:54:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,202,1643702400"; d="scan'208";a="717076979"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga005.jf.intel.com with ESMTP; 22 Mar 2022 11:54:58 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 22 Mar 2022 11:54:58 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Tue, 22 Mar 2022 11:54:57 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 22 Mar 2022 11:54:57 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Tue, 22 Mar 2022 11:54:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BpaPLy/BJeiWyVjojP2xNO5B1g/QGg6MlGYcZKO1w/lsGeEkgwEoMlyJIEC/Lp3923vDy+lhfF74KMZhIzo0OGCzu1ksIh7N0JBAh8leJh8L7TSHPJgNQYw1o7onjjYl4hO9bgKMNs6DYt4tWx82dhgn1rAn9mvbYQTML1zAs8IEGd/P63PNr5WRcYy5yEFWNHnhQO7d4fZGe1Sij1XOa2KLCAC8Qkp35GqD/UwLwuw7782DbwWS41/pu6xSaSIHWBHuB+0q0JWCyYzg9EHh6uJNKujP9UMod+aRnk1QKZ8gv0V4mWADFeny/eYDlqyXndxeVdT/5fXoi2AiO6zp5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lsOKrLlELSvjt+JkIjpi3XXs67uEcnKybETBVFBjShY=;
 b=PgRM8SL4rdNYznMomIoaB8u7IBAEOi+HyDtp89EBupfjZdF/ji3AcS4mCbS/IReVNzQUdlelET51/qQCPOaX6NvwpGGjkwsKnvJLJ97x3YoCqCs3DNfc1DjyEqDvgjDRNmuaTAnGhzdkzDlU83qK1/VbO4GYpqJuHNRZFjzYpYsI9VbHzKGFY6tJOy4lZWjCIGA/GOyycZb0S/HqbkhUsZzZyGPnUerrZBVZ3WJFJJHDCs69q2RdwCGg478NtzV8QT0F/BqQEsmQrxuCiCWzA+XorKdy0KdSbQvJsYZCrdPobRFvicQN3Y6cnC4ORPcIILeKf9X+neY7md97RNfcYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by CH0PR11MB5523.namprd11.prod.outlook.com (2603:10b6:610:d6::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5102.16; Tue, 22 Mar
 2022 18:54:56 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::8441:e1ac:f3ae:12b8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::8441:e1ac:f3ae:12b8%8]) with mapi id 15.20.5081.023; Tue, 22 Mar 2022
 18:54:55 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] Revert "ice: Hide bus-info in
 ethtool for PRs in switchdev mode"
Thread-Index: AQHYPTK6u1E98F+Kjk2t/brsnjqftKzJ7ZWAgAHMmQCAAAgQgA==
Date: Tue, 22 Mar 2022 18:54:55 +0000
Message-ID: <4b47ebf2-9c29-4436-e674-611561a5802e@intel.com>
References: <20220321144731.3935-1-marcin.szycik@linux.intel.com>
 <a7dcc837-e24e-86d6-059c-416ad3357fe0@molgen.mpg.de>
 <a79731e9-4cbe-8827-f706-b69687f4d376@intel.com>
In-Reply-To: <a79731e9-4cbe-8827-f706-b69687f4d376@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 61b2fa4b-5209-4449-7669-08da0c3574dc
x-ms-traffictypediagnostic: CH0PR11MB5523:EE_
x-microsoft-antispam-prvs: <CH0PR11MB5523457E59C45AC1803BB87AD6179@CH0PR11MB5523.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mKykXFpLr+j8J2X8NgTbeM9XZ1ZeF8nZGLsh8vkpQSgdHqOmCK3Gv13ectvvSH8oI5SYNgR2M9q2GI/opXiYPytCiKjT6z3x3psm5pUUoQvZfhdHQiYeOrRZryHjVi6KD4+TdLrg40XS0sQLlPhXQLeEMj7KDQU5IiNXAh/idWdHY9iYBUu3iIa4w+9mq4LwsVoTKlSolP9eMCXeuGKZKcJE1cwzcBB41uJYRrJ52S5UjcNNVJn5ca9aWDPBnQvEELtuI65YRxgNm4b+E12tSGIR31OdytM3mgHgoV49TGDlWj59+rIAa6eHpcOXX1B0mUdJsFep9MMlp2Nu0wmfL1l2CK95maFASjv+uTjGWbiD2FU1SSzdgCSs78DcSUY6ipIJA5iOU+S9AYluRSUBwMgT4FzVZAW6zk5FJ9u/FSn1xu68f68aUfVQI8mM3oM91gvQ9qSZKSy4Rfr6yjUCw45WXGakWYIcIKGxM18FDVS1NCEi1bcV34SQJxpbjJNH/iWRg/q9G86y8HPr+nGm62tb/nlcr8FthxAMlWDP53D84hLlfYdVTTLLS4QGwGN10MaFKbKoErNA898h+oBasBx4ufDJV55AGJxiBsnW9f7W3qCsTiU+I79XKXpHUiAoftngSJDSsLSbcgWhAEroGtadzuQSUDYT247RA+yAZ2u3+fSDptVr/pQ6L5quhQQeZVCBIM6MjWl8jnCKWMoTfRwsPLZOW1j6TfUOQvW8IshNi8B0bwZ0fe/FZmUQSguLJcBldDhtTmT9LEyXZWlthTx5rGzkLke7PzA4pcAZmtn57CC+Vli8Yy7j+qWOZWNII/BQa2zUAQGMaeLIi+Hz5wTzAmcVh7teuK29xvAjcBQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(36756003)(2906002)(122000001)(82960400001)(508600001)(966005)(71200400001)(6486002)(316002)(6916009)(66946007)(66556008)(66476007)(66446008)(64756008)(8676002)(76116006)(83380400001)(8936002)(5660300002)(6506007)(6512007)(53546011)(26005)(186003)(2616005)(38100700002)(31696002)(86362001)(38070700005)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V01JbTRxK1ltMGtkVmk5SDY5bW1vRmk2N2Nqb2hxdXBCTENIcWtJWnhNZ2RI?=
 =?utf-8?B?eURhQ09yWWxEdWd6dlFJYXUzL1JyQmFHL0gzd1lDRnBLa1cvblkvcndUODZF?=
 =?utf-8?B?U1psaGhCbzFuSXQrZ3BmWmZMRnczKzJRNmxueU1UR3pPUUU1SUQ0SUYydEFh?=
 =?utf-8?B?Y2JRQ2pWcFhvLytyLy9pUkhnZlNYKzRncExweHh0K01pdk9EaUx3MWJOdkdJ?=
 =?utf-8?B?dTFMU0M3cjMwRWdwaWoydHJlV3I4U2NBeUN3dVZnTGFTNFR6TG12aFQvUW96?=
 =?utf-8?B?cDRNVEswcE13NkJRckxVRk90SmwyOCtaSUlTQWtIZmVVTTdFWHN4TDVRZ2xN?=
 =?utf-8?B?R0hGcW1lQzJDWEYvbEJubjJ3R3JNOWhmOTNjUmhaRlA0cW5ITExNWVgvQUMx?=
 =?utf-8?B?UmROVGQ5eElFaDhkNXZuSS9yMjBtZGtaVXh5eFB4NTRhMjZrdlZqa1FDL3lX?=
 =?utf-8?B?U1drdVJodUQ4bTlyMWNXTldvRmZiZEdadHgxLzViUHUrNTBpVG1qaTNCMTRn?=
 =?utf-8?B?a0NCMUxvMWFuaGlqSjVneTgwWm9ObE5QUExSRlFpYmtUVCtOV1NjUWlhcGFv?=
 =?utf-8?B?R0pvNk04dGxodzZha20vVFM5RW9UcTRQMGFmTzBKNTFoWGxwejNjU0g3ZmJ1?=
 =?utf-8?B?YklrQnpyR1VDSVp6K2E5TkpFWEp3RzFoL1owSEtTYjkwY1hZYTlxRVBSS2RK?=
 =?utf-8?B?QlRFRVNBZWZGYk1yb1R1MFZQYkVuR0VuUlRaRXJ0SzF2b3djcXk1SmxkelMv?=
 =?utf-8?B?SkN2L3B5SHJzQ1BRTjZIT202YzdPUURhemk2cHZyZnAvK3M2Smg4TUpOMEZo?=
 =?utf-8?B?aWxzNFNBSmNWdjBPZ3FwWGxqdkZsTzY0ZmNCK1VyUmZSUlkvNFJ0T1B2RlpN?=
 =?utf-8?B?eEhzeFVLRDR1UURmMS9XM0pQb0ovQVMvWGtTMXV3eVI0WFovYWhNRlJER0Va?=
 =?utf-8?B?ZndXMnpHOG1tcEdTM0hJTElaOU9IUkU1WkxmZi9JaEtET1RnSkJiOEF6eUVH?=
 =?utf-8?B?UkhHVkloVHZKNEdnOCtSNkdLMnVWMm1za1cvODVhYjQ5NDk0bnpCNDJUMnFN?=
 =?utf-8?B?RjRtd0ptdzJmSFl6NjZNTWUxL0N3VXhMbUI4R3FiQmlBMG5hWDhjTmJBRnBW?=
 =?utf-8?B?ajhYWkV2ZFlpUWYvOTU5YTF6WkhtNGtkRjY5ODNzTjE5RWlsTVAyQnF2UHdv?=
 =?utf-8?B?VXhyUUdTQ0w4NnlpQVJsUDNoR0pVRVFkN2dPTm5LbDNNUzBPTlNSenJyTEpD?=
 =?utf-8?B?aXJ1UWQ4WUpFbTl0WWE5ZHBTZ3VTd3dObytwbVZuajhDTVZyZjg5Q2ZkUUZ3?=
 =?utf-8?B?NGVkQkE4c2dUb1F5eWVXMzBodWdtdjJ5MnVwZFlhRW16bUpseFlVd0FteGlu?=
 =?utf-8?B?WjByZXU4T0s2eFY2ZVRJL0xQL2NRdFZWOHZWY2lUdkRFZ2RuTC9ScTlOUVhL?=
 =?utf-8?B?Wkg4L01vcGRlNHhhQndzZkJQVzRSTWxuSzZNYWJsSzRydnhVQnVTMnFGTmxR?=
 =?utf-8?B?YmlqN3p0MHRWYmxSbU5nTmpWSHpLSGprSk0yZGQ2RXNzOFVhaUNNVDBZbjhL?=
 =?utf-8?B?ZUdEQ3dmMitSK1BQY1RKM1IwLzE5c2JNeGwrYXI4cUZDaEF4WHI4ckgzcm43?=
 =?utf-8?B?WENwUS8zZ3RhVnFYV2J5a01QaW55MCtWNGRSdCt6M2thUEpDT3BEZmVmbSty?=
 =?utf-8?B?dDBSMXoyUnVhM3M0ZndtRGFhTGViNVNpSnRINkd6REdML0FsNFNsOWRqRVFD?=
 =?utf-8?B?QzVkL1UvUGN3NU1wRkU2SlFYODgzM1FKdmJvYjdyMHNoK2xNZFdxOFI5TDAz?=
 =?utf-8?B?REJkd2tnQzFZejc2ajJYOS8rLzNqK2hLbHN4OGRwbngwdk9FN0FjTGd1bjJl?=
 =?utf-8?B?eVZpUnJMTGRtblg5SDFGRll1ZDJoOEMxN3hPQ09oVEh4T2hmN3N3UHM4U2Rq?=
 =?utf-8?Q?S3v3hn2U/DuGSf4Tc0bfifV3rduS7Lnr?=
Content-ID: <7B762921ED847947A555EC2796EC61C1@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 61b2fa4b-5209-4449-7669-08da0c3574dc
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Mar 2022 18:54:55.8261 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oLEYKqJbDggLyWj14s0wehAeFucEWMmJSjKVgOv7Of6pTP18S1TzQR3mNlDuP+84yl0h0pWLxBZTpQykRbIF5D5ii7TtuehJfDnkLqXfh44=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5523
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next] Revert "ice: Hide bus-info
 in ethtool for PRs in switchdev mode"
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

T24gMy8yMi8yMDIyIDExOjI2IEFNLCBLZWxsZXIsIEphY29iIEUgd3JvdGU6DQo+IE9uIDMvMjEv
MjAyMiA3OjU3IEFNLCBQYXVsIE1lbnplbCB3cm90ZToNCj4+IERlYXIgTWFyY2luLA0KPj4NCj4+
DQo+PiBBbSAyMS4wMy4yMiB1bSAxNTo0NyBzY2hyaWViIE1hcmNpbiBTenljaWs6DQo+Pj4gVGhp
cyByZXZlcnRzIGNvbW1pdCBiZmFhYmE5OWU2ODBiZjgyYmYyY2JmNjk4NjZjM2YzNzQzNGZmNzY2
Lg0KPj4+DQo+Pj4gQ29tbWl0IGJmYWFiYTk5ZTY4MCAoImljZTogSGlkZSBidXMtaW5mbyBpbiBl
dGh0b29sIGZvciBQUnMgaW4gc3dpdGNoZGV2DQo+Pj4gbW9kZSIpIHdhcyBhIHdvcmthcm91bmQg
Zm9yIGxzaHcgdG9vbCBkaXNwbGF5aW5nIGluY29ycmVjdA0KPj4+IGRlc2NyaXB0aW9ucyBmb3Ig
cG9ydCByZXByZXNlbnRvcnMgYW5kIFBGIGluIHN3aXRjaGRldiBtb2RlLiBOb3cgdGhlIGlzc3Vl
DQo+Pj4gaGFzIGJlZW4gZml4ZWQgaW4gdGhlIGxzaHcgdG9vbCBpdHNlbGYgWzFdLg0KPj4+DQo+
Pj4gWzFdIGh0dHBzOi8vZXppeC5vcmcvc3JjL3BrZy9sc2h3L2NvbW1pdC85YmY0ZTRjOWMxDQo+
Pg0KPj4gQXMgeW91IGNhbm5vdCBrbm93IHdoYXQgbHNodyB2ZXJzaW9uIHVzZXJzIGhhdmUgaW5z
dGFsbGVkLCBJIGFtIGFmcmFpZCANCj4+IHRoZSB3b3JrYXJvdW5kIChwYXJ0IG9mIExpbnV4IDUu
MTYuIGFuZCA1LjE3KSBoYXMgdG8gc3RheSBpbiB0aGUgTGludXggDQo+PiBrZXJuZWwgdG8gbm90
IHZpb2xhdGUgTGludXjigJkgbm8tcmVncmVzc2lvbiBwb2xpY3kuDQo+Pg0KPj4gV2hhdCBhcmUg
dGhlIGRvd25zaWRlcyBvZiBrZWVwaW5nIHRoZSB3b3JrYXJvdW5kIGFyb3VuZD8NCj4+DQo+IA0K
PiANCj4gSSB1bmRlcnN0YW5kIHdhbnRpbmcgdG8gYXZvaWQgYnJlYWtpbmcgdXNlcnNwYWNlLiBI
b3dldmVyLCBJIHRoaW5rIGl0cw0KPiBpbXBvcnRhbnQgdG8gdW5kZXJzdGFuZCB0aGUgY29udGV4
dCBoZXJlLg0KPiANCj4gbHNodyB3YXMgbWFraW5nIGFuIGluY29ycmVjdCBhc3N1bXB0aW9uIGFi
b3V0IGhvdyBuZXRkZXZzIHRpZSB0byBQQ0kNCj4gZGV2aWNlcy4gVGhpcyBhc3N1bXB0aW9uIGNh
dXNlZCBhIGJ1ZyB3aGVyZSByZXByZXNlbnRvciBuZXRkZXZzIHdvdWxkDQo+IGdldCBtaXMtbmFt
ZWQgYnkgdGhlIHV0aWxpdHksIGFuZCB0aGVuIHRoZSByZWFsIG5ldGRldiB3b3VsZCBnZXQgYQ0K
PiBnZW5lcmljIG5hbWUuDQo+IA0KPiBUaGlzIGlzIGFraW4gdG8gYSB1c2Vyc3BhY2UgcHJvZ3Jh
bSByZWFkaW5nIHNvbWUgZGF0YSByZXBvcnRlZCBieSBrZXJuZWwNCj4gYW5kIG1pc2ludGVycHJl
dGluZyBpdC4gSXQncyBzaW1wbHkgYSBidWcgaW4gdGhlIGFwcGxpY2F0aW9uLg0KPiANCj4gVGhl
IGljZSBkcml2ZXIgd2FzIGNoYW5nZWQgdG8gc3RvcCByZXBvcnRpbmcgdGhlIFBDSSBidXMgaW5m
byB3aXRoIGENCj4gcmVwcmVzZW50b3IuIFRoaXMgaXRzZWxmIGlzIGFuIGFjdHVhbCByZWdyZXNz
aW9uIGluIGZ1bmN0aW9uYWxpdHk6DQo+IFdpdGhvdXQgdGhpcyBpbmZvcm1hdGlvbiBpdCBpc24n
dCBwb3NzaWJsZSBmb3IgdXNlcnNwYWNlIHRvIGtub3cgd2hpY2gNCj4gUENJIGRldmljZSB0aGlz
IHJlcHJlc2VudG9yIGJlbG9uZ3MgdG8uDQo+IA0KPiBJbiBwYXJ0aWN1bGFyLCBpZiB0aGUgYXBw
cm9wcmlhdGUgaW5mb3JtYXRpb24gaXMgYXZhaWxhYmxlIGFuZCBwcm92aWRlZCwNCj4gdXNlciBz
cGFjZSB3aWxsIGdlbmVyYWxseSByZW5hbWUgdGhlc2UgZGV2aWNlczoNCj4gDQo+IHdpdGhvdXQg
bGlua2luZyAoaS5lLiB3aXRoIGtlZXBpbmcgdGhlIHdvcmthcm91bmQ6DQo+IGV0aDANCj4gDQo+
IHdpdGggbGlua2luZyAoaS5lLiByZXZlcnRpbmcgdGhpcyB3b3JrIGFyb3VuZCk6DQo+IGVucDI0
czBmMG5wZjB2ZjANCj4gDQo+IFRoZSBmYWN0IHRoYXQgd2UgYXJlbid0IHByb3ZpZGluZyB0aGlz
IGJ1cyBpbmZvcm1hdGlvbiBpcyB0byBtZSB0aGUNCj4gYWN0dWFsIHJlZ3Jlc3Npb24sIGFuZCBy
ZW1vdmluZyB0aGlzIHdvcmthcm91bmQgZml4ZXMgaXQuDQo+IA0KPiBJZiB0aGUgd29ya2Fyb3Vu
ZCBkaWQgbm90IGhhdmUgc3VjaCBzaWRlIGVmZmVjdHMsIEkgd291bGQgYWdyZWUgdGhhdCBpdA0K
PiB3b3VsZCBiZSBwcmVmZXJhYmxlIHRvIGtlZXAgaXQuIEhvd2V2ZXIsIEkgYmVsaWV2ZSB0aGF0
IHRoZSBjb3JyZWN0IHZpZXcNCj4gb2YgdGhlIHNpdHVhdGlvbiBpcyB0aGF0IHRoZSBvcmlnaW5h
bCBmaXggd2FzIGEgcmVncmVzc2lvbiBpbiBiZWhhdmlvciwNCj4gYW5kIHRoYXQgd2UgYXJlIGZp
eGluZyB0aGF0IHJlZ3Jlc3Npb24gYnkgcmV2ZXJ0aW5nIHRoaXMuDQo+IA0KPiBUaGlzIHNob3Vs
ZCBiZSBtYWRlIG1vcmUgZXhwbGljaXQgaW4gdGhlIGNvbW1pdCBtZXNzYWdlIHNvIHRoYXQgaXRz
DQo+IGNsZWFyIHdoYXQgd2UncmUgYWN0dWFsbHkgZml4aW5nLg0KPiANCg0KSSBhcG9sb2dpemUu
IEkgd2FzIHNvbWV3aGF0IGNvbmZ1c2VkIGFzIEkgaGFkIHRob3VnaHQgdGhpcyBwYXRjaA0KaW5j
bHVkZWQgYSBjaGFuZ2UgdG8gYWxzbyBjYWxsIFNFVF9ORVRERVZfREVWIGFzIHdlbGwuIFRoYXQg
aXMgcmVxdWlyZWQNCmluIG9yZGVyIGZvciB0aGUgbmV0ZGV2IHJlbmFtaW5nIHRvIHdvcmsgcHJv
cGVybHkuIFRoaXMgd2FzIGJlaW5nDQpkaXNjdXNzZWQgaW50ZXJuYWxseSBhbmQgSSBtaXhlZCB1
cCB0aGUgcGF0Y2hlcy4NCg0KSG93ZXZlciwgZG9pbmcgdGhhdCBicmVha3MgbHNodyBpbiB0aGUg
c2FtZSB3YXkgdGhhdCByZXZlcnRpbmcgdGhpcw0Kd29ya2Fyb3VuZCB3b3VsZC4gSWYgd2UgZG9u
J3QgaW5jbHVkZSBTRVRfTkVUREVWX0RFViwgd2UgZW5kIHVwIHdpdGhvdXQNCnRoZSBuaWNlIHJl
cHJlc2VudG9yIG5hbWVzLg0KDQpTbyB0aGUgd2F5IEkgc2VlIGl0Og0KDQpXZSBkaXNjb3ZlcmVk
IHRoZSBidWcgaW4gbHNodywgYW5kIGhhZCBhIHdvcmthcm91bmQgaW4gaWNlICh3aGljaA0KYXJn
dWFibHkgd2Ugc2hvdWxkbid0IGhhdmUgZG9uZSBhdCBhbGwsIGJ1dCBhbGFzIGl0cyBiZWVuIGRv
bmUpLiBUaGlzDQp3b3JrYXJvdW5kIHJlbW92ZXMgdGhlIGJ1cyBpbmZvcm1hdGlvbiBmcm9tIGV0
aHRvb2wgYW5kIHRoaXMgaGlkZXMgdGhlDQpmYWN0IHRoYXQgdGhlIHJlcHJlc2VudG9yIGRldmlj
ZSBpcyBsaW5rZWQgdG8gdGhhdCBQQ0kgZGV2aWNlLg0KDQpXZSBhbHNvIGhhdmVuJ3QgeWV0IGNh
bGxlZCBTRVRfTkVUREVWX0RFViwgd2hpY2ggYWxzbyBsaW5rcyB0aGUNCm5ldGRldmljZSB0byB0
aGUgUENJIGRldmljZS4NCg0KVGhlIHNhbWUgYnVnIGluIGxzaHcgY2F1c2VzIGl0IHRvIG1pcy1h
c3NpZ24gdGhlIG5hbWUgb2YgdGhlIGRldmljZXMNCnJlZ2FyZGxlc3Mgb2Ygd2hldGhlciB3ZSBp
bmNsdWRlIHRoYXQgaW5mbyBmcm9tIGV0aHRvb2wgb3IgZnJvbQ0KU0VUX05FVERFVl9ERVYuDQoN
Ckhvd2V2ZXIsIGlmIHdlICpkb24ndCogaW5jbHVkZSBTRVRfTkVUREVWX0RFViBpbiB0aGUgZHJp
dmVyLCB3ZSBlbmQgdXANCndpdGggdGhlIHNpdHVhdGlvbiBJIGRlc2NyaWJlZCBhYm92ZTogd2Ug
Z2V0IHBvb3IgZGV2aWNlIG5hbWVzIGluc3RlYWQNCm9mIHRoZSBtb3JlIHVzZWZ1bCBhbHRuYW1l
cyBzY2hlbWUgd2hpY2ggYWxpZ25zIHdpdGggdGhlIFBGIG5hbWUgc2NoZW1lDQphbmQgc2ltaWxh
ci4NCg0KSSBiZWxpZXZlIGxhY2sgb2YgU0VUX05FVERFVl9SRUcgaXMgYSBtb3JlIHNpZ25pZmlj
YW50IHJlZ3Jlc3Npb24gYW5kDQpsYWNrIG9mIGZ1bmN0aW9uYWxpdHkgdGhhbiBhIG1pbm9yIGRp
c3BsYXkgYnVnIGluIGxzaHcgdGhhdCBpcyBhbHJlYWR5DQpmaXhlZC4NCg0KVGh1cywgSSB0aGlu
ayB3ZSBzaG91bGQgcmVtb3ZlIHRoaXMgd29ya2Fyb3VuZCAqYW5kKiBpbmNsdWRlIHRoZSBmaXgg
dG8NCmNhbGwgU0VUX05FVEVERVZfREVWLg0KDQpXZSBtYXkgbmVlZCB0byBnZXQgc29tZSBvcGlu
aW9uIG9uIG90aGVyIHZlbmRvcnMgYW5kIGltcGxlbWVudGF0aW9ucy4NCkZyb20gbXkgdW5kZXJz
dGFuZGluZyBvdGhlciBkZXZpY2UgdmVuZG9ycyBjYWxsIFNFVF9ORVRERVZfREVWIGZvciB0aGVp
cg0KcmVwcmVzZW50b3JzIGFscmVhZHkuDQoNCkkgaG9wZSB0aGlzIGNsYXJpZmllcyBteSBzdGF0
ZW1lbnRzIGFib3ZlIGFuZCByZW1vdmVzIHRoZSBjb25mdXNpb24uDQoNClBlcmhhcHMgd2Ugc2hv
dWxkIHN1Ym1pdCBib3RoIGNoYW5nZXMgdG9nZXRoZXIgaW4gYSBzZXJpZXMgd2l0aCB0aGlzDQpj
b250ZXh0IGluIHRoZSBjb21taXQgbWVzc2FnZT8NCg0KPj4NCj4+IEtpbmQgcmVnYXJkcywNCj4+
DQo+PiBQYXVsDQo+Pg0KPj4NCj4+PiBTaWduZWQtb2ZmLWJ5OiBNYXJjaW4gU3p5Y2lrIDxtYXJj
aW4uc3p5Y2lrQGxpbnV4LmludGVsLmNvbT4NCj4+PiAtLS0NCj4+PiAgIGRyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2ljZS9pY2VfZXRodG9vbC5jIHwgOCArKystLS0tLQ0KPj4+ICAgMSBmaWxl
IGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkNCj4+Pg0KPj4+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2V0aHRvb2wuYyBiL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZXRodG9vbC5jDQo+Pj4gaW5kZXggMjRj
ZGE3ZTFmOTE2Li40NzZiZDFjODNjODcgMTAwNjQ0DQo+Pj4gLS0tIGEvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWNlL2ljZV9ldGh0b29sLmMNCj4+PiArKysgYi9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pY2UvaWNlX2V0aHRvb2wuYw0KPj4+IEBAIC0xOTAsMTkgKzE5MCwxNyBAQCBf
X2ljZV9nZXRfZHJ2aW5mbyhzdHJ1Y3QgbmV0X2RldmljZSAqbmV0ZGV2LCBzdHJ1Y3QgZXRodG9v
bF9kcnZpbmZvICpkcnZpbmZvLA0KPj4+ICAgCXNucHJpbnRmKGRydmluZm8tPmZ3X3ZlcnNpb24s
IHNpemVvZihkcnZpbmZvLT5md192ZXJzaW9uKSwNCj4+PiAgIAkJICIleC4lMDJ4IDB4JXggJWQu
JWQuJWQiLCBudm0tPm1ham9yLCBudm0tPm1pbm9yLA0KPj4+ICAgCQkgbnZtLT5lZXRyYWNrLCBv
cm9tLT5tYWpvciwgb3JvbS0+YnVpbGQsIG9yb20tPnBhdGNoKTsNCj4+PiArDQo+Pj4gKwlzdHJz
Y3B5KGRydmluZm8tPmJ1c19pbmZvLCBwY2lfbmFtZShwZi0+cGRldiksDQo+Pj4gKwkJc2l6ZW9m
KGRydmluZm8tPmJ1c19pbmZvKSk7DQo+Pj4gICB9DQo+Pj4gICANCj4+PiAgIHN0YXRpYyB2b2lk
DQo+Pj4gICBpY2VfZ2V0X2RydmluZm8oc3RydWN0IG5ldF9kZXZpY2UgKm5ldGRldiwgc3RydWN0
IGV0aHRvb2xfZHJ2aW5mbyAqZHJ2aW5mbykNCj4+PiAgIHsNCj4+PiAgIAlzdHJ1Y3QgaWNlX25l
dGRldl9wcml2ICpucCA9IG5ldGRldl9wcml2KG5ldGRldik7DQo+Pj4gLQlzdHJ1Y3QgaWNlX3Bm
ICpwZiA9IG5wLT52c2ktPmJhY2s7DQo+Pj4gICANCj4+PiAgIAlfX2ljZV9nZXRfZHJ2aW5mbyhu
ZXRkZXYsIGRydmluZm8sIG5wLT52c2kpOw0KPj4+IC0NCj4+PiAtCXN0cnNjcHkoZHJ2aW5mby0+
YnVzX2luZm8sIHBjaV9uYW1lKHBmLT5wZGV2KSwNCj4+PiAtCQlzaXplb2YoZHJ2aW5mby0+YnVz
X2luZm8pKTsNCj4+PiAtDQo+Pj4gICAJZHJ2aW5mby0+bl9wcml2X2ZsYWdzID0gSUNFX1BSSVZf
RkxBR19BUlJBWV9TSVpFOw0KPj4+ICAgfQ0KPj4+ICAgDQo+PiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPj4gSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcg
bGlzdA0KPj4gSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcNCj4+IGh0dHBzOi8vbGlzdHMub3N1
b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbg0KPiANCj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gSW50ZWwtd2lyZWQtbGFu
IG1haWxpbmcgbGlzdA0KPiBJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZw0KPiBodHRwczovL2xp
c3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4NCg0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFu
IG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9z
dW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
