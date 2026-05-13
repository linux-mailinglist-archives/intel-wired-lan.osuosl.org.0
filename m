Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id APD/N+qWBGqrLgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 May 2026 17:21:14 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AAE34535F88
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 May 2026 17:21:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 36203415E9;
	Wed, 13 May 2026 15:21:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U60m3wcidA3e; Wed, 13 May 2026 15:21:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A212E415E5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778685670;
	bh=EaKSVeapt2G99z6jD2sNqmkc6plHYXp33HkN8X9Onwg=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xnkAXEAeOaBa9Io3D//gMAXUmt5oZHfucBtnT7tBSPOTiEktiglr8IVHW1VM8e9/0
	 yKFmqNYtNnJ7IjTfzo80y+OEt1eZmJhwJxlPa/HFFqTYJcVukZ12Nk70NimL6i5FuB
	 OSLA4D0BiDmUzm/vveqYNGEVAjH/+rhAogSFfsF48DWCdq26wWAANbI0oSfDxqfw4S
	 Qpofc5Ny/FckyyceWWIclF3cd+2qv6nBmJaTlTXtT8Mdb4ezIgJOf2PupIs2BGX5Gf
	 R+2LgiregElk7JlYPV0nlGfTmALlqZNv/KIoEi8bqCjAAZG0L6ZzdhydY0VKaBUK4z
	 UAK5pd+vk2ihA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A212E415E5;
	Wed, 13 May 2026 15:21:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id AF7E7223
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 May 2026 15:21:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8A6D084067
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 May 2026 15:21:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rBvx9nt2NHc3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 May 2026 15:21:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CF44084065
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CF44084065
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CF44084065
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 May 2026 15:21:08 +0000 (UTC)
X-CSE-ConnectionGUID: O5zPa76dSfiuKmO/gr+xog==
X-CSE-MsgGUID: Vp06sw2MRnuuxrG0GVqTQA==
X-IronPort-AV: E=McAfee;i="6800,10657,11785"; a="79646091"
X-IronPort-AV: E=Sophos;i="6.23,232,1770624000"; d="scan'208";a="79646091"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 08:21:07 -0700
X-CSE-ConnectionGUID: c/RBilK1QW6CR5rjjBXJJQ==
X-CSE-MsgGUID: 7KaNV+rYR1iixB5uV/EX2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,232,1770624000"; d="scan'208";a="243092618"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 08:21:07 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 13 May 2026 08:21:07 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 13 May 2026 08:21:07 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.10) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 13 May 2026 08:21:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ltCoX7QqSnLNmSKMPIP+tjTe5Sl3Hz23Cf9HFnIY5Lx6i+ww7TbQYXsJDkW5F59mW9b8OslaWbO5Br8bfXSOJeetRriHt4ygjeHnATYnAsk3ivw/B34oWJU56ZNCIQp2A4qQsqhoats7imDRqn0xe9NgnYcnwf/5qqk6IHRvP5a/uuaIRmJfDjSgNvMW02KiBTd3j2JVZGHu+YdJHb5W+ZI9CrLVJLJGqEifD/Ol4FHKb87JQGylc/xviOsfgZgrDTiz0FpbTRpJaoUy3PKo6YcfzMbyKP499obuv2pFoOWvz1xr+QKCkF6cg1qC6ksks1WxUdwFtDuIj/1ShqV9/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EaKSVeapt2G99z6jD2sNqmkc6plHYXp33HkN8X9Onwg=;
 b=lqPGC0iRsfntK0bymk/hlOOr5P2FMljwiX8aFRr1WOF00K63J/cdW5qxbpBi7djmzSFFyfW915/4JzNdosiKAEsVsQ2BgIvnacm4fNkCAptpBr3aTftBmkyMnN+dE/4ED/H5M10t2sdjFnajlSlsMByPBby6bzAACaGT2CZkQs2o5FOJdka5CHXfjqyyTunzrizgjSpu0SJkK+qgtNL2/edpOYpoZgnhHyzQTDPIXQQjCdHN9R3ivTBZkcbV+V4lJYYeToR1ZZbsnz/v1WCvmr27RnzlKIEeJlcXbgfwMEb9abmYEigY83ZDeC3byBJl16B/qx618bX4j20ZWw/5cg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by MW5PR11MB5858.namprd11.prod.outlook.com (2603:10b6:303:193::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.22; Wed, 13 May
 2026 15:21:00 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::6aa:411d:4bfa:619c]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::6aa:411d:4bfa:619c%5]) with mapi id 15.20.9913.009; Wed, 13 May 2026
 15:21:00 +0000
