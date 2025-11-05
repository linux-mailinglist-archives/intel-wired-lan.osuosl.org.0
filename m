Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 62C32C351AE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 05 Nov 2025 11:31:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E116F612AE;
	Wed,  5 Nov 2025 10:31:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SdF0iEDlOoQr; Wed,  5 Nov 2025 10:31:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5A686612B6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762338690;
	bh=PzRS7DDMvjhbhXpVn23TIoZN+LBVkxNWXbV9PLOz0eo=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wpF4kWaEe9L/SbdvO206GbgMELaAkaagrHG7seAMlhAqS9plOa4TDjkkzH5ST51C2
	 4nvpiS7cxCH7qWB18bpqUZ5V/5572JKmlexzHmBCHy5uPvNsruEV/mMvVbK6KUd5Q0
	 LMqVmGv9zJ3EYJesXK8Ah4Zw+31r/OIzrc6SIs1QfLM6aIVDXedgOBO0i2S3z1q3lm
	 l07SuG0/Y/lx+3pbW2oOvMdZpamuvxzoOllTVOtuQMv+LNRuUqJmjNVVPRuWJPpLlD
	 PNBESkL2ZB7mWwL8efg7NHp/CL70M+8iJt+0IgOyqCMv02upemFwSU+x99cRXtjvcY
	 TVQiwSXIqZTOw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5A686612B6;
	Wed,  5 Nov 2025 10:31:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2A678222
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 10:31:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1C0C340E8F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 10:31:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wly8ZM9zwU1q for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Nov 2025 10:31:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=205.220.177.32;
 helo=mx0b-00069f02.pphosted.com; envelope-from=alok.a.tiwari@oracle.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org EA5E440593
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EA5E440593
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com
 [205.220.177.32])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EA5E440593
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 10:31:27 +0000 (UTC)
Received: from pps.filterd (m0333520.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5A5A4Pvt009934;
 Wed, 5 Nov 2025 10:31:25 GMT
Received: from phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta01.appoci.oracle.com [138.1.114.2])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 4a84gng23b-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 05 Nov 2025 10:31:25 +0000 (GMT)
Received: from pps.filterd
 (phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 5A58OUeG005082; Wed, 5 Nov 2025 10:31:24 GMT
Received: from mw6pr02cu001.outbound.protection.outlook.com
 (mail-westus2azon11012010.outbound.protection.outlook.com [52.101.48.10])
 by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 4a58najc11-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 05 Nov 2025 10:31:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZUDf6wdFMdfK6Hrl/Kuo/wzEF3ehbiEWc7OnQ7B2HgCG+FK6u7eEAIUt78ZyRxG50Oxlk+YwlqUhNiQkrCcGQDAgQDerZyCE8vfTT82VF1PgudUVpFW6XkKeF/agL8IFxYcc4pYO3FpBmuw7De9fCsDBxEF9pTMv+qlKYRShds7pJI7PVnwl9+gEuMA7DGz5lR1Qlfi0Z26jBNtpNstRCOobnIOgFFZ/TU+Bw7LtXX2WFdLMU3tIDe9BcxdJYiXgKF0MSR5UR9D0HTwaSUFSl2wtm+g//3xBMKRKnX5QFQDLsTkCxL84SU2qlRxq7fJM3DY0vB4LvSe+/6JyApXwsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PzRS7DDMvjhbhXpVn23TIoZN+LBVkxNWXbV9PLOz0eo=;
 b=Qy0WfbUnAS1BsqGNQlo7VCwzQLUlUQ5nNdclYo8zrmDBtRqV5AX0OJaeECB4F9oMFS/Tu+e1lX0/yU5VK0l3BZ2tNZ4GRRUAgKnXDxS6nvnVaS+Md1AwD711gXF3yoejZPuG66nUKhKXWefoySdBymK03QqxSdxDQ0Z+51mKqn4fy7wYHYlcxAqqIKKFfk6FsPgSRzSIc05ILpimPb0Nt8u2mhG7O0VpP3zqyFEWPu/KujQD4/zWLEYqfAUoRRXxIfd9fHM/STdhsEhE7YPKJEvgzs6xmCJB/aOmM9GwmxBaRj1RqSMNzlxtcC6wtfk7rIaJh0vAzuiNnewJXQnk8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DS7PR10MB5328.namprd10.prod.outlook.com (2603:10b6:5:3a6::12)
 by MW4PR10MB5751.namprd10.prod.outlook.com (2603:10b6:303:18f::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.7; Wed, 5 Nov
 2025 10:31:20 +0000
Received: from DS7PR10MB5328.namprd10.prod.outlook.com
 ([fe80::ea13:c6c1:9956:b29c]) by DS7PR10MB5328.namprd10.prod.outlook.com
 ([fe80::ea13:c6c1:9956:b29c%6]) with mapi id 15.20.9253.017; Wed, 5 Nov 2025
 10:31:20 +0000
Message-ID: <32e5c0c5-5d20-4971-8c71-a6710188d0a7@oracle.com>
Date: Wed, 5 Nov 2025 16:01:16 +0530
User-Agent: Mozilla Thunderbird
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
References: <17e6c453-6c58-4b71-a4cd-237143d006cc@oracle.com>
 <IA3PR11MB8986639F23DAC6717D717160E5C5A@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Language: en-US
From: ALOK TIWARI <alok.a.tiwari@oracle.com>
In-Reply-To: <IA3PR11MB8986639F23DAC6717D717160E5C5A@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: LO2P265CA0440.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:e::20) To DS7PR10MB5328.namprd10.prod.outlook.com
 (2603:10b6:5:3a6::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5328:EE_|MW4PR10MB5751:EE_
X-MS-Office365-Filtering-Correlation-Id: 221997b4-acd4-493e-6cb4-08de1c5675fa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aUpLQWhpcGdmL1FyL0xYNmcySXFvNHNSWDgxdStLRjNYQU16REIxRmNCYi9t?=
 =?utf-8?B?QzBVbjZyMGVyUWxGUE1jVHljM0FYOTRBSjI5STVValYrSlY2dmRYRmZoTjhu?=
 =?utf-8?B?aHZuaEsxQ1FqcU5XbExsRW85RExMeXFVNC9WMXdaRG91eUFPRkhKWEtFR3o2?=
 =?utf-8?B?WTMyRUpnWG5Ic005RjBBajVSNkpNbHFWY0xibyswRUpQMmNUaHBmL3l2T2hO?=
 =?utf-8?B?OFZYZ3ovUTdqTkEwQlhFbDdoajFLbzdnZC9KWHYwR2xFaE5BeTZrOXZseUty?=
 =?utf-8?B?c2tBemVXamJRZktjZGhTVzVYNHU5YU9MMHowamZ3b0ZFVjUydWwxZ1NXNytr?=
 =?utf-8?B?MmtoSmd4aGs1N1hhdlprK2NyeDlOYytDZERhS2dMM2NoNjRLcFYxUmZNMVlW?=
 =?utf-8?B?UVlEUndza3ByM2k4N0RaeEFRM2FkdUxpaHBnOW51Vk1QR2hqaXU0UTNmc1Zr?=
 =?utf-8?B?RUJWTHk5OTRTQ0tYVXlWbEIyVktJV2xoUFlWc21YU2ZSR2hKaE5tUTBDV0JU?=
 =?utf-8?B?TUxCdTcreFY2ZW5DaHgrRVpHSnhGTHV5L1ljb3BnMllRNUtPaklYVnZ5dEt1?=
 =?utf-8?B?VlovS1JXcWpybHlIcVhQYUdZQUlsTGhUMW5tb21Wb2M2UCtvbi9OTVVpbENk?=
 =?utf-8?B?UzRyaFoyTGxNV2xWamFVLzlyaVN0NDZBSDNzY2lvNitHeVl3MUtDRGxpalp3?=
 =?utf-8?B?dnpIdytNNE9HQ1laQ2lBbjhTTldaaHBWMVk3THYvcU42TUpqeWhiYnM5eXFm?=
 =?utf-8?B?bGcxZXdTT0hTNDBqcU5pWVFpdVFvVXFkdS9aMnpIdE5WMWUydzRkWkVmRTFj?=
 =?utf-8?B?SThLYTFqM293dVlhcXQ2RDB5N01Yei9heS9Gc2FUMC95N3lZQTRPZERadGp1?=
 =?utf-8?B?dE1Wc1k0ckp2RWRlWnB2bEdSM2g0U2hTbFRvc2RqQVhPTzc2ZGlYeVk5Wnln?=
 =?utf-8?B?Z25UZElpMUtveFR1RGtrSC95SEU4TGJDM3IweFhIZ0tpdlcvamtVU1pRWXJi?=
 =?utf-8?B?UlpOTGdxRGI1SzB1UWlUOFI5U251c3BpRDJQYisvNk9Tc1dhLzQyMlE5NGRu?=
 =?utf-8?B?VjFvcHBMNWNrNmxWTFpvdE0vMk9XRzEzTDQybm9GOU1paFF1Z09Kc3NGTHUy?=
 =?utf-8?B?NVJ2ZzFvekQvcnJvQ05JdmxKRFdENFBwYnZ4ZnozeURNN3RsWTdDbytXYyt6?=
 =?utf-8?B?UGlwOTU5ZTVlUGZvWkVoeVZrM3pkQkhxQzc1Y2ZUZUoySzJYNjR6RGpFTlBJ?=
 =?utf-8?B?WTR4dk5WcDdrSE5CMnpwNGpzK3lFaG5KWlhZU3d1MzI2Mk5CQU1XNTBHQkZi?=
 =?utf-8?B?Zkp4aFQwUVUycFlBL2F1MDJTMnVJZVNMb0lVUGhFVXRrS0xMdjR2MHo0cnhM?=
 =?utf-8?B?SHJuNHJkT2dhc0NuelZSWU1lVG5yekhqcGZ2b1h2a09KSzdSWTdrZkIxWWww?=
 =?utf-8?B?cGFWeWU4dkZSMitYbTNickUrWWtUVFpQWEl4ZjdoUElBQjlSSkRKYStlK0th?=
 =?utf-8?B?R3lpREJiRUp6b2t6QjdiWG4xOHJoK3prV0FZZXd5alZUNEJzdzBEcVowTTEr?=
 =?utf-8?B?dW1CTTBNQnd6L2NiVUFNNlVhYmk3OVF1dU1UcUlrMWVjenZ1aWQreHdUZmx1?=
 =?utf-8?B?QWlkNWp6dU5yT3Vja0FpWVFzUW9DM2puN1FYekt1Q0lTQi9pclFTVG5tQmFG?=
 =?utf-8?B?M3FHRGZTMWlXNmkrTllUaDlHT1NtV3ludG1NL1VBbTJCOWtvcXdPR3FIdnF3?=
 =?utf-8?B?Mk9PQlQxU3VPMFl0aUd3enowOHcxc3NoOWtVaVg2dDFueUVsKy8xRW9LSDhu?=
 =?utf-8?B?VmNXZVNDOHRhZ2pBVnd5RVMrYU1zZlhQcHErMm44b2ttVWI4OW9JUTZrYWdR?=
 =?utf-8?B?SWhLTkxINWRTZzR2RWxranpoaWh3NGRwRkt0YkVSTW0xcnVzMkVIeEdTMEp3?=
 =?utf-8?Q?Lc9QfzP3HVNQNeCuTNiGICWJb1Kz1rHN?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR10MB5328.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UUYyLzFuenlRd0RqWHhLT2FXc1NHQ2ZyVWJZT2k3c1prQlNuSEpwZTBkVUkz?=
 =?utf-8?B?aHdlT1RCcjkwNXAzU21lOFMrb3NORG13RElzbEZyUjYzVk9HL3YvZkcyU29j?=
 =?utf-8?B?UG9adldwQno2YmIwcE9YRmhhUzJGSzJoTFVGS1MzVzBVSFdvd3NqRFRTSVNz?=
 =?utf-8?B?OXlzN1F2bGoxeDIvTHZTdWlGRUtUaWw4OUxnaTNqVUZvUXRKc0lDLytIa3ly?=
 =?utf-8?B?UWdxQVpFNklKbmRLaTBIUDNxeUVJZ2tKcC9QK0hxdkY1VFZpSExTRzZXWkhP?=
 =?utf-8?B?S29DQmJpYUNONWswdEZQMnBUMTVKQ0tjWHpDMmNvaFVmcTQ3c0NneUV5SFVy?=
 =?utf-8?B?RG5wTk5uOHQzcUlMNzJvbHU1Tlh4cmlzUzZqMUozV3dnNWw5THRjMFFEL0NH?=
 =?utf-8?B?NkFLcm80RGNxeUlIL0IyREFBaW1DcllmMlRHQk5DWmp5L2k2L2c0emVBaGV6?=
 =?utf-8?B?N0gvRC9JQ2lZYzNLQmVUbHJncEtwRkJkYi9UQUt3bnZEcHB5bDJPVkNGekZ5?=
 =?utf-8?B?ODlBc0JNbDlFU2ZNUnl2alZMWkcvdmdNYTVFdzIrMXVzSHJtUitWMnNRaldx?=
 =?utf-8?B?YTA4Rm1FZFBSNGdmVVRlNUN3SllQZldNeEsrUHk4V1RFZGFOREZvbExqRWp1?=
 =?utf-8?B?blpEY3U3N1JBYUZrTVErS2lhQmZWZEZkR3AyK1g3S09nektSN0pabHJtV1Rx?=
 =?utf-8?B?T3FUdWs3bmpVNnJWOW9ZKzZGNjlWN2ttNFdCZWZzOUlRdFVESGtySXFNWlRZ?=
 =?utf-8?B?UEZXYXJXTEZ4QU9tRVFPSXJsREJYZnUxZXNWVTc0WDBLdDJ4SWZnYlB3Mzlm?=
 =?utf-8?B?Zzk5Rk43TkRVd1pTZkQ2WkFnTjA2Sld2K3hMWWM4UUUzMHRUUU9MRHRGQU95?=
 =?utf-8?B?RmZFcHRWRjROTkZPOHNtWmhWMCs3NG4xeE5XWUZsQUVJZ3ZrdzdUUGdKMGIy?=
 =?utf-8?B?OTY3bVZKdy9lekl6cGoxV0JyVzJQdDVUMWhwVm1kNkt0VEEwbWIzNTA1UEpP?=
 =?utf-8?B?QzZnUVRqSkNLbFIvTjZmQXBoNU5DNDJxRUljUW4zRDVMSi9BakQrRFczdWJS?=
 =?utf-8?B?MXpRQTlONWl2V1hIOTZYWU9VbVJnV0IrZlVHQ1dqdGlaWFpWL2xyNDFROEsy?=
 =?utf-8?B?RWY2MERtS1A2dDhRL2ZwNGZ3KzVJZk5RK0JSNmdKQjc2aGhGSFJtdkZ5RDEv?=
 =?utf-8?B?NnVyczRvaTQvNlJkSWFkYVlPYW5YL1U2ZndCaVN2aTRxMTR0eDB2RFVFME9x?=
 =?utf-8?B?OVdBQW1UdVR4d2VjbTR6dWlTR2tINEcrS3F5L201QktSM1RkSkJhUHlRNU05?=
 =?utf-8?B?ejVjM1o1RlhVU0p3OFR4Mk9ZNVdZY05YVm5vK0JvVHN4dlVSOWxRWFYvT284?=
 =?utf-8?B?ZFRCT29Eajg2S2FoNjR6Z2srcmY5QW83alpxSC9Ec1FZelFoZ1VKOStVV29m?=
 =?utf-8?B?WXVwRlVCTEhZS2xmQmNMd3JBVklJMXlzdlNTZXFyODJMSWdBSkQ1em4reU5K?=
 =?utf-8?B?aFBVZGM2MGlRdGlhU0R4TXFJQjJaRkljMGd5MnNVeitMaTJLTFRMclNLMm9H?=
 =?utf-8?B?R2FIL3VJVzFuSVI3MDhpc3pvMkZ2TGpzaEloNHRHSk90emxWRGsyM3F5RDYr?=
 =?utf-8?B?RGtrQk8xd1JSNlMvc09vbi8vTzEzNTN0ejVGdVVsR3ZrelpEUTNtVDFrcTUy?=
 =?utf-8?B?OC9TeHpuckgwR1Q0RTZIOC9qTnRubnlQM3ZRZVJWdkpnSWJKTVNiTVpwMlRU?=
 =?utf-8?B?WVZ2RDg5L0czdkFySVVKbFllVVM5VU1ENE93T3NOWFVEdnMzUlVVcDJONC9j?=
 =?utf-8?B?YzNrdlRvdHB6aXBiUmYxdFg5K0ZYZUswUU1RSnRQN3pxdzRjQUQvU0JkRjNs?=
 =?utf-8?B?MmpoZ1AzM1ExQ3kvWFlVMXpaeGlPV3R6VmxtVk5yVW1EUy9ZRmFmQzRpaEps?=
 =?utf-8?B?WkRlT1BheG1kc0d1MWpsbFFhNHJWRGVrbTVzYTlmODhpNGpEUEFsdUw4Q0Qy?=
 =?utf-8?B?Ky9DWWNWTVllQTFkTTVaMnV1MUY2RTZPUDNOYVhlSWJzUWo0ZnZsakpvMFhS?=
 =?utf-8?B?R3V6Tzh1MXQyVEYzdlNPNFE1cFVDN25qaEVFWHZ3VDZFdkVmVldlM0tmcmZ6?=
 =?utf-8?B?ZmtvcXdIOVIzUHpnZ3luU0JhM0dPOHpmODJRYTBuNEI5ZWNwU0JOVE5oYWY0?=
 =?utf-8?B?aUE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: +xoReZnOYkVSj895mjOcU9kpykgFaebZypDIemIQ+HFe2nbKwNoyXa9hXSKJbr7qEATje+OchqXoUpw9az0I89NFX05Z+w9Z20Xjxsbm4eTwMUXuaO6lWFQIYb6OuKDphdNKIfE92nGP7nSd0BP/yZu5KwZETKXsky6Um8vpyEjHrCXI9vMdn4VQww5cxzKVitk70R2R7bouKO1PFxWW1o0SIcMEiwBoGGBEC7Ixq+x1seURt04U5qeKB7NZ38TO9HUZeW0LQmEV1cuTe0lJxRCZZ0q4LTm/fRPeS/uhzRE1ehiKmVh4/q7R0Dk8WYf2Zb/YwwjmRrqyrrvqQ76XYzvr1batJXYt1QIhFNX6Gr5MsZieISJl40CxfX67zxjoKjeZLFVoalZmI/wCa+NFCoAiQvwKnRisqq6gvP+rrcHUN0XRnNSIHtpWMPLvMu/kTXmVVKmNpjOR8u4JR4p6VF4jnGIeaH6qDZh5vDW4ZS0y3c1GU4gFodKrQgl8HzcYmxdGRlnrZ6RxW1TbRg3ibeI6xczPErwis24qf10sf9kXlba26klc2yUOGXbSnd0EFDe61unWx8uqpOxbb4Q9zUfRzHn72bC1Z7JEFVd+SqY=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 221997b4-acd4-493e-6cb4-08de1c5675fa
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5328.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2025 10:31:20.7215 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VnkJsmJNBVsmVP+w9qGJqQNJisziHYOWUJEHFMwAUhoAhwSDYki0ITPtSEj4mVaynPVVMddhENBqoYhRtC6g2+DK47xMbylZCVZpAyU7pjQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR10MB5751
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-05_04,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 mlxscore=0 suspectscore=0
 mlxlogscore=999 malwarescore=0 spamscore=0 adultscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2510240000
 definitions=main-2511050077
X-Proofpoint-ORIG-GUID: 2lkeQylXx_N5_6S40pOl4jtUNGPBWqFy
X-Authority-Analysis: v=2.4 cv=DtZbOW/+ c=1 sm=1 tr=0 ts=690b277d cx=c_pps
 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:117 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6UeiqGixMTsA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=_DBbqKMgqbY9uJJ_UR8A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Proofpoint-GUID: 2lkeQylXx_N5_6S40pOl4jtUNGPBWqFy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA1MDA3NCBTYWx0ZWRfX/KwlhYnaiPtb
 IAFvYBrKlLBFqV+yDQQ9Pnbp+lK+k6g7ZEGaxSi5kwcEEpHI1l6aUro3+UmMGt/7wVBQ30YInIA
 1kTbxJbLq97ZdX7Ny+A9yyvHK5k/a3vEq3uEmC3ut+n1KXjUfijMesbn7UTCQSLB2k/t2T2jYFp
 40tiFdFwxqOXSZwfpx1Xesr76o785Frbw7fzR1Noh17vpMBwfpGfSp1ZnfcGXBDECCed9ha58nI
 k6uHqD5OZVHLl835BEbvrhGHALXEfedOyRo/Ekqbr0eSA0Lqqq9CJ2Si8VIRWJgQmUv5xK9l8b3
 f6m6BQBd+9nU8/0c4e06yTfXg38acQ6ww65HQsZ6LG/z7vE89UFhE9ha3JviM14UrwSd0WVZhZB
 Yh61PwaZ21WFewYUMg7cs/n43Y4miA==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=
 corp-2025-04-25; bh=PzRS7DDMvjhbhXpVn23TIoZN+LBVkxNWXbV9PLOz0eo=; b=
 W+odEyGc1voQTNaCVZ14dXLQDJ0ccupqFeh7zE3e7x+ZeNGeJA8bvZMBZo7zKN6b
 C0sQk5I4MMaOiRh2V755wbbSJhuCSNwlMs7FIrM+xjAh5AKnNd6I5bFaEJ+wm9sk
 aC8N3YPHt+ne2JAGeWN4HM6KT4PCIyfBcYHRJ9EuRYP+j284fjfxx7sJJ0mRSmCj
 Bb0EVRmjqGlOFOELQuYU+KMzlpu9dh1fbExZ4qH2b24XSV25UBjEoRQJYAo1Lsqo
 iIlgiiuan427lvfFCgh9pUlkYVAeQH9xMfY0WLYpR4lJoT0OmMx/BiPArfF73vnB
 /SXyvgrYER+gsrK8t2NCPA==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PzRS7DDMvjhbhXpVn23TIoZN+LBVkxNWXbV9PLOz0eo=;
 b=ZOVRpZjadP4wzUqSfkc8Lrh4g/vAvhoKL+6LpMaLN+dtcvrstORgg/syu4BTxL85nNVbT1A75jMW0XzfMaoI0zGsuASZhnsY5fJUoJa3njOOf0yh2ek00TJxuwgT0jfrbqVjwuIA1X9NnXg4rLx7C7q3rymjGfM0cMYCvLDvuwI=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=oracle.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com
 header.a=rsa-sha256 header.s=corp-2025-04-25 header.b=W+odEyGc; 
 dkim=pass (1024-bit key,
 unprotected) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com
 header.a=rsa-sha256 header.s=selector2-oracle-onmicrosoft-com
 header.b=ZOVRpZja
Subject: Re: [Intel-wired-lan] [External] : RE: [query] i40e: Clarification
 on mask.src_ip[0] & tcf.dst_ip[0] usage in i40e_vc_del_cloud_filter()
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



On 11/5/2025 3:47 PM, Loktionov, Aleksandr wrote:
>>                   break;
>>           case VIRTCHNL_TCP_V6_FLOW:
>>                   cfilter.n_proto = ETH_P_IPV6;
> Good day, Alok
> 
> Good catch! This is indeed a bug - a copy-paste error introduced in the original implementation.
> 
> The condition should check tcf.src_ip[0] when validating source IP, not tcf.dst_ip[0]. You can see this is correct in the IPv6 flow handling in the same function:
> 
> case VIRTCHNL_TCP_V6_FLOW:    ...    if (mask.src_ip[3] & tcf.src_ip[3])  /* Correctly uses src_ip */        memcpy(&cfilter.ip.v6.src_ip6, tcf.src_ip,               sizeof(cfilter.ip.v6.src_ip6));
> The IPv4 code should follow the same pattern. Additionally, using ARRAY_SIZE(tcf.src_ip) is more accurate than ARRAY_SIZE(tcf.dst_ip) when copying the source IP, even though they're likely the same size.
> 
> Your fix looks correct. The same bug also exists in i40e_vc_add_cloud_filter() and should be fixed there as well.
> 
> This likely went unnoticed because:
>   - The else if means this path only executes when dst_ip is not set
>   - Most cloud filter use cases primarily filter on destination IP
>   - The buggy condition could accidentally succeed in some cases
> 
> Thank you
> Alex

Thanks Alex for confirmation.

Thanks,
Alok
