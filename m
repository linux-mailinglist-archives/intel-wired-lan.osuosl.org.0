Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CC38845C1B
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Feb 2024 16:50:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 220D860B3F;
	Thu,  1 Feb 2024 15:50:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 220D860B3F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706802635;
	bh=8oZmtv5yI9nUsWY6VHJioeSH37Ziw3LyivfxC7fVOMY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=97XzpYB9vaHNbmX/wk81rw+YijoJmfai58ib8YacNb6z6jnjaG7+FWRDqqfeM8we5
	 R5zjR5iEMZIpEFXJ+05ntWrmpIeC0EktwYPnuFiugXzK51LZfSIdiVoazkf8LZ9hHo
	 wSYoA63poTeYSO8WgPiq4Wojjw+CE17okCfMCFz2v71IApGhmfScRMsI+GfBPJHsJ9
	 ayM/KEVPqyw2sj47pp2h6E9rQf0AXtcTSneyaK3rZfKxdpPgKZizfXNzq0pjyWLNUw
	 Aul2lFSu6JNAgTt+J+E2QVoG7G+uha4gEfac6ZSkZr1VBgRq/cxML6Zt7hpCqU/gL0
	 TuzRV2Cr7kNlg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OXF2IXJ6qxTl; Thu,  1 Feb 2024 15:50:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 288A860AFF;
	Thu,  1 Feb 2024 15:50:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 288A860AFF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6878B1BF97E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 15:50:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4B47783FB0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 15:50:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4B47783FB0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5oknnajy8YRs for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Feb 2024 15:50:28 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2A1E083E51
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 15:50:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2A1E083E51
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="11295872"
X-IronPort-AV: E=Sophos;i="6.05,234,1701158400"; d="scan'208";a="11295872"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2024 07:50:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,234,1701158400"; 
   d="scan'208";a="4538494"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Feb 2024 07:50:27 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 1 Feb 2024 07:50:25 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 1 Feb 2024 07:50:24 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 1 Feb 2024 07:50:24 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 1 Feb 2024 07:50:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S3CMRqP2UdgjPTfIbqvMl1KAxLObXGH9NtB9l9DuzSCFFZZSYvtMfzCUjrvMGJraLoA4dlhlpLykBlHwpA8Yt6YZ8rngOdFp/NKhwk0FOhV/zFRfdyuLMHc7CIsTm7btGNlj3X8IiLPj9SO72R9y0J/p2utpA8aCOmzggsWjUBNrwcLOjOmuGtCPXzAOFarfgicVVAEjz2HNCQd+QD8/WEzfXQoW7JSu7slIETdFd/4vYuIOkWPIVOF5ylyjKe2F8CHLjSHRArMjWqGy16IjF0WswblmwssywmqcnFqxTkydEQgUXnG0l4Y9COmN4F0A4tBmSyDCG41a7anXtfZzzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8oZmtv5yI9nUsWY6VHJioeSH37Ziw3LyivfxC7fVOMY=;
 b=Dp7MSjFxAWelPmK9AqJ9cn8ai36fmMQmdCToMXQrJ16nPYL/GlMoUqW2wpND9dJlViIJIo8+Xiuuw3qd1ucznmlPsLHWK4soHXe5rdJ2+BndfwdJhpEjJdmwB5gO9cd3p60YMa/Gvagr9uT1JvmQLhG2zKC3vpCwtOVp6V0dISDIP2tcVCs5gUuv8z7r0CXgRaVr/gRvYIt0ihRrLst9Vf2s3ZjOwpLrHh3X23ZelKb3aZhnpWfpU25KTxrcWjkD3lQnRtBtqCzgOIM0oqQBB8hmkMqpKz0NsXxJ8K+pYL2quDVGDfQqacj6jiCoYO3H4rEhUJ0u4FiGq2Mr0RIGJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by PH7PR11MB6795.namprd11.prod.outlook.com (2603:10b6:510:1b9::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.35; Thu, 1 Feb
 2024 15:50:22 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::8760:b5ec:92af:7769]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::8760:b5ec:92af:7769%6]) with mapi id 15.20.7249.017; Thu, 1 Feb 2024
 15:50:22 +0000
