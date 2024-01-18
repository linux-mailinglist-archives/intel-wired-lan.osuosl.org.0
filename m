Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A167832169
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jan 2024 23:10:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CC32A6F6D2;
	Thu, 18 Jan 2024 22:10:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CC32A6F6D2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705615802;
	bh=pNKCsP00OwseNybl4l5P6otfIDRAOb/BaFb/qnVQJ40=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jmFwPj4ZYkaBsFhxNhQO1IqLDf9HxZ+hEH9gNzWSm9wyu0Saaadk6JwyObao69AWR
	 s6BdqaZQjO0kI3zpExhCudqn6/+KQpau7ZOKlcoWGIROhTcHFTaGAlQbQK/VRDRzgZ
	 stKlQePzeMh+wm/a4m43Pr7hGMKTJAflKe2uCZKTEuGD8Q3jc2bjs7tiYPvoYSJ0fP
	 UykoRlqUgNkkK6dDlnz1Wl6dwZlSweYfLiluhLekWEWytD70ltgWq52x+fI8dJQjB+
	 n8JhWH3/2jwskob8ux0ADvYLMAs1LyGvec9s1hhk7cxibLa8Zr5/sucRfzgh2TkBkh
	 djvGJ+4u5G2Ww==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oFHnnj1rTHMM; Thu, 18 Jan 2024 22:10:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A13756F5DA;
	Thu, 18 Jan 2024 22:10:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A13756F5DA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1165B1BF20F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jan 2024 22:09:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E5D21424C8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jan 2024 22:09:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E5D21424C8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id swDjzheAUH1t for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Jan 2024 22:09:54 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8EB8A4247F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jan 2024 22:09:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8EB8A4247F
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="399467702"
X-IronPort-AV: E=Sophos;i="6.05,203,1701158400"; d="scan'208";a="399467702"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2024 14:09:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="1116080330"
X-IronPort-AV: E=Sophos;i="6.05,203,1701158400"; d="scan'208";a="1116080330"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Jan 2024 14:09:53 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 18 Jan 2024 14:09:53 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 18 Jan 2024 14:09:53 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 18 Jan 2024 14:09:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GDdUGe8NpuEOKbxwHwLRddAoX3iDm+gV5QCYsRGQa9g6mFrvR6rJtBsi9vqy9wvG/ZZo8JsBcUCodDwsLH2YQg2uEu9uBHRFQBve8tWXJB85sY/PMUNRjFXswqiMoewD3Rsq/504NZ7ViK1i69vaYsaT5bqPyFAqy6mfnfCDDLD65uX2kns8GmRzvL8PND+0/PUbuVvYRKEhx+pnrKJf0sTR9rPTalCIkEcxakF99NGuRSpPl71l7rusQfq4qvlYBBevK0xqC2ndGASIHKtDQAscJHLBBaq05mYHUNT3h8MtilK5xJR4FhXzxJUnCIuIulcIqlYu4utgPTRTnql/FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pNKCsP00OwseNybl4l5P6otfIDRAOb/BaFb/qnVQJ40=;
 b=juBdFmCKUJG4Cu0ysFXtGzqnNBAheeyPF67alY2GaCt2kULHde0D3rCpRZAACP6gemf71Cbdg6ISyKSAfmI0XaPY5TOzMtOy8uK4ewtlVLgGqfxYOAnUy0xCqgE9SKmq+b2do6zjIF/v+L4u7AtfT/kL44vz8sAqCgIbqtXoU0J84KJ08ABRKYF8l5OinaFf7G7BZwrq2sVxp2/UStnXy5kbLugm1lrHXA8VdOfG7EuC/f2zgHTloR7yOteFMvk99QPy9wW56TNKBTo/2Tr/+zk3WgEyMNeC+GLIMRoExCnxhE/xGldBZEfcLUTR/liMi9gzjsrMsTxU9uUsg/nUjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH7PR11MB8479.namprd11.prod.outlook.com (2603:10b6:510:30c::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.23; Thu, 18 Jan
 2024 22:09:51 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::4069:eb50:16b6:a80d]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::4069:eb50:16b6:a80d%4]) with mapi id 15.20.7202.024; Thu, 18 Jan 2024
 22:09:51 +0000
