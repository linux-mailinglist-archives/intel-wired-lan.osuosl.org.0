Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 799D159689B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Aug 2022 07:29:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E571161055;
	Wed, 17 Aug 2022 05:29:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E571161055
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660714172;
	bh=rnWo7RrRUXOIlMFYxx8FivQq2h1fM5niH/5mgRbcSl4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=eR700gLe4TJuH+bQtsR66tESaWaewYE3Zr5lsqCSsKYgB1VRwxsvRdLe85D7YRjUb
	 zrb9X/b8nGR1cLivkeNMmEps/lYEZ4tf9jWdyzZM4dQkyzT5g9578/8UzAb+ULdpod
	 x7Q9CTFzS6mrZhaRPP0yY1Gf0eMkq7nsq6RinG4R/G44OyTdZaVT6ivDOcjBq31uNn
	 3uuz+sBNkjFhkqLkGaeuTlnnbTPT/g0gd/YPUX6l+4xXFGXvlC8N5IIISJUe9TOMyp
	 mDjdpyO2NfMJyYx+FRfq5eLF8d4euHxdo7tMfipnR4cC++PlPOw49ul9HHrWc5h+IX
	 8z39Qc+4wKmxA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VPuKmkC8Svzn; Wed, 17 Aug 2022 05:29:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E163460AD2;
	Wed, 17 Aug 2022 05:29:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E163460AD2
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 729AD1BF947
 for <intel-wired-lan@osuosl.org>; Wed, 17 Aug 2022 05:29:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5920982F20
 for <intel-wired-lan@osuosl.org>; Wed, 17 Aug 2022 05:29:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5920982F20
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jo-ERTrmC-Fv for <intel-wired-lan@osuosl.org>;
 Wed, 17 Aug 2022 05:29:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B4ED082F19
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B4ED082F19
 for <intel-wired-lan@osuosl.org>; Wed, 17 Aug 2022 05:29:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10441"; a="292400419"
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="292400419"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 22:29:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="733555178"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP; 16 Aug 2022 22:29:21 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 22:29:21 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 22:29:21 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 16 Aug 2022 22:29:21 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 16 Aug 2022 22:29:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KUeQBfM8wvWFgWWniIfE3HismmJEo0wIQ92oC+GmzjKnbnIZ9AYY+Std3WpLvewY+amPRbzdIXCQFkWphxb5Eh8iSRaecG79JtHLCNeTmCdOhSm26NtrAevzzOydrgXdg8LrY6NMtxSTJfr/inlE6wBFq17R8Z3hVw8XPL92FRIRRm9LoBun2O+oiic4bHzTq/SFv7Xt+OpArbyew4zyCIGKfb9M1KgRl0vOXS6pjZOzxpDpTOvIjL1Zj3KeNqNanoyjCd3kQbS+mmcBlRmWP8J6lHhaTNlz4RdqzAU3IW1XNJomFtxlwSy1mrSIDsue8QC0eppxkx3G76BcYTdgLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tnz/olFySQ14Xho2l50LKGhpedVpwUe+DcC+S/ukKI8=;
 b=X1oGDZn55XPqadAAYs6OcfH44lWIC1e+xV4xeEHoZK1o6jaa72qItvNvPhGBaJ/aXpvT+iezU0/y5YKgL3VyXuKZ7ITGKjVc8aoh/mgmWtYEuU5C9iC95JLtYBdzAER7cG9NAQC0w0C+aM3q3NKr+3bTYYTD+QcqTkIyv6GHQDwzKMRSs4f+XnQRIKGNX4aV90vvpBhWOU04NVREWuzHBjM0xtadbm6JPV6HYO6szLDP68HuLE3pb9ETSFca+mt1hKIDwx0jUhhS98p5oi9PlxGE288CXiHaNv9aNqfIr6By4cD1U77jPkHHj5I/tQj4Sq3WQ63Ug52NFXryIjmLLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM5PR1101MB2235.namprd11.prod.outlook.com (2603:10b6:4:52::15)
 by DM5PR1101MB2346.namprd11.prod.outlook.com (2603:10b6:3:a6::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.16; Wed, 17 Aug
 2022 05:29:19 +0000
Received: from DM5PR1101MB2235.namprd11.prod.outlook.com
 ([fe80::6956:55cb:1f16:adcd]) by DM5PR1101MB2235.namprd11.prod.outlook.com
 ([fe80::6956:55cb:1f16:adcd%11]) with mapi id 15.20.5504.028; Wed, 17 Aug
 2022 05:29:19 +0000
Message-ID: <1508ad4e-e71d-df42-1224-c3d9a0e1e6b5@intel.com>
Date: Wed, 17 Aug 2022 08:29:13 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.12.0
Content-Language: en-US
To: <intel-wired-lan@osuosl.org>
References: <d8e3744f060ee11d5069bfd0f581f02d0ecb5e08.1657093744.git.lorenzo@kernel.org>
 <93210e6c-a583-aff1-753b-88286ab09434@linux.intel.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
In-Reply-To: <93210e6c-a583-aff1-753b-88286ab09434@linux.intel.com>
X-ClientProxiedBy: AM6P192CA0013.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:209:83::26) To DM5PR1101MB2235.namprd11.prod.outlook.com
 (2603:10b6:4:52::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2eacc49d-3080-4848-8482-08da80116ecf
X-MS-TrafficTypeDiagnostic: DM5PR1101MB2346:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: pgvlvP2YHIn29Xn/OwHWISyRPjwBkUdkfMEAfmDEHG0pyQ/0JMZ/MdXbsxw/6m+53w4Oyw3fZ06hDGqeZj0RrOLhosW0kG9sgP8dogeaVVAgA1L3OOOZGh5DIo8G7iIAZTVSQ/tPJ4VC94yoo2ofGHULnsY/ZL+55FLDkVd+1VZLSWaxvd5g7d98W+cYBQOEygUYV5tampYlAf4CsnVy1GIn/QA+IIg6brR5bKpAAvgFsnjBM9eVBF1cc6pn8ElPtxusA5DqgHsOn0Zv7dBnsJL3F52qguLW0QoDBlW7COXxeoi0DaykeNzjXd57flgZucFjGS9wTYKfD/DGUyJoFnFttXGr9dCM5wNc3v0aEIJE+cvnufxFz4Xh/fRNImIifV0UoUVa7Cnna1ZuuJk8jVq204aOZ3hgm4mCtej55GYy4ceuzAdDa+jPYRFrL4CbFO/7Uqi2TqcSmRn+zRV+y/AeCEk+kspCnBcHg+nyvgPs7H47GShuBDm1ufA+S1uMCUdpNZwerhRrCMt1T+chFHSneJAEm9jlCtalV18AmZ+0gDaUFgaQXo6WQ9FIebDkOIlS7XM5drpcGQdXKPrnjBeHFrW8F/x1P+b7omXZ2itNrzb99ylH68pYAjhtuEruoYXT7KwidcHDC3LsWYM9AVPy5glS4aWm6FLR5DYtwEiDnVrE2H6nw984WfDJ+6z6GHcIOU8hUaHOBQ+rsKwKjY6IilxOm9HzoGd7Pvwsr8zGQaM2VEyVg7OoA7cRsopaiFyECIjRn2O7i5RJ4TUW814/MC3b3RD98KxOl2UaphQfcd9fDObLuE9eA+13Q8LJtxK5xC6MemHHcmIe/7/GVuFya4DC5O5B7tmBQum0zA4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR1101MB2235.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(366004)(346002)(136003)(376002)(396003)(4744005)(2906002)(6506007)(38100700002)(53546011)(5660300002)(41300700001)(6666004)(82960400001)(31686004)(36756003)(31696002)(966005)(478600001)(6486002)(66556008)(66476007)(86362001)(8676002)(8936002)(6916009)(316002)(2616005)(83380400001)(186003)(6512007)(26005)(66946007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S3hkalEwQVgvSzZCVFFiVklGUGtjU3ZYNmJxRDJqMFRzNVp0Y0NWdFg5Mnln?=
 =?utf-8?B?N1ozeklVUVVKVnpYWXFKSmQvMitkclNzdmxlYTFSZVpTNWs3c2dadE1FN3Fl?=
 =?utf-8?B?dHhWMEo1OGt5cTE4c3hiVC9RQURsalhZZHZQajJSRC9RUVlRZDdsMm1xZTFa?=
 =?utf-8?B?QVBCN2YyTFFVR24vZys5N05XWDJYdHdjMEdWLzJwRzJJRllDUUFyaWJ2QUdr?=
 =?utf-8?B?YmQyWEJuME1ockVUdnM1SEZUenZVTUhwOThETFluTjZ1bjdabUd6citCZmhS?=
 =?utf-8?B?dzhZUWdxWThVdmNDT3lGaGFCZkNEdWEzTDQ2L1hDbEhJcjJrK1BJNGM1YlVQ?=
 =?utf-8?B?RExHdlh5ZlZIRk1JbGNjbVplZmVOYTRBT2hqaUNCOGEzYmpiUEhKNGpkMmo5?=
 =?utf-8?B?ck9UK3JMQ2RIT0VMRGFad1VWN3hhWng0Mjk2Mmpkc3RDOVZYTFIrdjVUek5l?=
 =?utf-8?B?VE5SQTdYaXVxZEpwSEcvbWRGalRJTTMyL0VLMFcrRW9ueUtMRXB2VEFjTk0y?=
 =?utf-8?B?ZnRRS2tLMm5vZGFndzBOdmowbWZVcXFCNEVLYUlFQ3IzMURaRUUxbVVIQUdT?=
 =?utf-8?B?ODJiWWJyK0R2dVd4NXJYTmg0bDcyUXg5eDBYbytKdlNqWmw5M3pDR2FycTRp?=
 =?utf-8?B?cGxBNEZDa0pJYTdubWJOL2lONnZWTktLVlBQb0VaTk9obmNyZG1hSEZEVnNW?=
 =?utf-8?B?bUo1bzhSWGovcmF0VjhieUFzNDExbjAyeWRMT0Y0UnJnS3UrbjhES0lEVlhz?=
 =?utf-8?B?OHZ3RDV2K0hNNUVwVW03cW5yOVMwR3JURlo2ZU56Z0NRQjdsb1VWcmNsY0p4?=
 =?utf-8?B?eGY5djZUN3AwZWZsdEVabEpDNXF0SVZTRVNxMDJqL3VzaUZUdDk5QmVwTW1M?=
 =?utf-8?B?V0FWc1NXWHNDNjlDUEZvTUQwY29iN3BMdDdzMk5sL0kwRnJTLzVIcWFVMFkz?=
 =?utf-8?B?cHloYzRTQm0zYWxzdENaa093Y2VYZ09kY3lHRnk1UzRQQ0k0TkJ4YkRHYUN3?=
 =?utf-8?B?SEdBUUEzdUZOWEtLT2pPSy9xQk9CRk9tVnMwQWwwbzNETXZ0eWFNMXprTG0w?=
 =?utf-8?B?azRiR0o3Mm5tbEpsOEdqd0FBYnRhWnNCTDBvWTZxOFE4WW9kNkU5UU1PanM3?=
 =?utf-8?B?L0p6NXJFYUNRUTFJa1cyZlBvdkNvNzhnSTVJT3dZQno4R3VJdGZHVUd4MXhv?=
 =?utf-8?B?R3BmNTFvZkVhQjhEa3dBMHRKL215cmN6L3AraTR2b1pWdkNvS29udmFOcVds?=
 =?utf-8?B?Ri9STkRmcGhWdGNRL2lWK1BOeVJUbFUvbllnQVNtYnBkNE1sS0hUenlPWUo2?=
 =?utf-8?B?SExsaWEvQUh4Z0dzMytMaXo5aXd2WTBQaU9OdHZJNll2eGJpYm1SODhkaUwv?=
 =?utf-8?B?S0Y2N2RqOTM5STZSYVNrVXo2TGhmWGJWUE8yUXN4K2xQRkQ3a3IxTitZd0Iy?=
 =?utf-8?B?Wjd1eDVlekhDM05VdFI2RHpKdXMyTzVBUm5nOGJpZjdab0tPaW9ZdkJtM2lO?=
 =?utf-8?B?R0FsMlY5ZU0zUlJlelhObkJuMUVyMkZWYjhuQmpINlVWNmM3Tlh5QzNFNkI3?=
 =?utf-8?B?TXYvallIeWQ4cjZ1WW05cHQ2L3N1MmJmU2hvSysraExOU1pGeDE1Y2M2cmlE?=
 =?utf-8?B?a0piL0J3TXBvbFlrOU9VOTNzalBLMGQ2clk0VjByVDRvNWNJY0JseEFraWJR?=
 =?utf-8?B?VUdLeFdNMEZJMGwrM2ovRVFCeHcvN09SdFE2eFpuU2p4SlNJdWdHOVZxdHE4?=
 =?utf-8?B?V2ZzMWVYaDlsYTg5NHBmVURzaDdQMGZVYnJRR0gzb3EyNGtCa01Ha0dCZTVi?=
 =?utf-8?B?bFhod1dlSmlibXRRb3dSbEo4TUhPdXppaXVoZGdKZTl2MVdVVUp5KytHQzJK?=
 =?utf-8?B?UnpsYVd3aVUzY2o4TDdjTldoVGVvRk9RR0I3QjBYTTUvS3NyanBLdVJmU0Vq?=
 =?utf-8?B?eG4wYjJkdDdJVVo2ZTMrRWVRd2swNHlXV2RFZlJ0QW1tWE1ia1owNHIyM0sy?=
 =?utf-8?B?SEorN3lFV2N5THNqcWtKb2k2QUkvUDM5ajdjWHBRcHdDaXRsYjFWMVBydFFk?=
 =?utf-8?B?U1ZLZHh2S1lNRW50eCtjSWc0aTQ5NmY5Wll0eUs1aEkwWU12SmpRcmlFdUFm?=
 =?utf-8?B?blhjMDl3R2RCdUI4c3p4aEFZVXRGdjlqY3VValhLVG41V21QVTBDSDNtNEFY?=
 =?utf-8?B?Z0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2eacc49d-3080-4848-8482-08da80116ecf
X-MS-Exchange-CrossTenant-AuthSource: DM5PR1101MB2235.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Aug 2022 05:29:19.1989 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4exd+6+NdByiuPXRKn+YDoodydneyfTr/wif5oiB5QCkrAtzbLWDUtRuMV/TsqxRjvxLXRT7dxBJxxRROpD1tQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2346
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660714162; x=1692250162;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=tnz/olFySQ14Xho2l50LKGhpedVpwUe+DcC+S/ukKI8=;
 b=dolJlfHqJrDxMASUx9Q7YWBwdHmx55dGbVnmW5Mnjeu9ysEskGskyWmS
 hccibXnRtjVIElkMHRLp8IMAl7AMwTPQ6Ae/fY6Qi8Ye0+ndwXYNrSPbS
 KHsO5YIiJf6zZwxFHqKYeF6XsVM1D1pLiuOdQqjzYTiELpknLlsI/aicc
 ozcWIgKhOVCvFZYl8hIq5mADh96POY8lbP8mAYNfFiMG7NtrEtObxYL2c
 Nw+5iPx5Axj3p8fobZXl8wnZNUPLjL6gcqiHd4G0pHVez2N9IuS+aT0bH
 c+7tPef464tQ2a50JzsCRkrd7djETWQtrrJxot6KeFcu+vv3Tn8KZhsHo
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dolJlfHq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] igc: add xdp frags support
 to ndo_xdp_xmit
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gOC8xNi8yMDIyIDEwOjE0LCBuYWFtYXgubWVpciB3cm90ZToKPiBPbiA3LzYvMjAyMiAxMDo1
NCwgTG9yZW56byBCaWFuY29uaSB3cm90ZToKPj4gQWRkIHRoZSBjYXBhYmlsaXR5IHRvIG1hcCBu
b24tbGluZWFyIHhkcCBmcmFtZXMgaW4gWERQX1RYIGFuZAo+PiBuZG9feGRwX3htaXQgY2FsbGJh
Y2suCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IExvcmVuem8gQmlhbmNvbmkgPGxvcmVuem9Aa2VybmVs
Lm9yZz4KPj4gLS0tCj4+IFBsZWFzZSBub3RlIHRoaXMgcGF0Y2ggaXMgb25seSBjb21waWxlZCB0
ZXN0ZWQgc2luY2UgSSBkbyBub3QgaGF2ZQo+PiBhY2Nlc3MgdG8gYSBpZ2MgTklDCj4+IC0tLQo+
PiDCoCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX21haW4uYyB8IDEyOCArKysr
KysrKysrKysrKy0tLS0tLS0tCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCA4MyBpbnNlcnRpb25zKCsp
LCA0NSBkZWxldGlvbnMoLSkKPiBUZXN0ZWQtYnk6IE5hYW1hIE1laXIgPG5hYW1heC5tZWlyQGxp
bnV4LmludGVsLmNvbT4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+IEludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKPiBJbnRlbC13aXJlZC1sYW5A
b3N1b3NsLm9yZwo+IGh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLXdpcmVkLWxhbgpBY2tlZC1ieTogU2FzaGEgTmVmdGluIDxzYXNoYS5uZWZ0aW5AaW50ZWwu
Y29tPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBz
Oi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
