Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D87E5CB426B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Dec 2025 23:36:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8CC22402E0;
	Wed, 10 Dec 2025 22:36:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wlxxXJwry7SD; Wed, 10 Dec 2025 22:36:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EB2DD402CE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765406181;
	bh=hsH2lN0B7co3UiflyUhcBHX0Hr5sX7FePjW2gZBf4U8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ux0p9PZr1NcdhzQw/WCzuK8aLuSQSDNlWJ9ogGALBPdO8PTzAABBVn7QAY3N37Pwg
	 ++GYxM3v0tS/8wWlsirPlxsYWoSHkRJ1CmLZNYYe4cQIc73s7Rs3ugJ3Wx+eUwsltk
	 Q0ApoCPBBBONjUgiM7Lo24effkcIuv/wNxF0DhSCffQXSiv82i9BB9t0ib4FioD3vu
	 Q4f1WcqpqQ8N/ytkGoJja7Qfaj2W6L4XvAG16HdnQZ0ern7jO9WLOiamRqi5IPgMpH
	 OBweTkeBZgnFFV4sSxGWpdiw06idg1kGA/y2Z+ooay3S4tWdF/c6EQtFGwR9jA+f+7
	 XI9TbZFIejRBg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id EB2DD402CE;
	Wed, 10 Dec 2025 22:36:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 12D58237
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 22:36:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 052D64002A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 22:36:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9ii9ERmaIXhI for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Dec 2025 22:36:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 496A340421
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 496A340421
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 496A340421
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 22:36:17 +0000 (UTC)
X-CSE-ConnectionGUID: ZvW/hKxUSSWcCDu737fBEw==
X-CSE-MsgGUID: WeAV2g7yQjSgE5GIeIrCBg==
X-IronPort-AV: E=McAfee;i="6800,10657,11638"; a="84792762"
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="84792762"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 14:29:09 -0800
X-CSE-ConnectionGUID: lDMlKxghT2qXx40/zQpqGw==
X-CSE-MsgGUID: 4dOjVe8WRYyvJci2ylo72A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="196916464"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 14:29:10 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 14:29:09 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 10 Dec 2025 14:29:09 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.53) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 14:29:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qqEMjnqXek27iN8w1++QolcnF55Bz5jR39+vyRoW4KMMlTUC/FMdL1YaHAUH3SVSvL+4s3wadpYJOmnbB9xbR5C98jBYbFfy5Dl1iA8Fc3raV+9ZBckn/vkSV3eI5QS2jNsZjWi0k78nSAEc5FzLXRqKLBLqYuu/WkmvP10dKsnTxRtJSBFlQqDd5Zget+XkK5GT8D2ATiyNSsxOGXh96ZQ9/SKL8WyNp3MLxq5QguddmVaPx/Xe81la7f0JnrYLRGBUH1vtsgD2c5qIfuBapEteg8Gj1Owja2NpOHFGHDFs4epKPTpGJhBrGBEHsX4FGC2VHVk339kLBi66bYWrfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hsH2lN0B7co3UiflyUhcBHX0Hr5sX7FePjW2gZBf4U8=;
 b=VVrd7/gjtI9PTUYvYYvrbBOeWPNlS7xV073ZLz9sQit/IX/n+dC/i09wkgr5uNoKxSjhbKXO1Qqi33z/eWSnnfY62FYTiXwUmk3roW3Ld6GWkHr1bnoJ3vvDOvASHYfEfRP1qKd5ZjFtf5BAX8Xt0tIDmPBDG9e88jcNCW2EgRcjgfJSi3aUL7MP64DdfxRAlojxL/BeYRZcff6oj0oxU9jbpp2iRzjGrMYVC7KOA1JZ/LSIgO3Acfxw7s4L+w2Fc134KaZs1x1jE8fP+Lcc7dhtRJzhyFX/foPRs+F4mZE02jFnfV9uLFkcS6bGBn8q2r2hkDTmvcagEWIcK09gLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by PH8PR11MB6681.namprd11.prod.outlook.com (2603:10b6:510:1c4::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.9; Wed, 10 Dec
 2025 22:29:02 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%5]) with mapi id 15.20.9412.005; Wed, 10 Dec 2025
 22:29:02 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Chittim, Madhu" <madhu.chittim@intel.com>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "decot@google.com" <decot@google.com>, "willemb@google.com"
 <willemb@google.com>, "Hay, Joshua A" <joshua.a.hay@intel.com>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>, "Zaremba, Larysa"
 <larysa.zaremba@intel.com>, "iamvivekkumar@google.com"
 <iamvivekkumar@google.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2 5/5] idpf: fix error
 handling in the init_task on load
