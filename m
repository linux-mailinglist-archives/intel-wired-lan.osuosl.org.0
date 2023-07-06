Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD43874A2AF
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Jul 2023 18:58:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7698C4158C;
	Thu,  6 Jul 2023 16:58:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7698C4158C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688662684;
	bh=ORUqB4c1+Bmp9FDhl6kZO9sllqTnuTPD998DYrIU1hA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kb8uIhXpLxKidhSljFAkRZ2w0FNEje8ev77cvrvLjgTxozDGj5SUaa5+KC1ChKDAC
	 +risaISuVGyvqY61a9z/V8XEh6HTFYswExtQ0C4SVfqrfNiRXP6N8SkP4ZWI9+MGp5
	 MXU0OlNkROjLKwUl23eQgSBgCnBI/NKYD2S1nGKE1ILBFXQRsc++gPyx1GdyLP2Mx6
	 UTZOEzR1VdrWw5+MdRHGeeUqHvh3/QwVk93m2pFo/5T4tZoDXAPIPnxZCeNLmpV56z
	 CDPEk+hDjdS6d2QawxNwDp09AX+QEVBP49OVZ+yW7WYJn1jUkEBeyv0a2zK95BOc/d
	 meH03pbT90ztQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PgXwBVGgEqtV; Thu,  6 Jul 2023 16:58:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C916D41588;
	Thu,  6 Jul 2023 16:58:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C916D41588
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3550B1BF3DE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 16:57:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0BCC141588
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 16:57:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0BCC141588
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JkYj-oCTdqLd for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Jul 2023 16:57:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E4E3A4150C
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E4E3A4150C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 16:57:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10763"; a="427339130"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="427339130"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 09:57:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10763"; a="713654001"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="713654001"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga007.jf.intel.com with ESMTP; 06 Jul 2023 09:57:54 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 6 Jul 2023 09:57:53 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 6 Jul 2023 09:57:53 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 6 Jul 2023 09:57:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gbq5y/Y03DlTbSpMO953RbgNZmvadqd2Ks+W53BJ4f8rGizCtvR3w7BjR50Zeqb4ddKRNPhwAY58FED39Cmz4dt2+jjy009gXC1Qq2SKMKEG0YM836OG5RyfAsDqDm6Bo1mSSogyfjUUrHAD7Jckp/8gsP47qIOsnqdEFKfRE2mPlDcJp8hWniH1BWIEq/vE54SQ9yuDj2VlGOa29wRks8/95rEKN8MKQiWnh1Q9oZMnLksr4CSs/+Hp8SMfJm43MSf/tsnNoc3vp1mjgNJ90balvenpaoe805qOAaN/6yrg6/MoX8qOjM0XoTuzK5Dn2L8yT+4ZOzFb53QJ4Q3gPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cJFhr21g+kVAMocx+pPGQEAc7ej0xF5Y+ZM84Fy5vlE=;
 b=NSIhFNqzdz7lniOvSAHkU2aQBQFRPvZmu0iR1pVB8XI1aTvKn2LSIPLOfqQk0kawNH4vShoFkXX9kc5yL8l0EokOWvT+Fk8EiXQozPOFaxCqgdLpK1Jrrgu+sHHajAEvbSiklxkELYQrJ4SppxIfuI2rrbIubuCGCGyDPaOXsYSrtKz2k+p0bqDokqtIuals1llaLKOmPD6LjXhNwAxPg3APPrEF+il4gwMjJbTOfF+GswSq8S0W0fCRBv6VP+QJALQmTrSvBdshIuDVMME6WWG9OwhioUY24Hu3G9WdiWSoZhix06y0tGg6trqu5lf38a8m4TL5PRFzg/93KQ52Dg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by SN7PR11MB7666.namprd11.prod.outlook.com (2603:10b6:806:34b::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.24; Thu, 6 Jul
 2023 16:57:52 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::1ecd:561c:902a:7130]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::1ecd:561c:902a:7130%4]) with mapi id 15.20.6565.016; Thu, 6 Jul 2023
 16:57:52 +0000
