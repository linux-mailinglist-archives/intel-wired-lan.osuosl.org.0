Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 56AF77A8FCB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Sep 2023 01:20:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 482F981F36;
	Wed, 20 Sep 2023 23:20:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 482F981F36
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695252021;
	bh=FYo86TEAAt/k3zCvV/YxdLGIUNdZ3QhxvIWesWJLLQ4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=UK3UnSPmoirWAQ/sBggslF7zU7J+oBAM4nAphdou8Q+Dbon9d/KpFeX9buRNSwI2d
	 In/fevfxROmdPL2klp6RFN3vkzw+bfUFWI9q+H+26uHqQYIkP9JuxEz+8IeB0LjbRV
	 z2GclZTUVXVcHL3SxrQcH9HzZKWj+VEFlxzCuMSsZB92ayW8Uv/YaTityFvMW6f2dZ
	 Vs6Z81/oU7UfcOVX1D+Adwg5iBJgJRLJRkxYoVItOmiBS2mLFe9P+lWWgCf7kt1qyx
	 QlXtS19jnbNIWWKf6c9lOdrcDuqHeR7P1GoSjmNwhEOG9pCTffXS2b8WUffDzbX/pk
	 v8SvPa/rH8GGA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mIpgkyt2CuX2; Wed, 20 Sep 2023 23:20:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0AB4381EAE;
	Wed, 20 Sep 2023 23:20:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0AB4381EAE
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E3AC31BF3EF
 for <intel-wired-lan@osuosl.org>; Wed, 20 Sep 2023 23:20:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B3BE960F6C
 for <intel-wired-lan@osuosl.org>; Wed, 20 Sep 2023 23:20:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B3BE960F6C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k_CK4hEX4WeQ for <intel-wired-lan@osuosl.org>;
 Wed, 20 Sep 2023 23:20:13 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8AFD960838
 for <intel-wired-lan@osuosl.org>; Wed, 20 Sep 2023 23:20:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8AFD960838
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="444468893"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="444468893"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 16:20:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="781912212"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="781912212"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Sep 2023 16:20:12 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 20 Sep 2023 16:20:12 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 20 Sep 2023 16:20:12 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 20 Sep 2023 16:20:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oQ6EN9bw81wq22p31bc8+i3LtvQc5cT8AR41ay3KmdyX6Hd8StW1xdcvgtO5c5viO7XE0MNyd7invThj+6HV0zSk5PSvaWc1KJHy/IOITFNSgvQNhzWXmDqVDYcLsOhAYtTxsG0VUno/TCadkFQiGAO+UVBveI8BNO/6vTmILQmYXSOelUEhMGQsQuLsjz3CBQU//8QaKYdz3mTBteh86NzeM/FFYjdd0VIv5TaEvrockn+KlyELPcVcPuIkFUE7wrhJ9RQQeQwWxkgiTancBFScaqEaJEJ0agB+fGQX7pBFtES1JmnHx9FUfzti4KNIaxywk3S5SQzNUVuxB25caQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tE2NvgD23Ws5V+CIdxoZeSwLBJFdb0oMLd4WltMXFZU=;
 b=TdMmmPtraoyB71m2OsFORcTu9mi9G5wMeuUtiKwMiIctJJIFRcxNOu+CAopBMRqLlJPM9muwBqZtwmkeQbtuOmri/mjYT9V4k90BeR4sRgJMAACuE1f/+jdlNJPue0psaJ7Tw9Ow7hbl3qzrCzfQJERZgjvAenZj0yKkLeay6UxIkc6xANtPyz+OmA51FgNEipRjHnZbl+ticGnt5jBPnLdXvzBhftTkDiLaivkNYNDkf7D25leqQ9m8b7R1IUBs9omWKTGgFFeW7fmL4/G1ZJEv9VtAT8Rhk6AvivSsHpJ5R4uX084ErtWuOj/lNxbLY+EyrGaOqI/VsqtW1FBD5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by CH3PR11MB8209.namprd11.prod.outlook.com (2603:10b6:610:15d::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.27; Wed, 20 Sep
 2023 23:20:08 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::9654:610d:227a:104f]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::9654:610d:227a:104f%4]) with mapi id 15.20.6813.018; Wed, 20 Sep 2023
 23:20:08 +0000
Message-ID: <3bbaaa09-600f-ed2d-d596-ac994efe1b04@intel.com>
Date: Wed, 20 Sep 2023 16:20:06 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: <intel-wired-lan@osuosl.org>
References: <20230920180745.1607563-1-aleksander.lobakin@intel.com>
 <20230920180745.1607563-2-aleksander.lobakin@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20230920180745.1607563-2-aleksander.lobakin@intel.com>
