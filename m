Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SFewFOfHxGmY3gQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Mar 2026 06:45:11 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5039532F7B2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Mar 2026 06:45:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 639B440B12;
	Thu, 26 Mar 2026 05:45:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aIo5QxjKq3MZ; Thu, 26 Mar 2026 05:45:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D9A4C40A59
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774503907;
	bh=E358AOb4VP46cSUIGdDNyceprZQjr0x769eI3oHhkg4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=S1ohhvsM8w6YWUUQgRpO42R2yOG99N+0HB92PiRbH4KDImUx+9Nxa4nYiSB+vWkHf
	 lTICQPVrvs4WwTQlkuGrLABYyF6CK92SqEB/vKJUautlZov6gyHzFKsfnXyEtIchgz
	 CK2xMROQEIMutf/inRmewDQz/NWA5Cu3sZEsTGY8n+Vg1ZTPYVfDSSbrP0k6kQ1xUm
	 e6rhfQgIA9GwuBTTu9lUBRWOhxgyMELvsu5yMtscwhQkgThPLbbLNXN3E4tBQ1VPsc
	 eOJLl5UGUcE+SV65aXjm8sk9kzzQgxSxILDFPMOOq/dYEjwph7jq/GDattRMXYHutw
	 XolQ1y2/yhg3w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D9A4C40A59;
	Thu, 26 Mar 2026 05:45:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 242301D3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2026 05:45:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0150640274
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2026 05:45:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C2hXe4l4Zrta for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Mar 2026 05:45:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D951840225
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D951840225
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D951840225
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2026 05:45:04 +0000 (UTC)
X-CSE-ConnectionGUID: +3TAssmYROy7cOJ94pKs1w==
X-CSE-MsgGUID: q4bsmc19TfuHZKM5rubRHA==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="93132549"
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="93132549"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 22:45:03 -0700
X-CSE-ConnectionGUID: 7vH45z+rTCqxryKmeFFRKA==
X-CSE-MsgGUID: 6hSN+GJ0QlyjMT4GsT6KKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="225154028"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 22:45:03 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 22:45:02 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 25 Mar 2026 22:45:02 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.41) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 22:45:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AaZpNAsgoLiVjArEOfX39JqEFO2ltx1JSi0080enDCRLlGIHRRLX2bb4hQILX6Hgd5b1Vg16RNlgzI4lUxbNxqsvKYzeeWybo4XmV8//hRlR+vDFJpUkuGmqLFzCLYkchQNkjeJpWRifxTIXu+qwFp+bjot6qQTwuByZmYoIs5ndayaQPdXOwvgUtIShbrGsrEweymiVmRJ9pkKOBru1qVC9BOrctvmVbDj6C7C+e0Oe97NrCtOssrfKH1Wk6JNt0q3DPdDafLp3gZGBxr4HRn6d1UP3Jv8ZotLsSb6Z4uDEDGbFA2Uwd0yE52rV+XANj1twoA+YmCmO4OgpUvmFSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E358AOb4VP46cSUIGdDNyceprZQjr0x769eI3oHhkg4=;
 b=TRZUdfYuKt6UCA6o/7ZkQaMXX1d9pRihJAaxIkgE9g6/CRx5OtVpGMfbiZkpzDo3CMU2eoodABPbBp/aKawFPacEyFXuRegi0N9bZIU5NXRqzkyD44m/HjbHnd7GiCoDe6KxnTmQofT9J13H13zrrj7devYSPK4NjUfyg7Z4Ca8TC5IE7exjxiBYLzD9cvPimMC6XFnK4XB8lLW5IYB8hxiQWivh/FAZwZKLBNahp+z6cZ3Xpk1sKY1mA8EVikjmXXENuE4tggjVPIYj9pc6xctZTRgdsx3LfQXHt66KSS5B93ldiqybItD1BVqYnYco5qXEUj+dHYIeuRpS8Q/xGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by PH7PR11MB8551.namprd11.prod.outlook.com (2603:10b6:510:30d::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.20; Thu, 26 Mar
 2026 05:44:54 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311%5]) with mapi id 15.20.9745.019; Thu, 26 Mar 2026
 05:44:53 +0000
Message-ID: <b78d4c11-e20b-4a84-b8da-2638df46c46c@intel.com>
Date: Thu, 26 Mar 2026 06:44:49 +0100
User-Agent: Mozilla Thunderbird
To: Jiri Pirko <jiri@resnulli.us>
References: <20260325063143.261806-1-przemyslaw.kitszel@intel.com>
 <20260325063143.261806-3-przemyslaw.kitszel@intel.com>
 <aa7hsleso6z6zaubb6phx4lexqnthgdvkns5cpg75gk6w3pi3o@7skrmgryitsj>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <aa7hsleso6z6zaubb6phx4lexqnthgdvkns5cpg75gk6w3pi3o@7skrmgryitsj>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DUZPR01CA0269.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b9::18) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|PH7PR11MB8551:EE_
