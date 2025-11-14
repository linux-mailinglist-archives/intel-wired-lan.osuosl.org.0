Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ABBE9C5DEAA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Nov 2025 16:38:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 46ED1607B4;
	Fri, 14 Nov 2025 15:38:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EuCfN8NrVB9C; Fri, 14 Nov 2025 15:38:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B10BD607FD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763134698;
	bh=8b43r2AsbgIlf5OhEWa7ZF5B47EYSvF1vQRbMkzLtcw=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Z9XalgkjeulH8XF4+P7un2Es7QWw9CagiqZhP+mwgXjGzMbUYvFRAGpZ95vGJ91ES
	 98R1QwWmhBJQWF2E9n2wElR+5kmJRW0lcJPYWZxsvSdJBwpaTjq8jrLqCUUhGeYEvX
	 SflOR5UOeHXVLXvvgpG1xloK9KVh1oBZVqG6OsprubFI0fe60xBP2cRxXaCD2yh3K7
	 INkSS1Hb+Y0WzuLnCQ4hSngf9S+X2i3sn6zNyEvvrev1/VjduC4bR7bOrowKTNembm
	 r7VTMn2B79rvNFpgiBhlBwONFOWfaeCCPbzU6fe7FyF0pDpOYd/vQ3sHUA6paji3eT
	 xyW1ArDRu+cuA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B10BD607FD;
	Fri, 14 Nov 2025 15:38:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id ED53E158
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Nov 2025 15:38:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D461C607B1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Nov 2025 15:38:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TQjb8Ls7X-Dt for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Nov 2025 15:38:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 05A3F60747
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 05A3F60747
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 05A3F60747
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Nov 2025 15:38:15 +0000 (UTC)
X-CSE-ConnectionGUID: o6sVsx3JQQuU5eDw2VgB1g==
X-CSE-MsgGUID: y8gqhOLyRTq5bfunmcoU+A==
X-IronPort-AV: E=McAfee;i="6800,10657,11613"; a="75911300"
X-IronPort-AV: E=Sophos;i="6.19,305,1754982000"; d="scan'208";a="75911300"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 07:38:15 -0800
X-CSE-ConnectionGUID: 7ETkVlyKSBmFvQDLdosU+Q==
X-CSE-MsgGUID: Fmx2LhlXQTGzgNY1F/htgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,305,1754982000"; d="scan'208";a="189453005"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 07:38:14 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 14 Nov 2025 07:38:14 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 14 Nov 2025 07:38:14 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.24)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 14 Nov 2025 07:38:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FIDC9ww+QlnoyZnPjpXrg9Y20L6U/cCTu3oYtP2vWYkJWTANxlL6Yezq+jgJ7LlpBh3O4zw1lsNCSjWuLZX9GFSCPJN7FyyjdDTfZt6zD5nU2hMa0z4Bpnb3lN0iEjWw+rdBSWJbo4Xtank7UZW+PcV8QhMlSbVoFUZ0e4XRBtxXWzoDczBqHDV+miG3u+ShoY4NFoAR5fU4C56L5ZJUvnz2lu1wURQg/yAgPIoxQrxMV+hPF5WCV7PE6q2Geyqiya5BaCUdSxa7CtakUnwgm2xJzweYEcpqamrKRWvB4SN5aeIupag8cDUgpexosMIyqZzjL8fRusV85SWOJjv5RA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8b43r2AsbgIlf5OhEWa7ZF5B47EYSvF1vQRbMkzLtcw=;
 b=FYoshjKs8kdjXsrJj6q24w0kmSvfwAAcdE19BCfqO+iD9phliaX+PBdcUofmTi+xWDV4XRCC5c7iYK6b/lq/LHScidiuEjbZZu4087hSzTstThuYyzj7A/eUuvGM7BxOQQ72W5UXOaGJhx0K8QIV4lIfz9KlKTcfGXi737CGagM62VaTZwPMkhGo8+DUWbJW/SwDOMVqGklFfaS7Mjpd/E7R7iRu1DhRszOZ6HpgC+qlS2bxh7L+s33K7m0ifnyFUsJau2TxvBmMGpwTR0F4EHnfgsPFDof48J+HfYfj0VNkp0lcFSbCSjZyhR69JGkeNJIoLTNS9bSuCo1SdoDvMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by IA1PR11MB6147.namprd11.prod.outlook.com (2603:10b6:208:3ed::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.15; Fri, 14 Nov
 2025 15:38:11 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%4]) with mapi id 15.20.9320.013; Fri, 14 Nov 2025
 15:38:11 +0000
