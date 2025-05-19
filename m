Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ED052ABC989
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 May 2025 23:31:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 85F6B60F9C;
	Mon, 19 May 2025 21:31:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YLTvYFuXbxsB; Mon, 19 May 2025 21:31:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 45D2A60E69
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747690307;
	bh=zNUYf61TZimBkVD71Yabgfi5bYW0cpohbyiqWtyRMss=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Cvvto/H5Vjw6rIhtrIsAt2mesmyAm0HR++d5+Q1u5yiuBQmPs8g+q4SMJR72Cg+rM
	 L59nA0SlrCEK/YhzZCkIHRBuSkSxc+HhrtjMzx8BLNES3AogCc8rPQMjnuKWvYtVS0
	 Dxokcc9AmMf4agr6+aZXRTHd4aNAEFDG4pStyby6HlAEKV9JWmJe1NO4DJFbdlAyiD
	 J6mdu2H2/2WDAgUyxIUXAW9zNtMtj3nRCkYNIOAt4Ytvz8PXvGQ+UMneMXGcZqCtlc
	 B/OQTJQQFecOds/NI2yTWmdu7x0da4v8mknYXUMhiNnNBnbYitzJu7KCS3KBhTCtGO
	 Vq3PLQPYRRIZg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 45D2A60E69;
	Mon, 19 May 2025 21:31:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 96AEFD4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 21:31:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 923E040E0D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 21:31:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4q4fN6De2O5S for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 May 2025 21:31:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0A36F40DF5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0A36F40DF5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0A36F40DF5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 21:31:43 +0000 (UTC)
X-CSE-ConnectionGUID: d3KfND8pShK9FD8AznLLbg==
X-CSE-MsgGUID: 42nL9M+KTvqk8fLx8Pinlw==
X-IronPort-AV: E=McAfee;i="6700,10204,11438"; a="60260072"
X-IronPort-AV: E=Sophos;i="6.15,301,1739865600"; d="scan'208";a="60260072"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2025 14:31:43 -0700
X-CSE-ConnectionGUID: xPTjdYuiTg2Ya0Sp4A/vag==
X-CSE-MsgGUID: znPwioMQR2WyHWPOGWFxng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,301,1739865600"; d="scan'208";a="139394144"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2025 14:31:43 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 19 May 2025 14:31:42 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 19 May 2025 14:31:42 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 19 May 2025 14:31:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=X9njMEU5GVw0t3+nv2cj9dHMxvDhMLTRvWFg9ZpmelZQYNgbeG1gGDi0roBAUAdBkRX7l4KTJBAlCx/OPdgFCjDbAGtTskde26fYwJWCkCfXWaISsbIEgzLXALDHAYbM06FVBc67MROigUJi5QKERNrRaGLXLcjWCryrUzrY7p9RUNahX9kosgjygjcPz9x3mZ/vScGRPrc8Y+TwUcgQxRn+7zgHMNgoUuSdBbGB6fQZxiJNORNYOO1R3DWnP+IOW7ZxqmGf9KiFg1aG+XdDSs5Fv1GBLpZutk1ZgveWJYEDRHrW9viC75lKzLZXb8wlyQCZteAjO2gVeEt6stLQYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zNUYf61TZimBkVD71Yabgfi5bYW0cpohbyiqWtyRMss=;
 b=m/SabfeBmh094quCa83O74HcBf9iOTu/YDKcZG7KQMPdDJVROsDw2iSK8Z8Q7Dmr+Qjq7mRf0cmOYsO8gfTW+BeJ/TKTWNRNJAGlqqrrLnOK71A4iSO1k1UqpEXegnhvM151w4yMfGMjiCVNIN+jp/ilAuMXh8qrGnqtBx2nsRI4/9IeY33xgzgzOLNTry5dXhcbkOA6tzUaMKuKLaHaBHGsg+MHfU56Z4OweR5mzaNoWTTfuLA/2Wd2NgGlib7Ohc8YCgHYmnUmjq1QcwHggVvbwnWhcg4Qm2ulpoRKn9Pzb2PFsx4K9h0rvFdSnCigDqAy0P+o7SXnEQ6N9h3xNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by IA3PR11MB8939.namprd11.prod.outlook.com (2603:10b6:208:580::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.30; Mon, 19 May
 2025 21:31:41 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%3]) with mapi id 15.20.8746.030; Mon, 19 May 2025
 21:31:40 +0000
