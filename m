Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EA338788858
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Aug 2023 15:22:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7B73B60FE0;
	Fri, 25 Aug 2023 13:22:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7B73B60FE0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692969727;
	bh=F7+ThZH+6dGbCfDYqkbljnaQGQlK8AmRJ0LLpL5voVE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pzxd5IXuzH7KQ+4JQn6loINvx00pGt+e3UJSljJeQeFk9R4RbEuWl5w28l/UWXJPH
	 zCerehvPXjvnCQZ3/E2PCgVdLy86q+vlv1AhfvsVnazVO/cIqFYxH3l1nJDmiES5aa
	 dv1KgvWsZ7TyEP7dXP4j6jZAfSPuL1RFcnjT6kX5auvyLla1cUEXLfhWuMBLSCFgi9
	 mUKxjSA7OBiCFwV+jkTTEUxTdRIPx+kZgeNG6lJf821r3V7AKbr+8rdf7QuvYkj3Pc
	 m3wB7L5gyfDqkS01NxJjngIvVE/a4N+5y4DxD+wU1globl3V00SbKD8NgfKV9RoaBe
	 rRKh//PU2BQNA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8zFP8pUj1rdE; Fri, 25 Aug 2023 13:22:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 38A0A61455;
	Fri, 25 Aug 2023 13:22:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 38A0A61455
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 18B741BF82F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Aug 2023 13:22:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E425B61450
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Aug 2023 13:22:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E425B61450
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 152YTa8x7nu2 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Aug 2023 13:21:59 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9EC1260AE6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Aug 2023 13:21:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9EC1260AE6
X-IronPort-AV: E=McAfee;i="6600,9927,10813"; a="461072768"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="461072768"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2023 06:21:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10813"; a="740606246"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="740606246"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga007.fm.intel.com with ESMTP; 25 Aug 2023 06:21:37 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 25 Aug 2023 06:21:36 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 25 Aug 2023 06:21:36 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 25 Aug 2023 06:21:36 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 25 Aug 2023 06:21:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Wjzl+nRISfHWJYByqYAL1hblkajaMpZ9LB3UduFwxMBvPcU/GeRS+Yd/gITX93lhp6kVqQ95O0KnAMoQ78gDEnbq9jdGyBT1PWSpkjDFRxNE6MAleXUT6Bcg6OC8vVhVOrj9BtCzi7PoDCLkArW277MBCIYj+gPIgipjiimFR85H4wYrkEwsmkSMAd1zR1IvDC+fIltTQPBhOJyuuFVgwnQIqlf1vW7BGAV7LmL0k4BX/j2rPsIQgCLRFXLm0Lehm6HsruQNe1Fxk0CUNTyV7KjdU4ucbgRbkfaesWnQ5JHK+J0XL3vwXzXWXfe1jFRuUuldLOWPAAE8im9loKuTwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6kjHFJLmOGNstdi4e2UJqBsrLMGbpIf2pL6/QN/zVgc=;
 b=ZX/lGxbYbHvmi9CFsJY3MlEZoQ3AcVqgU2hSM0RY+MxgVA+0TL1f5A3mzCQdtH42Gm38NAh4B/qc+AgJpLxmBw0Cd3ro/M1ckMGlptTw0gTbAzJmOn2qg1Bvc5eCOwhuv9tD+T3+yQ1S+FJoYIpIJgbw8xSDu7el+vG1fjwQaJG2+/v3YAAoNrmFRJryy0vNsimzK8+gGZH3vIWk52Rzh42hs41BCXFpVdJoEMqx7XT1khLW0R7qsXFKfmyGPjj0LFI9+nJTblPlgEO+aoU/cFvCDKJqC3yAWfkfS0s+K7Whlz069XH2M4zqvUj4MNEGCTSEH8rNPv21NFfDNAaa5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by SN7PR11MB6726.namprd11.prod.outlook.com (2603:10b6:806:266::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Fri, 25 Aug
 2023 13:21:34 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::44ff:6a5:9aa4:124a]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::44ff:6a5:9aa4:124a%7]) with mapi id 15.20.6678.031; Fri, 25 Aug 2023
 13:21:34 +0000
Message-ID: <a9fee3a7-8c31-e048-32eb-ed82b8233aee@intel.com>
Date: Fri, 25 Aug 2023 15:19:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Pawel Chmielewski <pawel.chmielewski@intel.com>
References: <20230819093941.15163-1-paul.greenwalt@intel.com>
 <e6e508a7-3cbc-4568-a1f5-c13b5377f77e@lunn.ch>
 <e676df0e-b736-069c-77c4-ae58ad1e24f8@intel.com> <ZOZISCYNWEKqBotb@baltimore>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <ZOZISCYNWEKqBotb@baltimore>
