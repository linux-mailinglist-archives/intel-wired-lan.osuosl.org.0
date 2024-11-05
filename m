Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 012149BD84D
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Nov 2024 23:16:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 40DE140631;
	Tue,  5 Nov 2024 22:16:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9curTFfMhXd7; Tue,  5 Nov 2024 22:16:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CF54F40621
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730844986;
	bh=Gnm/k+YfA+mdzCPKuejTz++7oOE/gUj4eqoeYbOpRBI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=p9c0236s5TK80Ntc4TpZrt8wuVz+BszJMmgKP/X0gFl/qHS3HA59hROr3uYgtPRKY
	 z5Epdc7r7nBNMrFrZAMCSwOy1v4rXDdOl2raXq+6buZ36LJoNWeXSE/kOPcm3v9yGH
	 0xDZdJQi/vBtQWxhw6j6QjfKw2Nnn2rryB5keMYDKKPh01KpOhvlp/mF18xZwlEt2r
	 JtBKi3ltYCQEQhhdRtCoBObRwHv/vbKt6amT3Uc8w6BiLLnHOhH/3TLJWBgh663LhE
	 PIGeT1Qt17Fiwx6QBXtoIz0PflXPD7h9ARjRJ3WtHiJWRjYA3VlVzqj8QxjvWhERNz
	 +5wVUPis1qlSw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CF54F40621;
	Tue,  5 Nov 2024 22:16:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 85FBC3B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 21:53:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 72C554018E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 21:53:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jF_xT10fqK8k for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Nov 2024 21:53:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=205.220.177.32;
 helo=mx0b-00069f02.pphosted.com; envelope-from=yifei.l.liu@oracle.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BF1AD400EF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BF1AD400EF
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com
 [205.220.177.32])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BF1AD400EF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 21:53:43 +0000 (UTC)
