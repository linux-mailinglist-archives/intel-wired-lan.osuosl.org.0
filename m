Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B6D389EE37
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Apr 2024 11:11:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5ECE881F11;
	Wed, 10 Apr 2024 09:11:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DPUw9u38kOHg; Wed, 10 Apr 2024 09:11:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F216481F68
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712740267;
	bh=BHnwee8odR6cnYaXhu3rmSeBZDNIPjElEti3yKpVyYA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5qBOR7CMj3GA3gDhaoPjGvcBOub35bhEDJGKXttTDVPhkJ/BXRe2msalC8GnDvNXU
	 VnUiXUADuTBK5GfWUTogOWyHCxl3C8AIR59aq2uP7zAEFqooxn2Y85Hj1R89YFn/oN
	 eRqRN4Td8tsd+zcuhzZLszvScKfqvF9fc+MNzw5Yxmb3cay3uGsNjHUG7/8q6yy/lH
	 AvklMVKOhkLSoOBY5P5mY386dC5ahh+zbgyoSV+LN79ITTGtF92ocJwxeiLtoTUJa/
	 53f/9BYoiQFrMJaNoWIDduXXbwVC1Uj04k4xlElPa5YF/29ZMDEaPSOitxIvE5CONw
	 FoJaqL6vSpVww==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F216481F68;
	Wed, 10 Apr 2024 09:11:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 584A91BF2F9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 09:11:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4220A409FB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 09:11:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vOXA3rEzSTGU for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Apr 2024 09:11:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=amritha.nambiar@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 81781409FA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 81781409FA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 81781409FA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 09:11:03 +0000 (UTC)
X-CSE-ConnectionGUID: ix8yk7mNSDCBzUNkUb8HhA==
X-CSE-MsgGUID: kd6T25DAQlSpHegWpSktsA==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="7948580"
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; 
   d="scan'208";a="7948580"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 02:11:02 -0700
X-CSE-ConnectionGUID: K0O9n/EZSpuy0/VER3ySBQ==
X-CSE-MsgGUID: SgiZMsT3Tj+sFgcKDhyfnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="43740616"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Apr 2024 02:11:01 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 10 Apr 2024 02:11:00 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 10 Apr 2024 02:11:00 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 10 Apr 2024 02:11:00 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 10 Apr 2024 02:11:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kBB6GPgkbnqy3SC3AWzX9cYOx3XgDdepFFAnbY7rQ2nWZ9jrfWxz7a5b4nsAQo+VQydpnAfBrVuvSQpYwovKg/czt7IzG61qOgdsgg8/XYQuelXJCXaqcP3V4It3/zYjAC3sdPTKk8O8Ti4L/0XTCovMxPbyJlqhgWDWuKXyuxAKTtTT0qbEujxl0t59wyrB7lq6JMR/fs1Q6AZgA17F4qoJaDN8mVfiMh1dU+K7IHSDAdhtePYPn8jdglxWaiBn4T3FN2F3LDFO/5zlIUdyQkEnvNmGrrReQhyqPQjOecpE5hiZlB8wrNVCGVHrPoF6vCtn7IWxSugBb/DANqN40w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BHnwee8odR6cnYaXhu3rmSeBZDNIPjElEti3yKpVyYA=;
 b=MCuTrJRfSJBsvaHqtZBYQ0JOKWZPUDydaxHXnc7t42C0oGMe+iyr4PDuO0BTJTFskpk9Eo0uemo9eUnTytnErqgjdLygEILtNBqOXBicjez4ccK1CmfwmXoB/2dUSvhBBWy5P+qlAl0Cy+ruuTODYGcHSHldPMenPX0uFAy/iLkZKqKXbdrwk57w87iN3fYOKTooR2mNa/EhRo67wy75sw0ZcRucP3nDkg/8H9ok18tshRmUvu0t3vVMKm52jIzFxRmdrSxuPtzVFAuHxeSOSjLaLtLurdAO/BsY8Ni2elQUkMKf7ooWqJDfKB7rt5NSgWyHPn03/kYyMptfxJK5HA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB7869.namprd11.prod.outlook.com (2603:10b6:208:3f6::7)
 by DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7452.25; Wed, 10 Apr 2024 09:10:56 +0000
