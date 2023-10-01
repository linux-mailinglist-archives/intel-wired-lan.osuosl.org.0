Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A4757B4576
	for <lists+intel-wired-lan@lfdr.de>; Sun,  1 Oct 2023 07:50:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BC8CE416ED;
	Sun,  1 Oct 2023 05:50:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BC8CE416ED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696139424;
	bh=LvVta8AoP526W9tPVAWGxh0sSqJ9syX3ditbbizQgrE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Z7FXsn/XiVBKE5PpyWAr3Kcp5M89qejDTBruyH+BrMSMzyGk2khFy1VzlLZUqozus
	 CNFE2FSmXIlItGcNAVVbk+6vVaDIiEcYg28phndk+8b0bAwQWV/a2r6AcDweHBMi8W
	 5Eu4Rl3BB4EZHHYkrDugK/YqrXRIlAPXy4+JYvSEHAkygT2oIBhgetqvCqRR4O+BGS
	 4SNaM89n4g1oR2BCAxqdctSEui7zhCuG3PNjyX83J6k7Pi4q1/hGd/ziz1jW6j2Z+4
	 P/YTUFhj7In7BsZqin6ELE09z3pRZkqEbq+1qCV0+ghSjFyxaMD5YaS4G0y7EklfRA
	 FeUkrfpWN44Lg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sqfKus4kfG_0; Sun,  1 Oct 2023 05:50:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6BDAA416EE;
	Sun,  1 Oct 2023 05:50:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6BDAA416EE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F114F1BF298
 for <intel-wired-lan@lists.osuosl.org>; Sun,  1 Oct 2023 05:50:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C8CCA8210B
 for <intel-wired-lan@lists.osuosl.org>; Sun,  1 Oct 2023 05:50:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C8CCA8210B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QNwrl0VsUqXB for <intel-wired-lan@lists.osuosl.org>;
 Sun,  1 Oct 2023 05:50:15 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9ACD2820EB
 for <intel-wired-lan@lists.osuosl.org>; Sun,  1 Oct 2023 05:50:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9ACD2820EB
