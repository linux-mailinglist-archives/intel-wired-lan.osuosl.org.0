Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 39350B0E77E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Jul 2025 02:16:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AB40980AEE;
	Wed, 23 Jul 2025 00:16:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TU03tzqf3VGM; Wed, 23 Jul 2025 00:16:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 21B2780AEF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753229782;
	bh=ARWucOfJYOiq2uiNHOMHwpP4u5QZs+pgw1VfF/Vs19M=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=obcwSmuTl5s76x/wvHzApZ5F7YyJwBXlkthO+Y9OVTPFuEfHoPkuOAHSdZciONyWR
	 +liLzYY/3UGdDuZaSJZ3lBR/gqtGkoV8zZ1DUl7n2A8j3N5xxfvrzJksgy/K1UIj1w
	 tmUtjPO6ujzH7KHCg6RN4bFI9lkF88RMggG+8kDiC8FSDN/9hrSRCuPl40UiH/30ri
	 Wvpv1cqmRelS2A92n6siXyvfK2ouQBwhIij5eX7jCcNg9YjNaY8aCgaGjs7C21uLc+
	 dDn7Utcs+bYriQvSmdhAJJNDsZSENG7vrxC3lOI1Hp8RDLUHidyZlrhE7xvGKJzhW5
	 lg/9mWSUCgDTQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 21B2780AEF;
	Wed, 23 Jul 2025 00:16:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id E3171DA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 00:16:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D4C6160778
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 00:16:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZjKgJC8RVoxc for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Jul 2025 00:16:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 38CE1606C6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 38CE1606C6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 38CE1606C6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 00:16:20 +0000 (UTC)
X-CSE-ConnectionGUID: Lmy9IALKRdOPlupd7IjSeA==
X-CSE-MsgGUID: ME1W1i/0S1qHnHHmYKjKSA==
X-IronPort-AV: E=McAfee;i="6800,10657,11500"; a="55609710"
X-IronPort-AV: E=Sophos;i="6.16,333,1744095600"; 
 d="asc'?scan'208";a="55609710"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 17:16:20 -0700
X-CSE-ConnectionGUID: SJ35dICVRq+4Ib4ACmnlnA==
X-CSE-MsgGUID: gP3ggf0yRCyGq3vDS0D16A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,333,1744095600"; 
 d="asc'?scan'208";a="159033880"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 17:16:19 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 22 Jul 2025 17:16:19 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 22 Jul 2025 17:16:19 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.62)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 22 Jul 2025 17:16:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=E6W2QA3/5JM/gYgoYbgD6psXdSd9NbyA2fsNaFmipbuAGzZHo3sbd5b39hQV4FCFH2nD6ayJee1croYNJRTs2ZsCgci4VtTZU8T6C+RasC22eg4w0vJ2rAi9qWGyWh2iutycmqI2oGxFMBSqmtna4Hkr5ywauU90dmR10UV+3WCSMQlW9rINbvTAMPMqFbtC2wn+P0/0DHYMI5gXZXYo1AomKZ+P/Ws87gmzn3hDbUTfPA33P+bQTNzHKRreCekgHsAbOzxTFb/HmDLOsKNnKucnkH3dQicfCutf1o0P5c96wrMhg8sq782RVsakrMZHnl+t0z/K9TomfE2iuCsUFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ARWucOfJYOiq2uiNHOMHwpP4u5QZs+pgw1VfF/Vs19M=;
 b=xS078WM63/ix9e9iue2QNDNappvb0hT7oIKgB5C3Ukgxgc46pIeWnnWQtKVgYDDWmZEEYSvMZBnJjDXcc7KBwa3iBsVCXP8WscgJ/Mg6EL1QZ68JQAW2TaFQUB7NYlL8w46JBd0lHsBkdBVe9dtFlRfAf/NP8Qc9rXbyjRZ740d/ky96GO7mGEuFPCVcbr2hU3ELFUSYyrlyuutBMlPDnqZdm6PXnV1ExcUJOJv17ea2n2J9GclBdYGBsp1cBYOLeGeidSjrGtR68H6Ont2hC0dNJ4XG6inMX84207sbnp4KqtCaDDHkw9XtTPAyi277TZ/6prUoonRUm/t0gjVn3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MW3PR11MB4635.namprd11.prod.outlook.com (2603:10b6:303:2c::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.21; Wed, 23 Jul
 2025 00:16:16 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%5]) with mapi id 15.20.8943.029; Wed, 23 Jul 2025
 00:16:16 +0000
