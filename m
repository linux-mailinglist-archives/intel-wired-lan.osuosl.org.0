Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 11F13BE4465
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Oct 2025 17:36:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5816B40295;
	Thu, 16 Oct 2025 15:36:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tS7ciluQgwNK; Thu, 16 Oct 2025 15:36:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B5C3040296
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760628992;
	bh=XLTWW5Y2LFuonT1+CgSNKye13vUATPBIrg+mHNm0Lbs=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7DcskTPcNZM1WAW5BC79ZJVp8YyDM108WdxYNn9XeDVcJWz8mz/paI0RydqgY8jBc
	 qgAfmeJja+bDNjxV7k1VhyNit5lJ+EFp6UHZPTggKIx4Agp6UPe3ZrAEBrw5wlty35
	 EvTREDWPx09J9MsiqWxfrK+DKIdjpd4TS1UrKd77XGcqYRIxnBBjvyr1kbFkwY6HAG
	 K5ReRTXRMHjVBN8qV5SeY5WNcPDtOS/MktylirPC8qHkwexNF2SWu6Sb1Eg92bMKAc
	 c6JyzN6qmAFPEQYweysfbm3YmAAColtF+wbKMQ4aHz8QFx5OQf4xujTAFZYu6Y+8BQ
	 78DFqeeZ5SLwQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B5C3040296;
	Thu, 16 Oct 2025 15:36:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id EAEC5961
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Oct 2025 15:36:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DBE37605BB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Oct 2025 15:36:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xa3Yv0CgZJUN for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Oct 2025 15:36:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org F25F5605B7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F25F5605B7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F25F5605B7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Oct 2025 15:36:30 +0000 (UTC)
X-CSE-ConnectionGUID: wOomZF4hSPaOFv99Dp5WlA==
X-CSE-MsgGUID: aDMt9LNkQWyS7FoJRtvxfA==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="65441898"
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="65441898"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 08:36:30 -0700
X-CSE-ConnectionGUID: rALVBmZQR+qLf4d7W1hZ2Q==
X-CSE-MsgGUID: xK/LSVLeTzeh1n065WSfmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="186882333"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 08:36:29 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 08:36:29 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 16 Oct 2025 08:36:29 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.7) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 08:36:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JIQz/6b688p9r0ciTF8C8wpc8Sw2yKpWdUyhyR4MMjLuJGUeFZpx9FwVDtGaRvjYdNoVCkX+ULLniVj2L1f4SGKI/cW4VwDY1fSsaDFs34pz4NWJzLwYpW77oOoF7N6Ib9rrk25S35Rg4bWc5rpFb4vOhz4ItX6cBSvOrGkwXlym3UfoItS+1sHW7tDQahxZAeFsQyqAkDH1e2ap2JWCfrEu4GyHAPtsgUFwZFFIMw+G2QSsZe57FhcWubz494K9uNV8BCL912oIOhH52IqLDxiVwOzY51TcIhINw1P3yh2ZZtF/tXBqP6P1olsEAEfijtZb+Po9awbuYVDOmwYkHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XLTWW5Y2LFuonT1+CgSNKye13vUATPBIrg+mHNm0Lbs=;
 b=grxRLcSsFtWQiNlBMcy5h6VZw0ajIUe0diYZ2DVb/DDMRrFogPiBsq3wgkzFPWy6plxfOL3EvI4+NhO9COTJtLNuzODylX7p1k1JscLaA1EXKduPA+vu2IQMZ3sCL7kY1YpHBi3XbKEut15v+qTObEVuar89wujE0lijtW7M+Zdm6tWV8ltNyP5swMrEvlRXO1GbyuWhgXUja25B6ijtWMOn43R7eqBnXy3RvxWSJvJlYDyFzSxH6auTxVjZAmYZW+9rDR2Tkbz8mBQYNgF5tBGpKExTsFUQw4Nvjw3h0/Okc5JLu2nNIDEhRAmzpuShRDSXHEL3lJ4c+e4WYgnLYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by PH7PR11MB6979.namprd11.prod.outlook.com (2603:10b6:510:207::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.11; Thu, 16 Oct
 2025 15:36:26 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%4]) with mapi id 15.20.9228.012; Thu, 16 Oct 2025
 15:36:25 +0000
