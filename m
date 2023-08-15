Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DE2877D158
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Aug 2023 19:51:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 84F5540516;
	Tue, 15 Aug 2023 17:51:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 84F5540516
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692121875;
	bh=Asvdp0MZnqjZZQHLN2eMPZ0MNL+/rio5yTHypXbk3mc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=EBby4AF/Gx79vdg1MQ8Kdbg38klZfAXBsGK8Np8ZTRVsh6zRebWSlGqVvj3wne8c6
	 TxIZWY275hnSXqkl/TsgzvjvQEhCMMGndOv244pMdCh5rdG3ucbnTKzC9rz8Ov6cZw
	 GEYkrWG625YcWaOUxBxkxz2RzPj5QTQbZtkRcuehdjlohXmxGFgFmEpeEDcu83408m
	 qIyw7Q+0CaXRu2TKLXGRGqQfl7o8R592DPyrSDtu1MkiwuxS2XRg5gwRSicHHAFkqo
	 pRIJEHDdZuJUhpKG1Pwny/qIlwRJQhh6I9CPSHiaca5UuizUAflGftP8CAXQk8qEps
	 93/QuYpr38Yyw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YdjOLJDN4cas; Tue, 15 Aug 2023 17:51:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 56A8E404BF;
	Tue, 15 Aug 2023 17:51:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 56A8E404BF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8658E1BF25F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 17:51:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 58BB641886
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 17:51:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 58BB641886
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tosEhJETATbB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Aug 2023 17:51:03 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 382A84187D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 17:51:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 382A84187D
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="372337518"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="372337518"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 10:51:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="710813348"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="710813348"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 15 Aug 2023 10:51:02 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 15 Aug 2023 10:51:01 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 15 Aug 2023 10:51:01 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.48) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 15 Aug 2023 10:51:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DQp0GYp0CzF3DBaPdeigfSaJavYwSa1c81b/1KLCEMyQlT1yI4uck9o1s8+DalcUCzmGn+VUsrEJExG6exguyXwrSXJ61wnGvLyLVFeGtJ70EKQ4OGJ2vV39rmrVNDIraK0+6QRxHuStArFUhEAQD7BAPvONEI+xfpAzlBpcG/gA2YOWMzOlX0U63OTYkm6PcfIz+zFNajK6pFkCTGfUqQAKyC7X371IPUqM0HwATpD5kF/mrLK9Qy7dMad29r6/8I7VkKJEQ/t6m7y3JFJSxs5hoDbf74kujm8vzeA7YQi5O5CV2bQ+4OsDvgjS96Kn3pshvrVq4OYQbXtCvbEl9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XLhjrOSCr+l6+bTw35A5xFPOmFMr6HjzhX/dn+ReYMQ=;
 b=axiXb6ju0PpqkFPfZnkkuSJZfjEHWzDbrCqTd4cLxNsNlk0cDnvRX8FIy0dvghzJdBcHDRhuCUeIWsI9kx8iyoagrH15Snb/XGaApuaX0loQ02FbKfOTOcYF/v6nZJzvBusHQ7ANyn4Shhi7AJfx/1CJBQdxK3FsjVrXGBaACl8Ga/pbo5jKpVGrrNszhe1qsdWnJQIasJdFJeu7R4SSkU2c+KVnuJ174jRIu7/LcvBpyYqfDVavaOqTKhBnU65+vSOp9tSvT+i7mhp2ipNu9QfZ2UZS0oc6ekrUNIz3niNwMSgIj+10L6G9OUk4izYLMiia+M3HRpA20MYrp6JN7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by DS0PR11MB7577.namprd11.prod.outlook.com (2603:10b6:8:142::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.26; Tue, 15 Aug
 2023 17:50:58 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468%6]) with mapi id 15.20.6678.025; Tue, 15 Aug 2023
 17:50:58 +0000
Message-ID: <0e95cae9-14e8-a2f1-f3c4-ffe897ce3bbe@intel.com>
Date: Tue, 15 Aug 2023 10:50:48 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230814170640.1642287-1-aleksandr.loktionov@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230814170640.1642287-1-aleksandr.loktionov@intel.com>
X-ClientProxiedBy: MW4PR02CA0006.namprd02.prod.outlook.com
 (2603:10b6:303:16d::12) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|DS0PR11MB7577:EE_
