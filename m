Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id ADB49A842A2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Apr 2025 14:12:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9F39F608C3;
	Thu, 10 Apr 2025 12:12:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S_dCEwcJ4ESB; Thu, 10 Apr 2025 12:12:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F0D8160ACC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744287120;
	bh=o5ApKjnyqRxwfiddBbigKO2pGIBbsk03mhS3fRJu3vw=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=L3qjqP1Uawp5NAtbGP6WRbgsk5dpY8QnLURNP5lqsN9pT21kYG2bcNPgH37mn2I+y
	 iKBQZuyPu0WMgUSJT0bnwImNobEsD3eqxrZL+aiORtsoeoKgbTTV1PQbVvSviFN5cp
	 k8SWeoV8lx1CXAZnV+phEKMVh2kszCW5NSmk4ypbKhxn/60oaIrp8kwWhKk8plPLor
	 ryBkSCbyKtUIEMhcqN12C2YL7P1pf5ZpNq4NGoMfWuXtyXfiJqWfFvpUHKcwrFIQjM
	 7kBNRjT5+PhBYjlfVpl4WVDPa+gmTSiABpq9Gmuyi93qZXeNpEd73DVJmUWFKb9QMc
	 C7T8jtacYtzeQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id F0D8160ACC;
	Thu, 10 Apr 2025 12:11:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 39879138
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 12:11:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 20B2641E81
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 12:11:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aCRiATTAJzQG for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Apr 2025 12:11:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=morx.bar.gabay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 642A641CA0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 642A641CA0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 642A641CA0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 12:11:57 +0000 (UTC)
X-CSE-ConnectionGUID: yCCM/uytTv21idzFOMWDvA==
X-CSE-MsgGUID: HhMu6cntRsGLo8O0pPyfJw==
X-IronPort-AV: E=McAfee;i="6700,10204,11400"; a="45816140"
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="45816140"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 05:11:56 -0700
X-CSE-ConnectionGUID: q0plU7maTfG8DjSvv7FhNQ==
X-CSE-MsgGUID: ZuZ7Tjg/RGCF0/FYia2WRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="128754017"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 05:11:56 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 10 Apr 2025 05:11:55 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 10 Apr 2025 05:11:55 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 10 Apr 2025 05:11:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lt7ci7OOAOa80SZMThXYhGehx+5FGrMW/6o3h3/RX+2EpGlT9jw1gqQgO/gnKVjR6pqmZeZAeeznDgx2eGPjpjYrDfI2cFskhi5aT10cjd7W7G1ECUM38bnj901Qql9ToKnthoGJUGuplHJWgJV8+HNsufEHWF+zCwSfL9FrJGGYjA8IL8gm9Oxlb//Ao6QwcBYHaulOQ9ZrZeQvIYJ/9w7t9KkWhaU61/gsV0Wn3U+3eX4trCsKoZJRt657sOjGvNYuZfZIs+90ffFpFfj0FKbzgL51p6AAh1toJ89Yg8I+ESD0ea0SThClVj1m5zhOgweUi6+qffR37X0E7t6Vnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=o5ApKjnyqRxwfiddBbigKO2pGIBbsk03mhS3fRJu3vw=;
 b=lBApu9Z4M3iZU8f/OqYohrblg3zWKzq+xLvu8qI91LV7b14x/T4afrDzutAn9lOcCPU7fY6jQgws6sgKryjSRYEw/71cYCL6JFaTK/wGpq1uK2EKChG01GUh4n8pJrmbDnq7wXnK2rByZpb6NV25x+lVJ4ALST+1CKwBy6FsflVaQUIELMWw7l47erWPdqoXvR+4kT6au/C/JZaSRAWeT11+HvCW/kKPAIWyku1SkSTL75r/99tlXvgv0qp4j4aDfOH6g4jFm/V5Y5z9UACsrq1Z/V4pHe2l+DOy3MTMXInbeMmlVOiiIxzq1zVdqfpuEOlnn9aepY0dlHQD+RFSlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6307.namprd11.prod.outlook.com (2603:10b6:930:21::20)
 by IA0PR11MB7863.namprd11.prod.outlook.com (2603:10b6:208:40c::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.21; Thu, 10 Apr
 2025 12:11:46 +0000
Received: from CY5PR11MB6307.namprd11.prod.outlook.com
 ([fe80::1fa2:d2f9:5904:2a14]) by CY5PR11MB6307.namprd11.prod.outlook.com
 ([fe80::1fa2:d2f9:5904:2a14%4]) with mapi id 15.20.8632.021; Thu, 10 Apr 2025
 12:11:46 +0000
Message-ID: <deb59318-dc9a-44c9-8a18-3264e95e5297@intel.com>
Date: Thu, 10 Apr 2025 15:11:41 +0300
User-Agent: Mozilla Thunderbird
To: Jacob Keller <jacob.e.keller@intel.com>, Anthony Nguyen
 <anthony.l.nguyen@intel.com>
CC: <david.zage@intel.com>, <vinicius.gomes@intel.com>,
 <rodrigo.cadore@l-acoustics.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, Christopher S M Hall
 <christopher.s.hall@intel.com>, Corinna Vinschen <vinschen@redhat.com>
References: <20250401-jk-igc-ptm-fixes-v4-v4-0-c0efb82bbf85@intel.com>
 <20250401-jk-igc-ptm-fixes-v4-v4-4-c0efb82bbf85@intel.com>
Content-Language: en-US
From: Mor Bar-Gabay <morx.bar.gabay@intel.com>
In-Reply-To: <20250401-jk-igc-ptm-fixes-v4-v4-4-c0efb82bbf85@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0026.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:3::13) To CY5PR11MB6307.namprd11.prod.outlook.com
 (2603:10b6:930:21::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6307:EE_|IA0PR11MB7863:EE_
X-MS-Office365-Filtering-Correlation-Id: 8efe8bb3-27dc-4b1b-fdf3-08dd7828dd2d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?K2ZhRUFkTllIeTRiRTFHZkRYOUE1U0xzeDViSFBmSDVGa0NVVFNNTUxwRUda?=
 =?utf-8?B?dFBXMEZ2djRTaXVYcm13cjJ4Q1kxajdIWHdqeG9vT2tSUjVvKzJiazBCNEhP?=
 =?utf-8?B?LzBuUTRkbldSWEtPMnpXZkw0TGswK1J3M3JOQXYzVk1hSkM3OHIvWUVDa1RJ?=
 =?utf-8?B?TXIzWmp4a09VaXpuaXNBMG5WSytwT0lFQUl6a3J4QkZwMThXb2tRcC9GTG8w?=
 =?utf-8?B?Q1MrNTdFYlREUGhqdzVDWG1hSGxZWXFCUnJNNkxKK214OGJGbkhEN3VYWW5K?=
 =?utf-8?B?ekNDRVllNkJwRGVjZEV3MzFmdnRZOXZJeGhwcGpYSUF6TFZxUnVxL1RJeFEz?=
 =?utf-8?B?bU9IcmF3K1kyTDA0eHZuTWJBcE1nNHJ6NkY1R3JrZEJRZXl4NjNvS0JLWFpV?=
 =?utf-8?B?V1FCNStHVmNxeFJQdHVJL1RzTmtteFZBMi9ySE1LdENoL2tZY1BhNnJ4TVcx?=
 =?utf-8?B?UWJ2YmY5Y3JaeXdBWStVNzdFS01YbWlKR0l4SHdnK0JocE1yeURDaVh3bzZ6?=
 =?utf-8?B?OWF3VmJqOEJJSHZaZkYrMXdiSmQxeDc1QVFPcXRKMTZYRXlvNDZEZGNUa0pS?=
 =?utf-8?B?YWR4cjYxNkN0Z2ZiZHpld1M3K05QU20yQlVJaGVjTmJmbld6d0F4WC9IcGU4?=
 =?utf-8?B?dmZaZlNWTmJOeHE5eFJJUC96a3htL2x5cjZNR3JhRmk2YTY0WmRjNVNFdWN0?=
 =?utf-8?B?ZjVBcjlaalBCS2V1Tnl1aXlpODdJc0tMSkJidEZkVDYxWmhvL0MxeTNXSkoy?=
 =?utf-8?B?c2pIYlJXWGs1MkhveWQ2czV6ek5Rd055L3IxVCtlR05Lalc5bWR3TE0weVJV?=
 =?utf-8?B?N2UwVHhOVXhBbTQ3RzM2UW1KdzR6TEhBQ2RPeFBjTklPQmxFem4rVkhZcWkr?=
 =?utf-8?B?NVcxQ2lDanZKNXNwY2xUNUxpVzhjTnp2SE1HR3plbk9scUZ5Y3hrbWRnOEd4?=
 =?utf-8?B?U05tWXRLOEtBenY1ejQvK1Q4d1ZUSC95N2pXYTdJcjg1Qm5aYUdMcUIzNjRw?=
 =?utf-8?B?a1o5MUtCK1FoNHVIS0pzOFhLVU01NUZkNSt4MUYvOVQ1TGtCKzFFQ2wzUXVv?=
 =?utf-8?B?enpFVjZLVzNYemFZazM2WTl0RkVJdXlnbVR0QXpSaFlGL1NWYzBqSVF1WFdL?=
 =?utf-8?B?Z3czNWh2U2VuSWpOUUhCQnhka0hVekl0NWduVnBlclpTY3FKTzVrdWFsT1Ax?=
 =?utf-8?B?YVVXd2Jqb0MzL3FQVmFqc1lXYjBlVklNK0E4cTY5djZQOE9yMWtSQWI0UGxY?=
 =?utf-8?B?cGowd3ZqTXVsTjM1YUJ3Z1U3QytFK1ZiQ0lUOEFWM0xiRTY1cEkwNHBHSVkz?=
 =?utf-8?B?RGkydC9DN2lJaUswWlV4SnU1WWYzSFR5WE42NSt1Uk1KbFRqSmdsc0hHN1V2?=
 =?utf-8?B?cFNoc2VxaldyQ1hKTk94S0dabU11Y0JwdVZJOG5sSWliY2RCSEFLa2d6d1o5?=
 =?utf-8?B?dDJzY205RTRIZ0lYc0IvMUI3V3crSCsrTE02YmR6ZDNFVklZTmNMeHNRS3lz?=
 =?utf-8?B?S04vMi9GTi90a25JaHcxSlBIOGVhZDRyRFhWK2hJbCs0RElBbDg4d1Y2Y3Zh?=
 =?utf-8?B?WWQzZVZGdXorNmdoNkZ4UzBGTU1vTzBpbFpxSzNuak1oUUtQOEhNR1hMcnNH?=
 =?utf-8?B?NmoxeXltamI2WUk0cG1yZkR3RmJLM1BjUmwxQXd0bU5CQjVtVk0zUVBuNmJh?=
 =?utf-8?B?UDkvdFRxVGNZWXoxWlF2MVRkMDFLTXBvWlVrQ1Rha1hpSWZ3ME8rRVZUU0th?=
 =?utf-8?B?Mm00bk5XRHJYYnExdlFORjhsNk9VY2ZTbXNWSXJWNUpDOWxZbkdDcUlES1dz?=
 =?utf-8?B?NTZqM1M4R2RXU1paYUhVVXJrQUttMjlxd0wwNVVCMzcrMDM1NWZkUC82Nkhl?=
 =?utf-8?Q?wSxINcqoF/5BV?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eG9NeEJvcGZyOFhDckVXd1B6Qm9JWkowTWNqQmJnQTFocFJTYWNYT2c4b1lz?=
 =?utf-8?B?T3VZaFdlSy9qa2l3TS94ekhmbFp2L0Z3djBubzJmMzF3VHRZRDNaeXEzS28z?=
 =?utf-8?B?RkJ3Y0VqTnF0ZjBTOGZlWlpRc05oSU5qOG43VkZGSDJKQklURnpPZ1IxS290?=
 =?utf-8?B?VHJPUEpiSWRFaFRjS0hRa0hIQnZTendSRmpaTGsvV0llMnBZa3VMK3JRYndC?=
 =?utf-8?B?SlkvSy9mU2xROU14VStVMmZTV2M0QjlUdmJYWWtQajFSdDZmMzI4b1ljdG4z?=
 =?utf-8?B?ZDBTYWxBYXJzeVVaWFBrZGNQQk94SmxlOWlGK1ErM1BHcEZ4eTU2VHV5cU9M?=
 =?utf-8?B?emZnZk8wd0J2NTBiMnRaSnR6Z0x0RVY0S2MxaVhEdm5YUXFyRnNFT01oelIz?=
 =?utf-8?B?MUhQSk9lRjRFYkJFRHVXeGFRS0xPeTN1WlVmUG9mQ1cyelNnTS9iYk52d21x?=
 =?utf-8?B?WmJLa0R1RXlnbFVNRDNGalFvMzdsRXZWdGtLMWpDdFhtTnlQMWVkMUo2VXZ3?=
 =?utf-8?B?U3l0S2xpUlBPRFB6QjJDMTVnWFZ6VFlwR1pydUpjM2RxZHIvVGgrd0wvbGVB?=
 =?utf-8?B?NEFWdlFWbTc0WW1SRU1KRmNpWjNUbTN3SFl4a1BxdlFlU2lxK0JWbUNlUEFt?=
 =?utf-8?B?Ri84L052WUdJMnNrRzgvM0dlYjYxbjdQWXIvTitXYVgxNEo5RWtWSHh4NWZR?=
 =?utf-8?B?eUMwTlFPU2YvdGl0alpSVmdwWElGQ3lMTGhySi9sSDhYTWgzdVI0UURyS1No?=
 =?utf-8?B?OU1VZlVUY21HdnY3R2djbzExRVJlTGVYMy9wcjFkb0V2aHd4QStDOEd1ai9Z?=
 =?utf-8?B?WDFqeC9IMm5kV0s1TlpSMkQ1dGJ1WlFLbklMWUs2U0FRWlptYkNuaGF5b0FL?=
 =?utf-8?B?TzArNVE1ZjkzWU4zWnJkaU16ZEQyV2N3MTVlakI0eCtmWnZZcW5md1Mveldi?=
 =?utf-8?B?d0dRZ04wMUVsVnRwYUtGa0hhL0dIakRaeVNDVXlTUjNWKzBpblFoYzQ5V0U3?=
 =?utf-8?B?Z2NKRkRnUUJEV3dCQnFpdEgvc1l4aHFsRG51OUdUNGc0dm4wbTdQL3czTWE3?=
 =?utf-8?B?K2J0Vm4zSWJTbkMxM2d5OG9HcWFqV2RLQW5qRktFaFJqWk9GRUNIZjJEQUR2?=
 =?utf-8?B?NnVhbFMrVVpZWUJ5Q3ppMldPOVVNRGs4K3ZNekFyaUtyU1dDc2lTUkNxVkNp?=
 =?utf-8?B?VmUwY2cyV20zbHdtZ2hXODd6UnZKNHdxVUlOcy9rc2kyNVBJQ1hpejZNMXkw?=
 =?utf-8?B?TWhRTkpzWWNVVVpxZDE0MHA1L0hDMzA1YVVzVm5JWkoyUURuQUZmNzV5NStn?=
 =?utf-8?B?MUNHWmhkNGVSMnA1TWhWK3NUZXRsOG84bkJQdDBvaFBDa24zUTZYZE1pWWVs?=
 =?utf-8?B?UkcySWVhSFhlU3UrT1poUzZveUNtQkFadE1aZDlTb0hpL2FoajNmQVlpYWNV?=
 =?utf-8?B?dm4xcDduS01zSVJqTDJ5SDBOWVZteU5qSnVwa2tuam81dVNENmp2MjZXN0Vj?=
 =?utf-8?B?eWJ0bXczRnhUeFFCcitwdHp2QnY2UFlFbGZzQ001R0hGdk16VThaeGJxQ0Ry?=
 =?utf-8?B?RHhiTEdTWFdwazNrZ1NYQmlYZU0zTWFZVmhjNVgzSUFsbGR5bC9rTlFtYVVW?=
 =?utf-8?B?QXdqa3ZUK2U3WFozYkZXN3FlVzFlaWUyOVRCSXh1VGdJMFIwUlloY09BWDFt?=
 =?utf-8?B?Y0NPeU1GTlhvWUdRNDYvTFFrWGoxbkZxMCtUN3VhV05QNUpkVzBhT1ZzeGJ5?=
 =?utf-8?B?T1RoY091NWYxVHQzcGh3SkdiS1ppUFFuYk1yMnRPR3V6SVRaYW10cjQ3dWNT?=
 =?utf-8?B?SmIwNnIyL0VNZ2wyWVp4V0c1UWlVYUtONEhMMzVoTlZYSHMwSGpFMSttS21O?=
 =?utf-8?B?dWpHZzZlRERTUk9ETmwxSXVoak9Bc1NPNkl2YmdJYmxkRVpOcUZDQjBQcVJh?=
 =?utf-8?B?ckJLeFBjOE9XMzhXMzFIYW94NEd2OUdQcTB3L0ZLWTBqeGhBemxHM0t3TlB2?=
 =?utf-8?B?akNNVW9yWVM2TnZmZFVjUkF1WUVvaVlkM29PUUhEYUFZWEJmeVVlcE81Y1Ax?=
 =?utf-8?B?OFhiSlhtS0lEYnMrNkJ3Y21pUWtRNmJxMzVTRGNMaEEwd3dBUjMvMXh2T1kx?=
 =?utf-8?B?K0FzUEoycDFLYTdzVXRjWk5Hd3lKaFhvb3cwWGloMGJYanJ2b3QxSkFpRDN1?=
 =?utf-8?B?cFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8efe8bb3-27dc-4b1b-fdf3-08dd7828dd2d
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2025 12:11:46.4292 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HgDTgfJWdvEzx4NtpT65hPZZPTKxQ+i8PhR62t72gEH3KfmMy2aUrxUk0MifID5Ka5Y462MxJl9fCcdiC4WoDMwLSdNp8N9JnRsusUYFYxc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7863
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744287117; x=1775823117;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Nvs4jqX+s1u8Ad4wYt7ml4zmIWff52brK/MtmgRUwtA=;
 b=dyrJA5aq1cUrlMQLc1xx27S8S2PmJzJ+YNUvytQ9V01LvoJo126qjRdQ
 ED7ikTMG/9Xa9y1JUUwAn3BjYBq5ZFv2zDtFQ8oN5zudRrXIRy1dMdxsN
 5B/6JxMRXm6x0SDjYEKeMljV+UTWkIHwJw/5dXT/m0U3mzmtUWteXh/0P
 KmiSwv7sLDJJ5yUH4roUITbAJSL+Jk3VTae7OMrj3Beuc1OuK8g0Yvl3c
 TBdURb6Dx2Cg1+7mBfmIM9taYNfOZFC6oay1Cq6R7t5jmfgxidxcIK6/k
 plsN8s+WG0mfgQFxX14YiX/TGng5xwFRkfKbKyz4b4jyt7wOEWR7NRor2
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dyrJA5aq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4 4/6] igc: handle the
 IGC_PTP_ENABLED flag correctly
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

On 02/04/2025 2:35, Jacob Keller wrote:
> From: Christopher S M Hall <christopher.s.hall@intel.com>
> 
> All functions in igc_ptp.c called from igc_main.c should check the
> IGC_PTP_ENABLED flag. Adding check for this flag to stop and reset
> functions.
> 
> Fixes: 5f2958052c58 ("igc: Add basic skeleton for PTP")
> Signed-off-by: Christopher S M Hall <christopher.s.hall@intel.com>
> Reviewed-by: Corinna Vinschen <vinschen@redhat.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_ptp.c | 7 +++++++
>   1 file changed, 7 insertions(+)
>
Tested-by: Mor Bar-Gabay <morx.bar.gabay@intel.com>