Message-ID: <9c49ecf7-1d35-4b03-8a71-9d724562594d@intel.com>
Date: Wed, 13 May 2026 17:18:50 +0200
User-Agent: Mozilla Thunderbird
To: Lorenz Brun <lorenz@monogon.tech>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann
 <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>, "John
 Fastabend" <john.fastabend@gmail.com>, Stanislav Fomichev <sdf@fomichev.me>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>, <stable@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <bpf@vger.kernel.org>
References: <20260512152658.2818805-1-lorenz@monogon.tech>
Content-Language: en-US
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <20260512152658.2818805-1-lorenz@monogon.tech>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DUZPR01CA0262.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b9::24) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|MW5PR11MB5858:EE_
X-MS-Office365-Filtering-Correlation-Id: 5a510027-062d-445b-d4b8-08deb1033cd3
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|22082099003|56012099003|18002099003|11063799003;
X-Microsoft-Antispam-Message-Info: UhIW6Xu3Z2rFhHOUJ5f7PyeyJbhH+V1w1gmEtxWRnSQnS7X6hdDzgfLIGN1MpuXqbtKFprAo25xBaAG8gl3cNyQhsTdS7mSmLSK5nGFjvtwXpx10c58tlyMb8YGnlEuPqaPWQmb45Id3y8xbL4MHI2zku3u9FafpEsbeXbrsV4VFtyBz/FKCXbWTHRLebKGVo5ggSnHu+yPDNzDBuo6NT28qRITVY7cjGj9SEaiZkGyN3KAH5c1+nowzzLI5Dha1E5/HedXi8GlUkhseE5NiUHs0BWEI4lFipfQyejCZc5srmRb69IjilGeu5zR0VcVqIaEM7ZJRku6PIJXynMq2EJutF7jwkfthLk/uaa0QU+e4IJ2G/EXvxBcxMkgZLreOxQxuc+SitSp6lTHhXsK6p+SJZjmkc6XCaqXAhesqOm4CNalCI3buHRWImPL9fadXwk7souQ9rX2bYHJyCA5ygfQkL3S1tdvKrEAgBTywj4LZwiLgTssDdb7JbpNk/jgqmdMVsRLwEnSJOvjEUX65wuMLX0hTuIOXxorM5IQz4BmGQXOAsp+phpQqDVEgt3GtjUaDULTOA+Cu/w3udN+i0sqkraUCJgurzqSYNvfo0ZkUz6wIsBxo/1pwfvk5YI/p4fTyZzdl7mSvvCMqCQhWms+NPnSRzEs8zcdYMdeqQEfFrmIhS5ROtc1SganLm9oB
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(22082099003)(56012099003)(18002099003)(11063799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QzVYZG5oaURuQys3OUoyZG1ZWFFVRE1PblJwNXo1YkNuSkpXaitIdU81Rnkx?=
 =?utf-8?B?cW5oZk5ibHJKMGhGMFpTdCtTdllEajRsazFxVUpxOGhWcm1zTWNpYVU2KzNU?=
 =?utf-8?B?VGh1RUlQZG1hUVhkcmVpQ1dqZUJrWGJzbkJwdkZYdVVBb1pxcVlVd3RjRk4x?=
 =?utf-8?B?N3pBRTFiODNVZ2I3OW1nZHRubHB4MWlYdUExNmFmSkhJUzEwQXVZdHdHSTlE?=
 =?utf-8?B?aS9CVTJ0WGtQTmFrSXE1R3NLVnhIZDB6TjJDSG5qbncxajdDa2xuUUtybnBa?=
 =?utf-8?B?cytzK01oOWZTdm9IT2hXSFArbFNFQnlnZmtJR1ZBUHduTFlNeXBvUkc0R0RE?=
 =?utf-8?B?QVozKzI3Q2k1STJZbU9XcG5GSnVyVUhSVkV0c2xxVGhGc1k3dSs3a0pOU3Zy?=
 =?utf-8?B?bDFqdXZJK2xVSHc0OEZYZ0tZd3MrK1dsOHp5OGxWcnFpVFQxbkgxS3VUWTI5?=
 =?utf-8?B?MmJBRXdtalpQcEJMVS9RM1pTTUtJdEZFZVVIb1R0ZWZnbnJ4cTA2NkltZHFw?=
 =?utf-8?B?RE0ya1dUcDFsZFR5VEw0blB1TitrR3lLWjBzay8yV2Q3emhMNE1wc3N1YVcx?=
 =?utf-8?B?NU42SURXRTJldTV3eTFFN0I0bzZla3JuR1N5VFhDbEM5SVo0ZSswaDJPOHNP?=
 =?utf-8?B?QjM0aEFodHIySG56TGpoR3JYQkVzNGJGTGlOQ3BicnBES2d5c1g4eXA2RmxD?=
 =?utf-8?B?QVZVYjd3SDlnQzRWd2lHSVZaNTUzcFNXVEJGUm90cHV1NW84YTUrSkpqaWsw?=
 =?utf-8?B?VXRXS3ZvWFJ3Rlg5K0ZJQjB1VnNkR1hDN3VhN25Idyt4Vzl1SitUdkwrSzgw?=
 =?utf-8?B?NFVoeFNteWo3TmJyWVZwc3ZtNnBRYlZ0ZDlwVjA4R2V0Szl2M0F1M0hSbm45?=
 =?utf-8?B?MHBjdytQbVBsK3ladDgrY1dpRG0xaDZrVTBUbXJzWmxiZzJXU3N0MEprbzQ5?=
 =?utf-8?B?SnNzMWlBTjB1bHNkZXRHckhRWnpPdDdpNkx4bVdBWGM0aitLMTFzSU9tKzV1?=
 =?utf-8?B?TU1OanpxZjI1dHZFMlNQTWsyWExSY0psUnptZnc0YlM1Y3F0V09RYjV0b2or?=
 =?utf-8?B?YnZNTXlzT05GcS92VGs0QXhEaytHTG1RdFNYMzBXNnEvdW1LL01uUFRCWEg4?=
 =?utf-8?B?MEYwcTRrUXFrVzRWY2psLzJySkJPenhCNnBhY3hmeS8rdW9jVndKTFYwd0Fs?=
 =?utf-8?B?Yk5FSTdiaWQ3V0tWUktOSkF3SUVocXV2YVVEeVErd3piNU9kYk1Vd0lNWjhm?=
 =?utf-8?B?bXlpUWdFb1RwRFVjWmVuUHpvbTduak9oTFNQUkx6S1FkTWdZK2lCQ2cvWVA4?=
 =?utf-8?B?ZnZLMEpYRW5NVVdsUndtN1VFaldJSVJNb1F1K09kbG5iSldEZlN4bVJMcUUv?=
 =?utf-8?B?S25JaS9xRlhreEk0SU5vM0N5OFo5ejVLYWF3T0l5d05wVDdrZXdIczJiUWJ2?=
 =?utf-8?B?N0FjWTZxZGJ4M0tQaE4rUC9EdVBwNjkzNkJMTEN3eXp5aTd5eWYvWDdiZDQ4?=
 =?utf-8?B?aGpobEpQNEcrNm1vVmxFcXJ1T0NZUEQwbHhEQnl1RVBvTFdzaU4xUloxZVVl?=
 =?utf-8?B?S2JrenRQZFV0b09OT3NCZ09TNVNma1RBM2dSRU5STWExMTFrTU1ic3kyYytI?=
 =?utf-8?B?QVlCQ2Y3eW1MYW9TZ25nZkIxNTFHSnZTaElUZG50eUNwSkxBSFFEbzFEQStn?=
 =?utf-8?B?MGw3QUNzMTVVZ1F1TnFxWXAyN2dsVkpqMGVrM3ArR0liaFU1bktSQ1c4c1Js?=
 =?utf-8?B?OEx3cVZhSW1ESkpnWW0ydUwvaW92OE5WTFJjdWtqYjBHRit2M0djOU1Ba2Yy?=
 =?utf-8?B?NVJjdHlCL2laR3E4K2NSMkJ5dGxIRmVWMjJXZGNjd3U1NldQYS9RM0d5N1Ns?=
 =?utf-8?B?b3BpQnE2V3VXbGRwZ25Vd296Y2YwSmFGT1pLNndUQWIxWnUzYVNGSnZtSm92?=
 =?utf-8?B?c0pRbXd2NlAxUnNzSWRQdEtQS1ZJaDZjVnBod05KenZXbTFxbm1EMW9QSWlS?=
 =?utf-8?B?cEFPOFMrYlNnWVNEb1paVk5wSzNiTU1kdCtZY1RlZklSMzQ4STVKN0Y5OFZH?=
 =?utf-8?B?c0NRNGdnUXFTSE1CWkNiNmZwNkoyb2xTWW9CUldYc0hKZEFONi9ZbmhQeUVH?=
 =?utf-8?B?Nk9mdnQvSHAvTGsvUzVqbFRmR1VSbWxra2EyYWFJVE9yTzdnQzhqaVduQnRP?=
 =?utf-8?B?dGdtTFlPbnJtaThXYkxnc25yZis3cnV2MGdEVUNENVVndCt0YllMM1l4T1Ur?=
 =?utf-8?B?YVdnMDVwakV4NE5xMzJFNmh6NHN3UVNURjFqU2pBVmV1eGlwRkFKNmJWN252?=
 =?utf-8?B?REJodk5kYmQyd01YVXIvOWIxc2ZqOFoweXJMblcrQldrRVJoTjUybHQxNzhw?=
 =?utf-8?Q?g67aB+rW0Y+R4fok=3D?=
X-Exchange-RoutingPolicyChecked: OWYo5CnPlU/rTvnDNpuce4CNKnkVXZ6BvEU2rlKdT/Pl6vjLCHjo6wsO+W6Xa6ZiTLW1udLWFVmI6Uo/a/yEAdCaZZGp+u32YD0LSxe6D3mjjoXLOEbn2NY2/SEXmPjVeZhvs7cg/Oy4RU2LcpSmIETagR+umnT2qQ0/YYvyqyukqz6qMs/IFjAHMwh26+bWRJlrhsauBmxtTNffZf84VeVjWLKk1byCKVn4g1c9BwPunt+RAuN0XilbCoTumwvYU0l+j6T2pbIhWPupXt3+GaH3WOfCb5QZH1sFQUudb/Pf7LcAKwCczEeSGSc9HvkhrTax+MeKuDociHuGD87F9A==
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a510027-062d-445b-d4b8-08deb1033cd3
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 May 2026 15:20:59.9332 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SmHrt9BK81w7+g2ZE5jgvBUWlB7mCDwz//fjEDJZnY9oAd5qwVL/v/PVIVEww3ePffx2CQhQDxIAGUc6NNKj6YY2itkfgoqBiqBetbo76hs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5858
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778685669; x=1810221669;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=48L9JqtQMpYSdQz/+ejKFFjwoEVucdHmk/cqK6xe3i4=;
 b=a2/cMgjSGSYpMeG+BN9xQ04+1EzAzrSL86F+kA5AdqOzEmusbbEFENiI
 yyTyaUZ5l0Y/Rv9DUvdJ4xIh2NDPw0iipTemOsOSK4jQzuaYDtL/m6Y5o
 WhxP0TM9rbk3ckuHdK+9N2v8UE+yceCOYYSjANLE8J64Qcd1pHeg3YCZL
 rfQo+kfLYq9oXWZBIgPkFX7jat4hhfkcW4Yj6Opyui65OPkHFXiVQZOJI
 xV9Jmqh2yYI+X09jxJ4lNybV6YzPcaZsMJTsFLX5tudIml/ZAa+BrugoK
 0Jf4JBNlgtu0F7rwxC/Ir/4Zfql6P3RKzVWu34Yif1rsI9w5JaP7PymKp
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=a2/cMgjS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] xsk: switch xdp_build_skb_from_zc()
 to napi_alloc_skb()
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
X-Rspamd-Queue-Id: AAE34535F88
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:lorenz@monogon.tech,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:maciej.fijalkowski@intel.com,m:stable@vger.kernel.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:bpf@vger.kernel.org,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[aleksander.lobakin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksander.lobakin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,iogearbox.net,gmail.com,fomichev.me,vger.kernel.org,lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,osuosl.org:dkim]
X-Rspamd-Action: no action

