Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32DD6731C9A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Jun 2023 17:28:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C3C3C41949;
	Thu, 15 Jun 2023 15:28:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C3C3C41949
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686842893;
	bh=uAWx8h4h9+rxGnBpfjO5E6YWTqoP3Vtqhpjn/Ksm4Wo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Sf3E+gkYSlFryANzUECbMGDfE6+mZ55EDFT9SgMJUZs9OsQ0hMXLxwGXmIuetbgDB
	 W2M9LEZXfOAytXmjv5rCm3JyuZnVMPzXJJaEcCoUaEMy+ykLluBI397HZxc2q8WFGZ
	 02EcanPuiK5roCHijg4mcax+Y4skDsHWHRmGHEw+MfzOEMskBNFnrLG4atvL3UHhKC
	 UewqsAgv3GtAEmmmFSBMFqpbae7V/t0xizkWgPMHn84/d+JK5MMZnEqqfTB+mOU67w
	 E2P7UygwyOUivQLDoSQVWwzL7iMFzQjtrx/7OIWZWeudEQDGsQ7jCbHVh5+xzRWtPG
	 /imv62hKvvOsw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fFaMJv8GCJk0; Thu, 15 Jun 2023 15:28:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9072040166;
	Thu, 15 Jun 2023 15:28:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9072040166
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EEB351BF296
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 15:28:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D082841FD0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 15:28:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D082841FD0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 74HgtENFJa7S for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Jun 2023 15:28:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7DA6A41FDA
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7DA6A41FDA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 15:28:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="343672015"
X-IronPort-AV: E=Sophos;i="6.00,245,1681196400"; d="scan'208";a="343672015"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2023 08:21:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="959242618"
X-IronPort-AV: E=Sophos;i="6.00,245,1681196400"; d="scan'208";a="959242618"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP; 15 Jun 2023 08:21:21 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 15 Jun 2023 08:21:23 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 15 Jun 2023 08:21:23 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 15 Jun 2023 08:21:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oIKUY2ZqPb+Hol/0lO8rWNyB+3D6maXK5c0nkdis3l7q627OcXnJ96J0Zp27bBvm5j1GPn9fK1zghp5gr8VyaUFK45lhNFb0VSPiCV6cltWnJjz2Ixfbbb/ZoJeb13Evnx5xXUkO3Wv2EtW/O55AHnWq1qZrlhtt4mfYb31XSUDx56753mmLJ1fVy8WToaSXiK1eTegbzUhlo2K7rPgs+vpkq5+iHLrbMDvV4AySiEEJoJ4Ic4f8FQw+5zWxxUvU8RPyu1u78d/uCx4J9r7A42T2caBIf/+W1kzKClWqWcerl7xqXao1RhZoBqAV3eWU/LQwT4trYZ1ooz07+xbHhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wnw2sjW7qL2uZMAppCfAVzlY3echi9zrwmivRQpuMsQ=;
 b=LXdhq8BqH0wULSwzC3/8ynto4QO7xkWkGRHoyht869DHE7D83LoAUn1+noUt7gz8REOXmo8PhxvwTuAlRSeDO8tSfi+GGYjiu8G22Prs3QaYu+G+yjB0REbT31YLU53N0e1hJJqoIB1gj3863/9s24nbpRV/e16OK1zckRnuAp2jQFbYqvKmn++3jSJlPM5FSOJGy7py7FCkip4Xfm+IvWt+inAWbR/Cm9srg5vTCv8DE6G1YZkuYY/HNckgY331+LCPfZVf9qvzR5ZlI/yWchON6J7vDuKnpNcX0N6GJcM2K6hmuLYC7Diz9uLuid+ohjJYYI5BGQJ26fzqul7RZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by IA1PR11MB7246.namprd11.prod.outlook.com (2603:10b6:208:42e::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6477.37; Thu, 15 Jun
 2023 15:21:18 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::2134:60a2:3968:7298]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::2134:60a2:3968:7298%2]) with mapi id 15.20.6477.028; Thu, 15 Jun 2023
 15:21:17 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v10 5/5] iavf: fix reset task
 race with iavf_remove()
