Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2235174D758
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Jul 2023 15:20:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A44E3813C1;
	Mon, 10 Jul 2023 13:20:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A44E3813C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688995257;
	bh=acaWNAhvvpu4Xn4NKmqaC8xO1w6ONciOng4Layv7Oro=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9kMVukDcWcD4XAb4MVr8HqAsuhYvJJuMK8QerK8a7HcNwBzs5ixU3KPdtcOk7xqIw
	 MgBEODKhBVRMtUt7w7d9/wIDKVKKfKzDobzTTBcGShjOeHvTOO/Pv5eGztfNnsrtAa
	 0TH+obkFPA3E4Z1UdLjRYPjnb1xK/6ABPxGlcEUHUQvhFATkc11ypevAJS6A1biO2G
	 qMTQQ5hxSA9gJ5lrN49HK1Kn0uoof1MjKAWUTQqEF9SSJRkD3u5xm4ERUCdpD90uZ6
	 IttleJ/tNI1a6vta0dxi7CkuItNcPaOpUN04jQnUbDVQyNd+p+kxiIL0xLSDjOTD8C
	 EczcRQ6hgF4jQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dOj-sWi1uS8n; Mon, 10 Jul 2023 13:20:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 12F0C81382;
	Mon, 10 Jul 2023 13:20:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 12F0C81382
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4BC561BF418
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jul 2023 13:20:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2301D40220
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jul 2023 13:20:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2301D40220
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9WxZ_cVVUpvG for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Jul 2023 13:20:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2339D400CF
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2339D400CF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jul 2023 13:20:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="366914510"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="366914510"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2023 06:20:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="720696567"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="720696567"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 10 Jul 2023 06:20:48 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 10 Jul 2023 06:20:47 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 10 Jul 2023 06:20:47 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 10 Jul 2023 06:20:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KjAEftWTf4wp02F4GiutCOStPKOxjRcDBVx86EaWsaoKrWtQc7GC3QcCrNWvWI7reo89q4YlOEZDC3IBtYXVHizLUmmo5VAPxA8Zh2TrbSRWbwve1UQlvACuGdahKC4+QtB/bDitnyLN5rdVftORnKO6Zt3MMmbidpel/nxc1BvNxdRwUcVBDNGn4rg9kXc6tohPUpEwuPRmm6PPQvtMEd7vuuklbt2d46RYp+zx9Hp6kHs/Z6+4ByNRR5Vvx9+JJRuVvAv4PguBQOmcycdwHbMTwLJIBZs+8Y4ERCwzbKHM+RZwRHBMZZEgxS8UUgDdZGds3S+imeoqxtdlcYBkQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k62L1BIVdFyGjq4+oVykHw/tGRtBdJaiZGNHOh/TrOM=;
 b=dGRLMxN6rDBkxhSMsBLDPz0Y1hvt4aGciS2/2IxmpXjKD7Jjp3XBG3FlDl+6v/aTXqMdCHpn84B94hFAYpjFCMWPNQt+hlb1aUtShTRVVyVeqkW49FEC/fQFAMU8X5NqMH+dsRc8H/tnXWRHzt1A/B3UTlsRl8kLrdCajVfG+eXRqtL73Kdic6b6ZfUlZC5XD0EwCw/scfLlL70QLxeK1g7yOez+y4fDB3o6/9sLiNNJ8QhaRcwTVGg0s7N+N3GKgQW3NTfCWgLQsDHOTaEwKebPk/lU29cHIy95ViP756uomusrk0yh5Ng3sPOwfPmd146xJEJSVzjYJjSqb5OB6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by BL1PR11MB5272.namprd11.prod.outlook.com (2603:10b6:208:30a::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.31; Mon, 10 Jul
 2023 13:20:40 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::1ecd:561c:902a:7130]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::1ecd:561c:902a:7130%4]) with mapi id 15.20.6565.028; Mon, 10 Jul 2023
 13:20:40 +0000
Message-ID: <f4884344-98f9-9ad3-62c0-9ade0bbadbb2@intel.com>
Date: Mon, 10 Jul 2023 15:18:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US
To: Alexander Duyck <alexander.duyck@gmail.com>
References: <20230705155551.1317583-1-aleksander.lobakin@intel.com>
 <20230705155551.1317583-7-aleksander.lobakin@intel.com>
 <CAKgT0Ud4h32UFwiUhcpLxSrPRMhbKYSDncL2YiursWgS7Qg7Ug@mail.gmail.com>
 <52963031-76be-b215-052e-a200f01d7130@intel.com>
 <CAKgT0Ufqno2z=6w6XmJ+rVeqzOnHudgsRs8Fgs+eke_cyc0hjQ@mail.gmail.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <CAKgT0Ufqno2z=6w6XmJ+rVeqzOnHudgsRs8Fgs+eke_cyc0hjQ@mail.gmail.com>
