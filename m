Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50F8681BBEF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Dec 2023 17:28:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CB4054353C;
	Thu, 21 Dec 2023 16:28:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CB4054353C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703176105;
	bh=mOSmuAJXcFEYvox9Z5FR1gQQ5GcDUfklgvcjpQ1ad/E=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uIOhSRo7uaAYYJALlbIQgmIstz7VndITK7EojfEsIJQaOfrLzuTxkBLoNfBRniUPG
	 jgJ/nPUicnIhFujZHb26jLdNZvHNP7ySs41uO8UMEtt56tk36FQSTYColgvO2eBuwg
	 ISJk6wq0y316nK4y5fy3cSUaum0XQ2mWYjXi5JOxbiAThdrxfFzGLQmAD1Ap8l92Bx
	 1l4EqygFwGBimF10tBrqpWwVfR2JOyd2M7wjZBWbkZ1/FLbILlb+lplKkEvFnf1mft
	 NzPBSYsxQMOWV42d3K+29sBP5afg7o1YJV7DqbQd0hZA9Ll1htb+EsDoZCWZcNPX6K
	 Au192CKuMYdIw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CoCcjmTYNXf7; Thu, 21 Dec 2023 16:28:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 64254437F3;
	Thu, 21 Dec 2023 16:28:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 64254437F3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8C3721BF33F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Dec 2023 16:28:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6196560A74
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Dec 2023 16:28:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6196560A74
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TVyCDhg-ONcO for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Dec 2023 16:28:17 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5FA98606C6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Dec 2023 16:28:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5FA98606C6
X-IronPort-AV: E=McAfee;i="6600,9927,10931"; a="2824974"
X-IronPort-AV: E=Sophos;i="6.04,293,1695711600"; 
   d="scan'208";a="2824974"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2023 08:28:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,293,1695711600"; d="scan'208";a="18736565"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Dec 2023 08:28:14 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 21 Dec 2023 08:28:13 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 21 Dec 2023 08:28:07 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 21 Dec 2023 08:28:07 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 21 Dec 2023 08:27:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AP6wFVT20nfNvCLOD32AYJdbQO45GQGu5vhYvGUFFS+GTZuXDT+XS8CaT5HOhNzgEPFYChd7rccbcAp1wNEQDn6ZvM0npz4ofOk7hCxRE44Rl3X9vFrvMPMLEzythXfPaGlmWZSx+qAW0gA2F6JcrJrpOU+b/We6Zyqo03mrOFEV0h1AeCDd9hrt34U5nvLknD0R8e8oqWyo5J18SPXcQVncRmXUkdkmRqmZOVdG51h1KLZyWEVpjFiTkysgaSBzy0rGFLgm/TWkOuQ8ocEsKQfwhZICCFxIJeAUTBreFReCDBIy7rI/o2tJwHibyHLs99PU2Uc+2TA8B7uf00InDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tVPr9i77WZuneZB5K6Qlzp/SbUlLVjLh1SqRv9bFBCY=;
 b=Slx8qxd6Rn2M0ntQfh0hoLv1/l9+WeEGwpGYQoF/HLuVTy/EJ7tBrPkAmCG7RkZuPCRamJsSvjS7ZJClH3ta82Kdyk6XxeNev9lhJap4Tj2ZolEmkB+1D/U/VNwlMUAyusa57mghEzrsYj1uDbC+/yvhpp7DX5Lrt5xUN8RVxkVt6m8/mOigOuMe6VSBdnnfyQOzf+MK0dSzLYAYJRjgvsyGIDQeMxjR1X9XjAWGcm51VMj5qJOTsqDa7YvOwOUCXSKUp5sEp+PD2f1YFQ+iC0VAgCmDwGKeH6E0ewHitHDdSJxohUo9FxhLfTSaZCdXuej4K7yZ1zwZYW1/LT4XtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 by DM4PR11MB7253.namprd11.prod.outlook.com (2603:10b6:8:10f::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7113.21; Thu, 21 Dec
 2023 16:27:57 +0000
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::c9fc:2945:7b2f:70e3]) by SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::c9fc:2945:7b2f:70e3%7]) with mapi id 15.20.7113.016; Thu, 21 Dec 2023
 16:27:57 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Simon Horman <horms@kernel.org>
Thread-Topic: [PATCH iwl-next v2] i40e: add trace events related to SFP module
 IOCTLs