Thread-Index: AQHZl75CbnPaK/Ml4UyQn2M/7SvvqK+MCmzA
Date: Thu, 15 Jun 2023 15:21:17 +0000
Message-ID: <BL0PR11MB352144AD86763683B23A810C8F5BA@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20230605145226.1222225-1-mateusz.palczewski@intel.com>
 <20230605145226.1222225-6-mateusz.palczewski@intel.com>
In-Reply-To: <20230605145226.1222225-6-mateusz.palczewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|IA1PR11MB7246:EE_
x-ms-office365-filtering-correlation-id: 4d82ce25-2889-4b3a-508e-08db6db42a6b
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +bZQleTF4XkYKsbJORcEMztJEcepKHx2UQkpgNGVFo0LCN6QotBKJ0UwNYh2xeFY33YZGy6KOpHN0fVEJS4v8U6H3ZMdToS6MU5VYM9cPI+JrlNlxixCILlQJ90Wltk79sIyyUZ1D6vnmKuvWm5MhKOrYzgkQqWzkahGRoisTdH+fmPPjntpPvQKPjHe9lIEa/1Ci8YGAjrxoL5KyXqfTgIMZMXRzRG9h9E/ckkic7UiXR8sMZTLfTBNpmZFOmVke8+9MBxOkBoX446vanOnZSt0UJWzNAC3xY6yriHzAc2HamY9FnBhb4YLkV6eRBZ4uW+6cauKkp8H2oW902T+uf5sOxeDFFuJJPpMXouPIvfImvyomkNu2J4JbyfhA7rqhjI3NvmqiWgTjPmemnFPGdBomC2t4O/uRAl/obllRJX+W1QX3EGN/Q/1+FyGdb/Wlg0SHtUKRO9t4sczFHpuGjqbjsJu4ME36srl0Ysd//XPbaTIswujlCewlidz/kenaV8+kb0Fwi2MDjwX1CMqWHYkuMFWZP+0745gBG1zC0UIfYC+0JHndlyKtTRmyt4QFoqfmKsf3OaZ8Vm6fjS04B32Pu1ngPspoiew0XyzFF7XjgYhHLgOPTI2P+ubHCt8
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(39860400002)(136003)(366004)(346002)(396003)(451199021)(38070700005)(2906002)(86362001)(33656002)(52536014)(55016003)(66574015)(7696005)(83380400001)(186003)(6506007)(26005)(53546011)(9686003)(82960400001)(71200400001)(122000001)(110136005)(76116006)(66946007)(66556008)(66446008)(66476007)(4326008)(316002)(38100700002)(64756008)(8676002)(5660300002)(8936002)(41300700001)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UkFMSmFwNC9Ga1hQRlpiUExhOUJSYnoxNi9HRTJucCsrNWpZQy8zUW1adTh3?=
 =?utf-8?B?OC9WVG1JU0RITDlFaU9PSVdxekpSUWV1RWl6a0orVW9YZm9BSUJSZ0lJVHNR?=
 =?utf-8?B?RDMwUnFubXhWUkZSTCtQM0ZLaDFMT3ZSN0ptOFhpUzVxa1JJM3NLbWpVdExZ?=
 =?utf-8?B?emZWZm5UczdqSnhZL0RoWkxhYTNJWEhZVTg1bHRpRUNscjViRndHYXM1Y0E2?=
 =?utf-8?B?RUV1c0E5VW1HN2dpTEN2M3UvdEZ6UU9ZSm11K1BxZGRsSCtScmpwdFlMejFN?=
 =?utf-8?B?Ri8vL3lhdUxMWUxEa2l3OFhvdWtTS1k5UmlVNWplK28rTUlTdktObkNYd3Js?=
 =?utf-8?B?VmJGQmt6YXNtUU9zWUQzZkpvdlIzRmUyZ3RWeE1VMHB0R0ZyQ3NjWXNSaWdX?=
 =?utf-8?B?M1Fqdk8rcWFLNlBEbTluY3JTa0dLbHNaR2RzVkVUMmQrYm5SUGVEaG9tK1JH?=
 =?utf-8?B?ZC8vWHpubEovTmlVZ1BqTkxNdzVrSWVCbENZNVpwTkRFWWJyWVQwUEliNVBJ?=
 =?utf-8?B?SUI5VDQvRkZCcUxBaGNqNGlQVkpaZ0pqT3plUTNWV3RBS2d1MXJvWWcwN1R5?=
 =?utf-8?B?WTUzcDUxanAyV1dWeDdpWFJFbjBQa2JzYkdBVTVMMnI1RlZHRWhDd1U2YjJK?=
 =?utf-8?B?UFh0TG5aWm9xdFVndnB1bGFUM0ZVenIwVThQK3pSQjNTRmhlcDBCbmVQZ29x?=
 =?utf-8?B?RE1uN1UvWERoS3ViQ2s3UmZ6NEJOQ2NaMTlOako4QjdDK1Qvd1BCLzJZWWpK?=
 =?utf-8?B?S1V4YVhCU2xSdkxFTmpCTjBNWnBaOWYyY0xRZ3I4andSdUVDd1VJMVFKckVU?=
 =?utf-8?B?MHVYcjJDQ1gzcHRxZEpQRkw0RE42VlJCR2RVVHlmbnI5RWZSRnA2dXVVbTZC?=
 =?utf-8?B?MlJIT01Dak1uTzVpLzZKTGpCUloxOFdyRUtPaVNDTzROaXpVWVdVbjZGbkZI?=
 =?utf-8?B?VmVkdWRURGplOFg4a01oNkdQSTdrK2ZRNkpYejR5dkVHcGhFa011SmFaWG5m?=
 =?utf-8?B?N2xpS25KLzJSNlYzL3hZd2J0MWlBYWxadS9VQ3JDcGxxd201R0h6eEVDd0p0?=
 =?utf-8?B?Z2xxZWE4TEtDTnNISWhYdHR2M3E4bU5yQkpIdkpGYm8wbFlZenA2blNjR3p5?=
 =?utf-8?B?ZE9MaXJkRjhiTm9qZldnc2Q1dXFyNmx6eVVVQ1lKbGhEOGtLWCtZV2NKOHVS?=
 =?utf-8?B?dnBiMWtUMjFmS204WEJTT2hSUG40YWtzZDBxTkhXb2krZ0Q0cXAydzVlYytU?=
 =?utf-8?B?NDlSVmFKUW5pMHVjVGsyc3g5VkhzdVgxT2J4RlR3aUtpUkw5cnJ3d0lZTGFV?=
 =?utf-8?B?L21oQUNpNDA1dWZ0R1c5SVNITTVyRUlGOXZHbDBoS3k2QUJQMU5VY29PV1NH?=
 =?utf-8?B?MW81RHBoeEdVNGp5bVZnRTVXUnZ1S2JxMUJkN3NoajZBT0tyTVhreG9YcVJJ?=
 =?utf-8?B?UVdVMHI0WVpVM2NCME5XWDZCVTBXanBEaDVoWU50ek1NNTVaYzduNTVmWHZr?=
 =?utf-8?B?SmNkcksycXN6MnlqeWhGUmtiTWUxT3llTVdhTElocDhVaUpZSjI3aWs5b0ln?=
 =?utf-8?B?bnU5MWFPYjdPYlhtU2h5YjBsdWcrMXVlTjZUWHFPTzM3RmhQT1o2K0tQS2w1?=
 =?utf-8?B?aXROYkxwK2J1MHViSmRIeTdSeUJFWWp1aEtLZm5uMkhGa3dOMGNVUzN0ck1C?=
 =?utf-8?B?VHdrckdEVHBIUGNJVkdBenEyazJRb0lFTm9GK1lPNWFpYnFob3BCcTlHY1dS?=
 =?utf-8?B?ajZudEVGNFJoMzRtaDcyKytuems0enBseVd0d2xHUHA3UG5mMWRnUFM5TCtL?=
 =?utf-8?B?V0s1VkplVWpLY2RBS2twQTNRVDM1aVlqUUNhK3o1WVBFYlkwKzNPdnVDTFQr?=
 =?utf-8?B?YjAxajVhTWRKejBXYTY0bTl4L05ab1BQTlZjK2ErdWdrRnB6dWhneURLUXFG?=
 =?utf-8?B?TFdvTnl4SDV1ajUyZ3JzbTNaQmhuYVhHTFRDWC9ZTTVaT1V0VktCa2thdk8v?=
 =?utf-8?B?VzNqK3h5a1gyYzAwVXVNUUhDYkZXMU9WZzdlVEVlL3Nvak16dHFJSm5LL3Jp?=
 =?utf-8?B?QTBUVnNCdFpZN29WOUxJTW9VZFVrNE54WElHSk5UL3lrbjZnNll1UzN1MzJ1?=
 =?utf-8?B?V1dHdnlEZjh2VVZyY0xqZ1VSOGIva2RhbXVkVFV2dXZ3M3FEVkxNV1ZrUEJh?=
 =?utf-8?B?eHc9PQ==?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d82ce25-2889-4b3a-508e-08db6db42a6b
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2023 15:21:17.5754 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Id/XQA2rPM+1Af4EvEC10Nqoti4kO8GGvsUE9TB5yCjaDSfxt02oz6WpbTgXI3qy0o6QfSLGtwQqQo1kybpFEpT+bKo5JuoFYb8qVeFdXHc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7246
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686842885; x=1718378885;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wnw2sjW7qL2uZMAppCfAVzlY3echi9zrwmivRQpuMsQ=;
 b=nQM4hFmOa4IAAxkdTDauRgOxeIY20F7CNtxow5UdGjrS0TV3Y51glUxB
 F3DHq00VE1bU152ux0rhtcjvFs7LEe6edUk4dHhIXbEylIrUVEHEXNcYB
 IGylMIIHBnmcGUv+g9W3xQzMQxRE9y7oRYuwyAusXw29XWVM0OIeoV0I1
 llSS19ePUv3Q8ZccWCXQwERJD3ZFKaIIDb+6r+Gg4YnKgnuPZSfzrTiZW
 y3Pc4WI1JQfuKopDb5UXUqVpIqe0mnqAKox5HZrjcEOngvarUiiJznY3y
 nljELrVOiYcWaCmCwuFazfYhJqVUV0PwXNHbohLk9vKZrpV6qmHXaYwez
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nQM4hFmO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v10 5/5] iavf: fix reset task
 race with iavf_remove()
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
Cc: ivecera <ivecera@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZg0KPiBNYXRldXN6
IFBhbGN6ZXdza2kNCj4gU2VudDogcG9uaWVkemlhxYJlaywgNSBjemVyd2NhIDIwMjMgMTY6NTIN
Cj4gVG86IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnDQo+IENjOiBpdmVjZXJhIDxp
dmVjZXJhQHJlZGhhdC5jb20+DQo+IFN1YmplY3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBp
d2wtbmV0IHYxMCA1LzVdIGlhdmY6IGZpeCByZXNldCB0YXNrIHJhY2Ugd2l0aA0KPiBpYXZmX3Jl
bW92ZSgpDQo+IA0KPiBGcm9tOiBBaG1lZCBaYWtpIDxhaG1lZC56YWtpQGludGVsLmNvbT4NCj4g
DQo+IFRoZSByZXNldCB0YXNrIGlzIGN1cnJlbnRseSBzY2hlZHVsZWQgZnJvbSB0aGUgd2F0Y2hk
b2cgb3IgYWRtaW5xIHRhc2tzLg0KPiBGaXJzdCwgYWxsIGRpcmVjdCBjYWxscyB0byBzY2hlZHVs
ZSB0aGUgcmVzZXQgdGFzayBhcmUgcmVwbGFjZWQgd2l0aCB0aGUNCj4gaWF2Zl9zY2hlZHVsZV9y
ZXNldCgpLCB3aGljaCBpcyBtb2RpZmllZCB0byBhY2NlcHQgdGhlIGZsYWcgc2hvd2luZyB0aGUg
dHlwZQ0KPiBvZiByZXNldC4NCj4gDQo+IFRvIHByZXZlbnQgdGhlIHJlc2V0IHRhc2sgZnJvbSBz
dGFydGluZyBvbmNlIGlhdmZfcmVtb3ZlKCkgc3RhcnRzLCB3ZSBuZWVkDQo+IHRvIGNoZWNrIHRo
ZSBfX0lBVkZfSU5fUkVNT1ZFX1RBU0sgYml0IGJlZm9yZSB3ZSBzY2hlZHVsZSBpdC4gVGhpcyBp
cw0KPiBub3cgZWFzaWx5IGFkZGVkIHRvIGlhdmZfc2NoZWR1bGVfcmVzZXQoKS4NCj4gDQo+IEZp
bmFsbHksIHJlbW92ZSB0aGUgY2hlY2sgZm9yIElBVkZfRkxBR19SRVNFVF9ORUVERUQgaW4gdGhl
IHdhdGNoZG9nDQo+IHRhc2suDQo+IEl0IGlzIHJlZHVuZGFudCBzaW5jZSBhbGwgY2FsbGVycyB3
aG8gc2V0IHRoZSBmbGFnIGltbWVkaWF0ZWx5IHNjaGVkdWxlcyB0aGUNCj4gcmVzZXQgdGFzay4N
Cj4gDQo+IEZpeGVzOiAzY2NkNTRlZjQ0ZWIgKCJpYXZmOiBGaXggaW5pdCBzdGF0ZSBjbG9zdXJl
IG9uIHJlbW92ZSIpDQo+IEZpeGVzOiAxNDc1NmIyYWUyNjUgKCJpYXZmOiBGaXggX19JQVZGX1JF
U0VUVElORyBzdGF0ZSB1c2FnZSIpDQo+IFNpZ25lZC1vZmYtYnk6IEFobWVkIFpha2kgPGFobWVk
Lnpha2lAaW50ZWwuY29tPg0KPiBTaW5nZWQtb2ZmLWJ5OiBNYXRldXN6IFBhbGN6ZXdza2kgPG1h
dGV1c3oucGFsY3pld3NraUBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgdjEwOiBBZGRlZCBwYXRjaCDi
gJhpYXZmOiBmaXggcmVzZXQgdGFzayByYWNlIHdpdGggaWF2Zl9yZW1vdmUoKeKAmQ0KPiAgLS0t
DQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmYuaCAgICAgICAgfCAgMiAr
LQ0KPiAgLi4uL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfZXRodG9vbC5jICAgIHwgIDgg
KystLS0NCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl9tYWluLmMgICB8
IDMyICsrKysrKystLS0tLS0tLS0tLS0NCj4gIC4uLi9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9p
YXZmX3ZpcnRjaG5sLmMgICB8ICAzICstDQo+ICA0IGZpbGVzIGNoYW5nZWQsIDE2IGluc2VydGlv
bnMoKyksIDI5IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2lhdmYvaWF2Zi5oDQo+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWF2Zi9pYXZmLmgNCj4gaW5kZXggZDhmOTgzM2NkMjg4Li5jNjZjMWE2OWJmNjcgMTAwNjQ0DQo+
IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zi5oDQo+ICsrKyBiL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zi5oDQoNClRlc3RlZC1ieTogUmFmYWwg
Um9tYW5vd3NraSA8cmFmYWwucm9tYW5vd3NraUBpbnRlbC5jb20+DQoNCg0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxp
bmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
