Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 42E508B1AA4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Apr 2024 08:06:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1A25D60EDD;
	Thu, 25 Apr 2024 06:06:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z9_3xHFou1aU; Thu, 25 Apr 2024 06:06:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B05D760EC7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714025194;
	bh=A3a+mu+KwMGgIvCM9/TetpxmP8f3QyAHqvDJbwREIPI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lbVjijH0JXM4D9U1FIAJyOhFznMe1Agbbz1OYmHdlTFPlt0SrBohfAcW607gp/ZDh
	 H2JikyaINZ7y1D0p0LLntHKjnwyZmbH+LZ5YoKDbeE4SfMpdTozijboRB7oa1zwwvR
	 ENLoJkFGSImX+1fbXP2+3yDtio6L7MAG0+ukFArfMB+ccV1IIiFY6n7JfJXYc7gan2
	 VAlOaVcItab75Azo/43e9t50vs1jKIcWfqQFMQbSurd8viaGds8cs3ClxZxLoCXN1H
	 rrtCL4Oxhr2V/WSrtu5jRISMaRyICp5t+r2gSMgHwvrtRO6ZWKjoV4d4y2miqJ0Q7z
	 DaiXVlQDtyrkw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B05D760EC7;
	Thu, 25 Apr 2024 06:06:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5854F1BF869
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Apr 2024 06:06:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 430E1823E0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Apr 2024 06:06:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UEIu2cvm2nYK for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Apr 2024 06:06:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=sasha.neftin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E89148211E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E89148211E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E89148211E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Apr 2024 06:06:31 +0000 (UTC)
X-CSE-ConnectionGUID: XlulXZp7Qxic1s4p0gnhOg==
X-CSE-MsgGUID: gEzTWkSyTCKAFigaWO/nMw==
X-IronPort-AV: E=McAfee;i="6600,9927,11054"; a="20379264"
X-IronPort-AV: E=Sophos;i="6.07,228,1708416000"; d="scan'208";a="20379264"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2024 23:06:31 -0700
X-CSE-ConnectionGUID: BvPbKnc6RbCKgC16vSEuOg==
X-CSE-MsgGUID: x/5ZufbWTU6TsY3JA14Hcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,228,1708416000"; d="scan'208";a="25040656"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Apr 2024 23:06:31 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 24 Apr 2024 23:06:30 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 24 Apr 2024 23:06:30 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 24 Apr 2024 23:06:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bx5gQA3C1ZbFVPg0rAiSmVzPhscQTVFD6I5SoarENeiJkFy0MNmqDbIVc/rqTkkhY11RgbUCkGYGvdOeV/KPnSHb7S0cf3pQVPojH3lKQGIKDqd2t+GYOqnGfDocZeFzAzJL0XH3B7evk7XOzYaVv+ieJDzUNVsaQErwS8gsgyIIR2rzsP5CzLdiVobh9C6MYGZT9x8qx9MAC52pCxDuyMcro+ABsJ3Wwz6Z70OYvBfN+ajYhCB/HEnL+jW9W+Oe47IULqGIQod1PRM4uQUHGMZmXfEWQwuUZGxONPCKPCzWB6PPXOTQSsaRDDd3wGzbRYaEKaM9yvQfB+0yP1KfjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A3a+mu+KwMGgIvCM9/TetpxmP8f3QyAHqvDJbwREIPI=;
 b=bZMnaBAgsMCBdaw/xyvAf1Sx2YUf8x0NSiUvOn9RkHqbo0ORei2JK3karAc+Mg0ll0ebBstRFyq+6DuS/rl/npeNYRxyj1Atb6rfPlHefng6MK6d/2xQHzqqJpsP2qHb7iqN5se49PRUbkG5JAYh+Zk+8EWrqAj8ejpA5V4bXqT7AwTxDruHzDutVwdKb3gnsj6xIkJOi5/TvzyhVOTewaIF/TbaT7DcwcczkQqPni/LvSudfwkcO2/TT3ZRat53+L7ltWnrgzd0syHu0g7kGh/OZCETDxggjfLX5g8LQYHwo3J7uNHKu94kSknMJ3mneB+QsgFiJQkzKx+50POAVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6738.namprd11.prod.outlook.com (2603:10b6:303:20c::13)
 by CH3PR11MB7204.namprd11.prod.outlook.com (2603:10b6:610:146::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.20; Thu, 25 Apr
 2024 06:06:23 +0000
Received: from MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::416d:2690:e006:8f50]) by MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::416d:2690:e006:8f50%4]) with mapi id 15.20.7519.021; Thu, 25 Apr 2024
 06:06:23 +0000
