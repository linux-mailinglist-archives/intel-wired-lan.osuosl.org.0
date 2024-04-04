Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D4F4898828
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Apr 2024 14:46:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BE7AB41B2F;
	Thu,  4 Apr 2024 12:45:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id J1QSi9sushYA; Thu,  4 Apr 2024 12:45:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E1A4741AEF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712234758;
	bh=bZsm+wbvk54NBM4m8QDxceaWnjF4JXlvUW+Ncy7bGjo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gIRjuNBJRBa5swxpagZFc/qjUXMFAJNoYfNnPEJmcQjnyzU/fDiYKAFUdkr10yEdt
	 mrKS8SaGa1KaMHqHqysb0CcvGBw+rQCVKcVlHKx95YZeYEVFOPWBAFILd61FE2V2cy
	 lVgmX/DnPvXaBlAg3YXSU4Y57MMhuesR+CHYp+APOCXZa147o92Qr8eRqotIfZ7U+r
	 GlOeS1tqY5vEItHcaKMAd6lolL/0vZ9bw/Kza20pMR0x5wza0yFWtBcVd3KrrqeCvI
	 2c+IqL7gaw2CjuZTxZVrqa1Iu9oR4A6jPDSAfff70YXvN5hEqsPRXatVyV/iyslRAB
	 xWVd+ziAD8DiA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E1A4741AEF;
	Thu,  4 Apr 2024 12:45:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 187B11BF3D8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 12:45:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1044582F37
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 12:45:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9LOslVYaXNUL for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Apr 2024 12:45:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=wojciech.drewek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9D38082D40
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9D38082D40
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9D38082D40
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 12:45:53 +0000 (UTC)
X-CSE-ConnectionGUID: 9hjPH2GiRw+U68gYqH4z9w==
X-CSE-MsgGUID: khZkBpuhTcG17SnEiQRzCA==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="7374488"
X-IronPort-AV: E=Sophos;i="6.07,179,1708416000"; 
   d="scan'208";a="7374488"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2024 05:45:53 -0700
X-CSE-ConnectionGUID: Lf9gPxgPS1ix4pSTwMHH2A==
X-CSE-MsgGUID: s1cLWOcvT8ukMh7ecb3reA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,178,1708416000"; d="scan'208";a="19368164"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Apr 2024 05:45:52 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 4 Apr 2024 05:45:52 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 4 Apr 2024 05:45:51 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 4 Apr 2024 05:45:51 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 4 Apr 2024 05:45:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XBz+hLnNbOtkIlyKrtNuQtJkokCQFnljFNgtCLv8JejLQU3qwwSXS1nBUaV86eUptBu8h4fO9a9hBiFOU25bUCt7dM4yVjQ+P6Qj/TCogXRnQQAtZZFrr5xBLN0KIyPR+A43NkoYAyAJJZXCUxedDYvQH5e/ty5h2yaYATfnC9N3j7qCTY/SMeeg/PjwJckAN1cT9qjgRXGwpwW3LkG/YLeJa0BbIlS0kjhU+ww7IdhM2G69B0M01OFUsKqKUyve9+njf1/yEBFmZgrx+cjOfC3HH88dW8bNmYy8NbIJSskyiwLhWSpb2tAmaWFWzbTHyBThGqnmJ2CYj/Gqsj+nzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bZsm+wbvk54NBM4m8QDxceaWnjF4JXlvUW+Ncy7bGjo=;
 b=XFp3NsYB5zTxOaIxIzz6gv4XmvxkpHLmAAiUcZ8wYCL1AVjxpoWnVbEtKAWq8WS/K0TG0q+BmNrzErO0nwMQ1NCb+JoiywWPwPDit1NQTewBT69Iat31tsONo8UGTYPLHj9GLxoR/gXXfdwrVFaGr6eW302ipJXa2mN+djkhx0n1sC4TlhL503LdMTkFD9d0htqloT2gu/7vgP9LxIVv/DAMgLxxI8g7lxv5OjkSKQIu1gTtr87I5UyBiIOS96+aLZbc2Czalbwp1GLl+D2k5tQCWU5BxhoQ5eQuPj5FeaEPrdkhf4LCpjrSnbRy9F4ID4bXjI57ozpgJ6Kb3FuaZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by CY8PR11MB7876.namprd11.prod.outlook.com (2603:10b6:930:7d::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.33; Thu, 4 Apr
 2024 12:45:48 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::2ac3:a242:4abe:a665]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::2ac3:a242:4abe:a665%4]) with mapi id 15.20.7452.019; Thu, 4 Apr 2024
 12:45:48 +0000
