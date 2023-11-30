Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EEF5C7FF6A8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Nov 2023 17:46:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7AF9484604;
	Thu, 30 Nov 2023 16:46:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7AF9484604
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701362776;
	bh=qVMoTtwyF7H2aHkBeE/CAQO2cb/lIj3jmoCZ8E4Tmrc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mTMuX28QfkdyT6vN5cqx1Ky1kUsE0xsJKO/ENPdPs1BGNdfti4c69Ft9ubkzvyK6F
	 qmGXk+1XTWTX0gz05XO++VCmPKsQP0Hq38tAsgg0y+ttz55tf8irE85OBNiSqHITP+
	 vVDEM5Fncc7eVweSM1X9wpW3h4r5FJvFHAJ4F6fa57SSenhoK8xJPrqjd0Ol0nF5TT
	 bsFaWzMxcMBT//UDBdAOriIfarNHK9XlUjxkEobjUkKg6D8AXqBhDHejSAyg1ZhQmh
	 dkGxGahvNbJ2+PnIrTMeB3nas1oLur214gXqV2UaG7Ql5BuS0poUNY/VI183/zE8hZ
	 3HJoPdzwzcQ4w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Bx5ThPv5n9zJ; Thu, 30 Nov 2023 16:46:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3FF82845D9;
	Thu, 30 Nov 2023 16:46:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3FF82845D9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 881B71BF3F4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Nov 2023 16:46:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6C08941E6B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Nov 2023 16:46:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6C08941E6B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KQHARIf5_71H for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Nov 2023 16:46:08 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 423B241E67
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Nov 2023 16:46:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 423B241E67
X-IronPort-AV: E=McAfee;i="6600,9927,10910"; a="373538842"
X-IronPort-AV: E=Sophos;i="6.04,239,1695711600"; d="scan'208";a="373538842"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2023 08:46:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,239,1695711600"; d="scan'208";a="17463787"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Nov 2023 08:46:07 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 30 Nov 2023 08:46:05 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 30 Nov 2023 08:46:04 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 30 Nov 2023 08:46:04 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 30 Nov 2023 08:46:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Rs2Rmg4KyfRaEq548RYo5OIA0mct5wdvYPDcA9mMrZCL77q5WI63ol2WcK/45X7Y4JyGLikJEut1sJ/4Psdr2I3JfMKnCf/23bstCcOFatBcyQMqp7TRw/VQ14yJW9O4U7/Zeq4a5uPutHkzO+ZDEi69enDWasvfCs0Tkwl5uV4v2d+Tq0t0LMt1WMzxoieLB46inUFn7WAhGmLbprEj04ahO20x/HXRtxS1ya5cWqfSPpW8Xk3skZcD4u/6DDu47075dxyL5b0rv0GxRFZ6GxXMt9lcxKlzVhu9vkbKSRc8lqHH0CVvBbLoDFcdEwi4PtunhwFUI+MgLu8DEriLeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OLs8DxON27iZw44aB9vSAjpUkZWLT4kjQI84X3gMwG8=;
 b=NkZnmD901O6wIyp9y1LCNGvGxGOzE4dfzGSu7Exe3bKvEBDEg1IDkQZXNz9jqEIwBuv0QwYgrMW3ygKn/b/r9cpNI9AgPQ3JE8dXAeTdySw6fgW4DFmO4uLQHa/7Zt2ncxVYVFXcYPSFYrpyNrbk+5TMDCHcUXRK3HtOEThrj174HYNChKQi1kR5kWDDgpfaSFfypmikd4zhG5TUIY47hJlwTeq5hpCgB5ipRthlt6GzuVwxOyIglYRA+u3O4Iz9nh7I2aTNh0m3eZz4SkIveJ1/ti0q9xDQ3rc51YbRb8u1Fj7xseqcocwf8KmhoS8A2swuiv+0szYNv51M5qvjvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by SJ0PR11MB5790.namprd11.prod.outlook.com (2603:10b6:a03:422::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.23; Thu, 30 Nov
 2023 16:46:02 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::36be:aaee:c5fe:2b80]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::36be:aaee:c5fe:2b80%7]) with mapi id 15.20.7046.024; Thu, 30 Nov 2023
 16:46:02 +0000
