Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 815C68C4D0D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 May 2024 09:31:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 33BA260ACF;
	Tue, 14 May 2024 07:31:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id flNmZPuDz-ol; Tue, 14 May 2024 07:31:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1277660ADA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715671907;
	bh=SwgK0uWMHiPiCUjVBK91/qplSBqA0HZIXC0tfJEmjsc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Z5d7l3B3aNpVvmaR9sL+rNEDL0hgjQIIqBeyvYJ1rr0vn4xlpote3QBV7G20B1/vg
	 4Tbgo/rCugu5gedds3cuIGN1PLuCktJK1tlOtGJuLiSR5YrfkfodeCE7X6h/nL58Jd
	 GLP+Y+1oOa7NSx+Gu32q2iz1jbohSnu1TpNdpNS2UTDRGLoqrrGLpSWehY9itNzxbQ
	 VJygJM79L4NRx4EB3sYCvYq3efZAYmNKlmlSikXPmjFG6sDn/hKPo6onRFfGC1pvYq
	 AHATjyy6Rqk9cL/27WQ9ex2zrQ4SPu+2/GBUBsDP7XaeGAjO8OMuDgkCkV63YxklgP
	 5JCdXpCePZEGQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1277660ADA;
	Tue, 14 May 2024 07:31:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AD5F51BF309
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2024 07:31:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 97FE282346
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2024 07:31:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ES29uoZ5_VDN for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 May 2024 07:31:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 882ED8233C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 882ED8233C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 882ED8233C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2024 07:31:40 +0000 (UTC)
X-CSE-ConnectionGUID: GBA81JDVTiqf7lzdaqkMvg==
X-CSE-MsgGUID: /Hi9UgqvQ5mqAndbZhxZTA==
X-IronPort-AV: E=McAfee;i="6600,9927,11072"; a="11582794"
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="11582794"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2024 00:31:39 -0700
X-CSE-ConnectionGUID: dS7kkbP/RCee07kplitlLw==
X-CSE-MsgGUID: d3nCUfq8TzGD8ZZkyin1Mg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="35356001"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 May 2024 00:31:40 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 14 May 2024 00:31:39 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 14 May 2024 00:31:39 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 14 May 2024 00:31:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aV4wSkQWyfDUctEkwaAAPE2x0nF+mPflBaH+I0WuIAP2fpz2WT9x/YM8Z36JUCXhVDEgi1PTuMA1xBR/1jL/S47K777ZVXHoopP3I+ssBSVBbGIvpzP5y82RPPFmkaG6+I8Ro9/UPXvY2wOgD7XEf8cZwYEo+3kPwer+08DanaU2TZJE9boLHNnDNuSllxkdGyz5iITAkU1QPaKqQs6onqvuL6qnSMb5Fscm8F1iF3wlr++P0rtb7AMQGjw2XKf0fgHbKtcI4V/58yCLD618fyYnGLEwkzJw7Hso8OjbhOovIBEajVCWapJBEu0l+pInWDEYSM4iqqPPg6Q3TgVbyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SwgK0uWMHiPiCUjVBK91/qplSBqA0HZIXC0tfJEmjsc=;
 b=D1DhedvELRl3+yV6RPuoNlep+1X69R87TzGVkZGRYHYCvTTJbeG5FHiJBSt73TW3goFswKg/z+XpwHY3h02oHgoJd8dsWZYNQzR9voe2U9csFu+uq3kWU3p08jZHi8O1HcFwnPFwlu+qZAFsHxXcXJGe0BA4ldzHoD2XINbkPC7nk6ojB4VGtfZjNM7Vzmrsc1aX3FGQGqeSBV1DbEo7T8XHf1gjd/l6Kze9XKpSXqtOix4winB2or6ByELY2sA22gIvwgUX3YgQjXhKV/JkPmpr8iM2dAd+fWnLkXNV3lMoh2aDdSjMr4IK47R2VKJzO22JI/ZS88AfHHaPkzR4ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by MW5PR11MB5931.namprd11.prod.outlook.com (2603:10b6:303:198::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.55; Tue, 14 May
 2024 07:31:37 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b%5]) with mapi id 15.20.7544.052; Tue, 14 May 2024
 07:31:36 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [iwl-next v2 3/4] ice: move VSI configuration
 outside repr setup
