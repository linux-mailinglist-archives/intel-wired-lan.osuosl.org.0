Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E43BC0668A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Oct 2025 15:11:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C4101840FC;
	Fri, 24 Oct 2025 13:11:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GnWOJf3pwoYn; Fri, 24 Oct 2025 13:11:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2BB3F840FE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761311498;
	bh=5pu0DDMTleR5NQ1CoXGULF7ppbmw8+gedpq+06pQLf8=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JKlVo9jMa51tdyoDfTz33EYmTuqFITg6mAJxBBh1I95P+QCJag0u9p9xFEnFMgwrI
	 wlzPu6Jd78d+MUw6R5K2i05OaIv/T78HZFrrtmM1Zkdcm99UX7mWjeXCiaf9xtBcZM
	 XJSL4uHFu4hxr5XiaSmrQX8M/0jVryDNLooav953qzpEHEMJkt4F9fLC3unQV7FNJ8
	 ri+7gekc88BircjobV3dcASueIO1VroVKCDObWecjhzEpTRHhtlXA2KTZsQEh19GD2
	 HkTait7H/76a6FXtfjkJ4aH3SZVgLGkDHirWwRTyrnsyH6zU+bfW6DGOMHHShsIpSW
	 ryu3Kjd7Y0PYQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2BB3F840FE;
	Fri, 24 Oct 2025 13:11:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 81674129
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Oct 2025 13:11:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6F04140A81
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Oct 2025 13:11:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Db7-MAG7bmlr for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Oct 2025 13:11:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=205.220.165.32;
 helo=mx0a-00069f02.pphosted.com; envelope-from=alok.a.tiwari@oracle.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 59B1940A54
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 59B1940A54
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com
 [205.220.165.32])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 59B1940A54
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Oct 2025 13:11:35 +0000 (UTC)
Received: from pps.filterd (m0246627.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59O3NPJ3013746;
 Fri, 24 Oct 2025 13:11:28 GMT
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 49ykah2dj3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 24 Oct 2025 13:11:27 +0000 (GMT)
Received: from pps.filterd
 (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 59OC2Xn5004439; Fri, 24 Oct 2025 13:11:25 GMT
Received: from sn4pr2101cu001.outbound.protection.outlook.com
 (mail-southcentralusazon11012050.outbound.protection.outlook.com
 [40.93.195.50])
 by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 49v1bfuw7v-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 24 Oct 2025 13:11:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sS2gtg2ZdI32V5xsCe0/ZKt6nNxcGxPsQMoKb2U1AbhAtFmW4A8ZLjTdTCjk/bVrK1yMsx0v//QK0qcmtt/ueJT0dFomi3nwVLI3PeL/AuWYK9zKX9dQgvhpf5FfqOiVX4aPp3gGVgf24RdlIKxVRgQwctrXB/9+GqL/13x2TkDcrhjTRulfF6zUk0GUL+vfn1V50f7pMeTb7H82NPPkcxVy/vf/Pk4nwbgdCTCtV8CXSK8g5wiFqhjx0b5wr329LxczBZcYF76x6lTspOU+EsdhNHUivKNiHCv9OTWF+6fPx/cjE7o1l4wtbEhESKWFfWrJ2QwyqSbHjQZR1DjgCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5pu0DDMTleR5NQ1CoXGULF7ppbmw8+gedpq+06pQLf8=;
 b=GLs/s8vKF0uvUmp6LbgqjajJXdN5etWSGWY/twckXb/lvbNwZFL3Lh9z+YNRbJRhSGhfm7PhngXx+uxuawGB2eRi+H088H+6UFHAau4sfaFKzfWD+wjEO14M1TEg/a34OYClv17Kd8JRLYTxJ2hPaqIVOuY+uK6bcDOjrhDqHHP+T3pK1pbhO6jZZYO+YeEjI4BTY0gZ06FIzncHRlIS+8IDBDtISZ5UYu6rkxXLZyHLx8uEZNbS6naBUXubh+ckU58rqc9tHsH4wfbt14EUFDAnfYwqbwVfLdaU6W4Mm4zwfpcyJmbofDhgqg1oX9oC+73wep2Axps8KeP7Uw3UqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DS7PR10MB5328.namprd10.prod.outlook.com (2603:10b6:5:3a6::12)
 by SN7PR10MB6980.namprd10.prod.outlook.com (2603:10b6:806:34e::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.16; Fri, 24 Oct
 2025 13:11:22 +0000
Received: from DS7PR10MB5328.namprd10.prod.outlook.com
 ([fe80::ea13:c6c1:9956:b29c]) by DS7PR10MB5328.namprd10.prod.outlook.com
 ([fe80::ea13:c6c1:9956:b29c%6]) with mapi id 15.20.9253.011; Fri, 24 Oct 2025
 13:11:22 +0000
Message-ID: <7c01f1be-509e-4556-9543-1bf042f42914@oracle.com>
Date: Fri, 24 Oct 2025 18:41:13 +0530
User-Agent: Mozilla Thunderbird
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, kuba@kernel.org, davem@davemloft.net,
 edumazet@google.com, pabeni@redhat.com, horms@kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 alok.a.tiwarilinux@gmail.com
References: <20251023132507.1102549-1-alok.a.tiwari@oracle.com>
 <bdee4945-b299-4557-b83e-b62d9c387a94@intel.com>
Content-Language: en-US
From: ALOK TIWARI <alok.a.tiwari@oracle.com>
In-Reply-To: <bdee4945-b299-4557-b83e-b62d9c387a94@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR0P281CA0158.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b3::16) To DS7PR10MB5328.namprd10.prod.outlook.com
 (2603:10b6:5:3a6::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5328:EE_|SN7PR10MB6980:EE_
X-MS-Office365-Filtering-Correlation-Id: e882bc65-c849-434d-c408-08de12fed425
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7416014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dE9ndTZYcTA5R01YVDlqYUdVVnBuTEozUFVFalE5NHZNbW1hbC95TjhUQUp0?=
 =?utf-8?B?RitpUkx5Ui9DVHdqUDFlK3Z6cmFUVkcxN3VTcnJQVkhkNVM2NGtXUGNoWGFM?=
 =?utf-8?B?dk1EL1daeFd6WVhRWkcwV1lZSjVrTU5Fb0hyVGdsTythMld5V2QrNEpPVmE0?=
 =?utf-8?B?UDdEYWRlTG1hWEVBQmZ0a2NSZUpSc3IyZnVEcVhWdVIrc2RRaFhUTHBtbzVF?=
 =?utf-8?B?UHdyaTNmR2JYSFZvQkp1UFR4Wm9iS2VtUXo1UHhIeUV1SFJpdEpSQkt6WEFt?=
 =?utf-8?B?YWR3TGdJUUp6eGpybU9YR1lodGFqNFFZVkEvTGp5cHFZNy8yc1drKzNXSVBM?=
 =?utf-8?B?M1JoZWJUSXB4Wm16WlZqZEZTbGpJWklUOGdhYWJ5a0tBaTJaT2YrQUxLaHdG?=
 =?utf-8?B?LzFKamNudXdxdFd6eEZVNzlacDZFbnV4SnlWdWE5NVh5NGorOTJMdkdWKys4?=
 =?utf-8?B?TzYxTFJpTTdGTXliZk1JbktxcG40eVNkV3lwNm9aZWk3bGtIMlpWVDR6MCtJ?=
 =?utf-8?B?UWM2TEdVNDhaVkUwTEdJUHM0Zjl3S21FczhpOWZVb1dqSk5NVTRzdC9UaHZk?=
 =?utf-8?B?M2Y2SWd3ZWJmc3Z5VE0xRVU4eURody9JSTZnOUpMV2hHVURJMnJPbTY1VWRm?=
 =?utf-8?B?SHdOblVSQlphOG9PVmx1b0xzRjBFczJ1amJDZ29yVXBPVlVkTnFQUXVBTUlq?=
 =?utf-8?B?UVVRU2hacC9BU0duTEhaWmRwdzdOc0pPWlNMb3dRenBtaUxXY2JtRmI3TWd3?=
 =?utf-8?B?S0VjRjk0ZXFpUUd0dnY0ZlVxNm9KWllqcWJNMWlhZC9CWTR0NFFndWk3K1po?=
 =?utf-8?B?VEZsR1lZMGlrL3hPdmxPQjBuMmJMWms5NDQvZ2Rwd25jOUhMby9Jcjlwb3lt?=
 =?utf-8?B?STlTTXBEOGZxdFBmb0x2aWR1bXJxUnBlUGFvb1VhQldwYmQwdWQ3MklOUmZp?=
 =?utf-8?B?SlhHem5Idlg1WFcwa1RWS1pPWkdYNDhaSWlNd3FHYW1aQmVhdkdKUDJxSXZn?=
 =?utf-8?B?Q29jK1A0Q2YzR3VnWks4Ti9Md0hGTlIwNFhlMEpoWm9ZNGsrOXFzUGJRYTRI?=
 =?utf-8?B?Tys5UGxyOFFKWkR5UmhXUE55UFYyQXQ0ZHVTMHdqSmpLdi9MUm9VQWx3VXcv?=
 =?utf-8?B?WGloTExocVhJRFdKQzUzTGkxWGE2Ymc4UU1FUmVWR0ZpQjhienNaNVVRbS8v?=
 =?utf-8?B?eFI4L3U5VDZiOStoU3FMM214MUpCaUVLSGpSeVNnYkpZaTNhME9UTEdnZkx3?=
 =?utf-8?B?bGtjNnpuZ21WUFpSdTVZd2xwblhiR256SFd3bzY5Vm8rS1RQUjZiZXplRm9k?=
 =?utf-8?B?c2N1K0RrVE5LYWdLcUZIM1pHUUw3ZTNqQXR1NExiMjZpdmlnYnh1dDhub25k?=
 =?utf-8?B?eW9jNnJlZlI5ZEdoSmpmWHRrODh2YmphYXBFTUdkeFVSeVA5NmJyd3NIT3lq?=
 =?utf-8?B?QmdsdmdwS0l6TVltU1ZBWWhOdk1kN0IrS2pWdGxBbjhUdGJLLzB3WVBma2ZP?=
 =?utf-8?B?T1ZjQ3dRdlVxOE9wL09pdSsrcFBvaEZ5VXIxYnU1TDZvNE9xTFFUOFBlQU54?=
 =?utf-8?B?ZzNENDFCQ3JDS2VmUGNjaEhhQ3hodkpmMTVmL3JGSFUwQmNjWThvTVFFMW9y?=
 =?utf-8?B?U1lQSkZSYW8xbEYrTEdPWVNOUHdPeEsxVm0vM1RMQ3BpNkFUdFE5RXh0Ym16?=
 =?utf-8?B?bVlvaTNUUWFqQjFyV3dCak1lSTBJbWUrRzQ2UGNSNmtNLzZQR2c4eVpzK1pt?=
 =?utf-8?B?ZXdBR1pMUlkyZW9UYUZESHVhSG5tN0JYSmNPYWpjWkFRc1JtUTFPQXlMV2hz?=
 =?utf-8?B?YnlQRERrN3lHcUZ5N3IyNnZjZk1ud0VCU2p4UTBZaTFGRUU5WGFJY0hkYmF6?=
 =?utf-8?B?dVU0dFhZL0l0NE5MNm9hbXFFdHpMcjdGQWRPc1ZVWUJCVTNUY0dsTHBoM1Y5?=
 =?utf-8?Q?bg0WAqcsFqFmrMJBk3pC2E/EEY9V/fJK?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR10MB5328.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WVJwSTdBbnkxQkJGNThtY1J3Q0Niclpia0xlSUlnQk1QNXJxSi9GSW5TZkdq?=
 =?utf-8?B?dE1TLytybGNHT1h4OHNJWVY0NU1YQTNmOUpDQjIwWThNTGw5UmpqM1VuUEdK?=
 =?utf-8?B?cUlDeGxRVVpzWU1yaWwwWllLNFJCeU1XaDZRWmx2amo0ejIrdGcxZ3U4cis1?=
 =?utf-8?B?L2xYOWZIdWlUSVZTUDFZMGEyZEYwN1NTeVc4UzVlU0YyaXRHejgvWE5UeGt2?=
 =?utf-8?B?ZXhFUUZNUkJKWXY3Ykh2Wkt0NDV1aTlCckMycEltRjhJNjFvNVdCK3FNY1Q4?=
 =?utf-8?B?TmdDVDJkVDFKYXZLbjRpZm1qb1BYUVZkWjFtWkR6ZGFOTEdxV0ltL3dNRXh3?=
 =?utf-8?B?M0tzSHdRVEFxVlMyNDBJSERZTThOSVNqRHMxMWVuWElvVDJLRjhZL0hnMTdl?=
 =?utf-8?B?SDJDVW5TSEs5eUs4TXZ3YjNNUml5VWFzdDFQK2I3K25Mb3JPc05vT2x6dWFv?=
 =?utf-8?B?RWRlRmZ6VFNBRzIvK1A1Zkp4Z3dEZ0pHZStBYVNjbE9PeVovMzY2UHhuQ0FO?=
 =?utf-8?B?QlJJVlBoU2RtTU01OUFFd1hFYXpRM0Z4MjZwclhuVzhnaDFSU25LZEdhNWs4?=
 =?utf-8?B?Z3d3SFhkK2JRN000eVRoM0E2NDRwRmRrMlhma0NuM3ljbmN3bEtjbGwzOWE4?=
 =?utf-8?B?OWVsV2VyUzl5ZmQzdkhlM3pKeGV3S29GeVYyL3ZpR240bmlQVk9JT1pTMFpQ?=
 =?utf-8?B?dm05eS9HdmExaHpUTFRxSERjdVZrNXQ1NmFreSttK090REh1VWh3eVYvTGRk?=
 =?utf-8?B?TEJuWTNRYjRQTXFpZTFOSU5HVmlkUmNFL1F0S2xjMkhYSHJ0ZWczbGpUd0wz?=
 =?utf-8?B?Umg5MklJQmlEY1FwQTduVUJPbmJQZzdKbG5vN2kzUFVXSXFmUDBLODhGR3Ru?=
 =?utf-8?B?dUNLc1VNZXdEZTBDWTN0enV3RFRtYTJTTk5XNVpHcElnQVhJSGVCMXRHbkt6?=
 =?utf-8?B?SkVJeFJWVmN2NG91b25yckhkcWZZTmV5SjczUUJBRHRpZXJZaGJ1RnpmZjY1?=
 =?utf-8?B?UWhaVlFHN3U3Tkg5V3o5NVJFeWhlaEI5N1RtWE92d0dCYXAxRnVpempHbzNq?=
 =?utf-8?B?VjU0eG1ybXFUaGdCV3QwbjBFSFdIWDRaSGF0V1JJbHR3L2hERS93bFAxUjFs?=
 =?utf-8?B?U1NXU0MzZS9nL3BJUi9kaGJ5d2NzVTZDMXdJajdvZkVJYUNSSFJyYTkrdldr?=
 =?utf-8?B?VEZvMmNjVGFPbEl1ZDVzYlRwWTRVZlJFaGlzZ0ovSGJXNVBZWVZuZ2U1bXlU?=
 =?utf-8?B?aXBIV2o5U1dGVkhEbU50YStueVc1bFZpUGVScDNwUEtaVXFIeTB2Y2I2bzdK?=
 =?utf-8?B?dlF0MTdFRmxFV3VXTlJBZzRuZi9Bc1BKUTByM2I1MlZvcmxjZUFYOTRGcVRU?=
 =?utf-8?B?UVBXM0xmL2NnTkxwK1RBTVhzOGRxS0ZyN2VyT2J5bTQvTloyYjRjMVNtNTZn?=
 =?utf-8?B?aDJnQk9XWDdkZ2tDaFpCQTRrcG90YW5zK2tGUUZqNW5VNGRSczErNVdRK25V?=
 =?utf-8?B?eWRFZUhnbGc4Ty95eXFRUHZJL0hmV2ZxZjVMSWp0QU9ENDJnWndNZjhIOEZm?=
 =?utf-8?B?M0tkT1Jhb0xGamhIaDl6QXJabkJwWlpsVXNtUnZjUUhFRFowTVpZZnNyVjRu?=
 =?utf-8?B?YUJlQjVyd2ZKcUNsODBqYk9qSmFzKzgxYzNtdk10dDJhSm5ma2J2WEozZkdx?=
 =?utf-8?B?Y3FVa3ZDSzFvTUt2aklKaHNWSUh6Q0pPclFxRXA5V25nVHc5R0ErTm92Z2tY?=
 =?utf-8?B?TG8ybENPNzBMV1BESkFsNDNIMVpFQm1CYWp0dzg4SEF1VEhpbmFRbXh3aTYw?=
 =?utf-8?B?SFdCeklIZ2w0VHZ2U2dYWFRXcXJvMnhQZ0NXeWh2c2Fka21MV1NlYU4xdFBs?=
 =?utf-8?B?SllOMDRKVVNpWmpVeWxVNDFLMGt2YzVHVVk2aFZ3bklwWnBLdE9IdVYvOEZo?=
 =?utf-8?B?S2I1dEFWSVhXL3QzbXZ3citpejJ5T0tyME5paWpQRjB6eDNQL2ozY1B5UVdW?=
 =?utf-8?B?N242SkFrekV1SnUxVHJYNjdkemNEVnpEV1JMNXIzaW5pYTRyNTRnZVE3US9S?=
 =?utf-8?B?QmIyM0gwUmV2SHR0YlZvaWhlL2l6djY3cG9xd0pKUmpVWnN6VVpvSTMzRnR0?=
 =?utf-8?B?YUk2eEI0RWRmcTIya0llbUNleFE2T0Z6MWJlUW8vSU9OYXVnbzlleFVOZHZl?=
 =?utf-8?B?Y2c9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: Zegb03thO0bX5/glk0Kg3B+OtTlincRaKysGp7/azpNXSGDr4k3THEPAIkLPxjeGYFl3jOIL7w3FlpWuA5/M6ufIBAAzf0bd9NaYsdi/wnHmutnWU+gcUWLE5XH7BzNvqHqqvmT+jh8L0VjiB0029taKIsrxXtw37IeroLFhz1GE+uRA33HGWENd/8PgtI2TH/8ksHQ6uR8z7LSf8crf0i1Ng1FQA4Eudw35YLBNRG61ZWanOpW2XreBIK5RjZ92Xeqgj0SOr83FpBuBhwy+sisvm8RrNaAvLBQ7Mx5cCv+6kUj5+XruOtUGYoaTm7LwGvdrKoEwydc7ZXi2KSD5/zibZ0q6UgVMSTE2vdfohP5ZR7ino/ZlOG91kORzCI7irGLJor7Y5Z6Bk0vjJkDjt7rlWv0U8HkSr8q4Ln7gQGZF4+mHu9dWzwLljtBsx/vF8tvHlTK4U1Axj5KnPtX7C67yv2BE2u4POkg0P8BZU9+TIgr3/SeCmT918uBH6dDJluQLkb3ItQrjyqT3h0v4PgErcheYjk9HPZmc6DSgtrWzbgRrEouWz7/3/CfgjC5w5CwftuKqgz9N9fBLgfcVIOl1q6obsoSzbefwsrXxyI0=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e882bc65-c849-434d-c408-08de12fed425
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5328.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2025 13:11:22.6795 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2d0tmRKp944WI0IemZR5Iu1bjJkUkXYj9wrn31BfLh1LKPw60veC7rQX+qRxx/oMMdnDAC/+Wt8WDzj1Mn49uVBor4pNYLL+TWS4NkuzuVQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR10MB6980
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-24_02,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 malwarescore=0
 suspectscore=0 spamscore=0 adultscore=0 bulkscore=0 phishscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2510020000 definitions=main-2510240117
X-Proofpoint-ORIG-GUID: tKrCxj6ZeoytlQ2GDsjGR-8T73mg6ehE
X-Authority-Analysis: v=2.4 cv=XJc9iAhE c=1 sm=1 tr=0 ts=68fb7aff b=1 cx=c_pps
 a=WeWmnZmh0fydH62SvGsd2A==:117
 a=WeWmnZmh0fydH62SvGsd2A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=x6icFKpwvdMA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Qy5usYAGtJBgoF2e0oEA:9 a=QEXdDO2ut3YA:10
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDIzMDEwMiBTYWx0ZWRfX5USSFYKCngOx
 thfZj8IhMBqGec9Aoic93pPkB6uVRy9jR/1U5wJTxTmD9nAy/BqJbhukKuT0S8Efes+xmufdGNS
 E5o+1W7DUu3mldehl1MvwE0P8SVUpzJJmoOktxLKIl+GDNaIcaOp9N5AXpR6TH7ck/E+Lpyvx9g
 vBLT3lcr4dDpa1vxCbVuGs6vutcmNWFsImBJFqwl8Z0/w5e3R/Lx9N/AzY9BH38YuzJerlI/rcT
 LixRzGWQJYMP3X33OKv0AUzjyCmhRgd7gWeHWHTEL/fQt27c1dKume292plN8KZO29FJuz6JB1Z
 jhRxgrODEDQ+LRrUNe7KzgUn0mxWqsLjos32j9OdtgbAPuj8H8yOBJxRI/MnR0Esng3LM3xNufg
 0w95bX2fbmKZoJ06E8aErBdcXb0SMQ==
X-Proofpoint-GUID: tKrCxj6ZeoytlQ2GDsjGR-8T73mg6ehE
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=
 corp-2025-04-25; bh=5pu0DDMTleR5NQ1CoXGULF7ppbmw8+gedpq+06pQLf8=; b=
 b+NkPZchjA129/cxEU8+EJ9CtBU0s51EBDCBv5Yp3KPj8sa+iUhVt2Y89psfaTpc
 xZm/6HoJ+uKsdBlJrId2V6suKb4/ixg99Y5iYUarOo9hQgq0iGH8rENlIdjDluyn
 XkgWXjxriIgkhLVVycN24/SwV0RNHijoAt4aw99i6XirxrbunCaTIch79oT4kLLZ
 XZ+Q+fzPNxlaGkmLUe51MdFTozNnkk8aaccA6wynBw2l5XdrlfEJ6i/caze9V3sP
 Nd9/OjgIRvtBjuZ5Mk8Y4c9l5pv5gIp02QOnSEP1YnaMDlJTPYTlJsXp+GopjiQQ
 NTsLUdEg+IrA4i6zV9eLTg==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5pu0DDMTleR5NQ1CoXGULF7ppbmw8+gedpq+06pQLf8=;
 b=S7YcSwLgrOYqeKyBtWbvjk99fBenMWMWr0W3UcKL0SfuJvahGIeH46SLQj+E69gKdQPIRkB7hOsT7wdk5NIkAKgj9f+3R440TgDpdbD9ZUOWhxCV2FT6fKQcWo3HfP1KRG3RbNvoA7gU+uX7qDud99du1kry//0VLJbqfyxpo7M=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=oracle.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=oracle.com header.i=@oracle.com
 header.a=rsa-sha256 header.s=corp-2025-04-25 header.b=b+NkPZch; 
 dkim=pass (1024-bit key,
 unprotected) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com
 header.a=rsa-sha256 header.s=selector2-oracle-onmicrosoft-com
 header.b=S7YcSwLg
Subject: Re: [Intel-wired-lan] [External] : Re: [PATCH net-next v2 1/2]
 idpf: correct queue index in Rx allocation error messages
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



On 10/23/2025 9:05 PM, Alexander Lobakin wrote:
>> @@ -940,7 +940,7 @@ static int idpf_rx_desc_alloc_all(struct idpf_vport *vport)
>>   			if (err) {
>>   				pci_err(vport->adapter->pdev,
>>   					"Memory allocation for Rx Buffer Queue %u failed\n",
>> -					i);
>> +					j);
>>   				goto err_out;
> Both are not valid.
> 
> @i is the index of the queue group. @j is the index of the queue
> *inside* this queue group.
> Since one queue group can contain only one Rx queue and 2 buffer queues,
> these pci_err() would only print "Rx queue 0" and "Rx Buffer Queue 0/1",
> which is even less useful than before.
> 
> If you want to "fix" this, you can print rxq->idx for Rx queues and
> `(i * vport->num_bufqs_per_qgrp) + j` for buffer queues. This would
> at least print unique index for each queue.
> 
> Alternatively, expand the message to something like:
> 
> "Memory allocation for Rx queue %u from queue group %u failed\n", j, i);
> 
> (same for buffer queues)
> 
>>   			}
>>   		}

Thanks, Alexander. I will send v3 with both the Rx queue and queue 
group(j, i).

Thanks
Alok
