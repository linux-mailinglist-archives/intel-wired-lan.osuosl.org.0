Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 635F6B2C8D0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Aug 2025 17:54:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E3DDF60B1F;
	Tue, 19 Aug 2025 15:54:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3MK5NGpOta_a; Tue, 19 Aug 2025 15:54:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5DC5A60B23
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755618856;
	bh=eCGu/EVBl0gnUUV7RJX2uJ8LhDHbputmFFIgXtg3o5w=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=v15vBpFf6CZm/W/l5MeKGJDq19tTWm3z03nrJ2qGtqBweQzo7SrMyUOd5LPa6zU4v
	 9Udq05r25PGhLUEeCbyZXmThCdN87Ukt3kU9qZjsmhfHAhnvXyNzds6Xze8F46k35s
	 cFwtAiNs6Ijf2HRX4+KKU04KLtU09Cy/ur8BTGX1xBydJmdP668nneyEO8b/xy1wBZ
	 ePRMhFWfva//VXoOHu8gLoL0flEocEPlbYtziSQ/rfjJ2uO3aaftQ66Yyq/byV51E7
	 +fUCp2t6An0EgiIj57vELPY+bNbgOK/ppP4ARJVp1z4cKhXPCXaA46gd0Ew9uCnMHx
	 SCHL2pMI8RaBQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5DC5A60B23;
	Tue, 19 Aug 2025 15:54:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 7D97ADE6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Aug 2025 15:54:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 631DC40B45
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Aug 2025 15:54:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jZ5vws3IoQmY for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Aug 2025 15:54:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4E38E40ADD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4E38E40ADD
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4E38E40ADD
 for <intel-wired-lan@osuosl.org>; Tue, 19 Aug 2025 15:54:13 +0000 (UTC)
X-CSE-ConnectionGUID: c8jc2bzATfC9pvpDA4tZFw==
X-CSE-MsgGUID: 3QvU+uypTwKDoseRE3lBIA==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="61701153"
X-IronPort-AV: E=Sophos;i="6.17,302,1747724400"; d="scan'208";a="61701153"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 08:54:04 -0700
X-CSE-ConnectionGUID: XfVRiCsfTuyMBnX9VkA5+A==
X-CSE-MsgGUID: 1vEs7q8uRm6U7qMbjbDYIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,302,1747724400"; d="scan'208";a="167380552"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 08:54:03 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 19 Aug 2025 08:54:03 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 19 Aug 2025 08:54:03 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.70)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 19 Aug 2025 08:54:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fP0W7dQyT68ctfJ+iGEW8A5Tvb7ff207Q4wNd8hIxrP7VIyNxqgFFvgRouX9VIU+qvWkg3+HCLmk5N4vG4LpsHWhZH8oq9GswI5d0gpyL4xMaF4xSl9d0IOFZ1GC1+ERYFqfs2QdgZx068v4iRLUIOhZSVCCdtm4kn++K5XUsfQez1O0bkJ6KVKBvw/IpeTeYIAqItkY1ppY0MXls90XkXKKyHJRwCwCPpS9fnv+tgFO3qURBWxg2lESallpsfig2bXY7NvImw2WU98tLBSUwG2T5FRHq2J19HqqcfPd+MIE8XlzbD1psX4WmjtWb+7ILY0L2RgFaQY//HhpjYzzGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eCGu/EVBl0gnUUV7RJX2uJ8LhDHbputmFFIgXtg3o5w=;
 b=jQtyBpJ3iPGcbf1xRhe3TuNyOLXSNsg/I5Ps7SIQsbrL9yWAvDw8GFh2vW98zYKMNZDwKYuZjUfMxKHErsmKz0UJ1vZy9hs6sPVejfPOjpvfuC49xZvOUUixioViUDmAdmeRccumW7CFYtuYa6sVYUVhS6U4AG/f6o3nD9gNBxSndc0ewDMlPETLhnhmaXQnuJkBAEyp1hpEamYRgP8/RvsWxE2Ar+o/HLxxD2C5Lajkmfe4xEM6i5y4Z+SQ5hiEJ8Q9xe4FzJjqNN0bgbb7J7z50szFmImHCGfRXiv95ob900auk3jfyfESpM7TlOJ06y5fYaQdnuFwl73dCmeJwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF814058951.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::36) by PH3PPF7DB70F9CE.namprd11.prod.outlook.com
 (2603:10b6:518:1::d33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.23; Tue, 19 Aug
 2025 15:53:59 +0000
Received: from DS4PPF814058951.namprd11.prod.outlook.com
 ([fe80::eeb0:881:72ca:a73e]) by DS4PPF814058951.namprd11.prod.outlook.com
 ([fe80::eeb0:881:72ca:a73e%5]) with mapi id 15.20.8989.017; Tue, 19 Aug 2025
 15:53:59 +0000
Message-ID: <ed3e6672-03d6-4045-82bc-ae79c5274c92@intel.com>
Date: Tue, 19 Aug 2025 18:53:54 +0300
User-Agent: Mozilla Thunderbird
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
CC: "Wu, Ricky" <en-wei.wu@canonical.com>, "timo.teras@iki.fi"
 <timo.teras@iki.fi>, "marmarek@invisiblethingslab.com"
 <marmarek@invisiblethingslab.com>
References: <20250819124326.3346021-1-vitaly.lifshits@intel.com>
 <IA3PR11MB8986BE6AD2E729AA68323053E530A@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
In-Reply-To: <IA3PR11MB8986BE6AD2E729AA68323053E530A@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0006.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:2::6)
 To DS4PPF814058951.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::36)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS4PPF814058951:EE_|PH3PPF7DB70F9CE:EE_
