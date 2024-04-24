Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E671E8B026E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Apr 2024 08:50:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9AC5460B53;
	Wed, 24 Apr 2024 06:50:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HA9CSk3EUDtv; Wed, 24 Apr 2024 06:50:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CA0CA60779
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713941430;
	bh=GOOw+g7ItU/W7Dbx+slTxIT4PNLyAtEMI1e1gfp/uqQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=khNN3lM5n9qRf2bTv5YuUtbr6OvY1hp4IoX0u/iNkGBpSz8LaH8cFGBiSbXhHHZVG
	 nvbMp+6FU8oqvErKLtYt733nOsF0iZwinhWAIHcPvQB8aiQoz59HXfm0tOVjGAKYHa
	 6gTQd+V5eoq237GlyVPiSL9g1J+AG6ty4qk3GutpiCvP5+4gewvctrwirNbpK1Kv7N
	 lT2z7vTMfGX5Y5G060/UDRPBU7WJk+PHwsJV5OaMLv3cOgmLkPQSZ6/8s46ruYYrCo
	 C5vlCOZtf0Oiv0bEFsflxrZEo4qzodPMGC+To2382gEgCiVTGCGcSQa53ssQT+7tOs
	 J8LuTMih76qKA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CA0CA60779;
	Wed, 24 Apr 2024 06:50:30 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4B7631BF5A5
 for <intel-wired-lan@osuosl.org>; Wed, 24 Apr 2024 06:50:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 40E2D40462
 for <intel-wired-lan@osuosl.org>; Wed, 24 Apr 2024 06:50:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NbrrkX3H6mpD for <intel-wired-lan@osuosl.org>;
 Wed, 24 Apr 2024 06:50:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=dima.ruinskiy@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 06899400E2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 06899400E2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 06899400E2
 for <intel-wired-lan@osuosl.org>; Wed, 24 Apr 2024 06:50:26 +0000 (UTC)