Message-ID: <edc45765-a739-4f0c-9975-699400202019@intel.com>
Date: Tue, 22 Jul 2025 17:16:15 -0700
User-Agent: Mozilla Thunderbird
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>
CC: Simon Horman <horms@kernel.org>, Anthony Nguyen
 <anthony.l.nguyen@intel.com>, Kunwu Chan <chentao@kylinos.cn>, Wang Haoran
 <haoranwangsec@gmail.com>, Amir Mohammad Jahangirzad
 <a.jahangirzad@gmail.com>
References: <20250722-jk-drop-debugfs-read-access-v1-1-27f13f08d406@intel.com>
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
In-Reply-To: <20250722-jk-drop-debugfs-read-access-v1-1-27f13f08d406@intel.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------3UIWPH6SW0eyMSPkp6V87RiX"
X-ClientProxiedBy: MW4PR04CA0096.namprd04.prod.outlook.com
 (2603:10b6:303:83::11) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|MW3PR11MB4635:EE_
X-MS-Office365-Filtering-Correlation-Id: 36b19675-8079-4b09-0273-08ddc97e23fc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OTRuUWN3blJTWmFhbGdwMTIzQTlXWjdzUXV3SHpHaWVGbXVqWHRJMEFaTjlj?=
 =?utf-8?B?QmR1NEgwRytoYk96K2EwR1RPdCtyMlNtb1hYdlIxNEN0cjA4ZnNia2IxTjNo?=
 =?utf-8?B?MXJUNVdjVkMvTDU3YTUxWFN2OXNUTzdUemtqbDl6YlJCZE5pMlQzeEVhUVFD?=
 =?utf-8?B?VG5paGwvNDBNTi94UUJUbnVVQXRjc3htTVZMbGM4aVFCNXp5NzB4U1Q0UHgr?=
 =?utf-8?B?R3NCSThRQ0NlMkczTFBvclhNTlErKzQrejBMUUhJbVZ0TFhoVkhTYjhVNFI2?=
 =?utf-8?B?Rmdxd25jSUNvZWhOMkpKVlBLSXo3bXBKazJ6azZ3ZTdaY293cC9IaG9kZlRG?=
 =?utf-8?B?dWxIRVg1aFBmdXVlcHcwVTFMVllKYU5laGdTNitxMnZvSVJZYnRsV2NidWVK?=
 =?utf-8?B?eWMzSHFWVjY4TnBDejJMbFh5bVFaeTNuTllzWkw5OVRualFDL3Z4RDFuWVdh?=
 =?utf-8?B?eHMzTUVVU0xOYk5xMVNDa0xpTjNXbUpTcll5Wk5ENlYxK1Q2SXVSam8xeWxx?=
 =?utf-8?B?WkJiV2ZGdXRCYmtNNXBtVkpPbW4wMjVHZkpoOG1XM2xPeTQ5eUhHTy9Qck9Q?=
 =?utf-8?B?WmZ1YzdOKzRPQ3NobmNlR0RxamMvWUNyTFpUZ3FEVjgwTnlXQ3VHZm9IZ0po?=
 =?utf-8?B?K2dhL3EyMEFRcG8rK2l1eVozcmV2VDFQMXBaL3NWWEtreVMrU2s2NWo5K2dr?=
 =?utf-8?B?cEl2eFdFNjRPMldJMldoK2NNQkE3bW5UcVFyUUZqWEFzY1ZXTkFmVFhaT0hE?=
 =?utf-8?B?UVQxTHN2YTlBTGVpUzdBemlFVmFZQmltMlpzMXFqMWV3VE1ZMEdTNGRtU1l2?=
 =?utf-8?B?VjlFb0JZZDE5RUE4OC9CbFlXeXkrVG5vdW1hU09zaTYyUFBJNVczVHk0VE8r?=
 =?utf-8?B?dEE2Z2NUUEJyU3RGMk5uWFVhV09iYjE4WFRvWThZaFhjMzhTL1RUWmU5Nm43?=
 =?utf-8?B?bXU3ZGplUmZXSjdLNXpQM2dDL0dXbVo5K3ZBS29TdXRuWUlOajBRZ0NqYTBT?=
 =?utf-8?B?bUgwK2Mrc0twY0dIbmlOYjhQV0NDR0R5Y2VyTFFoWU45S3dYUzgwNmJQUFM2?=
 =?utf-8?B?U0laOVozV3k0QzNvVnRxUERvWmtQblI3NTJQR3lYVVhLbDVUYUJHd0hwUERp?=
 =?utf-8?B?c2t6WnZOUVI0aThRTEpRR0NkSTJCMzNOVW1jYW1rbEtBcWcveTlweVVnRzBE?=
 =?utf-8?B?aFcxOXhPNVNrM29hSjA2L09LQ3lscXlHVGFiYXEwT0dWSzBTdjd6VVl3NWMz?=
 =?utf-8?B?a2pHcWJ3dFE1Wjd2LzBuY0llV2FZWm83TVdmS0FvQTBZT3p0Sy9lcDVYZlFH?=
 =?utf-8?B?K2Yrd1N1QklaM1l6RWlhdzgxNWNmazNuR2pTcUxwWDFlUG9IcnMwY1NLK04z?=
 =?utf-8?B?WHZ3U3hEZ1JWWGpndEJSSUFvWWprNndYOHd1dTM4Qy9yN2grRnE1N0kzTGNN?=
 =?utf-8?B?QkVaSmsxZkRYZmhtS2F2L28zOFYrMXZhRGVUR2o4M0F6bHdRcktzZU1ONzMy?=
 =?utf-8?B?NVppSGtVWUVNV0xkWktKYTBuOXpmRE94Z1ltek96V0RxSDFFa0J2OERIMm1N?=
 =?utf-8?B?aktTUldUSTEwaGRIQ0syN0d6TjdsV3BOaXpPSnRRclMzOGgzdkoySmREaXh6?=
 =?utf-8?B?dTZJeVY2NUVZcHFqekRvaXBsZ1dnOVFMSC9iejcrVHg4NUgwSy9IWWxFVC9k?=
 =?utf-8?B?ZlJBYkFaTTNyTXN6K3hSVFVXNUZDYmMxUjFGMHp2UFJkc2lUclVrcG0xODV6?=
 =?utf-8?B?SE0vcTMxdktOcVA5cndSM1hQU2M4S093dUQ3czhJZ2VOaURUVjk4OThnQVJY?=
 =?utf-8?B?eEtobWY0QmtsWmZ1c0tUc2V4U3I1dVdTcUliL0YzeVZkUnRPYzN3NkNiSG4x?=
 =?utf-8?B?bW9pZDdRTzdHeEY0cllrdStSVHY3dG9LUUdPd3YyaWFyZ3hlUVlHdnh4OGF5?=
 =?utf-8?Q?xRfnJ9SCxUs=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ays5bHZUOE51cjVCdXRaOEZJYmhNUHNuR0RNUWppcFBJWXJtQUdTZU41Wlk1?=
 =?utf-8?B?SUFCdTR5bGJmbjBKRFFLdm1WZmcwQk9vcmVxUTkwcmk1WlM1VW1JR1dySFJn?=
 =?utf-8?B?TnFpTHhKNGUzVUUwdkFGMlFvUnJ1d0tHdkE4UlRoZStabEgrem4rZitVNVlo?=
 =?utf-8?B?TEJVMXJ0eVRKbk83TFU3NVR4Zk5vSmZIM1JZaEczdUc3WTByMUpDSnBobEJy?=
 =?utf-8?B?bFIrTDdEcUhTd012OTU3a1VOQ3ZBTEtUMWs4SE5RQnUyWlBQUmtNOVVhbkps?=
 =?utf-8?B?eFhRMFRvOWdiblZId2xiaEVXTHl1OGxYR1dmZWNlNmpiazZzZkY0SVYyU01Q?=
 =?utf-8?B?Ym9qbEY5dEk2UU4vNmdnV2dVTm9IazRCeHdCYVorNHZ4VDV1ZmlIWW5rdGdD?=
 =?utf-8?B?d3VyOVZHZGg0b3NNR1hnbks5Z0F0WHcxMEVZTEVHRnZ0M1RMZXF5RGRPZVYv?=
 =?utf-8?B?cVduVENCMW1MYXFlZWpvRUU2V1QxdEhHREFJMnJVK2ZERU9JTFlMdUpXVENj?=
 =?utf-8?B?ME44UVFQUHJRRitZem5EM0d0U1V0bmhoYVNWMWtMN0FJNnlab2c2U2NmMjZi?=
 =?utf-8?B?NFlIbHVLSTIxdkxjdk1uS0k2cGJlajF0YW1wMEw2SzZwZ2VUazIwU3BBQVVO?=
 =?utf-8?B?NkVzZnllVG5ES251L2swbm5panhmSVkxSUtpWTlDNURNZnNLWGU5N2hUYVJC?=
 =?utf-8?B?SE5zM2g3bDltNWgvTGhTM2VPQUwvWENoVmp2SU5Md3krY1ZiMDVRS3RqOXVq?=
 =?utf-8?B?UGhGenhoSWFJRHJjSEN0TTdpYlRNUW9sSjY0SjZXUXZYbHErVWVZQjBGNGpK?=
 =?utf-8?B?QjhOMTIyMTEzRXdUY2Z2Yks1aWVlUllFWnQ1eUpLQUFsTVpYM2JrWXMzSlpD?=
 =?utf-8?B?V1A4K2FVUmg2ZjZSdjFIMjJwSFdVLy9GWnpnbG1UYXAzS0FoUDJVOTVvS2FL?=
 =?utf-8?B?NVJQT2J5TmRDRlBCdWRpYzRZYTRmdjgwbmFQUEhtbW13ekxYZVEwdDVtYk9H?=
 =?utf-8?B?Y0w1QWxDcUU1aHMzMTNEU3ZyTjVQcTErQTJNdnRPeHJUaTJDa2VxVTcvM0Mv?=
 =?utf-8?B?WkZ2elFuK0tGREQ4akltYVFORENQb0NUS2pSV284MHRmZzVtTzJVNkFiL1p5?=
 =?utf-8?B?ZEVJS01YOHl6bjFwQUVISS9pWFdyb05UZFRhTFJYZ202UHB4VkNIWTBPTVFD?=
 =?utf-8?B?Tk1RdHB5RkVKcjRpcTJTWTRFeXdOYlRFaTh1VDlQSEJtdVhJSDdmdWRQQmpq?=
 =?utf-8?B?OWJac08zSndtNVNyMDJmOUh1QmpjejRud2xNR0w2Zm9WZlVXdG5vb28xdzFE?=
 =?utf-8?B?ZmZDQ25uUmxXSnZLOFQrTkNDQklQUjNnakluUFMrWlRDUm9Qa2RNSFJ2Vkwy?=
 =?utf-8?B?SmgydkVvT0xIbW5UV0xvak1aWVlZS1ZrT2xRVHZVeUFzakZaZkRFRVlrSWdt?=
 =?utf-8?B?UVZhTzZkelpiY0pDU3lHb1F1ZENlL21kOEsyQTVCbmtyVE1pSFpKMGhOU25Q?=
 =?utf-8?B?dnJqMzhIS0d3aytadWRicnRDdy9Pd3pBV3dXaUd3Y3B3cEkweDVWRG85dHBr?=
 =?utf-8?B?czcxSjFERVBuVE1tNy8rOE15Ymg1blBJQXl0NTJnQ09rSS9IVmxKWUZnUWlL?=
 =?utf-8?B?Y3RxalN5UXR0YjNHMXpwaUErV1pMdUN3cnduYkRHaldpcjh2Y2crdTgxRXc5?=
 =?utf-8?B?QWNHNFF4WXBOMmFEQ0RpaGpxcnozN3F4NUJwcDNyZi8zZFNRem1UYjV3dGlG?=
 =?utf-8?B?V3dvazJBMjNUVGFMTHdreDFTNXlOTTlGUFRZcVduL2JUZ2QvNllUb3FHN3M4?=
 =?utf-8?B?OE9RS0VpSFlERDVIcFFhQnFaSUs4b3lrZmQyTVQvbjNQNDJHZFdaMGQwK25k?=
 =?utf-8?B?WXUyZXJORnRYYkEvWWpISW1OMklyV3kyNUdUSFVtUDBwemgzZkVKT3E0T3Bo?=
 =?utf-8?B?OXF1Z1hmRHdyY25VNVBOM2JDWm04R2VEbjl4QU1iaWhiZUgvRmRPM244QVVt?=
 =?utf-8?B?bEFNdUlLSFh3eVVKUGR6cXBuVExkWFNBdkI1VzBIL1FRWHVjM0VQc2FrT3Ba?=
 =?utf-8?B?bExmSEs0cWRDeEVLa0pydXlscTFUMTB6TTZPQU5SdTZnZlhYU3JGbGgyVmJ1?=
 =?utf-8?B?V2ZlQWcrR0phdUJteFJnaWhzeXlWaHJMUktPV3BFZHNubGl0Z0EydlBabFpQ?=
 =?utf-8?B?b3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 36b19675-8079-4b09-0273-08ddc97e23fc
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jul 2025 00:16:16.5602 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7xNqNEJUx73XsOV16wwRZNCgBlTq/YRH4IJWOYUaNprqVb0ok4dtJNEWlS/r3FfdtIJlY+Y628pf01ipRMQ/+aJmLpWi4os/5jw2FnCVv8k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4635
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753229780; x=1784765780;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=ARWucOfJYOiq2uiNHOMHwpP4u5QZs+pgw1VfF/Vs19M=;
 b=KV3F4/MGTdN06s2Vem0HodeJD1CCh3iVypD9nkyGMxwl2N1RFc6TAjNX
 9Y0tIdUW9qJmXLlOB2jbjnsgJosPaXaGGQctqmoNHKDghXo8J/JdP+M5U
 NdRaM8uhTvHNt6oZR8Yl7jMbdHeNpnjI4tebFfQLs9KtYUei9Z/M0Ayh0
 LAgnguS3CAp13EofHazCsk1pbB1D/DgHH6CXPqRRb9sh+BWmm1kAEWECw
 vqr1TlYYoen/Gu5gHr2LL4/HlNrEVmM+hY7mFlVxPlvmYodWZt/qeil0Q
 FI2BKDQgZjEmxCzMZrmCxMCmK42f6Q5QnV+stKZYejhvK+o0N1Y1XzTrz
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KV3F4/MG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] i40e: remove read access to debugfs
 files
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

