Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C90F546BAF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jun 2022 19:32:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AB028411E7;
	Fri, 10 Jun 2022 17:32:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oyWuaJ5pulRN; Fri, 10 Jun 2022 17:32:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B437E411E2;
	Fri, 10 Jun 2022 17:32:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B09F11BF2B0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jun 2022 17:32:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8D2CC612AD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jun 2022 17:32:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wE4j_XnPRAC7 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jun 2022 17:32:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 736A961250
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jun 2022 17:32:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654882367; x=1686418367;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=oIdTS1LdTjiJPYGQjnHQ/E72renHqLp/cBVFDDPTQ5Y=;
 b=mBVhj0ZBbTfeiEHJNmfyNMrphZIHkhnqA2Nazjj5OF1nyC92U6dd3cgM
 I9mUZF9mHV0h8mmTfkgbNP+gCwpwO+WD2I2cHp/enlErsh4v/jBBJDjWy
 ObiXFrEseY0iclSCtg3Shf7tOc0xiI02gNgXzfOjNWGJ+tdF8j20TJgBc
 CHpSqTXtReFzT0g9xkb5NxcfVJpg+8hOAAcwQ+7lIRarTEncIqRAJNJZP
 8Gtz7MOKfV9daFKI9pqBPdXzV/Emdxxf9fwA8lAwA8COhWVRndQJkloUN
 9SjisBxZvjV0rGar23O9oyT6H/lUvAhYnyi3Hs5Sq52131xbNXJH1HyLp A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10374"; a="257524022"
X-IronPort-AV: E=Sophos;i="5.91,291,1647327600"; d="scan'208";a="257524022"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2022 10:32:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,291,1647327600"; d="scan'208";a="649924843"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga004.fm.intel.com with ESMTP; 10 Jun 2022 10:32:46 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 10 Jun 2022 10:32:46 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 10 Jun 2022 10:32:45 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 10 Jun 2022 10:32:45 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 10 Jun 2022 10:32:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j6wjMf6WLUbwX827o0gwFGdFNwKdMZn3zOIVbpvOlL6/zwl6zGmjPB8Tip1EXKP6AuEnP5MfPH0tijTTAbg44zD8u+OgafojLx/VRSGoMoNA7JAGgWb1nuzT8wd11Zfu6x2c3NWz5fokM8qHshA9U8HhdTzxl8CkLMTgq04BGOUkJboOi0XB7ICDtudO4iCpGCwwOVkVfFNpv/0ZxvPo5B/P2W/a6LtAEh01YF+LR5dFLcXNMzYMr88+QdXxuJnG1jKxHZhccezRdjalbzuy1UgxN3DZbdolKJ5zzjkaLSuiDJDORO9Q6uJOId7JAi6uQc8VQKvnCf5P8Ci6bkFsRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oMYUtiEefoiKLjXlPyJ36kfDcWKdJPSSZ1iPi8Obi1w=;
 b=a5JkJkhi8xXw308uc8X7M6/wxvljcvBoBRiLc6dY1c+vMjtX5LLQcJ+GU4iZ6QsOTsm8zTiaIDKvaER50k27ztk/KstweM+C2C0E9qHlOuufjV++RnVRQrLhFJqRVlECWzyrfnYpcXeouWTZd9kgZhDK+/b1YpTMRDUmBOGe/SFvJSXEmpvuD3hCv6QH6aBFAvtoAO0BVXR5vYShoPPWprHxAbZ+QR9uMsD1bzQp+aAH1QZWRzKeFy9f2DV5RQc4NFZ5x2qdK7TdVQWDycgNXmcBwBy+9ZZaU6rlK1A5VHrsbgTBWcJtGAsEihjynm9lRFb6YYHFZBMXR/fZu8S0mg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by MWHPR11MB1470.namprd11.prod.outlook.com (2603:10b6:301:e::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5314.13; Fri, 10 Jun
 2022 17:32:41 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::317d:11f9:2381:a3a3]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::317d:11f9:2381:a3a3%6]) with mapi id 15.20.5314.019; Fri, 10 Jun 2022
 17:32:40 +0000
