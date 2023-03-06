Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A66726AD13A
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Mar 2023 23:11:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4827940A5C;
	Mon,  6 Mar 2023 22:11:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4827940A5C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678140683;
	bh=Z68ym0q1G4tAqHuHyQF96oD+Upc/oYL+iP6OE1vS+r8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eD81+U54BXI/FRO8WCyPIjPlidZlzlQ98rvguz/MYc1ndknAeedLQ8CjqoGLGl4vy
	 84H5rf394vJLfN7c26Dd+vRAjhLL6sVml7k7Nhs+JIxIMbANUA0aJrnVHJ1NbQkcI9
	 wo7Qo5Ix3ejd7eY2jlorVoJhsR2xBP9C71G2ss9R8BjLFCvN1zIQnfUAdNzJgoy3Yh
	 BOQcVUHZMFiDtZkEIfyqEraMhi9Fm06nCS0/p+ckrhuLugIuf3I9PsCBSrXbd1l6ww
	 PWRsZnqu7a8Wr2VFQ1JwGPG7ftNxybfZpZBEDxPDGJjAaLq85YmjZMa0/Vlr2QbJyL
	 LzgtSvHT11WgQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3jPQ0lNk3sol; Mon,  6 Mar 2023 22:11:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4522640A38;
	Mon,  6 Mar 2023 22:11:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4522640A38
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0F29F1BF3AD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Mar 2023 22:11:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D700B416D5
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Mar 2023 22:11:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D700B416D5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7K7Mpna8Oe4O for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Mar 2023 22:11:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D6E6C416D3
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D6E6C416D3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Mar 2023 22:11:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="316089538"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="316089538"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2023 14:11:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="786436810"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="786436810"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP; 06 Mar 2023 14:11:15 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 6 Mar 2023 14:11:14 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 6 Mar 2023 14:11:14 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 6 Mar 2023 14:11:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YyZ87idPz/knFJRCVIzmHIeYGpH8EDAKDlwCXHvfPBWLTuEzTU7+uEXhi+yic2HNzdxRQJ/G3BMnPAyuboTBKC/RGIzzzAObztcyu18Kbm1OywIkQ1xV3FhCuHXOVygLZFIkwLMMnchxKzg4kd1GKnmKbtVU5EPMGI8QOtC/HPZCOjkWYs+8zZLjYlMZLfAOBpgLbGbUeccN37M4NCyCG/ssLJghHNJlOeL+GFVrKbL5DiaelhvYF2i55ed1X7F8ADFsWlX0u7dQmej2Mx9wZraxTWYH8KiHqY+0CWVjVVx0iyi4osZGqzueA4H3Ig5e5fXv3nvgv9CfJaQyjMtZhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l8yMAFRfXFcc2HthfYciZkLRmj9xFe6N2qZDvGZs0Rk=;
 b=dwV97LLqlZR1foI0gOhm+OvLiVTWgIC1WBe2BnD6d8DwkwnMZtBxfZNC30VGKfK6XPVZ1zB61IpyV4gEHgWhz2c4vh5XTDehjE8MQ8gN7PpG5PJPH3yX9bKMu4FS+OwRLyfPwpNcyeFibIECIja6LFeBiHQB1lEWRJNWyQUL4BUug619S0ld3M5g/j+Wnk5vJ+tXoy6mnHayXQMHiHhhWkQHCNB/GMReocJYqC7ba0mdHkGtwr9NWL08rMoBgiQghStO+Ux+HxI+PDJJsx1hgVDTVex96HEpMEMwBbXB/yEGCg4AVKIbPAQumCBD67dNE9fQh2i+7ZauB9bfosJ2RA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO6PR11MB5636.namprd11.prod.outlook.com (2603:10b6:5:357::21)
 by MW6PR11MB8309.namprd11.prod.outlook.com (2603:10b6:303:24c::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.28; Mon, 6 Mar
 2023 22:11:11 +0000
Received: from CO6PR11MB5636.namprd11.prod.outlook.com
 ([fe80::e28c:6ed5:f47d:3e32]) by CO6PR11MB5636.namprd11.prod.outlook.com
 ([fe80::e28c:6ed5:f47d:3e32%6]) with mapi id 15.20.6156.028; Mon, 6 Mar 2023
 22:11:11 +0000
Message-ID: <ef7042c3-c1d6-c6b3-2048-6050bd4ce856@intel.com>
Date: Mon, 6 Mar 2023 14:11:08 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230302215109.124-1-paul.m.stillwell.jr@intel.com>
 <20230302215109.124-4-paul.m.stillwell.jr@intel.com>
 <015f0231-35b5-a7e4-513e-513e9d0c407b@intel.com>
From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
In-Reply-To: <015f0231-35b5-a7e4-513e-513e9d0c407b@intel.com>
X-ClientProxiedBy: SJ0PR13CA0117.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::32) To CO6PR11MB5636.namprd11.prod.outlook.com
 (2603:10b6:5:357::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO6PR11MB5636:EE_|MW6PR11MB8309:EE_
X-MS-Office365-Filtering-Correlation-Id: 27d06d4c-f308-46c1-0763-08db1e8fb16c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xBgwvTa0FNjXG+4gpE+58iChloOsHLEgCN7ICtj3R+r/hJTC0quYHCEkiWO3nvq/TfXykay2YLpgS0UeYrxElGuquL0kY0SUCQLqr1vetawzARJmTvxDp68ktsQ0JrsniFtFfZHmGBnk4vBO+y0E5HAp/zRfpozMsHDtDHVPFUez40hgSFpp83dOHIsbYUNObbLndN5JGzfgb5HjoeRY4XejGP4AWTf8Xg5e3WSxBcKRu/TQPbUwHLJAWuf7tjaqYx9ZxPMY5WxEWiotnSD9gB6R547w2XVtLG6bulSQ9YMyqExH6dbLYy7XlRYmD34SQPqJVwTcd7K6paTK3fuabwucHbCkcbu1QY9vJECJ8PVGykzOmrfvCe2dUXOpbrbAdlr7tt19r1S4xjfZX1fC0iVza5re7TaL8/fyxY/oSq/mYRrChGEtT6XhyuLSa5T7G/ppsOw/aSt97g4lckqmIwq36zaldAs7zmX+yvI2Kviyi2+m+2G+EZlaWfmEFG3QilgV2eD2DF7s2xiT4oXpi9avvXsDMjTYJNhSzfKUsukSRC3ki0+PD1ZTk94P9HY4+fNxDT4os4+xfF424VDzHl74ptlogKjyw68W8A7ZmgS2Ts//QZoKwvi+YJflegVv1E8Fat1BzpkQcC6ypmZlafxG6Dn2h18BpRpgm2jfh6GirTLYZfQdLDTC8EOzrM7h5F0c9B/47Xj3TFTDdp/5lLkCmwmbrJi1liHFdn3FYe8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5636.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(136003)(376002)(396003)(366004)(346002)(451199018)(66476007)(83380400001)(4326008)(8676002)(66946007)(316002)(8936002)(41300700001)(5660300002)(66556008)(6666004)(107886003)(26005)(2616005)(478600001)(186003)(6506007)(6486002)(53546011)(6512007)(36756003)(82960400001)(2906002)(86362001)(38100700002)(31686004)(31696002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VjQrWnY1aVk2WEgvOEU3ak1lN08rZ3NJTGo1VUtZOU1UWW55cWFBVC9RR3gx?=
 =?utf-8?B?Mjh1S1pWVENlVGIvUUdqcVlyMmhVZWxNdFlMS284Wkl5RzMvTHR2VXV0d2pP?=
 =?utf-8?B?T3dZMnRVQ3U1eWJ2VWg3bERMelRuKzBQRThtRkRlcXdyWm1DSmxxTU85WGts?=
 =?utf-8?B?amJxTmVJQ09lcTdvNEx5Z1plcTZuYVRpc1V1dklIY0FvSzdFSXEva3dXaldi?=
 =?utf-8?B?UzkrZi9lOGZ1UnMxR0Y3QWo2WnBtdkd6YUdSRWlHcjRFN0VQcUVudHgrdHUr?=
 =?utf-8?B?dlZqUGhVNGlRM2JwUEFWT01EUHFodUJUSk9aUVBLWHpzeExKRzRWNnhmb1NM?=
 =?utf-8?B?RUJWZjRqOWk2NWlndnRJQXFHOUJ6QkFWNW5NemMwVzRKMUVpV3ExNC9jK29h?=
 =?utf-8?B?R0tpenE0TDR2MHl3RDFzYzBDcVVueDN5dVFvR1BQMFZYbkFzM3ZpVytLZS9z?=
 =?utf-8?B?ZHhBcnB2dUNqb3VrTTZoUkk1ZWtjNkViOW1jSjJKOXBkMkdXR2xNN2Naak5i?=
 =?utf-8?B?VFdNeVU1Z214SlZZK0RIYTFHNWdqMnRKZ1p4L0pjbTBtQ2M2SklXMzVPZ2Jw?=
 =?utf-8?B?aWd0WFd1R24yNm8raUVHcWxMdnZpR3JJdlRFSnl5NXZLbWE5bzhKZjREaGo0?=
 =?utf-8?B?bTVYSmZzV28wakhXRjBXOE15OXBqNnVkUlRZNFM3ZE1LNTVyRzV1SFZEOTJK?=
 =?utf-8?B?MTRObDJQaTlhOWtjRTFmQStpeFNZYnRXVFA3VVZpQ3JNZXg5Ykh3NitEa3FP?=
 =?utf-8?B?V2VpZnJLbEZtczFRVE93Yk1WcG84MTdQUlU5K0dkS21wVXVWU2phaWJ6WWls?=
 =?utf-8?B?SzViYWVRcHJDZXVYMDk2QlZsamNnWHFQY2tqZVhBZng4TjZzblVGZCtCK1Zj?=
 =?utf-8?B?cWNsY0I0KzJKUHBWeWYzZVdqelEyS2NLKzVBRThEN0xTWmJVSzJHc2tsOU9B?=
 =?utf-8?B?WFNkN25CQkM0Zjgwa3EyazdEcTZiUTV0bG93WWk0c1NWck1KdlhuSk5WclBN?=
 =?utf-8?B?Ynk5WGpiS00xY2czU1lNMjczcm9Dei81aGV5SWN1MG95aFFnRHJtaXlmMmVO?=
 =?utf-8?B?cjJoMGFiSktrY3hjNVdaUmQzMU1MRkcwd2Y4d3h1cjE0K25HTXB0STdkVE1Y?=
 =?utf-8?B?QTlaNjFkcE9Rb1BBTmdtQVdiYlVlaUFsSC9Vc0hPVFFiY0JkeWpaT0Q2Q1lj?=
 =?utf-8?B?cmdOS0NnMk9FSzZJNTYwbnFHNjRiN0FGQjBrcUdiVDdwdkxjT3lYL09ONHlq?=
 =?utf-8?B?Wm0zSDVkYVc0OUZZUlFDa001c3R3SDEyNlJUOVduZjBjQzhhOUZvc05yZGhO?=
 =?utf-8?B?QW1HbjlkaHl5bEpLM0tORlowck9FVXBXMloyWHVXVUZBbGJhSEhraUp1V3or?=
 =?utf-8?B?Y3dreDlta09nbmNOTlFLVVE1TFg5b0d0SGFYbkRNd0Y3dHQ1ZWNPdWNaK1RQ?=
 =?utf-8?B?MDBYQ3doYlZkeFpJWExHaFJ0dDhSNXczWmZEam92Ry9oclRJSXg0RUJ6WTdm?=
 =?utf-8?B?dmZCREFVWk81ZDNqVXluTStHeXB3WEpIVmVMbUJuYmIwTlRkR3JpeDk1d0Q1?=
 =?utf-8?B?dnphUXFXN2p1R1BrSEFhK2xJbS9JcG9KMlFxcVR1NkRJbkE4Wk9KYVJ1cGdo?=
 =?utf-8?B?MXlzRDIxKysvamdaa1BFaGltd2tDNWtQeitROFpzbGFvM1RNcUEwNy9jRFA1?=
 =?utf-8?B?SVdIeWFkclg4NGxZakRDNTMvZ2p0MlhieFZZVzVYeUEvNXBXbkc4ZW05Yk1R?=
 =?utf-8?B?NDl3QWJFRkE2bE53TkM2YkdsbjJYRkVoazZ5c1FVL1R0bkRIRitXYjMzakVI?=
 =?utf-8?B?VnhIdERCNGxzVEtKN2UxQzlPbVlvanM0QTRQaFNOdmoxL0QwbEVzbWY4SExv?=
 =?utf-8?B?ZU0yeVVlWkZiaGdZZFdkdGkxakNjYjZZVmlINXNJVG9xZjZUamNkVFgxcHBC?=
 =?utf-8?B?N0ZaTVFIZ1ZNL3dlRDFoaHpjbGg3aWxkVkRKbWlxZ1A3T0p3cnRjTE4wWTRQ?=
 =?utf-8?B?MUpNTHdRSStqWUtheGxabUF0SWxjUWhOMFFlck5UVVh5aVo0cjE4YWNyVkdk?=
 =?utf-8?B?WGhYajlCRUdLckZWdjRwNExzVk1KRUVRbmJ0WjlPd3M2Yk0vdFdGRHA1NnN1?=
 =?utf-8?B?ZFRwZ3JWMEgzR3NIMXBNNkhGWFBhQVFCV3JIWWhpTnp6Lzk0R3ZnTnhEd21Y?=
 =?utf-8?Q?gNSotK7s5LcIO6YTiHWE3+g=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 27d06d4c-f308-46c1-0763-08db1e8fb16c
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5636.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2023 22:11:11.0873 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2xrTP+NY1hN/OGjNTb9PtFWr+Q/mbczwvFb2o2EVaLNmmmT4+IBpkSeJLpLhS5Fp8bZn3FN8WywEtO89I5FSawi4vIZpUOPEfXkxt9ya8G8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8309
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678140675; x=1709676675;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8Y91dEx8vU1jgWXtQ2zO912UX1klJmTbaCJJyh1o4mY=;
 b=cUFTT7O1MXj5uq0KZbauezF+JPByf/EoESjLUFjB6kwO7qSiJIwf6crg
 GXXBTtC3wGndY5laj7iekt3OEADi5m3quPpdblSJ+a2vfwEJ8L31alHHt
 4VamwbCKMrC9jON2QYKI557cWIle6ZRfTWmBuAS6S1oTI2Mxx59Qe7c+I
 3gqarKguZkt142bWwUg7RGMxY9ZxVSaoL0iOeTLN7qs0oJDHmEpBL/nqU
 tNmSXFfGP645i1NHBpFih1lXvfx/p6N+zzFQRi0r2IA4SaNL2xzenxIdr
 PB7lbT1/DbraXXbKlWQs4lQ9NKByBONp4dN3vPC2BT6dbaTn+OBqZFS9n
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cUFTT7O1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v9 3/5] ice: add ability to
 set FW log configuration
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
Cc: Brett Creeley <brett.creeley@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMy8zLzIwMjMgMzoyMSBQTSwgVG9ueSBOZ3V5ZW4gd3JvdGU6Cj4gT24gMy8yLzIwMjMgMTo1
MSBQTSwgUGF1bCBNIFN0aWxsd2VsbCBKciB3cm90ZToKPiAKPiBbLi4uXQo+IAo+PiArLyoqCj4+
ICsgKiBpY2VfcGZfZndsb2dfdXBkYXRlX21vZHVsZXMgLSB1cGRhdGUgMSBvciBtb3JlIG1vZHVs
ZXMgdmlhIGRlYnVnZnMKPj4gKyAqIEBwZjogcG9pbnRlciB0byB0aGUgUEYgc3RydWN0Cj4+ICsg
KiBAbG9nX2xldmVsOiBsb2dfbGV2ZWwgdG8gdXNlIGZvciB0aGUgQGV2ZW50cwo+PiArICogQGV2
ZW50czogZXZlbnRzIHRvIHVwZGF0ZQo+PiArICovCj4+ICtpbnQgaWNlX3BmX2Z3bG9nX3VwZGF0
ZV9tb2R1bGVzKHN0cnVjdCBpY2VfcGYgKnBmLCB1OCBsb2dfbGV2ZWwsCj4+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgdW5zaWduZWQgbG9uZyBldmVudHMpCj4+ICt7Cj4+ICvCoMKg
wqAgc3RydWN0IGljZV9md2xvZ19tb2R1bGVfZW50cnkgKmVudHJpZXM7Cj4+ICvCoMKgwqAgdTE2
IG1vZHVsZV9pZCwgbWF4X2JpdHM7Cj4+ICvCoMKgwqAgc3RydWN0IGljZV9odyAqaHcgPSAmcGYt
Pmh3Owo+IAo+IEluIGFkZGl0aW9uIHRvIHdoYXQgbGtwIHJlcG9ydGVkLiBSQ1QKPiAKCkRvbmUK
Cj4+ICsKPj4gK8KgwqDCoCBpZiAobG9nX2xldmVsID49IElDRV9GV0xPR19MRVZFTF9JTlZBTElE
KSB7Cj4+ICvCoMKgwqDCoMKgwqDCoCBkZXZfZXJyKGljZV9wZl90b19kZXYocGYpLCAiSW52YWxp
ZCBGVyBsb2cgbGV2ZWwgJXUsIGFsbCAKPj4gbGV2ZWwocykgPj0gJXUgYXJlIGludmFsaWRcbiIs
Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGxvZ19sZXZlbCwgSUNFX0ZXTE9HX0xFVkVMX0lO
VkFMSUQpOwo+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FSU5WQUw7Cj4+ICvCoMKgwqAgfQo+
PiArCj4+ICvCoMKgwqAgaWYgKGV2ZW50cyA+PSBCSVQoSUNFX0FRQ19GV19MT0dfSURfTUFYKSkg
ewo+PiArwqDCoMKgwqDCoMKgwqAgZGV2X2VycihpY2VfcGZfdG9fZGV2KHBmKSwgIkludmFsaWQg
RlcgbG9nIGV2ZW50cyAweCVseCwgYWxsIAo+PiBGVyBsb2cgZXZlbnQgYml0cyA+PSAweCVseCBh
cmUgaW52YWxpZFxuIiwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZXZlbnRzLCBCSVQoSUNF
X0FRQ19GV19MT0dfSURfTUFYKSk7Cj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVJTlZBTDsK
Pj4gK8KgwqDCoCB9Cj4+ICsKPj4gK8KgwqDCoCBlbnRyaWVzID0gKHN0cnVjdCBpY2VfZndsb2df
bW9kdWxlX2VudHJ5IAo+PiAqKWh3LT5md2xvZ19jZmcubW9kdWxlX2VudHJpZXM7Cj4+ICsKPj4g
K8KgwqDCoCBtYXhfYml0cyA9IG1pbl90KHUxNiwgQklUU19QRVJfVFlQRSh1bnNpZ25lZCBsb25n
KSwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBJQ0VfQVFDX0ZXX0xPR19JRF9NQVgpOwo+
PiArCj4+ICvCoMKgwqAgZm9yX2VhY2hfc2V0X2JpdChtb2R1bGVfaWQsICZldmVudHMsIG1heF9i
aXRzKSB7Cj4+ICvCoMKgwqDCoMKgwqDCoCBlbnRyaWVzW21vZHVsZV9pZF0ubG9nX2xldmVsID0g
bG9nX2xldmVsOwo+PiArwqDCoMKgIH0KPj4gKwo+PiArwqDCoMKgIHJldHVybiAwOwo+PiArfQo+
PiArCj4+IMKgIC8qKgo+PiDCoMKgICogaWNlX3JlZ2lzdGVyX25ldGRldiAtIHJlZ2lzdGVyIG5l
dGRldgo+PiDCoMKgICogQHZzaTogcG9pbnRlciB0byB0aGUgVlNJIHN0cnVjdAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1h
aWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9z
bC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
