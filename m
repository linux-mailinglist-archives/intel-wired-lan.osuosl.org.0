Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FB4457A710
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Jul 2022 21:17:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9403081369;
	Tue, 19 Jul 2022 19:17:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9403081369
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658258236;
	bh=4iw5v9UgD1jqQdt5MlCTuWliYYcOu/nqktbplQgVPFs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HjQsfr+e0FqMqkzE8mz+fSWWQZJR5mjcm7/S9LdvpQwEGJDYq89uDF0lOq8jA2mYt
	 Zsdr7P2sdhuhgT9+TpAs5aM3ZWmMRJ8SiS5CMXL8yBwLA+4pnQc+K9csyXbWepHFbO
	 wxrd0yPRSWV67slCEnFZgrBiPFuMxmCgWVz45HZVIbPT/AUVb/KjdROpmWD9OcG4bR
	 E6lsSMC4lP0H0tVro8ZzUfbfHokBFE34pk4KqPcsJOkABMY3zrANByT2cZxfjUxBhp
	 S/2SfBxOdgz2TUeywxgtCltuMe8VH/6Vv65qNJjqthMW8i7UTPMD5vlJBmW7WGNl8k
	 iI+61C9dMtn9w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vW8Uk_HP70Iy; Tue, 19 Jul 2022 19:17:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 442248133D;
	Tue, 19 Jul 2022 19:17:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 442248133D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 62E841BF5A1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jul 2022 19:17:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3A980405CD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jul 2022 19:17:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3A980405CD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hJ5y0Ho0ZW58 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Jul 2022 19:17:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1C5CD40114
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1C5CD40114
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jul 2022 19:17:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10413"; a="285329996"
X-IronPort-AV: E=Sophos;i="5.92,285,1650956400"; d="scan'208";a="285329996"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2022 12:17:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,285,1650956400"; d="scan'208";a="655910006"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga008.fm.intel.com with ESMTP; 19 Jul 2022 12:17:04 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 19 Jul 2022 12:17:04 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 19 Jul 2022 12:17:04 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 19 Jul 2022 12:17:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DLINuIB90t0ZT3GTUo8lKm0o8b/diRxtGovboIXcMrEL1FbRWkQzGmJE8gC5nQVZJJwpohIYLXAQkXICz+N0uM+msXlMh7G+Pzx0GynUQOv4PHY6kw+fQn+LEDdT9ayHS44CWzTLm94BZWSbU1xWAUQ6tgRt1sd0zf4XdA4bODw989+mC7r3IWgmmPaN5/zbi7D3SPXUTrONxYAn+vsqjDfdgLracEYNKrgaBkhSLVwoaIBjJPzJpktJ3Z3mt8Pe+EHZ97nCSFMEU/IUjS52F3APpccKR8PlFMM++W8QR+KcV2K7eEO7YmeAzKo74kom6XiKh/7hVxJiV87RcrONcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XZKJCdIM1ULyEBTfWzkh1xhKV8pI8x4xrydXF7/5XaE=;
 b=m+iKiozwf8/F07wAl9mazU+/FupujZNOngLmJ73hc4eQcMwMht7m+Tc6mL7O302UMkTgv0CQDu38EFK05MwMAeUywcSBR3g+aeDj09RfO4lOKuUCZGSCQX9KkXL3rQZEmFT8GXzmTJnczFHEcjTbz2+ngXsWubIw1Z9ClXy3WgXjmQeIFbFubqc3XVp/rUzPavbIKW9AEUE5RC00Rd3OTGDsQhd7mOWC/BvkczCiW3GoXzoeS+5VkXtsAQlg20yynrsivNJT1fkln5QIJajnl5FPEMVAu8C2uqH6A7KxeMPPvz+bQeK6wc85LHJ5JeMVa1XXUc0/9hYyqhKg+2tgkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM5PR1101MB2235.namprd11.prod.outlook.com (2603:10b6:4:52::15)
 by CY5PR11MB6413.namprd11.prod.outlook.com (2603:10b6:930:37::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.23; Tue, 19 Jul
 2022 19:17:02 +0000
Received: from DM5PR1101MB2235.namprd11.prod.outlook.com
 ([fe80::c987:bcad:a771:2696]) by DM5PR1101MB2235.namprd11.prod.outlook.com
 ([fe80::c987:bcad:a771:2696%3]) with mapi id 15.20.5438.023; Tue, 19 Jul 2022
 19:17:02 +0000
Message-ID: <34a8720b-47f8-5aa6-3953-a0c82915d188@intel.com>
Date: Tue, 19 Jul 2022 22:16:54 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.11.0
Content-Language: en-US
To: Lorenzo Bianconi <lorenzo@kernel.org>, <netdev@vger.kernel.org>
References: <d8e3744f060ee11d5069bfd0f581f02d0ecb5e08.1657093744.git.lorenzo@kernel.org>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
In-Reply-To: <d8e3744f060ee11d5069bfd0f581f02d0ecb5e08.1657093744.git.lorenzo@kernel.org>
X-ClientProxiedBy: LO4P123CA0600.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:295::20) To DM5PR1101MB2235.namprd11.prod.outlook.com
 (2603:10b6:4:52::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 71b2dfbc-2862-4a20-5278-08da69bb4236
X-MS-TrafficTypeDiagnostic: CY5PR11MB6413:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ANNQSp8Pp0eeMu+ho0hUWOivXPuANPMkJkeOQx+TG5j0/1IGwn1tuZReZiqEml9tmtqvIuXc9kzYp3S9q2XXtoBwjThcENvsE1+dzcisM7R//YFzV2Mo+XoVVZcblFBokkZFqRXp3GtylfabLOUHOFoxQ4r1kEsMvnBIuY38ScC8hJq5GCMTHTf/knzbBZyJrzeFutxIInjfJdYkweVUIlr39lRem5CJqgdD1/u0AtNyhrCxvyUepv3yS6LVJ6j+cNKPWO9S/I5LhjljHsc/t1vRJEfdA9cz96LAZbiGr9uNM+NAwum6Xur2fY/3AT3h5ryYdtWyMSkRCbgNnwnT5rUvvoJ+sO2MQVHLcHGxA2KVE1+YRancgRlF+bFE7MGuaZxb5UDAsidgoKnDXBw/KY0QhlZZe6i3v5e2KOULNLt3xsYkb4CFmqKxE80B74cS/VskV8UOaNUfMCnglxkFvpTuMFBftxaEkQT+wqF8b8WRbq+57/x2MnqDNGScVIyevaDK4wn1HXN0ocQZmOtvY+BgdwPwdh2vjHXpPz/0Jeq4RWi9iIvPQEjKBR/11p4YvUXlZT2GPQmk96NwDVBX62+wXOrcBSNyz+18kup/UVoBrNpMgFMLzYLXsJDclrV0XXM97po3rv/8QcXVtQQBWkqz5Iw2+y5NbKXZ1zv+ttKA3/G/x7vIt5CP4swQ+WCWeiL287GdakEG/En0nVcu8E0NFQe1afSIzXxFL+rmvmw+jrDb9LmiFz2Hlkp0bQlQWfypoElus72urUDEw6yFWq/tpnJkmhXS/dwbvjumdt+AjkgD6b1vBmKGcACSnVXeR2HflZ5n2GGl0YFkwAfJRg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR1101MB2235.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(376002)(346002)(396003)(366004)(39860400002)(316002)(8936002)(66476007)(66946007)(66556008)(38100700002)(4326008)(36756003)(8676002)(31696002)(53546011)(6506007)(82960400001)(54906003)(83380400001)(6512007)(31686004)(26005)(41300700001)(186003)(2616005)(6666004)(5660300002)(478600001)(86362001)(6486002)(2906002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bm1YV2k2TlFyOXlBU21XZjhxZytEdlAweFh2WFRiMnlNekRQK1NWbnE2YUJZ?=
 =?utf-8?B?SDRUcUllb1Z5YkF4UHhSV0taQ3VUbjVxSWZxcnVOS2ZvanhIdFBNR2oyUTVl?=
 =?utf-8?B?STA4MjQzR2RLMHNiWDFpcGRKTFR5VVBoUVQyWlh3c1krVkxqd1RkaSttSkwx?=
 =?utf-8?B?ZVNhVG5vMEd2RHFmRURVL25idEw2c0h4eHVHUEhjdjZqbGVEekFKSHNsbWc1?=
 =?utf-8?B?YWwzek12Y1gwY1NZQXgwQUJmNks2NXRPWVhSTXhrL0ZjcWUvOEdESTdycnZY?=
 =?utf-8?B?bmQ3eE9XTys2OGtIM2ZIK3Nqb1pvSFkwRXFwTWlPMWNHa09MTE5vZkN1bHZO?=
 =?utf-8?B?cWlKSldNZTZmcW9VVHVkRzc3bEVkL1I4ZlRLdWxRUVNjMXJwdnBkNys3YlR6?=
 =?utf-8?B?RWczY2JtencxUnptQTlXM1hmWUJnMHlQNEpVMlpwRmk4K2J1eDNUTUZkZjBW?=
 =?utf-8?B?ZFNUSWhkbU1GUURzZkFJQTRWVnBkM0FJTElBN2VQdjNFWVNNQUtVMFRJTEtI?=
 =?utf-8?B?LzhsaHNyZEN1RElmNEFzaE5TTnI5UEluNm9Ick91YW5RMHp6YjJuWXpIT1lV?=
 =?utf-8?B?NGN5c25FV0UreE9URXA0cG1iM0ZtaEFTQUdiVnZGS1ZKMDhVSVgyUXNhb21Q?=
 =?utf-8?B?Y3RUZkFkWSsrSklhYnVCOENTWjViU1VQK3FPWjhwdEF3b1F6QmF6a2xKOWRJ?=
 =?utf-8?B?aEcxSkM5M2ZjRDBBTTllVXc0UjY4dmRLSjd3M2NyUzREeDFReUQ2OXdOWFpF?=
 =?utf-8?B?QWUrQWVxVGF2cEV0bFpHdWdFMFEzK25FOVpvWkM2NXp0cExlenErM3BEZ2JL?=
 =?utf-8?B?TzJ4N0tEYUFSU3NzSjRTeHZ1dXFGeW04VE5ZbUNPblB4dlY0blZXamhSSDhH?=
 =?utf-8?B?ZkNKSGtYNWQ1OWc2OCs0NDNRNFlLaVRRSUdLMSs4UFJJSENnWVdKYitYM1JZ?=
 =?utf-8?B?ZTRVMlU1Zi9STkpVZnJadStMVERDZm1veEhPUW8vbzBpQ3EwWnl4SlM0aHdt?=
 =?utf-8?B?LzVUN2JGTTdyMDJGUHE2V0NKaEY0QUpEUkozZTNROUUyZmlPSWZMYWwyNlBZ?=
 =?utf-8?B?YzdsVGRQbk04K1ROUmhmNE1oNXU0d2R0UnhJd2laU25wM0dwa3gzaWFSRy9h?=
 =?utf-8?B?SWwySFBBeU1LbUsxdnE2Qm04YUsxWlJ6N3NSQ1ZJdE1MS09uR0gvaGFQSElN?=
 =?utf-8?B?RFhUMmZGUHcvMWtXbVNIOFQzOTMvRzJvTVJiRGdIWlB0QWlEcXpEYWxQSUlY?=
 =?utf-8?B?ajQ5cjh3eW1iNUlQUk04dFFOQWc3U2lpVTVVck92ZUtuN0piLzY0OTNNdnFE?=
 =?utf-8?B?czdwVklLOEZmYTNZQW04VTNzRUxJbTZINDFyN0pwQVFlQmo2cG1XWnVlRnIx?=
 =?utf-8?B?OGNQMnJWM2RnK2M3RFRKY3NZR3VIUDFWWCszdjhNMkt1UlhwVnVLeC85ODRa?=
 =?utf-8?B?TDhaRWg3aEtDN1NTUEZWVU50YVBTWWtNZ1RaUUg0ZWFyeCtqSDRwczFvTnQz?=
 =?utf-8?B?UFJ6V2RSeHUwSWRjRS93OFVDOUlqb1hTRWxkcXJ6QlV6TlJxQ2RrdXluRWpr?=
 =?utf-8?B?RDF4c2s2SHQydEVDOVNOT2p2bm5YT1JZOFFuSTVOSUN3ZnprWGg1cURBN2Fj?=
 =?utf-8?B?dFBFM2lKVFovT0xDK09WbHhFVGp6NCswV3NIRHR3b2ZhRzBrVFEzTGpLK0xR?=
 =?utf-8?B?eGg5cHI1TTg4RW0xd05JbzVYMkZCcGhRc3FaRHdhRG1Da0hqSC9OOUNDSlBJ?=
 =?utf-8?B?MFdaTEJDczZBb2lqWHVHRVF4K01BQ2RwZVZoS3cwbTNlbDY4V2ZwSHNiN3g4?=
 =?utf-8?B?N1RJTUNmbmdxWWNiR1cxRnFQckpTajBOaVNPQXpNdSs0Y20yRi9uNm5tVFB6?=
 =?utf-8?B?Wm96Sm16TUJIcXkxZG1kSEhKZW4rdEhpWWdlM0l1V3owdnJjcW1vS2dxZlV0?=
 =?utf-8?B?eFkzZmR3Mkxoam4xK0hZNThVc1Q3eVpVWEJ5UXZiWVlzSmZEUGRqS0pFWE0x?=
 =?utf-8?B?L3ZZV3dlRjJEWWg0a1FjT0YrTElEeEVqUURZRDNpeUJPaGtmVHRIejZUZGhl?=
 =?utf-8?B?S1NHMGVDeUU5T1J3czdqS0ZCYkRaNHNBOW1jR0VyZ1EyNXNUeFZlMXpWWXVJ?=
 =?utf-8?B?d2NvdVoyeEJKTUhTVlZaR2hOaFBibXFtL1BQTjhGUDF6REo4cnVXeUYxOUZp?=
 =?utf-8?B?NkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 71b2dfbc-2862-4a20-5278-08da69bb4236
X-MS-Exchange-CrossTenant-AuthSource: DM5PR1101MB2235.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jul 2022 19:17:02.0128 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 47F71adLqtsWP/qYDNdfX3tEDIFFChpJ30wyi5AcA+SH7XbEXFk4ZZFABQrZh+MuvTIBSMaOcRLNKLKXiZk0oA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6413
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658258226; x=1689794226;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kM6dsYW3CAlNCMXqLOGPUX8A9LmNJEJ2SF9NprqXLks=;
 b=Z/WQeANDs9A8/yjTFwZ0lrsQXRSPQSnyirzDd1feRQQvibOsMwOtuQid
 pcR+fYBNL5xtac8FBR1beHFy6sjHqQhD8q48Ca2D/FJ5UkFfR5wPKu9+S
 xHwAiRceDG6cpceyEcvIwOkuV6KMBESalFnpWT13VkdBgs7Z2amYF24Q9
 ql0xeVszEI9OPlKV6nocaCD6r6lD1Yg2eZe0fdT7YalZdvwHH0huluwmj
 bNX5a3DAW8v76IJI8nlYQxC2H4pKrmYGe+U8EIJVZ5fpua+F4LrlErpST
 QJeaTXjTBIaW/TiTtGdWuFiObdnrim3LnTkvzakeMY/G+TNAtZv3fjn96
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Z/WQeAND
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] igc: add xdp frags support
 to ndo_xdp_xmit
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
Cc: "Fuxbrumer, Devora" <devora.fuxbrumer@intel.com>,
 jesse.brandeburg@intel.com, jbrouer@redhat.com, "Edri,
 Michael" <michael.edri@intel.com>, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, magnus.karlsson@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 7/6/2022 10:54, Lorenzo Bianconi wrote:
> Add the capability to map non-linear xdp frames in XDP_TX and
> ndo_xdp_xmit callback.
> 
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> ---
> Please note this patch is only compiled tested since I do not have
> access to a igc NIC
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 128 ++++++++++++++--------
>   1 file changed, 83 insertions(+), 45 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index ae17af44fe02..71657d03da03 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -2129,65 +2129,102 @@ static bool igc_alloc_rx_buffers_zc(struct igc_ring *ring, u16 count)
>   	return ok;
>   }
>   
> -static int igc_xdp_init_tx_buffer(struct igc_tx_buffer *buffer,
> -				  struct xdp_frame *xdpf,
> -				  struct igc_ring *ring)
> -{
> -	dma_addr_t dma;
> -
> -	dma = dma_map_single(ring->dev, xdpf->data, xdpf->len, DMA_TO_DEVICE);
> -	if (dma_mapping_error(ring->dev, dma)) {
> -		netdev_err_once(ring->netdev, "Failed to map DMA for TX\n");
> -		return -ENOMEM;
> -	}
> -
> -	buffer->type = IGC_TX_BUFFER_TYPE_XDP;
> -	buffer->xdpf = xdpf;
> -	buffer->protocol = 0;
> -	buffer->bytecount = xdpf->len;
> -	buffer->gso_segs = 1;
> -	buffer->time_stamp = jiffies;
> -	dma_unmap_len_set(buffer, len, xdpf->len);
> -	dma_unmap_addr_set(buffer, dma, dma);
> -	return 0;
> -}
> -
>   /* This function requires __netif_tx_lock is held by the caller. */
>   static int igc_xdp_init_tx_descriptor(struct igc_ring *ring,
>   				      struct xdp_frame *xdpf)
>   {
> -	struct igc_tx_buffer *buffer;
> -	union igc_adv_tx_desc *desc;
> -	u32 cmd_type, olinfo_status;
> -	int err;
> +	struct skb_shared_info *sinfo = xdp_get_shared_info_from_frame(xdpf);
> +	u8 nr_frags = unlikely(xdp_frame_has_frags(xdpf)) ? sinfo->nr_frags : 0;
> +	u16 count, index = ring->next_to_use;
> +	struct igc_tx_buffer *head = &ring->tx_buffer_info[index];
> +	struct igc_tx_buffer *buffer = head;
> +	union igc_adv_tx_desc *desc = IGC_TX_DESC(ring, index);
> +	u32 olinfo_status, len = xdpf->len, cmd_type;
> +	void *data = xdpf->data;
> +	u16 i;
>   
> -	if (!igc_desc_unused(ring))
> -		return -EBUSY;
> +	count = TXD_USE_COUNT(len);
> +	for (i = 0; i < nr_frags; i++)
> +		count += TXD_USE_COUNT(skb_frag_size(&sinfo->frags[i]));
>   
> -	buffer = &ring->tx_buffer_info[ring->next_to_use];
> -	err = igc_xdp_init_tx_buffer(buffer, xdpf, ring);
> -	if (err)
> -		return err;
> +	if (igc_maybe_stop_tx(ring, count + 3)) {
> +		/* this is a hard error */
> +		return -EBUSY;
> +	}
>   
> -	cmd_type = IGC_ADVTXD_DTYP_DATA | IGC_ADVTXD_DCMD_DEXT |
> -		   IGC_ADVTXD_DCMD_IFCS | IGC_TXD_DCMD |
> -		   buffer->bytecount;
> -	olinfo_status = buffer->bytecount << IGC_ADVTXD_PAYLEN_SHIFT;
> +	i = 0;
> +	head->bytecount = xdp_get_frame_len(xdpf);
> +	head->type = IGC_TX_BUFFER_TYPE_XDP;
> +	head->gso_segs = 1;
> +	head->xdpf = xdpf;
>   
> -	desc = IGC_TX_DESC(ring, ring->next_to_use);
> -	desc->read.cmd_type_len = cpu_to_le32(cmd_type);
> +	olinfo_status = head->bytecount << IGC_ADVTXD_PAYLEN_SHIFT;
>   	desc->read.olinfo_status = cpu_to_le32(olinfo_status);
> -	desc->read.buffer_addr = cpu_to_le64(dma_unmap_addr(buffer, dma));
>   
> -	netdev_tx_sent_queue(txring_txq(ring), buffer->bytecount);
> +	for (;;) {
> +		dma_addr_t dma;
>   
> -	buffer->next_to_watch = desc;
> +		dma = dma_map_single(ring->dev, data, len, DMA_TO_DEVICE);
> +		if (dma_mapping_error(ring->dev, dma)) {
> +			netdev_err_once(ring->netdev,
> +					"Failed to map DMA for TX\n");
> +			goto unmap;
> +		}
>   
> -	ring->next_to_use++;
> -	if (ring->next_to_use == ring->count)
> -		ring->next_to_use = 0;
> +		dma_unmap_len_set(buffer, len, len);
> +		dma_unmap_addr_set(buffer, dma, dma);
> +
> +		cmd_type = IGC_ADVTXD_DTYP_DATA | IGC_ADVTXD_DCMD_DEXT |
> +			   IGC_ADVTXD_DCMD_IFCS | len;
> +
> +		desc->read.cmd_type_len = cpu_to_le32(cmd_type);
> +		desc->read.buffer_addr = cpu_to_le64(dma);
> +
> +		buffer->protocol = 0;
> +
> +		if (++index == ring->count)
> +			index = 0;
> +
> +		if (i == nr_frags)
> +			break;
> +
> +		buffer = &ring->tx_buffer_info[index];
> +		desc = IGC_TX_DESC(ring, index);
> +		desc->read.olinfo_status = 0;
> +
> +		data = skb_frag_address(&sinfo->frags[i]);
> +		len = skb_frag_size(&sinfo->frags[i]);
> +		i++;
> +	}
> +	desc->read.cmd_type_len |= cpu_to_le32(IGC_TXD_DCMD);
> +
> +	netdev_tx_sent_queue(txring_txq(ring), head->bytecount);
> +	/* set the timestamp */
> +	head->time_stamp = jiffies;
> +	/* set next_to_watch value indicating a packet is present */
> +	head->next_to_watch = desc;
> +	ring->next_to_use = index;
>   
>   	return 0;
> +
> +unmap:
> +	for (;;) {
> +		buffer = &ring->tx_buffer_info[index];
> +		if (dma_unmap_len(buffer, len))
> +			dma_unmap_page(ring->dev,
> +				       dma_unmap_addr(buffer, dma),
> +				       dma_unmap_len(buffer, len),
> +				       DMA_TO_DEVICE);
> +		dma_unmap_len_set(buffer, len, 0);
> +		if (buffer == head)
> +			break;
> +
> +		if (!index)
> +			index += ring->count;
> +		index--;
> +	}
> +
> +	return -ENOMEM;
>   }
>   
>   static struct igc_ring *igc_xdp_get_tx_ring(struct igc_adapter *adapter,
> @@ -2369,6 +2406,7 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
>   			xdp_prepare_buff(&xdp, pktbuf - igc_rx_offset(rx_ring),
>   					 igc_rx_offset(rx_ring) + pkt_offset,
>   					 size, true);
> +			xdp_buff_clear_frags_flag(&xdp);
>   
>   			skb = igc_xdp_run_prog(adapter, &xdp);
>   		}
Hello Lorenzo,
Could you provide test hints (step by step) on how to test it?
Sasha
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