X-ClientProxiedBy: DUZPR01CA0311.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4ba::12) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|BL1PR11MB5272:EE_
X-MS-Office365-Filtering-Correlation-Id: d58ba63f-f59d-433e-10b0-08db81487497
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JmHwxswjm+3rFfj/OuPIsGbucZw9qMVUQyprH7djYQbTRCPk+W24olSaJjz7qABJcxrX0mnth5Bp4VF8wpmhERKbrxZt0YRw0V456XROA3wZf1IqlKcOLDM5K2gZlU+z9ZH5O9oBg9PbsckbGWjEyT7aM5EgbPOTmCUKu68Myb5T3sqkrbFes4TNAdkAdM8K4530gudKREDhG3G0MoNxPwrdl0cW2RCyGACs0tGYcT15cY9ciEiP2LefGi3t2KW2EkU6HmlopZoMNMax9QPlHN4IhJyFZERrXMiTqPgKUig7Mq8VAGJYfoMjmWT3qRFSPOKDlrPdpb8BMKhpuh4INt4xjV751vTYvXE17WrXcL6T8w+pT5W9p2NJgal8Na5doRqBcnpxtgF6xbfP1nRvzL0ieZzJfnQOuFEuHsqsmv3XV0GVPjxN0OXvYBHY8hmPbpOgdVJSFnAeCId35S2KluTnOM63jt5qyJjvpE9CaLLa40kWxyQ3+xvX8KEGRJtHOlrmGVm3pAy1Wfe1msNvoekd2CPk4wu4t1k4wXP/rCOh08sjeu9lJUSueQI7ar8eUxVs5CmA9Gq3tlkepONrWjLfrXVgmDqNKILBF9QQPcPgWSGUv0nWvFWkt2w5H/aEM5x8xWbwbS21A6zTFyRCdg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(396003)(136003)(39850400004)(346002)(376002)(451199021)(36756003)(86362001)(31696002)(38100700002)(82960400001)(478600001)(6666004)(54906003)(6486002)(6512007)(8676002)(8936002)(5660300002)(7416002)(2906002)(316002)(6916009)(4326008)(66946007)(66556008)(66476007)(31686004)(41300700001)(2616005)(26005)(6506007)(53546011)(186003)(83380400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Qjl3eE5ocFdGZS9YUGpWaHBuNWhOKzBZeXM1WTk5VHRXSkNXeEVCRmJKUTV5?=
 =?utf-8?B?YTF1dFRyaVJ6anRCVGorRCtZT2JXQ0hTVENDeHh2M3ZwUXdXOXpHdXZTajhi?=
 =?utf-8?B?bVNCVHRjK3FDVTJSSXlQcXZHZHh3VDB3RHVUWXpNUzZuZHJSUXQwdjRJVk5r?=
 =?utf-8?B?cmFGalZzNXh4cVVwYURNeXJzZWRWRmZ2enJ6NDM1YjcveTYrRlM2cEEzaTE5?=
 =?utf-8?B?NERnY3puLzZ2aWlSL1dLUjZVa3djZDZHQkRKYXJlWVFKbzZnaUVhSDJZRXh0?=
 =?utf-8?B?M2dvM2VIc1ExWXRXRnJtSHhpbVVKK2FwTGhvS2pLSllqU2tWSStnUUNpUEQx?=
 =?utf-8?B?TVdMRFc5bXIwdklLQXNIRW9kVDAybVB1SThhR0VtbU5GNE9CQk14emhkS2ZH?=
 =?utf-8?B?QWIxQXNJbkllR3FvSFhVQ0NHUmxIa0g5UlZFVTJNbjZjS3J2VW9aQkFuQVlr?=
 =?utf-8?B?TEFxdXZsSUlPMmRwbGlxb3NoWEtpV1NBd0lYQU1CSmdrek5VNFd6ZjNpWGZ2?=
 =?utf-8?B?TkRvM1JvUWZXc3dNYWFqdHlLd1pjOHcrTXZTb0RQNXp6SVAveEh4VHlEU3hV?=
 =?utf-8?B?SEVZcVd5MWRsSFg5bENkMmp5WkRRcDFJV1h4SzBLL1BKb3NhOFQrRzlMUEJ3?=
 =?utf-8?B?bW9tWDJTQkdJNGhqenpHRjBlaU1uWTdhNVZ6MkxGV0x5TjdGTTArcUFrYys5?=
 =?utf-8?B?ZEp0ZlBvaXhFR0Y4NzBYMFgzY0U0WFNlbWJ5S081SXpHTFdRWDdZelBENFZy?=
 =?utf-8?B?aXZvSG10dHV2YlNCbFoveUczT0NtUnFYZHpucDlQeVMrazk3enBucitFaUR3?=
 =?utf-8?B?QWJScVBRTkV6TzZVRGw4d2F2MkJJR2FuZVhjY1pud3NXNTNYb1R2OGUwQkl2?=
 =?utf-8?B?U3RWemFjemFpUXpoMnBaSm45RzZlYm5VeXp2VHNHNURaQ2QyY1lrV1Z1b2lT?=
 =?utf-8?B?QXhLamNFaFFSNXlTLzZFSVJNZm9pbGdDTTFSZFpoc1ZDcWhwVHBXbVRWK0Jn?=
 =?utf-8?B?WGVKQUNJVXJOckRGNG1oK09KLzBQZHJLZ3R2eEw0V0YzcThvVUZrRWZpUTZX?=
 =?utf-8?B?YzFpbDBpRDFGaUZ4ZEI4WGd6bE9XRmZKNG0wR1ZmbEJXWWF4TFo2TzJNWHZh?=
 =?utf-8?B?ZTNmMXpiZURDUGE5TURzNHR3VmxkUHp4N1AxbHptWnl2ZENlclQ5d0lkOWdh?=
 =?utf-8?B?OElIbHQxV0tEaWVPeHU5SWEreEYzNmREb2FMVGpobDhrNDIvMktoRDVlTDdW?=
 =?utf-8?B?VmpIQjEyT2xoVjlpSXZvbSs1T1VQZHZRak9BNmQ2dTdBaXkrbkg1dmRUVDA3?=
 =?utf-8?B?enhrMW80WkYxb01OSXZ1cG1SS09YcjdKMEZQNTFEbVdTWHNsbXlPM3dlMkx6?=
 =?utf-8?B?SGlUOTArZ3JvWkk0MTFhbzM4OXNZZnNWditkMlB1RVFDV2ZuWTJYaEtEam44?=
 =?utf-8?B?SktBRVNZUVRqdmVBQzE5SStsaXRhWnJ2czhuck53eUZzOXAvdkdMNjNBT3VG?=
 =?utf-8?B?SkJxQndOeEMvNUp0MVc1RVhvdW4vWTZaTXZMbktIb1pkUUNZWkpwZ3pvSkNZ?=
 =?utf-8?B?eXUvQUxvbnBENWFiaGpqYXIwZVh2MDIwMlN1WWxQeitUbit1dXpUdUw2S2o5?=
 =?utf-8?B?ZUQvblVpZkE1bElLcERBMWg1Q1hSSmp0U1lFd0tEK3UzcVJlclN1MDZkWXg2?=
 =?utf-8?B?TCszQlNJdGZQbTBNWnh4RmJrRGNUa3RrUU5NVEdCcHRYUFNKeUY0cWsxRCtY?=
 =?utf-8?B?UzRNdVNLcWFvd1pQNkxwMEJKMjhnaEZZc2pCZ0NIdU1vZVRFL2xybVc1dXND?=
 =?utf-8?B?dWZjSHV5dW1yL2tzRzlJZ0JYQ1FhOWRhMkVhcHZxRkh3bVVpUHJjQy91azBm?=
 =?utf-8?B?dlRnV0pMUGwvS0Uvb0I0akdWZGFPNnkxdUd3Q0crSmo1VE9XdGN5VE56R3A2?=
 =?utf-8?B?UXJTNVhoUlR6d1FNUjFXVDI5UG5hQWdJTmFWRkdDeVhadi9WQjNjU1Qwdnoz?=
 =?utf-8?B?NHFYUytidVF1eTRUd0sybDQwMmNRdTVIdDQyam5HakJ6RVpVMGlqb2pvVDBP?=
 =?utf-8?B?RFlrQUZ3L0dkRW5rU3BET2tQWWlNWDF1SU9WU0RTVFhrcFhpTVV4SHI3Rk5R?=
 =?utf-8?B?NlVxdnlVVHNoSWplZkZrTXJyM2xrRGwvdWtUL3RyREFNNCswRkV1UCt0Tytj?=
 =?utf-8?B?RUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d58ba63f-f59d-433e-10b0-08db81487497
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jul 2023 13:20:40.0475 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1XwB75XRZxWoyKg+fuRt7OYNRNodLezJ0pazLAypaJWvCQm2gD1arsD2c4ESPudSut+5nM40N5O1svxsQJVPRYoaFUn9IC3JguY0A/lA+jY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5272
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688995250; x=1720531250;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KpYOVCAz3zXdl9nid86vkXkoWfGWEIj2AwBprMTGcj4=;
 b=MyvnbuWZEABH7DbhAL4Nq1EoC8eeI+Q4a/BVR9Zy4UTMHt9cThym+OLN
 CdvVeuSeqMZrRiGvPXzcPAE8PgIDvFL9q0n81Bqxc139EmpgbEmUsbucA
 wFlEhernGquC8hFWUgjF1ucfaQVVywgod7K5QYJjPnWs0Zqqg0UX1vm10
 cUTPQWv0L7dcX8CKJJlDz9uLk09qDfZRMVIgB57FbNFjpKnjxntg1qj1/
 JERPFCHymDwftapm8FgNEnguk37wGdApUydSTbUQSItknT3QZ2pOephGg
 YN8hcwOuZad14Pem6IpbHuRIO4ykQMEkYpF1cHyPv4l4RmsQUlfTDdF59
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MyvnbuWZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH RFC net-next v4 6/9] iavf: switch to
 Page Pool
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, Jesper Dangaard
 Brouer <hawk@kernel.org>, Larysa Zaremba <larysa.zaremba@intel.com>,
 netdev@vger.kernel.org, Alexander Duyck <alexanderduyck@fb.com>, Ilias
 Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 intel-wired-lan@lists.osuosl.org, Yunsheng Lin <linyunsheng@huawei.com>, David
 Christensen <drc@linux.vnet.ibm.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogQWxleGFuZGVyIER1eWNrIDxhbGV4YW5kZXIuZHV5Y2tAZ21haWwuY29tPgpEYXRlOiBU
