Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 46EAA8A0BF6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Apr 2024 11:10:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 834A860BC1;
	Thu, 11 Apr 2024 09:10:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RnBEhFCZRy6d; Thu, 11 Apr 2024 09:10:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D74E260FC9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712826620;
	bh=pcfJme/FkVQRwATyBg1R49mdm3p6V/1sYnW0rBaN2Eo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mQKzAjl4gXp5hP1agoOx9/pSpxKvph7ul+I3zdCn/elrdTMm7MtdKU7i06ngYc38j
	 0WAZ35CrUDTXITT2YFvwscnDVX65qqgSjHrZRbmUGLWtWJad+NfoTnnNfNTZUhU349
	 cy5IOcITG99ls+mDhqakI9idPYmrxT7RC7h5WlZ+JF9PjsOnRFjrvjq2xPt+4LvGhI
	 Niqjn7g6KP4Vbb+okcgqDdd0OdZLytxNxIK0Ty1dmuA3pxuIucVsXP0CQm3W3xCMPs
	 AUIQ1b6E3opFqSBJR4q0vkrB/ZapgrFJDqpRF7Ds/4o0FgRaV+ika/q6CycmyRrLAL
	 zJY/fNjzwn+Lw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D74E260FC9;
	Thu, 11 Apr 2024 09:10:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1B5C11BF57F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Apr 2024 09:10:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 06A1360EF9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Apr 2024 09:10:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JBGmlMvyb-Lt for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Apr 2024 09:10:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B52B460BC1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B52B460BC1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B52B460BC1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Apr 2024 09:10:15 +0000 (UTC)
X-CSE-ConnectionGUID: nZFmZ1I7Svu6D0ey4BLPaQ==
X-CSE-MsgGUID: iJcIcH3PQmmDfKqXlSgozQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="8079063"
X-IronPort-AV: E=Sophos;i="6.07,193,1708416000"; 
   d="scan'208";a="8079063"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2024 02:10:13 -0700
X-CSE-ConnectionGUID: +dh/g3vrTc20IESurkfVhA==
X-CSE-MsgGUID: rtTr9BvTSw+ZY+bLGLX/GQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,193,1708416000"; d="scan'208";a="25611960"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Apr 2024 02:10:10 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 11 Apr 2024 02:10:09 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 11 Apr 2024 02:10:08 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 11 Apr 2024 02:10:08 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 11 Apr 2024 02:09:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YnC3XYNjA11iF3q5DLLTEVfKWqED/wggGumdUprFW2dFCDAKdaDIoe/bNIEU53QboJsRIqmPl86hE67uQWtfJYDS58rkiwFo6ZS3wRXqJFuVfacp4FW+K+3yTZoHMJd/wgLJHQIrgHji8uyTrEAsJlM1qBNwEf5Mtd74cFD3PkwgJ1xRfiOMApqghYTQNcjkk24qQXwGlpnTmCU6kv8DQ6X6IzBIyR+HdD5qaBW/EVFvoAbjX/hZ0ILVYR+mrfhjndR50iZephe4A4dXr1web98X6mddX35IbYYfQdysbhvrPU956im67OHf/Bso3pjVeJo7NEwYZcXDEt9JW7k4PQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pcfJme/FkVQRwATyBg1R49mdm3p6V/1sYnW0rBaN2Eo=;
 b=DiHgo8O9c96xAobk4zYnBNn1i7PU99z85P9quwyiguWlJcinDfBwycRVKdKmAePOQgYtSOecj+GloWFywWFp4hr1LPnoMxAOPAFM3BdIY2rTHC9Ai1TB6bJse5jDgCtPC80c4fAQ3GSQHsDWumotk7Ccx7EN8jwGFJ+Qcy2A7GfjnDwPp9ap9xN0I5qCHLPijb4QvXONv3z4kgEhcm9A/ghj4cI9gZRqCcfyUSE54d/GqvgXGeTHwXbnl2PMZP9/rido6annV2T2ZhV+iiPA61uvwMoqry7meeao0NvYqUkrmWyK4hwVr3ThlJ5IU8RA6/KeAqfcoLBsVhwEesMzEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by CO1PR11MB4980.namprd11.prod.outlook.com (2603:10b6:303:98::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.33; Thu, 11 Apr
 2024 09:09:40 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::654c:d66a:ec8e:45e9]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::654c:d66a:ec8e:45e9%6]) with mapi id 15.20.7452.019; Thu, 11 Apr 2024
 09:09:40 +0000
