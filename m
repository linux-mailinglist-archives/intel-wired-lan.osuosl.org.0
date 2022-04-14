Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 44EDC500694
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Apr 2022 09:08:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 37E964186E;
	Thu, 14 Apr 2022 07:07:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XdJ9bbMPNLiG; Thu, 14 Apr 2022 07:07:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CB3DE41869;
	Thu, 14 Apr 2022 07:07:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6C5661BF479
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Apr 2022 07:07:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 610B2837AC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Apr 2022 07:07:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4oW58uFAd0eX for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Apr 2022 07:07:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 84A9C82F03
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Apr 2022 07:07:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649920071; x=1681456071;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IoOkAR9UDcxRmtu2F0YskyO0LxWNQr5X2fzEb/U2nPA=;
 b=ReqLkiPuuP8uJUmZGfrBOxoINPyriDLFQQvrIP8UYWXfpM7yGUFk3JyR
 9GeJnJ7Z1yckFzJnW+3oGuk0lABuhacTzYZUgiMydn705NeeZ/lwlQb/a
 6jc+XOZm6W9i8Nu9+OZM9yjkcJNE1VVkEtDxPFpDRl8EskIRs2LRVO208
 dzJj4R/82N5FtMrdAa3L8kypz1sntZM9vZ0rkBvQkXfDwXIe++66MQ+CG
 3r71r9IV5OdZ0sWw6VsAioMQDOduV82PKLCZIfxfzedeYh4eWmUJvRD/C
 xOz+K5V0i2rWgTZHRLZRqxYONcrksYMSs4hphCUO+PZrvHBTNNpVqKVSt Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10316"; a="262617683"