Thread-Index: AQHan5FZJaSS+5H/S0ClFbOX5PgdDrGWYkLw
Date: Tue, 14 May 2024 07:31:36 +0000
Message-ID: <PH0PR11MB501389F8325C8275E17FDF9096E32@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20240506084653.532111-1-michal.swiatkowski@linux.intel.com>
 <20240506084653.532111-4-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20240506084653.532111-4-michal.swiatkowski@linux.intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|MW5PR11MB5931:EE_
x-ms-office365-filtering-correlation-id: 5f72f2eb-f5fe-419b-9f2e-08dc73e7e346
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|1800799015|376005|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?r99ZDw/EBwE+Y22OS4P1KPC3PS+MYUnUpHqacuekq+QglC3w+P0Nrgpb7jJz?=
 =?us-ascii?Q?3uPcCjfyo6SfsyjVK6aq3JyY8E/yoFRMoG72Je4qyrhyY+uvIzVutlnENsiP?=
 =?us-ascii?Q?6+yTY8Pt0jGvArLGetMORq7dWdE++cRES7CeG4eDI8J+bPQwK/TPtjCnXfml?=
 =?us-ascii?Q?2wK0smXzd+jVORhGcGiR03zM6L90Ea3G+FYuQaN+gJP5fqKOcsITgE4Tn5CU?=
 =?us-ascii?Q?y/M1EKwqdy0xyL/VhOPLfrEZ3d5LaPntRYO9PpQysHyY4A3cqLM/v5DYoiak?=
 =?us-ascii?Q?TWHbEJWSyg9RXflAr/5X/NJfAbROTYn6AN7P4jDLiYgSCMzw5liY2tFhbBov?=
 =?us-ascii?Q?rzYKiCclyhcjrSwLJkYshjgT5YuLX1YPIVwQZKXmRCU9kcoq4kCVEyP0eTXW?=
 =?us-ascii?Q?ZzLbuAkQS6A5u845nrUeDH4L5blMb+WzariBw/UXVyuH70Pk3PRtepuvFSye?=
 =?us-ascii?Q?5/cr+F4asIv6aFBgZCdYAbAp0nQMo12YxmfsZl2Lg3ON2GU8w2ld7Lqw9X8Z?=
 =?us-ascii?Q?5AUFALsUtAtq94ZeHppYnGuD8038mDt6Kzsf7jEqzqrl/1iyztR2/pCN/MUy?=
 =?us-ascii?Q?ouyHAITUSWgkwnH5eJ/k8xpk2+MWOrtfv10CANJDBZHlLRPZCtJQeNzf5EJA?=
 =?us-ascii?Q?hlySKF3CnqFL6L/G4Xq781cXKvTc9C7Hiyh3u5Zlz0cBgrTXnQXE8CeBUnYj?=
 =?us-ascii?Q?XowbmjQ395sgtXJwZhhy/h2A39Mzz7RjefctAaeWGJu2W6fs5OVakZi3nqEr?=
 =?us-ascii?Q?t746nq7we1zDKvIZvaHTO4l8eRMSjMIIy0OOpFOqXL0bO8r9OV9nu5ryWWpf?=
 =?us-ascii?Q?EBe3p2ZNW4QBazMCxeiEIK8ktnZJzEHV6dGvjlKgxaoOLsJublVaHXotcy+D?=
 =?us-ascii?Q?lHTqgyYFzJ0VCqL6SI7ngyY52aG/SxlguVbkTFWvzdWQtGPnxEYCfiJlRqeS?=
 =?us-ascii?Q?DCzoNSRAA0CAIbSzIYdM/J5bFE8TvTY4ePa/MQUik5l0LgMsvqXd233BWQq4?=
 =?us-ascii?Q?+0U85i/nD5hjad8BUGBgv9Eeli1O2MJPDHGaJaY8sSwTcztKPqDh1hShZR7U?=
 =?us-ascii?Q?vujDY9RNc7a/14MzzVEm+ts9E9rVk5+NCZJxhKIjadNxNYYwmJK8UHCYW43D?=
 =?us-ascii?Q?evzH8eebKNXDOVwvWUvYGXT6eMhxlmdbnTgdTFm3TDMhhvOzCv0JJgUHCA1/?=
 =?us-ascii?Q?jd4GidrNXSZYaCw+HSeKL4AX9qqUqPwhZWPaEvJCbhr4r98gYqcQROldYDMi?=
 =?us-ascii?Q?4lcyR9uUjQBWTGuOFpmEe5iUqxh8ZhKJbnJK/N+dZAZIx5RGY9QSSCB+b2Zu?=
 =?us-ascii?Q?13LJigy8LbqTjxHg/6nGt1jXCgQsTJCoc7pF7kQzG+RYVQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?E/6rZByb6rzCLP/08nnSFh4WF5V2gCvQP8E4XNFeVhgT2OWxDu77S+kEi5j+?=
 =?us-ascii?Q?Dt9oXTqcHLHRHF2T6wQZHZCnpYj0+dJu2uSr3JyzZDbrOQe0rXTMeVHOOaJy?=
 =?us-ascii?Q?dl/3+esvgEaQ6g31gFdtwOq+iS/LSg/CxSrDtf+Mcv1kcVHGu0OmsDNvQlsZ?=
 =?us-ascii?Q?ZMdYVrky8qAjTdEZs6gpy6y/QXNCJVNfJa7wujIramAo4JjvRaOXZ9dO60Q0?=
 =?us-ascii?Q?bXanqgJn/NepjVZ3TqstRGTOwXEMr8YCX0aci3RAOvM5ubiYXvAbkDzVKZmP?=
 =?us-ascii?Q?kTkwa4frW0JFBpXEIU0S0cfxR/nZm2QClude5LXokgihnSiTnKSY8n+IV2fh?=
 =?us-ascii?Q?QEwlyrHrJyvzdVjziMCYOX0YPqoC9AhwCKIajZCBBoGxl99qNw1/EMzpfcJl?=
 =?us-ascii?Q?GfWPlIlz98c/lZ+0+8wzzfqEjtSomQJ49Jbj2XJotQ2aDmCTphOD+dzfpW5k?=
 =?us-ascii?Q?luyW1Z6L7WoCEHnBnjKgejjwmKLLlHI+mNAcBWF+qoLdwvH01GpQVi+Y/j/J?=
 =?us-ascii?Q?q6G+IcNAADRRbuJxhKb7vWRc4O8YvVimLr+/hZMhgirBTJ488iBDPL+Wmtb0?=
 =?us-ascii?Q?bSdCz3CXcgs+ru9t7GPy7ZuMFbnUMX+b6lT6GuhT8eD0wNpa6A85DGT+05F8?=
 =?us-ascii?Q?P3YPqHTOFjWGrI+LPxT9ROIZwZygN2UwYo7X7Txk8rOacrw+g/XehEyhdM7E?=
 =?us-ascii?Q?kZo6A3qlnHRkkaT7wc9/wIVSC9t0Cx6BleeQ7U7X1oP8D+d2SOkAPobZzob8?=
 =?us-ascii?Q?pBPqDU2INny5BEbmeaFK/vrgy9+OmbwFQnh2V9eDyfp5i8/ytgRJTaq9ayNh?=
 =?us-ascii?Q?AG6Zp1TONhH9F6wOxAYyShvIvrptBHFQcT3wt9agKnS9DDJ89VE01mmBWGzI?=
 =?us-ascii?Q?dZu5LWmNMZBOYeHZrajTHM5vmdJ0r1TrjT6UbHoN9dXeM6hCCewAU4bvDyAo?=
 =?us-ascii?Q?ADYCHUZ5705WEopLNTk3MKrBWM6DvG6yMpN6k47NKK4ewn9j67P20nubTr+W?=
 =?us-ascii?Q?Te4j09jHLFJ5U2QDB1tDqHGOBHM0NxJhTlfJmRYB2tYJlamZKU1W1rd8mrIO?=
 =?us-ascii?Q?i8SL47Y5+SuIngyglTXMXQUOcGglr0i9JLDNYAKCo9lohNrJZQKw92fzLWYd?=
 =?us-ascii?Q?YpKRRB8v04CUBQuqQeB3KeZz3/13YLqtLXAiyPfNncKKcT7GCLOan6JQqitZ?=
 =?us-ascii?Q?uKYIF7SDbr6O8zIwvpxO3j83focZolJ+DbPyWmkknshgi9WTBdLOChny50O8?=
 =?us-ascii?Q?OXt2P3KWb7VDGawgh1CY64UM9HYz9fD3eMU5xPmhDM//FVyBWyWR2KCA6iJu?=
 =?us-ascii?Q?S+KlX4E5rbDIT0bdff3kJlEySjd2pB6HV09PJBJEAWlGRYw058mrZZhL3vkv?=
 =?us-ascii?Q?1iCL9HYPuRBZXOb/T3vHdVOQ0kZJ+9Zl/QrA5z6eSwgQX2aKGYzGZQjyIPLL?=
 =?us-ascii?Q?6ufkAocIEQZZ36hLIPBTmlJHAlhqFf+RwlXl/MxQ4iyynWj7aPwJz55Vp7As?=
 =?us-ascii?Q?y9+XDFVnK1laeGuzgpvE0aaC9vEWSLjHQvXg5EYdQQqlqTmU46Vk5o3bj6Sl?=
 =?us-ascii?Q?UQ5t+r552gDJ0idwsv3r9LUUTxmGcWB/VaQ09De/ZfxivcZf0gPMxcIqeBFj?=
 =?us-ascii?Q?Sw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f72f2eb-f5fe-419b-9f2e-08dc73e7e346
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2024 07:31:36.7190 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CGuTM06O5C5EAoXGXYcTnHTfrPX5x++TdCsBc+iSIqmV+kbNwCjqkIwVdvVoc/FhnGHHHxcGmY48wO9UwEOz9a7U7ReP32bOoxcpFmnYRxw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5931
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715671900; x=1747207900;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jGCF6EfnL3s3FN7zbzcWgTlAOr6ZU8OMownujBrkRdo=;
 b=dSGgtfQpjZHB9SGf7W1ltK8ZfSLpCnh9lxyJex2ibHFVQCwYgnal89GT
 k7cLhnR7Jk8ptZmmVhQ8ipK2mXFmhVYwGBM9UhzyPsf8ikDVz/+fPqNmj
 +bh6I3z4flR983Fl/RO8A+Get/hJwlqlExG6mdUn5ZOKhVivLdTC5FnJH
 fiQCh7bK+0z6j45FIA7EHxN21nwzy2+BMn6b7DqmkbRCddKOeSb9Q8zUL
 hn1JfgsuaQIt8w+aXEiRieGxiPIlIzC85pi6udrKs2+lZwovaJqeq98ET
 1MtB94rfIsPGTVHGlSrSnfb9ojA1DDqf9XMzZz8XA9TGHD8ZMxzKQA5CC
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dSGgtfQp
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v2 3/4] ice: move VSI configuration
 outside repr setup
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
Cc: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>, "Polchlopek,
 Mateusz" <mateusz.polchlopek@intel.com>, "Samudrala,
 Sridhar" <sridhar.samudrala@intel.com>, "jiri@nvidia.com" <jiri@nvidia.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "shayd@nvidia.com" <shayd@nvidia.com>,
 "pio.raczynski@gmail.com" <pio.raczynski@gmail.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>, "Drewek,
 Wojciech" <wojciech.drewek@intel.com>, "Kubiak, 
 Michal" <michal.kubiak@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Swiatkowski
> Sent: Monday, May 6, 2024 2:17 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: shayd@nvidia.com; Fijalkowski, Maciej <maciej.fijalkowski@intel.com>;
> Samudrala, Sridhar <sridhar.samudrala@intel.com>; Polchlopek, Mateusz
> <mateusz.polchlopek@intel.com>; netdev@vger.kernel.org; jiri@nvidia.com;
> Kubiak, Michal <michal.kubiak@intel.com>; pio.raczynski@gmail.com;
> Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; Drewek, Wojciech
> <wojciech.drewek@intel.com>
> Subject: [Intel-wired-lan] [iwl-next v2 3/4] ice: move VSI configuration
> outside repr setup
>=20
> It is needed because subfunction port representor shouldn't configure the
> source VSI during representor creation.
>=20
> Move the code to separate function and call it only in case the VF port
> representor is being created.
>=20
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_eswitch.c | 55 ++++++++++++++------
> drivers/net/ethernet/intel/ice/ice_eswitch.h | 10 ++++
>  drivers/net/ethernet/intel/ice/ice_repr.c    |  7 +++
>  3 files changed, 57 insertions(+), 15 deletions(-)
>=20
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