X-ClientProxiedBy: MW4PR04CA0344.namprd04.prod.outlook.com
 (2603:10b6:303:8a::19) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|CH3PR11MB8209:EE_
X-MS-Office365-Filtering-Correlation-Id: 476c013b-9395-4dac-15e0-08dbba302147
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: APGyr1dujTUm9bC2AlqAuCaHsUvckvb9/fNa3rsl/wRh05SzuJ8ND3BWJK737ZGByRWg653uOXOHwK2ab+gfhK/slT0mY9p5us46bXyuBK95DwWGXmTgMj3YdH8GziyqxxjX4AhgP98zWZCAou601PQ+wGHvhsMqWrkIssD0M1I8Q0nqcHaJGX7BwBWaQfvHYtEWvrLr+3YuVXixTbIkgOxngwdV+MRZiDCln/Hp8EXNAondI8KUT4GY0OvKfSmezJJHb6pi8h1pqzRhO9L+fuHMavD+AEk2WLExoclayvD2J+qphVDVJ26P9olO7+o4Lh7UaTbi2TucOw4JkiLLx2LM95bzrAGsoFq4VBu7GueuNLa3dkj1BdXD65WU5GvQ5eNXRepPl2LfSyPlOr0tn7vb+9V6tWqYuakWMPQfRvRok4BIOLZYkRkRekvFLph1Hr8xsPnT1TyZPZOMa6UXobR/VnRvj5L2RQyiuA9vUGn3r5QftxncanmaUcBli6fyJnlWmzxWbw5XIKFl/rgIW8qKu0iWkPjaZfwErormj70Ab5+aB1LZZkVdODNTysjPHst1MUfhl1wI/1ksFx7P41D78nBTwerZphPKgfLUDbJFByWkGna+vozwOqLZjX9yc7IWmZXTgU4mHib6jpA+SgkaAgee5XZu7KxDQIORdigox7b9MpprIhW1CSEMTidt
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(136003)(346002)(376002)(396003)(186009)(1800799009)(451199024)(31686004)(36756003)(82960400001)(38100700002)(31696002)(86362001)(53546011)(6486002)(5660300002)(66556008)(66946007)(8676002)(8936002)(478600001)(966005)(66476007)(83380400001)(6512007)(6916009)(26005)(6506007)(316002)(2906002)(41300700001)(2616005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SG02N1N1MnRkeTVFeUd4TDh5TS9ObGJRUENvSUVOdTgzT2tLZmdBWFpkZFJh?=
 =?utf-8?B?MHZ0bXBCWURtbGw3MWVkTkNVZmJUWVhxUHMzR01ZQ05TKzk0b2xrSkNZaDB4?=
 =?utf-8?B?VjllTEFJNnRvcVF1V0hWMUttWHNZTDhNTE9nTk05WVI2Q3k2YmFQR1RrbDRG?=
 =?utf-8?B?bUZlWDVwczNMekdBZ3p3elZTVDM5RnJWTnJ2STZodWU4NEo1RWhucWU0OERo?=
 =?utf-8?B?MXNlWk5mWks0NXQxTURjcnBUWkVIY3FBQy9SZGtBSGN4eUFmZkI5RTBHRy9w?=
 =?utf-8?B?UUEwTWt2Q08rbC9OdjFzRDBjbXlSVFM2L1VXaHYzU01YL1JyelpyMnA2L0hT?=
 =?utf-8?B?REloSmR1NEFjVmNlcjBhSGR1MllxT2VJZ3NRQWN3MHh5SnJmSWF2L2xBeEVD?=
 =?utf-8?B?emFmK29sZmxDbnE3cDZGSUptNU85VzlLTE5nZmY3VDBYanFvYlBaQXFsU0Nz?=
 =?utf-8?B?Mzg0WDVjK0R0WnJTMkkzVmdTblNtczdRZ3pwVEpBNjhRTzZMZ2llUC9hdDU3?=
 =?utf-8?B?M05GSmtmSnZKWVBOL2tZNWFLcW84a1c2R3F3NitrbFhMcXErV1RGV1dSaWJG?=
 =?utf-8?B?UG9yR2xSd2JCRUZKcTczekduRUF0VkN1cytXaEpWdkRFNmJMbmhPWUtQd3Jq?=
 =?utf-8?B?LzNFWlI4ZmRmVVpXR0VIVmMxVk5ZNkJ2c1VQVStzY1g2YVdKNnVlSC9MUVMy?=
 =?utf-8?B?NlpiMGExeDFTTHh1NlU0WUtadDNPNTlYL0RhaVpwb0JWdWg3OGdtY08vRk11?=
 =?utf-8?B?RFpMVUJOUVVDck5JWEh4WWZOZnVQZktQM0FCTEowY2xyOWhGUCtleGV5L1I4?=
 =?utf-8?B?a3d5T1FHb0U4RnFNZHp3TjJrNmV4S01JOGVGSkFCa1ZMaCsrWW1zeDVjMWQ3?=
 =?utf-8?B?QlB5UzZRN1lwMGVidytaUkNHNWJaRTkrd2VyNzBiNHJFRmRDVk9hYlpQUTln?=
 =?utf-8?B?TnFBVVlxS0ZEL3IrZTdhYnNYZDIvdk8wMnZqeDUwOFpLVmtaUWlVUUdjM1dD?=
 =?utf-8?B?aFErdmMyNXJ6SUthcENoSnpFVEV3ZTlCbWlrYTU1cW15bGRuNFJReUxYUUJS?=
 =?utf-8?B?b2VJbkFsYUxHL1pHcUZRT1BEUHVuM0ZLaUxwdE5VWEkyeFZBRm5reWdjNHlO?=
 =?utf-8?B?dThaNFluNC8xRitWM204elh2bU0zZVc3ay9SZ0wwZFEwQTYxVkhYQVNWNFZh?=
 =?utf-8?B?eEh3RlhBWDcyS05QRjBsbGV3ckNva3E4UEZ4Y2RDZjN4RE5iZElhQkkzYkRZ?=
 =?utf-8?B?NVVCbzM4Vkh4d0JiSTJld2RUUXdGWkdZWFRiVjFmWEpTV1p0Skt0SS9SSGVh?=
 =?utf-8?B?NWk1aGN2ZWxxWnY4WEdJdHhPWTNLSVEwYXNQSmVCR3dKV0p3SzV5ckh1ZU1R?=
 =?utf-8?B?MnJyei9Hb1IvNjB4Z3c1TnBoNmY4bUNEN2hub042TzhYTVVpSVhrdjFrZUZ2?=
 =?utf-8?B?b2YrNWZWS3R2NFNUMHZJU1FMYVg0R3lDNFFEQnBQV1RHYURhTVg1RkhTZzRT?=
 =?utf-8?B?Tklka1dvMVlTZDFZUVkzZXUzQ29KdmNuT1VUVC9YdCsxRjFyOWVUMmFLOU9N?=
 =?utf-8?B?bHJrUWdpYmlFaFdXZmQzWk41ODlOSE5qd0JSaUFyUlRLMEs0aS8veGJXN0xZ?=
 =?utf-8?B?WUFuUnhDS0lWTzNicjhZWjdxVFYvMTZMQmNvbjFNbUpseG1GYUpBQ3djdWRK?=
 =?utf-8?B?YUdjR0k4eGpBNTFkaENLcFY2WXpDY1N3NUZocTRJSFZOOTZwT2FodUx4dmwr?=
 =?utf-8?B?RGkxdDVUakZ6aGVDcGVGdGlvMXNIYUl1NDFwbzY3Mit3WW1JTjZqazAvbHVy?=
 =?utf-8?B?RGNZbVVpS3FuWSs5VWRZYVBZMnlFakhTbm4zbVUvaVdQQStaZzJLd1hYWGR0?=
 =?utf-8?B?TXVGQmlNS0VCVWp1K2gxOXJETEpFZk9Lb0dmeWNUU1Fhc25iNEM2NDdnL2RP?=
 =?utf-8?B?V3ZndkdIbllUZUwxVkdZVm5mTStEYndXODM5UU0vb2Q4WUhlZWRoRFkwNFVn?=
 =?utf-8?B?VkpQOWQydUFxcGZmcXZjbE9adW50djFhMEx2aXQyVnMxRUx3S0tSNitDWG1B?=
 =?utf-8?B?YmcvUVlMamlKZHlHb1F5OFhLMlJ6NGNOUmJDRks4VXFMWWlDWEZvZmFSZEYy?=
 =?utf-8?B?UndYVFlZOXU4aWplODJiRGNCMVdGOUZ2YVFGVThOaWoxQlAxY1ZMWVZHdXFL?=
 =?utf-8?B?UWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 476c013b-9395-4dac-15e0-08dbba302147
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Sep 2023 23:20:08.3523 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: crdtWcNYGw+UXFprJNOEaqKKpViJ/b2DB4dw9+Dj7yF1AhSn09R4NEMKC6tt/scnW3H21Ii61P+0yikWhZwZ6EaioXki2lrm3XWAVGIOBX4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8209
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695252013; x=1726788013;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=6AvNN63fQQBuhAeHSDGdjLAtwcnGcKqGaEu6A32ijmY=;
 b=fsYqFJ9lx9ocY5wuEcLDlOvi8VMBgsCJrG+QFpkbUGPblj0Iso1Nfibk
 /iuc3LVfRg1MYaTXStIsJRCMii9YcMPasvwbk1XHTHu8ie5imhpq8dSSa
 OlPq9eZdYyFcAn9oqnG5xy69PdGnZpO4AuMNC9fpfw0Rp3Llkv/RmrpjH
 NaFl8aohTshPlSkjS4XMsfFp+fZ6jNxaqc154vjQnLLkrXJR6IxyboB5u
 ipUOK60eOBAwfEWY5GV+teFFMEBjRht26H7n2bt82ppzTl/NzfqQDCoPP
 6z77Yd2Tj64lU7twcQKj2nyqROs1yhJuLmsg/bAqACo5Sb4g74BIublC7
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fsYqFJ9l
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/3] ice: fix undefined
 references to ice_is_*() when !CONFIG_PTP_1588_CLOCK
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
> Starting the cited commit, ice_lib.c unconditionally refers to three
> functions compiled only when CONFIG_PTP_1588_CLOCK is set (as they're
> located in ice_ptp_hw.c):
> 
> ERROR: modpost: "ice_is_clock_mux_present_e810t"
> [drivers/net/ethernet/intel/ice/ice.ko] undefined!
> ERROR: modpost: "ice_is_phy_rclk_present"
> [drivers/net/ethernet/intel/ice/ice.ko] undefined!
> ERROR: modpost: "ice_is_cgu_present"
> [drivers/net/ethernet/intel/ice/ice.ko] undefined!
> 
> These three are HW feature tests and it is safe to stub them as
> `return false` when PTP support is disabled.
> 
> Fixes: 8a3a565ff210 ("ice: add admin commands to access cgu configuration")
> Reported-by: kernel test robot <lkp@intel.com>
> Closes: https://lore.kernel.org/oe-kbuild-all/202309181001.G72eBLpj-lkp@intel.com
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> ---