X-IronPort-AV: E=McAfee;i="6600,9927,10849"; a="381374287"
X-IronPort-AV: E=Sophos;i="6.03,191,1694761200"; d="scan'208";a="381374287"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2023 22:50:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10849"; a="997305265"
X-IronPort-AV: E=Sophos;i="6.03,191,1694761200"; d="scan'208";a="997305265"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Sep 2023 22:50:13 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Sat, 30 Sep 2023 22:50:12 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Sat, 30 Sep 2023 22:50:12 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Sat, 30 Sep 2023 22:50:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DV893Y7sCBjSFM4tHGWC9761fKN6redmtCo8aacoPnV83sFOAZvuuUOCadrkCvtNzlUS5u07b/C3naGllO4x6U0XG5ioDU1ItuWl6+xjlZPnkXLmNWuzJ9hFbBIMfaY6XSQOiSGCjHQFDPNod/h0pDAtSo8Q3XQsZcr/WGsU05AzSu0ghv9fF0VgRNW2LdHhY4+1U345HxHaxlUR9J16kpME9P+TEsibo1RxorAYEDZTRxtuxJifVW48JWh9hbHVi9ThvJyZs5FIad1Ea9ObEnJBLK1rOcHjh2L3lt1ekxZLGthLcknutmrhpztR+hFqFMrRJ7Yi4qc71lSsmaudDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LjGDMv7aBCioPXAAIYUfYPPi9u0MjNVvvokv3Zf0XJQ=;
 b=oNUWr6tvjwgEKL/J4haLm9WGUBYay7SiVywptcXfUOfTYTcH+ivkQP1avLxf4AjwJ6frYrnijdZbTGjXBnWlyzp6ot+YKOIE8zX9anG9H2MR/E1QesrQY9h1qHyKD1RMWvVDrg9ZUyGxMpf7CHvUUlHp5Q+bwcjhRksjhwNkDmt8lsy+OZ4St+H5EqTwkeMqau+KCdyOJrVbyBbsNka+yFOIu69DsDwO8dgy0x/iHv7yXtx7ptDbpd23b853Ed5Rxm6MLulhx9vblcT4xyfrVQzs3G21fnFBkkIp7ljma6iMbBcZab3r07hvumZkEBiWWszig3d9cL9SfD6Bduyx5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6725.namprd11.prod.outlook.com (2603:10b6:806:267::18)
 by DS7PR11MB6079.namprd11.prod.outlook.com (2603:10b6:8:85::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.23; Sun, 1 Oct
 2023 05:50:09 +0000
Received: from SN7PR11MB6725.namprd11.prod.outlook.com
 ([fe80::a06f:fff0:8cf5:7606]) by SN7PR11MB6725.namprd11.prod.outlook.com
 ([fe80::a06f:fff0:8cf5:7606%6]) with mapi id 15.20.6813.017; Sun, 1 Oct 2023
 05:50:09 +0000
Message-ID: <8577c007-556f-4fca-8b74-075399223f06@intel.com>
Date: Sun, 1 Oct 2023 08:50:01 +0300
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Simon Horman <horms@kernel.org>, Prasad Koya <prasad@arista.com>, "Andrew
 Lunn" <andrew@lunn.ch>
References: <20230922163804.7DDBA2440449@us122.sjc.aristanetworks.com>
 <20230930161748.GD92317@kernel.org>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
In-Reply-To: <20230930161748.GD92317@kernel.org>
X-ClientProxiedBy: FR2P281CA0180.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9f::9) To SN7PR11MB6725.namprd11.prod.outlook.com
 (2603:10b6:806:267::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB6725:EE_|DS7PR11MB6079:EE_
X-MS-Office365-Filtering-Correlation-Id: 8ca662a8-d036-4309-0eb0-08dbc2424584
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: b9sNpMbewS03X/m0+6TNKo9c0H8fBb3ybBsP8lmKI8hYvcalvx6ipzAEcfK0HsN17wcalPi3MT6UhpZre/Fkn5q8zYOZqRlhOEyzPmMqn8DzLuBooXhkRaOrsdE16GmkT6ihDE6aAGdNeeyHKqqV/fbWwkCod098OwzG+xSRyNrBVNnIkPsN1kUj+Z7qLNMDEvtKCC8fdddEgM9MbvN+biSHDikv5zB7DpWAB0Yd2E47G3vQMEFWG9A0QZDdsP4d9k2g9COcar9EYtRF+t6ZdNMfOQw+rhrSb/ldb/74Wq/WwrB6xnW6pOyuVsOggIAwHZczd6XfIyI/CZbNuBz43APEe59hj+Jp4nGzoytIXrATYq0UgxyPIccKK0KroH82m186nzsldW1RZn+coUoi+SrbIPUvn6YtfECKiaKR6Ss9YCQF1XbJktIZjuLPHxJZ+VorbbR5hjY6aqMH8FlmPcpsegJEHGaM7G0A95ypPkPApMLnPST41t/AH0H9MGJQYkR/BzscU+69asdNCjriflij2pmU4Z1Scn1JQ5MH5HpkGSV2s+ayXahI5xQtwj5cjqOwUSsady3da9kWyfAvhZcnVHm1bXqr9xspaF2TK4NMjnneHRookIuUJZCwSuzTIBXAduy0yIbzwC7D/JIL6A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6725.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(346002)(136003)(396003)(39860400002)(376002)(230922051799003)(64100799003)(1800799009)(451199024)(186009)(53546011)(6666004)(5660300002)(6512007)(31686004)(8936002)(8676002)(6506007)(316002)(66946007)(6486002)(4744005)(110136005)(66556008)(2616005)(66476007)(478600001)(41300700001)(4326008)(26005)(107886003)(86362001)(36756003)(2906002)(38100700002)(31696002)(82960400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a3Q0ZnQ3cm9YRnNzcElNSFZPWVZqeTZ6U3hURnBlVFV6SDhiZ3ZxbHVLUDRR?=
 =?utf-8?B?anduYWRWZlIxOCs5ZkNISXhHZzY5aEpDaGNUNnR6cmsveVIyWWYvRUFrcXVl?=
 =?utf-8?B?MjdDTGRjS3RhVEVRMVFRc1JXV3MvdThGaitCQUQ4UElrWElCeU1naUNKcGlV?=
 =?utf-8?B?aEtmNE5SKzJHL3N3OXVOZDZYdWhQUEFtV1hrcktYRXhIT3BSTXQ5SDdJaW14?=
 =?utf-8?B?a0lGZ3VsYTlwTExmSVVoWkRuK2NjTllSSkNBRmpiKzFqVXQ0SzJNdGV2NWp6?=
 =?utf-8?B?TFJjWHNpTUIwOC9IMDVFSXc2eDBiWG5sL3ZaSFpPT0NYVExQMzZpeVZ3VFNC?=
 =?utf-8?B?VFNQbjRpMk1qejVEZGxyNVVVT1A1NG1HYm1QM2REc3JMYmR2OW9IQ1lVbi9y?=
 =?utf-8?B?WmJEZ1Q2THlwMm5tdDJjVmhhdGdaN3RCeHczVGQ0b0ZNMnBabEx2ZnY3NVhS?=
 =?utf-8?B?UUhsUmVteTNybWp6bjJvd0tMeCtFRW9kV04wY2QxMm9tbCtJRFFsb2MrTGNV?=
 =?utf-8?B?d3RMY3A0M3BKeWZ4UXQwYngxdjNsZDBORHZqejRJMWdRUGJDNHB3cVltY2NX?=
 =?utf-8?B?amlpUkhwazB0U3RIS0NLM0FTRGtWZXJwNFR6WnR6c2YrcjdkRXRNY1o1dGh6?=
 =?utf-8?B?Z0xRK2NXTWFpWVREaDZjVWo3djI4M2MxVzBhaWtSMHlFNnliOU9KaDZUMGZ4?=
 =?utf-8?B?SHZiWVBYd0VOTEZmanJIa0U1VGcyVjZac3Y1dGZxZmlSVHJFNnhiemlIeFNU?=
 =?utf-8?B?RFNOQVBwSWVSUDh6ZUY3MExmTmp6ZlAvRUNZS09sM2JjN2VGa3lyU3UzNmpQ?=
 =?utf-8?B?by80bTVFdzkvdERNclhqYUVCZkNoNjAxUy9oeVVCOHF2Sjl3b0Y3MEVFYmxW?=
 =?utf-8?B?NTkxZmVtWnJEM3dNQ1IyZkxkTWpuTG1RWWVpL0daL0EvVk1kWHQzL3UvRU1y?=
 =?utf-8?B?UmRzUUVkOU4wNVIxVno4VVVBOVlmeUJZMHZnM1duOTQrS20wSzZDUjlxbVZH?=
 =?utf-8?B?NjZHbEdXRXJscWN6UWlOc1VWL3hpZWV5NTNMRVY0bklGV2Zxc0lNS203cC9w?=
 =?utf-8?B?aEtlYmltSW9XbDdvMDcxekorbDBhWEZCUyt5eGR2RHRSMkd1YTB6Wm5kdVdJ?=
 =?utf-8?B?cGZUaktEOVVuRW1nUXJsbTFFMWc3QWs2MEdVbGVkNkthTTB5K3ZPaDJNb2No?=
 =?utf-8?B?VWVXbk9GT1JVdld3dG1LbUsvVzJmcmEvd2QvYm14Z0NRM1Q4M2ExRWpycW1o?=
 =?utf-8?B?MFF5ZnQ1T2xFYWgrKzhKdno5TksrVWFnV3lhcFVWTkhEQnF5aTY1a1lkUHFK?=
 =?utf-8?B?dGx1VWROTHhXdzRpN0xtenVxWWtNRnFaMnpvSkZESVVaRzd6NHZXWEl6WXAv?=
 =?utf-8?B?NjZXZzBlT2w2THA2M0wyeGhsZEFhWjV3Y2t6dmhLbTBtRDlKWW5GQTlvanYw?=
 =?utf-8?B?YmpSSmd6M3g0Wm9raEZxM01ZVDJzcks2WFpacnFUak1zZzlLNjRQWjM4YzZY?=
 =?utf-8?B?RG9qenlqRytjbVk4bE5xODlYYTlmUEhZcDRSTkhxQWkyalU1UC9EL3gxblo4?=
 =?utf-8?B?cDBEaDdEUVpETnZnaU9RRG5CQUV5eGlDZWhhNkdZUURwV2pDOEdPK1Q4dlRq?=
 =?utf-8?B?bUJrVi85TGNvOUV1RmtVNXFsVmlPRFo5dzhIQXVGNW1DTUNwMzd1cm9zcS9L?=
 =?utf-8?B?akFKa3h5ZmlUNmV6QUF1cm1TUzNjcnB6SE02R3NSSnVHS3hiU0JTTElFZ2hY?=
 =?utf-8?B?TlJsSjhVYzAvWGw4WFdnSjkrWVhCb2NDMjVCTHJOZ1VUdmFiV2xNZ2NYWmVH?=
 =?utf-8?B?amhIUjJsbWxoU0pBTlV6K3hpekhkSVExakVkanhwcloxRC93elFIc0VpeVgx?=
 =?utf-8?B?WHB0ZEtZU21iS1dBTittdTd5ZkduVlZlWHY2SGhralk0TnlGdEF4QlRzUjdz?=
 =?utf-8?B?U2puYnFnVU1QUndIcFF4aDBDcWgxNGpGakdZbGF4K1I3ckx1VFFkRUk0WmJw?=
 =?utf-8?B?dXBnZTJWYjdjSVZ1SC96REFCd3FndThtM09KR1ZWbGZMamNWdUFuSGJ6M3FQ?=
 =?utf-8?B?ZEcwbzZ6L1VuK0h1Z3YrVGxZa2IzaWdQWXo4L3A4Y0U4dUlUdXFyUlRRZGVn?=
 =?utf-8?Q?C5yOuCGGkbE8HpErQAqLDAG0O?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ca662a8-d036-4309-0eb0-08dbc2424584
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6725.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Oct 2023 05:50:09.6459 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pGm/9KOQO3nO2IbJCFnqFAhuw2YXAwyKEY8ZLfDswLi+tlE3OGr1qK7xT9EN6Pro+rplS3UUElkJ1PXOLHjmqA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6079
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696139415; x=1727675415;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wJDwfzQBdOnCqbCHzTsPSU/wHVpR4c8schtlw5OgE90=;
 b=JiKwDudtPart5fLcvwbo5cdITrUg6DCkux/PA6/KRB2FcViNqq9tqJ82
 iuGOa6jlqS3V1SCLwABYFeZMiKkNU4XJVKwXw344W+bfo028/h37wIWDg
 lq9rMViU9lUruHpokVU4Y7mhtt7jEsXx8K94i5pfOtfOR3Acy2w3AM+Zd
 guVbdb1lWUlXw56ena55Rl+Dz3uoTamARxK9zZDMVbZR08CgLH1lZO4Uj
 iG2KpkYq6/cTdJ2bA0GWUa5vk5CIo49Lz0hJR9wrar7PaQQhtBPcuvWir
 jG1R/vyIfBx9eVrB3WaFM8oiO3Z0uzgg6Jzn4N8jZf8QxZluLk3EhCQel
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JiKwDudt
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] [iwl-net] Revert "igc: set TP bit in
 'supported' and 'advertising' fields of ethtool_link_ksettings"
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
Cc: dumazet@google.com, netdev@vger.kernel.org, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org, "Lifshits,
 Vitaly" <vitaly.lifshits@intel.com>, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 30/09/2023 19:17, Simon Horman wrote:
> On Fri, Sep 22, 2023 at 09:38:04AM -0700, Prasad Koya wrote:
>> This reverts commit 9ac3fc2f42e5ffa1e927dcbffb71b15fa81459e2.
>>
>> After the command "ethtool -s enps0 speed 100 duplex full autoneg on",
>> i.e., advertise only 100Mbps speed to the peer, "ethtool enps0" shows
>> advertised speeds as 100Mbps and 2500Mbps. Same behavior is seen
>> when changing the speed to 10Mbps or 1000Mbps.
>>
>> This applies to I225/226 parts, which only supports copper mode.
>> Reverting to original till the ambiguity is resolved.
>>
>> Fixes: 9ac3fc2f42e5 ("igc: set TP bit in 'supported' and
>> 'advertising' fields of ethtool_link_ksettings")
> 
> nit: I don't think it is correct to linewrap Fixes tags.

Simon, we decided not to recall this patch and will submit another one. 
(resolve 2500M and TP advertisement ambiguity).

> 
>> Signed-off-by: Prasad Koya <prasad@arista.com>
> 
> ...

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
