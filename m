Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A57597F0A1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Sep 2024 20:28:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8AADB40B3D;
	Mon, 23 Sep 2024 18:28:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Bf7FQNzPTW_p; Mon, 23 Sep 2024 18:28:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AE20D40403
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727116112;
	bh=6Uej6j9rMufH+r1PYD9L5uUeXySHtB2acC4IEajRYqA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TlxsdpNRnKOd0rwBwGYT4kCLbHhVBB7E+4HesJoadEIiNRXZbteUeggSIFtxiBlgS
	 oMjaOg08iaEiZnVvSm7GIpjohHfPbyJ1Ge52h7zkrCsHiIgZASDI9g2+0umaMDMfO4
	 gOw6nc3jR4by23EC1P6kGTCU+ZvMwToHkGjnH+LGra+0X/3ibYmj2OrqXbwTwx+n/w
	 5m6/slJKTdIyTr36r3+ShDt7Xzwtfz+5ghAQiJR6xC3uTTPM/euh8AJB9ogJnN2dHM
	 U4+69vtP4qhn/FtzXVVwvV2PnTZuifYswha/gFReCb1X609US+eiTxMTniVGOR/2b5
	 iEvCIITKs+pUw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AE20D40403;
	Mon, 23 Sep 2024 18:28:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B0F501BF341
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Sep 2024 18:28:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9E19A40338
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Sep 2024 18:28:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uv1dffhAGonl for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Sep 2024 18:28:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9AC92402C3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9AC92402C3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9AC92402C3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Sep 2024 18:28:29 +0000 (UTC)
X-CSE-ConnectionGUID: J3CgMlGOQvKiq6YloZRfSw==
X-CSE-MsgGUID: nA9e8EsNT2WYWuBl+LhaBw==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="29964852"
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="29964852"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 11:28:28 -0700
X-CSE-ConnectionGUID: 1az1R4tyRRq4VWB1obARyg==
X-CSE-MsgGUID: 2jE3zkMrTV2flYPXQ5ZKPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="71472400"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Sep 2024 11:28:27 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 23 Sep 2024 11:28:26 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 23 Sep 2024 11:28:26 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 23 Sep 2024 11:28:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gCgYEeN8aTl1RRPs0aLMNsOt5VUwEsCmaDyLFcgJvzdoS9In4S5Gzq5lya8TXKLsCQGUilau4c+SeSaQEVgTKT90UTVsPCVII0ejlmlb/l2ymW+JUcKkkidOCUFQenpm3hl8sC9iDqgGUcbGZJ3v0dPIdvTE9ITuMeVDmvW8tM6KbWb+ESWXHX50UKgw15RgcR1iEv5nBAPsqhpH5b83pP8Nd9aMyBhHhgpRk4jQe5tbNb/KDCvq+f3oBtehMK6CnFttyh1DpfEWbJCE3Q5YMQJoRjWSuYvi+11SEl1eggCjMIrMo8QP/iOclxXBoOBPF2PSQeYckegq+6FvUcP7CQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6Uej6j9rMufH+r1PYD9L5uUeXySHtB2acC4IEajRYqA=;
 b=G/cGbUIzyfnSr6muVJX55WAzyX5zsqWpEi63nfn/Hzj//xzH5Vp1HPDhoLOgEIdnIvCa3z5+dpWsSCI6HeHnMV95WsyrbIN+GlqaZ+8JuzvmwzeIeGngS3DPmEVbQ0Vi+Wo/SDmgVh+ifq8y09VxQ2ZK0pFtkwTANwOL+Df4sFmgf658rmwjl4Xc3dl2MOJuoG2WiYDsDBtCijOsKQd3hpxVzxXrdf2o9BTVCoJzJeB39f5QTGKZCgb+LJHzf0VRQ10mcZU57QX0u7cm4gZgAUJ9qhmfLOmhbqW80j2awh0zPsT1gMobdRvNAy5C7rIU5Q2isiJPqVF5jNDGA1i/Pg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by IA0PR11MB7212.namprd11.prod.outlook.com (2603:10b6:208:43e::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.25; Mon, 23 Sep
 2024 18:28:24 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%7]) with mapi id 15.20.7982.022; Mon, 23 Sep 2024
 18:28:23 +0000