X-IronPort-AV: E=Sophos;i="5.90,259,1643702400"; d="scan'208";a="262617683"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 00:07:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,259,1643702400"; d="scan'208";a="560071725"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga007.fm.intel.com with ESMTP; 14 Apr 2022 00:07:38 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 14 Apr 2022 00:07:29 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 14 Apr 2022 00:07:29 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 14 Apr 2022 00:07:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Nmu4g7kl8jRFN4CbykQcSDD6R5nSXzMrjES6ktxmBH/bXb3e5x287FUL7cCmLQIowIrdjnB6yMbruYo3sqskgO3I0tWgZhLP6LCC7vFeCIMOjnVv8oYMuR9BMs2qUlrjJQ1uq5BFtWz+7W+vfDozV/GbsQyeh1w2TfTxAZCEdRBK/SmX2nzQDDPA7Lk5K8pVezJ4OXRXFqnFfdNp010e1rKZ3XVjlSIXGbClkJL/bwIK4Upuicc44m1FBjJJz2+mVNEVegFKzoriJTyrp6z78OgexuJJWBepezN5VGkuJuAer/iIXvD5w5Opn3aKIlZMPUpofgIkUey5DcamGGRccw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ntsprJkoqIv/MU98ieMcSsMdPNNEfc8Quce/OEh14To=;
 b=MXk35dK/mVt6sJMEh4viG6QynmR9Iflhtf6STKaDCOIhhf+fXIoadKZmVWX2EpoxUcdEf6qMksNC8K7JoBupNZ6KyH9s3MpDRAsDPPXF3AV+bMPkZnmHptOG9xq+1R+ki2rvoZd5uJw94Nvg0HTWkW4EMiCjWwTSI+vG6yFNiCoTD1/O4BVTvFf+WeSuAfQvjNUfRSMTUYgfyE93sxPJkH2313Y5rQL4aHIiORclFRcIDRZr+jNmDVKYnS5QDhFESkSPpblayjqG7HxnGncc5kMm9owpfvPPzN7M6NmDMp+gu1cGsTyhlldqLnSunxd/lsSY7ia8C/ptSFc8tNBjqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB4787.namprd11.prod.outlook.com (2603:10b6:303:95::23)
 by DM4PR11MB6017.namprd11.prod.outlook.com (2603:10b6:8:5c::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5164.18; Thu, 14 Apr
 2022 07:07:25 +0000
Received: from CO1PR11MB4787.namprd11.prod.outlook.com
 ([fe80::758d:b6d0:2a6d:54e1]) by CO1PR11MB4787.namprd11.prod.outlook.com
 ([fe80::758d:b6d0:2a6d:54e1%6]) with mapi id 15.20.5164.018; Thu, 14 Apr 2022
 07:07:25 +0000
Message-ID: <9a5af9c0-e58a-250c-b030-05e3b73035b9@intel.com>
Date: Thu, 14 Apr 2022 10:07:18 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.7.0
Content-Language: en-US
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <bff5f4d7-bb85-e3fa-b8b1-76d1b8e0133a@molgen.mpg.de>
 <9505bc04-edbd-ab64-bc95-a06150bbba38@intel.com>
 <20e6d930-c50f-45b7-f98e-3d11c35a09d1@molgen.mpg.de>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
In-Reply-To: <20e6d930-c50f-45b7-f98e-3d11c35a09d1@molgen.mpg.de>
X-ClientProxiedBy: ZR0P278CA0133.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:40::12) To CO1PR11MB4787.namprd11.prod.outlook.com
 (2603:10b6:303:95::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 72b6cfdc-3e77-40d5-672e-08da1de56d9e
X-MS-TrafficTypeDiagnostic: DM4PR11MB6017:EE_
X-Microsoft-Antispam-PRVS: <DM4PR11MB60177B5D4B013028C87A210B97EF9@DM4PR11MB6017.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: P0oqCntF2ctWtNuURazz+pwICi9LVdCPz0+P55/GyRmeHJl27gkzdqyYEa2BNKAnkcEXU/f88PLtGi9a6QUPuUKTYtVWkkRQlpIz8e3hFu2+fi1UPTEO5Yrh4N9pr38jXk37UfytMei7Iyjupfz/5nMnvMz9vR+1GNkNRWzw4EaLdyNdv6VJeVsk39ZDTg96Il8rXPXYFMWzFNP+0TJ4rB7AWIODAKECliSYSud5uT6HlWtPeHwBRb2Vmif9YS0rZmR/lTBm4Qfpk82b3VHs0dvBL6IfYSVEDh0zVMMMLvELkIZ8vOh/2WV1VSlDGSFPubIe1Woo4nomGYa5jeZdtqVNrojN4eY9Dl0NqzZ0lV65Pw5ZBLcyDAQ7qi6xUl8UGcD9KKzuEcmhElhThl2FyFrr4Ahw7fMlbCf11p7uBqIz8wZJDWfNXUIsVPuXIKxYZ+eK6cOPtQrGn8T/H1pAIvwUk0BrUEImuNJjIhFM71fQQBDJey6BlpgV+rwHyamgdgNkGnlGJqsxbpBjhh36HnMT95q5RKFudEsQf9gmoF7fYhiHMNKCjVnlwMQ8yCYmWMAh7xngfIYiS88H4FfxLrEk0a04BCqMCioeEOwQlgFU4HnzwbQXZiizYX40pI8MFw41Z448DIMW5b+7J9rqSgEKX+aaG55FWCn5L7ZI/+ojjM76xVU9byFuZVRLeo4vBWdNfVdVj8fRGp9Wdl3Lwp1u5Bgy761fsaMIme4cHPo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4787.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(2616005)(5660300002)(82960400001)(6512007)(26005)(8936002)(38100700002)(4326008)(86362001)(54906003)(31696002)(316002)(6916009)(8676002)(66946007)(66556008)(66476007)(6666004)(6506007)(6486002)(508600001)(53546011)(186003)(2906002)(36756003)(31686004)(83380400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ekhKNU1yc0NGUURGT3VpRFltMmVHdXpSZVdSTWYyeTEvdTQ1WEJDaUgyK0do?=
 =?utf-8?B?T3dtc2hKL0JaM25McHFadm5MYmNURkUvRUhHVThiM0crSzBsMlJOYjJGcWpj?=
 =?utf-8?B?THAvOUk2OFl6emtIeGcrbHQ2enBwam40UHZHUWFTUjgxZXQwcDl1Y0xYSU5Z?=
 =?utf-8?B?anBONzA1WnV2VGZrSkpSd2F5RHNTVWs0d1hhK3pTV1VwMXpnbEVSa1YzdG5M?=
 =?utf-8?B?Z1Uxc0QwZWJxbUNnUnV4dVNJU1B4bE40OXdOOGNCTFF1NDh2dFg3WTBycTZy?=
 =?utf-8?B?Rmc2VERiR0pQMExpSy9Pekh2TDMxN0NTaXJCb0NMZWVjVlZLTmdVZ2NyaklY?=
 =?utf-8?B?WDlTZGVGYnlTNzlEenJVSWl6THZuNWRUMkRYNEk0UEY2bUhyZmJ2SGtuYXdR?=
 =?utf-8?B?aDlSUS9jMkx2TFlmdnlHVHo1Vm5PUkdwbm40VTNqdHlNWU5FdzVhdEZHdWh2?=
 =?utf-8?B?Y3VqSG5sVG0wL0xyZlA1UWtqREsyc1JlNmVORDJhMzRYbVhjeHRoWW4zL1lM?=
 =?utf-8?B?YW01RTUwVGxQOUZoYXFZOFZuMUZKbE9aL2QzYXlodWo1U2pBb2ZzU3hya3dL?=
 =?utf-8?B?TEltRmErRVN1cnBDWFYvemVNQVcwNVc0VzFacEIrYzlKSjZ5RWhsd0lnWjh6?=
 =?utf-8?B?RWd5aFJuOEl2bXRxdHMyOHNHTGMzbUV2Slh4dTBqSm1PV3lPQXl4V3NqRWdy?=
 =?utf-8?B?V0E4T3h4eTBMR1Rra1ZvU1VMejRGTXpkWk1YdWQyN3BiNXd0RVFCcHFzZUZx?=
 =?utf-8?B?bTBML1I1VElKZFhTeExWa3ZyUkVjZk1zTERHeGlLV3RzWkxOc1dOODRoOE9I?=
 =?utf-8?B?VkFpQ1NxM3BEajZRQVNyaU4vb0x0QzZLendCMHJrTmxHZnB6UFVVVFhWSHZ1?=
 =?utf-8?B?a1loTysxOW9JUktKWjRmVlN5RzNhWlc5SjhYRTRIdVFFbHFucGRzeS9IK3pm?=
 =?utf-8?B?cHhoeC9Pa0VHSmJTeUZha1hhd3RvckJ6WTlmaFpKcytOTlBZQ0FZL1FROTZq?=
 =?utf-8?B?ZE1BWnhrR1hDeVZYbUZHdXBVNlM5YkN5ZnRSbHd3UlVJUlZmczdyUmttLzZM?=
 =?utf-8?B?YUpSUkFTOVlQYTJ5MDBTT016dzZGTXBKUSsreFpLcWdOcEplVUY5ZDIvN2c3?=
 =?utf-8?B?bnRuQlZ2bHJsZlJOUnNvVjR0elR3M1NuVUd1eENZVDNQdU95enlLYjJ4ZWNK?=
 =?utf-8?B?eFdDOE1Sc1hUcGVFWU54c3cxdTBRVlNrY3VGRmdBdHhLUlE4NmVTUGllRkht?=
 =?utf-8?B?WjV4emFGTXVzWk5UbVVQSzNNZWhKVGJtTzEzMld4VlU5eEM3ajJnU3Z3RmF6?=
 =?utf-8?B?eHJ1ODhyL2NjbUJWTTEyVHRZeEptWDdZbER1WGdhd1V1akMwZ1M4YXdGVUox?=
 =?utf-8?B?MllneVNiVmdwdGJpQzIwVGo5eVlQVGZ4cGVhN2M2RG1ydnFLa2VRYkhGa0R6?=
 =?utf-8?B?eXRNOU51bFlvT2FaN2RpZWtNRkI0WGtteVl2Qk1MaXZNS3U5YjBSc3R3ZjBs?=
 =?utf-8?B?YkRYbUw4UDg3a3dyMlgrd241KzMwaUo2SHQzdUUwbDR2RkJ2d2RZMWNacllP?=
 =?utf-8?B?TU42YkpoM2tDaTIrR0dqSVozbW1oZHpMa09BU2pMK1VDdkxUTGpqZVVRWU5a?=
 =?utf-8?B?N3BycGdhSEdFY2lvSFRTcm50QjFLb250Wm1icjhsUFMya1NmdmNLWTN3dFR3?=
 =?utf-8?B?RTJuU3k0cW51Tm9XZlF4RjRMN1hISGFPYjNKM1ZWTm5yaTg3ZnVTTEdkZmtM?=
 =?utf-8?B?SHZqaXJpMjNnYkh0WUY2YlJxcDdFOEVUOStYdUZNcVJxcytONThLZFc1RGVQ?=
 =?utf-8?B?dHFZY3cxMElsd29nRkQxaDJDb0h6MXhhK0l1NzhUL1lDamNvS0NRK2hwV0xJ?=
 =?utf-8?B?YklSWWNESkZIZkRQaGxWMXgvOWwrQVdiVVNrT1Bkbkhxb2pITlg3aVhhU1JG?=
 =?utf-8?B?QmZkSFdVa3pMbzBEaWQzZ3ROSk9QQU4wVnJEbXhSRDNLSS9TL1JrQUVnaldC?=
 =?utf-8?B?NHFBTkk3ZlpqUVBsRG40SXBaU1RYMEN3N3RRUG1wM3dMenExRGprbjJIODlS?=
 =?utf-8?B?MmJveDVyTWhETENKUFhEbWQ5ZXljK1hlSHVLNGRzRzdMTCt1eVY0RkxpOExu?=
 =?utf-8?B?VkNpMTRMSTlqTDg3d2lxQ2E4ZEtJNlhpRE02cHBSK1BuWmowTE1ySmhNaDZF?=
 =?utf-8?B?U3F0M3pWT3dzbnBTc204VFdOSnowMmNrT0xSa2ZONFhhZjlkNnZhaG1tRTlq?=
 =?utf-8?B?eGRPbks4NUE4aDh3VmVTZ3NjRVhTSE5pV0grMnVwZnQzaW1zVnRzU1NZQU5p?=
 =?utf-8?B?MTJsUTNqOEZuVVZSSnFVb1M3emx4Si9ncmEwQzRpUlpFOE8xY3BxemZsR3NV?=
 =?utf-8?Q?g43gsHY2tHFo6j3M=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 72b6cfdc-3e77-40d5-672e-08da1de56d9e
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4787.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2022 07:07:25.3284 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: woWpqjo+FTyG32wUolg/DnAYy/bZwWfQ6UGAXJcOboPWZE/6Mbq381lmDgioM5TWTHmLzRbA6kCkiBiAC02msw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6017
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] I218-LM uses > 1 W with low traffic
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
Cc: Devora Fuxbrumer <devora.fuxbrumer@intel.com>,
 Dima Ruinskiy <dima.ruinskiy@intel.com>, intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gNC83LzIwMjIgMTg6NTgsIFBhdWwgTWVuemVsIHdyb3RlOgo+IERlYXIgU2FzaGEsCj4gCj4g
Cj4gQW0gMDcuMDQuMjIgdW0gMTM6MDMgc2NocmllYiBOZWZ0aW4sIFNhc2hhOgo+PiBPbiA0LzYv
MjAyMiAxMzowOSwgUGF1bCBNZW56ZWwgd3JvdGU6Cj4gCj4+PiBPbiBhIERlbGwgTGF0aXR1ZGUg
RTcyNTAgd2l0aCBEZWJpYW4gc2lkL3Vuc3RhYmxlLCBQb3dlclRPUCAyLjE0IAo+Pj4gcmVwb3J0
cyB0aGUgbmV0d29yayBkZXZpY2UgdXNlcyBvdmVyIDEuNSBXYXR0LCB3aGljaCBpcyBhbG1vc3Qg
dGVuIAo+Pj4gcGVyY2VudCBvZiB0aGUgd2hvbGUgc3lzdGVtLgo+Pj4KPj4+IMKgwqDCoMKgwqDC
oCAxLjYyIFfCoMKgwqAgNDM1LDkgcGt0cy9zwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IERldmljZSAKPj4+IE5ldHp3ZXJrc2Nobml0dHN0ZWxsZTogZW5vMSAoZTEwMDBlKQo+Pj4KPj4+
IMKgwqDCoMKgICQgbHNwY2kgLW5uIHwgZ3JlcCBFdGhlcgo+Pj4gwqDCoMKgwqAgMDA6MTkuMCBF
dGhlcm5ldCBjb250cm9sbGVyIFswMjAwXTogSW50ZWwgQ29ycG9yYXRpb24gRXRoZXJuZXQgCj4+
PiBDb25uZWN0aW9uICgzKSBJMjE4LUxNIFs4MDg2OjE1YTJdIChyZXYgMDMpCj4+PiDCoMKgwqDC
oCAkIHVuYW1lIC1hCj4+PiDCoMKgwqDCoCBMaW51eCBlcnNhdHogNS4xNy4wLXRydW5rLWFtZDY0
ICMxIFNNUCBQUkVFTVBUIERlYmlhbiAKPj4+IDUuMTcuMS0xfmV4cDEgKDIwMjItMDMtMjkpIHg4
Nl82NCBHTlUvTGludXgKPj4+Cj4+PiDCoEZyb20gYXRvcDoKPj4+Cj4+PiDCoMKgwqDCoCBORVQg
fMKgIGVubzHCoMKgwqDCoMKgIDAlIHzCoCBwY2tpwqDCoMKgIDI0MjEgfMKgIHBja2/CoMKgwqAg
MjE5NCB8wqAgc3AgMTAwMCAKPj4+IE1icHMgfMKgIHNpIDE1MDEgS2Jwc8KgIHwgc2/CoCAxNDAg
S2Jwc8KgIHwgZXJyacKgwqDCoMKgwqDCoCAwwqAgfCBlcnJvwqDCoMKgwqDCoMKgIDAgIAo+Pj4g
fCBkcnBvIMKgwqDCoMKgwqAgMMKgIHwKPj4+Cj4+PiBTbyBJIHJlY2VpdmUgMS41IE1icHMsIGFu
ZCBzZW5kIDAuMTQgTWJwcy4KPj4+Cj4+PiBJcyBzdWNoIGhpZ2ggZW5lcmd5IHVzYWdlIGV4cGVj
dGVkIG9mIHRoZSBuZXR3b3JrIGhhcmR3YXJlPwo+IAo+PiBJdCBpcyBub3QgdGhlIHBvd2VyIGNv
bnN1bXB0aW9uIHdlIGV4cGVjdGVkLkhvdyBkbyB5b3UgbWVhc3VyZSBpdD8gKGFzIAo+PiBJIGtu
b3cgcG93ZXJ0b3AgZG9lcyBub3Qgc2hvdyBpdCkKPiAKPiBPbiBteSBzeXN0ZW0sIFBvd2VyVE9Q
IHNob3dzIGl0LiBUaG91Z2ggbWF5YmUgaXTigJlzIGEgYnVnIGluIFBvd2VyVE9Q4oCZcyAKPiBw
b3dlciB1c2FnZSBlc3RpbWF0aW9uIGFsZ29yaXRobS4gTm8gaWRlYS4gQXQgbGVhc3Qgd2l0aCBu
byBuZXR3b3JrIAo+IGNhYmxlIGNvbm5lY3RlZCwgaXQgc2hvd3MgemVybyBXYXR0cyBiZWluZyB1
c2VkLgo+IAo+ICDCoMKgwqDCoMKgwqDCoCAwIG1XwqDCoMKgwqDCoCAwLDAgcGt0cy9zwqAgTmV0
endlcmtzY2huaXR0c3RlbGxlOiBlbm8xIChlMTAwMGUpCj4gCj4gCj4+IFdlIHdpbGwgdHJ5IHRv
IGZpbmQgb3V0IGFib3V0IHBvd2VyIGNvbnN1bXB0aW9uLgo+IAo+IFRoYW5rIHlvdSB2ZXJ5IG11
Y2guVGhlIHBvd2VyIGNvbnN1bXB0aW9uIGR1cmluZyBub3JtYWwgb3BlcmF0aW9uIG1vZGUgZXhw
ZWN0ZWQgdG8gYmUgfjYwMG1XLgo+IAo+IAo+IEtpbmQgcmVnYXJkcywKPiAKPiBQYXVsbAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQt
bGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3Rz
Lm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
