Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 38FA2C67CD2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Nov 2025 07:58:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A96AF83E69;
	Tue, 18 Nov 2025 06:58:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lQ505bchac8D; Tue, 18 Nov 2025 06:58:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0978E83E6C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763449100;
	bh=6tzVwGeZ6BOs4oIJD/Mx3vOWz/08uELT1bcO26l2PU8=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Q8HKrG6+hkqQgr78ruALCwSvU2k1kaRCd5yYxF2HW6hIAkA4oxgmmSViJ0AGkPsRS
	 s8pYa7LWVBSdy23Rl03czWrPguz4Lnu3GMkiC5bbLrm7zrIgfLygJJlFWJVyVQciUo
	 tKnvLLh4s7aCUOiq7b+OPhxD7+W70Vd5taJrH+aaGKRt9bJ+Vr3D2bHbtw7qSIqgr3
	 uYiRulFI8I84rtYNbIsim+eCcaBX6/cuZbi/Y5/sqtBW3LneoXQ00QhYIh95YRBziM
	 nyiwRNyw1bhbAN8qwxSKPU/2ncEtRF5841MC9oVW1Of0+KonEUnlVZ0IPvQMG9MVjZ
	 N3D7w0l01JUpw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0978E83E6C;
	Tue, 18 Nov 2025 06:58:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 71B181BA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Nov 2025 06:58:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5F02883D86
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Nov 2025 06:58:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JmEhrGARZJhL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Nov 2025 06:58:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5BCD583D82
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5BCD583D82
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5BCD583D82
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Nov 2025 06:58:17 +0000 (UTC)
X-CSE-ConnectionGUID: bkyId73+RemN/oWXpo+rcw==
X-CSE-MsgGUID: NPoyB/lYS9i2vgq6L0PYSw==
X-IronPort-AV: E=McAfee;i="6800,10657,11616"; a="69332536"
X-IronPort-AV: E=Sophos;i="6.19,314,1754982000"; 
 d="asc'?scan'208";a="69332536"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 22:58:16 -0800
X-CSE-ConnectionGUID: H89kbi4YRR2GDN7+vypPHg==
X-CSE-MsgGUID: zavPZYCxTS6D4/FopsaJqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,314,1754982000"; 
 d="asc'?scan'208";a="190472332"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 22:58:16 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 22:58:15 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 17 Nov 2025 22:58:15 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.28) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 22:58:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GNLig+rH6D7ByVdc+EGg0ZvpCOExUnFqOExca9I0SHqtf7KASgQDCFoYwG+Lgz/+Nylniq6E2859BncqpOZQC7I93AwPB27gXZWG24+BkZIv/Mq6IeMdUl5Dt2dPq22+oUISBOSKDwHaSXAHx+AvsM08e5bqLi8+tNA5KFQzTOLiBi7OVIx3Ntw+x2D5zcV9QeosfR2IXd8SwrF2TCXgJR+ExuWK9yxkWuiFpeoR6Z0mp9rfg5l0rt54azcUiez9f7ULJ8Y/7bKrORVHYss8Z0AOJBkNEueG8IO2NDXJW+z7m4r1/5hIyH77qXFTdGNy6EIMM0lsvIxmFWI7zHMoYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6tzVwGeZ6BOs4oIJD/Mx3vOWz/08uELT1bcO26l2PU8=;
 b=gfZPvl3spQmRBl3nU7FIZ90uhpG/OE+i+R6K4+XW3JMfTqYEWGnoZ6mwbgv0J6HHUynJ3xzr2LiI5+xgpR8iN7b4U3YLH8j+Pj+WtuFPBLswfOk4vA7h9Il01/FIpHxdYUqMAlHfzWXKaeh+eNLzpebGfaNyk5KjMwld3QHmEySG91wLj21y8Q438j8EpjR1if0H1juRbeV8OjsfCCGR4MV2gN9IjfMSruonucmX4W6FuZTsit/q8DA9ztxIZIA82ffYcKyvBBu9iOxhIyTF5cEYOE0qR8nZegiiH+kASrt7b8wjnFRfbcy0/gEGhBAgBCiOKrHFgbCjhDiSxIml4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by LV4PR11MB9467.namprd11.prod.outlook.com (2603:10b6:408:2d8::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.22; Tue, 18 Nov
 2025 06:58:13 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%3]) with mapi id 15.20.9320.021; Tue, 18 Nov 2025
 06:58:13 +0000