Received: from IA1PR11MB7869.namprd11.prod.outlook.com
 ([fe80::4c76:f31a:2174:d509]) by IA1PR11MB7869.namprd11.prod.outlook.com
 ([fe80::4c76:f31a:2174:d509%6]) with mapi id 15.20.7452.019; Wed, 10 Apr 2024
 09:10:56 +0000
Message-ID: <bb0fbd29-c098-4a62-9217-c9fd1a450250@intel.com>
Date: Wed, 10 Apr 2024 02:10:52 -0700
User-Agent: Mozilla Thunderbird
To: Joe Damato <jdamato@fastly.com>, <linux-kernel@vger.kernel.org>,
 <netdev@vger.kernel.org>, <intel-wired-lan@lists.osuosl.org>
References: <20240410043936.206169-1-jdamato@fastly.com>
 <20240410043936.206169-2-jdamato@fastly.com>
Content-Language: en-US
From: "Nambiar, Amritha" <amritha.nambiar@intel.com>
In-Reply-To: <20240410043936.206169-2-jdamato@fastly.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0235.namprd04.prod.outlook.com
 (2603:10b6:303:87::30) To IA1PR11MB7869.namprd11.prod.outlook.com
 (2603:10b6:208:3f6::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR11MB7869:EE_|DM4PR11MB5971:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0pHA0KpAJfV0uVMoH+zej/MS3a+jr08Qmc21rthQT+X5F1xIiY4w6u8BuIbDpv7ST1LntZs++XAUkG4BweE9xsDFy5Z5kmGUho12tz3Zjz0Stz4N2/sKCFdWYRakbLzHsGmi12SAvshRUd0R5NqbnJauQA74Nu5v4p0PvQ56BF3cIYFuk3ZaXPTfcu3pVrKRhl3/fWRDezFmY0hWbwBSkyOEKB0MUXcLoOK/zR1/wASbJgakLcKTQ+zdHc8C94V+t3fnQm2VbzI1OcEOJsLAuuTYs2bENpZMyE0N8em6cCfsV1wZbU7bl2FJ0lbAxRMQWv3stkvN7WSCNHhgPf4KAXhxY9Vr8YjDGwDxoJhJCTIiJfHsT74DU2kXeU/IGZjFri0grxK/VMbQHbENAyrqn6sE6SZFJKOfEPg19nUGQHjASrYDqBlIX0NZiretcYf08T4k7H0axLjSOOanEluyeYFhz+YtZnLxnRnJ6g8r8rZP8VV+oHVwNMnaYgZNC7XvhrKbrNFurmq8rTGsjsME1wdigsgcK0pAEpxIxQcQIeH0GA8xYIQ8JXnlsnJJ0kcQiYP5m+gQVhsAU7iCUM1N9n2jr1qwM/aP6hqoRZJmQlYITAeLuL3swFvQ7rVn/sLASQ6VS2+VBF9C+IjkKRDSDDCrqPANKl9WsdEotRP4z8M=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB7869.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?THkrWlRuTnNJRmxkYkttVjgrMUhhZXdwRVBXa21HTm5ZYzVnd2Q2RUduL3lU?=
 =?utf-8?B?R3hmekk2RllOQmZtK25XWDdDL2tvS3BKOEZwNXpXQkk2NkhVaHhEQVd6T3Qv?=
 =?utf-8?B?NFNZU1JtMytyWWI1STAxT2lkYzA5VEtxSTNNRGdsTDdUUUJoL1NQNUFpd0lj?=
 =?utf-8?B?ZzVGNnNpWitxWEd0cmduRDJScXZQdENsMlBiL3Izd2FGRGhvcmFxc2NKL3Ro?=
 =?utf-8?B?cjcyTFZMZkFiSy9KS1I3Tm8wTUJ0aytDclptTkZCVDYvQ3loaXZRNmdQVWZY?=
 =?utf-8?B?cDdyUkx6eTBXWHlwdWs3aFhpdDN5cFlOaVpLcEtROVM1WjNFU3MwSk80V1Vw?=
 =?utf-8?B?VWNsTFFZQkF3WGZOb0ZibmxFQlBMQnVKbS9ySUJ0QXpEaEhLZUFUNGRCVEU3?=
 =?utf-8?B?QXYvYzBwckx4OGZRMXNZN1BSK3JjN0ZyNjJBbWw4L1h1WnZiR0pwN2wxVG94?=
 =?utf-8?B?M2p4dUZ4bkJqa1FXZ1VReHBhd0FBSTNldDd6Sk8wb0dRZTBLNEVObURuWEdn?=
 =?utf-8?B?WkdRcFpkdnlUY3paQWppOHF3M3lSaXlWQ3dVWjBUalJjMDdEdjFFMUhiZkpO?=
 =?utf-8?B?NFI5UUNwbUY1ZFBDSXh1UEErZzZaRnVOM2x3T0NmK3hkdE5SbXJmOGZGQkxM?=
 =?utf-8?B?SzYraUhQTjI2SFVzbmwwZldwVkVGV1Y0UEdCdXZBYnpDa0pFRWNuaHlwVnNs?=
 =?utf-8?B?S3FnRStzVUFLQmNvTE43UXJvRFhhTTUwaS80c1dVd3RoOVpZamJkQXpqVGdM?=
 =?utf-8?B?SWpsZGhPQUsybTJXV3l3TFkreFVQUG1naXl1V0VjQ3ZjSVF5V0VKVGR5Qkds?=
 =?utf-8?B?ME9uL24rN2tGV3Q5SjRYdFQxSGtZYU9HMXJGVTlWeWpoMTcxdXRLaFMrSGdu?=
 =?utf-8?B?Z2hMcFRTN2pDM1ZiZTQzRVg4VU9YOUI3RXlpemZWeGhvSTY1bDdha1dMeEwy?=
 =?utf-8?B?S2FvcVRRYlAwRS90MzEvVUNuVGk4UVA3aUdPNWt5aG0rdWhobTBPQkljb3hD?=
 =?utf-8?B?ZkkrRExNWlhwRkdSbEZrQnMzNzJFZ3lSR1NNb1d2Z2JZSVBCNmY0RVNJNTl2?=
 =?utf-8?B?MlhyRXZiOG1jOXg2TXRBSG9qY2ZubVJ0VDgrYmVLNUozeUo2elZPNHR0bHZj?=
 =?utf-8?B?SExxcDFocTdrQ1JRcktkSERlVzA1WTlWR3dTNVNRNWFxemVENENxaWJlbzgw?=
 =?utf-8?B?VERhTW9PNUxja2ZidDJEWlVFczBSOXZDY3ZUZVhIRVg1WjFUOE1CNk9RUW42?=
 =?utf-8?B?MmRZQ2NZNVB6QXFULzZacC8zVjFkODUyL1cxUnJmMjdCSzlpZHVsUEJIMmp2?=
 =?utf-8?B?NjNyeDgyYmhMeXJtYTg3LytOY2liV0dhaVJyZlRHdktJKzBwSSs3QjR3eUww?=
 =?utf-8?B?WU83eGFGN0JXQ3ZKZHFMaEdzOC9ySzI2ZWVtcFEydkNSQVE5eDFlekQzL0cy?=
 =?utf-8?B?MmRNQkppWm43RjRWbDN0NnlvaWp1NVJ6WXl1ZUFLY3o2b05oUUh2S0FjUDJm?=
 =?utf-8?B?QlBvNy9jRUl0WmdzUWc4M0IrVVNuM1J1RjZuYjJvRHRtQlhFNHgrUUJ4RG9n?=
 =?utf-8?B?KzhDeHJIaXZWdGVJWnRub0ZhSGM2UmdTRDVBOUd2OXlubHhDMXJEQXdPbWdn?=
 =?utf-8?B?YXcwcG1palQzZzcrN2J2T2NpWWJMTE9lMTJQVi93VG0wdlZBSk81UlpWTCtt?=
 =?utf-8?B?SzI5UEREOFdlelY3bGQ0SERzZmdXYWdUajZxVWR0Sno4NDJZdUNmbG1ON1RD?=
 =?utf-8?B?R1pjTkVCd1REZWxWUFJzYWVQMVlYUi90M3U5ZHE4VWJaSlphTS93eDB2UWY1?=
 =?utf-8?B?U01uWVIrRWZnb2lEUGZPRWQvN0dYMUdQNWNFUGJZTWlTdlVXa0VsRlBhMHh5?=
 =?utf-8?B?ekhHS1NhanJUS2gzSG5SMFoxOHJ0VHEyYVVOMzNQRVFWMVVTNTlCYlE4VHFw?=
 =?utf-8?B?bHZibmt6S255N1p0WmZCVVJXSzF4b2QzeklKNHBJYWVKQkhZdXF4WnJWd0xT?=
 =?utf-8?B?eVNXZTRoMm1mUHltVXFBdVllYUYrZ1hwdDcrVVV6ek1kY0VmTW1IbmdhTnMr?=
 =?utf-8?B?MGFZUmFVMmhWUVVha21YVTdMTUErUFU1YkhmNlY0SjE3NTRZcG56M3lPZENR?=
 =?utf-8?B?V3h6NEdnSFZwbHV1NXc0Z1lsV1RHVDl2Z0JYRkdwUXJZcUd4bDE4T2lrOHRH?=
 =?utf-8?B?UEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d0b54bf2-5912-443e-782d-08dc593e2124
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB7869.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2024 09:10:56.0889 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sRgE1uuO1ArTl0tpfzEjHDI9G01Obj4Fsl9XSsFzx36X6m8sm0OBLxZCobC88cf4DXUzQDdJ6lFu1O9dqgvb1N7n7/UDnzNWLdAGtrP2WpM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5971
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712740264; x=1744276264;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ji6RmE7VTuefPAwQtMuzrce8oxDcLujb5F9CHZmvHoc=;
 b=RCvLGTtn5TEF8xyCyeun5tD6S0tIazADwetOBiPVFEx2WTaOPhVf7Izs
 oDneH1kYAOU0SCKfLJWD3uoKkNxPbHInwBlb8vRWEJCeo6xjOAcyMimZ3
 cx55kwfJul6USkt47A+DRWc2qEgl1Bk6Ph3JdhY9Ehdh+irj41V7YjeIc
 K7HwIolM/wdafsL4raHiqbip/k+ueR8rjFb9vxXDF1y8a+MywLq35CgD7
 Ggckz35fjgj7qr4SD5cM7DpSxASeblxhiLnCI7H7bFDCrugYcdByx/b0P
 OXJQ1FhU8BcJqQ+axVgL5n/TsHJJdSyYIklT5DuVC7ZwS+eSNDvlKap/6
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=RCvLGTtn
Subject: Re: [Intel-wired-lan] [intel-next 1/2] net/i40e: link NAPI
 instances to queues and IRQs
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
Cc: sridhar.samudrala@intel.com, Eric Dumazet <edumazet@google.com>,
 nalramli@fastly.com, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 4/9/2024 9:39 PM, Joe Damato wrote:
> Make i40e compatible with the newly added netlink queue GET APIs.
> 
> $ ./cli.py --spec ../../../Documentation/netlink/specs/netdev.yaml \
>    --do queue-get --json '{"ifindex": 3, "id": 1, "type": "rx"}'
> 
> {'id': 1, 'ifindex': 3, 'napi-id': 162, 'type': 'rx'}
> 
> $ ./cli.py --spec ../../../Documentation/netlink/specs/netdev.yaml \
>    --do napi-get --json '{"id": 162}'
> 
> {'id': 162, 'ifindex': 3, 'irq': 136}
> 
> The above output suggests that irq 136 was allocated for queue 1, which has
> a NAPI ID of 162.
> 
> To double check this is correct, the IRQ to queue mapping can be verified
> by checking /proc/interrupts:
> 
> $ cat /proc/interrupts  | grep 136\: | \
>    awk '{print "irq: " $1 " name " $76}'
> 
> irq: 136: name i40e-vlan300-TxRx-1
> 
> Suggests that queue 1 has IRQ 136, as expected.
> 
> Signed-off-by: Joe Damato <jdamato@fastly.com>
> ---
>   drivers/net/ethernet/intel/i40e/i40e.h      |  2 +
>   drivers/net/ethernet/intel/i40e/i40e_main.c | 58 +++++++++++++++++++++
>   drivers/net/ethernet/intel/i40e/i40e_txrx.c |  4 ++
>   3 files changed, 64 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
> index 2fbabcdb5bb5..5900ed5c7170 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e.h
> @@ -1267,6 +1267,8 @@ int i40e_ioctl(struct net_device *netdev, struct ifreq *ifr, int cmd);
>   int i40e_open(struct net_device *netdev);
>   int i40e_close(struct net_device *netdev);
>   int i40e_vsi_open(struct i40e_vsi *vsi);
> +void i40e_queue_set_napi(struct i40e_vsi *vsi, unsigned int queue_index,
> +			 enum netdev_queue_type type, struct napi_struct *napi);
>   void i40e_vlan_stripping_disable(struct i40e_vsi *vsi);
>   int i40e_add_vlan_all_mac(struct i40e_vsi *vsi, s16 vid);
>   int i40e_vsi_add_vlan(struct i40e_vsi *vsi, u16 vid);
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 0bdcdea0be3e..6384a0c73a05 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -3448,6 +3448,58 @@ static struct xsk_buff_pool *i40e_xsk_pool(struct i40e_ring *ring)
>   	return xsk_get_pool_from_qid(ring->vsi->netdev, qid);
>   }
>   
> +/**
> + * __i40e_queue_set_napi - Set the napi instance for the queue
> + * @dev: device to which NAPI and queue belong
> + * @queue_index: Index of queue
> + * @type: queue type as RX or TX
> + * @napi: NAPI context
> + * @locked: is the rtnl_lock already held
> + *
> + * Set the napi instance for the queue. Caller indicates the lock status.
> + */
> +static void
> +__i40e_queue_set_napi(struct net_device *dev, unsigned int queue_index,
> +		      enum netdev_queue_type type, struct napi_struct *napi,
> +		      bool locked)
> +{
> +	if (!locked)
> +		rtnl_lock();
> +	netif_queue_set_napi(dev, queue_index, type, napi);
> +	if (!locked)
> +		rtnl_unlock();
> +}
> +
> +/**
> + * i40e_queue_set_napi - Set the napi instance for the queue
> + * @vsi: VSI being configured
> + * @queue_index: Index of queue
> + * @type: queue type as RX or TX
> + * @napi: NAPI context
> + *
> + * Set the napi instance for the queue. The rtnl lock state is derived from the
> + * execution path.
> + */
> +void
> +i40e_queue_set_napi(struct i40e_vsi *vsi, unsigned int queue_index,
> +		    enum netdev_queue_type type, struct napi_struct *napi)
> +{
> +	struct i40e_pf *pf = vsi->back;
> +
> +	if (!vsi->netdev)
> +		return;
> +
> +	if (current_work() == &pf->service_task ||
> +	    test_bit(__I40E_PF_RESET_REQUESTED, pf->state) ||

I think we might need something like ICE_PREPARED_FOR_RESET which 
detects all kinds of resets(PFR/CORE/GLOBR). __I40E_PF_RESET_REQUESTED 
handles PFR only. So, this might assert for RTNL lock on CORER/GLOBR.

> +	    test_bit(__I40E_DOWN, pf->state) ||
> +	    test_bit(__I40E_SUSPENDED, pf->state))
> +		__i40e_queue_set_napi(vsi->netdev, queue_index, type, napi,
> +				      false);
> +	else
> +		__i40e_queue_set_napi(vsi->netdev, queue_index, type, napi,
> +				      true);
> +}
> +
>   /**
>    * i40e_configure_tx_ring - Configure a transmit ring context and rest
>    * @ring: The Tx ring to configure
> @@ -3558,6 +3610,8 @@ static int i40e_configure_tx_ring(struct i40e_ring *ring)
>   	/* cache tail off for easier writes later */
>   	ring->tail = hw->hw_addr + I40E_QTX_TAIL(pf_q);
>   
> +	i40e_queue_set_napi(vsi, ring->queue_index, NETDEV_QUEUE_TYPE_TX,
> +			    &ring->q_vector->napi);