Message-ID: <3927499f-b732-44f6-92fe-6cbe250c13bb@intel.com>
Date: Mon, 19 May 2025 14:31:38 -0700
User-Agent: Mozilla Thunderbird
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Simon Horman <horms@kernel.org>
References: <20250516144214.1405797-1-aleksandr.loktionov@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20250516144214.1405797-1-aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4P221CA0026.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:303:8b::31) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|IA3PR11MB8939:EE_
X-MS-Office365-Filtering-Correlation-Id: dffb2e4b-1564-428d-16e6-08dd971c8b39
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UzhsaUhISTlLZ3FncDN2SFo5RHpMQW5TejJJd2J0cTI5K3B4cW4xeCtjREU1?=
 =?utf-8?B?UEVCSmZpa0hqRVhCVWtjQndCZGZqQVhJaTJOa3J1S2dKOTdweFZDYXB4bFZP?=
 =?utf-8?B?VEp5ZVBFMTlRdndpZVVXWHdLREl5bE5TWll5U0FUdlZqY3FJTkxXc1lQcU5T?=
 =?utf-8?B?RER1Y3ora0g4S3I5blluVzlSeENJU3ZrWHYzcWh6TzU4UG11VXdrNGxwdS9q?=
 =?utf-8?B?bThrQk4wS0kxcHdKbFoyWkJjeW9EcFN4ZnBJd1diNGV2NnEvYVY3b0dJejV3?=
 =?utf-8?B?RUIyZURiSGE1WW9pK2kyNGNTV2RNOVNMbHVBWHUzQ3NGakh4ZXdqZnlORWla?=
 =?utf-8?B?UjVLMFpsV0FBKzE0WUUrV3NqZDVibkE3TEFaTUh4a3hrQUh6Y3Q0SkRRTVpa?=
 =?utf-8?B?eUhoRldzSWIrRVZreXB5Zm5Ub3o5UDliTDhpeGpsa1BwTmMyWktmRnVMNDRB?=
 =?utf-8?B?enhzKzVYZ3JRbnNWOGx3eHNuYUsvelQrZ21BUkpWcHJjSWxqZER4OXpFdDVw?=
 =?utf-8?B?S0JBR1lRVzR0N0J6NXRXN3lsWDhVOEg4Y3g4cWJjdktWZElrcHBCdTdVQ21w?=
 =?utf-8?B?MjhUZ3NpRVcrWnBQN09NZVRaVWlDZUJSOHdVNGdGdDdCdkdZTE9QUmdoenJP?=
 =?utf-8?B?V3NGSzFNWlFIT1lFdkc0NkMzN3hQY2dEUnlsYnNZQWhPYzc4YUtRQWQ0TzJz?=
 =?utf-8?B?M25VK2xadTlheG1UTTVpc202MytwQWlsRVhOYWI4c0V0TC9IUVN2ekZqc01D?=
 =?utf-8?B?cmR1L29RWHJESnF2NzRVUlNSZEVLZlJxVWtiZ29wVzFkNU5td0c3UEU2SlNo?=
 =?utf-8?B?eUg4dU5aQzJmWFJVTlRJb0szNDVGQ2tJbzhQZ0ZTaXdkOGJibC9EL2t2bVNZ?=
 =?utf-8?B?MUU1UENINDl4YWJGdnhJTHBFRWp5UFV2TjZod0VRZW5CdnVob3IyZmdyQ01l?=
 =?utf-8?B?OUYzS0VLTnlScEpiakR0SndOODFiaHRhSEFmbTFoc1RCUlpaRVBrbm9KWmFr?=
 =?utf-8?B?NVVSajh2SytPOXczNXBsTi9LOFdrb1h0UW5JN1RxS3Q4NDhRWURvcDBxMHZt?=
 =?utf-8?B?RUxlV2h3ek9rU2FMWU40WTZ3Q0wxTFhxRlZURElNSC9ra3RRbGlUOGpZdklv?=
 =?utf-8?B?SHZMZ1Y3aXV0eDJNLzI3ZDJSa0ZQcjMwSEorV3VMOUFzVVZnNkR1ck1JTHNU?=
 =?utf-8?B?SEFOcC9uSWhKMDBxRiszVVZCRUpOMVlZZDhaTU8wajRFSUs4R2Z4MExEZ0Rm?=
 =?utf-8?B?TWZ4ZnFQRitLS3RZWktyTE51V1VybkRFRDVrbW1NTjhiU3oxUWlEcnRpS2J4?=
 =?utf-8?B?bFoyY2xLTUdZeG5qQlYwT3djNVlNVmphMENaN05FUlJQenliWkVoRjhpeHg2?=
 =?utf-8?B?UlVyS2JuaUhRZlVaUENWaHFUQThPeUM5RndEMjE2ZHVudEtIdkFSdHpIcWE1?=
 =?utf-8?B?b1FoWW5HZVNZTFpyRWdTZkd1VkJNYTZFOXVYWWptYlVtajRmbStROTYycGsz?=
 =?utf-8?B?dmlpMENZZ05ySVUvZnBLRUgyNDVxOGN2dUhKTXlSWWRhZ2E5WldCdjNiRHVK?=
 =?utf-8?B?b0kwOHV1NlhlOWVLbzZyOVVBVEVzcndNS0FhbncvT0hzY3U2S29DTCt2S0c2?=
 =?utf-8?B?d2VGTGVMeDFUd2lTYzhWVGRnSll6eFNwL0Q4cG1MM28vZThpdkxtTy9NYXJu?=
 =?utf-8?B?U2E2RjFXTjZPOExublc4S1o2dUErMG1KQlRxSktZaVpsei84V3RCQXd3ZVln?=
 =?utf-8?B?NDRpQ3JhTVhzcnFXdDNFRGUrSFZoUUhKZmhEYmtPSFpPb041TjNTdnpYdkl4?=
 =?utf-8?B?N0ZXNGJ5bW1lYWtPNDZHSTNqbGhlWXhqbnMzblRjNklpcjZSVVJ2azlTb0VM?=
 =?utf-8?Q?ULaHNKbIsjYGj?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZDBDZ2htZS9ObDRqaGJKNUU3a1IwUys2RlphdmlweHR5TnJ1YVZXOWRjekQ2?=
 =?utf-8?B?K01rWms0WGpQUlVzSUh3UWl4OUVqT0ZkaXA5Unl1NmlkaGhka21pTGV5dzlm?=
 =?utf-8?B?TklaUGdqWXpFUzF6d1hJbk1ocjAzRWxVTnc4YzFya1BidW4wYW5PU2hLQVpM?=
 =?utf-8?B?d3R1d2R4VG1uQ0Q2L2FDdFF2cTJlZ1FiUVlKaHcxdlp3bXBlT3FBb2Vxbkox?=
 =?utf-8?B?Vk5vNmdLUjkyb3lWdndvQVhRdnpnMXByZVFFSzU1b204MWdaTUM5c0RFc2Vp?=
 =?utf-8?B?TWhsb2FnRUkxZVF2MWp3ZW9hem52MHBDM21xWDNaRStRM2ptNWZJT3EzWUlK?=
 =?utf-8?B?SHpRQ1ZtNW1KNmJ0S2w4UEZic3hhY2EvNlN3NTl1YktvamN0aCtDWDdaVE9q?=
 =?utf-8?B?cDZ6cFdPZWg4VG50SW9wREpsSHl5MFZUYnVXWTRMMkVFazdCQWFEY2NadTg2?=
 =?utf-8?B?VzJTUG5YTUpxT1U5bU9IdFRBVmVDZUtVOEtEemNZU2JlRUx1L3YyYlUwK3RW?=
 =?utf-8?B?NmtmS1AvdzRzd0x2cHlpU0ZYRzVPWTV5TXhuL1BxWlFLMjJjc2tqVC8vcm02?=
 =?utf-8?B?dW9tdkdZU2RkbEJpbWNrNjRwd0ZoVGdnR0RUY3k3K2N3eEZ0dGdOQlpIZDdt?=
 =?utf-8?B?WmNqY0gzVmNXaUVkeFRSSWtsRTNDczZMbThDRzFmbzQ4SFB3S0h1R0JLa25S?=
 =?utf-8?B?MGhtY2k0dWpRT2V3YnZWVDVJdXM3QTc4NWFHTE01MG45MjJxR1U4Y0xGYm9I?=
 =?utf-8?B?dklIZzZhSGMybG5GbzVzakJJckRlYm1iSkRicWhwa0VwK0lwOXdqODd1MXpq?=
 =?utf-8?B?QktBOEFoS25rc3pRQ0xUUXdCVElneHgrOFRvS04xWkRqSklLQ2Ftckp5Y1hw?=
 =?utf-8?B?ZURWeWt2T3BGUkMxcjlzdHU1Y0Exb2dQOERvTU9qQWl2SXFsZHNQK3pZcGVs?=
 =?utf-8?B?U3Q2a1lwaGJteEZXcVJjYVAvaEs3RmNFeU5rM2cwbEdNR3FSNmNwMjE3V1Zo?=
 =?utf-8?B?aTk0R2MxVWtNYXh2dDNNd3VlOWl5SG1LeW5YN0RCam90L016bVZteHp0dDhT?=
 =?utf-8?B?MnNNZDlTa09jQW1ySS9qRzNTZVhwZ0JWaENQOXloUHl0d1BtVWlEaVNWVEcz?=
 =?utf-8?B?eXM0bmJ3aFNUNm85cURwWkQxZUtOUTdDSkRITzhpSnB6NGlkMUtibVJsUHRv?=
 =?utf-8?B?L1RrTFpoOGFTcWplOEFWTyt4Y05GUlJUblI5ZERFbDA5UWhGTmF2LzFXemU2?=
 =?utf-8?B?VjAyeGRjaTVLWDZNZTJ3Qm0xRnN3bVNwZ0ozQXlyczNZZGpmbkdjRS9pODRG?=
 =?utf-8?B?SkpQUXVoOHo1RW85cVNUcUg4SXQzWm1rZlRMcHZnR1o1d2NLV3NsQStqaWtR?=
 =?utf-8?B?dGlqTlU0ZGFPc3JVUzVhU3FkRzVlMU81NkVGMC8zTGJvWWlDeEF2SXJ6d0hT?=
 =?utf-8?B?MWZvSDY0SFpTdTIvQ3BXR3dFOWlHd2JaVWV2aUFjN0RNa1kxTk5yTlEvMFo1?=
 =?utf-8?B?M21UVkJSSWJvcEZsL29DNnR0K21VOStQd1JkQm5CSXk3N0xoTC9zN2R3MDRZ?=
 =?utf-8?B?NEpZT1gyTWc0KzVEcHVaSnlDVW54b3RpUFRTN21lMEF3MTEwK0J1T1M5cVVn?=
 =?utf-8?B?MHdpRklHMGJpdzhEdTM4azNoOVhhUzVFQWM3TjlEalVudXpIa0pKNFZXbDZG?=
 =?utf-8?B?Y1VGb3cvekVNR2s2ajU4QWI5bzFLSWoxTDlmY3E4MGZLc1Vqamtlb1JDUTZ3?=
 =?utf-8?B?Kzk1QXJEUFpmZHdlanREMlFuOXRHQjdmTVI3bTArOVdXdDJWMlF3eWpvSEZQ?=
 =?utf-8?B?eG5tZ0w4WDd4Y1lLOXJQL3JlUzlEdEpoUG5MWWlZQVNxaWZXK0Z5NmgrSkc3?=
 =?utf-8?B?YldPY0hIY1JKazRQbW5abTRCcUI5RmxSQTNuQ1BSZXh4dDZ6SVVnejNnMG5o?=
 =?utf-8?B?R0J0S3NLZzNTTzlsNlB4ZFFHVW92aWlDdVYxU2IzTG9TdVRsNWpDcVdBcmhk?=
 =?utf-8?B?ZTJHYXNOMFlVQldwT25TYnVXT25RRVBEeEdUSkkvb1g5c0tqRVFDUUczUjVV?=
 =?utf-8?B?S0sxRWVTelcxSnhDMDdlTTZxcEQrQm5Fdy9tbWZuZHp4MmFScE95bG9CNi96?=
 =?utf-8?B?MUo4Skw3TUxwbXRtbFlVWGRMODhyK0F1Y21OM2IzbERtbk0zRU05aXhDZk5p?=
 =?utf-8?B?aHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dffb2e4b-1564-428d-16e6-08dd971c8b39
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2025 21:31:40.8590 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FNqrYnJHdBIModg3Oh2kQc++XUM4/N/c08Z29+qheGCh9TLK3LU13V72AocMeIYuBJ1Vt6JvXplBTTt3EgZirmW4vyyQJ6U7yE7io48JVcQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB8939
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747690304; x=1779226304;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NKKsEI2FppXYF2iE9g+KeBF9EMgZ0I7ID7MmqQwv2o4=;
 b=n/JkScpuyMnSGBtIFnYhHmnC7kthln9rEKCRAnu8ai5oUBdBrc8b+IEb
 IkTlReVsF5ggyUG2s2R6bJwKzCThobzfyK3XDJsTqVnxVHO0IaL030eCS
 E8yry8BFvtv82LwamsIYo1OZgHcr2byT0/T3HLza0IZuuJAy5nUjAtAX+
 99c+Q/LerG5/xq/ut0oqWtGIgKMBiOGjMv7PyrG8gT4IH5dmkCGaGA1vK
 annihvZzaSMUpTWAzckVsi00WiFBLF0mXChubAl7CUnxabFpt7DezW0oN
 E13dWAWUXycuepvJPqc5XFtLja0/pN4oCVD/HnHqWOTnj0HU/skSzt7lG
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=n/JkScpu
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] ice: add 40G speed to
 Admin Command GET PORT OPTION
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



