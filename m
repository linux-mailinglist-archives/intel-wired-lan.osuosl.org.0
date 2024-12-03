Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AD5FA9E2A08
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Dec 2024 18:53:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 60AC182052;
	Tue,  3 Dec 2024 17:53:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WJjWK8YN8b-m; Tue,  3 Dec 2024 17:53:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 784E68204A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733248384;
	bh=uDoxGmLmQpukW7RNm/MYAH5+NfdOzqXK6KVRkSkfKeA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zU7bYPhtdfrlYjiBUOtdXwXJPwaAsOlin+ui2Asc8fAZqPITiucFBDBs+rjKXqgZs
	 Onwi80qC9s8UAo8rEB/ECCRYOFP1m23MwGXoKygz9B6kwsNXQVH8JRnfhGmiNSsXzW
	 Oz4LAw2tgtIicbA1GiE/ysJa3PuHF7vza0mX8bLrgeEWSCcZTyfLb/LlVkYMuDPMge
	 iFlfKrJz9+/MJptIGhyAkgj8CzRv+gO/B+4MDq7vkVha79uko8yEPXigyKywU+8Euk
	 UmEWkMKwopGUZkyRyOZhVSqMCAkqSlMpZWAHtbehsdfFFDfMCNkjLtxuRxA4MiLeMP
	 DU1KgyHxBsOdw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 784E68204A;
	Tue,  3 Dec 2024 17:53:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 31F9F1DAA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Dec 2024 17:53:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1254482044
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Dec 2024 17:53:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3MsA2ELhgPWt for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Dec 2024 17:53:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=joshua.a.hay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org DC40A8203C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DC40A8203C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DC40A8203C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Dec 2024 17:52:59 +0000 (UTC)
X-CSE-ConnectionGUID: oXZDdwQnRjGcHkUkGY8HDQ==
X-CSE-MsgGUID: vDVyf4E+R+yxeIa/GvnIzw==
X-IronPort-AV: E=McAfee;i="6700,10204,11275"; a="33631968"
X-IronPort-AV: E=Sophos;i="6.12,205,1728975600"; d="scan'208";a="33631968"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2024 09:52:53 -0800
X-CSE-ConnectionGUID: fZDTDARdTT6L7Q6EWwdu9A==
X-CSE-MsgGUID: 9Q/M6dX6RhOhPBkszyDRpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,205,1728975600"; d="scan'208";a="93405175"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Dec 2024 09:52:52 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 3 Dec 2024 09:52:51 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 3 Dec 2024 09:52:51 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 3 Dec 2024 09:52:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jdvRz3DK/yVDCMgAwQ9MI5CxEYQyBZknNbLsQBakXl824bIcTMaSlYZUV88wg+MCMIKa+haUiaEHHDZHLOKzHB67GxA81Sjq7zE0oJlrmuCGyjwVREmYOTI2FBNWjkaMGF6NA81q8N67wp2XbCXmo24eJxuGlik6/f3+qVT+5y3OiG/88oDs9dXUBR87dGaLpy8yKWbkdJ2G8NQHEVwrE995+lCOIwkOOPD/EfSU0mMvsz6VeAk6Q1rZ39vAYEdI6Shzi1Awn0m1HYqMOFKI3EE8MQFjDU7xOjVtowo1dbohd3tjhozR4illGQH4FhZQ7jLDMpJq69RMGGN2v6lOhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uDoxGmLmQpukW7RNm/MYAH5+NfdOzqXK6KVRkSkfKeA=;
 b=MM9vz58oRn5CS8aS7SFSg/vnuyys6CNYBtRwmq9X/8886ZUgbBYbAgYaVOWFl8+80MYcjrn0kQuJtKccV5R5JBl8Qm0Zz9dGUpxWH3GXaHSJ4JGr1otRvzKX3Lfqt6GEERxBOpjJB2v8VErNRiuvFa3BkLaMR4J/v8wrwpZs6aayppHpSoEt+c5Pq3IDcj4OkF/+kDgIM17wW81jodUf2zgH/Q3BIptX7jHrcTBXpZJPEJW8bbtB7wAYXpxdsMppY5U3JOyML9bWbh1p2x/WFOlhjtaqfHPBDoY2qdXMbXwEtLJM8azHhcrmC9F1TYHDyZ8lTkXiVd/Sr2S2frutNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6502.namprd11.prod.outlook.com (2603:10b6:8:89::7) by
 IA0PR11MB8378.namprd11.prod.outlook.com (2603:10b6:208:48e::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.16; Tue, 3 Dec
 2024 17:52:49 +0000
Received: from DM4PR11MB6502.namprd11.prod.outlook.com
 ([fe80::21e4:2d98:c498:2d7a]) by DM4PR11MB6502.namprd11.prod.outlook.com
 ([fe80::21e4:2d98:c498:2d7a%3]) with mapi id 15.20.8207.017; Tue, 3 Dec 2024
 17:52:48 +0000
From: "Hay, Joshua A" <joshua.a.hay@intel.com>
To: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Kubiak, Michal"
 <michal.kubiak@intel.com>, "Chittim, Madhu" <madhu.chittim@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan][PATCH iwl-net 2/2] idpf: trigger SW interrupt
 when exiting wb_on_itr mode
