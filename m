Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GBRzAbbSBGr0PQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 May 2026 21:36:22 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 47F5453A0E0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 May 2026 21:36:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E63CB80E9D;
	Wed, 13 May 2026 19:36:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FkxsmeRNzSdn; Wed, 13 May 2026 19:36:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0FCE180E9E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778700979;
	bh=S90DTGRsd8NQZH60OofgukV5YFe0WqT4snVcHMYfdNY=;
	h=Date:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=BZmznji7JyOCx37Bdo4lL4NRGcPWA2AyLrRxkqJnTQjnsf5A4WJt5BD6naKWVQn9C
	 X2e1nsWgqoYv3wc2Cx1qNFpF1fe6p5pwlkDSl9DmkMvnWa6CfU97y21cXQKlqgwZDf
	 3j9MeFAqk1N/zF2TrKavQi9rDuDg3ZlZKYiPDNXxh0VQHsVWflkH8sN82gNe6lFw36
	 Her5hk2iUfjwx0S/FomP4pEBbDeYyGUURn9uTOYgV80KNzsBsJNywIKnn948uflQWY
	 3/qXqVFMjOinfZBBdTUkNlw3fvbIazPOw/AfwgA5a1NhOxWZ1SPAEnJZABOnpsgl+U
	 IqsQhlqPUHeWA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0FCE180E9E;
	Wed, 13 May 2026 19:36:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8B107270
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 May 2026 19:36:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7AA2A80E98
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 May 2026 19:36:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oIJqFtEy6ImY for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 May 2026 19:36:16 +0000 (UTC)
X-Greylist: delayed 4752 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 13 May 2026 19:36:15 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0809680E96
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0809680E96
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=205.220.165.32;
 helo=mx0a-00069f02.pphosted.com; envelope-from=alok.a.tiwari@oracle.com;
 receiver=<UNKNOWN> 
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com
 [205.220.165.32])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0809680E96
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 May 2026 19:36:15 +0000 (UTC)
Received: from pps.filterd (m0333521.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 64DGKQaK2704235; Wed, 13 May 2026 18:16:56 GMT
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta02.appoci.oracle.com [147.154.114.232])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 4e4c979ts5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 13 May 2026 18:16:56 +0000 (GMT)
Received: from pps.filterd
 (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.7/8.18.1.7)
 with ESMTP id 64DIEtjK019509; Wed, 13 May 2026 18:16:56 GMT
