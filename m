Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AD7928A4C5A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Apr 2024 12:15:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D55E560690;
	Mon, 15 Apr 2024 10:15:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i8IeU-mqfdWf; Mon, 15 Apr 2024 10:15:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E9A7E606A8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713176155;
	bh=aDEk5QoTgk3KfvOae2BNGXsW+N/pyX8WMRNtgyXtbjE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lENR6OpmfhIUuKDYBk/9yCIJaAtrQy3MLeTX9FUuBmG1kyWlI9p4hqqeAiYF891qw
	 2mVF8KhqX8voEQGnw1QK6Nr4SxTKoksmKMAW9mDfHgAucGb/Jcau5CbKn4Twa0VLxi
	 UpWmrwygDOsdWtIvuHKXLlyyWy5yE7peRiGOaHMtNSZAS7FEKqtrFUeOqrRWP93d8b
	 ENw43i001dx/nCXOu4MEbXWide3hITPlB/dIy7P4J4XsnCjziaT4QtqrMdDbAUs4te
	 NYdm4zvzY/i8Vi7WYgzYBWsMamKhYLDPmiBvjBqNZb52BY8FnC1Auzk9nawky6Rzn2
	 FbwxcYWrN06+A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E9A7E606A8;
	Mon, 15 Apr 2024 10:15:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 790E51BF5D7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Apr 2024 10:15:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6379E8190B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Apr 2024 10:15:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5ejyegmTmNhB for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Apr 2024 10:15:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 81CC9818E6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 81CC9818E6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 81CC9818E6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Apr 2024 10:15:51 +0000 (UTC)
X-CSE-ConnectionGUID: /ZI5vCHMS86G7+/EcoiWeQ==
X-CSE-MsgGUID: zhYn1kR/TTSXkMJxKVLEog==
X-IronPort-AV: E=McAfee;i="6600,9927,11044"; a="19952016"
X-IronPort-AV: E=Sophos;i="6.07,203,1708416000"; d="scan'208";a="19952016"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 03:15:50 -0700
X-CSE-ConnectionGUID: YL2Vp5/1Q2mHpx3gpT2kcQ==
X-CSE-MsgGUID: yd4ClseGQwK/37f15It9iA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,203,1708416000"; d="scan'208";a="21971258"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Apr 2024 03:15:50 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 15 Apr 2024 03:15:49 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 15 Apr 2024 03:15:49 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 15 Apr 2024 03:15:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RUVfx3OaLyYXKPxk1J7qK3CyFcmSnWLrn+A+z+kvupBETY8cq0kDLT0D3WOTxiBRyODRi/vKX21hc4zRcW1BfjZ8qfyPuf6E42kzQSnE4VmePky4y0fa3yM8dbRVI79JKVVtu4BClJJ6wa1lWCqczqG8YS7zEmTzpYijZNYVhKAmgo/tZeB5X2zwb3kTfr0om92H4i0KDjfmijX23axjJTGKJVj6SOOyItnq1yJfWRlP4VWG0WoxRPugdn8UcQUWs8yyEFwtoB8WxRXewviw8EtiS3YxJ0lE6br4p2EEBDtPo+VmcnaZMQt4heKBXHqglxeXdTYqXDj6Pk5R7Nfrrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aDEk5QoTgk3KfvOae2BNGXsW+N/pyX8WMRNtgyXtbjE=;
 b=juukhgGm0scPSez+D8WWct8ViXx9+aGqXz3vmQRNtJH3ypMIZeAf36h9rYgHDBbhBKvDCpOMCMonBcNJ2tsMZp4U4mFxeKNCH+87H3aismYVOYwJ45EHj7cPDTsbEASvHPcUZ2MmoL+b7rzIWeq+726PPv3Yf4qD8F62jqky47ei5TzVk0s4xVCnhVemb+939GiiBvwyn3YA/Yaxu5PyQpkCsDlglJVEhDpzbY1hG5tJbHYaMfH23Y3H/6JHhsxgCejFE97FHGcvWOZGBmNb+YmMisUK+LUYx5ll6t8YUbrHynRO8hDc7AtifhK5P45QjaHK8HuwGVvz0HxBMWB6/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5949.namprd11.prod.outlook.com (2603:10b6:510:144::6)
 by CH3PR11MB7673.namprd11.prod.outlook.com (2603:10b6:610:126::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.30; Mon, 15 Apr
 2024 10:15:47 +0000
Received: from PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::e538:89bf:f381:1ba8]) by PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::e538:89bf:f381:1ba8%7]) with mapi id 15.20.7430.045; Mon, 15 Apr 2024
 10:15:47 +0000
