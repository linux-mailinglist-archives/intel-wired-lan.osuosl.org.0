Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D7E63966366
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Aug 2024 15:50:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8241A81301;
	Fri, 30 Aug 2024 13:50:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lnI1tJkD7thX; Fri, 30 Aug 2024 13:50:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6AA0D8134F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725025815;
	bh=yJmcWuPr5a241X+FEQpplaJdljl0ZC6Bxx6W3qBTy8M=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=E+NELkwGO6s0mtYerbmJxea8SQ5L5sR8DckgbdekGQu/CgfoyuYqWOZe+U+pw8+eM
	 MlJXgrQFROwOe9JDpXhWphx1jSeF6tCmF5rkQsEYCa6YWHttYSsHjTK4n4x2Oci4M5
	 l/+qgdkHecip3pFA7Q608Ybannz0QRUDrydlGsFRuyIsfEKfINnZXjl2ANCKT+W7F5
	 bI5Qtqh6TWAtlEJJeAc6tExUpK+r1YS0xqgS5s/6i29NJdmw7uNIgfie9JG3AwJRIL
	 4J3GzZ5vUGMopTLkbH8Jw4U9PnfHslWSa4Ba8XOUyMMPwCZPjHhWuLBOB95qQl/Ujq
	 VdOaKLwjyLupA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6AA0D8134F;
	Fri, 30 Aug 2024 13:50:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 92C151BF5B3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 13:50:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7E8BA403BE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 13:50:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gIx4VoAsC7Ab for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Aug 2024 13:50:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6B7DD40224
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6B7DD40224
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6B7DD40224
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 13:50:12 +0000 (UTC)
X-CSE-ConnectionGUID: nhoRGZ2oSsmDKEWAlnDapw==
X-CSE-MsgGUID: L7uNeycKRku668dqzDyu7w==
X-IronPort-AV: E=McAfee;i="6700,10204,11180"; a="23832323"
X-IronPort-AV: E=Sophos;i="6.10,188,1719903600"; d="scan'208";a="23832323"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2024 06:50:12 -0700
X-CSE-ConnectionGUID: DgeO69duReaWRtzgxpqzyw==
X-CSE-MsgGUID: aGb6N3xdTs2ZgFi3q0Ut5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,188,1719903600"; d="scan'208";a="94719444"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Aug 2024 06:50:11 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 30 Aug 2024 06:50:10 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 30 Aug 2024 06:50:10 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 30 Aug 2024 06:50:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KHalokO0RZY1zoX8/nKd4Meqi97qZm4bfQg6jmBBcMZCjjuG7xU1Tjm6z2/k+zJTY3lz6OSIdnk6Yek+qsSSsZ0xqcufhL7wwYyFmGdO7m+esRNzQIysz4/pTQ5g8ddqkR20rKgWTwgB9aTxPC3jgmiQcA6tE0PDPJ2PaFv9K3sTawwgHeQV2iGBWBzyAb8sTswifExosbjRDMmHxsVP3Vfwd4EAcuzYEeaau3c8FnQRtuQeAkxMX+tZxLgaDAgtDyMPdIYNNnpS48Cjs2/cSDBuukYZzShKxVOel7J4pNkhmQx+p7sUq0yZ5ASfxk5z/7rlHrzIIjUX8Jpv7/oIbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yJmcWuPr5a241X+FEQpplaJdljl0ZC6Bxx6W3qBTy8M=;
 b=s8KZIFLQc2J5oXbAsefE3Z09bwaQIFwsqkJ77N8+zOlLd69oKa+vYhzL30G2KSgYznVHaEA1bLQ944HCZ71lvsN7/qCKR1ftai81UK2Y6sbVd6LFZH0k5E/Kz16gDYlxWaD6qKtnd6Mv8LlJsp72mqM6ZN6fIDeVDFimaEpjSwLHEkZnfd1/V/OJcbFMUaUeI+1SWxIB2dShiJGk7TSWfmYnXfV7k7l/enzWrgJjVeU08eJDLE11WigFKskFIg/hLnHxLCGFuQtbWw0ZfEfdmh9wP848r1KwCZu5q+ggb2jXYWvp+5ZVBdyr6KjVlxHct9AbPwZ8EEAQ1nIa3ryIqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by SJ0PR11MB5118.namprd11.prod.outlook.com (2603:10b6:a03:2dd::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.20; Fri, 30 Aug
 2024 13:50:09 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%5]) with mapi id 15.20.7875.019; Fri, 30 Aug 2024
 13:50:08 +0000
