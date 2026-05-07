Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6BxRGCUO/WmFXAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 00:11:49 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BACDE4EF9CA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 00:11:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B046461107;
	Thu,  7 May 2026 22:11:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wViALznUM02x; Thu,  7 May 2026 22:11:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0D3AF61109
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778191906;
	bh=WQ7gfST0Iy3kZL4Qzey2xhuRYuXhnhJD7tibPCK5/FM=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Q1CYeQwWmcT+c3sHR2jwvuYDx9q3hWDxWPk4GUHFfKoRUI8g8lnSwCJRZqRfcIu6x
	 AGk88NAuu36qd7aTEcZVfZ4HIjhDDNZRoMdUqJ2RuAeXtvur0HH5xBCojPmsQEF1Pz
	 2XEileGkY1gbWXrRZWBvBhilgH2DCqOY3uQ3ArzpxQ8oZm+u/kM+/HMYggD8mbvzhF
	 GusCC565WYKGBlcydaqxPQB1/r/+vIQokjQmdUOFfQpJPQ9xP7sOgxsGQ67X6PTNyF
	 nL8IMNLrqE6yApWnYvitrG4dd7LLdG5BUBTMWHGq3BquoyQtdc0Xh8bJv7zSIfA4Fi
	 XkXv4ta9GnTpA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0D3AF61109;
	Thu,  7 May 2026 22:11:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 8F4D8280
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 22:11:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 80FF061105
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 22:11:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kQihuWtGc_rX for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 May 2026 22:11:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C002061100
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C002061100
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C002061100
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 22:11:42 +0000 (UTC)
X-CSE-ConnectionGUID: Aoad9P8JS3auTQgkSqHpog==
X-CSE-MsgGUID: O9lqRJ9JQF+YFVqQcNeraQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="89853958"
X-IronPort-AV: E=Sophos;i="6.23,222,1770624000"; d="scan'208";a="89853958"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 15:11:42 -0700
X-CSE-ConnectionGUID: asbaXQzaS66tmFT2yWqNlA==
X-CSE-MsgGUID: kOc9FO9oQF2CaTnmUBfo3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,222,1770624000"; d="scan'208";a="233532497"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 15:11:42 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 7 May 2026 15:11:41 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 7 May 2026 15:11:41 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.33) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 7 May 2026 15:11:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GA5CcaUZU7IYJBs3UiEkwysrVzuAY7st7HJ4cfemamOs3dIm9+vApb96wg0S2zpYqLdawGzx1OY9cKj4UujyWwFGZiBO4Nqgnk92aTSrbsO/qfSi/53yFaIfndotNzsm68WLV4BLwdxmdLLKmtKrMCgWDNDeSb5LAmvGNIhqmtCuIFYrUb244WiiLRxv+zVevy87VEuxoxVjWwzB3gPe8oLVvt2+fEUaWcFv/OauvsPZHRCJio59oBgWUexkfsXCPqilaHfYvhpRbueqVj4ktZFO9Euv4f9y+g3UHwClU7u5kQE4sdHc0gbve2ppDxadqXYlKKae4c++Eof50sfilw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WQ7gfST0Iy3kZL4Qzey2xhuRYuXhnhJD7tibPCK5/FM=;
 b=aL3f21Or5UKwp/gWFtb2FQNloYEZS80MmR8kbVYSOnB8VZxpN6ytbe66YmPglat2i9VBtzIVRq+CJLgN2GCoD9zx5bfRiLYzT5h3Zp3RJgcDlmtjmmTLrWlq+HoBjMdbwccJzpFgByCzScJZF941tFCce1X3zE9aI0qAoBsy+IllQ3OHPaIkHnYr5qyr/KDPZO7pxlWUS5T5vyrxXc9M8z+g8eC7GLWgPnkZe4JEzihuTOwtJhav7uEnAenQ+yneJJXQRoWqp9+F1mn45iQD9pR2c1QdBdwmGxZeSc5IDh9psKX8aUE7it4pvJIns7W5iXniw1SvCd/SjsdSJG4ujQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7592.namprd11.prod.outlook.com (2603:10b6:806:343::16)
 by SA2PR11MB5050.namprd11.prod.outlook.com (2603:10b6:806:fb::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.19; Thu, 7 May
 2026 22:11:34 +0000
Received: from SN7PR11MB7592.namprd11.prod.outlook.com
 ([fe80::3e09:8700:df72:37b6]) by SN7PR11MB7592.namprd11.prod.outlook.com
 ([fe80::3e09:8700:df72:37b6%6]) with mapi id 15.20.9891.008; Thu, 7 May 2026
 22:11:33 +0000
Message-ID: <379cd3dc-aff5-4fcd-bf9f-4878ae21ee74@intel.com>
Date: Thu, 7 May 2026 15:11:31 -0700
User-Agent: Mozilla Thunderbird
To: John Ousterhout <ouster@cs.stanford.edu>, <anthony.l.nguyen@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
CC: <intel-wired-lan@lists.osuosl.org>, <przemyslaw.kitszel@intel.com>,
 <netdev@vger.kernel.org>, <stable@vger.kernel.org>
References: <20260507183843.1457-1-ouster@cs.stanford.edu>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20260507183843.1457-1-ouster@cs.stanford.edu>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4P220CA0028.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:303:115::33) To SN7PR11MB7592.namprd11.prod.outlook.com
 (2603:10b6:806:343::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7592:EE_|SA2PR11MB5050:EE_
X-MS-Office365-Filtering-Correlation-Id: 294bafe1-553f-42ef-a535-08deac85993a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: vCX5rBh+6RboFqsPZFj4D/qShMuB2FQd6msf7sFbWCGytRwv6PMJMOpBNW3a7YcqVpeoJZem87+4h5dY9kMCHSvgwe6rFVHfTKNTqvtRV4pRr2GT4HrczaeKXditP9WZBO0QszvWjKc8KFNdWMdTd6PnyLHgdjgUXAYefDh6AyIMRn/9HCm0/CqFiFN7lkXS2F+i3KLM/pAeUOJpyvVGBHcZIX0ladAamGpvswLPpSkSZCzROJJsDoXeFNpApe5ClVUmTu/jFJc6WskTIAtQA9HwfHxlBNveDQlA8kWVJ6Vj0PJeusUmnsWATG/MeEbzXU9tqhV0l+g8+4YdD0m0QPBfw/4W6mlVbVMbwLY0mudJw3SzvNMdsFOXfHuBZNy4UCSubykZYqx4hIo7Yhl2IoVaVhL//RyHbnXuIZVOaFLJA7h7VENR8H95n4/r/tU+Szu2xheHkWdZRiM7qttpoiGXzfnCg13Ihbw4UlaHtzR2ex+coCFLA36JCf4NdcPOEnCvjQdo7Bf3nDXSTUGMu3Yt/5zkVJUfd7NKlwQqNVyEUnkhrnDjxkmiuUn3ZBVzENKji7uz7HwNbsfojWeqVlIzFoposj6q56qWqZULC6TP9KWA8eKq9+2l/zDdrDNEha6UwaEw/G1dkTFL12yHG6s/569qtsebI+DhUjMWTEButH0TxxAmRArRF+sLqNO9
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7592.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WnlaaXB2eHZtdkxKa2Z5ZGZMSDZEUmJhWkVhaE15N0FzN0xTWWZYNnlrdjQ4?=
 =?utf-8?B?YXp4WWV2YVVGWG5maEl4R1dSS1JCRjhWZFd5OE1aMk1lam9SZ01vT0hsQVRz?=
 =?utf-8?B?SWNOdFhxc0FhWDUvd3ArUFcvOFRlUVRvSlYvRCtxNUlXckM3RFlhbDArZjdm?=
 =?utf-8?B?UXY1WHdJVzBuRmo5b01kUnpLNFhHWVR3SlRsRk1JZHhnWGt5ekNOK1FpdFVX?=
 =?utf-8?B?M1hrN3ZBb2hObGN0MWVzYURSOHZrU3lnTTBUVGdKUWtQR1RoTlJhRmhTYkRs?=
 =?utf-8?B?N0I1YjBMeGpOSVQ4UUd6eTF0eDkraWtDcFVnUkJhcDhLVnZKWG9SMzB6eGhn?=
 =?utf-8?B?dVppeXdKUHJHSmxFRE9Kdm1zSFJNc1I5RWEydnpMcCtqVG1KSTcycU5ySmZZ?=
 =?utf-8?B?TEpDTU9hQkgzdEV2b0tZS0JkTFFueDNob0pZM0Q3OUJCdVZxUDFFNGpFK09I?=
 =?utf-8?B?Y1hrRG5mUk1KdzdkWm90NXdmYWtmdmkyeVRVejBYZ25ZQlN0K09iamxFZzBy?=
 =?utf-8?B?MExQMjRXU3VsNkVFbVIrSkdnUFlJQldJanVoZzNQT0c5NVRJNlBYMHB6ZDRL?=
 =?utf-8?B?QVFsZ05xOVdBakVaYjd2dFpNRXp5MllzMXNXeFRCQ1NjTnNDd0ZXYmYxT0g4?=
 =?utf-8?B?N0FTTS9BSWNZVCtQVFF4WHpQZW1Od3NYOHIxdXlLVGJZM0dGdVlSWGRmL1JU?=
 =?utf-8?B?MkhWOUxxTUNUSzM5TERvcFUwY0hGZDg0aWZBenVQZ3l2bGY2YzFubGx0c0F4?=
 =?utf-8?B?RDkzME5CZU0va2pUejg3VnI2bVFCVEsxWlplSHQwblFaOW1GTHNiMGNNMnQ3?=
 =?utf-8?B?bEZuNVB4aStGVmkxcEh6eVRXeDFhT3pUZE8vMk5HRFFLVTBTU2JzYjFxQVJH?=
 =?utf-8?B?bCtzTzJVaG5xeC9qUkZTeUxHVVU4U0xxUmdjTjZJRVZYemhGNUZGOVYzbzRQ?=
 =?utf-8?B?TWdlVGIyc1YyY1ZnenRKcEFjdU9VT21LN2hhdEJCRGFhWDl0NkFpczlUam9w?=
 =?utf-8?B?bVVpSjlRMWNuTmo1WGFTMmh1TmVla0sxY2VYMWdnTllQU0U2VUNhWU1GK1BZ?=
 =?utf-8?B?dTVYcTBjT3ZvMXhIbGpRRHZFUnFiMjUyOGpkVlJXbmZlU2xjMVpnQ01Ra0Qy?=
 =?utf-8?B?NlNjT2t3M0psL1dsZVVPQUpTZHk4T0c2RThQLzNOTEdrcVc4ZUtMYjk0Z0lq?=
 =?utf-8?B?MitXbmRFc25ERjJkdEw2NEllTmtxcUFqNm14Rk9sWFZKKzFneTkxUDNUaXU4?=
 =?utf-8?B?SWh6a0hwNTFha3V5Q3Zhd3lPMzNxbE51UndWNGNMSkR5aVhJTnBkU0VjSnVt?=
 =?utf-8?B?K0Z4YURMNjRUYnd1UVU1VFpxVTVSK2JQc0NqNDl3L3U5UGwvQ3NFa1Z5M2tH?=
 =?utf-8?B?THN3Rlo1dUxQV2VZY21lNmdrUEozdDF4WHB3WGQrU3Y0OS9rRzg1bUIya0c2?=
 =?utf-8?B?cDkvUEhMb0kxS2wvSEZtMkVtWlYzckw4S2wzVExOWmtLVVZDdXhzaUh0cHJT?=
 =?utf-8?B?ZHRab1B4eXJ1Ujc5QXVxV3N3OXJsd3o4WjRBdVRjL0x0ZHRNTC9haHpUN2hT?=
 =?utf-8?B?MXE5TkszdE9RWkdkbWo2YytwdEhLWTVCYy9rZ09ERDBNcnlqSXM2ejVWaHkz?=
 =?utf-8?B?SmE1WUZ1dWZTMFFzNjcwd1h2aE41TkYzR0RmaTVaTFE3ckVQRXQ0K2xBcFhh?=
 =?utf-8?B?aHovS1g3SUdnUzdQbEJKQXM4L3lQclRhOGgvZVJIejh2eEJWcFpXMUxFWVM4?=
 =?utf-8?B?TWNHZmZKeHZWS1VqUTBqN0h3R0RMMWxiVGxaeHpkL3lBYVJLWGJUdENsME1E?=
 =?utf-8?B?UG1Pb1J5NDRydXE5WmJndWlpYWxlTjJ0QmVaRkVxYkUwVlVvZnFiQkU1d2RQ?=
 =?utf-8?B?WTJVMmZleVJ4djB5SzRNQm1tT2lrL2V1SXF5emRNTHczVjdnSjZWeDFIMHov?=
 =?utf-8?B?VnM4bWYxNXk4REtmVjlrRHZ0Zm5zRTQ2c3B3bUVxZmg0V05TcWlGbXNNS1hq?=
 =?utf-8?B?enF6N0NtSWRSYXpmYnl0dEFsU1lhNmU4cGk2YkVxWUZ2Sm5vRXdNbWZMNWVI?=
 =?utf-8?B?Ynl1WHBYYkx5VExlSjZ4RHhFdDZMbFdPQWI4ZlIwQlQ2T0lBTlVJYTlZRUhz?=
 =?utf-8?B?SEdRd0w5TmRIZzgzY1poUGZjOUt5c1hTVlF5ekN4cklta0QvbmoyTzNFa1dt?=
 =?utf-8?B?cHZMNXd4bFJTRm5nT1NqcDF3dm0zVngxQkdxdlR4cEp3K1ZVU1dMQkFldnk3?=
 =?utf-8?B?Ri9raDVHQkViRkVOZnkzSkdaZE5IUEdyaEVScEs5YXF0Y2tuZGlGN1VVcHFm?=
 =?utf-8?B?N3orSFpjd2tJTUVMWGF2dElyWXI1L0JyQUlMMTZCbXVCV21aSUxMQnJ4ck9V?=
 =?utf-8?Q?0BtcpTDGi0yvKDoI=3D?=
X-Exchange-RoutingPolicyChecked: vJ02lfHCWOVSBbTUh2N5R85Bxf3gCMd1evQLEbZjCbOf0MnjcoBItJqhxDfvP+U3LcjDfBaCpC5hph5YSv5UKHmFuRDcZzKcAN12gx4EGa4tlYZmoOHzRUpXAG3qiZQBjXjz9yESHNzaJfotHg95WbbNuHvXAPvrQLjvE1Pr1p5veOI7yX7pgw1exExiAh1Msnuil8aNWcExh66WJDURXoPJeP9ILObvJYLbqTxB24sbRsPBMJOfAJ7HhZTOS+fjQejqHjDnbtzcEaOllyh39vu7aOZxwLfX1v4rDPylqkNyklQodduXJsiOu6NWHvpagsJaJMm2XNb39JjIEbAp/A==
X-MS-Exchange-CrossTenant-Network-Message-Id: 294bafe1-553f-42ef-a535-08deac85993a
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7592.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2026 22:11:33.7479 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MUlP3Tde8Jyyvy8fKqYvs37qUYsLmkCL+M2E4Myt30PSrvQDg2eNtdZ1dxfyC8LGBhZMa91FgZ1/1hnc2pjsYTQfUonNHOq5dNBl5ItGh6w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5050
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778191903; x=1809727903;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wwfagQM6yacE9boBudl7aVVb1ZSJB6itL7nQQYR5/gg=;
 b=mUhKGJByG0dmf2r2IOB4U50RSNkB0Dz5GMJJHF+51ifdwvxcEX1VIKKQ
 0VXZfTVfGGyQQ7hSjfePPWrPsSbQM2TI4mPgJ/B8XyWqWPBUZGstHURVT
 F4fon2FJsfLUVoDaBSVqAPmIBnj64fXYnw6+6ri30cktQ2qBu8U3u4DL+
 pr5t7Kf0fw1wg99XlH/ofoky+4lYRJjjqFHxep6YzWnVv9jOimIJSX5qV
 +t58PnCnMp+76uD061+5zqIDIKF+11YJoK+fFQY7fkyqarz/IkgvjNtT9
 FkP4gXhFZg0KFalEegI9CD0bpr0lZU+vUtwnpVYfBIgXCnlOMyv8DAVTF
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mUhKGJBy
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: fix packet corruption due
 to extraneous page flip
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: BACDE4EF9CA
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:ouster@cs.stanford.edu,m:anthony.l.nguyen@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:przemyslaw.kitszel@intel.com,m:netdev@vger.kernel.org,m:stable@vger.kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid]
X-Rspamd-Action: no action