I am not sure very sure of this, have you tested this for the 
reset/rebuild path as well (example: ethtool -L and change queues). Just 
wondering if this path is taken for first time VSI init or additionally 
for any VSI rebuilds as well.

>   	return 0;
>   }
>   
> @@ -3716,6 +3770,8 @@ static int i40e_configure_rx_ring(struct i40e_ring *ring)
>   			 ring->queue_index, pf_q);
>   	}
>   
> +	i40e_queue_set_napi(vsi, ring->queue_index, NETDEV_QUEUE_TYPE_RX,
> +			    &ring->q_vector->napi);
>
Same as above.

   	return 0;
>   }
>   
> @@ -4178,6 +4234,8 @@ static int i40e_vsi_request_irq_msix(struct i40e_vsi *vsi, char *basename)
>   		q_vector->affinity_notify.notify = i40e_irq_affinity_notify;
>   		q_vector->affinity_notify.release = i40e_irq_affinity_release;
>   		irq_set_affinity_notifier(irq_num, &q_vector->affinity_notify);
> +		netif_napi_set_irq(&q_vector->napi, q_vector->irq_num);
> +
>   		/* Spread affinity hints out across online CPUs.
>   		 *
>   		 * get_cpu_mask returns a static constant mask with
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> index 64d198ed166b..d380885ff26d 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> @@ -821,6 +821,8 @@ void i40e_clean_tx_ring(struct i40e_ring *tx_ring)
>   void i40e_free_tx_resources(struct i40e_ring *tx_ring)
>   {
>   	i40e_clean_tx_ring(tx_ring);
> +	i40e_queue_set_napi(tx_ring->vsi, tx_ring->queue_index,
> +			    NETDEV_QUEUE_TYPE_TX, NULL);
>   	kfree(tx_ring->tx_bi);
>   	tx_ring->tx_bi = NULL;
>   
> @@ -1526,6 +1528,8 @@ void i40e_clean_rx_ring(struct i40e_ring *rx_ring)
>   void i40e_free_rx_resources(struct i40e_ring *rx_ring)
>   {
>   	i40e_clean_rx_ring(rx_ring);
> +	i40e_queue_set_napi(rx_ring->vsi, rx_ring->queue_index,
> +			    NETDEV_QUEUE_TYPE_RX, NULL);
>   	if (rx_ring->vsi->type == I40E_VSI_MAIN)
>   		xdp_rxq_info_unreg(&rx_ring->xdp_rxq);
>   	rx_ring->xdp_prog = NULL;