--------------3UIWPH6SW0eyMSPkp6V87RiX
Content-Type: multipart/mixed; boundary="------------3e2Mhl31Bf0GBCtBdrLOkfBA";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, netdev@vger.kernel.org
Cc: Simon Horman <horms@kernel.org>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>, Kunwu Chan
 <chentao@kylinos.cn>, Wang Haoran <haoranwangsec@gmail.com>,
 Amir Mohammad Jahangirzad <a.jahangirzad@gmail.com>
Message-ID: <edc45765-a739-4f0c-9975-699400202019@intel.com>
Subject: Re: [PATCH] i40e: remove read access to debugfs files
References: <20250722-jk-drop-debugfs-read-access-v1-1-27f13f08d406@intel.com>
In-Reply-To: <20250722-jk-drop-debugfs-read-access-v1-1-27f13f08d406@intel.com>

--------------3e2Mhl31Bf0GBCtBdrLOkfBA
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

> [PATCH] i40e: remove read access to debugfs files

I meant to add 'iwl-net' here, apologies :(

--------------3e2Mhl31Bf0GBCtBdrLOkfBA--

--------------3UIWPH6SW0eyMSPkp6V87RiX
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaIApzwUDAAAAAAAKCRBqll0+bw8o6BKL
AQCNg+XNOEOcRatAO6dFnjYsqbAKbEn5Ro4cHXnKrIz38wEAuIv9cdR7tlbm5f4TlWys95HNqnWo
OAsfa603RkOc0w4=
=soh8
-----END PGP SIGNATURE-----

--------------3UIWPH6SW0eyMSPkp6V87RiX--
