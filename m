Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9201D82409F
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Jan 2024 12:29:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1C710610D9;
	Thu,  4 Jan 2024 11:29:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1C710610D9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1704367760;
	bh=Iam6X6YbxfwHqrGioVW6o7WMyDwErwULZEiWxfDsqW0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yoXma5Emgn9RdKWzk0ek1mJix9pk6zA2H0GGAx6xA8aRU+Ajmpm4ODH4Jnp1DKqg/
	 Mg6gHlvPxWyiqqfXyK/MVIDjVsQWR5jOmwZsS8r30YW2z/GzHpP0SXVY8B3ziaq7gU
	 XqsmPYcHzPf95uF2+RbW18+ueG3l1dApNL40RiXhFJJM8h8ctkQ/IITsmbb7EK0atJ
	 sFGIQ9V1G/DO5icQZYfxHMjWWgNvTNW/neUTN6fajgjKsbNQvgnERP8SHpmFerA2+0
	 SF1750uLFdWnxZI/Ao5PWTyigVduaIbsNiTh7PkoTX/nsXo/tIrTnmAmJ0PJtG4nug
	 MhWjtFwrV4nMA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AyuC2fqQ13ku; Thu,  4 Jan 2024 11:29:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2137C60BF1;
	Thu,  4 Jan 2024 11:29:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2137C60BF1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7EC2B1BF3C9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jan 2024 11:29:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 559BD60BF1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jan 2024 11:29:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 559BD60BF1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J8EJF5oy6828 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Jan 2024 11:29:13 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 298DF600CD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jan 2024 11:29:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 298DF600CD
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="400997024"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; d="scan'208";a="400997024"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 03:29:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="814603914"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; d="scan'208";a="814603914"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Jan 2024 03:29:04 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 4 Jan 2024 03:29:03 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 4 Jan 2024 03:29:03 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 4 Jan 2024 03:29:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fwLCyV25u2DqmiDq39Z1PxO1+Krh8XBBuvsh6DUCSD7E561t/Q4V/dTQciy9qUFMaevuq5DQ59hNhxW8N4lukoKOZM7RxyJ+zlRK//J89PoxzBNerQfGLeN0fdHIouhoz1DLeq3ls7lu2iYlW3nP8rf5B/3HncjSKUmEwrh7GJ28l7a/gGnrDbkPVZkjjIApNJmFYE8jm8UOFQCoriiSLf6xZB/fQk4i0kYaGVis+QaA0K/lxGTewvFWEpvSZcrMnthhDd8wHfROYbDkp/ZLEkXtAq86/AwiCQOmT/VEdcHwDk2TeN9ZuJHUMwkhhj+rYJcztCyMvD2ODbvdJcv/oA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Iam6X6YbxfwHqrGioVW6o7WMyDwErwULZEiWxfDsqW0=;
 b=J3/0dZMdUHpCMsfwEbRueWe1sIDOysZ+ALqgvucIKyGUvI1PrNQWN65pLsk98AD8dsDZKltGvvlQFw9K5fnXaU+EmsfRWG7m0SfYuChjepdE6HWid5bU21joqv+xWJXbpZ0MR7JIrBZuctJYwvfpOelwg4v7dZFsOdJoIDLbaHviMD2Wm1LaJFRwE70urnkwr87KaOEP/fsLF55iZM4AICOEWUVzUMYdiJPN5O8f/BhVdZ9tFQ+hl4XkftCQeAOFMbnUNFJa48CbgfmxtB7dciCbW7U3KvnfsLiNowQ3AXm0TIusff1LpjNftBKrZn4CG9hMGWTsNaEnYnpyxOUtlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by MW5PR11MB5932.namprd11.prod.outlook.com (2603:10b6:303:1a2::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7113.26; Thu, 4 Jan
 2024 11:29:01 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::3c98:e2b:aeff:5041]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::3c98:e2b:aeff:5041%3]) with mapi id 15.20.7135.023; Thu, 4 Jan 2024
 11:29:01 +0000
