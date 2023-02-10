Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C8669240C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Feb 2023 18:08:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2A8EC402AD;
	Fri, 10 Feb 2023 17:08:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2A8EC402AD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676048900;
	bh=wfTlLQgaA9r/enJHpbt4FlfDx/n3QUmmPdOTV7a7ezc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rdqAOY6RC1x2cuEGg/p+IpZQgMHtY0eHMxhS+/6sZSQjQByYvySPzSg7AxIHpotnP
	 HXTMX9/xa/N7JDCM2NW8WjtdkVZ9WY2A0M5WR8AFQyvBu+7NJpURpleFZV3DxF8mLv
	 8yNqoE2Wnf/WusUx862d3Z1a0JtYpWL//PkkTIpiy4dAJZfQLykBjZv7Ldxf/qjdgO
	 7kSUhyJyOex9HUTGb7pTxET/8H2QAjMaUU64zsBLZb/J2WBS4NqDMOYR4kidwwi/Sa
	 y8roCKYMukkbSdOJEmkWAlJZtUB39Ys21H0c2MKu63eVLIZrzxVTyHEBTbCXszBrMh
	 leE2a72KNR2UQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SmYvogzE7VI8; Fri, 10 Feb 2023 17:08:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E5D844071E;
	Fri, 10 Feb 2023 17:08:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E5D844071E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DF3051BF479
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Feb 2023 17:08:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B6FC882319
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Feb 2023 17:08:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B6FC882319
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EgOIYmvBjecK for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Feb 2023 17:08:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 34B69822B9
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 34B69822B9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Feb 2023 17:08:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10617"; a="392871384"
X-IronPort-AV: E=Sophos;i="5.97,287,1669104000"; d="scan'208";a="392871384"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2023 09:05:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10617"; a="810879240"
X-IronPort-AV: E=Sophos;i="5.97,287,1669104000"; d="scan'208";a="810879240"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP; 10 Feb 2023 09:05:18 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 10 Feb 2023 09:05:15 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 10 Feb 2023 09:05:15 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 10 Feb 2023 09:05:15 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 10 Feb 2023 09:05:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Yo3x+ereCXZYkIhReAKViAKp9F/AoKU1jhAYrq9ieJP0Fio6fUcFHLfKtSf+fERVtvKofs9IadP8J/Ds6C1edJu+JChdckoBDYQV9W9cv5Q1qI/D3NDfV1OVOZf5oCxLMlwRevhzGdiCqFLCs7DKgiCv0bA4tS6lQcOfD+kx/CjmB8AcsditEEnNEzEDWsw/k3cjpkGYWLqgmKbpLAvbbwvMoFSCKckX/wnoJ+Ofu/khrg+fFbERPSNkomQhoAGYtOFRqhbimzZ21QKd6H/VKdDBLfg/oGIjhQ/8gFt7Ow3AOoeRlf1nO9GSg3KbXdDrCRQHoZ9B1EjAwKkhaD8DDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yFJ3ei3ythBczYGHikxzfvXFqVnkxs3hN4aRBrZiDuc=;
 b=ZiaV+zYqHo9QArxIZx+1L0a33ON8pQlxL6v78sfJsDYuf7q+FU4OjveZt/QUGi9rHNTonSqbpd83u+gKyl0Ct2TNCiY0eVl8AXvNppFUjiBH7cFQx0e02QSwRhX96fokOBFaQmHrO9uUL6d2kAJThLRu1gRl2bPxPvXBpoDDVK87T8zZLhKilc0LHs9zTWD878MZCeSCtxBTFRBMjf7jLphnH0+AAi0CaibuSuJmuZB2v/pWFlr4J9IcNrxu4MZXG9+ucrVcqhG77Nzp2R4SOu4HEHpdwt0/Iq09NS+G5WapHV6VQSTW8RhhDXTipP7ZwJ+Cvwrn4aXUTBRBF9bE9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by CO1PR11MB4884.namprd11.prod.outlook.com (2603:10b6:303:6c::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6086.21; Fri, 10 Feb
 2023 17:05:13 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::c743:ed9a:85d0:262e]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::c743:ed9a:85d0:262e%5]) with mapi id 15.20.6086.021; Fri, 10 Feb 2023
 17:05:13 +0000