Thread-Index: AQHbP5UHl1TqgZHOE0qF00oZ4nL1Y7LJqUUAgAssq3A=
Date: Tue, 3 Dec 2024 17:52:30 +0000
Deferred-Delivery: Tue, 3 Dec 2024 17:52:23 +0000
Message-ID: <DM4PR11MB6502760769BC51BBBF7D7D75D4362@DM4PR11MB6502.namprd11.prod.outlook.com>
References: <20241125235855.64850-1-joshua.a.hay@intel.com>
 <20241125235855.64850-3-joshua.a.hay@intel.com>
 <e95977e0-d080-45a1-a82e-e11ee85ce794@intel.com>
In-Reply-To: <e95977e0-d080-45a1-a82e-e11ee85ce794@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6502:EE_|IA0PR11MB8378:EE_
x-ms-office365-filtering-correlation-id: fccddcae-eb30-4da3-4c75-08dd13c34cf5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?aHlsc3pIZ1dpbEJzTlJ4d3BDSVlWUm1GWkVBU2pNMHQwZmYxTFZDOVFhZTV2?=
 =?utf-8?B?V2Z6MDBobytkcGQyUEhlT3Z5KzQ4YkExVnRKTVpxdjAzSHEyVDg4TCtQUHRG?=
 =?utf-8?B?dGZUVTUyZVFSWklZS2JMc2lRbmpPY2dpZkZ5SDFNN2tYNkN0ZStWUzIrTnRn?=
 =?utf-8?B?TEtNRWxUL0JYL0hqMWpwc1lQWlJpdmN0VkIweUxWMXFkOUVjbDduOENkWlA4?=
 =?utf-8?B?V29va3RjeG9PY1NBekd3dm5FVG9STXE2bVUwNW40ZHN6NzRwVVBEM09qYVVk?=
 =?utf-8?B?SnB5Vkl0TGdwb1JhSGZqd3k2QndnbWhlWWlleXIvMXBSNkhvQ2dBZHhCSnIr?=
 =?utf-8?B?QW9uSEVtdGI0R1pjMkkyNys0bDRkdm8zQWtUUHFqcTBzaXFhSEIzYU9sOVo1?=
 =?utf-8?B?RXovdDJzRTNHU2JHT1dPa0NVWVl1Rm11RkQwbDhRalRGaTNzZ2ZYTjdPekhj?=
 =?utf-8?B?a0xPVXoxS0FDNHlTc1F0YlJXb1FxeTJnNUlSOG81SDR0OUZzdk9yMHp4c2Zy?=
 =?utf-8?B?ZXFvcUQxdHpHUXlqZktQdnRZL0NBNGNMbW0rMS9Ceno3ZkZDdytGRG1KWFA1?=
 =?utf-8?B?QWtMOGdFNFQwTGtXNXVydnZQRFBidDdnRzJtTDFCd0FXbUhvZktucFZHQWow?=
 =?utf-8?B?TC9lV3g3NWpMMnZPSFh4bjV4VnpieGwwdVhqS3hlaXNpeDVJWDRRSlFSVTFM?=
 =?utf-8?B?YVgyNFBIVWpzU0U3WE9GVjR2M3NhN3lkSnFmcEFGeDRyV29HVGgxZjlra2xk?=
 =?utf-8?B?aW1tODJFN1J5OFV6NG5KVFFrN3dmRS9nUHZENGVlL2FFMUlmdy9TU2J1a2xY?=
 =?utf-8?B?Nmh5aTZIVzNkMXYyTkZFUEQvcnFMblA0SXBUUUI4ZzZwRkVSNEUzTndLNlBa?=
 =?utf-8?B?S0tnVEhIcis2eGpjOXdLc1hPOVJhcVMzQllsajNlM1lzOGx2dnpiMGxZN3lJ?=
 =?utf-8?B?N2M2TDlDWGxGVmNpSDRtNHVwUTBtSFphQ0FLckkvZnQ0ZFhjMlgzOXMzdnR6?=
 =?utf-8?B?c0tpMHY2RTk4ZVhYeGJRMmFUR1VnNWcra2xFL0RSLytZTWgxM1IrdlJOMVhl?=
 =?utf-8?B?NG5uYUVlVHJDcWJLOWptVkcybkl4QmNPMnJhZEs0b2hqNk5Ba3FuNTdudFNL?=
 =?utf-8?B?V1VWQ0t3di91a0YwQmEwaEkzTFpnb0NVYUdxRUw3TGlwek4zSmxkbGwyYlhM?=
 =?utf-8?B?aC9XLytwQUZ1cjI1dUdDOFlPREtveEN1ZEV6UzgrREZzWkF0OGt3dEdwc0NS?=
 =?utf-8?B?R1NDRm5McmNUaE9KajUzTnducEg1VDFCY3dCTDRCZ05SUGxXSFg1eW0zS1NW?=
 =?utf-8?B?MkpvcEwxZjMzbUNFSkVLMHFqbHhNaGFpOG14N29hZGNQQUtsUDlHWW95S2li?=
 =?utf-8?B?eTFDSjZFeGg3YXkzRnE4MldhSEFjRktrTFFVQXlqblczRUE4ajBCcy9KdUtQ?=
 =?utf-8?B?eXBxZzMxbVlyTmRTTTZUL0VEa0szVDlBVGtnWWZDNUprOVk3b2sxZDdsZFk0?=
 =?utf-8?B?c1dVSVVXY1NuRzRJNmlvenNSbThBS3VZdVlPdm8zR0VnRklJeFpNNGpacU4v?=
 =?utf-8?B?VkFRUnRHbkZRZzNCOUsxdVlxbDZNOUwzVjFmK3ZCNEEzTWlpLzBKRXI2dVNN?=
 =?utf-8?B?VzErQjZOMUQ0enBMT1p3RXFTNDZPTWhqWjEwRDlJbjN0VzdPajVZOHQxWHQx?=
 =?utf-8?B?NlIya2lOVUdDZXgrZEF2Vk14Y1RwZjRvZm9zOHBKdzlxVkYwbWdiNEdFdjc2?=
 =?utf-8?B?VmptQ2xGWDNDT0JMYXNjQnJLTkRCYjhTRFBrU1Q4eklOeisraGFKb1pVNHgv?=
 =?utf-8?B?ZllHcUNLclRRTzBMaEJrcjFIbUl0S2Q5NXdQRWJQY3ZIL3FrNERXdEdEbUhB?=
 =?utf-8?B?STh0a0lQSjlETHIwQVdNbEtSNmV6Z05NejVyR21tem05SHc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6502.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dmhOOFFiQTg3ZjA3WWJtN2RjQzkrbGxUUGdGNEwxYTZxTHJIOFNzaTlOYlRN?=
 =?utf-8?B?MzdENjZUUytaMytBVnVQN2NTL0ZLTE1lVVpuYkZ1NWdWZlMrVTBkN0ZHbUpt?=
 =?utf-8?B?NlorbklqMWJLMmIvZ2ZYb2VOSUlPb2ZNWFQyQUx1Yy9VajRmQTZpUndxTU9y?=
 =?utf-8?B?M0hTUVo3VmNuc3lCRm1jN2w5MHNLV0xodCs4R3o0R3NxTXFFcWc2d2l3MHRO?=
 =?utf-8?B?bEdkRlVpaml5UWJ1ZU5icDBxWTVydHEvY01BR1IyT3JkNitGQkdCbllqMndN?=
 =?utf-8?B?NWFmcXRrVUlnMUxzYkw3azQxSmFMVEYzTkNpdVZ0eGRNUFNaRnIzOW9ES0F3?=
 =?utf-8?B?bWk5Q3E5YklYclIwdlVtQ3VGcE5DNUxqeUlkZktIcDlGNjBodm1aYVFQZkpX?=
 =?utf-8?B?UkhKQmFJblozTENOb3ZlYUR2bjVESTkrdGVjV3Zneis3eVFtcnNoRjNuNC9N?=
 =?utf-8?B?SXM2eXBSckNyMUhUMWpaN0E5ZkN4MUY0TGZ4QlhWcGFLM21KYUZvSnZVUzBV?=
 =?utf-8?B?dE1JOHcxaHZJbjJnbUc5Qk8vNDhEbHdTUzQ4Q2swTjFWNnFUTXJSNXVGay83?=
 =?utf-8?B?aEs4dkF1ZmlLZER4WVZvZDB4RWxveE9IY3p0ZGgzRTJYSm1WeU5oUm96eVlw?=
 =?utf-8?B?L1B0TTBaRGRydngzT0xTUzBhenZtTHYxanJGYjFxMVI3UTVZVWVEVXlSdk5Z?=
 =?utf-8?B?UlR1dHU0T1lSSWoxd2hjVkVsUjRBM1BsTCtUclZyWEJWMFF1Ui9uNi80N2RX?=
 =?utf-8?B?U0dyekpNOTBlV044ODV1NUxvUEdmZ0NTemtZenc4VnFQb2J3ZDQ1MHNtTGVX?=
 =?utf-8?B?bEpIbzRVd1d0UTVRbndLb1RuODBrNytNRlUyZFVUci9lMGxmYWlmZmF4Q2RX?=
 =?utf-8?B?S2lkK3NFU3VMUStyamxNb1BMb2Y5Tm1obVcraldrbnZ3MXV4Rm9YZXNmdURN?=
 =?utf-8?B?MFNnRGpDcUV5UjNzUVRtR3haRTY4YnRBOU83WllSMVRxdEFXaWcwWUNxK3VE?=
 =?utf-8?B?R2UvNHBZY3BNanlHQWdhSU5scHM3VWozSzR4YTVpMU1LOTlGN080U3FIUE93?=
 =?utf-8?B?SjYrNWpMTDhPZHBTSlVwcm5qU1I5VWZENTV1OUxaMVVkL25HNmw1LzdzWW8r?=
 =?utf-8?B?NmN1Nm9iTGRsYU5COGV3NkpsR1NwNjZVekY3V29jQ2VIN3NwNE1FZ0tSUU42?=
 =?utf-8?B?czFhcyt5Y2pJSTRya052QjNwMXQ2aUp5Z2x0Q3dRTTVOdmF6eFc0dkpySkQ4?=
 =?utf-8?B?UVVXVFBlU1ViMkt2RldWSDY2UDFRbXc1R3FLcjdHbmM5b09LdXFFYldnTzVD?=
 =?utf-8?B?YS93Z3RSd2pERnc0elhHaFdMbjA2SEYrbGVveE5YL0lLRFJqSmkveks1ZlNs?=
 =?utf-8?B?RGRjcUtSbEx6T0VBaXRHbk9KcjAyWXhqaEF3VGdBZHRqeUlGMVhiV28vWmZl?=
 =?utf-8?B?YUNPcmJPeWQ4OXdvczNzWlR2S2t5bFl6NE1acGIwc1lnUTBGMUNmaDluNk5Q?=
 =?utf-8?B?SlJYaGdlVXNvcUR5YU9DWWx6WkVrT0RQK3g2aTRYMHZMaXBNSVlRSHg0OFJq?=
 =?utf-8?B?VG1xZEQ0VUNxZmZ2bGkrK2hienJYQjY4VmN6UzVTaG1pT0RKVkc5aVNXbFFa?=
 =?utf-8?B?M0MzNTIwT2ZDVEoyc2gzR0ZFak9IL24zZDV2Nlg1Z3ZlUUs5d0VyRWNiSmRJ?=
 =?utf-8?B?LzVNTG5wMTROMkxiL3kzK3VVaUExOGlQcWtjaUIwL3lEcHYwUUlsU2c1TFNu?=
 =?utf-8?B?MzJwY3AyU3VFN2FrUjE2NURPSVBqK1RRRGo0MUVRZzlpOXc3YUJOR3FGazlS?=
 =?utf-8?B?ZGZ1N0JkY0pvZnkvNjlHS0hDVWllRzJ1WGFkS2I5NHNybURvMFd2aVBXYlNh?=
 =?utf-8?B?anVDOGpPeDBSOWxodkVMT3Njbm9FeWdlY0xYaTZyeDVFTG1raWVxNUpabEFv?=
 =?utf-8?B?a2hRWCs5ZyttTmFGaG1uODBWOWZFL3RUcm84WStSSWZUMEN3VHNlSjJ2ZTgv?=
 =?utf-8?B?blRvQ3JJejZ6Q2xwZHZHcjFqYTBuaVBlS3FGOFkwLzVBZCtlcEhkTWZybjJT?=
 =?utf-8?B?bTUvaXhtZEdRcTlxN2Q4RTlFdHpBZ1BpVWpjRVR4MUtwMG0vR3JRb2lsTXF5?=
 =?utf-8?Q?MVHWmYGytaM83ZUJcKJiRiVou?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6502.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fccddcae-eb30-4da3-4c75-08dd13c34cf5
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Dec 2024 17:52:48.6714 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lfGNvJppGVwk4fjhuTsVVWdZMpfAB0Q/LUXIOE7O0w0JdkBYHdS+aFvqexX338xee3Ux+AhhQB69pox4HJKYAQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8378
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733248381; x=1764784381;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uDoxGmLmQpukW7RNm/MYAH5+NfdOzqXK6KVRkSkfKeA=;
 b=iRRcaYyrQjPuKx9CrrChLFfDEbvSFiqrQOogSuNEbjupG7aypfiTHTKT
 9y2AT3SnsIYSOsXrMcUNVNcYtp7BAi5X85AJERhAOsj6FvjspCfJLmrc1
 iDbkiy3+W2dAKR122VG4LfKrlQn8/si2hLYmweYVVItp+ZmTNMbDCNMVV
 qk4kCNM4tCPQ/Tr95+UGHNnY7N3kRCqQ1twfKlD3LqkzOG9qoV9eLRnXQ
 gN8KSilbYiJLu4Sq9iN02tEz3CSLPz51spgmmy9ww7Pa0m2It+rmzjq3e
 ZwwtHUKjXMRYL32l7yInlWN+IFapn2vLxmdjxBICv1qwB8Ogw5Glh6h2g
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iRRcaYyr
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/2] idpf: trigger SW
 interrupt when exiting wb_on_itr mode
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