Message-ID: <d2b7a43f-2a6a-44ba-affa-90d581c7d2bf@intel.com>
Date: Fri, 30 Aug 2024 15:49:39 +0200
User-Agent: Mozilla Thunderbird
To: Ma Ke <make24@iscas.ac.cn>
References: <20240830133325.3439293-1-make24@iscas.ac.cn>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20240830133325.3439293-1-make24@iscas.ac.cn>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MI1P293CA0020.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:3::18) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|SJ0PR11MB5118:EE_
X-MS-Office365-Filtering-Correlation-Id: 463058a9-b02a-4d07-cbce-08dcc8faa93b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZXRZWVovVnkwQ3U2MU5jeC9EYVVKM05CTjd2Rjd6cE1OZ1BYMDRwZXRnN3Rj?=
 =?utf-8?B?TzQ1RDUxYUo4Z2hGUnI5eS9aaTh6Wi9KOThyNUxqWXRVcmRkaXlGZFhNMGh6?=
 =?utf-8?B?aFdudG1qQ0xUVjNYRjBUVDE1Mk5XekJrNnZLeFpWYzZ6TDA2bmlWSEt2cXFr?=
 =?utf-8?B?bUJGeWdKaUszQzUzSTE1YmZCNnRNS29iSzR4S2NqU2pZS0I2VkY1ZDRWTzRO?=
 =?utf-8?B?Y2REVFoyc0tONEVKeHlySjV1SVcvRWxDQ2lsUE00YzUrVjFxRTBZaUVac2pL?=
 =?utf-8?B?b0Z3VlBmVzJSTXVHcmVHVUZ3TWovcFZqcldaeFhQdUZDc2JxWFNVZEEwS0Za?=
 =?utf-8?B?clRkN0EzYmlzUmFMZXdyVmkwRHJzVlpvcm5xSmVzTWhwVWJBcTNHZStnRjZh?=
 =?utf-8?B?VmcxTHdHUG5xVTBiMTBLSUJNS2pHcnVRcU9TRkRzQWR0UTl3L1NsNlc4c3pE?=
 =?utf-8?B?RXhna0wzR21GTXJWQVhDUUg0djRQVHI4YjhqNDFPb3VKRFZaSnl2R1dXcVFL?=
 =?utf-8?B?YnhDTGZTR25YTlB6N05ORk1rdDZzcHljOXd1ekUrQmxiQ04wdWJZMUpyZWM5?=
 =?utf-8?B?YlhvVXlKK2pyZjlGZE1ob1JqQ3lYV0JPcmhVY2syLzJtTkhUbGRQeU9IWkZy?=
 =?utf-8?B?SDBBN3c4K0pOYkVubXhmSTlUdmJUcSs1TmMyMWFnaXgzUnFXcEgyREt4WFRN?=
 =?utf-8?B?RUNvV0JSUTRFLzJaVThVbWt1UjM5MHJ6a21mMnRlUmZhVW1jSHR2NEQwMVNp?=
 =?utf-8?B?aGVOd3RyYjRwczQrYWRuZ09YNmYvUnpMazJONmo4aTNweVVxSmZId2ZuSlRi?=
 =?utf-8?B?ZXo5YmlCVWlWRVB6TEtSVWp6aFNMZlowK2p3c3llUnZ0VnFSNDB2SlNIZGR3?=
 =?utf-8?B?QlNCcUlaUlJiVzlEL3pzTVZaQ08zVTBMMEhtUS9yVTJhQ3RmdTQrQ3JRcDVG?=
 =?utf-8?B?T1pjUnJESmcvVTFmSmNKZ1lKa0pvTFdCY29LVDdoYVl3ckorREFrNlpQcHlj?=
 =?utf-8?B?K2dUSUtMdW5ZM0VVL3U4bTM4VVAvWFBMUHQxL1JRd0dBN096ekJGNURSTlBZ?=
 =?utf-8?B?MUROdFk4aHlwUHJRTUlYQVIrbUtoRTV1amorZkpibGJGQ3VmWm9EZjd0d3B0?=
 =?utf-8?B?V2RWa1IydVloNTRzeXNpSkdFdk1GWGRjOWdvYWJ4cHFIeWdxZmFTRkhaS3R4?=
 =?utf-8?B?NldHQWpSOTFZOXhHRjN5cDZRMjQ3M2RXZXhlQ3lLOUJaN0FlUTVKZWc2YUM0?=
 =?utf-8?B?L1VCSnRJc2U2UHF0bGI1dkZaa1NNcDJSK2pNQ0JuSVdYNW41WEphNG4wRlN0?=
 =?utf-8?B?VHdWMk45N05qVFpDWXpnMG9JV0pxdWpiempKQnh1VjZKUVFPQ0N3WG5Ob3NQ?=
 =?utf-8?B?Wlh1RTFJanRGajJ3aFYzaStLYWc5bGlPdkpNa0hBWC9IaGoyeXd3NVBZOGx0?=
 =?utf-8?B?bTZDZ1RUUkNDeXphWWp0bkYxRSt1MkNQRC9oQjFiOXpKWVBMeGR2cDNwc0pi?=
 =?utf-8?B?K1pqQ2d6cFdpQzJpM0taSVJ0bFZiWE1kb3BtVlhYcmo4TURxaTM2SkM3WldW?=
 =?utf-8?B?Lzd0eFZXcXhKNXRBc1R1Si9pdEZoWnJnS1lEb0U2ZlpuelUxaWU4bzB1N0Jw?=
 =?utf-8?B?MzZKR05LTzFxUEFuS0VBWjNFdkN2MlFnbm53M3Bjb0RTTk1IWTB5TnBUdDBh?=
 =?utf-8?B?QWNQcm1kOG9LckxybGUzQjJJdmRoejRTVDh0SVk5T25FTlFDZjFmd2VVS0Rr?=
 =?utf-8?B?SHUxU0tUSTA3QlJwdWhwMWdOTklkcWh0UCtKQTI1Z1pFTVYzdkY4QWdhWGZV?=
 =?utf-8?B?MVIrM0Mvemt1TngzNmFKQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cWRlYjNYTTduTUtSODZZU2hma0tHU2RMR2thbmNlMjl2WXJPREdPMk42Yk9I?=
 =?utf-8?B?Y0hhSlhDZXo3U1VibVdUYndCMGVXMmh1aFkwRExtM0VuZDFzNTg0TUVyZTdm?=
 =?utf-8?B?NGhOZ3JjWm9NNFJ1U2g5dzBCb2pEZWEvZHlIYzEyQVZscGxXMWNrcEt2Qmo1?=
 =?utf-8?B?VGduZE5FTjRWT2pWcGY2TWtEUmRFT1VHN1M4bWJsdGJZcHdsMWpqNnIyMUtW?=
 =?utf-8?B?L2ZIbjZ3WUpKL21ZZ3dhVlpFSXRSTWltM2tHNFA0Mk45c3QyZThDNVBndW85?=
 =?utf-8?B?enZjY29kZ0ZSMHV1V3BqOXozMEpHSWphSkhOMUltQml4UlFGSG1MdGdlZEhm?=
 =?utf-8?B?eHovSHF5OS8xcUI0ZFMzSUtuaTNzWTNZYWZJcmxwbXBpMGpUTnhlWmxmRFFz?=
 =?utf-8?B?Q0puR2RBMTZSUGRrZ2hhZ3VzVm1TSWkvQjltN1Iza0hzTUFOZ2tZZjUrR01m?=
 =?utf-8?B?N0lPR044REhoaU95VGJBQUtMR21zRStBNEk3aXVsMG1Bc1ZJbmsvclJVUmJh?=
 =?utf-8?B?NjloT2hkTFdtWDFWWkx5ejJnRERKOXdlZm13VTJYaFpNN0prYkN6RVVxRUtw?=
 =?utf-8?B?SVNVSjB0SlN6bXBybi9jZE5NWTdZd2JObUsrQTlNakFiU2oyL3BPcEROeU84?=
 =?utf-8?B?d1BUWDgxc013b3JpalFuK2xYd295Wi9rSjhLT3BFNmxKQXA3eXUyTndYUk5n?=
 =?utf-8?B?NG5IS2p3WHlkRkFyUG5YbVlmNUZjcDZZaFdTUGkyRzkyOTdoSWhML29PRjJ6?=
 =?utf-8?B?US9vdWpWck91S3VVWmQyR3JVNXlvMklRTUpNQlAydzY5b3I1aWhtbThnR2dZ?=
 =?utf-8?B?T3JiR3FwbzJ6RHVhNGtYeUhRTkgzcUlXVFAxZ211UE0xU2RGYXNUMHdCaGUw?=
 =?utf-8?B?dzFacEZrZnc4RGNKQ2NwMEVVdGVwL3JqMEEzUkxiMzZIb2p4eVY5V1JtZHYz?=
 =?utf-8?B?M09SYU9GdmFTTUlkSzJvTENidkNSRDlLNUIyUHFNa253eEJBKzVoS3RYS1dj?=
 =?utf-8?B?MWU0WGlMN0hDU1ljc0xwZk9uK0RqTHBvaWs4elp6ODZtU2s3aVNGK1JoMzJt?=
 =?utf-8?B?b1ZJMVg5dnJpUkpzUUQ0Ky9rRWdpSWo4THloRVp2blFqa0oySDdUSTMyV2hl?=
 =?utf-8?B?T3BiSTd0MU9jcjRLSjBaTjR2WE9lellwOUZ5YnlPc3Rnemh5RWx0Z2x1THIv?=
 =?utf-8?B?QXV2N3c5a0J6QWhrQUowTWN5TVpBYWtQU0VrYXJUWjIrOGNyZHlKNUdXUjFP?=
 =?utf-8?B?THVqR3M5Q1k4aUZqN2cvSk9hVy8xZWhZbFFGVFJOYjBiZVNzcmkyeVNlMnBi?=
 =?utf-8?B?UC8xbFhwZ0wyeWYwU3IyTkw0d0JnRmdDeUZQYTlvc1hPQXpkVm1keTQwS3dZ?=
 =?utf-8?B?YXhmQ0ZjMXJCWU1lZit4OTV4OFZ4WHVkU054YXR1ZlI0eXA2RlcrRGRhQ0dG?=
 =?utf-8?B?WWdOY1IwTnd5bUdRL2J3RzlqS1FERzNvZmRqSkpYOE5IQ29ieTh0K2l4TXFr?=
 =?utf-8?B?THcyWDF1ZXg0clhzZHBhNUVNSWN3Q3AwUGVmN1IwUmpqR2xlbFRXcnZaU2hB?=
 =?utf-8?B?WEpKaE5uMmhNNk5ncUkyTkpQanROT2xEbW5kVGhxVldlaHN3eERMbklrNDVk?=
 =?utf-8?B?bFo4MWhEdzlLLy9PMmJwZGJoTHZneW5rTVJvbTVMNjl4SEJ0TjNiUFl5b2x1?=
 =?utf-8?B?ZzBJS1g4QkF6NlpMdHlEQkFGQU9Oc2ZBR0JLMXhBR3VJV0tVeUhOelQyWnlP?=
 =?utf-8?B?S1ZJc3Mvb3lSd2gxVXc1RjRlNkdZd2ZFM3pWdVExVTdWenFvR0RiOW5ta1kw?=
 =?utf-8?B?Y0JmU2JFYlp1cWVjSnFubTlPSkxvaVZ4bUxIUmROZXBjL2wyeDVrc3hWRWpP?=
 =?utf-8?B?a0JLaUc5YTNlSllvalhmcWE4MStwMFNxOUpyaUp1aWpTM3g3MGVOVG1PMDNH?=
 =?utf-8?B?ai9kWCtSUis2YTRTUkVpZHY5OVdEQmgzdFhrMmJMY2diK1h6L2Q5eTVQQVk4?=
 =?utf-8?B?VDlyTTRMM2p0aDZMY3JrVmRxMjViazQyZEEyU1orTGhYK2QraC9FS3hMVXdG?=
 =?utf-8?B?RVdwME9SR3lPOGFZMUdYOUtqY3JXdWRhZmF2cWxxMUd2b0dhaC96UW5MY1ZM?=
 =?utf-8?B?ak81UUN6NkJyQU0wNXpBelVQZm4yV1BkcVpwdUVJWHFqYU5TRHpsdDdqdG4r?=
 =?utf-8?B?d0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 463058a9-b02a-4d07-cbce-08dcc8faa93b
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Aug 2024 13:50:08.8934 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gebmsEqg1ZdMtapSykxuxj4lwjqlngUifk1YCOU3PKqkskcqCdZjISrl+BHLncUWH0vxm/4g8QtJCIGg/40iViRdEa9woiAp5WRWCTL0Q9g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5118
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725025813; x=1756561813;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dvcKd454qCAHEJ8L+ZiX3pc1gu4iGiGg27/DJdu6Lus=;
 b=V458laKHfOEOBsOzpLcFTsDPftjWgHAzenzOIqaALunmB23S1TGHcfYU
 tzgHu1DdA293sP1b1BzL5mSs5IWDS8qQicELN2Y0xuFHy04lWOVeVwmV2
 XSv1cWRRos6X5PY0Artj/1meGRIYwUmuZQzUQ6goHXuBhQPORudoxkM2z
 pJhXkwF8miGOfaluGhILaVZCHcqJpw2dTDnOTnRy7y/yzOi3LA6VloUUp
 BvNoUoj/RXTe38ROrokbDTDh+Nn5nXMKpfakgbMgFQphJm4ULjhCF88tB
 0twirs5gP/b+DLwJNklwv+anKESIIv2R+3Hc1Q+gsArQceG7EdR0EyIkL
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=V458laKH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] ice: Fix possible double free in
 error handling path
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
Cc: przemyslaw.kitszel@intel.com, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, edumazet@google.com, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, david.m.ertman@intel.com, kuba@kernel.org,
 pabeni@redhat.com, shiraz.saleem@intel.com, davem@davemloft.net,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Ma Ke <make24@iscas.ac.cn>
