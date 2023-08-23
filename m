Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 44CF1786114
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Aug 2023 21:55:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5D169821FF;
	Wed, 23 Aug 2023 19:55:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5D169821FF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692820553;
	bh=zdy7wyQ/DjOO15QD4cnFFIJl9mH6UEUdGns/KuNmcf4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=x4UxiyF4DsAGVi3IQ+3lro5bHekVq6GQRS5dZcEwBh0+sUOMYv8VlDvjVz+HWizY8
	 o0G7MrjGWq6JTwd58FJxXirQK/rqQrwPQ8xOprd4qyisv8l6saQL9/yHuoC4lB16ok
	 EkofweTwe1GqLyVcqCG/fq05LJEt9q0toe2gG3YA3Xyq2FDiNBoEDHh+UeXieqwpKY
	 oKvCGjZcnkK8WUgnil3Mq1TPPs53W6g65TsZau8BPRv6YZemOhrNOwz1LGRwD1iyeh
	 Cz8komBr4p0WfuclLDkeS5QL6/yn3VCQRNy3FJfgJTpLzXtxAuGXYv2v9MVlV+nkBu
	 Z2NHXpF48KfKA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7v7TSesYp753; Wed, 23 Aug 2023 19:55:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2221C821FD;
	Wed, 23 Aug 2023 19:55:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2221C821FD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1D7721BF34A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 19:55:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E6467612AA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 19:55:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E6467612AA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J-LbdDO1MrdW for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Aug 2023 19:55:45 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2B45F60D62
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 19:55:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2B45F60D62
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="364434190"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="364434190"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 12:55:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="686580192"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="686580192"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP; 23 Aug 2023 12:55:43 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 12:55:42 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 12:55:41 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 23 Aug 2023 12:55:41 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 23 Aug 2023 12:55:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SNr6swkFJM6hJyFHJ7Y7Oiwmoj76iWzo9Y2Aq59jduXayZXh232iKTDAPgyLXNCOELhoGB60jQkZNjmw5FZ/ovGN3FLNmsS/6RrSDbQmhn/i3tUuwliOXuXjN1P+/o5pLunwCqjUpifeUg0A9ghpWX3abb+/WO08asgDBXGxz7WS4pP3/tr1w9hui/gtruFUKEMt+KHBahAgOi600WUDwi/GnET9L5STmfNe+eDiRUXKXFlqh7pLselcwTpHkoSLdy4vnHTgadULY7SjAJCkJB8S6zzVENF4tcdyr/4GGv7miFFgnOBrYlV1qQo7rqrCJ2AOLjqDTDJefpALbi05ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z5XKqEguzAmhRB+/eN1UzyJ1dqByTFpmk43EWYpxKig=;
 b=aGyvN165XBfwA+2pbc655LSnk0zVKieeXGjRRoD4fOQ6MxzKoNOKQl7NbLOUnHpr+OWUNgJ5TRd9YYt+QmkEZj8gGaQBma5bwcB+P4IDeWE7RvP3EFmUV9Yp8KdE/gkHCKzgyCWX+63smfDsz1XK0t2AnVmDpi6aGmVwgZ8oDWwI3tsbIZOei0M4ciuq9IX9lQoTQJGwgIFjEygYd7e5mcp6yJ/ERz7x5O0U85fOBx3DaA/Jv+QSntf3SPbqB2lQXYy+PVWE2KJ+RUPWWsjRtj2dUhhR/XUlqwi8thTWey2T6TCYfWN4IjuVwkCcw/KrGXnmfoKgn3AYjLk97skTfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by LV8PR11MB8606.namprd11.prod.outlook.com (2603:10b6:408:1f7::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.24; Wed, 23 Aug
 2023 19:55:39 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::6a23:786d:65f7:ef0b]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::6a23:786d:65f7:ef0b%6]) with mapi id 15.20.6699.022; Wed, 23 Aug 2023
 19:55:38 +0000
Message-ID: <bbe87002-aa64-cd42-7920-0bfae61cda5a@intel.com>
Date: Wed, 23 Aug 2023 12:55:36 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Content-Language: en-US
To: Jinjie Ruan <ruanjinjie@huawei.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, Jesse Brandeburg <jesse.brandeburg@intel.com>, Tony
 Nguyen <anthony.l.nguyen@intel.com>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo
 Abeni <pabeni@redhat.com>