Message-ID: <e446b4bb-e4d5-435c-a769-9050b15817ff@intel.com>
Date: Mon, 17 Nov 2025 22:58:10 -0800
User-Agent: Mozilla Thunderbird
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Zaremba, Larysa"
 <larysa.zaremba@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
CC: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>, "Singhai, Anjali" <anjali.singhai@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Fijalkowski,
 Maciej" <maciej.fijalkowski@intel.com>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>, "Chittim, Madhu" <madhu.chittim@intel.com>,
 "Hay, Joshua A" <joshua.a.hay@intel.com>, "Shanmugam, Jayaprakash"
 <jayaprakash.shanmugam@intel.com>, "Wochtman, Natalia"
 <natalia.wochtman@intel.com>, Jiri Pirko <jiri@resnulli.us>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Richard Cochran
 <richardcochran@gmail.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20251117134912.18566-1-larysa.zaremba@intel.com>
 <20251117134912.18566-16-larysa.zaremba@intel.com>
 <DS4PPF7551E65529FAD5462AFC6A95035D7E5C9A@DS4PPF7551E6552.namprd11.prod.outlook.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
Autocrypt: addr=jacob.e.keller@intel.com; keydata=
 xjMEaFx9ShYJKwYBBAHaRw8BAQdAE+TQsi9s60VNWijGeBIKU6hsXLwMt/JY9ni1wnsVd7nN
 J0phY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPsKTBBMWCgA7FiEEIEBU
 qdczkFYq7EMeapZdPm8PKOgFAmhcfUoCGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AA
 CgkQapZdPm8PKOiZAAEA4UV0uM2PhFAw+tlK81gP+fgRqBVYlhmMyroXadv0lH4BAIf4jLxI
 UPEL4+zzp4ekaw8IyFz+mRMUBaS2l+cpoBUBzjgEaFx9ShIKKwYBBAGXVQEFAQEHQF386lYe
 MPZBiQHGXwjbBWS5OMBems5rgajcBMKc4W4aAwEIB8J4BBgWCgAgFiEEIEBUqdczkFYq7EMe
 apZdPm8PKOgFAmhcfUoCGwwACgkQapZdPm8PKOjbUQD+MsPBANqBUiNt+7w0dC73R6UcQzbg
 cFx4Yvms6cJjeD4BAKf193xbq7W3T7r9BdfTw6HRFYDiHXgkyoc/2Q4/T+8H
In-Reply-To: <DS4PPF7551E65529FAD5462AFC6A95035D7E5C9A@DS4PPF7551E6552.namprd11.prod.outlook.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------QwPmRHuGyE95CEvaah5gXPBk"
X-ClientProxiedBy: MW4PR04CA0338.namprd04.prod.outlook.com
 (2603:10b6:303:8a::13) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|LV4PR11MB9467:EE_
