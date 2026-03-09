Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yALYB/okr2mzOgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 09 Mar 2026 20:52:26 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 07915240601
	for <lists+intel-wired-lan@lfdr.de>; Mon, 09 Mar 2026 20:52:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AB0AF40BFB;
	Mon,  9 Mar 2026 19:52:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aZvOBHnMtvDJ; Mon,  9 Mar 2026 19:52:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 27D0240CA9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773085943;
	bh=PMV8g8Qrqre3A4hzqVwzfyVbDg0I7Z6j0unqRlH4eLA=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=1b65uItZpbOJmma7XQaHI6Q/HsXfnbY80pnmxzuaCpd8R21z4/2M1S95j8c7905yJ
	 qGqEIFmOn3K8SqzR8g3wnlF74jw4r+sseFA+s4KLJppZdUsfJ0OaAHb1sn18uacOkc
	 TrVMVCCbPNqdaFWk2+T1kHDro7DNBT4FETd3Tghii7H216ibknYWr/RpIQ6qz9zetg
	 M7sG0o3L7hzPWsY+iZLtENnWDArQaq7LIxBfeUnHowhBicSItqzH6Tbar252Leab4N
	 YGV/TSV8MQa2LHt2dV+SrVuy+zkqBHlyMtRcSh7cvofbBqURqthg4tq4H29YFK22Y6
	 oiF3pvMF8ojMg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 27D0240CA9;
	Mon,  9 Mar 2026 19:52:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 4F51F158
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Mar 2026 19:16:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3473B6067A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Mar 2026 19:16:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nFCM5KmUZC23 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Mar 2026 19:16:54 +0000 (UTC)
X-Greylist: delayed 2329 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 09 Mar 2026 19:16:52 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 87C4E6063A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 87C4E6063A
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=205.220.166.238;
 helo=mx0a-0064b401.pphosted.com;
 envelope-from=prvs=7528f55892=chris.friesen@windriver.com; receiver=<UNKNOWN> 
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 87C4E6063A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Mar 2026 19:16:51 +0000 (UTC)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
 by mx0a-0064b401.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 6299wXuH2544593; Mon, 9 Mar 2026 11:38:01 -0700
