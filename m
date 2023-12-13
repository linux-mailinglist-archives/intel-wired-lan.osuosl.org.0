Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AB9E0810D3D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Dec 2023 10:20:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8323C4094D;
	Wed, 13 Dec 2023 09:20:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8323C4094D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702459225;
	bh=N89V+jGP8dHwJgTz60NKMaVqmqH9E4k70zpX7UOwZzA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8B2b/aX6S7gID8if2x1ch0cG5jG4brfmaiz5tEjjJv8p2bXYt4Xq/23aDgsub76Qo
	 hC+jKHTTjLQ6gTebZaGsQLmjar7ZGb3c+E74aIAnY/tRlYmf28WNI2VuiygdWWWIMf
	 qIOSKVxWpXspgSYea7SSeRhJ7MnXpc7/6vyWHxiJbcCknVOW5wNdQV2X7cxhe8XOwK
	 OA/8iTv+4d9KbS6Z+wKosjI7x5ecVB3FMQb0eQwijxyJw+Cgi4zfhiXA0z1JsfgMoH
	 uwXPtrqg5vALDi20GbfvWQSen56ViZ7gwO9PWZJn877Er5pKAi0QshKrsVsrOMt7dr
	 BLVuKTUHilW0A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nqnrK0_I_vdB; Wed, 13 Dec 2023 09:20:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6574840948;
	Wed, 13 Dec 2023 09:20:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6574840948
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 703121BF3DE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 09:20:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3FF3640141
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 09:20:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3FF3640141
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id glc0BcXQAIY7 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Dec 2023 09:20:16 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C80AF40572
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 09:20:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C80AF40572
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="394689487"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="394689487"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 01:20:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="864555330"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="864555330"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Dec 2023 01:20:14 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 13 Dec 2023 01:20:14 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 13 Dec 2023 01:20:14 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 13 Dec 2023 01:20:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EX62hfNjE2mfolvxGurGjbyamAnmzRExSGTA/EezBFAZN8xK1jh0a3WlmmBMoRLhN1c+VQlWOb31r6wOUp6svj+MAmocY7DnDFzR6NzGKNj1WsCFmVjHxa2Jq6VJJkDBH/wYBuoWt60wpqziqTkLi+s5IV8HDRRePOd6mj4Ko7Mw7bqQR9Yovhm9j9quFQuquNB/xkmY3YV1op4TlCGdcqMM/6rjvE3wnf9cn2/5DdM3CrkL7p4a/ZUYctlkokiCoE/1CXHujY7axeKYtjdQloeSewFuy5hzemEfHqbhmr50+EjAEfednKPLcs6KEgT1WSYkYnDi/rCPkG9EDRB6vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MwNDeBV+FPjM4ni6paP5SWQWBc14mFELILhKzz30vxg=;
 b=V5Soo2BDieDL2tStKqYTh6eyf+wVuDu56k09/uAU13pT84C+C/I3yXyotAR+SDQBDa4i/s5ZoibIxICnq/jhYwpDFiRBTHptLOfJC3Vo45Z64E781MPqumj2mjb5w4f3An/5yq+EqcX+fthSYIN0xjeIpTnXCmss+tXsVKqq7/LshoMq0pnMMLl5yS9juLh6ScROXLxZfrUqJNpoh6dFg7kbQQWRDUWqEV6h2TrDoxZbvPOtJIsyzFxxAALl8nxmvkUaGJpgbKLgEiA7aTvzLqI50a3btj8ll1JzRj0Sjrz02BvXFA5uN+cbw62RGaxozxe1xJ8pSeUOOsTgFOe1DA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3674.namprd11.prod.outlook.com (2603:10b6:5:13d::11)
 by LV3PR11MB8577.namprd11.prod.outlook.com (2603:10b6:408:1b8::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.33; Wed, 13 Dec
 2023 09:20:12 +0000
Received: from DM6PR11MB3674.namprd11.prod.outlook.com
 ([fe80::727b:4b9f:a264:1bb9]) by DM6PR11MB3674.namprd11.prod.outlook.com
 ([fe80::727b:4b9f:a264:1bb9%7]) with mapi id 15.20.7091.022; Wed, 13 Dec 2023
 09:20:12 +0000
Message-ID: <ce4a2471-cdd4-5ecf-ef6e-a91f8cb3fe5d@intel.com>
Date: Wed, 13 Dec 2023 10:20:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20231212104642.316887-1-jedrzej.jagielski@intel.com>
 <20231212104642.316887-2-jedrzej.jagielski@intel.com>
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20231212104642.316887-2-jedrzej.jagielski@intel.com>
X-ClientProxiedBy: FR3P281CA0120.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a3::18) To DM6PR11MB3674.namprd11.prod.outlook.com
 (2603:10b6:5:13d::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3674:EE_|LV3PR11MB8577:EE_
X-MS-Office365-Filtering-Correlation-Id: abdb9287-d97e-4a16-dda3-08dbfbbcb580
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: F9lsLfGGUS1JlYACMBCaIe/Y0dU4Ad2Uw0h/xzi31+K9EoOZE51yt1FQaHFtjOzM6zBFNDA8mZcScOf5r0AxdYoSj+jZLYtxa0fPPc67Gb+hHyaJjFpMi04HP8JiO/gP2/ZETnVIrE8e4zDiZ5kDVP/Us3r20uScLQKbu9rwYzPRrYwNgG0M6DPMzuvWD15lLo2fJl2mb0fBhmmsMLu320L6QFdbzJhjGcH4II3ooo6Af+a4fY/7PwjdpeU9df13+6aCemQXM5N+HVHh+yLvywBFZrzwtFSK3ofYOIHiv1Ki5bcVhFZp1oO838iN3DKI5BCiMDtaWt7NKVQQV1RB3AiElMDL4ANRrGSgI5hnSan+yTKnrWJXabHInKSbMhm2kc73p2Ec7haGOUUwPwQI2flSvZv1VsQ+UP/StmeBLa32w4+q+ldh+5I2QssrV5qcCp2BLfzhYIkpJxKThuBvQ9/xgq20St0L1X2newEU7nTOYHTRk8B0C3FapBgfVb/0nCVn/k4jkhD0mnWBekFOtuHkwkZewEo77I8RvY4GU1OQNvdcIZzMPQT4FHkq2cp8SjKhUi6h8vV3hd5zvP1WdTyODeISji5WZqvIh58NLlDdmyt6u4VnjblGAC6zQpR/GNmgcJw6U91YrMR0AMVO5w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3674.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(136003)(366004)(346002)(396003)(39860400002)(230922051799003)(451199024)(186009)(64100799003)(1800799012)(66946007)(83380400001)(53546011)(6512007)(2616005)(6506007)(5660300002)(4326008)(41300700001)(8936002)(2906002)(6486002)(966005)(316002)(26005)(478600001)(8676002)(6666004)(66476007)(38100700002)(36756003)(86362001)(31696002)(82960400001)(66556008)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OHZwa1o5ZFQ5V3RXSWNCOUxUNjladUgxb0h1eVpLYXZWZFMxZkkvcjJmVVcw?=
 =?utf-8?B?NXpIK09GMm5Od0V2b3piRE40MUhYYVlndmF3anlKZEJBU09NemVVT2ZYN3pj?=
 =?utf-8?B?amkwbXJzbGFxZVQxK0haRm1CL0owdC82ZU9hQjNTcHp5cEpuQU4yWE85M0gz?=
 =?utf-8?B?dUVNTm8yL3pNUVcxeVI2Ty9QcjF4VG5JSjVUejdGeEpIeGk1a1oxVjI0OTFU?=
 =?utf-8?B?anp4MjBsRzI4eXFxNW03V1dsUmJnUVJzd2N0Q3dHV0FGT2oxdVlyTVkzaGRo?=
 =?utf-8?B?UTNxc2thL1BlMUs5MUtPVVdHUU85SzRRU01ESnJQZVdJZHdyQVBOTEtjN3ZD?=
 =?utf-8?B?S0N1Z0tGYWVIOEFBeldRVEJ6V09FTDJPK3VMdXZ6WFNBMHVVSndBQTYvMmFy?=
 =?utf-8?B?dGxXTkhnMm1YbGRSZ1VCN1ZJaFJMcGRvRTAyblR6OTJDNWNza1ptaWFHZHRE?=
 =?utf-8?B?VVBjZXBwU01DNS9IUldIaU1rVEtISUlSNCtSbE5MRnoyQkNuRWYzTGxkU1Zh?=
 =?utf-8?B?ZVNqWk5zQ29wWG5hUGJjdUUxSU1xeS9kRkxsaUVwcWozYXVTMThyRURyZVF3?=
 =?utf-8?B?VFRuQ3A1ZmJxNjd5TUthajlqWUxqUEQvbHUxakpYS0xRT3pOMHRsS0VWNDd5?=
 =?utf-8?B?U3BDRGtVeXdqTzhLTTA2K1hUVWVxRDh3YVFhN0dCc1huTFg0Z2dvdUJIQjNJ?=
 =?utf-8?B?cFFZUzFaMW5sMGNobWg3bGwwVGJpK3psU3NMYjJXYmNGSm1Jcy8rcnk5cmc2?=
 =?utf-8?B?NWVCRlhDeE9OUCtSenV1eXhkNnh3TnFkWnJJblZaU2s4Mmx3WHJSVnUvTFJx?=
 =?utf-8?B?ZWZ1bUZTb2VWdlpHSURYRHlsakxHMTdyL3FaaUl6ZDE4SEJBQjNxdG9Vb0VF?=
 =?utf-8?B?YmtEZlhtenUwODllK1RHOEtRVjhqUnhMTCtRUVROTlBtcHBWK3ZmMVd2RVNj?=
 =?utf-8?B?T0pDYXpuKzQ2L2tKemdmNjVBUEw4ejl3SC9JSWZDNEJxWlRpNWIvZy9samhq?=
 =?utf-8?B?ZHZIdkdzWlFrTWhaUnFQMURDWWtaT0QvZDFaeFA4YlZMZjlOaVorTVB5VkxI?=
 =?utf-8?B?cVl0Z0p5UlpkY1A2T1JrbHlsSEE5SE1HNVNFa2JKa20xYkJudFExTkZOWDNL?=
 =?utf-8?B?c3ZrU2pNOE5IdkJLdnlPQmlra0NOa0owc0ZVeVlLQ1Eya3lDcWNGbVI1UlZX?=
 =?utf-8?B?V3NJWmYzWW9MbjhIeFR2VWNVUU5OTUNrQXkvQnVnOHVwWkE5NkdjQU1TdFNr?=
 =?utf-8?B?cmNWNlRxNUxHajRpQVJGcmgrY1diL1Q4WU4veWJBU3VOeWFOblBoRlZRMUhS?=
 =?utf-8?B?M3dUVmZrTjBtbmplVmI4cno5NXVPTXVyRjh4c212U2FHQ2dWZU56Z2IyZFBz?=
 =?utf-8?B?SG1ibEs4YTdmWUdOMkR2QmgySHlUTmg0QnJuRTg1UVAzSFdBbVdQczhBMWM3?=
 =?utf-8?B?cDBnZ0tSbEFiUUUwVmdBRHd5bndYSEE2YW9YSkoyZjB0b0V0NjliVStZUHdT?=
 =?utf-8?B?eTlMOTc5TUVSbG0yNHlKNnd3ZnlEc00wdXdCelNtTXJsTUhCeEZibnRQcm1Z?=
 =?utf-8?B?S2dpRk9rRUtpMWp4V1ZuVWlWaHNkSFhOTmVPdEpLTmg5T0Y4OE9xQTNlYmFs?=
 =?utf-8?B?aGkyWmNzUno0RUhtN1lycmlQWjI1NFJlS0NSVjIzVGlEazNVZUFtMjBKcnEr?=
 =?utf-8?B?aDlCUEpBdU5zR2JqQUU0TkZmRjl2aFBkQlFlSDl2Q01LenRVczVlNjlrWktR?=
 =?utf-8?B?RVQ5TGVsQnNyS0YzbUlIQW9qYUxLeTFoeU0xdERPUy9QWEtDN0FaYlN2OG5F?=
 =?utf-8?B?UVpGV054YmNMSzdqSVArQ3owbFFnMVJNVkFiK0F4dXBXb0F5OTRxZGNMalds?=
 =?utf-8?B?S0JYajBKV2g1TjJ4bEkzWVhlVDlTU2JQYWdJYlZ1MmJGdUVtallLdXhaTGN3?=
 =?utf-8?B?RS9wNE9BeXdwNDhkZlJnUFNONmV2czJwL3BSRkFEOXRwZ0tMTHlLTnFjbldS?=
 =?utf-8?B?dDhrY1B6Y3hNTThsTDBaUVBVck9hZlduR2J2LzdLdVloVmloL2ltVmUzc0kz?=
 =?utf-8?B?V0pPeHc4QzNEVG8wZC9KekhRVE9wbENSY3RTcVlnSnVTempYa0ZBZTZ6T3V3?=
 =?utf-8?B?ZkVURDZqZ29IQ2JDZG1MUWJsbWoxK0FVYkRHS1ZuRDZPMlRudXJJV2g3bDMw?=
 =?utf-8?B?dWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: abdb9287-d97e-4a16-dda3-08dbfbbcb580
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3674.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Dec 2023 09:20:12.2818 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3DsX+q7uiWjtwXV3jn4ciiWN+P8gRM80OEPHwiSpGtQquLFUAVMnz6QRTD6ei42rmXdWg942G93T0NIKkdbGpEBJTS8vngq3c4vGhs/61yo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8577
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702459216; x=1733995216;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wtztCBOjpiPVu7BGqiQdMjbLWbbxoO66+/8zr90nWBY=;
 b=nOZOs3ukC8PEEcmK9T/hpb6ujSar11lTfvIeRH2tQ63CPDkkkeC1CKBG
 3ihP2PU2bd9M2Q4/h01RG8xLCFgAzk+eqHN4UifuuLQLvJ+DCiQDnNK29
 DNCD55YxTgabe9+PVDDdAukMblqSZGM6S4wEf0XiTLvUZVDVfeBPuu7vT
 vLQcXoN3frL29uvbS4i2ddoQeIQ+ulLqfzGGu0ujTwkQ3jJqEAu6kOjwv
 6OO4aOaExn7ETs5AveiIBBmLczEiUqDzamDOCtofFcnPMAqftD7yUJASs
 t9Dtbmt3xuxDihLKXY3cOGtJ/D0IyxoVjDNKLHGiQYUIlzWSqh5q6GghK
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nOZOs3uk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 1/2] ixgbe: Refactor
 overtemp event handling
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 12/12/23 11:46, Jedrzej Jagielski wrote:
> Currently ixgbe driver is notified of overheating events
> via internal IXGBE_ERR_OVERTEMP error code.
> 
> Change the approach for handle_lasi() to use freshly introduced
> is_overtemp function parameter which set when such event occurs.
> Change check_overtemp() to bool and return true if overtemp
> event occurs.
> 
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
> v2: change aproach to use additional function parameter to notify when overheat
> v4: change check_overtemp to bool
> 
> https://lore.kernel.org/netdev/20231208090055.303507-1-jedrzej.jagielski@intel.com/T/
> ---
>   drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 19 ++++----
>   drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c  | 26 ++++++-----
>   drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h  |  2 +-
>   drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |  4 +-
>   drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c | 45 +++++++++++--------
>   5 files changed, 54 insertions(+), 42 deletions(-)

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