Message-ID: <901aef4c-27fa-475f-9d56-7ee292cca763@intel.com>
Date: Thu, 1 Feb 2024 16:49:23 +0100
User-Agent: Mozilla Thunderbird
To: Arnd Bergmann <arnd@arndb.de>
References: <20240201122216.2634007-1-aleksander.lobakin@intel.com>
 <20240201122216.2634007-2-aleksander.lobakin@intel.com>
 <3f6df876-4b25-4dc8-bbac-ce678c428d86@app.fastmail.com>
Content-Language: en-US
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <3f6df876-4b25-4dc8-bbac-ce678c428d86@app.fastmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR0102CA0013.eurprd01.prod.exchangelabs.com
 (2603:10a6:802::26) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|PH7PR11MB6795:EE_
X-MS-Office365-Filtering-Correlation-Id: 044ac232-b629-4a08-0393-08dc233d7f81
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: aacphW9P3Zgmxj67bCGBbAU/NU/mP65qTxDk8OCDf5wGdoKJo441/QJ/IMsoNWPUTteWD0LhRb54f4tbuPRQdo4b31kGvi5+Ui39Mxtjg17fy0Ryk4M5ogs6VE31yU6inh1xEI61VSmGGFU9bBjMMWFlA/iiEqIXWF5DU01igpniha1caNNl0dcHeX8H9w3zanemsdJ2mOGpzIe+qH1tuUPrBxahKQ557gDIVtKGTJH8IfuJrBU6TlyDJGIZDiOqlBcAzbISdUhspz4KeXt5GTpz6V9oIT0L20WLzc7CqcX/Ch8Wmy0v4sqilKlkAg4Jhi8SqrDhtkOk8Y0cfuso3ssde1H9zHMkQjN7phG04QMfWowyqcwF7PRR7zPdwpuyyFOMxo6LcSqFOnnveM0qJ3TIUwQaBw9kWkU5R6/iHjAFX8iGw31BEM4UpIHtHEzecujwy+ueajWfT5kNxmpFq9+g5kkZaqlv6sZf8q1iO4W970Sx8j2PxCePkj8LozfoeDTj+Wy8lLceZStcjQadGUpBtooj3iTkQke+PVxz4eEi1CEZTMn4fPCfbXQdLs5l6dret5l76zMrEQ0hp7h5aa1dz//IrgRizIc0lRAlgW0u7BUNBDoBP1Tx2yereDHwmHi0xqPhpyIfoFp9cU+AV6xwq+jzZ1mbBqWOxIHweRCnSrn6wEGm7dIWhPHroaoK
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(136003)(396003)(376002)(39860400002)(366004)(230273577357003)(230173577357003)(230922051799003)(451199024)(186009)(64100799003)(1800799012)(316002)(8936002)(54906003)(6916009)(66476007)(66556008)(8676002)(4326008)(66946007)(6486002)(478600001)(31696002)(86362001)(7416002)(2906002)(5660300002)(41300700001)(36756003)(31686004)(83380400001)(26005)(2616005)(38100700002)(82960400001)(6506007)(6512007)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZUF0RHhDTnZveGRxRUV6OW91TXVxNE5oSlpkb0JUU0oxWktLNmdudFhMdHo5?=
 =?utf-8?B?dlQrYUVQT0JISEw3a1E3djBsdVdQK1FyYWJZNlQzUVprZzlxWStMOUdYSjFU?=
 =?utf-8?B?WitBTFVwN2p6RTIvZXMyREpNNGdrelkyWHNNZWNJSHROOVc0ZVJlaHRxRWJn?=
 =?utf-8?B?ODVCS2dvYTdtWkRZempEZzZ5L0V1QnlEcnJTZlNRVEZXNW5zTUg4UFV1cG02?=
 =?utf-8?B?WVdCWUZta0xRVmVSa3F6ZW5UVjVZZGZNUnM3WjZyN3ptdU82c1BsYWEreEtk?=
 =?utf-8?B?THp0b0htQ2lOUVNNSU9mbWVCK2h1d1NQNGR5eWw2MVFDTkx0cWlUVmhJbDZa?=
 =?utf-8?B?RUIvcHhBVWNib2RjTmdxMmpmMEgvdnZoSm9aOHJ1MmhKZW1aRHBYNHc0RUZS?=
 =?utf-8?B?WjNnNmg3OHpxQzBhQW5nVkNNcWM0eW1KRzRJMURsL2FLTnE1cWRoUVZTalMz?=
 =?utf-8?B?cUhyWnphTWZTcWpxbDgwS21HT0lZNlkzbVZDMWo4YWpxTkhQcTVQSytBaXRa?=
 =?utf-8?B?WDd1QTNad3lkQ1NmV2xYQVF6ejBZUG0vbkdrazMwUnNGRExvaC9QVllUSkJJ?=
 =?utf-8?B?Q0JSYWdJOTA3NlI1WWk2THJXZXR0MCtwTVZXdjZuRWRjZENMc0RJWUlUaUZx?=
 =?utf-8?B?SFNOS3hyRDFRY3o3MWdlQTgxYmxQVDA2cUduLzU4RUpFNkZRbUtWaENSNjlt?=
 =?utf-8?B?Ny9zakJsR0R3R3c2WXBUVDJLbUlTQVVQcHArL1BoN3QyOFNkMW93N05kSDFZ?=
 =?utf-8?B?UDY3V253N2J0WFBaQzJreHdTKzUxbDUvcHZaRVB1NEs5eG83eVJpTUxJQy9S?=
 =?utf-8?B?dUlOZE1BNGtmN3dFbmdadFBHY3lHczdxTUZHcWdIRzRTbURqUWVYemo2MmJV?=
 =?utf-8?B?QTZHSUVMdFN0dmxneG5pdFQrOVdKUVNsVTJYN2NOeWliaDdpcmxZSXloeG50?=
 =?utf-8?B?bVlhMWl0V2xwM1NHRVM0RXdUQ1JSSnVVb05SRyt3MUdLZURFSE1GUjFoN3Vs?=
 =?utf-8?B?UG9tT1ladUtKVTZLSkRrOTVPRTRvZlpsdVRVZHBFNmNXZVdpMzlzUTNDSjY2?=
 =?utf-8?B?dkdUL3VIYUw5bWNyRmgyZ0NyWjFWM1NtdUtMWHhpNVNGTmlaSWs1cEVaTlVh?=
 =?utf-8?B?RWV2R0ZmQXhiLzVKOEZkRHFqeXVYNm9NcXJsbVJWMk5BdThRZnhwaVJVK2xi?=
 =?utf-8?B?L2RIaXJha21DakZLbDM0cUV1S21WQ2p6R0VFZUJZOE4rbHZlckJlU1BBOWpw?=
 =?utf-8?B?eGY2NW5aUGg4azdWUVNnUjl0WkZUdDlFNXpzeWFUR2hCMzhIaS9Zdkk3cFdG?=
 =?utf-8?B?WkhBMEVzbWlMY0QyYXRoQUdPckhtYlNnZjBoc0EzTGhkQThoRElxbTNNSjhi?=
 =?utf-8?B?QTY1SDc1Smk1R2VYeXFiSitQb2RrSlhCR1BLU25CMFEwRnA5RHlvU0RuOVRX?=
 =?utf-8?B?elNoN2VpY0NLQVFxelJZQ3dtOUpRZEJFWnFVU2luZkZUSSt5TmJaSEhJUXAr?=
 =?utf-8?B?MDZtdHJBcE1BVjNoOFRPWDNXeVVVV0VDM0tmN3MwOWVBUzRLUmhjOGs3YnBo?=
 =?utf-8?B?eGpUYkhKS2RkSWdLVVBMKy9iMi9PNjBqS1FwREhPVS9JcXMzRitiVnczb3ln?=
 =?utf-8?B?cDhRb0pxN2Q0N3lob2kyR2JHbVRBTnBoSFA2R0hTSEp2OEoxekMxYU1LQUdm?=
 =?utf-8?B?RHp5ViswdHdKU1lheWVBY1lKdzh4MmF4bEhPeE5WcUdPa0RNeTBvTVNzS3dq?=
 =?utf-8?B?Z3lXUWZ5WHdsMVAwRlFMTnNpdmdrcHdMUDZERG11NjV3dnFMUWt4eStvMHlk?=
 =?utf-8?B?Z2d0QzFKc3NVRFpqUXl4bmp2M015U1kvSzZqaHMwWi9wNytzNWhlUkNRSkR3?=
 =?utf-8?B?SFN5Uk1TckE3SkkzRk1UNWovRmRmQzJIbThUaXNIZElqY29rSkdtbVVEUDVy?=
 =?utf-8?B?OGExMUZVYXNLbnRYQ2d4V3Q1VzFVMWJxSjZ1bUI1NTVvaTVJRHhKTUpYWktB?=
 =?utf-8?B?ck5TNVNFWHM0bklSQlg4a040Z254SnJPSWY0am9GcjcvSnBTMUFEZjRiUnlF?=
 =?utf-8?B?KzNuTmJCQmpSWGVwL0gwRnYranBJWS9YT2ZHNTFJd2VjNEN6YmxrOGlkSjFr?=
 =?utf-8?B?aElLd3pHam93anpuaUNMdkxZUVJFZW45Q3lCa2ZRZGRqc21oVlFBOW5JeGpX?=
 =?utf-8?B?QlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 044ac232-b629-4a08-0393-08dc233d7f81
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Feb 2024 15:50:22.0216 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WWMsblWvYrsbABrZouh4TnXSNQjwifzIRib91+7QgJRCiwetKEOgnr+nU1u5keAZI8wMAsO1RwkWZyurDOVSkYzfMaTfwPy/W9JLTzteHM8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6795
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706802628; x=1738338628;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XyalGKsSTHL2LNmia9RPXI4SvlU21/406hjJAMsmbHc=;
 b=f/9Lf0Dk/4DYxF5MXfAR5q35AHvhe6qhqyesO3A39Mq/fXkFOm90vzoW
 XYZxJBY8jdVM6oIj4S1homH7mPX1uy4yA0QjWYTFI69HzBg64n5k35+bi
 H1t/5lefyBm0eHa9FNyzM0t2eQ5B+ztj4r9k0pIaJirvdaOTvphOigg+a
 HeGqztFVurYhkfEWzeAwTqH/dv6wkhJ3mrdbmp6c27B42OyjrsLfEgmd3
 7Quuqh9iU9cy6xUtVl9luRoUyKSd/3pecRbHiAGehU1dVlta+h7OsFpnK
 zBrb12XKgLdzJ3/wzeROzCrDaZS/S8IvXYO69+siPj1fYrji7TlhSqFEK
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=f/9Lf0Dk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 01/21] lib/bitmap: add
 bitmap_{read, write}()
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
Cc: Rasmus Villemoes <linux@rasmusvillemoes.dk>, dm-devel@redhat.com,
 Alexander Potapenko <glider@google.com>, Jiri Pirko <jiri@resnulli.us>,
 linux-s390@vger.kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 William Breathitt Gray <william.gray@linaro.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Wojciech Drewek <wojciech.drewek@intel.com>, Yury Norov <yury.norov@gmail.com>,
 Ido Schimmel <idosch@nvidia.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Andy
 Shevchenko <andy@kernel.org>, Eric Dumazet <edumazet@google.com>,
 Netdev <netdev@vger.kernel.org>, linux-kernel@vger.kernel.org,
 Marcin Szycik <marcin.szycik@linux.intel.com>, Simon Horman <horms@kernel.org>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, ntfs3@lists.linux.dev,
 Syed Nayyar Waris <syednwaris@gmail.com>,
 "David S . Miller" <davem@davemloft.net>, linux-btrfs@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 01 Feb 2024 14:23:33 +0100

