Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D8D77B193DA
	for <lists+intel-wired-lan@lfdr.de>; Sun,  3 Aug 2025 13:24:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2F74E8084B;
	Sun,  3 Aug 2025 11:24:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6YOrqgqRls7L; Sun,  3 Aug 2025 11:24:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4909480850
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754220284;
	bh=obDwmYdazosW5jaSUPr2sRKkb2fQ5d3qZnUmstQnJFc=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1AeEhkQNelLM23IvIJ5wGR7XZSh4Pp96nfag7j0iqFz3HQwF9y4iNTXPwYamnA56w
	 XodOp+QQ/hOVy+HXVYevK1CrQoO752He7VvFEH2RT3Iz34aNum/+GQOfxIgtPilJzM
	 Rp8lO/ARyEKi/nGogCZ8DgNcmQI4XkQ6aIfUC50lL2V5yrPH54HGXdnhxNaNxszYnP
	 p2HM3JP60uMKGyZhuMzu0jI1O1juCBs6mmjjR932mNpWOriitXxuZP90Q6XA6ueoUw
	 CrZw1DaWr0Kh7ZHRzS5nn53QamAzdKooj8y54poeRPR3QNxW5eeXO9iOp0HhK9KYqm
	 q3bIch7pQvbEg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4909480850;
	Sun,  3 Aug 2025 11:24:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 433F21A2
 for <intel-wired-lan@lists.osuosl.org>; Sun,  3 Aug 2025 11:24:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1D1D94037E
 for <intel-wired-lan@lists.osuosl.org>; Sun,  3 Aug 2025 11:24:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id soUSr6Qfjte7 for <intel-wired-lan@lists.osuosl.org>;
 Sun,  3 Aug 2025 11:24:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.94.82;
 helo=nam10-mw2-obe.outbound.protection.outlook.com;
 envelope-from=cjubran@nvidia.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 17A86401C8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 17A86401C8
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10on2082.outbound.protection.outlook.com [40.107.94.82])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 17A86401C8
 for <intel-wired-lan@lists.osuosl.org>; Sun,  3 Aug 2025 11:24:41 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GXZ7Y2dRkdxqnMLW8mQxDMLbFa0fRIePDnuxrr6GM32rX3uuxDtSsNlm5Z/70S4LgR5kYi9oxuQf4I3UQEx2ounKpQ/bJkcmULF/Fp2HFUdMul0J4rybaFdgLmnGgJ3TO/1jKCPgggdZkLCTW9sNeUVXrALaPI5nbYHyeE1AYsxahV6TspXpez+aRxOraEgsUQkxW5IxlsEBZIN9D2VxAhCe62sRHePpghlNkXxaMrBNn//B4Y3jaExSbQ031yYhsDEjM3JcR1FuWSCBqzCFEkLdkkgvmerRZIiBgXv98nHkYVVKbDc6PgZ1SYUn9KjHjybTnPL1QK9xgJE6paUvdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=obDwmYdazosW5jaSUPr2sRKkb2fQ5d3qZnUmstQnJFc=;
 b=kXAAQmrkXa8o9XFuC6yvFdRM4/QcJdhDOaWzGPn1vJQjM0Fcbz+P2F8sx+S0b35f3DhM6tw5DDfVkN552xfds6LV19TofmGYa18/m40l/pgNMYwYYt+ZOJK+qqOWmgggsyTXhs4wF6Vx2qAM+jNu5yJ03e41dQ2eWAi3BYPNqx/Kj5BcF6T2iVCFZQdShIJA2JsQ0mXZHcivQEew2KmjQ5xmrzb7cSxvlB2goTzAxL7tfEkKcdioiqC4aKVxTeM/xOy/LjtoCkTKXpJWbczeXV+laGt+WKYiVwXXiz7+smHTPp+efYrwGXpN56lJzPXee0mPfHyBt2ytz0bQnif7xw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from MW4PR12MB7141.namprd12.prod.outlook.com (2603:10b6:303:213::20)
 by PH7PR12MB8593.namprd12.prod.outlook.com (2603:10b6:510:1b1::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.24; Sun, 3 Aug
 2025 11:24:38 +0000
Received: from MW4PR12MB7141.namprd12.prod.outlook.com
 ([fe80::932c:7607:9eaa:b1f2]) by MW4PR12MB7141.namprd12.prod.outlook.com
 ([fe80::932c:7607:9eaa:b1f2%5]) with mapi id 15.20.8989.013; Sun, 3 Aug 2025
 11:24:38 +0000
Message-ID: <d3bb8295-bb4f-4817-a2dd-017332c489d4@nvidia.com>
Date: Sun, 3 Aug 2025 14:24:30 +0300
User-Agent: Mozilla Thunderbird
To: Vadim Fedorenko <vadfed@meta.com>, Andrew Lunn <andrew@lunn.ch>,
 Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Tariq Toukan <tariqt@nvidia.com>,
 Gal Pressman <gal@nvidia.com>, intel-wired-lan@lists.osuosl.org,
 Donald Hunter <donald.hunter@gmail.com>, Jakub Kicinski <kuba@kernel.org>
Cc: Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 netdev@vger.kernel.org, Vadim Fedorenko <vadim.fedorenko@linux.dev>
References: <20250802063024.2423022-1-vadfed@meta.com>
Content-Language: en-US
From: Carolina Jubran <cjubran@nvidia.com>
In-Reply-To: <20250802063024.2423022-1-vadfed@meta.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: TL2P290CA0004.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::13) To MW4PR12MB7141.namprd12.prod.outlook.com
 (2603:10b6:303:213::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR12MB7141:EE_|PH7PR12MB8593:EE_
X-MS-Office365-Filtering-Correlation-Id: 164db1c2-833e-4948-fd4c-08ddd2805519
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|7416014|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TmsvVzNtU2lHR3J5K2ZmWUJHeG5qVllGcnZiK1VTMUVvTDg4RTJUMlhQUWVO?=
 =?utf-8?B?TmMweTgyOTduQ1F0a3lKU0NBWDB1bDA1b21xaWVnaG1QNk8zdFM4NEtlUkZH?=
 =?utf-8?B?RTViY0dydWl3YXJKQk12bzdLNDgzT2R6RUw1K01Cb2FoSTg1bG5COTFzZFE1?=
 =?utf-8?B?aXVUQ2YzRWM4VXVsa0J3ODNiZjRhUWZUUU9yejh0N0w4NG84Yy9qZmU5R25h?=
 =?utf-8?B?dllsUnBWUDhqbC9PdnNIT0lycTBYN3A3Q3RyOGxHT3B2VWVHRGJXT0s4QmZS?=
 =?utf-8?B?MU5aQW4vVThaZVorVERWOEJSczZ1dlU4aXRhTkttVkxiU2pJdmpjUmU3NE1k?=
 =?utf-8?B?dHRBczBTdW1UeVc3UTNDVm5NbEtEc2dyMUFyN0lVTXIreE9FMnMwNmdVMlRR?=
 =?utf-8?B?Y0xkQmdlOUZPZGcxYjlndm12MGY0QUM1SkR3UVM0bFA5Yk94KytyRVliQzhO?=
 =?utf-8?B?MytEckdKQmJTSmZCT0c1UGZURHRhd2xOaDdreUk5U0paZWo1cGlvWVJKUlVR?=
 =?utf-8?B?cXhzSjkyV2E4dSt0RVFiNHhQYmtpSnJUbER4YzlPYkw4SGlQMmhVd1FjcSt5?=
 =?utf-8?B?QjBPRzJPdDcwRThMUDd4VDlIU3N6MzIxdE51VVo4YzdQdmtqcFB6SmVhR2Er?=
 =?utf-8?B?ZVRDekNYd0tnZCtORkVOcGZJVmtydU5MNFZ4MXVTZVV5ejkvUEc5dHZ5dnpE?=
 =?utf-8?B?eVk5YXR1UGZTSzdaN2JUMjNIOXMyQis4aHIzTko2TlR0bDE2bTVKTEZ6T0dH?=
 =?utf-8?B?aHBDT1psMVp4OHB5Q0djdktzZENSRm5UK2xKb2V1Z3lwdUIzRmJnWVdPa0Vn?=
 =?utf-8?B?aGdNdkZyYlJWMEI3RHJFV0ZQVzNDUmxGTytBc0hXYTErdWpMVjdRN2ZJTCtJ?=
 =?utf-8?B?VUdmVUVPR293OWZTOW1UdkdRSHZxZUIxUmVlUkI4ZVdaaFQrSFlteTA3TVky?=
 =?utf-8?B?TVdTZWROWElPWEVmdzZXSXlZNGN6eDQ1aExiYkhJUlVkNm1PdmF3ak1yZzVx?=
 =?utf-8?B?THZLZWlJcjhWNm9McFllWlFBVmhCMlpNdHRNbGVBZmZzL2NpYk0zUUJvY0ww?=
 =?utf-8?B?aDV5ckJvckpwUm52Vno4aU1TREV4eGhKOFA2c0c1TnBReHdHOXY0QytnTmtR?=
 =?utf-8?B?Y1AvdWJ5Y21BcmVEZ0hQamJnMkIwRFBrRTZoNURiRUpNY0xCMndxeTFQcm9y?=
 =?utf-8?B?RXVFZ3N3UTFIa091bEV4NDdtNExJT1YxdGdJS2NnMmI1TnhjRTJmQ1BDS3dS?=
 =?utf-8?B?eGhtUFBzUW1KQU5VRGRXM0dIN2ltUlZsOXhrUEg0b1l1c2c5TGtBcG9ZMzVC?=
 =?utf-8?B?UWVRYmMxRHVNNVFUdm9qY2JaaUNUUlpKRTl0NStBZFBxTnpYM041YUJ5SUc1?=
 =?utf-8?B?RC9IejJ3RzV4dXgwcGhMOWRVbE9nU0JKYmYxU0xBcXdIeE55enJMUWJLMVBr?=
 =?utf-8?B?RURidjFGMjJYM3hDZGppajJqdWNvVkw4ZlZvajNYa0REWWtRaHQzV0JqbU5Y?=
 =?utf-8?B?eU8ySm5GMG83WnFSb1NPampVajZ0Qi81R1BDNFcvM0NDdHcxcmhxdU9yUURl?=
 =?utf-8?B?aU40QjJLWkxDRkhqaUtiM2FNcXVxVVJ3djVSSVh4TmNUU2hpL1NXdGZTK0RP?=
 =?utf-8?B?Z1JPbG8xRy81M0Q3eFdady9YS3A0dEVkL01BUXZ0WVRmb3hYbC9UcGdhWEJE?=
 =?utf-8?B?Z0JaSXF4T2o1M0hKaVNhSGVraHd0SFZRcVdNYzNndi8vd3dhNlM1MURiMkdo?=
 =?utf-8?B?RnpnY08zWmtYS1gzWWh3STVjamxOUFU2SFlDelRxcktabjd4MW4zSzc2ZHdT?=
 =?utf-8?B?ZW45U0t2T3pHb2NQdlE3T3ZNVmRRTUlQeDQ4M2ZKekJua0JOcDFWYWVhMHQr?=
 =?utf-8?B?eFpvNHM5bm0wQkg3MURjWVppUWViR282QXl5ejM0NE5IMFlIcDhQMlRRK1ha?=
 =?utf-8?Q?5um3QZFHyT8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR12MB7141.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dDgxc3NxdUhRbEVVUEFZK2dvOWFpSkJMMVZTdnRpbURMUmtnallTaDU3Mlds?=
 =?utf-8?B?Q1liRjVpS3k2M1NjekV2MExqNDVxcXZrd04zdTVBUWl0UFZTMitvendrcFlW?=
 =?utf-8?B?L1BpMzR5UVBwZ1N2QUZ3cjdEbWtxSkNPYTFDcHFMclVXZG9DREk4ejhyZnJu?=
 =?utf-8?B?ZUxscEI1RnNTQWo4M014cXdBTUFlamhOSUJjN2dDSnBqT3ljaUNkVitTY0gw?=
 =?utf-8?B?SzBkUk5hVFlmUlRaK1duNEltSFM0d2F6NnF0REYza2htR3hPbkhtL2s4bHU3?=
 =?utf-8?B?c1MxODkyZkcvNEd6RjRGaE5NWkVCbkUvVm9rMGVqVXpsc2xiM3BYKzBGcEVu?=
 =?utf-8?B?UUVRblE0RkRoaUZvYXI0M0dTK2Y3Z25wcUhQMzdRZWc2akJGTjVoRUxVRzd0?=
 =?utf-8?B?dVBMeWpxcWk1L3UvSk13bklielNPT0lQYW01aW81OXozN3hpc0ExeGptWndU?=
 =?utf-8?B?ckdWT0V2NTRKaTFUNlVWOTlDTlhlTVFadWhhSElJcUhSelFzby92a3RtNHlr?=
 =?utf-8?B?SmlSS3g2TUdkNE91L2pQSitBMGtjaVdyQTdyc1NTTmd2S3h6YUMxaUhkTmdj?=
 =?utf-8?B?b2hMMS9vbzlYdi9lMjcyZHFyb052cG9ORWRGMTY1c3J4SE9oZnJLcWRqbDlN?=
 =?utf-8?B?YWpHcWo0Q0NXbm04SllQc2JjWXlKa3FGN1d4bmlVQ21RR1p0ZVBmMklOY2dT?=
 =?utf-8?B?ZEo1WDl5YlBreFFLZkVlZk9hM3YwaEEzbHdOUTdQTVpVRUNBM3VJMHVkQ2gz?=
 =?utf-8?B?WUJzSThCcFNiTFl5V2IvbUhvRTFoMyswQm5ENTI1bTY4c1YxMnE0Y1RHSU5E?=
 =?utf-8?B?Kzd0aFBBNUdCWFlvdUs5eVcwU0dmY2ZpeWd2Zy91UTk4MVZzV2FNd2oyVWJi?=
 =?utf-8?B?YkZ4Y0dpNCtOTWcvRjFMRzFOdnI3YlVsOWtHa25hYmtaZFhBYmJJWXpXYndr?=
 =?utf-8?B?SjZUMVpBeU5hUEVsWU1pMmJIN0JBS2I0Q1dKdzlZc0NRTlhYblpTVzJaa2s3?=
 =?utf-8?B?UU9OSWN5NkdieUt6T3NnNkg1NjdmWTIwMG1uVlhSMUZua0I5MW5CVUl0UkZM?=
 =?utf-8?B?OFVHWWI5Y1JyUjRZMkZnWHVlUSt4cThwK2VXbHA3eTdDUCtMWnpuRXorL3I1?=
 =?utf-8?B?SUN5UnZDdS96QlJiLzArY3RFaDNLWnpaU0FHbENPV2tHVjhTRTg3OCt2VTE1?=
 =?utf-8?B?Z1laV1FlSXNvSjF0bVk4c3J3YUZCcjVqeXdzeWU2MnZTTnZJVFNRcG9lSk9K?=
 =?utf-8?B?ZUFIVndDSUk5dFdkb3FXcWZTUHFWWTVrMXl5V1dZMHdNMlNPMFhjREtyWlg4?=
 =?utf-8?B?T21ONGQxTW1ESUpOU2hSTDhNWlhUK3ExTTcxOVk5NjVRbjBkRExTc1JhS05I?=
 =?utf-8?B?NTVCTzdLbUlEOHhzLzJOZlFCM0NzenBlZGVEdWl6RE03MmRiclF1TlF4WTlQ?=
 =?utf-8?B?ZFhpdVVySlhVWlJtWUhYUHJ5MXdDMHhrWUxSYVZJQWpDUFNzK2dlV0JubldK?=
 =?utf-8?B?RURYZS9acXdRYVdwZ3pHT2dLeU1CeUczY2ZZMzRwaXlpQWtoSmZOaWVxNU9v?=
 =?utf-8?B?NFJORC83THNNZFdxN0NkZzVxUVFYUGFpbzhwOW4zZ2tObHM3bE5MSTgraHdn?=
 =?utf-8?B?UkJKQTYwV00vWVhuL3N2Z3BGejlWbGtOaElOS2RLNXUzM2VUb1dCYzVTUWZj?=
 =?utf-8?B?SjRucDRRSzNTZlQxa09FL21EVGpqK1ZOQjFsZ3lLUVgzc3pwRFNGYWxPUGlr?=
 =?utf-8?B?eDBJRWFLY2xrbUNXcURnbm5pcmFjVDZpc1hGQ0hrTlBVaGgwMisydjViTktq?=
 =?utf-8?B?SkF5VitSOFovTzVGZS9ZeXlWMW4zUWdUZXVncFhGb3ZXdC91aElrSVRVbFhQ?=
 =?utf-8?B?NlNDZWVrVkJkTklFYW85ajJVVXVlcllmcmhja0F2dTA0ZE5MNXJOdDd3ZVFo?=
 =?utf-8?B?R3VOM21zZGY5bVVCOTdVWWt0OHJHOUlTeTVnSWxDemdUV2tQZW5yVkNkd3Bt?=
 =?utf-8?B?RWpmWGxmTTJXa2xCTzBKdkR2dXdhTU5CUndIZXo2UVlhZFp0NUp1UENrQ01F?=
 =?utf-8?B?YTFUU3NnSGs2dTJGN1ZNVjl6dzJURis1TEs4UTJkUjRrRVNsSGhIb1JEWVBl?=
 =?utf-8?Q?gVQN1L/EsOghlGvKq/WGBJp68?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 164db1c2-833e-4948-fd4c-08ddd2805519
X-MS-Exchange-CrossTenant-AuthSource: MW4PR12MB7141.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Aug 2025 11:24:38.5089 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BqtdkPGBD9W7FnEWEmGvxAb4UofcsuEGzcJVCCEBppdq61UdRBLuAxXSehf9Z+mne/giaG3GqfXfJv/ZnTV4Mg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB8593
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=obDwmYdazosW5jaSUPr2sRKkb2fQ5d3qZnUmstQnJFc=;
 b=kA1aC5WLBERMFLvqozkrQjB0i6ZG5bs581rTU/+jIuEaGFMFk0Qukc532UFmvUgdyVtR+IXQS0aibm7SGey4lut4rdjUIzFSiQE7HZ/NlYqFQn3Qyb65lly85eaVmlsv+aGr90jSvlxQDbA+ZEg6SAhh5Dt9bZ+7gA0wY7Mmi0ECs8eGj12u9lskSa7hGdGwZwGvA09m/xqlPYExGtdtRk63IwIIcGLQ5GpIBY0gsjDrZSOQI/PPQ2XZtOJwsbAzfDn7eQcHiQ3xBbQkWYPFHMBXI0O7xvkd7UewmbENJsvd3BXi2wT+m1DLtiCDaiXFRPIPYGAC7FNmtdFmSZlHNw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=nvidia.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=kA1aC5WL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Subject: Re: [Intel-wired-lan] [RFC PATCH v3] ethtool: add FEC bins
 histogramm report
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



On 02/08/2025 9:30, Vadim Fedorenko wrote:
> diff --git a/Documentation/networking/ethtool-netlink.rst b/Documentation/networking/ethtool-netlink.rst
> index ab20c644af248..b270886c5f5d5 100644
> --- a/Documentation/networking/ethtool-netlink.rst
> +++ b/Documentation/networking/ethtool-netlink.rst
> @@ -1541,6 +1541,11 @@ Drivers fill in the statistics in the following structure:
>   .. kernel-doc:: include/linux/ethtool.h
>       :identifiers: ethtool_fec_stats
>   
> +Statistics may have FEC bins histogram attribute ``ETHTOOL_A_FEC_STAT_HIST``
> +as defined in IEEE 802.3ck-2022 and 802.3df-2024. Nested attributes will have
> +the range of FEC errors in the bin (inclusive) and the amount of error events
> +in the bin.
> +

Maybe worth mentioning per-lane histograms here.

>   FEC_SET
>   =======
>     
> diff --git a/drivers/net/netdevsim/ethtool.c b/drivers/net/netdevsim/ethtool.c
> index f631d90c428ac..1dc9a6c126b24 100644
> --- a/drivers/net/netdevsim/ethtool.c
> +++ b/drivers/net/netdevsim/ethtool.c
> @@ -164,12 +164,29 @@ nsim_set_fecparam(struct net_device *dev, struct ethtool_fecparam *fecparam)
>   	ns->ethtool.fec.active_fec = 1 << (fls(fec) - 1);
>   	return 0;
>   }
> +static const struct ethtool_fec_hist_range netdevsim_fec_ranges[] = {
> +	{ 0, 0},
> +	{ 1, 3},
> +	{ 4, 7},
> +	{ 0, 0}
> +};
>

