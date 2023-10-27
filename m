Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 204AE7D997B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Oct 2023 15:16:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AF7CB4F10A;
	Fri, 27 Oct 2023 13:16:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AF7CB4F10A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698412577;
	bh=TP7XmCu6ER7e3SVcwqMTzk1aJ6img8DcjCtQ+gjlABg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sUrvS4xCTdP9sl8fJAsd6F4Y4eOo9aCvC93pOuRr1Pzp71SR5nXnPsj3td+FW/9Gj
	 8wHfGgBPIhfbxmZFK1QehOYRE/RCsl7eM+m9QhQKxd4/Pw+muHwULFpWd7FG/9YEQk
	 URQprx5bqd3ep9s84RWqshHqHhRy+ASLBO52arbZXZqvw/IyTa0XMOS/D086sXvslL
	 2wGik8f1d5dLaSexsJolFsSdEMKKKp+EdK1sldrLRA7A+8mhVFBxDLJlpQQaUDKDDN
	 O5jUuPVLRAjkTbZFYRMGYQ8zsyd4NlR63Y8DoZRsjdqGhLSNgtOAHqIjlROpIPhcMl
	 l+IaFc5rbj3xA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y20yRLQ5gWm5; Fri, 27 Oct 2023 13:16:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A09C14F12B;
	Fri, 27 Oct 2023 13:16:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A09C14F12B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DA71C1BF307
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Oct 2023 13:16:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A5D034EFB6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Oct 2023 13:16:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A5D034EFB6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mLguu72OIpks for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Oct 2023 13:16:08 +0000 (UTC)
X-Greylist: delayed 428 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 27 Oct 2023 13:16:07 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C8F414F134
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C8F414F134
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Oct 2023 13:16:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="591983"
X-IronPort-AV: E=Sophos;i="6.03,256,1694761200"; 
   d="scan'208";a="591983"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2023 06:08:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="759595444"
X-IronPort-AV: E=Sophos;i="6.03,256,1694761200"; d="scan'208";a="759595444"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Oct 2023 06:08:58 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 27 Oct 2023 06:08:58 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 27 Oct 2023 06:08:57 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 27 Oct 2023 06:08:57 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 27 Oct 2023 06:08:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N+oQwoYs01EitX7QCrE2jgKKG6gGoHlwktUI9QETLEbP2ExEpCHXz4FcPJaqQZzvy4Jc8LpMXSCZUnxF4+tvjscwph3U6lTFPwtyHP85os1LYPNDGUfnGNVUMF8Uy3fyNC1Drv80azGOsBm76JMC9NUOx4Dkqgm4lVnv4ZZIxgg6pW6VLX98R4a9TkJMlJ4rZTqwTv7JhYPKaOUtSLFoZq+cQ/3fYOG6Bd9kruDMEl7jcDkdlMjHr4+gqWULxHerG6beXkZhc2aVtzzgcvV9+dFZvcfIOuXsD8T08ksgbrConLy79LuE+dIH8jV0dKn7EFpbl8/SHjg9J1z7vFflfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yIihVLVnCaDRw5Sg5m4kez3tG/OYTpHvKSLB9tLL2nU=;
 b=loY94WTyWMN7CN0BfeEQTkifLPKdefIkpJydfzZ7WJ4DD/sGAlfe5QXRlpTeTEVZHS5x5ffQTdu23eC11Ij2P9GMKojR/coePeQXutmuKqt0Tf6HwRO/i0UIs79d9Uh+PO9rcY+qs6X88nOwpBTctMr0RbLG/BRlSM/PeOl++H2TIqGHAxeXP8pOloa2/+JEV+ahklREC7CFV+TloK4d0ehAgUm1fFoCol+TTWbEBFXDqcid8hXW/l10py4TBSwqUCUpz/zQi1QJOU9SZ7eieKBN+KI7iuVUTUBRYW6SoRh1QCn5Gc5umRdW7CCiFidqEgJ6dd2RtZgQtRuU3Ksivw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by CH0PR11MB5396.namprd11.prod.outlook.com (2603:10b6:610:bb::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6933.24; Fri, 27 Oct
 2023 13:08:50 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::71a7:70c4:9046:9b8a]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::71a7:70c4:9046:9b8a%4]) with mapi id 15.20.6907.032; Fri, 27 Oct 2023
 13:08:49 +0000
