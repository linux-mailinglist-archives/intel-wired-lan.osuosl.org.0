Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 31C448D6D08
	for <lists+intel-wired-lan@lfdr.de>; Sat,  1 Jun 2024 01:52:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DC539610F8;
	Fri, 31 May 2024 23:52:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RRi0CpyF510J; Fri, 31 May 2024 23:52:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1CA8A610F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717199551;
	bh=H8hrMB1/+iMIf4/aal01SSgjrPaDwZa3K14TCHlKsBI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tyEtfkqyf8DAebO91/Hea1Bgi9ybDIDT9SqMnPFbua5U+EnK4g7BCQ6/lZFAWzp26
	 0Hth/cu6/4+jQiC69zHJlzMCEKcPiWQ1q9QIj4tg49bfjT+ypZz6qgahqBBPey/c2Q
	 qkkfd8a9U6DsrTd/geNpqR1ccEIi54GqodN5DaM8CfIbCQCPJOxXWUrNNW93kXVYJ3
	 OhuyiTHTWzrBUcBYpljZ1zutuza40wWsF1bWFZcd63tB6tdODSkghnc/W/dH+K5Br0
	 25NXJNEpFERjaJNi4PQZ2LNCVOW1VwVr9DA+ITdtI9+e1Vd9ttsBCGH7lbHz/dk7GL
	 5NcdyYKp7ytqw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1CA8A610F5;
	Fri, 31 May 2024 23:52:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2250E1D4984
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 23:52:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0D4A84187A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 23:52:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pzDpRRA--yO4 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 May 2024 23:52:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.243.76;
 helo=nam12-dm6-obe.outbound.protection.outlook.com;
 envelope-from=shannon.nelson@amd.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9EB8D400F9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9EB8D400F9
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on2076.outbound.protection.outlook.com [40.107.243.76])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9EB8D400F9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 23:52:27 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L3QY2HwIkgfpEFVqeSG8vuwRc/vhofUDw0e5XkqZzIc9DLobmDjLFiMdjtXSEaSjwYJNDv5UOlyeYwHOhCyhd1WLSp62ByLb4W37RAISVnZpVHeZs6u3NIFCafuO9EPcDCInyUvvy7AzJDBbua9CP2RR5/956xtXsuYF9c4OXb7TgqkFKe1swXMSF5Rj9fsqRlvsIfZC5ZJj8H7/iXzf6YZ/27JjRrp9aUUuSFHLZElseYsefiMJIcjk5X3x1FJhglEdxvoTAs/ZZgedu8nJ0C6jrjJxA6HKTQmUhwC93e89w3VOTbX8RpomXwoYzCV0ntqsfT0U+Dh0E3ZZKDnCxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H8hrMB1/+iMIf4/aal01SSgjrPaDwZa3K14TCHlKsBI=;
 b=jHqmvp6UvrSeW4JjnY2hru67KqFIz/x2QCrzlWFyOxjeY/Mge4/xpMFpmyepuLtRE7ijqB8IYw5/LivCccwRXuv/0MvsyAw88d0riLleJOuIcXCYN5GeXoIvu8xpyje15vPP3GHaOIw9GAcwLptQCO4OqUMKdH2Kzw5DwUKj1kjOCjLBXmzcXJHZaLi3T07FSDe4xH5o8CNTDuU0bJovZjT4YfV7SHpEevincEokQYQ1x9JYteu6gHNeqnpZSR9hHPQLVdAdULned4zo+I+WKJRkk4gYJljrJ3CgAc648ifxb4CPrgIWB0xHvfToaY/j5thelrm1iU5Z28ofVVQQZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from DS0PR12MB6583.namprd12.prod.outlook.com (2603:10b6:8:d1::12) by
 CH3PR12MB8880.namprd12.prod.outlook.com (2603:10b6:610:17b::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.22; Fri, 31 May
 2024 23:52:24 +0000
Received: from DS0PR12MB6583.namprd12.prod.outlook.com
 ([fe80::c8a9:4b0d:e1c7:aecb]) by DS0PR12MB6583.namprd12.prod.outlook.com
 ([fe80::c8a9:4b0d:e1c7:aecb%4]) with mapi id 15.20.7633.018; Fri, 31 May 2024
 23:52:24 +0000
Message-ID: <331ee4dc-41eb-4290-b263-3fab1ca50654@amd.com>
Date: Fri, 31 May 2024 16:52:22 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20240529112337.3639084-1-maciej.fijalkowski@intel.com>
From: "Nelson, Shannon" <shannon.nelson@amd.com>
In-Reply-To: <20240529112337.3639084-1-maciej.fijalkowski@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BY3PR05CA0037.namprd05.prod.outlook.com
 (2603:10b6:a03:39b::12) To DS0PR12MB6583.namprd12.prod.outlook.com
 (2603:10b6:8:d1::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6583:EE_|CH3PR12MB8880:EE_
X-MS-Office365-Filtering-Correlation-Id: e462d7de-dc3b-4898-1c1b-08dc81ccb841
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|376005|1800799015;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YXpMVDBXclBTck50OVcrbDVCaWhOYzY0d0t5dWJ2Q0RTeDh3cElsamlzTnJp?=
 =?utf-8?B?MTRjVXRYdDB4eThTL2xreUFtaDFZMEJHelM0Zk1IWUEyOHB6VFMreGRRT0Nx?=
 =?utf-8?B?WVFRWlh6WlAyZU0wM1FNV1lqeHhoTVBCcUJhODdRZFViaFBFTmJKT08zSnla?=
 =?utf-8?B?MCszYmIzZjZUa0xWdDFXVFY2ZzhISjdMUEE4R2RQZmpVTUtXaS9DRHpDamRI?=
 =?utf-8?B?YVZJWk9XbzZCWE9TMzNSbE9BWXBDd2hKSTYzVmx6MVpOcXFkbFE3R3FlRWVW?=
 =?utf-8?B?Tk9QaGpTM0psK1FpbFRjMUlMZmdpNUEwZzlmbHJOTUxjNS9laDBCQnFKZTF3?=
 =?utf-8?B?ZzlIcDZ4ZDZuRG9XaXBNSTNRYWJVRVdnTnNJaXFDQlNhV01uVlEvR3pCaHhr?=
 =?utf-8?B?ZnRtT2ticzV3WW14Q3g2Rmh2VGtvN2prejFVYlRCTkFuWXF1bVQ0RmgycHl4?=
 =?utf-8?B?VDhBUVRJRFpBdFRWS0J0bkRmeEd5R2xkWWtsUHpLZEhlME1ZZUsrWXhlSlV3?=
 =?utf-8?B?dEpTVm5Ra0xXKzJmLyt2RDRRZHloWlFpbDZkcWJqWHZGWkxHVTRwa3Y0SXlu?=
 =?utf-8?B?TWh6RW53RjdPelJpVlNrYXc5cjhFZWx5T0hIR2tMblNmcWVzMllBV041OVd4?=
 =?utf-8?B?bzNHOWp0RWVtVENudm9uNURGMmRlNUN1czhRMXkyMG9SdW15aTNDaUtCTDl3?=
 =?utf-8?B?UVRmQWplSGtEV2JQMHVFNWlOYlhta3R3c0JGZkdKbzNialJzM2Nud2dOTmRt?=
 =?utf-8?B?T1QyRlVXcFAvb01KTDhkYm1kbUpycWJXdXU0VGRqYktXeG1laklocGlqelNM?=
 =?utf-8?B?Q3lsUG83czZqdjRoMkt0Z2wzb0lvcXRlbDlVRnAxWHlXcGNEb2pNeU5EQlJD?=
 =?utf-8?B?U25ISlQxWFd3V1ZVMTdvQ0I4Y3pxSktCRnRKd2QrMk9uR2lXQUJPWnBwa1M5?=
 =?utf-8?B?TndWdFJyVnJzUDEwNXVxeDk3a1VVRkU3elZZQnVyV1A4dFNvNmxPa09veFY5?=
 =?utf-8?B?MHFrTlNMdVBObG9lTHJmcG1uYkhON1phRWpYWXVlK0hWeUkzeUMrOXdEQXlv?=
 =?utf-8?B?OXNocVY2ODI4dXNobHRUNUxXc1RZc3R2ejhSVGh6c2srNUNWcFdWVE5xeEJ4?=
 =?utf-8?B?d1RQN3NaK3hPeHhBTEtlYThkbHIvVDNpaFNTcjVuN1hGV2pnNFFWRkJsTklL?=
 =?utf-8?B?V29VSW40VGpSdGRNckhhcGIvQTV5OXRxcGtTVlQ4WncxcFpWNmNOYlUrZnFy?=
 =?utf-8?B?ZkJLWkNOY0NYRWRxV1BIUFJROFJ5aHpXV01CYWlpM1JyTXNQWXhucVd0TVVy?=
 =?utf-8?B?Sm9oRDBEeG01Z3VrSWdKN0t5UjBldU1EVlg1QVp5M0NOV3U3WWdBWGg3YWpP?=
 =?utf-8?B?bjJoYTdQbmVYSEowY1ZrNlJVL00zSHBubXhzQk1id1p5RVFDVWJXN05QRkxT?=
 =?utf-8?B?VEZJQ1VLYkpzNVM5aGs3ZFhxandMcXVaZ3hxekdLYVdJYW5Ed01OUVcrb3hP?=
 =?utf-8?B?ODliclpMbGl6TVhvY0hXb0QzL1RUcFp6aXczTmpTUU4xMnlPWERqT01jaVlv?=
 =?utf-8?B?eTFXL1prNmRIK0x3cGJtcTVPbW9tUStuZEw4Q3pTWDgvNVJlcDVNeVBLTkNy?=
 =?utf-8?B?UjNJNzRXRVpEOTdiSHNaMC9iWnV3djlVcDhjKzJBMFdEdmJiQVI1eGVBQWpj?=
 =?utf-8?B?d2tDK1dBblhCNHRZZngxNzN5MWxLcmg2L0ZDLzgxREtENVEzRUc4czFnPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6583.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VkkwYWs1STgxc2Y4N0RId0pHbDNFSVR6ejJwMVV0aUpKcjJFUnM3cFRSallQ?=
 =?utf-8?B?bXZaYXoyMXoyZmt2cWtncTVKVHRUL0tRb0tYMEZuc3VVTHZadWNiNTExdFpn?=
 =?utf-8?B?VEg5ZVNia0pNRmFVcnJxQjhDVm5yaXFETk9vUmhQTHJqcVZ0UnFoTGZ0anlV?=
 =?utf-8?B?WDJ0SFF3dk5FWWpWM1N6WFZiTVNzKzg3ZmJrMGtWdGNTNGF0aHpvOElIMDJt?=
 =?utf-8?B?aFllMzVJcUpPWGNoU2pZb2tHSmhSTGRPemZmcCtyY0QvYmZHclp3VVhSdmVo?=
 =?utf-8?B?MGVmNENlR0tQTjBtRmgzK2ZIYmRmVzVvRDZYaUR3YkxvK1pFUjVidVdFdUZ6?=
 =?utf-8?B?VS84ZGZGZ3M4Y2wyUEhyN1B1VTlDb2hOUHZnNk5INGJsZzNEWFowNUtKV1Bn?=
 =?utf-8?B?NS8zbEFPMk91SDBSblFXSUhnblpab3lST2FDcVEweTZETkcweFdKS0thQW9C?=
 =?utf-8?B?MWdxZkt4RTVWbGllWENxTUxScWd3b1I3TGFmV3F4WXVQazJuaWpucXpUbmdy?=
 =?utf-8?B?ZTFCeVZ4OWx5eFozTG8wSC9FSlBGT2FEZ2lxNzZZM3VoeGlLb1hFMTIvTmY2?=
 =?utf-8?B?NkhDOTBIUE1ZMGdscjlsaFVnMmovT2R3M3NNRmo1N2RpY3NMUHQzZ1c2VXpj?=
 =?utf-8?B?dUFLMlF6K1R2aE1ycERrQnliUTlGd0xnUHI0ZHJZaDdRZldJa0toc0NValFL?=
 =?utf-8?B?TFB2VUxIbjNPMGRPc0l2U0pLSlVFMHZtUHJXK281b1hPZUVzaEdjUDRVOG03?=
 =?utf-8?B?M2dyWmFac2xUMGlKRnRDdk43eHNIeXRPY3FnNnBvdjVXdy9CdXZFUG4yZWJT?=
 =?utf-8?B?azdHN1FnbWF4YS9zN3ZGTDJvczZJVmZsK2FqQldUbFVJR2VLRGJFQ29RUWh4?=
 =?utf-8?B?Qm11Zkx6Q2duUDdkRnY0RDRUaDlnQ0lhd0lndVhvTzIxbmZjRnVrbjc3VFlQ?=
 =?utf-8?B?Ti82Mko3VlZ6M3BGNmkwa24rZTlpdHE5U2dLREo0VlNXSlJ2OGtaWUloMUxS?=
 =?utf-8?B?S2wva0NNTEgyakRuVjBTM0VoQjczNEVWdzJCOUhYaUlIWnNBaGlPSnNlM0Rh?=
 =?utf-8?B?c3BLYUMrTHg3Y21XanYyZ0VFOENIUTd2bWl5aUFsYlYyL3RndDJTOWt2dm52?=
 =?utf-8?B?Ti9rRzhZM3hVcjBkOU1zdG0xcFRrZ0ZHWmluMjYrK1Btb0R5N1BacW9pcjhq?=
 =?utf-8?B?bi9HdCtORWRqSHQzOU0xanlFVkRsMHMyQWYvT2JKaVhMekMyZ2JpcUk1OWN3?=
 =?utf-8?B?L3djTUdNMzBFMnIxTmRoR3BDUWJFVzYzdTFtSks5dFZxK0cveWxNQXZXdFFq?=
 =?utf-8?B?aE1BNjhQMW45ZDNSbXpYRWszUnhtRWMwdHhlUkhNWTZjWVM1Y0ttcUdGZlVF?=
 =?utf-8?B?Vy9lL0t1V2poeGZtNFZ1clpVY25VT2ozTjFydFExVDR5WDdGWURUZDdnSFhy?=
 =?utf-8?B?WlNONTk1eEs1YnZmN0FnN2Y0SUZwcjFDaE5tdW5sYTc0aE5vbCttK3RqVVBx?=
 =?utf-8?B?dlVBVHRiZjJtS1hOWFEwd1Z2aisvU1BPVk50RVRicXgrVi9KS1JJKy9XVmlX?=
 =?utf-8?B?aXRxRlhFOHVwUHpIUEo1UWNicjFOYVRZWlFCUFIrU283ZVR5bGV3SGtOd3p1?=
 =?utf-8?B?WDlaSkU2RzYrVE5PL3NpbmtpSnM3K3hIdzNoT3dXWWp2bitaZ2h0cngwbDFn?=
 =?utf-8?B?dWR1b0VIbTRIWTNFUzNTV1JDa0NkVlQyWllmUk91eTNmaDdsUE8zWDZubFBD?=
 =?utf-8?B?L2ZUOXlJdlpsRlZrVVU1dDlMRWVoc0F1K1dBaUhJeE5RcDlQVFJPVFkwcS82?=
 =?utf-8?B?WWFaWmN3YkFPRUFkVEQ4OENNZHhQTG14VEV2Q0Yyam95bG9EME0xait0SFI1?=
 =?utf-8?B?bWoyaER1SVVYVHNhZDZzRkpZUVRmaFA0REI2VldrR0JmMEhHdlVpTC9WRnI1?=
 =?utf-8?B?elJSM2pXWnkwREh0M0pKWW84a3dLbjhrQXNxeGpNRnFsZlV6N2haTmkrK3FO?=
 =?utf-8?B?Yk9hKzJBWTdMOW0xS0NuUGlDQ2VuZXhnck1teG1tWTJWRVdUM1didTNGTUJR?=
 =?utf-8?B?RW1pRTUzejVKMXJpendjWjh1aE83bDc1cUhENjdicFRxcTBQRlpObmRpR1N3?=
 =?utf-8?Q?Jy91eoK7OlWs5zz8+nJASWhzJ?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e462d7de-dc3b-4898-1c1b-08dc81ccb841
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6583.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 May 2024 23:52:24.5632 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8MmltAAdZ4b3PcrOIBd5VVjHguUo6sorSoqYQlbBiZBCHg8FpnHk0N+ituCGLRWilIYbxrYYZ+ie69JLxAZDDw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR12MB8880
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H8hrMB1/+iMIf4/aal01SSgjrPaDwZa3K14TCHlKsBI=;
 b=wiqiYS/YgYPsf15FCubkUU/woB6yjHr3UhRDsQD0ErhGnyT2lSVSF4LcUr6Mmb6/XoTaeG+n8gZ1P0wsaRK+5hnszuHvcZv2UyTQFfieWfhhAUGmHMF58jVJpcLVBH+t/VSb2hGpWNq1PwqwzdNTrRCMHUCM67Lw1z4+hmuDcqc=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amd.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amd.com header.i=@amd.com header.a=rsa-sha256
 header.s=selector1 header.b=wiqiYS/Y
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-net 0/8] ice: fix AF_XDP ZC
 timeout and concurrency issues
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: netdev@vger.kernel.org, michal.kubiak@intel.com, anthony.l.nguyen@intel.com,
 magnus.karlsson@intel.com, larysa.zaremba@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 5/29/2024 4:23 AM, Maciej Fijalkowski wrote:
> 
> Hi,
> 
> changes included in this patchset address an issue that customer has
> been facing when AF_XDP ZC Tx sockets were used in combination with flow
> control and regular Tx traffic.
> 
> After executing:
> ethtool --set-priv-flags $dev link-down-on-close on
> ethtool -A $dev rx on tx on
> 
> launching multiple ZC Tx sockets on $dev + pinging remote interface (so
> that regular Tx traffic is present) and then going through down/up of
> $dev, Tx timeout occured and then most of the time ice driver was unable
> to recover from that state.
> 
> These patches combined together solve the described above issue on
> customer side. Main focus here is to forbid producing Tx descriptors
> when either carrier is not yet initialized or process of bringing
> interface down has already started.
> 
> Thanks,
> Maciej
> 
> v1->v2:
> - fix kdoc issues in patch 6 and 8
> - drop Larysa's patches for now
> 
> 
> Maciej Fijalkowski (7):
>    ice: don't busy wait for Rx queue disable in ice_qp_dis()
>    ice: replace synchronize_rcu with synchronize_net
>    ice: modify error handling when setting XSK pool in ndo_bpf
>    ice: toggle netif_carrier when setting up XSK pool
>    ice: improve updating ice_{t,r}x_ring::xsk_pool
>    ice: add missing WRITE_ONCE when clearing ice_rx_ring::xdp_prog
>    ice: xsk: fix txq interrupt mapping
> 
> Michal Kubiak (1):
>    ice: respect netif readiness in AF_XDP ZC related ndo's

Aside from a couple minor notes, these seem reasonable.

For the set:
Reviewed-by: Shannon Nelson <shannon.nelson@amd.com>

> 
>   drivers/net/ethernet/intel/ice/ice.h      |   6 +-
>   drivers/net/ethernet/intel/ice/ice_base.c |   4 +-
>   drivers/net/ethernet/intel/ice/ice_main.c |   2 +-
>   drivers/net/ethernet/intel/ice/ice_txrx.c |   6 +-
>   drivers/net/ethernet/intel/ice/ice_xsk.c  | 150 +++++++++++++---------
>   drivers/net/ethernet/intel/ice/ice_xsk.h  |   4 +-
>   6 files changed, 101 insertions(+), 71 deletions(-)
> 
> --
> 2.34.1
> 
> 
