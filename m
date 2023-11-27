Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E1CA7FA289
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Nov 2023 15:22:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0001E405CA;
	Mon, 27 Nov 2023 14:22:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0001E405CA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701094939;
	bh=Gi30YrlaIEV+w5qgER2WRyrzBlY/d553GpOf1uxqgSY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RqS2JzTO1l4lpdSbmNXvg/mHqVNqMg5lk0tfjkq/FZBNuvnwJl/bZo99KIKmHrAt0
	 UZlw7fva7OKjWSJG7O19fd+AoKQPES7yPa8NJhWVDbZGq0XU2sUxF9smvqxWvKBQ6j
	 f9UO+MqBF/haY2SHHxYnky4iAzT+YTzikrN4PirBuhrsiHDBhAlvmUI9IyowL78dtW
	 Z0Ih1a+qH+5cnElte/aBM+CPHm4eXANpq3+j3bWTLeBr4AscvGw7yPysv4EWSosZgE
	 FGEoflIIhGnK3FxAEKzCqCR2lt36eP3Apbsux9snxLvGG2VCcppAJHSoHoQUUYyEih
	 DLQs2m31aclew==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DEV8_bJFowNu; Mon, 27 Nov 2023 14:22:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6E1A9405A0;
	Mon, 27 Nov 2023 14:22:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6E1A9405A0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EAB161BF2FF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Nov 2023 14:22:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BEFBB405A0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Nov 2023 14:22:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BEFBB405A0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Jo9jhASK32Zo for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Nov 2023 14:22:10 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8F2D6400AF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Nov 2023 14:22:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8F2D6400AF
X-IronPort-AV: E=McAfee;i="6600,9927,10906"; a="5901405"
X-IronPort-AV: E=Sophos;i="6.04,231,1695711600"; 
   d="scan'208";a="5901405"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2023 06:22:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10906"; a="802657339"
X-IronPort-AV: E=Sophos;i="6.04,231,1695711600"; d="scan'208";a="802657339"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Nov 2023 06:22:02 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 27 Nov 2023 06:22:01 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Mon, 27 Nov 2023 06:22:01 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 27 Nov 2023 06:22:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VzX0U08y9ZvfTBhhZ9zzsBcOlHKNSNYms4hHYRFI5UlXZJxCGfe5uzPbRVMAVm/gV16N+cjMiLdPKxvALSsGzavD8FISn+nUvi/UDsQl+xzSeAE0E9mz5qBBHnKMg3aQI5YUEf5IZC98KeAIMw6kRULng+WSm+mXaYEfyMKPv3TvmN/Ct5rHuXDzAax1L1UUcVftdiBmO50hJWRGPNKIm/ohMESbF41/86CaUeNcTnqb9Xyb6LSlvIuo54Vg5TRLAqsUoEMCK+0LVexGdTgATjfQBbuNlFN85ku6n4U44g2xyOBhesi7XBshV/XUgSriAhGjW734dNhBqWMlvGF1Bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=no/HP1oii982GyUeha4nVmS+6rTsIB8oRWcESOAc+xo=;
 b=ZBUcOUJtE+FrIbn9Xb9kpG2HGfpKkmxxpk+PY/gFplvrt6bhA7V4xcB+ku+yoNWlukKOSFt4aCxlhKXLH19m9N3PFgrVuxLyHMCDEoHo56M6xX2TKHyCgfnM6DTGCvbDOcgPkM+CjcS0ffmLIcJJk3mxCN3yixwH8C/iuiwfPNZJHU+PpoXyl5d8KwQZLvt4TVtpifwcJo3ussKM/r0/IVCFTCNjTsFOQ/pjWfYIiV328VVn7sz0/ks6qWLn8CxiOYs3poqnZIXvrCE07ZRAM2HskXFUPeEvCyU60xFF8DGOn15A/4z1fD4iZ6aV9+K7ISP48ZIku7NGHiSAgtRKAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by SJ0PR11MB6624.namprd11.prod.outlook.com (2603:10b6:a03:47a::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.27; Mon, 27 Nov
 2023 14:21:59 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b73b:45a5:d8d8:65d8]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b73b:45a5:d8d8:65d8%7]) with mapi id 15.20.7025.022; Mon, 27 Nov 2023
 14:21:59 +0000
