Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OCf8El3uc2kVzwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Jan 2026 22:55:41 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1795B7AFF3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Jan 2026 22:55:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6C2A360A3C;
	Fri, 23 Jan 2026 21:55:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YCsE3PaQiDSy; Fri, 23 Jan 2026 21:55:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D0001608FD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769205337;
	bh=Rm5qeHD50KBz1PhpfOHxVD8vznqkHvTPz8JBSOYnlno=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kt2L6cW4A5FvkOJ+CCeUTBv25A8yBkMor+6oEot+mCda8ZU5+7nu0+Ozvsn6fZVK2
	 ZhJy8QqE/bGfBQElp25DyRviy+DGwkN2z86n8XNHEFtKre/1NW5H99ft3eg5GYDOYw
	 m1WKqaRKc9uBbKsHEg9kXCCk0l4y7dZralhDWtAZZDRZIwJdg+qRQmnFy76JwfRsOl
	 MWZNKWrppHoB4JnswCXQdcwirA+HddWWnx2fHNWdczPbFPZcXqt1aRlFYA2PCRMt56
	 76gfALohMI6yY0D/FULGSEKkMyAjn+wvHYCv0/OYDCMACmCb1Hgx4kg4nhhWp2NuX9
	 OIN9OaHm18D6Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D0001608FD;
	Fri, 23 Jan 2026 21:55:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 0E039122
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jan 2026 21:55:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E59B94018F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jan 2026 21:55:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fkK3bLqSTPpk for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Jan 2026 21:55:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.201.62;
 helo=ch4pr04cu002.outbound.protection.outlook.com;
 envelope-from=brett.creeley@amd.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B9D2840164
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B9D2840164
Received: from CH4PR04CU002.outbound.protection.outlook.com
 (mail-northcentralusazon11013062.outbound.protection.outlook.com
 [40.107.201.62])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B9D2840164
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jan 2026 21:55:34 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ME50Ed1mueH50nKrjEEFMieoAROxFQd4qcfnE8NAhayyaK94q6HZxyAq71Y7DNWTOnM4zOZou/j7tl+xhOSmcm7hkNi8N58Mwx2u0QoIQnAEaTUlrul1ThtUNn5O8zU/2JKGaH3G0EqSYLqhjTd9hJ9EjF7oBJ+IA0j+UoH8IOcqwEf/UQIMw9JMKIo/Qu0AXfvRJTQNwwwvU40dFsEepi365M/lcFsfM1t7S4H5D+KJasgrdK+2uQOadOwhZiCBMQ0XtNig3ocWmP+7oXKdH5E4on9CB8wbBsYd0Ho3TsqGpcbDqf6QIX5nMPJ2vYXB/xSPwLr5FeNmXavxtKhe7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Rm5qeHD50KBz1PhpfOHxVD8vznqkHvTPz8JBSOYnlno=;
 b=XkGKojyjJMAVkdO98WN7lhF27pGjTrhmgxiGBJ/7syd8kDC428yRMgu9EfDpwpgjVvU/183wGcj2eRnAJ8Vn9FssdsnQkFNNZiAa5cMGqCrEL0qFgZXquofzHNblO6JhV1Vx57vPrQM1Bzw07bx2vhKGImfZzUtsbYFBJuD0NkoY1PKkhEu14oNYIXpV53q01JoZK67CL62dmCR/HZn3PPmQitgNLO3gNrS66U7yE9vQbJIcwzImhhf3puWhy0b0WwHOzi/l2Txyb6xJkZHsrWFAHwH8rTSuhWg5FU/YbaUFujY63IVoH+UOFJR51P5CFJewglgnjb+NQQ8CI2yuKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from PH0PR12MB7982.namprd12.prod.outlook.com (2603:10b6:510:28d::5)
 by BY5PR12MB4275.namprd12.prod.outlook.com (2603:10b6:a03:20a::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.11; Fri, 23 Jan
 2026 21:55:28 +0000
Received: from PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::4eda:ca5:8634:5b27]) by PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::4eda:ca5:8634:5b27%4]) with mapi id 15.20.9542.008; Fri, 23 Jan 2026
 21:55:28 +0000
