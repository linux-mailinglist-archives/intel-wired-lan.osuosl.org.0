Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F29F069EB06
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Feb 2023 00:12:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 45D8240A71;
	Tue, 21 Feb 2023 23:12:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 45D8240A71
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677021131;
	bh=VP6DXdQfImiZWNJJ/+xRn2Agz7n7sBHcmLB+znvIf+A=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IOyiETL+xZDhM5HKuOHWm6GqjJ/6GJzvoVIjesvf4c8B9adTDxxTRV03k+twJvzUH
	 ai+oRbD2+HSNLCrHAh7hiJEV5nD6X6t0CVjH3fyLiv6FfjM/o9FoZtY3JDLwT23GUE
	 pO7MT7Vbv+tMNqSOUDXzoJPna9WBWsMJ5fkbH/zRjfJkDerJduQR0DeTS7v1GQ8yhU
	 0FcEYOUe/dM7k9nPPbRPhkiCe26jMhQFKvCeNzGxr3jrI5SFq9zbgtesD2nh0VLaN1
	 xh1BYqk1GD10jD0GAkYZNkbZNfNNUYDA1bIR4uTcYX7hDlLsqZ6hGpw2+W1pC8Wz+M
	 Pt9wvqdLnEyHA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5IwgwKS2GRdN; Tue, 21 Feb 2023 23:12:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2B8944048A;
	Tue, 21 Feb 2023 23:12:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2B8944048A
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D25641BF350
 for <intel-wired-lan@osuosl.org>; Tue, 21 Feb 2023 23:12:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A9A658144A
 for <intel-wired-lan@osuosl.org>; Tue, 21 Feb 2023 23:12:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A9A658144A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id phNe8mJZVcIg for <intel-wired-lan@osuosl.org>;
 Tue, 21 Feb 2023 23:12:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BCD9581434
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BCD9581434
 for <intel-wired-lan@osuosl.org>; Tue, 21 Feb 2023 23:12:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="313151965"
X-IronPort-AV: E=Sophos;i="5.97,317,1669104000"; d="scan'208";a="313151965"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 15:12:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="704232575"
X-IronPort-AV: E=Sophos;i="5.97,317,1669104000"; d="scan'208";a="704232575"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP; 21 Feb 2023 15:12:00 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 21 Feb 2023 15:12:00 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 21 Feb 2023 15:11:59 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 21 Feb 2023 15:11:59 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.49) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 21 Feb 2023 15:11:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oHXk4p6D4a+IcjkXOJsSZ0pHrRdynckREvoGtGiHTSeiJI+4iIlAM9L9nbk9PScpZpakPfsmePvoRNCJFe09/LRIUt5cBufuCoa1Wz/ZZucy6UsR6uAfgLPVw+40eF5AubfqNZV6GxGAEgF64jV3BoI9kohoB+MmjJRbTDd6IbbM+HH9vC1pw5+vTBoJKH0IXv6g5NdBEatql+Dy7l84gjZxFNteCFZQALjJVuLL5qGnV/rvAn48DhGpl7EAR1VcU2R8Y79u4CEuPpktqtL3xfJsg0wA/wLRP1h1OORicNEobCSKGgpQAspkFNmVIj4I7bD1X+eRtTT8KnNvCcWIug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AnDfKBe4nFxHiuZsn7HmIx7Al0/7kbO/a/TiURXQW30=;
 b=mWGh0VKsxPjCj9J0EAB1u4AddveFbqN3BDt+h/1DMUti8lzKBEijBW1PFadzBoHQhvfL55a7OQ3JkhtoRHnNUGQ0DcgffjmTz52nU9DsP5RyDC4cexbiY90jmiqlv/ViMIZdgtFPtsycoZhlEwNvDmNBLuA+ttpzegIa0tA8Q6kWXp/J5gc0tvs+pUqECAX6TKSXP9+RYZNovdh6mtB4b+B9qyasiKXCOXQh/Kp9A5RkoUkf6mWqxi9d3/53Qi72MNJAiNTRTDLKidbwo1V2zDBrTqOm2lqzU5rdbOtrbSg2JdKXSAEn67YtUwUzJZVzA7MkrCd07He7JocWvOXpkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by IA1PR11MB6196.namprd11.prod.outlook.com (2603:10b6:208:3e8::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.21; Tue, 21 Feb
 2023 23:11:58 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::8905:ba85:9f03:8e2b]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::8905:ba85:9f03:8e2b%5]) with mapi id 15.20.6111.021; Tue, 21 Feb 2023
 23:11:57 +0000