Message-ID: <5d739d1f-faa7-4734-b5e7-8e35b5556ce7@intel.com>
Date: Thu, 16 Oct 2025 17:36:21 +0200
User-Agent: Mozilla Thunderbird
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>, Jacob Keller
 <jacob.e.keller@intel.com>
References: <20251016062250.1461903-1-michal.swiatkowski@linux.intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20251016062250.1461903-1-michal.swiatkowski@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BE1P281CA0374.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:82::26) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|PH7PR11MB6979:EE_
X-MS-Office365-Filtering-Correlation-Id: 29bcf0a0-1840-4c88-4e8e-08de0cc9c465
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cFlmUVJRbGh3VUFLU3BWQ2cxOXoveFNUQ1dORzk5MjlZM25WNnNhN3pUMFJT?=
 =?utf-8?B?cHJ3aUNOTFVaaXhITE1SNVh6bUNqQ2l4UVoxRFlCUURKb1NWZkljQWdOWnd5?=
 =?utf-8?B?dDY3SDNGdTR0c1lOMnY4S1FJMnh5RmFXUEpyUy9sV3FtZHJyRUpmKysyVEIz?=
 =?utf-8?B?ZndmMnlRbzRJR0JKUEdhRHNwT1RlWWFOMjBVeGtjbjE3SE10QmxGdXovQVpV?=
 =?utf-8?B?cS82dlQ0WE9SQ2NpSS9NbWI1a2VmQUdrZ000UHdlQXhlL1Q0NS80NHd4THEw?=
 =?utf-8?B?S1ROdW01S28zQzk0THo1bFBiNHdSeVdwNXpvczNaS0V4cGwvZ0wxVEtSN1B6?=
 =?utf-8?B?enZxOFdPTGdVTnhsSWxwNmE4aUJmalhNY3Z6YmVPcUdlSGRQWGk4Zm5pZXlt?=
 =?utf-8?B?dVlVRkU1QXZtS244OTVvTWVuK1NyazdBeE5TT2F4TlF3MnRGSnI0RG5jRlQy?=
 =?utf-8?B?WTlUZ1RtTld0YXh6d09IRDYzQ1k5TVZBTjh1R3FRbWNOL2pDTDJRSlRYR1E1?=
 =?utf-8?B?WEVURTlDdVRLdW94UHRUMWZvZFh6Y1U2MS9pVURRZm9kc1hSd2tZdlVjVHZP?=
 =?utf-8?B?STlDZWY1dGQ3aTFNZ1prRXFnL2VXNC8wS1U5RE9TMkZMZkRYNmN5NnluWURl?=
 =?utf-8?B?dXhlbXdRaURzMlU2bHJmbVp2UzYvOEdlUW4xT2pqVU4ySzNZNDBaSVlEbWt3?=
 =?utf-8?B?VzEvdzlGSHlXemdaajhtaDB5ZDlkK3hJU2Y4TE8zeXFKNlUxem5XNHYwd29Y?=
 =?utf-8?B?VTFSTEJLU3R1dGxmc1M0d1hucnNFRGlZaEwxTmJYZFVTZklkTFczN01XNnNa?=
 =?utf-8?B?VHlORDFHZ0FHSXp6NnhaM09tSE9BT05SaVpETTJlZVlNVWx2aS84bzh3NDNU?=
 =?utf-8?B?aEQ0eUVjdHhadDh2M2JPeTMrYzZYc05RZ24zK05BaTVZdXdxTWErcFQwdEtT?=
 =?utf-8?B?ZlBCZzRIS3IzTmk2czUwaUhHakU2elNzRXNzOElKSDFBZ3I3NXVtd0YwTkRi?=
 =?utf-8?B?UVk0RVdqZ09FYVI3VXNkWlB2bVZJdkNONmk2RjBWRWNlVmg2a0JwSFh5RW5D?=
 =?utf-8?B?Z0RsOVBzeVRmRWJob2dVdVAra0xxNmc4TytrTWdGYXUxZElnVUdkdmJVWVU5?=
 =?utf-8?B?Qnc5Mk9YN0g2MlRDWkVlcnVSeG01NkhvaUg3eGFsSHZlb0tYSDhuVE15Zmcv?=
 =?utf-8?B?cHoycVFySldWcDZvbXNtQWZPR2pIajRhdFB2d0wvWGhiQTl6YkxjMTNJYlFt?=
 =?utf-8?B?MGowM3E2Q2taTnJPYXJhdk5QekpRaFJDa2c5blpVRGRGT1dEUXRYMktHWXpR?=
 =?utf-8?B?MVhtdUZTblRucW42SGJqNkVnTGljb2I1c00razB2bUVrQ1lzWXZzd1IzWlYv?=
 =?utf-8?B?OWZ2dkRkZkJVbitId0lIajlUcjdBYm5RMjVFQ3cxY0NQTkVSUk1vSVRLOEZx?=
 =?utf-8?B?UWgrT3gyTUJkUHlrQTBWbXZVODRRL3pUT2ZtZndLaHN5V20zRndNSC9mTEww?=
 =?utf-8?B?NUdNTERiMk9YTHh3ZHlFSm1uYWJBVVZ0NlRLb0hLZi9aUkR0Sk50UnYyUFZZ?=
 =?utf-8?B?RmtTdGd0YlI5c3U2aFBJL3laMnJyMWwyZXJGZTNNRUYyZGRVeWo3NHZLM1A3?=
 =?utf-8?B?QU9sZzBkUFdZb3B0bS80SW1yYkl0MVFoVCsycXBLcHNMMU1xMEsrZWhXejNt?=
 =?utf-8?B?bnBPOTIyb1diQWhIejM3Q05jbCt5V2RFdG1wcXBEaXU4OW1Jd1lKaXFrZnV0?=
 =?utf-8?B?cUdpK3FXak5wa3VocWNRRlBNVnJTQTBUSGZCNzFuV2lOamRqR21IR3p2ZmJX?=
 =?utf-8?B?d1ZQUURPUlo2dkQyWE9PYlJ2RWVweW00c0RQdjhyb2RYR1p5bTRaaHFRM0dZ?=
 =?utf-8?B?elpQVzNpaFZqM2NoWUZPTysySXA0WnVJNWNrcUFHanBrUnZsS0lheFYrVHk2?=
 =?utf-8?Q?VQcFz/foeEV0A2m5Kd7r8UG8uIv/j8Km?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZUh4YUNCWG5JbGp3MWFHd3V6Qnp2d2luVGthckJveEs5NTB1bnp1YWR0OWh2?=
 =?utf-8?B?cXBiK2tZMjFqWGlvdVp0UFJBN3BVKy9vcDA4WUVIdWE4Q1crR3RsYjJIbkdK?=
 =?utf-8?B?TDlocUlPb2RRYmlveVFCMjhjYVg1QkhIWEYwaThzdmdidWNQR0Eyd0p3aVZv?=
 =?utf-8?B?citWUDd5RDJxUjVuSGsxM0E5R3lOTG4xSmgxeEJRUWgzOGIybmpHNG92TGtH?=
 =?utf-8?B?VjVHWGRIalE0Uy9Ka1JTaVFMdXRtMjA5ZCtVVExTOGtDbE9OL1pzdGpxdlhv?=
 =?utf-8?B?eG1NMHdTQkZFUDBWdWd1Z3pUcUhBSE1uZ2pkTE5mQ3V0dFc3N0tKUE13dUov?=
 =?utf-8?B?aG1Sd0ROMGtSWWFVZVdZZlFLYVFnajFzdmp5S0o3SEEvbjNKUVo1bmRzbzdE?=
 =?utf-8?B?RzQza0VuY3VsblFpdE1GakVrUENndGhvcDhnOTBGQVA5RlkvbVhSTXFvRnQy?=
 =?utf-8?B?MnZIbXBVSHBNejBPbFd2WGQ2cGlNWHIzck02cDVrNzBvVkozdnZSVjFxVlhD?=
 =?utf-8?B?RXJJeHNDb0RITTN6Wi80aWt6MkFUMld0RzE2NW4rUDhnNGpEQkZXT2c0ZjRD?=
 =?utf-8?B?QkVtNjdiK0pGc1pPZHIyTDYyVjV2c3dCdkZKTzh2OWhjMkFNd2JzclhSMHFs?=
 =?utf-8?B?NHBBb2JzdnlpWEMxYW5MWmI0K3VFZHRPVnM4TStnc3RZUXo2N3FzMThOZ01o?=
 =?utf-8?B?VWxtdy9XWC9DZm41Nm1Hc29SWlp5R3VPam4zNitEb0NTOFIzdnBFU1hhTDhW?=
 =?utf-8?B?blZPWWt1L0VKOW56dVlTQzlkblM2Si9yUzdhaExqaGwyMC9qSUdtTnBZNkR4?=
 =?utf-8?B?VktkNHZHUlptVy9oSTJLOWxObSsveFlTbE5SR2NDK0hKQzlmT3BGSmJ4cWl3?=
 =?utf-8?B?blplY2hQQVZ6OGNXcVQ3VnRiQjFMbG9Wdk5Db09xbVpMNjRIYncveUNjS3Er?=
 =?utf-8?B?eU5uN3BzYTQ1dGsvV0VvZHRuQTZha25Nci96ZytzUE4vQTh5U0h5bGM1eTFj?=
 =?utf-8?B?Z3NVbUZMS0VVSnZTWWlEL0tuejYvYWtmUm5UM3RjREpTN0pNRDVTY0pWekx6?=
 =?utf-8?B?eGlndUJOTlJVbkpjN0xSdjJjbVZrV2c3NXVFa2p5QUdCS01wZEIvcm1PMXJl?=
 =?utf-8?B?dGxER05uVmhKTkFwVmVFSDcwazBnLzF0bFRKakFlZjZNLzBOUSs4cFNSY2pR?=
 =?utf-8?B?RG1VNkhiVnJDOUVXNk4zYWcrOWpUTnpZN09rV3o1UkhXbkxiUTZPc3o1Sy9J?=
 =?utf-8?B?dnpTdlRpekQrZ0lhcGlCa2s0bzIxVUFaSTR0clRoTWdLZC9rWmNhb2IrK0F4?=
 =?utf-8?B?TFhwaFpFK2JNcE5oZ0hoSHNaUENIUjAySG9YOGU2TWJJSjV5dkJ0TGpUWHJ4?=
 =?utf-8?B?WVpmQTYyK0MrZlFvTlBjdzBLRDNQMUxFZ2FUaTRSVE5wOUxjcy9GdEFjdk43?=
 =?utf-8?B?ZnYwRm9OSHZmS3VLWkh2d2dWSmZEMEN3MzZ6aTdpQ1Ftb2lObkFZKy94Y2VO?=
 =?utf-8?B?R2Y0cDl0Wm4zQXd2ODNWdHlmRkh6MWU1RDhLRGdwaUFKQTZiMlFYOW15Q3FB?=
 =?utf-8?B?ZDNhMDBSdkQ4bEJlTUZIdkQ3djFZbWJnbjB1YUcyOVpKSnkvcFF0cXByam5I?=
 =?utf-8?B?RzBWTWJzOEUxRzI1YTlFekR3UmZFcjg1UWRWZ2tKU0Zhb1d4eURDOWhoUE1q?=
 =?utf-8?B?cit0Q1p3dlRCZG1qZ2JmaWxGUXUrSVYvQkgyaCtBRzFCaWxDMWZhVnpEMHJS?=
 =?utf-8?B?YWVuTjI1RVd0SmdQZFBLT0NjZGZTQ3h0US8yWmRYWXR3TkE4blUvUWV0UWVk?=
 =?utf-8?B?S1lXZ0JyRGJmV2pLWldDMkVTQkVONWtnNnpodXBMZjQxMDF1a1FESHNUazRO?=
 =?utf-8?B?RWtWVWZXTllnQ3BMcm1aWUdaZ3pUZFNoSTFQZmlOWkZ5ZXNpZ1R6U09CcVUz?=
 =?utf-8?B?SjNwVk5iZDQvNnE4eDNvbjJ4M3puZ2VybDdrenUrZUt3bUQ5Ym5vWG52M0w5?=
 =?utf-8?B?YnRjY1p3WkFPWmJlWlBBNFNnTlhHaDJiRW05RGhqVzNJVXlJeS9lKzFPbFo2?=
 =?utf-8?B?UEJvc3pMMkZDQWlLazV2eUE4dnJZWG9JMmVQb3Jqem5VNks0TTRpR3dablBY?=
 =?utf-8?B?ZzN0M2dINFZ6dWFzd3F4KzZlM3ZmNjczQnJCdGRqeEplWWI0ZlBBR1FTbzlw?=
 =?utf-8?B?T0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 29bcf0a0-1840-4c88-4e8e-08de0cc9c465
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Oct 2025 15:36:25.8868 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KVtZs4/fF+j5QMhkn0yo9que3OsMXObUBGx7yOUVRBuatT2smtkNMF7AoyWgzzY3rCWxjVEqe0a0InK0A/lc9tyJrmR8D01rLwdT6nUo7rc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6979
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760628991; x=1792164991;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=C3fw22KO0CmvM5ckSaAOWpOt2IbU/6ezX2QG4uWkV+M=;
 b=ScyyPtLfYmtUbSvvFtovaTpgjf3W3LkqN0l0utmO9xGR6pInbiGktGm3
 BVbabuI+/OiHOCGlsStU1tbk1LxEvuXXpe9gfktXWC+NeQ/YNvpwWN3Wz
 emIzQvlCVGaXuOW5CTVOWhMmi9/qUrbDopsXXQUUuje97yUmrQo7MoYxD
 KvuxvbmD1FnguCCTaJApYhbdOAnYplRgXDnZxWP7ug3BDZ330KCCWyA7Y
 krEb6mWXbxySoxRuvt+34PMCHzby4KzUJBGKwRSq4qwZYa+8YDYd2VEFE
 I/Hqz4o4AmZ3Qg3Zprlzy9jwOCL97Ced9A64jXNlW3/56rD8IHD8RGvFc
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ScyyPtLf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ice: lower default
 irq/queue counts on high-core systems
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