Message-ID: <a15e6427-c7c5-44ec-b767-035f46649776@intel.com>
Date: Thu, 4 Jan 2024 12:28:54 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20240104101904.18267-1-przemyslaw.kitszel@intel.com>
 <a27c1c87-4668-4166-9e0e-1005b2244f7a@molgen.mpg.de>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <a27c1c87-4668-4166-9e0e-1005b2244f7a@molgen.mpg.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR4P281CA0161.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ba::13) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|MW5PR11MB5932:EE_
X-MS-Office365-Filtering-Correlation-Id: cec6296c-1365-4be8-bd66-08dc0d185901
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: spJkzzP6gn5KiYv3eRzfkLL/b57r3sALAmlVhjjCcppOM0kjUvH+vJWDP24+zDO78Paq5aZC1T1GE5+8Cb3Ev0uwmLIEuF2kvSh5FG4Zz2HDBSbcimxiJUwoa/hpva0lphTS//wAMbXrQiMZAzyc3WxpCrPM+neFteZoTABj2jbryNcCnEoAEJ74YsKJQ5JdhkNKrKHS3kC2RFfJi26s5GlkQbsk7sU+iUylMXL4NXvK1Ful1vZ3eOp0puvpNMTOagq4F/ptfijHvvNJOr7cMEr6tSHgc3/2yPreQuAyKoiMVqkfd69Pb7mmzX7m7+BfZt13VCxhNdEwFvQGT82DYBl3pACYY4/gSNE0SleHsF899iVoEkhGijT9kMbusTaqT7acxI7P+3u07lMacPLP/QTSLCmSYNaiYr4J/q1YJOFfmJ5TCNZbOccVMhfql7xpogtDHBjb57pB0pkHBEciEOpGW6hMpZfrMLniCkcudgaBKd7hDBaas4K12xQ50J+08MCrkn7WgjGnRcYGW11dlIzoMVZ3o18MeX+BraDSF9WKJ6XLtNiXBtPumAQCHVWkiWNReQ0Oq5YtjEQuk1yG/eGswmB0nATI1kVDfNV0t20vAi4V1ns0ICQolCUbaHLv5AUfUBBbB/aK6JhsVWQdaA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(346002)(376002)(136003)(39860400002)(366004)(230922051799003)(451199024)(64100799003)(186009)(1800799012)(6506007)(41300700001)(36756003)(26005)(2616005)(83380400001)(31686004)(107886003)(6512007)(31696002)(86362001)(82960400001)(38100700002)(53546011)(316002)(5660300002)(6916009)(66476007)(478600001)(54906003)(66556008)(8936002)(2906002)(4326008)(8676002)(66946007)(6666004)(6486002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a1NaM04wY1pBZVVPS01DTFp5KzBwRU9pMFc1d3QvM2hRbktPd3JQRFMyY3JY?=
 =?utf-8?B?RFFwbnZuTWt3b3NuRzJBeWt0UnI3aUE0Tmh5V2tlRWpTV2FTMzBWbFlFNTRn?=
 =?utf-8?B?bVlVdGxLay82SVdzTldTN1VaclgvWG9LOWhUa2RPWjN5aCtlZ1RrcERKV3pm?=
 =?utf-8?B?eXhQV0dzZllaM1Q1RHRpanpHYTF3NVhaSWg3T1dXN042U25zWTNxMFhnZ212?=
 =?utf-8?B?ZWZXMlFkanRFRzFqTzJBa0dFUi8wa1BORDlLNkZNOTUzU1pmbW5ad1dZM2oz?=
 =?utf-8?B?TE81ME5RU3AyYUpnTWtEL3YxWlVuRHZhdVpJQTFxM2d1MFpOQVBPNlVBUStM?=
 =?utf-8?B?M1dXdkpOeUQ1VFpWSHM0VFJIYmZ2b0pqeTlITXhEUloxTlNjM05zS0NVSTlR?=
 =?utf-8?B?K1liY1FMbDFreUxZZE5scm9vd3h3Sk5naHpocmh6bFZZbEl6NGFDcXpscmlH?=
 =?utf-8?B?RHdmanZxOEQ2ZXg1QzlRVGd5d1Q0L3JjZUtlVDdoVmpYMjNIN2hzS0dEKzk5?=
 =?utf-8?B?alVDNndIQUFsRUVOQ1UvNFU5ZTFaNU5vTVFLM0RSVTJoejBSNFhLc2NLSDRG?=
 =?utf-8?B?dFFsdVhvZnc2V0VXc3cycTBUZWZQeWxBOTBNbk9HU05oL0tXY3NsR1hxV3p3?=
 =?utf-8?B?TVBNeWcrWldhSU44VU9MTUFrVCszMkVldkNhNmJmUncybEFOazZwUk1BdGwr?=
 =?utf-8?B?eXpUOVF6NFQ1L0pBN3AxcnhVMm1ldWxnaFV3K2VrU2RTK1hPVC9oOUhJTmJu?=
 =?utf-8?B?MDY5a1c1OTlvQ3RDSFV3aUhvSGY1R1Nyc0NnN0FVc2NQeUhUbzB5WVZSTkZa?=
 =?utf-8?B?MTJ5Z2pic2p6TjZCKzliZk1JbDd3bC9ubE53dU44RWVYZ0tIUUl5aXNMQVNF?=
 =?utf-8?B?TkZrVmtlTjVJaUZwZktQR2tzYit4TzM1eXFhdEFmRkNyUjVTaTM5aEY2L3RJ?=
 =?utf-8?B?T0lCbTgrb0NTcXNtckt0MW1yM1FabTdmcjcvMEFwdXBCcVJOalQ4ZUd2eEo1?=
 =?utf-8?B?Tm5kWDJGUjZ3SDFvM24rQW9TcytGaWxva1FLWHFtRVNmcjNxY2JGK3FxZEZi?=
 =?utf-8?B?SVowTTdZVlV5NUUyNHNwcGlXblY0RzBDUXBqYlpWck5vQ1NTT21mN0U3TXU4?=
 =?utf-8?B?NUtnZENYS2cwNGlzWXFuY2UyQ3lBOSswYlhSZDBIK3AvaWJjM3RIcE41Y3Mr?=
 =?utf-8?B?V01LN0pkWXhOTTEwQ2ZtcXNFb20rZ0M0ZmVFK09nQlJjYWlZQ2xCeXVqbFZB?=
 =?utf-8?B?MXc0UEVqU2trR3g5enM4NTlEWi9kcFN6VVdJTkt6bDdkSjBvcjhNRE4walRy?=
 =?utf-8?B?aENmY21wcTBGdzM1eWt5V1R2cktWZDZrQmp4Y21RSlltVkJoQWdjbUZqeDBY?=
 =?utf-8?B?Znl1THF5ZCs4MFNrZkxRV1d3RzZVczA0bVlUay81WjB3N1hqM0RvQi9zVWdm?=
 =?utf-8?B?NG9pWDFIL0NsOHFuVDdpQ3duTUpZUVZGYzJ3eHk0Sm9DRVVub3V3NWc0Y3Fo?=
 =?utf-8?B?cFNmYXNmNG1SMHJTSnRXSGw0R002ZU03RE0rSGVwNi9FRkQ2Nnk1Q3dkYzIz?=
 =?utf-8?B?RVVMSjdBWmE4NEJIWUlsUTd4cjk1dS8zWG1hQ2V3RnlTUmxvYkluajBGNXRB?=
 =?utf-8?B?bHNkVy8zVVpTNEs5ejVYT0hrZDFnajFzU3ZBLzQ4MFF2dWFVWVpLK01oOTFi?=
 =?utf-8?B?VlNBTHRLdU52a0JtUWpUUzBicjVVMllpeEliaTFVdlMzbGNLbUllSlkwU2c4?=
 =?utf-8?B?eUZ5NVhaQU1Gd3RYRXJvNDVnQWI0NlJnbTd5aXpRdjlOMCt5N0t0WlBYclhX?=
 =?utf-8?B?VkRNTEYxZFFrM3U4eGxlV0VUeEhTNnN6d0w4UksxUnVyRFFDeStESlhSN3gv?=
 =?utf-8?B?bVVCZXNhWFRXOC9OS1Y1R2lvUjRaTnM2R1M5bk5DSi9NSGE2c1VBakFXRFZC?=
 =?utf-8?B?SzVaUmtzSVBhbGtBUjRJVWJQQkRaU1ZoSTIrUHZVY3VNOGwyYnFyZXo3TGs1?=
 =?utf-8?B?Z2d5RElXaGhHMVNFRmRDZVoxR0pOTE9UUWxiRjZ0SExBbkVnYTlIV0dUb0tE?=
 =?utf-8?B?Wmp6MVVvckJPbzBGeVhtaG5YOTlwdW5QTnlHa0VqbTgxS080aVhlV0R0RWda?=
 =?utf-8?B?bzMrZlA5R3hoZkwwdmJYMjc4c1dkNGRhbWlDeUdkcFptREZlbXQ1WXE1TFJ4?=
 =?utf-8?B?a0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cec6296c-1365-4be8-bd66-08dc0d185901
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jan 2024 11:29:00.5438 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /Cc6K05P1S3aWHaNjzYQQIKDgtAVxoCtGODycoGX49HwDSBCNNjUsonaF9OZEqp6+PkyeJ9vTpEwdZPte76l11qSxSgpRR+sHDSzkiCypoo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5932
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704367753; x=1735903753;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cFz/jxSvbhr6AQABs9wjstNIo5kSnXmWg8z6k2Z7rh0=;
 b=MQ8AjrDeucabOR7mSUZDgG7S6rKC8kE9xqj6Lur8zj2EZdS+wmhdnxK0
 0DBLbO++ZnYQ2DekBtUOYLoTELEGG6yT4Jg/sawWhaeg8I3Afjb29yfku
 qkn9iDDJ7ksJPe37mfyJ+ETnljxR6MR3hJe7vcT1TTVV2fuOsSEfAxtnq
 F9Bnzgyc11TpM8jFzs3hdMXLdn9Uyy84pdc7J/aHEQZ8oU+oRWIRVfdXr
 dyPB35suTk2SYQ6vxvs0viC9qJAu2Xkx5qWEOiKC2RFSHtOONggJRMdv+
 A2xBT9iD46D4y5Se7zoe0QOSoPqo8LUaEaxSYMcbXEU8TTEQeYnyw9w8F
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MQ8AjrDe
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [linux-firmware] ice: update ice DDP package
 to 1.3.36.0
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
Cc: Shekhar Deb <shekhar.deb@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Priya Limaye <priya.limaye@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 1/4/24 12:16, Paul Menzel wrote:
> Dear Przemek,
> 
> 
> Thank you for your patch.
> 
> Am 04.01.24 um 11:18 schrieb Przemek Kitszel:
>> Change log since 1.3.35.0:
>> - add support for E825C device family support
> 
> The last *support* sounds strange. Maybe just:
> 
> Support E825C device family
> 
> or
> 
> Add support for E825C device family

