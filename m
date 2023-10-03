Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B7D7B7467
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Oct 2023 01:01:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 95ECD41895;
	Tue,  3 Oct 2023 23:01:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 95ECD41895
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696374107;
	bh=60/g8qPcqM43jQh0j3rU7MfJIXaXrf5bIKIukHJaXIA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UNn31kjVfM7NQ6czB7mdx75SZD0ailckXERKobqzWOa++kiCCmoRNZhXsf4Pf3ofP
	 98KZHv2buhxF2+AJirWJ95w04h95gu/X4Tezv/YXexdqw2UDXFDX/hDAXDS23FS7MD
	 h9eSzZ+SvyG2LSgdpPV+A2OE7GhZc1RXwd3zQZZDwhORihM8Y8zP0tgMZ4K7LdcpuM
	 QEuRsxm5TDb7MqC8vLlRt8vbglXKpNF2h+x3H9WeTHKlQPWrQHJIVHxonkoLjv6OBC
	 LuYzAftKNEZZB6pir3uK129UnShHiNG+UhHPbbFJzkog7p8NUJFAHxC+l8HO30r5L3
	 fGxl6ya7z9pjw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 44QhGNuaQAsV; Tue,  3 Oct 2023 23:01:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7CE2240646;
	Tue,  3 Oct 2023 23:01:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7CE2240646
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6D4C61BF95F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 23:01:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 44EE161044
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 23:01:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 44EE161044
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Chspnys8QwR7 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Oct 2023 23:01:40 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B9BDB60ECE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 23:01:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B9BDB60ECE
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="363268819"
X-IronPort-AV: E=Sophos;i="6.03,198,1694761200"; d="scan'208";a="363268819"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 16:01:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="700891992"
X-IronPort-AV: E=Sophos;i="6.03,198,1694761200"; d="scan'208";a="700891992"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Oct 2023 16:01:25 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 3 Oct 2023 16:01:24 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 3 Oct 2023 16:01:23 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 3 Oct 2023 16:01:23 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 3 Oct 2023 16:01:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C2lgbR9FfJ8NVlH01aox4rOFzMLN41q+aUW7uDqPqDEs+YSzdcaui60TGeK+DXac/j6d2E7L/UmCqPyowPVxM3K7JOLJLmXak9R2oAFhSSIyEKg2gqUgW7Cm893D9aAjgmvcFKzOyBZctGDepLR1ZbKBniJZGEa+or/ZF0WyEMpdhkEeUgF74Ldt/uSklOs/mHVBxL40+CnzSXXFmf4gQ207pelG9xH6eC4d8d8KrqVyBQ4oXJVeG/JiVpsrvUu1UxQjmk5uyIbTKrs5AvVPmQDDyu0EthOo2WFp5jBSLp61BiZLGPEVqlBXT2UmJwDC3CItNNFDPdofOrM4NpTjHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vrWyL1FbmU4cR5wtjjwbV22IgWUDjH1dhDa/2D8GqFM=;
 b=SIzc6yuSk2ZwcF4vBrlgOyU1Teeuwg93N5T9dJ6dsVHb21xYbP0w78E6SE33d1IjDobHACfkfyIMMyjg3tbTRQKjxjvdIaRFmq/eYPqYENVVqlhqPPXE4AqMxEn6xAIV9PyQjkWd3jw2Xu3f0nWYgvKvuOhxm2xuZTNFPk95c6JER6k+6McPBL9BigX9HXMuxTVaNhf7QDVnmpOqhCdE7AuTeZFoLef/yShV/2tJWwBTL+2rQtTq3w5bbkq0faGkiklvcwYSh7JvSD2Q2vFk3W6u/LcQGijvYliSaaEubI7dkQ9eLQ5n+sn0S2rFhsmX69MVorC2FTL80yOBOTqsbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by SJ0PR11MB7156.namprd11.prod.outlook.com (2603:10b6:a03:48d::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.27; Tue, 3 Oct
 2023 23:01:21 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::9c1c:5c49:de36:1cda]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::9c1c:5c49:de36:1cda%3]) with mapi id 15.20.6813.027; Tue, 3 Oct 2023
 23:01:20 +0000
