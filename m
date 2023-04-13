Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15F6A6E1292
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Apr 2023 18:42:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AB46640606;
	Thu, 13 Apr 2023 16:42:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AB46640606
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681404145;
	bh=lNiJw0wdWOP7OHWMN+WuLe/zFRoU1LhwSf9RRY2gQjc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Q3yRiAMLwxFrP54C5yEdPa/qLMoXnHXVDbU9sNmOfmqTQywT6hubx3kEZl2sDmpmk
	 YCPjjHSH/1/LdPwNhS/844W24ll8tOP6aObqll4mUxn25rwFp+b587CakomsaJv/n2
	 pmssTgSTgMQC4k0qP3PNgI48m+ic9DXN08X/t6nUFfL/xYMdvXzPHefLvDdPhP34ZN
	 6TAlY2XXX23CybQm2Q/uKGuBPLpPtYpl1zcWqMcN3FlfupaRo18mMhDi7a5josCZ3D
	 h7AlYVezmu68XYRNUAkom9zrPjul2sNlCEmtl6cvtjLt/UPtkIY3ERPN554catFDTF
	 wJJQDUiO3kKQg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yXe5wJwTlfoZ; Thu, 13 Apr 2023 16:42:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B02E6401ED;
	Thu, 13 Apr 2023 16:42:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B02E6401ED
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A4EC61C3D8A
 for <intel-wired-lan@osuosl.org>; Thu, 13 Apr 2023 16:42:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7ADA0401ED
 for <intel-wired-lan@osuosl.org>; Thu, 13 Apr 2023 16:42:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7ADA0401ED
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lvl20eDKRt-l for <intel-wired-lan@osuosl.org>;
 Thu, 13 Apr 2023 16:42:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CE9074000B
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CE9074000B
 for <intel-wired-lan@osuosl.org>; Thu, 13 Apr 2023 16:42:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="342988452"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="342988452"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 09:42:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="692036370"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="692036370"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga007.fm.intel.com with ESMTP; 13 Apr 2023 09:42:17 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 13 Apr 2023 09:42:17 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 13 Apr 2023 09:42:17 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.104)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 13 Apr 2023 09:42:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dIE66BWjxr6gXwNm5VFpk+vKx2zIPfPcJEdaSPGqnTGGMTuPfje1lkBwDTmSJEN7/zNQWSA4LJygiZawOujyE74MyiAeYLPn48wgKUF9Ozo41Y+xxvf3rf7uRqBE9ERsod0m00UiXky+mk7snREEJ3/Y7ElwtUXMX5PY1CMB9jUOoDlWP2NB2Syk1hUw0S4dS6gAgYkO3gwmJ8jQhIRUMZMvgA8LbRIcfM2pqugveKH28U4vaBYy1IAQQwFu72iPKe/s2RY8hA5ZaxQ0miOJuWi4LMuIZ2zOBreo2zsKPuXWsNlFIju05d0CiczKzC3CkSzrDKxr6MaoUwIXZlBUCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NF4egPM+thzJ8Zh4MN5TCSVLKhu6/khIZN8Tkhnt9SQ=;
 b=XF1nEjZMI1Bxh3pZfju6Pt4ioDYCKz34NIqLulYiyElkC7ozzeGFPdc+sVDvuwqqtD8LtGKwo81iwZh6mQt6EqItYeQ7JvW9E8mZVpETaWd8xtxLYScESTiqzAE9LQBJ3YWvzFUBAGHiykWezyyVtMr2txQjDNkrtXlp0JTcNwpEBQsoRmbmEBDpjZCJGH55WTYSyjqwTKpo5lq4ObokRG8OBO6DFPJSLtD5TZbh4ouwNpVsDu7kLW/0D0nsbRjfjwQYfeyh/tRT5NwmhG8oEwl/IFvdwt5al0wb107KJhxEUGLAIt1NgTsAswOQl5qzDfjCWb2/cBDPajJxL8bxZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by BL1PR11MB5525.namprd11.prod.outlook.com (2603:10b6:208:31f::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.30; Thu, 13 Apr
 2023 16:42:15 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::6222:859a:41a7:e55b]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::6222:859a:41a7:e55b%2]) with mapi id 15.20.6298.030; Thu, 13 Apr 2023
 16:42:15 +0000