References: <20230821134229.3132692-1-ruanjinjie@huawei.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20230821134229.3132692-1-ruanjinjie@huawei.com>
X-ClientProxiedBy: MW4PR03CA0122.namprd03.prod.outlook.com
 (2603:10b6:303:8c::7) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|LV8PR11MB8606:EE_
X-MS-Office365-Filtering-Correlation-Id: 55d35ca7-8c74-450a-1075-08dba412ec71
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KmH/Ie21KP4SegOJDV31OqihlZ4tBt/K+3JdOdHL6XnDUOXEAtopDXN8EpU+iU2jyrNRRp4qW2JbFnlHVkpHtDgSzZk/fkJSSLhh/sA205MHH1SKxd/02J1Zt1+M7WlutD7aaoX35zahJ1uYSqiNmYWK8/skpF24/Jl4lXb0AZZQ6b/m0HV5/eeDWG6xKWcHIwAmpAy7ZRmj3LmbwTQ4LBiwwc7qtW6LOA8WzD47FYrkZgNVWyw5YJpI0inouib1nAyNDNpHwp2MJ5cDngi4pRwJzSr6AD5qOqluLuS35SXk8u/9Im/lWZnT4jL+40hZGjZEbQaO3eK1inCqvRIxvnN7wkoiTFNeJnJa7epDuWH7X10FYVqDJZ0LXM4V/7DMEYxKW4AmB2RqvjIY5HQuQksANZpR/c09XCAiVL2R5LTu/d05roLJwHdcHnoWUIV7douwKCy0dmStUYtVZqCt8wPZVlJt6f2L8uwasOQmWYodX9vhv7jFw73P4JQPGoHtuEzxePKkqMzrrZAGrp16MNuwln4Pe3zSoyy1ahP/2MHhkvHIlORm8esFvLqs0ZHtqy9uSig1GnYuhPAQrTtNkQErsi0+vbff/zPjCNkNtlba34S3AvfQdXzqjM5yrgTbpYwEKb11AsEjQiTrEIbvKw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(396003)(39860400002)(376002)(366004)(346002)(186009)(1800799009)(451199024)(66476007)(66946007)(6512007)(316002)(66556008)(82960400001)(110136005)(8676002)(8936002)(2616005)(36756003)(41300700001)(478600001)(38100700002)(6506007)(53546011)(6486002)(83380400001)(2906002)(31686004)(31696002)(86362001)(5660300002)(26005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZkpsR1VkWHQ5MjNMSUROa28xaXdxRUNSYjVTUjdlRkZha2ZuVTIwZUFpZE1h?=
 =?utf-8?B?Skg1UVBtWk9WK2s1di85RVdBNTdYVVFOeXJPMjBLQm1BUHJodUMvSm9QcVgv?=
 =?utf-8?B?QWl4OGlXNGl4YnRHQitFeXdkMEllRWc2cmxVVkZOODlOTGNMSUR1dXNxcVZC?=
 =?utf-8?B?SldieldOc21naHdIeUdIMEE0bHpwdFdDc2s1SGdOSitGRHVJcGVldU5FcldK?=
 =?utf-8?B?d0JLWGR5WHh4cW05U2hndU50dU9CbTlYYlpIais3NnMvcldhSFZKcHlRZUtN?=
 =?utf-8?B?d2J1RWpJWlExRmZDUUZUSU5ZQXF4OVorbUJvNEhvQVlMbG9Nay9rOGFFZ3Q2?=
 =?utf-8?B?bFkrSjlBMi9SK2M4M0dLRGZIQmZTQXJiWm9MbHZBY04zcDB4U2xKSDFOcWF0?=
 =?utf-8?B?UExkVG9XdGZrR1pQTUp3NWJpYk81VldOc0pzZGVKb0p6cktwRTViL3htTHJu?=
 =?utf-8?B?dzgrdjdIWEROVzhBS3pRQ0xEUzgvRnZHejRHNE10NkF2V0Qvd0E2QXo3TDEy?=
 =?utf-8?B?V1I4N0JoR1NreXAwdUJKSlZHMTJ1cTNQemFuNlRzc3pvdGUrR1FHRzZVaTZW?=
 =?utf-8?B?RE1lbW95V1RzSW5FdHE1YkxJbzE4WHhidFlsRjRJWXFNa2g5L2lodGNzQjdv?=
 =?utf-8?B?VGRmSHFPMWVzZnQ3cnhqVzZDazhPalFJT21iREVvYUxiSU9MSTlRSjg0Q0RE?=
 =?utf-8?B?Z001L0FXU2FKbzZpNWs0eXM4alBJNnRmTVhkWTZYRi9KZFJKS3V0bDRqVFhZ?=
 =?utf-8?B?SFpBMCszM2kwSVFoQTBxc293MmVqejJqT3VpNU92aWh1M1oyV24yVmhwRk1h?=
 =?utf-8?B?amw4Sk9abEpTQnRJVFJrdXlCNjRPUEUxV3pGbFdQMVVtK3hrSi9nekxoeHV4?=
 =?utf-8?B?OUhnWCtOeEs2b0ZqV1N1M3hpRGJiQ24wanIvV2hvM0RuTzAzS1ZHczhiZmtB?=
 =?utf-8?B?MWZlRU5WSzY1WldwT2FPcHFDN0hna05OejVkb3YrMlJKVkFGSS95UFR5bXhn?=
 =?utf-8?B?ZFBaUXoxMnYzSlpDVUZIMXRjVUp2NFR1MHc4V1ZFZ1RJeXFMQ2NBRG1CVnh5?=
 =?utf-8?B?NVNBd2xEYjZZOTZNV0plTU5ZbEFOcEd2dmlpRnl1SU1ieStVSWtVbmRRbUNq?=
 =?utf-8?B?MFYxVTk1NmE3V2pISGtOYVd0aEQvR0E2bWdIRDdwMGRWWGVGWTA0QU8yVzZi?=
 =?utf-8?B?dUY0TUFhUUNlUzVROHlpcWU4eFNNcWdnQnlwaDRFMWd3TjdhV0o3UkpXVnpk?=
 =?utf-8?B?VlVQYk9sN3ZhV2JJNjhrcCtUSlJ3S0FPZGFvREpGeVBvb2MrTmROZW9KZ0pS?=
 =?utf-8?B?WElQZG50cEt3WForWnE0SC9LQlBzcnZmeGRMUWVJK0hrREcyZlM1M2RBSW9H?=
 =?utf-8?B?cVE0d1kxN2hTMHI0UTlTazAyQTZKaEs3cVNwVGMyRStMUmxZU29MUnl2a0R5?=
 =?utf-8?B?K3V4M1krblhoK0Ura2dQajlQaU05Qjk3cUFtdlpHV1hsaVFUMDVxdHRPc0Zq?=
 =?utf-8?B?QmJyRG5IMkxxU0c4SnA1a0pqU3dlTzR2Ync3TlpZanhLcjNMTEp2OTNwZmdN?=
 =?utf-8?B?MkVLV3NCMTRmbGpQR3BvcTdLRUhqOTc4Rld2Tm8rMmxHVjFyMlErdzlFWEpX?=
 =?utf-8?B?SGJERjdBQjc4bDhpLzhUTTdJblZ0RjlSRDIveFo5SmE2UWsrSHY3S2lYUzJw?=
 =?utf-8?B?WnczMENCR1Y2MmwzNjRnRHFjOFVmQW1tbE5mM1NzWnB0RC95bXY5S1pYUjZO?=
 =?utf-8?B?VHc2eVlncHFMUzdISWk2R0t0ZXM4WTNMaW1VZHpVMlhOVjN4c1N4ZGN0ZDBZ?=
 =?utf-8?B?NURqUGRjV1F2UEU3azc4ZTh5eUxUdFJicGtWQWlYcGl1dU4rRk9DWEN6YWUv?=
 =?utf-8?B?eGNabUwrcWhEb3ArUzE3WjJjRFl5WmpMTjlyUlVvYlN3aElEK2E3dnRCT3Yr?=
 =?utf-8?B?R1ZlVjdRbll4RVIzUjQ0eEMwd3JOZ2ljdnhLM2pVaS9DK09iR1FQWlJ3SFRX?=
 =?utf-8?B?SUZkNTVXTCtlZnJWR0RENEF1OWltU0Z4ZUNZWmNISWVETnJGVTZmRXNUOGZ2?=
 =?utf-8?B?elZmRGtzWiszWXpLN1IrVkEwN3V5VEVsT1FHOFZPc3o2dURESkd5UHIvYUVN?=
 =?utf-8?B?TllwMDFBcTlkUmdrS3pLMzlkWk9tckJvVTRsRDc4dHJtdzBrME9HZG0zck1q?=
 =?utf-8?B?OVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 55d35ca7-8c74-450a-1075-08dba412ec71
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2023 19:55:38.7501 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gtEcbNgQLHqCS+m4dLhWIiRSTHFHD6Tee+W+6xRIRUyQTsqJt8hoQt/thoomAYGY6ilNPh1u5jDltMTJ7hbbmtknbcuzJTlxU8Oicas9/48=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8606
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692820545; x=1724356545;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=8WItWY2KYnoxNa2atXubzIjLXAXfZgZmnAj0qPGf6ww=;
 b=KGTAg8IFcyQlbYrWBSe0s4f9yz4532hR1KVidSgAm6ZiDGUQfewDSSeF
 tjsnBxEezWSt4KrmoGa+M+Mx45yVH8QPodQzH8gH3UiRW2afjVFGTQziV
 jDZ7dqUCFPH38kbwVnQoCJAzUB+Z3FjxpyqEisstikq4+Qsr7lJJD8eBU
 CK0VT1IPSoj7Z0/dgiXMYAHskFrBiu2NleERMU0hLAreesCbPh8HX1H+X
 8rSF5Qg/zCMMETivt7IxLzzBhUrSVDXSFLmMXfrqv1PcigQxurs7efY9y
 +HqbFUv71nDDx8cCQJn5lsX93czawlfnWDj6eXnFrdPZwtqxkA+97+Q7h
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KGTAg8IF
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] ethernet/intel: Use
 list_for_each_entry() helper
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