Message-ID: <ecc05528-ba59-922b-7384-4bedd46cf89b@intel.com>
Date: Tue, 3 Oct 2023 16:01:18 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>
References: <966968bda15a7128a381b589329184dfea3e0548.1695471387.git.christophe.jaillet@wanadoo.fr>
 <a5e933fe-4566-9ae6-9a5d-b3a4c186fe0b@intel.com>
 <abf8d279-b579-4a03-9ae9-053cf5efec3d@wanadoo.fr>
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
In-Reply-To: <abf8d279-b579-4a03-9ae9-053cf5efec3d@wanadoo.fr>
X-ClientProxiedBy: MW4PR04CA0323.namprd04.prod.outlook.com
 (2603:10b6:303:82::28) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4914:EE_|SJ0PR11MB7156:EE_
X-MS-Office365-Filtering-Correlation-Id: 47c008cc-4768-4077-17d2-08dbc464a869
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gB2+3PRyBxP2KW+oMfHP33hgoezPW0F8eoh64eIHvgkqIUOJ+W162aIB93ELMBlPIaFwSt4aAcD9Rha+pLr/zNJdHzMXmCgULbSdR8Gq2imLaPRq0Lw6NdYIm+xmoGD11X5EMwIcBF+jiwcBN6MhrohREhh8SlP0SFmq6Eus5H+p5t29G8/R8ppehKAg5z3Q3Tg1DC9buUty0f3ce8lMZlxQv7WQoGl2ziArDCVLHf/qGbOpi6a80eSJVU1wNkJeqYxMGpPiaRwewQA3sRMPibmAdC9wpcixxnu3OSlfIXNJZCFlr89QE3M1gljeTFJbibNfmvOGNIh+A9YMF6hA7cF5N0mOROXT5eVj35lU8UGMBielYvUPjCZg5rgndZM6sdvM2PzfPtrVuI1qQB+yXUJ7bUlsEYAkxUg4y8DJwKzETUuX9VpbZdH1RnKhGJdR6GyK900dD2cur1omBs+rxEhnVRV+5p9VvPRnbjReIy0g6SVDsgwRfV1CrraIxWe8KnQvzU1wXefmZ2klDtfNdKCfSzUOqptTy3Cm1ALbaV2tfAJtGVsYvFZujMXMxbqBG/748OuFCzVh6UsZyb/eUQcZDWrG4g9Cgy3pZAEGJWZONZ4MHY1WP2cOHYmCbqzVMdPm3cN89sigFZK8r/dorA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(366004)(39860400002)(396003)(346002)(376002)(230922051799003)(451199024)(186009)(1800799009)(64100799003)(6512007)(316002)(66946007)(66476007)(66556008)(26005)(4326008)(8676002)(41300700001)(36756003)(478600001)(53546011)(83380400001)(82960400001)(6506007)(31696002)(38100700002)(86362001)(2616005)(8936002)(110136005)(6486002)(31686004)(2906002)(44832011)(5660300002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dTZGRFc1ZlRGWHJobXhscGllRlBBd2lMRWNDQUYvWk40UzFYMlZJYTlML1FI?=
 =?utf-8?B?eDRkQzRPVEcvTnJRUHNGU05aSWlYMlRXTUlqa2xKb3JlZkRxaUp6RmluSlRJ?=
 =?utf-8?B?UkhpenJUbHk3L1VIc3R2R3k2QjR6ZEZZMGdKenN3WXN3VzdFSmpHNVZUNTRr?=
 =?utf-8?B?aUExNm1tNUZyMlJuMklyTTk2RWExY2tUa243K0M5QXVOdXRoK2ZOL0M0NFhV?=
 =?utf-8?B?dExCaTdLb01DKytHMzBDK3VtYXpNVmFodkZac2QyTEZETlFuaVNyazlRMkF6?=
 =?utf-8?B?YjdzamtTY01WT1RoR3hIcEFhWm1oZU41bmZMVXBzTlh2a2VSVHVJMmpoZnpi?=
 =?utf-8?B?dEJDcnlGZ29YangzK1FoZldWczJNNzZtN0RTcjJlRUNNRFBZSlFCRzRFeU0y?=
 =?utf-8?B?dkEwYVJkT1FOdUQzSGdVdDFrczA0emh1em5aWE5iWnNtR1NwWEN4b25peVdu?=
 =?utf-8?B?VFFkQnltMVhzTmxEbTRUU05vako0djhNakN5NGkwcllFd2toVExQV0N1Rnlh?=
 =?utf-8?B?eFFlb1F2NjBYc2FBTWN5QjdQTVBneUpobXNKbUsxNUZiOGNUNzc5KzMwa0R2?=
 =?utf-8?B?WEw2WFZWbkZNNXJxbFAyL09NNWxTMUpQdW81MUxxVHlUK25hMkExL2lpMXNz?=
 =?utf-8?B?REJRbGFvd0wzQytxeUNFemFCZjNsK0lPQ0xiSGxBSzZPRndMcUpuMEdHOU5L?=
 =?utf-8?B?ZktoNGpJSzdJY2wxd0lXazZrY1l4TEdZdWdnS282MWFDZGpmaHhmUHl3Si8y?=
 =?utf-8?B?cnlzRjVJNEpEeVlXbHd2djVsdXZzemdubHZ1eFliZ29GbDV3OVNDUm1Bbjhx?=
 =?utf-8?B?OU43c0YraWdxdHY1U1g1QjVjTitBaHZIUDFvdlI5U2VwQWlvejJkblJVTWY4?=
 =?utf-8?B?SjRwdlkvZWhSNnZIZEovcTJrQ0tQNHlzcXE2UitFcmtWR1lOTGdLVmFLMFNO?=
 =?utf-8?B?b2srWGRtV2NDUFVlL3BndThIbXJ6U1FqTkIwUDdBTGhEb1hPQ2MreGgvRFhX?=
 =?utf-8?B?TzI3SU04V2grWVU4SGRuV1lZREtsd3gzK0Y0UFhEcWNrZ0E0dnZpc0hEU2tB?=
 =?utf-8?B?LzRFT1IvUm5pZ2RIZ2JycmN6N3I1T2NXcUY4eURsamUza3VhUnh6MjBuKzha?=
 =?utf-8?B?OFFPL09QdWNFeXpmZUx3LzZLQ1JncGYybkZiVlZhY0J1eEdDd1VIbENPSnNM?=
 =?utf-8?B?SW5ISFMxUHlmU1lHTnZuQ04vN3lUc01ha1JWdzR4cG1JV0xGblpQY0hXL3Zt?=
 =?utf-8?B?Y2JMK2RrNnlqUEU0cXRibStNdmJxUTU0REErbCt1K01mRHhSRVZuL1ZzVWVt?=
 =?utf-8?B?Q3ExS0lKRm9BTzZDS2NlUGc3ek5WekY1TzF1cUJYeXhzN1RPbVVQbG5TUTd4?=
 =?utf-8?B?VFl5ZEZYQXd2aWZBa2hORTlwTW1yYmJ1enZTSmptTnB3SGUrSXlyb3JhYjdt?=
 =?utf-8?B?MEFhaU10dWI5UWd4MThCVGo4VFVvL3VVL0JWRzN0RTlBQSs2ZnRjN05oM0JJ?=
 =?utf-8?B?OGphVDZyVlZKc09BREl6NngzRy9kS3RRSFBwOW13cVRXR1lhN3dleFBYV0VX?=
 =?utf-8?B?TFlJUzR2Q1BkcE00enJaRkswVmg0NzZrVkU4VnFtUElWa09td2dYRnhMNm1p?=
 =?utf-8?B?VXRDc25hMiszcFZGWmd1N3BTT3lXYjUvWUVJZmozS0JhaGFoSW93ZnpMZzQv?=
 =?utf-8?B?QlY2cURrL0o0dVBYT2FJRGFiRWpiTXJMR2lsMVk4L0tWa3hXRXRQUGV3dU9Z?=
 =?utf-8?B?VlJXM0U1cFJ4bHVyZ21qZjZqdTNiT3Q1bXRsZ1ZseGdraCttZHI3SytYVXIv?=
 =?utf-8?B?amV3ak1ieE5rdWZoQlN5U0paZ0k4QTJia0pCYXhCd2t3b29HZS8wTzhxV2k0?=
 =?utf-8?B?Mld4YzRJQS9TcXdBWTV6eUNUMEhRdXhLcGhtNTlsV2hQOVozcjZ4dCtneE1W?=
 =?utf-8?B?WVNBL1JlODlWeVlrSFU5S0wvWmhXL3BUSVpwaTZLNnM4MVp0TXF2Nm1Xa1Yx?=
 =?utf-8?B?S1Zvc0lONjQyRzArb2J5ZmNpZFVyN2ZmYVVocFk3KzZXMFhKOW9ZM0NpSHVY?=
 =?utf-8?B?Y2RkOXhqL2c2WS8zSWJZS2RUMHJncy9GelZxbzF0VC9kQXVJSXFsYXhKdUhL?=
 =?utf-8?B?TFNpTHYwTDRNajcwaG9CcEw2cGlldmF2eGFCWnNXTlcvVDhRUThod0NWbVEw?=
 =?utf-8?B?UGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 47c008cc-4768-4077-17d2-08dbc464a869
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Oct 2023 23:01:20.8219 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SUl+RMG4qScUfvpduHJ91HXfRWkHcjHLFbW5zM3lsIas3y3q8pG2iJSKQZa+AUI98A7tzf1STpTkFt+wykDOeBG6NJGR/niOM0OCy7JjQpA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB7156
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696374100; x=1727910100;
 h=message-id:date:to:cc:references:from:subject:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QmbboXM+X5pqD7JOsFIPvWMhplJs7MTEt6yFQyT9H3c=;
 b=jAcPy3w11AMPCEChrcp4XdiCc3Ro0T84Lm+O+HMak83OdGWj3ba7mldM
 1U/C8nYPI4Ph0ObOK35CTRriQLkb/SfU+pW8s7Taohkrw+WxslMVs17x6
 ASFZ+0zoIekOuNCkwymRDlH+cvyDfZQtlQqdNJQrxGqka9qXdUXotyzrY
 iWo2hVNErbBV7I507762lcB9BSjYw/ac7WMfvvbx8JFW1Z8Rmf6UUS5pK
 jMH0j+YfFtUXN2dqBRQwLih4Lk3KKlhY2ywDDo764GYOVPqnJriZu+uFd
 j42o5Sqj7s9xaAmTHbF8UYiTDa73rID6rjExNmo5py9jM2g8c8uYTGVWk
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jAcPy3w1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] iavf: Avoid a memory
 allocation in iavf_print_link_message()
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
Cc: intel-wired-lan@lists.osuosl.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMTAvMy8yMDIzIDE6MzMgUE0sIENocmlzdG9waGUgSkFJTExFVCB3cm90ZToKPiBrYXNwcmlu
dGYoKSBpcyBtdWNoIGJldHRlci4KCmNvb2whIEkganVzdCBzZW50IHRoZSBwYXRjaGVzIGFuZCBj
YydkIHlvdSBlYXJsaWVyIHRvZGF5LgoKPj4KPj4geW91ciBwYXRjaCBzdGlsbCBzaG93cyB0aGVz
ZSBlcnJvcnMKPiAKPiBJIGJ1aWx0LXRlc3RlZCB0aGUgcGF0Y2ggYmVmb3JlIHNlbmRpbmcsIHNv
IHRoaXMgaXMgc3RyYW5nZS4KPiAKPiBIb3dldmVyLCBJIGdvdCBhIHNpbWlsYXIgZmVlZGJhY2sg
ZnJvbSBHcmVnIEtIIGFuZCB0aGUgImtlcm5lbCB0ZXN0IAo+IHJvYm90IiBmb3IgYW5vdGhlciBz
aW1pbGFyIHBhdGNoLgo+IAo+IFdoYXQgdmVyc2lvbiBvZiBnY2MgZG8geW91IHVzZT8KPiBJIHVz
ZSAxMi4zLjAsIGFuZCBJIHN1c3BlY3QgdGhhdCB0aGUgdmFsdWUgcmFuZ2UgYWxnb3JpdGhtIG9y
IGhvdyB0aGUgCj4gZGlhZ25vc3RpYyBpcyBkb25lIGhhcyBiZWVuIGltcHJvdmVkIGluIHJlY2Vu
dCBnY2MuCgpGZWRvcmEgZ2NjIDEyLjMuMSwgd2l0aCBXPTEgZmxhZwoKZ2NjIHZlcnNpb24gMTIu
My4xIDIwMjMwNTA4IChSZWQgSGF0IDEyLjMuMS0xKSAoR0NDKQoKW2xpbnV4XSQgbWFrZSBXPTEg
TT1kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmCiAgIENDIFtNXSAgZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX21haW4ubwogICBDQyBbTV0gIGRyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2lhdmYvaWF2Zl9ldGh0b29sLm8KICAgQ0MgW01dICBkcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfdmlydGNobmwubwogICBDQyBbTV0gIGRyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl9mZGlyLm8KICAgQ0MgW01dICBkcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfYWR2X3Jzcy5vCiAgIENDIFtNXSAgZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX3R4cngubwogICBDQyBbTV0gIGRyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2lhdmYvaWF2Zl9jb21tb24ubwogICBDQyBbTV0gIGRyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2lhdmYvaWF2Zl9hZG1pbnEubwogICBDQyBbTV0gIGRyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2lhdmYvaWF2Zl9jbGllbnQubwpkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pYXZmL2lhdmZfdmlydGNobmwuYzogSW4gZnVuY3Rpb24gCuKAmGlhdmZfdmlydGNobmxfY29t
cGxldGlvbuKAmToKZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX3ZpcnRjaG5s
LmM6MTQ0Njo2MDogd2FybmluZzog4oCYJXPigJkgCmRpcmVjdGl2ZSBvdXRwdXQgbWF5IGJlIHRy
dW5jYXRlZCB3cml0aW5nIDQgYnl0ZXMgaW50byBhIHJlZ2lvbiBvZiBzaXplIApiZXR3ZWVuIDEg
YW5kIDExIFstV2Zvcm1hdC10cnVuY2F0aW9uPV0KICAxNDQ2IHwgICAgICAgICAgICAgICAgIHNu
cHJpbnRmKHNwZWVkLCBJQVZGX01BWF9TUEVFRF9TVFJMRU4sICIlZCAlcyIsCiAgICAgICB8ICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
Xn4KICAxNDQ3IHwgICAgICAgICAgICAgICAgICAgICAgICAgIGxpbmtfc3BlZWRfbWJwcywgIk1i
cHMiKTsKICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
fn5+fn5+CkluIGZ1bmN0aW9uIOKAmGlhdmZfcHJpbnRfbGlua19tZXNzYWdl4oCZLAogICAgIGlu
bGluZWQgZnJvbSDigJhpYXZmX3ZpcnRjaG5sX2NvbXBsZXRpb27igJkgYXQgCmRyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl92aXJ0Y2hubC5jOjE5NjU6NDoKZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX3ZpcnRjaG5sLmM6MTQ0NjoxNzogbm90ZTogCuKAmHNu
cHJpbnRm4oCZIG91dHB1dCBiZXR3ZWVuIDcgYW5kIDE3IGJ5dGVzIGludG8gYSBkZXN0aW5hdGlv
biBvZiBzaXplIDEzCiAgMTQ0NiB8ICAgICAgICAgICAgICAgICBzbnByaW50ZihzcGVlZCwgSUFW
Rl9NQVhfU1BFRURfU1RSTEVOLCAiJWQgJXMiLAogICAgICAgfCAgICAgICAgICAgICAgICAgXn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4KICAxNDQ3IHwgICAg
ICAgICAgICAgICAgICAgICAgICAgIGxpbmtfc3BlZWRfbWJwcywgIk1icHMiKTsKICAgICAgIHwg
ICAgICAgICAgICAgICAgICAgICAgICAgIH5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgoKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1s
YW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMu
b3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
