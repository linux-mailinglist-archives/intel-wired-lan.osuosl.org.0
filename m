Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C307800D7B
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Dec 2023 15:41:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 90B2784617;
	Fri,  1 Dec 2023 14:41:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 90B2784617
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701441672;
	bh=NlJrfBoQeDxTF4/HfzkXzAJ8MCoUcXZsTBEatfJKQWU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3RMAsqQq9BzvO4wMqNeNk5urnzxHp2hLnSFU+if+qR/mcFL9d+lcboslPBXh89uOg
	 hltz6PFV8mOe/Siq8NyPxC8c2fdyos6Ukwy6ZT1QYcqvy8OD7kY3fefc+wlZbsCoVg
	 CLrV8/u/bPtDbrHZnPtkssLBwXEWj1FIEDBY2JRfccRs7dzVqSRnEfwWsfXSIUUM2A
	 m6JtJVLAOT20Gw4N67SQdjAiK19MSCSafFjyZ3/WIasbTbpwVdkLCYQghuEKx4qAsi
	 O1h2ubS5C/wfVlxbVBOoz5SXV5oCzL/4cC9/lM7GaGqnb2/ZxFP19GpW/QJMMmeHVr
	 NZUn3++i9AExw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a8DmS6zYc3_P; Fri,  1 Dec 2023 14:41:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2A79684612;
	Fri,  1 Dec 2023 14:41:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2A79684612
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7269F1BF3AD
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Dec 2023 14:41:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4541E4208D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Dec 2023 14:41:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4541E4208D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iJpAceVLYzKA for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Dec 2023 14:41:03 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 01 Dec 2023 14:41:03 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 094BE41E6F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 094BE41E6F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Dec 2023 14:41:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10911"; a="386595"
X-IronPort-AV: E=Sophos;i="6.04,241,1695711600"; 
   d="scan'208";a="386595"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2023 06:33:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10911"; a="719540869"
X-IronPort-AV: E=Sophos;i="6.04,241,1695711600"; d="scan'208";a="719540869"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Dec 2023 06:33:54 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 1 Dec 2023 06:33:54 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 1 Dec 2023 06:33:54 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 1 Dec 2023 06:33:54 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 1 Dec 2023 06:33:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gpXCiVIjl7Mus5yBQX8mxj0FBzFcTlZEOiwXG4rTR4UX5DWEGz2qyPG4QRzkmDW+mDJpIhFkmnM+A0dS+7sa260hKsahpL6D1BBGpn8t3DnirbA9ZxRzIGJGJwuNrYzMZFXoXD5zvN5u9N5mhq/LmPRW34hgcII0A9RA5W6PUNtfruGC5taZ3IRYDD2aq/V9zYDdbNj1+wNhLmuSh1PyfjiE5naqJPuFgnLqpjvloCDByWDzwPEgSGB3VLgakoLz5ISnUkzYwQQX2umG9h9JufgrRFF4NJZodfNvRLKkrYXR6jmw1+b+cE8PnHW3XdXA7TcGu/8lkkTZkc+No+SwsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9GuUaFX4zpvzFwOZpquO8eE34YPXH40U05gKb3tAOIs=;
 b=EHPzEmdyBs2A+SDU/JVg6b7RGEtwKZpDf8aBJZHMju1aGGk+1apkXJrRLGi2mWdT1OQiZn1vKQKtInHcUUOKHt4Fc5Ki7PqTxRHRc9e2rW4TDAgToipOAZqY8+QSqeRi2WGCdaVa3/Rg7d3kt9hEDfuFPKjLFGC9wFsR94t+UaxkZT8bQU8mEoDtEDBxU6pOtvaiiuVwmlsyKfvkgJre0tafbIS1NWlmVOdOk9rzY2DNHU/EaDsmisd26o1jme3lw6UQ0kim2ThnntuZyEq7NFis6uwPZldrhG6ctBwBXG6Bg2jt7Oa7ZBgVBv6K5/q/odxD/PIKJykOy+qb4j/qxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by LV3PR11MB8696.namprd11.prod.outlook.com (2603:10b6:408:216::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.27; Fri, 1 Dec
 2023 14:33:51 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::36be:aaee:c5fe:2b80]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::36be:aaee:c5fe:2b80%7]) with mapi id 15.20.7046.024; Fri, 1 Dec 2023
 14:33:51 +0000
