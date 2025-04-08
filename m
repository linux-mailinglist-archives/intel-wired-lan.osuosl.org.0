Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FE32A81771
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Apr 2025 23:13:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2F7F8833FB;
	Tue,  8 Apr 2025 21:13:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0PCbyoYjk3tn; Tue,  8 Apr 2025 21:12:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 99319833A8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744146779;
	bh=xNSQ/VTOlY9JsviTl8E0IHfozVMbRQpZvky5/BZD/QM=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LNuqqetgX+CeYAM/EuZtQCzvZvyQbMW6Rg3WvVjC38vZ4mrkmlMu0Up6wkGwIJJQX
	 c8dO0mCuG0SyMYHKVhdDl0PS5ZtbptuQC2k27FJnR31xArwnlI6GnGZJn/qynIjltg
	 LZnEvUYfAEMSaOgtMP4copM7xAhQKTju9Vd92lEWQCDOJv0AdqJMKMUkJq1xgkRDsg
	 kq010vZEWx7Madxc5oRLf94sJPv4q5+T9YsVEO8egs3k8wYYZmC5b84CEqdR2Bvh9s
	 CTR0dNEGrghjQID+6vaKDRO+GTM35iYqtDH1ersLdM0TboaNQ6vjQX3FMwdfRl6qUI
	 rX8sipq/l/VUw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 99319833A8;
	Tue,  8 Apr 2025 21:12:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 54C251F1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 21:12:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 46543607E4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 21:12:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RGdiefzHq4eY for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Apr 2025 21:12:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 63A8261047
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 63A8261047
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 63A8261047
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 21:12:57 +0000 (UTC)
X-CSE-ConnectionGUID: s3oM9avXRh+5i3L+EudPww==
X-CSE-MsgGUID: qPZPn0ZfS9qYewKze87eVA==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="48308930"
X-IronPort-AV: E=Sophos;i="6.15,199,1739865600"; d="scan'208";a="48308930"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 14:12:56 -0700
X-CSE-ConnectionGUID: IY8BkbHoRrePs50uCT6qkw==
X-CSE-MsgGUID: l4lOa+lNQDW3QGZH7JK6CA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,199,1739865600"; d="scan'208";a="128385242"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 14:12:57 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Tue, 8 Apr 2025 14:12:56 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 8 Apr 2025 14:12:56 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 8 Apr 2025 14:12:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fApQnIaqxwK73I2Y8XoP0oLAq5vrWp3bDgxZBgQreuv8mTfwCN/9yzvtEFLjstbYMaWX4FJdPevMEpacTOM6KcHLdLsZ4f/XNKG78cXCxrRV+v8jqaW2d3QaEOYw7x2OfSqYSmo1eSTEBf5HxScS4ocodPmggTVwINJRcRQTttHmqnuh5b1f8G+Z03oPe1ssZd/MjA03nONaL6PJTrghjylZVQnBrqjekcqg6bGlbOD5uItm6pdxVXse2P8FpP66lGjgzT/40xek+z5nrwJJ8TgaH77vWAlJWFwMAEcddpTRrB26vC1WtZDf4ld2OrRR+yyEWKYcKKvRHGifFUQUbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xNSQ/VTOlY9JsviTl8E0IHfozVMbRQpZvky5/BZD/QM=;
 b=SPK4F94cRGvcR5kT6NSjPf7Pape+0e0wiEHGeGKhqPuLEvQGA3PvOsfUrerC0cmM4k2uJ3zQrtNz9chc3mlZCPQWCwLNO7jc3l6kYCmWA+wMlgqL3ATl/uJYBmCbTpRUrVuYRYtr0rraLsxqWfmE8JfSFMMOzxrV9nZNu8yZIwf9W7OdjuUIN6MJZeBeNBok+qBzuA8bamMiRxviDI4Y6bu8VEdX30c38f2QvdSVqX5tXNGUMUmdpV+fTK9qNfEGeEpEy2wmkUhXCc3x5sNKOiFZ1mwy4l2Ds+4HftGMoKK+8ZffOQY2l+77khgr0q6iEVKEbtXXCfh5eMyzR87NgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by BY1PR11MB7983.namprd11.prod.outlook.com (2603:10b6:a03:52b::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.33; Tue, 8 Apr
 2025 21:12:45 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%4]) with mapi id 15.20.8632.017; Tue, 8 Apr 2025
 21:12:45 +0000
