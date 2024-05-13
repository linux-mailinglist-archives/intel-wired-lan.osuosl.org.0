Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 13EF68C3B22
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 May 2024 08:05:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C2162407CA;
	Mon, 13 May 2024 06:05:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aW6HNnFE9lL8; Mon, 13 May 2024 06:05:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E9627407C0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715580316;
	bh=pq7MjkcNbwNnGu0dHgkh4Docs/GjM68zD1/sPbU4EEU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=k9gJekSqBIefqIsboyocLxVk3e2R6n1af+IjzO1aW0u+9plPkD4NKllJAVimP+Ogw
	 hwtyDpXmdI0H6OVFboKvnYY94UG5CkpqT4/OaJAA/7YiVRNC1boxxRNNndEWgKg78E
	 BWuSpZYj9o4RP9P3Nn4FCAhs4B8WtfS59IWkGiVlznAlozC7ARXdCSROWT+v2Zma+o
	 1aufU4rmAzLSB2h6zqDGD0TJbqmaoE4ihYBxEULK9Ny+5XCSAkS5KXQvsLbF4d1lb5
	 LYwXI6MNcJDLg1Y+DG1+8dbDXyl6QMJ0Z9r+23/26pcbOqmx1bny/SvFGokhp2qghs
	 06UREjkNVEJfg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E9627407C0;
	Mon, 13 May 2024 06:05:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0F2D41BF4E3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 06:05:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EE37940148
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 06:05:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C_66DraJp_-1 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 May 2024 06:05:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=sasha.neftin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E82C540111
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E82C540111
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E82C540111
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 06:05:12 +0000 (UTC)
X-CSE-ConnectionGUID: DsldGbjpTbidzoWwb9MC4g==
X-CSE-MsgGUID: FRJ9QtNuR9SJIkWfI9VGBA==
X-IronPort-AV: E=McAfee;i="6600,9927,11071"; a="28987259"
X-IronPort-AV: E=Sophos;i="6.08,157,1712646000"; d="scan'208";a="28987259"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2024 23:05:08 -0700
X-CSE-ConnectionGUID: VcRMOy5+SCCyVqlVIuVEhQ==
X-CSE-MsgGUID: XfkizNgWSWCoJ1g0MT86BQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,157,1712646000"; d="scan'208";a="34915966"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 May 2024 23:05:08 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 12 May 2024 23:05:07 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 12 May 2024 23:05:07 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 12 May 2024 23:05:07 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 12 May 2024 23:05:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HWbPOMBJJjPHEtVczlKRAvgvs1Is7kvYG3MhNUSmD8cnlqn7La6JTGu4Zv942ORymPh0QcRxM+3j+8pdp+svRiKhLzzYz7NnWngtkl5zCombPuq/GNDqh1YOnRc8lp0nc8QgNXKKw6Ru2PD7Lp3IcFFpXIcj0PNCz8ScBKrS2Ke+J9hP9i9FlMsfH6S5y7H1EYCcGnUIt24yYnSLrWOUCrQSEs5cJC+KIG/P8yBkjCAzHrPMlXOfNHv5XG+UsSQ1Kh8YZhxfJ3drPd8O/fd1wVB5x0DoDUXXlWW8nwhlyyM00F/fBiKQKbdqL7GbCf3I8HHG0fM+V5k3Few5EXtzUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pq7MjkcNbwNnGu0dHgkh4Docs/GjM68zD1/sPbU4EEU=;
 b=CswzScJL0zavFukfyfqKKP3oz2OXBE4DeY4BspHQrtFUhpqWCi88T7XwtaPprrpXt6xs9ormavQ1dy7ic0EYiWEgIi429EzC8xkQHIHeI/tm8YlkQvTN3cCcUcxsfgpWfvxGSdVSD+EuTwEagzwoDfkevC/cDh0nWG0pqTNMg6jzdCf0jBjfjEaj46I0P1AjANBFvyVhYNlnbH0ZbD1U/cAtlIUZzgPCsyNI+2bln7cdm/opefVhepnGjutO3fcZzLGtqtFaSr5PT3jF+5Yhg7vVYN4+54qM3MkkHEGJMP8yUruRYU0iJOlEWf8c7j9RXKXN9AXIn98pfHRGMRyv4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6738.namprd11.prod.outlook.com (2603:10b6:303:20c::13)
 by BN9PR11MB5259.namprd11.prod.outlook.com (2603:10b6:408:134::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.55; Mon, 13 May
 2024 06:05:05 +0000
Received: from MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::f174:29be:e20c:113f]) by MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::f174:29be:e20c:113f%4]) with mapi id 15.20.7544.049; Mon, 13 May 2024
 06:05:05 +0000