On 5/16/2025 7:42 AM, Aleksandr Loktionov wrote:
> Introduce the ICE_AQC_PORT_OPT_MAX_LANE_40G constant and update the code
> to process this new option in both the devlink and the Admin Queue Command
> GET PORT OPTION (opcode 0x06EA) message, similar to existing constants like
> ICE_AQC_PORT_OPT_MAX_LANE_50G, ICE_AQC_PORT_OPT_MAX_LANE_100G, and so on.
> 
> This feature allows the driver to correctly report configuration options
> for 2x40G on ICX-D LCC and other cards in the future via devlink.
> 
> Example command:
>   devlink port split pci/0000:01:00.0/0 count 2
> 
> Example dmesg:
>   ice 0000:01:00.0: Available port split options and max port speeds (Gbps):
>   ice 0000:01:00.0: Status  Split      Quad 0          Quad 1
>   ice 0000:01:00.0:         count  L0  L1  L2  L3  L4  L5  L6  L7
>   ice 0000:01:00.0:         2      40   -   -   -  40   -   -   -
>   ice 0000:01:00.0:         2      50   -  50   -   -   -   -   -
>   ice 0000:01:00.0:         4      25  25  25  25   -   -   -   -
>   ice 0000:01:00.0:         4      25  25   -   -  25  25   -   -
>   ice 0000:01:00.0: Active  8      10  10  10  10  10  10  10  10
>   ice 0000:01:00.0:         1     100   -   -   -   -   -   -   -
> 
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> ---
> v2->v3 - fix indent
> v1->v2 - fix typo in commit message

