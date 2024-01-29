Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EB8D840A55
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Jan 2024 16:44:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6FBA141747;
	Mon, 29 Jan 2024 15:44:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6FBA141747
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706543044;
	bh=GYhJu0zer+e+zKssHPfJuVVv/3ESmaIn4laM6n6OB0U=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JepTflR+V563hjUW49ZB/M1CskM93vAzoyMpJURPzRFhhKUstnf1nRPMZ2gPf5nUY
	 z9nOT6CfGLIoJeTg+RcHFY+x/xPRSz6oZ5ji2A4taPP5mbezZv1LXabpBECP2wUxXU
	 DSRWJmP7k2Q9Dr0k/FKXY6mgy2gxCE4Ry92rw89GDZlW12z5xuq1g4y7SE4Adbdz6j
	 arKeWREX4QRW3FVU1szZBbwnSqBundG5fk9yQs1HUtA0/UwfRUP2XMS2NKy1bJTXe6
	 mXJAXk2BP4GuVPdU0cF3JFgcmfqDS8+TqsPzrlirOXX+btHhvy3Y+zNgP/UywsTLt0
	 T8+H2LJRP3KXg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V6kjFPTRyA_g; Mon, 29 Jan 2024 15:44:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 622B9416A9;
	Mon, 29 Jan 2024 15:44:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 622B9416A9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5AE5C1BF337
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jan 2024 15:43:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3404182146
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jan 2024 15:43:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3404182146
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5QvgUXlHUPXC for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Jan 2024 15:43:57 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CDBAC820D9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jan 2024 15:43:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CDBAC820D9
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="401853374"
X-IronPort-AV: E=Sophos;i="6.05,227,1701158400"; d="scan'208";a="401853374"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2024 07:43:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,227,1701158400"; d="scan'208";a="36162104"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Jan 2024 07:43:46 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 29 Jan 2024 07:43:45 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 29 Jan 2024 07:43:44 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 29 Jan 2024 07:43:44 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 29 Jan 2024 07:43:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a/Mj/q+60rWO04hVVm2u7DaxIZfikelp7Dco5hjwnNyAAUxN3LFmEZtvsOUIlWidZTWhYCwVgZQFrFVDjYXa2DwQGM6Q1mZJ4TBRpbMLTWlMtVsWHR3PfoAwAmVPXoP5QnQZ4epB671YNJFttwC37iOOvhYxEnRFyAZJPz+MGZVhxea5hIG1jZuTo6c2r7sv08P9hC25PPgxd89yQ4mDyW0dzkmDn4hFxNGIpgehL+/GEcvIAFTiMdc8OKqRQh3e8hXdBjkOhxGbkqO6kOaZQAuC2r9fcKsCVrDZe1njKVNP3LJJadD87LVOZkidVBeKR9Rkq7aU1k0TosbAZYl43A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GYhJu0zer+e+zKssHPfJuVVv/3ESmaIn4laM6n6OB0U=;
 b=DpNy2PFCv0Fav200TgnMObZPjCMtgcCrJ8zuyFLJK++qOrjyKv6Cn1Z+PUnDqrblh0QwCRHWRyr7pVwAT9cXfAEUFjrfox5LZWOVs7O84q6jKZ4b3t/SjLnwl3UUFeO1xcDfOKn8iZQRlAN0s/8X+G61dh6cd4b/Dj0Tl+3HUcVpBLMF3NTjw38CLzaXR3xFQs3+IfgMiUBfGnzLOVKgkfXNhrTVbhqJD5G+RUCOpTQ5EQcgw8vt3DCKGMGT01gvUH2eHgpRH9NgXhfSoCnLXVN6p40xNStpnXHhTsSGIgiydVU4fVRK9Xq+Y5U51nQPGmPe/uLsWyqAmRh3IK6law==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by CY5PR11MB6536.namprd11.prod.outlook.com (2603:10b6:930:40::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.32; Mon, 29 Jan
 2024 15:43:42 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::8760:b5ec:92af:7769]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::8760:b5ec:92af:7769%6]) with mapi id 15.20.7228.029; Mon, 29 Jan 2024
 15:43:42 +0000
