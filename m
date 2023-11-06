Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B96F7E19AE
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Nov 2023 06:39:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D080681FBF;
	Mon,  6 Nov 2023 05:39:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D080681FBF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699249176;
	bh=eQ+SDtS7yvKCNczDRkmBrTuXjFqk6I5UP8eezgoMab4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ob9p2D8NPA5RUdWlzDS7JdYqKNMAAA22SUlozjWwYt3ZJRhtbS/RuMrhHsZGOqvCG
	 pAOBV8lOG/VAxeRhrGNhgbnE98rGOJMSUckYt7JSG5e0uCp3CEPDKP6oysRFocqqmB
	 0ZAVECBRHThfGX8VfXZE8+44eifjUOtpyryD8C/NSQQbue5uMKAfsi+MxMwPvYcAsq
	 4nJNXcT+CD2sNX8mgTuIxt/v11eVLZlZf/L7GAvldIDw7p9XA7DQAshhKl9uA/xMRx
	 sr3CF1gXFgy+UE9ivLNpWpyf1SjC+UxiY1AudgLHjSV/BF97YPpndPIxT4YWvk+YFW
	 eAl0zv5cpG+bg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vEQ-lvOZzoB3; Mon,  6 Nov 2023 05:39:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C316E81FBE;
	Mon,  6 Nov 2023 05:39:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C316E81FBE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DAFA91BF488
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Nov 2023 05:39:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B3BCA61094
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Nov 2023 05:39:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B3BCA61094
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id twNSVfK3sXrz for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Nov 2023 05:39:29 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5CF866108D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Nov 2023 05:39:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5CF866108D
X-IronPort-AV: E=McAfee;i="6600,9927,10885"; a="420325927"
X-IronPort-AV: E=Sophos;i="6.03,280,1694761200"; d="scan'208";a="420325927"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2023 21:39:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10885"; a="832613966"
X-IronPort-AV: E=Sophos;i="6.03,280,1694761200"; d="scan'208";a="832613966"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Nov 2023 21:39:28 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Sun, 5 Nov 2023 21:39:27 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Sun, 5 Nov 2023 21:39:27 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Sun, 5 Nov 2023 21:39:27 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Sun, 5 Nov 2023 21:39:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Lnf3H1HzVgcYfFIMxmDYsK7FmVZFAhHK/D3JBoVIwQRWgzq1QFHvNIc/Ds+IN+VvRT1aIuRKXV8GGCgMj+ZSkVYvlBjhhCNgKH0H0al+pIOy3P17+jJec4ewzi9q5jUcmb19u8d0NNTczIg05l7wqcexRGHcNEAKAXaU9536hs0alX841F9hJlqVB8bem+mSrnhYie2jVGf1rYqap5Opdu7SOAUvFa48MvLu/IodJBSnG4T7wDSWF9S+qZcOY1YEaqHYa89rnj9I6jyWz8KIBNEFVcdtjeQwGMCV/3oKkKBpiiz+tLGeZUR+jtqsjCEawJ1/wtjgSeA4FicE2A5CvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+UDtLM1PZsYbuJUH1axKp8uvNPp47xp7KKQCZVFd+KM=;
 b=b3mbfFwxDfBhU0N9W3inLPYG7hHyFAoM7/arN9fszsGNDq4cIUffQV/8wiEEW7oxmM5gfhmoWghuy1SPZmLN+nOUOAa7QgK3Aup73hIHWWfe5bhc9YcgAsX4KSQlrMP82pGxo1XS2XGzoKUmGBMwZNw0Vbv8S0YjMILC1X3yn7ITlwXiduRRCk/xTUCGfsa2D4PPP5idiwMCcnjY7Bpei9LmCsJHZ44mgr/XA7H3bDL8fupbdT6hW2m+1OKKdJVQQJk9h+4EliLKRi1EAge98osE/r6RY/JCL52NZRiPelTMhbK1xetEvFRgs/ImG/wqKbwtPjeg/UQo3UymjrhbPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH0PR11MB5673.namprd11.prod.outlook.com (2603:10b6:510:d6::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.28; Mon, 6 Nov
 2023 05:39:19 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::dbee:4787:6eeb:57f5]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::dbee:4787:6eeb:57f5%4]) with mapi id 15.20.6954.028; Mon, 6 Nov 2023
 05:39:19 +0000
