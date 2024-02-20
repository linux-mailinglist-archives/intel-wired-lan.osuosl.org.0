Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 739B885C123
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Feb 2024 17:23:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8C3CE81F08;
	Tue, 20 Feb 2024 16:23:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LQCLsFpkVDon; Tue, 20 Feb 2024 16:23:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C823681E90
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708446203;
	bh=NZIjkpvLwGiDOaR16WFijiqmeUJ4cwGPc3+msnyBZcU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Nk3v2yoxyLCxzxLoRFm5RqL2JsqrRt8yoyFURlhKhyjkdkeKG+x/C+ZyKwQhP3sfZ
	 7/80BfH/hgikS7tjdVx9Jeu6/nKdAMoxxuUXsuTVn7qpl6yZJUaaBVeJp6Vfeg5ES5
	 Bm/m0dM0OyWYK6ji9XOu7CSPU9TZQ7YSQgbCcP4tmjDlRDdH9k4pFAiBBl7KU5C8nB
	 cVmnvKtdLneLF1JZy7ltK13NIbmfWyi5qYU3oU4+AovezWxQjOCnSxceg+Ij3nrO0S
	 phfTGMS8F5DqNTZBJ5tIXcG3+p/8gAfLDvsvCq+k0pIComJC92ioEWlIVJ3a0hpJBp
	 1TbHl7m6J7lDw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C823681E90;
	Tue, 20 Feb 2024 16:23:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 22C631BF5A6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 16:23:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0D8D840B86
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 16:23:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SsWzeYtWFztP for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Feb 2024 16:23:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=alan.brady@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D0BE540142
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D0BE540142
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D0BE540142
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 16:23:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10990"; a="13182321"
X-IronPort-AV: E=Sophos;i="6.06,174,1705392000"; d="scan'208";a="13182321"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 08:23:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10990"; a="827177435"
X-IronPort-AV: E=Sophos;i="6.06,174,1705392000"; d="scan'208";a="827177435"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Feb 2024 08:23:19 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 20 Feb 2024 08:23:19 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 20 Feb 2024 08:23:19 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 20 Feb 2024 08:23:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eMSuvZPcpbGXV9HNHL8ovpLFgQa2R+b2i07WvE+Bftlm2ZumCAyLm0Hwksg0Na22sCsHtCxGYrtHNb5LBas1G6F/DnfT2edfVKHHGTY7nPPYdg3EsuT313iZ2YjK6zoeQj2v04x/R9oVb7qTBQakxSg7hLfh1zMQFgSiV5js18XoNCHBS5Tqhk5BStwKjgn5CVYHwsWkl6NXe5BhgBtOukK7jvcvcMswb6E15Cu6iCIkhiFrti++pecAm2RqMsecoMbcnDI2RYYiLEoPm/ycLkDT5TbVqWF1o3pKrnn3GhtRL1DMIgCUActroYwHYHGJxOsOVdar+3IcY0D5ErVluw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NZIjkpvLwGiDOaR16WFijiqmeUJ4cwGPc3+msnyBZcU=;
 b=Vv8e8pJh2lRAXvVnw4kF7EW0AG+1/mUWtcaM429Ubei1XSWB79Aku/oMto8EJLqApS/ZrVi0Y/OuEWDqHTeDrWVs+mWduFTs1croDkZNkGPBCgK0WdD6i8693nvihGehvsJwDMR3HtikEIOJmkXXaqKPUIJwWpAr/bJ6naxkA7/OZkfs7UldSwEV1YqHdmR500I1Gt9huvzmt1I5D3VC63iFzbquQXeqV51n95/0QdgghjUxKE5KFQhZ9GR35sC2PFTmkd6KUtG+NEt41rLYbrQNLiXbu1HXA79Ga6qP/0f0HSB4TsyP74lEslgsbc/rn6nxXpicqWxYWfKS88vaCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5186.namprd11.prod.outlook.com (2603:10b6:303:9b::24)
 by PH0PR11MB4902.namprd11.prod.outlook.com (2603:10b6:510:37::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.39; Tue, 20 Feb
 2024 16:23:16 +0000
Received: from CO1PR11MB5186.namprd11.prod.outlook.com
 ([fe80::a8a4:121e:2b2c:7037]) by CO1PR11MB5186.namprd11.prod.outlook.com
 ([fe80::a8a4:121e:2b2c:7037%4]) with mapi id 15.20.7316.018; Tue, 20 Feb 2024
 16:23:15 +0000
Message-ID: <8e7c3649-c0e5-4660-9068-336518cd07a8@intel.com>
Date: Tue, 20 Feb 2024 08:23:13 -0800
User-Agent: Mozilla Thunderbird
To: Alexander Lobakin <aleksander.lobakin@intel.com>
References: <20240206033804.1198416-1-alan.brady@intel.com>
 <20240206033804.1198416-2-alan.brady@intel.com>
 <22caac00-7a4e-4bc3-969e-fa3655fd9a93@intel.com>
Content-Language: en-US
From: Alan Brady <alan.brady@intel.com>
In-Reply-To: <22caac00-7a4e-4bc3-969e-fa3655fd9a93@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4P223CA0007.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::12) To CO1PR11MB5186.namprd11.prod.outlook.com
 (2603:10b6:303:9b::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5186:EE_|PH0PR11MB4902:EE_
X-MS-Office365-Filtering-Correlation-Id: 81dcf42d-eccc-4e24-5b19-08dc32303daa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KGiSGLC45Qy6vW9VIMR5AXSpEdbq6casnJtZmjZheH1bP3gEeng+Yd49dYVwJXW3Ezo6pxKgvIIL4XD93VVkp6vMbkJba7XBwTzG7ks07XD+h1YyBECUmgLhDuwRv4dVHRVQMkf07ftfIVdon7weDTRUGS4ll2MQEZ5+4+4n5569TsMCaXpO891AHWLx5wHyiAx0FgKbB8NqX2DjoRRIb5nwM8SnRjteEIX0Hm/qLvSog/rxoS8MgUaGmrbxjC3UFEbylZrjpbBsa8T7/mhY48OT1c1U/JRZW40iMSpmjlOg1qa9h7Ub/KsL0JUgeOnTnnQI/48+ZJ2Hent5ZMSbNZ4W1+EzWBzrUtzqnjmuwB1pshgB1G71IEEhUc+nQG+BnR0cHMSKs0LLHprbYz1jrYWZIG9uTlcaryp335wIXabS25fqgxBmRWnAm6s73MoYumYClPVAt8F/n5ufw5SUkR4ovp9AH3XLg0qudzEaIoGtpeEMg4K+70d3/f3lb2qaepcvQN+xwjWn0aEWBX1brLtfw0jsI81NnDkTFzhi7fA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5186.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dmpKck14MW5Pb2N2S2FKajJOaWg2SWp2dEF5SFh2ODV1U1NSd3NpUlliZkti?=
 =?utf-8?B?RVZ1LzBDMXZyVjZKTWNZK1BsY3BEcjlrYWpldWpQanBNTWdYUVJ6ajVzb0dG?=
 =?utf-8?B?bzVTWWQ3UW5yUTMrbHBrTHRFbUkrMDRkdUdCOHVORnpGUG5MZjZZWHVqajY5?=
 =?utf-8?B?ZG5WbDAxZnZCdVB6R1VZVkkwc25iaXRZcGtZUUFDWHFZQ21DQzF6aDZZeEZT?=
 =?utf-8?B?NG1JdTk3Y09RemJmbjlJdlB0czYrZXNBYXVhNklMZ2F0b205OUw0RzUyazJk?=
 =?utf-8?B?UnBHSm5jZzA0ZXdrUmZSWWoxdGxDaldGNktDQTY3dm0vaTdOZzJtWW5OYXNG?=
 =?utf-8?B?N3lwcVJCWmY3THI0U2RjY1lJeS9BVW90b3RzZjM1OVlsU2ZtNmh2cmh4YW0r?=
 =?utf-8?B?Z2gwMmdkSm5xak9iaCszY29QMW80SDB0R21NL2pnQkVoOVNOUUVrUC9FNFg1?=
 =?utf-8?B?cTBSSFJBbmdQci9jcWlXTnhXUkExZ2xqNDA5WlBVRzZPZmRSZnJtNHY1SUMv?=
 =?utf-8?B?eGZ6aDVIWFFkWW50cTJqY2ZsSTB3b2Urend6T2REZTZMS0ZDY1MveTM3MUF2?=
 =?utf-8?B?d2VkaTJZTERDQlVMb2xrRWtUelROUEdGOThJZ3lHaU1tVC85akN2NFZnMGZ6?=
 =?utf-8?B?enpkMEZ4SWxzRzd0TjdUUEF6SkExZWN3MUdPUVNibG1uQ2t0aU5IV29WWkQ3?=
 =?utf-8?B?TzJzc2RiK3U1TEp5NFpzSGJJZ0JoeVpyQ3hYWENFc3U4Rk1teEtOeU10bzBG?=
 =?utf-8?B?WkF4Q2VKZCtrc0NtMHpRbTNyVk5BRDhiWURsM21xbk5NY0FpMTZYRmdpcFNI?=
 =?utf-8?B?aDMvM05BSGJDRWRhRFIyWlhoNnhLWUQ5a2ZnVzJGbE1Ib3JucW10UEMwVHdN?=
 =?utf-8?B?ZllFWjRiZ1ZaaUFDZGpPMHRhWVRVeXBQSUJXRHA0bCtiZ3duOVdzVC8vaXEw?=
 =?utf-8?B?NSs3cWUxT3F6K2hIS1hOdi9kWXU0TXBsYjJvK0NQUDBSL2FWd01Fc3F2QUhu?=
 =?utf-8?B?Mjc4dE96YktQaElncDNBUGNNaXFuMDRPVFVpZFA3TkFydHI3VlI1YlZnTnhK?=
 =?utf-8?B?VzR1OVBmY05ZNVNIVC8yd3lNTTRUU25vcU05c3RlWGwxQ1VOSnBSRkxOTlhV?=
 =?utf-8?B?VGNtazZuZEJ1dmRvOXpobmxsck1BS0lVeURTUlEyM1U0bk53bEdnMExIZUIr?=
 =?utf-8?B?L0x0NWUxOThsUVhPR2xGV3JBazJwVjg4OGFQenhPaUl2SW51YktSWTlTWi9Y?=
 =?utf-8?B?VWtObkR4bk1JUGFLRmJydXVHSjh3L1BFV1pTUkNBM3hWS0UwUlZFWldCd25W?=
 =?utf-8?B?TzlubHgrSnlKdG54LzlmNlpUNUNPcnN3Yk96b1JGRmk2clJjRkVlRCt3Smpi?=
 =?utf-8?B?SFRQK1puSVkvUm1tQlVHUUJYbE1uM0FsUE5hTk96VDBkZkd6RnRrS3BWdVZK?=
 =?utf-8?B?a1VnYWg5NUtHVlYrTUJucnN0ZmlNQ3dyV2ZkRG9HamtZQ2p0S3lKN1RZU1Bj?=
 =?utf-8?B?dXhxSUQxaU5aNTR3OFRjeElCalo3bVhjME5PaVRLMjJPYStiUmczWGZRYkMv?=
 =?utf-8?B?dUo0REZ3b3JMVFJnNmRyTmo2K1dNL3RXZnRhL2gzVUZPQW82eEFHc2hYQTRY?=
 =?utf-8?B?Tmp0Y3RlNTJJa2FZblgyRVNWOE11TzVZZ1pTd0tsTWlqcUhSWXpUNVBDckF5?=
 =?utf-8?B?MTFYbEV5UytUYkRMaG0xTXRZVTRZbDRoT2xmaW9LZGFLRUNZdXlrc0NvTjBs?=
 =?utf-8?B?cWN6VWZxT1hzWU5nTHg0U2F3d0xQM2RvL2xmOElRVlROMXcwUDJlNWtxZFA5?=
 =?utf-8?B?T1VkSFJ0bTBYRGlPakhoZHBIMUlNRnl1K3F3UmcvaW03SjhQelJqYTV0dU4x?=
 =?utf-8?B?ZkQ3MUlucnI2a05aQlRuczV2ckJBaG1hbHlFdnlEMmE1cG9YWHJWZngvZktJ?=
 =?utf-8?B?Z25PNm1nSTMvcE1XYnZxQnVOZEx5VkF3Tldpc0V4eWc5VWpjTno4RDZWb2tW?=
 =?utf-8?B?Y0pHR2RCdFZLS2MvVTh3akFoeVc1OEJ0MjNqM2xnSlNINTFFUG12WU9WeDZP?=
 =?utf-8?B?MVA3QlpwMlBpQ1Q4ZTMvK0pDUndNeUZxTlEyZGh6UlM1YjBoVDJRd1BUeVRQ?=
 =?utf-8?Q?ufB1qefaOO+6Jd+aVp2uLB50Q?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 81dcf42d-eccc-4e24-5b19-08dc32303daa
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5186.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Feb 2024 16:23:15.5330 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: taZl8UdNS+FjXiincyOJUggWCguBVrjIbclHhp707n/sYJM314fXsTS0cMgUa82w/a98oQaMc7uuEn8YZHiyLA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4902
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708446201; x=1739982201;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rW+EkcCIBlDcQ2lPl8+loh1BgdMD2KMkno7FmwEzT2w=;
 b=hN29TMqqR/HTl9UEdsLwDOqwWTrtf7MwKqlp1ysA3GTdxpnDZRLaREPT
 YODfw93Bq9TOp5lxGhKVBYlSoiCWxjklDHIR2YKPfjFOGnTZAsgBTq/of
 wyEvSRI2THf+V7AJW7yi9OVPfh/orQphKXCmmpsvJ9kE3ahgvcb4bFbUL
 C/ueZV/dq8g6LNWNZ2RAx0zuSPqtmnZJFJqZNR7kmloDbI9QzTxl3RN2S
 STvfol2WowybDxSVouY3TEsUkGzo+YIhR3Mlqp/AoAQTR0CMMdRU3celD
 el/IsM6ayswvttJ2GqVROEg0U6z6xI6Os5ecmQMu3GV5ZsZJPpNbSgBeF
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hN29TMqq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v4 01/10 iwl-next] idpf: implement
 virtchnl transaction manager
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
Cc: willemdebruijn.kernel@gmail.com, netdev@vger.kernel.org,
 Joshua Hay <joshua.a.hay@intel.com>, intel-wired-lan@lists.osuosl.org,
 przemyslaw.kitszel@intel.com, igor.bagnucki@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2/20/2024 6:30 AM, Alexander Lobakin wrote:
> From: Alan Brady <alan.brady@intel.com>
> Date: Mon, 5 Feb 2024 19:37:55 -0800
> 
>> This starts refactoring how virtchnl messages are handled by adding a
>> transaction manager (idpf_vc_xn_manager).
> 
> [...]
> 
>> +/**
>> + * idpf_vc_xn_exec - Perform a send/recv virtchnl transaction
>> + * @adapter: driver specific private structure with vcxn_mngr
>> + * @params: parameters for this particular transaction including
>> + *   -vc_op: virtchannel operation to send
>> + *   -send_buf: kvec iov for send buf and len
>> + *   -recv_buf: kvec iov for recv buf and len (ignored if NULL)
>> + *   -timeout_ms: timeout waiting for a reply (milliseconds)
>> + *   -async: don't wait for message reply, will lose caller context
>> + *   -async_handler: callback to handle async replies
>> + *
>> + * @returns >= 0 for success, the size of the initial reply (may or may not be
>> + * >= @recv_buf.iov_len, but we never overflow @@recv_buf_iov_base). < 0 for
>> + * error.
>> + */
>> +static ssize_t idpf_vc_xn_exec(struct idpf_adapter *adapter,
>> +			       struct idpf_vc_xn_params params)
> 
> Why do you pass @params by value, i.e. whole 56 bytes per each function
> call instead of passing it by pointer -> 8 bytes per call?
> 

Not for any particularly good reason. I will fix thanks.