X-CSE-ConnectionGUID: tlLNRlyQRLSB6u0JcmucPQ==
X-CSE-MsgGUID: uotBzHWdQo6e6ZQI4ddsuw==
X-IronPort-AV: E=McAfee;i="6600,9927,11053"; a="20104857"
X-IronPort-AV: E=Sophos;i="6.07,225,1708416000"; d="scan'208";a="20104857"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2024 23:50:25 -0700
X-CSE-ConnectionGUID: BwUSEtTgTR+X1nkGbkYGmA==
X-CSE-MsgGUID: 9MQhqOfnTW+Y/HkasCdFMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,225,1708416000"; d="scan'208";a="29069137"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Apr 2024 23:50:25 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 23 Apr 2024 23:50:24 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 23 Apr 2024 23:50:24 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 23 Apr 2024 23:50:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jfVzG8DdJ5EwZaREDWjNyOwjrJ/QvGRzmZZWXmx0uJxbrSINzqHjndJhdMn1Fsw0qTkAZx2P7TAUTEhqZVVUgO6QEHdrrUv85VSURjxsBZ05EOeve4pPWsa8eaAdPla9b4QeaXiri7SDzH3uWsUeImimeMub7fuhk8GhH9i6OwMyLJZoaxrvF9GrmnzPEky7DhVzDAhtt3ts+tjoGtUdCE22ep6f5515Vgp+3l03GYQSg2TFcPPVN/e+kiI6l17Fm10c9PZc8W7HgPhJE6dhulPQUiPoR1/KPC56ALh2HKYQheyqC1tQ/PDGK1/kStze8jo5CCywQC9mCFMMWB5Y7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GOOw+g7ItU/W7Dbx+slTxIT4PNLyAtEMI1e1gfp/uqQ=;
 b=H7v5GR8PI9TB+rDXKuDuN/xINtBdLfrHzEDKAQNyt/J5QXMX3uQ7/JccnOL47Kcvj0n5XyILaMWOhGLaIUf6CLxS42+jLVWdJyBrXAiMRkfGZvtghSSyYIkSseG69mIBgKmguYOfGMQmFkAfBHOsyEFFbVpw/TDN7HpyOXOj3jI2yhLJC+sHJCLuXhUQt4uoZTW2CPJxKIWOjllnO1yeT92XD7KiOZ9/dfGtNcGRBLajvnv95veftAVq63P+8bSNH+kdr0g1N4/D8WeHD7SUB9/I3V4LsfjR6ikCcgCGpMHLWxAqu7e05EDmHpHTNKAy0iqF1du678j/Xw4FKfG7QA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN0PR11MB6280.namprd11.prod.outlook.com (2603:10b6:208:3c0::15)
 by IA1PR11MB7678.namprd11.prod.outlook.com (2603:10b6:208:3f4::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.20; Wed, 24 Apr
 2024 06:50:23 +0000
Received: from MN0PR11MB6280.namprd11.prod.outlook.com
 ([fe80::d45e:ec49:b917:4364]) by MN0PR11MB6280.namprd11.prod.outlook.com
 ([fe80::d45e:ec49:b917:4364%5]) with mapi id 15.20.7519.021; Wed, 24 Apr 2024
 06:50:23 +0000
Message-ID: <c48225ba-e059-401a-2591-bd2cf55a014d@intel.com>
Date: Wed, 24 Apr 2024 09:50:19 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
References: <20240417190320.3159360-1-vitaly.lifshits@intel.com>
Content-Language: en-US
From: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>
In-Reply-To: <20240417190320.3159360-1-vitaly.lifshits@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0009.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::10) To MN0PR11MB6280.namprd11.prod.outlook.com
 (2603:10b6:208:3c0::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6280:EE_|IA1PR11MB7678:EE_
X-MS-Office365-Filtering-Correlation-Id: 6f6328c5-cd4f-4676-c225-08dc642ad066
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|376005|1800799015;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eG5ZY0w5ODZUbENndmZNbCsxMWhHYStJSktXZFgxcGM5a3U1QjdxaExwNjd4?=
 =?utf-8?B?b2w0cms0cDRMUnNHM25GMWZOcm5HRHVXbTVCcTgxZUc4UlpwUXJjSGRzZysy?=
 =?utf-8?B?ajVpRXd1U3JOMi9SMFhEaFZXTnpiQ25ZYUI1cm9vOS9VRjFTUmVVUHpxbFJ4?=
 =?utf-8?B?Q2VUdDZ4ZVFySHhpTUl6MkVIYVRWT25ubUErMFVFb0phc2J2djdnNDBucGFy?=
 =?utf-8?B?b0tZWjJMUE1IbWl3K0NxbkEyYnNaN0RWNXVGSzcxSm5SSU5NVUIwd0k5TWpw?=
 =?utf-8?B?THNWUWlyYW5zSnBseEFWRHlQVTFwVitObW9FK05YamprL3lKaWNnU2hrbnVu?=
 =?utf-8?B?bEQrZ1J3QVh2Y3BvUHlGbkNoRE4vcnhsWjZmeWE5VE9Nd0hXOXJ5R0wwNENh?=
 =?utf-8?B?TkJoeDFoQnM0NlNWTXE5cGtYYTloRjlOdkFXWlFKb2pwZU9XSUJRaitUVktJ?=
 =?utf-8?B?VTlPTHpYUGoxaFNsZmlMSEp0KzNFN0dGQ1J1eGRnYk9TK3lyWU53Qks1YzJL?=
 =?utf-8?B?bmdDR3hTODdPelBhYXl4ZWFtcEJxeFN5TE0vVEtqYWFUZFdZVjA2Z25ZTWhu?=
 =?utf-8?B?YlE2UmVkYmMvaEhvY1UzZkFvRk5BSHFOenZhNmM4Y0J4VlloVGRPUWVGMzBq?=
 =?utf-8?B?STBHUUJjVENHSm9WQlNDVzZpem04R1FvRzBLaEdOeGxXeEZXdWF2QVF2MGtU?=
 =?utf-8?B?LzRNMlUzbldMblZmM3dwcTk0WkZnYzl3dXFEMVhvaFhvVlZZWTdnU3o4Y01E?=
 =?utf-8?B?dndLNGhZZjdSYUZGU1VDajBEUXNxTUhpNExMeUJLdmtOYzM0Tm9yM1puQlRa?=
 =?utf-8?B?VGp4bGdmdHRWVHU2M0ZNTHI4bk1HY0FzR2V4K1BIZ3JtbmF6QlpKdE1FcERF?=
 =?utf-8?B?aEMyNGRzL3pyaEZzVG9zSEhYOHVtMUFzYzdhTGl2emY5dW5YU3Nnd25iK1JD?=
 =?utf-8?B?b1M3T1hGQis4L1ZNbkprM3BhN1AwV3g4NUMvcHFZblRiTWNKMVZpK1k5djhs?=
 =?utf-8?B?cW9lZS9sdVJaa0cwUFNZZWhJaFlHOHljTGV0TzVGYUNFRlMyK202THl2SHkw?=
 =?utf-8?B?cVE4RDlZQ2xkY3N2bkNLaVpvK2YyRjBXY0xGcTJpNDVZWTdoelNpb0xyMW5r?=
 =?utf-8?B?dnBGQ0hjQ1JZdlk2bnJlQU56UTZJbFRBWURYdWM5cFBlNFgraVI2MkhQdFVF?=
 =?utf-8?B?UWcyZ09rVXJhN2hxUlhtZytQenRwdDFla09wUVl3cDQ3QndkUHgyOVdOYzhT?=
 =?utf-8?B?ZGF0NmZSaVlpWXdQcWNzZmRJaXN6WXVMYmlRTCs4VEpwYkpCOWt3ZjcxQ3p4?=
 =?utf-8?B?V1grbnRIbERiN094aFo1WGVJTVM2SlVoZFRPRG8zR2lsYnlxb1hmdnZEWkMr?=
 =?utf-8?B?aGQrQ25NNzhMcXdjc2VCOWo3OUs3SFd4MGMxMXhCRVdGSG5wbnlsUG92Skhm?=
 =?utf-8?B?YWcvSjdnL0dhRE9kR1Roa1dNc1lsSkMvQ1ZaWXBjUTEraFc1MldEdzhvZ21o?=
 =?utf-8?B?M3JDQ2VSNGlLdTdPLzZyalByRCtRVzhPM3NmeXpiYUYrSzc2QzRvL2lFUFpC?=
 =?utf-8?B?Um54Y3hxR2xIZk9wK2d2VXZ3ZnlKOGhUKzBlZm1mTnpJcE44Mk1HYnAvTjN5?=
 =?utf-8?B?bGh1RnlZdXBDQldqZ0JGcGpzMThvaUZseGI5dEF3UE11YURCb2o2QkNFQmUz?=
 =?utf-8?B?YnNSR0IxY005ZFJPcFFPYzB4cllBNTZpdWUwUE9vT1UzQkI3VDZEQXR3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6280.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b0xPR0FST3pKdTd1VjJsY1ZEMllveG9aWXNFQ3BtemxabjdLMkVtNnlUYlAw?=
 =?utf-8?B?TEQ1b2NNZTdlU2xpODNqdjhUWlFNYW0wT0FObWJGTUtGYVBwR2JvQmZudWJp?=
 =?utf-8?B?aStLa2IrQkFTZ0pyOElJRDFYak81ckVVY0x2YTlSMUN5OHFvTUtETmpwcU9h?=
 =?utf-8?B?aHI2OVc4UFFYYjB1S1VmN1Bva0RpUzUzWnRsdHU3cWh3OTFtK1VoSWpCcWpU?=
 =?utf-8?B?WkY4OTNoVy9qVEgxb0x3cXdCMXh3TERxdWxwMHhvdHVNR24ra29ocnNkek5a?=
 =?utf-8?B?c05mNDNaTWozMFNBNlhaYjhlc0I5cXZKbS82U1hnYWJKRFBjTjVsZFhva2I2?=
 =?utf-8?B?SUNwMDN0QjFjcWgrNHBFL3NhTmpQZnFTT2NlaWRZRzFHL0lrbEMxWk1qemdo?=
 =?utf-8?B?ZkhjMEhqU0gwd3JuQnY2bHJ2VmpxZW5ZMGRCdWRXeUYrL1I0NEYxNURSdno4?=
 =?utf-8?B?RlZLeGtkdTFCRUhDYmhyS1V1c1dFNk45ck5qZlVkbEVEYzUzZDJmV0lZWTBB?=
 =?utf-8?B?RHVoOHNoVTRpT1hLTjd1RERHVjFuN05mbEc4U2Q3V09JRUUydEpCSXRCTy9E?=
 =?utf-8?B?Y1R4Mk5NajE4ckJDbkFFdU1qWXpySEQyLzJwcWtYWDRzN29SQVFIU1FXSnQ0?=
 =?utf-8?B?ODdJVnN1a3N1ajhkV1d1UTQ5ZHZDV1NXVmF3NmpUZlBUTzhPVHhSL25USTZW?=
 =?utf-8?B?TUQvWDRWSndNL0ozTG85Q3QrSnhpU05xVnhuQ0pYeElhU2NQb0ZSM1c4dkkr?=
 =?utf-8?B?QjBLVVJ4eTZON2dibHBNa2dZRk15ZmliKzdVaWlUdE9PVXozSXp4bFBIV2hm?=
 =?utf-8?B?Tk56aGQrTnpiSDZlMzBlOUZSTHA4eXJKOWlORTZmc1FpVTF0OGkyQnh0RzV0?=
 =?utf-8?B?ekhqZWhwazBleDJ1Snhrc2tUWldWcEhoN2hjTWg4anBIOHZtMUtQZ0w3WHFs?=
 =?utf-8?B?OWhweUVOUzZ4TW5FRVN5MW9CRm5YSjNTU1R3R29wVU90N2tiR1FQRHcwd0x2?=
 =?utf-8?B?T3hxZXFxbEhNck5DUDAxQTZOdDJlMThWSmtWNURydHF3Um5TRjVqZmUwdnAx?=
 =?utf-8?B?MGdJV25vSENLOVU2QzFHenA5L0xEOFVVMVV2M2RoOUJjQTduMkl5Qmh6SnNT?=
 =?utf-8?B?UUUyMFYzWCtlUjZRSjJYZzdBVjBIUHdTb3RjQXY5a21PT1hWSXVLUEZ4VGRF?=
 =?utf-8?B?cXE2UnNQK3dZa1JHQTBqUC9JbExnc2w5bmtHc2VyTVdLZ3FGRExZbkg3SVlG?=
 =?utf-8?B?UEVCTlRhZUdJZ0lTRlE4a28zQ2kzLzdoM2xYZUJaSXNBSWZ2ZU9seUxkQ0VH?=
 =?utf-8?B?dTJxV3p2M3lUOHIvcnYwaHZYSnM4ZjllWGRaWmxSQ0FWNy9FL2w2YlRxM2I5?=
 =?utf-8?B?S3BNdEhlTS9QdTdUMWdoVCtIL0pwUWc2ZUJ4R3Vpa2plWHo0YUxTRjNGVE1G?=
 =?utf-8?B?NWpRNFhPK1R2MGhITFBwUEhaVWEwTEkzNVhqYXlyUTlCNDE4ejdqOHhsWTBO?=
 =?utf-8?B?RDJtK3ZWV3RIc2pLZ0dLWllDdCtqd0FPczM2THdlZlIrbDBBbGdsOU1DcGZq?=
 =?utf-8?B?Qi9UQWsvNkpCd3VndHU2bytrclNGcmVkSVJ1VCtXUVA2RmRtckV4RFo4eFZP?=
 =?utf-8?B?NFQ0QXovN3JvY0lNTWRGTjIxclpTVFk1MEIzS2pjS1V5UVdPU1lXSFBkeGhu?=
 =?utf-8?B?K0ZHWUhKeVRSOUdLV3MvNUF1MVZQSWxoY0JVbkM1ZnFpVWd6NDJRKzI0V3dB?=
 =?utf-8?B?SVBOQ1pUL2FKUlJBWS9YWXI5UkZRb3ZaUnE5WFRVQXFPeksveCtsdkwzMVNm?=
 =?utf-8?B?VTlFbDMrVXdKTWlGbjZGcGorSE1lanJYS1k2UVlZY3k2T3Q1bW5CZjJQczZ2?=
 =?utf-8?B?NUc1NlZuUlFySUUxYkU0VFhpVWNlR0ZGTGk4WWFxRzJzOWJzcVdIdjQzcWZ6?=
 =?utf-8?B?TUl2Tk8vUmJkZHprTFNXQTZONldDc2tCanNaRnFPYjlIb3JDaHlKQll6dXcr?=
 =?utf-8?B?NG1GeVJ2Y2UxVFUvQjVIVGJhdHNCUDM3aTdWb3pnUE4wamh1RlFzYTFYelBH?=
 =?utf-8?B?UWhPZER3OUhVWWNPK2RKTXprd2lXNTc0Z0ViTDgvcEZxQWFLLy9wYmtLWWpW?=
 =?utf-8?B?S1p1aSthUk1PdjI3MnBNS21iU09QeUtDSDhESitIakVtZEJvcElNWnI1MFpB?=
 =?utf-8?B?RWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f6328c5-cd4f-4676-c225-08dc642ad066
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6280.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2024 06:50:23.0083 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xi373HcyLKcN+fb+bEhiVUjvm9/mImxE+OmOhZRMSVsufXpd4oyVQ1DBMO0StroumoeUgkfde+QqR7hnZ2rf2w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7678
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713941427; x=1745477427;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0biAsHk5yTBRWRvMtkfnREa0PCSQL6R7dsqTM013gYc=;
 b=gepc9878zRWs5ZX7Nbw4Xq6vo45aXoSgNnw1kB564boGOWgfiumx4gs9
 XnPI/cqh2g3tq8TgiRcOiAnmFX6xRS+DPc33Ucka4igc6/qCE285j0qm3
 rWrGMgBs6wI3sUodAGzFYecwe2qtHNxyijqW7yRMIiJAI/J3r+XCW8r9Q
 sMckUp5XE1mBjo583d4aOsKXEAHs2LgseM1Lj2rbMQ7tEgPph+FlEND42
 rBEshue66G/Jj+1/sh1lHQzVfLy6dfeDy6e4NSZEHV1fT3Hv8Jxr5w04v
 9rlQlMWJ4N2TcJ7Ui4U/8nRYuAdXineLSt8U48+M9f5lySiBsW8gOMvM2
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gepc9878
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 1/1] e1000e: change
 usleep_range to udelay in PHY mdic access
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
Cc: "Neftin, Sasha" <sasha.neftin@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 17/04/2024 22:03, Lifshits, Vitaly wrote:
> This is a partial revert of commit 6dbdd4de0362 ("e1000e: Workaround
> for sporadic MDI error on Meteor Lake systems"). The referenced commit
> introduced an issue on vPro systems, where disconnecting and reconnecting
> the LAN cable might result in a kernel panic.
> 
> This was root caused to the usage of usleep_range in an atomic content
> while trying to access the PHY. Change back the usleep_range calls to
> udelay.
> 
> Fixes: 6dbdd4de0362 ("e1000e: Workaround for sporadic MDI error on Meteor Lake systems")
> Co-developed-by: Sasha Neftin <sasha.neftin@intel.com>
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> ---
>   drivers/net/ethernet/intel/e1000e/phy.c | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/phy.c b/drivers/net/ethernet/intel/e1000e/phy.c
> index 93544f1cc2a5..f7ae0e0aa4a4 100644
> --- a/drivers/net/ethernet/intel/e1000e/phy.c
> +++ b/drivers/net/ethernet/intel/e1000e/phy.c
> @@ -157,7 +157,7 @@ s32 e1000e_read_phy_reg_mdic(struct e1000_hw *hw, u32 offset, u16 *data)
>                   * the lower time out
>                   */
>                  for (i = 0; i < (E1000_GEN_POLL_TIMEOUT * 3); i++) {
> -                       usleep_range(50, 60);
> +                       udelay(50);
>                          mdic = er32(MDIC);
>                          if (mdic & E1000_MDIC_READY)
>                                  break;
> @@ -181,7 +181,7 @@ s32 e1000e_read_phy_reg_mdic(struct e1000_hw *hw, u32 offset, u16 *data)
>                   * reading duplicate data in the next MDIC transaction.
>                   */
>                  if (hw->mac.type == e1000_pch2lan)
> -                       usleep_range(100, 150);
> +                       udelay(100);
> 
>                  if (success) {
>                          *data = (u16)mdic;
> @@ -237,7 +237,7 @@ s32 e1000e_write_phy_reg_mdic(struct e1000_hw *hw, u32 offset, u16 data)
>                   * the lower time out
>                   */
>                  for (i = 0; i < (E1000_GEN_POLL_TIMEOUT * 3); i++) {
> -                       usleep_range(50, 60);
> +                       udelay(50);
>                          mdic = er32(MDIC);
>                          if (mdic & E1000_MDIC_READY)
>                                  break;
> @@ -261,7 +261,7 @@ s32 e1000e_write_phy_reg_mdic(struct e1000_hw *hw, u32 offset, u16 data)
>                   * reading duplicate data in the next MDIC transaction.
>                   */
>                  if (hw->mac.type == e1000_pch2lan)
> -                       usleep_range(100, 150);
> +                       udelay(100);
> 
>                  if (success)
>                          return 0;
> --
> 2.34.1
> 

Tested-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