Message-ID: <a79471dd-20a2-d9ef-a661-948322223f8c@intel.com>
Date: Thu, 13 Apr 2023 09:42:20 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
References: <20230412133811.2518336-1-arkadiusz.kubalewski@intel.com>
 <22a6ab36-2efb-eccf-b4b0-333c50515183@intel.com>
 <DM6PR11MB46578A43EF737F2316D7DD259B989@DM6PR11MB4657.namprd11.prod.outlook.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <DM6PR11MB46578A43EF737F2316D7DD259B989@DM6PR11MB4657.namprd11.prod.outlook.com>
X-ClientProxiedBy: BY3PR04CA0014.namprd04.prod.outlook.com
 (2603:10b6:a03:217::19) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|BL1PR11MB5525:EE_
X-MS-Office365-Filtering-Correlation-Id: 19d4e77b-2695-4781-b23d-08db3c3e09b9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OEjNZtiRSS4KItXupS52maUCzBfrKpUrhxf/cYhN4Ixc01NYBe4IE/WTSZytuKhfO76GYhB3knH6Ik994hHGkO6y0avdWgfKWdAJAJiD7P2j6DXXFV6oQjePsehgmxZbiU24XH9LXsn8yHbtwJnIuiJeiuXi9lzfjvIJj/2mzsTAS9IN9S2c8Df/BGz47mNWWULwqUdGFcJtI5Dt/l+AMuMO7E0/QPPxIlCTRsHWUhbYOHGNjkJfwmuSwk9Ry8Pow2fNMmcPS3WJRacnw/LqZ8PN3SyM3mwv0uAERtpELB4wsQ0g9xVPk5BjZixxHbtQUw6JwkjXYQrApOzIZtEkKzGTpzrcNLkXFSI1cmDt53mgMlRbwrXjcNNAOvJq7lkq9d1ChBu7r4rg3nIsFypKovedong9k+0rZZLx70PLlNYUbBgdi0P6veMKguNNhS9rthDxER8Q38uWtZjKSdB6N1uufcmdcArdadd2Q0WyWMSTtrL1Sseowp47d4XfHs37fM73pp7UUX/UXDSg2EhczZqFkvSnl5OBG/p/MJlsP33UWghMGoe3G0F1so85NBmu+VyLidmvd1OwZYED7wcsefNeYXjH64K1ivkhV5IxikETW8LUg273B9/5x8ovOYuvieQin6tFMHZ8vu7gmh853g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(346002)(366004)(376002)(136003)(39860400002)(451199021)(2906002)(31686004)(4744005)(8676002)(8936002)(5660300002)(478600001)(41300700001)(316002)(66946007)(66476007)(83380400001)(36756003)(82960400001)(66556008)(110136005)(186003)(86362001)(38100700002)(6486002)(6506007)(6666004)(26005)(53546011)(6512007)(2616005)(31696002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eFpnN0plTGhyK1phU2pCMTZKclZoMFFFUDNISGJ6ejBzc05kdDI2VnVIYUJP?=
 =?utf-8?B?T1BMQ1J2U3puNEJTQWtiVnNqTE1NaWdmUGFVdkFDRFVvN0JGb24vZ21uQllp?=
 =?utf-8?B?VUVrT051TFQ4VTNxK0Z6aXIzemIvdXV6L3gxUnZGdXRBYjBEMFpkMENXMkxQ?=
 =?utf-8?B?dGI3M0FMNjdkSExKRFRRN3dZTkxzVGdwYTlLSSt2NDlJSjYvWUNWRGFyK091?=
 =?utf-8?B?YkkzbGdLQnBVS2VTTG5nSE5KejNqRVNOdGxubGgzQVFPUHJHMXNacFZYZzkw?=
 =?utf-8?B?TmpwRmJvMFhBOHhyOGg5aHBwMXYrMEo4WGFYaFhGM3BpVjZOa1hjM0hIQzRi?=
 =?utf-8?B?RVpnek1lcTRSajBDM21kc2VtUWFXaGFHbXl3b1dyMWFJc2t2a2FCN2FncXV5?=
 =?utf-8?B?bEhLVkNoM01jSnpRc2dtUjBQbTllZW1kZEtjUkdpdUdwSHd1WnROcVh3THFx?=
 =?utf-8?B?T0ZCTlQ0NGR6ZDl1WjkwR1pydytBZVNHdUxpK1hrZitpVGk3V3E2SGU3V2NV?=
 =?utf-8?B?WFYwTzU2VUtsejhPSHF1UHhmRGF3andlcExORWhiZVNMQUozU3lXK25wZ3R3?=
 =?utf-8?B?djNUNmhVMjdZSjUxekNuQXJDVUo2RnVBaVJuY2dyU2cvR2s5YWlNdFROcDVy?=
 =?utf-8?B?blpZT1FCcjQwTmdLTGdGWldISmZ4MDM3ZzQ2KzFNZHVHcitZeTNQRnJXQ3Iz?=
 =?utf-8?B?NTBZNEttd2RKam9UdnVBcnQ5RzI0N1pYc0FQd3RQenlKYTc0ME9SSlIwQTZB?=
 =?utf-8?B?VTBDYjJGWHVVVWxXMC91VG1iK1AvTGtxQTc4bDJMQ1hSSC83UlQ3eDJadUpw?=
 =?utf-8?B?M01UVE8zdE5sRVl4WXBPNGhFUS9XTWRHVlQ3K2ZMWnJ1bXhIZWxsL01NMDNx?=
 =?utf-8?B?RnpUNnV5WmczOE9QWEJidWZweXFicnViRXFOeS9ra2E0RlAxaEJqU2VNZzNz?=
 =?utf-8?B?MU5tWGlvTW5ma0NGazVQNW1lYXI1dHhoQXNLQ0Y4eWNPQndBNXBEV0hnRklz?=
 =?utf-8?B?RWZXWVRVOFlsRHlpaDIwYk1KdXF3dk1OYkZZa1hJMlFOV2VmNlcyTWFEa3k1?=
 =?utf-8?B?aWUvT2ozZkh4dVljdlF1bmNGNkIrdUw2b3ZOcC9mZ2JMNzhnb29tYzhrK2VP?=
 =?utf-8?B?OFV4ZDVyK3F0SWpMWHd3NGwyWDJqaGxSZlNaTk8rd2tTQlprVDBMZjJPanZW?=
 =?utf-8?B?aE9iZ0lSeW0rVHRhU2ZkdXVoeHBJR2hnWWMwTllNS3dhaU9LeDNpMUl1SmxC?=
 =?utf-8?B?WEw4Tnk3eXJobTZPbnJSOTE0bmdrdnNYQVpjL2JhLzU4MnViTGdWM2JqUlJG?=
 =?utf-8?B?aXVkbDAwQXNZS1AxNWNTWHJ5ckJuZlZHbWFnVVRaT2FqZVBDQ041Qld5WElL?=
 =?utf-8?B?L25wZjYxb1VLeHk1REowaVlSem13Q3dNRVF2aE1YU2pKaUVDZ3BXMDBEZHF3?=
 =?utf-8?B?ZVQrakxtTmRlZTIycnAyRE1ZMmF3d2F2Sm41ZVdaQmRJUkh5bGVKMkZVaFpH?=
 =?utf-8?B?Z01VdGNqVkIrcFl5U05hZFEvSWdrQWJDTnJEc0VhTHF3bllQdG5hY0RVOW9O?=
 =?utf-8?B?RGlpQVgrRlFyYWhxdFBONG83cXJreGpXT20zVVFwaXlaMWthT3Nsc0FYU21V?=
 =?utf-8?B?YzU2Vi9SSVp2cHM4cENqRVNjaklSZ0pBTTFTZ2RqdVNZaFowSjR1Q1dHdkkx?=
 =?utf-8?B?bjJ4UG9KNGlXOXFmQlFtd0YyTzk1NEtlanpJQUpFZE9KNTdDTzc4YlZVOEJp?=
 =?utf-8?B?SnF2d1Bpdjd6aEhzUlU2djZKdjg4YjJQS0t6aWU2enZTaDA4QXIrTS9tQ3Z3?=
 =?utf-8?B?V2NrRnYxekFVUG9OaFBNWWdEbENPZHhTdUM0T0cza3VwdjduUGdtdlZCM3Fj?=
 =?utf-8?B?ZHQ3d1Y4Y2QzbVdwUmt4R2dFVzU1eTlJRmtwM0RFQTZxZW94UGl6RGdlbitN?=
 =?utf-8?B?cUZEVjFQTG4xNVdtWFcxRlYxem5qTGdmS2J4QytLWTA3eDVEemZvVnNGNjU5?=
 =?utf-8?B?RzB5ME9FN2FGcW55VGg0QThNb0xWejZ6bmxtZmxKVjFXWTFjcHFGbkwyZXBC?=
 =?utf-8?B?c0dLOXdBSFdGUHVSS0VPZzk4STRxdzFIZkN3SVh2dkFPU0M3ZEIwaE1jam5S?=
 =?utf-8?B?QlM5OU02VGlaSGVLeVhtR3dldG9IN2JwbS9ybEFhbDkvMHVGMUQ5QjY3L1cy?=
 =?utf-8?B?dVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 19d4e77b-2695-4781-b23d-08db3c3e09b9
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Apr 2023 16:42:15.4212 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7/nYgNrFf0Av+P8kk/xWWTo1ajgogkDP7KXqHOn6E1soK+Iq5Y9RE+0ucMfYOkvy4p/OJOgh2EaLddXl+vEGb23bvd88WSnE8mEipu7vxX4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5525
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681404138; x=1712940138;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=o3LqmdxY2nJUINvF8/qkbIDYRS9mJ8OgFRHm5hPcoeQ=;
 b=dthej2ApdQMvvIvgPiZLVLcjj5CpCR+mjc12EfINz2CMa+9su4I4G7/x
 ylj6ZmUAONHqdDs03o4IZW+KWuy+4F6aynMmNhs86n+mNjmv1yhqcwZZq
 G+8nTq61ggoXhWjtGXNQ+Yf9DUO90GpRH4aVb61kp4rT/Sbgo6zhHSeJf
 1I6pUCoCSVPCaCMBS4R43I98se7simY3HTeW+Cg8CqIN9bZBHXGoqknSi
 yVlDxHm1QzH0PEejz74SPL+b1schz3PNzDxeuw74sLLdf0wWb0MHvw/DM
 qcKbFQzW6Rhb8kVQnANbR+YoGJP74/LSesesh+HQ1DJtoHxFXDTslGOaX
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dthej2Ap
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC PATCH v1] ice: add CGU info to devlink
 info callback
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiA0LzEzLzIwMjMgNjozNiBBTSwgS3ViYWxld3NraSwgQXJrYWRpdXN6IHdyb3RlOgo+IERv
IHlvdSBtZWFuIHRvIGFzayBGVyBlYWNoIHRpbWUgd2UgZ290IGRldmxpbmsgcmVxdWVzdCBmcm9t
IHVzZXJzcGFjZT8KPiAKPiBXZWxsLCB0aGlzIHNlZW1zIGRvYWJsZSwgYnV0IGRvIHdlIHdhbnQg
dG8gbGV0IHVzZXJzcGFjZSBlbnF1aXJ5IEZXCj4gYWRtaW4gcXVldWUKPiAKPiB3aXRob3V0IGFu
eSBwcm90ZWN0aW9uPyBUaGlzIHNtZWxscyBhIGJpdCBsaWtlIGEgc2VjdXJpdHkgRC5vLlMuCj4g
cG9zc2liaWxpdHksCj4gCj4gSSB3b3VsZCByYXRoZXIgZ28gd2l0aCByZWFjcXVpcmluZyB0aGlz
IGluZm8gb24gcGYgcmVzZXQgb3Igc29tZXRoaW5nLgo+IAo+IEFzIEkgY2hlY2tlZCB0aGVyZSBp
cyBhbHJlYWR5IGEgZGV2bGluayBjb21tYW5kOiAuY21kID0gREVWTElOS19DTURfUkVMT0FELAo+
IAo+IHdoaWNoIHJlbG9hZHMgdGhpcyBpbmZvIGluIGljZSByaWdodCBub3cgKHRocm91Z2ggaWNl
X2xvYWQoLi4pKSBhbmQgaXQKPiByZXF1aXJlcwo+IAo+IC5mbGFncyA9IEdFTkxfQURNSU5fUEVS
TSwgbG9va3MgYSBiaXQgc2FmZXIuCj4gCj4gwqAKCldlIGFscmVhZHkgZG8gZ2F0aGVyIHNvbWUg
aW5mb3JtYXRpb24gZnJvbSBmaXJtd2FyZSBhdCBlYWNoIGluZm8KcmVxdWVzdCwgYmVjYXVzZSB3
ZSByZWFkIHRoZSBOVk0gdG8gZ2V0IHRoZSBpbmFjdGl2ZSBmbGFzaCB2ZXJzaW9ucy4KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFu
IG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9z
dW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
