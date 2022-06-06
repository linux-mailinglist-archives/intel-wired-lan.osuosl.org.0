Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5683E53EDDA
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Jun 2022 20:26:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8D80A40529;
	Mon,  6 Jun 2022 18:26:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k9janITy-2OG; Mon,  6 Jun 2022 18:26:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 307524088B;
	Mon,  6 Jun 2022 18:26:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A86EA1BF2E3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jun 2022 18:26:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9692F402FB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jun 2022 18:26:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TOFtAKfegCso for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Jun 2022 18:26:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 72C4440492
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jun 2022 18:26:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654539974; x=1686075974;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=GWKXTiNtDA30Io9o+KUNaJxNMhmCrBP5N48vUo7yCzI=;
 b=gvRO/w/HZVZh+LcHn1CSIdCc8L44kG/7pAGCQNk7tNuOokNIy1R/JJzR
 wV9I1AGOSC+41OkASJpSZjEy9q4HQEzuJYEEh1WIJ/uHYDqL0kIYjRYgN
 H095c+nPb765TB7ffIJvJi2QgMfa+8jtUxP0n8wmVnD8DjmWqJiUlqzo+
 JVRtK+z9IyteXQWNtTfBySd0fjMhFPw/NxLJdRZuvebg/LXr4i5NTSSRL
 ttNi4TYWbVjrKjf4c+BsKp0WNNfb9q5OKrJuZ+F5quCsh0FFbPWq2sXn+
 LCk8HPTJm/wxJh1+g07IjPR+GVUQJGMEl5QNTGbsCs9aBng+gHmltanuf A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10370"; a="257123895"
X-IronPort-AV: E=Sophos;i="5.91,280,1647327600"; d="scan'208";a="257123895"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2022 11:26:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,280,1647327600"; d="scan'208";a="635737415"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga008.fm.intel.com with ESMTP; 06 Jun 2022 11:26:13 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 6 Jun 2022 11:26:12 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 6 Jun 2022 11:26:12 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 6 Jun 2022 11:26:12 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 6 Jun 2022 11:26:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OyCQzdHhY2HQPrM9a2ktPk5cnxOImDLK1mYu3u0znZU5ELe3IuSeX074WAeR67baGhRjPgiwLcoGlClGgcBK+bH4dFqz8N36qUDJj3mRpsidnNt2+fvaYXQN4fcu5RELGPDiM1WC0CLQRuVDhHN3kKhQldM+7SIAx+kbQYysQcYJ41Jf7ileT5KoF06wAyE368my3urC11eXHIs+D/1r8uW2ew/ICFXDdHnh3yEc5qG/VEHb0unNCatNvO4zgqDyBbiApkZ98oRA6hGESTl/qgUG5S/1KTFiqJJFk+RwQvDt3nyhETpuEYVw9DTwr8NA5qZWB36yqKFroUMMIg4vdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z4zv3622v/IWx0Pc9AEf/SYjav5P3x4lkmf7cfEztmo=;
 b=Fbf5/dK4WKDovxfv7BzLIf5jLuY/SB+p5OxnUeUBaxQWaFu9SDFK/jJ4xsqJBBSYQQBAsds6l7shIN1c1JmwXHoS+UM75ryfizmv71lwnK4s4aXkgND99IEYakIxfEm7INytexjcL7CZeMOrfz6TtzVw0jdUyNAGpm7UCiFVne+7Xuld/R60ykp5SAn4/PK7t1NIOy8Hkn3xHYweN3a1nlj5KPolq2UKCq3VcZp/AS5ZU7r/Go/RMQfmvV+Xlkqki2PTTHgP0rEgPe6SKCFUHS0K31F8b1gnArcuKmm+hh+qMgVUA1v6QRqFpTysWf1eTHRSHrZPu+iI2hwFSEGZNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by CY4PR1101MB2279.namprd11.prod.outlook.com (2603:10b6:910:17::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5314.17; Mon, 6 Jun
 2022 18:26:10 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::317d:11f9:2381:a3a3]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::317d:11f9:2381:a3a3%6]) with mapi id 15.20.5314.019; Mon, 6 Jun 2022
 18:26:10 +0000
Message-ID: <883538a1-9048-ba0d-69a5-3670ebc3477d@intel.com>
Date: Mon, 6 Jun 2022 11:26:07 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220606070613.3087827-1-anatolii.gerasymenko@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220606070613.3087827-1-anatolii.gerasymenko@intel.com>
X-ClientProxiedBy: MWHPR19CA0076.namprd19.prod.outlook.com
 (2603:10b6:320:1f::14) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3e8a3ea5-89b5-44e2-812d-08da47ea0788