Message-ID: <84e1b40e-8001-4ab1-a883-679fdf01d586@intel.com>
Date: Fri, 27 Oct 2023 15:08:43 +0200
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Petr Oros <poros@redhat.com>, <netdev@vger.kernel.org>
References: <20231027095102.499914-1-poros@redhat.com>
From: Wojciech Drewek <wojciech.drewek@intel.com>
In-Reply-To: <20231027095102.499914-1-poros@redhat.com>
X-ClientProxiedBy: FR4P281CA0132.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b9::10) To MW4PR11MB5776.namprd11.prod.outlook.com
 (2603:10b6:303:183::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB5776:EE_|CH0PR11MB5396:EE_
X-MS-Office365-Filtering-Correlation-Id: a0979b05-faed-4b5d-3911-08dbd6eddc45
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MKp72jKX9afxfy/aIKib5DBeE7bsCP3e9bd7brpnfgEllJ/HTafUZnBjWJGZZg8l5Buc6fkPr3d7vzl/R087eWILMp+uM19d9hOqPb8xZih+7jVZ9gNzE/ApUz3QSKQytQw/aKvWYAYC1riuwn1Lf1SQg1WXfv5V5DvEqNn8tQRDfbX+T0tSU+OsqS4wJ0gYgR7vn7RlC6oav287MkNWa2zHp0bodOWg91/s49DhMP3yGOPcpKgH9VEDQAn37GgcBuBEhSA8Pj6DKPCYkrqjIMsZjkcrD+nObPpx+AAADUSZbYyCAgKnwrzZ0ZN2W+IEM+57QgW+ZyQo62lW8aCoFGn7Tzg+jh/cjjm7Wz/pyc+Uy2T5kIGN9JG8lsF6Xv27RG6WsXf7nVKymEhUkCEEQO/zhSPjmNaFRTtdOTCepvZpbRikh8kX0xslw/0lZ87g7n+JTEhZwX1uFqKNz01APurSEWzROeAvbunL3wPAOloVLuPyJpo3e00oPOkLtAUdrljsrSesWdTdeYFeSzsrOFc8Nkk+OKryrQ0Jx2DW/I+BywDfG+kUiEvh6XV0ihVlaMj3ABsM23E5U2mSUoWeJEBR3qWBXZaRZQ6gS088wvgZ94xgeOu/Co1Bhk/uQhm8gxRAl5iKHNgktsFbVBblmg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(366004)(39860400002)(396003)(376002)(230922051799003)(451199024)(64100799003)(1800799009)(186009)(31686004)(6512007)(53546011)(478600001)(83380400001)(6486002)(6506007)(6666004)(31696002)(86362001)(36756003)(38100700002)(82960400001)(5660300002)(66946007)(66556008)(66476007)(26005)(316002)(2906002)(2616005)(41300700001)(8936002)(8676002)(4326008)(44832011)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M3djekV3Wk9TbndXMFdlS1htOURQaWVWS1g1T1dEaHV1RUZaY21jTWUxL1ha?=
 =?utf-8?B?WndmekZhTGVkYktkRVJ0QVczRktWdFZqZWhTS1FhNSs2SWNOS1ZMVkkzdlNS?=
 =?utf-8?B?QWI1VldSdVd2VDliSFNGN1lNL0d4ZlM3REJFamtYTXE1Zm5ML2NVWE5sdTVw?=
 =?utf-8?B?S0xlRDRMVEtsV0phTVo2dzhmSjFndjMwb3hZS0Q5dEhmWFVSMWRNYXVLU0dZ?=
 =?utf-8?B?WUJMOHp5RUJtL1RMNDNZR1VWRDdWM1ZRb25seFZvUjVpbk96dGM0cXZacWY5?=
 =?utf-8?B?N1FzSm85eU81aGNFUGc5K3MzN1RLVlJwVXFlQ01aNWRxS3pNLzRyZ3BsWVJw?=
 =?utf-8?B?YkFJVEpYSmg3a3hsOVZyUFAyY09uVGVURDlQR0QyN0swVjYyanJDVVA4MmE0?=
 =?utf-8?B?UGtFamR6ZFg1REZxdzdwUGNYQWF2VXlFVTBOSlI1S2dPS0hrQkRPcmh0RURZ?=
 =?utf-8?B?MHVsS2R4MUMyYmdaN2R5VmxZT1g5M0xqTng2ai9UYTJhWXRIVDJrQ0ovYncz?=
 =?utf-8?B?dHdPWWZCbStHUmIvVWxFZTFoWDc0M3Y4Q1RvZDNLYzQxLzZsQXVSOThqZjF6?=
 =?utf-8?B?cE56UFpkUDZDMzAwMllnWHY4NmF3MkVRODNIMEhBS2xudjBFUFdyS01EV3Jx?=
 =?utf-8?B?cExGYWkvUmJuRUlxa25nSys0bjdSWHErOUhzZjIvQXdKM2ppd0wzMm1Fb2xu?=
 =?utf-8?B?WG9JdnY1UU4yRVFseTFQUjVSMXhWdHhQMWFNMjVodDljV3JvaVZ2MDQyKzVu?=
 =?utf-8?B?Y0lhSWF6a0Y1ZmNkUFRiQkYzL1FUanhkbS9RNTJ4NlhZRnBmUWFhSnM4UGVI?=
 =?utf-8?B?WEVNdm1LdVc2NThIWGcxRnhmRU1KUjRFRFRPZENCTnVOWkpmNXZpbFBENlpi?=
 =?utf-8?B?alZDUU9BY3A3b0lKM2tPNUpjOFVGeXdRSVNTQ052bTdhdHVTdjgzcjEyTUtK?=
 =?utf-8?B?ZnpPWjJ5cnl4eVZCaitYYmZ5UlN6QkhJMmJoc0twdFJEbk5FMG13bXZmMVZt?=
 =?utf-8?B?dTd0NkdNam5kcEdMZTJYcmtQb0Y4T0hVTnZzVzUzaEdvMDZyTmdwY0N4SHhC?=
 =?utf-8?B?WTRwbHMySlhTKzl5b2w5UVJ6YmJ6S0owZ2NnSmo0aFBBSGxjeE1wdG02RWFW?=
 =?utf-8?B?bWo5djNrZkhTZ2NRcVdNaklyeFRlVmhYbytEejZLMVRYdUg5TUhrcE1uOEhj?=
 =?utf-8?B?NFNUcEQyOE53UHFQMUxOa05aeUNseDVDS0Evb1UxSjdNL1g1VWtNVmNIN0pi?=
 =?utf-8?B?WVp1RHNZQTRnRWMybGlyc2tPYW5qNmc5NG9vejN3S3ZmeFBFVkNSQ2VMR3Zh?=
 =?utf-8?B?OFRLcEFhcVFsZEptRXEvcnB0RWg3cndrSktXdFExTkdkWWh5UzMrL3IwYVh4?=
 =?utf-8?B?dW9MMmdVQ2Y3UC9aa0dOUktwWjJtcnNFWFV0MDhXWmRCeU1hM0dGbEdRMW9m?=
 =?utf-8?B?a1I4blIyRzFsYVVuUjltb3ZLSytwditibHM2aVp4em1BSVQvRjY1bzJ6U2t4?=
 =?utf-8?B?STl5RnlndEl0bkFpeXRpUmhZWXdtd2kzbGFpelVHZGxZcEc4ODV4bGo0RUhO?=
 =?utf-8?B?VVBrNWlJZk1peXN1cGVLZkZvaWZIbHBvakxFL1dCT2Y5VkpSN0ZXZTV3bnli?=
 =?utf-8?B?c2gwcXlZWFJMem82MmJCTWIvbmpXdjlKOVJMN2xVM2FZSWNTUE02MjRwdysw?=
 =?utf-8?B?Y1BTU0xRUHdJZzUvUHBkVUFCbVJqUGFjMWdKcTZtUGlRQzhGRFJRUlRmMTE2?=
 =?utf-8?B?aEE0aWt3L2NUenlncFU4TFMzd0c3MjYxdEhxeXN5Unk3WklSdjJDQk1wYmJ1?=
 =?utf-8?B?RG5ZVU9DcmNPZVhVQXNBUnFEOFlVNkViTkdUNjFuRExmTWVpL3gzZjlXc3Jl?=
 =?utf-8?B?dC9BNmdBUXIyK3RTY01ReFE3aWJ1YkJWTEVtKzI3d09XQzVYY1poUGI0UEtY?=
 =?utf-8?B?Y2tFdzhkQ0JDdG84ZWpZR1lBUEJSR21SSXhnbXUyeVpMMlJjbnFSODhoWHRp?=
 =?utf-8?B?UFRZcEpJc2lYSmhIOWNXZ1FtVm9rNzJvTmJjdzUwWWFXTHJuMXFPZW1oK0pi?=
 =?utf-8?B?Z2NCcHN5bVFrT09GYnN5Wm92OW1KbXRva2VFV0ozbkE0SjhOcXhxUk0rOXFP?=
 =?utf-8?B?TmZuNUtIbVAxQkRlQVU5RjY0bmE4WDZyclpleENNRzYxZ3UwUVN3d3FxeXNk?=
 =?utf-8?B?VkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a0979b05-faed-4b5d-3911-08dbd6eddc45
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Oct 2023 13:08:49.6698 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Kr/puzpSyFoYOZT0ar+Xr+rM5oK9K2tF0OyGzo0l0Zcy385KkfHAhzJ/UP/9M7YVNc3vZM2m40VPOozyGzk28f1WQXzoUo+YSZcIeLbYqEc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5396
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698412568; x=1729948568;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5k5uDL0N9QOZj6OeM29mUq7ABBiRyshvU7hTY5wYH00=;
 b=e4GoUx6gsSy28nekVbh7nvK0lklo80TlL/mFm2pGhVmj1c8HF1/OF4S0
 WI2VzxHnR298cX+MZ0STHTYTJcaqHJ6TGmicaz8Md4n1fKWUUyg7m+yv3
 278jyM+FYaIV1WT81v0sziZMdvmy0d1v1cOU8g5GjQsTojy1nxSpL/sPb
 IQrpot6xUY7W3dSk5xIlHEuQwKMvFkTzpM65MWb2X7VKrwSspBNLh2GC1
 APtSvxnWxMSuzyZByE8FnGYAeCKdLjoz+ty5MngpD6tGZF5bMyQRdfQhi
 L1KRDGbeNjFm64PBuPBolz+9gM4KHgtQP7Yn+aB46zgqIx1Zbl/oQpfpq
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=e4GoUx6g
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] iavf: use
 iavf_schedule_aq_request() helper
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
Cc: intel-wired-lan@lists.osuosl.org, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 27.10.2023 11:51, Petr Oros wrote:
> Use the iavf_schedule_aq_request() helper when we need to
> schedule a watchdog task immediately. No functional change.
> 
> Signed-off-by: Petr Oros <poros@redhat.com>
> ---

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>