Message-ID: <a022d442-db42-4f27-97b2-4738d862d46c@intel.com>
Date: Mon, 29 Jan 2024 16:43:12 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "Brady, Alan" <alan.brady@intel.com>
References: <20240126054747.960172-1-alan.brady@intel.com>
 <41774365-e247-4e32-9e96-d256acfcc129@intel.com>
 <CO1PR11MB518654C3B590812C4155C2138F7E2@CO1PR11MB5186.namprd11.prod.outlook.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <CO1PR11MB518654C3B590812C4155C2138F7E2@CO1PR11MB5186.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR3P281CA0129.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:94::17) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|CY5PR11MB6536:EE_
X-MS-Office365-Filtering-Correlation-Id: bb2c7873-134b-400a-e092-08dc20e1124c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kadGQkNwRsJtrv6J1uL4JXErGokMjuaEj1EEO67LPAhx6SnqMBgJGzsQbb09xOoSIMGEKCLsV88Asowujpy8evUjWKdv9MEGvjKVPc8XFj49iYXZR8eWueUom8Kzi2ubk8y6f5ErTggtzaLpPY6I5nQNhhV5SKJP5CCEhE4UOJUnEQDj0yad9xrQu6jF8fJWFyD/CFtFltUb8hL3uMQEEnSr56LEze2ySLd8z1/Hwfn9blcxQd/7inZ19/doSUXn+wyb1Se7rE6ZUzXJQbBzIbpYcJuAktzj8bi6tmsTSZpfvZ+CWPSAZurAVl0GDTMRlotfO0S9kun6h+2XXWCYVFE65AkhhBZnGfZjk3yAlI7FJD1QCAFuJSLcaX6XTKI7BWjo0zItgo4WKAOWOrTGlM8/OD0i5j+jHEvXIhWsMapIHGFv4YzTM0j1jOFIfvZf4LvRbYCy+PAkw5t9qlSEZqQJw9IGKAhaXcaduvmwgK9Qgsz/Ro+/VHGKES1Z+eEEHhxwE1asCtSXTjuvPW2OOYJ3PtDVyZuGlbI8o210/SuiQXhW+PFuWP6s/0CXK0JlCpe+TdKYAQzq8umck6RTiSFx66v6Eu2dmRBcA+P3ueW/tK0v4tFep80PdYrV7pRbX+X9qXjh3v1xbmI61GKcEg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(136003)(39860400002)(376002)(346002)(396003)(230922051799003)(64100799003)(1800799012)(451199024)(186009)(31686004)(83380400001)(31696002)(86362001)(82960400001)(36756003)(38100700002)(15650500001)(26005)(6512007)(6636002)(107886003)(2616005)(6666004)(66556008)(53546011)(6506007)(6486002)(2906002)(8676002)(478600001)(316002)(37006003)(54906003)(66946007)(66476007)(41300700001)(8936002)(6862004)(4326008)(5660300002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dWdFVlJTS2JLR2VsL2w2S2pHU041SHpJOW9hZzBteGpGaUZ6ZFpleVMwUGli?=
 =?utf-8?B?YkxBSy8yNmZ0SUQ5Z2s0MU1tL1NDY1pqamFmMm12N1JFZWpyUGZpbVRFS3NC?=
 =?utf-8?B?c0phS3ZHVytNUk9zZEVCZDlkQ3FLZXpGbThwQlZtZ3liQk5WVHBFZFFYZC9l?=
 =?utf-8?B?YnFIMlI3TnhwT2RjSEsrTi9qeUp0RWRhVWxqNmsxeGk2UmZvbVVGQkRsZVJ2?=
 =?utf-8?B?eDV4bUVOZGg2RXFLS2g3TDJlVFJjVHArcnpYOXJ0bGZkQW1hWmxXUnBHdVNC?=
 =?utf-8?B?UllCMmpIdGM4clhGdFRqYWdtY2xrd21LRXY1L0pIRUZXOEk3TUJtTXNDQnE1?=
 =?utf-8?B?cGNLV0hUeGQ2aVZOOG85WnVYSFF2ZUFlTFNPL3dXeUQrQlRXdDJ4NHZza0Y2?=
 =?utf-8?B?VXd0WkRaekhnUDdEVkhESG00SU5wdmVEdDBUbEQzMmNJcGFPUG1CVCtJd0hs?=
 =?utf-8?B?S05QTVZubmY3NXNydXVYd3c5cnhMbmRSeUM3ay9RaCsxL082Z3R3U0RHazl6?=
 =?utf-8?B?SVVmSWhIdVVjYVovYmk2Q3dzN0lEcDRPUitOcE9BU0hTRVlvK2FDRFI3Wmls?=
 =?utf-8?B?MWhsTlJyd0MwZVo3YUx2bVY4d1JSSWhMYndNeFppbTRFd2h0d3lFbFJ3VWlZ?=
 =?utf-8?B?T3hNOGp6VGh5UlVHclZVdnB0ZFpteDhSSGo0UmIxNWozS3VHVXlWRTVJM3Ir?=
 =?utf-8?B?OERlZGRIRDd3MDRhL0Y0ZTcvSzZyS0NXeXdEQ2hvNHc0YWpKaWd6cWVRajJu?=
 =?utf-8?B?UVhvWDNwTmQvSHB1R1Nlb0YwWFZ4RTl1bjlDVDFQa0YzSXFWSlJhRDMrVC9q?=
 =?utf-8?B?NWh2dS9DdVljcXRaZ2VnNlBYbjFyOXp0QXQ0QWhFeUVsMDBXODBaOWFhL1Zj?=
 =?utf-8?B?a1p0Si9IOWZYcXh5bEtPc3BIRGxNUWVUVkJLNFp6Mncza0JLYkhOQ3YwUUNL?=
 =?utf-8?B?SUVsNENCWTB0S0Y3OGwvaDlyMlBKMWgyWE00UmhibEd6VFJKZXcxU000SzZZ?=
 =?utf-8?B?NTdOdFB6RWdNdytWUFlZSjUxWVBkbUlJWHo4V3NLRkUvcDE5R3ErNm9vbEhQ?=
 =?utf-8?B?ZUEzeGJYengzSkIrc2llZys2Q2hlZS8rRlFENkd5WnNFTEhaZUNENE5rSytn?=
 =?utf-8?B?cjhubTFvTFNxUWV2VExQSWptaFVVSVRNWjdqS2U0U2c3NjlSdDJtTnFDUGxK?=
 =?utf-8?B?dVpyZHhvdmZKa3BYQ2c0OFZma1JqelJHVTZXdTNXTXY5Qm1pbTFwMTNpMWpt?=
 =?utf-8?B?ZGh3WCtGQXM5bElzOWxPYlBqMGNrRU5wd0FJcUdHZC9hblc5UFlwdVJySmU5?=
 =?utf-8?B?cFJFVnRISGcrQWhyNzA5SGQ3cGwwV2U0b3hjZ09WOTNrNjNNMlZsZXFsM21K?=
 =?utf-8?B?SUJPeHMrcEtINWVqVEttQ1FEMXorYkVzRjhqNzZZVlR6WkN6NFB0Q1hwZUVB?=
 =?utf-8?B?SEFHTjlUTkFMK3MrMkFyOEtOSFZjK200NlRrQUhNeW5VUlRIeXQ2TTJmaXBW?=
 =?utf-8?B?ejVyNW1uMUVNbXBXTkdHSFBBL2ZtQzlNZ0FneVhUWEJsMSt2K0pla3RZME9M?=
 =?utf-8?B?RFFFanVIODM0M0k0NGdqWi9wWHovNjNUY0FzMld4WlhORHdhaDc3V3NEc3dH?=
 =?utf-8?B?dnFERWFWaFBIaHZ5SUZNRk40NDVoVGxIRDlNYWVyVFZEWHM1OTQ4UkpHVmVs?=
 =?utf-8?B?NEtDbmtVQXhOS05aYXBIMEd1OWF0d21YRWZyVThNSGZ5eVFQK1N0d1MvbXdN?=
 =?utf-8?B?TmJNblhmQkNaNDV3RHJ0NkhtZktNOTh5VFZ0OUtzZ2FRSXJTdnZERS8yL2ov?=
 =?utf-8?B?MlVMRGlXQ1pKQ3pwNDN0YXJwN0VwRitwV24xMmoyNk5OZHhTRVZ2YXpYVDBj?=
 =?utf-8?B?aTRpYmhCZmlUSSt6WG5GcWlwSkc4L2duSmkwb3d5YWRJY3c4bitmQkJ6bzdy?=
 =?utf-8?B?ZnN3WUpzZDJMN2xDcExCeU4yeWpSYlU0UmY2T1JzZGpOY2tDT0gvSkNtZjBk?=
 =?utf-8?B?UC9kUjB5YytmUGQxeGt3MzZvdExWSTBaRzBIL1Z2T1Z0aWZPRTRjUTNyMkJx?=
 =?utf-8?B?VzlDbGROVGo0bHBmU0xXYk10V3kyMks3a0crOWpUeDdvcllzTExxYkh1M1RC?=
 =?utf-8?B?YVlRelFMS2d1bC9INXRzUkJUVzZWK3NsOHc1NUhCMFhuM0tsblR2NjJlQkg5?=
 =?utf-8?B?Umc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bb2c7873-134b-400a-e092-08dc20e1124c
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jan 2024 15:43:42.7725 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3qrB2NTijIVHqSYbhBb55s1k/nlbmcLBAnJ/og6Kxx00oBXnl8k2DFsa0u24a2ItRWN9m5CPVpj1cixuZKjkXAw5K3QsqENNgbH1QvY3cs8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6536
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706543036; x=1738079036;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=07QJ8jLfwfSb2aylz6FC12jVbbAEkpN6LRnsiKFRyf4=;
 b=ILOQ2c/B+FW1H12yUV8PBmY6ssJFNfb0/fmafTqHAsKv2t1hokMN6pka
 7tCrrMFj7Lo19kplVM7QPajWoOtKz1BPLIxZYFxaFjy7BtXvJGxXKPiQR
 xmK/EVoQBzTSQV5ZinZ++kzbPGj6g+It6VTiRJuV8sRKqmTlW5mPIj59u
 I6VxGbu5KSBKGXrEEeishwavYZ+7qCNvedxgY+OxgEJ3/qktGwXe1nOn1
 Xl1jwwkjq0qZdu+ZEz5v+VwxzsEwCZTU3HM5gk8gJHJPfyV/Cc8lw4GKI
 6A9FjHnkt4AskWoKBkQHzKXHlq/IN9xAl+VdDG4knWV9PFH3X3gRe7Xud
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ILOQ2c/B
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 0/7 iwl-next] idpf: refactor
 virtchnl messages
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "willemdebruijn.kernel@gmail.com" <willemdebruijn.kernel@gmail.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Bagnucki, Igor" <igor.bagnucki@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Brady, Alan <alan.brady@intel.com>
Date: Mon, 29 Jan 2024 16:12:06 +0100