Applied.

Please remember to wait at least 24 hours between postings.
https://docs.kernel.org/process/maintainer-netdev.html#resending-after-review

Thanks,
Tony

> ---
>   drivers/net/ethernet/intel/ice/devlink/port.c   | 2 ++
>   drivers/net/ethernet/intel/ice/ice_adminq_cmd.h | 1 +
>   drivers/net/ethernet/intel/ice/ice_common.c     | 2 +-
>   drivers/net/ethernet/intel/ice/ice_ethtool.c    | 3 ++-
>   4 files changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/devlink/port.c b/drivers/net/ethernet/intel/ice/devlink/port.c
> index 767419a..63fb36f 100644
> --- a/drivers/net/ethernet/intel/ice/devlink/port.c
> +++ b/drivers/net/ethernet/intel/ice/devlink/port.c
> @@ -30,6 +30,8 @@ static const char *ice_devlink_port_opt_speed_str(u8 speed)
>   		return "10";
>   	case ICE_AQC_PORT_OPT_MAX_LANE_25G:
>   		return "25";
> +	case ICE_AQC_PORT_OPT_MAX_LANE_40G:
> +		return "40";
>   	case ICE_AQC_PORT_OPT_MAX_LANE_50G:
>   		return "50";
>   	case ICE_AQC_PORT_OPT_MAX_LANE_100G:
> diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> index bdee499..2ff141a 100644
> --- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> +++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> @@ -1672,6 +1672,7 @@ struct ice_aqc_get_port_options_elem {
>   #define ICE_AQC_PORT_OPT_MAX_LANE_50G	6
>   #define ICE_AQC_PORT_OPT_MAX_LANE_100G	7
>   #define ICE_AQC_PORT_OPT_MAX_LANE_200G	8
> +#define ICE_AQC_PORT_OPT_MAX_LANE_40G	9
>   
>   	u8 global_scid[2];
>   	u8 phy_scid[2];
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
> index 4fedf01..2519ad6 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -4080,7 +4080,7 @@ int ice_get_phy_lane_number(struct ice_hw *hw)
>   
>   		speed = options[active_idx].max_lane_speed;
>   		/* If we don't get speed for this lane, it's unoccupied */
> -		if (speed > ICE_AQC_PORT_OPT_MAX_LANE_200G)
> +		if (speed > ICE_AQC_PORT_OPT_MAX_LANE_40G)
>   			continue;
>   
>   		if (hw->pf_id == lport) {
> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> index 6488151..f2c0b28 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> @@ -667,7 +667,8 @@ static int ice_get_port_topology(struct ice_hw *hw, u8 lport,
>   
>   		if (max_speed == ICE_AQC_PORT_OPT_MAX_LANE_100G)
>   			port_topology->serdes_lane_count = 4;
> -		else if (max_speed == ICE_AQC_PORT_OPT_MAX_LANE_50G)
> +		else if (max_speed == ICE_AQC_PORT_OPT_MAX_LANE_50G ||
> +			 max_speed == ICE_AQC_PORT_OPT_MAX_LANE_40G)
>   			port_topology->serdes_lane_count = 2;
>   		else
>   			port_topology->serdes_lane_count = 1;