Following up on the discussion from v1, I agree with Gal's concern about 
pushing array management into the driver. It adds complexity especially 
when ranges depend on FEC mode.

The approach Andrew suggested makes sense to me. A simple helper to add 
a bin would support both static and dynamic cases.

>   static void
> -nsim_get_fec_stats(struct net_device *dev, struct ethtool_fec_stats *fec_stats)
> +nsim_get_fec_stats(struct net_device *dev, struct ethtool_fec_stats *fec_stats,
> +		   const struct ethtool_fec_hist_range **ranges)
>   {
> +	*ranges = netdevsim_fec_ranges;
> +
>   	fec_stats->corrected_blocks.total = 123;
>   	fec_stats->uncorrectable_blocks.total = 4;
> +
> +	fec_stats->hist[0].bin_value = 345;

bin_value is 345 but the per-lane sum is 445.

> +	fec_stats->hist[1].bin_value = 12;
> +	fec_stats->hist[2].bin_value = 2;
> +	fec_stats->hist[0].bin_value_per_lane[0] = 125;
> +	fec_stats->hist[0].bin_value_per_lane[1] = 120;
> +	fec_stats->hist[0].bin_value_per_lane[2] = 100;
> +	fec_stats->hist[0].bin_value_per_lane[3] = 100;
>   }
>   
> +static int fec_put_hist(struct sk_buff *skb, const struct fec_stat_hist *hist,
> +			const struct ethtool_fec_hist_range *ranges)
> +{
> +	struct nlattr *nest;
> +	int i, j;
> +
> +	if (!ranges)
> +		return 0;
> +
> +	for (i = 0; i < ETHTOOL_FEC_HIST_MAX; i++) {
> +		if (i && !ranges[i].low && !ranges[i].high)
> +			break;
> +
> +		nest = nla_nest_start(skb, ETHTOOL_A_FEC_STAT_HIST);
> +		if (!nest)
> +			return -EMSGSIZE;
> +
> +		if (nla_put_u32(skb, ETHTOOL_A_FEC_HIST_BIN_LOW,
> +				 ranges[i].low) ||
> +		    nla_put_u32(skb, ETHTOOL_A_FEC_HIST_BIN_HIGH,
> +				 ranges[i].high) ||
> +		    nla_put_uint(skb, ETHTOOL_A_FEC_HIST_BIN_VAL,
> +			         hist[i].bin_value))

Should skip bins where hist[i].bin_value isn’t set.


Thanks,
Carolina
