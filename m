Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 61112B50FF7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Sep 2025 09:48:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C066960651;
	Wed, 10 Sep 2025 07:48:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OdmDl9guprrs; Wed, 10 Sep 2025 07:48:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3C9DF607E0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757490483;
	bh=kcb050ffmuWHe37YZXWVXaDxq0pUCQvlqqlaoMDKC00=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BTPIApgWK4xV6L2xxfOHMX+OeHZKbIk7/kEes1kjn2g9ZM0a8CRu/Uc8kHz0mLxkI
	 7ceNPJYkfk5X0YTFaSdh9u3U3aAGlulTiZjvP5yI5UfEZEQB8UncAUtmCI0DtAIV1Y
	 s5ZOpwaAOOa0vY4wcExeFBJ0YfbHTp05JuNGPXkesMobLKQzROZHZKR+WRh3pYW2bH
	 9zSox+5zWXxmytgnzU2HgBwimayBfCs6ebIS8xJxF9QNYUZAEppCJT8XrvE/XOveEm
	 cSgl0l3nIt+b7o8uYchxMUoEMhwyanqrINCBNrBO2Agleowl1PpoHLFAjY1g/b80/1
	 M+UfjXdWRCSzA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3C9DF607E0;
	Wed, 10 Sep 2025 07:48:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 48D21234
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Sep 2025 07:48:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3AA7360683
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Sep 2025 07:48:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id m3gYgCdrCW6K for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Sep 2025 07:48:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=priyax.singh@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 91C7260651
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 91C7260651
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 91C7260651
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Sep 2025 07:48:01 +0000 (UTC)
X-CSE-ConnectionGUID: ke8EV0prQk+UA5V5fDjpRA==
X-CSE-MsgGUID: UEGNKzcUSGuM3Z0FWB0peQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="59740428"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="59740428"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2025 00:47:53 -0700
X-CSE-ConnectionGUID: HI0vzLVxSvWMbOVWJFwg1w==
X-CSE-MsgGUID: lsJSEgyqQCiJIs826guFeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,253,1751266800"; d="scan'208";a="173164901"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2025 00:47:53 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 10 Sep 2025 00:47:53 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 10 Sep 2025 00:47:53 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (40.107.96.64) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 10 Sep 2025 00:47:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=j/olB9aVWqbLs6e1TiDkyBcrZbgYYY0RKfe0x9K+mWRc9ctWXdwNIsBzL3i2bcs5Frd+qCa//PzZp+ZRIYfCRmwx2IYUSaBcQVlmOa9cwEXU5bZFZGqNmzPLf4NwLNpM3/eihVmqfVT4eJM1UyZDePNBNpAXyZkJ+uymfExV7NocNUNictgY4qhb+JnCtAcOYYb0QaBh+2sbGXe5/e1h1envvk8O+ee/auKn/n8f2gJhlF9EimGvR3A2ePayGSuVynkQ02KPWqEgMCzcqBaOptroQ9P1z9fkF0LZDU89IisE1MH5Gkp7e2dUHvYEE6ZO1wyrowyCv067Yu6vLGrpPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kcb050ffmuWHe37YZXWVXaDxq0pUCQvlqqlaoMDKC00=;
 b=BqwVpyFYwPZ3akGj0HUrWJRBuH/eWMIlyz1udfJ6OAgmT4YsFPoVoTZ+wttQqK8kEWc8I2OPTeiu4u2xalUxYT2nBvDtwKR9pxBfIfijfkmdProkjRX2qQeVU9clK6gSJh3xsSh0TNiLbjzMGV1oWDrRJ/41XM9b4r8NLpdKm8EJ+y3ntM0uqeefdgbsto8JiOuMctuEOOJofprteT8d/DuXqWyveZOr1bEzbzJnqRFkmTcH0OeZEG9iC/DryCVKityHVq7mzYsLYflGJDYoTNHjgHfHpaBs04L8cNqksifg2Wb9sWvbmJphkmkLyDYYZfOLgq5hhncxxDalpPVv/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH3PPF67C992ECC.namprd11.prod.outlook.com
 (2603:10b6:518:1::d28) by DM4PR11MB6213.namprd11.prod.outlook.com
 (2603:10b6:8:ae::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.22; Wed, 10 Sep
 2025 07:47:46 +0000
Received: from PH3PPF67C992ECC.namprd11.prod.outlook.com
 ([fe80::8435:3b39:7eee:480]) by PH3PPF67C992ECC.namprd11.prod.outlook.com
 ([fe80::8435:3b39:7eee:480%8]) with mapi id 15.20.9094.021; Wed, 10 Sep 2025
 07:47:45 +0000
From: "Singh, PriyaX" <priyax.singh@intel.com>
To: "intel-wired-lan-bounces@osuosl.org" <intel-wired-lan-bounces@osuosl.org>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2] ice: Remove deprecated
 ice_lag_move_new_vf_nodes() call