Received: from cy7pr03cu001.outbound.protection.outlook.com
 (mail-westcentralusazon11010012.outbound.protection.outlook.com
 [40.93.198.12])
 by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 4e3nebabjn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 13 May 2026 18:16:55 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uKEjqp1coF5nn2Xx22z2znIn4STc6+YD172hGlOWKTftqHGF05BI4/Mqa2ZFaAYvgMnEwlchonQgIlDQ1lpT9hi933wTWLKw9AiyiasOsMduaX2ArCoBFFrqrPqve4jBMWMOCHGjM4rD3kfx/tm2OyaiG4zYhpMgPKsEWdir9nQmKFMFeLArhAcciddxpScJ5D0pb6pY47EIZgBVKl6ZG6IEZeORWwOEW1UUsPr5Ev99/D6neWuHOqgIKNPe9LgMNngeJq/K1asDvd4vVcjV4xX9Wo4DJweYKlrlfr3thHKYOWk/IR+xbVZnrJ5TKFILLghq/4b2uKo6hP/UlEkSbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S90DTGRsd8NQZH60OofgukV5YFe0WqT4snVcHMYfdNY=;
 b=uGEZcgoA8NY1kevg1MhG01pwhXCQkGEUgX5FnX4GFdZbXVO18IAfCyzIL0xzDXfJnwBbz7cGfCpHim2k9qBa2WVxNdRgV0Cnq7YSSUDfP23pG2wYWTfxcrDHPBMfVVHd5gWZ6DXfst4UqxF5mWj3imd6sexOhfFQ59COZoocKiKqD/1grbgBA9YzqxmLs3UXmFAqJJmIRdVr1vJAmc/8Z4Zp/LdF0Ml9ulZAAz99H/x8sWlwHtMH3pB7+6FshVf84Qcd9L9OmwSocuRTaRWp2ZVsWjX/0sWr0X1YR4216HfQpFw1Dbw7r8Hzit9ors116SIntS3/vXIDG64FTkoaRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from IA0PR10MB7667.namprd10.prod.outlook.com (2603:10b6:208:48a::13)
 by BY5PR10MB4339.namprd10.prod.outlook.com (2603:10b6:a03:20a::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.11; Wed, 13 May
 2026 18:16:52 +0000
Received: from IA0PR10MB7667.namprd10.prod.outlook.com
 ([fe80::d970:9174:bcc4:9b75]) by IA0PR10MB7667.namprd10.prod.outlook.com
 ([fe80::d970:9174:bcc4:9b75%4]) with mapi id 15.20.9891.021; Wed, 13 May 2026
 18:16:52 +0000
Message-ID: <f0ab92b1-ee9a-433e-87f0-70b809789c16@oracle.com>
Date: Wed, 13 May 2026 23:46:43 +0530
User-Agent: Mozilla Thunderbird
To: David Carlier <devnexen@gmail.com>, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com
Cc: andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, horms@kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
References: <20260509233722.111895-1-devnexen@gmail.com>
Content-Language: en-US
In-Reply-To: <20260509233722.111895-1-devnexen@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: LO4P123CA0196.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:1a4::21) To IA0PR10MB7667.namprd10.prod.outlook.com
 (2603:10b6:208:48a::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR10MB7667:EE_|BY5PR10MB4339:EE_
X-MS-Office365-Filtering-Correlation-Id: 2b0f055c-900d-4afe-d4c3-08deb11bce84
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|1800799024|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info: HaZhGtSSmnnHBoKlDnHqQvwLr2V3Kh5KC/UuZZ+XrBEZ9S4JOwTWrju1VNUmdppGvtydnTjeVpS3RY5Xyh/i131UKxSrPHOjeEAPieiTgLtzJIYW62Mc6HqUEKqDEWARYKsr0mO5ck+7xx9hGepk0IqGe7oCm8cRxlYJidx5WVHJfLoBuBIqIkwldx8i1S/xFkas9ccyT3h5SwjEbeME9SJYPi7kS7UHhiyTJS9e3IaFt1UFbc84c3tbRoTeQlM/rl7SZI78UW59uLPfd+CxhY4HkT0lBSCuABqHxajGnayGYreS2AWIEBHOkk9jxWAzKfKWKC/bVBIUELFrG9+7BoUBf4hB9qzC7ARKR7PNR7Wir5tiMViHiTMap3P6HN0A80KlcI7jPX+qA6LvcbPYlK6+7g9H+kE91EHw7dwc+QfKgZlU2JySGKZozGqX0brL36UuK94ANma/3GyOp+OmhKm7B//X1hxDLbJePf7nT8FUI0jl0DYYqdqX0B5hLCfuK599G2w2AANL273XLFhegJTKMbIqLSOBjIPyG+BXhS4xjf7lLrb/xFPBSS4ZRtglSH82auHaOnkoHGY1k0rel0tfIx7p4Bh/vqPnk6Q151rh0uv+7pytHtyinCHEjBQV4pPSdL6NvSC8aA/He+2Df0jhnpUyJC16rWVGgOli1mzH9pexB4WIlw0n9y/DO9BZ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR10MB7667.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZEJia2hKR20yY2ZNZXZPMFhGSDlFd3JCSHhHWVVaQThDTm5FQjRqNm5IRzlk?=
 =?utf-8?B?b2hMMWtYdUtmU1hqVUFyS2xIK3JxbmZxOXBQM29MRTZyVWpsM2o0N1JuTHRp?=
 =?utf-8?B?ajlXVmRYNWY4YWZKdWlwV3YwNEtyYVZHb2dsUnlIVVZncEx0RE45WDMxNXR2?=
 =?utf-8?B?MWYvN05pcldrZ3l3dFkxeFpSVDZ2cjBSN0tqR0lJUnRDM091YWppZjIwMUhn?=
 =?utf-8?B?ZG9TM00xeFVGaFlXYVdvUE5QZ2JHWDB2bWRzVVVDQU0xM29kMzUyQkZ0a3lT?=
 =?utf-8?B?SkhFcVdZdkR1dVZFNm9FakJHZGs5RlpCRUUzMGVCR1BZQnlFZ0daNjZsa2ox?=
 =?utf-8?B?bDNJTWN1Mk1zcUR2R29TWGpwSTE3alc1ZGx4ZGQ1d1FYTjNHaW5zc3Y1ZDYr?=
 =?utf-8?B?OVFLS200SjVuVHJIR1UyTURuUTJrdWR0Q0JRNklhcUFJdlEwRGJybG5UNGZT?=
 =?utf-8?B?WnFIV3piZzVzZm5rLzB5RnFhRjM4TjhVdWl1bnhkSVpNeXdjNmw0N0ZDWGVz?=
 =?utf-8?B?RmIrL0M2L0k4aXFSbkcrRjJ0Um8vS2prZFFqM3EvVXdIZE9aQTEwOUNMSkwz?=
 =?utf-8?B?Wkc3Q2I5TmpEdXRxV0t4bHZNSFg2S2I0SmU1b1ltLzBFRXozS2U4ZUtUMC9S?=
 =?utf-8?B?YUpOTWVKczBQeisyRVR6eEhWdVNCaHBwSmdXTU5oekhPRWlKVkJCUFV2azZN?=
 =?utf-8?B?R3E2ZXdNSDRZMi9JMVBsMTd3OUxLek55aXg1d1B0VlJ0bWF2Z3c5RS80UlN6?=
 =?utf-8?B?VzZ1T0x1MFVkUDhDMHY1cy9ZUHdMUTJtaWZCdEdvQnlqVXd6R1VXRW1Ia3RC?=
 =?utf-8?B?YzllR01vMzBaeU84MWJLNjQyMUNTRS9HemczK1Q1dTdLTW9iZzdSeXNxMlA3?=
 =?utf-8?B?NnB0Zk1MVXd1eVl5T2EydytrMkZ4Yy9GNlI1R3U1bmU2ZkRHWVNJOWZPajla?=
 =?utf-8?B?Z3RLWGdaZnZ4UFM0WTlFUk5SK0xYQ0UxZ2VIU3pCdEZlZnFtam1oSVNUakRM?=
 =?utf-8?B?aUFmaVNCd3BrN3drdVpNdFEwWmc1R21TNWliZjFEbVVNRHlodGxCcHZLeW05?=
 =?utf-8?B?RVZIWHh4dFlTa2JZRDh2cjhXRkQzYzFzVlBQdURhQURJRlZ3bUNXZXZDN1Jr?=
 =?utf-8?B?UTExSjVZeEFwb1luOVorT0hleldNRGxIODVIVU1VSnpUV1RHZUR4cUF0aTlB?=
 =?utf-8?B?K0hBbU5Fc0xlUHZBT29mSkxwS0d4eUpBNnJNcUNVVjZHLzI1Ui9oanVOOHNF?=
 =?utf-8?B?dFB6aFFvbHhZQi9ucXl2bE9HSlNuU3dTT29PODFFUjVydCtkWm5YYm42SzAw?=
 =?utf-8?B?eFp1SW5tUjRVdUZ1cmVGOENhS2FaSnMwL0lKSnc4UEFjSEUrVVI0b01nMndK?=
 =?utf-8?B?UXVNZGNHM01pb3BhVTY2ZjBodTNjZ1VqQkY3S1A4TmEzU21pcGxYMDE4Mmtp?=
 =?utf-8?B?WXdES051MW1oUS95NFdqRjNoK1ZHWTZLdGlnZzQyOWNPSWhsUmt5Z0F4M0sr?=
 =?utf-8?B?ZWt3Qk9MVzVhNHl3ZlN5Y2xqWmlobVZSdHFONm1zR0NrQkRhUW9xR2M3ei92?=
 =?utf-8?B?UEMweDhIeHlFR3BINlZUU3ZubU9pV3dteUpLdk9qVGdZNXFLQ2JJQktuam1k?=
 =?utf-8?B?VlN6OHFEeU1XSDN3aGVjckdYTmg1dFBScENoZTQwYmxXTTZiblNQUmhvdm1r?=
 =?utf-8?B?UzI5UXphY0VMYXZjZmMyUExGb2pDcE12dVZ2M3BQamd3K3FKRmxDSzlIMW5C?=
 =?utf-8?B?R1pYTzVmTFJMdDhocDV1eitIT3NGR2VFd0Y4NE1LYXRnOG5yRi9lRHBDMWl3?=
 =?utf-8?B?RHN1WDFNQzlIK005dVRNTXFPQWsrYkswTCtFMm9DWjlmeXZ1NFIrSHFyekFS?=
 =?utf-8?B?SnJUcEJsdWk2dUxPcFFOQVdYNUNUb2h2M2NPUzZPZkk0aXJON0VwcEd1T2U4?=
 =?utf-8?B?ckFPc3N5dmloekxXWGVHdVpmd0N2SmowMEsreTU4Ti9EMjdJMzFNV2EwRUhG?=
 =?utf-8?B?MGtYdlMvaE94dUZDSVZCMWZRcTR0d09WUTNOdlAxcW1uQlVkYVA5OEJKa0JJ?=
 =?utf-8?B?MFN5MlRHN2gzdlBNbXhERmxpOWpGbWd1WVpDaEtMRkR3eTVCS1JPdlN0V1lW?=
 =?utf-8?B?T1NqWE1CVi9LL1RWK2Y0LzlKVjFtQXdGdDJ3dCtCdFl6MndaeXhudDhQSENC?=
 =?utf-8?B?ektWYUJ5NzdYK3JETi90YTVJNFRDUkpnSEI3ZXVvZUhROCtxS2xTT3ZodGJR?=
 =?utf-8?B?ZkorREUzeTB3em9jT2JvOU9PcTFtdXRNaFk0WE1WZ29DeEQwbjIrK3k4LzNz?=
 =?utf-8?B?NVdJRnMzWXpZUHZYNCtTa3VvelMzMnFlaE9WY3c4YURZNkVPY3l1RGN0RlNZ?=
 =?utf-8?Q?Y0Jgr8k96C1pba3E=3D?=
X-Exchange-RoutingPolicyChecked: QGW1wuID/z37xeb6XnGJ0ugUF+KkZsbsB4o3wu+e6KVJYnLALzLoP8a6wzrShQX8CkaoHiNeQL/G0dweK3QpwiB8wAuGN8gTfYYOfTe8kbDybl9bZNS7Kij6haQHzOrOfE1nrB/pGLUW+pbZmRIKqlwNlVtKV8AxBs//Wb3xNRPlrZkzi06aFqN4+ggPKusJGO2ES58JbIvQ2JXvg0xnPKt0bPLkaEOsAT9vlmAtWK537E17RTMEJAZXDl0CvtTy+J4mDpBLX4WdMFun9ir1ZiRkjpjTQjsrgIZgcbmWxLN0J/blTJ+L6b3N6nhtwBeEGXKHT03GmhsH8Xw3wZ953Q==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: Cy8+yADML2J0ZzbS3+i6T4aO2hd0T1t+5Cw4na+0AFZ/WebpSnCH9SHh85wPkeyCJSaGulp/LuR+5nX1kFOJdvH0WbZGI14broRufFVnB4JOjNU/bhjc8ZvVNhz/akko44UuBLUVZcd+LyolB3DX7iUOKlF4WcizMKjRK8pwq/pDJkm0U4/itDZ4ZsRd1pHxyVZB7hu7cPrDlU5tc/jtMooOFs0XNT3+82glRIyIEfZQ9oPT9bbgpXUWFBXhrRklbOegOX6gkEza7zcEeR8jChIQNR9tYXLGMmqVWCQ6LfqwqfQlLfO2CI0A8eKjbTbkDepUGavoP9aM6hpy9qywft9pKIhJlJNpb5zpdSYzChu3OUG0coYx+QsIHCFftEhRNopmGvX0aDp4Y3VT3swI7TlpeIOuGbwIW34jcJISgN3L9HH7+PZDGPomXsNtpi6+oU3oQpuiIWfpxfyBobXJeaGFak6d8+plYFW9Znbtn5euZhPtkToCGRgVLtryce7DYh2vPwFJE2UtfLYfSaMrK3Hlhfm/W2wMxuI0EMvew1fbCTz4Yw7uDPmOHA9PGFE2Ey2wqYs7FgyYCZ3Mgmjb3fS3ZTAhf4dQm8m9ICbf4A0=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b0f055c-900d-4afe-d4c3-08deb11bce84
X-MS-Exchange-CrossTenant-AuthSource: IA0PR10MB7667.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 May 2026 18:16:52.2014 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tGuDS2HERPi3ujSwTK2YSNbw8VHN5PMOJGE4H5Ceue7WrEz9y/xTb9HaWMMuVT++tRXHX6u9nGUlYE3QoPpJfmGP30n/kN3B88vvJwcqViQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR10MB4339
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-13_02,2026-05-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 mlxlogscore=999 adultscore=0 lowpriorityscore=0
 mlxscore=0 spamscore=0
 phishscore=0 malwarescore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2605050000 definitions=main-2605130182
X-Proofpoint-GUID: CGIjjEURJDha9xGDT2jBudQkHw9bmkN0
X-Proofpoint-ORIG-GUID: CGIjjEURJDha9xGDT2jBudQkHw9bmkN0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTEzMDE4MiBTYWx0ZWRfXzcqlF3e6lE4y
 74JgGcQuvRCtLDcaQtJzCjv8uuXPMVDoTVUUB1VDbxabZPybP88keITZYsHYmj9LT90hkT0H5Hr
 BkDCWQ4iAUU3mL8pAjE0JFyrHidysrMM1TeWwl7xVmJlgF02CMxkIZ1gUULHdW6LYCj+7vDQu8w
 PXLatci+3qIn7s4AZwauob4lRAXRnPHoiRoKdci9WLAg16f/8tC2P+9WpRD9jJvYzjqWHd7ze0h
 Az1iCktDQzj2LtdtvgoO1E2IOS5qUcWT1m4gfbpVzFuqribw40AeogcIeH6lJtFKfSXyvZ7IYWi
 5CMdCM0pZShGIz1Kp9nEjBwrEjQ4FKe0r1VxrIu8APD/rGJ0ST1/rKmVpmvR2jP0eQKAwUtFLtW
 HkIgwu+TpgFIEHCeoqxoXY8HfCyKPm98YmlHA4itLpK/fPXPMyulD9jziqY5C4zjN6glWBDHpwX
 RiyOVWwnEUJdCXmp+Tw==
X-Authority-Analysis: v=2.4 cv=Cq2PtH4D c=1 sm=1 tr=0 ts=6a04c018 cx=c_pps
 a=OOZaFjgC48PWsiFpTAqLcw==:117 a=OOZaFjgC48PWsiFpTAqLcw==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=NGcC8JguVDcA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=x0eKOSpe3m1H3M0S9YoZ:22 a=VwQbUJbxAAAA:8
 a=pGLkceISAAAA:8 a=3O57lEh4BZJ8bQAz6rsA:9 a=QEXdDO2ut3YA:10
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=
 corp-2025-04-25; bh=S90DTGRsd8NQZH60OofgukV5YFe0WqT4snVcHMYfdNY=; b=
 PaOr6zznwSY66NfH1ApIlglDLDx8MNJKJismJ2UX8l1t6k2DS2LjxV9hWqt+2Hmi
 IOzT4GeNldq0fF+JM36hZSu/rKlVK/ATLMmkw11BbUd35kcHdT8Ggs1jscFWrh+t
 UgdH+fxwDer/yQFwE+lLfbHHf02nsmCq9Fvqz8DmhTtqkp24j9qfF8RPxN7uhO4R
 BPZv2u8T3qZoAdSDXBbSXZfpQnCSH4KAdUZYkfO3g3zImEWMqrdg1c1n3GhLXLo4
 pEnkmR6nEuzfn3uO6kyacZiEtr9BUgaJW2eh4Rc2KR7WS+rGV++2OhrD3dUP7CEg
 qska+FRHS35uwwrCE+/1EA==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S90DTGRsd8NQZH60OofgukV5YFe0WqT4snVcHMYfdNY=;
 b=cUv9Whqqkwpec5VMXpjUJI32sr076kSrg7ViQF3aa7ng/G3z+UCnGar6jyQXcl+/XVwKPm2XeirIIHtEf+7fsRsNKppUIzcx9PflZ99oBvITDsJaJA1+DyLPG+m3myfsKn1L7Xx92C10hiNb2SZIB0ASUg6piNOnGwniOmz0Olc=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=oracle.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=oracle.com header.i=@oracle.com
 header.a=rsa-sha256 header.s=corp-2025-04-25 header.b=PaOr6zzn; 
 dkim=pass (1024-bit key,
 unprotected) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com
 header.a=rsa-sha256 header.s=selector2-oracle-onmicrosoft-com
 header.b=cUv9Whqq
Subject: Re: [Intel-wired-lan] [PATCH net] idpf: handle NULL adev in
 idpf_idc_vdev_mtu_event
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
From: ALOK TIWARI via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: ALOK TIWARI <alok.a.tiwari@oracle.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: 47F5453A0E0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:devnexen@gmail.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,intel.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCVD_COUNT_TWELVE(0.00)[13];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	HAS_REPLYTO(0.00)[alok.a.tiwari@oracle.com];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,oracle.com:mid,oracle.com:replyto]
X-Rspamd-Action: no action