Message-ID: <a9b7f1fc-7b07-41e4-8957-876d428399be@intel.com>
Date: Thu, 25 Apr 2024 09:06:16 +0300
User-Agent: Mozilla Thunderbird
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 =?UTF-8?B?SsOpcsO0bWUgQ2FycmV0ZXJv?= <cJ-ko@zougloub.eu>
References: <a7eb665c74b5efb5140e6979759ed243072cb24a.camel@zougloub.eu>
 <dff8729b-3ab6-4b54-a3b0-60fabf031d62@intel.com>
 <2259bbeb9a012548779e3bf09a393fdb7d62dd0c.camel@zougloub.eu>
 <2024042328-footprint-enrage-2db3@gregkh>
Content-Language: en-US
From: Sasha Neftin <sasha.neftin@intel.com>
In-Reply-To: <2024042328-footprint-enrage-2db3@gregkh>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: TL0P290CA0012.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::12) To MW4PR11MB6738.namprd11.prod.outlook.com
 (2603:10b6:303:20c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6738:EE_|CH3PR11MB7204:EE_
X-MS-Office365-Filtering-Correlation-Id: bbdaad92-2ff3-40e9-ca72-08dc64edd57f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|376005|366007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VjJISXBYY2NTL3AvYzVOcmNPdjJLNkdyTUZZUU11Mjk0SWs5Y1ZIZkpIeEhk?=
 =?utf-8?B?ajdRVmprSUgvTlVRY095ZEdZMDNvYVZCNklVVmtRRkxnNXUzajBpNVNJUW5C?=
 =?utf-8?B?bVJRQUNvL0JZbUxRK05QSjhDRXQxVjJRNmRKbFpvZDR0TXlibGJqZ1E5a2pS?=
 =?utf-8?B?S1pFV2hTb2VldHRQNDZIbFZCaVVLTmxKT3hTSDlXbjh2RitHOEF4bGhtSEhU?=
 =?utf-8?B?V2gwL1lReHVqd0tRSHJWMjN5TFR3T3Y0WmN3aWM4MXdKbkgyR3B3eVhmQ0dy?=
 =?utf-8?B?ZjQ1WEQ3eHN0Sk4zRXY4L1lwNEkzcEVuSHlBU1pUUzRDamlCRFd3ZTVKMmhE?=
 =?utf-8?B?UTI1U0dBNzNNbDdWemRVTXZOa3BtUGJFS1NGNkFOUnNsTk5ZeVJ6MFNsMmx2?=
 =?utf-8?B?NWxYL2NCYzNobzZtdTBRYSthM2FRT1c1N0tMK2cxUFl0UDJGL0hFdnZGYkQ2?=
 =?utf-8?B?c2JNL2FOaHhVNCtkNUtWOWJERkFSUFJLM0xCdDVjd1pBRFZGQWdWd1N1MTlu?=
 =?utf-8?B?a2tKVTN2K0Y1MXZTcytTaU5wRnAzTHdIdEs5cUhYNXdZV2hNbkthY2dVejVo?=
 =?utf-8?B?aFlkTG9WQWplQXdxMGNpREZ5RUZoVXkxTUk2OCtXNXBFZGRJa3RJekNlU2pn?=
 =?utf-8?B?OEVtcDlET2Z3RUVLbUo0K0lldi8xbTJxOEt0QjZ6TTJmWmtMS3hXZVVKdjNt?=
 =?utf-8?B?cnBKajVFZXJqYllVN0dZZmhCZUFySXZxUERiTVBXMUhJVTRHTmV1alA3UTJR?=
 =?utf-8?B?NGlEQVJ2cHRCQTRaK3lUOFpjRVl0UkpDVHAxRnc3cEZoQXpURi9vZW5FRFBl?=
 =?utf-8?B?L09VdldlNHZZWlZhK3VZQ3ZWcEdJaFBuYUNEQVdIanRXQVlFZ1ZiQ05XOVlX?=
 =?utf-8?B?UGVVSElFQUVZYkRWYm44NnF0MTRMcGcxRmdtOEl3ZEVwTFhGbWgrQVNEbkhQ?=
 =?utf-8?B?bzBDK2daNEJXUzBKSlBGUkJCL1FEazB3QllGKzd4RWZzTHhmZkE1NjVKQ3Uv?=
 =?utf-8?B?eVM0ZTN1UlpTdVJUaDJQZzFxOUU2aEFrd3k3V2ZCc2xYWFROUlJkaGVnR1F2?=
 =?utf-8?B?WTJmRzdPbjYrMVN6SHZsaHBBZGMyN0hWS29NL2FKZEdxSjVPSG8yZWtjdThs?=
 =?utf-8?B?L1k4b2RKWkk1NDBQSU02Z1l6akRRSVR2T1hDS0gyWExsaTIyc2pxVnJQNVdR?=
 =?utf-8?B?ZjRmbEN2cWVMbEw1NlpqQTc5dDlWTnBJYmcvbXVCN2wrSmpOcG5RV21RaDNQ?=
 =?utf-8?B?aENreHBYSlVVWUZtWEUyMzV3b2pOR0ppZ0Z1ekJRUEJCMzM1Yjdmb1pJY1N1?=
 =?utf-8?B?ckd2bm1qUEdCc3RzVG5DOG1pTTJudEthWGRWTk9iL0J2WWp5QkxIV3E1ZG1z?=
 =?utf-8?B?dWZaQlVyZzJmVFYvOEFGOGJCdGo4dVUxZzJyeWczTkJVckJUb0NMMHdNRWxY?=
 =?utf-8?B?TndtUjZaMkMxcEZIQlQzTGUxZTZ2eFU5dlFTTG85MlJBMTdMRVBWVXJKWTdJ?=
 =?utf-8?B?WVR1NGJVQjZEMmR4NkpIVUFMTHlZQWJPZ2NoTjh4TGw4b0xmcTZmaTNvajFH?=
 =?utf-8?B?RVQ1UWVnMEZSbC9WTytKNHQ5ZEtscm1DS1MrOFpjL2M1c20vZktKY2hFMkUv?=
 =?utf-8?B?NDdjckI2eWJobGVXLzMxZGVlSHlKYzUvYi9QNG5ZMldHcXVMV25CVHVoN1ZK?=
 =?utf-8?B?bDJPdlkvME12Y3NBU1FSU0s0NVdXd0svVmxmSUFKN3k3NjY5YnRyaFdBPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6738.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UVNBODB6VGU5WlUvaDlEbElVMTRyWi82d1laYWdwT3J2VGt5eTBhSllQZDZC?=
 =?utf-8?B?Zm9FTmV6ajF1cS9YVEtPSzI0OFRkZEV3ZjBGclZ4VWo4UFRaZTdKVDkwUWdx?=
 =?utf-8?B?dkpHUDdoRFJ4dzlsVzVPd1JGVDJOb1RtengzQnFJZTVoeFZ5K25yc0lhVkk0?=
 =?utf-8?B?VEVDSDZadk92QXJxNCs5SGMycTNPNS9rWUpVRkUyamJta1JnM3ppT3FOV1Vj?=
 =?utf-8?B?aGVBeDU5T1prb1BacXkwUTVyNEdtVkpZbVd2V0kvMjNTaWxUdkRxcFNvMFlW?=
 =?utf-8?B?cWp4UmNZTWFDSnFZdWx3TDB2NlNQNHRJektuY2M2RXZNVXFCOFBTQytHOVVS?=
 =?utf-8?B?dVh6bDd4RWRaak5mbk9rN2ZKbkxRM1QweWI0TzhOR2wwZFFTL2l2dXBlRTZn?=
 =?utf-8?B?SGs5OHRyajg3czYxUnRZNW5tVnlUMUZwVU10VzhuaUhPN1FoS25BYUNQZjl1?=
 =?utf-8?B?REFQQzhMZkdzUE5UK0gwdU41cmRMbHdQOE1nZ0dHUkxYYkw5bmdnQ0pWT0FU?=
 =?utf-8?B?L2RPRnVnc1pROVMwc1hRWlZEVVA2aFFRMEpIbngwTFliSGFvQU9BL0JNOC9Z?=
 =?utf-8?B?UUU4TWlsc2FXZ0luZjRRWjVVeVYyR2h0aWNTR0djUnJXYTd6TTJzb2JUeGhQ?=
 =?utf-8?B?OGUxUFhoZGxxTm9NVzBkV0dtY21XOW9TUStRYXF3d0lNaWxmQ2dhazhpVmd6?=
 =?utf-8?B?U2p5ekJpMXFFSGhSRVpaWXk1WlVYYjhJbTRrSjFLd0RyRG5hYk9DK0M2dElK?=
 =?utf-8?B?dG9CNDJvRzVOTEhKL0Z5WnRGOWhlSUIxcEJFUnNlc0UzM1ZWZmNmTnU1UlU4?=
 =?utf-8?B?ZTVTUlBJdmdaMHozSkZ1MGhKWHpQdDVSbkp0WVN6Qm1ONnZaelNZV3JQZCtZ?=
 =?utf-8?B?ckp5bUhISnE1dU92L2V1a3ZTbG1LblNmcGFIOUd6aDZUc0FGTlNQY0p4c1RB?=
 =?utf-8?B?SWVDVEZLT1ZTMHB5TVg1QXBIWW5yK1lNdTlkMGJjbnNuVGhtOFdtR3Q4U0Jm?=
 =?utf-8?B?TUFldEg0QVlRcHFBZlJYbU4xR083SHVhZEpjN1UrbkJYV3JUaU5nQnI5Witz?=
 =?utf-8?B?Z1c5dVhwTkhadEtjRjNGWERWSXJCeU82TDdqZkYxNjlaVW1nbEdxS1RuNEFP?=
 =?utf-8?B?cmdEd3lyTnVZRHYzbExzT2YrWnNPak5PNkVIaC9ZWnp3NE51MGpMUnFBL0U0?=
 =?utf-8?B?dU5PQzYzWk91dEFlNHArbEVPTDZ4WCtLVTRTckN2TDZSdzUvRENrdkQ3ay9z?=
 =?utf-8?B?SEJoS3BSb1Yxa0VpN2hxd3BsSmRZcFlUMHJhUVd3QlJreW4wOHc5cm1NMG1i?=
 =?utf-8?B?dy9tTVlmcnVQL2lMWjIvVjQ2dzBhK0pGWUhzZ2RuS0ZhWFVPUUxpVEFLRldY?=
 =?utf-8?B?ditsdnkvU1kxcFhscHhudzF4UFVBM0NoY291RXk4aEowNGZGWXFNdW5ZN0JY?=
 =?utf-8?B?VlVoazRvbm1vNFQ2OUlQSlluRTJXWXkyamJtRWMveHZIaEQ2R3NXelVzK1dT?=
 =?utf-8?B?VzYvSlFhdjN0eEQ5MHBiOWgyZDByOU5nN3NVc25Xb01tV1VqWFNrcmJTRmtk?=
 =?utf-8?B?V3k0NUlBejdNN1AvMlI1K05SM3prRFcxaHRTQlJxSmZWS2NScjJ1WEphak95?=
 =?utf-8?B?T2pLOU5HSlhNajI0YTc4Y1dGUnBTelVrZndNMENZbzcwVHhQWEVWYURPdWlT?=
 =?utf-8?B?cTdPWmNWR0lZaFYxSVZaVGY3ZndkNm56WEFoYi9LYTJtVnVLSjNBTmJiOEd2?=
 =?utf-8?B?d0JiYzhwS1JsSHJMSEVDdFp2bitNdGVTUXBrWUsxb0U0RnN1ZFJWYUZ6ZG9S?=
 =?utf-8?B?dElQaW1sd3lTdUVLUXh3T2lrZzZlM0FBUDZ6djVmcXBZZ0djUm5DOEtsbEpm?=
 =?utf-8?B?YTNLdTVJYVJVQVZ6MGVCaWJadndyRzdyd3BEN1ZDY0J6TjZLd3FIMkhqa2d0?=
 =?utf-8?B?N242QnoydG5NTGZQMTJhUTBFU2ptQTJtMys0dmhNSzBhQktlc1J2K3ZVTmxK?=
 =?utf-8?B?dDF4azRyYUl4dXRoTzVLNEdyYUo0U3JuRWhFNnVQQUd6L0NubzhJcDJiNHJx?=
 =?utf-8?B?S3ZYWk9SbnVCMWYrRzBkOFRxaUlxR3dxalB4YVBUVm03aUU3MUtoNHJFSitP?=
 =?utf-8?Q?hzZ3ttATuzaJrnYb9ro8lP2Np?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bbdaad92-2ff3-40e9-ca72-08dc64edd57f
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6738.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Apr 2024 06:06:23.5132 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Qox102h9xWCIjkfZk3zq/2EsRvMELNkJeCtbkBLlQYoGska1bFyyTbBg2mgmzZ9Y8zs9Ydee3o7rvvvRRxMuQQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7204
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714025192; x=1745561192;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BhHYZvJ2pHmq6jSWebYAKIpj0xWe793cw7IKhlLjmzU=;
 b=L/T/e1bYrb6axsLCT16NrDy0kDm6sajiTFcI5+USc2MLDpAyaTvJz9XX
 qFV+unAfY+SOJCdeal5mbj0PShm0+BzYc9W+Ou79ZG6B53F36r4/BwNJ/
 XX701/HuKNTl+n5ahHe8GsqNz7lG4RaDS3mj72RcK9y1Z381FV53q0biA
 5pssT1QU6y/HX0PAt1AgAd/5huwim8/rcwmmq2z/bf6ssHdJ7F6EIBpCf
 40jaWhIH9g4pUx3PqH3XDLC65g4g3rCGhD8FMddhhWnhSQrLyLdqWtvOq
 UUY3rfdO9tZsRqFXeoljc6bkjX8Q1jrYQbgFjgy/Ju2Wg2+nb5kVbXgkX
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=L/T/e1bY
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [BUG] e1000e, scheduling while atomic (stable)
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, "Lifshits,
 Vitaly" <vitaly.lifshits@intel.com>, "Ruinskiy,
 Dima" <dima.ruinskiy@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 23/04/2024 19:23, Greg Kroah-Hartman wrote:
> On Fri, Apr 19, 2024 at 12:20:05PM -0400, Jérôme Carretero wrote:
>> Hi Sasha,
>>
>>
>> Thank you, sorry for the delay but I coudln't reboot.
>>
>> Adding Greg KH because I don't know if stable will receive my e-mail
>> (not subscribed) but the regression was integrated in stable:
>>   commit 0a4e3c2d976aa4dd38951afd6267f74ef3fade0e
>> so they should get the fix ASAP too.
> 
> The fix needs to show up in Linus's tree, is it on its way there?

yes. Routed via intel-wired-lan: 
https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20240417190320.3159360-1-vitaly.lifshits@intel.com/

> 
> thanks,
> 
> greg k-h