Message-ID: <828b75f2-6717-4f30-a62a-4992b03ef74f@intel.com>
Date: Fri, 14 Nov 2025 16:36:53 +0100
User-Agent: Mozilla Thunderbird
To: Jacob Keller <jacob.e.keller@intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>
CC: Aleksandr Loktionov <aleksandr.loktionov@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Simon Horman <horms@kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>
References: <20251107-jk-refactor-queue-stats-v3-0-771ae1414b2e@intel.com>
 <20251107-jk-refactor-queue-stats-v3-2-771ae1414b2e@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20251107-jk-refactor-queue-stats-v3-2-771ae1414b2e@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL0P290CA0015.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:5::7)
 To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|IA1PR11MB6147:EE_
X-MS-Office365-Filtering-Correlation-Id: cdfba12c-b630-4760-cd8a-08de2393d145
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eGJWanUrZStmMU42TXNsNndnUGZxSHo5OWQxWXNpNkYzSmR6RVNsdjJOSnU5?=
 =?utf-8?B?QnRwbWowYSs2UlpyV3pmVERVbGRObUI1NzJpcEV5YnNLRzNFak9iYjY5ZTNP?=
 =?utf-8?B?WmFsWksrazlpdjlUS0E0azBySitSbGdOV0xDdWs4QVB4WjZ4SlAxYXhNelJa?=
 =?utf-8?B?SUlZNm1WZjl2SG9sRThZZnJPcFhQK2Y5WGN6NGdmcnZQNmtXRklCSUtnM3dy?=
 =?utf-8?B?cG5MWkYrVHRmY0w2dElsRmtGdVQ4L2ZBeUhiNExxV21FRnkxZkJXK1NtcmFZ?=
 =?utf-8?B?ZWVtM25MZi8rQVd4ZzVJcUZodFQwSWVDK0FSYkZmSUdoVU5sREp4YjdscUlW?=
 =?utf-8?B?OHVBcXZjcDB1VlBwK1g1bW1XN21LTllwWlMxSld6Wm1UUE44cHhUQzVnTXd6?=
 =?utf-8?B?aGZCNlcrRzVQMHJxTU5aaXIrSktmSUNaL2hQYm15bEhsRGluYmpkeXZKOWR4?=
 =?utf-8?B?eU1SL2czWERNWERQZEYxMVRBSG5wZDBoS2NXbGFMZE1MaitNU05QWlVTS0Iw?=
 =?utf-8?B?TjdJT3ZMMTRMMmI3andTSUN6Mnk1U1Fha3V4N1l2ZW5kY05udGsvNndOcGxt?=
 =?utf-8?B?L2RiMU9yRnZsZWpiMk1vWWhhYSthNTVWTzZORVY2b2dyTy9sa3lvbWpaQUQz?=
 =?utf-8?B?MFhsbnpEcHdNMVlGbFBuNlRRSHY2Q29tM2k2cCtDQ0xMQllSZEgvdE9mSGFD?=
 =?utf-8?B?cWJraGw1TmEwNk8vVDQwNVhtZ2o5b2F3M0Juck9VMWV4SzFsZ203SThqUUdi?=
 =?utf-8?B?L2gvTzJKTnU2YWkzNUV0QUdTNWI5SGY0RzRSV1VnUTlBS0d6R2xHSmc5bURL?=
 =?utf-8?B?Z2tUZWZraXBucThkeHkrRW0wSkQwQ2dKMmRMU0xpdi9OTHpzUlFJdTIwN1g3?=
 =?utf-8?B?NjhBWTZDWVRESXdaWDhvRnJmMlNTK1Z3Y1IxVTNYY21NaFRKbEhLZmZmYTUz?=
 =?utf-8?B?UmFsMFdlTDk4SFh5ZkNKR2JJUEJaUVVOVUJHdXlpTnFqMTNweDBTcHVDaVEv?=
 =?utf-8?B?S1VZUlpjTkY2Z0hGeFBjd1c2d0NrU3dIemxTaXJkZ2R5ZmNUN2ZqTEcxRVFi?=
 =?utf-8?B?TXFML0c5cTdnNEVDMEYrTU93bDBJQnpYQUpnWUNORU02cENRUzQ5ZDM5S3BQ?=
 =?utf-8?B?ZDJzekxCT3pEaHBlTGxoOHZUckN6VisrOHpqdkJJaTVaN1FTeithem5VeXhO?=
 =?utf-8?B?ZmZqcGlpSEtBclFIa2lSMDRhZTNZcndBUzhxTHljUVo4ZGpSODRHY2NtV3E3?=
 =?utf-8?B?UGRZK3gvTU9xYUhPWkZWVEVQbFBybFU4VUpneVN0Y1Y3akRNMys4VHJsQ1Z2?=
 =?utf-8?B?SVlLcnNqN0xINS9BUlEzUi9hb1h0UGZBM0FtUkFMOTdLdEp4aFBYUmQ0alRh?=
 =?utf-8?B?UzZkMkIvKzlsOVFZcHNxemVUQWhEVmhEWEV0WXdxRkcwZTlNeGJmRS9tQlRn?=
 =?utf-8?B?SjR3M01pM1IyYmpRWURRSm9xckZteVdJU1I4WUt3VEZxd2xCS3hNbldBOUVZ?=
 =?utf-8?B?T251Rk5OcDYwTm9WYVhVYUM0dTJHNEMwNnpON0lTQU1LdU9IUWhGMkh5TTNs?=
 =?utf-8?B?aXVkVUMvUE1aanB2bVdJUHc0OUM5U2F4R2U5d3Z2MjUySWR6UHNCMnh5azM4?=
 =?utf-8?B?NnBzbXpwV2VMM0R5cHZSbGlxa05ZQkRpL1p6dGJ4UTRwYWhpd2F1VTlCcXR5?=
 =?utf-8?B?a3ExOTRacitWM3JmYkZzbjIxL1YvMUtjS3ErR1RHaVpsWS9mUEhtTlg2MjQr?=
 =?utf-8?B?Uyt2RDYzYjR0YStERnYzdzU1dlo0aHhpZDVnUVZXM3liYSt6bzV0czh3c2hE?=
 =?utf-8?B?b0ZlUlQ0K1M3S2lDQ2pYbkRFWXJhQ1FmbGJGOWFrRVBFTXZZdTcxZ0V5WTRR?=
 =?utf-8?B?NjdZejFPM3pMTXlhaGhTSVo3dnI0T0R0cFBxQkFTM2J3Tmhma0ROeHFYY2pT?=
 =?utf-8?Q?Xt7DfP6GPuqhIHSsyTm2C9IH+O8cN4Ll?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SjZ6Nmc3bzVSMXA0RWFSQm9vYXM1akxhWkthRnRnem9ua1BqaGVSYVdJYXlZ?=
 =?utf-8?B?SmIzbUtGWDJYSzAwY0VBdnhUeGVETVlvL280b0N5T1lnSTBrWVRucEs5UEVJ?=
 =?utf-8?B?SnJFU05NbGFSNG9XYmtyVGpPMjhVZnBNQmZNd3pCTExPLytiZGJBdFZpbFpV?=
 =?utf-8?B?amFHQ0tvSk9zV01iU205ejJ3TW1jYyt1VDEzM1AxYVpSTmRPYnBJNm1uc1BO?=
 =?utf-8?B?V1pIdnR1bXVIK3R1NUgyUGIyV1FLNTBYbTVIb3hDeEZxTVZDVXV0bUNwVUJs?=
 =?utf-8?B?NjZNazRxcGMzVVB4ZjlDQUhDSGlXMDRORmhrWTVpWk1DaWRybVZjMSswNXNv?=
 =?utf-8?B?TGlFUXpXd2hOKzBCN1dwU1pVemJoWEhZRkNiaCtlVFdwdWVodEh4Y3lBOHRp?=
 =?utf-8?B?dDRpcUNOZ0pmcWh3anNzTE5rSTIxZkRhSHZxaXpXbmFxUVZMTWQxbVpzY2tZ?=
 =?utf-8?B?dG8rdjR0dVVocFUwYkkrTVNwSWNlR1A3aWZyQnZBcmNKdjRLcm13WnVwMTRF?=
 =?utf-8?B?UDNxOWNpZ3NURGcyVEtJT3dITVB4c0tXeHVPSUVPem9PMzlhWTluaThkYXpB?=
 =?utf-8?B?Uk1VSXhaVkZ6YkZHS1JRanB4OXkwTkkxQTQ4Qnc1Q3VxcXFVVnF0eW1tcXhv?=
 =?utf-8?B?NXBiY3JlZ1l1eG91YkQ3WHZJMVdLcHdGWldFOXBQcVd2Uk5yMkhqbmJwVENw?=
 =?utf-8?B?R3FaR0RxYlRQcXVxUis2OWlVL1plUHFuSk1VMTRoWVBHWGFkaWQ3VVgvV2JG?=
 =?utf-8?B?ck1FZXh5WHNXLzhJOFV4emFIcXNyMGwzL3ExSWl3bGNWZXJ5R2pSUXdZbysv?=
 =?utf-8?B?bit4NXFNUXNrT3NPNi9kVzBZcW1ZZjlhM2krZjhscHlCelFZRUp4NHRBcHpi?=
 =?utf-8?B?ckhDV1JTUnpYRmdZN0ViN3hHQ29HcmxIZzhFKy9UT1BFUHJ2enFiQnhZSTJx?=
 =?utf-8?B?cE5yTmVXSGcvVTIxcVd0UVVWeFBrY1ZJM3hDYmNxSnF4Q1JjYjc0UXJNQlpi?=
 =?utf-8?B?Y2Rmd1g5VHlkR3BFQVhIOWRQWUJpRGpxVWlGSURxenA2TGpZTi9JejBrRDVB?=
 =?utf-8?B?VktGMitHTnBFOExZbFBzZVF1dkUvRXZJSkx2eXpqNmR6RGJvVGlPNXUvb2wz?=
 =?utf-8?B?M2k2RHI0bnRjWnJzM3NYY3ZGSFNMZUd3NmMyUW8rZXZSMmtSMXVrR2ltQUJV?=
 =?utf-8?B?OU5CZENCZW9aM1FXSzJUcXZvbGRaVnBGeUxES0tyQ01RWms4OVpPenRYclJV?=
 =?utf-8?B?bjM1ZnFOcVlrNm9xdjdwelQvRTFUOExIRUxscnpub0pCcmd6OXBwdDBBVGZk?=
 =?utf-8?B?ZjVXbFdBMWlLWkdpSzdqSkVVK1dYZjB1NTBodHVMbE9weC8wN0x2eWZja1JS?=
 =?utf-8?B?dE8yK3VHM24zT2QvdDlFNnY1dnY4UEV6aVd0ZElzMWxiSGVJRlE0WFBXSWZy?=
 =?utf-8?B?bmYzRmJ2elpmSjYyU1h1NFgwUUdlN25DY254aWx3c2JFTVJNb24ybmZPRDhl?=
 =?utf-8?B?RzFFRmQzeXo1ZStIMGVSZnlWZ294RjBOSlpXNHNrbTA5WVFTWThna2NvbVdy?=
 =?utf-8?B?NWRYbXRzQ0d1bmo2a1ZhQ2E5UXNRTkkzQURLRThJQzRCRXF3ZndrNkt2ZzMr?=
 =?utf-8?B?MmFkMlhYSnNrL0ZpZlBtWkRXdWIyam54T2RnMktDTy9VaTlDc01jSU9ucDUy?=
 =?utf-8?B?Z1VYQlhjbnlPVUgzY3dVRlRqWWNlWjZ2T3hZVDlpRWh6UDU5UGVreE8rTUpO?=
 =?utf-8?B?WXpWVjIzLzFmTXhrTzVlMVQxRnE1Z0l3TXNYWEMzOUNPZytEQVp2NHpGUHBV?=
 =?utf-8?B?NHZhbklvZDNLRGpzTXhVMi9iNm1SSVRlby9hZm12NXFnY0ZTb1ZRTmtnbERr?=
 =?utf-8?B?UXc1dXNmaDI0Z3JmbkMwODc3dVBtOHVRQURXWXpNM3AvL0s2TUV5RG8wOUtX?=
 =?utf-8?B?UllJeHk1VzcrVkR5cjhxN2xLdjlzTDV1dlRIendITnZSQ0xNWUFpMDlDeUkx?=
 =?utf-8?B?L0dXSnRnZEJQc2NMV2JMTGVlalFWczFnYTBTbTVvRVVUYTZUVU50Nk1sbUEv?=
 =?utf-8?B?RVhHTXptbHN5eXpMeEtRSDNkMzBxRXNaZm1BMzVWekdPeEhVWHNBK3hYRVBE?=
 =?utf-8?B?Q3h4S2d1L3pFVUZkSUZiQWNRUFd6Z1BaWTVnb3JkTzZkVXRvaGhoWXFyUXhZ?=
 =?utf-8?B?eHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cdfba12c-b630-4760-cd8a-08de2393d145
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Nov 2025 15:38:11.4374 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kpPGig+7cJd2c2DDjWFsFgI+1FhOAjUFsSJqtrJwfxg7PE+Ah9j2WFR9khDBAsgtCJSKYawjxiimq9DbUfWf+oSJWPCxgtiBm+rze0y+t9A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6147
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763134696; x=1794670696;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gE86AvEahOcPL4tpm4KqnQPW2vc7UBTfAH6zC34X3VI=;
 b=QzL7HxcibcVmlpn+svP9DCZJ7j52qRcCZEQq6vRv64R/kVA07OaQGt4j
 BkKe5UaTzGYhM3JYa4isVYimpK/Oc/tNJGF5MOdS7NVw4Jx6e7+WasJfn
 1eD7cSHhdSHqA451M8ONHN7CCLUbLJogrnYKFd1Ll/IVRphTHbajVdJcQ
 Q8PL1GlXd/FO6JnDH4giVfOBRw28Bi4KiUVr81JtjRoRPBKQ4FBEvdQLb
 QXdPubJPrwI2dk95L0Unogb9o+0Bg3Xeppm+mHrFP1AVShDTGFJyj3VZ2
 tpaXUJZJY7Od97wMYqCagGKVvrnUN6D7JSRKk/406LD0rsmFD0m8DZejp
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QzL7Hxci
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 2/9] ice: use cacheline
 groups for ice_rx_ring structure
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