aHUsIDYgSnVsIDIwMjMgMTA6Mjg6MDYgLTA3MDAKCj4gT24gVGh1LCBKdWwgNiwgMjAyMyBhdCA5
OjU34oCvQU0gQWxleGFuZGVyIExvYmFraW4KPiA8YWxla3NhbmRlci5sb2Jha2luQGludGVsLmNv
bT4gd3JvdGU6Cj4+Cj4+IEZyb206IEFsZXhhbmRlciBEdXljayA8YWxleGFuZGVyLmR1eWNrQGdt
YWlsLmNvbT4KPj4gRGF0ZTogVGh1LCA2IEp1bCAyMDIzIDA4OjI2OjAwIC0wNzAwCj4+Cj4+PiBP
biBXZWQsIEp1bCA1LCAyMDIzIGF0IDg6NTjigK9BTSBBbGV4YW5kZXIgTG9iYWtpbgo+Pj4gPGFs
ZWtzYW5kZXIubG9iYWtpbkBpbnRlbC5jb20+IHdyb3RlOgo+Pj4+Cj4+Pj4gTm93IHRoYXQgdGhl
IElBVkYgZHJpdmVyIHNpbXBseSB1c2VzIGRldl9hbGxvY19wYWdlKCkgKyBmcmVlX3BhZ2UoKSB3
aXRoCj4+Pj4gbm8gY3VzdG9tIHJlY3ljbGluZyBsb2dpY3MsIGl0IGNhbiBlYXNpbHkgYmUgc3dp
dGNoZWQgdG8gdXNpbmcgUGFnZQo+Pj4+IFBvb2wgLyBsaWJpZSBBUEkgaW5zdGVhZC4KPj4+PiBU
aGlzIGFsbG93cyB0byByZW1vdmluZyB0aGUgd2hvbGUgZGFuY2luZyBhcm91bmQgaGVhZHJvb20s
IEhXIGJ1ZmZlcgo+Pj4+IHNpemUsIGFuZCBwYWdlIG9yZGVyLiBBbGwgRE1BLWZvci1kZXZpY2Ug
aXMgbm93IGRvbmUgaW4gdGhlIFBQIGNvcmUsCj4+Pj4gZm9yLUNQVSAtLSBpbiB0aGUgbGliaWUg
aGVscGVyLgo+Pj4+IFVzZSBza2JfbWFya19mb3JfcmVjeWNsZSgpIHRvIGJyaW5nIGJhY2sgdGhl
IHJlY3ljbGluZyBhbmQgcmVzdG9yZSB0aGUKPj4+PiBwZXJmb3JtYW5jZS4gU3BlYWtpbmcgb2Yg
cGVyZm9ybWFuY2U6IG9uIHBhciB3aXRoIHRoZSBiYXNlbGluZSBhbmQKPj4+PiBmYXN0ZXIgd2l0
aCB0aGUgUFAgb3B0aW1pemF0aW9uIHNlcmllcyBhcHBsaWVkLiBCdXQgdGhlIG1lbW9yeSB1c2Fn
ZSBmb3IKPj4+PiAxNTAwYiBNVFUgaXMgbm93IGFsbW9zdCAyeCBsb3dlciAoeDg2XzY0KSB0aGFu
a3MgdG8gYWxsb2NhdGluZyBhIHBhZ2UKPj4+PiBldmVyeSBzZWNvbmQgZGVzY3JpcHRvci4KPj4+
Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IEFsZXhhbmRlciBMb2Jha2luIDxhbGVrc2FuZGVyLmxvYmFr
aW5AaW50ZWwuY29tPgo+Pj4KPj4+IE9uZSB0aGluZyBJIGFtIG5vdGljaW5nIGlzIHRoYXQgdGhl
cmUgc2VlbXMgdG8gYmUgYSBidW5jaCBvZiBjbGVhbnVwCj4+PiBjaGFuZ2VzIGluIGhlcmUgYXMg
d2VsbC4gVGhpbmdzIGxpa2UgbW92aW5nIGFyb3VuZCB2YWx1ZXMgd2l0aGluCj4+PiBzdHJ1Y3R1
cmVzIHdoaWNoIEkgYW0gYXNzdW1pbmcgYXJlIHRvIGZpbGwgaG9sZXMuIFlvdSBtYXkgd2FudCB0
byBsb29rCj4+PiBhdCBicmVha2luZyBzb21lIG9mIHRob3NlIG91dCBhcyBpdCBtYWtlcyBpdCBh
IGJpdCBoYXJkZXIgdG8gcmV2aWV3Cj4+PiB0aGlzIHNpbmNlIHRoZXkgc2VlbSBsaWtlIHVucmVs
YXRlZCBjaGFuZ2VzLgo+Pgo+PiBtaW5fbXR1IGFuZCB3YXRjaGRvZyBhcmUgdW5yZWxhdGVkLCBJ
J2xsIGRyb3AgdGhvc2UuCj4+IE1vdmluZyB0YWlsIHBvaW50ZXIgYXJvdW5kIHdhcyBzdXBwb3Nl
ZCB0byBsYW5kIGluIGEgZGlmZmVyZW50IGNvbW1pdCwKPj4gbm90IHRoaXMgb25lLCBhcyBJIHdy
b3RlIDEwIG1pbnV0ZXMgYWdvIGFscmVhZHkgOnMKPj4KPj4gWy4uLl0KPj4KPj4+PiAtICAgICAg
IGJpX3NpemUgPSBzaXplb2Yoc3RydWN0IGlhdmZfcnhfYnVmZmVyKSAqIHJ4X3JpbmctPmNvdW50
Owo+Pj4+IC0gICAgICAgbWVtc2V0KHJ4X3JpbmctPnJ4X2JpLCAwLCBiaV9zaXplKTsKPj4+PiAt
Cj4+Pj4gLSAgICAgICAvKiBaZXJvIG91dCB0aGUgZGVzY3JpcHRvciByaW5nICovCj4+Pj4gLSAg
ICAgICBtZW1zZXQocnhfcmluZy0+ZGVzYywgMCwgcnhfcmluZy0+c2l6ZSk7Cj4+Pj4gLQo+Pj4K
Pj4+IEkgaGF2ZSBzb21lIG1pc2dpdmluZ3MgYWJvdXQgbm90IGNsZWFyaW5nIHRoZXNlLiBXZSBt
YXkgd2FudCB0byBkb3VibGUKPj4+IGNoZWNrIHRvIHZlcmlmeSB0aGUgY29kZSBwYXRocyBhcmUg
cmVzaWxpZW50IGVub3VnaCB0aGF0IGl0IHdvbid0Cj4+PiBjYXVzZSBhbnkgaXNzdWVzIHcvIHJl
cGVhdGVkIHVwL2Rvd24gdGVzdGluZyBvbiB0aGUgaW50ZXJmYWNlLiBUaGUKPj4+IGdlbmVyYWwg
aWRlYSBpcyB0byBrZWVwIHRoaW5ncyBjb25zaXN0ZW50IHcvIHRoZSBzdGF0ZSBhZnRlcgo+Pj4g
c2V0dXBfcnhfZGVzY3JpcHRvcnMuIElmIHdlIGRvbid0IG5lZWQgdGhpcyB3aGVuIHdlIGRvbid0
IG5lZWQgdG8gYmUKPj4+IGNhbGxpbmcgdGhlIHphbGxvYyBvciBjYWxsb2MgdmVyc2lvbiBvZiB0
aGluZ3MgaW4KPj4+IHNldHVwX3J4X2Rlc2NyaXB0b3JzLgo+Pgo+PiBCb3RoIGFycmF5cyB3aWxs
IGJlIGZyZWVkIGNvdXBsZSBpbnN0cnVjdGlvbnMgYmVsb3csIHdoeSB6ZXJvIHRoZW0/Cj4gCj4g
VWdoLiBZb3UgYXJlIHJpZ2h0LCBidXQgbm90IGZvciBhIGdvb2QgcmVhc29uLiBTbyB0aGUgb3Ro
ZXIgSW50ZWwKPiBkcml2ZXJzIGluIHRoZSBwYXN0IHdvdWxkIGJlIGRvaW5nIHRoZSBjbGVhbl9y
eF9yaW5nIGNhbGxzIG9uIHRoZQo+IF9kb3duKCkgd2l0aCB0aGUgZnJlZWluZyBvZiByZXNvdXJj
ZXMgb24gX2Nsb3NlKCkuIFNwZWNpZmljYWxseSBpdAo+IGFsbG93ZWQgcmVkdWNpbmcgdGhlIG92
ZXJoZWFkIGZvciB0aGluZ3MgbGlrZSByZXNldHMgb3Igc2V0dGluZwo+IGNoYW5nZXMgc2luY2Ug
aXQgZGlkbid0IHJlcXVpcmUgcmVhbGxvY2F0aW5nIHRoZSBkZXNjcmlwdG9yIHJpbmdzIGFuZAo+
IGJ1ZmZlciBpbmZvIHN0cnVjdHVyZXMuCj4gCj4gSSBndWVzcyB5b3UgYXJlIGdvb2QgdG8gcmVt
b3ZlIHRoZXNlIHNpbmNlIHRoaXMgY29kZSBkb2Vzbid0IGRvIHRoYXQuCgpXZSBtaWdodCBnbyBi
YWNrIHRvIHRoaXMgdG8gbm90IGFsd2F5cyBkbyBhIGZ1bGwgY2lyY2xlIHdoZW4gbm90IG5lZWRl
ZCwKYnV0IGN1cnJlbnRseSB0aGlzIGlzIHJlZHVuZGFudC4KCj4gCj4+Pgo+Pj4KPj4+PiAgICAg
ICAgIHJ4X3JpbmctPm5leHRfdG9fY2xlYW4gPSAwOwo+Pj4+ICAgICAgICAgcnhfcmluZy0+bmV4
dF90b191c2UgPSAwOwo+Pj4+ICB9Cj4+Cj4+IFsuLi5dCj4+Cj4+Pj4gICAgICAgICBzdHJ1Y3Qg
bmV0X2RldmljZSAqbmV0ZGV2OyAgICAgIC8qIG5ldGRldiByaW5nIG1hcHMgdG8gKi8KPj4+PiAg
ICAgICAgIHVuaW9uIHsKPj4+PiArICAgICAgICAgICAgICAgc3RydWN0IGxpYmllX3J4X2J1ZmZl
ciAqcnhfYmk7Cj4+Pj4gICAgICAgICAgICAgICAgIHN0cnVjdCBpYXZmX3R4X2J1ZmZlciAqdHhf
Ymk7Cj4+Pj4gLSAgICAgICAgICAgICAgIHN0cnVjdCBpYXZmX3J4X2J1ZmZlciAqcnhfYmk7Cj4+
Pj4gICAgICAgICB9Owo+Pj4+ICAgICAgICAgREVDTEFSRV9CSVRNQVAoc3RhdGUsIF9fSUFWRl9S
SU5HX1NUQVRFX05CSVRTKTsKPj4+PiArICAgICAgIHU4IF9faW9tZW0gKnRhaWw7Cj4+Pj4gICAg
ICAgICB1MTYgcXVldWVfaW5kZXg7ICAgICAgICAgICAgICAgIC8qIFF1ZXVlIG51bWJlciBvZiBy
aW5nICovCj4+Pj4gICAgICAgICB1OCBkY2JfdGM7ICAgICAgICAgICAgICAgICAgICAgIC8qIFRy
YWZmaWMgY2xhc3Mgb2YgcmluZyAqLwo+Pj4+IC0gICAgICAgdTggX19pb21lbSAqdGFpbDsKPj4+
Pgo+Pj4+ICAgICAgICAgLyogaGlnaCBiaXQgc2V0IG1lYW5zIGR5bmFtaWMsIHVzZSBhY2Nlc3Nv
cnMgcm91dGluZXMgdG8gcmVhZC93cml0ZS4KPj4+PiAgICAgICAgICAqIGhhcmR3YXJlIG9ubHkg
c3VwcG9ydHMgMnVzIHJlc29sdXRpb24gZm9yIHRoZSBJVFIgcmVnaXN0ZXJzLgo+Pj4KPj4+IEkn
bSBhc3N1bWluZyAidGFpbCIgd2FzIG1vdmVkIGhlcmUgc2luY2UgaXQgaXMgYSBwb2ludGVyIGFu
ZCBmaWxscyBhIGhvbGU/Cj4+Cj4+IChzZWUgYWJvdmUpCj4+Cj4+Pgo+Pj4+IEBAIC0zMjksOSAr
MjY0LDggQEAgc3RydWN0IGlhdmZfcmluZyB7Cj4+Pj4gICAgICAgICAgKi8KPj4+PiAgICAgICAg
IHUxNiBpdHJfc2V0dGluZzsKPj4+Pgo+Pj4+IC0gICAgICAgdTE2IGNvdW50OyAgICAgICAgICAg
ICAgICAgICAgICAvKiBOdW1iZXIgb2YgZGVzY3JpcHRvcnMgKi8KPj4+PiAgICAgICAgIHUxNiBy
ZWdfaWR4OyAgICAgICAgICAgICAgICAgICAgLyogSFcgcmVnaXN0ZXIgaW5kZXggb2YgdGhlIHJp
bmcgKi8KPj4+PiAtICAgICAgIHUxNiByeF9idWZfbGVuOwo+Pj4+ICsgICAgICAgdTE2IGNvdW50
OyAgICAgICAgICAgICAgICAgICAgICAvKiBOdW1iZXIgb2YgZGVzY3JpcHRvcnMgKi8KPj4+Cj4+
PiBXaHkgbW92ZSBjb3VudCBkb3duIGhlcmU/IEl0IGlzIG1vdmluZyB0aGUgY29uc3RhbnQgdmFs
dWUgdGhhdCBpcwo+Pj4gcmVhZC1tb3N0bHkgaW50byBhbiBhcmVhIHRoYXQgd2lsbCBiZSB1cGRh
dGVkIG1vcmUgb2Z0ZW4uCj4+Cj4+IFdpdGggdGhlIDo6dGFpbCBwdXQgaW4gYSBkaWZmZXJlbnQg
c2xvdCwgOjpjb3VudCB3YXMgbGFuZGluZyBpbiBhCj4+IGRpZmZlcmVudCBjYWNoZWxpbmUuIEkg
d2FudGVkIHRvIGF2b2lkIHRoaXMuIEJ1dCBub3cgSSBmZWVsIGxpa2UgSSB3YXMKPj4ganVzdCBs
YXp5IGFuZCBtdXN0J3ZlIHRlc3RlZCBib3RoIHZhcmlhbnRzIHRvIHNlZSBpZiB0aGlzIG1vdmUg
YWZmZWN0cwo+PiBwZXJmb3JtYW5jZS4gSSdsbCBwbGF5IHdpdGggdGhpcyBvbmUgaW4gdGhlIG5l
eHQgcmV2Lgo+IAo+IFRoZSBwZXJmb3JtYW5jZSBpbXBhY3Qgc2hvdWxkIGJlIG1pbmltYWwuIE9k
ZHMgYXJlIHRoZSBwbGFjZW1lbnQgd2FzCj4gdGhlIHdheSBpdCB3YXMgc2luY2UgaXQgd2FzIHBy
b2JhYmx5IGp1c3QgY29weWluZyB0aGUgb3JpZ2luYWwgY29kZQo+IHRoYXQgaGFzIGJlZW4gdGhl
cmUgc2luY2UgaWdiL2l4Z2JlLiBUaGUgZ2VuZXJhbCBpZGVhIGlzIGp1c3Qga2VlcCB0aGUKPiBy
ZWFkLW1vc3RseSBpdGVtcyBncm91cGVkIGF0IHRoZSB0b3AgYW5kIHRyeSB0byBvcmRlciB0aGVt
IHNvbWV3aGF0IGJ5Cj4gZnJlcXVlbmN5IG9mIGJlaW5nIHJlYWQgc28gdGhhdCB3aGVyZXZlciB0
aGUgY2FjaGUgbGluZSBlbmRzIHVwIHlvdQo+IHdvbid0IHRha2UgbXVjaCBvZiBhIHBlbmFsdHkg
YXMgaG9wZWZ1bGx5IHlvdSB3aWxsIGp1c3QgaGF2ZSB0aGUKPiBpbmZyZXF1ZW50bHkgcmVhZCBp
dGVtcyBlbmQgdXAgZ2V0dGluZyBwdWxsZWQgaW50byB0aGUgYWN0aXZlIGNhY2hlCj4gbGluZS4K
CisKCj4gCj4+Pgo+Pj4+ICAgICAgICAgLyogdXNlZCBpbiBpbnRlcnJ1cHQgcHJvY2Vzc2luZyAq
Lwo+Pj4+ICAgICAgICAgdTE2IG5leHRfdG9fdXNlOwo+Pj4+IEBAIC0zOTgsMTcgKzMzMiw2IEBA
IHN0cnVjdCBpYXZmX3JpbmdfY29udGFpbmVyIHsKPj4+PiAgI2RlZmluZSBpYXZmX2Zvcl9lYWNo
X3JpbmcocG9zLCBoZWFkKSBcCj4+Pj4gICAgICAgICBmb3IgKHBvcyA9IChoZWFkKS5yaW5nOyBw
b3MgIT0gTlVMTDsgcG9zID0gcG9zLT5uZXh0KQo+Pj4+Cj4+Pj4gLXN0YXRpYyBpbmxpbmUgdW5z
aWduZWQgaW50IGlhdmZfcnhfcGdfb3JkZXIoc3RydWN0IGlhdmZfcmluZyAqcmluZykKPj4+PiAt
ewo+Pj4+IC0jaWYgKFBBR0VfU0laRSA8IDgxOTIpCj4+Pj4gLSAgICAgICBpZiAocmluZy0+cnhf
YnVmX2xlbiA+IChQQUdFX1NJWkUgLyAyKSkKPj4+PiAtICAgICAgICAgICAgICAgcmV0dXJuIDE7
Cj4+Pj4gLSNlbmRpZgo+Pj4+IC0gICAgICAgcmV0dXJuIDA7Cj4+Pj4gLX0KPj4+PiAtCj4+Pj4g
LSNkZWZpbmUgaWF2Zl9yeF9wZ19zaXplKF9yaW5nKSAoUEFHRV9TSVpFIDw8IGlhdmZfcnhfcGdf
b3JkZXIoX3JpbmcpKQo+Pj4+IC0KPj4+Cj4+PiBBbGwgdGhpcyBjb2RlIHByb2JhYmx5IGNvdWxk
IGhhdmUgYmVlbiByZW1vdmVkIGluIGFuIGVhcmxpZXIgcGF0Y2gKPj4+IHNpbmNlIEkgZG9uJ3Qg
dGhpbmsgd2UgbmVlZCB0aGUgaGlnaGVyIG9yZGVyIHBhZ2VzIG9uY2Ugd2UgZGlkIGF3YXkKPj4+
IHdpdGggdGhlIHJlY3ljbGluZy4gT2RkcyBhcmUgd2UgY2FuIHByb2JhYmx5IG1vdmUgdGhpcyBp
bnRvIHRoZQo+Pj4gcmVjeWNsaW5nIGNvZGUgcmVtb3ZhbC4KPj4KPj4gVGhpcyB3ZW50IGhlcmUg
YXMgSSBtZXJnZWQgImFsd2F5cyB1c2Ugb3JkZXIgMCIgY29tbWl0IHdpdGggInN3aXRjaCB0bwo+
PiBQYWdlIFBvb2wiLiBJbiBnZW5lcmFsLCBJSVJDIGhhdmluZyByZW1vdmFscyBvZiBhbGwgdGhl
IHN0dWZmIGF0IG9uY2UgaW4KPj4gb25lIGNvbW1pdCAoIzIpIHdhcyBsZXNzIHJlYWRhYmxlIHRo
YW4gdGhlIGN1cnJlbnQgdmVyc2lvbiwgYnV0IEknbGwKPj4gZG91YmxlLWNoZWNrLgo+IAo+IEl0
IGFsbCBkZXBlbmRzIG9uIGhvdyBtdWNoIGlzIGhhdmluZyB0byBiZSBhZGRlZCB0byBhY2NvbW1v
ZGF0ZSB0aGlzLgo+IEluIG15IG1pbmQgd2hlbiB3ZSBkaWQgYXdheSB3aXRoIHRoZSBwYWdlIHNw
bGl0dGluZy9yZWN5Y2xpbmcgd2UgYWxzbwo+IGRpZCBhd2F5IHdpdGggdGhlIG5lZWQgZm9yIHRo
ZSBoaWdoZXIgb3JkZXIgcGFnZXMuIFRoYXQgaXMgd2h5IEkgd2FzCj4gdGhpbmtpbmcgaXQgbWln
aHQgbWFrZSBtb3JlIHNlbnNlIHRoZXJlIGFzIGl0IHdvdWxkIGp1c3QgYmUgbW9yZQo+IHJlbW92
YWxzIHdpdGggdmVyeSBmZXcgaWYgYW55IGFkZGl0aW9ucyBuZWVkZWQgdG8gc3VwcG9ydCBpdC4K
WWVhaCwgSSdsbCB0cnkgYW5kIHNlZSB3aGV0aGVyIGFueSBwaWVjZXMgY2FuIGJlIGdyb3VwZWQg
ZGlmZmVyZW50bHkgZm9yCmJldHRlciByZWFkaW5nL2xvZ2ljcy4KClsuLi5dCgpUaGFua3MhCk9s
ZWsKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
d2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczov
L2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