PiBGcm9tOiBMb2Jha2luLCBBbGVrc2FuZGVyIDxhbGVrc2FuZGVyLmxvYmFraW5AaW50ZWwuY29t
Pg0KPiBDYzogaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc7IEtpdHN6ZWwsIFByemVt
eXNsYXcNCj4gPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+OyBLdWJpYWssIE1pY2hhbCA8
bWljaGFsLmt1Ymlha0BpbnRlbC5jb20+Ow0KPiBDaGl0dGltLCBNYWRodSA8bWFkaHUuY2hpdHRp
bUBpbnRlbC5jb20+OyBuZXRkZXZAdmdlci5rZXJuZWwub3JnDQo+IFN1YmplY3Q6IFJlOiBbSW50
ZWwtd2lyZWQtbGFuXVtQQVRDSCBpd2wtbmV0IDIvMl0gaWRwZjogdHJpZ2dlciBTVyBpbnRlcnJ1
cHQNCj4gd2hlbiBleGl0aW5nIHdiX29uX2l0ciBtb2RlDQo+IA0KPiBGcm9tOiBKb3NodWEgSGF5
IDxqb3NodWEuYS5oYXlAaW50ZWwuY29tPg0KPiBEYXRlOiBNb24sIDI1IE5vdiAyMDI0IDE1OjU4
OjU1IC0wODAwDQo+IA0KPiA+IFRoZXJlIGlzIGEgcmFjZSBjb25kaXRpb24gYmV0d2VlbiBleGl0
aW5nIHdiX29uX2l0ciBhbmQgY29tcGxldGlvbiB3cml0ZQ0KPiA+IGJhY2tzLiBGb3IgZXhhbXBs
ZSwgd2UgYXJlIGluIHdiX29uX2l0ciBtb2RlIGFuZCBhIFR4IGNvbXBsZXRpb24gaXMNCj4gPiBn
ZW5lcmF0ZWQgYnkgSFcsIHJlYWR5IHRvIGJlIHdyaXR0ZW4gYmFjaywgYXMgd2UgYXJlIHJlLWVu
YWJsaW5nDQo+ID4gaW50ZXJydXB0czoNCj4gPg0KPiA+IAlIVyAgICAgICAgICAgICAgICAgICAg
ICBTVw0KPiA+IAl8ICAgICAgICAgICAgICAgICAgICAgICB8DQo+ID4gCXwJCQl8IGlkcGZfdHhf
c3BsaXRxX2NsZWFuX2FsbA0KPiA+IAl8ICAgICAgICAgICAgICAgICAgICAgICB8IG5hcGlfY29t
cGxldGVfZG9uZQ0KPiA+IAl8CQkJfA0KPiA+IAl8IHR4X2NvbXBsZXRpb25fd2IgCXwgaWRwZl92
cG9ydF9pbnRyX3VwZGF0ZV9pdHJfZW5hX2lycQ0KPiA+DQo+ID4gVGhhdCB0eF9jb21wbGV0aW9u
X3diIGhhcHBlbnMgYmVmb3JlIHRoZSB2ZWN0b3IgaXMgZnVsbHkgcmUtZW5hYmxlZC4NCj4gPiBD
b250aW51aW5nIHdpdGggdGhpcyBleGFtcGxlLCBpdCBpcyBhIFVEUCBzdHJlYW0gYW5kIHRoZQ0K
PiA+IHR4X2NvbXBsZXRpb25fd2IgaXMgdGhlIGxhc3Qgb25lIGluIHRoZSBmbG93ICh0aGVyZSBh
cmUgbm8gcnggcGFja2V0cykuDQo+ID4gQmVjYXVzZSB0aGUgSFcgZ2VuZXJhdGVkIHRoZSBjb21w
bGV0aW9uIGJlZm9yZSB0aGUgaW50ZXJydXB0IGlzIGZ1bGx5DQo+ID4gZW5hYmxlZCwgdGhlIEhX
IHdpbGwgbm90IGZpcmUgdGhlIGludGVycnVwdCBvbmNlIHRoZSB0aW1lciBleHBpcmVzIGFuZA0K
PiA+IHRoZSB3cml0ZSBiYWNrIHdpbGwgbm90IGhhcHBlbi4gTkFQSSBwb2xsIHdvbid0IGJlIGNh
bGxlZC4gIFdlIGhhdmUNCj4gPiBpbmRpY2F0ZWQgd2UncmUgYmFjayBpbiBpbnRlcnJ1cHQgbW9k
ZSBidXQgbm90aGluZyBlbHNlIHdpbGwgdHJpZ2dlciB0aGUNCj4gPiBpbnRlcnJ1cHQuIFRoZXJl
Zm9yZSwgdGhlIGNvbXBsZXRpb24gZ29lcyB1bnByb2Nlc3NlZCwgdHJpZ2dlcmluZyBhIFR4DQo+
ID4gdGltZW91dC4NCj4gPg0KPiA+IFRvIG1pdGlnYXRlIHRoaXMsIGZpcmUgYSBTVyB0cmlnZ2Vy
ZWQgaW50ZXJydXB0IHVwb24gZXhpdGluZyB3Yl9vbl9pdHIuDQo+ID4gVGhpcyBpbnRlcnJ1cHQg
d2lsbCBjYXRjaCB0aGUgcm9ndWUgY29tcGxldGlvbiBhbmQgYXZvaWQgdGhlIHRpbWVvdXQuDQo+
ID4gQWRkIGxvZ2ljIHRvIHNldCB0aGUgYXBwcm9wcmlhdGUgYml0cyBpbiB0aGUgdmVjdG9yJ3Mg
ZHluX2N0bCByZWdpc3Rlci4NCj4gPg0KPiA+IEZpeGVzOiA5YzRhMjdkYTBlY2MgKCJpZHBmOiBl
bmFibGUgV0JfT05fSVRSIikNCj4gPiBSZXZpZXdlZC1ieTogTWFkaHUgQ2hpdHRpbSA8bWFkaHUu
Y2hpdHRpbUBpbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogSm9zaHVhIEhheSA8am9zaHVh
LmEuaGF5QGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWRwZi9pZHBmX3R4cnguYyB8IDMwICsrKysrKysrKysrKysrLS0tLS0tLQ0KPiA+ICAxIGZp
bGUgY2hhbmdlZCwgMjAgaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pDQo+ID4NCj4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWRwZi9pZHBmX3R4cnguYw0K
PiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lkcGYvaWRwZl90eHJ4LmMNCj4gPiBpbmRl
eCBhODk4OWRkOTgyNzIuLjk1NThiOTA0NjljOCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pZHBmL2lkcGZfdHhyeC5jDQo+ID4gKysrIGIvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWRwZi9pZHBmX3R4cnguYw0KPiA+IEBAIC0zNjA0LDIxICszNjA0LDMy
IEBAIHN0YXRpYyB2b2lkIGlkcGZfdnBvcnRfaW50cl9kaXNfaXJxX2FsbChzdHJ1Y3QNCj4gaWRw
Zl92cG9ydCAqdnBvcnQpDQo+ID4gIC8qKg0KPiA+ICAgKiBpZHBmX3Zwb3J0X2ludHJfYnVpbGRy
ZWdfaXRyIC0gRW5hYmxlIGRlZmF1bHQgaW50ZXJydXB0IGdlbmVyYXRpb24gc2V0dGluZ3MNCj4g
PiAgICogQHFfdmVjdG9yOiBwb2ludGVyIHRvIHFfdmVjdG9yDQo+ID4gLSAqIEB0eXBlOiBpdHIg
aW5kZXgNCj4gPiAtICogQGl0cjogaXRyIHZhbHVlDQo+ID4gICAqLw0KPiA+IC1zdGF0aWMgdTMy
IGlkcGZfdnBvcnRfaW50cl9idWlsZHJlZ19pdHIoc3RydWN0IGlkcGZfcV92ZWN0b3IgKnFfdmVj
dG9yLA0KPiA+IC0JCQkJCWNvbnN0IGludCB0eXBlLCB1MTYgaXRyKQ0KPiA+ICtzdGF0aWMgdTMy
IGlkcGZfdnBvcnRfaW50cl9idWlsZHJlZ19pdHIoc3RydWN0IGlkcGZfcV92ZWN0b3IgKnFfdmVj
dG9yKQ0KPiA+ICB7DQo+ID4gLQl1MzIgaXRyX3ZhbDsNCj4gPiArCXUzMiBpdHJfdmFsID0gcV92
ZWN0b3ItPmludHJfcmVnLmR5bl9jdGxfaW50ZW5hX207DQo+ID4gKwlpbnQgdHlwZSA9IElEUEZf
Tk9fSVRSX1VQREFURV9JRFg7DQo+ID4gKwl1MTYgaXRyID0gMDsNCj4gPiArDQo+ID4gKwlpZiAo
cV92ZWN0b3ItPndiX29uX2l0cikgew0KPiA+ICsJCS8qDQo+ID4gKwkJICogVHJpZ2dlciBhIHNv
ZnR3YXJlIGludGVycnVwdCB3aGVuIGV4aXRpbmcgd2Jfb25faXRyLCB0byBtYWtlDQo+ID4gKwkJ
ICogc3VyZSB3ZSBjYXRjaCBhbnkgcGVuZGluZyB3cml0ZSBiYWNrcyB0aGF0IG1pZ2h0IGhhdmUg
YmVlbg0KPiA+ICsJCSAqIG1pc3NlZCBkdWUgdG8gaW50ZXJydXB0IHN0YXRlIHRyYW5zaXRpb24u
DQo+ID4gKwkJICovDQo+ID4gKw0KPiANCj4gVGhpcyBlbXB0eSBuZXdsaW5lIGlzIG5vdCBuZWVk
ZWQgSSdkIHNheS4NCg0KV2lsbCBmaXguDQoNCj4gDQo+ID4gKwkJaXRyX3ZhbCB8PSBxX3ZlY3Rv
ci0+aW50cl9yZWcuZHluX2N0bF9zd2ludF90cmlnX20gfA0KPiA+ICsJCQkgICBxX3ZlY3Rvci0+
aW50cl9yZWcuZHluX2N0bF9zd19pdHJpZHhfZW5hX207DQo+ID4gKwkJdHlwZSA9IElEUEZfU1df
SVRSX1VQREFURV9JRFg7DQo+ID4gKwkJaXRyID0gSURQRl9JVFJfMjBLOw0KPiA+ICsJfQ0KPiA+
DQo+ID4gIAlpdHIgJj0gSURQRl9JVFJfTUFTSzsNCj4gPiAgCS8qIERvbid0IGNsZWFyIFBCQSBi
ZWNhdXNlIHRoYXQgY2FuIGNhdXNlIGxvc3QgaW50ZXJydXB0cyB0aGF0DQo+ID4gIAkgKiBjYW1l
IGluIHdoaWxlIHdlIHdlcmUgY2xlYW5pbmcvcG9sbGluZw0KPiA+ICAJICovDQo+ID4gLQlpdHJf
dmFsID0gcV92ZWN0b3ItPmludHJfcmVnLmR5bl9jdGxfaW50ZW5hX20gfA0KPiA+IC0JCSAgKHR5
cGUgPDwgcV92ZWN0b3ItPmludHJfcmVnLmR5bl9jdGxfaXRyaWR4X3MpIHwNCj4gPiAtCQkgIChp
dHIgPDwgKHFfdmVjdG9yLT5pbnRyX3JlZy5keW5fY3RsX2ludHJ2bF9zIC0gMSkpOw0KPiA+ICsJ
aXRyX3ZhbCB8PSAodHlwZSA8PCBxX3ZlY3Rvci0+aW50cl9yZWcuZHluX2N0bF9pdHJpZHhfcykg
fA0KPiA+ICsJCSAgIChpdHIgPDwgKHFfdmVjdG9yLT5pbnRyX3JlZy5keW5fY3RsX2ludHJ2bF9z
IC0gMSkpOw0KPiA+DQo+ID4gIAlyZXR1cm4gaXRyX3ZhbDsNCj4gPiAgfQ0KPiA+IEBAIC0zNzE2
LDkgKzM3MjcsOCBAQCB2b2lkIGlkcGZfdnBvcnRfaW50cl91cGRhdGVfaXRyX2VuYV9pcnEoc3Ry
dWN0DQo+IGlkcGZfcV92ZWN0b3IgKnFfdmVjdG9yKQ0KPiA+ICAJLyogbmV0X2RpbSgpIHVwZGF0
ZXMgSVRSIG91dC1vZi1iYW5kIHVzaW5nIGEgd29yayBpdGVtICovDQo+ID4gIAlpZHBmX25ldF9k
aW0ocV92ZWN0b3IpOw0KPiA+DQo+ID4gKwlpbnR2YWwgPSBpZHBmX3Zwb3J0X2ludHJfYnVpbGRy
ZWdfaXRyKHFfdmVjdG9yKTsNCj4gPiAgCXFfdmVjdG9yLT53Yl9vbl9pdHIgPSBmYWxzZTsNCj4g
PiAtCWludHZhbCA9IGlkcGZfdnBvcnRfaW50cl9idWlsZHJlZ19pdHIocV92ZWN0b3IsDQo+ID4g
LQkJCQkJICAgICAgSURQRl9OT19JVFJfVVBEQVRFX0lEWCwgMCk7DQo+IA0KPiBJcyB0aGVyZSBh
IHJlYXNvbiBmb3IgY2hhbmdpbmcgdGhlIG9yZGVyIG9mIHRoZXNlIHR3bz8NCg0KWWVzLiBUaGUg
U1cgdHJpZ2dlcmVkIGludGVycnVwdCBpcyBvbmx5IGZpcmVkIGlmIHdlIHdlcmUgaW4gd2Jfb25f
aXRyIG1vZGUuIFdlIGNhbm5vdCBjbGVhciBpdCB1bnRpbCBhZnRlciBidWlsZHJlZyBzZXRzIHRo
ZSBkeW5fY3RsIHZhbHVlIGFjY29yZGluZ2x5LiBPdGhlcndpc2UsIHRoZSBTVyBpbnRlcnJ1cHQg
d2lsbCBuZXZlciBiZSB1c2VkDQoNCj4gDQo+ID4NCj4gPiAgCXdyaXRlbChpbnR2YWwsIHFfdmVj
dG9yLT5pbnRyX3JlZy5keW5fY3RsKTsNCj4gPiAgfQ0KPiANCj4gVGhhbmtzLA0KPiBPbGVrDQoN
ClRoYW5rcywNCkpvc2gNCg==