Message-ID: <634f4d1c-301e-26ec-1772-fa8568c4c6ff@intel.com>
Date: Fri, 10 Jun 2022 10:32:28 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Jun Zhang <xuejun.zhang@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20220609220121.1286133-1-xuejun.zhang@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220609220121.1286133-1-xuejun.zhang@intel.com>
X-ClientProxiedBy: CO1PR15CA0053.namprd15.prod.outlook.com
 (2603:10b6:101:1f::21) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1cc358ec-591d-43bf-f62e-08da4b07382b
X-MS-TrafficTypeDiagnostic: MWHPR11MB1470:EE_
X-Microsoft-Antispam-PRVS: <MWHPR11MB14703233E8BF89ED1F25F793C6A69@MWHPR11MB1470.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KXyN6h4LadN3wnalG6O8vumY7PUFgNU0zxLDLca6MXjvqF52XoiCtbZ94ii63BeXfRx4yvIsKbbRseCvICZf38exA/o+ebZtoP61NepL7PBRSexG0VNyPJUdnIzdTnskUJFdLPfoWTky2WMqFsZEBs29Khb7eGB+1MFMPA2KP+eovbVmmfmjCG9m5aGu48lMokf2hqv+bEh6HmROZvF512d2o/gd9wCIp+UlK4w+tW5tothqKY8YtkvGvNIkN/FqeOkk6bqszMoNk85rfF+PwPRY20bok+Z2GnMfXaSy6bGUEC/CoTuxlawbDdXh8q7v4FkZzs4wFsnriL6q0Xkq5Gn12uSxpx0BAsNFhPTLCjFtGFDsaM5DvBNi0PvP+F/DOssv+H9btQJwnrHzJQLbBfb1xDLGr/a2CNtu/QHhXrh3Xni/Y4Ost8mF4QFh/rVRKXNmZOJaWz15IrNwWRWRZIlTAuo9svQ0buM6RwSuaqYu35zkRdWYHP96/2jl6fwib7J/a5G9FYtKKegGb2ROShfy/k78JUTrXJTl2kfN0F2+aD86l76lXuTo7DbhwSEz2dI318742GxJ+q3RotD2tnK4dNBa9LFqnB8+5e4GcXN3IJ0AawtbPcQBHdsUjfOIegFKchEU6yk0OKHCVRo6nWOc3HqS8ITD84CAjgLoYV+/JD/+wQtfDeboxU7AyjO7rAfJrCyrmxqlzEu11Uc/8cPyUj4cd9aQ96RidAzau6YZN/UJEWgqEnDVlLB/oRlA
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(83380400001)(4326008)(31686004)(508600001)(6486002)(2906002)(36756003)(82960400001)(38100700002)(4744005)(6506007)(2616005)(5660300002)(107886003)(53546011)(8676002)(26005)(6666004)(316002)(8936002)(6512007)(66946007)(66556008)(66476007)(86362001)(31696002)(186003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YkwzaUQyN2Z4UjhuZ2pZVmFLemVuVHY5VmsyVWhubGY5bWNJWTNzSEJLVDJD?=
 =?utf-8?B?K0NINlc1OEFaNnY3OWJwaGtxMjZIaXBUcjB1Z3BndlRyTFA3cC9SN1l2dXpK?=
 =?utf-8?B?ZmlhRU1GR1pHSERLMG1iTHVFSktNRmNNTU94MC9BaWs1K29oQ3g0bGpKK3Rr?=
 =?utf-8?B?cVBZQTV4eExSZVJueHJSSVVFUXE2c0Nra05sK2NLUEtwUVZQdlY0Y3FiM29q?=
 =?utf-8?B?WTNXNU9DYzFKem1SY1h3YVNEZkY4cG1xRnB1WEp3VWhNNjRUQkJiMVB1Nko3?=
 =?utf-8?B?elpPa2FuM0ZJY1pWWFRoMitoa3hwYStnbjUwUWZjMk1ZQzQ0TTJ3dTBzdGkz?=
 =?utf-8?B?RTU1V01wNTV6OTJKblJJcWFFRDFqK3JGakQ0VGhOeGFLOUxtZkNPVEt4dnJs?=
 =?utf-8?B?WHlkYy90bkNRRHcxK0lGS3EwNGF3LzFld21tand5V28xcFM3UHNtKy8wV2ho?=
 =?utf-8?B?YnRwNXVtcnd5L0U5ZHJrVkZzbHhOSmxtQkoxdTEzZ0lxL0hSRTRPVUh1bjU4?=
 =?utf-8?B?RkdDNkVJQ2wxcFRlYmlqYWk3TUFlQ2UxZDFzM3N2NWxLWXlCK1Ztd0x5a05H?=
 =?utf-8?B?ME9ENHBEV2Q4cGV1eDA4SXl3dWluTjdRS3hyTTF2MXpJZVJ6UkhwYWVhWkN3?=
 =?utf-8?B?LzdFNU9TblhqL0FWNEdyaitXcm14aWh3Q0VXVTl4OFNaMU0vTG55ZzgveG80?=
 =?utf-8?B?OFNNQXpKS01meDdyTmt0S0VTelUyT1JtendpMFMrN04xVmwzcW5nVDdTRDRa?=
 =?utf-8?B?dEhJVXErSHJ6aDd2elpMZHc1TzhZaFJxcHdDbkhBZzJyQTNjNjJVUEFnZGZN?=
 =?utf-8?B?d0x2Nk9QWTBjUlJvdk5BcW4rZE1rSTZIWG5uVldYY1JGamQ5clFqNkVEL3F4?=
 =?utf-8?B?N1hydU56aU5JT1JVNk9tVFFoc0U4TmJLZnEyZkRMSnRjeGs0NjlLdk5za0Z1?=
 =?utf-8?B?ZkhMSE9GYVFmNCthejl3YnNIYTRNM0dZelBKWlJXL3ZpUXZILzV6RlVqYm5r?=
 =?utf-8?B?S3VLRXpIYVIxQ2tWZzNDdGVSUlY2VTYxWm1lMWFybTBQM1Y3NjJ5dzlia1dZ?=
 =?utf-8?B?aWJNTTFsT1J3cnNqZGtRdjFaSEVmcEZhV3d5QVZVMGJ2U0lKeGppSFM5SXN5?=
 =?utf-8?B?dTJwODRwNXgrb1dCamlqV2JnYVZSdlNONTlENEVFVnAwQ0QwRFNtclpEWnE1?=
 =?utf-8?B?RHVSZXQyRDdmQ0hzOWI4SVlLN25NMHhkRnduUUdOWXlTckl0NkZKblBUMHRs?=
 =?utf-8?B?VHA2QTJwRjF0VFcxVnpzZ3E0ZUVsamVpVXZUMnorQUNKTzI4eDRNbFZkTVNu?=
 =?utf-8?B?YWVjSSt6NkJwMEszRkorR2tXRFFtWk55NCtJRVBvTnZPNVpnNlQzdFNMQkwy?=
 =?utf-8?B?bWd4YlBlaU92OUU1N2RJeHIwMG0xTHh2WDRSQVNJeHhCRWo1bGFyN1lFaUE5?=
 =?utf-8?B?cTBENVI5Nzl4bmVpR3NvZ25WQksrcUxYdGhLK2psSjNWVEtkSXhFdGt1em9C?=
 =?utf-8?B?QzdMcjI0b0ovWjNGRWIvdUJuUFU3aXRpT2NWY3QrT3ZYTXgrdVJQWVdkNVhQ?=
 =?utf-8?B?QlVXT3kybEtOYUxQQUx4RTYvcTBEdzVtUnVFVHlHUUROYjh6aHVFRlFlNGJk?=
 =?utf-8?B?S2FvVnZlOTZhNmhTYWtJdHh2Sy9OM2xMeFQ1SmZpM3FXMzNlK28yOTkvUDhV?=
 =?utf-8?B?ZjZrckcvSy95SXNFUzNXbGlGYS9yTGtBWHRyckExZ3A1Q2k2YXhGRFZmRGZT?=
 =?utf-8?B?UEtHejlHQmt1Z0cxS2dNVlZSYm1QMUE1bUMrLzNKM2tVcEJ0UnE2djZyYU1J?=
 =?utf-8?B?NitvUnc3RmlVblJMRlFJN00yeUd2alRJL05EYTZudmhXZDVKNlRxM2FSMDU2?=
 =?utf-8?B?RUdPSVpaWHlFck9ENnpIWUNrcitJc0hqeDgrRGRUWjduYVpjaHVrQmRjb2xO?=
 =?utf-8?B?cmxVMWhiZmhBMEZUcE0vVHJjT3RWdmNCanBKWWc4SzJ4Mm10NmVpRzFLZk9l?=
 =?utf-8?B?Zm1yMm9nbHUwNyswdTFCVGZpMXlWajhBcmtYTVJkSFVkaEcyRUJpR3dlQ2hm?=
 =?utf-8?B?MlpITzFDOHRPKy80VEsrR3pPRng0eUlxQUExc3o4WEE1R2ZYMi9uU2UxNjh2?=
 =?utf-8?B?Q0NYMm9ETGNqVGxtQWJmUlFJLzJNOGdaSkZCRWlGS3kzTU9ZQ3M1YmVTVHp5?=
 =?utf-8?B?a3d6Vys0T3EwbnhZMEZ2bXg5SUdidGFCNWxiaTYvWGNUU2luY2JVMHREUk1t?=
 =?utf-8?B?V0JMNlh5Y2pFQ1JOaU9pVDAyTDJ5SVIrQWlDY3ZNbURlM1ZzVzZjQ1d6Lzcx?=
 =?utf-8?B?Z3VHNFRSSlhidXFWSm5Td0JJUDJoak90S29NL2JxcGp0UHN6dUdmNEJBVTZ0?=
 =?utf-8?Q?/fUbQjxncZ8bKjew=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1cc358ec-591d-43bf-f62e-08da4b07382b
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jun 2022 17:32:40.8262 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Mfq2d4KDiy1x5W0EtJZVXn9UDyUQTCVt4d9tdVqpM+oHvfgRooZ55WNMT+wYWMlDAK3MxTJQ67cGeaJkkBkQddbbGF4bvo/dyqtRBcNzHgE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1470
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v2] iavf: Disallow changing
 rx/tx-frames and rx/tx-frames-irq
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
Cc: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 6/9/2022 3:01 PM, Jun Zhang wrote:
> From: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
> 
> Remove support for rx/tx-frames and rx/tx-frames-irq as it is
> introducing counterintuitive settings and is not stated in any
> requirement.

I suggest remove the requirements portion; this doesn't really apply to 
the kernel.

> Remove from supported_coalesce_params ETHTOOL_COALESCE_MAX_FRAMES
> and ETHTOOL_COALESCE_MAX_FRAMES_IRQ. As tx-frames-irq allowed
> user to change budget for iavf_clean_tx_irq, remove work_limit
> and use define for budget.
> Without this patch there would be possiblity to change rx/tx-frames
> and rx/tx-frames-irq, which for rx/tx-frames did nothing, while for
> rx/tx-frames-irq it changed rx/tx-frames and only changed budget
> for cleaning NAPI poll.
> 

I missed this on v1, but where is the Fixes tag? All net bug fixes need one.

> Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
> Signed-off-by: Jun Zhang <xuejun.zhang@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