On 5/7/2026 11:38 AM, John Ousterhout wrote:
> Note: major revisions to the ice driver make this patch irrelevant
> for recent versions. It applies to longterm stable versions
> 6.18.27 and 6.12.86; it also seems relevant for 6.6.137, but would
> need modifications for that version. I have not examined earlier
> versions
> 

From this description I take it this only applies to the ice driver
prior to its conversion to page pool?

In that case, I think you need to Cc: stable@vger.kernel.org and include
the relevant versions you intend to target.

I think this case is "unique" since there would not be an upstream
equivalent patch. But that is merely because we removed the faulty code
before it could be fixed.

I'm not 100% sure whta method to follow since typical stable rules don't
really like taking patches that don't apply to mainline...

Even with it being somewhat rare to get 0 size packet, it is not
impossible and packet corruption is a Big(TM) deal.

Thanks,
Jake

> Signed-off-by: John Ousterhout <ouster@cs.stanford.edu>
> ---
>  drivers/net/ethernet/intel/ice/ice_txrx.c | 23 ++++++++++++++++++++---
>  1 file changed, 20 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
> index 51c459a3e722..081c7a7392b7 100644
> --- a/drivers/net/ethernet/intel/ice/ice_txrx.c
> +++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
> @@ -1215,6 +1215,13 @@ static void ice_put_rx_mbuf(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp,
>  		xdp_frags = xdp_get_shared_info_from_buff(xdp)->nr_frags;
>  
>  	while (idx != ntc) {
> +		union ice_32b_rx_flex_desc *rx_desc;
> +		unsigned int size;
> +
> +		rx_desc = ICE_RX_DESC(rx_ring, idx);
> +		size = le16_to_cpu(rx_desc->wb.pkt_len) &
> +		       ICE_RX_FLX_DESC_PKT_LEN_M;
> +
>  		buf = &rx_ring->rx_buf[idx];
>  		if (++idx == cnt)
>  			idx = 0;
> @@ -1224,10 +1231,20 @@ static void ice_put_rx_mbuf(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp,
>  		 * To do this, only adjust pagecnt_bias for fragments up to
>  		 * the total remaining after the XDP program has run.
>  		 */
> -		if (verdict != ICE_XDP_CONSUMED)
> -			ice_rx_buf_adjust_pg_offset(buf, xdp->frame_sz);
> -		else if (i++ <= xdp_frags)
> +		if (verdict != ICE_XDP_CONSUMED) {
> +			/* Don't "flip" the page if size is 0: in this case
> +			 * the data in the current half will not be used so
> +			 * it's OK to reuse that half. And, since the bias
> +			 * didn't get decremented for this half, the page can
> +			 * be returned to the NIC even if the other half is
> +			 * still in use, so flipping the page could cause
> +			 * live packet data to be overwritten.
> +			 */
> +			if (size != 0)
> +				ice_rx_buf_adjust_pg_offset(buf, xdp->frame_sz);
> +		} else if (i++ <= xdp_frags) {
>  			buf->pagecnt_bias++;
> +		}
>  
>  		ice_put_rx_buf(rx_ring, buf);
>  	}

