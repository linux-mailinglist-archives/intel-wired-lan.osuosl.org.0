Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DFAD27A8FD3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Sep 2023 01:24:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7B4A483BE9;
	Wed, 20 Sep 2023 23:24:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7B4A483BE9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695252264;
	bh=xWziD6E4CjefQg2pswTqrk2M9l+pAKoxuMJ3w7WE1mI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5lZI+gNIl/G06rDSsCH6avv9tnn+SVC5LHAVaIU6r/ntFDc9Vo1xhw49+VZkWSA6Y
	 LoKS9vp3Svl8szrPAk2jwNhWjftly+ywywp08XibYglhPzT6nMDicwz/v48gJsMSEx
	 wK5ravjpON84OIXPy9H0Qn5aTkL8R73Xf6tILCqxBhQvM2UZhWQ7fsvXFiCDat0usr
	 tB79/qAlKanX91iSiUA2h4rqi1Pj3yOAmmOyzHwsKfRmqiu0ZrVxLpM9vab3LjaNpO
	 Mbz7ZNqSuyzQgeNdn8LE2t6Kkm/WFLnO8MdUTD0dpcR7YntTXEGNhovI54vt12O+cQ
	 jabFq/hTTbmOw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i3-H7cczcTvz; Wed, 20 Sep 2023 23:24:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6FEF783BDB;
	Wed, 20 Sep 2023 23:24:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6FEF783BDB
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7FFD31BF3EF
 for <intel-wired-lan@osuosl.org>; Wed, 20 Sep 2023 23:24:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6527460F6C
 for <intel-wired-lan@osuosl.org>; Wed, 20 Sep 2023 23:24:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6527460F6C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n4dXqyLZuqIG for <intel-wired-lan@osuosl.org>;
 Wed, 20 Sep 2023 23:24:17 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 66C2060A68
 for <intel-wired-lan@osuosl.org>; Wed, 20 Sep 2023 23:24:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 66C2060A68
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="383110813"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="383110813"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 16:24:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="746843087"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="746843087"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Sep 2023 16:24:16 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 20 Sep 2023 16:24:16 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 20 Sep 2023 16:24:16 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 20 Sep 2023 16:24:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B8EyA2n/8Lxh6dEoEZu6dVRs04AOd/qU0sMexlvnmpEIAZ4YI9Qf6VsAlI1+lMYiclqjxONOjDcCizquJhPJkhIyz5C1bxIuq4JmfqDBCRMTd45uoA3EURiFBJz1Lj8JtVrrshbGUa2YGc1PO6Jh0xDXurM7FjymilNZaWNW+CYx/8JYPhz1MbmfVfLK7lJBwa7+cEC/0d/lFo7XVzXTsXolO/Sae6EYb01vbzmx/srUp2k4vpTqdWR5sziswznGVjGtGyDWiKKtjqU7Bh+9h5bCmX49QRiqfNaqmZehFZf1w6BbaB95mTirBT2QbZvoHC7X/binonq+DJUoEm8fKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Qz8bOojloZwgqT6WRKEhTW/cvekaFgG4F8qp9NBRuMA=;
 b=VC48sDDbiHVAANSLHJnSjNtEXJwdEReLteys3ngiB5+NqRiAvKlFXw2lGhxAQZ3JKWJ4rtJ/GbyqgZ5REmCIAoiELdmcugZkV11Q2EWgtifyXcCAadisaNraRiRLoH//wPj7/gjZKhtaCFPwdxgsuWN9bEh8AEZhjV3L0B73GUnLnAL6NbkrD7iZS5IammTtYme+0N0XQ51DUO6aAthPf5LXbtMQ9uCugIb+PQIcqhm1KEGkA2XSe2ce5GN6INA0DNyxFaiJSxVjkDDUzsKq7WUxB5Z7FtR5J7GUd/CqEWsSvM11nJEgQyeF+IeSWM76DwwREsDQP1bQ6f6UNjGaCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MW3PR11MB4524.namprd11.prod.outlook.com (2603:10b6:303:2c::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.20; Wed, 20 Sep
 2023 23:24:14 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::9654:610d:227a:104f]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::9654:610d:227a:104f%4]) with mapi id 15.20.6813.018; Wed, 20 Sep 2023
 23:24:14 +0000