Message-ID: <289bf666-b985-4dc4-bf0a-16b1ae072757@intel.com>
Date: Thu, 30 Nov 2023 17:45:10 +0100
User-Agent: Mozilla Thunderbird
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: Jakub Kicinski <kuba@kernel.org>
References: <20231124154732.1623518-1-aleksander.lobakin@intel.com>
 <20231124154732.1623518-14-aleksander.lobakin@intel.com>
 <e43fc483-3d9c-4ca0-a976-f89226266112@intel.com>
 <20231129062914.0f895d1c@kernel.org>
 <f01e7e91-08f1-4548-8e73-aa931d5b4834@intel.com>
Content-Language: en-US
In-Reply-To: <f01e7e91-08f1-4548-8e73-aa931d5b4834@intel.com>
X-ClientProxiedBy: DUZP191CA0059.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:4fa::13) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|SJ0PR11MB5790:EE_
X-MS-Office365-Filtering-Correlation-Id: 168ff1e3-c086-4946-a8aa-08dbf1c3d683
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: F44cDLw6pWqlGW2y1PKCqfXNupJocdruwDSZLwQnd29pJ0NmH/DPblX3WW+uWYCsRq84PiQ3idn+eYk+RJQG+YikEq3tXMM2g6fvWHELdeD7k1sj6aagtupgUN+IriqdWJxJk3kDrZUILsAbnsQSh4DNUkI0B5Myh0aUO+cYicBeL6F7R7AbhgNablxd+9E2OXajpbXMlBE9uRGJgp+E/Az1XIJhczUlgcwVb2B477CoJ87vCbDs4tEKKbUNqkgjcVJqIBJ5QKG/oISBSu+PhyuJG39OsmU2MFZK8UN2i0b05uvh4hHBUL9xB0x8twztwC6FRBh12TWrcqo0HUcubfTajjXZTfyPLD1psjv8qrStid2AgpNrT7hJOZrl/IJyqVOj9/5D7Kq9x3ww6xLk93dO/CRrw9+7YlNo4abcSyiRJd+TJsuoN2PrJwXBSUxiG6+brYiR5AWRo/abQBYVCd4m/naHFbVXaQdKhnTFAKYGAgi7egB4tGWH2SEOTZyz/x76ODTFPd2lCHxGeIhYhK4/tCSzEe5+YB6QZjmviWI+hPKKuNDfbTp4wqj7PsWcAcvWhLW0IwfETeBeALjwbcpcJya608iqEIF6Js+egDrih8I/mjOO5JF5n46FxHogZfOtWW1hfRIRepZI5+NjmQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(396003)(376002)(366004)(346002)(39860400002)(230922051799003)(451199024)(1800799012)(186009)(64100799003)(2616005)(26005)(6512007)(41300700001)(83380400001)(66946007)(66476007)(66556008)(6916009)(31686004)(36756003)(5660300002)(82960400001)(7416002)(54906003)(316002)(8936002)(31696002)(4326008)(86362001)(8676002)(6666004)(6506007)(2906002)(478600001)(6486002)(38100700002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y29VTEZ0aTB5YXhFMTFSM3VSbkVjVFdSaFkzMGVEWDRlbUE4OXVLMDFwTW94?=
 =?utf-8?B?T09OQ041djFrYTdhNStnbkx0RC9PMFdtSzZnZGxTZmNyQ2hUcWFWVC9Kajlu?=
 =?utf-8?B?dTBlY09vbTB6QjFtLzNxd0p0clpJa2pKcHNEMEtYb2hRRDhUTVVsKzZOb3E4?=
 =?utf-8?B?ajE4N0x1cE1GNERUanhDN3BZOGxLMGlCTnJpLzFGWEt5VUxxbENZVHY2SWlu?=
 =?utf-8?B?a1VEakVGUy9PeFhMaWRnYTV5aEZBd1hoYmdocG5YVVBHcnRGRW85RmZVMTUr?=
 =?utf-8?B?ZThtU2ZnOHZsNTRua2FiUmhMT3lRTWF4OW9EQWVDVWxyMHFxMFYvcEtmaUpi?=
 =?utf-8?B?djBaUWdINjVXT1hjS3ozdDAyaG9CUUhxeHRNQ2l6MVEwTnFCbXBhNGZQelRE?=
 =?utf-8?B?REVMMmxGamFHVnBjS0RCWEtMQU9wTCtzd2JpSkdCWVR2cWo1UEJrUE9CdUdW?=
 =?utf-8?B?MnFQY29nRzRSeldCc0ZyUmc3Y1lWZlZVYUJtei9teVBWYWxqSnhUV1Z6OWhT?=
 =?utf-8?B?YzZiZGoxeGVkRXlBd1FvVmZrSDJ6enM1a2pGT25EcExlMXUxT1RrTk1UajYv?=
 =?utf-8?B?dEhIV3FNUEE3VVY1dlBCQnoxZytEZGlWQXBZc1BPUkFVa3htdWRLcTJyM0Nx?=
 =?utf-8?B?dkhDOGs0SlAvaEFXemRkNEdPL29qZXljSE9Rck9uSUtWV1V0QjgyYVpBYW1t?=
 =?utf-8?B?U1lCYmpyRTgvbld2OWhWeFYveUE3c0prZ3o0OXl5cm9RUGFReXB0QzR1cWhv?=
 =?utf-8?B?ZmJqREZmN1NveWJqNnN4eGxZOWZ5dlpVSE1FaGJCdHd1ekJlSi9XcHBxYWxn?=
 =?utf-8?B?Y1VFaGZleFRCMENzRXZmRnQzR2NrQldudDdvN2FPVkc0NFNRU2J1RHY3S2RZ?=
 =?utf-8?B?UXMzbzZZU1hCRk5KREQvT0NKcWV5V2JaMzlFOEl6ZW90VVVEbXE5eE5CWnJi?=
 =?utf-8?B?ZFJGS29EUWRVdytKaFpCTmVqaWY4V1Q5Zll1K3paV0k3YWUxZm11MWZhMUM3?=
 =?utf-8?B?WEdFQUNaaEEzYkJSK1IrQ2owWndROG5obmJrRHhOUkJpT1p1ZFFoSVRHQ0ps?=
 =?utf-8?B?VkN0OVJxVGJmZ29PSmsyelNuQUFLK1pkaFg0d28xTnNsTExNdndiUEtsREpT?=
 =?utf-8?B?am5JOWJJbkk1VlpsUFZERkJ5YTJBME9IcmE0aHgvMndrRzlqUTZER2dBSXpC?=
 =?utf-8?B?ZHZyN0MzaUdQTjV2bHhFcTVwR29jelVuUzgxL3dGZE51QWVmUkNQZWRKUWNW?=
 =?utf-8?B?UnlzdE9rZG5SNVdOakx3UTBMVGpIek1aK045RXZJRzVrSERPeXNjSXpFTWZP?=
 =?utf-8?B?SktNYkh1K1I5Ynp2UWUyQnV2ZWVwcDFlWTFqVFVwbUFjL3FPZk94ZHZsVGlC?=
 =?utf-8?B?a1hRNnhQaXlqVzFqajN2VnRjczZMWml3ZmtuL0tVZVNmZVcyaExyQ0I4Q2l1?=
 =?utf-8?B?WnZlek80YzQ5V1Bpc092NVdDUEZ2eUhHamxqcStVRzF0VHdyVXVOTnhPK1JC?=
 =?utf-8?B?WFlWUlVPaG9FaDRGZVhxSU83SkF1ZnNMUTFwbTZaaEl1dGMxZFE3RXVSSjAz?=
 =?utf-8?B?WWJWU0tEOW5saHczQy9uWVdsM2NSclJGL3VVOVl2R3dHV21KVzdHbU5VRkRk?=
 =?utf-8?B?M2xFa2M0N00zZFMxUk9RZXBzdTFON0JZTGNzQU9rZE9FOEE3Ump4d1hSQ2FQ?=
 =?utf-8?B?N202RUJmaDRwZWtqcGcxYnhLNFpoSWZHTzZ2QXNJeGhMZ20wbG9NcE1Kbkkx?=
 =?utf-8?B?clY5VjVoNEFKb2l4RnVubGhNREhsUk5ZTEQ2Q29HcGNwd2RMWG95M1c2UVdu?=
 =?utf-8?B?OVNYK0V6dnIxeFZsWGwrWFdBNmNXeUlIMm82cHFxT1Avc3VIazNHYWdPVDRP?=
 =?utf-8?B?UEw1MmpHakVLd0hZaHd1dm5wZGVkV3VLaWMyTVRaOHBobjQ1QUJ2YTl1WTZS?=
 =?utf-8?B?TUlTMEs0aHNpQ1QraG9NNjdib0RnNGdYbXJyTG9sb20rMGY3T25QRFRTWDhU?=
 =?utf-8?B?RWVpbVZDNG0xV2xtMUNIUnE4LzR1U0NyeTEwUlBaZDNpNTRvUEcyNzluTG8v?=
 =?utf-8?B?eVZ6aXJ0MHluZW5SejFpYU14TXdJakFQY2tuZXFXZVBJY2M5cG9PL0pkL1VC?=
 =?utf-8?B?MmRzMmE5NE1zS0Vmc3ZaM0ZFUDB6S0Y1bHp6SEYzRTV5ajV4Y0V5YXdYMlFt?=
 =?utf-8?B?ZHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 168ff1e3-c086-4946-a8aa-08dbf1c3d683
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Nov 2023 16:46:02.5775 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ys1TSeGNfgzk0ymw72feSavBaj9n4zSV+OTi/4HNhM+hFPgzsBOqeSNXoIowRULoH/XvH2Xft1YbN7jdaYUYkPg1LkZlh5hh2CGmYIBrXGo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5790
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701362768; x=1732898768;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ILv7ebFaOudQN/S4+Evz4tYInXQYrGcqq9pOWdjff1U=;
 b=XZ1jyXalXNWSllBf1dQHXSscJ4Qb97AeayEGG1Tm0V6oHUcT/vQ0Yzla
 bJBSFCNZ+YXHoI4ZvUjVrsNDSJem5eUb/DHHGjce3dqrBXY1OLLaO89uk
 rPO9/p6PRttV6D1zXCaoRymxp380nCcR0RTJeYw3JJPsZs1FZcAaFQyWJ
 qMIs6ndQDiEA+l2EDRbfXcfN7ro5wgjjBr9MCa13NINFYHRf/D8NwF/dS
 tSp03RPYkAP2eIOGAsLyxsuJIBAfR9hijxInGH/+X8k1+9JULVtkbfpsW
 GrgaKvldYsx+HpxmIHMasXHHllttgHaXbhnM4dkhMWtw8S2pVIN5jkZBE
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XZ1jyXal
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 13/14] libie: add
 per-queue Page Pool stats
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Alexander Duyck <alexanderduyck@fb.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Yunsheng Lin <linyunsheng@huawei.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 intel-wired-lan@lists.osuosl.org, David
 Christensen <drc@linux.vnet.ibm.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alexander Lobakin <aleksander.lobakin@intel.com>