Message-ID: <cc0ee9b6-f83a-4618-bfde-631ba0461d6c@intel.com>
Date: Tue, 8 Apr 2025 14:12:44 -0700
User-Agent: Mozilla Thunderbird
To: Milena Olech <milena.olech@intel.com>, <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, <anthony.l.nguyen@intel.com>,
 <przemyslaw.kitszel@intel.com>, Alexander Lobakin
 <aleksander.lobakin@intel.com>, Willem de Bruijn <willemb@google.com>, "Mina
 Almasry" <almasrymina@google.com>, Samuel Salin <Samuel.salin@intel.com>
References: <20250408103240.30287-2-milena.olech@intel.com>
 <20250408103240.30287-11-milena.olech@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20250408103240.30287-11-milena.olech@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0115.namprd03.prod.outlook.com
 (2603:10b6:303:b7::30) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|BY1PR11MB7983:EE_
X-MS-Office365-Filtering-Correlation-Id: 34ffcb24-6568-40ed-f279-08dd76e21ba1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?R3paWjhWRUc0d3VtZDBkZ2Y2ci8vUnp5OFJwYXJ5QzdUSlhkQ2FDZktPTEUy?=
 =?utf-8?B?Ny9tT2J5a201VFhpYVF6U1hJQ1EzejBBbVNnUE1JUm1VcEQ2S3ZtZ1YwQXha?=
 =?utf-8?B?eG9SOWl6UTNNTWVEbEZkdG5EMDEvMUNVZ21qYlZOMVdncXphei8yc3NkNFh4?=
 =?utf-8?B?dVk0My80eUdVekZFdFVVeVBHeVlVZ2NidCtVMHZFUXVJYzN6NjE3L1grVWNE?=
 =?utf-8?B?QUJ0VWVGUnI5Q0gvS1Qrb25nNkFvRUgzRWwxd2RsSlZ6TitMV2NSemZ2WEV0?=
 =?utf-8?B?d0xPQjlBKzc1Z2NUQ1lYcE5Pb21rMmJKZTFGS3h4Y0tQeVU0Z2JRenp0WG84?=
 =?utf-8?B?dElqMlB3OUJXdHNzY1JhMnVtVTkyenBmVjU4LzNtUzEzWkFWMWNoSmRGMFVl?=
 =?utf-8?B?VDVzZ0R2WUtiRVRhdVFsMlJ6clhTRU11VXZuTXNwdm9YS3ZxZWFVbFFhS1VB?=
 =?utf-8?B?UVFySjRaVC9QcGp4L1E0TFpScHhlYzhpaG9Rdy9nbXVQQnZhb1BLUk1EVWFO?=
 =?utf-8?B?SncvQzg3T2p6NkNoZFFQb0tXcm1rdC9NY2gyMy83cGQydkZodzA2ZktWbVg4?=
 =?utf-8?B?SjhTVU0vUFNBYzAvdGVnTWNTL2g2Z2s0aGMwY0lyQ3ZyQmo5Rk1mQlJZd3Q4?=
 =?utf-8?B?cGxrem5IT1VQc2xmd28xaXRITTJ2VnVKL011YllHTkpSMEJibGxSZTFGRzZj?=
 =?utf-8?B?S1o3VjNrSzU4VGVGQ2N4KzFPMVdsTXcybjFDWERvT0Fzb2tMekhpR3BXeDk5?=
 =?utf-8?B?UFVaSDJPeERMczFMT3BzRWxxTkhySURrOVVmWXZ0a09nMFFiK0VyYkNIZ0tm?=
 =?utf-8?B?RWNHZndRUkpIdWhWQWM4cEdVTy9tcURyY0JRTEZ3eEFwUjJXcFlnajFPTUND?=
 =?utf-8?B?K29VMmRpMTh0UHIvTHdlRjV4TnNiQkZEcjVlUE5Rajg2WTR4WTJNbnAwRW13?=
 =?utf-8?B?clVFRnRGYnVldk1VaFhGK2JvZE1HV1M3QThmRDJzV3FmZkpnQU12eGViRlA2?=
 =?utf-8?B?Nk5hNFdzZDhoT284S1BCcUdmT3dtemhRSE1qRTZvNTJVak5YcFRFdjJCZStC?=
 =?utf-8?B?M2NjWUZncWdHUCtoVTFtK2lnRFBJRy9Ucis0V2lraVMvd0lQcjljSE1HQmpn?=
 =?utf-8?B?Q3RpU3RxcGt1NW9sdjQvb3FabHFPVUtBbkk5STBJbnNnUjJoOERDVG00aVFC?=
 =?utf-8?B?N2E0S2Z3aTg0Z250ZXlRV1FQS2JRWkphcVI0bGNPOUp2UnY3T01Mb1F1SXlZ?=
 =?utf-8?B?cHI3TzRQSGt3R3BXWlZVQWorcHBZTUI0RjdaODZ0eGhmZ2NPdldLcHM1UG1J?=
 =?utf-8?B?Qk12S0JxVkFRWmRRNTh3cFVSc01jRFVBUEJzbVRSNmlCWGhZekFpR21RcnRN?=
 =?utf-8?B?a3pFcjVibjBvaTZSYTN2ZW83WTcyUVdZZFVFdmM1ZC9xZkJndTNIRzVWWFQ5?=
 =?utf-8?B?SUVPbDhiWVhDK2JpZ0VURC9PSTNNYUp1WTVmR3FDS1dBMUdGMVpndDNYVWFV?=
 =?utf-8?B?MTZScngwcjN5YjNlclB4T00yNUtyZllhTE5ka3MwRVdkY1lqNjNJOHFMNjhq?=
 =?utf-8?B?dzBVY1MyQTdobmFzdzlEWm83SlJ6K3E2b2xDZWRYdElhMTFyb3JRNEc2Zmpu?=
 =?utf-8?B?VzlQTG5CODNySVBLYVovUVIyRXhsNnI1b2JRYmgvVzZtMzZpUGpoWENpalU4?=
 =?utf-8?B?ODQyL2sxVEhqZ28vZVlEZ050RVRFdytDM2dDaGliNVFIOUlTbklyQnlwRDM1?=
 =?utf-8?B?RFJ2dmg2aHMzLy9kZFBYVUNLVkI1ZUZqbnorT3RtbHRMMU9iQ0VWemZuTjBs?=
 =?utf-8?B?azNnNUJXTFdHQ0sveGw3M3czdVAzVzliSW9Fblk1ZUZuTVk0cDNCZmpnZWZN?=
 =?utf-8?Q?soEcpawZS35zm?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NDlldWpEQUVPcmp6K3ozRnI2Wk5hcEU1VlpPNnNnWGNxZjNEZEhqVGtlQ2dO?=
 =?utf-8?B?ZDVMMjRQY1dtdHNkbjZueGdObW8zNkpicEZFZmxkQkVPQ1VUU1UrS1d5NEJE?=
 =?utf-8?B?SHdPb2IvT290Z3ZGT0VZSFoxeXIrUjVDYjFlZXBQNHcyOUlSbkhhUEFFb2hN?=
 =?utf-8?B?TE0ySGcybVk2aFp1YmVGU0xvcjR1Y1NuOFR0eUNNbFR5UVc2WlFnWWc1cHpI?=
 =?utf-8?B?VGlPbVJ1MXRYa2Z6MFIxNmdLMGlnY3JVdXdJWUE5WCtpMm5FbE1jWXJmZ0t6?=
 =?utf-8?B?UVJtcjlQelJ0ZktOQzBWbDA5ZHNmWGViWURTYzZGNDVheHY3ODN2WjRPN2N0?=
 =?utf-8?B?WTdOajQ4ME50VkMwc0huQW5qd09lbUJ0SHNzQ09OOUlRUDVXZ3kwZ2pMMktJ?=
 =?utf-8?B?dVF0NnFiTlZSb21iNTlCRnNvK2EzOW5EN2FGRTNnS2c3RHNIZHRDWkY0UXZP?=
 =?utf-8?B?NVUzcWFmQnFvTlhFMGM3RE9PNkRzcGNtWVR6eTU3WDlrOU9jSjluZFZwOEdr?=
 =?utf-8?B?RWFNTFZBc0pEN3pUbmFUNmIrcVY5bWtwc2NEVmVQaUFJdjQrRnpaNzdRMjdG?=
 =?utf-8?B?QXNRTXAxMHVKMExSTFVmdnhjSFNZY0pzZDRuNWZWNXIrSDJvNHkyYlF6WlQy?=
 =?utf-8?B?SDZ6dFJUVHJ3VkN6RndlM2RvaUJtZ2xyUnhtNnRXN3ZoTW1WM3AyYlJKVG9l?=
 =?utf-8?B?c0U0c0hzNEs3UEgxMmtxaXVqakIwa21ia2l5d2tpbGFidHNkejlpc1QxdWty?=
 =?utf-8?B?VXZUNnlCd2l6UHBSYTVqdlVDWFViL3hmdjgrbVJMSUcwbUMyaGhnYTEwVXB3?=
 =?utf-8?B?UC8yb3FEOEZkdmNRMDczWHNlVlYvMEMvZUh1VGwvS1dENkFpcDJhUEJ5eG8v?=
 =?utf-8?B?OE1jU0JuUStodXRnU05pNkV2R2x1OVlKVzlyek9ZRmlnRHBINFh6MWpTT3FP?=
 =?utf-8?B?aTJlRXovN0l1c200S2lPOXhpTDlKYmRsbnRlL0ZiQmRNRWMvTmV6L0hWaFpD?=
 =?utf-8?B?dFViS05sZHVmTlZyZDhMNnUrdHNGR0k3aVo5ZXlPNjVtVjJ2L3NwYWVCQTJR?=
 =?utf-8?B?REcrZ2txWUJlRm1QSmx0OW1ZSDQ5bkRqdG9RM0ZsdUZCaXFpTHRIaXlnaXVI?=
 =?utf-8?B?c01LQ2k3TlllVS9ULzM0UnQzMHYxQ0d4ZWdJUE5VU3dYZ3NtWDM2WHJoekU0?=
 =?utf-8?B?bkQwa09CM0NHMXZjMG9HeWFKdFl4NzNKM3VIamZuanNvaVNDbTIvYW5BRUVu?=
 =?utf-8?B?Zlp3dFcrN1UzS2d4OThUVWxJR09XRE0zTm0zRkdJTDllSzZsYzZzYnhQOVF6?=
 =?utf-8?B?ZVlNNGY3N0hGZXRRd29OTUJTM2xxOVczTnBrS1ZjUzBXTGxlWUozY2xVYU1X?=
 =?utf-8?B?R3hRKzZTejU3YitSWWlUQ2hGRTc3REVnYXozaGRsRTQ5NXlGRmU5Z1oxYk9W?=
 =?utf-8?B?QWdWSVZjbmN0ZVByYWVsdHVSdm9rd203Z01TeTEvclQ4MkZHMVFwcndSOUYw?=
 =?utf-8?B?d2Z2dHNueEJodWdzeVZqQ1NUTitTYWpsbk01MXF1R25KMjk2bTcvdmsvL3Vm?=
 =?utf-8?B?QXk4SEJ4RTM0QWhrVEVLMHpkaC93dklZckJXYUZ2Z0VBNGVlM1BVOHY4ZG1t?=
 =?utf-8?B?SHBhZHB5THZ5T2RNOHNmbTFCZ3hETUR2ZldldlBnUlFKTjkzQU9Zb0FRaHYz?=
 =?utf-8?B?UFdFcmVTY3FjOGFyZXpmaFZOVDk5NWtQVUxKcjBxaWRMZ0ZYSk1kV1ZBYnhm?=
 =?utf-8?B?blJkUDE1eDhzajFva21XbHlOTjVvRVpNVWpBK05xcE5JOW1OQnBYTktwSnZT?=
 =?utf-8?B?WkQ1WGRlYnR0aFBiMFJrRE9UdDVhMGhDMjI5bjlhV3dHaTBaVjVrUTI3N2lJ?=
 =?utf-8?B?c0JhK09EUVIxZVNXVnp2Rmo4SzR4dHlsclowWDlWRHl3d1l6THBRTnhWQnZZ?=
 =?utf-8?B?RVM1UmhweVROaGVQeTZjcWF4L2FmRTNzSzcydHhTK0l1OWlZTDJDUy9TL2l4?=
 =?utf-8?B?aHNseld5VlhmdHJRbDlzNkhDWFpOeUFMRXRUalhYQ1FNQVRHZ05OcnRtVDlV?=
 =?utf-8?B?dHFIQnc5VXJ3QjJ5aVNDRVFMdXBSQXN2TGVYR2phUktkYXVYUEJyRCtXcHRL?=
 =?utf-8?B?V2IwbUEyZTBpbHNhRzMvSzdueHBKV1hpeElkazFlNmEyLytKMzNYZnIzQTNY?=
 =?utf-8?B?Y1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 34ffcb24-6568-40ed-f279-08dd76e21ba1
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2025 21:12:45.6128 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1rub1K1l9NT7QHYAVYWv7ODTVXbEmZ2N1QHZNLTTBzEIRbgsg9sWmOxawNRCd8Ds8nD94ocL/4XZGZ8DIZRlsxkPu04DwDktg8F4FB+Pv3A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB7983
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744146777; x=1775682777;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JUzfJbcqIjdqf2v0TGYSuDVhYifIKCHE3gHqniGNO6M=;
 b=IZPJ7ZiUtgsO7xjnhc/ajhVatei3jGhWT9BX+g4+HBtocYeGsrMENH4X
 c0cyta3gHYOHzZU2QAx/aE4WJbKWqlFhYysW9WVkQ8UJQ5tqNdW3qahPb
 NCi+UFvVmaKJm8EuNVTrs488Y/9H0amP3R1aXXC5DvrQe/L7DsMvNz9TJ
 GRHLyTysT4fHZpwJRKGxaVxCkPMHcc8SKto5cIzddu52GJB3sAUU/f5T2
 ikWkDD18m0BcelhAB3dgcaEmQJzX2A7JaW3nxakiIsAliGPb3XQzftaQX
 FFdyUqDzKZ5/mD4BGMEW569LLMqIEuaeP7zRdmA6e04SBw6CwckCvoKrn
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IZPJ7ZiU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v10 iwl-next 04/11] idpf: move
 virtchnl structures to the header file
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



On 4/8/2025 3:30 AM, Milena Olech wrote:
> Move virtchnl structures to the header file to expose them for the PTP
> virtchnl file.
> 
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Reviewed-by: Willem de Bruijn <willemb@google.com>
> Signed-off-by: Milena Olech <milena.olech@intel.com>
> Tested-by: Mina Almasry <almasrymina@google.com>
> Tested-by: Samuel Salin <Samuel.salin@intel.com>
> ---
> v1 -> v2: fix commit message title
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
