Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 93838C3F620
	for <lists+intel-wired-lan@lfdr.de>; Fri, 07 Nov 2025 11:18:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A8267612FA;
	Fri,  7 Nov 2025 10:18:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rwF3-D9ELv4H; Fri,  7 Nov 2025 10:18:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AEF89612C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762510718;
	bh=AAgWBv6yddAxtW9XnrHxXmpIMJ/HpP63X182Y9kDKao=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=blAuTk56ilGvqzimgnxxvHNVx0Xf6ptU4puW+QCPbHEcFzvo3wiAEMXePUVQOuolM
	 b+7RinANgnXt/0lFoRSD1LfwHnachGikAh1g1t4HBp3FAsCaJ2PMiUIdnbjvMrfqEE
	 QB6W2ZREHbzvcDQ2geH5T4S16yhsPLC16l6rusevLVaPdRGiKymyVniIfq+ihplliy
	 SLYaR69XcM6NLBsQAhNgP2p5ThU02AxCyJ6KzP5O2Q2lDXUpaRLNCnfcjSkDYHymXe
	 CcmZAwp8SvXRU6Y8mCoepejWbL65uV4mlMR0gyTv78AMB5jNQHxTatImWdLlvLIWjZ
	 o//P86X/h9f8A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id AEF89612C1;
	Fri,  7 Nov 2025 10:18:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id DC3DC961
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 10:18:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CDD34410F2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 10:18:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NkDkH7Z5eFay for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Nov 2025 10:18:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=205.220.177.32;
 helo=mx0b-00069f02.pphosted.com; envelope-from=gregory.herrero@oracle.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 42A5E410E4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 42A5E410E4
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com
 [205.220.177.32])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 42A5E410E4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 10:18:34 +0000 (UTC)