X-MS-Office365-Filtering-Correlation-Id: 675cf490-8aee-4d3f-8650-08de8afacdf8
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: N3Vx4BTx08D0Wh25Fzek/3Do9/Y69lLw/LSy36cruaL8Y3yd/JvjesI/xCzmkhri4IeS2wV7tk8wYZEGu4FEMfJHzGNXUH1nCwQ1HemnawDF4WYjTNfIF09KA677yY1wU/nbYXhTP0xRVS4SSD2cP4ubUb2uM8zA564iIKma0Jcw/sGJdnLhm6zufKr5Ky8Z19u/MTTQfenn5v+72QxHWAuK6zziAvyopCTWjY1XNTu0egXqgXOeNkw4yxZrLZIqbNjjJGz5vdOjOJUKPdPHA+yXGSF1yWFUz/ZXlMtFg5JFF30W51u4DSIt4ef43C7YaFViyB/I0E5QdBCp7VNrTSioNwS7U5I7T5CVPYCI+d8ORm81odEIqsQ8k/ekgZawioe5Xbxno9XGNuwXRrbX8KUg6HudM2dI9RdaLW5X3P3iBKORD+IIE9YXGDzJG4oExqeJBIIFhwTWJbh5hLXJmtoG1qZ27TlZW9gvM2XzX+rfsda8zSEnepY8rcyEBRtjjlve1GEjbuHTQnQgFlGj9OvesukhLUBDBdPcZkxLc9peqNsXD7GwNUs/5+ZNMOr5dM3D2fC8TpGrPWP6VrxiSRlha1yJ+sTVFys06nWC1LXwSdaZVIx+epYaOPblnXcjG6rjaEJjbn6Vu1ph6Dh4dzkrzd9ZWZhnCMQhshx0fHdaFG4HD2EzFIejOVoMmbrQ5i2UDErVLyLWK1kWeYOpR5sIik5Oi2eID3VDpQOSIs8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q0RWVHZ6dEo4ampVVmlkMlZhWjdoRXJNYkFZN1czU3pyWndYZTZnVXFpWDll?=
 =?utf-8?B?c2RTQXhOS0Q1TWxhbG5NREZ6NnBnbC9rODNrdE5OcmZPSzNSZnlmT0JFV0hK?=
 =?utf-8?B?aEJPWkdWeWJzYlR1dHg1QWpyUHhXdzkyRXhmVkhrejcyVmx0bzU1d0paZWMv?=
 =?utf-8?B?N0VpSmdKbFNSZy83d0dWa0dYTmRtdFA0c0Z5ZExpS3ZobTAxbUlZOFRnd0Ji?=
 =?utf-8?B?d3REMUdqR1RzTll5YkIweXhSQTIrZTh5RW91eVNmbmdLeWtlN25WODZPQ3VP?=
 =?utf-8?B?dTRhcy93eGhkM3Zrb1ZtcnZ0T1I1OTV0M3pOOE0wR1RKREdRdllOM1pwaFYx?=
 =?utf-8?B?WTlWblJkYXBCYmcvd0VpL2grTTVsb3NiSFRpL3RyTVFmTlBTU3JwTmt2dGMy?=
 =?utf-8?B?MVpiaHdOaWw4ZFZiOVhBZ0h4dUFOc2NpTVFwZmZ2aStyaWVraER5bmozVHQ3?=
 =?utf-8?B?d3hCczFsSnFuUUNLUEo2MktrMW9UZ0FzMWdJRXFJUGk2YWUyVlRMdlFCZVFR?=
 =?utf-8?B?VnIvYVFMUXBCaG1BZnN4MXZTeThhSmZKd1ZYNk9WWGljYXJONlkvZGo4MFZp?=
 =?utf-8?B?c25WQks2MVAwbnBGTHJ5MzVuTHVuMVVaTWRmKzN1emF1c2paM3hKc0ZCUmFt?=
 =?utf-8?B?UjlUeEd4L293VzAvdzF2L3JlL05teEVOekg0cElTS09kTXJJV0crUFh3dDly?=
 =?utf-8?B?QXRtenNzUmYwcDNkR3VVcEZHdTYvd3JUbU13QkVqc3lUbTRoUDFLV2VWR3hN?=
 =?utf-8?B?dDdMbnV4WHdwUU9DZEtqczJSYWYxdlBna3hJYUJQQ0lidFl1MDB4S1Mwcmd3?=
 =?utf-8?B?Z1Q2V1pkODhPVGRreUVkZy9iTFAyQ255Q1ltb29yaGcydXo3N1BMU09UcE1x?=
 =?utf-8?B?MFN2dlludytJcnFsR3k0REZ4K0Q4MXpPMkFZVjVuT3FrdTVpR2dTNThrUlpr?=
 =?utf-8?B?NTFMeHNxVjM4dTZPREtkOUdYQWxCbjJ2K0N4Yys2NjVEaW40VExlRG9KM3da?=
 =?utf-8?B?cWV6ZWIzYzBoUzFhbE5JaENkQnFTVUh5WVlpNlpqRTIyWjlNS3FGOUpEdGFS?=
 =?utf-8?B?Njc4bnhWVDVadEtZNUlqcXBQRDRwc0R0T2VabXV0ZnMyZUtlcEpTK2lDQS9T?=
 =?utf-8?B?bHZvbE1DVy96TlFiaUVsdXVnendCU21tbWZ0Slg3R2NqQzdzVURRRHhRTTI4?=
 =?utf-8?B?S3BtMnRDUkJFK3Z5R1o0VjN3VmptN2pmYms3MHJmV1hONzVCaUFWR2FKUUtV?=
 =?utf-8?B?Wi9tRE51RWN4em9HZ1plTWZTTHR5NlhPUE84ZXdYaU16aWZhRVlFenlZNklL?=
 =?utf-8?B?S3dHSjlNOGJubmdVNlg4bGlYUjd3V29PYS9ESUJrTkJ0Unk5MU9kdHFvVENL?=
 =?utf-8?B?L1BHend3ZHJZdDBFVUtHRU1vVmhha216dGJ0ckNCN3UvOUZJVTZSZWdFVXFj?=
 =?utf-8?B?RWxxck9aTFJTZi9CNk9lby9hUVVabmxwMUJIRURrQXozSWYvdFBidWlGaHhs?=
 =?utf-8?B?eWNGc0ZnZmpHWmNCT0dZRk16bUV5cUJZS2pDVjFNamdSUC9OZUdFY01CR3FO?=
 =?utf-8?B?UTEzMUJUSlk2b2FPaDZOVUQva3VMUzJ5TGEvSVBwRnpRWTBpekZGSUpzSzhn?=
 =?utf-8?B?ekdMbVNDSU1lVDRJOUx4aElqT0QvNktjRDhlcEFLOGQvc3BpTEdoK1dGb1ZY?=
 =?utf-8?B?ZUdWY2VGRkhIbG5VSHpLS2pudVNDVHNBbVJkbFREUFRyNURteE95WmFGanhi?=
 =?utf-8?B?NHVaWVd0S2tOaWZxUWNQcmdMekNyeGg3aEpQT0FqNjNUN3BUUXJQOCtTRXY4?=
 =?utf-8?B?SlNDaHhGWWJTOWVXcXlHQlpRMnlVOXR4cXRvV0NSMXQ4cTBkTkt2cjNta3lS?=
 =?utf-8?B?OVhIZmkxSkQ4aGRTT0NUdXY2amU1TWtpY3JQTXp2Y1JOdXVSZ0Zmak1rNmFv?=
 =?utf-8?B?cEYxYVV2Tkp3YzRUR0VPK3FZckhlbGJ1VzRPaFZnVGlmZkgzRjZteHBKRFR5?=
 =?utf-8?B?REtjdGcxdGNkTU03TlpENndLUUZOeXA2WW13STZ2ZFFCZ0xKM212bzNDaUND?=
 =?utf-8?B?NVlHWjlaV0p6WnVPQjg5dklaREhVbG92dTMwRWx1L25yVDdPQVNiYVVwa0FC?=
 =?utf-8?B?R1dKdW9VanZ5RDQ2eENiM2ppOElJNmtydytUeVRvR1NJUUNNYWE3N2ZnVDVm?=
 =?utf-8?B?UmVjUy9tNTN0WUIwY3c5VHBKa2MxZ0k3cjJON3RYK2RXam1zcEE5TGdFVisr?=
 =?utf-8?B?aUpkd2VZYk5kbUoxTHE2SjExYjUrNzZQSTJ0c0lvUC8rVUZaemRYTDM2d2Fk?=
 =?utf-8?B?YllaWlhNN3RnbE9tMjZ0UW5GUTNyeUNLRHNrTGNiSEQ4Tmpid0wxSVFtMjM2?=
 =?utf-8?Q?P6o1kiciXZ3R+LJc=3D?=