Received: from dm5pr21cu001.outbound.protection.outlook.com
 (mail-centralusazon11011071.outbound.protection.outlook.com [52.101.62.71])
 by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 4crg62j3j7-1
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
 Mon, 09 Mar 2026 11:38:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vKm8WNwHFTkCYzxKUSKKVfIcJavuJU6cArUn6XGqwd56D80lgi31JKPEnseYAbj61esK1s4nkVbBuu+v/jU8wua1hIGPp+ACDosMuIXo+IUkqXSd4cdeufqur69yqzTu6K3BBYmN9k7/kfbCZMJlvApPamjv2XHLw9oZlBCTGVWVH0AcCjikC17Vu8Y2+w+n7DCiz9kKah95848OBK/illLcr/7izLnlCiM2M+8oyBz4s+vES+0pzehZT+PH8HXTnq9bScN5hVv9Q2kLVwM7RFg5aV7NGNEhabrIv4M7gddKsrWtNAPlwd70iFzcHFmeGiz+3/fOSeysbwxSK5n9QQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PMV8g8Qrqre3A4hzqVwzfyVbDg0I7Z6j0unqRlH4eLA=;
 b=azKhX78DzmxSvBzaIo5ERBhHX3y4WaxMJE1pBlu5nV1tFuCgrxX8f9xPgpu74/dT+eH32QwsrQJHlYtZ0udzb3ZtllAg9n/noxUDPX8JxyDXt+s7JqRHnykHihFpm7qDuZy87lCr/sNyOm6AQ2hmlj5UVUgW8c32Ox79hU9YCi+kfSFPu3l6jQ2q6Gy23DW9ig7lVjIpFjeUjiNvFkRAn+r4D1Fiau8b/WG7lBXN8yXx/E1i5jeRNAH0B64zGKBXPjTDbylh0+9DXvFcGuOCgrkVbZYqKIbuabyINPwvcs+DSsX2qIFY6KnfC7EVDXryY+nnkDUDTX7gD7g7HhVVGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DS7PR11MB8806.namprd11.prod.outlook.com (2603:10b6:8:253::19)
 by MW4PR11MB6934.namprd11.prod.outlook.com (2603:10b6:303:229::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.11; Mon, 9 Mar
 2026 18:37:57 +0000
Received: from DS7PR11MB8806.namprd11.prod.outlook.com
 ([fe80::8ca9:28e3:e6fe:26c3]) by DS7PR11MB8806.namprd11.prod.outlook.com
 ([fe80::8ca9:28e3:e6fe:26c3%5]) with mapi id 15.20.9700.010; Mon, 9 Mar 2026
 18:37:57 +0000
Content-Type: multipart/alternative;
 boundary="------------A2RDklgOgTxgqaXbSvxMdRw3"
Message-ID: <04025549-91a4-47a8-b874-eaeb35a429bd@windriver.com>
Date: Mon, 9 Mar 2026 12:37:55 -0600
User-Agent: Mozilla Thunderbird
Content-Language: en-CA
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org
X-ClientProxiedBy: BLAPR03CA0132.namprd03.prod.outlook.com
 (2603:10b6:208:32e::17) To DS7PR11MB8806.namprd11.prod.outlook.com
 (2603:10b6:8:253::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB8806:EE_|MW4PR11MB6934:EE_
X-MS-Office365-Filtering-Correlation-Id: 090f51e7-fdf0-4108-c64c-08de7e0afb7b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|8096899003;
X-Microsoft-Antispam-Message-Info: +3iI4bqsZggFDDlAMK5naaofD4WhTk+CUiJC2+LX7dalmP3WT7xQFjFCsZihfIo2h02WKUIT4+UwWnS/V8eU7ZkSokNaGmixpxcxvYrUt+Q7H/1LHicbXRCPhJbS02G6q2OwIU4/EnyDUQKeGDYF1qdvDlaKl7fd92Awlii8v1eRKsJyl43hq3aUR5nrj3ESzooDqxYSYdWtPx4sCW6T41Ef0uEB0gK0PzyHM0CNko5HmoswFGL3YstrDgKFobkw2tENcduF+obvH05kDx/YX/qLScMAU7qaRx7EdDOhKSTydxZMjUvTjNS1kmd1Sz3OTOvJGu0STQTqox00fIJ9ZNzs6xoHLN8w7uOhankBIc39ilm8o+VixjUaTsHE9KCV5fFMz3NXtm0voyb6w5QE8AV1WQGb6B1EKHwywZbmmGCV3NAuNkLz8WWDne7ORdaviUk0f25BYGnLkZXTwJP2QYQE7dOFCnZj3oQo1Gsqo9Z1y9uB5puvdfwifqcmmh7XKvZHcd9weIGY+ZraJAXAl37V0yOdoX/CNP7Mzxb7OOMu5vSy6PPmgJC+UNmPMy1qrakNkl6HLEWq6XYamqVEtppmW+RhpWM3PXG18DnOsyGLP4z+pgIYaI2POsl6CvERhv3ubGTQyyGPqbFeQ49KXu5r+GSyWCMnLA40S+b9S90kZrfZBrEy4dCPp2dKzg2wT6bKxCVGnvJavdKrZ5jU/qlzTZyuPeexi7HRDtRdaqk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB8806.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(8096899003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QkNacmhuNlNvNHdPU1lKZExJdEM3dkNNK242a2NXZ0hObkNiM3R0MFl3dGxt?=
 =?utf-8?B?Ky9aVTU2YmpIOWpuWHJGVlJtRWZKM3JIRFFkRmwwZkV5VysvSEd2N0hkcElr?=
 =?utf-8?B?VWdsSEgrQitZQm5BUmZpK09UODUrVXMzc0h0TXp1K1BQUlRCMEgrTnNwVEZY?=
 =?utf-8?B?clkvM0UzUW9kMnF3TGlnM1BlTktWYlZlaTVyeFkvSEN2UDVCQ0Q5STFoMnl1?=
 =?utf-8?B?eGlJVnMyTldZNHlnMGhvM2VnbXIrRmovUm5RUEx4VFBmSGQwZXZ2bmNXSWtO?=
 =?utf-8?B?Z1VlQ09wZGF1eGx5Y3o4REdVZVE1eFM2RmR6dTd2Wm0wYzJzWW82T0hBaVJW?=
 =?utf-8?B?YVU4VEZMS2JGTjJ3ZWVZODZ4OTdxdFhnL1pIQjBOQ0N1SXR3ckZyb3hNY2Rk?=
 =?utf-8?B?V1cvTVlwTEoydE41ZWkvb1FEU3RUR3V4bEh5RlZPcXMyYW9sQVhlK05NU2Zn?=
 =?utf-8?B?dEdyNXNSamRjc243RW41V3A2MENxaUlRUjhsQkxJdTRlaFY0ZE4xUjVhRnZK?=
 =?utf-8?B?VFhSeG9UWDQ2YmdiSHhlU2h0ZER1MlRZdzJ1M0ZmWTQvbEZXQTlGSkhtbC9S?=
 =?utf-8?B?VjZJaFVURWRiVGlOUzFIbjh1eUlXbmJMR3B5M2ZBZjU5OVUvMzIwczdVK3Ji?=
 =?utf-8?B?Vm9ZcmJ1RkpNUWxhUmtzWFVxOERqeEwvTUZsNm9La1J4d3lleFpqc1l2bmMr?=
 =?utf-8?B?Nk16TVhyUVk5VmU3MmlBNlRQd3VyYVZHVGQwN0dnWVJ6WTRsZExCb2tvS0JN?=
 =?utf-8?B?YysxLzU0aUhTWkZLSkdqMWF4RzY1L2pNU0ZtYUZBeFRXWFc2OUpwLzJEaW94?=
 =?utf-8?B?ZjhDZlFkcG1VR1k5ZEc2QmhLLzlmNHFuWTJQazdyb21QTmJMN0tKbW1TeExN?=
 =?utf-8?B?MUd4SjFYWlR2cEZmMVNScVU3VXY1ZVF2N1hvYjVhMGplT05BQWV1K0RKZW1L?=
 =?utf-8?B?aHVQVndoMTV2dXc0Qm56UlJPQnpCZ1RxS3czVUdjQlZBNUpQNm9RUktZZDVQ?=
 =?utf-8?B?WDRJWSt2SGpHb2JaNWN3TkNrSGN1TGNZQ251SEQxY2drR1BFMXA4UE8vdWoy?=
 =?utf-8?B?V3g5RHpMczdqSEcyWmkzekJaa0Q2Z1h6SHVQVTUwSUk2MXhxUTM4bG53bTZv?=
 =?utf-8?B?Qm1xeTFXUHdGMUR1UEE2WTVpU0E3UEFPQW9WNUNOVkhLcHQ5c2RMUElSdDFC?=
 =?utf-8?B?K0w3dnpoaTE0QUdpS0UzM29ta2J0clJBakd5TDFRZERWaWR6Z3I3N2hST0Jp?=
 =?utf-8?B?dFBHY3U0N3R4ZzFoREcyOWo5ODdIMU5MYUdSa2FFdUFRMzVyZHYzMndDVUVk?=
 =?utf-8?B?N2tnTEdMMjhTWTg4UHJiRzlENHVpNEF3bDNVWGNNeTl2Q2t4N0JQb3pjd1Nh?=
 =?utf-8?B?SDNWK1hxTXdYWjE0WVRwSml1c2JFdEpzWHhBTElpNDM3YzNwS2tZdW1KR0NB?=
 =?utf-8?B?UUFjNWNTdGZUUmxUY0RYY1ZsOElPZ01RYUIycmFSS0U3cnI1aGlNRVFlSkxS?=
 =?utf-8?B?c1M1MDZtZjM5YUp2U0N3Q1BYYXRmQllYZVpLN0c3bW5ma1RxZ1d5RlQ4T2tC?=
 =?utf-8?B?WEFma0dkaTFibmRwVlI4UnIySVFYVjJWZmtTeVhYbVl0UmRrNXFqNDVzMzgv?=
 =?utf-8?B?NXU3YWtyUC9tVGJJSER3RFA2M3hLbEhFQWViTUpTK010Z0lxQmszS0NWeHo1?=
 =?utf-8?B?ZE5HNFk1cnh2WWFkNm1FU1BrSUpOTVorN25pa25RcHA2TWFoSjNhVklTUEFj?=
 =?utf-8?B?MjlldEQ3Sno5SHVyd1ppWDNuc0tHbkpsRDZ3RWgwZ3BLRS81YVViYTJtbnhX?=
 =?utf-8?B?c1I2NTh6U0VEcXpvUnFwSy82blhmTGdQWnZLQ1BIblpwT3hvU0s2M1g1cWhl?=
 =?utf-8?B?WkRrMWhoR3RLV2ZLMlg4aWk5NXJaWU9RUXdWOFpJV0lQaVg1R0t6WVpndFpT?=
 =?utf-8?B?dkk1WkxpZU1GYnNMdDBSVTRhUXFhT2JGUW1sbDlqZER2SW40WlhVcmtQd0FS?=
 =?utf-8?B?dDZiZyt6MCtTS0lSZVByQ3EzN1A4aVFGaEdWamxHWTIzS1YyaFRPdXlhSmZN?=
 =?utf-8?B?QXFWYWNoNmZXdHVsUkNrWThXb0pobllOR2U2Skk0Sk82cDJjYms1UDZsNEVr?=
 =?utf-8?B?S3A3SDl1T1ZuVzE3ZHYwYis0OS9wL3UvaWFtbGtZSm41cU9aQzliZllyQ09G?=
 =?utf-8?B?R21SVHRwV3NPYlRCYlJJNUdlbHFHQzZHSFI0S29lbXBCRksxRlhiWDI2c2pO?=
 =?utf-8?B?a3R2aE5xWFlMRGJPVzNUdCtWeWdJemdFWEtlb29YVzlCbTQ4dHpiczZNQmJx?=
 =?utf-8?B?VmVoYlJVZ0dLVlFZTFI0MENERGJNcTJTWk1yaVJYMWZWTnlpOGNUYzVnV2Qw?=
 =?utf-8?Q?EyLeueVHwmGy693s=3D?=
X-Exchange-RoutingPolicyChecked: DEbbXrOqhZmeUQVnQJ9Xs7IzUnXK4P2+3HK76gPAQjHq3WQ1Za3ptCAuKHv4CJLo6ZdmzA67dmkWqWZQdE1nGocedkI938R6bApwV4bqlcgWf8Jd63w57I8AGfRYd+ExrKzKPByFxvBEOYXbXhMaRwFae5JSQPzoFyltIjMk5TL0UMdCbmopA7D1lWezrTZC6OkpkW2rkaLjH1WPoEqowDQ+hKKkS98VpENsAgcw4bVOWa22A12d1kCS/rcqpD0xnEReVvKjbw0AUJ5+YJ6YweHWXiGjprgxdkJ+VxpWEXjNtGx1nq4V9++TuHwyx7zTer27rdYKnxfwulCpMZoBJQ==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 090f51e7-fdf0-4108-c64c-08de7e0afb7b
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB8806.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Mar 2026 18:37:56.9184 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: C10WR5OzZyf5E+iZujx9I3KK+mgWl09Wt96lgaV+Pk70OLbcbYrPJxADL+gDqVBv89kpTAX4wm+mDEYKWEvH7ZBvNxvAypIibVCEpBiE/xM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6934
X-Authority-Analysis: v=2.4 cv=f4FFxeyM c=1 sm=1 tr=0 ts=69af1389 cx=c_pps
 a=7iDNbrykdXu3VEpdGPV71A==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=wbtW7aiR2XtdD99h:21 a=xqWC_Br6kY4A:10 a=Yq5XynenixoA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=bi6dqmuHe4P4UrxVR6um:22 a=HK-ge7EqtdluswH-FwHe:22
 a=BdaZqpZC49-sIWRWBvAA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=YV97YQdb3TFz6sEW9pcA:9 a=_W_S_7VecoQA:10
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDE2NSBTYWx0ZWRfX7JxuPQkfb4Qf
 uyrekg14ZOYZvHWEyWlQ3MpB5jsSjtA38mLX4C56BKJQAw5g3OqLU6MqMuzAGSs4c3WBd3fa/eq
 42TxFffvoyY9H0sVpr0A4EQsijwpN+KoByL2HYbEwHUinT5Wxvi32vqW2etg84/M5B2bgltzO+4
 onTG/nBmST6lGSTMvZ0UrpM8COGbe+rmmBVb5ZG23dZ7R/HLQJHj6x6jmn796aBLWTymvfYtizW
 uqTYKmcFo0cvDftExgLUja7J4FfryJPCEvpg1J5ouNnlBylw2S8XLSh8DQweWbQMlDb48vjKqtt
 sUI0ZQOr2+LfOuw6qHpPypXi+r/FQIr5PPEd3KU2rn765kerprGQXgwCW0nou7NQURrbGntlCMu
 b2Pd1cTp9JRcTkG3wZH5bX3rd3nvd5d392we7ZcudHYcoupcRoHAfvw3Q1e8fhC6Pw2V6vIJB2S
 wkLQ9zCtwSGjh7MDGZA==
X-Proofpoint-ORIG-GUID: HuuiVqnQc5tjjue09VCL8X32_jwMxlPp
X-Proofpoint-GUID: HuuiVqnQc5tjjue09VCL8X32_jwMxlPp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_05,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1011 malwarescore=0 spamscore=0 impostorscore=0
 phishscore=0 priorityscore=1501 bulkscore=0 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090165
X-Mailman-Approved-At: Mon, 09 Mar 2026 19:52:22 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriver.com; 
 h=content-type:date:from:message-id:mime-version:subject:to; s=
 PPS06212021; bh=PMV8g8Qrqre3A4hzqVwzfyVbDg0I7Z6j0unqRlH4eLA=; b=
 e/5N/E4P0415g1kODfzUAExbtUg3PwwUdqjhYzNcBD3LGHHg4ZqptjNjoW825/ki
 EKBAhL+BzBA8C5j6LzfAMHD6fX4E84ZJYJFsAy5qwdd5NRLEc9bvcrHqV0GliXus
 0hx09zZU/2U0rvEYKw2Vx0+I0BCvrEPpAS2+lKACYxawO5Oo50k+KZU6tb8s2ATo
 L0Xy1JpoFSY7ZU2pxM6a0tDy2R6IjZZi9pq/6ydYCkFCwoGH4BNspwhZIAtWIxj+
 Sn7lk9LKkPYsGSFhZ1Gx91dQ9sx7bZ5UMYTF4HrWW5eG9H8OD+cRZKHqFKNgL8Ur
 Z+LBvfR68ic+kcrTmLgbsw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=windriver.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=windriver.com header.i=@windriver.com
 header.a=rsa-sha256 header.s=PPS06212021 header.b=e/5N/E4P
Subject: [Intel-wired-lan] is there a way other than PCI IDs to distinguish
 E810 from E825/E830?
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
From: Chris Friesen via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Chris Friesen <chris.friesen@windriver.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: 07915240601
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	SUBJECT_ENDS_QUESTION(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo,osuosl.org:dkim,windriver.com:replyto,windriver.com:mid];
	DKIM_TRACE(0.00)[osuosl.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	HAS_REPLYTO(0.00)[chris.friesen@windriver.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[11]
X-Rspamd-Action: no action

--------------A2RDklgOgTxgqaXbSvxMdRw3
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

I've got an odd issue.  We've got a request to use the in-tree ice 
driver for the "legacy" NICs like the E810, and the out-of-tree ice 
driver for the newer NICs associated with the Granite Rapids-D (E825/E830).

Is there any way to distinguish between these other than the PCI device 
IDs?  I'd rather not need to maintain a list of devices and need to 
update them every time a new NIC variant comes out.

Thanks,

Chris

--------------A2RDklgOgTxgqaXbSvxMdRw3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p>Hi,</p>
    <p>I've got an odd issue.&nbsp; We've got a request to use the in-tree
      ice driver for the &quot;legacy&quot; NICs like the E810, and the
      out-of-tree ice driver for the newer NICs associated with the
      Granite Rapids-D (E825/E830).<br>
      <br>
      Is there any way to distinguish between these other than the PCI
      device IDs?&nbsp; I'd rather not need to maintain a list of devices and
      need to update them every time a new NIC variant comes out.</p>
    <p>Thanks,</p>
    <p>Chris</p>
  </body>
</html>

--------------A2RDklgOgTxgqaXbSvxMdRw3--