Thread-Index: AQHcWnyIyoEDTwcfik2p66t2KfpNYrUNYjyAgA4nOiA=
Date: Wed, 10 Dec 2025 22:29:01 +0000
Message-ID: <SJ1PR11MB6297C8694D92EEAC984E49A39BA0A@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20251121001218.4565-1-emil.s.tantilov@intel.com>
 <20251121001218.4565-6-emil.s.tantilov@intel.com>
 <31f701e6-fbd3-4674-82ef-2f835d4a8b41@intel.com>
In-Reply-To: <31f701e6-fbd3-4674-82ef-2f835d4a8b41@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|PH8PR11MB6681:EE_
x-ms-office365-filtering-correlation-id: 575c7182-3450-43cc-a2d4-08de383b8539
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?amFuTUh6bXlRTUZmRDllWjZSOVR2R2g1WjZWUXZuYzVrMHVsUWhnSDRjMzMz?=
 =?utf-8?B?MitQTml2NGNlSnhUeGI3dCtMc1VrdzFjUU5DenVFT0RVd1A3S0s5QUMycTB5?=
 =?utf-8?B?aHBIb2pQRUF3VWlEOCtQWDU0TTNqUjhQN1FxM2tYdnNtS2FTSjNkemdId1BB?=
 =?utf-8?B?WDl0YU95U3JYa1VicFdRZFV2bnZIdktadEVvRXNpby80VmxSS3Y5bHl4OWxD?=
 =?utf-8?B?cmF3WWx2dzQ2TnFaNjgyWmdmcWtvWnpHRlRlTXhwbzF1dHFwQkJ4REVEa0lL?=
 =?utf-8?B?M2J5d0VsR3VOazhpS2M3YUphOTVCR0RBNDFrMjN4OFNGS2lqbCtqTkRQcmNW?=
 =?utf-8?B?YWpPeW0wbnpnK1BlZ0gxMWJ0UnJYeEZqaFNRZlRrSWdoWHVoRjNLeFpHVEtj?=
 =?utf-8?B?SnRUNFVBdDdkdDgzdnJYQ0RLc0hjOXlCVVJxb1JtY0l1Q3ZTQTVKSC83eXRT?=
 =?utf-8?B?T29Xb285SERCckJ0Tnk5NmU0UkxYcldueFp5Yk00ckxSL1k5UXc4b0JpWVBU?=
 =?utf-8?B?VzdKTi8zeGlnVjhOdnJ0T3YvYUJGUWtuTi83SU9pR1NYYmFJcXk2VllHbnRX?=
 =?utf-8?B?YURvRFlEOHFnc011bzZDR244WCtkVmZPMGRvZmhId1NSL0IrMVRET2JkaTg2?=
 =?utf-8?B?bUlmalIyaytZSkMwMWJnRUVSZ1hSZTVWOVFUMTc5ek91azliM1h6c2FUNmdm?=
 =?utf-8?B?dTA4YnA0QzNHS0RVR0JscmxsY1VXRXJkN0hkV2c2MzI5L3dUV3dOZ1FaS1NG?=
 =?utf-8?B?L3QweGxWYzREQW9KOThHUDBjSGNCR1hVZnkwUktQUUtIZWY5RG5ONFZ1RGE0?=
 =?utf-8?B?Ykpad3Ntbkt1azF6VndxMkI2TDNYREZ2QjlOa0Z3RElFVVJrNFZ5bjFYYktk?=
 =?utf-8?B?WFBNMWgzWE1WYlJObElLRWNneVJobFMzTUZ4eDl6ZFRNUndLeDQvSXI4RE5j?=
 =?utf-8?B?OXIyYk1EeG91VjdvdWhZaEZYZHA5c203dG8vMXQyc0JObFBjOE15QXdXQ0VY?=
 =?utf-8?B?WUxjVU5zNVVKNXpCcWQ2UFhuOG44UGFBSnFJSU4yenZZeTdNcGxhWUZoVFJE?=
 =?utf-8?B?U0tDeGU3UDB0T2pLQ05CL3ZOMlZ4dGcxYk1hZkVMeEV1NkNTT01ESUdMdGsr?=
 =?utf-8?B?Qm5lSHJpMWVZM0lqMW1rVmxTampHMEVsNW9tVHdvNjgycnFEL285cnZvMmUr?=
 =?utf-8?B?RnRCL0lBSFdlejErQ2N0YXlMT1JmNy9XL1AwNkxVR3Rxa2pzMThJUWJncjFH?=
 =?utf-8?B?MHFvclJiS2EyTitlOUpPS2xZem94T1RhdElHa29QbnY2TFhEK0ZoeERWMmo0?=
 =?utf-8?B?R0VPMEpOb1FxNTJ0eUVJbnEzRjhpbXhrcEtXQlIrL0c0cmdJZk4rRWNlMk9w?=
 =?utf-8?B?SmhsdThMNGpGRldIbEtzWEtBekFwa1g5VEJzRkRsZGNzK1UxKzVyWUJGcFJL?=
 =?utf-8?B?YUFNdGg0QXNlNys4MmJuZmJMU2haSlU5elVSbDErK2QwdURwcGJ1YzVIY2h1?=
 =?utf-8?B?V0dDdzloekJQVlRGS0MxU0s5b25OU2Vpc09UT0VRR2RKZ01oSDlGV285Sldv?=
 =?utf-8?B?Z1d6RzAyLzhQNWdjVHUzejZVeGo2ejRmd0tmeFBkOWdGN3gyM01Id1htWXNH?=
 =?utf-8?B?aExLemppL3BibGtKck1rc2hNbHhpa3lpaUI1bDRhayttdXhtaUM0VjJ5R3pk?=
 =?utf-8?B?akVxanpoMWN5bkI2dUxBUjFJMXR0dGxnTUhJUGtVZ2NvZGVnbDBjam5SclBn?=
 =?utf-8?B?VUlzMnNLeHM4aWRmY1RqdTcxSW1DMXptcllIKzRHcDhMYjRRNEJaY3dGLzR4?=
 =?utf-8?B?K0wxUUM5NXZTRlBGYjc2NkFJaXhzSTJRVnhPcElNVE83ZnEvTkRPbHpER0d5?=
 =?utf-8?B?a3BxbXZwQi9LekhLTjBTek5OK1c3RWVFRDZNaHhYcTYvM21ITnFpTDdEZktz?=
 =?utf-8?B?SDRScTBGQlVXa2xZK1JXaXFkNVlyZzY0eGJ5QmkxamFzbER1ZTVFSFl1TXVm?=
 =?utf-8?B?UzJzaGlrQi91OVdTbVUrMjF4Y0U5c3g1Uk9mekdJMXc1Nyt4ZlBib0FLMS9v?=
 =?utf-8?Q?k7mx0z?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dGNKaHo2OFI0UGtwMUpMSVBnK2dsZkVGUkNzM1ozM212SzA2ckc2Yko0dWo2?=
 =?utf-8?B?QTFUR2lwZmN2ZE0zT0pWdmVWQ1QyMjdGMGVOWUVEZ2hWQklkaTA0K0YyTEpk?=
 =?utf-8?B?Ym5LejlIdzhoUkpEVlh4STU1OFFna2FOY0NmempDT3ZhYUdEUG1tTkNEZkpo?=
 =?utf-8?B?QnhLOFlMTEwxL01pNHFvbWhzK3Qyc05tN25RZnVYektkM21MNWhJdjZuVXI1?=
 =?utf-8?B?bDNtTmYxUWQ2NVQ5bDhwWlU5Q1dNdzJWZGhKL0g2L2dwN0xWNjdQbFp3dm5N?=
 =?utf-8?B?Mktma21HNmxGZXVvSVB5VjBwMzhjNWdlOHlqNjBOaTE4SWdqNnRoNnFSa3Fz?=
 =?utf-8?B?cTREZWI1V2xNdTBTRWxMak9TazROM0M0RnNpMFlSMDFORWhkT05LSHRJYTlw?=
 =?utf-8?B?T1JpcUhIUGRoZkN4SW9hd0JLUEt0cjZzbC8vRDFNdHJSTXprRm1xQTE2ZS9Z?=
 =?utf-8?B?UWtvaE9zdHRvTU1EcWhCMGJPQWlNeFl6Nk42Y0lTcGVPY1pyTlRvd2ZqT1Y5?=
 =?utf-8?B?OFQxNDZtUko0L2txb3kxUWhycGtBNGh1M3k4RWFJNVphOWpJSUVOM1preXlr?=
 =?utf-8?B?Q1plODdrVjNybkJBN1dqUnlnMEdHa29PRDNXL3R3ZkwyZWR4bUpzeFhzZHV1?=
 =?utf-8?B?RnZpbW54OC9YVzlYcFZaU2ZyeGlER0Q4dnRmOVpPeEtaeUJvMWZOZ1dlZ0Ry?=
 =?utf-8?B?eThjR01GSG5qd3hZMUE1cG1FQjB6NjNaYm9zb1I4eEZhb3RSUVl4TGtmOW5Y?=
 =?utf-8?B?Q1B3R0N5Z3BEdGc0b0dTWS9MOFMvSnNVQm5MdDBoS0ZtUkgvT2ptQlpIbzRm?=
 =?utf-8?B?Tzh5VWFoSWtjZ21hUTlnM3hKeXdXbkdCT01hNXh3S3lvQk9tNW95ekJFWTBn?=
 =?utf-8?B?ZVRZQ1VRZjJqZWZta1hha3VMazJIdXpvSkVGeFZmSXlmNUdNalZGdnF2L2or?=
 =?utf-8?B?Z0lsSUpQR09UT25pRnRKaysrbk9oVHlZUE5MVVRhN3FhcHpVOEpnRDRBYW5M?=
 =?utf-8?B?UVNMYmJGZTdKUVlBcDJCMjNIc0U2Q0tUdUFqcyt3dTJ6ZlpSUjhIVmpsTTEv?=
 =?utf-8?B?SUtEMVAzNHZXOXdRbXZMd0VTWnk0UHlKbnlEUDNyVjYzVmg3d1NDbzF1NCtB?=
 =?utf-8?B?djlYbUNRekx6SHo4L0JDTmxMRnE5cmlLbVJUQVpkdkJCK2RxMFUrS3hvWnBj?=
 =?utf-8?B?WERZdGFHWFhTMlFEcW1VRHVWbGg0U0pzenFPNTNXS3M5VHBJcFF4ekhUbDJZ?=
 =?utf-8?B?d3paYVRCeU5vWjZseXJsbTJ2OWZSNVNHNWZXK0laaG0zVTlGOXFRQjBQZnlZ?=
 =?utf-8?B?NzVZZ2RLaGRRRWx4UnloeTc3VENUeHcxR0hjRVBuenBwOWsrYWdsL0krRXN1?=
 =?utf-8?B?QmFUTkNEdStGYjBqRG9hMzNjUUlWbEpXSjV6cWs1QU1QejVscGRQb1RRVThJ?=
 =?utf-8?B?ZzVzSUJ1YXA2TDZCMFJid3pMUko0QWFrOE9kVmdBa2NudWpTeXQxWjFUUkJB?=
 =?utf-8?B?TWVEOHRBWnhDQytvQmYxNHFBMHBNYVJ1d3FEWVl6SnpiNFJ4cDVzRXYzK1Q4?=
 =?utf-8?B?UWlEK0cxNnNhTklDSUF1SFI3K1VqTE5JY0ZxenlIYnNzN3cxVUtvbWwyQ3gz?=
 =?utf-8?B?azNQeEs4YndVNlFVcGdjKzdtdzBSVDVsUmJuVk5ZVlA1UGdMVVNxaTVFT21R?=
 =?utf-8?B?cU1TcEhFeWNPaGgxTTYvem9IcFlpL2t3eEZielI3VHN0cGhFYzVWLzFkWUto?=
 =?utf-8?B?b294NmtHbWxrTXBNTm8xSTJ5QTVkdkhpd0l2dUZxLzZJNjVHU1pGZEJvNHFK?=
 =?utf-8?B?VWo2aEUzMmZRck5qcExoby9hOTJiVlVWeDdXMkM3YjVmb3h1R3N3MjRrYVhu?=
 =?utf-8?B?UFJqbEVvNGtVdTd1RUxxR3hnSWpGbjZNMFlQSU5HMTFrU0JaV3ptUndTUC9O?=
 =?utf-8?B?YnBKbHIwZldRZERFMUlGSk1Od1hBSVdZS21YNTN3RDVlTHM2NmZqOGlUNXUx?=
 =?utf-8?B?L0M0T2ZaelhDYXZDNDNQS0RmU3NhV0IyVExJUWtYU1dDek1JNHdmbElycVM1?=
 =?utf-8?B?c3M1UVhWMHE0VklZS0YzWkdOVXZNeGlMQXdRdEJXMElJaFM2aEhYaGtwOERV?=
 =?utf-8?Q?ac9kV4Zij/bUxStjtNdBTfmvV?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 575c7182-3450-43cc-a2d4-08de383b8539
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2025 22:29:01.0717 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YNW3KM7uMzFbbgOrHSjO7BvC8tbCxd5us9k9mtQ9Q9coxVErAAYMzqFetQXtypv1zdty9FFXK+vonUU48tjqug==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6681
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765406177; x=1796942177;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hsH2lN0B7co3UiflyUhcBHX0Hr5sX7FePjW2gZBf4U8=;
 b=ZFpA1Ovz1x2STO4ZwTKeYFv5fqPf5fdcv69dfAQSLJHW6blST6ZIEblS
 7Vlio5NrZzEeGt/8sCDRmPrwboJ1Q2yCgMSwBDvwG9CqvEo1PrbnZSAri
 kw65zz+u4UOWbRVQSp+3opRBErG1AK2urgPib9uDBKFTVxqtjownVUCGF
 p2V6MLYixwnyVB1Q4QTtPKFbr1iEUuQQ/twmSMeCOUOGfLGMXLgHEQLOK
 ZkHP/OO1a7CnHTgcg2uPFH5VhmTiAMpQRUEaTQ/YPc/bBiVRl7l/DtGll
 qgYnMwgH8lnIUopUGcnOkclO0g472STKRWS/M+lPTXfJND4AgnRZiCqVp
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZFpA1Ovz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 5/5] idpf: fix error
 handling in the init_task on load
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYgT2YNCj4gQ2hp
dHRpbSwgTWFkaHUNCj4gU2VudDogTW9uZGF5LCBEZWNlbWJlciAxLCAyMDI1IDE6NDQgUE0NCj4g
VG86IFRhbnRpbG92LCBFbWlsIFMgPGVtaWwucy50YW50aWxvdkBpbnRlbC5jb20+OyBpbnRlbC13
aXJlZC0NCj4gbGFuQGxpc3RzLm9zdW9zbC5vcmcNCj4gQ2M6IG5ldGRldkB2Z2VyLmtlcm5lbC5v
cmc7IExva3Rpb25vdiwgQWxla3NhbmRyDQo+IDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNv
bT47IEtpdHN6ZWwsIFByemVteXNsYXcNCj4gPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+
OyBOZ3V5ZW4sIEFudGhvbnkgTA0KPiA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBhbmRy
ZXcrbmV0ZGV2QGx1bm4uY2g7DQo+IGRhdmVtQGRhdmVtbG9mdC5uZXQ7IGVkdW1hemV0QGdvb2ds
ZS5jb207IGt1YmFAa2VybmVsLm9yZzsNCj4gcGFiZW5pQHJlZGhhdC5jb207IGRlY290QGdvb2ds
ZS5jb207IHdpbGxlbWJAZ29vZ2xlLmNvbTsgSGF5LCBKb3NodWENCj4gQSA8am9zaHVhLmEuaGF5
QGludGVsLmNvbT47IExvYmFraW4sIEFsZWtzYW5kZXINCj4gPGFsZWtzYW5kZXIubG9iYWtpbkBp
bnRlbC5jb20+OyBaYXJlbWJhLCBMYXJ5c2ENCj4gPGxhcnlzYS56YXJlbWJhQGludGVsLmNvbT47
IGlhbXZpdmVra3VtYXJAZ29vZ2xlLmNvbQ0KPiBTdWJqZWN0OiBSZTogW0ludGVsLXdpcmVkLWxh
bl0gW1BBVENIIGl3bC1uZXQgdjIgNS81XSBpZHBmOiBmaXggZXJyb3IgaGFuZGxpbmcgaW4NCj4g
dGhlIGluaXRfdGFzayBvbiBsb2FkDQo+IA0KPiANCj4gDQo+IE9uIDExLzIwLzIwMjUgNDoxMiBQ
TSwgVGFudGlsb3YsIEVtaWwgUyB3cm90ZToNCj4gPiBJZiB0aGUgaW5pdF90YXNrIGZhaWxzIGR1
cmluZyBhIGRyaXZlciBsb2FkLCB3ZSBlbmQgdXAgd2l0aG91dCB2cG9ydHMNCj4gPiBhbmQgbmV0
ZGV2cywgZWZmZWN0aXZlbHkgZmFpbGluZyB0aGUgZW50aXJlIHByb2Nlc3MuIEluIHRoYXQgc3Rh
dGUgYQ0KPiA+IHN1YnNlcXVlbnQgcmVzZXQgd2lsbCByZXN1bHQgaW4gYSBjcmFzaCBhcyB0aGUg
c2VydmljZSB0YXNrIGF0dGVtcHRzDQo+ID4gdG8gYWNjZXNzIHVuaW5pdGlhbGl6ZWQgcmVzb3Vy
Y2VzLiBGb2xsb3dpbmcgdHJhY2UgaXMgZnJvbSBhbiBlcnJvciBpbg0KPiA+IHRoZSBpbml0X3Rh
c2sgd2hlcmUgdGhlIENSRUFURV9WUE9SVCAob3AgNTAxKSBpcyByZWplY3RlZCBieSB0aGUgRlc6
DQo+ID4NCj4gPiBbNDA5MjIuNzYzMTM2XSBpZHBmIDAwMDA6ODM6MDAuMDogRGV2aWNlIEhXIFJl
c2V0IGluaXRpYXRlZA0KPiA+IFs0MDkyNC40NDk3OTddIGlkcGYgMDAwMDo4MzowMC4wOiBUcmFu
c2FjdGlvbiBmYWlsZWQgKG9wIDUwMSkNCj4gPiBbNDA5NTguMTQ4MTkwXSBpZHBmIDAwMDA6ODM6
MDAuMDogSFcgcmVzZXQgZGV0ZWN0ZWQgWzQwOTU4LjE2MTIwMl0NCj4gPiBCVUc6IGtlcm5lbCBO
VUxMIHBvaW50ZXIgZGVyZWZlcmVuY2UsIGFkZHJlc3M6IDAwMDAwMDAwMDAwMDAwYTggLi4uDQo+
ID4gWzQwOTU4LjE2ODA5NF0gV29ya3F1ZXVlOiBpZHBmLTAwMDA6ODM6MDAuMC12Y19ldmVudA0K
PiA+IGlkcGZfdmNfZXZlbnRfdGFzayBbaWRwZl0gWzQwOTU4LjE2ODg2NV0gUklQOg0KPiA+IDAw
MTA6aWRwZl92Y19ldmVudF90YXNrKzB4OWIvMHgzNTAgW2lkcGZdIC4uLg0KPiA+IFs0MDk1OC4x
Nzc5MzJdIENhbGwgVHJhY2U6DQo+ID4gWzQwOTU4LjE3ODQ5MV0gIDxUQVNLPg0KPiA+IFs0MDk1
OC4xNzkwNDBdICBwcm9jZXNzX29uZV93b3JrKzB4MjI2LzB4NmQwIFs0MDk1OC4xNzk2MDldDQo+
ID4gd29ya2VyX3RocmVhZCsweDE5ZS8weDM0MCBbNDA5NTguMTgwMTU4XSAgPw0KPiA+IF9fcGZ4
X3dvcmtlcl90aHJlYWQrMHgxMC8weDEwIFs0MDk1OC4xODA3MDJdICBrdGhyZWFkKzB4MTBmLzB4
MjUwDQo+ID4gWzQwOTU4LjE4MTIzOF0gID8gX19wZnhfa3RocmVhZCsweDEwLzB4MTAgWzQwOTU4
LjE4MTc3NF0NCj4gPiByZXRfZnJvbV9mb3JrKzB4MjUxLzB4MmIwIFs0MDk1OC4xODIzMDddICA/
IF9fcGZ4X2t0aHJlYWQrMHgxMC8weDEwDQo+ID4gWzQwOTU4LjE4MjgzNF0gIHJldF9mcm9tX2Zv
cmtfYXNtKzB4MWEvMHgzMCBbNDA5NTguMTgzMzcwXSAgPC9UQVNLPg0KPiA+DQo+ID4gRml4IHRo
ZSBlcnJvciBoYW5kbGluZyBpbiB0aGUgaW5pdF90YXNrIHRvIG1ha2Ugc3VyZSB0aGUgc2Vydmlj
ZSBhbmQNCj4gPiBtYWlsYm94IHRhc2tzIGFyZSBkaXNhYmxlZCBpZiB0aGUgZXJyb3IgaGFwcGVu
cyBkdXJpbmcgbG9hZC4gVGhlc2UgYXJlDQo+ID4gc3RhcnRlZCBpbiBpZHBmX3ZjX2NvcmVfaW5p
dCgpLCB3aGljaCBzcGF3bnMgdGhlIGluaXRfdGFzayBhbmQgaGFzIG5vDQo+ID4gd2F5IG9mIGtu
b3dpbmcgaWYgaXQgZmFpbGVkLiBJZiB0aGUgZXJyb3IgaGFwcGVucyBvbiByZXNldCwgZm9sbG93
aW5nDQo+ID4gc3VjY2Vzc2Z1bCBkcml2ZXIgbG9hZCwgdGhlIHRhc2tzIGNhbiBzdGlsbCBydW4s
IGFzIHRoYXQgd2lsbCBhbGxvdw0KPiA+IHRoZSBuZXRkZXZzIHRvIGF0dGVtcHQgcmVjb3Zlcnkg
dGhyb3VnaCBhbm90aGVyIHJlc2V0LiBTdG9wIHRoZSBQVFANCj4gPiBjYWxsYmFja3MgZWl0aGVy
IHdheSBhcyB0aG9zZSB3aWxsIGJlIHJlc3RhcnRlZCBieSB0aGUgY2FsbCB0bw0KPiA+IGlkcGZf
dmNfY29yZV9pbml0KCkgZHVyaW5nIGEgc3VjY2Vzc2Z1bCByZXNldC4NCj4gPg0KPiA+IEZpeGVz
OiAwZmU0NTQ2N2ExMDQgKCJpZHBmOiBhZGQgY3JlYXRlIHZwb3J0IGFuZCBuZXRkZXYNCj4gPiBj
b25maWd1cmF0aW9uIikNCj4gPiBSZXBvcnRlZC1ieTogVml2ZWsgS3VtYXIgPGlhbXZpdmVra3Vt
YXJAZ29vZ2xlLmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBFbWlsIFRhbnRpbG92IDxlbWlsLnMu
dGFudGlsb3ZAaW50ZWwuY29tPg0KPiANCj4gUmV2aWV3ZWQtYnk6IE1hZGh1IENoaXR0aW0gPG1h
ZGh1LmNoaXR0aW1AaW50ZWwuY29tPg0KPiANCj4gPiAtLS0NCg0KVGVzdGVkLWJ5OiBTYW11ZWwg
U2FsaW4gPFNhbXVlbC5zYWxpbkBpbnRlbC5jb20+DQo=