X-MS-Office365-Filtering-Correlation-Id: e7c1c7eb-4de9-4075-f8cf-08de266fd70f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eXZGY2o0YmpXRDJQWXBQVUtmR1BTcGRQRzl0ZS9uVllvaXpuK2I1K0FPZ21K?=
 =?utf-8?B?cDZXbEg2bk5Sa0VUOVpQNXJFZFVhL055YWZjaElYS0djWlh1TG1QbWtsallv?=
 =?utf-8?B?cUVGOFNwSkQzbkV6QzE3RlZGb0dPbTZDQVlXSTU4SFRIWm5TTk1UTHNuYnp6?=
 =?utf-8?B?TXp6N0xnMjFhTXhQVkE4eFIzRDdiZUJPSmZ5ZDV0eXUrQXVZUnZQUEl2cWdM?=
 =?utf-8?B?emxDV2Q4WjRpSEdwRTNqKzNqZFpTQkVqcXBZSnUvTWRqWXM4bzU3SGFob1ov?=
 =?utf-8?B?OFZUL3ZXSHRZeGMxR3JNWmk2d0QrRGQreVNGV21vTkJBNXZsaVh4Q2Q2azRI?=
 =?utf-8?B?U3dQdDZxUUNuTldDQktnVko2b0hlQkpFZllKYTBBaVhKbXNmVWRPdDNLbjNQ?=
 =?utf-8?B?a2NQZjZzSXBTNGRVQ0dKTkM2clZBd3JwM0FhSGdvSUN4M1dQeTVGaGxTWlY3?=
 =?utf-8?B?T3E4enIrc2RkdGVEcXM4SnVtcHJaV1o1QUNLenpwZ0FOd2NTTnVKWnV5Wmxx?=
 =?utf-8?B?UGhQeXNjb2FqSEk5QVpsWkhMaUZYRjJwT21VaDRHaGUwSEtaamF2WFdaazI1?=
 =?utf-8?B?SVRzVTlGeWpRT0k1R3FLOWtXUHUxL1pXa0xkK1JGWkJsWXZtcUNjNHludEdX?=
 =?utf-8?B?aW9VQnh0WnNmQlNuMnVDL1h2UkpmQUUvd0VQaVhMVUdKR2RBc3pZRVRweWth?=
 =?utf-8?B?TDZWOUhUY3VCTnF3NHF6eTN1SWh5TWlGWGxGUlkxMGVOM2ZVRTEwRVRpemdn?=
 =?utf-8?B?eHZsWll2djM5NXRIanE4eHFpUHlGdC8zaTkwTkloUUxuMGFFR2pSUlJOQ0ht?=
 =?utf-8?B?SDUxQWhrYllFMHUxakFLUkxLblkrT013RzRZb0YvSkYvZGwrV0YrUDMrWUI1?=
 =?utf-8?B?WDZhVnRLdnE5dEFZcHo5RHcrVE53SzhYdXd5eTAxSVdUOWdESE5NcXkxU3o3?=
 =?utf-8?B?KzVhQWpqZ0w2d3dyZW13bTN1eXhSbTNtL1RzbFRGSm9OeGVicnk3V25mQk5U?=
 =?utf-8?B?Yk5LMWpOU1lReHNKVXZzUjhnU2lXcUdqUk1HK1ZleUw2VjBCK0JzaWdjZW05?=
 =?utf-8?B?R1JlcWExWktybG12ZThva28xTG5mbG51YXFmdFBVTXg0dkpMM3AxSjIwRFh3?=
 =?utf-8?B?ZVl0MVBueUw5SUJjaWJtY3Uxb1RzTGh4Sk9tN3VMK0pLNjJFd2FRYm4yVUMv?=
 =?utf-8?B?bk9GaksrVURVTmtZSlJsRVZLdEgxQ0NmWGc2UERacW9LWVVmL3R5QnZLckNV?=
 =?utf-8?B?ZEduVGZTRXdrVzlvekhEeExEWlU2QkZrblFtSmZIL2hiMVUvTkhpeE1WTUht?=
 =?utf-8?B?aHVHcWIvZ0VGbnlMQ2VGaWltQzV0QU1LR1VDUGg2N0szRmk2UWpaZFVWbGc3?=
 =?utf-8?B?U2Vsb0Rzc1lzMjdoVEVaK0EzTmZHSklZNUtvSTFkODQ3OGVoT3BVMEhyRC8v?=
 =?utf-8?B?VXgxVmxvNmFJbmErWUFOTGljTno2MmFkU09EMHZTcjlpT0Z6aHI4RFl3ZTZz?=
 =?utf-8?B?V2V3VTBIR1NMZFhEUkZxbHpKUVJIM3c2SmhBeDU3Vi9rTWJEM3BldTk3OHd6?=
 =?utf-8?B?aFZEclN5WWJTREpDbFJZWitOb25hWHQ5RGtTZ3lDd0tSNmZTNWNqY281Nk9U?=
 =?utf-8?B?NHZaVlNkbDliNnlIREtVb2Yrai9qcE1PeVdMaDNJVTNqZk1abXQxYVBCU29u?=
 =?utf-8?B?V2VEMTVnMW9UbE1FU2E4Sk91TWN3VWM4clJBWnRiMVJPRk9aaDdaMW9sK09V?=
 =?utf-8?B?empScGVtTWdjdmxDOUgrR2ZFNEJuWHBvUml6S2ZiWmVvdlJHaU93NStiQzU5?=
 =?utf-8?B?SHovNUxqYy9GRC9COWluczBncUhQSkJpVzhhdVJZY3M4WHpzOXNDa00rTHB2?=
 =?utf-8?B?SVVnUUlOVjg4eFYwSVN2TUxndHJDdlZybi9OQzl5V2k2dTJBWEd5d0JuamFH?=
 =?utf-8?Q?sPKk4AT1AdFe/qjalI4NN4fA3YaKxUOK?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c29jK2JLMFhlU0xxZnkvbDhoYVpXMmNHOUFRQVdKOXR1NFdqN2lGYzVrLzBk?=
 =?utf-8?B?L0liTVB4dC9LWkx1bWloS0FWVmlxejNRbngxVXV6b2ZzbFBSSC9SR2EwL0Mv?=
 =?utf-8?B?OEd2YzJBVGdrZTZDM3FWVlpTalYrYmdHbWlVRmpyN004cENKTFdySkFpQXMv?=
 =?utf-8?B?ZVE1c2RISFo0SjZBNXA1b1o3WWhIN0puZ0tPMTZqckJJVmhKSEVYeWxZMVN1?=
 =?utf-8?B?WlhQMTlBOFd2ZTcvdkdPZkdyNnp4T2F0ZFNNZGs1RTdQdFBEcVBLV2lSdXFj?=
 =?utf-8?B?Y051Q0V2LzlOeXFRNnFpcHRNVHYwYVNIdGlnTGJGV05LQkhpU1RHMWpWRUxN?=
 =?utf-8?B?SE9HRTFMVThLeisyV0RHbzJIbDBBUlpUblhIWjhaajZ1QXh2YWF0UHdIeGIy?=
 =?utf-8?B?dmx5c1JCMGNZK01XYjdrMkxkREYrZjcxWW1qL2RqTDcrUU9WYStqbWhLNjJU?=
 =?utf-8?B?RFE4U1pSbkpFT09HVnVnclFHWmxxZU1kK2tLRHplQkFrYW53MFM1ck5tMG5t?=
 =?utf-8?B?WlVsVVhibzBHb3l3TGc0VDcvckVqK1pzMTJuSldjdTFXVmFBNi91M2hzNzM0?=
 =?utf-8?B?RnVwb2RvMEpGWTVuTm1jNy9rWFRiUTBaNzhmOWFBeTFad3QxdXhRbm1OYzFQ?=
 =?utf-8?B?R3lERjZCTVJVa1Zzd3VRQ0tGUlFTbFlzOUtzdGZwTFZNVEdpTWRUdDYvVmFO?=
 =?utf-8?B?K3piaTVpanJTY1hLc0oxZFg0ZXJybjU0NC83dzhsVUJlcDYyMWw5VnFoUVla?=
 =?utf-8?B?SDJBNzMrZHIwSzAvZWdGV3ZnbzcwTFJsamxkNy9oLzBOVXd2Y0djbVFFWjhn?=
 =?utf-8?B?MlY3R3RiSUhvYVBUZksyaGtXYU42VFR6d2hLQ2hadkQvQS9vQnNVT052MlQ4?=
 =?utf-8?B?OFkwSkZOWWlURWJXZm9Gd251dHJqTjZ4K2JIOU81TENQbEw1M0ZQZWRsSnhJ?=
 =?utf-8?B?K0t0SklHK1Y2VnBNTzRBb0pWSmliTWRGV29IS3ExV01tbm5ub1MxSEFObWR2?=
 =?utf-8?B?NXJkSk1GSDFoWEpEUHZxSlVKVFc4aGZmalp3UDBQR1BuK2lsSU50Ykd4VGpz?=
 =?utf-8?B?a1drYm0zNnc1QlBrZk1OSGpYTWp1NXVRRGF2eDQwZDg5T0V3TnhEWVpEcW8v?=
 =?utf-8?B?M3ptUlhCdUkxdkovcWQ5UG1LVlJPUXd4NC9nWTBuN01YbTNaLzZUWThBS1hm?=
 =?utf-8?B?WG1TUG8wY2txSkNNdEtZZFBONnlEbVlTZWc3Z1Avb3hMV0sxY1lLYXUwRkhh?=
 =?utf-8?B?dG5yWVJJZ1lxWDZueWFpZ3ZjNDQyUTlOSlRJelVvbG95aFlVMHozcmJHY2c2?=
 =?utf-8?B?aEhFVUZiYlNLaUVpbXcxWXpLSUF4N3Q4TFRhUUZkN1hGWWlCZ3pDWmg0L2FU?=
 =?utf-8?B?RjlZSGcyNXpsYnN2TDBaS0p2UGRFOHFCYk0xdjBNcFJiUWU2cVRJckZyM3Ji?=
 =?utf-8?B?WWxXN1VqVFl0bE1DRWR3YTdCKzlGSGdPdElpQ2hXSS9pNVVyMmlCVkwrV3da?=
 =?utf-8?B?ZmVLVXJpYnJxQ01TWVpnK25QOW9NQlFRNFRoM0dGWGFicVVyVG54eEsxTkQx?=
 =?utf-8?B?RmRvQkxJTml6b2NNWkhyRVhNZENXTHpOVk1Od2pRV0FGNm95eWl6emFDUmp3?=
 =?utf-8?B?ZkEvSE9WSHJSNlZFS21jZlNNT0w3aVFtYzJ1YTB1dkptSXEvb0t2elYzdHBa?=
 =?utf-8?B?ZFl0NEdlZ1Rlc2g4dEVUM0RidmczaFczMnBpZTAxWU9Wa1VqOXlJOXA4L3VT?=
 =?utf-8?B?aE9wVWhCcURrQXBQdkROUFc4OTIyQUJFczZZK2tNZXVtSm56NnI4Rzd3VzlN?=
 =?utf-8?B?K2I0RkhuYXJ0bEtNaEVGaWc1cVBZOW5FeWJWUGhseWlKQzZYT0U0Q2lHWWVj?=
 =?utf-8?B?QlJVNXFGN1pxbWxKaHBoM2diM0NpaWp5NXZMZDVuOUZxRGdWcmdjK2RYenMz?=
 =?utf-8?B?clFzSzZqOVkvcXg4aFdmVGdBQlBDMnE3WEdhTkNtcE1MSTlpYXgwRHpWdEN6?=
 =?utf-8?B?L3o4dU5CWDFJbzVObkpKNGNHTkFmcm1yc3VZUHgvYVRBRkNpS2ptanV6RkJN?=
 =?utf-8?B?OXRmZ3F6YzV0OEcyT05zS1FESHJCOFUzbjFrUlptOFRDc25NMjlLemZRNEw4?=
 =?utf-8?B?UHlNamF1Y0xSYzRGMXU0TzgwMktwMzFpRXh2Z20yM2lIVXR5ZWpHS2NaT2lU?=
 =?utf-8?B?ZGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e7c1c7eb-4de9-4075-f8cf-08de266fd70f
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Nov 2025 06:58:13.4075 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yGBTqFIGaXnFEXHzoDRpendeQh7Yfe83ZPNkNJ1zs0+2VH04WtM4066zYA/C+D+A1XjzLKnuOVAFfM4643ZFQPoMtB+AR4FjYPh/gPOjQ/4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV4PR11MB9467
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763449097; x=1794985097;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=hs+pN4T2Q7wI51RIvf1sdSRD4U54EowBPa/ssewKhpM=;
 b=SxZWKbDiH4UMUrKdJv5JKj6VXk2nHuDhq0fFXaLrfKWM6mz43FbFgGPs
 DPSBTxZ0gbfiJfQlWlFF+jUZnPyuXHNl6m4UUEzHC536SRY0gJvdIphrT
 WCgo/tFst7NKGTIV1K2DeGYp9IKOATJaOQbGFyTTvMrYdHFeFYFtUevjD
 qndWjhNEJbkTR0RctyNpoh/cu9IWvB95aP+2MuvZRJ07OV++OEto+Qfxb
 P0jAvFhUbjHsD4hsZ0N5gldy0Q9WGAnH6LNrScYDS/U2nDfGneRj3ITut
 DZFuIiAKGnwUq3DN/9AAFsjzZyPF6KukydvWmr0K8HIkrQag6cltU8Pfw
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SxZWKbDi
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 15/15] ixd: add devlink
 support
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