Received: from pps.filterd (m0333520.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4A5KfXp7009947;
 Tue, 5 Nov 2024 21:53:40 GMT
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 42nc4bxjm6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 05 Nov 2024 21:53:40 +0000 (GMT)
Received: from pps.filterd
 (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 4A5KTNf9005170; Tue, 5 Nov 2024 21:53:39 GMT
Received: from nam10-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam10lp2040.outbound.protection.outlook.com [104.47.58.40])
 by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 42p87b4wjx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 05 Nov 2024 21:53:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GpyjEF07kb8QouPmt9MKQxdn8dwZRevYYkkyLto/HLnl7/81Ok69kmlvsaSEj/PKyPnXvbFk2v5aD2vmUU5LgNGXUzc43PPsnkX05dqWS4LV3Qu5sIKz4X0r+0IH93goFEG1mI8e3Pe68BUdhhQ1Jsj0lmaYz1dkcjcFLpKJICTMXQZmJXsR//VPM+RutGCORXg4iAS6e5b9sgGPj1y9I4GjyMs8WCsvNX7+LpXTs0+udVfLB0CHydoJDxBZqvOLFEb8FyzaedcgLBoP8diYw5m7dfideXZfCP9l2mvcOUheLtoyBEBY3Sj5sVQoRtPFBS6yfAXp/O0VcU8mBK69dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Gnm/k+YfA+mdzCPKuejTz++7oOE/gUj4eqoeYbOpRBI=;
 b=WZs51AathFHm9fOW1D61eszIPWuPJLDi+KhvkgxQ5lrLxGJy3lmALsmUOWT68ege87kcf2eSto28DCVSZ6hQwzjVVsnBza/gYFYDNy+nDAnzRP0uEDKyaU4V5ERtYH0VRlecXPGj8FmPPNq4+ixNI+s1jv4/hT+nKxuym2zJmByNgmJ5e7edNQbegrMMlV49qBJKXN/dJ54J+0R3ROZHwmyJIFMFKwHtX7kbnpOgoltDWK4StTh5a+V2yQSWLXsDQ/iEhZQSmpiRfEiHIVe35LgG9VZdmRoXpUa87wjPJwEL4aqcJ2b3FBDzFedbsd/PYAtV+2/oM2mGQeVYji7auw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from SA1PR10MB7634.namprd10.prod.outlook.com (2603:10b6:806:38a::17)
 by DS7PR10MB7277.namprd10.prod.outlook.com (2603:10b6:8:d8::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8114.30; Tue, 5 Nov 2024 21:53:36 +0000
Received: from SA1PR10MB7634.namprd10.prod.outlook.com
 ([fe80::5d7d:6585:d28f:3d9b]) by SA1PR10MB7634.namprd10.prod.outlook.com
 ([fe80::5d7d:6585:d28f:3d9b%4]) with mapi id 15.20.8114.028; Tue, 5 Nov 2024
 21:53:36 +0000
From: Yifei Liu <yifei.l.liu@oracle.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
CC: Jacob Keller <jacob.e.keller@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, Jack Vogel
 <jack.vogel@oracle.com>, Ramanan Govindarajan
 <ramanan.govindarajan@oracle.com>
Thread-Topic: [External] : Re: [Intel-wired-lan] [PATCH iwl-net 2/2] ixgbe:
 downgrade logging of unsupported VF API version to debug
Thread-Index: AQHbLPQM4OWkHqTok0OKaw0B8zf0JrKpQF+A
Date: Tue, 5 Nov 2024 21:53:36 +0000
Message-ID: <D1B23649-8296-4DB7-82FF-25AEB4C7FC57@oracle.com>
References: <20241101-jk-ixgbevf-mailbox-v1-5-fixes-v1-0-f556dc9a66ed@intel.com>
 <20241101-jk-ixgbevf-mailbox-v1-5-fixes-v1-2-f556dc9a66ed@intel.com>
 <4458eca8-f0e8-485f-9b7d-d5d17105d090@molgen.mpg.de>
In-Reply-To: <4458eca8-f0e8-485f-9b7d-d5d17105d090@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SA1PR10MB7634:EE_|DS7PR10MB7277:EE_
x-ms-office365-filtering-correlation-id: d1b576a1-a52e-445a-20c1-08dcfde44cd5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|10070799003|376014|1800799024|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?RzFCUFRQRjROVE9iQWxXWlRzTlZibUxtWlVMcXJxcjNYWnpJSEhyMTJzaVE5?=
 =?utf-8?B?ZmdBRnhDSEdYbVNzYTJ1RWdKbko4NVZzbFBidHZkMFhUWXZTRlJKNFk2dnNM?=
 =?utf-8?B?ZjljTDlFVi9jQkFnNm1kZUpzaGZjK2xNdGZkck1OQlo2Q3prTVlHbDlSNk00?=
 =?utf-8?B?NTFpWklFdFhuNlVqWnAvYVBRNzl4cC9WT0FHVFVETW16ZjZFUGo1cEtYR25a?=
 =?utf-8?B?V3Q2UDA5L29LYnJ4WU5LVFhSUHZMWUtqR3l5VVdRNk1wOVFJTVFMbUN6OEJz?=
 =?utf-8?B?c1V3NU1nV0pubE9qVW1BVzZNYkw2QTczeUw1b01UdVhyczRweGlxSXFXUTZS?=
 =?utf-8?B?dHZwcnZSU0JQWE9Dd2FqbWhpY1ZxdkozYllEZGRPOERTTkJaSFB0NGhiYklw?=
 =?utf-8?B?akF2SHJvN3I4amc0ZWFqdmtHVVowR0VxbWw2VEU0alFYY1FDOGd1QVlOdVZG?=
 =?utf-8?B?NHdmcVB4bkQxNlBqTUxpQXJsWFlGUStnaUZ4eWtKdSt3RHpOazk0MWJqTGpi?=
 =?utf-8?B?STFaODR4WjI1WjJYQU0vOHdwQkJEaFVFU1FhWVJYRFVyS0l1Sm5DWVNpQUpp?=
 =?utf-8?B?NnM0NkVQSmd5Rno5QVlJZWdNajBXWWJJZksyUEpGV1JpNGVIVlR4dVhUY0Nq?=
 =?utf-8?B?SjZnS2lJNldhalpBanF6WFMra0puY01xVXZlamtSNE04N2VzbjVlQ2FwalFK?=
 =?utf-8?B?dnFLZEV4RkdZRHhkM1VqTUJtZHh6bm40RngzaXhmZzZUUzZVQW5RQ21QbG80?=
 =?utf-8?B?NVJtREFiZW9SY0hlVXhGVFAvbi9lWldhZ3AycHJ6NXRrUC9ZdzFtam9pZDB4?=
 =?utf-8?B?WXF6Zk5HNUZ0TWkycEQxVG41bXU1UnUrdnc0SVF4bVk2UmZkZ0d4Y0hYQlZJ?=
 =?utf-8?B?VzJFTTJ2eklWUkZMTlNwRjUyM2Z6TlRpYXYwRFN1dGNQaWZ4bWVnWVN6ZnRa?=
 =?utf-8?B?R3RjY1kxdmREdHA1Z3dCa1YxT0haZDFUalZ2dm5uTGtkTjNXUUNxbCt2T1Jv?=
 =?utf-8?B?c3dUTEtIMHhtNnFUNEtQVDljYWQ2ZmJUK3ZmOVhuY0YvYWFVVzlNdW1FTU8y?=
 =?utf-8?B?YURkWUdaK0R1eW53cndOK0tQOGpqOFRXZjY1d3lIRTRzNmpDNFRxL3lrWnov?=
 =?utf-8?B?VjN5L2JCNUZwYlkvQ0lZNWhVdjdpbStZQjJoQVRscFhKTWpmQzZGOE52R1pm?=
 =?utf-8?B?djZXdUhZYlpNZmtsUFg4ZWRkRCt5T1BPUkdwbktyaWErbU16V2phbTJOYU4v?=
 =?utf-8?B?d0VxN1pmNUVyU1pUdW5SdkY0WXlNL2dFMW9VWFZRVXEvSExjMTdlM1hPbGps?=
 =?utf-8?B?bXJqUzZnaU5xYjRiRlAxN1pzYi9sdHI2S1dRa2pvQnFqZkxVeGVaL1BaODFr?=
 =?utf-8?B?eU01UW9uK3JuQURaUUdCQWRKRlJsa3g5Z1JENkg3UG9HUm5PYkpweVlpTjU4?=
 =?utf-8?B?dEt2cFhOTTVqeVVHSUVkM1FRQ3p2UmhsMDNrRWdQWk9VS2lPcWlieU45YXhN?=
 =?utf-8?B?VzMwZW5HcysreUZBcGNQaFozMm5DVjBMZ1paeUZiK2pEUXR3M1lZOFlIUWpO?=
 =?utf-8?B?QTdUYXBvWXplSUhqcHF4ZzF2N25vM0VVVUk0bDJwSlhyYWZmT3lFa2lGTkRZ?=
 =?utf-8?B?M3hBWGFmcmVvMS9PMnVpMnVvdTNFTUZiWmxLbmRGLzM4S2NnNkJSVXdURFdX?=
 =?utf-8?B?K1cya3VvT09QZEJFYmpjbGxzcFUyMXhWQWcreDJrdVNOQURSM2pHWnNDRUl4?=
 =?utf-8?B?YzVIZmFyNzE3S2YyM1BtWGptRU9pYWdsTGJRd2JPNGZYYXVKelkzUGxDQWlu?=
 =?utf-8?Q?y/n/Bbhs3e27dKKjYLqTdBxLWA1V8HtRAQmyk=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR10MB7634.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(10070799003)(376014)(1800799024)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bzVVSy9iVE1oZ1M3Um5EZjR6cmc1aVY4alJSdUJsaFBMWithaXM1enUvWnZ4?=
 =?utf-8?B?cmE4TjF1MTlLNy9PNGJudGhOeVpyZDNGZkw3Zmg2MXA2YUNXOFkxVU5hcURF?=
 =?utf-8?B?QkxJR3lWUGtvVTNnSk9hZzVoSkhmWHFIVkZuYTRBaytUK096SkFodUpTZlRk?=
 =?utf-8?B?S3VIRDZBMW4zdkUybzRZQnd5OW1VVnY1cVFhVFdPbU0rS3pwZGRoT0FZcDhx?=
 =?utf-8?B?OEJFUUFmWXdaWS9wRW9kTkE4WGRnWEpnNWp1ZEkwSGl2c25Fdk5ldjFLN1RT?=
 =?utf-8?B?WUo4L2l0RysyVzdKYzlTMWdIeUtLUk9mc3FnUWJydTl6K3hxY3djRnRqQzh3?=
 =?utf-8?B?T3lyVXVQV25maFdsY2JnR2M1OG0vNTlyZkpqNzVweE9VT3RkeDBJNFhYU0xv?=
 =?utf-8?B?bjQ4Y0FNbk9yc0o1ZmdXOFlyZkJpWXRjSjNzNUpHaG9XRWM1VVZUSVdUaWY3?=
 =?utf-8?B?QmZTMnVQbE1IQTRhVmdlZDVPa2p1dzNzT0ZrZjZzRXdPdGk1cjhiSCt3dyto?=
 =?utf-8?B?elhjL3RJQ2NSSkIzTU1JZ3J6ZGFZQ2ZkSXdOMVRHSnkweEVybWswWTM4U0hY?=
 =?utf-8?B?WWVNUUFjaE9QM3NlYysyTGVvMVNzWEFnY1d0a3dyRjh6ZnBkSFI1cit4NTl6?=
 =?utf-8?B?Ry9ZMVZ4eVJMZHJJWkx4VWpGSUtRSlEvUkZabkhvU2pMc29vRmhKZGNpZkVC?=
 =?utf-8?B?b2pLaWE5N2loSThJNnJaUkVWbDNxWC9vUUdIWEJ0azBWY2pzZDJlZkdOaTBv?=
 =?utf-8?B?V1FtY0hQcWdBWXE4Y2JPTm83Q0ZKMk9XMkhrS0FWeTB6Yko4M0tFSEtLalFT?=
 =?utf-8?B?K08wOWs3MnAranJYcVBpWWI2SzB5V01GeHpNTTE0eGhSRkJxMkpXNEtPWHhq?=
 =?utf-8?B?RDAxK2JTNDltM3lMYXZjWVMrL3NuUzVKWnZTNmx4UGo1czVtcWJDeEtXV3cz?=
 =?utf-8?B?M1Q0UCtaVGVPcVg5WlFkNFZUR2N4U1NLMlJPYVZoRHJNeUtsMi9LcmN3Zmtp?=
 =?utf-8?B?VHVoeHFwcEVGZTdrZG5QVytUOU05aHUrWTdFSGx2ZHNSa2puTXRMTTk3eEIv?=
 =?utf-8?B?c0p1Z2pNZU1NbkpJWFo3ZlYvOXY3dzZCWnV2VEdtakN2aDJza0t2OUswZ0xC?=
 =?utf-8?B?K1MzbWl5MWQrWXFVNHlDL2F0TGNJZ1BTNHBmV0xaaDc1NWVEYnlKYWxaYmtF?=
 =?utf-8?B?cFkzcm8vU3I5dHJwaWl1ZklKQm5Lb3c5R2xpNzkxUFZJRmhXUmxxMjlSMVlp?=
 =?utf-8?B?ZWJ1TTQwUllXbldPaW01ZlBsOVpEN3YvM0FvcU52Q3Zyb2cxRkV5YWsrd0cr?=
 =?utf-8?B?RUtNa2tEdmg4alJIbWtKWUUxVGVSaFJXb2o0UkJ6YW1SOEZQa3hqUXFkQnpm?=
 =?utf-8?B?Rm1wbkxoTFU2ZDQ5c20ycTM3am1QK3lFUWk4aVZDWGhERXhGVklUZTJQTHIx?=
 =?utf-8?B?OEcwaE1CTlI4WWw2Rm1PL2RuNVg5cjNDZ05IYloxWnpxV2lSbG9aWWQwVUV2?=
 =?utf-8?B?SCtoRDZRRFpuRXFVTkphU084UEhFTU43MkQvYjFJL09raVJ6eWRmbnB1ZytO?=
 =?utf-8?B?VmJjZk5FUjRoL1dSV2NNb2dFMHkzV2JHeGlEbEQ2bitzMUFNeFJjMS9yWXc2?=
 =?utf-8?B?Vm8rMkRiTUwvSXBQWTF4N0hJeEsvVGJ3a3hCYXBZUW04MGtLTVFobDdaaVNK?=
 =?utf-8?B?KzBXcTduZXhYbmVRM1g1R1N0OHlMQURHekZaTldSN2lET0ZrdThUdWNscldk?=
 =?utf-8?B?YTFESVVnZ0QxS29vVGZzdU1yd1VrdFluUnhpMGdMdG8yYkZEWTI4Wm9JZjNI?=
 =?utf-8?B?WVlmVFZaWmJrUXlYK3RmOVBCeDVoNVBDZTNWVnRUaXIybjZvT2pSL05xTXpJ?=
 =?utf-8?B?Z3NFeFpPMkNWK0o3NmdydUFDaGRIKzRwRVV5UmVnZGpVSzdnUDRKZ0w2SEUx?=
 =?utf-8?B?eE50ODZWRFByUWN6b1RXNlVEVTBpOTdiWms3MXYrQlpjK3ZXbDFlY0VsNC9Z?=
 =?utf-8?B?b0Y2UnJKRW93UEVqS01HQ1pyanJZb3hHWE8wVmozdk4xZktsN2JsNDdlcDl6?=
 =?utf-8?B?UW9zajZocG9Mc1UrNDJ5SVphMnhRTEt5dGpBd0NwWXpmSHAvNGR4SjRaQitB?=
 =?utf-8?B?L3JuNjNuMm1TR3lFWHpLdGs0djRoOGIvKy9CVjYzMEpvME5IK1ozalJpNXVH?=
 =?utf-8?Q?A6j+gDPe2W3MBBQgk70UlHQ=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <4C161893DE6A0B409DA62A99B07F3C15@namprd10.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: FecmeURu91eBYUrbuI36fWgdimPI/Ij6FNstwRR4mnhyjdZQyO8EoRli3JTqULsclFPqq7KAQLLFf2lEvly6hHiqiaB9D0JIFmRZCESV2nNbeHfPMYUs0piQjxEZMGQ4uwimirPpbmqDnfzN6gN4NmSv1Uygj15mas80xLwGqG45QxRyyxhsHrwNxhOkcBbI4CuEkTMNed6NCXt14mMgOr4vGP4Vn+4EZ3/CDDxwVY4mAoSiqdAcFB6AKn6AeJ5CFxD+pRBYVzU1mSmnq1cv2EsoLbisFfK51ZoNfZDp+naVf7Nkgf17ykAHQ6FxKQPrf5+kUDRPLJuI2hsivETlZMk8eQ1KiePY3bAdlYwQSjgjN90P2+JjlLItDL9tT0So3gMBgygU90gM9Ef3dlY304PfIYSx2Smllxl0rCM3H6+UptwbGDt7EX8a00alRAxecSmqVN6CvmXvEVKNSvq0RjBtvcaGJF5RBHhEFYE3lkcmLuod+MUPHX4doC4D7rumroHVP7/8ULmrFTqaApRFxNzvHYoLYONahrkWppRJejtTif1a1Umr8Pak3hdctjZhXyyZmxWRq/lc1WErXfcxotX/PFKOebHn8vyCdNBjmes=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA1PR10MB7634.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d1b576a1-a52e-445a-20c1-08dcfde44cd5
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2024 21:53:36.2606 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VaQQ9CbED6rxGj2+HEGSWqfYTWsqb8/xKjAIySP0RlAcZCWGTrIWhS02bBc2jHZJp1h3mHhn4jTXfYPe/NRjgw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR10MB7277
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-11-05_06,2024-11-05_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 adultscore=0 spamscore=0
 mlxlogscore=999 phishscore=0 malwarescore=0 bulkscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2409260000
 definitions=main-2411050169
X-Proofpoint-ORIG-GUID: VjacwHz-Dbwid3pZOsZWr-b6vodTNqHG
X-Proofpoint-GUID: VjacwHz-Dbwid3pZOsZWr-b6vodTNqHG
X-Mailman-Approved-At: Tue, 05 Nov 2024 22:16:24 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=cc
 :content-id:content-transfer-encoding:content-type:date:from
 :in-reply-to:message-id:mime-version:references:subject:to; s=
 corp-2023-11-20; bh=Gnm/k+YfA+mdzCPKuejTz++7oOE/gUj4eqoeYbOpRBI=; b=
 Yb4vOyp8jhISK0jAvWj95FLNmLaw1iFYhEdePxCPWRt1LTQnhIBISNX4C081ZNr3
 txtPCeSf8LqOgrl4sBM6v8GeraJWo0G9xPz+BI1cOoocl160Przykc5jdWaCJzi8
 OjqbEVew2RjIvprCp0Zi3UZmdu/kPF9zPV8G0coHc3OaFC1G+Wm1H0zuwBvOuzu5
 8G5qjfCDHYTprtOniCNmfnMF0PbsGB1lk5x9K/XMjCrG3nuWQ9Q4HOo2hcsy8gwh
 NY/XNTrrHpWOxeJ+Aj143FdjWrVU6ZBQoJ5ngq9TP3oScqko1aphMjvMVX+wgzZg
 1h3aDG0vxGj4K0x5l/VmHw==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Gnm/k+YfA+mdzCPKuejTz++7oOE/gUj4eqoeYbOpRBI=;
 b=sAA1Lu8jA5r3vifqEVscp4CBqbEDPINAdyouvIl0VZZu6Hq4fvNjs3EQV4GqELikkjZX+X5XTuyjKVkfhNHwhfIuPARHYBHfplat67iyy1OMy7vk3NKhVV35BFnzXAcKw8HsscCwR/Iur/hjhKC+8tD9wjX419tV7TXVdU/db8g=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=oracle.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=oracle.com header.i=@oracle.com
 header.a=rsa-sha256 header.s=corp-2023-11-20 header.b=Yb4vOyp8; 
 dkim=pass (1024-bit key,
 unprotected) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com
 header.a=rsa-sha256 header.s=selector2-oracle-onmicrosoft-com
 header.b=sAA1Lu8j
Subject: Re: [Intel-wired-lan] [External] : Re: [PATCH iwl-net 2/2] ixgbe:
 downgrade logging of unsupported VF API version to debug
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

SGkgUGF1bCBhbmQgSmFrZSwgDQpQbGVhc2Ugc2VlIGlubGluZS4gDQoNCj4gT24gTm92IDEsIDIw
MjQsIGF0IDExOjUz4oCvUE0sIFBhdWwgTWVuemVsIDxwbWVuemVsQG1vbGdlbi5tcGcuZGU+IHdy
b3RlOg0KPiANCj4gRGVhciBKYWNvYiwNCj4gDQo+IA0KPiBUaGFuayB5b3UgZm9yIHRoZSBwYXRj
aC4NCj4gDQo+IEFtIDAyLjExLjI0IHVtIDAwOjA1IHNjaHJpZWIgSmFjb2IgS2VsbGVyOg0KPj4g
VGhlIGl4Z2JlIFBGIGRyaXZlciBsb2dzIGFuIGluZm8gbWVzc2FnZSB3aGVuIGEgVkYgYXR0ZW1w
dHMgdG8gbmVnb3RpYXRlIGFuDQo+PiBBUEkgdmVyc2lvbiB3aGljaCBpdCBkb2VzIG5vdCBzdXBw
b3J0Og0KPj4gICBWRiAwIHJlcXVlc3RlZCBpbnZhbGlkIGFwaSB2ZXJzaW9uIDYNCj4+IFRoZSBp
eGdiZXZmIGRyaXZlciBhdHRlbXB0cyB0byBsb2FkIHdpdGggbWFpbGJveCBBUEkgdjEuNSwgd2hp
Y2ggaXMNCj4+IHJlcXVpcmVkIGZvciBiZXN0IGNvbXBhdGliaWxpdHkgd2l0aCBvdGhlciBob3N0
cyBzdWNoIGFzIHRoZSBFU1ggVk1XYXJlIFBGLg0KPj4gVGhlIExpbnV4IFBGIG9ubHkgc3VwcG9y
dHMgQVBJIHYxLjQsIGFuZCBkb2VzIG5vdCBjdXJyZW50bHkgaGF2ZSBzdXBwb3J0DQo+PiBmb3Ig
dGhlIHYxLjUgQVBJLg0KPj4gVGhlIGxvZ2dlZCBtZXNzYWdlIGNhbiBjb25mdXNlIHVzZXJzLCBh
cyB0aGUgdjEuNSBBUEkgaXMgdmFsaWQsIGJ1dCBqdXN0DQo+PiBoYXBwZW5zIHRvIG5vdCBjdXJy
ZW50bHkgYmUgc3VwcG9ydGVkIGJ5IHRoZSBMaW51eCBQRi4NCj4+IERvd25ncmFkZSB0aGUgaW5m
byBtZXNzYWdlIHRvIGEgZGVidWcgbWVzc2FnZSwgYW5kIGZpeCB0aGUgbGFuZ3VhZ2UgdG8NCj4+
IHVzZSAndW5zdXBwb3J0ZWQnIGluc3RlYWQgb2YgJ2ludmFsaWQnIHRvIGltcHJvdmUgbWVzc2Fn
ZSBjbGFyaXR5Lg0KPj4gTG9uZyB0ZXJtLCB3ZSBzaG91bGQgaW52ZXN0aWdhdGUgd2hldGhlciB0
aGUgaW1wcm92ZW1lbnRzIGluIHRoZSB2MS41IEFQSQ0KPj4gbWFrZSBzZW5zZSBmb3IgdGhlIExp
bnV4IFBGLCBhbmQgaWYgc28gaW1wbGVtZW50IHRoZW0gcHJvcGVybHkuIFRoaXMgbWF5DQo+PiBy
ZXF1aXJlIHlldCBhbm90aGVyIEFQSSB2ZXJzaW9uIHRvIHJlc29sdmUgaXNzdWVzIHdpdGggbmVn
b3RpYXRpbmcgSVBTRUMNCj4+IG9mZmxvYWQgc3VwcG9ydC4NCj4gDQo+IEl04oCZZCBiZSBncmVh
dCBpZiB5b3UgZGVzY3JpYmVkIHRoZSBleGFjdCB0ZXN0IHNldHVwIGZvciBob3cgdG8gcmVwcm9k
dWNlIGl0Lg0KSXQgY291bGQgYmUgZWFzaWx5IHJlcHJvZHVjZWQgYnkgcnVubmluZw0KZWNobyAx
ID4gL3N5cy9jbGFzcy9uZXQvPE5JQyBuYW1lPmRldmljZS9zcmlvdl9udW12ZnMNCj4gDQo+PiBS
ZXBvcnRlZC1ieTogWWlmZWkgTGl1IDx5aWZlaS5sLmxpdUBvcmFjbGUuY29tPg0KPiANCj4gRG8g
eW91IGhhdmUgYW4gTGluazogZm9yIHRoaXMgcmVwb3J0Pw0KSG9wZSB0aGlzIGxpbmsgY291bGQg
aGVscDogaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wcm9qZWN0L25ldGRldmJwZi9wYXRj
aC8yMDI0MDMwMTIzNTgzNy4zNzQxNDIyLTEteWlmZWkubC5saXVAb3JhY2xlLmNvbS8gDQo+IA0K
Pj4gU2lnbmVkLW9mZi1ieTogSmFjb2IgS2VsbGVyIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+
DQo+PiBSZXZpZXdlZC1ieTogUHJ6ZW1layBLaXRzemVsIDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50
ZWwuY29tPg0KPj4gLS0tDQo+PiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhn
YmVfY29tbW9uLmggfCAyICsrDQo+PiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUv
aXhnYmVfc3Jpb3YuYyAgfCAyICstDQo+PiAgMiBmaWxlcyBjaGFuZ2VkLCAzIGluc2VydGlvbnMo
KyksIDEgZGVsZXRpb24oLSkNCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9peGdiZS9peGdiZV9jb21tb24uaCBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4
Z2JlL2l4Z2JlX2NvbW1vbi5oDQo+PiBpbmRleCA2NDkzYWJmMTg5ZGUuLjY2MzkwNjlhZDUyOCAx
MDA2NDQNCj4+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX2Nv
bW1vbi5oDQo+PiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV9j
b21tb24uaA0KPj4gQEAgLTE5NCw2ICsxOTQsOCBAQCB1MzIgaXhnYmVfcmVhZF9yZWcoc3RydWN0
IGl4Z2JlX2h3ICpodywgdTMyIHJlZyk7DQo+PiAgIGRldl9lcnIoJmFkYXB0ZXItPnBkZXYtPmRl
diwgZm9ybWF0LCAjIyBhcmcpDQo+PiAgI2RlZmluZSBlX2Rldl9ub3RpY2UoZm9ybWF0LCBhcmcu
Li4pIFwNCj4+ICAgZGV2X25vdGljZSgmYWRhcHRlci0+cGRldi0+ZGV2LCBmb3JtYXQsICMjIGFy
ZykNCj4+ICsjZGVmaW5lIGVfZGJnKG1zZ2x2bCwgZm9ybWF0LCBhcmcuLi4pIFwNCj4+ICsgbmV0
aWZfZGJnKGFkYXB0ZXIsIG1zZ2x2bCwgYWRhcHRlci0+bmV0ZGV2LCBmb3JtYXQsICMjIGFyZykN
Cj4+ICAjZGVmaW5lIGVfaW5mbyhtc2dsdmwsIGZvcm1hdCwgYXJnLi4uKSBcDQo+PiAgIG5ldGlm
X2luZm8oYWRhcHRlciwgbXNnbHZsLCBhZGFwdGVyLT5uZXRkZXYsIGZvcm1hdCwgIyMgYXJnKQ0K
Pj4gICNkZWZpbmUgZV9lcnIobXNnbHZsLCBmb3JtYXQsIGFyZy4uLikgXA0KPj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX3NyaW92LmMgYi9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV9zcmlvdi5jDQo+PiBpbmRleCBlNzE3
MTVmNWRhMjIuLjIwNDE1YzEyMzhlZiAxMDA2NDQNCj4+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2l4Z2JlL2l4Z2JlX3NyaW92LmMNCj4+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2l4Z2JlL2l4Z2JlX3NyaW92LmMNCj4+IEBAIC0xMDQ3LDcgKzEwNDcsNyBAQCBz
dGF0aWMgaW50IGl4Z2JlX25lZ290aWF0ZV92Zl9hcGkoc3RydWN0IGl4Z2JlX2FkYXB0ZXIgKmFk
YXB0ZXIsDQo+PiAgIGJyZWFrOw0KPj4gICB9DQo+PiAgLSBlX2luZm8oZHJ2LCAiVkYgJWQgcmVx
dWVzdGVkIGludmFsaWQgYXBpIHZlcnNpb24gJXVcbiIsIHZmLCBhcGkpOw0KPj4gKyBlX2RiZyhk
cnYsICJWRiAlZCByZXF1ZXN0ZWQgdW5zdXBwb3J0ZWQgYXBpIHZlcnNpb24gJXVcbiIsIHZmLCBh
cGkpOw0KPiANCj4gSXMgdGhlcmUgYSB3YXkgdG8gdHJhbnNsYXRlIGBhcGlgIHRvIHRoZSBBUEkg
dmVyc2lvbiBzY2hlbWUgdXNlZCBpbiB0aGUgY29tbWl0IG1lc3NhZ2U/IFNvLCAxLjUgaW5zdGVh
ZCBvZiA2PyBNYXliZSBhbHNvIGFkZCwgdGhhdCBvbmx5IHRoZSB2MS40IEFQSSBpcyBzdXBwb3J0
ZWQ/DQo+IA0KPj4gICAgIHJldHVybiAtMTsNCj4+ICB9DQo+IA0KPiANCj4gS2luZCByZWdhcmRz
LA0KPiANCj4gUGF1bA0KVGhhbmtzDQpZaWZlaQ0KDQo=