From: Jacob Keller <jacob.e.keller@intel.com>
Date: Fri, 7 Nov 2025 15:31:46 -0800

> The ice ring structure was reorganized back by commit 65124bbf980c ("ice:
> Reorganize tx_buf and ring structs"), and later split into a separate
> ice_rx_ring structure by commit e72bba21355d ("ice: split ice_ring onto
> Tx/Rx separate structs")
> 
> The ice_rx_ring structure has comments left over from this prior
> reorganization indicating which fields belong to which cachelines.
> Unfortunately, these comments are not all accurate. The intended layout is
> for x86_64 systems with a 64-byte cache.
> 
>  * Cacheline 1 spans from the start of the struct to the end of the rx_fqes
>    and xdp_buf union. The comments correctly match this.
> 
>  * Cacheline 2 spans from hdr_fqes to the end of hdr_truesize, but the
>    comment indicates it should end xdp and xsk union.
> 
>  * Cacheline 3 spans from the truesize field to the xsk_pool, but the
>    comment wants this to be from the pkt_ctx down to the rcu head field.
> 
>  * Cacheline 4 spans from the rx_hdr_len down to the flags field, but the
>    comment indicates that it starts back at the ice_channel structure
>    pointer.
> 
>  * Cacheline 5 is indicated to cover the xdp_rxq. Because this field is
>    aligned to 64 bytes, this is actually true. However, there is a large 45
>    byte gap at the end of cacheline 4.

Sorry for reviewing this so late, but these comments really are outdated
as hell and don't really reflect what we'd like to achieve.

I would like to work together with you on rearranging and packing both
structures in an optimal way, the same what I did quite a bit ago for idpf.

Maybe we could drop the series from the next-queue for now?

> 
> The use of comments to indicate cachelines is poor design. In practice,
> comments like this quickly become outdated as developers add or remove
> fields, or as other sub-structures change layout and size unexpectedly.
Thanks,
Olek