--------------QwPmRHuGyE95CEvaah5gXPBk
Content-Type: multipart/mixed; boundary="------------TyZz9bhsvpqsJTNg00RnzNOa";
 protected-headers="v1"
Message-ID: <e446b4bb-e4d5-435c-a769-9050b15817ff@intel.com>
Date: Mon, 17 Nov 2025 22:58:10 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 15/15] ixd: add devlink
 support
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Cc: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>,
 "Samudrala, Sridhar" <sridhar.samudrala@intel.com>,
 "Singhai, Anjali" <anjali.singhai@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 "Tantilov, Emil S" <emil.s.tantilov@intel.com>,
 "Chittim, Madhu" <madhu.chittim@intel.com>,
 "Hay, Joshua A" <joshua.a.hay@intel.com>,
 "Shanmugam, Jayaprakash" <jayaprakash.shanmugam@intel.com>,
 "Wochtman, Natalia" <natalia.wochtman@intel.com>,
 Jiri Pirko <jiri@resnulli.us>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>, Richard Cochran
 <richardcochran@gmail.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20251117134912.18566-1-larysa.zaremba@intel.com>
 <20251117134912.18566-16-larysa.zaremba@intel.com>
 <DS4PPF7551E65529FAD5462AFC6A95035D7E5C9A@DS4PPF7551E6552.namprd11.prod.outlook.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
