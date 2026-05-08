Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SBMUIsxb/mkWpgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 23:55:24 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CFDC74FC13F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 23:55:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E45F884928;
	Fri,  8 May 2026 21:55:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 41fMBcSc567U; Fri,  8 May 2026 21:55:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6305784978
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778277321;
	bh=L880kDRWtiipzTNqX+bN7jGaGY2yphx+YhKDUX5AqoI=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NdyNg9T28oB1J4jo55iSpl1+JuXp9+3EWtYLTkMHjtCaqJcwn+5xwVa5MciqjzdV2
	 3y3aYkGvTelbkSXiTG/KPR61iXmr9i/xD0kUPq/+f/OFKAO8bcvdy6m4CsCd1u3ojr
	 WP6QUhSAI1BtfprE1LrnM8mv2HTdAiXUM1HnR+tkCKiH57mretY7V3WDFIbPCEPk4w
	 U7DjkRZ8fpIR4ElkQ9Yb2G9W4Ck9HiXo2PHA81Ryoo6y3HIeN3iZUYAuwnRZsLXowB
	 v0MNtbsHwif3s8lc8FVkYprR7EIYIoxnC25V7v8FNsvM//ZnQN2CWXDfxo++2fEODE
	 vRkAcfNCsvYdg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6305784978;
	Fri,  8 May 2026 21:55:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id A80DF22F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 21:55:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 86086616A9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 21:55:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7RZewcNIN8b8 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2026 21:55:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BB263616A4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BB263616A4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BB263616A4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 21:55:18 +0000 (UTC)