Message-ID: <9a613177-de20-49ac-88ce-421c37fe0c15@intel.com>
Date: Thu, 18 Jan 2024 14:09:48 -0800
User-Agent: Mozilla Thunderbird
To: Yahui Cao <yahui.cao@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20231121025111.257597-1-yahui.cao@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20231121025111.257597-1-yahui.cao@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0301.namprd03.prod.outlook.com
 (2603:10b6:303:dd::6) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|PH7PR11MB8479:EE_
X-MS-Office365-Filtering-Correlation-Id: 1dad2024-7b94-417a-4869-08dc1872310e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IkJ1OPKWZrFif63esgyE7kwkFWBKjxKPDFAWQnH0I9X6RaIlfsMDlHRE72nfdSKaJMM2/JefftKFfG/hFQvS/q8ahxVN6Th5KQ4fw1Lmap1Sf9/mc9mjRAX4QkT1BtAPNzBLMY0mbwdVSPZoBkNTNHcXgDefO0IkmSYGcgkp5jcolt8NdZ0epCkm8UxwWMIuMnr5DSOzuAp3hv381BzDKGkCKVl2l38BB4U8rdVX+uAk6Xr8pessZo5YQueQSJEEBe+mIDQFIQvmOKX3JZv1Jx5iGZHZzElaGUOLJHFe+49IBrwhLV08f1vJvx9bLHWF39AdKw1CSu9oZODk9A9GYONRjt186ch7YAiTZ3kJXC2gGc3DVMx2gw7VEhkDJC65OI/Ges2cif+lgM15z72jCeSptTvF640r8Fsd6VytcyYW9NK+PufS5k6uKNXYfRM1Gc5qqO7YLOuXJUU63TO3nBMrA6RKWW9Wzi8ZMX1VTD4oHo/Rc5l/n3j8H3Y0dasGmY+524HMlW0nFvM1LZwrs1fO2S/v6mPVUwURLScAs1jF2Z05cPtD++LTdvC3fRnT0ESE/kx4IcWhd5TioO90bYFmdlOYnfkH+RFJ/OnX0VXgdbateOXNmPOVNhiu3lx8sBoUvWeRIMGPEGycAA/xYZ3Zu8MbJRrSuoj+G2sv1GbvVnfGgqYArDhbZSDDFds7
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(376002)(396003)(39860400002)(366004)(346002)(230922051799003)(64100799003)(1800799012)(451199024)(186009)(31686004)(966005)(478600001)(8936002)(4326008)(5660300002)(7416002)(316002)(66556008)(6512007)(6506007)(66476007)(53546011)(6486002)(66946007)(26005)(2616005)(6666004)(2906002)(38100700002)(82960400001)(36756003)(86362001)(41300700001)(31696002)(8676002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c25wWGNOVGR4VmRDSEptQm4ySitFRUFtZ25Wd3V0QVhqY2k0dkszb0RSejl3?=
 =?utf-8?B?VjhmbEt6WnZ2d3hmMTQ0cU4zUCtrUjBGc0xITVdqRnhYcE5DOEpWTDcwZ3ll?=
 =?utf-8?B?Yk1EbVFJbFQyZTJIQmk0OUcvTE91Wm5TaDJWNFpuVUZLc3VOU1VocGtmZTNW?=
 =?utf-8?B?NUQ3SFFrZFkvUUlKaW1jN055ejU1bVJ4eDlMYkI3N0FYU0JpQjRGdDNLYWlT?=
 =?utf-8?B?YlpSVjdvWDdCS3lhQzdwZFVFUkI3SGF0TXR0V2FpRXZmQS81VmVrKzM3dk5S?=
 =?utf-8?B?NWJZL2NHSnZ0bGlTVlIwQXFwd2ZoZmY4RTJsbnNFS0s5em1lZ2xGbUV0Q3hx?=
 =?utf-8?B?RE1ubXV2bFFGVlU2MURBa0xYa1picmtUZHRwYit0TCtzMmpVUWtIU1paaHpN?=
 =?utf-8?B?OW5maEZsSXM4UXYrZHFpMnRGejJtRDNjd09VTWF4aklMMnl0Yk1LdGpiOVI5?=
 =?utf-8?B?Q2RGQUxMN1pwUTF3Ymc4bEZoU21iTW41OGFERVJ2WFR1QXdUSURyeTNNdURJ?=
 =?utf-8?B?akxOL0hqTnp5SUo0emlveFkxNTRxTlNEcW1kbFFTamNQQXVvM1A2K3hTcmRD?=
 =?utf-8?B?bndMeHBSdVZrdTlCcVNGUzNWVmd2eW1LYSt1VWRMMUk3MHRhTldtQldEVkRV?=
 =?utf-8?B?cE9PMHpGSDNQbVBkUUlJeTBReldPSi9oWnhPVlNORktyUjV1ZVB3SG5WOUo4?=
 =?utf-8?B?N0ppWDJpWlVPU2xVV01WbUliamhYc1B6UHFOOXdaY0ZVcnJad1l0dFRuOHNt?=
 =?utf-8?B?QmJHOG9UdVZhMjZGbmUvbXQ0ZW5RS2FVa0xWYk54MVo3VDh5YVlXS05ZeXg0?=
 =?utf-8?B?RTUyT2FpNituejJoVTJFMHc2VFVwR05aOUJhWmQ4SXBxdkovWUMrd3RyTUZt?=
 =?utf-8?B?TWVpaHNYdkJoRGQxbmtXY0RhRzRwOUFFU1RiN0tldWEra3duWnJhRUtvNU5q?=
 =?utf-8?B?ZUtHR0RJL2FNQVgxRUpOQ0cvb2krZEgzdXp1OEM1VXRqWTRVUW9IN1lCS1c1?=
 =?utf-8?B?TzRMMjdwSmZ2bTJMY0tFK20vbUlkdUxsWFlnaHJVdmh0UmJlQkMzOFBLNjlz?=
 =?utf-8?B?OUFteFN0MDF0R3kzSnQ4NmtWbmNLVDhjWjNrcFB5UEFpY0hPRmJBdTI2NXFK?=
 =?utf-8?B?ZnU2bnF6TE9RSi9mbHh2QmZ4QTN5eXRCRVVYZHBQU2t0ai9rVVhZa0wxQkhH?=
 =?utf-8?B?aUdPTTF2MjY5ckVNcmhyQzB0dEsrMWhwc0x1S2dka0orbWZTMDhzUUkrUW4r?=
 =?utf-8?B?RmdBS29CTDdoVkpWRDdTMXQxcDhwSExhYXBHRlJrNFhzQW0yWFJaZTJuSGU3?=
 =?utf-8?B?eHFNV0o0NU9OUEh3eGJIRGRuYm5LTWFzYzNOWktscStWbDB1a0ZTWGozMWJI?=
 =?utf-8?B?MTJaL0pvenczQmFxc3dEZFJuTGlENFF1aW5kSlJBNmpKVDA1SEpJWWJZb29I?=
 =?utf-8?B?TkJIVUdIM2NQcFBWWlZnUTk4NGtZeE0yMG1xRnFHSTBWM0NndUNVM295V2Jy?=
 =?utf-8?B?NW1CRTBvdU5nSGFETXVGaDVTVmRqeVBoN0JFaUpRMjZqcVpkNUdxQ2Z1eS9Q?=
 =?utf-8?B?ZHN5ZlBsdCttSlk5UEZhVFdTWlBYcUhOQldyUGxrTWVKakYzOE9BREJxU0JY?=
 =?utf-8?B?L0g2L21oWjdaTmlETmIvbkJVeUxIVnBLT2dNNjMrNHdLek5nSHVPSGlRWi95?=
 =?utf-8?B?ejhvTTZNQkxCTytyYmZZc0ZpZU0zWXJkMHNueEFXVEY0SDk3MnpZUWNKQ0hT?=
 =?utf-8?B?TUdvbTdseDBZd1pkK0hzKzZxOW1FTzJabzErQ2lrenVXSldaeWhyQzV2MW53?=
 =?utf-8?B?Z2VhWDAwNG85S0Q2ZFhNNzlEbkNLMG9YVFlvWEFrY2lpSlhsbUNlTTRUQlZr?=
 =?utf-8?B?T2NCK1REM2JxTStZYlpwVWJOS2R3dE5RS0ZmbWxhTFJiNlRVU2dMWDc1NWZt?=
 =?utf-8?B?U29aRkRXUWlXOVZHTGpaTmxtU2M1c2FBV3ZQeTB5a09BdTNSMTFTUTlteWN1?=
 =?utf-8?B?SlJQNWZiMHppbkFMUzM1bzVnSE9xYUJHU2xua2R2UkJzWWwyS3R2R3lVb09E?=
 =?utf-8?B?c1R4ZWZ4RjBPZnhndWVvQUhwYTJGRnF3cU5vVXVORG5qdHQ2TjFCcnkycFJN?=
 =?utf-8?B?N2p1MDg0Q2sxeGFsdjhJaEgvSHZweVFXNEFFU0VOZ1RCYTdQZlFQUVNwbUpE?=
 =?utf-8?B?UkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1dad2024-7b94-417a-4869-08dc1872310e
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jan 2024 22:09:51.0601 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mRNufmB4OizOHzKlsv3boeHws408mSMLHXlVZQdrIaZug/HOt/ExjegV4p5uALyFxskif808fLjnGC7bm8pegiR9ZWBsVhbDQpygyMwytxs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8479
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705615794; x=1737151794;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4CpqMylrV9fb8OTMBdGZv4ZeaHiN9lA2LU2beliCpuE=;
 b=LlacaRM4Ju2IpHkYujiQSqUFaFuYZqEVDCscWQDKD+OXe+W1G6LJvk3H
 hBh5Sj3Nb1QFXwoQvSusuaZ26nfuutv0YMMJE0D8wjg/pbe3PeY06gZRK
 spIOoa4rNAKdYJaPlzuulo1g6Mj3m0LIFq7DxXbtdk+pEer/M+USEokB0
 frBO2NvF0m0hOn40yKzA76YvbCRkgxLlBnAWBAnKpE2W6NSBXflbgk0aM
 z3bN3HfDwiTD+wVFN9Xht7YJ2g2BrTf/V+LaR+WbXupCZ+sXfPxQJC23c
 CrYxux1y0P+BL9OeyMqrDZKS0L8bnCg60fAp9NJt8Hr7Y0QI15ZqEm0fI
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LlacaRM4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 00/12] Add E800 live
 migration driver
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
Cc: kevin.tian@intel.com, yishaih@nvidia.com, brett.creeley@amd.com,
 kvm@vger.kernel.org, sridhar.samudrala@intel.com, edumazet@google.com,
 shameerali.kolothum.thodi@huawei.com, alex.williamson@redhat.com,
 madhu.chittim@intel.com, jgg@nvidia.com, netdev@vger.kernel.org,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 11/20/2023 6:50 PM, Yahui Cao wrote:
> This series adds vfio live migration support for Intel E810 VF devices
> based on the v2 migration protocol definition series discussed here[0].
> 
> Steps to test:
> 1. Bind one or more E810 VF devices to the module ice-vfio-pci.ko
> 2. Assign the VFs to the virtual machine and enable device live migration
> 3. Run a workload using IAVF inside the VM, for example, iperf.
> 4. Migrate the VM from the source node to a destination node.
> 
> The series is also available for review here[1].
> 
> Thanks,
> Yahui
> [0] https://lore.kernel.org/kvm/20220224142024.147653-1-yishaih@nvidia.com/
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/linux.git/log/?h=ice_live_migration
> 
> Change log:
> 

Hi,

As a heads up to the reviewers of the previous versions, starting with
v5 and going forward, I'm taking over this series from Yahui and Lingyu
Liu. I'm currently catching up on the code and going over the v4 review
comments before I begin working on v5.

It is probable v5 may be delayed as I take some time to get familiar
with the code and feature.

Thanks,
Jake