Message-ID: <dfdf2612-992a-86c0-bbb7-95077ab6fe88@intel.com>
Date: Wed, 20 Sep 2023 16:24:13 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: <intel-wired-lan@osuosl.org>
References: <20230920180745.1607563-1-aleksander.lobakin@intel.com>
 <20230920180745.1607563-4-aleksander.lobakin@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20230920180745.1607563-4-aleksander.lobakin@intel.com>
X-ClientProxiedBy: MW4PR04CA0156.namprd04.prod.outlook.com
 (2603:10b6:303:85::11) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|MW3PR11MB4524:EE_
X-MS-Office365-Filtering-Correlation-Id: 8190c8e5-9482-4b6c-35b3-08dbba30b42f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vdfB2Vymq+0+PYFBJ5UOYsqEJ1flD5DOgvHxYpRSRHbtIBDpoypDggKQEJmXzGpxjpYTkOHG8tSyDv2HvKjYl1yfze3bHE90OlihCTw2SxVzisdxTIiJ8hd5B86OFyFUdur9abudojUSvKg+FnOn3nqSFLxkuJJxiYdvBTbhfdw1O12fvEZw53773cdrSokGF0hqwyVlNpNK5pSzb9OMfsxe+Q49p4YlQgn4mFmH4C6QpJZVgXvwctpReZIuSc0bRFN9J3R9+yUkOO6L+VkHOmQj+7F+jF8GyUaoLQubfQQtdaJbef/3ZB7hHpSnie0R4gFAb4sZxdwSntJfCIVme8x/ux7qpZ8NPFwuzL2YoBXRudSctgEtLNrhXIuX/PEr0Xz4p6iH6gMcUaAi/hW28aV2vL/Goga6peF6vwee++UxVviKgGU/AqtQIsWi+o5LNE5p4GqUJDd2NwpI7tDcpxzMrwLIheCTWEncy+ZdiJ1UwL+GPhuUYKI7lheRaXf9unH2fFPKU0G4HNeb0ErvbRgc2GuJHER8FStSw/uSmYMeVyH0tl8K4Uk5fRYbOQl0UFo9ZT+XxGjpaFHYi2JSGmPdWI0QLamyzPu+d8CW5MdXkYHEUzMH6xLxfr1HwGT8lHaiLfSejXWTGdI2CbrJGw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(376002)(136003)(396003)(39860400002)(366004)(186009)(1800799009)(451199024)(53546011)(6512007)(6486002)(6506007)(2616005)(83380400001)(38100700002)(86362001)(31696002)(82960400001)(36756003)(26005)(66946007)(66556008)(66476007)(316002)(6916009)(41300700001)(2906002)(5660300002)(8936002)(8676002)(31686004)(966005)(478600001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ek16TWtoRVhEUEU0N1hBTkRYM0NQZXNHUmxML0Z6bEJITGNTTmdpKzZNKytM?=
 =?utf-8?B?cVl2Y091eDBKOXZUdm9ONzNhYWJaRnRkc2JXbWpOM1FtVVd0QXg3eEtBRjNa?=
 =?utf-8?B?OEZqdklxNzZIaGt3U3BEWUxQbmVNdDljZGt3NElsdkN5MWQrVUFjVU5mbmF5?=
 =?utf-8?B?MnUvOFMzUU1Fd1ZGcExhQ3EvOWNTZHZubGU0aVA3MksvREdYZUNoWU9ST29n?=
 =?utf-8?B?ak96KzhXZjhNdWF0dlF6N2VlQ3AvbUVsVW5MbktHdHNTc2tCZ3lycjFJUFhN?=
 =?utf-8?B?Qnk1Tm5kN2JsK1k4N1dRY2lqWXBGQy9IWi91NGhZSkU2K0ZyNTBkYUJuaEVE?=
 =?utf-8?B?ZitCWTlBSk1BTTc0M2FlTjJrNVRjTTdJeFZJdUt4b0ZLNlhWSTJiQXhMeFpz?=
 =?utf-8?B?Qk9KbjFGbUVCOHpDQkpnYWhQTUU4QnFrcDlFcmJJVGV1clZ2Z3krSWYxSXYz?=
 =?utf-8?B?cXVuQ1VFWmY3a0pCaEY3cmhHbGhZWlpvekdrUmozSnpta00wTDVXL1A5VGNs?=
 =?utf-8?B?VVhPVEhOZUM5UFNkL1QwcTBWK1ZDVGh4bTdPQWlRMTl6SGF1OFV4UmRvdTVM?=
 =?utf-8?B?WE00Tmc1clU0ZzdscXQ5SlNDVGJTMzJNKzBUSjNtVmlVN012VUJONDNhYXBj?=
 =?utf-8?B?SnFCOUx0T2RXOFRaZVkzZjRveTh1dlB0cjhzdTBBeWFGNEFnVXhGNGRYZnow?=
 =?utf-8?B?WlZEV0tIVDliTFVBUk8zTTdNdXFEeFFRdjR2eVdTc0JMNkNHdG1zY3BnTUN2?=
 =?utf-8?B?RkVLK2kwc29UcXZZRVRmVTBZQTlqZTlmNkZBREJ2Uzg0MHVqYzRzTmEySzkv?=
 =?utf-8?B?aC9LY2VmNy9MUlVheSszWXJWOVF4K3hqeGFab1dEOWwwTVpmNzdYd2xYRFdE?=
 =?utf-8?B?K3VLQ1FsNDhSdjVZR1RGYkg3eVpVTmVPYit6Y0wvY0QraTNRdm9nbEJzWTRT?=
 =?utf-8?B?WWlxcjVRdDRPUTR2bGxFQnVVUm1lbHFucWN3UENzUjFuZ1FseU9ReE52K0cz?=
 =?utf-8?B?TzlSUVJYK0NOdDN3NlVCUWFOeERaOC9RNHNVYkw2WU5acHM0Zllhemw4YzJP?=
 =?utf-8?B?aHNPWkJMZEFGWEJJZkFTenJBSVFOUXgrUzdGVGVBbktSU0doZk80RHhmM2dF?=
 =?utf-8?B?cWlnLzMzSUs5b3gvTW1wRktIcVhOdnk3TnRoOERvN2RIdnBNOVZMbHc0eWFU?=
 =?utf-8?B?alRGRktNUzJjaGJVZmpqYWFvUERxWkQwS2ttZHYxdXAxTVExMElRdkZXL081?=
 =?utf-8?B?aHNEdlFYMVhIY3pncFZoT2JVMnBiQS9DbWVLb21CeUFidjhtaGk3cVVESFFV?=
 =?utf-8?B?cXBXZlFrVDFjMTFWazJSbVpNVHNyN3puMS9DSVN2empiREJlZmJmSzFmUVlT?=
 =?utf-8?B?TVoyakVoNlRqclkyV1JLNDBRQlFSQlNTUm1yQ1VPb01Pb3Y1c2puL2dTdjlP?=
 =?utf-8?B?eE5Gc3ZCQ2h6VHg1K2Q5NlF5eDRQNWZUMXZ2Ri90Q1Z0VnRkbjJPbHVBdC9X?=
 =?utf-8?B?Q3JOM2FneE5PNVgwanFvOHFvd2d5Z084bWdFUzRJdCtqOFBXalF0RTl4c0tV?=
 =?utf-8?B?c0p3TDNhV0JvUndJWmw1MFA4bVFhWkN2aitwekF1N0xtZVR2elFuSThYNGNJ?=
 =?utf-8?B?dUFpWnRUcVJkK2FzZzdQRitmZEkvcHp1cEhzVkU3NndLUXJLTWRlMlZ0Q2N0?=
 =?utf-8?B?N1ZBbTJxclg0Q3BxT2k3MzFCZEtzajBIYWN0dTlsRmlGd2t6cm04dS9XUUQ3?=
 =?utf-8?B?WjdaWHYyV2FwbkI2ZXExTE8wKzg3SlovVWh1UG1CRDhhKzMwTUJlWjVDSzVL?=
 =?utf-8?B?NGVaT1dqbDZBSndrWjBWemFyNm5sNWNTY3dwS0Z1eGZ0bDFWWVVJUWV3SEZi?=
 =?utf-8?B?ZW5Oc3NjU2tacGxLcHZkdFJBY0diYUt0c0srTzg4dW1Rb29KcnhHRHZsdUxS?=
 =?utf-8?B?MEFRTkhoTG9SRWdxUmNFRXp5QW9CSlVqc2tnYTBaeG05dlMzSFZyRW5oc01W?=
 =?utf-8?B?SWltbmlvcTdnVDBTVjVwR3YyTTVzeXJ2Slg3dWhaZ0pVZmwrMzdEZHdibGc5?=
 =?utf-8?B?NjNSdFloSmpCdGxkNCt0VUJ1eDhZQVpWcjlobW1rRHRKZ1FYSEtxNFZQZGJW?=
 =?utf-8?B?cWlYWWxMT1V5QTc5Z0lMNnNiK0hRNjZoTDlXMGp2SFNQRmljNEUrdDg1NG1Y?=
 =?utf-8?B?R2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8190c8e5-9482-4b6c-35b3-08dbba30b42f
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Sep 2023 23:24:14.7870 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: S7jaqQeQdO9hr4oTTs6y2lr/EuhVjxhWlBzr9mes0K0hsWX84FRsakkutIpjOtrg2ji5HZuOJiaNK+Sr19bg4KmkLLggR3txaRoUtxHC0SQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4524
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695252257; x=1726788257;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=NKmcu7pQm13gbnotNEHqGg3BWu9oP4Npt1N8hhq4iyc=;
 b=eBUIbZRv5ORVKXQWUqjicPhAZl7qdZYZhzqKJpZu892TyXNzfiCd4IT2
 ujvK3v4z5sFgwcfGekAkewTL6JCDZM8aPCTYh9wnFV6tjZBskKWpwWd0g
 kZ1Ac8TylPCUqFo9jhKK30OB/5svff39KJIhtrgN1nrSqijWP2Ul6oTCV
 5FAlPEWxY7eESQeZAUtql2NiYG4xI2QIb4KHVn+vHZpXXzr0jPG5MdQi+
 Ol0zq8Dbg+68RovfVe9kCH+YBQr3eDZV0SW++TJ7cwqxh2+HqJ8MuJ+mh
 XXlNKR+lWgwv5Q8LTxeGCMpBguXRvm+Ys8yD/gbXMqn/KVxCjRt6Kw+4X
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eBUIbZRv
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 3/3] idpf: fix undefined
 reference to tcp_gro_complete() when !CONFIG_INET
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



