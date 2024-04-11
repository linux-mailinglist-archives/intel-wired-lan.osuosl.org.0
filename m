Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C78A48A149C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Apr 2024 14:29:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5FB0440361;
	Thu, 11 Apr 2024 12:29:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2v0n_a85v3ZN; Thu, 11 Apr 2024 12:29:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5855F40362
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712838551;
	bh=faSDdYDrem0t6uT9xFY6DNgRMz+32AiAYXCFz2ANW04=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8uYzKmdVy7jCPpS+W/ynQiQVIE4mhigLY8XeenG8Om9IrQSPvOaukYmBsD9McG8/C
	 9Y1oMYmQPuzhe7TfFkxTSjLV475N/RDcpVP7IAHpXvs8mh/sHro/wpsQrMLkBgvLQ0
	 zvTQSa3CnzvpadzIUfc9LMTnmIEn0/B1ZHcba5ZxKWjqTxJpojpPdMaYeE4oWIG135
	 t+Y0Ia0kcT7ntPRsaMBhUy7qRNhIyPk6dJHD3qxtwD8zXen4FVtwCRuIt0SfHM/+7l
	 11gvCrX6uxRGzJavxkmG/zfT9FY9ainGHJWOtMpfqvklnOWS2w0vgvEVnKHtsbqDjM
	 b0wQySXpVz8gQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5855F40362;
	Thu, 11 Apr 2024 12:29:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8EF671BF2F9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Apr 2024 12:29:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7ACB380DC3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Apr 2024 12:29:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hzmCEvSFOQFl for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Apr 2024 12:29:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8C23F80DB3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8C23F80DB3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8C23F80DB3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Apr 2024 12:29:07 +0000 (UTC)
X-CSE-ConnectionGUID: PqK6tmBwRW68vsgGfNA0kA==
X-CSE-MsgGUID: vSL9fB+eT6CglhuvLMtvHg==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="8418972"
X-IronPort-AV: E=Sophos;i="6.07,193,1708416000"; 
   d="scan'208";a="8418972"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2024 05:29:07 -0700
X-CSE-ConnectionGUID: 0E1IziE+RfOmUo6ewJf2vQ==
X-CSE-MsgGUID: iPwiZjZ3QK++XZh0M4CooA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,193,1708416000"; d="scan'208";a="21473350"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Apr 2024 05:29:07 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 11 Apr 2024 05:29:06 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 11 Apr 2024 05:29:06 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 11 Apr 2024 05:29:06 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 11 Apr 2024 05:29:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FZaOYJAXPCDdrFLUwV6LcfAbh83qMxnyN614nzZh/vUQOFEEwe3REc2pI8/7QiDOcpaWVkieH2E/UX2FlNS3qQzmZk2gt9X35lqJOHK0UW4ZgcGKnsYTcknNFlReA0s/WGL1hoyuvy8M7HoIPQ6A695mzmpD5y7+gGl8vU5QCbgHfZoM0XWnvgqOHeTSyNob8jP+d0M9d6hOQTIi1HSApx0/yviMu/hqpqowH//S9UxfKVvTyHPLQLHWOFMQ5bF6sruh8g8cvhMsgPteM5+VJrP49lK9klQajG1lSdVcDcFM6HVLyN0NKR7X06xHdZLIfkmzrIcFf6h0WblDJUsE3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=faSDdYDrem0t6uT9xFY6DNgRMz+32AiAYXCFz2ANW04=;
 b=Mtd3v9ktbRTww/aGZS5qc9xJf8GX6cdKQxGyOGXBqRwtYFode39UD4MaWe1/yen4wh67GlNxJ2BsWNLjZfswna0aG0Dcmr6G5TH+s+fIFRv8oqavP56V0pD8jxOvgS1yhSGrc8clHM5oisNGe62y+KL8CpVr8Gz9iEQpwILhDUVNIZ4OOGaq95xS/i1GQKBHqG/zLF+H7c7Y50q0FePyhc48Uqhdxs7o/5h3hP5pBUH8aghvBjx90l/0V1LCp6EW/GM+AUL5JDQ50n9PVAJkVLQiExdcFvygKacAj8mm8jJKbPNTEn9pfrH2o8uz0QOrZj+6xiFcaqbrSy4MCJWdXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by CY5PR11MB6163.namprd11.prod.outlook.com (2603:10b6:930:28::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.26; Thu, 11 Apr
 2024 12:29:04 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::5c8:d560:c544:d9cf]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::5c8:d560:c544:d9cf%5]) with mapi id 15.20.7430.045; Thu, 11 Apr 2024
 12:29:04 +0000
