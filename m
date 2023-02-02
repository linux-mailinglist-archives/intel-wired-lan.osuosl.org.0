Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 495AB68885E
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Feb 2023 21:43:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CCD8F82034;
	Thu,  2 Feb 2023 20:43:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CCD8F82034
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675370596;
	bh=XUv4g4NaS1KemD8n0fcHtuH259ru61utbBkxKKjI7Co=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=S0hPvFhQfp2gyFJhmUzY6tFKrdwTHzd6E8XyFGodk4HsqRU+AWfzHyvY8Su1QoL3m
	 bA9IM6ZLaKNdph+62BGMmD5DQZH4/vKHOAhcTNHsXE0wvxIREpsDIplRZvyceTpwTc
	 chFETpAT2eMX31yBC8WZpNUx+Rijk3Dednpw/0FAMdi0Cu5TU2j4M/1MLUxkytKc6N
	 v3HR84zcx5ObKxFgf0f60kwrLVj8HQa9w+Gth5jpGpyGJYdhALsPEWl0qq45WLDmZf
	 QJfWWKSGQaHvUsZXOgKvya37iP+eqOAL4jWrmo61GuF8elExFGlyHxPzY5RJgYI914
	 Z9MZEfJisIk1Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qPvJufW0nSHj; Thu,  2 Feb 2023 20:43:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BA06182032;
	Thu,  2 Feb 2023 20:43:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BA06182032
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3C2CE1BF417
 for <intel-wired-lan@osuosl.org>; Thu,  2 Feb 2023 20:43:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1D0AE611EE
 for <intel-wired-lan@osuosl.org>; Thu,  2 Feb 2023 20:43:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1D0AE611EE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sjavOx5_i5En for <intel-wired-lan@osuosl.org>;
 Thu,  2 Feb 2023 20:43:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E2AE2611EB
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E2AE2611EB
 for <intel-wired-lan@osuosl.org>; Thu,  2 Feb 2023 20:43:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="312213898"
X-IronPort-AV: E=Sophos;i="5.97,268,1669104000"; d="scan'208";a="312213898"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 12:43:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="808081798"
X-IronPort-AV: E=Sophos;i="5.97,268,1669104000"; d="scan'208";a="808081798"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga001.fm.intel.com with ESMTP; 02 Feb 2023 12:43:07 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 2 Feb 2023 12:43:07 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 2 Feb 2023 12:43:06 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 2 Feb 2023 12:43:06 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 2 Feb 2023 12:43:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EW4AD6MUfH+2G9RUlD6wHWxqJXCBRANESMQvsa2KgcyG/vTeZh1ADLCJ9STa+yna/QgS4IJDrRV0l9vq9+LhwZjcodUZu8/iPBUgaB7SOBuE1Xhy+E+baDBPxk2fbpkjovhDrii4wUwbmee2UeEt6X0hU5kwq4u/FgtJ2tHi0XrwHrUVuyE9M6IKX2nKY64TmCLm/lg0xRNA3+wXmEGWRPfhyY4lNtgVL62st5yUta6mLhWkDstpgGimfEnhQ9WWfeki6Wwyrw8gcamkgFJtTtURHBguxPrcQDrr7Z9sYHbCFVmlmWRQKznnq9ikxnO/C05k/if8TL8CymmK5uwmAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dBj0SHcwixaHDKev6w7W3idjMxmf9IRrxmWpz1fcExU=;
 b=ca+8ez+jysS96X+CshpWB3ZzSmKFdym/LqQ+SDbjRc8/yjqbDo6xGhvJK6AZtUN2AsxgP+vqMLpriHlEKTcgyojOaUVKFx2SBerNYyYRdPrk6dWzGFi5Xj0gK6yq6l/d9IieAZ5TuPAPLfIxi8yrkOfs+oVk9Onk4VKsJJUQGm3SMmCUUB7yfUYzzxjqLpiwH+rj/OUSUg+t2jf2sjp1DIktaly425eSciechdFCa/UrkeZOs0lXk3vo+OLt7NjEzMwxnPj6KfK+qkjK+jSBilgdgoFFXprBXJUXYyCJ/64EBtlxcK3egHtoChVDtlBUZKBOykaoeuenCv5xQ5IQlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SA2PR11MB5164.namprd11.prod.outlook.com (2603:10b6:806:f9::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.25; Thu, 2 Feb
 2023 20:43:04 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::5697:a11e:691e:6acf]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::5697:a11e:691e:6acf%6]) with mapi id 15.20.6064.025; Thu, 2 Feb 2023
 20:43:03 +0000