X-MS-TrafficTypeDiagnostic: CY4PR1101MB2279:EE_
X-Microsoft-Antispam-PRVS: <CY4PR1101MB22796EDA539E68FA012C6D6FC6A29@CY4PR1101MB2279.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LQWZEo7WdDvB9Q6iysK1h5Srkwti+nn+L7k+H5vzWegJawA2Gh6YwNC9QdLUMN/CDP0l2G79e4ux/2miu6vpcicGhhAxI0asc59/6bUOKfa5pyc8gp2J/6UzcY54ri+aVBbtE5uNP9oow2TVMIO59X2+tJ5uGr4lFDKW5MG2p29mvDkOW0usnkFNbKA2PasRMfOxN+G3vFKAk9kjKUTJ8Fx8qkf1RLEr9IxmAyKaKfHQ6fACBBn5Pe7Uj0OaTHHDBhO72vcEOjzgjtadEmvFWbz44ZAhoQaDrTg89wCo5d05qhdHbC7dNu5mHAWs3DfrFYrHhopkmg5+EMwMuUhAL5EiNwatVT9WtHiAhUGDbbGgDu7JcGPTkostX1LJ8jPx8F4IJJPPB3nhpAhEsP+7SL1xxLYRBPmDYtWuvtm9yeuvLZ18GyHsU6OkuKW/T/yQtfiSn8v7lDmApeIfmDEoAwt0xWhDUFaOWSSRh9f430E8mBuJ+aJKa0dVcV1ILsPm8dJSR+Wqv0XCH9GAtO0w5sbuJpckOUzxVTqgxUvjQWLOvSKGBrEOzuzIaZxezr8tFFAkdRg+EXoPxVn0YbFVw3hDZBWYNWlUhESzXahDo2G1Br08NzPHUqSW+VNi/Rmqgo+kD3AI7wvUWTa5eYmGgv6Io2hpRqfI9EeOhivKpOTpaRPs+C5jFBQn52fjT4f+5Gjee+qFdXy4xRCINzexuVSg+oEvpcUYrr3OoubinCa80P4mW3VSij64oF2jN25b
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(5660300002)(83380400001)(8936002)(6666004)(66946007)(31686004)(8676002)(66556008)(66476007)(4744005)(508600001)(38100700002)(186003)(316002)(6486002)(6506007)(53546011)(36756003)(31696002)(82960400001)(26005)(2616005)(2906002)(86362001)(6512007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NmJhaitZL0VRYkZZcW5wcnJHVkUxVWhEdTkyQzlQZWV2bGtEdzdVZmo1L1FQ?=
 =?utf-8?B?VVVJL01HdFJJelExYUtrcDNnYjA4czU0cXJDbFJGbWhFN3JMeXhwL0JJcGJ3?=
 =?utf-8?B?TTBxdnRKRSs3MmJVcHUvdThRMGFiVjQ2MG9ZeHNWdmYvcThjUVc0UU1yYnRJ?=
 =?utf-8?B?NFNSbXhsbVVCTGdyTXlBNEVuTE91Ym5rWFZGT2E2bWZKOWJ1K1ZxRlNWRGor?=
 =?utf-8?B?UjNKYWhOcGdLVUhqS09Xc0d3MTdHT2ovcmN6VFV1cVNOV3J1UEhqVCtXR1U0?=
 =?utf-8?B?SCs1cGtuRGkxRmxVQkJua29STm1HWGNmdHZ2OXpHaU9kRmxoN2ZiRE13My8r?=
 =?utf-8?B?c29WOVhOeEl1a2RnWTh4WldkN0tJOVY3anoxc3lxeE5NR1d1c1lYZzZLMERx?=
 =?utf-8?B?WDZWSy9PTnpxUXZUc1YxTVlZQmsvM2dWS1JWc0cvTTMzWGNJWkZhVWRIZFlH?=
 =?utf-8?B?d2h3OEppNnhLS0RSNFZ6ZVhSN2hHR0ZZaWRXNFAwcXBOUDUraWNNYWVKNG9R?=
 =?utf-8?B?VVduajZkeGQ3Y0xNampyZlZWY0RkQkVZSzJrdEw3QlAyWitMUndQbVg0L0NG?=
 =?utf-8?B?b3lqcXNUQUFYOG1LNWRiblcxbGZpT0VCZW9QcFJQUGJjSWZ5Rm1mdmRuQmNJ?=
 =?utf-8?B?aEw1RWRQeGZmSEJQZ29lQUc4dW1NcFd4aDQzZlRXWmRHV285WkZLc2FXTHNX?=
 =?utf-8?B?UDRLWnZSWW1IK3VJbFg2Zzd6RUY5V0Ria3ZaZTNUOWNtYUV0TGlPTmtDOGQ5?=
 =?utf-8?B?T1p3ZzdwTGpIQUdXcC80dmtWYzY4NGpYNG5SOUR5dzRzdXNqaHRmSWlPc2U4?=
 =?utf-8?B?TlZOTExPRHlTdFJ5T0JoY1luNnFhK2N4aStFSGh2dUszclI3RXcwMCtaSHkz?=
 =?utf-8?B?aCsxVmNldEFqSUdYeWpnZXNXeEl1Z2VyTHhZbjlxOE5Makc2NDRQRWx1RFZq?=
 =?utf-8?B?TXlHZW5rdStiRGZwRU54My9XWXRzV3U5QnpYT2VCWXc0SEIyV1NNRTREcVRJ?=
 =?utf-8?B?U2pLSndLRU9VNTlydFd2alhKblVKZURvaFBEU2t5QUtOVDBKOTJSaXdwb2E3?=
 =?utf-8?B?RG9rVGZ3eEdXaXBMcS9lSjlWbEJjMWxRQ3VXTm1kWDduYlJjU1NzblMwb1hQ?=
 =?utf-8?B?V3FDNXc4Y3lSQ1dmakw2YitmWGxLY2pWTzRqZ2hyMWFGTDBkU3UwYkFNdlk2?=
 =?utf-8?B?WXNpR3hFd2xTY1d5alA4ejdBWUdmNXN2S24weTRuYUJrUFBiYnk5MU1BLytk?=
 =?utf-8?B?OUVWOVl2UWE4TEVuNlFzQzc4SFFWblpGUWRYSVJnRWZaNnJMSml6eWtMRUxL?=
 =?utf-8?B?clRYWkZXY0RtYVZxRGtwZ0NCbmdDNjJsakkzNDVwWWJ5WnA4d09oVDVOTzJw?=
 =?utf-8?B?UDBoL3llWFJCMHpDclVrYkJCVWNxZjJtckJJWU9aUkorYzQ3WU5kaXpicDZZ?=
 =?utf-8?B?ZzVQU2o4NlhXeitXYWJvUFdUNFg0citOdVZxdFUwTnVjWmdONi8wcnRqOGUx?=
 =?utf-8?B?WSt0ZUdRN3pXTkhib2FPNzgvNGFXWGxXVHJpQWl4Uzl6eFhDeGVUVzVpRzN3?=
 =?utf-8?B?NHd4V1dmRHJsenNIUjhEZEg2Q2J1WjhOTnV4NW92aHMzQzEwc0lIdmdabkFo?=
 =?utf-8?B?aHU5cDZLZUJuZEd2U1pMRXQzSG4vVy9heDdDdTgyZlh0c21MWXpHZ1poTWM5?=
 =?utf-8?B?aUFWY2xScTVjRlA5NHVudXZiYVBWRnVWT0ZzL1FjRnhJSmFmeHV5c09UM0hX?=
 =?utf-8?B?TUxxNUVJUUNkSGNxT2FHbXFudFFmdDNsUWFVMFY1TzhVMkpob2JsQld2cCtC?=
 =?utf-8?B?d3BPazNnZlF6SGFkcnEvZDFVODlENWxjWWxyYVNjbFZmVWRJZW9zWndxYkph?=
 =?utf-8?B?aGlzOXBWUWp4by9vRFNsOXhaSkpaQlRrOUpIQkVVSHUxTW0yazhvOTVFb1JM?=
 =?utf-8?B?L0Nwb010VWRRR0tZOWlLdTMyeVFWNWdacVJWTjBCQ0NTZzJ4QkFydmNHbzhT?=
 =?utf-8?B?cHE1QThqVjFEUHExUEVPN3M0MXR5dEdLdm1LWUVMZ2tlalV1Q0sydS9KUzhS?=
 =?utf-8?B?MDZ3ckZVYU50N1VVTnNEM0Nmd1Roc0dnMFJDQWFoV0JiVlhYMnBGeHoyNVp5?=
 =?utf-8?B?c0QwUFA2N0RIOXdORlZRb01vdVk5dnRUMWdTbmhxL1Back10WVdRYU5QK3Zt?=
 =?utf-8?B?bSs0Z0NKOTFvWWxCbEZqN3pBYlIyTzdmc0ROY0o4TDNFVFlOVWRDVERtbnB4?=
 =?utf-8?B?NzVCVEdScUhtejhPOUZXY0F0UXJDQzBsZmxzWlVUN1F6R0RPeS9ZTFRVUmVH?=
 =?utf-8?B?T2p6UzBPYnNtbVNQZmhGellzUnZjYUtGVlppU09aN3pkUEpCcDFvdXpJb3lG?=
 =?utf-8?Q?jCTc19wRNrZTwqvM=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e8a3ea5-89b5-44e2-812d-08da47ea0788
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2022 18:26:10.3464 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: geubXfUZaWUDTz1cW182vXDDg8YJy1XsEAlISP3V/k5CGJ+USBCn4momvGSj05byAaM2Aru3OIp9hhUyHndS+UBnjIxzh0Cd/+ZCmRlyFMY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1101MB2279
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] ice: Sync VLAN filtering
 features for DVM
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



On 6/6/2022 12:06 AM, Anatolii Gerasymenko wrote:
> From: Roman Storozhenko <roman.storozhenko@intel.com>
> 
> VLAN filtering features, that is C-Tag and S-Tag, in DVM mode must be
> both enabled or disabled.
> In case of turning off/on only one of the features, another feature must
> be turned off/on automatically with issuing an appropriate message to
> the kernel log.

This sounds like a bug fix, why not to "net" (with a Fixes)?

> Signed-off-by: Roman Storozhenko <roman.storozhenko@intel.com>
> Co-developed-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
> Signed-off-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