X-ClientProxiedBy: BE0P281CA0028.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:14::15) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|SN7PR11MB6726:EE_
X-MS-Office365-Filtering-Correlation-Id: 568f6970-8952-4ea4-6b54-08dba56e33e9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0SZTTCQ3xhYuNXvzgD45rJkp3+2LdYtPTZCRNSR0Jkmeb5fhJv2je4o5jkDvLgase+xeTQUAO0pwWvKjJAPc/rzXYKjczh77EteBv4ekLKE/DV2nxYpOWm5VrwMBSV6T5t1xtYxchKjzHp0krfLX602fEu/L2jcslYjtyf+FKZBMKYxiYicXnSit4sMB2Z1yS/qBZoc1rOdsF6SXUO91sOSQvjmMN08/b4C9wggWeZwFW2QrqjT0MoTcqlMW0oKYOqfbjRVCQuZTAnEpRdU56wypLg6ImMGEZg7CiS/E9Tilr9uGlQ7UTqpHxXOGXZZFACeQlE9HelCWLezfVP4E1YGHh4cZ4d5g4MA1CrLR4+tpDWqP8qrYDdRMZaieXyQeMGkepopYvSNLIdrAnL4EqO+RAmlujwLtCRpSeo/i1Hr5RGGZa1Rxk1gPuLFg76jnY+Bk1ZJEmwfiE/1ZsRzF8ishfcmtQWZ+y4ETAlJIipqlAl/mGg8ai6utJFMnYjH5SspGGldfF7Z/+VEnMk/CbIzd2gcoEvOofzMcru13tqS/IRVnAamaRsvBA60FWntYuihqkC8/wEkIfxPDgdS6zlwwP+NZPAuMYzryRuwk8GQf96jsumy0Id9HO5qxINjVdUXBs8U91i6cTbmHAdiVMqAgLP/UgApNeQTy2Cy/G0U=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(376002)(39860400002)(396003)(346002)(136003)(186009)(451199024)(1800799009)(2906002)(66476007)(54906003)(37006003)(66946007)(66556008)(316002)(6636002)(82960400001)(478600001)(26005)(38100700002)(6666004)(41300700001)(53546011)(6486002)(6506007)(86362001)(6512007)(31696002)(966005)(31686004)(6862004)(8676002)(8936002)(83380400001)(2616005)(4326008)(5660300002)(36756003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S1NGVS9PNHY1VGtpTW5XcWo4cy91NlpnMEVWdnVXZUlITHdLR0kwSmZMMDhz?=
 =?utf-8?B?Nnc4dDRXZDI2L1VNSDZDS29IM1lyMEpRd0lJNnpERUM0S0o3VTlGblJZZURX?=
 =?utf-8?B?dnNvdjhBREF2bllWM2xFOUVtMjI3SmVWSkhnaUcvRm96SGhSRDBuc0luNUJJ?=
 =?utf-8?B?eW4yZVBCOUNPZmpaODNZTC83N3VaZHV3a1krYWlzNkVpNzZRR0s3bWVGaVhR?=
 =?utf-8?B?UWNTODBVeG1lZ2dmcWQ2cnhMTXNOTjA5enlvNVFKelV4NUpCZjVWRVlCcFlM?=
 =?utf-8?B?Tmh2aThzSk1XN2FCVUt1cDBWS0hlZ1ZxSCt1em9GUEEwb3VWREo4dWFtTzIx?=
 =?utf-8?B?NE45WW9ncEpFRHo2c1VDWlpLUW5BdEFpbHhXR3EvUms0bnpQWEdSRkRKU3lv?=
 =?utf-8?B?NVF6SkJ1eDhRb1pXM2JCSUFwSVFxNzhETXkyNGdDSkNXbFhUcTN3RnFyc2hZ?=
 =?utf-8?B?eHVGQjZzbkNpVG5KakNUVEFPME5NR0RvQXhpUXFTR25BRXlGQThDcjdMUlZB?=
 =?utf-8?B?dWRPbXhxUVlSeHlsVDRDMDBlOWJHMTkrSGZSa2pxbEJIdzJSQklKY2NBaXFk?=
 =?utf-8?B?RjdTMDdqR1AzMEVxbGhsdzBIME45cFBWMjlFNEtkRTlYdXd2TXM0K1JadzM5?=
 =?utf-8?B?V3d4RjRzT3VmMDhUK2ViTmxEamdQUHJsdnc2UkVQKzBldDg2Uk1mMURkOTIx?=
 =?utf-8?B?d0h4NmROWjBWZ2M1Q2lsYW4zVlJ1MDZscXM1TDhwbjhiSERoOTNZWFBIQnhs?=
 =?utf-8?B?TTc2UzZueXEyWG9LMVY0WlV2VEFOYS9teGxsdGNRMnJlTmdpYzdycEZPUWtZ?=
 =?utf-8?B?MVR2Y3NHMHlMNmZpZlhrcU1RRWxER0xETHFBV3UwVjM4VmZqeEZrN2tBai9T?=
 =?utf-8?B?am5uWVlxN0laRm5LOEg4eElEalcwU0RHeUJBRDNNenl2SkJaenlYUloyOXRu?=
 =?utf-8?B?ZEN3YXpuOWQzRGh5TzRseDJab21naHFLN3BUZytHSlFOY0ZPWmxSVFM1Z21s?=
 =?utf-8?B?VWwvQ3RWekQ2Z1N2akRKaGViWmlCWDQxdXVBZ1d6QTdjZThRb25ZaG9xUEtj?=
 =?utf-8?B?ZUwwdmpOUHdqeDRiRDR1cjRYVklTUjE4a0lXU2lpTlU4aHM4dTJDcm5JeTJY?=
 =?utf-8?B?b3l3dGhQUHUva0VUTTBFR01jeUs5OVFxRG9BVHR1MWliSGtzZ2VCenhHRitm?=
 =?utf-8?B?d3A4THNhUVE5Q2xZZDZMYTBGMEZJV2RGN05IcW44MitsTWlrUnNEdE5mRm1Q?=
 =?utf-8?B?eXVBMk8rSFdSSG5tNjNuTEtXbGRtMGttU3RqTGUzRmZtMTFZR1ZtMmx6YkRU?=
 =?utf-8?B?V0pHempla2lXREhEOUVYSVV2bFhuSFE3SHVDcG1Ybm03czlBc25HQUVmZXpU?=
 =?utf-8?B?WlZGRVhETEl3L1J5anJJS0Exa0NpSEFQT0J0eW5zZExwSDlTWGl0aU9wSTZF?=
 =?utf-8?B?cEU3eHdWWFF0UmZUTUwxbmFGM0oxakQxdEw0eEpZcWttcnd1RVcwbS9BOFRF?=
 =?utf-8?B?bng1ZW0zOFp3YjlpbHlSNUhVbk1YSTNqMmJsN21WY1lJbHdHanVCWlZCUDRP?=
 =?utf-8?B?VGVoR3duUC9aeCtrRkUvcVhiR3FxaTJXczRKNXZuYmt1dHlHL242TjlQUElP?=
 =?utf-8?B?T0lvWFFmcDFkQXlsZ2h0d3loY2svTS9Qa2FRb1ZVbVRJaXVieFZkc1JWbnRy?=
 =?utf-8?B?aFVpemVnQXVBZFBabkpkTmw5QmJ6Rnk1Qlc1M3NvL3IxanR4QnJzN1JiRHhl?=
 =?utf-8?B?NHo5SkwreTBzNlFsQ2VJejZSdElXNkUxbGpSWmlTTTVnaklScVNzalRVK1kx?=
 =?utf-8?B?TmdUZjNnakNJTEc4ZC9iL1Y0Ti9UVmlKSXpzU2gveGRKcnRmTzV5VjNZZldr?=
 =?utf-8?B?MFV4clBrY014dnZSQ083VmFGVXplM2tQc0tXL1M2Z0V2OWIxN1VPRWd6aERF?=
 =?utf-8?B?aHlzWjM5QmZkd0d2dEFVcHZqQ0MyVklPa0pXcVZqVGsrbnhIUDhDL1M4YlI1?=
 =?utf-8?B?UllnL09sUnBkSVlrelJMajhUOUxMRWJKL3IySk9VUTdTQS9vZXVlSU9aMXV6?=
 =?utf-8?B?bS9wNzM2YUc3WnlyNktMcHdML0ZFV3FpTlY1MGI1TDFja2RDRG9ab0ltM2s1?=
 =?utf-8?B?THpRRHpzNGdVaVBneG5PT2VCVDdYak5KTXRkWll2Vi9pUTgzR3FBZkJzYUJI?=
 =?utf-8?B?VEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 568f6970-8952-4ea4-6b54-08dba56e33e9
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Aug 2023 13:21:34.3830 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MEnmPtL9dIWUMso66/hGyiNDGsYZ9TfcswnWF+9yjVaxaci3aFvVTMkpwJPgTznIoxg3vh2LsGBGPRLbx68KROAnqv1XJ/Lzf22CR4IFlHY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6726
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692969719; x=1724505719;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YUDaXj3YOCWSCcvgmhIwIl9/sJU5l5mR1mjxF5RCGVk=;
 b=X4RyScbcyojs7bVk6ePRM7x94FeqBTyb0SHy/Lf08jAKYbNVnQ8yS8OK
 QiHZVXteWbfNfprCVw1vSjCOs5HZD7x1fFVugy8CorU0AyrNt8AEvR3+X
 rdBAHbKpuk4Uct53dgznQ4KdvCSHmu5XFL/gsLv4NWpGDtpiBDjID9BaJ
 4sQlcwVe/AgpfIXDD9cVBZMltGrRU84idh2RivPoluWYN5xXngwGlsu/m
 MXrQvJmDsOmW3BoDulrdA37Cw66/12cwaVB7duHz5kchMO+7LmNP/TL3f
 8IrsrBl0gR69rcNVu93XtDzPgFXGt04SXjBQFXyH6kdgXqajgfKgltui9
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=X4RyScbc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/9] ethtool: Add forced
 speed to supported link modes maps
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
Cc: Andrew Lunn <andrew@lunn.ch>, aelior@marvell.com, manishc@marvell.com,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org, "Greenwalt,
 Paul" <paul.greenwalt@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Pawel Chmielewski <pawel.chmielewski@intel.com>