Thread-Index: AQHaM2tpJvNoV6cnrEWztO/s98DNR7Cz38SAgAAOiMA=
Date: Thu, 21 Dec 2023 16:27:57 +0000
Message-ID: <SJ0PR11MB5866F6433F3140AEE2A23A07E595A@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <20231220173837.3326983-1-aleksandr.loktionov@intel.com>
 <20231221153519.GB1056991@kernel.org>
In-Reply-To: <20231221153519.GB1056991@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5866:EE_|DM4PR11MB7253:EE_
x-ms-office365-filtering-correlation-id: f18144a1-0499-4081-0d48-08dc0241ca56
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ml1L7AnCbfi3Hs4Rg/1fSgKu4XziiTYNiAgt6vM6vRvprMHezJ9L84T8PHZpZ/YxhFV7wzef0rym/TphwS2Qaukc/Qe94YkR266KJUEOQ1U6zDZi8sD/Q4PSZc7uTBVQ1XBVYBl+2yEUDKQzNVqdgW12o+iCdOQ4xchdgcUVvJhof+XjsqTnX+fGD+JTWFA0MDtp/J5krjBSHWV5q1G2voytBMU8v5QKTO5bwom0CisWw4P92TDWVDHqgH20jZQjX3JBxmgau5czhEukbDqdWbPgJZtXortlNd5iN6b00AmQYrhvZSlYbIPxrOWQyxIJ0pU8rQCJtEbd0RLZd9W2FZEWINZ+/8bXqTxAUpw1n3x/6OTGUXziNjR9zU6rfHUkcYzZkueDICC2S08fNadtTbDLrrsNqgcKR++ev2lNSH0vO29i8G8Uvi+y+XFTk109Lw6RRDAH/F8GRokuP9wGEn+OUyEWSzkv2xDyV6KacSrI3l1mgX0SUOm54ng/BB//+U5OUt1OxyQ8bGGPE6frDz1SDW9LbDjq00kpKYjlCxraKi1ebefWx8ZcSNcu6qIygc5dv7TAfLDG1lay4GNblxMEF53mbvaJajwCGUOyGBRYkgQZQ/eJ29bYyXACZeIu
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5866.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(136003)(366004)(396003)(39860400002)(376002)(230922051799003)(451199024)(186009)(1800799012)(64100799003)(122000001)(86362001)(82960400001)(38100700002)(41300700001)(52536014)(4326008)(6506007)(53546011)(9686003)(8676002)(8936002)(107886003)(5660300002)(26005)(33656002)(478600001)(66946007)(76116006)(64756008)(66446008)(66556008)(54906003)(66476007)(316002)(6916009)(55016003)(71200400001)(7696005)(38070700009)(2906002)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UHdzb0I1YWpuMlZXcEFXa2pHRVhSWUZRSTlrYkRRTjc5WlN5ejk2aXExTFB0?=
 =?utf-8?B?SCtKNFZJNk5WY0tNL2JKWWlqSmNMY1pabFBPaEtXZnN1SExMTHgzZUVPZmd3?=
 =?utf-8?B?OEN2VjRLbUVrWXMwNVJkcWE4RjdCOUxvWWEvSmYrb0ZYdEVLemtQdjJKZFY5?=
 =?utf-8?B?NndJUHcwYnM1Z2x1MjB4WVA3VERUZ1BHUi9UUUh5eDhRZnk1bHFTZHZPWmsr?=
 =?utf-8?B?WVlyRnFuWXc4TGcrWS9oa25uN1p6cStnMEtRWVlRbVBaQXBIYTA1YXVLU2ho?=
 =?utf-8?B?TmI0Q2FSaWtEa3JpOEhhRnMwWmduVmEzclNQRUhPbUFtZnFDRHNrSlIvNm1F?=
 =?utf-8?B?S3lQTng4cGc4Nmc5SkdXMnNseXZ4TS8wd1hPQ2Vya216bW1wVTdWZGFaV1RG?=
 =?utf-8?B?VG5iUXZ3T0R4RExtbzdoWVEzTExPM0owTkVYTC90OWV5aUJESVZSd2p3MWtm?=
 =?utf-8?B?bU1kbWFGTkRYWGxoNFVZdkUyWmpTc1RaRTBqeXZnOWxtdWVLQWlFM3ZheXB2?=
 =?utf-8?B?R3E4bWhGTzFZQjJQQ2R2akFCT1NhejR0WFNPZWxhQzd4MUd0ZmxjdFRTNkJk?=
 =?utf-8?B?VXJCdjc3VGFsODRRNlFTOC8wUnRmR1JRVUkyblJSZmhqbEwyeUdoZExESE1D?=
 =?utf-8?B?N2FFRFFoNlZJMVoyTkV4SjNXVmdRR3ZlaGRyTlVHWjdDazZZWlJ3M3AxajNp?=
 =?utf-8?B?bURVT2Zxdk9yRk84V1FQa1NLOUx1dkJybFFaVmU0SlpONlhCQTIrU0YwaS85?=
 =?utf-8?B?OWlaRDJ5VjlwNHlTOUpWWUtrelIvMmkwbVQvN3pucWRBUzdxQStnV3JTY0ZZ?=
 =?utf-8?B?Q1JaU2dvUGkrSDg5SEVHOFhvMm05YUhva1pjU0M2SXk2azE2L20zRTdzQ2lk?=
 =?utf-8?B?d3cxdTVVVVczYk5DcDE1TjRHQklER25lbFYvRHV5M0dKS2pLc0ZueXY3dTVh?=
 =?utf-8?B?djdQc25DdTFIb2xnWEpKZHE2L1RuTXdKM3c5bHdlODZjWUxpakxmZnlsMjBO?=
 =?utf-8?B?Mk14bW11dmVlVGNCbWNjRUE3TjYreDZReHhTZkxzS3R6and5WHp6bkp0Um5Z?=
 =?utf-8?B?Z1RxWnorRzc1eHFqRjQ4c2xvTCtqclZSbWxNMklUUTkvOHRVeE5YVmJjWG9P?=
 =?utf-8?B?WWhCVXk3NVVIbnpsenlNS2RnaUVjUno5c2xtY0h6WXV0NTdRQ3RYdGEyNlZv?=
 =?utf-8?B?TmtPL1pFQXZGMnk1L2lkZU5jUHlRMGx6eS9KVC9YZmV5b3c5akF2OUowOGRR?=
 =?utf-8?B?NSttb1FrZlg4YzcxUXFuLy9xSzdlMzgxaVdXYVlVYnZ3a2w3dHF6Mm1rWEFF?=
 =?utf-8?B?WDRKT1dLbk1ML2NBNzUrRUhHQUxMTisxdVVObUYrakhpcEIvNytXY3ZJdDBR?=
 =?utf-8?B?TlQrSXpnUUFnckRud1ZqK0RJdGUxdXV6WUtTZXRpQ1ZiWTFlREhRa1cxVkZl?=
 =?utf-8?B?eEEzaU9uVEpEbEZBVmZMcGdRQjA1eHEwd21HWGd4Vkp3TnF4ZkY0bHVyYVNl?=
 =?utf-8?B?Sm9kK1lKV3pPRGk2MitrQXNKSXlUNG93eC9lVUFBL2hrcVN2OFVndkE4UGo4?=
 =?utf-8?B?bmhOKzZQQ29ZcVowQVZBSXpUNVNEQTRxTHpEMjEzSmtDZTRVUHN5Q0tmTVVW?=
 =?utf-8?B?UzFlV1NKa1oyTS9pUm9oTjF5VEthbnRITzN5c2lxMTZxQk9qRzBYZXhjNkZn?=
 =?utf-8?B?cHEzRHNDUGpWNkdiOUVPU2JyVjlJTEs3YVdwN0ZaZ0Yva2J0Nlo3U3dkdDdy?=
 =?utf-8?B?ajFjZ0tJa05IVDFRcnhQZDBHRFBoOHJlekJ0ekttcFdDWlBjZjBZRVNkaHUx?=
 =?utf-8?B?QWp0NmdBbmliQW50bG9wNHl1bDhMVUVLeXJyU3ZlaFFDTjV0cUdBelBsbEZm?=
 =?utf-8?B?L1MreDJnbFQ1bDdhT2pnaVBXMG9LWC9QN0dyaG1hbkhudy9EZ1d1a0V3cFBl?=
 =?utf-8?B?YXlCN2QxdkgxTFl4K2FsUmxjYTlDMjNqTXQyOW9NZ1dCOUpMOGZhTVZmZTZm?=
 =?utf-8?B?c1hUWUJNSE5UT29mNVNjKzJIWkQxdDFqN0REWWRZSVJTTkFTTU9LUG1XNm9D?=
 =?utf-8?B?SkZVUnVtTjN4N2pkSlc5WEtOWit4SkY5TDdraWZnWC9wZEZMVHlXdC90b213?=
 =?utf-8?B?WW9CazJIS2U3ZnZDY2daR00zOERmMWlrVHY5LzFjdHp1ZnR4eUoycHVvRm80?=
 =?utf-8?B?WlE9PQ==?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5866.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f18144a1-0499-4081-0d48-08dc0241ca56
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Dec 2023 16:27:57.0310 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LYHTrz5KOMaDxH+yYDG5OF770Yvpe4ODZo5zUW/vJIdjPCIZiDc5qHJZb653ZxCrN/60R3B96dCXfpMJZCXp8KaG/mdGSl9K7n0hZqSgw3g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7253
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703176097; x=1734712097;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tVPr9i77WZuneZB5K6Qlzp/SbUlLVjLh1SqRv9bFBCY=;
 b=QRrJPt6ejPAKMn45Rqr/5c4hwrfoYdZ9pdjegELC46+nxG+2UUFMSDdp
 szBE2Ig0iUNlcJWuaaLcnw3MAPMOuAjFmn9oB36RQSGFrxy51J28KTxqh
 9F8QSsi5JxDH5xU9BkpgVwrtiKDAbO0+Wy5vXk1y3k0ZRP2E8QJX6O71l
 6XqZA9HtZk0upg1A5QPgFhq7eYewKvSFMm5yRwadgycJFcIrQqDJzjfao
 vtkKSuc+deLOIHhPSqMdT2pzQN/nsAOt6uZwfPcdj9/t7M5mC5BNLiNig
 fYqs9jZkusalyRYwcYl2xz5lFmaTBoAZpP0wFiqKuGbXjEX9W1bu+3FmI
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QRrJPt6e
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] i40e: add trace events
 related to SFP module IOCTLs
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
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogU2ltb24gSG9ybWFuIDxo
b3Jtc0BrZXJuZWwub3JnPg0KPiBTZW50OiBUaHVyc2RheSwgRGVjZW1iZXIgMjEsIDIwMjMgNDoz
NSBQTQ0KPiBUbzogTG9rdGlvbm92LCBBbGVrc2FuZHIgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50
ZWwuY29tPg0KPiBDYzogaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc7IE5ndXllbiwg
QW50aG9ueSBMDQo+IDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT47IG5ldGRldkB2Z2VyLmtl
cm5lbC5vcmc7IEtpdHN6ZWwsDQo+IFByemVteXNsYXcgPHByemVteXNsYXcua2l0c3plbEBpbnRl
bC5jb20+DQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggaXdsLW5leHQgdjJdIGk0MGU6IGFkZCB0cmFj
ZSBldmVudHMgcmVsYXRlZCB0bw0KPiBTRlAgbW9kdWxlIElPQ1RMcw0KPiANCj4gT24gV2VkLCBE
ZWMgMjAsIDIwMjMgYXQgMDY6Mzg6MzdQTSArMDEwMCwgQWxla3NhbmRyIExva3Rpb25vdg0KPiB3
cm90ZToNCj4gPiBBZGQgdHJhY2UgZXZlbnRzIHJlbGF0ZWQgdG8gU0ZQIG1vZHVsZSBJT0NUTHMg
Zm9yDQo+IHRyb3VibGVzaG9vdGluZy4NCj4gPg0KPiA+IEV4YW1wbGU6DQo+ID4gICAgICAgICBl
Y2hvICJpNDBlXyoiID4vc3lzL2tlcm5lbC90cmFjaW5nL3NldF9mdHJhY2VfZmlsdGVyDQo+ID4g
ICAgICAgICBlY2hvICJpNDBlX2lvY3RsKiINCj4gPi9zeXMva2VybmVsL3RyYWNpbmcvZXZlbnRz
L2k0MGUvZmlsdGVyDQo+ID4gICAgICAgICBlY2hvIDEgID4vc3lzL2tlcm5lbC90cmFjaW5nL3Ry
YWNpbmdfb24NCj4gPiAgICAgICAgIGVjaG8gMSAgPi9zeXMva2VybmVsL3RyYWNpbmcvZXZlbnRz
L2k0MGUvZW5hYmxlDQo+ID4gICAgICAgICAuLi4NCj4gPiAgICAgICAgIGNhdCAgICAgL3N5cy9r
ZXJuZWwvdHJhY2luZy90cmFjZQ0KPiA+DQo+ID4gUmlld2VkLWJ5OiBQcnplbWVrIEtpdHN6ZWwg
PHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogQWxla3Nh
bmRyIExva3Rpb25vdg0KPiA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+DQo+ID4gLS0t
DQo+ID4gdjEtPnYyIGFwcGxpZWQgdG8gcHJvcGVyIGdpdCBicmFuY2gNCj4gPiAtLS0NCj4gPiAg
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2V0aHRvb2wuYyB8ICA1ICsrKysr
DQo+ID4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV90cmFjZS5oICAgfCAx
OA0KPiArKysrKysrKysrKysrKysrKysNCj4gPiAgMiBmaWxlcyBjaGFuZ2VkLCAyMyBpbnNlcnRp
b25zKCspDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aTQwZS9pNDBlX2V0aHRvb2wuYw0KPiA+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQw
ZS9pNDBlX2V0aHRvb2wuYw0KPiA+IGluZGV4IGM4NDE3NzkuLmJkZjJiNmIgMTAwNjQ0DQo+ID4g
LS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2V0aHRvb2wuYw0KPiA+
ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9ldGh0b29sLmMNCj4g
PiBAQCAtMTA3NCw2ICsxMDc0LDcgQEAgc3RhdGljIGludCBpNDBlX2dldF9saW5rX2tzZXR0aW5n
cyhzdHJ1Y3QNCj4gbmV0X2RldmljZSAqbmV0ZGV2LA0KPiA+ICAJZXRodG9vbF9saW5rX2tzZXR0
aW5nc196ZXJvX2xpbmtfbW9kZShrcywgc3VwcG9ydGVkKTsNCj4gPiAgCWV0aHRvb2xfbGlua19r
c2V0dGluZ3NfemVyb19saW5rX21vZGUoa3MsIGFkdmVydGlzaW5nKTsNCj4gPg0KPiA+ICsJaTQw
ZV90cmFjZShpb2N0bF9nZXRfbGlua19rc2V0dGluZ3MsIHBmLCBod19saW5rX2luZm8tDQo+ID5s
aW5rX2luZm8pOw0KPiA+ICAJaWYgKGxpbmtfdXApDQo+ID4gIAkJaTQwZV9nZXRfc2V0dGluZ3Nf
bGlua191cChodywga3MsIG5ldGRldiwgcGYpOw0KPiA+ICAJZWxzZQ0KPiANCj4gSGkgQWxla3Nh
bmRyLA0KPiANCj4gSSB0aGluayB0aGF0IGk0MGVfdHJhY2UuaCBuZWVkcyB0byBiZSBpbmNsdWRl
ZCBpbiBpNDBlX2V0aHRvb2wuYyBhcw0KPiBwYXJ0IG9mIHRoaXMgcGF0Y2guDQo+IA0KVGhpcyBw
YXRjaCBpcyBqdXN0IG5lZWRzIHRvIGJlIGFwcGxpZWQgYWZ0ZXIgJyBpNDBlOiBhZGQgdHJhY2Vw
b2ludHMgZm9yIG52bXVwZGF0ZSB0cm91Ymxlc2hvb3RpbmcnIHBhdGNoLg0KDQoNCj4gIC4uLi9p
NDBlX2V0aHRvb2wuYzogSW4gZnVuY3Rpb24g4oCYaTQwZV9nZXRfbGlua19rc2V0dGluZ3PigJk6
DQo+ICAuLi4vaTQwZV9ldGh0b29sLmM6MTA3Nzo5OiBlcnJvcjogaW1wbGljaXQgZGVjbGFyYXRp
b24gb2YgZnVuY3Rpb24NCj4g4oCYaTQwZV90cmFjZeKAmSBbLVdlcnJvcj1pbXBsaWNpdC1mdW5j
dGlvbi1kZWNsYXJhdGlvbl0NCj4gIDEwNzcgfCAgICAgICAgIGk0MGVfdHJhY2UoaW9jdGxfZ2V0
X2xpbmtfa3NldHRpbmdzLCBwZiwNCj4gaHdfbGlua19pbmZvLT5saW5rX2luZm8pOw0KPiAgICAg
ICB8ICAgICAgICAgXn5+fn5+fn5+fg0KPiANCj4gLi4uDQo+IA0KPiBGbGFnZ2VkIGJ5IGdjYy0x
MyBXPTEgYnVpbGQNCj4gDQo+IC4uLg0KPiANCj4gLS0NCj4gcHctYm90OiBjaGFuZ2VzLXJlcXVl
c3RlZA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRw
czovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