Message-ID: <d2f49dc7-7218-448c-aea3-d695445c80c7@intel.com>
Date: Mon, 13 May 2024 09:04:57 +0300
User-Agent: Mozilla Thunderbird
To: Andrew Lunn <andrew@lunn.ch>
References: <20240503101836.32755-1-en-wei.wu@canonical.com>
 <83a2c15e-12ef-4a33-a1f1-8801acb78724@lunn.ch>
 <514e990b-50c6-419b-96f2-09c3d04a2fda@intel.com>
 <334396b5-0acc-43f7-b046-30bcdab1b6fb@intel.com>
 <cc58ecfc-53f1-4154-bc38-e73964a59e16@lunn.ch>
 <b288926e-f9d6-48d5-9851-078a6c9912bf@intel.com>
 <5669c185-db96-4ac2-81d5-2198060ae77d@lunn.ch>
Content-Language: en-US
From: Sasha Neftin <sasha.neftin@intel.com>
In-Reply-To: <5669c185-db96-4ac2-81d5-2198060ae77d@lunn.ch>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TLZP290CA0003.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:9::17) To MW4PR11MB6738.namprd11.prod.outlook.com
 (2603:10b6:303:20c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6738:EE_|BN9PR11MB5259:EE_
X-MS-Office365-Filtering-Correlation-Id: 5eea5e2b-42ed-4ce0-39c9-08dc7312a275
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|7416005|366007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bTRMbXRjZDArT3dNaGZFNXJWTmsvSEVDdURpQjVZUk1nVTNJSzdNY21XSzcz?=
 =?utf-8?B?eFp2U1ZtcUJWN0llU1JCL2NXYzZBV1VMdmphY2h5TmVHRjJ0KzZhQmw2UkpN?=
 =?utf-8?B?N2QvNmpBT21xK01iVmZ6U01oMWxHQ083ZDhRdEZ6Q1BXeGptTGpyY2tkZzcw?=
 =?utf-8?B?UHpDNlA3NHZzOU0vRnFmVDRMZStYand6ZitIcGhDajBNK0FZUDNrOUUrcWdL?=
 =?utf-8?B?NVZHMmJoRXZ4M052Z3k3am5qNkI0dGF6L1o0bW1xWDdsaGpjOXd0NGZITkFj?=
 =?utf-8?B?b1FzeE12UWsvZXNoaDkwTDl2R3NlVFY5b0RQc2FCKzlmTGRxa2xPbEh0anlH?=
 =?utf-8?B?U2Y3RkdsRUdaTHpldk16UXpqOWl0MkR0OHhZWUZjWllrOHMxaUtNYmJ3QjF3?=
 =?utf-8?B?TTN6b0lzZU1SMFZCVkZrY0NsV3dVaERiWWhwR2tVbU1OQUpzL3h1WEVabm4r?=
 =?utf-8?B?Ny9URFZDVnE5Qi8yQVVnZmQrdDJIVUhXdTB0bDdiWStZVXdwL1lUeUJmVGxU?=
 =?utf-8?B?MGtLMGFRMndNQkFKeVV2Mmh6Vml0aDcySGdLV0FteDBHaXZMck92eEcyMkxU?=
 =?utf-8?B?VWpmenQ0OFY0dlY5ZmtySlY2Nm5LZnlaa2ZsSzBMRWVhYXRPenhzOWpHK1h4?=
 =?utf-8?B?UWc3WWdKUVBtbGNEblMvRWtYQUpTbGZjWW4yT2Z1dEEzZnZhdGNzVkdmM3Iw?=
 =?utf-8?B?WlNld1pVb0xyS2Z4bFR1N3JwMEo1KzY1d0h3OTJSaFdqdnBETjhhcy8yeGIy?=
 =?utf-8?B?VDBzQTlmZG90ZXhvL1pacnk0VVdObk80NUNNUVpDR3drRDFpWGFSNkt0VDBZ?=
 =?utf-8?B?QUhjV2o3eThoV0pwTS9WQ2I4OHFldmZwRWlJR25CWGljeVdPZmZ1RnEzWU81?=
 =?utf-8?B?WWhZRkdiMWFCRXkwUURXNE40QjdXcnM2RWNWQTErcmQzN2pLRW41aFVaU2RP?=
 =?utf-8?B?ejFJN1dQMDluOHRJV1Z5YWtpUUR3M2puSEZUZ2taUzBvRjBKcmoxZWdXUmp1?=
 =?utf-8?B?UFFrODVPQW43Wk1jZ2kxVGFYUTcrcjRkUlNmaEQ1UkFJWHp2Z2k5bCtnYWdF?=
 =?utf-8?B?U3lFNGdibjU5d3YwR2V6bXU2QTJQQlRkZkdwcWw2K21XSFRRWTRVVnVvSVdq?=
 =?utf-8?B?VThabklFS3ZQYnF6OFpHRjBBL3ViTGVDQ0xkV1hrTHFaL2R1SnFwWnJHejlv?=
 =?utf-8?B?dFA4N2pReDBaRzAzSWpOaXVUOUNYdEdSYnJnMjJ2ZXJmbDYwTi9udng1NDE1?=
 =?utf-8?B?c2U4bDQvTVNBVkFMdVFpS0VJdzMrdVh1bysxdCtJaitHMWR2L21TL21ld2pS?=
 =?utf-8?B?NlpzSGQwdDhmK3VGQkJlTnAvdjBiZTFSU2gzM0hoMVBYMDdjbkxHRUxRc3JU?=
 =?utf-8?B?ZUVzQkMvSlo5OWpWQW90a1dQRm1zeFVyOUcxZVNaVmdNZk9oKzBIZnd4YU5j?=
 =?utf-8?B?ZWlNcjMxNTdUWCttRFZVd09mVitwTFRlY295WHNoRDNRcFZFNFBjcWdUbmtN?=
 =?utf-8?B?Mk9JSTdGOWtIMWlHOEp6YkRIQ1hCV2NDeUdDZG5peU1yTVgrQkFudWN6MkFi?=
 =?utf-8?B?Z1FNeXdVYmtCUzVqUDNkTWttekFpdS9rNEwvYWhuazIwalllNUFuSXdnMDdZ?=
 =?utf-8?B?UlVCcmNtN3JEWTJMYXczdDEwYlJOTjVGcVRNczM1Smsvd2xCSVROSVNleEdY?=
 =?utf-8?B?N0YzdjlCTVpJTHIrSGpZVWVYRDN3VGVzbnhST2tCSFF1Y1h0U0xldERnPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6738.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(7416005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?akh3ZjFGU0ZQZEFtU3lHVEpxVU9NZCt1L1U3amkveWp0YlVFMXBpTWxwMHpE?=
 =?utf-8?B?R1FZeU90Z0lXVEZLMjZienByT0ROTWhsa084cWNxd1BnSWR5QVhtcVJwOHNo?=
 =?utf-8?B?MzFiYkRncitZS05meC9GK0FrMHVPZ3JDeUtjdkI4bzBITEFHQy9nOU9oVktT?=
 =?utf-8?B?RTdjUGt0cUpxQmV1Y3pOYVl4Q2lMK3hDbTVodVJMbm14dEl0cDkwYnE0Skdx?=
 =?utf-8?B?SzZYUlhVcG1aV0pXZUhNN2YrVjRBSVBPeVB2MHYwZmR6QUhMTDVYSHBYZy9G?=
 =?utf-8?B?UEtiMDg1QmRYQkZud09MdmxEVGFyUDVnRG1lWGo3dzJzMVFnMGFYZ01Db2pG?=
 =?utf-8?B?ZXNZNjlHMWNJNUx2Nnhqbm9zMTdZbFhueU90ZDUwQ1dVZVFqdE9lMnNGWDdY?=
 =?utf-8?B?MG1JaGdlaHVLSzAvU25Nd2dzaWxGT1E2dkhzZDR2bHJ5VjBaZHZsV0JaVG9O?=
 =?utf-8?B?WDh6d0F6d0g4ZW1BWVh0Qlh6dmYxdmhhSnBOVnVMd0xJQXZ6R3Y4anpTUTlq?=
 =?utf-8?B?NEswSTdSODF1VWlZSDJYQ3NUb2hkVGRlRkhoNzZUNm1LRnU4UTZ6ZDBST0Vw?=
 =?utf-8?B?bXJRZExIZlhlS0hRRnhTNHdGVmJDTFhjcm9TaFFHOTczanNPZUdtOW90Z21L?=
 =?utf-8?B?dVc5bTV4a1YyTU8rTVFydHhzRUpYTVJOcGVVMlJScndyOUZDNHVVQkVSQ1Nv?=
 =?utf-8?B?c0ZjZ1ZNK0VPYkZYUDJEaG5wZzhjZk9NU3NpcHhQeXhaaHNCMVJIcW5oUytt?=
 =?utf-8?B?dUZHWExQckI3QXNxeXk1VW1qY0dnUTFlQmZXWUEvQ2RQRXdrTWpTNVpEUG5q?=
 =?utf-8?B?bGlqRjRVb2tnMHhTSnRTcERYY3pMdVIzaGwwdXhnMEQvYWdRYUxrTTBZemdL?=
 =?utf-8?B?d2ltVmY1cG9iZU81WGdiNWhLS3JVWitMaWhpeS82VGRIQVB1MFZzM1VVWlhV?=
 =?utf-8?B?VXRxRjBxVU9DTTdXV0tqWGFKMGdRd1JXcVRyc2Z4TEZpRTloKzdSVnZWTHVD?=
 =?utf-8?B?Y0k5b0QrVTBGaWxGcndEcndQdFVEK1dJQmJvZXVadnZqbGsvVk52STIvTHJl?=
 =?utf-8?B?c080Mlh3N0c5ckpyc2Y0MTV0eVBXTTdTc29nbVJHdjJESFpSYUgvU1Noa1ZJ?=
 =?utf-8?B?Qi9Vam1UbUgzK1Bzb3JqejY4b3k1dHExWGg3VGNaWFBzQ3hMa3BzblRqZUNM?=
 =?utf-8?B?SEplUEhXaDJtTVVkY3VGd1dRbXRSb2Z1Y2dGVUJXenhoS29HRVBiV0dweE5z?=
 =?utf-8?B?NDVFVStOcHkyZ3FFb1hHakNZYVZhdDdjeXJwbHczMG9lSVVWbWxISXZNYWc1?=
 =?utf-8?B?YWVVTUlPUVhsOTVWNy9XbTNTanhHNU1URkhDOVpjaSs2V3d2WHJOdTBtKytF?=
 =?utf-8?B?L05oeTF5bStMa2hBbG5INTFNNTN6MEs0aVlOYnhsOTBpV0U5YXZ4RG4ybG11?=
 =?utf-8?B?ajhEZDhWTE83K1ZQbFU0VldRUnI5cTkwcXVWTHJIdDhweUtnTkNCV3FXa1My?=
 =?utf-8?B?VlluUUZOY1dHZDRUcHcrTGM3MXJxVjNQUFowUjVLNVIzRWczOE9TMHhyaG82?=
 =?utf-8?B?QVlRUk10Z3E2dkQ4NE84WkMzSk01amxwYjRlVUNMb2dNcU80QlRNU0R0MUl3?=
 =?utf-8?B?THlaYWtsV0tVZS9EVlFLOFRraVhoM3pMWDZQVTJzTmpPaGExZW02UVlUdE5y?=
 =?utf-8?B?dndzcXBzb1ZTd2l4Ym9WbHEyakZiaGkwOWlNY0lhSGxudDA2V3pUekVRWHFJ?=
 =?utf-8?B?emo3MUt4YmRFQVhoRjVHd3gvbWdTemg5QVZleXBRRFlWTEZza3U4dDRiSmc5?=
 =?utf-8?B?dGgyMmJEdXZOZElBdkl0U3NNMFRFbHNEelJaQ3FuWFZqVHovV1JuVStDOWJo?=
 =?utf-8?B?Y3hnK1ZFQjAzVDlHeStLNmVHV0daa0laSndNa1RGTFgySVVSdG5IaU1sZHY3?=
 =?utf-8?B?SlNjT0lyT0dUT0xCOW84ekZUR2RBOERyWkNzQVlzZnFxTVdqWlZCcUxZdUdj?=
 =?utf-8?B?Y3RoeVB6QU1LZzR1ekZYQXNMaFc1YTNxYUttb3IrSVRqVk1mZmd0TFh3ZEpE?=
 =?utf-8?B?R0JCbDJObmxwdlVXeGs3WTVaOXRkU1NKZmRBTmhhOEdGK0x0bWNxMXllSTlL?=
 =?utf-8?Q?2Jb1ltPAG4QdKRePZ0/IEjoEL?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5eea5e2b-42ed-4ce0-39c9-08dc7312a275
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6738.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 May 2024 06:05:05.4861 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1Lb6PuIPA0WS/5pdQIPb1eLhYwnl5xioj33aEYDofTnsDEDQlolgynBR9y4t7hb1yGIlMy4n+FBQd1w71Bf+3Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5259
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715580313; x=1747116313;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DVseQRxbebmp4BfBWHYtyIacNDtiw12OaRNnBp4ndmU=;
 b=cmkuASDPjju18lEon2q54MvfJsbVSDL31gvwQwVO5BfqtQ+R5XeNtck3
 Mq3kO4YO8Of7sLqCLfP1aiNa4Stgwz7muw0WVr2RWYIwM5E5/+F2hMw9S
 haHdB+zFv94jpQWKMY+W9DCNb9Lt7i1adhVc1S+D93FWCtdu20C67AaiH
 pYQV0lRvMj6AYYbUZWkUTohL9No3nUcdb79LHVAKoLPpnxpfjaLy3mSoA
 58RUDblcYIcwy8RifLtsFVm1TDSLKzj6LS5KGtaxx4FshIY+MnncUK6Ip
 +dETh0lvmzpbYt05HE0jZB/OYx6wSJtmnvKWsdM2INIQbcrH5kdLiXFaJ
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cmkuASDP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 2/2] e1000e: fix link fluctuations
 problem
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
Cc: pabeni@redhat.com, "naamax.meir" <naamax.meir@linux.intel.com>,
 anthony.l.nguyen@intel.com, netdev@vger.kernel.org, rickywu0421@gmail.com,
 linux-kernel@vger.kernel.org, Ricky Wu <en-wei.wu@canonical.com>,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org, "Lifshits,
 Vitaly" <vitaly.lifshits@intel.com>, "Keller, 
 Jacob E" <jacob.e.keller@intel.com>, kuba@kernel.org, "Ruinskiy,
 Dima" <dima.ruinskiy@intel.com>, "Avivi, Amir" <amir.avivi@intel.com>,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 10/05/2024 15:32, Andrew Lunn wrote:
>>> It would be interesting to see what the link partner sees. What does
>>> it think the I219-LM is advertising? Is it advertising 1000BaseT_Half?
>>
>> i219 parts come with LSI PHY. 1000BASE-T half-duplex is not supported.
>> 1000BASET half-duplex not advertised in IEEE 1000BASE-T Control Register 9.
> 
> That is the theory. But in practice? What does the link partner really
> see? I've come across systems which get advertisement wrong. However,
> in that case, i suspect it is the software above the PHY, not the PHY
> itself which was wrong.
> 
> 	Andrew

Not only in the theory. On the link partner IEEE 1000BASE-T Status 
Register - Address 10, Link Partner 1000BASE-T Half-Duplex Capability is 
0. (1000BAS-T HD not advertised). I believe here is some false positive 
indication during the auto-negotiation process.(this is not related to 
the link fluctuation)

Sasha