Message-ID: <d28896e5-32cd-4376-bb1e-44c9dbfea172@intel.com>
Date: Thu, 11 Apr 2024 11:07:24 +0200
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>
References: <20240404154402.3581254-1-aleksander.lobakin@intel.com>
 <20240404154402.3581254-8-aleksander.lobakin@intel.com>
 <20240405212513.0d189968@kernel.org>
 <1dda8fd5-233b-4b26-95cc-f4eb339a7f88@intel.com>
 <755c17b2-0ec2-49dd-9352-63e5d2f1ba4c@intel.com>
 <202404090909.51BAC81A6@keescook>
 <91486cf6-c496-4459-8379-257383d031a1@intel.com>
 <20240410175424.7567d32d@kernel.org>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20240410175424.7567d32d@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA2P291CA0028.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1f::23) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|CO1PR11MB4980:EE_
X-MS-Office365-Filtering-Correlation-Id: ceb13673-bf0e-47aa-d4ec-08dc5a071e61
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7xvSawnAq16fhfRw7WvqQRyxuWBCwT3Jz9xSg9JxhJnl9KnQPl4/f8736Y6tXhQWE05OMQcaLEsUChKIHKtfYE5W8jieV+fDKYoVPK/jYRnibuEkdVf1gz+AjA/YREbeEmQnSA17waC0s/pX0FmeRhgOZMQLt5Al4OdhTDR1qGxPyP1pW+4rtiQL7Ia8ZZi+SJUcV7WmDF5Ra5caej3DCL0DTJTAUKuYQJr+LQ/lMj93kzt2zFW7kYT6ff1jXqfG8Pd0MP+56ntXaH05gnW34faHqAviQJd6dkpE5PP4Rtjl8GlKWkcLDhzRHJ1a1WpFn1qqyp+gGuTk1gBcZsa/2P3NJr9AOlT6s2T6AS//KfsP/QNIX4bi/Fz7Wc3a4lYRAaWzvulwM4YR0cS3u0PY/cQFWUWAUylmHBHs8OccGUv27EQH9YIGgRvXWWuoT10E9Aw6bJA8m3mAqfBEFl3ctjIIwCzVp1eVtOSWutNBmuRYR89bTnnImX9Vv2hVnq2Psd1UVr2UK5fNGIQZA3gCOtf85sxt/MndtiRMRrKRt8jCFDb+g8uiWmMZD7grpe21Wqm6RZ1ooJwlqERDTjyI1wtSCTh/vT0z9yHMzyiEWcGETNdL73WjHYQACj5Kf4Mq8lFItoF1TUslJ0KrTX91VzDgq8Y9rl5bS+Qyh8Jgg4o=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(7416005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L240UlVlZHhpMVplNUduOEh1N1dSUEVMU25uNFVGWllacjVYYUVKR0ttK3V2?=
 =?utf-8?B?OEoxcWhSaXdrSGVQVlk3NmNWSlNVQXhjeGNOdndBL0JyQ29MY3BKMDBUNzg0?=
 =?utf-8?B?L2VrYVo5WlV4VjFHZW1KVG5ZQ1J4M3lSMXI5WldIM3FJV2xXVmhXTGJETXBQ?=
 =?utf-8?B?MUFBc01wNXAzZThqVkNlRlpVaDhBWGFsRy8zbFNOcXZ1WHhnc05vTmNQY2hn?=
 =?utf-8?B?YTEwVUo0Z1c4T1A0MlZHZ0JVQXVBdWtvQVQ1VXJJSjNPL3F3RExqNGRXL0ow?=
 =?utf-8?B?Q3FsQ1VXYkppQlA0bWZkTVh3bzBhNkJrYmpoUTU5ZDlQZ1F4RUt1dUh4bDlN?=
 =?utf-8?B?VWxIM0ZJdlY4UjgvczhsWnRRS0s3THoyaVhvODZZdFV5QjBQUHZpa0RVdXF0?=
 =?utf-8?B?bUx0akpLN1dCZ1BTRDFkTVUzUmZqZ3B0UU45SHNrZmFXVlJ2RUVlL0JaQzlT?=
 =?utf-8?B?dlpxcVp2NzhGV0dqdFF6VTA2elAzNkNmWDROd25WMTVqMXBBSmlTcUFzL1Nl?=
 =?utf-8?B?Y2hVblBDbkJHVHFtNjA4UW9ibmZ1blRqVUs2T3RFM05QSytpQkt0YndrT3JL?=
 =?utf-8?B?WXdxcEdKSUxkclFsODh6aXJsNHU5Q0FwcXgvUGwzN3Mwa1FuR0JheURtS2xa?=
 =?utf-8?B?b2lOYVBjbit1THRwSnQ4N1l6c09JZjJMUm50R3ZYc0kycUZmWlhjWURYaEh0?=
 =?utf-8?B?S0U1MjRmL3IyTkwxclJWbGRtRFBwS0NHQXovTkpPVklOY3VIbW5vQlR4MHF6?=
 =?utf-8?B?OHJtc0o2bnhFU0FqWk9wUXNxQnpyTXhDMDhPM2FuRmI5VjdRSys5R2RBUVI2?=
 =?utf-8?B?cmhOdlNsd2dKWjJPNXM0aXl0eHl3cGhTbUNCK2pPcCtXOThsTytQVzVXODNm?=
 =?utf-8?B?blk0MFRQaXFsckRTWkhORnpYc1pZc2QzbSs0T3pHWDNEaklLdVBUNHRjekNl?=
 =?utf-8?B?SFhZd3RlVWYyZXprb25PNTFBVVVjVUdVMUF3Q2FrbVIrZlVPVEVsN2dnRENj?=
 =?utf-8?B?ZEUwNUhGOUtlZXdSd1lhOVlOdmFuN1dNV0tCSW43cXRBYjB0YUxEanN0RHJQ?=
 =?utf-8?B?SWtRMEFCQllsY3llZWl4MGVHRmtzUFZxNE04NXpsZmhwRXJkZ1A2Rms3emll?=
 =?utf-8?B?N1dnRGJvaUh4UTVvRjBsZXBTM3lUSEJMZWt3YlRKYzB6cWtBbnE2enJIRTFN?=
 =?utf-8?B?M010N3RJZU1zdFUreGhReUsvbzBDZUJKT3hyUWhpUW4yMXFybmpIakFMTVZK?=
 =?utf-8?B?UlcxSGFzbWZ6MlIzRDAzWjVGVkhCcTlVK0tyRTM4NCt1Y09udUo3Q3E4RTJV?=
 =?utf-8?B?SDJ1R002U2kwcWVyb2poUW1ZNlRnejlXb2pySkgwYXF2clZZOHRJc3pITWlu?=
 =?utf-8?B?TTA2OXhIVUdHTlQrd3NIanNWdlIwRk94RE90R0xOeE03czhrWUJpRDQ4bnlB?=
 =?utf-8?B?TTdkTzdjb1VMSUd1Y2FLeXU1NUgvRHZvRkNSSTc3Ulk0YVNaUlZ0aWNzN3lx?=
 =?utf-8?B?RkN6a2RwVDRlZFlnUmw0Y0FIMHlBM1lGbHowSDBPNjl4MmJvY0ZnNFZaQ2Na?=
 =?utf-8?B?QWRmbWk5NEo3ZmEvc0JRamRYWGpFeVd6RFRlK3ZGNWdCM2lFRUpVVE93M3cv?=
 =?utf-8?B?L1VoVHlCRnBpRFBaQlM5UlBkNndJZEcrRnV4MENHTGowT2hRYzlFSnVSYlJr?=
 =?utf-8?B?L2ROWkE2VlZhd3Jlb09qMkNhenIxN3ZSK1FXUWdPdXFaanZ6WFZYajJPTlhp?=
 =?utf-8?B?YUw4cVRBMDFhRGhLWkJtU1BiOGRKMG1GaWMxc1hrekhsZmFBYk1FSVBVd3FH?=
 =?utf-8?B?endYellhVFhUSXprTEhGZCtrV0dyejFEQzBPQkV1Q2JBY01sNTZCQThiNGNx?=
 =?utf-8?B?UmlBWmEyVmNCcEdYSmhUREZvNTgzemZZRkxyckNHOWtYUWcwTFVsQ1FETFlw?=
 =?utf-8?B?VEc4Z1lVQ3BzRUUxZzhualpSREhOWjJDbUtVZXZPTlRwNzA5dTNKT0oxMVdz?=
 =?utf-8?B?dGRPSldSb3lJdExJNHBSNzhiSEZJS1BMOTd3OFF6ZUdvdTVrNGRYQ3F6WWdN?=
 =?utf-8?B?dHlMelpHYWFPT2hCUVhBbXhLVzN2S3hTa3phVXpxUVcrSjFQenRuRUJjN3Ay?=
 =?utf-8?B?R1dhVmFHQ254aDFwckF3ZDJWdWJkS1A2NWZqM0VSOWI1T2JWbmZ1N2ZEY2xO?=
 =?utf-8?B?Y3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ceb13673-bf0e-47aa-d4ec-08dc5a071e61
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Apr 2024 09:09:40.3205 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3NvKoyB4C/uJxEKcQhHHdsIXvNGerpXU8fE79BATGM28YKYpy6BHi6xBRFtxz4XzYullmhBH1v1YM4QfTMQoSJ6JL2F5BVNPGbvgUPPN4C8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4980
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712826616; x=1744362616;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=R2zx2OntNDyU5LeQx+JeL/SJ1HdWa0nci9QhZdMjxEI=;
 b=DXuKct5l8SCckiHQ3DTXSp/CEM9KQwD8A3H22VxvDT3WNJ/fYkekhB8x
 2qCJ47IO+/dkRL4sEGHoax1bMl298ya0t3nXp58zdNY5hBs1L0QdzVGXD
 ov0uVVrxodyHf8B1LgejK9ZycmD/tO04fgiKYF6QmkDGFb6zIU/EAyE4k
 8hr0QEFGYtpkhnmmQmILhsCiN7j2phtW1Nee14lQE2A9SPeYrKp8puiem
 CQ205rCVy2X9HjLp96rVRjXYWQ7aMHUEfZL2Hj26qWjW44XnIHXfNOfZf
 D2LbU6bLsKtLdZIdsSODbEGD5PmD/MecDvBv5pZAILGQoVvNvOebEzoHm
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DXuKct5l
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v9 7/9] libeth: add Rx buffer
 management
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
Cc: Kees Cook <keescook@chromium.org>, netdev@vger.kernel.org,
 Alexander Duyck <alexanderduyck@fb.com>, Ilias
 Apalodimas <ilias.apalodimas@linaro.org>, Eric Dumazet <edumazet@google.com>,
 Andrew Morton <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Yunsheng Lin <linyunsheng@huawei.com>,
 intel-wired-lan@lists.osuosl.org, nex.sw.ncis.osdt.itp.upstreaming@intel.com,
 Christoph Lameter <cl@linux.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, Vlastimil Babka <vbabka@suse.cz>,
 Jesper Dangaard Brouer <hawk@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jakub Kicinski <kuba@kernel.org>
Date: Wed, 10 Apr 2024 17:54:24 -0700

> On Wed, 10 Apr 2024 15:36:13 +0200 Alexander Lobakin wrote:
>> Which tree this should go through? Should I include this patch to this
>> series with libeth or it's better to push this through kees/linux and
>> then pull to net-next?
> 
> I think doc tree is a strong candidate, or at least we should not
> merge without consulting Jon. Please post and we'll figure it out.

Can this series go simultaneously or it needs to wait for the fix first?

> 
> The question someone may ask, however, is whether it causes new
> warnings to appear?

I tested `make W=12 KDOCFLAGS=-Wall all` yesterday and haven't noticed
any new issues, although expected them.

Thanks,
Olek
