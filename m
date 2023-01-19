Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50E64674473
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jan 2023 22:31:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D8A33408BB;
	Thu, 19 Jan 2023 21:31:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D8A33408BB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674163914;
	bh=eeIi7aojM221VBbAwEYpEuWk47+vCs3o8aLu7T5FAYU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Zk1/CIiUHbL6G3PTAYr/adXQIepS5VbZ3gkj9bq9QWuoNTgIsXcFtWbPheAGgAnPG
	 CrYBvPzaV8g0LDEA9FcYbwKW2VD3vxO/eda66HVSw1qijHuHRytiRI7sZId+YE+MQN
	 eFzrtJzjIIDS3jSxzb41JpFS6g56Hb7l/wkQS+3+0llsJMsjHjehYFU4SsNCrWejmJ
	 Ukid2CyUxN9NufWxM/IS2om7dlfgl5Ia8Ry34oW3W5VAjDpAhZnqF9iJeTF+CoRdtW
	 TGY5iQ/06doyvQoFO4NHiUfUcmMiSNY5IIqtEEqLbk1kTWr7+0k6fUgGnUo18svhO5
	 jSkdXXo3EeIAw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ua_9GlDbr_XR; Thu, 19 Jan 2023 21:31:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B71CD405A7;
	Thu, 19 Jan 2023 21:31:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B71CD405A7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5F1381BF2F1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 21:31:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 39305405A7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 21:31:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 39305405A7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XPcAuwOksCrr for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Jan 2023 21:31:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3BBA7403FF
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3BBA7403FF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 21:31:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="327523848"
X-IronPort-AV: E=Sophos;i="5.97,230,1669104000"; d="scan'208";a="327523848"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2023 13:31:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="662266512"
X-IronPort-AV: E=Sophos;i="5.97,230,1669104000"; d="scan'208";a="662266512"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 19 Jan 2023 13:31:45 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 19 Jan 2023 13:31:44 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 19 Jan 2023 13:31:44 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 19 Jan 2023 13:31:44 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 19 Jan 2023 13:31:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X9Qu4BzR0xZ8/AsL2RIlAsBpCXyoqVVO0a6AjnfunNoEs01SGADiCpPWI2GeI8yIGiKVs3QfivIEW7rzPZE5IOs6uLs7NuQEyDnmHzQqXkj3mF/OpYpa1jSxbcv901tO+vuPmeq/a+47bzCB2PWYGt6gBUioTS+HsmdUrD6Fi8ugPTEyQdhdfYdzSBK8NEkC5fRcsYQ8P8nhC23Kbe1ftub/oytRgqBQDa/10AT0l6el3bMqPP8p7BAjJgW0iY+1NC29U3d8/UWijf+HXiKP0VaLdopogbmRmZwxe/eIAyWsFHZ9l7GPTCL7PKs/JTPzHn5zw8GyIf8kx+rNwl4lGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p2KBJ+teExaKFffsKw9rZdYrX2oJpDfzXseTgULTpck=;
 b=Woe29rmb4zKKB0+s1fgiDkR/XTmyraELJ+RyaFSFPZTmuMWKBnwZxAuykScAKXJvfE7vbz4uHBX9sDpP7mul64yu2fllLndofP+w4523BoxrX7G5a7VfYROnv+ppWMnh3pxqdbcs9DzGXQ9pXOvQV35BN4/JV4O5Oh3xGDOc7A55DeliBUyCPo9dDdB9/H7vACW2cqde0fIdxw0tecdE5mQav2uL9mMntySV6ctaVWd/SulhncCPo9f5vM1DIA7AiApQVqX+qxljk1Hrt6i+98nusU3eKghX5HNehmyj+q4/QP6z8pKFnjEz5wIZULht9TU7HWgKZiHGcw1AG9LGRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by CY8PR11MB7873.namprd11.prod.outlook.com (2603:10b6:930:79::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.13; Thu, 19 Jan
 2023 21:31:42 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4700:1fa1:1b49:1d5c]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4700:1fa1:1b49:1d5c%7]) with mapi id 15.20.6002.026; Thu, 19 Jan 2023
 21:31:42 +0000