Date: Thu, 30 Nov 2023 17:01:23 +0100

> From: Jakub Kicinski <kuba@kernel.org>
> Date: Wed, 29 Nov 2023 06:29:14 -0800
> 
>> On Wed, 29 Nov 2023 14:40:33 +0100 Alexander Lobakin wrote:
>>>> Expand the libie generic per-queue stats with the generic Page Pool
>>>> stats provided by the API itself, when CONFIG_PAGE_POOL_STATS is
>>>> enabled. When it's not, there'll be no such fields in the stats
>>>> structure, so no space wasted.  
>>>
>>> Do I get it correctly that after Page Pool Netlink introspection was
>>> merged, this commit makes no sense and we shouln't add PP stats to the
>>> drivers private ones?
>>
>> Yes, 100%.
> 
> Meh, this way the stats won't survive ifdown/ifup cycles as usually
> page_pools get destroyed on ifdown :z
> In that patch, I backup the PP stats to a device-lifetime container when
> the pool gets destroyed, maybe we could do something similar?

I still can pull the PP stats to the driver before destroying it, but
there's no way to tell the PP I have some archived stats for it. Maybe
we could have page_pool_params_slow::get_stats() or smth like this?

> 
>>
>> FWIW I am aware that better tooling would be good so non-developers
>> could access to the PP Netlink :(  I'm thinking we should clean up 
>> YNL lib packaging a little and try to convince iproute2 maintainers 
>> to accept simple CLI built on top of it.

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