Message-ID: <52963031-76be-b215-052e-a200f01d7130@intel.com>
Date: Thu, 6 Jul 2023 18:56:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US
To: Alexander Duyck <alexander.duyck@gmail.com>
References: <20230705155551.1317583-1-aleksander.lobakin@intel.com>
 <20230705155551.1317583-7-aleksander.lobakin@intel.com>
 <CAKgT0Ud4h32UFwiUhcpLxSrPRMhbKYSDncL2YiursWgS7Qg7Ug@mail.gmail.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <CAKgT0Ud4h32UFwiUhcpLxSrPRMhbKYSDncL2YiursWgS7Qg7Ug@mail.gmail.com>
X-ClientProxiedBy: DUZPR01CA0293.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b7::7) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|SN7PR11MB7666:EE_
X-MS-Office365-Filtering-Correlation-Id: d120de3b-2549-47c7-ce60-08db7e42228c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0w4cgx8psNQIE4kuBqiMCsLAXoUmD7dRndcFr7z4Hnzbhd39nK5ODY4ZHajJ2IZOXijp4JqlHrKZW916qwTrl7JHUZl7DUrAvGftbZ3yJzinKx5+4uYea6HBOXl3REfWm9bwp6O/klNGiCxE5bhImDqH5Kaj3E+sChx69bVNOvajLUzIeNAQeN4cD2DVBOTaDblE460GUkGNHFG9LSebJYDCP2EicwK0xiRiBFy5ocqYs3ETCpBQ0Z3PMOJMaB7dd/XSoosXRN5OQBlHdsY46KaFJn7WvciQ9BCNzCRNDlVuZnpd7e8gZRmhtNWxt3MIiEEqXwM+UUGuC3WeVUJOk9XmK3tfAwCDo2tIF5mlS5y9IGwXE5e0u8Hh35OmurstrL/xCGkXsyg6z5bLgfnYtGyKYGGOSRGbA4Nu/WT0DrGI/+KQnE5VzI2EM1Dbwubnj9DjDcxKEhMH4MrBXmb8rMk6/Wq0cdRIkrR60rW25qF50HSpMzQ7q1zkrf0ne+gI7kmkg2t5+rorrqv7V9WeWII+nAddcU15MQ6wezYUzJO3Fo1HpMe/0S8yNZlMPhOuvfcV4Q1Pmd4xqgnDPhU62ARoIiaXzdwDtM1uPYux+lp9zFpbTobOjScBv+7DOOGozT1/en6HBf6xQLGPRjeQMQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(136003)(376002)(39860400002)(366004)(346002)(451199021)(31686004)(38100700002)(82960400001)(66946007)(7416002)(54906003)(26005)(6506007)(53546011)(83380400001)(478600001)(2616005)(86362001)(66476007)(66556008)(31696002)(6916009)(4326008)(2906002)(5660300002)(6486002)(316002)(8936002)(8676002)(6666004)(186003)(6512007)(36756003)(41300700001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TG9xeTNoQkhvbzJaK0kwdkRLbmNDb0RJY2wrazdDNGVnRTNOUVltcUU2Wlg0?=
 =?utf-8?B?ZFB6dXZJV20zWmF1cHJxUzU1YWZSTzlwME9VcUtPOVZMUmRQN3lWMXVLOE9G?=
 =?utf-8?B?UDFRTTlJQmhLYVV6U1NjbHdnQndvdWZkN1MwWUpZMUYrSklsSnc0UndJenlX?=
 =?utf-8?B?Rnd3RjBPbXB3UUIzMzh3U1Y4UnB1Y1BKRStNUXpFOUgzckZOWWpKbjU1dk5G?=
 =?utf-8?B?bW52NUJlbUlqakYzUEhRU0I4bnZjZzJRNUpaVENqalZ3S2E4R1FGeHlJTkNx?=
 =?utf-8?B?WFNqSFd0TloyQW1YVmVTU3dBcjdVeVN2aU8wS05hdTBTcG4vYmxxUGt1OTVu?=
 =?utf-8?B?MkJaNFFnbGlpWVAxSXU5TnJQUmdqV09Fdm53anZTbWJTMjFWTWxDcDZuRk40?=
 =?utf-8?B?MktoSnRQZ0NhcVM3OUg3Rnh0em5sR1lGbzVrbURGekJLQjd4Sll0Mm5PY2hu?=
 =?utf-8?B?bjhaMURCeGdQQTdtTGl4aUVLaHhSd1VTVzY2S1R2SlRPU1lFM250NUZLZmkx?=
 =?utf-8?B?Z2ZFVDFlaU1kK0JyQ2FIVk91ekM5NGVjOGx4YXRyKytXSWtyZmpKUm1ZUDN0?=
 =?utf-8?B?OEJUdHhGMVNwUHVtQkRJVVdaQnJybHdOWmZJV0hGNnIxMkpEU3lvKytvTXhx?=
 =?utf-8?B?bW5kcHRQT2lCYzE5d2RKS0FqeW13eHpGeDd1Szh1dFMwZjhOaVJZTzFTRUQx?=
 =?utf-8?B?dk1oOUhHQ0RaeU5GYXRucFFzYlpQQ09VOUNsbmp1SGRmZ3FmMVZHZjBEazZs?=
 =?utf-8?B?SFRmMHFOU0wxZVNyaFI1UkZOMW9xSXpjT0RMTHQ1UThMblQ3OXlQT212WUVX?=
 =?utf-8?B?NThhSnlvajhmc0xjWWVGVno5Ym1NS0t6ZjYrazBZeDZyTHpvQ1AreWxPQUVE?=
 =?utf-8?B?T1N2eW1HaUlBQ3dmYTJJd1MxWXNRN1pDd2R0MUNBWWMwcmNrYmpBQmlOcDJY?=
 =?utf-8?B?NHhaU3VaUFNGOVlQOGNrbkV5NmFKWDRZWEZrZ2NtZG50ZzhIOTNvR1g4UmpH?=
 =?utf-8?B?V0RUTDdrUk1hMHJpUTI4aTdIbTdUMkcvQXkyTkUwTW9VZzIrYXQ2U09RRGp3?=
 =?utf-8?B?b1g3NkU4R0dEcnpaa2JmQTdNZW1YckMwSzVIZzB5d2VSZFV1RGpiRDk5cjBr?=
 =?utf-8?B?NEdEaGFnWlhiSkpaSjBwdTdqMTlXeERidFI3N1VLcnBMbkMxcFdpZjcvZ25N?=
 =?utf-8?B?RVNsNGNvdmhSWmpyTUJrNlQxOTNMRjNXckRjNXdLREp3alUra255RHpCbHBO?=
 =?utf-8?B?QlhhQVdJNkdhR3JRUkJTdG1la1puQ0hMakgrOUE3NWNXNEN3MUJMQU41bnh6?=
 =?utf-8?B?NnkrNU9qYmFReFgrUVFTN2dZUXVpQ0xpamtnSldyU1hLQ05xcDhmUW51Vk1F?=
 =?utf-8?B?MzZWM2FOYk5sM2hxbDJDRUwzOVFJdVFyZUx4cXVOTEd5ZVpHd2w3bVY4MGt0?=
 =?utf-8?B?TDJRMU5KYWxrYTN4cFZJdTZnaTFrcEhQajA1Zi9jVy9PL2p0OFFnVG5jNk5r?=
 =?utf-8?B?QkdMSnArR1ExK0VQV3BkNWZlc2RIRzAxMElIYlZoUEtFWUtrS3NGaUpMaDhT?=
 =?utf-8?B?VCtacVI3MVIyZlhhclhkYm9hd2pBYUsyblhKWDlUSnM1UzJyTVBFdW4vZGla?=
 =?utf-8?B?djJGQmQrTTM0dWRUb2tQeC9wM3VDRFBxY3N3bTJxL0NqakJDazhIREpTbUtR?=
 =?utf-8?B?VjBaQVNEcjltbkRtLzBqdXZjMnViK3pkK1R0MEF1NzBOYldOd1pKSDhOL01Q?=
 =?utf-8?B?WC9OK2VJa0RWRTVheFo2bG54WU1HTEpDRFJGRGV4WUF6SHdOQ0lpKzNVTWE3?=
 =?utf-8?B?UkVNUEVQbXliQkYySzBpV1ZnK2NnN3JhaWFmbTRuZjErdWNSTU96cjhlSTda?=
 =?utf-8?B?dkZFbmFRdDEwRGZORHhOYW03QmxxTVhLM2NtcEIzSCthOXJaTkV0TmNRL1ls?=
 =?utf-8?B?NWJteVpxSk01SmJPaXpUUHo4cDVlZVM5aVQ5TExzekhicVFIcWpNZ0hLNWJO?=
 =?utf-8?B?OHpnQnh1WWpNVnZRaklMNVdzeEZ1S3pWTDN3eFkxVFoxdWEvazhXSlUrMnRw?=
 =?utf-8?B?MlJJQXRJOHlrdlhxMXRiWkZ3amx5VTR2ampWYTJhVC9hQ3JzM0QwZUpsbS9o?=
 =?utf-8?B?OVNRZ3BQbnlSa093Tmkxd3l5K2dFODRuRjFQNDJIM2FiQVI5QUV3YklhTTIr?=
 =?utf-8?B?VVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d120de3b-2549-47c7-ce60-08db7e42228c
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jul 2023 16:57:51.8140 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yOylhhrsww6beXuGb/quFO0aDYaBnTexHDLQ10gPeLPauNNTLuo3CUPdc++2srQCmIcz7GaX2wnblugZIeD7RgPqdttanNqETuoikBSup74=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7666
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688662676; x=1720198676;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=isdWrwTRO/OGZ444SzTF696Gjt5FXgzC4HbgJn1SzEo=;
 b=Dh+5fHDG9C1m1qZ4mFRBJ2TI9BF7ljZNMaoz73mmQMJQUrTaub9XqxO4
 6fq6tYOK/4qLhE4bOZiQ04qnBY9IIn/C7CrLWDxQTLQZg5iYpOnjib2Tx
 J2KWZeEGe9RyxLenp3teWbWmkUxHFVaLiJjJBNM6zngd5NZGu/dBGqnIJ
 DjPJprhJFABgwmBQowjkLYd22qtDtZ7AGVAD26ZoEOWuTd5jYWpjyOSSx
 mCObp/uIqJ3z93EokUREG9lqP/2Zx7N7B2HRPl9/lLlQ+IjK3Xfz4up/7
 UmVBeV8Bf7v0bmIUMCgJDZaMT3a0jfQDpoExfRxckl6qy38k6nXhUn09I
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Dh+5fHDG
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
aHUsIDYgSnVsIDIwMjMgMDg6MjY6MDAgLTA3MDAKCj4gT24gV2VkLCBKdWwgNSwgMjAyMyBhdCA4
OjU44oCvQU0gQWxleGFuZGVyIExvYmFraW4KPiA8YWxla3NhbmRlci5sb2Jha2luQGludGVsLmNv
bT4gd3JvdGU6Cj4+Cj4+IE5vdyB0aGF0IHRoZSBJQVZGIGRyaXZlciBzaW1wbHkgdXNlcyBkZXZf
YWxsb2NfcGFnZSgpICsgZnJlZV9wYWdlKCkgd2l0aAo+PiBubyBjdXN0b20gcmVjeWNsaW5nIGxv
Z2ljcywgaXQgY2FuIGVhc2lseSBiZSBzd2l0Y2hlZCB0byB1c2luZyBQYWdlCj4+IFBvb2wgLyBs
aWJpZSBBUEkgaW5zdGVhZC4KPj4gVGhpcyBhbGxvd3MgdG8gcmVtb3ZpbmcgdGhlIHdob2xlIGRh
bmNpbmcgYXJvdW5kIGhlYWRyb29tLCBIVyBidWZmZXIKPj4gc2l6ZSwgYW5kIHBhZ2Ugb3JkZXIu
IEFsbCBETUEtZm9yLWRldmljZSBpcyBub3cgZG9uZSBpbiB0aGUgUFAgY29yZSwKPj4gZm9yLUNQ
VSAtLSBpbiB0aGUgbGliaWUgaGVscGVyLgo+PiBVc2Ugc2tiX21hcmtfZm9yX3JlY3ljbGUoKSB0
byBicmluZyBiYWNrIHRoZSByZWN5Y2xpbmcgYW5kIHJlc3RvcmUgdGhlCj4+IHBlcmZvcm1hbmNl
LiBTcGVha2luZyBvZiBwZXJmb3JtYW5jZTogb24gcGFyIHdpdGggdGhlIGJhc2VsaW5lIGFuZAo+
PiBmYXN0ZXIgd2l0aCB0aGUgUFAgb3B0aW1pemF0aW9uIHNlcmllcyBhcHBsaWVkLiBCdXQgdGhl
IG1lbW9yeSB1c2FnZSBmb3IKPj4gMTUwMGIgTVRVIGlzIG5vdyBhbG1vc3QgMnggbG93ZXIgKHg4
Nl82NCkgdGhhbmtzIHRvIGFsbG9jYXRpbmcgYSBwYWdlCj4+IGV2ZXJ5IHNlY29uZCBkZXNjcmlw
dG9yLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBBbGV4YW5kZXIgTG9iYWtpbiA8YWxla3NhbmRlci5s
b2Jha2luQGludGVsLmNvbT4KPiAKPiBPbmUgdGhpbmcgSSBhbSBub3RpY2luZyBpcyB0aGF0IHRo
ZXJlIHNlZW1zIHRvIGJlIGEgYnVuY2ggb2YgY2xlYW51cAo+IGNoYW5nZXMgaW4gaGVyZSBhcyB3
ZWxsLiBUaGluZ3MgbGlrZSBtb3ZpbmcgYXJvdW5kIHZhbHVlcyB3aXRoaW4KPiBzdHJ1Y3R1cmVz
IHdoaWNoIEkgYW0gYXNzdW1pbmcgYXJlIHRvIGZpbGwgaG9sZXMuIFlvdSBtYXkgd2FudCB0byBs
b29rCj4gYXQgYnJlYWtpbmcgc29tZSBvZiB0aG9zZSBvdXQgYXMgaXQgbWFrZXMgaXQgYSBiaXQg
aGFyZGVyIHRvIHJldmlldwo+IHRoaXMgc2luY2UgdGhleSBzZWVtIGxpa2UgdW5yZWxhdGVkIGNo
YW5nZXMuCgptaW5fbXR1IGFuZCB3YXRjaGRvZyBhcmUgdW5yZWxhdGVkLCBJJ2xsIGRyb3AgdGhv
c2UuCk1vdmluZyB0YWlsIHBvaW50ZXIgYXJvdW5kIHdhcyBzdXBwb3NlZCB0byBsYW5kIGluIGEg
ZGlmZmVyZW50IGNvbW1pdCwKbm90IHRoaXMgb25lLCBhcyBJIHdyb3RlIDEwIG1pbnV0ZXMgYWdv
IGFscmVhZHkgOnMKClsuLi5dCgo+PiAtICAgICAgIGJpX3NpemUgPSBzaXplb2Yoc3RydWN0IGlh
dmZfcnhfYnVmZmVyKSAqIHJ4X3JpbmctPmNvdW50Owo+PiAtICAgICAgIG1lbXNldChyeF9yaW5n
LT5yeF9iaSwgMCwgYmlfc2l6ZSk7Cj4+IC0KPj4gLSAgICAgICAvKiBaZXJvIG91dCB0aGUgZGVz
Y3JpcHRvciByaW5nICovCj4+IC0gICAgICAgbWVtc2V0KHJ4X3JpbmctPmRlc2MsIDAsIHJ4X3Jp
bmctPnNpemUpOwo+PiAtCj4gCj4gSSBoYXZlIHNvbWUgbWlzZ2l2aW5ncyBhYm91dCBub3QgY2xl
YXJpbmcgdGhlc2UuIFdlIG1heSB3YW50IHRvIGRvdWJsZQo+IGNoZWNrIHRvIHZlcmlmeSB0aGUg
Y29kZSBwYXRocyBhcmUgcmVzaWxpZW50IGVub3VnaCB0aGF0IGl0IHdvbid0Cj4gY2F1c2UgYW55
IGlzc3VlcyB3LyByZXBlYXRlZCB1cC9kb3duIHRlc3Rpbmcgb24gdGhlIGludGVyZmFjZS4gVGhl
Cj4gZ2VuZXJhbCBpZGVhIGlzIHRvIGtlZXAgdGhpbmdzIGNvbnNpc3RlbnQgdy8gdGhlIHN0YXRl
IGFmdGVyCj4gc2V0dXBfcnhfZGVzY3JpcHRvcnMuIElmIHdlIGRvbid0IG5lZWQgdGhpcyB3aGVu
IHdlIGRvbid0IG5lZWQgdG8gYmUKPiBjYWxsaW5nIHRoZSB6YWxsb2Mgb3IgY2FsbG9jIHZlcnNp
b24gb2YgdGhpbmdzIGluCj4gc2V0dXBfcnhfZGVzY3JpcHRvcnMuCgpCb3RoIGFycmF5cyB3aWxs
IGJlIGZyZWVkIGNvdXBsZSBpbnN0cnVjdGlvbnMgYmVsb3csIHdoeSB6ZXJvIHRoZW0/Cgo+IAo+
IAo+PiAgICAgICAgIHJ4X3JpbmctPm5leHRfdG9fY2xlYW4gPSAwOwo+PiAgICAgICAgIHJ4X3Jp
bmctPm5leHRfdG9fdXNlID0gMDsKPj4gIH0KClsuLi5dCgo+PiAgICAgICAgIHN0cnVjdCBuZXRf
ZGV2aWNlICpuZXRkZXY7ICAgICAgLyogbmV0ZGV2IHJpbmcgbWFwcyB0byAqLwo+PiAgICAgICAg
IHVuaW9uIHsKPj4gKyAgICAgICAgICAgICAgIHN0cnVjdCBsaWJpZV9yeF9idWZmZXIgKnJ4X2Jp
Owo+PiAgICAgICAgICAgICAgICAgc3RydWN0IGlhdmZfdHhfYnVmZmVyICp0eF9iaTsKPj4gLSAg
ICAgICAgICAgICAgIHN0cnVjdCBpYXZmX3J4X2J1ZmZlciAqcnhfYmk7Cj4+ICAgICAgICAgfTsK
Pj4gICAgICAgICBERUNMQVJFX0JJVE1BUChzdGF0ZSwgX19JQVZGX1JJTkdfU1RBVEVfTkJJVFMp
Owo+PiArICAgICAgIHU4IF9faW9tZW0gKnRhaWw7Cj4+ICAgICAgICAgdTE2IHF1ZXVlX2luZGV4
OyAgICAgICAgICAgICAgICAvKiBRdWV1ZSBudW1iZXIgb2YgcmluZyAqLwo+PiAgICAgICAgIHU4
IGRjYl90YzsgICAgICAgICAgICAgICAgICAgICAgLyogVHJhZmZpYyBjbGFzcyBvZiByaW5nICov
Cj4+IC0gICAgICAgdTggX19pb21lbSAqdGFpbDsKPj4KPj4gICAgICAgICAvKiBoaWdoIGJpdCBz
ZXQgbWVhbnMgZHluYW1pYywgdXNlIGFjY2Vzc29ycyByb3V0aW5lcyB0byByZWFkL3dyaXRlLgo+
PiAgICAgICAgICAqIGhhcmR3YXJlIG9ubHkgc3VwcG9ydHMgMnVzIHJlc29sdXRpb24gZm9yIHRo
ZSBJVFIgcmVnaXN0ZXJzLgo+IAo+IEknbSBhc3N1bWluZyAidGFpbCIgd2FzIG1vdmVkIGhlcmUg
c2luY2UgaXQgaXMgYSBwb2ludGVyIGFuZCBmaWxscyBhIGhvbGU/Cgooc2VlIGFib3ZlKQoKPiAK
Pj4gQEAgLTMyOSw5ICsyNjQsOCBAQCBzdHJ1Y3QgaWF2Zl9yaW5nIHsKPj4gICAgICAgICAgKi8K
Pj4gICAgICAgICB1MTYgaXRyX3NldHRpbmc7Cj4+Cj4+IC0gICAgICAgdTE2IGNvdW50OyAgICAg
ICAgICAgICAgICAgICAgICAvKiBOdW1iZXIgb2YgZGVzY3JpcHRvcnMgKi8KPj4gICAgICAgICB1
MTYgcmVnX2lkeDsgICAgICAgICAgICAgICAgICAgIC8qIEhXIHJlZ2lzdGVyIGluZGV4IG9mIHRo
ZSByaW5nICovCj4+IC0gICAgICAgdTE2IHJ4X2J1Zl9sZW47Cj4+ICsgICAgICAgdTE2IGNvdW50
OyAgICAgICAgICAgICAgICAgICAgICAvKiBOdW1iZXIgb2YgZGVzY3JpcHRvcnMgKi8KPiAKPiBX
aHkgbW92ZSBjb3VudCBkb3duIGhlcmU/IEl0IGlzIG1vdmluZyB0aGUgY29uc3RhbnQgdmFsdWUg
dGhhdCBpcwo+IHJlYWQtbW9zdGx5IGludG8gYW4gYXJlYSB0aGF0IHdpbGwgYmUgdXBkYXRlZCBt
b3JlIG9mdGVuLgoKV2l0aCB0aGUgOjp0YWlsIHB1dCBpbiBhIGRpZmZlcmVudCBzbG90LCA6OmNv
dW50IHdhcyBsYW5kaW5nIGluIGEKZGlmZmVyZW50IGNhY2hlbGluZS4gSSB3YW50ZWQgdG8gYXZv
aWQgdGhpcy4gQnV0IG5vdyBJIGZlZWwgbGlrZSBJIHdhcwpqdXN0IGxhenkgYW5kIG11c3QndmUg
dGVzdGVkIGJvdGggdmFyaWFudHMgdG8gc2VlIGlmIHRoaXMgbW92ZSBhZmZlY3RzCnBlcmZvcm1h
bmNlLiBJJ2xsIHBsYXkgd2l0aCB0aGlzIG9uZSBpbiB0aGUgbmV4dCByZXYuCgo+IAo+PiAgICAg
ICAgIC8qIHVzZWQgaW4gaW50ZXJydXB0IHByb2Nlc3NpbmcgKi8KPj4gICAgICAgICB1MTYgbmV4
dF90b191c2U7Cj4+IEBAIC0zOTgsMTcgKzMzMiw2IEBAIHN0cnVjdCBpYXZmX3JpbmdfY29udGFp
bmVyIHsKPj4gICNkZWZpbmUgaWF2Zl9mb3JfZWFjaF9yaW5nKHBvcywgaGVhZCkgXAo+PiAgICAg
ICAgIGZvciAocG9zID0gKGhlYWQpLnJpbmc7IHBvcyAhPSBOVUxMOyBwb3MgPSBwb3MtPm5leHQp
Cj4+Cj4+IC1zdGF0aWMgaW5saW5lIHVuc2lnbmVkIGludCBpYXZmX3J4X3BnX29yZGVyKHN0cnVj
dCBpYXZmX3JpbmcgKnJpbmcpCj4+IC17Cj4+IC0jaWYgKFBBR0VfU0laRSA8IDgxOTIpCj4+IC0g
ICAgICAgaWYgKHJpbmctPnJ4X2J1Zl9sZW4gPiAoUEFHRV9TSVpFIC8gMikpCj4+IC0gICAgICAg
ICAgICAgICByZXR1cm4gMTsKPj4gLSNlbmRpZgo+PiAtICAgICAgIHJldHVybiAwOwo+PiAtfQo+
PiAtCj4+IC0jZGVmaW5lIGlhdmZfcnhfcGdfc2l6ZShfcmluZykgKFBBR0VfU0laRSA8PCBpYXZm
X3J4X3BnX29yZGVyKF9yaW5nKSkKPj4gLQo+IAo+IEFsbCB0aGlzIGNvZGUgcHJvYmFibHkgY291
bGQgaGF2ZSBiZWVuIHJlbW92ZWQgaW4gYW4gZWFybGllciBwYXRjaAo+IHNpbmNlIEkgZG9uJ3Qg
dGhpbmsgd2UgbmVlZCB0aGUgaGlnaGVyIG9yZGVyIHBhZ2VzIG9uY2Ugd2UgZGlkIGF3YXkKPiB3
aXRoIHRoZSByZWN5Y2xpbmcuIE9kZHMgYXJlIHdlIGNhbiBwcm9iYWJseSBtb3ZlIHRoaXMgaW50
byB0aGUKPiByZWN5Y2xpbmcgY29kZSByZW1vdmFsLgoKVGhpcyB3ZW50IGhlcmUgYXMgSSBtZXJn
ZWQgImFsd2F5cyB1c2Ugb3JkZXIgMCIgY29tbWl0IHdpdGggInN3aXRjaCB0bwpQYWdlIFBvb2wi
LiBJbiBnZW5lcmFsLCBJSVJDIGhhdmluZyByZW1vdmFscyBvZiBhbGwgdGhlIHN0dWZmIGF0IG9u
Y2UgaW4Kb25lIGNvbW1pdCAoIzIpIHdhcyBsZXNzIHJlYWRhYmxlIHRoYW4gdGhlIGN1cnJlbnQg
dmVyc2lvbiwgYnV0IEknbGwKZG91YmxlLWNoZWNrLgoKPiAKPj4gIGJvb2wgaWF2Zl9hbGxvY19y
eF9idWZmZXJzKHN0cnVjdCBpYXZmX3JpbmcgKnJ4ciwgdTE2IGNsZWFuZWRfY291bnQpOwo+PiAg
bmV0ZGV2X3R4X3QgaWF2Zl94bWl0X2ZyYW1lKHN0cnVjdCBza19idWZmICpza2IsIHN0cnVjdCBu
ZXRfZGV2aWNlICpuZXRkZXYpOwo+PiAgaW50IGlhdmZfc2V0dXBfdHhfZGVzY3JpcHRvcnMoc3Ry
dWN0IGlhdmZfcmluZyAqdHhfcmluZyk7CgpbLi4uXQoKPj4gQEAgLTMwOSw5ICszMTAsNyBAQCB2
b2lkIGlhdmZfY29uZmlndXJlX3F1ZXVlcyhzdHJ1Y3QgaWF2Zl9hZGFwdGVyICphZGFwdGVyKQo+
PiAgICAgICAgICAgICAgICAgdnFwaS0+cnhxLnJpbmdfbGVuID0gYWRhcHRlci0+cnhfcmluZ3Nb
aV0uY291bnQ7Cj4+ICAgICAgICAgICAgICAgICB2cXBpLT5yeHEuZG1hX3JpbmdfYWRkciA9IGFk
YXB0ZXItPnJ4X3JpbmdzW2ldLmRtYTsKPj4gICAgICAgICAgICAgICAgIHZxcGktPnJ4cS5tYXhf
cGt0X3NpemUgPSBtYXhfZnJhbWU7Cj4+IC0gICAgICAgICAgICAgICB2cXBpLT5yeHEuZGF0YWJ1
ZmZlcl9zaXplID0KPj4gLSAgICAgICAgICAgICAgICAgICAgICAgQUxJR04oYWRhcHRlci0+cnhf
cmluZ3NbaV0ucnhfYnVmX2xlbiwKPj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgQklU
X1VMTChJQVZGX1JYUV9DVFhfREJVRkZfU0hJRlQpKTsKPiAKPiBJcyB0aGlzIHJlbmRlcmVkIHJl
ZHVuZGFudCBieSBzb21ldGhpbmc/IFNlZW1zIGxpa2UgeW91IHNob3VsZCBiZQo+IGd1YXJhbnRl
ZWluZyBzb21ld2hlcmUgdGhhdCB5b3UgYXJlIHN0aWxsIGFsaWduZWQgdG8gdGhpcy4KClNlZSB0
aGUgcHJldmlvdXMgY29tbWl0LCB0aGUgcGxhY2Ugd2hlcmUgSSBjYWxjdWxhdGUgbWF4X2xlbiBm
b3IgdGhlIFBQCnBhcmFtcy4gMTI4IGJ5dGUgaXMgSW50ZWwtd2lkZSBIVyByZXEsIHNvIGl0IGxp
dmVzIHRoZXJlIG5vdy4KCj4gCj4gCj4+ICsgICAgICAgICAgICAgICB2cXBpLT5yeHEuZGF0YWJ1
ZmZlcl9zaXplID0gbWF4X2xlbjsKPj4gICAgICAgICAgICAgICAgIHZxcGkrKzsKVGhhbmtzLApP
bGVrCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6
Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