I posted a version of these functions in ice_common.c quite some time
ago at which was sent as a series at:

https://lore.kernel.org/netdev/20230918212814.435688-1-anthony.l.nguyen@intel.com/

This version places the functions in ice_common.c and avoids the need
for stubs (plus lets us make another function static).

I posted the fix up to bring us to that method here:

https://lore.kernel.org/intel-wired-lan/20230919233435.518620-1-jacob.e.keller@intel.com/

I would prefer to take my version, as I think its better at the end of
the day than the stubs.

>  drivers/net/ethernet/intel/ice/ice_ptp_hw.h | 25 ++++++++++++++++++++-
>  1 file changed, 24 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> index 6f277e7b06b9..405a72864dc7 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> @@ -271,10 +271,33 @@ int ice_read_sma_ctrl_e810t(struct ice_hw *hw, u8 *data);
>  int ice_write_sma_ctrl_e810t(struct ice_hw *hw, u8 data);
>  int ice_read_pca9575_reg_e810t(struct ice_hw *hw, u8 offset, u8 *data);
>  bool ice_is_pca9575_present(struct ice_hw *hw);
> +
> +#if IS_ENABLED(CONFIG_PTP_1588_CLOCK)
> +
>  bool ice_is_phy_rclk_present(struct ice_hw *hw);
>  bool ice_is_clock_mux_present_e810t(struct ice_hw *hw);
> -int ice_get_pf_c827_idx(struct ice_hw *hw, u8 *idx);
>  bool ice_is_cgu_present(struct ice_hw *hw);
> +
> +#else /* !CONFIG_PTP_1588_CLOCK */
> +
> +static inline bool ice_is_phy_rclk_present(const struct ice_hw *hw)
> +{
> +	return false;
> +}
> +
> +static inline bool ice_is_clock_mux_present_e810t(const struct ice_hw *hw)
> +{
> +	return false;
> +}
> +
> +static inline bool ice_is_cgu_present(const struct ice_hw *hw)
> +{
> +	return false;
> +}
> +
> +#endif /* !CONFIG_PTP_1588_CLOCK */
> +
> +int ice_get_pf_c827_idx(struct ice_hw *hw, u8 *idx);
>  enum dpll_pin_type ice_cgu_get_pin_type(struct ice_hw *hw, u8 pin, bool input);
>  struct dpll_pin_frequency *
>  ice_cgu_get_pin_freq_supp(struct ice_hw *hw, u8 pin, bool input, u8 *num);
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