X-Exchange-RoutingPolicyChecked: b3leb6oFihP/8bc1wCYwBXE8OAoiWm64I5jrsEOcGQ/9sKATVNxKI8nZiExrMWnmO6mHcCY0kZScfDaxPl4NhyMFRhXxuN+e8nQc2a0/C/CIje27jyWc2msGZpPVMMgwbfJmLWVTVUaaTH69rCEbCeNDYKTI3LyKe8K/IJk2G3aXmdew8ZVpGWPyzfZSTxdswIaiyLvy/4pw2ZCTLT4lvThBUPn2jsel572a7+thmTlg1zB8LhLhUquZ45SXb+gErtCXHcdKzHVXbNqxEPK3zFFN/Ly8QJqVeUAjReszoAB4fBo1V6bh4/ym6m8cor+yLrJEv75J9112df687ZiKHA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 675cf490-8aee-4d3f-8650-08de8afacdf8
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Mar 2026 05:44:53.6860 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SnseqAN4HqVOT9T55gT3KKKP5cuc/2o60R0NunUvrU1aGmu/A7Zlop/jgljiNEhOR3l8m39iR6wY/xdKjyOPSf67xcKZn99FfuNJlVlMEoI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8551
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774503904; x=1806039904;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9NY0cytMPTo+s84t/Y25S/fJGqoZq6hgsSLiVgjippw=;
 b=Bl198bY6SOYfzvAEUigPbquUf/NoByE0AQ3wo573NDtPUw3TZPaUJQti
 NmOzSEhWtGuS7wKk3QHxxNj+oMTitAMY1taOasYSB0mxFBJ4o2s5sCl/r
 9RFl/XEVGzHJd7wPE41AoV4rA5TVQp1/f5OJTT0+zgnBYiyPA3NvBUUKU
 wBuC8wGLyMPao1Psu4pw48qUKwtcvlmVmMCWugNvaoFQvNTk6Cg9jYqG1
 qua7gWE4sMscU1JFVtqOV3F2KNJodzPQ65TwgzciBhh+raRDhAk/tU2Nx
 /uMDenWtrk+sCQHL4Gu+aaUpvdfRGhOKgcIiCTrVwTW/gImYjpRE+KLVg
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Bl198bY6
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/2] devlink: unregister
 shared devlink resources on destroy
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
Cc: netdev@vger.kernel.org, Aleksandr
 Loktionov <aleksandr.loktionov@intel.com>, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, horms@kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jiri@resnulli.us,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:edumazet@google.com,m:horms@kernel.org,m:kuba@kernel.org,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:email,intel.com:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 5039532F7B2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/26/26 06:20, Jiri Pirko wrote:
> Wed, Mar 25, 2026 at 07:26:53AM +0100, przemyslaw.kitszel@intel.com wrote:
>> Since shared devlink acts as a normal devlink instance, capable of all
>> usual devlink operations, it must unregister its resources.
>>
>> I plan to make use of devlink resources on a shared instance for ice
>> driver by separate series, coming soon.
>>
>> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> ---
>> net/devlink/sh_dev.c | 1 +
>> 1 file changed, 1 insertion(+)
>>
>> diff --git a/net/devlink/sh_dev.c b/net/devlink/sh_dev.c
>> index b85e5cb1edbe..5de138bf3630 100644
>> --- a/net/devlink/sh_dev.c
>> +++ b/net/devlink/sh_dev.c
>> @@ -71,6 +71,7 @@ static void devlink_shd_destroy(struct devlink_shd *shd)
>>
>> 	list_del(&shd->list);
>> 	devl_lock(devlink);
>> +	devl_resources_unregister(devlink);
> 
> Hmm. It is driver's responsibility to call this on appropriate place,
> symmetric to resource register. Why to have this in code for sh?
> 
> The idea I had was to have callbacks to driver to do things like this
> and more eventually. Would it work for you?

for driver stuff that could be useful (say, someone wants to have
an additional data structure to iterate and free), OTOH, each
entity that is sharing should "unplug" from shared devlink, so
those structures should be emptied anyway
for my stuff in ice I managed to do without destructor

coming back to devlink stuff - all things (resources, health)
would need same cleaning in all drives, so putting that in
devlink_shd_destroy() will simply take the burden off devs
(at the expense of less symmetric code for normal/shared
devlinks)

in short: I'm ok with any of
a. callback for all cleanup
b. callback for driver-specific cleanup
c. no callback and no driver-specific cleanup (until someone needs
    that very much)

thanks!

> 
> 
>> 	devl_unregister(devlink);
>> 	devl_unlock(devlink);
>> 	kfree(shd->id);
>> -- 
>> 2.51.1
>>