Message-ID: <206686dc-c39b-4b52-a35c-914b93fe3f36@intel.com>
Date: Thu, 4 Apr 2024 14:45:43 +0200
User-Agent: Mozilla Thunderbird
To: Andrew Lunn <andrew@lunn.ch>
References: <20240329092321.16843-1-wojciech.drewek@intel.com>
 <38d874e3-f25b-4af2-8c1c-946ab74c1925@lunn.ch>
 <a3fd2b83-93af-4a59-a651-1ffe0dbddbe4@intel.com>
 <dc601a7c-7bb7-4857-8991-43357b15ed5a@lunn.ch>
 <ad026426-f6a4-4581-b090-31ab65fb4782@intel.com>
 <61a89488-e79a-4175-8868-3de36af7f62d@lunn.ch>
Content-Language: en-US
From: Wojciech Drewek <wojciech.drewek@intel.com>
In-Reply-To: <61a89488-e79a-4175-8868-3de36af7f62d@lunn.ch>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA2P291CA0014.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::25) To MW4PR11MB5776.namprd11.prod.outlook.com
 (2603:10b6:303:183::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB5776:EE_|CY8PR11MB7876:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6DcjmfeumLP3VW2byDO9/V66VJQSEngS2KuJb5PQZx2Tbls58RUuDpIKQByJpp0dQFknkImtmyJy85ybv+zbYkFmDwqSwip8sY6fco86M4wPRgdmwxhcwhnF5quGqdcK4Z2ZyDu24tOkTFnVAo1G20CjWHp5PKOhlU4ObG5spwNpKaJZ/qe+j5N0CkS6Krlzk96CeuNJUDHghJQMoHBQEtMarqWcQoYqy5zReRied4omOAbfGOTDMydPoUAye+mtOtRRLmzVdRb6GYJNMDi2tzkg8CO0cUjmS8PIZULi1V3apmp3y9Tm2k6Q9t30W09HBBqGNZfD4kFAFObQqcGdnMRjLgak/pcUm93VrUT0O/kLffr5QGtC4Ar5vy4eIhDk9gNRP0uTgI8MQBXUJgunG/aMG4wpX0/MOa9Co8YAU8bhU0Bn28/KGpErY0jkp1h72PE69+Qpz2XUMgk0PuAeYtWKdfO8iexzM5tk/XVaDWBtXNTsNf+VqkHRhhL8vKg6YGCmFXAtscv9vrw0pn4yGv+j9MbZqh8RbaF1XQzstbuLafVulNoCYANd/qVy82D4/VVZtZgOOMQHxZDi2vMwoFyOgKZo0VzobHfO+mb436K5im0kgF4OfqGpsySoAMZYjDEsLc65hiuHl5NbuidDKYT3j5aGnRMf1+MSvHELyRA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SDd5YURTbm9TckR1N2d0NEh6M2s2eTh0UzdCbms5RWJycFVwTElNUUY4QVY3?=
 =?utf-8?B?UnZjWDVscEEySTZoWUZzeGx5cjM0NjIyS0ZSYlUrR08xQUJWN1JGSUh4Tmlk?=
 =?utf-8?B?YnRCV2FOYURpTzAybFh4NUtpTEpLTnI4NWlhZXM5SW5lTFVKNVNEYWMzU2VY?=
 =?utf-8?B?L2hXd0NPNHJKVklubXFFVTJqdFE4cFI4N0g1ZUdWcEZIVTVzNXo3SU9rZ29z?=
 =?utf-8?B?c2pMYytkZlo0M2R0Ymc3dnE2dXRhTlNKOTB4M1hudW9tUGlKWlhnVFN6dzhi?=
 =?utf-8?B?MGRTVW1wMlhmNTJRS21rUmF6bFE0Y3lZWjBSWkxWdzVWOWQ5SVVuanppSUt4?=
 =?utf-8?B?M3NvWnpsNXBnVzFjWGlydnM3a3BNU05CZzdOU3BJQjIvRm82eVMwYVVTOGFL?=
 =?utf-8?B?VUN0SVpvelB5WE1oR29TcFVkWEkzOEpwN1BVR3N0RE5pRTR5T0t1V0IrZXFw?=
 =?utf-8?B?SWtmZlkrZmdrTCtka3JqczUxZFQ5NWZCdXN5K3FYaDhTbzcvK0pRTnJZOTl3?=
 =?utf-8?B?TVdMSC8yWlJCYTVNdmlEYXZtNnhFcUFmNVJiMTBSMk0yVURJcElDcjRqMitn?=
 =?utf-8?B?cVZ0ZGFNdHBBM2tBa2orZUNrcEN0L2txRjlROE82Z0ZOV0VVYkZiVFJRTFQ2?=
 =?utf-8?B?bnM1MHRUc0hTeG9BbFNOcTg0Uk4vQk1yMnA1bGM0U0lRUTY1UzYzVmRkblhi?=
 =?utf-8?B?L2kvMlVWV0xCS0Z2VldYaXlZSVFzQWVaalZ4SjNwVmdnUVhKeDdSK0ZveXFo?=
 =?utf-8?B?NGFrRklNSEJLaTRoRGt1b0dreE92RVlTSWgrQWJGaDYxa0Rock9qcHRlUWJX?=
 =?utf-8?B?RE5lV3BJeENRd2h2ODNBdkJDNjduaEdTVno1dlFUREZiS1ViVGpGM3pWYVla?=
 =?utf-8?B?KytMZVo4dXRvcGcxZ0dKOURPQ21sa251N2YwSlZHcHlSY1VwcTZIdFBpMWx4?=
 =?utf-8?B?TFB0UG55bXN3dXh6NjdndlQxS2tBRXBaNW1YSHBnd2c4bCt3TWRxZXpnT1Jl?=
 =?utf-8?B?ZllMZUJuKzJPYks3anVleTJWbFVUYkJNUFFHVGF0cXdwRS9LZWsyTForbjVw?=
 =?utf-8?B?Wno4OG0xMURMWThaT3M4emRzRi9UUlg3clA2QjIwZUFLZVQ4YndEeTVyN2hz?=
 =?utf-8?B?Tmx5WUtjc055K3JVS0R6S3dZWDhpbnlYbHJVRktTVEVUVEh4SnZWRE5uMFNn?=
 =?utf-8?B?VTVuNUtieGZmZ1pUVjEyY003dnNwcC94V1hnRkNBcGlBN0pmN29UNVFONENV?=
 =?utf-8?B?T0RxUlZoL1V6UGtYT2NtTXMxb0d2cEU4TEgyL2cwYlp3WjN4S2NKVmdrM1Ur?=
 =?utf-8?B?WXQvWW93c3dqblFDdTNGMGpiQXZCa0RJSExkd2VSeUVHSy8yVndzV0wrc3dD?=
 =?utf-8?B?aE9IdHlpaTBDUVN0bDhrTGljUVBCMitnNEZ0Yy9HQTRZc1pYSWkrdEI0YWxx?=
 =?utf-8?B?VUlIS2ZzU2dKM0VrN1BmemxHdFhJcmwraFdSSVd2TWJia0lxSThZRng0ZXNT?=
 =?utf-8?B?aUxHUk8zdWFkNTI2ZGQ3d2FPZFpOMzZjSlBUMTJkRXJncnVXbGVCYmJqUGo5?=
 =?utf-8?B?L2swWEpCc010cDBNSVpacVQ4QXNqakJkWThmdGZLdGZrZm85ZHJSUXoyTzRn?=
 =?utf-8?B?Sis4S0hCenNFVGxwSXR3dHNBZ0M0M0pobGNuZHZqTEg5TjhpcXBWR3FPZjNC?=
 =?utf-8?B?SytuVDBITXRwT0Nka2ovd3VmMTRDMUEycDRNZ3RYeDJyT2dzQlhJNlFpYkNT?=
 =?utf-8?B?SE43bURVQWRKanVrY3phN1FmdjhEbkllSEFUaW85WHEzdnlqTEtMY2FQNzla?=
 =?utf-8?B?Tm5MQUV2ck1iMEh2d1hObDNnNUNoMVBoZFpGYjRWb0VwdzgxU0V6ZVhoTytO?=
 =?utf-8?B?NlR5SktFWkZXVkY0N1NKU3plVXZhcWI0ejBnZmliTlZ6enBLVTlpSWVJWnM1?=
 =?utf-8?B?N0JCY24xSFo5eXI3THFBblJaOUpmNWxwbWJGY2pwNE9MbU1kRGMvN3RhMUlH?=
 =?utf-8?B?QUFhcDQ3cG5oVGl3RFBwQTFmc0V2VDBRVjJJQVRRVmhPR0VuaDQ0UUc4UXFB?=
 =?utf-8?B?bVB5bHhXS3c1OG5OUE5xSHpIdHZhYnJ5NCthMFgwTk1mWVZ5TWlRUXF4bnVY?=
 =?utf-8?B?aXNtUUwwdEZaK2pyZlA4eExReXcwWVlhUk5wd3NqSzhmUzlZU0g2enlOTXEx?=
 =?utf-8?B?V2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a124873-349c-4314-1cf0-08dc54a52751
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Apr 2024 12:45:48.8528 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hCPKSSjTUbd/D1hHnC9xTPMx9ikI7yqtgUVYcEm2y/5HJTJ8AY/pGn76H74PvlL3lCd71E5kKuhVIQeUT09PNQY7aSNO4nyK1qKdbTelJzk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7876
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712234754; x=1743770754;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wLv9/pr2EIGiz2xhMwy1FInzGK52is7/MX2DXmk4ZuU=;
 b=Hg2YBLmsYC1LZi1xGas8GF7VWa3NAnXWYVQnyUUt98NrCb7jBXr+jhOi
 H2e4AsIR/vc81XNWzoK5xe4AT8ZNBkVLC9yO9udpPc1WudBhOs3dsx1E7
 PJOM+2XmfmvtvWgUSWhzrUT6ayGFv1kRbL6iz+NdU1xGlqAQVLYKP9Clo
 Bp6dcqZBRPLyDI3czZnda5OZwnsvutbYPTu6uCUyUc3XnglVBpIXrVuyS
 ByvkRzZtXyD+c7gRbIt9ycGreQyPeDuUDriYzS8HOnM3GzGi0Me7my36S
 I1YVJV1bwO0xiw2IBoI37eOxQEOJJGP1I96Crp4ot5b+azCzvWA4GOwVZ
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Hg2YBLms
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/3] ethtool: Max power
 support
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
Cc: pabeni@redhat.com, netdev@vger.kernel.org, edumazet@google.com,
 marcin.szycik@linux.intel.com, anthony.l.nguyen@intel.com, idosch@nvidia.com,
 kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 03.04.2024 15:49, Andrew Lunn wrote:
>>> $ ethtool --set-module enp1s0f0np0 power-max-set 4000
>>>
>>> actually talk to the SFP module and tell it the maximum power it can
>>> consume. So in this case, it is not the cage, but the module?
>>
>> It does not work that way in ice example.
>>>
>>> Or is it talking to some entity which is managing the overall power
>>> consumption of a number of cages, and asking it to allocate a maximum
>>> of 4W to this cage. It might return an error message saying there is
>>> no power budget left?
>>
>> That's right, we talk to firmware to set those restrictions.
>> In the ice implementation, the driver is responsible for checking if the
>> overall board budget is not exceeded.
> 
> So i can get the board to agree that the cage can supply 3W to the
> module, but how do i then tell the module this?

I'd assume it is not possible, if the module consumes more power
than maximum than the link will not come up and error will be printed.

> 
> I would also suggest you don't focus too much on ICE. I find it better
> to think about an abstract system. A board with a power supply to a
> number of SFP cages, and some cages have modules in them. What does
> the kAPI look like, the use cases for this abstract system.

My design for this API is to have an option to get and set maximum
power that the module in the cage can consume. It's not about modifying
module's power consumption, it's about setting restrictions for it.

The use case is to let the user change maximum power in the given cage
(so he can plug in the module with higher power consumption). Before that
he will lower maximum power in different cage. Thanks to that the overall
budget for the board won't be exceeded. Does it make sense for the abstract
system you described?

> 
>     Andrew
> 
> 
> 