From: Lorenz Brun <lorenz@monogon.tech>
Date: Tue, 12 May 2026 17:26:56 +0200

> xdp_build_skb_from_zc() allocated xdp->frame_sz bytes from the per-cpu
> system_page_pool and built the skb head with napi_build_skb(). The
> latter places skb_shared_info at the tail of the buffer, but the
> helper sized the allocation as if the whole frame_sz were usable for
> data. Whenever the packet plus reserved headroom approached frame_sz,
> the head memcpy overran shinfo with packet content, corrupting
> ->flags (SKBFL_ZEROCOPY_ENABLE) and ->nr_frags, which then drove
> skb_copy_ubufs() off the end of frags[] on the RX path:
> 
>   UBSAN: array-index-out-of-bounds in include/linux/skbuff.h:2541
>   index 113 is out of range for type 'skb_frag_t [17]'
>    skb_copy_ubufs+0x7da/0x960
>    ip_local_deliver_finish+0xcd/0x110
>    ice_napi_poll+0xe4/0x2a0 [ice]
> 
> The overrun bytes come from the packet, so an on-wire sender can
> corrupt kernel memory remotely whenever the XDP program returns
> XDP_PASS.
> 
> Rather than patch the sizing math, switch to the pattern used by other
> in-tree AF_XDP zero-copy drivers like mlx5 and i40e which use
> napi_alloc_skb() sized to the actual packet plus skb_put_data().
> This sizes the head exactly for the data being copied, drops the
> system_page_pool local_lock from this path, and removes the
> structural mismatch between frame_sz and the skb head buffer. Frags
> are allocated with alloc_page() per frag, matching the other drivers.

I used napi_build_skb() + system page_pool to enable PP recycling
improving XSk XDP_PASS performance a lot.
Are you sure there's no other way to approach this?

napi_alloc_skb() used in other drivers works, but it's sorta old
approach which is way slower.

System page_pools always allocate a full page, why can it create an skb
prone to overruns?

> 
> Fixes: 560d958c6c68 ("xsk: add generic XSk &xdp_buff -> skb conversion")
> Cc: stable@vger.kernel.org
> Signed-off-by: Lorenz Brun <lorenz@monogon.tech>
Thanks,
Olek