X-MS-Office365-Filtering-Correlation-Id: ac53fd07-98e1-43e2-f89a-08db9db82eac
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Q13nGIOu0ihXk4b64C29RkMTeVa5hZum6dXnbD6tFjr78O6MaiEDoRXp8GD1xKocexhmS/xxGh0GER9zJyi1GiuYeXhElu5ABH+HaOtUzdoP2hbnSclIYzoAye0uFE2CtZSTLCZGMOsggq7MojaWOy9lo3zgXlJuOdkaHtK64DMLuD4B6uw2n8hBCe1cCXj0Pw6fJhrsyDofJN1UMhRWiSdwQQTfC7sgqFWlmylOhsihA16U+PJN4YeGrVyVGUjCPAt8z5u0/vU0nrLnp9eWX8pc6ZLwGIccRBB4v8OrJVxK0kaleFUkF9F9LA0Hhtfkwaw6OZb41vZsv1pfISSF57snSpFTxpMx2VT+X+gWgjxiCRJMia7E+JJIwtq24I2UTneI5bj2hUMSWLs3CsTDA3KB9fdmLGJyXdpEJELBarfSQuT9SdoRQy164ZQ7Uy80jmFgQrJOvdD/2a+lvaYvFRUN5MrQB2PhxIoCxrmnx2PSa5g8jMDGW7+gQJqe6BTFOe5I+TyHiedCQ19CmGHsmMeBLWilw2S6ozH3bt/2hn5zuKrZLEscz6YlE4APck353n6IQFjB49v6IpXjapZxazyqxIZL1f3qlKLfvlzLKVDWVLtwvbqzGbKAVAL285/pNM0Jo8TEnR/QRuU64kDFSA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(396003)(346002)(376002)(136003)(39860400002)(1800799009)(186009)(451199024)(31686004)(41300700001)(8936002)(6666004)(38100700002)(82960400001)(5660300002)(2906002)(36756003)(86362001)(31696002)(66476007)(30864003)(66556008)(66946007)(316002)(6512007)(478600001)(8676002)(83380400001)(6486002)(2616005)(53546011)(26005)(6506007)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bzdiRUdETzNZbGEwbzVkck9mRVJlRGMzanU0ZnlnNHFJRkhpZTRhTDRYTm94?=
 =?utf-8?B?Y2ttSFJMZnZtcXJLNUtoZUVXRUpWSFhucWV3VlJFR2ZqMDVvR3lkQS8xRmpJ?=
 =?utf-8?B?cHBGWndRVFVrY1FzVVJPV2pBVDBOQ0RqUGlMS3N5cktSdmJaTlp1aVR5R05q?=
 =?utf-8?B?VURwd0F1ZDhmTWFJN0hwMVdybDFwcVpONjNnSFNGa2N3Sm12bTFRazBjTnVr?=
 =?utf-8?B?OXlIdnRHdlJjYUdDU3YzY1Bpd0JBQUdCNzBYVjcyL0V1aFc4azRPc21QT0JZ?=
 =?utf-8?B?T29RcmtEQmplaUFHa0ZlTmNFWGlhKzZGZWZsbVdrc3Vha3RLOGZKcm82bTRx?=
 =?utf-8?B?WjdqMloyalpUMTFjek11Wnd0cnBHQ2RDUDM5em43T1ZCSFl6dmhrMjA3anFK?=
 =?utf-8?B?SnBKSWlyUFdrTWFTa29Jd2daSENmS201VXVBZkdaaFdLZ29ja3pLM2tFRzda?=
 =?utf-8?B?MmVMcXlkRE0vV0VPQ1ZTSHhYWHo1Q0M5UFBiaDFpT0F5UEtNSThkQUVxZDFh?=
 =?utf-8?B?cS9ONVdoTGVZRk5ncVo4MFhmTm1JU2g4RncxVnBvMUtiS2c4RC9USmdIMExE?=
 =?utf-8?B?T0NTRW1aUkF2WTNySGxxcHNVR2dPTVhzaUlhT0lpcjBDSENsaXV3TndDT3oy?=
 =?utf-8?B?aG9qb0pvaDhITUFyV1U5VHNUTG12Wnh6cmlXcm9sMlQrMDgxSUFVZU5HTy9y?=
 =?utf-8?B?Qzd2eHZ2KzlmQnFWNjVIa1Z6K2dhRThmbmpQRXcreUN1WUxlVnZBc3I2UlBC?=
 =?utf-8?B?MUFGRzVqSkRwZ0xOZ0Q2aE9ORXl1dzBNckVzNDh2M0hIeDJ1bnN4U3VOdTFV?=
 =?utf-8?B?bU9hL2tXUDEydWt3WEhRZ3JodTE3eDBLdDFmNmlCS0c4ZVpqaFlQRmVtaUJS?=
 =?utf-8?B?QzlEOGlLa01SdHpHTWtzd3cvTDBEbG9lKzYxT2pVQzRHMjRpanNJL1l3Z0No?=
 =?utf-8?B?V0dPV1ppbXAxaVNRRi9BR2lSbmxVUW5RUlpPeFNpNDMwMVQ3OWhzZlhiM3NB?=
 =?utf-8?B?ZGRaUzZiUW4wL2F6L0JQZGc1K05HU01hWVVnVkNVeDBSOEdUTHQ1QW1BT25S?=
 =?utf-8?B?dWgrWndQaEtvU0QxYTNLOGxWNE9sYVBSRm9tU1htc0hsYUtudXI0WGc0N1ZV?=
 =?utf-8?B?TndQK0o4UzR3WnpGcDU1ZGpKb09YZVZZY0hqekhxMi9RWGZxbmRpWEowVk4w?=
 =?utf-8?B?ZHFlcTRDbGhUTW1SNG42WllSVmxjK1pNUmNHN21aNDFOSkhZK2JYb3FKQkZ5?=
 =?utf-8?B?ZXZMQnNLTW01VUM5V2tLcVNEMGZkRmNwRWdodjRGb2IvVU9IRW1pdmtpaVJt?=
 =?utf-8?B?cEZnQ0kwUDFpNlR1c3FYQlcxbVFFODhBRVZ1Y0tsSVNEdkZpOEE0Y3UwQ0Mz?=
 =?utf-8?B?ZlkvY0cvaW95TVpvYlVlRjQ0K1NpK1BudWZ4aVJKenlseDdXcUR0VW5sYmRH?=
 =?utf-8?B?R3dib0ZPRVh1bFZVK1pSaUswVFVud3N2L1U2NmdwM25qWkNhb2hWZmJNSXBC?=
 =?utf-8?B?QmNmQUZZK0x3RnNzdGxjRjEwcVdKY2FTM3hvMnVxais0QklTQWdKajdJZUFH?=
 =?utf-8?B?T3Q3RHpNTnk4S0xTOGNVQzFyZHpXUStOZzVEZjFXT2NCV0NXaUFzVW51WTg5?=
 =?utf-8?B?WDRVeVdqaHFjQW8vaSt5TWVrY2ZNaU1UNzNZb0djL2dSdEJGYmpjRVpiOVlw?=
 =?utf-8?B?eTZkdmVjRkRLSmlPVlNzSE5KMTdmWjlVRGxkSUo3N0tacXpnR0dSWVNJUXdQ?=
 =?utf-8?B?WFRLYm5rU1B0cUhTdnBsTG9qZEp6c1hzeW5hOXdpd25wOGlPbHZFeFQrUVRq?=
 =?utf-8?B?TWVqa3lNanF6THl0RWN1NXFQWmhmcjNCdnJQNGo2Y2hwTityYTBjU1dWNFdC?=
 =?utf-8?B?NEJ1aFhDVXh5Yk5hSGMzSFBqcFlkZHE5dmhiNng1MisvdDV2N1JLU3I5QzJB?=
 =?utf-8?B?TUovVm9XenBJd1IxcWxpc2ZUeTFJVWk3YU9YNVFhSWl3bXhYSm5ZN0tZTEtP?=
 =?utf-8?B?MFh4VXdPcEJIWWZTOVF0UkFjVEpSUkl2ajUrT0tWcERpRmpyNzE2aHhwaU52?=
 =?utf-8?B?azRhNTZ0K1ljNUxlVHFwY3hkRlJDT01xeVR5NXRZWG8zbzkvOXlFQlc3NG51?=
 =?utf-8?B?R1VlSEZvYW5ZUlZ3cFpNZmJybnBaSS9tUVNCMmMrRWUyRGM1VUdvME9VUVpu?=
 =?utf-8?B?NGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ac53fd07-98e1-43e2-f89a-08db9db82eac
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Aug 2023 17:50:58.7470 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /Q6D6BkoNEnH+IT4IEkchgXDZWClUcLeYnp8FIm7JAFltfBRz0fuaRsMTV7Q3Ml07fDZ9XRkoFuIkLgfuciuwkBm/oovFG7l6hISKJXqIWA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7577
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692121863; x=1723657863;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=KOFCEWLWkDWxU6cqArZZd22YKwyOgTFgUVliZhOEnOM=;
 b=XHxDbh0mnohp0S7WjV1V7z86seKzsrlW5FYBVWx/54HmCoTW3ERIAuDN
 DZXS94VqpJ2+r8cghT6Y1lo7HCvfm8vKPvECfjwud/qPx1YZxXh4IzDr/
 Bw6MUSiQfDdtuGYxXENkTMkpaTR4pgtXqj+yKrB/owjjs9pV/bReIrdqA
 lmICovrvsJAytApyMFGKtptl8XG7LIgFvD902ugp3340kYJ1ha2i2uJ0V
 eLA/Dy2Hc+TwWNp+5/Ghj6tMs/9Ci4JuIEeMbrbFpjQaDlurzW6oE6eF/
 emsAySFUkpCRX9Rv0TlgVg3X5GUIDc6tVNsuELViAIyiWLweVLy7OoyLW
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XHxDbh0m
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] i40e: add tracepoints for
 nvmupdate troubleshooting
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/14/2023 10:06 AM, Aleksandr Loktionov wrote:
> Improve nvmupdate troubleshooting with bpftrace utility.
> Add 'stable' static tracepoints to decode nvmupdate commands compatible
> even for future driver versions.
> Remove 'static' from eeprom functions declarations, make them public
> to enable dynamic kernel tracing and profiling.
> 
> Example:
>          echo "i40e_*" >/sys/kernel/tracing/set_ftrace_filter
>          echo "i40e_*" >/sys/kernel/tracing/events/i40e/filter
>          echo 1  >/sys/kernel/tracing/tracing_on
>          echo 1  >/sys/kernel/tracing/events/i40e/enable
>          ...
>          cat     /sys/kernel/tracing/trace