From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Date: Thu, 16 Oct 2025 08:22:50 +0200

> On some high-core systems loading ice driver with default values can
> lead to queue/irq exhaustion. It will result in no additional resources
> for SR-IOV.
> 
> In most cases there is no performance reason for more than 64 queues.
> Limit the default value to 64. Still, using ethtool the number of
> queues can be changed up to num_online_cpus().
> 
> This change affects only the default queue amount on systems with more
> than 64 cores.
> 
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h     | 20 ++++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_irq.c |  6 ++++--
>  drivers/net/ethernet/intel/ice/ice_lib.c |  8 ++++----
>  3 files changed, 28 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> index 3d4d8b88631b..354ec2950ff3 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -1133,4 +1133,24 @@ static inline struct ice_hw *ice_get_primary_hw(struct ice_pf *pf)
>  	else
>  		return &pf->adapter->ctrl_pf->hw;
>  }
> +
> +/**
> + * ice_capped_num_cpus - normalize the number of CPUs to a reasonable limit
> + *
> + * This function returns the number of online CPUs, but caps it at suitable
> + * default to prevent excessive resource allocation on systems with very high
> + * CPU counts.
> + *
> + * Note: suitable default is currently at 64, which is reflected in default_cpus
> + * constant. In most cases there is no much benefit for more than 64 and it is a
> + * power of 2 number.
> + *
> + * Return: number of online CPUs, capped at suitable default.
> + */
> +static inline u16 ice_capped_num_cpus(void)
> +{
> +	const int default_cpus = 64;

Maybe we should just use netif_get_num_default_rss_queues() like I did
in idpf?

Or it still can be too high e.g. on clusters with > 256 CPUs?

> +
> +	return min(num_online_cpus(), default_cpus);
> +}
>  #endif /* _ICE_H_ */
Thanks,
Olek