On 5/10/2026 5:07 AM, David Carlier wrote:
> idpf_idc_vport_dev_ctrl(adapter, false) sets vport->vdev_info->adev
> to NULL but keeps vport->vdev_info itself. An MTU change after that
> calls idpf_idc_vdev_mtu_event(), which derefs vdev_info->adev for
> device_lock() before reaching the (!adev || ...) check.
> 
> NULL-check vdev_info->adev before locking.
> 
> Fixes: ed6e1c8796a4 ("idpf: implement IDC vport aux driver MTU change handler")
> Cc:stable@vger.kernel.org
> Signed-off-by: David Carlier<devnexen@gmail.com>
> ---
>   drivers/net/ethernet/intel/idpf/idpf_idc.c | 5 ++++-
>   1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_idc.c b/drivers/net/ethernet/intel/idpf/idpf_idc.c
> index b7d6b08fc89e..3ba52a80d52f 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_idc.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_idc.c
> @@ -162,9 +162,12 @@ void idpf_idc_vdev_mtu_event(struct iidc_rdma_vport_dev_info *vdev_info,
>   
>   	set_bit(event_type, event.type);
>   
> +	if (!vdev_info->adev)
> +		return;
> +
>   	device_lock(&vdev_info->adev->dev);
>   	adev = vdev_info->adev;
> -	if (!adev || !adev->dev.driver)
> +	if (!adev->dev.driver)
>   		goto unlock;
>   	iadrv = container_of(adev->dev.driver,
>   			     struct iidc_rdma_vport_auxiliary_drv,
> -- 


It still reads vdev_info->adev twice.

better to cache it locally and use

	adev = READ_ONCE(vdev_info->adev);

         if (!adev)
                 return;

         device_lock(&adev->dev);

         if (!adev->dev.driver)
                 goto unlock;

Thanks,
Alok