X-CSE-ConnectionGUID: AHUuV7mjQ7CTAWEd/m7LuA==
X-CSE-MsgGUID: GvrWeBFETa+0COE8ZriBmw==
X-IronPort-AV: E=McAfee;i="6800,10657,11780"; a="66787030"
X-IronPort-AV: E=Sophos;i="6.23,224,1770624000"; d="scan'208";a="66787030"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 14:55:18 -0700
X-CSE-ConnectionGUID: uyQJbkAVTzmI87WSKbV/rg==
X-CSE-MsgGUID: dk518BNyTaumfQ9YUTZn4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,224,1770624000"; d="scan'208";a="235904006"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 14:55:18 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 14:55:17 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 8 May 2026 14:55:17 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.14) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 14:55:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nStk01d2BvyzkOLy5ahXWBpFNX+ZgyS5cHOBbvou7E+IHMX2JM/UiAVaFQIqy08xD1QLi1cXIPdgG5p6fG1ScaISqLjSv/uC1AUCsa6B9YEWo76vVBe5EZEShISNV3Srer3VJLWY8a05w1b3GupjjV9VLs/VITdLvrm4Y262EvL3xIdj4verXqx4lW5l7XlX7+FNCucyw0uMerlPzb+Mr28FJvtxs4A2+ptfm3LFbZ46b6jPtg/YzUSikFwrhxPWs/0W+9PfVj5vm6/EQT8DOPQpeMvDtbd4PgjMYx3jmMT1hbM/pzcsOm+b+iIhliE6d5MZ9VDlskpE9zZ72TozPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L880kDRWtiipzTNqX+bN7jGaGY2yphx+YhKDUX5AqoI=;
 b=OmbeU5zSICl0HfNdN4WXuwutFL5jfEmZTqbX5/VwLRhd7b6e7PbF48sbCtVeCV6l9CodwuUAPBWsXPuYXaJc0VMwXgPcePPqG6sHQoWjED3ZCde30i/NLy4bH8+1nx3lTXTFx8I/7nn2dsjH4cb5jzXg9pCF0s503wUR8IqXjl9xBubUlsWoXfF8JR4V36Gb9Z7dfH/wWOvF31yicCx5rRMUSTpXymTDzLyYjMpxtXVbhpVYEpnMkVwrNrgS/XNmyuZF7nEEiL9tzLRyeERD//YLTGBqb+O4UHjdmutUhVt/0xL+4s0qacsSnvDLT6cV3xy0yBxUZrWAK1iEeMZDUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7592.namprd11.prod.outlook.com (2603:10b6:806:343::16)
 by LV3PR11MB8601.namprd11.prod.outlook.com (2603:10b6:408:1b8::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.18; Fri, 8 May
 2026 21:55:08 +0000
Received: from SN7PR11MB7592.namprd11.prod.outlook.com
 ([fe80::3e09:8700:df72:37b6]) by SN7PR11MB7592.namprd11.prod.outlook.com
 ([fe80::3e09:8700:df72:37b6%6]) with mapi id 15.20.9891.008; Fri, 8 May 2026
 21:55:08 +0000
Message-ID: <3de05bb6-2cae-470f-8b8d-8ada1cd0a0f4@intel.com>
Date: Fri, 8 May 2026 14:55:07 -0700
User-Agent: Mozilla Thunderbird
To: John Ousterhout <ouster@cs.stanford.edu>
CC: <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>, <intel-wired-lan@lists.osuosl.org>,
 <przemyslaw.kitszel@intel.com>, <netdev@vger.kernel.org>,
 <stable@vger.kernel.org>
References: <20260507183843.1457-1-ouster@cs.stanford.edu>
 <379cd3dc-aff5-4fcd-bf9f-4878ae21ee74@intel.com>
 <CAGXJAmzqBQha+XRu12ZpLTDBSMgAEANffD2uGKZ+VVdkMk6OVA@mail.gmail.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <CAGXJAmzqBQha+XRu12ZpLTDBSMgAEANffD2uGKZ+VVdkMk6OVA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0075.namprd03.prod.outlook.com
 (2603:10b6:303:b6::20) To SN7PR11MB7592.namprd11.prod.outlook.com
 (2603:10b6:806:343::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7592:EE_|LV3PR11MB8601:EE_
X-MS-Office365-Filtering-Correlation-Id: ffe22bd7-bf51-458c-e708-08dead4c7847
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: vecHpUwAe8WNNGtuM4tYB7pWyBMRWIW/F4AWyXnWnBXp6zodRAY5C3lndQf2GL0sU9hibwOzuVAqa0S/QbnU64KKhmBr+4C3okvW5neHu6kjufLs3nP0Ep7RRR19hvkzIXe27s210Ihg+pRpWOmnpQtY7xUfHqETftPdCKlaDih4siK/fWU10USvqbQir6cXj6ZE9MRU/dJYZWNr9tX5yYaAVANiotq6VUEUoQnMyadymKWBymWnnbDPh7DcyeRwHZs/MytsKJLSbMSjBgC38fJr+x7CL5QJ/b8FXRek8Gn7v8KKNqZG5/2aICZsEtXRvIl/eroOy/rSoyToFZLMuUwzZgXqLVlYl6FSx3KrI/G0LRRnX6fbm8YBFp+3IZ+YdZid3LaMemOLO4IAiOS8kkzsXtnXSaTWW82Wez7G3MNOTVQM/6b9bsB7qdGfGQMFa/O1H191OWWqFQCPq6HhCi5WsilSzuv+SzoriCH497H0wcfVUA9RzU87QeaDziH9UrroHpf9K02fRiz68+bPGFqthzmSFz3xNWNhI0ZbNiKdToxOpEdXiZcMOizjsO/PSo8gJ3CF7PJcviOehgIikfemqJ0VpALkV2Ikp0vRJaElFbCULkq0GLC4qPYdtF8EBxDWru9MSCV4HGIYxka0rBos6a39w/aet3lLx8sttCsUOZOs42FYnYTUc1YRU3QW
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7592.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y0hlaS9kUTJKMEx3bUd6RTVIbkx6V0xYQ2JuVTNBVUcwYmczUzJMVG5pZ21v?=
 =?utf-8?B?eHBXQllDVmROYmM3NVRnd0RXcFdrTEEyczFVTWZuTkg3UlJpNEtvUjdoZEE4?=
 =?utf-8?B?RWcwZEpyem1kRWR1K2d2akM1VVE5cUFSMWxpdnd2bWlCMzlEVUhOWmRJSXhw?=
 =?utf-8?B?WjkyZ1ZXaldwWnpZU2I5dFREQW9kRDltNi9CR0VzM09qMlVWUUpFUFZseXpC?=
 =?utf-8?B?aEFBRUFWem5iV1ZMU2JqRE5SQlk1djV4V2srTktySEZ3VlJyUHlCT2pRVGRw?=
 =?utf-8?B?WGUyUnEwSnVXeDVyN1U1Tlh3YmFnWkRYUS9EMEpZNVJWMk5XNFlXQ0dhSWdB?=
 =?utf-8?B?L3kxMUx4TUozeGFIdEtLc3lxdmRLSVJMTmVob1R5TEdGM0NGMkFWZmJyWFFG?=
 =?utf-8?B?NXVzVENOZFpZWEdzUWFCcllETENwTHR4UERzeTNJWENLVGJhZjYzYXlVOXZT?=
 =?utf-8?B?QUUybXNqc2xOcHJXZWNVRFpmaGJUQ0QzenQwTWs3S1E4OWRibUp2YkRtcHpJ?=
 =?utf-8?B?aU1WZWlzSFdrMGRYVThSZ2lBY0NqWVYxOWI2Z2VPZ0k4cGFabDV1Y1pwTnZS?=
 =?utf-8?B?VEhRQ2duRUFOcEh4b3BITXg5UWNmYzBiRDNIYjIwNk9lVnhwMUhkWUdzbnhU?=
 =?utf-8?B?TFdPNFFlM1dmUlhMcjFVZXRxZ0ZCNnQ2ODJHVmtRelZydG5IZTdiMUxmWE9v?=
 =?utf-8?B?QTVuZGFEa1JULytFWDJvbmhOV2lWUzcwVEc5cWRHTjNyZW56Ny9mVkZRa05O?=
 =?utf-8?B?MWRTQTQ4aDEyYzBENTVDbFFxeTFvczRuT2ZydHVnbk83MUNsRmtBd3ZqWkc5?=
 =?utf-8?B?d3ZuRFF6QjQrZmI1VmMrQkN2VmlVNVlkbE41S2ViVVpQTDVCZjQvVGJLeGNP?=
 =?utf-8?B?eTVrUzBMejRaV0N4bjFhQXUxbld3MkdacDRkQXRveTdyRldTckduVXJnMmw0?=
 =?utf-8?B?Yld0UDFKMStkM21lRXBlNllXNFpvYkJock9neWRXcVQ1YjNCQU5kZEdDYXRS?=
 =?utf-8?B?S0lnU3lYdElwcStTU285UVNhTVZJOFU4dWRNQTIxb3VrKzZWUTFWUGF2MTFr?=
 =?utf-8?B?d2Y4ZXFKSmlJa3E4WDhXUXgwaDRKa1lGdllMUHkxTm1uN0RBalA2eEFUT2lw?=
 =?utf-8?B?UVg4cUU0OTBXMzlUZk55ZnNsaDdrR2hlb0RxRlhCTUxyeXp1RDJ0bWJTS3ow?=
 =?utf-8?B?VGxEMGVWMGZPbnZHZi94TXFZQ24zOExvVTBMMFNLLzZ1RGJZb0pzZzVJVUJq?=
 =?utf-8?B?NjNMZVJLWEorb3JYV0VSeDZDRVZCNFhDZGhOOE8rcFF1bjlqbnFYUlhvWGJ2?=
 =?utf-8?B?WkhieXFCT1NDNjF0MjNRQk9zUWYzdk9pdFQ0aU1vNE5QbTUvcDBuZWt4aGxx?=
 =?utf-8?B?NFhHWkVOaTEwK1JsTC9GS2d4SGZxOFQ2SFVEWHR2N3hIQ1dxaXFSSTNGbjRn?=
 =?utf-8?B?NDFFVm5NSG5EV2NqWVBrSlU5OElZU3hOTkpWMmtLbGFrNjNpNkw2RFNjRW1K?=
 =?utf-8?B?bGZrR3JsL1dqRkZqalZPc0VSU0owQWFCc3IyaDJuTlJHbHJZaGM2OU0xU3BZ?=
 =?utf-8?B?ZXpsUnF1UE5RNTNyWFljR2MyMWg3bmZQMHFWVzltSVZlU01waG56amtieVcx?=
 =?utf-8?B?YjRXNmwxWldkWE1qVE9nbHFOT0dYakVJcXNYbis2U09pM21hbklqVTFtTGhL?=
 =?utf-8?B?OUJDSFh4ME1CVEk0U1JZdVNJQTZQaGN5WC9kN2tvdUVzUkFYTm05V1g1RkN2?=
 =?utf-8?B?dkYvZ0dWa21vNFlnbXFoeTVEQlc3VnM2NFJaYzVDQ2hsZFkyMmFNcE4rVW91?=
 =?utf-8?B?cXc1bTV4aGNNdU5RaFp5OHlvaHRkRkVLWFEwQVI5STFTdmZMd3FZb2phRHBJ?=
 =?utf-8?B?cFgvZTBDcGIybUV2cWhqQXFDNWRRZmJFYTFPTU1qWjk1U3FSVWp6Smh4TE5W?=
 =?utf-8?B?L2M2RW5IL29PdVVRalNGOGtGRXp3Z0YyMTVtMUI1d0ErZDZYVjJ6azB6ei9D?=
 =?utf-8?B?SDY0NDQ5Y1hVbFZaNmp5dG1oZmUyMUlHR0NXYm1sWHJiaXlDZGZDNVJJK3hj?=
 =?utf-8?B?a3BOWE1kRjc2Sk1PQVhHN3FDL2x3NXoxakZnTm9lZE1JcThpNUdzcm5HUHdi?=
 =?utf-8?B?dDhTTE5vdUh5eG43RkVyUzZyYW5GRVZ4dHAzTER2WmxMdmM0QStwNzArVHJ0?=
 =?utf-8?B?ajJBalZJUUJnSmpua215TnhSNXFjZTZHVzUvNGp2Qkgxam8vbHlsK2tNWmZ1?=
 =?utf-8?B?K3FsemZpMElHSFovNC9GQzhSNTRsazVqUmFCREdIUDltNThaNEhuN2lyQ2g2?=
 =?utf-8?B?RUxBc3pVVmE5VlpVVTJKaW96UXZHYWxFWi9BTjJNdW1ZQnI3dU9Jdz09?=
X-Exchange-RoutingPolicyChecked: DU7/HM1m8V5C6YlPlW7CTvcVthuClJmSxF8lIx++YqRlibkO3JSZFBaWDxtE6FYmTfGFPfl514aU7Bc2g/ULkcN89T/GF3u0xUlF5fbnS/QXPUioUuEF6AMSefx6n2Ank8vab7s40hwvMnOjZmoJX7wwKaOYtxp5hPx3qmJxtnX0VQttPvJs+aGnZOdtSv/WDtEtQJHq+HC2nRFQvjexOE6GY43NkzBCABR+VRx5XWF1DISniyGqrz8VMkO8d7KvIHeax7VHSRDF69gruDajfZ1cq0edDryMTrtB9iD0xEhMT8zuB9AOEz88S72Lr9bo7Eayw9pywvcea8HN6nbrgw==
X-MS-Exchange-CrossTenant-Network-Message-Id: ffe22bd7-bf51-458c-e708-08dead4c7847
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7592.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2026 21:55:08.1760 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nZHw2MTUBWBgWwuGPNLCF4bAPvOvepwRB8w1v+cyBczUd80/rwJOnlNVfyC8XQDVszRmSJ+//yBHNxjRSObaKnFXjkPXLO/6mx7ckXwEHko=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8601
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778277319; x=1809813319;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=g9ZCH8BS6TpHkKKvejNEohLOM1A7If1oTt/t0k+j+sk=;
 b=e29nCuYGDO9EZJNgTXjNW8RuXfiWRxATqD4XDXfxqO4fGwzIzPIFmLac
 tos669N9DtcLkaZ5PqhOpUDbQ2/qVfo6OduoKjaJBl+o+vllVDu9MQdpS
 Xs+4pNEjOsQePfcxRY1U8I2+26IqM37U8folve0qvyetjc/v9dXqvvDF6
 WXi6WD6xPRpR1V8i+C0BqnAHp+/U6aJvNHvu5uzAW8LDHzgBJ/xAyMIl1
 GZZNqpUCwulBUkLJJPMKGytuDl30SsO3QfCwewFBKvrpNPJ1gmBhaFlyl
 Je2m2OLNtLwIxJQhiyFFekb6B6kYCnji7PNTyWsgwnubs6l0D5ffj0yEU
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=e29nCuYG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: fix packet corruption due
 to extraneous page flip
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
X-Rspamd-Queue-Id: CFDC74FC13F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:ouster@cs.stanford.edu,m:anthony.l.nguyen@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:przemyslaw.kitszel@intel.com,m:netdev@vger.kernel.org,m:stable@vger.kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

On 5/7/2026 7:37 PM, John Ousterhout wrote:
> Correct: this patch only applies to the ice driver before its conversion.
> 
> The patch applies to versions 6.18.27 and 6.12.86. I believe the bug
> may also be present in 6.6.137, but the code has a slightly different
> structure there (the function ice_put_rx_mbuf doesn't yet exist in
> that version) so the patch would need to be reworked a bit.
> 
> This situation isn't all that rare. It isn't a zero-length packet that
> triggers it; it seems to happen if a packet uses every available byte
> in a buffer, ending precisely at the end of the buffer. When this
> happens, the NIC seems to generate an extra zero-length "buffer". This
> happens quite frequently (thousands of times per second in some of my
> workloads).
> 
> What keeps corruption from happening constantly is that there is only
> a problem if the "other half" of the buffer page is still active when
> the 0-length buffer is received from the NIC. I suspect that with TCP
> this is pretty unlikely: packet buffers get recycled quickly. If the
> other half is not in use, then it doesn't matter whether the page gets
> "flipped" while processing the 0-length buffer. I ran into this
> problem because I was testing Homa under conditions that caused some
> packet buffers to stay alive for longer periods of time.
> 
> -John-
Right. So I think we need to make sure the patch is cc'd to stable.
Technically it doesn't strictly follow any of the 3 rules, but its
closest to 3 with a clarification that there is no upstream equivalent
due to the libeth Rx refactor.

Thanks,
Jake