Autocrypt: addr=jacob.e.keller@intel.com; keydata=
 xjMEaFx9ShYJKwYBBAHaRw8BAQdAE+TQsi9s60VNWijGeBIKU6hsXLwMt/JY9ni1wnsVd7nN
 J0phY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPsKTBBMWCgA7FiEEIEBU
 qdczkFYq7EMeapZdPm8PKOgFAmhcfUoCGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AA
 CgkQapZdPm8PKOiZAAEA4UV0uM2PhFAw+tlK81gP+fgRqBVYlhmMyroXadv0lH4BAIf4jLxI
 UPEL4+zzp4ekaw8IyFz+mRMUBaS2l+cpoBUBzjgEaFx9ShIKKwYBBAGXVQEFAQEHQF386lYe
 MPZBiQHGXwjbBWS5OMBems5rgajcBMKc4W4aAwEIB8J4BBgWCgAgFiEEIEBUqdczkFYq7EMe
 apZdPm8PKOgFAmhcfUoCGwwACgkQapZdPm8PKOjbUQD+MsPBANqBUiNt+7w0dC73R6UcQzbg
 cFx4Yvms6cJjeD4BAKf193xbq7W3T7r9BdfTw6HRFYDiHXgkyoc/2Q4/T+8H
In-Reply-To: <DS4PPF7551E65529FAD5462AFC6A95035D7E5C9A@DS4PPF7551E6552.namprd11.prod.outlook.com>