Message-ID: <4fb6b49e-7301-48ae-94dc-bd4d3c4bea06@intel.com>
Date: Thu, 11 Apr 2024 14:28:59 +0200
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Jacob Keller <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, Anthony Nguyen
 <anthony.l.nguyen@intel.com>
References: <20240408230326.3327878-1-jacob.e.keller@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20240408230326.3327878-1-jacob.e.keller@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DU2PR04CA0048.eurprd04.prod.outlook.com
 (2603:10a6:10:234::23) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|CY5PR11MB6163:EE_
X-MS-Office365-Filtering-Correlation-Id: 7c8be569-f450-4b43-beca-08dc5a22f94d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tZQAGL8vPovnm4AqLKAU3AzS2oMqtAkWco8LTpxZB4a2o6CWkREnfYqqQ4AUZ2C62xX+5YAQuWO76MXTtD3uV2sra/o7PdTuyRWJTzQRkEpPvn83rV566ZgVb9443iThFaCRgb414bAHgMfYShunUXBUWSIHP05pIXedvuG5qA2NVOTmZ1UpxXXr3PNlfmPhD4dSLF7cWq7S2bXSDAblGDo3PldTvik2pUuKPlbYvFQ8zKw00Y+pkRSuO2WRgQxL7XZA7VvtLBnYLlZRN782SDzr3M8uEhJsDFpNWPKA5P3xw9DcL5q5vYNxTEKrXrta0TmUiQroOrwIn2lEKE0rtrjagPNArTQhfhdw81TcjOcs3ZaZ8GcQ3gSl0ChGCXZXdW0njOchB8l6+KyKPhj4UsvTgwhaVrr5PzqzLUeFFxe1+a5LLGHQLhOE5wkoFXRTjJNsAdQXn2vKlx5XKdycLguzXeotyQM0IJckEScgkWeZUIb4IrduXIzUODzjdzDFgzG4dLp7SF14E3QCCSyTyn26D7SGehsubLNZCDwBGaA4rvICg5wpdC+1qqMzOMFL30NQ/4Gw25jWCJG51SEYx9gi0mE3k6K6Alwnss3VNdtKEw5jzc7YVVyde0vZ8dNQOsm04O5vHIzS+W1WjTlQR+TRYR3Z90/WnSSqjAZjiO4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Vzl5Ky9BS2pFa01HckJra1RDVjJhZWZJRk5OWFZQNkxPbUJhYzQ1NmxtZ3FE?=
 =?utf-8?B?dlFmOVRGcmFiYmlud2dtUllhVGVuelV4bFM3VDNrc29lSVBpMlRtK2c4RlZU?=
 =?utf-8?B?TDJVbXNtNEx0N2ZDL3NZU1ZvdDJveEdaNlE1NWM1NThSZU51dUphRnUzdklo?=
 =?utf-8?B?a0xUSE0vaS8vMkhEbnF3QzRKWWZieTZQZklHaUhGQWJuU1ZGQkJTZlpWeFhL?=
 =?utf-8?B?OWdIMUFwVXRLSmo1U0Z3VTJqdk85b0lrdmFKbVplSy9WWWRwSy96dWlncEdQ?=
 =?utf-8?B?OHNCMmZ4RGpJTXhQVDBHZEJCRGdBU3J3V1NuaVptVHNTdmZGVzFlWUhFa2Zr?=
 =?utf-8?B?ckRIUXFyQXVGQnhRMlVxQ2VjN2JPVzNEYUwycWlnQ0JlOElXMGpYR1p0ZkMz?=
 =?utf-8?B?TU42bXVWQlpDUGlncDM2Mm44aDl5YUUyVnN6cHo5Y2IrcFozZ1JBOVNrOW5Y?=
 =?utf-8?B?UGhTWVpJYSttNXBzMThkUWkwY0ttOU11RlQ5K3FMZW1YZHVqTitUVmZUSTdK?=
 =?utf-8?B?N3pXMjQreGZ1ZWhMUTlGMm1kK3NaVWlwZFJvbEF1c09yZHovc2FEbGRxOTUv?=
 =?utf-8?B?cHdnb3l0ZzNVS01rcHFiTnN1bVNZeExQVDkrRHNsMVhSd2tNRWt3RzNWQjF5?=
 =?utf-8?B?SEZQTTkzK21jSjFDVVIydVZrLzc3alFHTGYxMW8wSWFjajhGdkNrQlB4N3Bu?=
 =?utf-8?B?VWhleEorTEJEazI2TUtjSDlEZVhGbkFBZjUzT2pZc3Q1bE0za1NKdUwxRkRU?=
 =?utf-8?B?dldtSVk2aDNFZXFUYTNqMVdLNWdmZTFwaFFBUzN0bVk1WTJPeUZRUWZOb2hp?=
 =?utf-8?B?MGtIcGlYZ1NhWFAwVTZjVXU0TFZqWlloZFlZVHhBR2k4ZzA0NjNlMXRlNEhF?=
 =?utf-8?B?Zi8zOWF2U3N4OFVuN0lxMGxOek0rTC8ycGRveTRLY09jUUJrbjU0Zkw2OEJS?=
 =?utf-8?B?Ti9jRmYwanNneUxLaENnZ1ZOQzN2WUl0b1hQNTJvQnoza3pKYWtzd3U2UFZo?=
 =?utf-8?B?TnhhM2wrTk5pbVVWNlhMTDdiUXFQeitsTWFvTlJkQzBCbWorNHl3Q0pCS0dw?=
 =?utf-8?B?K3EyS3pSRUpUWDdVV01FSzVsZTdkeEpWTTJsZXZwOXMyVlNXeG5zeXF0dG1X?=
 =?utf-8?B?cE1mZ2JYck92RHdDdHRyclNEOFpQTUdzdXJydStMc2p3UVVIZlpPdTI4R0th?=
 =?utf-8?B?MVQrbHZRNGdPanZIa1RSb0NhU0lvMmkzS1pxOGZKWGdsVk5ualhkS2hnRjRZ?=
 =?utf-8?B?eGNSRUE0UEVRZG8xK01yTHg5V1kyVnhvaVJJOEJLaGo3dC9DVnYyRFdLdGx4?=
 =?utf-8?B?a3NNV2YyRm5BTy9mMENranlFRy9OVnZvMVh6dVIvVU0vK2o0WGpFZ3hOUFN1?=
 =?utf-8?B?MjN4QUVqdFVzRlRCcVVEYlhhSDU1bXEwVWVNV2lTYXY4eWVrZEgxWDRIM0s0?=
 =?utf-8?B?WEFpeVN6aTloNVREWmZlVXUvdkNYc3A3Zk9uYWRVSzB6MnJDWCthaDNLcGUy?=
 =?utf-8?B?dEwvQ0hQbmt0MnNtOTMxMm1ZTGwrdXB2S2VIN216NXZZWWJPL2Z2T3VtNEx6?=
 =?utf-8?B?LzAwbXRKdUwwdStMS25NU0N1bGNsQ0YyQ3ZSdnFCaWJUcDZaZzVxVmpLc0xI?=
 =?utf-8?B?WXJra0JvMVRFU25rZGFURDVjanhINjlMb2RnT1V4ek1qSERyWlcwQnF1dVh5?=
 =?utf-8?B?dkY0dUdyaXcvWVVicWhBVGQ1UCtkaVN4YUxkVXhZSGdsZXhUcEhzMlFrVnJi?=
 =?utf-8?B?b1FxSWJGQndIWWZYY255WkM4TDhoMC95TWZEdHZBZm5tQWRDOVkybTZwbmJp?=
 =?utf-8?B?c2FhbUowcFo1ZUlEdUU3WUpUMS9kZXNIWUVmNTArQlRPQUhuQUg5M1lmbkpL?=
 =?utf-8?B?UU9mQnhqcmlraHpRWkZ4QjZaa0htMzI3Z1A1RGRBSmJqNFl4aklaVWN6Qld6?=
 =?utf-8?B?TkVJcG05bW5NQXg0NUhUcTZqcWt2VTloMkpMbWZDTFBIdi92M0xxc3Rya2hO?=
 =?utf-8?B?RjI2QkFNLytselBXSzhnNm50ZCtvdGlaK2gzY0twRUI2SGNGRlNpN0RjZ3Rq?=
 =?utf-8?B?RkUvRmlRVVN0VW5qL2g5b204ZkZQeHVzRUtyYkE0b0liREVDYVRjdk4xVkJH?=
 =?utf-8?B?VS9LdHFLYlVkaDBqQnBweUI0RjJpQlhHSk9TSWd2QVZ5K29VczlCS1U5Yndh?=
 =?utf-8?Q?GpJAp8VLK5sWMacSPNtKSl8=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c8be569-f450-4b43-beca-08dc5a22f94d
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Apr 2024 12:29:03.9985 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pdby5NBQFQF2emZo+pltOb0pXjqJKqYXuFMWdXmunAVYq8oxLtrwaD9IPFfYiPy3TfKvl+nMoUu/MWqMJvgI6pabPCYDTKlU9A6Kal1rbMo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6163
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712838548; x=1744374548;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NSlQ3wJNh7xSbiIqfqFK0qOH7eUVCffY6tckrL+V7iA=;
 b=bc64WV9xZPKdGrnKjlKiSaujDA7jvXjkPDKx0Na1ipKkQ/07JRiv7lma
 u0Hednxf3hhZNYrD+3nYR+7xy6ZUpcNX5ae6Kpj+M+BD9jNh0QPJ9AEHg
 hvvFBf9kxmoAWshwDjY+GiH4SZDDOZ+5ryTmvBLKzkMHXduCqhL/HrEo9
 J/tZPaAkm33S6yiAL7joeK3yONNQT0qsmQyZfHiCNl36vEDO5+GGZNo5T
 a5tHjQMHhOTTYEm4WybAQ+TKZdgGbxJvWKC8vATowV+vziJMizfF0ObDf
 Kdd0m+2sP1C7PYqaSEg2+GertHDAohgo+u8G632wnqxumrASsCcfNOXWJ
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bc64WV9x
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix LAG and VF lock
 dependency in ice_reset_vf()
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
Cc: Dave Ertman <david.m.ertman@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 4/9/24 01:03, Jacob Keller wrote:
> 9f74a3dfcf83 ("ice: Fix VF Reset paths when interface in a failed over
> aggregate"), the ice driver has acquired the LAG mutex in ice_reset_vf().
> The commit placed this lock acquisition just prior to the acquisition of
> the VF configuration lock.
> 
> If ice_reset_vf() acquires the configuration lock via the ICE_VF_RESET_LOCK
> flag, this could deadlock with ice_vc_cfg_qs_msg() because it always
> acquires the locks in the order of the VF configuration lock and then the
> LAG mutex.
> 
> Lockdep reports this violation almost immediately on creating and then
> removing 2 VF:
> 

[...]

> To avoid deadlock, we must acquire the LAG mutex only after acquiring the
> VF configuration lock. Fix the ice_reset_vf() to acquire the LAG mutex only
> after we either acquire or check that the VF configuration lock is held.
> 
> Fixes: 9f74a3dfcf83 ("ice: Fix VF Reset paths when interface in a failed over aggregate")
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Dave Ertman <david.m.ertman@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_vf_lib.c | 16 ++++++++--------
>   1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> index 21d26e19338a..d10a4be965b5 100644
> --- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> @@ -856,6 +856,11 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)
>   		return 0;
>   	}
>   
> +	if (flags & ICE_VF_RESET_LOCK)
> +		mutex_lock(&vf->cfg_lock);
> +	else
> +		lockdep_assert_held(&vf->cfg_lock);
> +
>   	lag = pf->lag;
>   	mutex_lock(&pf->lag_mutex);
>   	if (lag && lag->bonded && lag->primary) {
> @@ -867,11 +872,6 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)
>   			act_prt = ICE_LAG_INVALID_PORT;
>   	}
>   
> -	if (flags & ICE_VF_RESET_LOCK)
> -		mutex_lock(&vf->cfg_lock);
> -	else
> -		lockdep_assert_held(&vf->cfg_lock);
> -
>   	if (ice_is_vf_disabled(vf)) {
>   		vsi = ice_get_vf_vsi(vf);
>   		if (!vsi) {
> @@ -956,14 +956,14 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)
>   	ice_mbx_clear_malvf(&vf->mbx_info);
>   
>   out_unlock:
> -	if (flags & ICE_VF_RESET_LOCK)
> -		mutex_unlock(&vf->cfg_lock);
> -
>   	if (lag && lag->bonded && lag->primary &&
>   	    act_prt != ICE_LAG_INVALID_PORT)
>   		ice_lag_move_vf_nodes_cfg(lag, pri_prt, act_prt);
>   	mutex_unlock(&pf->lag_mutex);
>   
> +	if (flags & ICE_VF_RESET_LOCK)
> +		mutex_unlock(&vf->cfg_lock);
> +
>   	return err;
>   }
>   
> 
> base-commit: 3ca3256cde596573d060eda8c477996435c6d63f

Thanks,
Tested-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