Thread-Index: AQHcF3CuvLa6rF3p6U60f0CCW/L+vbSMGhRQgAAELOA=
Date: Wed, 10 Sep 2025 07:47:45 +0000
Message-ID: <PH3PPF67C992ECCBD4D4EC818176852AB62910EA@PH3PPF67C992ECC.namprd11.prod.outlook.com>
References: <20250827083423.566307-1-david.m.ertman@intel.com>
 <PH0PR11MB501370813026A1D192EDB59B960EA@PH0PR11MB5013.namprd11.prod.outlook.com>
In-Reply-To: <PH0PR11MB501370813026A1D192EDB59B960EA@PH0PR11MB5013.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH3PPF67C992ECC:EE_|DM4PR11MB6213:EE_
x-ms-office365-filtering-correlation-id: 94c672e5-f768-4278-4a47-08ddf03e54e4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?itQGo0wf6HEshLCZzMDME1Hl+3A+z1FJ8dsZHRqUnRz/NWzDS1Q/77uNMYlr?=
 =?us-ascii?Q?rJtfZIGOUt0vVpYo7Cvuzs3FPy2cSxobIsiKnSpGVtlqjPsf27jqwf7+9VkI?=
 =?us-ascii?Q?ufYyajOxGdbwzHGN1jD1gz7KmfHzWEVLFWPbtKn5wSJI6+Sz8p5/IdZC/QTN?=
 =?us-ascii?Q?5Xxaa230rodBJkKyv+SQ5yaZ9lT0hmxney36PEC1F25jac8t7I7sIA2Ka/5a?=
 =?us-ascii?Q?QCr3g5P5/dSh3QrcU8zz/XbPNiE5CECWEKVkQSrkjeEtwPc/ZsY2UyLIxq11?=
 =?us-ascii?Q?ZPdYO+wgXmzCC32TA6ZwHbhpM/ViWZL6tmq4seSceGvxHsUCM4P+iXc//Ml0?=
 =?us-ascii?Q?KX6BxE19rdyOUTUmGQVPRVMQKuGGlOV8mNWn4ly0D6MTg8UA9d8kU0lJJqKd?=
 =?us-ascii?Q?1aqGN4NDw+cu7pLLNYt3YWGQE3ycWobi20YlAzJDb55WkWL0syDPq418Sawt?=
 =?us-ascii?Q?yszBMg7+cFisZZrZOc2K1S1qQKyCYPTJbxL1IXNU1bEGN1FpDo4iHQLDpSF/?=
 =?us-ascii?Q?4UmjAw6YlfgmBdfd3Bw2o36f2ltdXuyge7FoGSUi8OOEgy5UUa3+SMWtFFaN?=
 =?us-ascii?Q?xiCLzxJXKCFazob2TLerwgzNayXeiwNVi2KmxgMxK6plObR77leiywRhEzaU?=
 =?us-ascii?Q?RrJN4Hv+J+XV17SeRbN2kGWsEp97T+CbPUE1+i6a5nbkVs54ED5hogpyBGYl?=
 =?us-ascii?Q?znANGs19X9Dl40eCyE/mbzoVJfwwljaM9YC+vJ+VJRSrEUjrOV8Vo/ebHDVi?=
 =?us-ascii?Q?xrkZPJAPa2sU3nSEnnjMA4uePCqvNnbb0JMcKCNmoU1wPRBRdDFCbv9HBKQH?=
 =?us-ascii?Q?9g4blWSVU52T/UM4KJ4cmYNVtbSy5oEeHKzsaOfLHC4Kv8qiH7iJ20Ccf4ex?=
 =?us-ascii?Q?j0SxVPiM+BLeZZbkvmVIzv0qUkZeiPhyvn6/IUEijHd9x9OxoG28ZVaealST?=
 =?us-ascii?Q?pcPyqBjT2ye3coHPDaitssHWFDwY27Th7JT/R3KgB7Qf1qXli5bTTE2Ivdp6?=
 =?us-ascii?Q?XnSruI4JqMdyWDjCbOPvA2VdxSfj1zrTavsOG+Ch3cByw1gpREgUXzsUWTjd?=
 =?us-ascii?Q?0QkMFOZxe07HwZl2eaR8Ztgs3lusSGB8qcjT+BbEkjYrGYuD0iFKjn8eY8bB?=
 =?us-ascii?Q?gQBsIxbB93TWcyAeyZVjq8nHLNPBywSpk2L8X/qyBlfyr9cuDBuYUh+ahhh8?=
 =?us-ascii?Q?eSTD7GXaSdj4RRteIBQ3lLdFM3odXE4EAeZFf+44r06MhNgR9TnA2Qgq/oEo?=
 =?us-ascii?Q?hBdMyTAXclGIlARgujboGCjFWRGFmDmqnePjqBksmpvOPEXjrqEGuY7TUQ+M?=
 =?us-ascii?Q?pxXTGBkq5khI5OF74zieKbmxFhYtloiB0NrfeP8j/rq+iKfF1UlMjMdhjkll?=
 =?us-ascii?Q?qtwptXengafaiOssA41ekt/yoj0hDrKcJSGh7UuRhKHZnXgeGp8uwiorm6k1?=
 =?us-ascii?Q?hBBrq27zMOkfsmjZvd/tYR7M4v3DGPl+PuAYsEhQkKehrSsvbSA5P3AhYCXh?=
 =?us-ascii?Q?hb9bBNDkAdsXpDA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH3PPF67C992ECC.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zb8EFSomoAOevDvXJt1lyEyYIMqPNkqNT+p1uHj78LFrywA7BYwLyNhxQFAz?=
 =?us-ascii?Q?dFsG02j2aZLzgcVDgPu5HcjpT57fTzZrXeF05ejjQLliXzxPTd2sbYeFUt32?=
 =?us-ascii?Q?yjtdHWkRqLlG8kjA24PubvivlBFldiVJ2jyGzNrT2Upt8KGjvVR+zdK+2+/t?=
 =?us-ascii?Q?coWA5d7HJsuNSi36E7iN6xJkulQYzSxzV8h4RAzc4GYd2s3JmeqDzoGpV5HR?=
 =?us-ascii?Q?D+XaBDYI4kkfwRW61TpDwGKOkh5BVVGObRyxLYZtheWAGsNWPdF/EqYu95na?=
 =?us-ascii?Q?d0Z9iO3EeQCAwgHmj+0tKKccjhXYWMpWR/rlqODZwrH/ZX5/kYwtgRj/Fv6b?=
 =?us-ascii?Q?pFQFZo+PAZyhvEDvlOhi5hWpQJW6uCg9dLqkYaTKfDFOMBodVks+bSLpwXmU?=
 =?us-ascii?Q?m/ZnWZfTIMl7YHFfcNvs5KtnJ1z0P49lswUAl6kHY6G/gnQ9IhEuycRllRLk?=
 =?us-ascii?Q?WgE2JP+cTtZ1LXMFBGY5jmmxRNv/LCLgHTur6LHCIbKV6c/qjlbjrA0bLLmd?=
 =?us-ascii?Q?bKeuFRgnAIL+Z/mkaH3c3v1SazJov+dniNR08SXxRsp06SFuhcTRKR2ovMSF?=
 =?us-ascii?Q?I5VrZLbWMA64UCP2vUJCQX989CjdM0VSaDYTlWKQiwlywtUOaiLTrFG4Jpcu?=
 =?us-ascii?Q?YtAKlDQCZs4maZigzqddc9pfH9tUkbkkU/2Z8o7EjH3I832WJL2WI6/Z1cJs?=
 =?us-ascii?Q?p8H3c4yAWX9eJ/9qLv+M61S2e/B5B37XJ2VBd+9x8yYykdn8lPMU9pvwVdKH?=
 =?us-ascii?Q?AJa1R0WqFUBNzHJxa1L4ygdg9Yw7MhItoamSQrTcroKzbS3rVfF1HRt3k6ZW?=
 =?us-ascii?Q?M6sFenXmVf979kw5xyDxTdGak6u2xg/72zIvri/3xNsJQ/HVqDi0aFCpXZCS?=
 =?us-ascii?Q?PnoKoot8rYcJMtLhXFe5FLs+nMHB6bJTHbxh2RwSTnGL2s+E0349ZcpzfL8c?=
 =?us-ascii?Q?AYD315EBYNE7hxRq9Asz8GcWJQFQGozOX1P9DpirmBRc7CQb7+z0eBjQpXYG?=
 =?us-ascii?Q?fkIMkjfYei5ytpJrQTv41hllpAyKjYQ7LGw8++iUiETMDDB0kCAqUlgonmIr?=
 =?us-ascii?Q?0OzbkG2Zz3wkbmSM4OwYWN28e2U61EHo3p7Vt6dkrA1pNOHoa6XYf9/uLDnU?=
 =?us-ascii?Q?jYJj8LqIAka0WWu8nGBkIDvNcEJeBhxnljnCRc66Gw82e6UGJUPEOhTyTBrh?=
 =?us-ascii?Q?Uc0UdbcR4fOgxAz2xO5KngU2pmC8gLhU/KH2Z9r1Q3Tp8ydR9wfm9ntSsrS9?=
 =?us-ascii?Q?rYHl9jtY9cKpHNpnQITxPke0cLy698mE6MvJpHEzyyOeR4PN6XCVNTWv47qf?=
 =?us-ascii?Q?/xZKDOX3YrASvO5DwxlB46lQkE24VR506AOh6bZvKBZsttvMgWxPKZTNDsPw?=
 =?us-ascii?Q?Y9eMMXiu/FAJM1+8gdHvgIWdAp1i4+LZg0sJLhcflv7ChEKhOayQo7uVnUwb?=
 =?us-ascii?Q?7Q0Hxtr1GZaRtuect4pxvD5He5twNFOF/K9yM4EDP9RHhbj8LuyUD83NXZTB?=
 =?us-ascii?Q?TzQzoN/VjZAZjhUMyC1nGPqnFSWaV3sdoliXljVCuVrLcgDV022w4EdFgw4J?=
 =?us-ascii?Q?91TIBc4LvO0taYxYLhSfPsbkx5uLQN4i5gy+sjaW?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH3PPF67C992ECC.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 94c672e5-f768-4278-4a47-08ddf03e54e4
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Sep 2025 07:47:45.9143 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: J9uGeWXmnQNwyDXt2H3kGQefufJNR9VeD+XIkXENzHRwbs8tPVcojmq8FCInp8ZbVT6uf1FJVILxBtPDkJWwag==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6213
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757490481; x=1789026481;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hAcypIvELcmY4lWvGh0Cv4emlWgxbpvCKhn0zn4G7Po=;
 b=Y9GQ0H9YK2m2FhGw7iEHG6MiAKckOILtttMbYdGdNpH7yMEdo02N6+a/
 G5j6AvgXKpDJ8cUDKCp9u07OhBjvGsP4/8eefkw3Nx1bX664R1Ii5Rw+T
 UTPk5OfMQbJoW8Eb9vmb7RnQLeCr/HKecjKNCqbevcAcPIUohYcB63/z4
 AbOSKdwSeqEIrgt/imlXZPBQxzH9kxy1LOTv4nYYbmnSZH300TQJeOUt2
 r5eAoe5NdKo3np6VGH9AFi8I3T5QptmelISSHv42B4u58WQJht/tDaP1r
 yshwpBPX3cQnYLKSF5bRbfEnio9yQJi7ybwohXWQ3NBd7YHVLgv6gMH0t
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Y9GQ0H9Y
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: Remove deprecated
 ice_lag_move_new_vf_nodes() call
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, Paul Menzel <pmenzel@molgen.mpg.de>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> Moving the code to handle the LAG part of a VF reset to helper functions
> deprecated the function ice_lag_move_new_vf_nodes().
> The cleanup missed a call to this function in the error path of
> ice_vc_cfg_qs_msg().
>=20
> In the case that would end in the error path, a NULL pointer would be
> encountered due to the empty list of netdevs for members of the aggregate=
.
>=20
> Remove the unnecessary call to ice_lag_move_new_vf_nodes(), and since
> this is the only call to this function, remove the function as well.
>=20
> Fixes: 351d8d8ab6af ("ice: breakout common LAG code into helpers")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
> This goes to -next as the code is not yet present in -net
> ---
>  drivers/net/ethernet/intel/ice/ice_lag.c     | 55 --------------------
>  drivers/net/ethernet/intel/ice/ice_lag.h     |  1 -
>  drivers/net/ethernet/intel/ice/virt/queues.c |  2 -
>  3 files changed, 58 deletions(-)

Tested-by: Priya Singh <priyax.singh@intel.com>
