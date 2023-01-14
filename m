Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 581F566A780
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Jan 2023 01:32:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D448D4158D;
	Sat, 14 Jan 2023 00:32:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D448D4158D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673656328;
	bh=wuu5WMx2c8nDPr5IrLR+zh0efp214DUNMZLhIpCpzug=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=d9WuLO5NtpKg7msrEWBCh5XmEW+dYwNzH17HlQP4g/4JICA6HeeCb8tPk/bYvrLuf
	 639tgWw+foogkwCvwWbH4zxOnOQoL+/kA6tGEo41qGlrCr04VvIyjo1I8uzMaK742a
	 NTJkAqqfWAHmWFMl5gKqZA9o2XtaCMcqa2P0mIPYeri8KfR5tF+pTjIOqNxZJ2LSRc
	 GmtjwcyFfdOVG4t9RG+veJ2CARZ2uAX6xPZ/0Ynj1nEv0s3a8KvMLd5wM571XKo9fk
	 dqyk3dwyuakFlI98H2PxMNfKiJNrakA5w6fCdfCQOlgmg8rlO3k3h/jM8Lt+1WfnVY
	 SBzgb2u6aoeng==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZZlyQLOeKcxU; Sat, 14 Jan 2023 00:32:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3CFBD4019D;
	Sat, 14 Jan 2023 00:32:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3CFBD4019D
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 903E41BF3C3
 for <intel-wired-lan@osuosl.org>; Sat, 14 Jan 2023 00:32:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 62993400C8
 for <intel-wired-lan@osuosl.org>; Sat, 14 Jan 2023 00:32:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 62993400C8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8hzWYkq23neU for <intel-wired-lan@osuosl.org>;
 Sat, 14 Jan 2023 00:31:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D766F4019D
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D766F4019D
 for <intel-wired-lan@osuosl.org>; Sat, 14 Jan 2023 00:31:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10589"; a="311987043"
X-IronPort-AV: E=Sophos;i="5.97,215,1669104000"; d="scan'208";a="311987043"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2023 16:31:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10589"; a="660375658"
X-IronPort-AV: E=Sophos;i="5.97,215,1669104000"; d="scan'208";a="660375658"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP; 13 Jan 2023 16:31:49 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 13 Jan 2023 16:31:49 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 13 Jan 2023 16:31:49 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.105)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 13 Jan 2023 16:31:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ne5WXUAUjSUnTP16mJjoZA2kQ2Qh3SDCQAQhmW5nl9Yk5EtZ3bGcDJiUxQZeSsIRkFhHszHJvuHHQa5QOm5c7KeRy0C5V4PLL8zxYGNanHZ+d6naB3uhFpWGvdCE35Y6vbJn4gL/PIR7t1WpTCLLJRsbFQ3aL/M84PQQKG1WVT4owBqrYvf1h0xXzE+0Mn39H1gluaFbeN0QeVu38h1F9He/ya2oXuzV2KcbouQB/S7W1vMcZgR5hbderPAeJl6PSEzYj5kwEXYPb6cPumMY0RYflmSZdTO/BAAf/lMFObAuUnVLrG0X/81dvjSPk56VtYeGoOtNCgR54JS1LC1tZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ykOh7ySkNsYOx/xpQRS/UF/BNLVeDEWSSnMkkQZ5szw=;
 b=LmWcUTWqM5d061Mi3+F3i1eXxiqda1ezhizZWf88rHOgIyeTura2rEyN4F+dLvoXHtdyLDy3eyvesImdqm3YmhFTinRJ+wwbWlwSH2LFzuwqZw137qvwVOy4pyF8z4K55dgjLl0Dzx+i2lfhMlPjwDH7adFEajzRjPwmhNafl2ZuRp4PefPIznfEGYGH7O8xj9jx60QpMXBDZt3Ss9YtyeFSCzqHXxtP0k4wpqgWeHdxv1myl+RciA5qFzmgm4YKEbBwuF88iewB8hGNyF1ZNheIx5wYU2ttjfm05yHim92OyXPu5hF1V5P1eqlm0UhVYySr79fLxQ0tak2LBeYgBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SA1PR11MB6967.namprd11.prod.outlook.com (2603:10b6:806:2bb::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Sat, 14 Jan
 2023 00:31:40 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::5697:a11e:691e:6acf]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::5697:a11e:691e:6acf%5]) with mapi id 15.20.5986.019; Sat, 14 Jan 2023
 00:31:40 +0000
