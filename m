Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A2198A19FB3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Jan 2025 09:19:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 51EF04145B;
	Thu, 23 Jan 2025 08:19:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZwZqes09aoN6; Thu, 23 Jan 2025 08:19:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3276641A58
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737620396;
	bh=TiidH6cDB/axzN/mVAmdEPpYoB8XXlVDSJjtjD7LjQ0=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xdPvYru99dsTb/9C/TdIurKkq2inXzLQLPWuQNr6fYGP6RA1/LOHazgLVWdNFPCIj
	 5hviomroLwR5IX58wpbrALoYVbcxQ/YeBwoJm+nxiwUrs8a0/+YpUaAEsWMNUbfump
	 Q29bA4Sz9OzCNZgGG/UUAUEQypRC3c71XCWTflZ2r+BdueAPRybq2WyWXttdWs6vKY
	 y4+v6XkPjBCWDRxnxW0wSkvyA0hAIwOg3+Xy8EbZ0S0PmoRfxL4TIXusFAGLAdurY3
	 s1fxP4PzfGQYhY+GCoDMwAoHqRvB7Q44acymqhOdODirBLpPpPS2fOToaul7SQXCqv
	 JzlBiZ+WCQpuw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3276641A58;
	Thu, 23 Jan 2025 08:19:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 07FB7B88
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 08:19:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E936284987
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 08:19:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lpMygkiZ9Ulk for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Jan 2025 08:19:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 02F9F8497C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 02F9F8497C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 02F9F8497C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 08:19:52 +0000 (UTC)
X-CSE-ConnectionGUID: ER+zR4/dR2++KRKuPSRZCg==
X-CSE-MsgGUID: PP2OcQA4S1K3Q3cQwGjYTg==
X-IronPort-AV: E=McAfee;i="6700,10204,11323"; a="38272692"
X-IronPort-AV: E=Sophos;i="6.13,227,1732608000"; d="scan'208";a="38272692"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2025 00:19:52 -0800
X-CSE-ConnectionGUID: LqMIS3gNRLOrGDvy56EHOA==
X-CSE-MsgGUID: MGfDgSsZSByBrGjSCMV7Ww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,227,1732608000"; d="scan'208";a="107203863"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jan 2025 00:19:52 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 23 Jan 2025 00:19:51 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 23 Jan 2025 00:19:51 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 23 Jan 2025 00:19:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eW78TYSnoLe42jAA/P7+JynUoUh3ZUyUgZvGp1QSSTUoALusPEDiiIaHjhX7e1/jgHIMcnW7MK5RNYzzxMgADteUeW2tY1sAdyxPWX/GVjHWv658M1xU87oyX9amaExrf1hs7Or0K+zpjryeI/wglkObop0bAudQ7cjdI6tUxyw0zpSwvoYfBZ15q1JJu3SX6Pt0pmyYdyOMndhm/8s5fD734RTn+2xzFrIhlEudO/tnctggV3AtPVSvuLFDk/YOcUPut9ABdIa/YWqBFWtSN+Hn9tf6ky6mu1lRp/QESPfOft5+JWGT5R5+KwIHx8LpziF+yCze/oERXMszL3VSBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TiidH6cDB/axzN/mVAmdEPpYoB8XXlVDSJjtjD7LjQ0=;
 b=lD+IG7dHOy03sgtUDgE+wICwJ91FizisgPaH+Q9BLpRA9sRWAteN8eNuyzUcpvAu5qUfaPyj5PDNdrjt0CBZZiJ8vt8LSMCDq37SIMVoLMFTkz+v4RyJ1e0z+k7d53MuBh3Yoo2EyuZnOHbPp1gWPraFHpW4ce4j+U56JbwGmEc9IevRrgEyApILZNzX4UDagg6er0BeiAp3/RhShIix8L6dyyAUVpN2SMxQ1qRxaWB/z7IvCR6TsS9gesEzZo9A+WD3SQW26cFe73DbFhxH8l6GDGEtVs5J+l0tyFDunKCXG7dseMc8JGFDK0z5NU8FK8FHDbs8J7mn48z0JRIAaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4610.namprd11.prod.outlook.com (2603:10b6:5:2ab::19)
 by PH8PR11MB6609.namprd11.prod.outlook.com (2603:10b6:510:1cc::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.21; Thu, 23 Jan
 2025 08:19:34 +0000
Received: from DM6PR11MB4610.namprd11.prod.outlook.com
 ([fe80::c24a:5ab8:133d:cb04]) by DM6PR11MB4610.namprd11.prod.outlook.com
 ([fe80::c24a:5ab8:133d:cb04%7]) with mapi id 15.20.8377.009; Thu, 23 Jan 2025
 08:19:34 +0000
From: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "dan.carpenter@linaro.org"
 <dan.carpenter@linaro.org>, "yuehaibing@huawei.com" <yuehaibing@huawei.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Thread-Topic: [PATCH iwl-next v2] ixgbe: Fix possible skb NULL pointer
 dereference
Thread-Index: AQHbaPd2gbz+TAQDUkaXMy3OBEim4bMfweuAgARG5VA=
Date: Thu, 23 Jan 2025 08:19:34 +0000
Message-ID: <DM6PR11MB4610D74ED1F1AB5575AE246EF3E02@DM6PR11MB4610.namprd11.prod.outlook.com>
References: <20250117154935.9444-1-piotr.kwapulinski@intel.com>
 <Z45hfyEC6dE2Zkm3@boxer>
In-Reply-To: <Z45hfyEC6dE2Zkm3@boxer>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4610:EE_|PH8PR11MB6609:EE_
x-ms-office365-filtering-correlation-id: 871d85a0-a193-4926-f15d-08dd3b86ab89
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?3T9GJ0VP08z0388gsPbGkAnmxyQwjAsH2Ogv57I3qbDT8qNYCZ6vRhswyIil?=
 =?us-ascii?Q?u3hqwUlqxXufanH0SpRpTEL3W+z1GsqoRLf1vOpQ6U7TNLbaTIVH1k6jZtVF?=
 =?us-ascii?Q?iaHGNp/8FqQ3fnz4kRKA4PLy7UaKxUlDvpheF1ybLSN8MGVXSHuuxuATVuj6?=
 =?us-ascii?Q?q2vqIuBnnJtVkBZWVV8SLM4DQNdL35wQBkGzYPX2Ei+VmsnJg8F8i/999cNd?=
 =?us-ascii?Q?HhtDcclEJtWPf6JpnqFuW7CYrUSa3gv5x6W8pJcu/jR6v0H/bK6AMjhkiE5Y?=
 =?us-ascii?Q?C0fmyOkDitMVHNa2NHR/z3MQRTEVid/kEFrmSRLDU04+cbtuJs+3lh3JFusR?=
 =?us-ascii?Q?ko3AAK6UYCS9aKENDy+hG5T6IaIHdsd1xTC/NSyeBz6w8jYA/ToLzwP4A7OS?=
 =?us-ascii?Q?rjGvkUicLw1FnL87p4TNfhnL9IrvQTHYV2U9nWFYMWfuBAyRFAG6oZu3SALU?=
 =?us-ascii?Q?pKlpNVbvU1pZ5nyrd6kTE5swowYsLB7FE9nLHfgoEaGwPymXIYkU/zB6rfpz?=
 =?us-ascii?Q?eMAdPxc+ZZ61kDd9oGmkNXhcloeeR5CEzMIBr/5L6VYSfBtLwaydmU4HvIcC?=
 =?us-ascii?Q?1Yj5c33VAQHq/HffetB2vkNwV+zYVTyjLqlrykZHxZbDANN3WpFGBZOw4OtV?=
 =?us-ascii?Q?8oJ47JrUlyksdo4Mf9iv7jEUC3Eis4NcFKofSqVfsMQU1a1ojVGesIb3wXei?=
 =?us-ascii?Q?mTGewpYuHSZ/jqmYhYFENUwWTsAwTBlAO4i6W+W5I3OTCiuPU2osKMPTjqUm?=
 =?us-ascii?Q?ULrE8EaLVqcx6/+feTm7XnlMzeSaoiFD+PvMR7GVb72YRmxMjrldpmFzwcoy?=
 =?us-ascii?Q?BSGJUi20Qm3vIwpvbKvK37XX1ljil+VptGMr9W51jb0uKS/3vvae1v/EPa4C?=
 =?us-ascii?Q?Sbvx9iZkF8TLZF4yDc7sIbHpS6mCQRZrq//s+BEvrHZLD22/VLmJXZ9Lt3pW?=
 =?us-ascii?Q?FJY4EjjxGoGVFT9rA2MdfE+tHJjbrdTLOjubYPOdVbY9OXiUmfIjGCDSKeXe?=
 =?us-ascii?Q?lnIEqeOgrVqiGGduv3Uy9YJQlO7McXPNIyX/qaXaNEVUakCzpa2ZvLAifFG9?=
 =?us-ascii?Q?T5vvY7EeIpJkxiXE4vsbYOY2aIGaeGsKqlVcSQSENProex6Uz9TQAguyPC2V?=
 =?us-ascii?Q?94oWSdpG+mdwxpeJclEjqnt5JA9stF/rKTgQUE5YabtX/iLd8Kt5Pm5CDJJr?=
 =?us-ascii?Q?Sc3PgpB0BSMkXKsDihegjFa9ZkwO3nnRHp6g74JMNT3Nq3YX11dB3Dt+fbDH?=
 =?us-ascii?Q?LNtht7nHnviQzyU95UjTzxxY41ho69zM/TMZGcIkydM/eBuwFyMjn/LIwCIb?=
 =?us-ascii?Q?3HhKyp7weWtbActB1aIRfgDb+p3Ti42Fr1lmz3fBTPuNUhuV97nhXz/32ZrM?=
 =?us-ascii?Q?iq/2YXNXSr4NceWHfg1luKvuxA7VR8RwWIcrALzDrDU/8KV5GU2OM9MAgCIt?=
 =?us-ascii?Q?TPf0L2lq98Kb/i7fFqb2+hoVcmfpRvFk?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4610.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?IiO/gD+9MaA49fQ+aOYD/z8okFF28PATWJ6yQDCqeTuomv2nZtnaeTc7uE+I?=
 =?us-ascii?Q?IMvxh9oxLbwfasmDkGk827wP58slRICcWRQ2o9LPkZgg2s9zKs7TYwW55aqV?=
 =?us-ascii?Q?Tr91s7lpXZa1REmAf2qZtYh4wslL0xP54y+boldSiAT7icNtxhsLmRnIaSHS?=
 =?us-ascii?Q?40plauX77aLUAcodaLIN3wTu/KVZrolO87zZAH9b+pk78DHsWYVXkV2kjybu?=
 =?us-ascii?Q?H+HzEdupRwPHWp1uuhBUxArlzQSX/r0MTqB+tCiHDET5t3w/d6TPDVBCzpHA?=
 =?us-ascii?Q?ELJXvWOusIlICrMXO+FPVXS/rsOAruOvEwsveh0l4GxInxws8+wJEmwzyJ7e?=
 =?us-ascii?Q?/RsHhYrEz6BUGB7PCbCgCFoCCthkRmYDWp8P/cSjjXvJQNBxJEXevKeqXl/3?=
 =?us-ascii?Q?X9fOpXdssccFMlGyHyxhW9tRfaKSFFL8mVeTXPBac+AiDpxta//SNSL1nkG+?=
 =?us-ascii?Q?455xMtroJBwjOem91JkQE0Ni9+/0ahL/8bxJ7U/OkLeDVY9vtPec6RfWruBn?=
 =?us-ascii?Q?a5krQM0EWxT3YA3IeZGsB0+fX1l0dfuAB082tRN0KL19fQZ4rnxggBBm5oY3?=
 =?us-ascii?Q?ibc159HFk/KZDIBTbh8TpqiwyfHVQXl2FLX/BUtiBSVsbP+kzo1QSNvt9r7J?=
 =?us-ascii?Q?NNr4p2pn/7GssOwshS+x8/7V9hyDTcfhWnCb8jkzpvIDDgsyM6jhWpM3e4aZ?=
 =?us-ascii?Q?CRTVo1K51ycVAz1DUqzdLj37eoR/hoIsjLKI9w/3cK2UyEHQkIdqGMjWFBqh?=
 =?us-ascii?Q?wO3QZH7OENQLpv1M9YMrH6vE8ceyRK94ZgM8oc4BGEpUz+UqfsukwR0eQ7PJ?=
 =?us-ascii?Q?JWvCEAh3AZxJfpSpYtZecAXeVXfPBHn7sG9W+Sn6gqQbImWjbZkE7FuNRoaf?=
 =?us-ascii?Q?7PTNjjjOR5/hyMMmzTTI2YQ13DmwAPFUSdj0fvnD+40HtJ3N0gsGqVe1WCrM?=
 =?us-ascii?Q?jZ5znKLkJrZyf3grfyWzvWq+J765eYDNznms6VQxBmKG3mAeP7pd5UIDEswo?=
 =?us-ascii?Q?Bh7la3B+KhWSiyK2z9Tbhgzgo+tBhp5TPbjAGuzOOumySIEK46xMJNL1SJ3/?=
 =?us-ascii?Q?Cf8Emc+wWpVi/9gq6X+U5G99E3oBNCMqtrA377GnA3cLtmFGLgmex9/4lfsE?=
 =?us-ascii?Q?BX251olS5xDefT4erzMhw6pGnamoGa2ZLMuya3jizPqWRHiRgf59b3qEd37G?=
 =?us-ascii?Q?1eGv5EH/SLJn++UrPEh2LxMxIb992ibCX1UGw1gFISVhaLtS6atB3y50Vibt?=
 =?us-ascii?Q?GV/T7zDnvlg1qPhjZzv7UgvGC9hN9s0YfDvpPlnx668tvFgWLAGGsv2C24Td?=
 =?us-ascii?Q?DsutW6NcGxRwR95zvIeErbINcKN4Eu08Z1xJEBJftCulq4U1yuetNU0f7cvf?=
 =?us-ascii?Q?V7eFkIOeeXv/ZuCwaGgFYylMnbvn0hbGC53X6DLte8TeQD5A+3VQgzbj5me6?=
 =?us-ascii?Q?B4cbNzU2gffArlosSguoeZgJX7J9qJgNF5YoHa9Z3gyoZcPnN0YGC269ZPAL?=
 =?us-ascii?Q?RCQ7LAbmg6FGn4KNl7Zhr3O356elBR3gCmSGJJOGvI7ACknDEJ3x6qhOtUOF?=
 =?us-ascii?Q?2ec/740bztlD4X6OR2Dr5OG25bE0ZyiH0FIj4tSP?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4610.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 871d85a0-a193-4926-f15d-08dd3b86ab89
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jan 2025 08:19:34.5446 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PHhwqDyd23L0MI9fvuCyCUf7Eyk4Bmx4n4vpu5agFDvb3QqcF615f4oGWUjz6iHi9Ky/2zFEbel/JqNsbesdxXPYyxygk8BAV05rhW5QeT4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6609
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737620393; x=1769156393;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lBMc8GAzL6eiMp9QxOEbgci0NSfHILgoaifi9A2uoIc=;
 b=R67dllKNTRNRwKNJccJwmOvdderOMEg+UlWNVQWPDfrm+J/9Cp9TkShF
 4zM4HPUQRCJalO0ldkgvcE9JAMvJFq6CVwlJ4bOE2bKjFArMNkNclOfj9
 0R0RD3bO3p5P4PWrxzstTsPqLh3Gqj6kcxdPnZNGUjpJBY7tcshbB3T/C
 PsJmGsvEleyH5KKMYqX7SLs6G+BX1KlJloup48ZJof43MipP7g29qSHgN
 jxmYEd+yOW69I0iFWaSCCimcRlA8YLOWtmwimu92M4D/hriAsx6uTrNEt
 utUe3OoPDSCjYPoFumG2bIp7Mt3mhxIpWFcF9RH7yqvTouwCCXvwVamuS
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=R67dllKN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ixgbe: Fix possible skb
 NULL pointer dereference
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

>-----Original Message-----
>From: Fijalkowski, Maciej <maciej.fijalkowski@intel.com>=20
>Sent: Monday, January 20, 2025 3:45 PM
>To: Kwapulinski, Piotr <piotr.kwapulinski@intel.com>
>Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; dan.carpente=
r@linaro.org; yuehaibing@huawei.com; Kitszel, Przemyslaw <przemyslaw.kitsze=
l@intel.com>
>Subject: Re: [PATCH iwl-next v2] ixgbe: Fix possible skb NULL pointer dere=
ference
>
>On Fri, Jan 17, 2025 at 04:49:35PM +0100, Piotr Kwapulinski wrote:
>> The commit c824125cbb18 ("ixgbe: Fix passing 0 to ERR_PTR in
>> ixgbe_run_xdp()") stopped utilizing the ERR-like macros for xdp status=20
>> encoding. Propagate this logic to the ixgbe_put_rx_buffer().
>>=20
>> The commit also relaxed the skb NULL pointer check - caught by Smatch.
>> Restore this check.
>>=20
>> Fixes: c824125cbb18 ("ixgbe: Fix passing 0 to ERR_PTR in=20
>> ixgbe_run_xdp()")
>> Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
>> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
>> ---
>>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 9 +++++----
>>  1 file changed, 5 insertions(+), 4 deletions(-)
>>=20
>> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c=20
>> b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>> index 7236f20..c682c3d 100644
>> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>> @@ -2098,14 +2098,14 @@ static struct ixgbe_rx_buffer=20
>> *ixgbe_get_rx_buffer(struct ixgbe_ring *rx_ring,
>> =20
>>  static void ixgbe_put_rx_buffer(struct ixgbe_ring *rx_ring,
>>  				struct ixgbe_rx_buffer *rx_buffer,
>> -				struct sk_buff *skb,
>> -				int rx_buffer_pgcnt)
>> +				struct sk_buff *skb, int rx_buffer_pgcnt,
>> +				int xdp_res)
>>  {
>>  	if (ixgbe_can_reuse_rx_page(rx_buffer, rx_buffer_pgcnt)) {
>>  		/* hand second half of page back to the ring */
>>  		ixgbe_reuse_rx_page(rx_ring, rx_buffer);
>>  	} else {
>> -		if (!IS_ERR(skb) && IXGBE_CB(skb)->dma =3D=3D rx_buffer->dma) {
>> +		if (skb && !xdp_res && IXGBE_CB(skb)->dma =3D=3D rx_buffer->dma) {
>
>xdp_res check is redundant here. skb ptr will be non-null only for xdp_res=
 =3D=3D 0. so skb !=3D NULL implies xdp_res =3D=3D 0.
That was tempting but eventually the ixgbe_run_xdp() handles the error excl=
usively. I suggest to leave it as it is.
Thanks,
Piotr

>
>If I am not mistaken:D or ixgbe has some code path I missed.
>
>Besides this, thanks for improving commit message!
>
>>  			/* the page has been released from the ring */
>>  			IXGBE_CB(skb)->page_released =3D true;
>>  		} else {
>> @@ -2415,7 +2415,8 @@ static int ixgbe_clean_rx_irq(struct ixgbe_q_vecto=
r *q_vector,
>>  			break;
>>  		}
>> =20
>> -		ixgbe_put_rx_buffer(rx_ring, rx_buffer, skb, rx_buffer_pgcnt);
>> +		ixgbe_put_rx_buffer(rx_ring, rx_buffer, skb, rx_buffer_pgcnt,
>> +				    xdp_res);
>>  		cleaned_count++;
>> =20
>>  		/* place incomplete frames back on ring for completion */
>> --
>> v1 -> v2
>>   Provide extra details in commit message for motivation of this patch.
>>=20
>> 2.43.0
>>