thanks, will do

> 
>> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> ---
>>   WHENCE                                        |   4 ++--
>>   .../{ice-1.3.35.0.pkg => ice-1.3.36.0.pkg}    | Bin 692776 -> 692776 

[above]

>> bytes
>>   2 files changed, 2 insertions(+), 2 deletions(-)
>>   rename intel/ice/ddp/{ice-1.3.35.0.pkg => ice-1.3.36.0.pkg} (98%)
>>
>> diff --git a/WHENCE b/WHENCE
>> index 06fb7a45aa33..43f3916638b9 100644
>> --- a/WHENCE
>> +++ b/WHENCE
>> @@ -6138,8 +6138,8 @@ Licence: Redistributable. See 
>> LICENSE.amlogic_vdec for details.
>>   Driver: ice - Intel(R) Ethernet Connection E800 Series
>> -File: intel/ice/ddp/ice-1.3.35.0.pkg
>> -Link: intel/ice/ddp/ice.pkg -> ice-1.3.35.0.pkg
>> +File: intel/ice/ddp/ice-1.3.36.0.pkg
>> +Link: intel/ice/ddp/ice.pkg -> ice-1.3.36.0.pkg
>>   File: intel/ice/ddp-lag/ice_lag-1.3.1.0.pkg
> 
> Should the old version be removed?
> 

it is, see [above] that git recognized it nicely as a file rename

> […]
> 
> 
> Kind regards,
> 
> Paul

