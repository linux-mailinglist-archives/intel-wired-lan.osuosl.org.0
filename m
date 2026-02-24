Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aEkvM1eqnWmgQwQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 14:40:39 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CEEAB187E05
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 14:40:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7F42E82978;
	Tue, 24 Feb 2026 13:40:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5_YCqWLYKQxW; Tue, 24 Feb 2026 13:40:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0608F8235A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771940437;
	bh=ajIAKJ0egH+3KJaS2tFwwa2oEnffRtI3nyFgkk3E8V4=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=F9S7Vy+FwI8ayYgqp5BGg/rHg+f3xJOEiP0NNKL7Rm07FRuS6zlRgyzxsNRkUlly9
	 cWoUGybpLi7hYV3TNqTc+zQ/pXMNQEB+QxahvQhhibkoyZqIA/4ulNk4wozowhm9DO
	 r1JtHaZyq8TObOr1fZ7xJbr7rIE7Vo+gIK0636FrRkzhk0Ygq/R3tVSKrP1nQW0JhW
	 pBW0G4DP3Gu93b0JHq/1Tj3g8RyDEfNWJMEsTlfBLbhDPmLDO9/IX7Y02bi21ObYGF
	 gP97AN7U3nqH3egoVrrMZyEGC8/bd5vYNCBfPIdDQ0Otd4RAncTdkFdVsq86Tt5neA
	 OpFqlmc7GMNmA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0608F8235A;
	Tue, 24 Feb 2026 13:40:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id EFE19237
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 13:40:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E159D82342
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 13:40:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rotmQpeFYIuf for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Feb 2026 13:40:35 +0000 (UTC)
X-Greylist: delayed 312 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 24 Feb 2026 13:40:34 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 18F1A8233B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 18F1A8233B
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=avigailx.dahan@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 18F1A8233B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 13:40:34 +0000 (UTC)
X-CSE-ConnectionGUID: nwhfLqCTR5iyPVfUoR/mAQ==
X-CSE-MsgGUID: ZwQKhhLeShetn21QsDH7uQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="90365810"
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="90365810"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 05:39:33 -0800
X-CSE-ConnectionGUID: 8K+mOSl0ReOx59tk3fk3zQ==
X-CSE-MsgGUID: IU1KcDdPQYyup45hBgdrgg==
X-ExtLoop1: 1
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 05:39:31 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 05:39:30 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 24 Feb 2026 05:39:30 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.60) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 05:39:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NoufRpKs7maqmhcslBEsd+FXPOJs1SHWeRDxkSw6gO/71jxIUUOmhVse9+y0NBY5v7ZWu2Vuj3iKDL6wqA2xvOQD19PRLyIGRhpaun0MUsoFLuLITfW1ZoNK3I8Y/El5IOQJmW0l/EKn7QVgyEQeDAGW+ERvB3hNLouza1QEsxXjeIA2plsR18PHwlTaRwqJb5670Z/dsKSnPp1lveZvt2PbFLhkitj77qU7/WQiEZYPPsFbg8qieSkQK0Xxx62HgEOTQlxckVULvM0E4OsWafs9VOAGXNqxflzJ5FNFaFEma/9zeSASx95GG48wL57sN6Xk8Vc1wiG8XDVXZHfGdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ajIAKJ0egH+3KJaS2tFwwa2oEnffRtI3nyFgkk3E8V4=;
 b=S2lInP9RSnaUXKVxVK5XdtwJjGWTewBKuJng5F05b+JTqQyCed9ByooGG/LaC8g/0u9aSvBPfRioucs9f7kSL1apmVu8okgwkFR1uh7k/pNiG3IRETOtpjb+AL1Vkws/AuDR0oTJw3Dz8V8nOHY4G+5d7qsjgF56wrWPfRhPh/I0EhFoLdIttKhK9KbOpTFr9nrCU2LkShhn27hY68PAElxWVgEDsipzxU/foZLEvzE1yTPdw4UGwBUPY/IrMy8rdv9MOhjr3z1lxa7ip0P2TaqWoZpB6l33JLPo3OhH1npVtrS+dfjpIM9ezq+hMIagKi8B593gTC5XRVv+2/9kVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB8013.namprd11.prod.outlook.com (2603:10b6:510:239::8)
 by DM4PR11MB6336.namprd11.prod.outlook.com (2603:10b6:8:b9::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9632.22; Tue, 24 Feb 2026 13:39:26 +0000
Received: from PH8PR11MB8013.namprd11.prod.outlook.com
 ([fe80::26a5:58f7:7e5d:5572]) by PH8PR11MB8013.namprd11.prod.outlook.com
 ([fe80::26a5:58f7:7e5d:5572%6]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 13:39:26 +0000
Message-ID: <ac88477a-a8dd-4563-881c-119f2d22935b@intel.com>
Date: Tue, 24 Feb 2026 15:39:17 +0200
User-Agent: Mozilla Thunderbird
To: Kohei Enju <kohei@enjuk.jp>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Vitaly Lifshits
 <vitaly.lifshits@intel.com>, Simon Horman <horms@kernel.org>, "Aleksandr
 Loktionov" <aleksandr.loktionov@intel.com>, <kohei.enju@gmail.com>
References: <20260131163037.88108-1-kohei@enjuk.jp>
 <20260131163037.88108-4-kohei@enjuk.jp>
Content-Language: en-US
From: "Dahan, AvigailX" <avigailx.dahan@intel.com>
In-Reply-To: <20260131163037.88108-4-kohei@enjuk.jp>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL0P290CA0003.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::18) To PH8PR11MB8013.namprd11.prod.outlook.com
 (2603:10b6:510:239::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8013:EE_|DM4PR11MB6336:EE_
X-MS-Office365-Filtering-Correlation-Id: 1ea2fc1b-f15d-4727-a0b9-08de73aa207c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Q3BHc202MTR3RFRxM1pxdEIraUw0clIvWkxIcDgxL3dPRU5QbVpkanQ5b2NF?=
 =?utf-8?B?WHF6TTBGQ3B1QnhGT0ZSSFF0NktFNGdCaEFsazA4SU1mNFcxK3c1cTUyZ0M5?=
 =?utf-8?B?bTRpc1UvamN5bk91Y1hpcXNoeGZpU0xJR0U0Ly9ReHlpVC9SUVBWY01Ra0s5?=
 =?utf-8?B?YWFMc1FGRnpxdkQxRnlzTHBUdjlwcTNYVmNHZTZTajdNaVhnY1dzMGZOUnV0?=
 =?utf-8?B?WUwxZVVRMytySkFnQThhM0U1THdhZW04cEQxSVV1dk8vSHFrVy93MWk3Mmpu?=
 =?utf-8?B?RFl5LzJiWUVidU94MXovS2grM2t1QlIvcW9CMW9aeGgxRkt0OHByZUp6NmFr?=
 =?utf-8?B?OEQ2Q1FBU2x5VVpZMFBMemc3elFMTHBJbldkYnJFRHArUExsL2VoOFo2U2Rz?=
 =?utf-8?B?MVRsSzcrLzhueFdKTjN4b2MwOXcvU3dwamoyNHJUemxsSDhUOUtSa3hNUGN3?=
 =?utf-8?B?aXcxcWRZbVdabkdDcWRnWlFHOUpRbGYzNElxVWc5MzRCeU5XY3FGZkRXcEI0?=
 =?utf-8?B?ZlBsVnBKNzJmTURaaWduR0FwN2w4VU1NZVh6b0x6aWlGWlljbjFiOWkzWDFU?=
 =?utf-8?B?bk5YMDY2ejZmajZsZlB2aDBTQjFlU2tVcDZ2VWY0TEJFellDOVhUM3lKdGdt?=
 =?utf-8?B?a2Y1c1FBUTdEOS8wNDgxSzhBQmhJVjZ0UGIrN0o4bnB4cTJ5Zzc5THliT290?=
 =?utf-8?B?TmNZVXRTTzZ4bkJUYWlkTmFZTVh6eWJXdXRUVzBsSHQ0eUorTjAvUHZTVmZX?=
 =?utf-8?B?c1FkTXZTcW45U0dNRHlINUlQNVlxdDF3SzdYczhSakUxY05TUWY3eE02Nkx3?=
 =?utf-8?B?VGdFY1ZSeVFKb0dKeGQ0SEFoTE9rMmF0amFLcEd4Q0h3d1NxMiswU24vK1JX?=
 =?utf-8?B?U2RSck43QlBpdmtDZXo2N2o1c3UxOTU2S2R5ZEl3ak4rZFZFRVNiNVlLSVpW?=
 =?utf-8?B?ZWh1Rm5iOW9NZEdHMW1kM0FaRzFIZHlBVWpXaHE0SEV6MXRVZEZKdGZheVBY?=
 =?utf-8?B?QTY1aTZvcVlYRHJ4LzNpWVZpZEo4V3lMNnVDT0pGMU1yaXc3WnZaMzN6TDFq?=
 =?utf-8?B?VVQwZUUzT0F1Sld2ZEtOaXNjNmErek0rZkZmSjFhOThCYi94NzVBUVpPQm83?=
 =?utf-8?B?L3lnM0FGczRHT3dpK3RLZ3NkYkhwZUxORUFVZHFHVTZuOFozalBvdTdSaW5N?=
 =?utf-8?B?V3dqbWk4M2d0M1l3ZGNVV1Rzb2JXV1BXeGdsK3h6bnhxRnBoYmNLYlU5ZnE1?=
 =?utf-8?B?cUJobFlFOGZhY1FrbXh0S1pOR2V0TkVJeHloRm8rcDNXUG5CSEpmRnlZZTZW?=
 =?utf-8?B?d3l0S010K0daL0luWklObkNVS1BHT3pOVHI1MUFpTkNWQllST1dLcDcyTkdz?=
 =?utf-8?B?T0F4Q2NEVkszbW1UKytaY3Q3N3JFd1B5ZnlVeVJJaTYvYytjb1R5bS9uekpF?=
 =?utf-8?B?QTQ3dVZDR0l3MmdCM29EWFVuc1dMZWlYNVNtQXV0WmwreWtnYzc0dmNwRjJo?=
 =?utf-8?B?QlgxbzNyWHVJUS9VTzBZenJpbUZxOWxhV0RNMHVuSG42WVAvK0tQWitHdGZ6?=
 =?utf-8?B?TDNJY1hXOWhzSG9nK0tTR3FXTDJTSUgzYmNMQTRQc2hUc0VNYXdUcDdWVzJr?=
 =?utf-8?B?WWhxbURRZUJLOXBJanlON0owNjVHTDBEb1hmRG5qNmVmMmtxdFJqK3JDbXox?=
 =?utf-8?B?dU90OTBUTEx2NTVBMlF2cm9pTkJ4N0IzRzM0YmVSM29QWm5RZXJPUDdZaFlW?=
 =?utf-8?B?V0hmK3JRU1F4a3BDcmVqSWhFMnI2TVNqTmN0T2NkTkx2Q1MraHk3Q0ZaSUtm?=
 =?utf-8?B?ZXFISjUzaW1FRitqMUUwbmtvQ0RncXNpTFdCQkEzNUR0NTE2eHhWY0hPNWhH?=
 =?utf-8?B?SUw2QzIyUWV6VXVYb215R0l4UGp2dmVLUHo0ZjBkaW1SVXliT2gvWGZDYlpi?=
 =?utf-8?B?bW9DNGVXaUViOHdaU0pQODZqd2gxKzJ0N3oveThrc004cCs5aSswNnAzMEg1?=
 =?utf-8?B?WDBsZjNkRFdtUmVJZ2I2Q1ZkOGl4YmRpSmdEOHpiSlBXY2o1TE1sNlAxL2hJ?=
 =?utf-8?B?c3JuMTRkT1VLNURoQXZVcDFRK3UxWlkrUlludlhDeWljWlJHcVlRWE1BcHV5?=
 =?utf-8?Q?/U+I=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WUZLWSt3elVXWWc0UzVjSEplVkE4OFlIczV1Z0RwbmovcU5EY0NCUGNvSEdz?=
 =?utf-8?B?Mks1bmkvSllEblhyWUs3SnJPZ092UlZVTWlyVDMyckh5U1NHNjBDbjgzMU9K?=
 =?utf-8?B?Ymh0aGhubWNRTEhuYU5OUFRqQzJmY1FhUjFUZ1JCSXFiTHFQUXVvVVRSaU05?=
 =?utf-8?B?Z0hpc012OEFrVlc4OHV6NG51WFU2eFQvQ2ZDWWJ3bFhMb3h3TnkxcmI1VmZn?=
 =?utf-8?B?ZnVtT1RzbzZLUGQrK0g3Zm4ybHVKNGNNakNGZjRsTmgzb1l5d0xlL3Fya0V0?=
 =?utf-8?B?RXcvMm8wUER1djhWWU9kMkNYcmx0WWtIS0JFdzZuSWEwTlFsTlBZN2VqeEp1?=
 =?utf-8?B?NlRFUm12cC92Nk5jQ09KT1lqTlN1YkttemFSRk0yWHZGS0FFZVQxTjBBT0Ir?=
 =?utf-8?B?L25mdkFac012enNGUVJENlFidExram1CeFdYdDd0d1hQWXRLN0d6d29CMjQr?=
 =?utf-8?B?Q0NzT25ROW9HOUtRckFBcExZaUd0RlhHTkU3N1d1NDlPbUkvaGtEM1Y0SnN3?=
 =?utf-8?B?QUdBT1dNbTFVQlJhN0l6alZTZFNBamlIWE1yemxiZENWcmU2UEo4a2JPSXNi?=
 =?utf-8?B?b3lzZ3Y4RzlTbjJBY3hrSEFTWmZFN3kxekx4YkV1djBmYWgzdkZXOThmMFRX?=
 =?utf-8?B?WWZDTUFicFE3bnY1UEIwM0RYbERrNnpXRDhSR2pYQ2hZdHZxMTlrOG94dFZS?=
 =?utf-8?B?cWtpbTNvMEI0ck1MUy9oRHcwNVA4Nmp3UXE0a1J1NWN6KzFaRER5Yy9wUnZ5?=
 =?utf-8?B?QWg0U1F6TllISGpka3UrUXgrMVJoVFhHUm9FY1VjVUUzZjlHK1pYN2E2MlQ2?=
 =?utf-8?B?d0tkUHo1UU1PaCtEK2dPNEtRaHRCa1RkMlVxWktmeHN5RmE1U0JTM0JNdmtS?=
 =?utf-8?B?eW1GdmNTSENPbXFBTnUvYlJHbTAzN1cvc2Z5Z2hHZ2I5Vk5abHdRU3E1UHBp?=
 =?utf-8?B?WXlDU3JNb1FRQktJVjlGZWlYWGRJUnR0cjNsY1dTRFdUYzBMRTN6aFlkMFY5?=
 =?utf-8?B?ZmlWWFFHS1pxUVFmMzZzS3FHVXR5aTBMM2F0dURWUFBDbm1vZk8yOFR3RDJr?=
 =?utf-8?B?bExmaUNpK0hIblNHcTZUU1YwakZUaDZwYlVmMmNRUWtxK1BpM3JoTTVnUklH?=
 =?utf-8?B?TkRmQ2Z4WEVrNTk2dk4rSS82WVdtRi9FVi9LcWNYaUxGSmRiNHI5RlY4VGRC?=
 =?utf-8?B?WEhDK3FLQ1hHZkM4M2dWZ3NDeFdndHUxTXdaQ3h0WVhBcHhFYU1FY2NoTHM4?=
 =?utf-8?B?aTJCMFNxTzFzN0lEeFdiZDREdFNxOXZKN2xWRnB6cW5ITDVDVWlQOHBDaXJT?=
 =?utf-8?B?anQ3aGVQaUl4b2dEMnRiUTAvbW5KQnp5WTUweWJ5YlZpNG41dU1UQUdTYVQz?=
 =?utf-8?B?SHFBNHhidW91bWVzWEJvdzRZSWJybXdXRFVFVXVETC9XSjFySWxLQldUZ2pF?=
 =?utf-8?B?elo0U3ZDMnF4bHljMElkNDFJdW4zeDRmTXZUVWd1d0hkdTBZem9Bbml3Nkxt?=
 =?utf-8?B?L0RpS3ZBTzd4eWNwSUNUQTlUSnpCU2RleGc1NXltNnFIOFZsTFkxd3J6anIy?=
 =?utf-8?B?L2xUMDVvVVFBcys4cEMyOU1Xa1VSazdCY3A0TXVyWHFUaG1ZNWxkb0pYQ1Z5?=
 =?utf-8?B?SWFYckRyd2txTXk0RnhHYzlSM2hKbXlwNWZqTWNJbElzc0dzRGNsUFlVWVBv?=
 =?utf-8?B?QVkwSGxTNnhlYlJjcENQZVdwdCtCb1lmT3VVZko5SE9yN09LemU5bnZGaE9j?=
 =?utf-8?B?UElLWXJicnpQOEdPODR5cnV3eHhURlJtamw3eTQ5cGRXRCs4dHlKYVRxUy8x?=
 =?utf-8?B?U2c5YmxMM2FqN0xmZWNSNW1hc3BPWUNJUFE5MGJFc0ZCeXo3U1ZnMUZmek11?=
 =?utf-8?B?bThjZVkvVTFhaTl3TUR1SlorUVE4aDlxQ0NXaWxYT1NlYTMydU1hV09qS1hL?=
 =?utf-8?B?cS9zTmI0bzdJdkE2MGRvVnNEamxsWWVhTExZTzd0eXg0ajcrcjlGZGc0U3Zo?=
 =?utf-8?B?d004MFIzdS8yZURqTTVnYTRqL0hKQXFkRkpHQktPNThxOS9TNEpRWit0S012?=
 =?utf-8?B?Y2J0R2RHaEJseXlaZGloSk1IcG5vZEdqcDJ3Y1JkRkRmKzZESWRjT3BOQ0JP?=
 =?utf-8?B?b0JuU3E4Ky9XaXNGb2x4MzRhcUhJaUlzQWo5Y3VCSGIwUGhtZHJiUHpNTjhk?=
 =?utf-8?B?MWZSYlE2TzlsTWQxbjhPNmZHNHNqVC9PVm5oWVBqNHdBNEF4VHpkTTJxeVla?=
 =?utf-8?B?eVNRKytEUC8xT1JPU0NjcFVWTDFIQnhhcjRVQWU5aTB4WFZqMExXNzR4SFFO?=
 =?utf-8?B?R20vTU8ybytTV2l3cXVNYnlHbGk4bFh1K2daaXNkdndEeHovWnYwQT09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ea2fc1b-f15d-4727-a0b9-08de73aa207c
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2026 13:39:26.1432 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Q7TWjjseSystZ04mKK4N99ZJ/tiuVckdPprufHQLknPKgafFw94LltsWURs4yv2hwsSeK3E0PdzJZvIUQO1gOjbIgtnLvKBjnj4g0SNKfug=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6336
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771940436; x=1803476436;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ooZiW0E0Y8bil01bi9WqkhOhHYv6Ex25OSYJrCsEpzE=;
 b=DTNFzgHCDLdOlatfjOX4qNYzGV+MyVr0xkZGdXAJZWLhr614qXZGDjTr
 iEVTBjN9wdR5ue7q+5kL4Y/GhcaJuLpP0LzkaBdydQPAf4RCoL+8RZGyf
 zNiLHpyIg6QtjADHg6SyxZvICH54pR17U6eQi+VprhvL0BPFHeCKt1+QM
 liTcw2D0QqaN84a7zWo7gAQCP5Vq5PFO+CMViZBrEHiI67N03v6XOAlPV
 LVUis8lqOeMfxD24eh31NgWZ1jYQuidIh1KHSReJMlE2mATWP7zI2F3b/
 dJJKzfPKPZDMKD1jWlovPQtQvkOle9ttW9BRrFQsd1H981TSfiKzLPGAi
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DTNFzgHC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-next 3/3] igc: allow
 configuring RSS key via ethtool set_rxfh
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kohei@enjuk.jp,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:vitaly.lifshits@intel.com,m:horms@kernel.org,m:aleksandr.loktionov@intel.com,m:kohei.enju@gmail.com,m:andrew@lunn.ch,m:koheienju@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[avigailx.dahan@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[avigailx.dahan@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com];
	NEURAL_HAM(-0.00)[-0.945];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,osuosl.org:dkim,enjuk.jp:email]
X-Rspamd-Queue-Id: CEEAB187E05
X-Rspamd-Action: no action



On 31/01/2026 18:29, Kohei Enju wrote:
> Change igc_ethtool_set_rxfh() to accept and save a userspace-provided
> RSS key. When a key is provided, store it in the adapter and write the
> RSSRK registers accordingly.
> 
> This can be tested using `ethtool -X <dev> hkey <key>`.
> 
> Signed-off-by: Kohei Enju <kohei@enjuk.jp>
> ---
>   drivers/net/ethernet/intel/igc/igc_ethtool.c | 30 +++++++++++---------
>   1 file changed, 17 insertions(+), 13 deletions(-)
> 

Tested-by: Avigail Dahan <avigailx.dahan@intel.com>