Message-ID: <02bd5b19-a291-496c-803b-a0f1c760989c@intel.com>
Date: Sun, 5 Nov 2023 21:39:16 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Paul Greenwalt <paul.greenwalt@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20231104182908.15389-1-paul.greenwalt@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20231104182908.15389-1-paul.greenwalt@intel.com>
X-ClientProxiedBy: MW4PR03CA0324.namprd03.prod.outlook.com
 (2603:10b6:303:dd::29) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|PH0PR11MB5673:EE_
X-MS-Office365-Filtering-Correlation-Id: 7070948a-9b60-41c2-7185-08dbde8ab91d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /t7RH70jVt+OtsPHEtQxR1of8aPCz11xwR5lFX8oXA313LVR13uNQnFeW2AsOthasS0B1SpQ7hIQPelqQl5h1fZyIBWNtpNYrB+38lnIl80UX3AhMjZryYDSvYGWyOMlERs+5YEV0wGHqLEf2Yzmqew4gtU4XbvgnqSIDx3tmZa3/EB29JX8wp2MptgqGD3xB4PI37Gnl2tg74vGzQClMCreVfYYjRzBUvl7TnSQGp6lUv9Zj31jFGGJrZVeoI3e3qKJMb3FzwwAHkO4gdGGmNSmX1dBRwF5U+kj0IgT8etSaSYaUG1XQf16q3Qk3/dd+FKzlJ4w8V4C4BpuBdoAfvoZ33NV6HVKj1NLnKh6BBGRWGJld9cJn8CabGznUfQ0aAFRYsYwSBgEn9ULsN1hbu/zv71rHK0O2g+/u0xhvX6Iof4mFZH/7vMN11ok/sXbJWr0uO5Y1dUKDUFkenfM4+kFRUKvVJPCC47Ke55DmT8bNtpF0Zvd/Qr3iBb/rBwc/+BPhbOTTvhIh2Kf2hRYg88xyDCBhYg8txtISMlINUc/vvi1SX19bFWIrZVEM55GeNbK9c13jZm4XUVEuXK2NDGStxXHEBg1DANLHbmG5bLskTT44OiaYCyvK/RaUYVb184cfYZh210CvtlOjVEu0A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(39860400002)(346002)(396003)(136003)(376002)(230922051799003)(451199024)(64100799003)(186009)(1800799009)(2906002)(2616005)(6486002)(53546011)(6666004)(6512007)(478600001)(6506007)(83380400001)(26005)(107886003)(66556008)(66946007)(4744005)(5660300002)(66476007)(41300700001)(54906003)(316002)(4326008)(8676002)(8936002)(36756003)(38100700002)(86362001)(82960400001)(31696002)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MFlJMUFrbDBpangvOUl0TDhlNG92LzRBdGhSVXBKOE1mWFNzUjBlbjAwbm84?=
 =?utf-8?B?U1hSMy9YcGEzY0toVWxGb3c2bzZwcHRybHNDY294U29GcExqOUpMVXdoU3pZ?=
 =?utf-8?B?T2pDWmJOdkdkQSs1end1VmFWVCtGeGdVSjNwQnY5OGJGZVIwR1JaNnVYR0s5?=
 =?utf-8?B?aWx3cU1KdHRBanA2Z2hvREY2M3ZTS00zeHpIR3MyY01sanlnd2lEVjBTSkI0?=
 =?utf-8?B?R1lzY2NWeTJoUWFEbVBReXJTcU5yWmppV3Bhc0grU0oyaTdWSzhWaVBpaEtw?=
 =?utf-8?B?Z0dCam8xbjUxYXphQTVhQTdjalhvZDFCc051R29zZzVzeVBOMWJQQTg3ZmZP?=
 =?utf-8?B?SzBQTkNFaytKbjllaE54MVR3cG5xUXR0VE9Pcy9BQ2ROY3RHZXJ5NDJBdXhY?=
 =?utf-8?B?d29yNi9JNUlYYmIrMkpmSjVOaUJUeVZxM1JHZlJuWWgxa1NzVTFzT2hOL2I3?=
 =?utf-8?B?a3l4cFB0WXhkWE5MKzB3SG43QkNEbXBQaFRhRzF1RzY4aGVqZ1VCczdoNGFk?=
 =?utf-8?B?aVNPZ1VuRXRTT0UwU1JJd3VBSGhWV3U3TlkwdzA0cXo4eDFIblVwbWZycjk2?=
 =?utf-8?B?S0RBM3ZFNTYrdXBaRjFGS2RSZ3BqU2VaclNKUTVCM0lEbGJReE5WM3JqMTho?=
 =?utf-8?B?aDJ4dWxjYnBNdm40a2M0aUdWMmtzRWl3KzV4aEZKTGNUM0JoTkpuWEhhQVZL?=
 =?utf-8?B?ZXdWZkRRK0lEUkpOZHBBMFZEajNLRURLNWZzRm4ybVNPcE9rRHNvTkFEVTIx?=
 =?utf-8?B?bWdhVk9tano2QnY0aWNoWEFxL1dKTFFBN2oyNHF5dGI0MzI4YVQrdEZiL0NQ?=
 =?utf-8?B?UENrKzl6bTF4VXZnMFhoL2xVclpoaXg1bTJtWEtQZkEzNEx2REVlTkNaWDRh?=
 =?utf-8?B?L3I5dnBTZ1R2NXlyYXI0K1RJd3lPUlROUW1VaTdGVkdrRjRIdmFZcjhqU1Fk?=
 =?utf-8?B?dkliSEk4VFlOMzExTGlwdFpURTBZY2x1NHd3ZXdRQjNDMlh1V2FLckJKOEpt?=
 =?utf-8?B?aVRuM3UyNmx5THdUVkhsMUtnSmVab051dzA1elhvNHpOU2svM0haU25IeDNH?=
 =?utf-8?B?OUYvb3NUNmtWdlpKSUNIaitodDRXQThPUXNobGJDUjFhTld2UUdyUXdaZkF6?=
 =?utf-8?B?M2FHancvaExXUEFNK3JBd3IyanZwU05KVWxLRnd4N1FwZVJuNm9tVmYrUGRY?=
 =?utf-8?B?VUJwZ0FIZ2dRS1E1ZmI4bXkya3A3ZnptWkovaUJzWFNNWWFIalRFNEFjYW0r?=
 =?utf-8?B?dEttZmJQcHBCRDgzZjVkeFpkektNT3NSMHRjUWxmT0FqczFJcnFtU01MOE51?=
 =?utf-8?B?VlVhTTVMNGlYdGQ4eUpubGlpTVFpa1d3Y1BQZEdrd1BGc2JIenFkU1Arendr?=
 =?utf-8?B?UXBuVUg3ek4wcTYwcEwrS3Zwc1VLTUw0cmYvRmZzc1YzeHV0YlRMd2tkOXJB?=
 =?utf-8?B?V0R0UXVUU3Z5VzhFelA1VDJQUVphcThlYTJLTWk3cEZmOGtPQ2E5K2VObWlw?=
 =?utf-8?B?dHlQcGJVeWpRRzMrbUxmaEJhd3VhZDhSRnluYVVPTDFJV1BwNmpFNkdtRHAw?=
 =?utf-8?B?M3dINmVkT0JlZHh6SlhxRXdBOFpjeEFUcXl4M2VLNzBTbXhCREhOT0hyS0py?=
 =?utf-8?B?RDNDb2I5TDVOUnBndW9JckJlL2czMUIwWDVVUEVqeGZoMm1aVmJwd0JHQ1oy?=
 =?utf-8?B?aEFvR3I1Wk92NnlCZ2JzWWFGUUdMQnVaZ2ZnenB0dVBKTEJMRFd0NFBGVjI5?=
 =?utf-8?B?R3FETlFNU2xwUzRYeGJuNHJ6b2dSN2NldHZ2OHlDMXY2QTU3dHcrQ3NOMEti?=
 =?utf-8?B?d0EvalRoSmNWMkwvSTdDclk2K3czaFVqTUo1aW1BWEJ1cUVGWThQbmlSeEJM?=
 =?utf-8?B?L0MyTlMrU2oxS2NiMHpLQ1gwNmhjL09DTVBUVFJaSTdVZEdEOXF2b2tNd045?=
 =?utf-8?B?Zyt2SkdzSUNud3lJcGJUVEg2YzhTZTkxbklaUEZNNlBHVU5TbHhlTHZyMTh4?=
 =?utf-8?B?dHRWakRVSC9uUm1lYVVnbDRnWTFsZm9BRGEvU0lDVnBKL3ZuaWxhZnNXY2VR?=
 =?utf-8?B?UlpESEcvZ0dsUkRWbXB2eWdzRi9nd2lLaDRKZ0JHUEJsL29lWldtR0NaY0Q3?=
 =?utf-8?B?UEtZWm9ybEV4cTlsYS9lbXh6Wjk2ci90dTNtR0QrbzFGdzhYVUdIRlliMHVK?=
 =?utf-8?B?U1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7070948a-9b60-41c2-7185-08dbde8ab91d
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Nov 2023 05:39:19.7104 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3G6Ijc1BD8s25gAR25Un2G47DH8Etq18/dLRj1aASwodO1uyVrNLO/5X9jZOyi3hyoYmTDWgmfzpnEz1OSpfyNQ1AdA3rD9Tac/UGcpq2Yc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5673
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699249169; x=1730785169;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=i6dgbBQCH5aI5JiztUQUIJaJMPIT6F/bEj8TgnP2/Xs=;
 b=Zr/LaO4REKny+n1otdHU7XVbasoF0gGuiDe/lrtn/bEKuOqWU3Sbvh6y
 1foomuUVtRCsnglasXtmov5/1yXewNo+52hM6DsP9qNrkMtAPjNs4Q9eY
 UNup7STZEHGJM79IB8rLWn4yDcxN99nvbikpHPlRvGFkpeCIcpjit3lX/
 HbwSI8vo7EHMlEWWYLw3JhMWmg4VGF6yi9epub9VwZgsAuurhboMyKxfA
 ceDsyvz5t58jbZLmVZm60zh/ay4rzra7lo/TSZ24IX/Wz8zLLCvdxqc0I
 Qhqh+4IWoco73cc4GV53EJZHhBkTsrIbYbVyyvzrM0B+mjx73t/MROv8B
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Zr/LaO4R
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix DDP package download
 for packages without signature segment
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
Cc: Dan Nowlin <dan.nowlin@intel.com>, Maciej <maciej.fijalkowski@intel.com>,
 Fijalkowski@web.codeaurora.org, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com, horms@kernel.org,
 kuba@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 11/4/2023 11:29 AM, Paul Greenwalt wrote:
> From: Dan Nowlin <dan.nowlin@intel.com>
> 
> Commit 3cbdb0343022 ("ice: Add support for E830 DDP package segment")
> incorrectly removed support for package download for packages without a
> signature segment. These packages include the signature buffer inline
> in the configurations buffers, and do not in a signature segment.
> 
> Fix package download by providing download support for both packages
> with (ice_download_pkg_with_sig_seg()) and without signature segment
> (ice_download_pkg_without_sig_seg()).
> 
> Fixes: 3cbdb0343022 ("ice: Add support for E830 DDP package segment")
> Reported-by: Fijalkowski, Maciej <maciej.fijalkowski@intel.com>
> Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> ---

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
