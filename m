Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 73065CB9C09
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Dec 2025 21:20:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0B587411F1;
	Fri, 12 Dec 2025 20:20:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2baQz3iqlsRm; Fri, 12 Dec 2025 20:20:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7AA28411FB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765570835;
	bh=2dhlh7OdXKBr3b0nMpGXhCvsPZu0RS3ZJEhWknd8zwA=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pJn98yBXNaA86FTYc5f6LlzSKXzk9ItFMqiR1nNkWCAO7DiMtKPtliCfokvCRrg4w
	 DUrd42tSK0N6cM1gSL6SkFlEr9ZCor6Gkh7g+p4gsqL1SL+g+w01XYb4jpMZpG/5dF
	 NpHLWnqQ/I5DRuV8S5yn20ilx8Ll3CjF/u0EvCMO0K87UNkOybWquKzDaz+qrSiIhD
	 0XZ61SmHpUr14FlDeLqRCMeMZhOedDh/1w5z8mTCJcDreoNVFLqzTGgEFC7vyKqu8J
	 CDjff4Lyked3DicZ+Hsx9aI+OTi6C0Vh3/nxuZ/DzlMIivmuZlEA+OSmr2m8RcIDi4
	 HX03wySYqjBkQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7AA28411FB;
	Fri, 12 Dec 2025 20:20:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 948A7E7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 20:20:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7B29E40510
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 20:20:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id h6er1k5NzFyW for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Dec 2025 20:20:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=205.220.177.32;
 helo=mx0b-00069f02.pphosted.com; envelope-from=gregory.herrero@oracle.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 80CEB403F5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 80CEB403F5
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com
 [205.220.177.32])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 80CEB403F5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 20:20:32 +0000 (UTC)
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 5BCIgYQC088619; Fri, 12 Dec 2025 20:20:24 GMT
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 4ayc9q3wdr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 12 Dec 2025 20:20:24 +0000 (GMT)
Received: from pps.filterd
 (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 5BCIBxax038161; Fri, 12 Dec 2025 20:20:23 GMT
Received: from ch5pr02cu005.outbound.protection.outlook.com
 (mail-northcentralusazon11012011.outbound.protection.outlook.com
 [40.107.200.11])
 by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 4avaxddvr2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 12 Dec 2025 20:20:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ACZ+3sibKps68ofTa+GSOwZGwGLC/RtWkVP5ZCV+TMTxIxmLGRl4pKF0Wng8/HbyYr5y6PtjpDatG6tDhkmwqDn3K7GrpBl43xBfar/fU8y3Pu+RS8uANGowA62SSVShCuF+wbM8LcAresfCuueJgC+mJuKQ2aJ4/jPIGiEGRZx/nPx8Yrf53CjRwEv/3wGScbP641E1WnMTIAztMPgxhqokiEe4Me4z+2qyizIUIAK0NSqh53z/YPsWK1VAyfVnTO9Hu/YEcwhFx7qT5jYvsdwdc2AOVgO+XBz6v++TVMmM/7hmlD+hmpv18lQIN6BbFDIWodMqkJ1GM/fCsb5tyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2dhlh7OdXKBr3b0nMpGXhCvsPZu0RS3ZJEhWknd8zwA=;
 b=b2aH1JSAYvVD0ynnj9QP7W+dtYXu5vA3ldNI69XWp55CaYxnmnOoCmMuXx50oLTzKjXs8pb2t+kM4quIrYK5S7n2pszNIHtbwY6mV+UCUBZvlTWww1Bk9OaBU1y5lJdQglnaPIJrNV97M1RxJjrKI2DfVIOWXwq4c4dOo4+GcGS6uuLFW11JqtVWt+aBFKbNPao3AWw/udApFZRANNqzf/B219OU3PHL1Pm6c+ie5il6B4UzxrZvbFWVfJ+QV90C+VVTsJZZkV0DheK8jMNvROXqWMry7B3qXfGjvrwnefc5xPjoiuckDJZPuHNAzKXMER4tW+2zDIHA+1ZKZacXBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DS7PR10MB4846.namprd10.prod.outlook.com (2603:10b6:5:38c::24)
 by SJ0PR10MB5892.namprd10.prod.outlook.com (2603:10b6:a03:422::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.10; Fri, 12 Dec
 2025 20:20:19 +0000
Received: from DS7PR10MB4846.namprd10.prod.outlook.com
 ([fe80::ade8:e990:1af7:f5f8]) by DS7PR10MB4846.namprd10.prod.outlook.com
 ([fe80::ade8:e990:1af7:f5f8%7]) with mapi id 15.20.9412.005; Fri, 12 Dec 2025
 20:20:18 +0000
Date: Fri, 12 Dec 2025 21:20:14 +0100
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
Message-ID: <aTx4_kJ8oex50QKP@oracle>
References: <20251117083326.2784380-1-gregory.herrero@oracle.com>
 <20251117083326.2784380-2-gregory.herrero@oracle.com>
 <IA3PR11MB898600CF2E71D699036834B9E5C9A@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <IA3PR11MB898600CF2E71D699036834B9E5C9A@IA3PR11MB8986.namprd11.prod.outlook.com>
X-ClientProxiedBy: MI1P293CA0012.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:2::10) To DS7PR10MB4846.namprd10.prod.outlook.com
 (2603:10b6:5:38c::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB4846:EE_|SJ0PR10MB5892:EE_
X-MS-Office365-Filtering-Correlation-Id: 03959d60-e547-4640-38f6-08de39bbddca
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7416014|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cWlvSWwzUlFMWk5pMXQ3alp3c0c0eDZyWlppbXM5VFljWWwxMGkrc213MDdz?=
 =?utf-8?B?V3BrVlJsWkp6Qi9sVmNmNVg1a1YrbUxQRzhhMFdmTWxPSEtKUnQ1emN2dmMv?=
 =?utf-8?B?MVhqdVJHNDA5RFpaWE5TdmIvTXNHcG5zUmJoSnFpSStURmYwdXVPWkRNSjg2?=
 =?utf-8?B?Tk50Vm5OT2EwRytVUjE1dUJqT2djd3hkYTVLNVJkeVZTQldMZ3kzWWhENVJ4?=
 =?utf-8?B?KzJmRFVxVDMydDFnLzJYSWU0TVFQdmk1MHRJZjFYUXNtVWxxSGprMGM3RDcv?=
 =?utf-8?B?Rjc0NU9vNjNTQTM3eklwUnZRYlA1VEN4YzRsRmw0Y3BEOGdEYVJaL3pIQ0ll?=
 =?utf-8?B?YVl3dEtZbi9MdngrWldoWFdONXJOTzZCZ1pRNVMyb2hhUVFiajladjYxcUtD?=
 =?utf-8?B?cys5dzd2NkZYb3BUc1JhR2hoeXFudW04VVFkTDVodjhMenUwV29JVHNsZ0hZ?=
 =?utf-8?B?eG8zMXdkR0FpbktkTkluWitNcnUvaVJBSURzdGlHT3dxN3ZxNm9oSGJKQ2xr?=
 =?utf-8?B?MWpGYUtzaXN5dU9QUHRWUExqZjlQSWVJOTBKMkNoV0pkdTM3dGVudUpWVEVt?=
 =?utf-8?B?OUtmcGgvNEZ0VjRsb216ZkJTdlNtdlBRTEszdjczRUd1UjdSZVBXTnJsY3VZ?=
 =?utf-8?B?dlY5bHk2aEFzSXVqV0RrdVNUdDArT055MktUMmtSb2ZnSXZnR3o1S25qRnhH?=
 =?utf-8?B?SzJOQkJqa25BVC9GanBrb2Fremc3bEJTWVpKaEh1b1REdGF3WVB6WmJsKzNs?=
 =?utf-8?B?Umt3QXBFb1FjcGdWcE5zd1psMDl2elNaQ1ZjV3J6UDJlWkJQQ0g2LzlYVjFN?=
 =?utf-8?B?NUtKVGwxZGVibVRyVlhibUpsaXkvbjNCNTduSm1ERkMybWUraHRaa2dqVFVJ?=
 =?utf-8?B?UTBxdmFjWCtQaWpPMzhKa3VuUXVYYXNIcEU0MHg5QkxUUFNGSDhFdHZaQ1Qv?=
 =?utf-8?B?VXpoUDg4TzBkKytlY2JYSU5xUjBzYTd5bTluRUFIVkpOZk1ZcVJkUWxQZmI0?=
 =?utf-8?B?YUhvQWxtTFVVcTYxMXdEek1DNGlVSms3b2lyc0xVQzFsN0FpN0pyWCtmbzZo?=
 =?utf-8?B?aE4wWk4xUzhLb3pMRU5xVUtKNUVWN0RVWEJRSmQvM3dzaGNvc21seGJ6WWg1?=
 =?utf-8?B?ZS90ZVQ4dzllbTkyRG56bFI4QTFpRFdwS1EvWVUwSXF5NUZzaVNYVzNHRTBv?=
 =?utf-8?B?aWZMMzFvVkxlNE1qeHpqcThyOXdMa21TUjREWGZDNnpHWjd2Wm4zcTE3a1lU?=
 =?utf-8?B?czBwZ0NodmRuWDNDTGxwTSszZlMvdWVNUUtDQS9tOUFxK1Y0YkFEUkJmb0du?=
 =?utf-8?B?QzcwY1FmQ1dlU2tGcnB6QklzVTFUNlJmaHhOU2ZzYWkwSFNDN3Z2d2ZOU2JB?=
 =?utf-8?B?K2dXbDUyeERaY1poSVpSalE0dDdnRFUreVJoMnA1YmlmN1JWWFRIVWRzN3lV?=
 =?utf-8?B?eXRES3B3NURkbW1DTjQxN0lEU3R6cTQ0TFBoNEdDS2FPWVZ5bGgwbGVWL1lI?=
 =?utf-8?B?SjlOak5zbmNzdFp2L0w4cDkzNTlzNXl0UWY0b3JHMzVRVXoxS1FTT2VLNHJ6?=
 =?utf-8?B?cGl5dm1jT1AzZ3MvdzhYVTlJQWUxT1NSK3JrRmhYR0l2dW8vVUl1czc0ZUlu?=
 =?utf-8?B?ZmZTckM3cEVleFBlbUdCNVFvS0dNRm5ZMzIrbVZJVU96cnVUaC91VVBKYnht?=
 =?utf-8?B?VG9vWFh6SUVxUHNMK3VRZTNkekJCZ2VuL3JYQnVncS9yT21LL2g5SVMzNXRr?=
 =?utf-8?B?dERVcnlqd1lTVE5aZFBkVUFwV0hWbGo2MnhwTWp6OU9KZG9oV3o1TlliWUh6?=
 =?utf-8?B?SElNVXBXYWNHVTdLelRTR0tZK1l4OEFEbEh5d2NLODB4WWYxTDJWOWpBRGxi?=
 =?utf-8?B?ZFZyQUxFaCs0blRnSER0MVVRVXgvd2tBMkpyYTV6aVhUeGlpUlFEbXQ4dkxr?=
 =?utf-8?Q?nifFGUc3KWO8OwDt6uQUf5j/fsgEgshJ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR10MB4846.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7416014)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UGFaUkZuNUp2M2dmVjE4N0dIVHhzclJXaHRtV1gxSnNsMGNib3lxbGFwSEZr?=
 =?utf-8?B?UlF3bFhGQTFyL0t1SzBEekgydWl5SGhVYzdyMDhWcEJLa2ttQzRTWENRTU8z?=
 =?utf-8?B?cDVGSkZwWjdON1RrMnplR1FVVkdwS1I5V3RMaTc5MjFwUDNXenJCLzViRlNG?=
 =?utf-8?B?Q0gveGFMUjJHZkRlcmV6aS9Mby84SldrOFNxZXJoZ1lPR3NJNjhkODF5YzNq?=
 =?utf-8?B?TlNuS3hPWG5ySXNIZmxqRm9vUzE4LzlCM0xFdEhKYzltem9pdlpsMXlYNzdS?=
 =?utf-8?B?QThZODZOM1BIUGpXeGd0MUlCU0FVc3pqYUU1MWpzczl4N3QzYW1tV1c2T1M2?=
 =?utf-8?B?NjJzU2tmMGh5aXlNQ2pDOXZBTTJCOFhGajJHcHpXazBnYUhzeklnbG9qZkNa?=
 =?utf-8?B?ekZvendZVFg4c2Jad2h1UTVodXp1aS9ramRnOWMwbTlHdjVOVU1IQ0xKU3ht?=
 =?utf-8?B?VFJhNDY2bmVYYkl3SUVNbDFpenprWU5zcGo0UEF3ZVVHMlg0ODNnamsxSVZF?=
 =?utf-8?B?amFvM3lHNWpUQlkrTGxXZVhVY2VaSGVWZjkzYU1HOVVSVmhOcFhBYXgveUFO?=
 =?utf-8?B?MEVnVnlNdnd2Y3pXRm4wdi91Rm5jbUlnVllkWnl4eEUweHI0Rm9pY2RyYXM0?=
 =?utf-8?B?b1hGKzYvbkZFdUVUa2doKzJEbFhCemkvb2xQbWk1Zm1Bc2N5cUZpd3JQbDRS?=
 =?utf-8?B?bFYvb2x2Yno3dDFwdEZTSjg1RnFydUJlY1pnNXdqUk42aEJvTUp4YmFIcHhB?=
 =?utf-8?B?bmZpN08wVzJ1SHQ5VDhpRlJTSmVONlBXRmxIbzhPaVhTUlNtUlNXZkFCemFP?=
 =?utf-8?B?STQ5akYrWWhPeWlmNmFCS2ZPTXovVVN6cDd2YWs1UkhFbE5TdEZFcUFYbnp0?=
 =?utf-8?B?cXA3b05tL2t6Z0w4T3RFM2duN3lxR2U2RzFvMHdNMjEzN2VCSmI5OHNlS0tD?=
 =?utf-8?B?WGxyZVpYWjRWdUhVazhkZmo3WlJWRjJOanF0NVFHSFVBYlhXanJRYzhvS0xO?=
 =?utf-8?B?VzBKaU5yNGxFZXh6ZHV6V3huWmxiZXNMRjVpMGVZUk1ncW5kUFU5eXg1MXdD?=
 =?utf-8?B?WnFpVWJVbWlZMjJQWDB6SE1xYWRyQStBL1RzZE9ZOEpVUGdHTmdIYlkyenM5?=
 =?utf-8?B?Ry8wRUVQemVOemRDUUJCZCtCVTdCOXNmelhNbUVFaFJaa05xSUZVVnRVcUls?=
 =?utf-8?B?SkdLMGhMdnkyaUVZbkFXay8xRUl5cjc2T1hRWTN2RE9pMVJrV3JxektoeXFO?=
 =?utf-8?B?bk5LaEllb1hQaXJkczRuRko4aXBDQXpBSHp1VlBCWmxZSVJKd1hzOEU1OXV4?=
 =?utf-8?B?bjVsSlJlNytoRUdsQ0Y5Y2lRaGdRRE5OdmNVdGFPcE0yWHFnbFZXWkQvM2Y1?=
 =?utf-8?B?N3drakNqdFgvTmxmQlFsenZWL0QxVWVtb0hMTzI4MFNITU03N0d3aWVkUVF0?=
 =?utf-8?B?cnlXWjVZYXo5QlU0eXlsY013dUpQWG93YTU1eU9ZY053OW13UVRkTHNpK2Rt?=
 =?utf-8?B?Yk9IQ3YvS2tYeHlVSXFXVURtVWo3VzVmQ3BhT0tHMnU0cGVJcHFHTmRaMC90?=
 =?utf-8?B?cmJzT1NNZkFiK2FSVXl5L0pFUUh6SDdjVDlBL3BqZk4xQmJ0TlRxUm1tQnoz?=
 =?utf-8?B?QmNMcGVNV0NBak4rWk1vbjFyYlVCL0UzNnZ4ZkhCNDczVjJDc0NHSHg0bVlo?=
 =?utf-8?B?QkkxNFVSMnVCUnNuc042S1VnWHIzTmQ1d3hyZzJvVGVORkRsZTlHc1czVjhz?=
 =?utf-8?B?QnR6MlUxbldKSS9TeWluNjZ0MVhSem9jU1pKSnhRM0FKS3JzZ2xPUWdJNFoy?=
 =?utf-8?B?bEVLazlYdlNoNm5xQ2hmN3ZRc21scDcyd2h1ODdTR29sbEhxTTh2V1d4alVF?=
 =?utf-8?B?cFpqOVpNUlV6bTJSQmM4UFdGNm5MSzFVdUFRWmhocndpWnFsRldNcEhtYXhQ?=
 =?utf-8?B?UjlaQWJ2V2lBQ1Q0TTEyVzBxV3ZIVjlBUEV0dGRlQXNUTU5NcUExOUQxc0Rz?=
 =?utf-8?B?emlBUStXcExCWFNwR0MzczFmZGJ4Z1ZMNHVIM3pPZE9xaVBnbnc1WFlqc0Y2?=
 =?utf-8?B?bjlucTF2RjZmMmxUMEtubFNmYWwxQ1JjczFBcGRMT1VhLzg3Y3R6V3NJNW9n?=
 =?utf-8?B?OEpleDFzNy9iTzc0MmE1ZmYzL0tGbTNUa3Z4WUkxMjVjdmdIWUVrYWtLWTNq?=
 =?utf-8?B?c2c9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 662Nxi55uS9Cux53O3bfxdAPbklAnp9Wc5+0860p0yVfyY2eXHACqB+hnARtMuA5j+FJwBlCzk+9SAJeA2r1XCfyyYUQLFhrA7uplzBUoc4Zchi1peuYtTdtd7AgMFwsqYLfajTaPFEFmVIyXUWskNaAK5augYotUXQuE6EoTZRXreKcpBI9373EDh2FoWQNPiO5aN8ARxwuuIHdy4huGBqW3tN3lXv1mSXuyZ0vbyj3BMJCaBuvR/bIk9uU0zhkM0J6dv8khOQ33eo6ym9h52onAzi3tySrNI1THyc0zNQANxjXJS3W6WUa1NZMKJXMuOUlx/Iv4Tf/iTfhDozsoSaySeiZTMObVPUmEFPhG384IpLn5euBIrPMnAxORfyGFPv/aJXcdekNNajnOgq94+67kGf+eoFXBdyOBSlptwybX3rjlQJJtVDZq6qVTxmcLZKOQDo2y2YFTDFxqWMjf2+JZwCbiL4u8XB4YD6NKhq5fgFfH8vS95HVSMRbZcbP+h1iV5SxsOeYL3Mt41dx9Ls1qSFyvgFgn9kMzDOYM0JEOjtOIqA+OflkodvY6ANg3wXIdZCY0sYk1ygOspt5OG+ntECNkrw1e9KJFnHsKgo=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 03959d60-e547-4640-38f6-08de39bbddca
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB4846.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Dec 2025 20:20:18.0354 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BthPcUurQYClZq8+gT1RXz4pJwPjqWJ4ZBg94N881eWS9uWrgba8Mz/FrIO0VWUlcXaa8jLN5OR0t9Ljzup11fxf/e0qyIvnEI2bCf1ANAc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR10MB5892
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-12_05,2025-12-11_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 mlxscore=0
 mlxlogscore=999 bulkscore=0 spamscore=0 adultscore=0 phishscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2510240000 definitions=main-2512120162
X-Proofpoint-GUID: 1tsTMlXnTw5_L9NGbbmZA3jP5zfTQNlK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjEyMDE2MiBTYWx0ZWRfX7wlEO0l99avU
 rAlKvZa75hfSXXmBHDyOlibwEtMKyYJ6VOk4I97lP548ZlbqHHzhF0XGmXW0JN6xJQVU/Hy3aSy
 t9Jag+63oVr9tT6o4awR7OVRUb6/T2ubRkQM+HCNrHEehtS3xnyi0W4cw6NPo+iDV2NBFWQf04p
 OxZTbfRJuUZmW/scFCAnP+Sa8HHo41phUwi6poivvg8sOY3II5D586+kDkX/E4YV744mYBW4kYI
 +igmwaMbhIQEA3MrO/Xuegm5gEYAFSLQZ3CKuSts0X2qKDvoaQuajxWWXa4nLKO9vqSk9r7/dnq
 iKv+IMNaBpzREBibHFOUj/MwnnNcp4VDf5gmJvFyztm1kiE8oj9eXgnBDJjlr1zj0Pi0M7jWutO
 zLhnWCwqFUMTl7zGqMc+DOeg1AlxLw==
X-Proofpoint-ORIG-GUID: 1tsTMlXnTw5_L9NGbbmZA3jP5zfTQNlK
X-Authority-Analysis: v=2.4 cv=SYn6t/Ru c=1 sm=1 tr=0 ts=693c7908 b=1 cx=c_pps
 a=WeWmnZmh0fydH62SvGsd2A==:117
 a=WeWmnZmh0fydH62SvGsd2A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=wP3pNCr1ah4A:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=yPCof4ZbAAAA:8 a=QyXUC8HyAAAA:8 a=J1Y8HTJGAAAA:8 a=1XWaLZrsAAAA:8
 a=VwQbUJbxAAAA:8 a=20KFwNOVAAAA:8 a=lTbjQzD5AAAA:8 a=SLzj_FF6gspVG3HOuOYA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=y1Q9-5lHfBjTkpIzbSAN:22
 a=w8YF5asEQ23juLwKoPR8:22
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=
 corp-2025-04-25; bh=2dhlh7OdXKBr3b0nMpGXhCvsPZu0RS3ZJEhWknd8zwA=; b=
 n/ecGxzfMgYCknIHwxgCytuChzZKl1P5NqIim9CsKiEYkvZsz8t8JBzWbsmDs6lE
 21qh0beKwfH7fVYhx/vQnH0B2w8k19AIuDbcr2+dCQZhmgKT05JnfAmzYH3J5mbp
 5UzlIkGs17eFCuIKRgKXS0SmlsH8hxn3f262CEya6DMfvC0OZm+MPw1zKC38dg4w
 VhIZQ6hV3HtCAHI5FiKSM5vcoqDvDrtBDuzoiuj8U+OI0M8b53A4FTPrbJCNx1hW
 DZ8Pqh3XR35qnc5qb5zLL5eNWCe/IKf2ZK2w1zH7qnwQSA06i2JjTS1e1R1+y/PS
 DH9f3XFQauk8WyLkEnYW0w==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2dhlh7OdXKBr3b0nMpGXhCvsPZu0RS3ZJEhWknd8zwA=;
 b=gtHx38ogDUus8hGwA6KO7DIAPcCPZe8uBb6UcQ71xaGKchj0s1mD7OFYCKi+YTSH9GNeij1BHaabr5SKhYnEkzaq8VdCDncY3mZZmhYoClbBcKh2fd/KTKl696cbx4g4/v1y6fAzmUDxhmhqAnP6vG9R4CQdD4zIvPgzzsMToRU=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=oracle.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=oracle.com header.i=@oracle.com
 header.a=rsa-sha256 header.s=corp-2025-04-25 header.b=n/ecGxzf; 
 dkim=pass (1024-bit key,
 unprotected) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com
 header.a=rsa-sha256 header.s=selector2-oracle-onmicrosoft-com
 header.b=gtHx38og
Subject: Re: [Intel-wired-lan] [PATCH v4 1/1] i40e: validate ring_len
 parameter against hardware-specific values
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

On Mon, Nov 17, 2025 at 11:58:48AM +0000, Loktionov, Aleksandr wrote:
> 
> 
> > -----Original Message-----
> > From: gregory.herrero@oracle.com <gregory.herrero@oracle.com>
> > Sent: Monday, November 17, 2025 9:33 AM
> > To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Nguyen,
> > Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> > <przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch;
> > davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
> > pabeni@redhat.com
> > Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
> > kernel@vger.kernel.org; Gregory Herrero <gregory.herrero@oracle.com>
> > Subject: [PATCH v4 1/1] i40e: validate ring_len parameter against
> > hardware-specific values
> > 
> > From: Gregory Herrero <gregory.herrero@oracle.com>
> > 
> > The maximum number of descriptors supported by the hardware is
> > hardware dependent and can be retrieved using
> First paragraph uses “hardware dependent” (no hyphen) while later text uses “hardware‑specific” (hyphenated).
> Prefer “hardware‑dependent” for consistency.
> 
I will address in v5
> > i40e_get_max_num_descriptors().
> > Move this function to a shared header and use it when checking for
> > valid ring_len parameter rather than using hardcoded value.
> > 
> > By fixing an over-acceptance issue, behavior change could be seen
> > where ring_len could now be rejected while configuring rx and tx
> > queues if its size is larger than the hardware-specific maximum number
> > of descriptors.
> > 
> The message explains the behavioral change but does not state how the change was tested
> (e.g., which MAC types exercised, ethtool -G paths, VF configuration via virtchnl, acceptance/rejection boundaries). 
> Netdev routinely asks for this when behavior changes.
> 
In the meantime, Rafal Romanowski tested it so I will add:
Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>

Let me know if that's enough or if more details are required.

Thanks,
Gregory