On 9/20/2023 11:07 AM, Alexander Lobakin wrote:
> When CONFIG_INET is not set, tcp_gro_complete is not compiled, although
> the drivers using it may still be compiled (spotted by Randy):
> 
> aarch64-linux-ld: drivers/net/ethernet/intel/idpf/idpf_txrx.o:
> in function `idpf_rx_rsc.isra.0':
> drivers/net/ethernet/intel/idpf/idpf_txrx.c:2909:(.text+0x40cc):
> undefined reference to `tcp_gro_complete'
> 
> The drivers need to guard the calls to it manually.
> Return early from the RSC completion function if !CONFIG_INET, it won't
> work properly either way. This effectively makes it be compiled-out
> almost entirely on such builds.
> 
> Fixes: 3a8845af66ed ("idpf: add RX splitq napi poll support")
> Reported-by: Randy Dunlap <rdunlap@infradead.org>
> Closes: https://lore.kernel.org/linux-next/4c84eb7b-3dec-467b-934b-8a0240f7fb12@infradead.org
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> ---

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

>  drivers/net/ethernet/intel/idpf/idpf_txrx.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> index 6fa79898c42c..aa45afeb6496 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> @@ -2876,6 +2876,9 @@ static int idpf_rx_rsc(struct idpf_queue *rxq, struct sk_buff *skb,
>  	if (unlikely(!(ipv4 ^ ipv6)))
>  		return -EINVAL;
>  
> +	if (!IS_ENABLED(CONFIG_INET))
> +		return 0;
> +
>  	rsc_segments = DIV_ROUND_UP(skb->data_len, rsc_seg_len);
>  	if (unlikely(rsc_segments == 1))
>  		return 0;
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