>  drivers/net/ethernet/intel/iavf/iavf_ethtool.c | 10 +++-------
>  drivers/net/ethernet/intel/iavf/iavf_main.c    | 15 +++++----------
>  2 files changed, 8 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> index 90397293525f71..fc8d75a30602cd 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> @@ -1447,10 +1447,9 @@ static int iavf_add_fdir_ethtool(struct iavf_adapter *adapter, struct ethtool_rx
>  	iavf_fdir_list_add_fltr(adapter, fltr);
>  	adapter->fdir_active_fltr++;
>  	fltr->state = IAVF_FDIR_FLTR_ADD_REQUEST;
> -	adapter->aq_required |= IAVF_FLAG_AQ_ADD_FDIR_FILTER;
>  	spin_unlock_bh(&adapter->fdir_fltr_lock);
>  
> -	mod_delayed_work(adapter->wq, &adapter->watchdog_task, 0);
> +	iavf_schedule_aq_request(adapter, IAVF_FLAG_AQ_ADD_FDIR_FILTER);
>  
>  ret:
>  	if (err && fltr)
> @@ -1481,7 +1480,6 @@ static int iavf_del_fdir_ethtool(struct iavf_adapter *adapter, struct ethtool_rx
>  	if (fltr) {
>  		if (fltr->state == IAVF_FDIR_FLTR_ACTIVE) {
>  			fltr->state = IAVF_FDIR_FLTR_DEL_REQUEST;
> -			adapter->aq_required |= IAVF_FLAG_AQ_DEL_FDIR_FILTER;
>  		} else {
>  			err = -EBUSY;
>  		}
> @@ -1491,7 +1489,7 @@ static int iavf_del_fdir_ethtool(struct iavf_adapter *adapter, struct ethtool_rx
>  	spin_unlock_bh(&adapter->fdir_fltr_lock);
>  
>  	if (fltr && fltr->state == IAVF_FDIR_FLTR_DEL_REQUEST)
> -		mod_delayed_work(adapter->wq, &adapter->watchdog_task, 0);
> +		iavf_schedule_aq_request(adapter, IAVF_FLAG_AQ_DEL_FDIR_FILTER);
>  
>  	return err;
>  }
> @@ -1660,7 +1658,6 @@ iavf_set_adv_rss_hash_opt(struct iavf_adapter *adapter,
>  			rss_old->hash_flds = hash_flds;
>  			memcpy(&rss_old->cfg_msg, &rss_new->cfg_msg,
>  			       sizeof(rss_new->cfg_msg));
> -			adapter->aq_required |= IAVF_FLAG_AQ_ADD_ADV_RSS_CFG;
>  		} else {
>  			err = -EEXIST;
>  		}
> @@ -1670,12 +1667,11 @@ iavf_set_adv_rss_hash_opt(struct iavf_adapter *adapter,
>  		rss_new->packet_hdrs = hdrs;
>  		rss_new->hash_flds = hash_flds;
>  		list_add_tail(&rss_new->list, &adapter->adv_rss_list_head);
> -		adapter->aq_required |= IAVF_FLAG_AQ_ADD_ADV_RSS_CFG;
>  	}
>  	spin_unlock_bh(&adapter->adv_rss_lock);
>  
>  	if (!err)
> -		mod_delayed_work(adapter->wq, &adapter->watchdog_task, 0);
> +		iavf_schedule_aq_request(adapter, IAVF_FLAG_AQ_ADD_ADV_RSS_CFG);
>  
>  	mutex_unlock(&adapter->crit_lock);
>  
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index b3434dbc90d6fe..7217ba018f6bbf 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -1060,13 +1060,12 @@ static int iavf_replace_primary_mac(struct iavf_adapter *adapter,
>  	 */
>  	new_f->is_primary = true;
>  	new_f->add = true;
> -	adapter->aq_required |= IAVF_FLAG_AQ_ADD_MAC_FILTER;
>  	ether_addr_copy(hw->mac.addr, new_mac);
>  
>  	spin_unlock_bh(&adapter->mac_vlan_list_lock);
>  
>  	/* schedule the watchdog task to immediately process the request */
> -	mod_delayed_work(adapter->wq, &adapter->watchdog_task, 0);
> +	iavf_schedule_aq_request(adapter, IAVF_FLAG_AQ_ADD_MAC_FILTER);
>  	return 0;
>  }
>  
> @@ -1284,10 +1283,9 @@ static void iavf_up_complete(struct iavf_adapter *adapter)
>  
>  	iavf_napi_enable_all(adapter);
>  
> -	adapter->aq_required |= IAVF_FLAG_AQ_ENABLE_QUEUES;
>  	if (CLIENT_ENABLED(adapter))
>  		adapter->flags |= IAVF_FLAG_CLIENT_NEEDS_OPEN;
> -	mod_delayed_work(adapter->wq, &adapter->watchdog_task, 0);
> +	iavf_schedule_aq_request(adapter, IAVF_FLAG_AQ_ENABLE_QUEUES);
>  }
>  
>  /**
> @@ -1439,8 +1437,7 @@ void iavf_down(struct iavf_adapter *adapter)
>  			adapter->aq_required |= IAVF_FLAG_AQ_DEL_ADV_RSS_CFG;
>  	}
>  
> -	adapter->aq_required |= IAVF_FLAG_AQ_DISABLE_QUEUES;
> -	mod_delayed_work(adapter->wq, &adapter->watchdog_task, 0);
> +	iavf_schedule_aq_request(adapter, IAVF_FLAG_AQ_DISABLE_QUEUES);
>  }
>  
>  /**
> @@ -2340,10 +2337,8 @@ iavf_set_vlan_offload_features(struct iavf_adapter *adapter,
>  		}
>  	}
>  
> -	if (aq_required) {
> -		adapter->aq_required |= aq_required;
> -		mod_delayed_work(adapter->wq, &adapter->watchdog_task, 0);
> -	}
> +	if (aq_required)
> +		iavf_schedule_aq_request(adapter, aq_required);
>  }
>  
>  /**
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