Message-ID: <70178971-82b0-19f9-58fb-6ed66393b93d@intel.com>
Date: Fri, 13 Jan 2023 16:31:39 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: <intel-wired-lan@osuosl.org>
References: <20230113222319.111-1-paul.m.stillwell.jr@intel.com>
 <20230113222319.111-6-paul.m.stillwell.jr@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20230113222319.111-6-paul.m.stillwell.jr@intel.com>
X-ClientProxiedBy: BY3PR05CA0011.namprd05.prod.outlook.com
 (2603:10b6:a03:254::16) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SA1PR11MB6967:EE_
X-MS-Office365-Filtering-Correlation-Id: 6fae9e32-4d35-4e9d-54f1-08daf5c6b47a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yGUjm09CrdMlkvcoHttrOPA6hGeA38G0tOPTJDrBXoykMSWlW3vsqsvo8z3L3y0g+Bx00W0GLWbbJQicXBZTvajKmoOt6+PTizW6Iw/N00UWUYwi6c6HqEyWNZPYKslVZsBgwm5I5L37lwv3uXWLK8vkwGXfhUcSzCan6l7s8GBvpgw+gCN1LuB885mXKjMbFcLsoyy3ceed/3EgNY1EudtIddCMtR0eODoUlgBIxP5yoZrFzyCkkqRPNazq/A9rtL7nPv/cDO9g0xRxqOqNFd4fYkYSh1T1LozlbjkrAq/u+LI8sFqachYI0SN/6yP7dfjPZeQiyk5NzPq/WrZhj0lTS1W1vWwXsP3u93RaYGwN6Ifye8FQAUn4eaA2AUcvy32VudIsAwHar7PnPpkYEKrXUCS4088aSBRD6idXWOBTeIn1x104finyXtSd996EmqRgU7bTIvS4PfDL2ecIufvk4dtc8PeNPNYEQsv11gyLpGDx7hfFHjtn/1aNe2WH6Y9UE7E5FJf9Pz/t1auWqNvKBdKRTUuJhYdq+ZeeA9OdHRq637lVPAx4zm93RJIHnsuTeHR4MbrJi2j5TUyn5BfmBTkbk/OK6S8rjGvoZdHvyxN3mqPYJMk8V5IjE7fkhiOOxgSe1yAfeZw5VLY+wW68Dz0BBlTKt9IKB+A8UjFFsmgKzWGNGjwEvwROKciXDt+I7y1LOLHcyMKUcCnbX5x1yWOizqWKfwo81jQ4w9E=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(39860400002)(396003)(346002)(136003)(376002)(451199015)(53546011)(31686004)(2906002)(6506007)(6486002)(6512007)(26005)(186003)(478600001)(8676002)(66946007)(83380400001)(2616005)(36756003)(316002)(66556008)(66476007)(6916009)(41300700001)(30864003)(38100700002)(82960400001)(31696002)(86362001)(8936002)(5660300002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UlFKbUI5TG02SmpUbHZZOHJORE9RWEpHK2NmUTN3aWwzam5TN0ZJczNTTjY1?=
 =?utf-8?B?Ui9IQTNLdGMvS3psTlMwRmI2OFJRUDVDdzB6Wk1QdlArd20rOVRrTm85WWRx?=
 =?utf-8?B?UWZpZHNiVDlXUlVlNDhWQnovQVlzbHYwWFg5SmN5dGlRNmZyUUFtb1FDaUFF?=
 =?utf-8?B?a25zTU9FQ3JaVktFakZOdXpFK2xUOXA4YlVlTW5yL1hyNW5VaEZWNEZLeTlm?=
 =?utf-8?B?eVIyVUNvTmlWWlMwN2NuRjZvdmZrd3BBY0lWTHpMekZpQzRiUHRMN2lydXFa?=
 =?utf-8?B?VHpkbDdRakVKakx2ZThqZkJjM3BCeS9OQklqYWdmT3d2N0xJYlVCTitGNFFv?=
 =?utf-8?B?eVErbUkrNm84bzZaOG9BajJ3cCttU0ZrcWV1U3BCYWlKek9Cb25vQWtpTlM5?=
 =?utf-8?B?ZkM0SCt5ZklSRTNlU3FRVFBKeVJTZW1NZWJpTnl6eUo2dy9QWDdKeGg3bGYr?=
 =?utf-8?B?aUFSblR0V25lUC9SWWNabVh1SEVZZ2xIdG1xcklzZWdjRzUvRmtGWjloRjFX?=
 =?utf-8?B?YnRkR0ZCNDY5VFJ4UnBFZ25KNmU2SVI4bkpRa1NEa21xMDVKaXFQVW9xa3Ur?=
 =?utf-8?B?U1lTMEk5V2RKVUNZa0tra0Z4VGpZNkJOZElpY0QyVDRtanVOUUFoQks2M1Fu?=
 =?utf-8?B?K3JYSFpoMkQ0QVM1YjRwQ0hLWjBXbXE4eTVBMDcyVzIvUWlmVzJHOXhJeXJE?=
 =?utf-8?B?K0Urc2FaZDFUWmkzZUlrcDhWMnZCR1cwdWRZMWwrYkViZnVKU1NuN0lXR3BI?=
 =?utf-8?B?NzdYdlBtNFpmQW1jTTNQb3VCVWtRUkk5SmNwYkYrbUVyZFZlYmxZRlh6Nm9P?=
 =?utf-8?B?T2I5TWhSZkdWb3hDWlByd0tJZi9TeFlaRXJ2Z0VnTDNzZzNTaHc2YXRweWFH?=
 =?utf-8?B?Vit1YW4xbTAvMnA2QXpmYVZMaXVtS3pHZlhjdENod2lQUUZJSnBGNitUWUZn?=
 =?utf-8?B?SjZsTTNaSXVQSkxlL2Y5VS82M0N2aWFSZHBaaStuZm9EU016dGhIK2YvRnkv?=
 =?utf-8?B?ZVg1VFpYaWhWR3F5a1UxUFJFY2paRHlqa00xTm1LSGJITVNnY09CV3c3YUk2?=
 =?utf-8?B?WE80dnFYQ01TMmc1ZldxUGFoQkhtajd0WFROdDUxL2hYMWd1VEJ0SThjTmIy?=
 =?utf-8?B?ZnpxU1Z4MXNGU3lvMnJhM3hBODBKWkV3K2t3SnluaU13Z0c4S1kvLzJ1dFpS?=
 =?utf-8?B?andmNmszZ2JpN2tNNE1JZ0NtbWNHNVF6alBpZDRoRGdCbktDa3o4UW1kbXJm?=
 =?utf-8?B?QzFEQkJhT3NHTlB2clFQOGZMSnhLcGMwalN2NUZYVExDaVUvSnA5eHlOZWdF?=
 =?utf-8?B?Y1hoNzYyMzJrYzVuODZRKzFCV3R1RkR3aUw2aG9nMGhVVmNKYVEzcmhSVUEr?=
 =?utf-8?B?WW5sc0ZLMXdJVmZLZS9NeWlJS01BR0JURURwZDZPcGNzOU0vNE42Rzd5VVhP?=
 =?utf-8?B?U2s0b3J4LytMRUxHeDlidEdQNEh3NEdEZWJ1ZFhFS0pDYVZZQnhaUTI4MWNK?=
 =?utf-8?B?dm5TR050bC85ZW51MUVkeEVET092N0xNdjRtRjhXRHNFRXRlNFNENFNXczMr?=
 =?utf-8?B?YTlQSVNjWThOcXZ5aDZJQ2RNd0FtOXBYTUhJZ0V4V1o5eVVySVYwZmF0REY0?=
 =?utf-8?B?OWpKTUJqNko2SGt0cDVYem9paXB1UlVWYzJIQk1mQ2NuNEk0QlZtUmxNd3Iz?=
 =?utf-8?B?SjNPbDhmdXdlSC9kSXVIbnVrL2VucHpscW1UdEg2enhZUmRoYVprNE9vZ3VD?=
 =?utf-8?B?Zk0ybXZ0WS8wWXN6WE8vV01zVFhRRC8rMmRweWlDK2J6R2o0Z05SOFRGVExt?=
 =?utf-8?B?ZEZOOWVsY2c2cWJtMHJGOW1hbHNpVGNXNlE1cVdOdHIvQ1hqU0VYekNHRC9T?=
 =?utf-8?B?V3g1UHdsTDVmUCtUNVhHOUZWTGRXMzZCVWwwaktmQ3cxckFYb3c4STJYUlc2?=
 =?utf-8?B?bzdEYXJTZTJFdEo5KzdwUC96UzEvRSs2RlBiZnlwbENjengwMkM5bnBmb3Va?=
 =?utf-8?B?L1JWLzJOM0huU09WNiswcnVvZ1ZvUEZ2bHhndVVGQktZd1YrMmhzRGE4ajl0?=
 =?utf-8?B?dHB3UHVqYnExSzYwUkJtdVAyR3FBWk5mWHdIUWJjS0h0VTJGZHQzQ3ROQ2VK?=
 =?utf-8?B?em9VU0hhQVVWUGttUm1FWk9NZWhyQTg0SjJ4NkZ6TkhZMy9BQXhtSjBwUVR0?=
 =?utf-8?B?dVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6fae9e32-4d35-4e9d-54f1-08daf5c6b47a
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jan 2023 00:31:40.8637 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ikFr55XE5rz1aXtD+ypbUTiuQ0XJoTJu8oBkr9RZURbM+pJa/+aiA3n/BWuIUXV5KSqzsvKlXE6t550boqHIU/3q+MzGiKZxeg4X8LyGVyQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6967
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673656319; x=1705192319;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=AYm+lsgns3Y+/klZqo3wV2cDE/N/uHxLXz2AKgw3Zb4=;
 b=I0RqTtGhmoIZqbytV4sJuPaFqQDMoMcp2/a1J6YxFikw4bixMrfrfkYO
 1lviEaZxQdd2m8a5tQ4PWoB7t3Xs8iOoisxXneNthJt/kPxEaQUz5nuRp
 pA7mHaNv5zYa+/TL8kihtaGCfTUIs6MXUYk9QBpoxwLNlcX4GDUAMNBKh
 0KwbhS0LLcJmsoQvWtiNei0r2p0mwuSrHuxrJJIN2UMdQ1UQJhB/KoD7g
 s9P2RDkPtzQRwT5jT57HQN6BwG27OnkTIA2UKtRWzfrI1KXycT+Lof2l7
 Xt9MCl732Z5oz7hWCkjDvySD1GPxiePGF4c1++Q6BYDHwgtSbGxsoOtDr
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=I0RqTtGh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 5/5] ice: use debugfs to
 output FW log data
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 1/13/2023 2:23 PM, Paul M Stillwell Jr wrote:
> The FW log data can be quite large so we don't want to use syslog.
> Instead take advantage of debugfs to write the data to.
> 
> The file is binary data and users should send them to us to
> work with the FW team to decode them.
> 
> An example of how to retrieve the data using debugfs is:
> 
> cat /sys/kernel/debug/ice/0000\:18\:00.0/fwlog > fwlog
> 
> Also updated the documentation to add the new parameters.
> 
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> ---
>  Documentation/networking/devlink/ice.rst      |  39 ++++++
>  drivers/net/ethernet/intel/ice/Makefile       |   4 +-
>  drivers/net/ethernet/intel/ice/ice.h          |  22 ++++
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   1 +
>  drivers/net/ethernet/intel/ice/ice_debugfs.c  | 109 +++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_main.c     | 124 ++++++++++++++----
>  6 files changed, 271 insertions(+), 28 deletions(-)
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_debugfs.c
> 
> diff --git a/Documentation/networking/devlink/ice.rst b/Documentation/networking/devlink/ice.rst
> index 625efb3777d5..546a618ae7a2 100644
> --- a/Documentation/networking/devlink/ice.rst
> +++ b/Documentation/networking/devlink/ice.rst
> @@ -7,6 +7,45 @@ ice devlink support
>  This document describes the devlink features implemented by the ``ice``
>  device driver.
>  
> +Parameters
> +=============
> +
> +.. list-table:: Driver-specific parameters implemented
> +   :widths: 5 5 5 85
> +
> +   * - Name
> +     - Type
> +     - Mode
> +     - Description
> +   * - ``fwlog_supported``
> +     - Boolean
> +     - runtime
> +     - This parameter indicates to the user whether FW loggiing is supported
> +       or not in the currently loaded FW.
> +   * - ``fwlog_enabled``
> +     - Boolean
> +     - runtime
> +     - This parameter indicates to the user whether the driver is currently
> +       getting FW logs or not.
> +   * - ``fwlog_level``
> +     - u8
> +     - runtime
> +     - This parameter indicates the current log level. Each level includes the
> +       messages from the previous/lower level. Valid values are
> +
> +          * ``0`` - no logging
> +          * ``1`` - error logging
> +          * ``2`` - warning logging
> +          * ``3`` - normal logging
> +          * ``4`` - verbose logging
> +   * - ``fwlog_resolution``
> +     - u8
> +     - runtime
> +     - This parameter indicates the number of log messages to included in a
> +       single ARQ event. The range is 1-128 (1 means push every log message,
> +       128 means push only when the max AQ command buffer is full). The
> +       suggested value is 10.
> +
>  Info versions
>  =============
>  
> diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
> index 6e4680ad097c..452a440a9810 100644
> --- a/drivers/net/ethernet/intel/ice/Makefile
> +++ b/drivers/net/ethernet/intel/ice/Makefile
> @@ -34,7 +34,8 @@ ice-y := ice_main.o	\
>  	 ice_ethtool.o  \
>  	 ice_repr.o	\
>  	 ice_tc_lib.o	\
> -	 ice_fwlog.o
> +	 ice_fwlog.o	\
> +	 ice_debugfs.o
>  ice-$(CONFIG_PCI_IOV) +=	\
>  	ice_sriov.o		\
>  	ice_virtchnl.o		\
> @@ -49,3 +50,4 @@ ice-$(CONFIG_RFS_ACCEL) += ice_arfs.o
>  ice-$(CONFIG_XDP_SOCKETS) += ice_xsk.o
>  ice-$(CONFIG_ICE_SWITCHDEV) += ice_eswitch.o
>  ice-$(CONFIG_ICE_GNSS) += ice_gnss.o
> +ice-$(CONFIG_DEBUG_FS) += ice_debugfs.o
> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> index 51a1a89f7b5a..49115ac9cd45 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -550,6 +550,7 @@ struct ice_pf {
>  	struct ice_vsi_stats **vsi_stats;
>  	struct ice_sw *first_sw;	/* first switch created by firmware */
>  	u16 eswitch_mode;		/* current mode of eswitch */
> +	struct dentry *ice_debugfs_pf;
>  	struct ice_vfs vfs;
>  	DECLARE_BITMAP(features, ICE_F_MAX);
>  	DECLARE_BITMAP(state, ICE_STATE_NBITS);
> @@ -632,6 +633,8 @@ struct ice_pf {
>  #define ICE_VF_AGG_NODE_ID_START	65
>  #define ICE_MAX_VF_AGG_NODES		32
>  	struct ice_agg_node vf_agg_node[ICE_MAX_VF_AGG_NODES];
> +	struct list_head fwlog_data_list;
> +	u8 fwlog_list_count;
>  };
>  
>  struct ice_netdev_priv {
> @@ -646,6 +649,15 @@ struct ice_netdev_priv {
>  	struct list_head tc_indr_block_priv_list;
>  };
>  
> +struct ice_fwlog_data {
> +	struct list_head list;
> +	u16 data_size;
> +	u8 *data;
> +};
> +
> +/* define the maximum number of items that can be in the list */
> +#define ICE_FWLOG_MAX_SIZE	128
> +
>  /**
>   * ice_vector_ch_enabled
>   * @qv: pointer to q_vector, can be NULL
> @@ -870,6 +882,16 @@ static inline bool ice_is_adq_active(struct ice_pf *pf)
>  	return false;
>  }
>  
> +#ifdef CONFIG_DEBUG_FS
> +void ice_debugfs_fwlog_init(struct ice_pf *pf);
> +void ice_debugfs_init(void);
> +void ice_debugfs_exit(void);
> +#else
> +static inline void ice_debugfs_fwlog_init(struct ice_pf *pf) { }
> +static inline void ice_debugfs_init(void) { }
> +static inline void ice_debugfs_exit(void) { }
> +#endif /* CONFIG_DEBUG_FS */
> +
>  bool netif_is_ice(struct net_device *dev);
>  int ice_vsi_setup_tx_rings(struct ice_vsi *vsi);
>  int ice_vsi_setup_rx_rings(struct ice_vsi *vsi);
> diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> index 1af036beeb45..27c2cea29c51 100644
> --- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> +++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> @@ -2377,6 +2377,7 @@ enum ice_adminq_opc {
>  	ice_aqc_opc_fw_logs_config			= 0xFF30,
>  	ice_aqc_opc_fw_logs_register			= 0xFF31,
>  	ice_aqc_opc_fw_logs_query			= 0xFF32,
> +	ice_aqc_opc_fw_logs_event			= 0xFF33,
>  };
>  
>  #endif /* _ICE_ADMINQ_CMD_H_ */
> diff --git a/drivers/net/ethernet/intel/ice/ice_debugfs.c b/drivers/net/ethernet/intel/ice/ice_debugfs.c
> new file mode 100644
> index 000000000000..682bef0b62e8
> --- /dev/null
> +++ b/drivers/net/ethernet/intel/ice/ice_debugfs.c
> @@ -0,0 +1,109 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/* Copyright (c) 2022, Intel Corporation. */
> +
> +#include <linux/fs.h>
> +#include <linux/debugfs.h>
> +#include <linux/random.h>
> +#include "ice.h"
> +
> +static struct dentry *ice_debugfs_root;
> +
> +/**
> + * ice_debugfs_command_read - read from command datum
> + * @filp: the opened file
> + * @buffer: where to write the data for the user to read
> + * @count: the size of the user's buffer
> + * @ppos: file position offset
> + */
> +static ssize_t ice_debugfs_command_read(struct file *filp, char __user *buffer,
> +					size_t count, loff_t *ppos)
> +{
> +	struct ice_pf *pf = filp->private_data;
> +	struct device *dev = ice_pf_to_dev(pf);
> +	struct ice_fwlog_data *log, *tmp_log;
> +	int data_copied = 0;
> +
> +	if (list_empty(&pf->fwlog_data_list)) {
> +		dev_info(dev, "FW log is empty\n");
> +		return 0;
> +	}

In my opinion this should be a dev_dbg. The fact  that the read returns
zero data indicates that there is no data to extract. I'm not sure we
need to make even an info message appear in this case. (What if for
example someone has a continuous read going in a loop?).

Making it dev_dbg disables it and can be enabled via dynamic debugging
in the event someone wants to know why logs aren't appearing.

> +
> +	list_for_each_entry_safe(log, tmp_log, &pf->fwlog_data_list, list) {
> +		u16 cur_buf_len = log->data_size;
> +		int retval;
> +
> +		if (cur_buf_len > count)
> +			break;
> +
> +		retval = copy_to_user(buffer, log->data, cur_buf_len);
> +		if (retval)
> +			return -EFAULT;
> +

What happens to the data here if we EFAULT in the middle of the read and
we've already copied some elements out and freed them?

Shouldn't we accumulate the data first and then free all the blocks only
after a success? If we return an error code the kernel will assume no
data was read. I would think we'd want to iterate through the list
keeping track of which ones we are going to pop off the queue and only
remove them on a success?

> +		data_copied += cur_buf_len;
> +		buffer += cur_buf_len;
> +		count -= cur_buf_len;
> +		*ppos += cur_buf_len;
> +
> +		/* don't delete the list element until we know it got copied */
> +		kfree(log->data);
> +		list_del(&log->list);
> +		kfree(log);
> +		pf->fwlog_list_count--;

So the only purpose of this is to prevent the case where we have
accumulate messages but they're never read, and the goal I assume is to
avoid running out of memory?

> +	}
> +
> +	return data_copied;
> +}
> +
> +static const struct file_operations ice_debugfs_command_fops = {
> +	.owner = THIS_MODULE,
> +	.open  = simple_open,
> +	.read = ice_debugfs_command_read,
> +};
> +
> +/**
> + * ice_debugfs_fwlog_init - setup the debugfs directory
> + * @pf: the ice that is starting up
> + */
> +void ice_debugfs_fwlog_init(struct ice_pf *pf)
> +{
> +	const char *name = pci_name(pf->pdev);
> +	struct dentry *pfile;
> +
> +	/* only support fw log commands on PF 0 */
> +	if (pf->hw.bus.func)
> +		return;
> +
> +	pf->ice_debugfs_pf = debugfs_create_dir(name, ice_debugfs_root);
> +	if (IS_ERR(pf->ice_debugfs_pf))
> +		return;
> +
> +	pfile = debugfs_create_file("fwlog", 0400, pf->ice_debugfs_pf, pf,
> +				    &ice_debugfs_command_fops);
> +	if (!pfile)
> +		goto create_failed;
> +
> +	return;
> +
> +create_failed:
> +	dev_err(ice_pf_to_dev(pf), "debugfs dir/file for %s failed\n", name);
> +	debugfs_remove_recursive(pf->ice_debugfs_pf);
> +}
> +
> +/**
> + * ice_debugfs_init - create root directory for debugfs entries
> + */
> +void ice_debugfs_init(void)
> +{
> +	ice_debugfs_root = debugfs_create_dir(KBUILD_MODNAME, NULL);
> +	if (IS_ERR(ice_debugfs_root))
> +		pr_info("init of debugfs failed\n");
> +}
> +
> +/**
> + * ice_debugfs_exit - remove debugfs entries
> + */
> +void ice_debugfs_exit(void)
> +{
> +	debugfs_remove_recursive(ice_debugfs_root);
> +	ice_debugfs_root = NULL;
> +}
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index f24693e42e35..e689b96b3ef7 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -1212,6 +1212,43 @@ ice_handle_link_event(struct ice_pf *pf, struct ice_rq_event_info *event)
>  	return status;
>  }
>  
> +/**
> + * ice_get_fwlog_data - copy the FW log data from ARQ event
> + * @pf: PF that the FW log event is associated with
> + * @event: event structure containing FW log data
> + */
> +static void
> +ice_get_fwlog_data(struct ice_pf *pf, struct ice_rq_event_info *event)
> +{
> +	struct device *dev = ice_pf_to_dev(pf);
> +	struct ice_fwlog_data *fwlog;
> +
> +	if (pf->fwlog_list_count >= ICE_FWLOG_MAX_SIZE)
> +		return;
> +
> +	fwlog = kzalloc(sizeof(*fwlog), GFP_KERNEL);
> +	if (!fwlog) {
> +		dev_warn(dev, "Couldn't allocate memory for FWlog element\n");
> +		return;
> +	}

For data like this I wonder if we'd be better served using vmalloc so
taht it can be virtual memory. That could help since we might accumulate
quite a large amount of data before it gets read by the userspace...

I used vmalloc for the snapshots of NVM and Shadow RAM for example. I
don't think this *has* to be non-virtual memory, but I am not really
sure what other tradeoff that would have.

> +
> +	INIT_LIST_HEAD(&fwlog->list);
> +
> +	fwlog->data_size = le16_to_cpu(event->desc.datalen);
> +	fwlog->data = kzalloc(fwlog->data_size, GFP_KERNEL);
> +	if (!fwlog->data) {
> +		dev_warn(dev, "Couldn't allocate memory for FWlog data\n");
> +		kfree(fwlog);
> +		return;
> +	}
> +
> +	memcpy(fwlog->data, event->msg_buf, fwlog->data_size);
> +
> +	list_add_tail(&fwlog->list, &pf->fwlog_data_list);
> +
> +	pf->fwlog_list_count++;
> +}
> +
>  enum ice_aq_task_state {
>  	ICE_AQ_TASK_WAITING = 0,
>  	ICE_AQ_TASK_COMPLETE,
> @@ -1485,6 +1522,9 @@ static int __ice_clean_ctrlq(struct ice_pf *pf, enum ice_ctl_q q_type)
>  			if (!ice_is_malicious_vf(pf, &event, i, pending))
>  				ice_vc_process_vf_msg(pf, &event);
>  			break;
> +		case ice_aqc_opc_fw_logs_event:
> +			ice_get_fwlog_data(pf, &event);
> +			break;
>  		case ice_aqc_opc_lldp_set_mib_change:
>  			ice_dcb_process_lldp_set_mib_change(pf, &event);
>  			break;
> @@ -4497,33 +4537,6 @@ static void ice_unregister_netdev(struct ice_vsi *vsi)
>  	clear_bit(ICE_VSI_NETDEV_REGISTERED, vsi->state);
>  }
>  
> -/**
> - * ice_pf_fwlog_deinit - clear FW logging metadata on device exit
> - * @pf: pointer to the PF struct
> - */
> -static void ice_pf_fwlog_deinit(struct ice_pf *pf)
> -{
> -	struct ice_hw *hw = &pf->hw;
> -
> -	/* make sure FW logging is disabled to not put the FW in a weird state
> -	 * for the next driver load
> -	 */
> -	if (hw->fwlog_ena) {
> -		int status;
> -
> -		hw->fwlog_cfg.options &= ~ICE_FWLOG_OPTION_ARQ_ENA;
> -		status = ice_fwlog_set(hw, &hw->fwlog_cfg);
> -		if (status)
> -			dev_warn(ice_pf_to_dev(pf), "Unable to turn off FW logging, status: %d\n",
> -				 status);
> -
> -		status = ice_fwlog_unregister(hw);
> -		if (status)
> -			dev_warn(ice_pf_to_dev(pf), "Unable to unregister FW logging, status: %d\n",
> -				 status);
> -	}
> -}
> -
>  /**
>   * ice_cfg_netdev - Allocate, configure and register a netdev
>   * @vsi: the VSI associated with the new netdev
> @@ -4650,6 +4663,56 @@ static void ice_deinit_eth(struct ice_pf *pf)
>  	ice_decfg_netdev(vsi);
>  }
>  
> +/**
> + * ice_pf_fwlog_init - initialize FW logging on device init
> + * @pf: pointer to the PF struct
> + */
> +static void ice_pf_fwlog_init(struct ice_pf *pf)
> +{
> +	/* only supported on PF 0 */
> +	if (pf->hw.bus.func)
> +		return;
> +
> +	INIT_LIST_HEAD(&pf->fwlog_data_list);
> +}
> +
> +/**
> + * ice_pf_fwlog_deinit - clear FW logging metadata on device exit
> + * @pf: pointer to the PF struct
> + */
> +static void ice_pf_fwlog_deinit(struct ice_pf *pf)
> +{
> +	struct ice_fwlog_data *fwlog, *fwlog_tmp;
> +	struct ice_hw *hw = &pf->hw;
> +
> +	/* only supported on PF 0 */
> +	if (pf->hw.bus.func)
> +		return;
> +
> +	/* make sure FW logging is disabled to not put the FW in a weird state
> +	 * for the next driver load
> +	 */
> +	if (hw->fwlog_ena) {
> +		int status;
> +
> +		hw->fwlog_cfg.options &= ~ICE_FWLOG_OPTION_ARQ_ENA;
> +		status = ice_fwlog_set(hw, &hw->fwlog_cfg);
> +		if (status)
> +			dev_warn(ice_pf_to_dev(pf), "Unable to turn off FW logging, status: %d\n",
> +				 status);
> +
> +		status = ice_fwlog_unregister(hw);
> +		if (status)
> +			dev_warn(ice_pf_to_dev(pf), "Unable to unregister FW logging, status: %d\n",
> +				 status);
> +	}
> +
> +	list_for_each_entry_safe(fwlog, fwlog_tmp, &pf->fwlog_data_list, list) {
> +		kfree(fwlog->data);
> +		kfree(fwlog);
> +	}
> +}
> +
>  static int ice_init_dev(struct ice_pf *pf)
>  {
>  	struct device *dev = ice_pf_to_dev(pf);
> @@ -5153,6 +5216,9 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
>  		hw->debug_mask = debug;
>  #endif
>  
> +	ice_pf_fwlog_init(pf);
> +	ice_debugfs_fwlog_init(pf);
> +
>  	err = ice_init(pf);
>  	if (err)
>  		goto err_init;
> @@ -5262,6 +5328,7 @@ static void ice_remove(struct pci_dev *pdev)
>  	}
>  
>  	ice_pf_fwlog_deinit(pf);
> +	ice_debugfs_exit();
>  
>  	if (test_bit(ICE_FLAG_SRIOV_ENA, pf->flags)) {
>  		set_bit(ICE_VF_RESETS_DISABLED, pf->state);
> @@ -5725,10 +5792,13 @@ static int __init ice_module_init(void)
>  		return -ENOMEM;
>  	}
>  
> +	ice_debugfs_init();
> +
>  	status = pci_register_driver(&ice_driver);
>  	if (status) {
>  		pr_err("failed to register PCI driver, err %d\n", status);
>  		destroy_workqueue(ice_wq);
> +		ice_debugfs_exit();
>  	}
>  
>  	return status;
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