Received: from pps.filterd (m0333520.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5A78ucDO011826;
 Fri, 7 Nov 2025 10:18:26 GMT
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta02.appoci.oracle.com [147.154.114.232])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 4a8ytw9jd0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 07 Nov 2025 10:18:26 +0000 (GMT)
Received: from pps.filterd
 (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 5A79Jki7011077; Fri, 7 Nov 2025 10:18:25 GMT
Received: from ph0pr06cu001.outbound.protection.outlook.com
 (mail-westus3azon11011070.outbound.protection.outlook.com [40.107.208.70])
 by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 4a58ndk89p-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 07 Nov 2025 10:18:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=biuaaMbEIxTa0nhwfQvbdMKnh2K3x55glT4SDUWY34o2iXxcUZ3Xh5S6P3u0vd2MVn1IxEe/oZjvU3WAoVdmcQxo91WgGSc2dfoNKuXg2+Nh3WQQMUe07EHJX+RS0vVm17xBFL7SZDa/nMYIf2EnazSLZbiFfoiFJYR4ewBi9cPTMwwzFw71C6ViwG1HWfTN9UDIKCoqtWjPmbFqPynW7J77u22hbCWE+YVXllAMX2ew6xJacqhCSpbHLFxkdGXKVw5ayox9ILMrSLQglRlvn0cDRlyR5gxjpg5fjU7UXYFyAiWA7rpp/i0zjpLAk6XuuZvzpco/f8EAzZd5/Ww0/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AAgWBv6yddAxtW9XnrHxXmpIMJ/HpP63X182Y9kDKao=;
 b=TTo4VZCacpByRCjmqTB0gGemrAOVU/0eZj4C2azr1Dwz1lNuULJ/J/zn+2xWM1S8JEo4DB08fk6IATjxoNbGCKJlRmDs1gV5mOFSkDzqw2SJoBr8XgY5KJUFlxdxmxHHH2cMcbU/WB4vD+J1Syl82SQmisAT9nOfeuTsmaPXDsYGBjAAKbtx85ccldLbSr99PUCqC44CVUHKLM6VKDJ6KcfB2JbJ9jm1QMjxDAdNSg966gF7cjx0u/v9eeDbjp+E00k82isGK50OZMEJkAjV8KxNtatDf22gUerOLPU97aL0nXCw2wvrmAn0w1g/px+FllYaG2y1+E7Ub+PY5MVIHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DS7PR10MB4846.namprd10.prod.outlook.com (2603:10b6:5:38c::24)
 by BN0PR10MB4856.namprd10.prod.outlook.com (2603:10b6:408:12b::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.7; Fri, 7 Nov
 2025 10:18:20 +0000
Received: from DS7PR10MB4846.namprd10.prod.outlook.com
 ([fe80::ade8:e990:1af7:f5f8]) by DS7PR10MB4846.namprd10.prod.outlook.com
 ([fe80::ade8:e990:1af7:f5f8%7]) with mapi id 15.20.9298.012; Fri, 7 Nov 2025
 10:18:20 +0000
Date: Fri, 7 Nov 2025 11:18:15 +0100
From: Gregory Herrero <gregory.herrero@oracle.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Message-ID: <aQ3HZ2g-ok3ZlnE1@oracle>
References: <20251106150248.721025-1-gregory.herrero@oracle.com>
 <20251106150248.721025-2-gregory.herrero@oracle.com>
 <IA3PR11MB89868E49FE97CE7A95394518E5C3A@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <IA3PR11MB89868E49FE97CE7A95394518E5C3A@IA3PR11MB8986.namprd11.prod.outlook.com>
X-ClientProxiedBy: MI2P293CA0003.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:45::16) To DS7PR10MB4846.namprd10.prod.outlook.com
 (2603:10b6:5:38c::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB4846:EE_|BN0PR10MB4856:EE_
X-MS-Office365-Filtering-Correlation-Id: 65ebfa50-8cfe-4df8-6c3e-08de1de6f95c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|7416014|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZGJsZjZlTHRyWWU5d0o4a05FSEpHazlEVnlsaXMyOENRWVNaSXVRcXFjOGRH?=
 =?utf-8?B?T2JuUmxHbXFnd3QxTnUxKzBqUmtxRVUybC9rU05tcFpGY1FMbjJsY0hacUVz?=
 =?utf-8?B?YkgvK3FHVDZpUU5qMkE1d3cxaUNuNmtJZUw5V1cvZ2d6bW9ZaDM2Rkx1K0xt?=
 =?utf-8?B?cXNjdnY2ZHBrem5LeTFTdmh4OFp6b1E3NFpabUNLM2VORitQUEtYQ09sd0xi?=
 =?utf-8?B?WWdPTnNxTG5xVHJXQVppa24rMkJiZnhRSDZoQk1QNlBIc0ptODBmUERtUUV4?=
 =?utf-8?B?Rk5sSDM2TVE4dVo2bnZ1U3M3TkM5NkcrZEgwUHNtTWY1VzI4WnF1MDQ0MFJz?=
 =?utf-8?B?bVlVczdsTDhVM1U3TGtQVGswemdhbVhlOExjb1RybXZpQS9ZVEFrOXAwOXI3?=
 =?utf-8?B?a25EQTRpSVEvemhDT2x1bENwNEF2dk5XVHozTDhVMHBvVk8yM1VEdmNJaFQr?=
 =?utf-8?B?Z2tyVFFQM2hPZVhMQkxCc1VCSlVmdHZSSld5R3J1dTMxcWhLQkgwS2FNK2pa?=
 =?utf-8?B?VG9PbkFYNTdCMHduN295RUdaaDQ0ZXVVbzBlYUdST1FLRktFUS9NTmo5TjJD?=
 =?utf-8?B?cGtTdzNJVzhxTFZCQjRsYkczYmRYWlhIdmViM2diMzVNblNhcnNOTzB1MWsx?=
 =?utf-8?B?Ym4yYTFhRVhWYWVPTlpmd2MyQ1JwenR0Z1N0anUxUXovSDhvN093VDVzTldN?=
 =?utf-8?B?aDVjRVMyRXhmNlFIR2MrMDFmME9rYVdWdUJSZ2NlYjFCQm8zczMwQzlncjM0?=
 =?utf-8?B?OFFrSmhqSVkvMHVrcWg1ZGEvcE41SlNsaUt3OXdEdUFybEI1UjlsTGNPaVVn?=
 =?utf-8?B?TTJONVlGcHJFdTV6MkJkMlluVFZKcldCZG9DMmpLUkVuR2lsMlpkVU9ZbXpH?=
 =?utf-8?B?TElXOUFVczVzWEtiUTU1NVJaMlBOMmdiaTFMSE9KVkhWdkZ0UFZ4eG9zdFNI?=
 =?utf-8?B?Mnk0bEEwc3BOcUxuSGRKRkNuenpsV2RkbHM2OHF2SElxK25xU05IbHlkNEFY?=
 =?utf-8?B?OVY3T2RIMHBnSFo0bjl2QUo3MHJBeDRvQk0zdElDaXhzTFpYeE9RbHduN2Jw?=
 =?utf-8?B?aG9xMllWZFM2Z2t5MUNFdXlQWVhLU0grb0lPWlpQcjVvVXVVczRwYTRCc2U4?=
 =?utf-8?B?ZzMzaXM0NUhzRUV0N1psd2VXVUtKTjZzYXdWNkliL0hvb2wwQWpmZkx2c2Q1?=
 =?utf-8?B?ZzRrUU5lQVhkczE1a1FhWGF0NDh4RFpLMy8zNmRTNVJQd2NiM3FqUTZrOHVq?=
 =?utf-8?B?cjlVSGxjbFZlY1lFQU9OYUFEdkNiWFJqdFVyV1lHNGtMUkJMSHJwS2FZMFZ1?=
 =?utf-8?B?Z0hhMTdRRDlPQURiYjkxbkI5cWhteTVEVjZjY2RoazhISEROL2JlM3lrVm1h?=
 =?utf-8?B?ZzlselVoMlVDbEV3Rjkybk9VM09tTzNxRUtmTlF2a1VoS3NOVHR6dFk2Y2tQ?=
 =?utf-8?B?cFh4Q1g2VzdLaytSRzZGYnBya1RuV1pDYm1STzNTRldiTi9OcmhWbUE4eUY2?=
 =?utf-8?B?ay83LzZVU1dpK3RrZmdLOGNlWkhEeVRCZ0g2NTI3TktGVitmMnZqWDFqd0JL?=
 =?utf-8?B?ZnRXZnRWS2J0Mjd2UEM2Vm04QmlUaVQxRUpVSUNEZDJlcFg3Z1BhTWM5dGQy?=
 =?utf-8?B?M3M1WjN6M0pDdk03TnB1N2p5aEt3ZnBsN1N2UWMzVTVkVTBEcWVoelRzbk5T?=
 =?utf-8?B?TThuOTcvK3FPb0UyWURtM0hRRE9Bd1I5SkJWb3YxSUljOXgzOUtYY0pvbjlO?=
 =?utf-8?B?WEt4SjA0M05kaitlUU1FTzJ2dkx0OU9teHpOVUJvMVF2M05ETUVLVXhwK291?=
 =?utf-8?B?MWoyQ04zb0Era1cxODgrcEsxSFUzclBjTEZhVGNETVI0aHhxalJrT1hKOTgr?=
 =?utf-8?B?L050UUhlTWZQY3ZJdEVFblRxamQrRXd0ai9rS0JQTFBEcHVhMXNsTWpCcXR6?=
 =?utf-8?Q?DuTUpOylSM2DBZ/J1wFae9K2y8klxGnG?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR10MB4846.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dHh5SHZHYXArUGpKSFhpMVQycGJ2YzFTQzdWZlZNSklFQ1NTbFhicWRIWmdZ?=
 =?utf-8?B?R21GVlBFV1l0UFJhckJDTGlURUE0czZ2c0E1UVY4SkhuR2pGeE43WDFMMExx?=
 =?utf-8?B?ZkxtNDZiV0dNZktwYnEyaWUxR3B0SEc0b3VUcC9LeUdzNlg0MWJqVjRTT2hs?=
 =?utf-8?B?L21WTDZBd1MrLzl5MXRwOEUyR3hlR3JiY3dDbHVPRFpaMnoxRDBveXJWUk1h?=
 =?utf-8?B?dE5qT0d3SlBwYTl1citzQUI3WDNUVkxzQ2pDaC9xTWg4blVzNDJrbWtmYWxP?=
 =?utf-8?B?dCtTTlJ2RUtybEluaDBJaXZOSnQ4YS9uUkU5Z0YwNXdjMDIwME1wTWhjd0V4?=
 =?utf-8?B?aGFBaHpnbVV3aTA5eDNDSmpybTJuN0U5Ukh0UkJTYS9BTjM0SThQdlJPUVk1?=
 =?utf-8?B?d0w0Snh5MkcvcVYzUlUyWnNEODZzUzltY0FmNmdLOG5TKzVkZUVWamliQWt6?=
 =?utf-8?B?MTVERk9hZHA5anNqRjhwQ0RxVTRTdmNza2RMUEw3WGFnMitGQTJleU5GRVAw?=
 =?utf-8?B?K2F2b2xER0hTc2wzTE4vWi8xaG9LSkRFQVowR0RHZDFmTW8xN09RMzZBTXpJ?=
 =?utf-8?B?YzZxZjdqeXZoZjVPbERyOUJDb0s2YnFGamhzdnhYQitnOUM0UUVzUjB6SlJ1?=
 =?utf-8?B?L09JL0hRc2pPakJtR2Y5OHh2UVJJaFN2WmRjYk5aNkpwWURRNEM3SUtQaHo3?=
 =?utf-8?B?VmNKdnpTUGs2WVB1bVFGeUlzMUgreFVWbnhBc0FZNzVLclU5QXdGbXlFRWM0?=
 =?utf-8?B?bXRmWnNQNzViS0EwVkoyMWJ5b1RZMG5KejkxNU5pR2JvYlpmalNYMUlWcnUv?=
 =?utf-8?B?ZWtZVHJsanR3RVZ2ZndwWE1yQXZFajBZRHY3MmVtZytSN0lRS0FOYTRmQWxX?=
 =?utf-8?B?dFJWbW42S0tmSzlBWmtQU2lZOFpTVFFNQk92OEZOSk8xS0RCQVRtSEx1d3p0?=
 =?utf-8?B?bFlHdTRvY2tTcWdXZ081VldERjJTbEl2TEhKTEpnU3F1dDBHaUpCdFc0V1pz?=
 =?utf-8?B?em0rMWV0QWpVd1FyZkJjTTJjdFg3VXhPazBkUlByUXlpWE9ucmdUTFJJVi9C?=
 =?utf-8?B?ajR2eWZUaTZUWTU1VWduNW9WYmxCM3pCMEdOemQ4SjBUeGxNWkIxTGRSUDZB?=
 =?utf-8?B?a3l6NnZIdHJ5ZEZKUS9oSkZaWlBsUFhvc3hqaUN0Q0xZQ1dWZlp4VjhBQi8w?=
 =?utf-8?B?cWllWEllU3hsMFJ1Q280dzB3bnNZTjFLZFY2bmhYTngyTWlCR25YMjBTbkhX?=
 =?utf-8?B?ZEt3WmRiaUMvOCtURm5tTE80T3J6SnFvN2ViS09wZEpEWVppU0N1UVo2SGJa?=
 =?utf-8?B?R2V4YUZ5TFlUY2RhcWhMYVY5bTBXOWlFeWJwMlpyZHdyendzKzFzVHQvS2FN?=
 =?utf-8?B?Mk5iUWpoazVpUjlBY015MFVWSUhhbHpwcFA3bTBRR2RxMVRDUStNejRKbXVQ?=
 =?utf-8?B?QXlTaTFreU5BSnA5WnV1ZmVyZHJaVzg0OEdybGNZQk1hbE02MHNpbnFHbjJv?=
 =?utf-8?B?N1FIWDJuMk1sazZUVWVjb041cmpoVjZ0U1Z4Q2NSSWIrTllxais4cEV1MTJ5?=
 =?utf-8?B?SzBVak1PeFFMSm5QMzg5WGNXOVovUGVnNWplRExQTThIcTRlRjJndDBoalhv?=
 =?utf-8?B?U1FWVnpVNVNvNFBOZkJucnVwOWJiRDRpT2R1NlRQMU1kdS9USVZObXRYVWp1?=
 =?utf-8?B?aXFrTXBQMm9OcVErelY5cmx3TDhaVTdVWlh3ZnZnNkNLc3NHUkFwYy9kOXB0?=
 =?utf-8?B?RVpIdXVqSmVYc21BdFNEeDl0VU1QZTVLN2g3VkU3bHNWeUc4d01LSWFIWk5M?=
 =?utf-8?B?S0tocjR3c09GZUVlSnRCeXZSUTlsQ2xIWVR0eEluWEdSNzRxYlRVYlJVZmRJ?=
 =?utf-8?B?V2lLUHJ4OGwzblptTngzYm96WmVMQWVDWnRXMUZsUjlaQzFXUlpTMkI2dm0v?=
 =?utf-8?B?NU52QnBFcy9Zb2xneGhqRUUydnRsdkRSaHVKUHBEUVVIYm5YYWdJM0tyQWsr?=
 =?utf-8?B?QURnN1RDdkxEVk9hbEV3T2dKTWIyUmdDK3ZuZE1qc3pqcGo2T1hxbDBNbllQ?=
 =?utf-8?B?elNPZWZpVWFzbnFaYnhnREJRanloT1VOcjRrT1ZheHY2SnpjcFNkb1ZkbkRw?=
 =?utf-8?B?OThZTWdqbTZZNC81alpTSzNHblFJaTdHTFczbWFxN3YvNW9WN1NWQkltRkxJ?=
 =?utf-8?B?Q1E9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 0W/BkBkD9tEXW/SBJj6WO6E2cH52g4ecP++5XguBrDgyflbbFFvLDJ7Yw4V3C7cxQvfN5xnq9pypi4/QGTgcF+kWTrNG4+lFs96ibDwxPqptK7vZVY9rHifbhbibNKuA3AkauSRCcQBVKerjK+9kAfdUhYNyOpHOpQwUmboxs0E9QhKWXtpNKkryHY1bu/BiKSL0C1GkBBms0uJYmLQxn1CUk5VATj00UTkauYGLJcvKH04+bagnBr4dmLUCtJ0cQOpOFWrCcn7Fp0yWb1e84pdUGovt0MqPR7ZkvJKZFAb/tJFhlr13opSxZnwRTyFF9IWv/fUeKZyjJyXUdgg41kt+IEDxJtbAUPSN6Y/UQwQTdol5uSoof4dD0ut1KUgm6vA4jFCjN9NH37SrlVhpTbubg/eJJtudpUGQzxcabNCgU+IUG1Djcc0EKs/YdEY0hNGV3oPLj/SyZd+6sKPcbG5p7e7JY7tWqQIb2ttmIrwZ17KKa42BQGhSrpQ4+FkfQRiBAa2jEfy/NLoAROKBH0nKl6pOXeFhQso7+Ht4R/aMKWkP7AaYXlG1GOaPgpKmLj7AxjAgUYP8q6tZB3XX9oKhy0NHn32GABh7YXigwV0=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 65ebfa50-8cfe-4df8-6c3e-08de1de6f95c
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB4846.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Nov 2025 10:18:20.0209 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: O+fPvHc85b9O+voHXCWAjqU2NappjD1YdDEF76H0hQCTOfa0bsQySZtFNlKsI3Bb9x4QBhx3rYxZU7/CFJYv38l8A9t1lrZKVKBoB605+vc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0PR10MB4856
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-07_02,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 bulkscore=0 malwarescore=0
 spamscore=0 suspectscore=0 mlxscore=0 adultscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2510240000
 definitions=main-2511070083
X-Authority-Analysis: v=2.4 cv=L/wQguT8 c=1 sm=1 tr=0 ts=690dc772 cx=c_pps
 a=OOZaFjgC48PWsiFpTAqLcw==:117 a=OOZaFjgC48PWsiFpTAqLcw==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6UeiqGixMTsA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=lTbjQzD5AAAA:8 a=yPCof4ZbAAAA:8 a=QyXUC8HyAAAA:8
 a=J1Y8HTJGAAAA:8 a=1XWaLZrsAAAA:8 a=20KFwNOVAAAA:8 a=c-T-BTpCfCJqzt30PO4A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=mDVER0IZTAoA:10
 a=w8YF5asEQ23juLwKoPR8:22 a=y1Q9-5lHfBjTkpIzbSAN:22 a=cPQSjfK2_nFv0Q5t_7PE:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA2MDEzOCBTYWx0ZWRfX7Ga2vBICQgD5
 YBpUlvinSz4eeIC3RuTTQQ/sowGSYpnMpAwMT8ggQi4/OuZNuCqxBAwS4vFdMKExs2LafT8sids
 Dfxy6KP/i5fajnEw3gKuiyIhCh1IG/c6EQdSNx2B3n1dDVKxujto1yH+RJ+cfxqH2DH9qugFPyx
 xjQUnvkllRDkp+ISn4Eo39I4Xs3FipWNSqU7nEd/bA9gpka1ZSXzixD6PHJGT1d6l/aA/K3/j+G
 CspOVe0ExslkSKZQFAhhATkA7EslZpDkL0FfGh4AgoK111XzSs+Fj4Ex5kT6NRe3gEo5iGpfLOz
 HHF5X18mm2ipHion2Go3QghAJPCrdGukLUOXE0CMQVz/UBH0sr2N+bEInTNvMV9IbQ2Oj1m9L/I
 g24TrS3cdzUkWRJeeQgziUAsXqgz/w==
X-Proofpoint-ORIG-GUID: JZdJNrR7aMcreB-1ygoKM161pyOPhlU4
X-Proofpoint-GUID: JZdJNrR7aMcreB-1ygoKM161pyOPhlU4
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=
 corp-2025-04-25; bh=AAgWBv6yddAxtW9XnrHxXmpIMJ/HpP63X182Y9kDKao=; b=
 SIMhyVdx189R7zPt4w7hTeHBrWLbN4Lwka7mnfnUTaY0LCFa0VZOQ8C6FkdHkaD3
 3jeCkY/S/XuxyASd+ZgwZ3m26TntN2C28V9qX8usAFQ5jyYFof4kY55I8MStbS4z
 axH6+nyBRBRLG+Xv9ej9akRaavrLXirj1YdmNZMkirOws9Ff8eZ6d2v0vDQqTpP8
 QQrLfSv9Wj17udNPDmUvt7RdTN+8Fm/NiLgnLmfUhBtd+Hru/VGweLhnAaBtTlkA
 dWNZpFvar8MnWB/dKYoUmw86iCNyH/yRl+4SxQbe07hZ/PGPgTJ7gwSHby9/xu4j
 o5oWzcMaQuaVdlbxdPQSgg==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AAgWBv6yddAxtW9XnrHxXmpIMJ/HpP63X182Y9kDKao=;
 b=nYsh3y3V+qy+XEYgrrJt0ghusKEwzBhvwIIH4Bo/vIHoLqLIw2fu4lOWiohjFUZiearg9tO7OOJOMlTPD7Mo0LYgVgSE7hxRkqfG47NbxaZsGKl7AjbUVoU5gYffdeCYzuOmTZH8hBrh2l4feiK7A6rt0F8KgBuVXaYrhPxlJVE=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=oracle.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=oracle.com header.i=@oracle.com
 header.a=rsa-sha256 header.s=corp-2025-04-25 header.b=SIMhyVdx; 
 dkim=pass (1024-bit key,
 unprotected) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com
 header.a=rsa-sha256 header.s=selector2-oracle-onmicrosoft-com
 header.b=nYsh3y3V
Subject: Re: [Intel-wired-lan] [PATCH] i40e: validate ring_len parameter
 against hardware specific values.
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

On Fri, Nov 07, 2025 at 06:39:16AM +0000, Loktionov, Aleksandr wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of gregory.herrero@oracle.com
> > Sent: Thursday, November 6, 2025 4:03 PM
> > To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> > Przemyslaw <przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch;
> > davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
> > pabeni@redhat.com
> > Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
> > kernel@vger.kernel.org; Gregory Herrero <gregory.herrero@oracle.com>
> > Subject: [Intel-wired-lan] [PATCH] i40e: validate ring_len parameter
> > against hardware specific values.
> “hardware specific” → “hardware‑specific”
> 
I will fix it in v2.
> >
> > From: Gregory Herrero <gregory.herrero@oracle.com>
> > 
> > The maximum number of descriptors supported by the hardware is
> > hardware dependent and can be retrieved using
> > i40e_get_max_num_descriptors().
> > Move this function to a shared header and use it when checking for
> > valid ring_len parameter rather than using hardcoded value.
> > Cast info->ring_len to u32 in i40e_config_vsi_tx_queue() as it's u16
> > in struct virtchnl_txq_info.
> > Also cast it in i40e_config_vsi_rx_queue() even if it's u32 in
> > virtchnl_rxq_info to ease stable backport in case this changed.
> > 
> > Fixes: 55d225670def ("i40e: add validation for ring_len param")
> > Signed-off-by: Gregory Herrero <gregory.herrero@oracle.com>
> > ---
> >  drivers/net/ethernet/intel/i40e/i40e.h         | 18
> > ++++++++++++++++++
> >  drivers/net/ethernet/intel/i40e/i40e_ethtool.c | 12 ------------
> > .../net/ethernet/intel/i40e/i40e_virtchnl_pf.c |  4 ++--
> >  3 files changed, 20 insertions(+), 14 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e.h
> > b/drivers/net/ethernet/intel/i40e/i40e.h
> > index 801a57a925da..0e697375fcaf 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e.h
> > +++ b/drivers/net/ethernet/intel/i40e/i40e.h
> > @@ -1418,4 +1418,22 @@ static inline struct i40e_veb
> > *i40e_pf_get_main_veb(struct i40e_pf *pf)
> >  	return (pf->lan_veb != I40E_NO_VEB) ? pf->veb[pf->lan_veb] :
> > NULL;  }
> > 
> > +/**
> > + * i40e_get_max_num_descriptors - get maximum descriptors number for
> > this hardware.
> > + * @pf: pointer to a PF
> > + *
> > + * Return: u32 value corresponding to maximum descriptors number.
> > + **/
> “maximum descriptors number” → “maximum number of descriptors”
I will fix it in v2.

> " **/” → “ */
I followed coding style of the file. If I change from **/ to */, should
I change the whole file in a separate commit? Or should I keep as it is ?
> 
> 
> > +static inline u32 i40e_get_max_num_descriptors(struct i40e_pf *pf) {
> Nit: kernel coding style
> Please follow standard kernel style for function definitions:
> 
>  - The opening brace must be on its own line, not after the prototype.
It should already be the case. I double checked in the patch and on the mailing
list. Am I missing something?
>  - static inline is fine here, but keep spacing consistent.
Ah I missed that, which spacing is not consistent?
>  - Also consider marking the argument const if the function does not modify pf.
> 
> So instead of:
> static inline u32 i40e_get_max_num_descriptors(struct i40e_pf *pf) {
> use:
> static inline u32 i40e_get_max_num_descriptors(const struct i40e_pf *pf)
> {
> 
> See: https://docs.kernel.org/process/coding-style.html  section on function definitions.
Ok, I will fix it in v2.
> 
> > +	struct i40e_hw *hw = &pf->hw;
> > +
> > +	switch (hw->mac.type) {
> > +	case I40E_MAC_XL710:
> > +		return I40E_MAX_NUM_DESCRIPTORS_XL710;
> > +	default:
> > +		return I40E_MAX_NUM_DESCRIPTORS;
> > +	}
> > +}
> > +
> >  #endif /* _I40E_H_ */
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> > b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> > index 86c72596617a..61c39e881b00 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> > @@ -2013,18 +2013,6 @@ static void i40e_get_drvinfo(struct net_device
> > *netdev,
> >  		drvinfo->n_priv_flags += I40E_GL_PRIV_FLAGS_STR_LEN;  }
> > 
> > -static u32 i40e_get_max_num_descriptors(struct i40e_pf *pf) -{
> > -	struct i40e_hw *hw = &pf->hw;
> > -
> > -	switch (hw->mac.type) {
> > -	case I40E_MAC_XL710:
> > -		return I40E_MAX_NUM_DESCRIPTORS_XL710;
> > -	default:
> > -		return I40E_MAX_NUM_DESCRIPTORS;
> > -	}
> > -}
> > -
> >  static void i40e_get_ringparam(struct net_device *netdev,
> >  			       struct ethtool_ringparam *ring,
> >  			       struct kernel_ethtool_ringparam
> > *kernel_ring, diff --git
> > a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> > b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> > index 081a4526a2f0..5e058159057b 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> > @@ -656,7 +656,7 @@ static int i40e_config_vsi_tx_queue(struct i40e_vf
> > *vf, u16 vsi_id,
> > 
> >  	/* ring_len has to be multiple of 8 */
> >  	if (!IS_ALIGNED(info->ring_len, 8) ||
> > -	    info->ring_len > I40E_MAX_NUM_DESCRIPTORS_XL710) {
> > +	    (u32)info->ring_len > i40e_get_max_num_descriptors(pf)) {
> >  		ret = -EINVAL;
> >  		goto error_context;
> >  	}
> > @@ -726,7 +726,7 @@ static int i40e_config_vsi_rx_queue(struct i40e_vf
> > *vf, u16 vsi_id,
> > 
> >  	/* ring_len has to be multiple of 32 */
> >  	if (!IS_ALIGNED(info->ring_len, 32) ||
> > -	    info->ring_len > I40E_MAX_NUM_DESCRIPTORS_XL710) {
> > +	    (u32)info->ring_len > i40e_get_max_num_descriptors(pf)) {
> >  		ret = -EINVAL;
> >  		goto error_param;
> >  	}
> > --
> > 2.51.0
> 
> Behavior change / potential regression:
> This switches validation from a hard‑coded XL710 maximum to the per‑MAC maximum.
> That will tighten the limit on non‑XL710 controllers and can reject ring_len values that previously passed validation.
> Please call this out in the commit message so users understand the change (it fixes an over‑acceptance issue).
> 
I will add below comment in v2:
  By fixing an over-acceptance issue, behavior change could be seen where
  ring_len would now be rejected whereas it was not before.

> Return codes / logging:
> -EINVAL is fine for invalid virtchnl parameters; please keep it silent (no dmesg) to avoid log spam from misconfigured VFs.
> 
I didn't add any extra log and I don't see any which would be printed
when this error happen. (I checked the callers)
I could be missing something though.

Thanks for the review!
I will wait for your answers before sending v2.

Gregory