Message-ID: <2c722338-c113-14a1-040b-70326e2e2451@intel.com>
Date: Thu, 19 Jan 2023 13:31:39 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Bjorn Helgaas <helgaas@kernel.org>
References: <20230119184045.GA482553@bhelgaas>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230119184045.GA482553@bhelgaas>
X-ClientProxiedBy: BYAPR03CA0020.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::33) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|CY8PR11MB7873:EE_
X-MS-Office365-Filtering-Correlation-Id: d23aebc2-293b-473d-c893-08dafa648ea3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: u2e72QxglMaROOuVSp6iRzh/uU0rvRIC7sEEgzpL98V9sE2PQiDXpH/ZKYrCxLZXe3EVhs76WScBQ2NpRixVzXdpQlnGznFDN9H96P4LhbTM5x9+LUueiPxSTXfOHfcmymKivvG0M9J8EWwLzrHFznFJHXNyLXgfKCQPH8BxqJ1c97/YYeBnRDkoPVr/z/m9vYKFiySfPBB+LpJ3aAW8VoTNfQJwzVcL+DzAbkw928aeloaMZgh0HjAiSvbhn4/y8mmU/o5mfgXWqpQ+GcWDgM8egA17K3pQCsMNyawTm+5A2aQ65LIr0H1gd8sB7vieaNvsiPvTfhiiSUriKVIjkvoXUAkt+Gn8sjv2aMrgZuZyeYl3atT3ivJvtuc3WUxPcAIlco/BL/kkO21wIKDmELGcCKh4Weej4CkL+vcmtMmGELARpJR1gRUMbjL88AMQc1dpuVr18C7Di1K2qKMrSLVUl1TvESBawSX1RiyfO1kRMdcZ4kx9U5saEtiaVMcZjVhZYgN8JP1xDZRl4ueGorzdj66zRC6zTOzK5YDaDFnXrl7ZH34lVWH2bHgF2+oy7UUbyMfMqVfL7ByPV9aqIi43pFofnUB4GBUyEzODci8AGPn4T/kdVAcjB7k1Sk9Ob29A3zd9oTd2bYluvNnj0XW4NM0Fs6XwYA6sHtuRCDW5njMg+Q6I16WX3XlRLHaES0ZU5mcU+odfq0Ygl5ErS4kW1pXUeh7ApYvTPkFPPWU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(376002)(136003)(396003)(346002)(366004)(451199015)(82960400001)(38100700002)(66946007)(31696002)(2906002)(5660300002)(66476007)(8936002)(66556008)(8676002)(6916009)(4326008)(41300700001)(2616005)(26005)(186003)(6512007)(83380400001)(53546011)(54906003)(6666004)(86362001)(6486002)(478600001)(36756003)(316002)(6506007)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VThSNlkrb2FBcFY2WWhlTHVXdGo1VVM2NC95UEZ3d3FwNzBZVDlheElzbVVH?=
 =?utf-8?B?RS9WV3l6Vlc0d0picFRXcXhQcklCazVFYVIvTmtwbmc1OFNDV09hZFR0Z3Vz?=
 =?utf-8?B?MWVuRTN6TGpHUW5Db2xUd1Q1aExlV0dLRGRlU1pubmNFc1JnQXpFSSs0WHVm?=
 =?utf-8?B?TzRZQTJuOGsxdzFSalhKVmVEMkVlb01TR3g3cFdyYUdEM2NyaWpsSklyQ2pp?=
 =?utf-8?B?cVFsUEtlTjRBZXBzUnNHWUxlS1NLcHk3M2tkdmhUQ0J1ZDhiZ3lJb05Na3lq?=
 =?utf-8?B?d25vWi9qdElidzZRWEM0SzREMjJoaGE2L2pJaDZCZ1I1SUt4TkZHOHk2aFo0?=
 =?utf-8?B?M2JYbUNPN2dOU1UwSWFnc1h5bEROTlg5bDlDSXJLTm83bmtXZ1BqUDhaNmJD?=
 =?utf-8?B?TTNFK2g1UTNJK2pNbUpkVnlrdEIvWjhGU1JpZnZFYmEzV053NnpzbUhrM09T?=
 =?utf-8?B?TkxOV3d5cmVDOW9Yc1JwcDM3Smw3akwrWmdmZGdkRVV6dm92U1ZQdXo4bGtm?=
 =?utf-8?B?K0orQmhyaFdvMERPTWU0VTYzcjlMSklyeC8rR2lEV0szWHV4aUtIYUp3VlNH?=
 =?utf-8?B?NStLVUhabWF4OXZZWGJyUzVKbnZkS3BpSlgzZ1hFd2ttVGZVT1hIVkthK0JK?=
 =?utf-8?B?WGVPVUNjdStkVEowdUI3bFlBYlRCTzhCOEpXSUlpMU5CRW5RbXA2a2RjNVBt?=
 =?utf-8?B?Wkg4RStKcER6RnJITDZDUUczNE1xdlE1TXN0dTZmOE0rYlNHNFZCM3lMdGNt?=
 =?utf-8?B?RVhsMUJQY1NDbit3Q3pHcmdoWUtjVUNrUUNBa1ZRbnYyMS9oV3VWcjNCVThB?=
 =?utf-8?B?eFlsRTI1Y1FQSEZoajMrb0dmemNIQU5IQ04wK0NsWVZVanV2bGtTb25CR2kz?=
 =?utf-8?B?a2h5d0lUZ3VSZ01NeW9OeHFGWU5iSklUcGNaNGsvS05oRFpFL2VXVCtmcWhV?=
 =?utf-8?B?L0drTFYyRzVzTkF3WUVjcnZRazhxQmdSV25QaDNUWWpCNVM4Ym9kZFNNSmZL?=
 =?utf-8?B?ZHhFRStpS1lKMllJUmdJQXQ0OEx1czU2MUJSNTRYVkRiYjZOcTBsNHdFM1l1?=
 =?utf-8?B?Q2ZUdWZzQnViU3pyeWtmVlZYRnZBWGJpZC8yMkxONzJEdmVZSUVzVlh3RytR?=
 =?utf-8?B?WVMxb1I1RGdTNzRtLytUZzJRMXA4eUJWcGdVRFArOWZYTmNTdHRrVnhvQTVC?=
 =?utf-8?B?VnBTYkRuZngzNmNGWDhnSndhb2ZEK0FuUFF2Y2hWbStSVW5VZXczUTByVFhp?=
 =?utf-8?B?NUhDV0IrN1dxME5ubHdHQWJadXo3ZURvUm4vR2huUHRJMXVabUdxSnBNSGsx?=
 =?utf-8?B?NUppMklEOXhnVVZkVHdIcGp3cHZuRHdGY2JSMWNkY0cyOHBBWWgyaHpVVmlx?=
 =?utf-8?B?em5uc2czaDQxTFlLRHgxdTBYaCtMeVRHWW9aSE05Q3p0cXE0eUZlRFdNcWxr?=
 =?utf-8?B?Y3NIRmtwUnpaYlJYVk9yc1IvZmJDSGlRNFBHZmJrYUVvZHlTa0s2eFdlNzY1?=
 =?utf-8?B?S2tJb2xKZ0tvUVNlc2xIdWhZS2hZdjRZZUkyeUdZbk1HQ1kzTy9ucVYxWHRX?=
 =?utf-8?B?akNhWE5GMFZyaEVpSzkxNHlIK1NsZ1JmUE1LTnZjU2x1YXpaSTI2UC81bnJ3?=
 =?utf-8?B?TStpRTdoOXBrNDlKUWNKay80M1BUTDhXTEJXYVpxNDVNL1ZPTlM4UWJDWjNG?=
 =?utf-8?B?RmhTS2YyczBEbjFha01pUTQ4Z3RCbGl6d1pLNWZNVzIwcTQzblhUeWEvQmkw?=
 =?utf-8?B?bUJCOHZ0TnFaUzNUeVcvUzJ4QytaZUVSUDRxTlpWbkE2dGNIMGErNm5PdEVk?=
 =?utf-8?B?RkZFbC85TUd4Q3o2bmxqeWVBTndsaUxhUlpma3N1dUR4eXJjWGcyalpWQUkz?=
 =?utf-8?B?UTYrL0xTQXZKaWh2VmxFeUhuOEw4anpEVjNVTEFFSEVXNEQzenhIbUdnWnhS?=
 =?utf-8?B?RUJsZ3FMemVtOGtvRjVYZ2dSeWlwd3dNU29YYkNXVnhmNDRUWlY2ejhLZUVD?=
 =?utf-8?B?cVFZUDBoT1BIR0YxTm5PeTRxWkF5OE1iUzRyYWJHZS9Nc3BaSUFiamxoUWIw?=
 =?utf-8?B?elh4ZmtONmhSa1NHZExhMUdIRUxBRzVvWC82RnZ4eDdJZFhBZE42cmo4WEZn?=
 =?utf-8?B?RUYrcWNjLys1b1ZPZHN5UUlWNFJOdUxERWRiTm5ub0lrVlpYcFExcGk4MG14?=
 =?utf-8?B?ZEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d23aebc2-293b-473d-c893-08dafa648ea3
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jan 2023 21:31:42.5462 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VMo3f1k2IgXYEa9Em4i+vtqvlgg0FklEvLUeC8rTIIj+b5Aw7MQW70Nq5GEJ/Jax3N/R1l3HJceDN3R2WFmonc4dOPP1VjO4TNeGF9tb98s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7873
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674163907; x=1705699907;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WcEqhNpm3ErZMXayEr1LWbuWSSH1G8uZ+Ty9enj1JZQ=;
 b=AnFWrMcD9frLqNrfopRl3c2gOMo1z8o0Jjxjs37Lmc63JN/+tITh/5jN
 pG927eh7d9TgSwTsNMVMd/HwQEhSsZ6MacEbL5MXN6ESBfkS0cHF/YbJX
 TzCbECp6HeZ0CDVmQxAphn/VAmA/Jv+1txfyD0H8apiSwGO0fLJOWFFOg
 VnSFaDmo2wyzfR8boFLqAx2yuvRiTIMfLILUOvVtKfe7x6oTOkeuERzdh
 8UYwPa4Y46gg9LCCbkt97xClyZ5/jxCmMn6zJBiB2QZhUHp5EFnVr7bZ0
 zO3SW89b20ZE/u1sDxcPWI9t65p/Qn6F7XuUe98W5aUBd19Whgb8Dm2db
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AnFWrMcD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 2/9] e1000e: Remove redundant
 pci_enable_pcie_error_reporting()
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
Cc: Sathyanarayanan Kuppuswamy <sathyanarayanan.kuppuswamy@linux.intel.com>,
 linux-pci@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 1/19/2023 10:40 AM, Bjorn Helgaas wrote:
> [+cc Sathy]
> 
> On Thu, Jan 19, 2023 at 10:28:16AM -0800, Tony Nguyen wrote:
>> On 1/18/2023 3:46 PM, Bjorn Helgaas wrote:
>>> From: Bjorn Helgaas <bhelgaas@google.com>
>>>
>>> pci_enable_pcie_error_reporting() enables the device to send ERR_*
>>> Messages.  Since f26e58bf6f54 ("PCI/AER: Enable error reporting when AER is
>>> native"), the PCI core does this for all devices during enumeration.
>>>
>>> Remove the redundant pci_enable_pcie_error_reporting() call from the
>>> driver.  Also remove the corresponding pci_disable_pcie_error_reporting()
>>> from the driver .remove() path.
>>>
>>> Note that this doesn't control interrupt generation by the Root Port; that
>>> is controlled by the AER Root Error Command register, which is managed by
>>> the AER service driver.
>>>
>>> Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
>>> Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
>>> Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
>>> Cc: intel-wired-lan@lists.osuosl.org
>>> Cc: netdev@vger.kernel.org
>>> ---
>>>    drivers/net/ethernet/intel/e1000e/netdev.c | 7 -------
>>>    1 file changed, 7 deletions(-)
>>
>> Reviewed-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> 
> Thanks a million for taking a look at these, Tony!
> 
> These driver patches are all independent and have no dependency on the
> 1/9 PCI/AER patch.  What's your opinion on merging these?  Should they
> go via netdev?  Should they be squashed into a single patch that does
> all the Intel drivers at once?
> 
> I'm happy to squash them and/or merge them via the PCI tree, whatever
> is easiest.

Since there's no dependency, IMO, it'd make sense to go through 
Intel-wired-lan/netdev. Keeping them per driver is fine.

Thanks,
Tony
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