Message-ID: <f4bd1573-400b-4b45-940a-e1dc5e19df45@intel.com>
Date: Mon, 15 Apr 2024 13:15:41 +0300
User-Agent: Mozilla Thunderbird
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
To: Hui Wang <hui.wang@canonical.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <jesse.brandeburg@intel.com>,
 <anthony.l.nguyen@intel.com>, <dima.ruinskiy@intel.com>
References: <20240413092743.1548310-1-hui.wang@canonical.com>
Content-Language: en-US
In-Reply-To: <20240413092743.1548310-1-hui.wang@canonical.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR0P278CA0044.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:1d::13) To PH0PR11MB5949.namprd11.prod.outlook.com
 (2603:10b6:510:144::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5949:EE_|CH3PR11MB7673:EE_
X-MS-Office365-Filtering-Correlation-Id: 6d9fb5bb-e2e5-4268-5dda-08dc5d3504ab
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xyzscy66O6ce0iA4jExbq5nk0IVR4O/+IQWRJCByfW4+iH2LvjK3M1G82SSYPO5CUjAiAHlh6XKkpyTYH2V9eLRyhN70xQhbl1UcWwxe+o9nMIkeKBAi9pfPxPdxVmoktNGnzumpa5qMTPBVrxxJ4zRixUEEL6m79K7J49UZsgF0ITGbm5OFJEb1ABAtbTwucMtzETCC/02/GoTjoprG6SnVMJpj/6vV8GIg0mFGlYemmin+NnQnHFOfNyolz81MToFTDVTIfk6tEUeg/9AjlorcxVkWKE+OhYiIDUN7XICVZHMlcto4in0+rgmdrpy73Ct+H9XdRMYypD0J336BbnTXSQYirV7vQCkEorRuHHBupadQNenxiqQbOJzmkaw/hUOY7FKQDrBpt2/VurSnwfdlRjkndKW97t3gS7I+tr9BLvscnc+XKNA2E3WAvUp+hyfDAyWFe26iob0q9+oIVwlSRSZq7HJRXUQLPosIpTDiPFs2A5SNZtzb6HmRwNtqAro4LD441ePAjSc/83IX/h75du+8anbuj6oSTUFrMrNKUTSxH43fxBZmHJGSo3/XsSm7CwHDnC4/TQ7rsfeO7rR+9iG0b7m/6GUOeHVxvi/QFPrdCwDbI/015IrUjiQA3FyL2c3A83tfQOFQClyTsJu7ElFYV7s0KN/I2JHk3cU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5949.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WEltRTJoZjRFTU5LRHJlb2ZEUjBRTlpBR2lrVXhGVDRUemJuS21tZHN3N0hJ?=
 =?utf-8?B?ZkkxQ29WOHhrQThJRzZoZDhBaWd6RTErTTVrUnpoUGFZTEVmNW93Q3M1cnJK?=
 =?utf-8?B?Yll2a09tVXJhei9uem52VFVCSGZNTFVGUjd1ai9ZUWhIYjV0UkFJSUU2K1J6?=
 =?utf-8?B?RmRoTk04YXFlYUpJR2R5Nzh1YXlGcVl6THYwbEhWSDlVM01neG9TSUhRUnli?=
 =?utf-8?B?Z0xKeGpmMHRsejJnc0tEaW5ybW9PQ3o3UUpFVTJZRnRWY1QrYjRmZ3c4emFC?=
 =?utf-8?B?NVZKMDJPMGlTbUVENW9sNWlSVzA4ekQzRG5LV3BKUG9LbW1OYkRnb0pnbDhM?=
 =?utf-8?B?WitUeS9lN3JuYzZBc1dLOGcyaFROMytIbFA5ZVUyNXBzNXluT3lYV0VGeTBy?=
 =?utf-8?B?bHIyUGZFQWJkeTk4WVZveEFYMDdTTFEweTNUM3VxajE1bDh5aXJ0Slp4QnJU?=
 =?utf-8?B?ZmFUNi83ZHRySTFXTld6Q29SbTlKQkZEdEI2RVRiY3NBdTJzVmdvNUxQSTc1?=
 =?utf-8?B?RTNXYk0zOHVUQWZJdjE0MHJnZjFPaHRLUDBTajVOamxXeG94NEdpSFFsVndO?=
 =?utf-8?B?TzhGUFFkZWNyVjdSTXZxRWtVWkdQd2haMnFoQkdCUkJqdWZsK3IzMVFBbWMv?=
 =?utf-8?B?M0xmVjRwZWRzRjBHMStCY2pNcjFEUjZjY0tIOUV2RFFEUEZTM1kvUXRFRUVx?=
 =?utf-8?B?L0FWclRBTVl3OVhVeExLRHNUdWhoTEFKUjhyaHpnUUtyajR2bDV1bFQ0NDdO?=
 =?utf-8?B?SnYrakE2VDB6b2x5VUgzUGRnYWVJaXZ2NjBBYXc0d0wxMVpwakswcjdhOWRh?=
 =?utf-8?B?cFRzc05ZOU5TZ1VVR0QrWUNkZFpUSGptb3RKMW1hMHBpME80T1ZQMjA4S0l2?=
 =?utf-8?B?Y2dTSUVNcDYrVUszNFEyeEVFSUpwS2RsaDBiZFRyeXRZemZJdG1hUEhzemsr?=
 =?utf-8?B?Zm1tWmdtd29vM2NJM2RlOURyL0oxbGtuWml4K0ZKeTZWSWVSRTVYRTVZZG5R?=
 =?utf-8?B?cFF0VnpjK1B4Y0ROUWlsUnZpazIyeG1qQ29KRnVIbE5lRkNiaU1RZXl0cGhl?=
 =?utf-8?B?dy9CK3ZmekMyWVdRZm9EdTNEd3dIRlZnZzRyR0J0VzR5QnE0RnNLNkhrREcz?=
 =?utf-8?B?QW5zNjlIRFRBekkzUmJZSnFFemEyemxlb1pXVHpua1FHa1d5T2lGN28weEpN?=
 =?utf-8?B?elFRZUhXZ0xXbGJkMW5VVk83TWozZVNnOW1HMWhGanhtSHJGS2ZhOHBTN0pB?=
 =?utf-8?B?ZU8xNm1zdXkvYWhTWXA2cE5WTUhKQ3ZaM25QSnlYdXFrd2U3WUhVTFpVK29G?=
 =?utf-8?B?SGppRmVOMlJyNGcyTVY5WlluTWhrcEpYTW5Jb3AydEIxamNyVjlrR1E5S0JB?=
 =?utf-8?B?QjIxaWp4MmUvazJpaVkvNkh5SVViOVZ0QUE2SHFqc25ZR1BBZzdlSTFwNlNW?=
 =?utf-8?B?dXVqL2FaZmx3M2hFWmZITUVhRE1VU0tqUERmdENpVThPWDhiZW5DdWpDcWdh?=
 =?utf-8?B?aVZsL3NOMm9KYVFjekhuRzcrbkNQVWVGVTVTVDdiR1dteThqQ25wYUw0cE8x?=
 =?utf-8?B?Uzlpai9YN0R4ai9NWUlPSkJhTTFLb0dqd3JENUppMWRCMkJvdVdMVW1jR3k5?=
 =?utf-8?B?MHlBb25Qa0JwYmo5REVkRlF6WWhJdjErNitFN3VYdEE1YUMwMGlRMDFUeGNh?=
 =?utf-8?B?YzdiSU93TW5MYXQvV0VSRE1STmhHZ1RTNUZObGEreEtwYW53UWNLVmM1dUdQ?=
 =?utf-8?B?Y2F2NkVTUWZjbFlESjZ6Tjd4cDVOQXRPS3I1dVcyanpyeFhzdlY0aDNwZFZw?=
 =?utf-8?B?dHk0YmxXMitPY0hKMlZ4NFhBTGlVem51c0kwWFZXZVhoYTF1VlJyUVZOMnps?=
 =?utf-8?B?Y0JJZG1xdWoreWxpS3dFYVMwbTBtTmJDY1UrTWVaSlg0enVjeGhQTzYyUmEr?=
 =?utf-8?B?aEpkZEE0RHpqWkVyblRQNUtrMFR4WGUxQjBNZm9QaDh0eWdhNENQTmloRng0?=
 =?utf-8?B?d3hnNndhTG84OVRQSkczVk5JU2plSUIwWDRKRk1UK3RwUWp3NzJLVTNtKysw?=
 =?utf-8?B?K3BuT0lQSWFsNEd2aUd5cTVGcGxrZGlhdjZFWC9oLzBTdEtjZGtDRTY4ZW9L?=
 =?utf-8?B?Y25JYXA2SjBlbEZNZExyWlhkZ0xmdHR5b2tPSmxvQjRPVVdINDhUOGRjUHR3?=
 =?utf-8?B?V1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d9fb5bb-e2e5-4268-5dda-08dc5d3504ab
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5949.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2024 10:15:47.5387 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aR3NJ0uQP41Z5vVl607stt9skoq1lc8pv3nFxSn4a9CAfdyqCISuGnnb2jDEprxVi8KDu6iz6R26GMiKWr2Dt1xifsF9xVelo/yCVZjLThQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7673
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713176151; x=1744712151;
 h=message-id:date:from:subject:to:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=UhRVEYyP5W6oScit1Qb12n7sd04kTbLbyCZl2cJvbqE=;
 b=J+go8svKbEJhEW1N5ZhN4At5B26W0QDcRLZX3SFyb8U4NGUH5Hal3af+
 WI61mYC4oO3DM++W4Y8lLApIQLgLSZE+PnYhtGZO/eUXvmLNgd3xjuE2t
 aJA0yg/tIl4es+QkZmBFNXpiPRRW4fqHnv+qzLaCtWABTJCYpYM05Gosh
 2fm7d9NULq0Ewv89+iQH3ulfUjYNb/PekCt++hxmsCwiOZeXD2/kPRUG7
 3i1kpTnkAyW2yJlnGCTvDiFzvJSBqMfQAvsao8aeV0DYA0+O4r0xOPJig
 3lM+j3GiJThEtOoRiizNUDKd/7KiVlmtjToDkEWwhB9FvnwdD1yRuy8kn
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=J+go8svK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: move force SMBUS near the end
 of enable_ulp function
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 4/13/2024 12:27 PM, Hui Wang wrote:
> The commit 861e8086029e ("e1000e: move force SMBUS from enable ulp
> function to avoid PHY loss issue") introduces a regression on
> CH_MTP_I219_LM18 (PCIID: 0x8086550A). Without this commit, the
> ethernet works well after suspend and resume, but after applying the
> commit, the ethernet couldn't work anymore after the resume and the
> dmesg shows that the NIC Link changes to 10Mbps (1000Mbps originally):
> [   43.305084] e1000e 0000:00:1f.6 enp0s31f6: NIC Link is Up 10 Mbps Full Duplex, Flow Control: Rx/Tx
> 
> Without the commit, the force SMBUS code will not be executed if
> "return 0" or "goto out" is executed in the enable_ulp(), and in my
> case, the "goto out" is executed since FWSM_FW_VALID is set. But after
> applying the commit, the force SMBUS code will be ran unconditionally.
> 
> Here move the force SMBUS code back to enable_ulp() and put it
> immediate ahead of hw->phy.ops.release(hw), this could allow the
> longest settling time as possible for interface in this function and
> doesn't change the original code logic.
> 
> Fixes: 861e8086029e ("e1000e: move force SMBUS from enable ulp function to avoid PHY loss issue")
> Signed-off-by: Hui Wang <hui.wang@canonical.com>
> ---
>   drivers/net/ethernet/intel/e1000e/ich8lan.c | 19 +++++++++++++++++++
>   drivers/net/ethernet/intel/e1000e/netdev.c  | 18 ------------------
>   2 files changed, 19 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> index f9e94be36e97..dd670cd87df2 100644
> --- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
> +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> @@ -1225,6 +1225,25 @@ s32 e1000_enable_ulp_lpt_lp(struct e1000_hw *hw, bool to_sx)
>   	}
>   
>   release:
> +	/* Switching PHY interface always returns MDI error
> +	 * so disable retry mechanism to avoid wasting time
> +	 */
> +	e1000e_disable_phy_retry(hw);
> +
> +	/* Force SMBus mode in PHY */
> +	ret_val = e1000_read_phy_reg_hv_locked(hw, CV_SMB_CTRL, &phy_reg);
> +	if (ret_val)
> +		goto release;
> +	phy_reg |= CV_SMB_CTRL_FORCE_SMBUS;
> +	e1000_write_phy_reg_hv_locked(hw, CV_SMB_CTRL, phy_reg);
> +
> +	e1000e_enable_phy_retry(hw);
> +
> +	/* Force SMBus mode in MAC */
> +	mac_reg = er32(CTRL_EXT);
> +	mac_reg |= E1000_CTRL_EXT_FORCE_SMBUS;
> +	ew32(CTRL_EXT, mac_reg);
> +
>   	hw->phy.ops.release(hw);
>   out:
>   	if (ret_val)
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index 3692fce20195..cc8c531ec3df 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -6623,7 +6623,6 @@ static int __e1000_shutdown(struct pci_dev *pdev, bool runtime)
>   	struct e1000_hw *hw = &adapter->hw;
>   	u32 ctrl, ctrl_ext, rctl, status, wufc;
>   	int retval = 0;
> -	u16 smb_ctrl;
>   
>   	/* Runtime suspend should only enable wakeup for link changes */
>   	if (runtime)
> @@ -6697,23 +6696,6 @@ static int __e1000_shutdown(struct pci_dev *pdev, bool runtime)
>   			if (retval)
>   				return retval;
>   		}
> -
> -		/* Force SMBUS to allow WOL */
> -		/* Switching PHY interface always returns MDI error
> -		 * so disable retry mechanism to avoid wasting time
> -		 */
> -		e1000e_disable_phy_retry(hw);
> -
> -		e1e_rphy(hw, CV_SMB_CTRL, &smb_ctrl);
> -		smb_ctrl |= CV_SMB_CTRL_FORCE_SMBUS;
> -		e1e_wphy(hw, CV_SMB_CTRL, smb_ctrl);
> -
> -		e1000e_enable_phy_retry(hw);
> -
> -		/* Force SMBus mode in MAC */
> -		ctrl_ext = er32(CTRL_EXT);
> -		ctrl_ext |= E1000_CTRL_EXT_FORCE_SMBUS;
> -		ew32(CTRL_EXT, ctrl_ext);
>   	}
>   
>   	/* Ensure that the appropriate bits are set in LPI_CTRL

Dear Hui,

Thank you for this patch and this observation.
I think that you found a real misbehaviour in the original patch.
However, I still think that forcing SMBUS functionality shouldn't be 
part of the ULP enabling flow, since they are two independent 
configurations.

I will soon submit a patch where I wrap forcing SMBUS in e1000_shutdown 
with an if that checks if the FWSM_FW_VALID bit it set.