Message-ID: <f24802ae-bd66-446b-9b13-e291d33fb5c6@intel.com>
Date: Mon, 27 Nov 2023 07:21:47 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Jakub Kicinski <kuba@kernel.org>
References: <20231120205614.46350-1-ahmed.zaki@intel.com>
 <20231120205614.46350-3-ahmed.zaki@intel.com>
 <20231121153358.3a6a09de@kernel.org>
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <20231121153358.3a6a09de@kernel.org>
X-ClientProxiedBy: FR2P281CA0101.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9c::7) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|SJ0PR11MB6624:EE_
X-MS-Office365-Filtering-Correlation-Id: 3961acbf-808c-4bc0-8fd2-08dbef543775
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ITrTK2KaQWvmsOJe7ZLWmwgAjKet29oG794tePwWXg1gYqIUdfCQAqlMQLVWr/xKaTJhR8GqExI/8R1YkjE8KSIUiks8rWf9AgXvzESHTkgLKJLg3B6oLGMQx4l3FH6g22qok9WQSFpiusfi9syPuLpWGpzzBxiAFG1NXVc9pMS08BxaeC7GAetWhRci9GWyhAQH1u7Y48lDp5FOC0GMSaVLRHvpj1zJOxu178hus+DV5NsbJloJkRLCUpisbbpms/5Hgtu9UYFAAE72H6x9wzzHeus8UKSl22WZBFhqDxCFa9NRsPiBRc3O2ax2Yxc3323YdMNvVYn+Dg4/giF1gn5iUZASXKuYxNBg7GChs7CVn/PD6oI34giZgFPY0jUOvRKvU8wNXlv33iRUD4v4opesuOUj8ByLBzXBfkp28q8aznuUiJJudpJLh24eRPPpYCx52athLIYmmB0GO/EZizJKSvcPg9kHFR1cx4L1GsTtP7VIcwofLx8dlhbjiPDln1rf9nyR5LRALrg89IcVX0JD780VQ/VTywqprbPV/DVp40ABftncTGAa0fExqjhFkG9TGcl+nwn/9rSd55Oxb1QaZqaVATG4Mkm+ouru4xptzPlsRHiJUhog4im8adn0f2QX6mgmSYJ3IC/vLE/nxw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(366004)(376002)(136003)(39860400002)(346002)(230922051799003)(186009)(1800799012)(64100799003)(451199024)(7416002)(8676002)(8936002)(4326008)(31686004)(44832011)(5660300002)(66946007)(66556008)(316002)(66476007)(6916009)(41300700001)(6512007)(53546011)(478600001)(4001150100001)(6666004)(6506007)(6486002)(2616005)(107886003)(26005)(2906002)(38100700002)(86362001)(31696002)(82960400001)(36756003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QzExejQyOGJST1NpV0NOWHVSTXBoSk90OWRiTVJOQkVJWXB5dVJpSnN5ZzV0?=
 =?utf-8?B?V3l4eWtQVURIdXRheXViamxGYzVTUFg3dmxPc1F0bkRHNUNGMXUxcENaWFNv?=
 =?utf-8?B?VjRzNkFoUFp2cnFtdXdYUGFwajhBZnNXbDZ2c2Mwbnl5WVVIRFdmRStBYjFt?=
 =?utf-8?B?OHZML01xemZia21rNWFxRkNsUjU5OUxlSkFQYlp6WEQ3UStISG93N1hBaFh5?=
 =?utf-8?B?L24xQy9EUVkzQ1R0WmxXZk5NU0V5VHAvaFlMS0RyZEc5clhueTk2a3hSc2tR?=
 =?utf-8?B?eEIvbW43RDJJY2c5VGtoVGx1dkw1RmhWV2pRMWxtNXl2WlNTOGJ5NnE4RnlS?=
 =?utf-8?B?T3RDalhYMUlJcndJRzBPVVl1S0UzNWZEQk9jRWkyZkljRFd4aUdEdEVDZEZJ?=
 =?utf-8?B?T05vaDQ5Qlg0VEtaUTZlNXpjQUR3Q1ptNmQwRlVXeDV4R3hmM0pCSFBFV05I?=
 =?utf-8?B?cXVGZzhEeFBOMVBMNkJ5Tk1IM3dpTU8zMTdubmtqU25BaW9TNnpiWFBGNEtk?=
 =?utf-8?B?RzFsWkdTdkhmZ0QxVERHSWxKOXd1VkJWZE1lMFp4WjVpZEtkamtFR1VVSFVF?=
 =?utf-8?B?dHg0LzViQzd3aFo2Y2hXOWlBb2VBNEVkY2hCbkd1d3B3UWdhb3dpdk8rOUpH?=
 =?utf-8?B?Y3NVc3RuWjNvajVKMlN6cEtQa1A3ZG1neW1RRXRiN3FHalR6QXFOU09tWEIz?=
 =?utf-8?B?OHY4elhSTXhTdW91ZFRpZlpkaVNyR1QxUWFibUtwLy9scG9ia3Q5dHBacEJR?=
 =?utf-8?B?Zy9LaHJtV3d3WWJPZ1ByZVZSOEtoK0J6TW1LV1cxL0M5MzJhc2krQk92NDg4?=
 =?utf-8?B?QzJ6TGFaOXZMTmQ0VU4vQTRZdXFVczFTM2VhQ0pOOHBFclp4ek9ENFlvQW9G?=
 =?utf-8?B?ZjhDREZCME5PREVkTW5yZklPT3hnY05QU2lBRWRwN0dNTm1KQy8vc3U0RkdL?=
 =?utf-8?B?RjV2RTZ6RG85ckVzcHZmc3VDUlZQUWYybWh4MG1SMGJiRWMxa2pGTGxIaGc5?=
 =?utf-8?B?MnlTNFNhVy9jblRIR1YyaTltdHdPMFhObUt2Qk9qdUg2VWZPaFpJSFE2Mkti?=
 =?utf-8?B?bEpGTmhMdFZQQkFnenYzOCtHL1NxbnI1MjRpYTBXZnZ5YVhDVXcwM21ZSjVV?=
 =?utf-8?B?UStBeWdBRTY1YnRLY0JwNFFRTXQ0QU1RRXRGdCtBNjJrVm4rUGg1TUg4Ty9X?=
 =?utf-8?B?QjhsYXJrRGhNdWRWVExzUmhjOGFFV1d5VGYyUVpWQkxIcDFiV3RjcGg2YmVU?=
 =?utf-8?B?VnhWRzFsbkVUa3hCZmNzek4yR3BCN2w4Z1l2cUU5QlpCNW9CREFUUkdUYUVM?=
 =?utf-8?B?VGNxN3NuSGlPQ1JRZThRN3BGUFFYTk0zeHFaL3BYdVRrTGVkNG01UDExQzlv?=
 =?utf-8?B?RzVzanNyb2lFQm1vYTJueFNFQ1NsRk55Yi9xTVJ0eWh5aEFrUUNYMjJDYnRZ?=
 =?utf-8?B?MzZ4V2hQaDd5T3E0eGUwYkdPTE9Bc1pkZXdRL1pFeFBOWmpySkdTcGVhdzBw?=
 =?utf-8?B?Z1dobHF3b05ndk41dGpXTVI1cnpiK1ljamk5c1hJSjNJZ0JkS3JjQTZFVVMr?=
 =?utf-8?B?eHJ0cGk2Vy9uQWxPR3hxVXVNaThxQW56WHl5V2VSY0JxSmFOcnorMlpRbXRN?=
 =?utf-8?B?U3FWRTkvVzRXOFBSK01uN2VJMFhrRnFoaHN4N0RabU1leDNOcnZwU3FtK0I3?=
 =?utf-8?B?djFvdkdpQlpxYUt4dXJsbE9jVlQvK3pVYXJKdGJpOGFuWU15aTNKbWp5SGM3?=
 =?utf-8?B?aHhEbEJjU2tOdFl1TGZINzN3N1B3MjhqWUNERmt5ZTcwRGZGVlBQL3A3a2VD?=
 =?utf-8?B?bDExYTV2SVJyS0FKUkgyQUltVmc3YmZWajRpU2xlQW1MNFZ4OXM3NDdmamNM?=
 =?utf-8?B?YTduYmV0VUs5YzBaTU1iN1Z0YTF5Sit3TmVpa2hMWVc1dE81aE5CckxXdUhn?=
 =?utf-8?B?Qy9uVDZSYmhvZXJJaHlIOGtlbTJ3bytXRXhHMzM1VUVqdGVSVzMvOWo1cEdr?=
 =?utf-8?B?U082azhySGhMSXJCRFZJa1NpZWNJWXh2Nzc1WWg2MHZuaUNmaitqMW10SUJ3?=
 =?utf-8?B?a1VUb2VtWEJ4Wk1OM3R5bEQ1WUZ1V3BQOG8xTk9SWHRDZk9tZTRJWm56empl?=
 =?utf-8?B?cEZQWjAvejZxN1dGeU5nbFpiNkIxME8wdU8zcGNaNnhVbHkvMkNWOTh5c2Zq?=
 =?utf-8?B?bUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3961acbf-808c-4bc0-8fd2-08dbef543775
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2023 14:21:59.2056 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7b1LaxscBOJtzJTVsfkKFpgshMX1aQ3mjXTXG1unC/mKS3Wa7OeKWhYrSy1mp4TBd+DZPUjsA+20AfSCjEEHQw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6624
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701094931; x=1732630931;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zZfc8Cydl8fcqoGHzyDpSLhziuXW0ieqLjlZskdW300=;
 b=ncV9M+DU4WRTypeznmwMHPbE0w+eHQGzT97P2jvCTCRgHM2IrMEfeCVS
 VviD2SGQ48hLymEfbZR/bjt9K7G3iryH0zfwhJFiCdm9NC8PIjQix1lUj
 zBOvhP8ZOiIeKK1W/PYly1FqgUhzhaq8VtzYFQrOJ52Z5NNzU3hs8q1mn
 O0c31FKgPsIrvnP0Xz/W3aUGsSlFDQcHXGPQ8PgjsKjCZdlxtWCF5ALCq
 7/pmOwaZkKQLRnD0/QDu+1t30HrTOP07J8sE9L6ShqM/IGkVREZRc84tS
 1ntdtlI5XtZU44wKuNmF9taVD5DiOidZMPoG/tLG3KJ62Vt7pQGrPMpHX
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ncV9M+DU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 2/7] net: ethtool: add
 support for symmetric-xor RSS hash
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
Cc: mkubecek@suse.cz, andrew@lunn.ch, willemdebruijn.kernel@gmail.com,
 Wojciech Drewek <wojciech.drewek@intel.com>, corbet@lwn.net,
 netdev@vger.kernel.org, gal@nvidia.com, linux-doc@vger.kernel.org,
 jesse.brandeburg@intel.com, edumazet@google.com, anthony.l.nguyen@intel.com,
 horms@kernel.org, vladimir.oltean@nxp.com, intel-wired-lan@lists.osuosl.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 2023-11-21 16:33, Jakub Kicinski wrote:
> On Mon, 20 Nov 2023 13:56:09 -0700 Ahmed Zaki wrote:
>> + * @data: Extension for the RSS hash function. Valid values are one of the
>> + *	%RXH_HFUNC_*.
> 
> @data is way too generic. Can we call this key_xfrm? key_preproc?

We manipulate the "input data" (protocol fields) not the key. I will 
rename to "input_xfrm".

> 
>> +/* RSS hash function data
>> + * XOR the corresponding source and destination fields of each specified
>> + * protocol. Both copies of the XOR'ed fields are fed into the RSS and RXHASH
>> + * calculation.
>> + */
>> +#define	RXH_HFUNC_SYM_XOR	(1 << 0)
> 
> We need to mention somewhere that sym-xor is unsafe, per Alex's
> comments.

I already added the following in Documentation/networking/scaling.rst:

"The Symmetric-XOR" is a type of RSS algorithms that achieves this hash 
symmetry by XORing the input source and destination fields of the IP
and/or L4 protocols. This, however, results in reduced input entropy and
could potentially be exploited."


Or do you mean add it also to "uapi/linux/ethtool.h" ?


Will do the rest in the next version.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