Message-ID: <577e3218-abca-413b-b9a7-fb8bac60b22d@amd.com>
Date: Fri, 23 Jan 2026 13:55:25 -0800
User-Agent: Mozilla Thunderbird
To: Brian Vazquez <brianvv@google.com>,
 Brian Vazquez <brianvv.kernel@gmail.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org
Cc: David Decotigny <decot@google.com>, Li Li <boolli@google.com>,
 Anjali Singhai <anjali.singhai@intel.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 emil.s.tantilov@intel.com
References: <20260123204058.651080-1-brianvv@google.com>
Content-Language: en-US
From: "Creeley, Brett" <bcreeley@amd.com>
In-Reply-To: <20260123204058.651080-1-brianvv@google.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR13CA0051.namprd13.prod.outlook.com
 (2603:10b6:a03:2c2::26) To PH0PR12MB7982.namprd12.prod.outlook.com
 (2603:10b6:510:28d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR12MB7982:EE_|BY5PR12MB4275:EE_
X-MS-Office365-Filtering-Correlation-Id: b0c662f1-bf72-414e-3f2a-08de5aca1edf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|7416014|376014|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TjNLQ1MwZXdzWXdOYXh5QTh0YnlGSnU5MDJmWitkcktQekpuOTZjcTlHNE1T?=
 =?utf-8?B?TEdqUkxtNVZ0ekY4Sk8vUmc2Q2JUR1hmS1VPTGhqWU1pMDh5a3FiTEdhOW94?=
 =?utf-8?B?aXNTZWw3akkxREpvL2ZlUW90SjlrVVZWcjErcUIyODZXa2xGREsrYm5YbG9t?=
 =?utf-8?B?ZTBIZkl3K0t0MEYzSGRTN2hNUytsMkZjbDBZQmNhNUNKRExvSUEzWE5ZeUVK?=
 =?utf-8?B?eGYxbEVHcEpadTBvSGQ4RGtkNDlBdEJRWU0vTXc1SDFXMFovVHY0emVGVkhZ?=
 =?utf-8?B?NHppcVNhTlFnSi9ULzZxZEZ5UGZkTFJaUlJkWWRoWlA3OTQ5TnBQQ0s0cjlv?=
 =?utf-8?B?Ti9TYjU2bXhxS0htSndiV21QY3RDdjJOb1NtemEvSGtoZEcrdHo5UkZ1MEtL?=
 =?utf-8?B?cU1zcFp3L3FSaXUzT2lndmVnelkyaEdreEQvamNKTVRqTjQ2M1A2SWJjdCt4?=
 =?utf-8?B?bWd1RklOQm9Fd3FyUmQweTRCa256azMyZ1JYV3BURDhucXd4ZmR1dDREdjc1?=
 =?utf-8?B?UmtqZUsyVEl4VlIwclRER0wraVlvTE5uUkRnOVZabVJqZFlwbmtKZWFncUtv?=
 =?utf-8?B?VFdiUEI1SGl1WjlsaXQvaEVxNFpsSThlUHR1T21mT0NNME9MakZPeDJIOEhq?=
 =?utf-8?B?MVdhRDcrcTlrRGpFcVdLOGczc0lselVCYjY4dWxTZmZBaHQwOWJCVWI3Tk9C?=
 =?utf-8?B?TUFnYVhUL0RUb0xna1ZIdCtoKy9qRTg3YjVvV2MwRUE2OGNxbzd4MzVWRXBk?=
 =?utf-8?B?OCszM1lwMFJ3L1lOYkhxblBGdVU5ZHcxRDZLQ05ZanFLTzdIRkxsQTZNNlRY?=
 =?utf-8?B?Vi8rb2tSK05YdE9UMnNBSDh6MHl5bjJtVzFyOENIUldLSDljWHhoYVpQRDRa?=
 =?utf-8?B?eC9PaEhaenMzOXhCN0pYcEFEbHNzOTA5U3Y3SUlzbk9DTmlJS09xVkQ4dHQ2?=
 =?utf-8?B?cmt1SkdTM3dPMm1ub3k2d1NBMDJ2VThOVW5zdE5uVHJMUkE2bk5Xbk4wUWJT?=
 =?utf-8?B?SXptbUxwY0lHZ092QThNTVlNTUNWeDYxT052Qk40amVRVDFBNjVJWk96TllQ?=
 =?utf-8?B?TWtxcTZTOVpLT3Iwek1JUytsNHFGdmgzVXlmZnBvSDFWY0g0Wi9WakJsN09N?=
 =?utf-8?B?S2pxcUF5VWE2cmdsVmE4T1Bud3RxRDZINkJYdExyTkZiMHRSb1NEMC9Xc3dB?=
 =?utf-8?B?dmZvNWhqUUFKeGZ1YURvMzVFYmNTVldtOW9jKzhud3dScDlBQUh0eCs3ZUI4?=
 =?utf-8?B?bG1jMnV4WVRGQ0xJUEpRNFF1MmxHemtFNFNBVmhpRHRDWXRrdERuWnlvQjhr?=
 =?utf-8?B?MTJ5azFXUGthMGRwRWhVenlkc1R6UFphYUc5YWVSNkkvd2VIV3RCeFRaT0Jq?=
 =?utf-8?B?T1NDK3F4eHRYYmlSVktWMlpFeDU1OEluT0ZhVE9wbUd0NE9QSTRiWnlqd3Bz?=
 =?utf-8?B?NmRuSVJwcWVCS2dVSklkQXVJSWFVWGpkN2NSMU9yR3llWlZwY1hVWHFSL1Yv?=
 =?utf-8?B?U3pGTjNxL0E0UkFnYVZiaGZNc2huT0kyOFpkMVNQRjNmd3dUMis2bzc5Nzlu?=
 =?utf-8?B?Yy82eVhPYi9NcTBDUGd4MHpJTWs2TVFDbUhCS0VORDFvck1Ici8xcVNjdnQr?=
 =?utf-8?B?VHQwQ2dOYjJTNW56MDZZTW93QVBlMUtCUnJwditsWngxSnVWZWZVeEtSUWd1?=
 =?utf-8?B?dmJaSVRjZVZaci9zQlQwTU1CREhIRGRxaGRGZTZWU0xqazEyUmltT2lSUkdI?=
 =?utf-8?B?TlM5WlVOaWtodmxUYW5SU3NuWGtzdXFUTnorWE5VaTF6WVFXUEt3YnB2bEdT?=
 =?utf-8?B?RlYyYzFFMGsvMjJ2YitnUk1JaGJ4TWNVOE1SS0RsUzlIZ2NZUTlBRnNmTVdB?=
 =?utf-8?B?VkxrN3p3RVlYOEZiYVpwS1g2aFprejBBYnoxRmNCU2k0Ukp6bnNqNFZLY1hy?=
 =?utf-8?B?VHRqMit0NjAxdGhUNUZuWEYyc3BzdEJlcURRV3pPVTlrbU85bnNMaUs5UVdT?=
 =?utf-8?B?Znh6OUpLeERWVWtBMXFvT1IzdUo1UHhSNnIwQWlmcXhiLzFaTHVndGw0ZkZr?=
 =?utf-8?B?eG1WL29waUg4dWlRSWxqSkNjekZvWlJqTnZJSGVBeFBEdWhlT1ZkTk1TZlBX?=
 =?utf-8?Q?dgQw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR12MB7982.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RnZVbnI3YWJRb1drZDJvNlk1MWpiMFM4WVUzaTZmdFZSWjV5bjREazcxaFd0?=
 =?utf-8?B?TXAvNjJaNFNhdXFCNmpnazd0TE9hSnRzRkd4elh6dUZNaDh5aDE0NVpsaUZX?=
 =?utf-8?B?b2pNSlduREFMOFV0dnV3anFiak9RcVhvZG0vblFFTEJZOUE0VFRnNThKbjBh?=
 =?utf-8?B?NElXcmZWQ1RXUkh0ZDlqazI0RzB6SFRTUE8wVzBnaVFKU1FRVnA4cDZ4OUNE?=
 =?utf-8?B?WmVGVk9valNTWkI0ZWhWTk5QMTJOT3BGbmUrdC9sSDBxZlFGM2Y1a3huQlBC?=
 =?utf-8?B?RGhSMTBWVWRwTzFOcmJBTWlReG8zMWhqMjRyZzVyaTBVWGdROTc5U1RzZmZr?=
 =?utf-8?B?QmVNemVMeENOVWlRaUl4VjdIeVhTWlJOSTNZNk9wM2N2dGp1TW1sRUJGQ1ZE?=
 =?utf-8?B?Q2RiTDh1ZUxhSExVYUM4SmIwWFpEWHVMeTBTcXpuR3N0cmo5L2xtdnN1ZWF0?=
 =?utf-8?B?MDVHSy9xZTVTSE05bDZMZVpVc3JyN1J0aW5zbUNjam81UEpaOS9rT09XY2Qv?=
 =?utf-8?B?T2o2c1dNOW1yY1JrZTVjNWJNOWU3Sm1yZytmcUV0SlM1UFBkTFFRSmM5cXBy?=
 =?utf-8?B?eE8xTllZcUF5RzFOUjFCcE51ZTVwelQrSU9MK0RseDhtdlZiTGMvdndSQS9I?=
 =?utf-8?B?bGZLeW50RmVoTXB4ZlhURGlIWFNQMjBPaTRuU0RObmRWRTdRblRZSUJFOTda?=
 =?utf-8?B?ZnpqTDZ0YklMdEx3ODAwblJISjZFSG1lUFY4a0tneGVGQXA0Qm9GL1RQdy94?=
 =?utf-8?B?NndXNWk4ZFZFazlFTEJleTdkU2orTUozb1RuUUtVVjVYT3E3aXM2Tmdpa0RY?=
 =?utf-8?B?MDNtYzdLTDBxYUN0c1RzQjB6TTIxTmNQM0llRVVtWTJVeUtWSTNIQjFPZFh2?=
 =?utf-8?B?WVdSejZnajZzeDYvN1hzQU5maERHTDVmcUJzUTNzNE4ra01lMGN1alByN2FN?=
 =?utf-8?B?cVJrNmVYMGtJK1ZEK0trWFc0Tmg0M2Z3YlZ5QU52QThheUxuVU1pdmYzQ2Nl?=
 =?utf-8?B?OGJad1lpUnFxcXg0WlovYVZZLytkdmpvV3JtV0JoTGFKWUhVcmtVT3BtdDdp?=
 =?utf-8?B?ZktCbUlpZjNzTGlpNUJjYjJ6cHhjZklZUDQ5eDJhUXNwMHR1UExIeU43eENK?=
 =?utf-8?B?V3JUdXRUVGpRSVlQejVaRFFXQVZZNWtSNC84Vm9TTzdUZEF0MStVaUZWdVZt?=
 =?utf-8?B?VUdXMlU3MEpUOEgrcnNYc0NoUXBLRnFXejRwdHdDbXorbmZxdHlvM05RRjh3?=
 =?utf-8?B?L2xRa1JSeUphYjlpRWxvQzF2WDZwQnZKaDZJMHMyZlA2a0p4Q1BCR0R2V1hB?=
 =?utf-8?B?cERYSkQ3b095WFNucExyWjVLNmlBRHpZS3pZbnBpUHRCeGIzNlRDTHdJMWd1?=
 =?utf-8?B?RmQyUXhRWjNSbzhmcVJkR0NhcU42amZpNWM4Z2g1aSs5ZFZ2MmdZaWtGNHRS?=
 =?utf-8?B?S08xWUF5MVB6eWM3ZFVPbGo1Tm9ZOEhwMUZnTVd4SHRFSXptYmJ5aFVTNS9L?=
 =?utf-8?B?OWxGWnFaVkZhakVESm1TbjhlZWhZc2diLzlUK1FYV2RwTmFiZm5SNHpVcjFV?=
 =?utf-8?B?b2ZaaTZJRGhsa2N2Ykh0WWJZNmNiTXF1cWdNMytDR2p5VW1XcnoydE9JYjNs?=
 =?utf-8?B?Rm1aTzlJMmJtS012NzFCd0dDaC9oNElOMXU2STZhazNnWUxjUEJ5YTVya0tP?=
 =?utf-8?B?b0Y0T3FJSW1PTEx6MWhwNXlFOXZ1eVJ1c0lmVUdKS3RQMUpQQTlEMGxiWnRO?=
 =?utf-8?B?R09QZWp3TFFHTHkvNWtMUFFsZ2RCaThYOC9VTkRCdXI3RWRDV1MzR2tLWXJR?=
 =?utf-8?B?WC91Wm5nZGRHVnJFc0dCWEZCOUliWUJibjZXTCtSQW1iSFdYMEZ1YUV6QWpG?=
 =?utf-8?B?UFRsZUNqc2x6MmtlK2dWRVJsNjg2OG9OdjNSVUUyb3RhblB0TURIc3ZrY0g3?=
 =?utf-8?B?Z3dWQUhkMVE4b0JCMWtudVB0a2lVN0lzTU5pUjVyUG10ckNla1dTN1ZOY2pP?=
 =?utf-8?B?aFJiY09WYkZTVnYwWUlBSVFrN0dQYUFNSGpKbHNyYjlVSXFaeCszTThXa25U?=
 =?utf-8?B?RWVwK0pPWHVsQ2xwcXJxUkRpbm5Fb0txS1V0ME5LckJCbHFEYWNyU3RZVEZX?=
 =?utf-8?B?ZGdOYkZmNmZmK0VVZkM5ZHYzSForZ1pFemtKTWJySkRyeGxPVlNJeDJ0NWNi?=
 =?utf-8?B?ZzIxWTdNRGNKbCtjY1NrZ3h6UmNocEtjTStiamlNOTdtdnFuU1BNc0VnODhO?=
 =?utf-8?B?ZjJYVU9pSmVDaFdKa01jN1Y4QW9vUkN2Qi9pSDJYUjFZYXNINVlqQXVSZ3Yx?=
 =?utf-8?B?ci9wcGhycDNIK2pLNUNqaTNqL1pwdk9vZGpydE5zeERmREkxbElJQT09?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b0c662f1-bf72-414e-3f2a-08de5aca1edf
X-MS-Exchange-CrossTenant-AuthSource: PH0PR12MB7982.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2026 21:55:28.2251 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BJFoW04alynK+zLlM+w/mSRmt6TLNDQ1KHaZIU5fAE0mx2MM0wQcgnJ5eOTvDlX2C/41E6wAKu4XGeXrWh3L/w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR12MB4275
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Rm5qeHD50KBz1PhpfOHxVD8vznqkHvTPz8JBSOYnlno=;
 b=XAdtkJcpyTokYeN0bDNjfSMkxj4LbTfVLaMh9wQeAGXzpwOA3PaXeN7tu8+H3BpidPwjbBf0b7PuAbU0GvJkpyoPDSKldgmPPz6NdiPihJuhqM+ZVIn4c6PkKdzoPS52pwbFAW+q/fHILiqPPNQ1OnkFKQ5SIusdGFtBF+3tn7M=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amd.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amd.com header.i=@amd.com header.a=rsa-sha256
 header.s=selector1 header.b=XAdtkJcp
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Subject: Re: [Intel-wired-lan] [iwl-net PATCH] idpf: change IRQ naming to
 match netdev and ethtool queue numbering
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
X-Spamd-Result: default: False [3.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:brianvv@google.com,m:brianvv.kernel@gmail.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:decot@google.com,m:boolli@google.com,m:anjali.singhai@intel.com,m:sridhar.samudrala@intel.com,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:emil.s.tantilov@intel.com,m:brianvvkernel@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[bcreeley@amd.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FREEMAIL_TO(0.00)[google.com,gmail.com,intel.com,davemloft.net,kernel.org,redhat.com,lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:mid,amd.com:email,osuosl.org:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[bcreeley@amd.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.992];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 1795B7AFF3
X-Rspamd-Action: no action



On 1/23/2026 12:40 PM, Brian Vazquez wrote:
> Caution: This message originated from an External Source. Use proper caution when opening attachments, clicking links, or responding.
>
>
> The code uses the vidx for the IRQ name but that doesn't match ethtool
> reporting or netdev naming, this makes it hard to tune the device and
> associate queues with IRQs. Sequentially requesting irqs starting from
> '0' makes the output consistent.
>
> Before:
>
> ethtool -L eth1 tx 1 combined 3
>
> grep . /proc/irq/*/*idpf*/../smp_affinity_list
> /proc/irq/67/idpf-Mailbox-0/../smp_affinity_list:0-55,112-167
> /proc/irq/68/idpf-eth1-TxRx-1/../smp_affinity_list:0
> /proc/irq/70/idpf-eth1-TxRx-3/../smp_affinity_list:1
> /proc/irq/71/idpf-eth1-TxRx-4/../smp_affinity_list:2
> /proc/irq/72/idpf-eth1-Tx-5/../smp_affinity_list:3
>
> ethtool -S eth1 | grep -v ': 0'
> NIC statistics:
>       tx_q-0_pkts: 1002
>       tx_q-1_pkts: 2679
>       tx_q-2_pkts: 1113
>       tx_q-3_pkts: 1192 <----- tx_q-3 vs idpf-eth1-Tx-5
>       rx_q-0_pkts: 1143
>       rx_q-1_pkts: 3172
>       rx_q-2_pkts: 1074
>
> After:
>
> ethtool -L eth1 tx 1 combined 3
>
> grep . /proc/irq/*/*idpf*/../smp_affinity_list
>
> /proc/irq/67/idpf-Mailbox-0/../smp_affinity_list:0-55,112-167
> /proc/irq/68/idpf-eth1-TxRx-0/../smp_affinity_list:0
> /proc/irq/70/idpf-eth1-TxRx-1/../smp_affinity_list:1
> /proc/irq/71/idpf-eth1-TxRx-2/../smp_affinity_list:2
> /proc/irq/72/idpf-eth1-Tx-3/../smp_affinity_list:3
>
> ethtool -S eth1 | grep -v ': 0'
> NIC statistics:
>       tx_q-0_pkts: 118
>       tx_q-1_pkts: 134
>       tx_q-2_pkts: 228
>       tx_q-3_pkts: 138 <--- tx_q-3 matches idpf-eth1-Tx-3
>       rx_q-0_pkts: 111
>       rx_q-1_pkts: 366
>       rx_q-2_pkts: 120
>
> Signed-off-by: Brian Vazquez <brianvv@google.com>
> ---
>   drivers/net/ethernet/intel/idpf/idpf_txrx.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> index c2a1fe3c79ec..c1f8dfc570ce 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> @@ -4093,7 +4093,7 @@ static int idpf_vport_intr_req_irq(struct idpf_vport *vport,
>                          continue;
>
>                  name = kasprintf(GFP_KERNEL, "%s-%s-%s-%d", drv_name, if_name,
> -                                vec_name, vidx);
> +                                vec_name, vector);

I can see how this was confused by reading the surrounding code. The 
vidx variable name is quite confusing, but that already exists.

Other than the above comment, the change LGTM.

Reviewed-by: Brett Creeley <brett.creeley@amd.com>

>
>                  err = request_irq(irq_num, idpf_vport_intr_clean_queues, 0,
>                                    name, q_vector);
> --
> 2.52.0.457.g6b5491de43-goog
>
>

