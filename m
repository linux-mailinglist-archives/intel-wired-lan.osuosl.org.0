Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D13BD1FBDF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jan 2026 16:27:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B095485ADA;
	Wed, 14 Jan 2026 15:27:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1GG6V_BE7bMv; Wed, 14 Jan 2026 15:27:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0878D85AC2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768404473;
	bh=3Bpdgx2LPrW5naB7P5igFJP+ewgvRps5n25Il9TLBvk=;
	h=Date:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=N+yRi86PWNIh00/4WTbt4o3ac7zxoCGJGhuT+XZESFyXL8I1NcyPRB+nbq97CHfCO
	 OPoQWbzKYJ8MUJEU3xHwEEntKeKryeDN5P3MD1ju0yym5Vv1K5amVBasz3nPMd9TOG
	 F9u/2kAttRvymzE998toPoymQxaDcBWepk0/nIzHfxOPdfkfGMZzg9FnZRbR91veaY
	 LU1mFCz6C6AFJ4rvAAAdLF3RHR1gUzCWhpMT16GFhrIohuILGuqX3H8Q1WnYbdoPF9
	 921O3Ew36L8xGA8la2dsLr3035pxrWTD61h+NvYrzQb7Y25YpwKDi1zU5kr2muzH1C
	 WoQOh2GhbH1iQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0878D85AC2;
	Wed, 14 Jan 2026 15:27:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 15A4A1CC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jan 2026 15:27:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 06F9648CE3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jan 2026 15:27:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j3vV-FMw25Bt for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jan 2026 15:27:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=205.220.165.32;
 helo=mx0a-00069f02.pphosted.com; envelope-from=alok.a.tiwari@oracle.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1443B42F60
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1443B42F60
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com
 [205.220.165.32])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1443B42F60
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jan 2026 15:27:49 +0000 (UTC)
Received: from pps.filterd (m0333521.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 60E6MUc61296941; Wed, 14 Jan 2026 15:27:39 GMT
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta02.appoci.oracle.com [147.154.114.232])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 4bp5tc0p43-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 14 Jan 2026 15:27:39 +0000 (GMT)
Received: from pps.filterd
 (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 60EFA9nS001848; Wed, 14 Jan 2026 15:27:38 GMT
Received: from sa9pr02cu001.outbound.protection.outlook.com
 (mail-southcentralusazon11013014.outbound.protection.outlook.com
 [40.93.196.14])
 by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 4bkd7a52q1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 14 Jan 2026 15:27:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=f0pUoWuvWO7yljBDE2VRBExvTcIzhBDkDphvfbmKTNtgg3UZxeCHd4qOIgqZM1LEjAggS1J/NCT7XwtnGiy0kWLlffO7OHk0ihOLSyQwAKtQOBdSLDaoFKdskJOGtxn137bDu+pDVqI6yb2S5ye3vO2SdGVusO6k2c8nMny20FoDhfolRDXFoMmALMZxm2rGvbeHF9u+fz0oucxdh13AQShsFTf/tqEi3C3nfuyNhwbocnngQphI296aRrO8HJ95Pqi16at3OW+IwD6cx5AfVcf+BlehCI2kPPbAAj0pjQgH8V7BPL2NzamyKSytVUwInPnzXRYOU1qYCa8WWgUeqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3Bpdgx2LPrW5naB7P5igFJP+ewgvRps5n25Il9TLBvk=;
 b=gGfTs46LCRQumAkSdLFILVm1jJVNdwQj7hoZLk2GwkX41H3cIBgHc+MxoiT4LSWu+ZmQG5Fy2TQXajt/bXxtxY5ktcS1RQ8/W6dm0xPvU5TwoZ1Po1PnQBCEUT9JGEl6JmKuzgLStW05giIkV+T9FbK9RFafpTGrY8SV6EkOiLYM076MBxkomeWmW5sX8ByLrjlNtwQCB40fCZ+JExRB81rnezdc1eRBIOr9fQpNT7P8x3R7V/B2mmGC6XQ6G6wm0v6Y4R4m1WutM31LGwn2CscJUJnELGXGZvTO/T/P6wcLxjgz8BS6VcdDIGZ5DQWsM4X9OzmY1zIqI6sEcCjkCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DS7PR10MB5328.namprd10.prod.outlook.com (2603:10b6:5:3a6::12)
 by CY8PR10MB7124.namprd10.prod.outlook.com (2603:10b6:930:75::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Wed, 14 Jan
 2026 15:27:34 +0000
Received: from DS7PR10MB5328.namprd10.prod.outlook.com
 ([fe80::ea13:c6c1:9956:b29c]) by DS7PR10MB5328.namprd10.prod.outlook.com
 ([fe80::ea13:c6c1:9956:b29c%5]) with mapi id 15.20.9520.005; Wed, 14 Jan 2026
 15:27:34 +0000
Message-ID: <bdc4505c-6982-4f47-9ee4-b1f0911da16d@oracle.com>
Date: Wed, 14 Jan 2026 20:57:27 +0530
User-Agent: Mozilla Thunderbird
To: "Kamakshi, NelloreX" <nellorex.kamakshi@intel.com>,
 "intel-wired-lan-bounces@osuosl.org" <intel-wired-lan-bounces@osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Lobakin, Aleksander" <aleksander.lobakin@intel.com>
Cc: "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>, "horms@kernel.org"
 <horms@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "alok.a.tiwarilinux@gmail.com" <alok.a.tiwarilinux@gmail.com>
References: <20251110191344.278323-1-alok.a.tiwari@oracle.com>
 <PH0PR11MB50139E1973CFB73CFF221FCD9687A@PH0PR11MB5013.namprd11.prod.outlook.com>
 <BL1PR11MB555670AA62929815A84BC3D5F587A@BL1PR11MB5556.namprd11.prod.outlook.com>
 <BL1PR11MB5556FF3F70C8BCED9179D4B0F584A@BL1PR11MB5556.namprd11.prod.outlook.com>
Content-Language: en-US
In-Reply-To: <BL1PR11MB5556FF3F70C8BCED9179D4B0F584A@BL1PR11MB5556.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0238.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b1::11) To DS7PR10MB5328.namprd10.prod.outlook.com
 (2603:10b6:5:3a6::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5328:EE_|CY8PR10MB7124:EE_
X-MS-Office365-Filtering-Correlation-Id: 650db826-7ed3-4631-04bd-08de53817101
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Tzd2WEVYRmJsYzg0bUtINVp2VTZkenBjSjhNZ0tKNy92TVdxd21BSnVkd29L?=
 =?utf-8?B?VTZYandBOFhtTXZ5RWhtSWc5VFJDeGk2SXVyWmNoL3ozeDVsY0l5L0Ira3Zo?=
 =?utf-8?B?MC9mWHZwZkY1clM3bUliaG1Uc1phTmlqbVd5ZVJ4TVd6d2tqd3cwaE8ydy9O?=
 =?utf-8?B?ZUc2a0NLeWJWbTZqTzhVcG90Y1pvV21PRkJmcm53ZmRFVXBJU1VpbitFazhv?=
 =?utf-8?B?NTZnMTBUUXNVbFlCVEltZXJETHUzQTFpL3BFaVhmZlNnSEtHbXdBZGhPaDMr?=
 =?utf-8?B?UW0ra203eHhRSVlTbXV3SkowamoyUXVBSE9HQVUrV29jNmhpUm5PbHg3bDNF?=
 =?utf-8?B?Qkk4R0E2T2dFR2JWMU83TldOc04wc2NmZktrUVdIamV6OEIxMlpDVTFVdGxV?=
 =?utf-8?B?QUdyMDhYYU9VSCs4Yk9EYmcyYnZINGtJeG1NbUpvYVFlRFozYWpSMHFGK2hr?=
 =?utf-8?B?aktEOTl6OVVaRHVCRFM5M1RDWW9NS0hvNmh2NHVlNTJ1S0VBVmR0ZjdWZDBk?=
 =?utf-8?B?YkhYQ2lEdVgxcHNsQzhtVHljVEIyeUhLY1k1V2pyczRXL25pNE1IbUsrS203?=
 =?utf-8?B?MGJTV0ZyK01tc1k0M0RCdGphaW1tcEg1QWdRZTRiYmVHZ1EySlZQWUIyRU4w?=
 =?utf-8?B?ZzBGanhJdkhzNHpUbDc3NG56N1JMMHFFUGNDYzRNMkNNMnNVelgrNFY0czk3?=
 =?utf-8?B?RkpGMTdlbGd4WWFwREpmSjF5VUFGYVNhL2NlS2lZaTJqVG1YaTI3bTBPQm42?=
 =?utf-8?B?dWVxYVJ5OG9iTHdNSVc3VWUzclJKRnhtWGZQcEpvWkJDeGpGczVBYkF3Sjc0?=
 =?utf-8?B?ZVVpTUtUSW54UHlqU0xTbE5Vc25JN3VYQTh6STNVM2xLcS9IVHlLdWN3eUFE?=
 =?utf-8?B?R0ZwL3RZcGdtK0hxbTR0Z1pUUUFMSWcwdEVURkROaE1oem54V1BLeWNnL2JR?=
 =?utf-8?B?VDl1REZTQ3dCTmpCZWY0M1Q2UEJrbURmVkV5VjFFdHVzbGswQVUydCtydXds?=
 =?utf-8?B?cjJ4Yzc3U0tscVNiYkRKbDhqMTJtdW52NHhNbEd1QlM2Qy9qSjJLZklSc1Nn?=
 =?utf-8?B?YVl3TjB5bm54bEttSFVKWGZhc25wVXk1NTRtWFN0U1VoRFIzeWJ4djN2dnZz?=
 =?utf-8?B?SllVNG52dUNaQWVVQVBXMTV1ZStockNxNzQzYUd2UGtGd2VRMGQweG93YnpZ?=
 =?utf-8?B?U2xEc01EZHRXMlBqNEFzZWVkbVhRRjFxTm1LY3RmZWdqNWpvRHhRa3lST1V5?=
 =?utf-8?B?NHVMZFNLZTFkVnpBM09UREpwNHF5dGtrWE1iWmFZbG1MZ1FRVUxLQVVwSjFj?=
 =?utf-8?B?WFVMQUd5WWpmYzFxMUxnOWVFUWF1YWw1NFlxZzlzVjhsZVhZbVB6OXAzc1d6?=
 =?utf-8?B?ZmZsTnlqWDRaU0JTTzJOd096Z2YyYURGZlFyOFNnWDV4TUovV0U3cVR5Z2ls?=
 =?utf-8?B?emFOREpQa25WYUxybUhJWTNrZG95RjRjbFppcnNsQnBHbU80NmFid0RPcFZB?=
 =?utf-8?B?WXFNNDgxWmdZT0I3a2xYOWkxalEvMFhFbVJPZ05HN0hFc3cvT2VEcmorTmJo?=
 =?utf-8?B?eDErNUNoWGsycU9yU2h6NnFVa2pIcTJYSElUbmh2T28wVHI3KzFWRlJrSk10?=
 =?utf-8?B?dE4xajM0TW5jQTNGNnZsZnVEMTNnZDV3TkR0Q2dMWUsxc1JrbG50bWxFS3k0?=
 =?utf-8?B?b1d3Wjk1bVBQYmR0cUpCZU1iVVZ4bE1URDU3ODFrTUQ3eFdMdFBBTFJNMEZ6?=
 =?utf-8?B?RkxXWlQ3ZTlvTWU5RzhRQzJuUFZvaDRXcDhzZ3Z1Y3hjQjc2dkRhWjZyaEp4?=
 =?utf-8?B?UnVGUHdkcSt2SUF1WWc3enlVZU0yVjFkbUpBSmFHcjJiSi9KaEkydlNUd0p0?=
 =?utf-8?B?R1krMzdCZXNZK0JNMXBYWk9uZk11QXNGSEZXNWREbFlzNlpwYXdDVmd0VVVp?=
 =?utf-8?B?b0dnU0JMZS9CVTFadzd1alRqSzV6REVyWC9wOEFodUpPcVR5cU9BNUQ4ZEk2?=
 =?utf-8?B?aUIzQ2hNN0RMcEhOc255UnhvVG0vZXVlQlYvN0EyLy83NitBblc1SVpDM2dh?=
 =?utf-8?B?KzYvNEhHTUVmRVgzL1BVbnBRKy9NQ2ZnSEpGWTNrcG9WeUNmLzh5RTdrSlAy?=
 =?utf-8?Q?mg14=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR10MB5328.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cnN3dm45bGhtNnpib296bHBYcitSVktUZ1lTSDBrb1NWc0QzRG1wU3ZhRmgy?=
 =?utf-8?B?SVViU0FMa2I2alNaTndVMStiQk9pWEx1RFBralYrak8va29QSm9Fc3crMFVh?=
 =?utf-8?B?YnhoVDYxSWc0ZVNuV1Y3SlNOQTJ4TFpTYmo4M1NIY0RlempybFNrcVZnanNE?=
 =?utf-8?B?V0ZoTU1QYnN1WDhiem9rS2VDTXpRUUQ0UmJ3YlhRY3ZkYlZ6d2N0NjVUUVVq?=
 =?utf-8?B?dlRWOS90cVl0MmpEcUNDQ1Q1WENETjBkVTNqNERBY2N5VDlrbnJ1cnpwaUFR?=
 =?utf-8?B?QllTc2VPWEh2OGxaSm5oOVo3SmVHbjNJcnNjTHdTNzNCY0Nzak5OcTA3Mkwy?=
 =?utf-8?B?dWZXVmpubnY5b25LVmt0bzFWRXh6R2RtRWRCdUY4TGg4VTFWL0RNbGp4R0Z6?=
 =?utf-8?B?R0JFZi9GVkE4aHlQUExOUTRhYzUrTFhNVDNSM2pWb0M5QVF3aURBVjhuQ2Ir?=
 =?utf-8?B?ZFBEN3o1SEdNN3Y5cjVPNy93WERiWjdRWk82RnY5MGhTd3l1OWhRN1lqVlZG?=
 =?utf-8?B?a3huZmxNeHlHNUlnM3l2ZUQxOG9WZTA0UDNYMUJPQStLSmdTYmdMUCtEemVv?=
 =?utf-8?B?Z2ZtTkVXamZ4cC9BTEt0ZFB2Um5RZ3VlcXdLaUJpM3pkcjZLdUdUTDJ1NU5B?=
 =?utf-8?B?SXk1djNiZ2xiNmRHRUJteEZIUjR3SVRrUUg3ekhncHpwU3dBMjFyN21JWHIz?=
 =?utf-8?B?QWNncXlvWC9iYjBCZ2Y2cEhzZDhsTzROU0tHMDg5dWplM3F0ZTN2WGZMeUp6?=
 =?utf-8?B?dDVxWDU0dDMvMzZ6cmhWNkFPU0R5WWI4eHg5UDVDNWhWTEV6TTdxZHdRVlNk?=
 =?utf-8?B?b29wWVlLN1JmVXQ3Zzk4T2FYYUIyL0t4Y0ZES2UzRE5ibXpMNFF2WGdPU2tF?=
 =?utf-8?B?VVgxeFVFNnhCZHRyTzM4MnhxSjRreDBWazdFWkQ0VVpqOERhM29BdGNhclB1?=
 =?utf-8?B?OFNkU0dxaU91ZWtpS0hXbi9leURvRVVZVHBtWjVqQk16VW1ZZjJma2RTL3Fp?=
 =?utf-8?B?ejRkTERrSlRPeXh5ZEx2alRNb2xMMWxCMG9ITysvWkh4NDJSalJaUDRlQlZt?=
 =?utf-8?B?c3hEVDF5L1ZwbmVzeTZPYWIxTE4ySjE0cmFEK1BxYWdHdHE0ZkovVjhQb2c1?=
 =?utf-8?B?a09DTTVxdE14OERyTmJOclkvNlk3WUJab25zemsxZ21MbVhudDBaSW9Gb2Fh?=
 =?utf-8?B?Y0JoZDl2bzNoWElraTVNY1dUdXIvS1YveEcvSEUyS0tjN1dKRkgzR0plQzht?=
 =?utf-8?B?RDNtMEdNcUpwdWJsNTNxaXByNWFUaGpvekdYaWY1TUNGTzNBdmFwMzJEeUhx?=
 =?utf-8?B?NEoxTytobE9PbTF5NzZwbFhtWGZSMFE5V284Ym1CVWtqWjJWUmxkS0dVVEUv?=
 =?utf-8?B?Ynk3d0M4RVRHb2UvdnJZblZhVFB3anFTZUF0b0c2d1V2QXd3ZmJuTVhQR2Jw?=
 =?utf-8?B?U25Bd1cxemhxTUFmYjNwQXJMZVplOTB3ak03OXZqdmxaRk1NendqNVRwUDh3?=
 =?utf-8?B?Y1FRRERKbUlrNXkwbUJYV3pPRE9hY1BDQzcxZndJUUxJYmc1clhyVXUwVkNx?=
 =?utf-8?B?N3ZlRUd3L2JvdGM5ZzBRcjRHQUxHTzJuTWZDZFRZTnBxaEZySDVycFg4Q2ly?=
 =?utf-8?B?aTBvVGtIYmpMK1NUQ2tINGVpVy9rOWhwV3MzNXlHUWw2K3JreGxPYTR3ZGh3?=
 =?utf-8?B?NVROS3ZYY2NqeUtsV0oxQnJoZzBMS0ZtVmJ2QUhqRllza2dJeS9zMHlCNytG?=
 =?utf-8?B?RXVab09PQW8yU2hNWlBncGRybU1qR0RpbGprOElUZlNRMVNhcndwRiszK0Vj?=
 =?utf-8?B?cVJycjY1N2RlR3c3YkJKUVhVN2E2RjJOVTJnNlFxYlRhd29Hek13OVRIQXQ2?=
 =?utf-8?B?WDFxcjZ5TnRleHUyN05LV2h2Zmt6L1R6S01RTWg3N2ZvZlEwbUFjZmhjS2l6?=
 =?utf-8?B?dVNhNXBIeTBzTWJ0WDJsQUJnYXhoWHgvaWVBWFFGNUYrTWJweTYzUXBOM2M3?=
 =?utf-8?B?SlR1S2xUTVE4R1NBeE0zUDRpSHRYV0ttczJJNGJTcWVpUStIbVEySHc0YTIz?=
 =?utf-8?B?bmNjcVE3ai9ZWFc4NStuaEVPVVFDanphWVVSbnUvWjhUSjg3S0tyOWc1aGQv?=
 =?utf-8?B?RTNUVUdvejVmMjBnT1c3L1lOL1Vzd21Bc1VEMWcxSXRtRVd3cXBRbjhEVmta?=
 =?utf-8?B?b1E1NkJYcVFuVjB0dEVLVVd5a2JBRGhkU09JQmhqbFFwZEY5NHJOczhncU9J?=
 =?utf-8?B?ZlFDTEl0ZVAranF1UmU0TG1rWld5Vk5nMFJDR1ZraEtJMzFiVll0Vlp3c3JP?=
 =?utf-8?B?eGlPWGNWMVpobFc5cysyV3ByOHdnSUsyTzdqQnZxNStFdmx3OHpFUT09?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: gsFcMjWiuR9Vh9R0iJyP/lP5PKuhsW5ySZjpyzRmcnw5GKCINySkS02Q6oVQBuAzwr/HZ6i3uboxGWNJF6ovdzFvpsEJO2c1k5R0FFKvS8K9qbbHbMpw2Fe/RD1KqOve0ykR8U2ygQrw/yf0AR2Yd8w+XWnrO0RfF9ZF0tGl9CpxkBsuUiUZeO3dTS/QYIyqkP+0IJjUWJIVa7tN0WnDu6YxWGkRtSE7gRfJQitR1yPA4x3HCo23NxEv3Uic3J8wOI1WpTlapvMU2D0KbbZNJClZjWjTj0BugjvHTm4j+hGms+h+nVYjvnQmOOTEj0RJRQcbRzEv6UrjmGXkuD/Eso5q/7vcGY+rpvxnSCNt2LAuGL0P+ikrb5ccwTd8NdzM0HYc4WvnRElFHwEke0sGbRfnWEsnA0MBhsBiRH7bw6GEvwDwfyWMHC+YdC7W0V23lLHT2MCLeuQgJfCPSxVXbpMRPGk80iC9I1Kaq4Da/IO60usCurtM8vCOA+rsKvKCYs76qdLzQuU7zxxpUp11tPdOMsSJaxpA+EWyEiCrzTJz36+01yUiT7CVolvI0gjGLZjwdFxBuxEynW/88crzs8WpDubeE/I+xLVonrbYUGM=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 650db826-7ed3-4631-04bd-08de53817101
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5328.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jan 2026 15:27:34.6867 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DcM6FodgZbAIcM4h9FwLG6c5sCGCmrVP709nIQJ/JRx4nvKW2o8t/1CnedY9tgugv21p3H4Vwchs8JPeCXLGspOWRHyCnKpGKsK+6YH5Ibs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR10MB7124
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-14_04,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 malwarescore=0 phishscore=0
 mlxlogscore=999 adultscore=0 suspectscore=0 spamscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2512120000
 definitions=main-2601140129
X-Authority-Analysis: v=2.4 cv=XP09iAhE c=1 sm=1 tr=0 ts=6967b5eb cx=c_pps
 a=OOZaFjgC48PWsiFpTAqLcw==:117 a=OOZaFjgC48PWsiFpTAqLcw==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=lTbjQzD5AAAA:8 a=QyXUC8HyAAAA:8 a=VwQbUJbxAAAA:8 a=yPCof4ZbAAAA:8
 a=Wdt1tTK3uVwnesw2-J0A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=w8YF5asEQ23juLwKoPR8:22
X-Proofpoint-GUID: jcD2OE1nrHBRAwuVodqjkBCC1uj_jP1j
X-Proofpoint-ORIG-GUID: jcD2OE1nrHBRAwuVodqjkBCC1uj_jP1j
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE0MDEyOSBTYWx0ZWRfX0oSaG/40aJQh
 740Ly6kW5EFYjcEK91VFIiOpTufRIB9unnUHCN4SdZFmMxBZ0TNJt6vFIp+oQFDK6NlRSx9b3B2
 bkOIqtKP16ToymXFmmu9NCwpsjnQ+E5hTSLDyhXOwEXP4yylftoINbVR7sxgiicZ1Ud+wEEDS0h
 RGtZ3poMQUq4X2hXMkikpe3wbTMk3a9fEc7RuQwi+VCwV2i/Yo/GJc0euRbTRa+XiCeq1J894c5
 eGmLTN8Xkv//Wv6tKSX/HaffLhUFX9/tiT3t9C8+QOxvn8nqIvgfIJ7J8/23VAvRyNI3/VZxiR/
 S98pOXuFsw2zqyOcF6XX9VbhpGcEJ0uGYzcGq1TQ86baRQxLJFw8Vt+OQUF3oXB2deHUvr2o2yE
 3JpiNQwsK+Bsqk1CFKVJO/fp2hoRGFaOiFY+Hf5jWbNZDlIHhRDgXCjfKXJTsaJfbI4Ev/PXcvE
 ppjg/WDcOJCytOCRXuw==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=
 corp-2025-04-25; bh=3Bpdgx2LPrW5naB7P5igFJP+ewgvRps5n25Il9TLBvk=; b=
 rlU9M4ybxm9HiKxRviZ738MtyrJDaXW8qLlaucbzRSMSFXMCJh4gPQmwENKAf5OF
 QYK467cPpHPe2nGwR0RlawfIiW1cDgUjwrWi4OVbxCwFtBmqJ/Go0e93/hI3Kej1
 EoubrG4MestkGIzarUybzE0NX8Fw/rOAmlajs2vRuX8p8B4vAkftZyisk6Bt8crf
 fjzsmbSiEE90XD1WL1Q36LqxynrdlyAcZWDNCVG+d7DAutAE1VaWvtP2tnrjEmui
 D4+PIbaGriG5Oj+LmlEAh2b5rgjSiMzqMs9RlnD1H8y/lHWNsSGL49WBJukIIoEP
 RRWJCXaByJo+0i6WFjkjpg==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3Bpdgx2LPrW5naB7P5igFJP+ewgvRps5n25Il9TLBvk=;
 b=AGbHg1qP/ebh1VdzAo2tuYjIyJuIjN9kqRv5/qp7v/nOaIbxCl7tSahlBY9XashDYtZAqKPxWVSEqGaJsyBK5rAKWhNUUyTwhFGhC0Sj6Ns05JVpoO+iHcgk9OQ3+H0UASkOFwV36AKsAzsyV2tpwYen0s21y47ugWEij4+4o+g=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=oracle.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=oracle.com header.i=@oracle.com
 header.a=rsa-sha256 header.s=corp-2025-04-25 header.b=rlU9M4yb; 
 dkim=pass (1024-bit key,
 unprotected) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com
 header.a=rsa-sha256 header.s=selector2-oracle-onmicrosoft-com
 header.b=AGbHg1qP
Subject: Re: [Intel-wired-lan] [PATCH v2 net] i40e: fix src IP mask checks
 and memcpy argument names in cloud filter
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



On 1/7/2026 11:29 AM, Kamakshi, NelloreX wrote:
> -----Original Message-----
> From: Intel-wired-lan<intel-wired-lan-bounces@osuosl.org> On Behalf Of Alok Tiwari
> Sent: Tuesday, November 11, 2025 12:44 AM
> To:pmenzel@molgen.mpg.de; Kitszel, Przemyslaw<przemyslaw.kitszel@intel.com>; Lobakin, Aleksander<aleksander.lobakin@intel.com>; Nguyen, Anthony L<anthony.l.nguyen@intel.com>;andrew+netdev@lunn.ch;kuba@kernel.org;davem@davemloft.net;edumazet@google.com;pabeni@redhat.com;horms@kernel.org;intel-wired-lan@lists.osuosl.org;netdev@vger.kernel.org
> Cc:alok.a.tiwarilinux@gmail.com;alok.a.tiwari@oracle.com
> Subject: [Intel-wired-lan] [PATCH v2 net] i40e: fix src IP mask checks and memcpy argument names in cloud filter
> 
> Fix following issues in the IPv4 and IPv6 cloud filter handling logic in both the add and delete paths:
> 
> - The source-IP mask check incorrectly compares mask.src_ip[0] against
>    tcf.dst_ip[0]. Update it to compare against tcf.src_ip[0]. This likely
>    goes unnoticed because the check is in an "else if" path that only
>    executes when dst_ip is not set, most cloud filter use cases focus on
>    destination-IP matching, and the buggy condition can accidentally
>    evaluate true in some cases.
> 
> - memcpy() for the IPv4 source address incorrectly uses
>    ARRAY_SIZE(tcf.dst_ip) instead of ARRAY_SIZE(tcf.src_ip), although
>    both arrays are the same size.
> 
> - The IPv4 memcpy operations used ARRAY_SIZE(tcf.dst_ip) and ARRAY_SIZE
>    (tcf.src_ip), Update these to use sizeof(cfilter->ip.v4.dst_ip) and
>    sizeof(cfilter->ip.v4.src_ip) to ensure correct and explicit copy size.
> 
> - In the IPv6 delete path, memcmp() uses sizeof(src_ip6) when comparing
>    dst_ip6 fields. Replace this with sizeof(dst_ip6) to make the intent
>    explicit, even though both fields are struct in6_addr.
> 
> Fixes: e284fc280473 ("i40e: Add and delete cloud filter")
> Signed-off-by: Alok Tiwari<alok.a.tiwari@oracle.com>
> Reviewed-by: Aleksandr Loktionov<aleksandr.loktionov@intel.com>
> Reviewed-by: Paul Menzel<pmenzel@molgen.mpg.de>
> ---
> v1 -> v2
> update patch subject line and replace ARRAY_SIZE with sizeof as suggested by Alex and added Reviewed-by Alex and Paul.
> ---
>   drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 14 +++++++-------
>   1 file changed, 7 insertions(+), 7 deletions(-)
> Unable able to create  Ipv4 and Ipv6 filter with src_ip as a match parameter. However filters are getting created with dst_ip.
> 
> Below are the commands I used to create the filters for IPV4 and IPV6.
> 
> tc filter add dev eth0 protocol ip parent ffff:  prio 1 flower dst_ip 1.1.1.1  ip_proto tcp dst_port 5000  skip_sw  hw_tc 2
> 
> tc filter add dev eth0 protocol ip parent ffff:  prio 1 flower src_ip 2.1.1.1  ip_proto tcp dst_port 5000  skip_sw  hw_tc 2
> RTNETLINK answers: Operation not supported
> We have an error talking to the kernel
> 
> tc filter add dev eth0 protocol ipv6 parent ffff: prio 1 flower dst_ip 2001:0db8:0:f101::11 ip_proto tcp dst_port 5200 skip_sw hw_tc 1
> 
> tc filter add dev eth0 protocol ipv6 parent ffff: prio 1 flower src_ip 2001:0db8:0:f101::12 ip_proto tcp dst_port 5200 skip_sw hw_tc 1
> RTNETLINK answers: Operation not supported
> We have an error talking to the kernel
> 
> Dmesg:
> i40e 0000:5e:00.0: Failed to add cloud filter, err -95
> i40e 0000:5e:00.0: Failed to add cloud filter, err -95


as src_ip cloud filter creating fails for ipv4 and ipv6.

While testing cloud filter offload via tc flower, it is observed that
filters using only src_ip fail with -EINVAL, while dst_ip filters
work as expected.

Looking at the add/delete paths, this seems to be related to how IPv4
and IPv6 handle source and destination IP fields.

In the IPv4 path, an if / else if construct is used:

if (mask.dst_ip[0] & tcf.dst_ip[0])
         memcopy dst_ip;
else if (mask.src_ip[0] & tcf.dst_ip[0])
         memcopy src_ip;


This makes the source-IP handling dependent on the destination-IP check,
so valid src_ip-only filters (and combinations of src/dst IPs) don’t
seem to work as expected.

In contrast, the IPv6 path already treats source and destination IPs
independently using separate if statements:

if (mask.dst_ip[3] & tcf.dst_ip[3])
         memcopy dst_ip6;
if (mask.src_ip[3] & tcf.src_ip[3])
         memcopy src_ip6;


Aligning the IPv4 logic with the existing IPv6 approach fixes the IPv4
failures we are seeing and also keeps the behavior consistent across IP
versions.

It looks like cloud filter usage with src_ip might have been broken
for some time. Even though the current change only updates the IPv4
logic and IPv6 already has independent checks, src_ip filters are
still seen failing for both IPv4 and IPv6 during testing.

Also, using sizeof() for the memcpy lengths makes the copy size more
explicit and avoids relying on array dimensions.

Thanks,
Alok