checkpatch reports multiple instances of:

CHECK: Lines should not end with a '('

and it has clang issues:

+../drivers/net/ethernet/intel/i40e/i40e_main.c:10854:6: warning: 
variable 'ret' is used uninitialized whenever 'if' condition is true 
[-Wsometimes-uninitialized]
+        if (test_bit(__I40E_DOWN, pf->state) &&
+            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
+../include/linux/bitops.h:61:29: note: expanded from macro 'test_bit'
+#define test_bit(nr, addr)              bitop(_test_bit, nr, addr)
+                                        ^
+../include/linux/bitops.h:49:2: note: expanded from macro 'bitop'
+        ((__builtin_constant_p(nr) &&                                   \
+        ^
+../drivers/net/ethernet/intel/i40e/i40e_main.c:11129:32: note: 
uninitialized use occurs here
+        i40e_trace(state_rebuild, pf, ret);
+                                      ^~~
+../drivers/net/ethernet/intel/i40e/./i40e_trace.h:48:69: note: expanded 
from macro 'i40e_trace'
+#define i40e_trace(trace_name, args...) I40E_TRACE_NAME(trace_name)(args)
+                                                                    ^~~~
+../drivers/net/ethernet/intel/i40e/i40e_main.c:10854:2: note: remove 
the 'if' if its condition is always false
+        if (test_bit(__I40E_DOWN, pf->state) &&
+        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
+../drivers/net/ethernet/intel/i40e/i40e_main.c:10846:9: note: 
initialize the variable 'ret' to silence this warning
+        int ret;
+               ^
+                = 0
+1 warning generated.


> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v2->v3 apply on dev-queue branch
> ---
>   drivers/net/ethernet/intel/i40e/i40e.h        |   5 +
>   .../net/ethernet/intel/i40e/i40e_ethtool.c    |  30 ++-
>   drivers/net/ethernet/intel/i40e/i40e_main.c   |  20 +-
>   drivers/net/ethernet/intel/i40e/i40e_trace.h  | 212 ++++++++++++++++++
>   4 files changed, 256 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
> index 6e310a5..d48f9fd 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e.h
> @@ -1170,6 +1170,11 @@ u32 i40e_get_current_atr_cnt(struct i40e_pf *pf);
>   u32 i40e_get_global_fd_count(struct i40e_pf *pf);
>   bool i40e_set_ntuple(struct i40e_pf *pf, netdev_features_t features);
>   void i40e_set_ethtool_ops(struct net_device *netdev);
> +int i40e_get_eeprom(struct net_device *netdev,
> +		    struct ethtool_eeprom *eeprom, u8 *bytes);
> +int i40e_get_eeprom_len(struct net_device *netdev);
> +int i40e_set_eeprom(struct net_device *netdev,
> +		    struct ethtool_eeprom *eeprom, u8 *bytes);
>   struct i40e_mac_filter *i40e_add_filter(struct i40e_vsi *vsi,
>   					const u8 *macaddr, s16 vlan);
>   void __i40e_del_filter(struct i40e_vsi *vsi, struct i40e_mac_filter *f);
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> index bd1321b..259301c 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> @@ -4,6 +4,7 @@
>   /* ethtool support for i40e */
>   
>   #include "i40e.h"
> +#include "i40e_trace.h"
>   #include "i40e_diag.h"
>   #include "i40e_txrx_common.h"
>   
> @@ -1848,8 +1849,8 @@ static void i40e_get_regs(struct net_device *netdev, struct ethtool_regs *regs,
>   
>   }
>   
> -static int i40e_get_eeprom(struct net_device *netdev,
> -			   struct ethtool_eeprom *eeprom, u8 *bytes)
> +int i40e_get_eeprom(struct net_device *netdev,
> +		    struct ethtool_eeprom *eeprom, u8 *bytes)
>   {
>   	struct i40e_netdev_priv *np = netdev_priv(netdev);
>   	struct i40e_hw *hw = &np->vsi->back->hw;
> @@ -1860,6 +1861,8 @@ static int i40e_get_eeprom(struct net_device *netdev,
>   	bool last;
>   	u32 magic;
>   
> +	i40e_trace(ioctl_get_eeprom, pf,  ((u64)eeprom->offset << 32) |
> +		   eeprom->len);
>   #define I40E_NVM_SECTOR_SIZE  4096
>   	if (eeprom->len == 0)
>   		return -EINVAL;
> @@ -1874,10 +1877,12 @@ static int i40e_get_eeprom(struct net_device *netdev,
>   		if ((eeprom->magic >> 16) != hw->device_id)
>   			errno = -EINVAL;
>   		else if (test_bit(__I40E_RESET_RECOVERY_PENDING, pf->state) ||
> -			 test_bit(__I40E_RESET_INTR_RECEIVED, pf->state))
> +			 test_bit(__I40E_RESET_INTR_RECEIVED, pf->state)) {
>   			errno = -EBUSY;
> -		else
> +		} else {
>   			ret_val = i40e_nvmupd_command(hw, cmd, bytes, &errno);
> +			i40e_trace(nvmupd_read, hw, cmd, ret_val, errno);
> +		}
>   
>   		if ((errno || ret_val) && (hw->debug_mask & I40E_DEBUG_NVM))
>   			dev_info(&pf->pdev->dev,
> @@ -1943,7 +1948,7 @@ static int i40e_get_eeprom(struct net_device *netdev,
>   	return ret_val;
>   }
>   
> -static int i40e_get_eeprom_len(struct net_device *netdev)
> +int i40e_get_eeprom_len(struct net_device *netdev)
>   {
>   	struct i40e_netdev_priv *np = netdev_priv(netdev);
>   	struct i40e_hw *hw = &np->vsi->back->hw;
> @@ -1952,6 +1957,7 @@ static int i40e_get_eeprom_len(struct net_device *netdev)
>   #define X722_EEPROM_SCOPE_LIMIT 0x5B9FFF
>   	if (hw->mac.type == I40E_MAC_X722) {
>   		val = X722_EEPROM_SCOPE_LIMIT + 1;
> +		i40e_trace(ioctl_get_eeprom_len, np->vsi->back, val);
>   		return val;
>   	}
>   	val = (rd32(hw, I40E_GLPCI_LBARCTRL)
> @@ -1959,11 +1965,12 @@ static int i40e_get_eeprom_len(struct net_device *netdev)
>   		>> I40E_GLPCI_LBARCTRL_FL_SIZE_SHIFT;
>   	/* register returns value in power of 2, 64Kbyte chunks. */
>   	val = (64 * 1024) * BIT(val);
> +	i40e_trace(ioctl_get_eeprom_len, np->vsi->back, val);
>   	return val;
>   }
>   
> -static int i40e_set_eeprom(struct net_device *netdev,
> -			   struct ethtool_eeprom *eeprom, u8 *bytes)
> +int i40e_set_eeprom(struct net_device *netdev,
> +		    struct ethtool_eeprom *eeprom, u8 *bytes)
>   {
>   	struct i40e_netdev_priv *np = netdev_priv(netdev);
>   	struct i40e_hw *hw = &np->vsi->back->hw;
> @@ -1973,6 +1980,8 @@ static int i40e_set_eeprom(struct net_device *netdev,
>   	int errno = 0;
>   	u32 magic;
>   
> +	i40e_trace(ioctl_set_eeprom, pf,  ((u64)eeprom->offset << 32) |
> +		   eeprom->len);
>   	/* normal ethtool set_eeprom is not supported */
>   	magic = hw->vendor_id | (hw->device_id << 16);
>   	if (eeprom->magic == magic)
> @@ -1981,10 +1990,12 @@ static int i40e_set_eeprom(struct net_device *netdev,
>   	else if (!eeprom->magic || (eeprom->magic >> 16) != hw->device_id)
>   		errno = -EINVAL;
>   	else if (test_bit(__I40E_RESET_RECOVERY_PENDING, pf->state) ||
> -		 test_bit(__I40E_RESET_INTR_RECEIVED, pf->state))
> +		 test_bit(__I40E_RESET_INTR_RECEIVED, pf->state)) {
>   		errno = -EBUSY;
> -	else
> +	} else {
>   		ret_val = i40e_nvmupd_command(hw, cmd, bytes, &errno);
> +		i40e_trace(nvmupd_write, hw, cmd, ret_val, errno);
> +	}
>   
>   	if ((errno || ret_val) && (hw->debug_mask & I40E_DEBUG_NVM))
>   		dev_info(&pf->pdev->dev,
> @@ -2011,6 +2022,7 @@ static void i40e_get_drvinfo(struct net_device *netdev,
>   	drvinfo->n_priv_flags = I40E_PRIV_FLAGS_STR_LEN;
>   	if (pf->hw.pf_id == 0)
>   		drvinfo->n_priv_flags += I40E_GL_PRIV_FLAGS_STR_LEN;
> +	i40e_trace(ioctl_get_drvinfo, pf, drvinfo->n_priv_flags);
>   }
>   
>   static void i40e_get_ringparam(struct net_device *netdev,
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 506e11d..540eae4 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -4331,20 +4331,27 @@ static irqreturn_t i40e_intr(int irq, void *data)
>   		       >> I40E_GLGEN_RSTAT_RESET_TYPE_SHIFT;
>   		if (val == I40E_RESET_CORER) {
>   			pf->corer_count++;
> +			i40e_trace(state_reset_corer, pf, pf->corer_count);
>   		} else if (val == I40E_RESET_GLOBR) {
>   			pf->globr_count++;
> +			i40e_trace(state_reset_globr, pf, pf->globr_count);
>   		} else if (val == I40E_RESET_EMPR) {
>   			pf->empr_count++;
>   			set_bit(__I40E_EMP_RESET_INTR_RECEIVED, pf->state);
> +			i40e_trace(state_reset_empr, pf, pf->empr_count);
>   		}
>   	}
>   
>   	if (icr0 & I40E_PFINT_ICR0_HMC_ERR_MASK) {
> +		const u32 err_info = rd32(hw, I40E_PFHMC_ERRORINFO);
> +		const u32 err_data = rd32(hw, I40E_PFHMC_ERRORDATA);
> +
>   		icr0 &= ~I40E_PFINT_ICR0_HMC_ERR_MASK;
> +		i40e_trace(state_hmc_error, pf,
> +			   ((u64)err_info << 32) | err_data);
>   		dev_info(&pf->pdev->dev, "HMC error interrupt\n");
>   		dev_info(&pf->pdev->dev, "HMC error info 0x%x, HMC error data 0x%x\n",
> -			 rd32(hw, I40E_PFHMC_ERRORINFO),
> -			 rd32(hw, I40E_PFHMC_ERRORDATA));
> +			 err_info, err_data);
>   	}
>   
>   	if (icr0 & I40E_PFINT_ICR0_TIMESYNC_MASK) {
> @@ -9908,11 +9915,13 @@ static void i40e_link_event(struct i40e_pf *pf)
>   	/* On success, disable temp link polling */
>   	if (status == 0) {
>   		clear_bit(__I40E_TEMP_LINK_POLLING, pf->state);
> +		i40e_trace(state_link, pf, pf->hw.phy.link_info.link_speed);
>   	} else {
>   		/* Enable link polling temporarily until i40e_get_link_status
>   		 * returns 0
>   		 */
>   		set_bit(__I40E_TEMP_LINK_POLLING, pf->state);
> +		i40e_trace(state_link, pf, pf->hw.phy.link_info.link_speed);
>   		dev_dbg(&pf->pdev->dev, "couldn't get link state, status: %d\n",
>   			status);
>   		return;
> @@ -9987,6 +9996,7 @@ static void i40e_watchdog_subtask(struct i40e_pf *pf)
>   				  pf->service_timer_period)))
>   		return;
>   	pf->service_timer_previous = jiffies;
> +	i40e_trace(state_watchdog, pf, pf->service_timer_previous);
>   
>   	if ((pf->flags & I40E_FLAG_LINK_POLLING_ENABLED) ||
>   	    test_bit(__I40E_TEMP_LINK_POLLING, pf->state))
> @@ -10039,6 +10049,8 @@ static void i40e_reset_subtask(struct i40e_pf *pf)
>   
>   	rtnl_lock();
>   
> +	i40e_trace(state_reset, pf, reset_flags);
> +
>   	/* If there's a recovery already waiting, it takes
>   	 * precedence before starting a new reset sequence.
>   	 */
> @@ -10119,6 +10131,7 @@ static void i40e_clean_adminq_subtask(struct i40e_pf *pf)
>   
>   	/* check for error indications */
>   	val = rd32(&pf->hw, pf->hw.aq.arq.len);
> +	i40e_trace(state_arq, pf, val);
>   	oldval = val;
>   	if (val & I40E_PF_ARQLEN_ARQVFE_MASK) {
>   		if (hw->debug_mask & I40E_DEBUG_AQ)
> @@ -10140,6 +10153,7 @@ static void i40e_clean_adminq_subtask(struct i40e_pf *pf)
>   		wr32(&pf->hw, pf->hw.aq.arq.len, val);
>   
>   	val = rd32(&pf->hw, pf->hw.aq.asq.len);
> +	i40e_trace(state_asq, pf, val);
>   	oldval = val;
>   	if (val & I40E_PF_ATQLEN_ATQVFE_MASK) {
>   		if (pf->hw.debug_mask & I40E_DEBUG_AQ)
> @@ -11112,6 +11126,7 @@ static void i40e_rebuild(struct i40e_pf *pf, bool reinit, bool lock_acquired)
>   end_core_reset:
>   	clear_bit(__I40E_RESET_FAILED, pf->state);
>   clear_recovery:
> +	i40e_trace(state_rebuild, pf, ret);
>   	clear_bit(__I40E_RESET_RECOVERY_PENDING, pf->state);
>   	clear_bit(__I40E_TIMEOUT_RECOVERY_PENDING, pf->state);
>   }
> @@ -15430,6 +15445,7 @@ static bool i40e_check_recovery_mode(struct i40e_pf *pf)
>   		dev_crit(&pf->pdev->dev, "Firmware recovery mode detected. Limiting functionality.\n");
>   		dev_crit(&pf->pdev->dev, "Refer to the Intel(R) Ethernet Adapters and Devices User Guide for details on firmware recovery mode.\n");
>   		set_bit(__I40E_RECOVERY_MODE, pf->state);
> +		i40e_trace(state_recovery, pf, val);
>   
>   		return true;
>   	}
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_trace.h b/drivers/net/ethernet/intel/i40e/i40e_trace.h
> index 33b4e30..38bbe4d 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_trace.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e_trace.h
> @@ -54,6 +54,218 @@
>    * macro above will select the right trace point name for the driver
>    * being built from shared code.
>    */
> +DECLARE_EVENT_CLASS(
> +	i40e_state_template,
> +
> +	TP_PROTO(struct i40e_pf *pf, u64 val),
> +
> +	TP_ARGS(pf, val),
> +
> +	TP_STRUCT__entry(
> +		__field(u64, val)
> +		__field(u64, state)
> +		__field(u64, bus)
> +	),
> +
> +	TP_fast_assign(
> +		__entry->val = val;
> +		__entry->state = *(u64 *)pf->state;
> +		__entry->bus = (((u64)pf->hw.bus.bus_id) << 32) |
> +			(((u64)pf->hw.bus.device) << 16) | pf->hw.bus.func;
> +	),
> +
> +	TP_printk(
> +		"state: bus %02x:%02x.%1x state=%016llx val=%llx",
> +		(unsigned int)(__entry->bus >> 32),
> +		0xffff & (unsigned int)(__entry->bus >> 16),
> +		0xffff & (unsigned int)__entry->bus,
> +		 __entry->state, __entry->val)
> +);
> +
> +DEFINE_EVENT(
> +	i40e_state_template, i40e_state_reset,
> +	TP_PROTO(struct i40e_pf *pf, u64 val),
> +
> +	TP_ARGS(pf, val));
> +
> +DEFINE_EVENT(
> +	i40e_state_template, i40e_state_reset_corer,
> +	TP_PROTO(struct i40e_pf *pf, u64 val),
> +
> +	TP_ARGS(pf, val));
> +
> +DEFINE_EVENT(
> +	i40e_state_template, i40e_state_reset_globr,
> +	TP_PROTO(struct i40e_pf *pf, u64 val),
> +
> +	TP_ARGS(pf, val));
> +
> +DEFINE_EVENT(
> +	i40e_state_template, i40e_state_reset_empr,
> +	TP_PROTO(struct i40e_pf *pf, u64 val),
> +
> +	TP_ARGS(pf, val));
> +
> +DEFINE_EVENT(
> +	i40e_state_template, i40e_state_hmc_error,
> +	TP_PROTO(struct i40e_pf *pf, u64 val),
> +
> +	TP_ARGS(pf, val));
> +
> +DEFINE_EVENT(
> +	i40e_state_template, i40e_state_rebuild,
> +	TP_PROTO(struct i40e_pf *pf, u64 val),
> +
> +	TP_ARGS(pf, val));
> +
> +DEFINE_EVENT(
> +	i40e_state_template, i40e_state_arq,
> +	TP_PROTO(struct i40e_pf *pf, u64 val),
> +
> +	TP_ARGS(pf, val));
> +
> +DEFINE_EVENT(
> +	i40e_state_template, i40e_state_asq,
> +	TP_PROTO(struct i40e_pf *pf, u64 val),
> +
> +	TP_ARGS(pf, val));
> +
> +DEFINE_EVENT(
> +	i40e_state_template, i40e_state_udp_sync,
> +	TP_PROTO(struct i40e_pf *pf, u64 val),
> +
> +	TP_ARGS(pf, val));
> +
> +DEFINE_EVENT(
> +	i40e_state_template, i40e_state_watchdog,
> +	TP_PROTO(struct i40e_pf *pf, u64 val),
> +
> +	TP_ARGS(pf, val));
> +
> +DEFINE_EVENT(
> +	i40e_state_template, i40e_state_link,
> +	TP_PROTO(struct i40e_pf *pf, u64 val),
> +
> +	TP_ARGS(pf, val));
> +
> +DEFINE_EVENT(
> +	i40e_state_template, i40e_state_recovery,
> +	TP_PROTO(struct i40e_pf *pf, u64 val),
> +
> +	TP_ARGS(pf, val));
> +
> +DECLARE_EVENT_CLASS(
> +	i40e_ioctl_template,
> +
> +	TP_PROTO(struct i40e_pf *pf, u64 val),
> +
> +	TP_ARGS(pf, val),
> +
> +	TP_STRUCT__entry(
> +		__field(u64, val)
> +		__field(u64, state)
> +		__field(u64, bus)
> +		__field(pid_t, pid)
> +		__array(char, comm, TASK_COMM_LEN)
> +	),
> +
> +	TP_fast_assign(
> +		__entry->val = val;
> +		__entry->state = *(u64 *)pf->state;
> +		__entry->bus = (((u64)pf->hw.bus.bus_id) << 32) |
> +			(((u64)pf->hw.bus.device) << 16) | pf->hw.bus.func;
> +		__entry->pid = current->pid;
> +		memcpy(__entry->comm, current->comm, sizeof(__entry->comm) - 1);
> +		__entry->comm[TASK_COMM_LEN - 1] = 0;
> +	),
> +
> +	TP_printk(
> +		"state: bus %02x:%02x.%1x state=%016llx val=%llx %5d:%s",
> +		(unsigned int)(__entry->bus >> 32),
> +		0xffff & (unsigned int)(__entry->bus >> 16),
> +		0xffff & (unsigned int)__entry->bus,
> +		__entry->state, __entry->val,
> +		__entry->pid, __entry->comm)
> +);
> +
> +DEFINE_EVENT(
> +	i40e_ioctl_template, i40e_ioctl_get_drvinfo,
> +	TP_PROTO(struct i40e_pf *pf, u64 val),
> +
> +	TP_ARGS(pf, val));
> +
> +DEFINE_EVENT(
> +	i40e_ioctl_template, i40e_ioctl_get_eeprom_len,
> +	TP_PROTO(struct i40e_pf *pf, u64 val),
> +
> +	TP_ARGS(pf, val));
> +
> +DEFINE_EVENT(
> +	i40e_ioctl_template, i40e_ioctl_get_eeprom,
> +	TP_PROTO(struct i40e_pf *pf, u64 val),
> +
> +	TP_ARGS(pf, val));
> +
> +DEFINE_EVENT(
> +	i40e_ioctl_template, i40e_ioctl_set_eeprom,
> +	TP_PROTO(struct i40e_pf *pf, u64 val),
> +
> +	TP_ARGS(pf, val));
> +
> +DECLARE_EVENT_CLASS(
> +	i40e_nvmupd_template,
> +
> +	TP_PROTO(struct i40e_hw *hw,
> +		 struct i40e_nvm_access *cmd, int ret_val, int err),
> +
> +	TP_ARGS(hw, cmd, ret_val, err),
> +
> +	TP_STRUCT__entry(
> +		__field(int, ret_val)
> +		__field(int, err)
> +		__field(int, status)
> +		__field(u64, bus)
> +		__field(u32, command)
> +		__field(u32, config)
> +		__field(u32, offset)
> +		__field(u32, data_size)
> +	),
> +
> +	TP_fast_assign(
> +		__entry->ret_val = ret_val;
> +		__entry->err = err;
> +		__entry->status = hw->aq.asq_last_status;
> +		__entry->bus = (((u64)hw->bus.bus_id) << 32) |
> +			(((u64)hw->bus.device) << 16) | hw->bus.func;
> +		__entry->command = cmd->command;
> +		__entry->config = cmd->config;
> +		__entry->offset = cmd->offset;
> +		__entry->data_size = cmd->data_size;
> +	),
> +
> +	TP_printk(
> +		"nvmupd: bus %02x:%02x.%1x err=%d status=0x%x errno=%d module=%d offset=0x%x size=%d",
> +		(unsigned int)(__entry->bus >> 32),
> +		0xffff & (unsigned int)(__entry->bus >> 16),
> +		0xffff & (unsigned int)__entry->bus,
> +		__entry->ret_val, __entry->status, __entry->err,
> +		(__entry->config & I40E_NVM_MOD_PNT_MASK),
> +		__entry->offset, __entry->data_size)
> +);
> +
> +DEFINE_EVENT(
> +	i40e_nvmupd_template, i40e_nvmupd_write,
> +	TP_PROTO(struct i40e_hw *hw,
> +		 struct i40e_nvm_access *cmd, int ret_val, int err),
> +
> +	TP_ARGS(hw, cmd, ret_val, err));
> +
> +DEFINE_EVENT(
> +	i40e_nvmupd_template, i40e_nvmupd_read,
> +	TP_PROTO(struct i40e_hw *hw,
> +		 struct i40e_nvm_access *cmd, int ret_val, int err),
> +
> +	TP_ARGS(hw, cmd, ret_val, err));
>   
>   #define NO_DEV "(i40e no_device)"
>   
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