Message-ID: <212e5518-0f72-4bf5-bc5f-49d184be1931@intel.com>
Date: Fri, 1 Dec 2023 15:32:51 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
References: <20231130214511.647586-1-jesse.brandeburg@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <20231130214511.647586-1-jesse.brandeburg@intel.com>
X-ClientProxiedBy: WA1P291CA0002.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:19::26) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|LV3PR11MB8696:EE_
X-MS-Office365-Filtering-Correlation-Id: cd6539d8-d394-43bf-d6d7-08dbf27a8917
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: I66lrI9BwVsMzmiDmcsOs3oQKzko+RpNVfaaN+w+/JkiuHtdPFywVCzS6jkXl0BEwkPNZspw7zMT5gwEL1nkYlhANeSDfZTE5Q9tsJshEqymnocCpzm5dglCttISco4qGbnyWqZIHWNWazEH45WS5M3h+vUJNMXzxBtq55Knb6aG3t0+zJGvrGhSL3mkiS9vKOr87N4pt8i5CdTtfQokUGL2ELG9MzNsLHR4ZR2uJGkJEb1aP3IGkxyNOpQX7ITXzlSb3nwGJJKltmOZszzuq3WIyGltZ+h1QcHjF3eHs0IrsUzIHu0+BBcYUT0UQl+5FIJyxW1r+WProne+yiVFY1uf4Y6jHcsR2F6B3PyO43dPo2bG+gQJN6vMLtrNfr07w9sT5tTEyoGShaHCpqOWMi1LAXJY99Q38nui9FWsm6caEuPU38wTkwIKQnTD/Qvx1w6CxYER7G7x3qXWwBYpeHznrw90ab9OESPl1GhoPR75WRVASU2VZmy3Izn0Bv2jQCYBvYoyu97zLHQ5acvdfekPZ7d5pMLkTkHI3Q3wFCwP3vZvpvaOeKgK1SkIepzbB16G36B7MXYBU17yXYjxqHP0aWNk1UViJ0j6eloQQLXf8E+UWlooQdADfb5SAoqoS+NbLBCbsCrVG5Cv79h+yg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(376002)(396003)(136003)(39860400002)(346002)(230922051799003)(186009)(451199024)(1800799012)(64100799003)(5660300002)(2906002)(8676002)(4326008)(6862004)(6636002)(66476007)(316002)(37006003)(66556008)(8936002)(66946007)(26005)(41300700001)(6506007)(6486002)(478600001)(107886003)(6512007)(31686004)(2616005)(83380400001)(38100700002)(82960400001)(36756003)(31696002)(86362001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OUpHMlVnQ3VWYklzOUI2K0VDWVRZUmhuS0E2NU5xeUd0S2VlaktkRTEwY0c0?=
 =?utf-8?B?cXFkQlFXSDVTcmFSSTJza01DaTlKRWx2T0tIVTZBU2ROcXdGSXJlaWdTMWxE?=
 =?utf-8?B?YnJBTVZEQXdKWlBvMExSUzQ0alFRYVFRZlgxZ2RlSDZhL3dBalJMcUFiNEZ2?=
 =?utf-8?B?RGsweTQyL1lvMXcwbnpyMnlrK04xZzhSTXAzNElSVXdZU3cwWEhnNEJhYjA0?=
 =?utf-8?B?TnJJeGRaNWZ3eHZ0UitaaENVbmlXY2diVXZGa3Bkc0RieHBSbFdOQkZ5STVs?=
 =?utf-8?B?R1k2NUhSdjJGNDZuNmU3YTc4V0NwTUFFZVZBU3F6MmdySDVVdm4xNnlWbVlj?=
 =?utf-8?B?WnJndlhXZ1hvRTBzT25KR0pIc3poYUNPRmltam9iY3JsWG5Gb0xkQVpkSU04?=
 =?utf-8?B?TlpyMEtKY1VCSkR3VmFaR3ltRUlFeE5HckY2THp6QTFaM1R0ckFIcEQ2S0Y4?=
 =?utf-8?B?bmJ3MEZpMGVvMlRkNjZTRVVXZVdqQmd3UGVNdTBGYzc4Y3A1WDNNVWgzdTh1?=
 =?utf-8?B?V0JyL2ZtMVRKZTBPdDZFajlHVVpFcDlDYkdBaFc3azUxR0dzWVdOcEF4SElj?=
 =?utf-8?B?bWRJeHNWem1DeTFTK0VEczNzMDlXbVIvMHJtR2RXMlVTdHJWWFpiL3hZcjk3?=
 =?utf-8?B?MjlINUFaVmthWlE3ZjJEK2FRWEV0Nmo3cUtDSGJlR3BmK2g4NGlzc0lEMGJE?=
 =?utf-8?B?aXNUNjdORXhPU2c3SXMzSGtMcnVkdVF3dFNIOEcvV3c3Y3M1Y3U4RkZGblFh?=
 =?utf-8?B?K0dsM3JiaHAwUE5mWmppcld6RjhRalltTlZzTVBFTUdUZ00veW5wUnVhVFdB?=
 =?utf-8?B?K2lGRDhVK1gvVWdhYnc5QS8xdWE0c1QzcjhGVS9YM2hBdEZJeS9xWUsyNHFY?=
 =?utf-8?B?L3ZIc2R1WGxGeHdZMStGNG5kOE12RytDM1lNMGo4cWNBaU9WUFM0VnNxdk4r?=
 =?utf-8?B?V2Y3eG4yenFCRFV4RnZ1NHlMRk5qK0Rnc2JaL1J6cHRVYWZ0d0poMmZ2TC9O?=
 =?utf-8?B?blFYeCswWTFQQ2ZlUkV5UllJSzZQZ0l0dkR2aDZEUTFIaUt6WllRck5RTHJm?=
 =?utf-8?B?RC9ocUFVcE5uaUc4a3p6ZjB0Y1BMRjREUU5wV2JwQ1ZPSUtQRmJoMGJVM05v?=
 =?utf-8?B?S2U3cFZzTnFQK1owWFBZNUxCYkJQQTRzUHRDNm5VMGwydEcyckRuU1NzKzEr?=
 =?utf-8?B?bXdncEd4SU9ScXY0VUFsdkVORFUySFdPZE9CaHhkdkkvOVM2Mm1ZVjFGSjFw?=
 =?utf-8?B?c3dMNDVuWDN1ays0SUZJOEp1YjJ1RWxPK1NRUGlFaERScGZMZ2ZUUkRZWUJt?=
 =?utf-8?B?M2wvYkxuOG1qWDdrYXFucUVtOVpreUtpbU1IL1dTSW1VVm15NG45NVFLV01s?=
 =?utf-8?B?MWUyZU9VUEhBK2hKU1EvczdPN01iRFg5ZEJpNFBaWFpPQklXY1U5TnZ4WEwy?=
 =?utf-8?B?Y1cxR2FiVHp1Nlc0UGp4K2hFaDM3dEVMcGxCTng0VFFIcncrODFLYk5XRWtv?=
 =?utf-8?B?blg3REh4eDBQVlpKS2hxamZZUWhxZWRZN3hKY0hiRjVrSW1hb1JxVTlJeHFt?=
 =?utf-8?B?RFlCOWYvbHp6MFFJMG96MmtMVy9WN24zY2o5YmhWU1RxOXpIdzJaaXcwSkRG?=
 =?utf-8?B?YUIydXQ5ZXVPdmt6cnlWRHkyYXY3bkdEbktoWWFQcldXYjVhcytVTTlaaUZQ?=
 =?utf-8?B?SDBvVVFHd2tTa0hna1ZxQlJmWlJBRnFvaUU0blM0WmV0cTVHczlHVW5CL1JG?=
 =?utf-8?B?d0tlWk5DV1BGMElOdGw5YUZMMVFVTks5ejFJY1k5SXI5b3dsbFZXNzZUSWRP?=
 =?utf-8?B?aHVCMmpIMWZYcXJ5TlJ3ZS9hNTVBYmJEMFVRaFVBMklENlgwbFN5NGtVV2pu?=
 =?utf-8?B?MzFZM3Q4dFUwME9yeGtjN3ZSR3ZLRWJEOTRvWWRtU21MMjc4YmRqOGRvK2Jv?=
 =?utf-8?B?aWo2aFByVTBET2Zpd3RhNjBOYlg3NTN0SmxxMXEwRm9pVVAzbTcyYnFRMk9D?=
 =?utf-8?B?emNlYU1wUmJ5djc2eks3Q0Eyc21EVUZyTDVmQ1RkQW9QR0hwdUpyV09kQTZQ?=
 =?utf-8?B?VjZjckpzR3lYenBsYkdMbXl5bC9oT0VUSkZLWlNTenRCRk9qaU83U3htampx?=
 =?utf-8?B?Z1FMSHk5ejk0WGZOQ2QzaWFIYVI4QmpHSkdyZmI2SlJ2R0VMQnJPTVFrTzZV?=
 =?utf-8?B?d0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cd6539d8-d394-43bf-d6d7-08dbf27a8917
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2023 14:33:50.4293 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kztW3pUU/W33v3K3e9CfIW+Dor9S3MeyTZG4Z58bh3pa3kaTETHHj4n+z6DD8/df+mV0HMpln2MU9TKDhzTvsRnfgzierLriykV9HswOw4Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8696
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701441663; x=1732977663;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FvjeJvFzv8Ju2a9QQzBCURX5WAeo6rEDua1B0k9nHlM=;
 b=AaXaF40GqwgwKm4UsFGAY+Qh5cKgSTXu9H8hTSFj9iUWdxaAvlBbvxiS
 TheQPuWwbtcHqivk+UtpKR6QOCmD7f00K6uxbrcOklZg9F9Xt7rUFtsBI
 ntZN9pH6NMFMr0rBDGnkCUqXQ2hGzkB7MmxbyotnJaupri6kRih97PcKn
 zedUiaB9s+LQaBeNVgKQrcDBjJwUWO8TZqvY8iqBPuJnHh3euhLZT08tS
 HcC1SVgHOMZSnP4JxqGhqaPNq2lAdSp802Y2UnlGGZydnaXrxxEtKVi/I
 5w2Ozb4MfJD5XXLlDPmBt2rsIj7fzjMbn+Rul9PmB34a9T0ZP0qsgfcFT
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AaXaF40G
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] idpf: refactor some
 missing field get/prep conversions
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jesse Brandeburg <jesse.brandeburg@intel.com>
Date: Thu, 30 Nov 2023 13:45:11 -0800