Date: Wed, 23 Aug 2023 19:56:24 +0200

> On Sun, Aug 20, 2023 at 12:20:43PM -0700, Greenwalt, Paul wrote:
>>
>>
>> On 8/20/2023 11:54 AM, Andrew Lunn wrote:
>>> On Sat, Aug 19, 2023 at 02:39:41AM -0700, Paul Greenwalt wrote:
>>>> The need to map Ethtool forced speeds to  Ethtool supported link modes is
>>>> common among drivers. To support this move the supported link modes maps
>>>> implementation from the qede driver. This is an efficient solution
>>>> introduced in commit 1d4e4ecccb11 ("qede: populate supported link modes
>>>> maps on module init") for qede driver.
>>>>
>>>> ethtool_forced_speed_maps_init() should be called during driver init
>>>> with an array of struct ethtool_forced_speed_map to populate the
>>>> mapping. The macro ETHTOOL_FORCED_SPEED_MAP is a helper to initialized
>>>> the struct ethtool_forced_speed_map.
>>>
>>> Is there any way to reuse this table:
>>>
>>> https://elixir.bootlin.com/linux/latest/source/drivers/net/phy/phy-core.c#L161
>>>
>>> Seems silly to have multiple tables if this one can be made to work.
>>> It is also used a lot more than anything you will add, which has just
>>> two users so far, so problems with it a likely to be noticed faster.
>>>
>>> 	Andrew
>>
>> Yes, we'll can look into that.

BTW,

drivers/net/ethernet/qlogic/qed/qed_main.c
drivers/net/pcs/pcs-xpcs.c

also have similar stuff and could probably make use of the generic stuff
you're doing as well (qed_main was also done by me).
Not speaking of

drivers/net/phy/phylink.c

We probably should unify all that...

Let me think how we could do that.
Andrew's idea is good. But most high-speed NICs, which have a standalone
management firmware for PHY, don't use phylib/phylink.
So in order to be able to unify all that, they should have ->supported
bitmap somewhere else. Not sure struct net_device is the best place...

If I recall Phylink logics correctly (it's been a while since I last
time was working with my embedded project),

1) in the NIC (MAC) driver, you initialize ->supported with *speeds* and
   stuff like duplex, no link modes;
2) Phylink core sets the corresponding link mode bits;
3) phylib core then clears the bits unsupported by the PHY IIRC

The third step in case with those NICs with FW-managed PHYs should be
done manually in the MAC driver somewhere. Like "I am qede and I don't
support mode XX at 50Gbps, but support the rest, so I clear that one bit".
Then the networking core should be able to play this association game
itself. That would remove a good amount of boilerplating.

> 
> I think it would be better to leave the maps in the code of respective drivers, as they are too much hardware related. 
> Even for a single speed, the sets of supported link modes may vary between the devices.
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