On 8/21/2023 6:42 AM, Jinjie Ruan wrote:
> Convert list_for_each() to list_for_each_entry() where applicable.
> 
> No functional changed.
> 
> Signed-off-by: Jinjie Ruan <ruanjinjie@huawei.com>

Thanks for cleaning these up!

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

> ---
>  drivers/net/ethernet/intel/igb/igb_main.c      | 7 ++-----
>  drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c | 7 ++-----
>  2 files changed, 4 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index 9f63a10c6f80..bf9c2f6a1164 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -7850,7 +7850,6 @@ static int igb_set_vf_mac_filter(struct igb_adapter *adapter, const int vf,
>  {
>  	struct pci_dev *pdev = adapter->pdev;
>  	struct vf_data_storage *vf_data = &adapter->vf_data[vf];
> -	struct list_head *pos;
>  	struct vf_mac_filter *entry = NULL;
>  	int ret = 0;
>  
> @@ -7871,8 +7870,7 @@ static int igb_set_vf_mac_filter(struct igb_adapter *adapter, const int vf,
>  	switch (info) {
>  	case E1000_VF_MAC_FILTER_CLR:
>  		/* remove all unicast MAC filters related to the current VF */
> -		list_for_each(pos, &adapter->vf_macs.l) {
> -			entry = list_entry(pos, struct vf_mac_filter, l);
> +		list_for_each_entry(entry, &adapter->vf_macs.l, l) {
>  			if (entry->vf == vf) {
>  				entry->vf = -1;
>  				entry->free = true;
> @@ -7882,8 +7880,7 @@ static int igb_set_vf_mac_filter(struct igb_adapter *adapter, const int vf,
>  		break;
>  	case E1000_VF_MAC_FILTER_ADD:
>  		/* try to find empty slot in the list */
> -		list_for_each(pos, &adapter->vf_macs.l) {
> -			entry = list_entry(pos, struct vf_mac_filter, l);
> +		list_for_each_entry(entry, &adapter->vf_macs.l, l) {
>  			if (entry->free)
>  				break;
>  		}
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
> index 29cc60988071..4c6e2a485d8e 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
> @@ -639,12 +639,10 @@ static int ixgbe_set_vf_macvlan(struct ixgbe_adapter *adapter,
>  				int vf, int index, unsigned char *mac_addr)
>  {
>  	struct vf_macvlans *entry;
> -	struct list_head *pos;
>  	int retval = 0;
>  
>  	if (index <= 1) {
> -		list_for_each(pos, &adapter->vf_mvs.l) {
> -			entry = list_entry(pos, struct vf_macvlans, l);
> +		list_for_each_entry(entry, &adapter->vf_mvs.l, l) {
>  			if (entry->vf == vf) {
>  				entry->vf = -1;
>  				entry->free = true;
> @@ -664,8 +662,7 @@ static int ixgbe_set_vf_macvlan(struct ixgbe_adapter *adapter,
>  
>  	entry = NULL;
>  
> -	list_for_each(pos, &adapter->vf_mvs.l) {
> -		entry = list_entry(pos, struct vf_macvlans, l);
> +	list_for_each_entry(entry, &adapter->vf_mvs.l, l) {
>  		if (entry->free)
>  			break;
>  	}
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