> On Thu, Feb 1, 2024, at 13:21, Alexander Lobakin wrote:
>> From: Syed Nayyar Waris <syednwaris@gmail.com>
>>
>> The two new functions allow reading/writing values of length up to
>> BITS_PER_LONG bits at arbitrary position in the bitmap.
>>
>> The code was taken from "bitops: Introduce the for_each_set_clump macro"
>> by Syed Nayyar Waris with a number of changes and simplifications:
>>  - instead of using roundup(), which adds an unnecessary dependency
>>    on <linux/math.h>, we calculate space as BITS_PER_LONG-offset;
>>  - indentation is reduced by not using else-clauses (suggested by
>>    checkpatch for bitmap_get_value());
>>  - bitmap_get_value()/bitmap_set_value() are renamed to bitmap_read()
>>    and bitmap_write();
>>  - some redundant computations are omitted.
> 
> These functions feel like they should not be inline but are
> better off in lib/bitmap.c given their length.

When their arguments are compile-time constants, they got optimized
well. They're also used on hotpath, so making them external could hurt
performance + taking the first sentence into account, making them
external will hurt the performance even more, 'cause they won't be then
as optimized by the compiler as they are now.

> 
> As far as I can tell, the header ends up being included
> indirectly almost everywhere, so just parsing these functions
> likey adds not just dependencies but also compile time.
> 
>      Arnd

Thanks,
Olek