Message-ID: <adcb9bc8-c8ff-05ac-b410-c064704c51d8@intel.com>
Date: Fri, 10 Feb 2023 09:05:11 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
To: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>
References: <20230206235436.2254802-1-jesse.brandeburg@intel.com>
 <Y+Oky4j0zDyfLp8r@localhost.localdomain>
 <030bb9a9-de44-215e-c274-f0a02b2d5cd5@intel.com>
 <d6785ec7-ef66-3d97-d87a-acf6dc7cff2d@intel.com>
Content-Language: en-US
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
In-Reply-To: <d6785ec7-ef66-3d97-d87a-acf6dc7cff2d@intel.com>
X-ClientProxiedBy: BYAPR08CA0008.namprd08.prod.outlook.com
 (2603:10b6:a03:100::21) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4914:EE_|CO1PR11MB4884:EE_
X-MS-Office365-Filtering-Correlation-Id: 372779ee-a553-49f2-6000-08db0b88f99c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cnTptJA/34cSPA5DS7Rtec1BJkvUrdHrn6kf/dffbry7SPRNVd9m+QekIQCp40ploqzMrFIsCWv+iN/j11UbkitQRt4rez4gUgswx2fVQ2auIKhWJcsycuq73k1kMuhhTFUThRYsOyRgk+sid5LmiZ+GavYmK7ruMizFG+qdq+NfzWSjlesU3YMEXhNwhCiqHqLu5EvRCWIXzIeSD3aQKmQr24gvrSBMWlgTH6ugMaHipUj7MhoEPAPpM6lkRPUAhhSBVhpWmOjPvECQjNklU8W0t4u6lRqs/YRXJ1HYsnFXXSzILMFMSmqoZY8Q1V6z5AA39ph0mvqVSKAuE8XgLWdeV1SvjcSFSIn7AkdvM8rEY7rFu6+B8Dk26DDRBllj8HQ2BfZKcOr66GGKx7zZXTc9IWHLPH4tq541kvxggZiSMZkA7JM/wkUU0KxU/ZU/uZUw7UUtcQKd8Q32wUzgNSixNohbjXJGRrzgSlCFxfQSrmEuP34AkFnZON2RZRMEFAWgk+Jh5sXLP+rJbiArRg382OhJ6DJfTYDIxEXD/C8iWwlGXUT5MnFyyadxeOeWkJh7I+2d6uU01TRLJSmjrD9bGxjtZ7xBNn02rleA6xMXKbdHi8lMDUs+4SHlneWifNJW7+b6MFL2ef4s4aghqk3Xe5/z33PRyDVk8s4LJqS/D10vTl1MAamtrYWx1CyoeW4V5lOpi0/+PsEVHAFeuc8FS8VuG6+OfU7M8PdfE9k=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(136003)(346002)(376002)(366004)(396003)(451199018)(44832011)(4744005)(2906002)(86362001)(82960400001)(38100700002)(31686004)(2616005)(6486002)(186003)(6506007)(6512007)(53546011)(26005)(31696002)(36756003)(66556008)(66946007)(66476007)(316002)(110136005)(41300700001)(4326008)(478600001)(8676002)(5660300002)(8936002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TUxJd29TOU9qc0FtUFFzRGd2bk0xZkVCQlFqY2J4d1l5Y1RIV1FiYmRIVTFK?=
 =?utf-8?B?YVczcnpBSXNueDErWUU3M0UwbDJzRWNzZTByeUIybFdoWE44WHAvTWFldDJF?=
 =?utf-8?B?NUEvclo5cGdqY2ZPejR2TUlxS3J0VUxkRE9saWppbzBWYXVRWUZRMWRUWEJE?=
 =?utf-8?B?SThKYzFvbG02V2ZIT0pKa3lNbWY3VVJnL1A4ZHpvMS9UKzZQcXd0SjR5TlE4?=
 =?utf-8?B?OU50VlBJZWM5UEJ5ck1LNDF0SzhkSHdTcE9HZmJ3VzZoNlp0MHZHb25ST1p3?=
 =?utf-8?B?SjFkSjFLWHp0YzEzejRrL2hxRXc4NkZEVTFFRWFCMXo2SHAwSFVnaFBxRUJK?=
 =?utf-8?B?VnFscUo0SmlMblJoSlYyTFVjdlVTN1dDU1NhVHo3YS95TzJ5cklJcVlOY2JC?=
 =?utf-8?B?bjdKNC9uZm9BK0VZejVVTHppaWh2ZXJrc3NXelc5dm5qM2tUMWZkd2dOVUl1?=
 =?utf-8?B?ajFNWkpaUzZiQkVFSGpFclhBQ1ZFVFBKY1dkTFE5MGxjTHQ2dmtxbml3eWRW?=
 =?utf-8?B?eGVTcUY1bmsxbzFlUXZFZyswRVI5Ui8wYVBQaGRSczR5N3lSWVlPaThWT2xJ?=
 =?utf-8?B?ZjNCWUtPbFN0ZUhmbjZtT3VKcWVHbUkzb0tuRzJqNVZtTEkrLzd6T2M1SCt5?=
 =?utf-8?B?V1hlVnFYZHV4SXNxNFFaY0dkSWdvWmJ0WEhWazN2N0hFUUVtbXpoeGROZmdE?=
 =?utf-8?B?eUZMNk9WckZOTzFNYzFuMmlyM3VXdTE5RUpXNjFibVM2VE1vOXZwbVhlK20r?=
 =?utf-8?B?L0h5ckkvZ2pSaWpZSVViVXdNQVMxYTlNRkMwQVRMSUZsY21FbldDQUE4YUxT?=
 =?utf-8?B?M3JOUGh2azVHY3pvejRvWHZncGZsd2M5WHlBalNIV0ZNdFZERXhJdUFtVWRB?=
 =?utf-8?B?ZEdBbkdWRUluSkMrcmpraFA2dkJGTDZtd2Zuemt4dkJFT205cmROL3JLcTVQ?=
 =?utf-8?B?REtEdFM2SnVmN2hRWjVpN09tYXJ5V0Z0SFZsVkhRckQ5QVNOZGp0MUk1Mmtn?=
 =?utf-8?B?TGZ6VHB0VGlpc2Q3cjRkU01EWW1TS1hwcTRBZGpIOFJxRkJmeHJMcEsvYVpG?=
 =?utf-8?B?eVNiL1IrQ29YWEJSek5mNEFITW43VUpMTllvNWV3Sy9XWjl1Zm42bzdBWjFR?=
 =?utf-8?B?bjhTNk52ck5jWTlHaTVNZXpYMG1qRzdDR2VHZWs3c09CTUFrRDJ5WmJmdDBM?=
 =?utf-8?B?a1VrZHc2Zkt6RGY3cU1uOG9OdEFqd0FnK0ovNW1QSWk1K1Z2M1JUWEZ4eWZS?=
 =?utf-8?B?QkNQN0lhcUxDOENDTkRsd2Q1NDJCMERPeGZEYkd4VTJhSlp4L2VNcUdMOHdh?=
 =?utf-8?B?TnVJa0h0amV0QVAxcFVia2FsWllmM0lmeGUwazNXZ0RFYVpMTmk3Qkl6YmVo?=
 =?utf-8?B?M0NsWU9CWHMyRmVjaVUvdXZYN2g5TWFYWHZlSzI2cXdjbnN1MXphUlZZVkJp?=
 =?utf-8?B?OHRoSFhLSnRLWS90R20rSUk1QnlsNVVkN2FVbzNmSjBaaHN6c3Z4RkhrVHVO?=
 =?utf-8?B?YkpsRmczaEhzeE1SSDkyWng0ekVnYVZVblBBR3BOMjNyUXNZUXErZGw4Q0lu?=
 =?utf-8?B?NERvdzFhYkhXaEl2M3ltdE5WalhCSm0vYUtneHhpc1V5SG9acVR2Tmw2dnRr?=
 =?utf-8?B?V1dJSjhrQ3k4WUc2SFlzSWxXTWIxRFAvT3Q5RXh0angzYnp1YWM4TzJOanVE?=
 =?utf-8?B?b2FEdm9tNjRBcmIwR20yeGlRY2M3Y00velZodjM0MUF1TGZzVXcyTzdkc29X?=
 =?utf-8?B?dUFkWTFjVzJpN0gyQXJJejZYdlRTR0pjZEtEaTRhRFl5U2ljZE1ONzZPWENa?=
 =?utf-8?B?bCt4MFBWNjBZdUZSeE1IUDdpek1IdDJPeXZ6QkVZOENNbHp5Z1BuYkZXSjdV?=
 =?utf-8?B?RVRQOFQ2L3M5MTRTQTBCVHBxWWFPejdWb0EydkFZNWxreWorRXVtbzZyNERJ?=
 =?utf-8?B?MXBlMFRIb1gxVmFSejVJbFdWdHNNeFhMdSs1WmVvOUU0MXl0eXhaNEZjMWNu?=
 =?utf-8?B?MnhJZ3dFUWpicjd0SlBRdndpdWNSU3FwN0syUFhLS0Yva1lBUFROVEZWaGlQ?=
 =?utf-8?B?WUJWWVdqczNHMXQxM3lUa3p4ak94Z3hxZWVYU1p3YUlJcHdGMWJvREFjUjg1?=
 =?utf-8?B?aG0zMU9JeGhodDhzZGRqVHFLNElvM2gvVmJIaVpEZHcybHNQaDEyRWozQTZz?=
 =?utf-8?B?dWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 372779ee-a553-49f2-6000-08db0b88f99c
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Feb 2023 17:05:13.6945 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FPTVeyXBtgByL7O8MmuZ1XsGc9zkOao/QhJKbzDTU3Sunm8+YD5asRujwntNaxznT9oUPzlMI7kr8FcYOInVDtB6TpC52A2D+/qQ0Z7UB3M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4884
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676048892; x=1707584892;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AQv9eP5OmkKeY+z7twp/Wat+dfllcasHlRJfJYarWow=;
 b=ZCr71HH/ZnXCZp6Jc1UdvAOyIeC/+iFmZZr8sQA0XvfnsaczVRk0gv+f
 lBb7sLZkw0jJzOO5VI1jjijXuRxnG+OkQ4h2f62nTrjzAy1PHQn167X/5
 ulAQQTkOPNOz4UsfrcmTHdCwHvbgW6YmAHkxrGSoc60zhkGkUArGL21wj
 HgTW4PfO9acvjlqO/I0sM8abdrdZxVqGA9wOpADZBQtd/XENtxPRcIQbO
 bOj50UXY+ds815zbLtNHNdS6Be7TRn3wtAsL4ZJhjDM8HOmk8jLlkKgUt
 babcYdPBOUywRJCh7qn6f+oaEyOzOHildgJNYAKazhWVBmy5sU/RNUlMU
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZCr71HH/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: fix lost multicast
 packets in promisc mode
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMi85LzIwMjMgNjoyOCBQTSwgU2FtdWRyYWxhLCBTcmlkaGFyIHdyb3RlOgoKPj4+IEJhc2lj
YWxseSwgaG93IElGRl9QUk9NSVNDIHNob3VsZCB3b3JrPwo+Pgo+PiBZZXAsIGl0J3MgYWx3YXlz
IGhvdyBpdCBzaG91bGQgaGF2ZSB3b3JrZWQsIGJ1dCBpdCB3YXNuJ3QgcXVpdGUgCj4+IHdvcmtp
bmcgcmlnaHQsIGFuZCB1c2luZyBicmlkZ2UgImZpeGVkIiBpdCBiZWNhdXNlIGJyaWRnZSBzZXRz
IGJvdGggCj4+IFBST01JU0MgYW5kIEFMTE1VTFRJIGJpdHMuCj4gCj4gQ2FuIHRoaXMgYmUgc29s
dmVkIGJ5IGxldHRpbmcgb3ZzIHNldCBtdWx0aWNhc3Qgc25vb3BpbmcgcmF0aGVyIHRoYW4gCj4g
ZHJpdmVyIG92ZXJsb2FkaW5nIElGRl9QUk9NSVNDCj4gIMKgwqAgb3ZzLXZzY3RsIHNldCBCcmlk
Z2UgYnIwIG1jYXN0X3Nub29waW5nX2VuYWJsZT10cnVlCgpNaWdodCB3b3JrPyBObyBvbmUgZWxz
ZSBoYXMgYnJvdWdodCB0aGlzIHVwIGJlZm9yZSBub3cuIEhvd2V2ZXIsIEkgc3RpbGwgCnRoaW5r
IG91ciBkcml2ZXIgaXMgZG9pbmcgdGhlIHdyb25nIHRoaW5nIGFuZCB0aGlzIHBhdGNoIGlzIG5l
ZWRlZC4KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpo
dHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