Message-ID: <5ad1b920-09ad-32ee-cbc9-0483cffcec94@intel.com>
Date: Thu, 2 Feb 2023 12:43:01 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: <intel-wired-lan@osuosl.org>
References: <Y2vFIq/6rB7k12Gd@localhost>
 <CO1PR11MB50893D5955D9B1BB50CE2807D63E9@CO1PR11MB5089.namprd11.prod.outlook.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <CO1PR11MB50893D5955D9B1BB50CE2807D63E9@CO1PR11MB5089.namprd11.prod.outlook.com>
X-ClientProxiedBy: BYAPR05CA0025.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::38) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SA2PR11MB5164:EE_
X-MS-Office365-Filtering-Correlation-Id: 52384186-0196-42f9-6ed7-08db055e146e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cyTRT/Z7qeS2jMuv7217M/Ia+gGIYMLbHicEO051ZkUxQukEwe5kGIZRHX85smI4xJui2/Ek5HBNtRRId9IfoefDM9KTzx3HmdIK6pcbhA6PQ608R+GgCIdvM1FjXFPTncUjiLuQyu3wCnednTUym1pHEd9sjX37gs5Av1Dbi+oLtT9nk0h6WlcYWi9qRwf8HltQWR6kRuvLh3iNId8tvGPpBB+Z3nIyvsAyrkPDA1geFr6QFh/TyYDozsUTLvwiLTnLddfAzE1lxxzJ+Y6vDtTf8qxmejk2GfFR16z1+eEIiGkZFiE9wSi+kW7/Mc1TQvH9MHuDJ4cgd6z4uk5+pZ1vN0NqLJoBPgAvTK5FSvXUt5LiQYYekOmkkNmaAsJlyP/7N7ROmk+9oNUTvAF2rfB/q6my+NBBVPZwirQe2pZThpbEaYVkgSYd77KBzVL/Ec09YqxMLArIqB+dnrKclnh4IYnRGnDGlobpo5o7jtcOdayioX/5Tf1Xd4jOL+PR9FBP0stLJUeIWloMGwC+Wph0A/qjip7MTYFGAJUGfFnWRRa0iNfVDTG+ZusRpRRFZXYlWTGHE19tW1whc+0n8U5tBoF/mg+G+vqJsvVninmfb/eByC6zfLhFiCEsl4uiOqJvy6I7Nf0jXLOirRQK2KOLU1lBiCxCf9XlbalxvEekodFVILqZB5n9DnvuGaRkAeS9mPOLqiPIXtkQL1jCmEbgAXnpVu4fv/rTJ/lyc0HirrnFujBauCFtRenbwHuwLfGIx3b5hG8Bcw0pzz9D3GmBWP6Il5evHjSzJsmYn4itu7BfK0Sv6TjyR1lFuef6
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(376002)(136003)(346002)(39860400002)(396003)(451199018)(8936002)(2616005)(5660300002)(316002)(2906002)(8676002)(41300700001)(6486002)(66556008)(6916009)(66476007)(6512007)(26005)(478600001)(66946007)(6506007)(186003)(53546011)(966005)(83380400001)(38100700002)(31686004)(86362001)(36756003)(31696002)(82960400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dkx5Z0crY1p5alZoeGtNNjF5eDZaZW5ZNnc2SWpxWWxQd1RnRDNwSG1ZRE5j?=
 =?utf-8?B?SThtRmM3K25YaWIwVlA1b1NYbHhUdVpzMC9meU9nc0d1SmttdTJ2d003dGpp?=
 =?utf-8?B?RkVHZnJ2YnhhZnNXZlVkMkMxNmdtVGx2SEc3VUl5bDhFS3hGSkZYZFNXTUtH?=
 =?utf-8?B?aWY2azF4STRabnpDVWZiTzhiay9ldktic3hYUDhLUTN3cGJxNWFscS95ckJD?=
 =?utf-8?B?dHB2MnhvbzEzRUorMDVVcys5Q2VBZFBsd056cnFVMzRycE9kMndDa1pKSWJz?=
 =?utf-8?B?dUJDbG9xQ1VnOCtpeVVUODlONTBXR1hCdTVKOFl3c0t4eC8wWW5XT2FsdkU5?=
 =?utf-8?B?UmUvS3kxczZWdlB0cXd2V0JzR0dKM2xRa0gwejJhdUxsTEZoT3VETVljYWhE?=
 =?utf-8?B?NHdzd1Q4WXhIQ0ptc1RvMHJoNHJGanQrbHpyOVpSMFRtT0FTNzdKUkx3cEQ4?=
 =?utf-8?B?ZDZyQ1ZxMWFTUGVINXQ0NWx2bllRMVNCSVA4eURSYk1qNGRFeGdWTm16ajZ4?=
 =?utf-8?B?U01IbFptRDJBTkxOUjNXRG5McUg1QnUwNHlkaFBSaWxMMXo1cUQxQlc0M0lk?=
 =?utf-8?B?dDN1eTRVTU5NMDI2a0p1MnpYTVkvTGE5RTgzNTZpVEdHR2JRQUs2V2RjbjlP?=
 =?utf-8?B?YzRlWU16MVRyc3ZwV1FMTUhiQVVPSmNqS1BZRnJydW5WVXVJK3lkUnhrdE53?=
 =?utf-8?B?ZWRmQm0xVmk1Tnk4WkJGbVlUVS8wN0JVcDNCaGFBb0Jxdjd4a21mdDE3WlVj?=
 =?utf-8?B?UFVSN0xJUHdCcjI5a3lHL21Ua3AwcVo1SnhpQlJ4d2k3SHI4THEwdjBOS1NK?=
 =?utf-8?B?RDVqYUV1eVJqMG9SRGNjam94VmVkdGd5UlY4T3lEMTdYUFVxaEhlUUxEMUFE?=
 =?utf-8?B?MURzbGJGWXpRWEl4anJ2ejM1K3VPaS8zSjRVWllkRXpHK0tPRjlpNlRNc3RG?=
 =?utf-8?B?WW1LL2d2ZE5jVUlkTUJTYVYweUR2NmgrdnhoMVgvUFlZM1NKYUJrc2I2NFJs?=
 =?utf-8?B?N05ncDRaRnVRL1RKT2V1Wk5QY3dlTVYrQkFkcUhrL2ZrQThteFJFTitKVnRH?=
 =?utf-8?B?dlNTQUZpVHpac1lZTXdTWlJKdmxHV3JMZVJpeGp2QUtpcG5qSEwxV3lqZzVw?=
 =?utf-8?B?a0xXSUVjTUtQdlNQbW45WUkvYTQydDVteXY5ODY0Q3I1MjJUTVNFeXVEZk5h?=
 =?utf-8?B?bU9RcHFXZFhmVkptY1R5eVB6M09JeEFrbmpEUmtjMlZkMUdWYU5VT2M0clJZ?=
 =?utf-8?B?UHUwS0NVNXcrbEc1NWFSY0t3Qnp5UUR5R1pGS1JYcEl1NEVNekhoMitYd3ZV?=
 =?utf-8?B?SnNwVUlkMzkxNnhMcUNKWXZqVXJnVVRVQlJTT2VWaXNSeXlzV2ZpSThDeGhx?=
 =?utf-8?B?b0FXNHJtYjVCSVdRQ0dSZWt3NE9FV3FIeldodlI0U2ZFMEo3QXJxd1VGWGFq?=
 =?utf-8?B?WE85UUx6OUllc2h4ZitvYitsckpCbllRN0hydmJGMlZkOSsvQS9meTd0Qlc1?=
 =?utf-8?B?YXp0Y0Zpa1NMeVc4cWllclhsR1NZa2NuUUd0eitwWVRteUlDVmhvdkxUckU1?=
 =?utf-8?B?cnV6USswYjJGeVdHQlNDWHR4TGxrVzVJNXJadTRJQ2VUbHpqV0F3Z0RCOVVT?=
 =?utf-8?B?N1FpUS9TMjlWY05Ta3BoSTVuODJOenlWZXhINmhKMjFzdE9NeFhYVC9Xb3JW?=
 =?utf-8?B?S1psSHpYbGEycVptUkM1V2MrS2VvTWxrRlRseGlQVWViekR6M3QxeU14bi9r?=
 =?utf-8?B?VExHQVREMktzcUVvcnd6NUdDRGttU2IvZG1DZm1WNllEUUFkbjNjRCtBK1dx?=
 =?utf-8?B?OCtYREZLUHQ1aVh6M0YvV2ltV3lncVhYSVBKZzh4ZGRWT2FtVFNsS3VIa2dr?=
 =?utf-8?B?ZkttZEk3VmI4MWR6TkxiT2locDVyaUlxaVNHeWlEV2NHUFYyazRDa0M0V2pB?=
 =?utf-8?B?dmJEVHZPMjN2SzB6RXdVU2c1WkRyM3IwbjUrL3lEaUYzQVlxRnorRUlSdWh0?=
 =?utf-8?B?elVzM1RJZVM2ZXBLUGdySmM4eFc1T1ZSczJZdE9PYjRQU0xUQjc1TzBhd2px?=
 =?utf-8?B?ZG52YTJJajFtNDlWNUFWZU5mZGRjWHZ3YlN2OW9ubUVRenJxdFVvVEVYUGtC?=
 =?utf-8?B?VjFBOXBZUnY3TWdNQzdJTEVVYS94NTR2aCtBM3RtY1pyaEt4RFhkbjlXUGRw?=
 =?utf-8?B?V0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 52384186-0196-42f9-6ed7-08db055e146e
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2023 20:43:03.3715 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1uuL0D+kvpW85gp+D2p0dlZTry9FQ38grUp8E4Rvz38d3i+Rg8dYInl8hvVstZEHroxbhYfUPuatdgfgE/dhs5Ea3gL3b7A1L9TOtCLs6X8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5164
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675370589; x=1706906589;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Nvn6uFp8fr/Pr5ebEeBWKhud2EBBalvxkPtEa3aHSks=;
 b=eDBVG00zvz5M0x3cmLQ0dRIITIcwFypEMcBoa3oze+zeYV8JW0j3YQby
 c5qrWZbEjK/z2JRf2ViyJ4LZHxEIyDrGqWk4ExrDwmS1t/lM0h0NsjEOJ
 mrejKFUuwr0naT7Lnbz6MWc4PWtNYeWlPwv5r/+uprJFdJv0YKxTD0aXe
 msS44Uw/igHucKeun9gKRDfePB25n8A5wFgLmnv5vIZr/S6NWL3q/I1dB
 gGPWlfipPldjVS/PyIPJbjqZWu1kf8DUwBeK7Yg5wynAbcSFN2LYKMPVS
 YxiikwHs4llvl1/0792LdVEi0pkPMeb9gVDfCnbwtMyDR04W3cUDnO6Eg
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eDBVG00z
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] ice driver bug with PTP vclocks
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