> Most of idpf correctly uses FIELD_GET and FIELD_PREP, but a couple spots
> were missed so fix those.
> 
> This conversion was automated via a coccinelle script as posted with the
> previous series.
> 
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
> This patch should be applied after the larger FIELD_PREP/FIELD_GET
> conversion series for the Intel drivers.
> ---
>  .../ethernet/intel/idpf/idpf_singleq_txrx.c    |  7 +++----
>  drivers/net/ethernet/intel/idpf/idpf_txrx.c    | 18 ++++++++----------
>  2 files changed, 11 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
> index 81288a17da2a..447753495c53 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
> @@ -328,10 +328,9 @@ static void idpf_tx_singleq_build_ctx_desc(struct idpf_queue *txq,
>  
>  	if (offload->tso_segs) {
>  		qw1 |= IDPF_TX_CTX_DESC_TSO << IDPF_TXD_CTX_QW1_CMD_S;
> -		qw1 |= ((u64)offload->tso_len << IDPF_TXD_CTX_QW1_TSO_LEN_S) &
> -			IDPF_TXD_CTX_QW1_TSO_LEN_M;
> -		qw1 |= ((u64)offload->mss << IDPF_TXD_CTX_QW1_MSS_S) &
> -			IDPF_TXD_CTX_QW1_MSS_M;
> +		qw1 |= FIELD_PREP(IDPF_TXD_CTX_QW1_TSO_LEN_M,
> +				  offload->tso_len);
> +		qw1 |= FIELD_PREP(IDPF_TXD_CTX_QW1_MSS_M, offload->mss);
>  
>  		u64_stats_update_begin(&txq->stats_sync);
>  		u64_stats_inc(&txq->q_stats.tx.lso_pkts);
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> index 1f728a9004d9..f3009d2a3c2e 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> @@ -505,7 +505,7 @@ static void idpf_rx_post_buf_refill(struct idpf_sw_queue *refillq, u16 buf_id)
>  
>  	/* store the buffer ID and the SW maintained GEN bit to the refillq */
>  	refillq->ring[nta] =
> -		((buf_id << IDPF_RX_BI_BUFID_S) & IDPF_RX_BI_BUFID_M) |
> +		FIELD_PREP(IDPF_RX_BI_BUFID_M, buf_id) |
>  		(!!(test_bit(__IDPF_Q_GEN_CHK, refillq->flags)) <<
>  		 IDPF_RX_BI_GEN_S);

Why isn't that one converted as well?

>  
> @@ -1825,14 +1825,14 @@ static bool idpf_tx_clean_complq(struct idpf_queue *complq, int budget,
>  		u16 gen;
>  
>  		/* if the descriptor isn't done, no work yet to do */
> -		gen = (le16_to_cpu(tx_desc->qid_comptype_gen) &
> -		      IDPF_TXD_COMPLQ_GEN_M) >> IDPF_TXD_COMPLQ_GEN_S;
> +		gen = FIELD_GET(IDPF_TXD_COMPLQ_GEN_M,
> +				le16_to_cpu(tx_desc->qid_comptype_gen));

The definition:

#define IDPF_TXD_COMPLQ_GEN_M		BIT_ULL(IDPF_TXD_COMPLQ_GEN_S)

Please don't use FIELD_*() API for 1 bit.

		gen = !!(le16_to_cpu(tx_desc->qid_comptype_gen) &
			 IDPF_TXD_COMPLQ_GEN_M);

is enough.

Moreover, you could use le*_{get,encode,replace}_bits() to get/set LE
values right away without 2-step operation (from/to CPU + masks), but
you didn't do that here (see below for an example).


>  		if (test_bit(__IDPF_Q_GEN_CHK, complq->flags) != gen)
>  			break;
>  
>  		/* Find necessary info of TX queue to clean buffers */
> -		rel_tx_qid = (le16_to_cpu(tx_desc->qid_comptype_gen) &
> -			 IDPF_TXD_COMPLQ_QID_M) >> IDPF_TXD_COMPLQ_QID_S;
> +		rel_tx_qid = FIELD_GET(IDPF_TXD_COMPLQ_QID_M,
> +				       le16_to_cpu(tx_desc->qid_comptype_gen));

		rel_tx_qid = le16_get_bits(tx_desc->qid_comptype_gen,
					   IDPF_TXD_COMPLQ_QID_M);

>  		if (rel_tx_qid >= complq->txq_grp->num_txq ||
>  		    !complq->txq_grp->txqs[rel_tx_qid]) {
>  			dev_err(&complq->vport->adapter->pdev->dev,
> @@ -1842,9 +1842,8 @@ static bool idpf_tx_clean_complq(struct idpf_queue *complq, int budget,
>  		tx_q = complq->txq_grp->txqs[rel_tx_qid];
>  
>  		/* Determine completion type */
> -		ctype = (le16_to_cpu(tx_desc->qid_comptype_gen) &
> -			IDPF_TXD_COMPLQ_COMPL_TYPE_M) >>
> -			IDPF_TXD_COMPLQ_COMPL_TYPE_S;
> +		ctype = FIELD_GET(IDPF_TXD_COMPLQ_COMPL_TYPE_M,
> +				  le16_to_cpu(tx_desc->qid_comptype_gen));

Same.

>  		switch (ctype) {
>  		case IDPF_TXD_COMPLT_RE:
>  			hw_head = le16_to_cpu(tx_desc->q_head_compl_tag.q_head);
> @@ -1947,8 +1946,7 @@ void idpf_tx_splitq_build_ctb(union idpf_tx_flex_desc *desc,
>  	desc->q.qw1.cmd_dtype =
>  		cpu_to_le16(params->dtype & IDPF_FLEX_TXD_QW1_DTYPE_M);
>  	desc->q.qw1.cmd_dtype |=
> -		cpu_to_le16((td_cmd << IDPF_FLEX_TXD_QW1_CMD_S) &
> -			    IDPF_FLEX_TXD_QW1_CMD_M);
> +		cpu_to_le16(FIELD_PREP(IDPF_FLEX_TXD_QW1_CMD_M, td_cmd));

Same.

>  	desc->q.qw1.buf_size = cpu_to_le16((u16)size);
>  	desc->q.qw1.l2tags.l2tag1 = cpu_to_le16(params->td_tag);
>  }

In general, I would say those two issues are very common in IDPF and
also the whole your series converting the Intel drivers. The scripts
won't check whether the mask has only 1 bit or whether the value gets
converted from/to LE, so they won't help here.
Could you maybe manually recheck all the places where bitfield masks are
used at least in IDPF (better in ice, iavf, i40e, ..., as well) and
posted a series that would address them? At the end, manual work is more
valuable than automated conversions :p

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