X-MS-Office365-Filtering-Correlation-Id: ebbcef4f-b640-4729-b34b-08dddf389c40
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?d0l4T2x1MHdyUUM2OFFFVm92dCtJa3ZMY21jZ0xWV3hjb21QUG1BckkyWFI5?=
 =?utf-8?B?WHJ0c2xpa0orQ3B3N2pIeE5GUWdkekFjMVFtbGk1MUFqWFBBaXJzQXJSdytk?=
 =?utf-8?B?NlpVY1ZjaVVsRGxBOWVBRDZ0THhLODdVSEViVzZTTExxendKNWpEenIyWlRk?=
 =?utf-8?B?OFM2ZFdsdVJtb21QYVliVmE3SzFubk5PYzJyNUVFUnhrWTVRNk0xQ0tUTzh1?=
 =?utf-8?B?T3FEejFVbDdFTnFRdS90Zm93TUZxaXl3TC9aaDlOSmhhTHFvK0tHZ3R5Nk9s?=
 =?utf-8?B?TGN1QzhqUGo0ajRGZFJva2cxTGNrZ3BtYzUvVHg3WTVXb3ZHTTBxeFpQMzlp?=
 =?utf-8?B?L2VVMDBpcW5sckZoOHBCK3ZsSEZEUnRVVWllMHVsN1BHaDNVcUhzVHpIcFFN?=
 =?utf-8?B?amk0Q2NVa25Pa0dmY3l4WGhKSEhkcUFsQnBEaXdvbnhaOFhvaUZic0NSVDBB?=
 =?utf-8?B?YitwNzFrTEg5UkZmR2ZOZjRXd215WVRkbzdJd3ZpUVBKUktJSkpOOXg2elFj?=
 =?utf-8?B?M1BjWXlHNkQ1OEwxTFhEd29FVnFmYXpFcDM0MEdNMmI0Y09YVFZmWGtsR2lt?=
 =?utf-8?B?eE9VQmVRRXhFWVVpSzZ6Y1pYK2FSREZMd3hBVm1Qd3JFSmM0ME8zem13WXVx?=
 =?utf-8?B?Uzl1WGFva3pGNUprbmhKZitOc1NwYTNKVTY2OEVIV0l4RzFMekhLeCtsRC9r?=
 =?utf-8?B?cE9jRmFTOGZpU3Z4WTFhRS9GMmI1N01GQmFWNEZnM3lzTzJmZ3Q0Qkh6Z3Bi?=
 =?utf-8?B?L3NkYklDd2lLaVRKM0d4dWhVQzg2d2Q0dTYvZ3FWZThNSXNlVnBkVXh6NHli?=
 =?utf-8?B?Q0tjNVhjZ09vS3dqR0ZGQTJ6VDZCeTZVSmpvMVJTMFQ5ZDhnYXoyWGpQWDZy?=
 =?utf-8?B?eCtSdm01eUgvaGd0TEJpczcyMWxhNGNER2RKcEx2K1ZjS3k4OUFKdmRnNkpl?=
 =?utf-8?B?c3ZhM1BRM1BWNDcyaXozS0FUazJYeGlBUWIrcE1xazZJdU0vS3RWbXVBczU4?=
 =?utf-8?B?Tzd6eVdmWnRWZDdaK3ZiTGxKT2JwZkF5dVM5akd6SWJPVHcycXQxV1d2MjA0?=
 =?utf-8?B?QytDOUphUVp1czBQeE8zN1JCeFdMTDJmOU9QdGNISmtFb29jWTlFejRDclZn?=
 =?utf-8?B?Mkxmek56S01IL1JzKzlyVVBKUEZTbEU0L0JlM09OeFJrQzd0clFrVCtKNDkr?=
 =?utf-8?B?MEhDN3JJNkltRkM3STA0WlNVdmozUjZabU1BKzJUOCtqVmw2K1BhUHBMUHZt?=
 =?utf-8?B?a2V6SHJXS3ZOai96clIrVCt0dEFrc3JrTkxzOSs3eURVcVFXZStDYTRXVEND?=
 =?utf-8?B?SGwvQSsrdC91aHhuNTVxa2xtbU5MWXBtZ3pnTmZoOHowNkxEbG04SlBNODE4?=
 =?utf-8?B?d2lSdHltYVJEbEdpN0hZckpXTnRHS05odHQrOE1RYjJPbjdIKzRlMWlRcm13?=
 =?utf-8?B?SjJzZTVFdlBCZjJ4UWxJNExKeGVRdk13R2NuY3FocTZ6YzVwcUNwVWJmcVFk?=
 =?utf-8?B?WE1SZmx6WEt6amhlVWc4OGsrb016UmNlcTduQUZvaTloc293WUdkd3Z3bS9N?=
 =?utf-8?B?SDZjekJtbXhxR2dJSHBEV0hGRWI1b3NlMlppQVRNVU9abnhBeGdqczBKYWNS?=
 =?utf-8?B?dHlrcVRLZGN6VzJoMSs0dldaUEZIRzBvUWpRY21VRXVwSHVMYk1ydll4aHJQ?=
 =?utf-8?B?MjBrYUhQZHlsNllUOGVnUlRIME9EZEg0L3FmM3NqMUFHaWRMbWVzbUZxOVZj?=
 =?utf-8?B?Y0pMd3dUbnRUQ0c5Q0IvbVlzQkFOS2RRdXlLdlhHQjdsOXNOdjRpVFBmUTl5?=
 =?utf-8?B?ZWNRVmhxZzJ1elBiOE1SUzRIUzlsSGIvKzMrREZQV0trWEc4Y3hiUnhzVDRy?=
 =?utf-8?B?T0UrU0k1eTFVT1h6Tjc1dmIzSHFSWVlwQUNyNFdqL090VnIxK05KRmtKR3Ry?=
 =?utf-8?Q?Qk2Z73OLqVM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF814058951.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dmxZV0lhNHZYSENLcmE0b1pPY1FJKzIwRVdFcURmUEZaOHlDRndwZmZkV3lC?=
 =?utf-8?B?VzdtaEhvV1BrbnI3RG1xWW9INEEvaHBVclFsMDVnTW1IL09DS1FsNzdwTTV1?=
 =?utf-8?B?TzRMWCt4cFArK3ZHUW92Mm9laHVZVWRqVUp0aVlDeUU4NmZmQ3I5MEdBWnA2?=
 =?utf-8?B?UVY4NTZDOFRGODQwbWtRZWlWVTRzZUN1K0wwcVBTM3orczdnL1hLZlVrS25i?=
 =?utf-8?B?RUN3ODUwTzFGczZiaENpWmZSajFobGI2elZTRDFlSVJiOWZGTGYyRVlQdjNt?=
 =?utf-8?B?V1hCSU1rVndjR1hia0dKbSs3RmowUE1jVzdQZ3JBSG94TjZ2Sjk5eXgvL05a?=
 =?utf-8?B?NkVyT3IyY2xMS3gydVJLU1FEYjBsUURmYkdKZ2d2dDR6ZVk5MmRneTdESXNz?=
 =?utf-8?B?TDB0OWNIVi9iTGFWQVU3MnFWcERlbCtITXJHejdYNXJuM1FEZTgxTXNiRXJw?=
 =?utf-8?B?MERMcmU4bzFLb3kvZnZqVWFKSitIVitPd1dnWGIwWjlEMTA1MU9uUU1QYmdy?=
 =?utf-8?B?eHpwa2lOTzZkU0d3UXY2Y1RmVFdKYlg5RWpwajg3bS9UZFBVbWJUYWNzNWRB?=
 =?utf-8?B?Q3dWL3RFclVDSG00MnpPNkhTM29DVktDZll0S3lXTFBYc0VOREt0dzk0YnBX?=
 =?utf-8?B?SlF4TzMrZjRqa0NGU24rOUNFQ0lPYitkc0ViT2xQYXZiVzg3ckJ0bXh5T2tY?=
 =?utf-8?B?bmlYeVIwVkNPRXJ3ZjVCKzZSY1NlWmRReVNsSzd3cGpBVHRCd3BjVlFRU2xv?=
 =?utf-8?B?dytFRENuYlVJQ1RFYXhTa29teWVBc1FwSW5GeW9XVm9jbkY0VFZla0RNTlVi?=
 =?utf-8?B?NHBza1FkdEVqSVJzcmtab1hKMzFFUy9ueFU5MHJJRStjeWxtV1FYcGdpOEp2?=
 =?utf-8?B?UjhEUXBFSElhbHg5MWRZWkdleGRIaVBkdDVuKzRpdEhiREwxQU9USjBzNHBk?=
 =?utf-8?B?eit4cUNpMDVWcVJKV0UvOVlGZEw4YUNFTnR6M0pIbE5MRTlpeWduM0lpNWtW?=
 =?utf-8?B?TXl3RHBTNTFJN1l5NmkvSzJSR2taR3FOTkhmS21uUGhjQmxDeWtMQ0UyZ1Zu?=
 =?utf-8?B?b3B6SklFMVlORDE0MS9SKzdSdDNRMFNPbGpaS1BDdlpLU1M0L2c5bjRPTmZ3?=
 =?utf-8?B?SjN0R25hc2xYbHdXNHlkQXdncytXMVVNdWxnSUZLR2JVVURObXJySzVFdHdT?=
 =?utf-8?B?NTZtVDkwYmNPTytqSDlKNmU3aCtqeWNmWXVCTlNJaU03Y3ZhbnJ4OTQwQkJD?=
 =?utf-8?B?KzBIRjBsSUtiYkIrWm5XcngxL3BYOTMrbEVLVTlJMWd2UHRvbDV4bVZ0OXdS?=
 =?utf-8?B?ckRTZlNMRUNRSTdYOUNuSFdVdWJPSkRvUTQ2TEMwTENtb0Y1WVpHdWczcUxl?=
 =?utf-8?B?RUNRbjRkV25BOVppbS9PSDJ3VzZqeUJGaHFGbFREbysrOVBKcldWbnBkNmp4?=
 =?utf-8?B?OEN5RmUzTE1qR3YzKzJYU1VnME9FdDVyWjBUaFRyNmVyYzJCblBWWFVCRldX?=
 =?utf-8?B?MDZsRm1CbU5uZGxuRm51RURNRUZtTGh2NlN6MXdScS9lYWpPcVgzU1JPL3p4?=
 =?utf-8?B?SUVKV2FrcVpUSmVaUHMvd3lhSThwMEEyTXdtVkRvSTlQa25CbVVZRThNaDIr?=
 =?utf-8?B?TCsxdFJGOGg5Qk5hcTR4ZldUNDNiODUvczEyUkpWQnNCdzgyWklVUmwzMTdG?=
 =?utf-8?B?QlEwRmtBS256dTZvbXBkeFZWRDBUcUM4eUNWa1NCMWEwc3VVOUUvTFNFM2Qz?=
 =?utf-8?B?cGU3SEY2d25vNnQ0a2hBYzhFUHRIMHJjV2t2a1VKTU44Sk9GWW9QQkJKU0Fa?=
 =?utf-8?B?ejRmT1FIUEQ2c20zd1pHUThPbzVsSU1pcGJRMk4xQkhPend5bEtLRTBIVitL?=
 =?utf-8?B?SFg5NythemM3NzVuZ1laZnBESlJVVTMzV0l1V0l6RGlMb2w2NXN4YXpiZkhn?=
 =?utf-8?B?emxSM2hkN29ZT2YxcXdvOWRTZ05wdnBYS3NwMnpITGhtZk10blc4S0JVMlNT?=
 =?utf-8?B?alJhSWxEWjF2TTk5STFCZTl5bkNZSFE4bGdzeGE2MVFyd0FPU0VxR0Ztd09U?=
 =?utf-8?B?aVRLdVI3ZVY3WmdRVGRUeW5PdDQ4SUN6K0tVTjZKeklqZ2FXcURtb3BPWWVE?=
 =?utf-8?B?dkJTcjFqTkkyek9lRDJXRVppVDVkR3RXRDYyL091MWNHdVZHQitIanIrNzVQ?=
 =?utf-8?B?bXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ebbcef4f-b640-4729-b34b-08dddf389c40
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF814058951.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Aug 2025 15:53:59.2971 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /2DMs8VLrNwg/ISZjKvxTelR/lKA5OQflHv0wOMJWy7ciytHPf/xcdfCndLJgczrpVq68AQCZDzsE97Rb9Wi0UGUoyxzGTu42fRATonI5ls=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF7DB70F9CE
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755618854; x=1787154854;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bdnqGtOV4kLavrvsoa5g3RwSxuW3HzZK5dZNvVouH58=;
 b=bxokJe6Egl8Ql6Tzchi/wm2saLEQbHdszo0fwBBuTe6uWeEBZ3gMBDr3
 P6k+3y7qxrTUKY2wxndtz16fQr9bemoA0IHwOHx6xFTIFmfialO4HfbhU
 JCSymtbz/2Cp2MsdX1pDNy1s5aK+59gmxcT4NjqN+iYxQFeVBnU7+Ib9W
 lHbCF9hAgF9OzA7RV0dEhpo1g1tSGnhhYihZr+vIOYFmdEHSyMLJhZKW2
 UjK0D/wtyjN7Z6Sd2FtgqrPluP5xqr9+QQl4OUC0eUFNfB3RY9oIyuyv7
 sn7SupVzAsR7xzmsFFdJdyM++E9LflCKxAH9ST2Pf6aTSM/J++BnHC0EW
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bxokJe6E
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/1] e1000e: Introduce
 private flag to disable K1
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/19/2025 5:19 PM, Loktionov, Aleksandr wrote:

> 
> ...
> 
>> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
>> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
>> @@ -5267,6 +5267,11 @@ static void e1000_watchdog_task(struct
>> work_struct *work)
>>   						  &adapter->link_duplex);
>>   			e1000_print_link_info(adapter);
>>
>> +			if (adapter->flags2 & FLAG2_DISABLE_K1) {
>> +				adapter->hw.dev_spec.ich8lan.disable_k1 =
>> true;
>> +				e1000_reconfigure_k1_params(&adapter->hw);
>> +			}
>> +
> You changed the function header comment to require the PHY sem.
> Good - but. You already correctly hold the lock in other call sites (e.g., init paths).
> Are you sure watchdog still consistent?

Hi Aleksandr,

Thank you for noticing it.
Yes, you are correct, a semaphore should be taken here, I will fix it in v2.

> 
>>   			/* check if SmartSpeed worked */
>>   			e1000e_check_downshift(hw);
>>   			if (phy->speed_downgraded)
>> --
>> 2.34.1
> 