--------------TyZz9bhsvpqsJTNg00RnzNOa
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 11/17/2025 6:28 AM, Loktionov, Aleksandr wrote:
>=20
>=20
>> -----Original Message-----
>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
>> Of Larysa Zaremba
>> Sent: Monday, November 17, 2025 2:49 PM
>> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
>> <anthony.l.nguyen@intel.com>
>> Cc: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Samudrala,
>> Sridhar <sridhar.samudrala@intel.com>; Singhai, Anjali
>> <anjali.singhai@intel.com>; Michal Swiatkowski
>> <michal.swiatkowski@linux.intel.com>; Zaremba, Larysa
>> <larysa.zaremba@intel.com>; Fijalkowski, Maciej
>> <maciej.fijalkowski@intel.com>; Tantilov, Emil S
>> <emil.s.tantilov@intel.com>; Chittim, Madhu <madhu.chittim@intel.com>;=

>> Hay, Joshua A <joshua.a.hay@intel.com>; Keller, Jacob E
>> <jacob.e.keller@intel.com>; Shanmugam, Jayaprakash
>> <jayaprakash.shanmugam@intel.com>; Wochtman, Natalia
>> <natalia.wochtman@intel.com>; Jiri Pirko <jiri@resnulli.us>; David S.
>> Miller <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>;
>> Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>;
>> Simon Horman <horms@kernel.org>; Jonathan Corbet <corbet@lwn.net>;
>> Richard Cochran <richardcochran@gmail.com>; Kitszel, Przemyslaw
>> <przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
>> netdev@vger.kernel.org; linux-doc@vger.kernel.org; linux-
>> kernel@vger.kernel.org
>> Subject: [Intel-wired-lan] [PATCH iwl-next v5 15/15] ixd: add devlink
>> support
>>
>> From: Amritha Nambiar <amritha.nambiar@intel.com>
>>
>> Enable initial support for the devlink interface with the ixd driver.
>> The ixd hardware is a single function PCIe device. So, the PCIe
>> adapter gets its own devlink instance to manage device-wide resources
>> or configuration.
>>
>> $ devlink dev show
>> pci/0000:83:00.6
>>
>> $ devlink dev info pci/0000:83:00.6
>> pci/0000:83:00.6:
>>   driver ixd
>>   serial_number 00-a0-c9-ff-ff-23-45-67
>>   versions:
>>       fixed:
>>         device.type MEV
>>       running:
>>         cp 0.0
>>         virtchnl 2.0
>>
> This commit mentions MEV without expansion.
> Kernel docs require expanding uncommon abbreviations.
>=20

This is an example of the output of devlink, so if devlink literally
does print MEV, this should stay as-is. You could provide an area which
explains what each device type means and has the expanded definition.

--------------TyZz9bhsvpqsJTNg00RnzNOa--

--------------QwPmRHuGyE95CEvaah5gXPBk
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaRwZAgUDAAAAAAAKCRBqll0+bw8o6HLR
AP4qdQ4l1KWCrbE1tF59z9q76T+TAo/WZjDWTYmQoj0jVgD/Yu4PX/bmTQCmouM42ec/ESHJrKuO
1tJAbt7XPBnwLws=
=07XR
-----END PGP SIGNATURE-----

--------------QwPmRHuGyE95CEvaah5gXPBk--