Date: Fri, 30 Aug 2024 21:33:24 +0800

> When auxiliary_device_add() returns error and then calls
> auxiliary_device_uninit(), callback function adev_release
> calls kfree(iadev). We shouldn't call kfree(iadev) again
> in the error handling path. Set 'iadev' to NULL.
> 
> Cc: stable@vger.kernel.org

You need to add a comment with the first kernel version which has this
bug. E.g.

Cc: stable@vger.kernel.org # 9.9+

(replace 9.9 with the actual version)

BTW usually Cc: stable goes *after* "Fixes:".

> Fixes: f9f5301e7e2d ("ice: Register auxiliary device to provide RDMA")
> Signed-off-by: Ma Ke <make24@iscas.ac.cn>
> ---
>  drivers/net/ethernet/intel/ice/ice_idc.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_idc.c b/drivers/net/ethernet/intel/ice/ice_idc.c
> index 145b27f2a4ce..5db05f54a80c 100644
> --- a/drivers/net/ethernet/intel/ice/ice_idc.c
> +++ b/drivers/net/ethernet/intel/ice/ice_idc.c
> @@ -330,6 +330,7 @@ int ice_plug_aux_dev(struct ice_pf *pf)
>  		return ret;
>  	}
>  
> +	iadev = NULL;
>  	ret = auxiliary_device_add(adev);
>  	if (ret) {
>  		auxiliary_device_uninit(adev);

I don't understand this patch.
I checked net-next, tnguy/net-queue, tnguy/next-queue and not in a
single branch @iadev is used after auxiliary_device_add().
IOW you just introduce a dead store which will be removed by the
compiler. The kfree() above that you mentioned is called only once and
never after auxiliary_device_uninit().
Can you draw a call ladder with the related code pieces how I can
reproduce the issue?

Thanks,
Olek