Message-ID: <3ad7ab07-d91f-a3fe-4d0f-5305ae05e65a@intel.com>
Date: Mon, 23 Sep 2024 11:28:20 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>, Frederic Weisbecker
 <frederic@kernel.org>
References: <20240922222420.18009-1-frederic@kernel.org>
 <db2c96f3-c35d-42ee-a4e6-5233ccbac7bb@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <db2c96f3-c35d-42ee-a4e6-5233ccbac7bb@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR13CA0080.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::25) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|IA0PR11MB7212:EE_
X-MS-Office365-Filtering-Correlation-Id: fe94b194-ab13-4b6d-7855-08dcdbfd8234
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YVBrdFJmQVpobzMrK3F0SXJEbzZkUmE0OWp1dzd2WXRTcWg1N0k0VlZyQ3hv?=
 =?utf-8?B?eGtiT3ZBc2lkVDJFdEJQWkt2R1I0Qk1BRW9Mc1laSHk5YkxhMWtYbmlxNmFn?=
 =?utf-8?B?S2ZManpQamZsYXF6emtsSm1qNHlxK1pNUnRXZHl1c1J5Q2Frb0duRk9FUmJ3?=
 =?utf-8?B?R3hiOWlyeU1XR1NBMitXeTBaSGduUW1FdU91TEtIUzhSaFEzRkc1NndZZVZB?=
 =?utf-8?B?anJHVmxPc05rMVdCQTViM01vaEs4eE1sSzRTdkVoRHQ3WGJQMDJuTktCK0dW?=
 =?utf-8?B?NHI4VkNjSE0yTGsrdjRzRVZEWUVMbzdXYkJPL3U5SUlWdFd5WncyendrdlNO?=
 =?utf-8?B?bDZrd0pEUEdWOW9ZZDk4VHB4dC84b0x2cEdnMWRGRWZQWEJabkwvVVozYmRz?=
 =?utf-8?B?KzJtL0U5KzZ1NjBHcU1GeDFLY3g4RldxT0k2QjU0Q3dSSkJPazhGLzY0RnRk?=
 =?utf-8?B?RFM4Ylc5UEFtUjEyZ3JaMEVwY2xJWm9UeHJkUlo0OVljbHlYK25TeW5Qd080?=
 =?utf-8?B?Y3NQOXhaeWJ3aUE5Zm1qYXQ1ZVBDY3pqVW9veW41K1luT256OFVHNGczalJs?=
 =?utf-8?B?SURYODNTSjNHNkpWWlpaUXl3MTJzRDEwOFlQYTlKTHdMUHpIOTM4SFJCalhG?=
 =?utf-8?B?T1lXQzRtbHNuU1pvenAwVU5FdmdPQnpDNVNhdm0vczRoMUZoekl2cDdsb1Zh?=
 =?utf-8?B?WFhUMzNxbzFvZVpUclBYR0liTEF2dGVKK0IwdStQWTUydlNOM2tNZnAvdFdH?=
 =?utf-8?B?K1hDNjhWSkFBMGFJQkNGMTdtUlhYUzFJdE9uajdUbUtUZGNqaVJQUnRPV3lt?=
 =?utf-8?B?MXdzNFJFbVQ2cGFLWDR2eTdFWFQxa2dpV0FCN1JyTW94OVhsdFN2NE1sUC9Q?=
 =?utf-8?B?QkxMN0tKNWJFaDdGTDRRdGFyVG5rc3o0R24ycW94RTliM0xXZGQ3b01xNXFE?=
 =?utf-8?B?bDhDUjdkaGtCYWNGSERrV1k3M0x1MFZxUlc4MjdkMjNpb3FpZ1MrV3RXbXYy?=
 =?utf-8?B?ZlZJQ1FCVjFSamVQZnBRcUNTQzhXRW5ZdVVVcWhOcUh2OFlIcHMwU1NVMVVl?=
 =?utf-8?B?OVdXOFAwS2pwbVA2ZTRVTlVvc252bGoxek1uUjlBN052djExN1FpMEthYVk5?=
 =?utf-8?B?b29zZlkxT2EyK1FyRHEwR0w5N28vWXJpdlVjcDlDVGtLamk5ZEx4S0M2MDFs?=
 =?utf-8?B?TUxRWGFXVHJCL0plc1VneG5iUndML1ozdURsVHA5TDRRNVNTMjRJQnFGU2Rn?=
 =?utf-8?B?ZnNYandML0dTREJVanRsQkI3Yi9YTlRDZnM3VW5zRENyRHRuUzhUR2p5OXFT?=
 =?utf-8?B?OTNsQTZteGIzMEhzTnpUY1ZJdis2YkUzSjlsK2pSNzFaVUVhUzhGS0JFdVA1?=
 =?utf-8?B?RjUxN1dnUzJNcVd6dmcrT0Jza3hLeVVrekJ0WFlWL3hnWkZJWGFlSk15YjQ4?=
 =?utf-8?B?cXNRUFpaQk9kWVVFTkZteE1ZR1lXYnhuN2srUGpmc1VGUFN3MFFDeklZZUtF?=
 =?utf-8?B?bWNjczF4blB5Q2V4UG5NREQxMnd0U3BTcmkrUmk5QzZ4ampKZVpQVnFyS3c4?=
 =?utf-8?B?b1l5MS9ScHYvQ0JqRmQ1UGZva0xwZHVobE1RWk1qYTlFSE5TanRGQ1U4Vkhy?=
 =?utf-8?B?SitwRWtPbHovREh1Wmo2dUZyS3VCS0dXMU1KZE9wOHlUOEFlOWcxTVZjdjFM?=
 =?utf-8?B?QSttN0hUeno5SDgzamg1QlJOUkFVMUIyWncxOUNmV2ZUODZOSjI0U0xBPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UWxsMWFiYkRobDZJTkZBTVpPL2dSWG04VzdrTzdMNHJIT25acWtzbGttU2xw?=
 =?utf-8?B?ajdqV01xTnMyMnBWMDBFd3d2d25MdWdGbm0ySGZEWXM0ZzRkdkJxS09vVHNo?=
 =?utf-8?B?SVRwOE82eVdHQUZzSGVHKzhaQXhOSEphamVmTkJmN3FRbXVZWWFQSk1qZU5S?=
 =?utf-8?B?R1lRRzg4Q0h6NDh2LzJCVjI5emM5dFJ3dVI3RUI0enlUQWY3ak9VUHU3NHpP?=
 =?utf-8?B?aU9DRWRURStyOE92U3dwUHdnNTl2MTd5dDVLNWhjODZ5R0lXQ0hBcDdIVEEx?=
 =?utf-8?B?UERCLzBCU0ZPcjJFRXNSWDcxckp0ekN1bVZ6TlRadm50KzVrUFVEdU5RS2tN?=
 =?utf-8?B?MldWc05HUWJkYWlVUWdhQnNLdTNoOExIR0lKLzM0OGdzakNQNS9Ka3dmeWZJ?=
 =?utf-8?B?VjllM3ZKR1dWOXZ5NmpOblRvNWdhZkRXUnozY0JCUlZPU2dhOUxFVG4vUWdX?=
 =?utf-8?B?TndjcVhsblRiWm8vWXdDUjZ6VUxOanNpdkJObnVsL292WWdpaHhad3ZXVmJP?=
 =?utf-8?B?a1JWN2k3ZjB0SE40WERCWEZ4R1JVbTRSbTVwb0pDS3VTM0l0cFR5azlIOGxC?=
 =?utf-8?B?L0RWVDI0eGx2dzkrcjRhN05TL09Sci93YjZMWHNRZWdPdXA1MTJWVXVscG5C?=
 =?utf-8?B?ZnVvSGVldDlNVjhRVCtiYmVWTlY1S21mckhjdFZVdHh3Rkt2c0JLRWROUVI5?=
 =?utf-8?B?UUFTT1FrR3h1QnJnTHVjTWZLRlh5Q2FlSWxtc2VLSStlSWRCN2dvdWQzRDQr?=
 =?utf-8?B?WmNMcTBXejZXM2dYWGJ6cTBTcHNIc3JIWGRrem9yUllUeVQ4NzEyb1JhcVpK?=
 =?utf-8?B?WS9PWlNOT1A4VTlMZmJhakJtNXV6aE5nSnI2K1R6VW56UmVXckh2aldXdFYx?=
 =?utf-8?B?TVd5cjVYYU5lRmZiUHNDUnpZYnpWUE9KQUhaMXlPSmlLN3l6NUEycEJBWEwz?=
 =?utf-8?B?dDZTMGpLV3hHUnNzcHIySjczVDR1eEhxZmtvb0xLeCsyRUZzc2duZDlWQkdB?=
 =?utf-8?B?RloxUmU4YTZHZzhuTmxIN0xkK1pHckxYdjFuWmVrOWl0OEFxQTNlYTdubE55?=
 =?utf-8?B?WTFFaGVwcks5eDd1S1BPUVdydUV1M1o0d0R2MUhhM00zWWZEQmZWaHVRZldI?=
 =?utf-8?B?SGpxUXpqK0swaTI0MnBtMkFXVUIwVDhFK2NnUkVHVytJM0xQaXY3VUhZOUFU?=
 =?utf-8?B?bzUxQm1rUjNObDk0amxGOTV5L1R3VGpZRFhnTmd6MU1CVVhWNXBPNXhJOGlI?=
 =?utf-8?B?UFJBRk53aVM5Q1dRRU8vZUt0RjRNL2RuTTV2M3MzT1FkaVhNMEpLcytkWU1w?=
 =?utf-8?B?aGFjeitYbEZYd1hsdzY5c1k0eElmT0ZBRWtjRmdDaFdWMHlmZWpqNXRuY2Rx?=
 =?utf-8?B?cCs3WHg5WitHaDd2WHJnOEpuOERic0ZDRXgyVnRiRXJ0Nk5iRUd6dUFEeHZX?=
 =?utf-8?B?R0lFR2gvK0FtbUFKMFpNajQxRksvQTVMRnpaMFBJaGppL0xLN0RIZ1U5R29h?=
 =?utf-8?B?ZHdvbXlzT2hwTHd5VjJMQjZtd3BFcFdwS0haWWJnbU9wUnhjaWZoY0pwMlJl?=
 =?utf-8?B?TWhsM0ZwTS82NVhoemxEMlpqMEdzVDFuODRmQlVzUnRpNUFHdWNaS1BudURj?=
 =?utf-8?B?bFdJR3BjWTZGcE5KbFdhdVBpSDJUUDhRZndOY2NWOVhOR1hVa21YZ1l1OWZZ?=
 =?utf-8?B?clk3ZmtWaGoxTkkweGpEeGJsazlMTE5sOURqM3RxZWJzK2V5NWlHNG54c0RO?=
 =?utf-8?B?WlBlTnlFYUJEMFU0Umg2aFFrQ2FWYVJ2VVdRWlY4d0o2VzRyNHpXWExKTVBz?=
 =?utf-8?B?eElPVWs2OGNTc25EcU12QWs4OUpybzdxNzQrdWh0b2EreGhIMWZ4SE13bVhQ?=
 =?utf-8?B?bUlVdFZ2SVNacDhFTjk1WWxsc2NZQkVJZ3RKbG9HWVljU1hod1VSQmdET2FE?=
 =?utf-8?B?MG1DZi92b0ROeG04MXpMcUlBaVNtM2JvS1VQbk45Z0gzQmpNY1F4VkVpY1JM?=
 =?utf-8?B?YXpXVjh2RkRnWHFxWm8xTTJnaG9yM2txc2M1VEhkUFp3ZW9BNWxOVmhKMkVB?=
 =?utf-8?B?aDdFNWxUQlhmSnhPdkJrUS91MkxMemROaFphclVaKzhveXZsOGYxMkRXQ0tI?=
 =?utf-8?B?ak11NHYvTTFDeUIvU2R3cEFyMCtlTWo1MU1sY0dIY0JibEs5R09aTGN5Sjd5?=
 =?utf-8?B?YUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fe94b194-ab13-4b6d-7855-08dcdbfd8234
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Sep 2024 18:28:23.9139 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rXE0yoxUtnkzRXP/bI430W1h0onXKfzeEw3a6JB0ykm4O+auRoKsjVi4Tyhnr388Vv1EMvxWUpCYgF9ZMbXi6qy9ekiIEw8VYqBgTD4m6n0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7212
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727116109; x=1758652109;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bRYbmtYy2tDxOkc/KoUH3US9umppsLzsXy/v52brdTQ=;
 b=TUOiuPzaIctvu1m8lx3rxqIdsyb0aiEGXmDhV4eDquMdz/z4r9Vt1goa
 nZklU77F7v7qrx0pMWg5gxTDzMv8u4+W8U+0x060cYid8HhNbocwcvzc4
 7A3144lnwWEd4kjN3AvuqPP/U1uFbuFLJKxx8wCQwVmPI2Md2fugmWdXf
 JP9QjdrAujUT3oouhBeXH2k5c+SozmFw5ij7mkqX07SGdzjt/Foeq/EyP
 uyrXXAb+TukkoG9jzGk/vdblqJYgBtwdHbr4gUvTmZJxSIdF7lXkSPD7Y
 0r9T6mxrjTZCFbR6a9iow95fVA0a+p0zzcke005Xmh8OTQvCwRKAghPFv
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TUOiuPza
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] ice: Unbind the workqueue
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 LKML <linux-kernel@vger.kernel.org>, Larysa Zaremba <larysa.zaremba@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 9/23/2024 1:57 AM, Przemek Kitszel wrote:
> On 9/23/24 00:24, Frederic Weisbecker wrote:
>> The ice workqueue doesn't seem to rely on any CPU locality and should
>> therefore be able to run on any CPU. In practice this is already
>> happening through the unbound ice_service_timer that may fire anywhere
>> and queue the workqueue accordingly to any CPU.
>>
>> Make this official so that the ice workqueue is only ever queued to
>> housekeeping CPUs on nohz_full.
>>
>> Signed-off-by: Frederic Weisbecker <frederic@kernel.org>
>> ---
>>   drivers/net/ethernet/intel/ice/ice_main.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c 
>> b/drivers/net/ethernet/intel/ice/ice_main.c
>> index ea780d468579..70990f42ac05 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_main.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
>> @@ -5924,7 +5924,7 @@ static int __init ice_module_init(void)
>>       ice_adv_lnk_speed_maps_init();
>> -    ice_wq = alloc_workqueue("%s", 0, 0, KBUILD_MODNAME);
>> +    ice_wq = alloc_workqueue("%s", WQ_UNBOUND, 0, KBUILD_MODNAME);
>>       if (!ice_wq) {
>>           pr_err("Failed to create workqueue\n");
>>           return status;
> 
> Thank you for the patch, it would make sense for our iwl-next tree,
> with such assumption:
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> 
> @Tony, do you want it resent with target tree in the subject?

No, I can apply this as-is but please remember to designate a tree for 
future patches.

Thanks,
Tony