On 11/9/2022 12:08 PM, Keller, Jacob E wrote:
> 
> 
>> -----Original Message-----
>> From: Miroslav Lichvar <mlichvar@redhat.com>
>> Sent: Wednesday, November 9, 2022 7:20 AM
>> To: intel-wired-lan@lists.osuosl.org
>> Cc: Keller, Jacob E <jacob.e.keller@intel.com>; Richard Cochran
>> <richardcochran@gmail.com>
>> Subject: ice driver bug with PTP vclocks
>>
>> It seems the locking of the PTP clock in the ice driver conflicts with
>> spinlocks used by PTP virtual clocks protecting their timecounter and
>> cyclecounter. I get the following report when running ptp4l+phc2sys
>> pairs on multiple ports of an E810 with vclocks enabled:
>>
>> BUG: scheduling while atomic: ptp7/3859/0x00000002
>> Preemption disabled at:
>> [<0000000000000000>] 0x0
>> CPU: 1 PID: 3859 Comm: ptp7 Tainted: G        W          6.0.6-300.fc37.x86_64 #1
>> Call Trace:
>>  <TASK>
>>  dump_stack_lvl+0x44/0x5c
>>  __schedule_bug.cold+0x81/0x8e
>>  __schedule+0xe82/0x12b0
>>  ? get_nohz_timer_target+0x18/0x1a0
>>  ? timerqueue_add+0x62/0xb0
>>  ? enqueue_hrtimer+0x2f/0x80
>>  schedule+0x5d/0xe0
>>  schedule_hrtimeout_range_clock+0xb5/0x100
>>  ? __hrtimer_init+0xe0/0xe0
>>  usleep_range_state+0x50/0x70
>>  ice_ptp_lock+0x39/0x60 [ice]
>>  ice_ptp_gettimex64+0x31/0x70 [ice]
>>  ? ptp_clock_release+0x50/0x50
>>  ? kthread_stop+0x170/0x170
>>  ptp_vclock_read+0x37/0x90
>>  timecounter_read+0x14/0x60
>>  ptp_vclock_refresh+0x2a/0x50
>>  ptp_aux_kworker+0x1c/0x40
>>  kthread_worker_fn+0xaa/0x250
>>  kthread+0xe9/0x110
>>  ? kthread_complete_and_exit+0x20/0x20
>>  ret_from_fork+0x22/0x30
>>  </TASK>
>>
>> I tried to fix this in the vclock code by moving the PHC read outside
>> of the spinlock, but it turns out that's not a complete fix and it
>> breaks the update of the timecounter's cycle_last value. I suspect I'd
>> need to modify the cyclecounter to use a cached value which would need
>> to be read ahead of the timecounter call.
>>
>> Any chance this could be addressed in the ice driver? Any suggestions?
>>
> 
> I think we can look at how to fix this. I suspect that we are using udelay instead of usleep. Alternatively, I think Karol recently posted a patch that drops the PTP semaphore around the read accesses, which might fix this as well.
> 
> See https://lore.kernel.org/intel-wired-lan/877d0yt0ns.fsf@intel.com/
> 

Richard didn't like dropping the semaphore. I don't like the thought of
having to use udelay either.

We discussed why we can't use a normal lock at
https://lore.kernel.org/netdev/Y31O6zWRjaqttANO@hoboy.vegasvil.org/ on
netdev and
https://lore.kernel.org/intel-wired-lan/877d0yt0ns.fsf@intel.com/ on
intel-wired-lan.

I'm not sure what the right approach here is... Sorry this slipped
through the cracks.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