>> -----Original Message-----
>> From: Lobakin, Aleksander <aleksander.lobakin@intel.com>
>> Sent: Monday, January 29, 2024 5:24 AM
>> To: Brady, Alan <alan.brady@intel.com>
>> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org;
>> willemdebruijn.kernel@gmail.com; Bagnucki, Igor
>> <igor.bagnucki@intel.com>; Kitszel, Przemyslaw
>> <przemyslaw.kitszel@intel.com>
>> Subject: Re: [Intel-wired-lan] [PATCH v2 0/7 iwl-next] idpf: refactor virtchnl
>> messages
>>
>> From: Alan Brady <alan.brady@intel.com>
>> Date: Thu, 25 Jan 2024 21:47:40 -0800
>>
>>> The motivation for this series has two primary goals. We want to
>>> enable support of multiple simultaneous messages and make the channel
>>> more robust. The way it works right now, the driver can only send and
>>> receive a single message at a time and if something goes really wrong,
>>> it can lead to data corruption and strange bugs.
>>
>> [...]
>>
>> There are a fistful of functions in this series and IDPF's virtchnl code in general
>> that allocate a memory chunk via kzalloc() family and then free it at the end of
>> the function, i.e. the lifetime of those buffers are the lifetime of the function.
>> Since recently, we have auto-variables in the kernel, so that the pieces I
>> described could be converted to:
>>
>> 	struct x *ptr __free(kfree) = NULL;
>>
>> 	ptr = kzalloc(sizeof(*x), GPF_KERNEL);
>>
>> 	// some code
>>
>> 	return 0; // kfree() is not needed anymore
>>
>> err:
>> 	return err; // here as well
>>
>> That would allow to simplify the code and reduce its size.
>> I'd like you to convert such functions to use auto-variables.
> 
> Certainly, should be straightforward and make the code much better, sounds good to me. Just to clarify I'm only going to mess with the virtchnl functions I've otherwise altered in this patch series to maintain appropriate scope, yes?

Yes, only virtchnl functions. New functions that you introduce 100%, the
rest only if you touch them.

> 
> -Alan
> 
>>
>> Thanks,
>> Olek

Thanks,
Olek