Message-ID: <ba4f9ac9-e8f5-3930-ef76-c51bcecfaf36@intel.com>
Date: Tue, 21 Feb 2023 15:11:55 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Jakub Kicinski <kuba@kernel.org>, "Zulkifli, Muhammad Husaini"
 <muhammad.husaini.zulkifli@intel.com>
References: <20230208044536.10961-1-muhammad.husaini.zulkifli@intel.com>
 <9b1b9cdd-eb6f-183a-8e3f-9116a03f27a8@intel.com>
 <SJ1PR11MB6180D0D59EB01AD1E8FE4991B8A39@SJ1PR11MB6180.namprd11.prod.outlook.com>
 <SJ1PR11MB618086DCCAE226FC19FDCF54B8A69@SJ1PR11MB6180.namprd11.prod.outlook.com>
 <20230220142017.1c0b57be@kernel.org>
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
In-Reply-To: <20230220142017.1c0b57be@kernel.org>
X-ClientProxiedBy: BYAPR08CA0027.namprd08.prod.outlook.com
 (2603:10b6:a03:100::40) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4914:EE_|IA1PR11MB6196:EE_
X-MS-Office365-Filtering-Correlation-Id: 5839c4e2-be97-4306-2b4b-08db1461079c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YtPOQs5aZHWV4h08/0f0ZTazT+PomgCBebXfMRpdVTsLEEmgDM9mJol+Lm2ox6B0Y4dZp9BWfDsikn1vSRWP4a+kwleE3OWZ2R9hYGnQN4jwRTpXlYJrftFf5Hkxh4RD69wxtDtHubEG9Q9BCsAxUIucSefgceqxRu5noV8mXwtxO8RC3/hYeXAoohgM0uGoAvjVpLAdbQT0uCnPVY2l6Wof3fZmx1qts9vbUyCNHbm8ItaVu1b3mHrPgLNGiA4Ke4PW1OxVwrJBLKfRrNls8vQdMdRLNfiOUz+gJfyGaokbZrXsqhaW1p28C53+6kukcKZF3r4wwk+Xd982GZr6uWMCyjARhsCqNSoR+Rcsq3rRWJFnmiH0jKPvGSHBuUGHp0AMqFDvIDtDAqvpPjatZozdaZecOBzw8Fz4IJFKjyb/qKLXa0w7u8BN5/4XF9h25+tMtZJ58ae9t+ODXTKXM42Kbvyb96TpRKKu/t0JlL4iLQlOzEH2q4WBXWIiYWadzrVbe/c834liiHAZ43OBhMg8rmBJ1S6yUsoBXcVxgj5Xo1sv0HXn6eypDJp6ONEuHt5mgK8B5gx5FUz48/yTUgH5vVRmlgYBxucohfYNCjQHqXJw4yO8TS6H6hCgT7Z6dGlCpcyATqqTu4Thk6ef0TjDLOlyOSKVCSHKD2NB730uBmVvTJtIqTzr0mzjMiVjGFPKfM+5kHVRZVZNCpLFZCjfxTXtQSRbZ2I3VUlqE1c=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(366004)(376002)(396003)(136003)(39860400002)(451199018)(8936002)(82960400001)(36756003)(31686004)(44832011)(31696002)(86362001)(5660300002)(966005)(6486002)(478600001)(4326008)(186003)(6512007)(26005)(6506007)(2906002)(6636002)(66556008)(66476007)(107886003)(110136005)(316002)(54906003)(41300700001)(66946007)(53546011)(8676002)(2616005)(45080400002)(38100700002)(4744005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WUp3OHVYTWdrM0tJdFljZTVPY3VyZGVqbTBLbEQwQlFVNEFYOTNYSE9NRVFJ?=
 =?utf-8?B?enF4djV2UGxLMmprSDFUczUxWkd0ajV2NGNDNVptMzdoTkZrb0E3RFh3UFh6?=
 =?utf-8?B?dUdCQi9BOS96VzBkTk1CNlBwNFh3MmwrVWkwb2xJN2FXWERqSVVGZFlaZ3VS?=
 =?utf-8?B?aXRCVW8wcXAzRHFrN1h6KzQ1c2tvMlM2MzB0NlFqV2RObUsxZE96U1llUGNw?=
 =?utf-8?B?OTZtWWxnOENEV09TQXBUV0Vqd2EyU2NMYzVPNUdUQW5pSEVwOUlPdHBaSkhr?=
 =?utf-8?B?ZTZJdElsWnRBRzdONXdYSkVoSHV3ZHhERERDUzc2WmtGMTJwcWl1VW96UGt2?=
 =?utf-8?B?cGREcE91a2JFQnp2MGljTGcwMUZTTEN2VlZvcWZUdXZieEFLdXI4R245YXJm?=
 =?utf-8?B?RFJMWnZQUW5jZ3NNSmZab3VQSk50T2d1QVRsT09LeDdWN1ZnT3NCY0ZBYkQz?=
 =?utf-8?B?aVZXYmtHcVJTS0gzYjUrallDZEdxZUh0YnEvY2g5dlJsZ29NTDVYdHZzd1Ju?=
 =?utf-8?B?RTlaRmozNWZJdWgxMnpTT0hJWndtNjFZejA4RzZDbUwrYis5ejBwMjNDT09u?=
 =?utf-8?B?RmtHU0hTYVE1VGZnRkJySkpxSWxTV0xQQlg4TnMrOEg4enlwSlZXK0xyYndw?=
 =?utf-8?B?Q1JNZUFHMUlMZVNEYW5TUG1aSkwxZlVjb3UycHVPNU9tUERtL1dXajc5YVNs?=
 =?utf-8?B?OWd5aU5mdXo5dyt1WmMvbDZxbzd5SEFLVHQ2NHBlYmh2bGdOUmdiM0VKWjMw?=
 =?utf-8?B?UU5nQmN1SDk4MDFEKzFtN25aU0ZNYWpTUlBrVUxUc0NSM2JIMUZ3TmZ5dWcx?=
 =?utf-8?B?TkhLNmJDUW9vbTR5Tmt3U3FSSGNHYW5FQmIrQkY4Ymh5MzRDek5RcVRTcDZN?=
 =?utf-8?B?NXZMMW81ejNmL3o3L3ZHdktjanpLb2tjSkhmY0Vsd216TVpQSWVLMjRqRFpM?=
 =?utf-8?B?YnJ2N3kvNzdTR2FtV25iNldqb0QvKzR3ZlI0T2lFa3JoNXBuTGp0T1cvbGsv?=
 =?utf-8?B?ZmdUUkFsNGVMZ0NxSlFiTG1QM2VwRWhDNC9RcDdtSzBvN3VnekloK0NCcXBt?=
 =?utf-8?B?UlV5dDhYKy94eDBOeXBVY1pDSGsxU1FlaXJNWnNkOWN4ZHJYdUx2NWwzVk8z?=
 =?utf-8?B?dC80SEEyZXp2TjAva2hMVk9KSUthdmJxQVIvL1c4eU9zUTBJNWpsckI4TURH?=
 =?utf-8?B?cnpaRDVGUG5DakpSVHRxSHpMUytnYnBzTlkyVnh6bjNraWhYZTlad3NFbHRt?=
 =?utf-8?B?V1gyV0lEbEtWNGFzUWhsbUxuN3BSTjk3OUI0b1RJR0FZODMxN0E1MkJ1UUFu?=
 =?utf-8?B?cGtVWlVuUFQzbndqODJzNGdDQWZHQ1h6RlpOR05qNEVUdElqUCt4SmxXS20z?=
 =?utf-8?B?RDdnNFdvQW1Nc05kaVFzRnNJaXdMbkErNG44REp5Yy9odzlLMGMyeEZmeW93?=
 =?utf-8?B?QytZQjVSLzNhUS8vSERwMk9CYlRVRzhiV3ZzelVaZDNnejBTQ2V0UlVySjhN?=
 =?utf-8?B?Q0NwYloxaGc3eitmUXVvcFQ1OVRPcmUrQWpUUFVyK0ZvVjFTRklNL3RZT1Zx?=
 =?utf-8?B?aVJuYm5ob3BHRmZXcE1hSWJ6M0hyZVRhUElRKzc4OVc3OEg4ZWlsQkZJR2kz?=
 =?utf-8?B?NHlnYkJxL0hCcWhLYm5DOVB5TERJTGpOdkFWbnNSeWdtOGNLQXY0eFEzNHQz?=
 =?utf-8?B?dWY2UlhOQlhJMzBPSXV1Rjk5dHhMSmVkcHlNemN4Ulc3dENTTzhob0xtNmxG?=
 =?utf-8?B?V2N4elE1WTBwQXNaSkI5R0QzMUkwS2c4cnkzM2pRU2VyaUZYK1pKNGY3bTBx?=
 =?utf-8?B?ZXlLTGwyREhFck9YUVBzS2k5ZWVaNk5xd2hxRHNxcVJ1ckNoZFA2S0RycVFz?=
 =?utf-8?B?ZGdFa3c5QjNzTEV5RFRiVkNnUGE0WjdCY1lZdE9oYWlNZDlWaHBMTUEyZ0dv?=
 =?utf-8?B?cFEwYWVNNEVONlpzT2RmZmxYYlU4SER0aUkvTzVNbnV0TDhYTTV5aXJBOTNr?=
 =?utf-8?B?b2ZRdzBScXllakluSTUrb0ZPYUV3a1BWNTBIN0piVmd0NWhGN2JHZUJKSFJy?=
 =?utf-8?B?QkVqcHBGNkIzWkxsbnA5dGpkdG9QNGxXMGpwRWNibGR2QmlJUjNmSVIzV3Iv?=
 =?utf-8?B?eXRQOFpHbHRtUHBRL3dBVkZYTm5sNzg0Q0JQb3FOQkplNmRWZWorTXZIbzJN?=
 =?utf-8?B?Nmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5839c4e2-be97-4306-2b4b-08db1461079c
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Feb 2023 23:11:57.7927 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UyRn0BifAlYKRPIJ7Ngu6IjkNRM6wCDQvq+lgf0c2p0O5w0KzYvCqZdUL3pzAb2+tMrRawjfPu3R8UiOnj0FGgx/5JsCDgD8RV+3NI4rRRU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6196
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677021121; x=1708557121;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=unesmMP+WF3MnxfiLGiItifNrK8ueBk2QkNP/9XrnkQ=;
 b=DeE3XkVIj84TLR1vMGJXYqLT5MWOO1qpJCTKG+ZP9xy+O6wlw0aZXpMp
 1Tlkfyj98flK5TCotIun8s2zm4slqMRhxFn+XBaW1yjsbhD0qlApdwo9m
 T2FoJHrYwmTlbwHI8mdkyD1iOzOmxy0t/hI7qU1ZaE8Gd/CgP9QY06DE0
 QvJoY3TO16lXPO33xqqf8CM9x2ZmzpWuQVBcwmdATEV1G0+AOL7ZNXbhB
 uOczA1lM4Vlar+NxaUXhm2mdJJlfh9ctOvw3pnZHu2kby6RHbCXKb4zux
 JWovWMJTCi/wJbcU1fxMR4pvwIPh3uT3EYIJMbOADmERk5tkZvwyciT9/
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DeE3XkVI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] igc: Add transmission
 overrun counter
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
Cc: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2/20/2023 2:20 PM, Jakub Kicinski wrote:
> On Sat, 18 Feb 2023 06:19:31 +0000 Zulkifli, Muhammad Husaini wrote:
>> Hi Jakub and Vinicius,
>>
>> I would appreciate any early feedback or thoughts on this patch submission.
>>
>> History of the discussion:
>> https://lore.kernel.org/intel-wired-lan/SJ1PR11MB6180D0D59EB01AD1E8FE4991B8A39@SJ1PR11MB6180.namprd11.prod.outlook.com/T/#r8db595a7b40067d2315def91d41c9695454d6c9f
> 
> Tony asks very good questions. Driver specific counter always reported
> as 0 would be odd for Linux. The counter is of no practical importance.

Maybe too obvious a question, but it looks like your patch, Muhammad,
forgot to add the code that increments the counter?

If you add that, then the patch makes sense.


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
