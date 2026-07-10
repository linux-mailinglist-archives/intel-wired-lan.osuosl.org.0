Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Dq2AJpuVUGr/1wIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jul 2026 08:47:55 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AE83737CFF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jul 2026 08:47:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=WumHAqCZ;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9387381140;
	Fri, 10 Jul 2026 06:47:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gzm7BBpjT_y2; Fri, 10 Jul 2026 06:47:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BC4F681156
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783666068;
	bh=wyoS0s8kIVN+SODeiEemca2WvrbjwN9JGIcbrAyy66c=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WumHAqCZt2RW2oXdlEmmUhAHmgaYDJifOvlvPHU90gaTMJ/vmqDqwMtqJYQLTHphl
	 oDiWBaWMDybBMfdw5lanjq9MyCumH/d6hZ59NuBbgEIw+8nTfvSA6Cecq8R3ekpAwf
	 ULCVhWzLZ7QdJdRJJp/KfMLGaWnW8LjXoZNU4Y8dR/0k/fLciOXbeoU+Vp08FUTs/3
	 rrudqNWCoF5TyDcGdwDMG/L69TWaHmDH8gimMP7qorvlIno2y+7ruwu6//yDbpKwYy
	 KoJPzvUJiCwCtAWc3uTSi3x0w1sj3vxydqUUSZGeGdoWC8Yl5BIbXzWsmZb8N/UeTL
	 OpXRCv1F3LZFw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id BC4F681156;
	Fri, 10 Jul 2026 06:47:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 7F3EA2FE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2026 06:47:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5BC4C407AE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2026 06:47:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qcOr2j9eL0My for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jul 2026 06:47:45 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0EEDB4086F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0EEDB4086F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0EEDB4086F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2026 06:47:44 +0000 (UTC)
X-CSE-ConnectionGUID: WEaYdY3WTsiLh6m8/V9WRw==
X-CSE-MsgGUID: uIiVDhzMSVWJWn55nNVNcg==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="84461617"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="84461617"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2026 23:47:43 -0700
X-CSE-ConnectionGUID: Fjc1+dHLQRCHQeE2Zy9q2g==
X-CSE-MsgGUID: a2hPzF6dRTq0YS+LnRogCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="254906384"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2026 23:47:43 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Thu, 9 Jul 2026 23:47:42 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Thu, 9 Jul 2026 23:47:42 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.6) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Thu, 9 Jul 2026 23:47:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pDW7KtzA6qAc4mFLo9n/yMnR5rsFHXe/VI7MRWRXs25fTtUaaC6EKh6UUQfPWzDXbjNtTZttOMht2r0/YYNuZcJQjyAtypAZCE14LxI/IbO0o8xZZX9S3BPSV4nRQMgSb3SEcMGBUY4cheNryFZ2ZKfgQh7dWQeQA9G4NZusIcgMGO88NzxhcFAi3qpZ6Mm6ToKZeD2mrqmm0HYseuDDqtmkcTFd6EViOOfUY/NjDTtb5vOl3cnsebQ2F1+oz6NMJFiZMJ08t20WDb1VIP8ibMCkYsjOeZd81p4j+2gqoz5Xcs9wxzdUGkHtt07bzpA1LktEPUa03jekPy1dBTfBeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wyoS0s8kIVN+SODeiEemca2WvrbjwN9JGIcbrAyy66c=;
 b=VHjg2f9rZMJEZ3iQwiyzKo4DnJ35sX7j1JVh3cuMlu38OyF93kldHx3pMaUHRkNO2tgBOK0ni+vjVwrtZyIgxnFwe6pRdmu6I5MFnHetgI1eeCmgDqSvZRYMsk/d+qWm8UVtxuO6FkH1DVe3RxcrLPaMtg30Dw6RLIlwPzG9neXhSQmTIHiIHpBB6vPZznBcNZPe3esmyx5dTRaR7KI3cPQ1O/M+0caClXVn69wXsSlZi8MEBGdzMpATTWjbPzrrhtHm+18a9sLqN2Si3rrJ4XcqUcQ4gxAfTHGNmm+FdgZQ39yDsov8a5RPZrOGfcf0HDNvqZ5NDODnse6gOcXHww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by MW4PR11MB6981.namprd11.prod.outlook.com (2603:10b6:303:229::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.15; Fri, 10 Jul
 2026 06:47:37 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%6]) with mapi id 15.21.0181.014; Fri, 10 Jul 2026
 06:47:36 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] ice: fix uninitialized
 response buffer in ice_acl_create_tbl()
Thread-Index: AQHdD7wAyTCXJtSWNUW2UiuMnYWx9bZmUG1w
Date: Fri, 10 Jul 2026 06:47:36 +0000
Message-ID: <IA3PR11MB89863CD8586EA0167A963C8DE5FD2@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260709145904.164375-1-marcin.szycik@linux.intel.com>
In-Reply-To: <20260709145904.164375-1-marcin.szycik@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|MW4PR11MB6981:EE_
x-ms-office365-filtering-correlation-id: c48e00d8-6abf-4a4d-8bc7-08dede4f20e6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|23010399003|366016|376014|38070700021|11063799006|18002099003|22082099003|56012099006;
x-microsoft-antispam-message-info: 8Nndo8232amMxA2K/fWxo88tENBcg7wzIVGuNGrwuoc8kwvax7WmHVOr6YPIR5luBFDlt2IenzbOdF/tPQ5k2RgWM5SjbnLmqd6U8b8kmuSdKSQLns2YflbUXi3vRZCgPAKB26PpWwwV5mwUWoB1SBfunf8mmbNWKzCx3brCq6S4J79/zyWdbA0buYH7Ovo3UvuT5lj1pYumF2Oj1/+jA22fB1eUeQAXToyjPizqokaJcBtrJqzEMSMnhgwcbeXJ/S8drGSZJezbtLQXaZ6oXA2FDQh1i3l0gf4ZxGrmD5bC/O2Q9tqyPsYRzpEMxkcrzelz7X+Eons4XBExx3CaHQS/xSQ+c47NRLRwa25LBApNeHR78bMJqlnoB7WTcedmh63Tvq3D55QZEmoZ3hsLHX5uX4zxVXDz/SVwuZmEnrLBM9cfupWKwM8S2dg06q+yXcopiFzZf9Z4Zke8MNudC+52xNdiIHPUMgQgv/cl0Td6KCsGdHx5CIj3HFHQ4miY1cAO26xatnIGNUQ5X88okmFbDb2CAOp2Qs23EIRdBAT+sCrxdURXRKdf7AEAVy8PDbUkA+jzkwrSjgM2A8wduz9YCSTYd1hmsInc+6rBkaFNqi5juXi+XtEpCOMLSU4hhWrYU3dg2jMd0jV9LJ5CW7V/xEAOiUVCSdtJ40crGyLl1azlTVrTO6HJQtQwaxYmb3oJcVQIAHk3JvV3RVdTKLcjkalbECJCxQNbrLGoOfg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(23010399003)(366016)(376014)(38070700021)(11063799006)(18002099003)(22082099003)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Ohx5qZuKoR9SOAVEZAtKd766PD2nydG/QDrt7qL6yu9E0cSmPIzGnLPvFf15?=
 =?us-ascii?Q?MWTUFGWQHQivyxATGMGH1UIOG/3p7MlWENwuuCC+gGfqvWcCisaVivoeDSDe?=
 =?us-ascii?Q?bB2bKII+AEyzxzLvgezV3o2M0842L8MRT9YsJt34FxG8A2k+CH42uYsCFDPO?=
 =?us-ascii?Q?GEKyQ0Tn01d+oXKrmw4LBrlSWY8fNMw4DbY9cEKCx+ADZsJCxZN2f/otPFBE?=
 =?us-ascii?Q?3qTjATjf0DYwVNPZ0iq05BcH2/fhvXr/gGjFrDzguq9AP0nlnzCA0nX4jp98?=
 =?us-ascii?Q?9GKiohSUKZpMh8WrhopX4DcKZY1NUtxBdtrrMfBVeJRaMsdUVXQOD6WWu4rE?=
 =?us-ascii?Q?K1bM2WpVyOGU+X3rFf28mjQ0eBI0bOenhN+G+4+mFqNNROM4eoEY2dZTHXep?=
 =?us-ascii?Q?WHzVuO52AKLEYsHnTkbIbWK2CZ1FhNGAR4nXYGqOWfjTURvABawWre0xtQHG?=
 =?us-ascii?Q?jg4GogQn0yFbp4iZzVg/updu1hL46r8MOgdOXeuTUasKeVlgyrQxUTcSfMDP?=
 =?us-ascii?Q?8p277jZ1JyA6kzs/GeJi/IABP2zzjBt4VTvos5E0Uss++jyNyrsJTTyqPQQY?=
 =?us-ascii?Q?6QQ/SNK2SkUMHzlskL8y/4rVt1qhhX9vgCt7xopa2odYHJe17CdAJfWFaz9b?=
 =?us-ascii?Q?AQeaZWZ1GH3sd4OlXMVfO8AdyeejugftLY1IQwuJnrMMenBQEq4M8VeNQoFK?=
 =?us-ascii?Q?5Xg23QLusFq6LmrL+KPFy8aKveY8SlG1B6S3XRrV4qT0ANAaOXs26AaLfT+W?=
 =?us-ascii?Q?VFgbazdx3AyRoNGpp/AaZ6b6XZGbn+wDk/az1m/m2UemoHl6MFN/7mJG3R51?=
 =?us-ascii?Q?asCLRr6oVUozPQkWekT94/8DbKNxI28PQNeUsulWDBlZ/wfY2ePKVQbl/Jtc?=
 =?us-ascii?Q?V/ijD3Fg2Qejes9woSOk9LaB0md07LEcuT8rNYjUJdMOl4Tt20CZhQBXYB70?=
 =?us-ascii?Q?JDqnpO4qytOIKBZvfPfm06k2ATxKjrGEQXV94sKfDPpEfyP5DfvKKg51sMjW?=
 =?us-ascii?Q?F+1S1ObBon89P4y6+fvmqEp6/Gdxvlkl3cp7MVyM2fi3ReSUwhJSfFdmxcUK?=
 =?us-ascii?Q?foGtstNUmQCbY1VAmF/jdlc6NisE12P2240s+6xK0ERv4ly7LyN3Gl5Hy6cn?=
 =?us-ascii?Q?rlNCBwgyHR00CoggA0EVnJoa24y+RNcYBvO1y6geN90wyItGkID1gcHs0ewC?=
 =?us-ascii?Q?xeCSay0soBosnbPlNhq5bL21ZKLdKzjkjNrW5A2A5k4p0lH2HIVBfuZlwSb9?=
 =?us-ascii?Q?1fc04LRJ07ftKC1Dcztfrz6q1F4oA3sv/J3Ebrsr3306+YuEjS/qX49CjPQ5?=
 =?us-ascii?Q?ca4uYfnS1N/TnjG9PGwDx5Ab3Y3bPc+kYXPayWx0g0jbUoGyDgaa9XiUYyhv?=
 =?us-ascii?Q?mOS9FiRRrWhjopA2yIKpGrhQdSLov4H/LPVd2VSLPyHstXEelR8KEy8klvSu?=
 =?us-ascii?Q?eauL0ON3u+zgmk7/Yp8gVLQgd7kRkQyARE2xHi3BfxL5U5Pe/ruIjO7aF4Pn?=
 =?us-ascii?Q?7X7hPhIY4tej9/ge8r94sK8K4P1A9rMP//hxDD2Q94OqG34ABDbEQOLaiI+w?=
 =?us-ascii?Q?GOrGiGoJb6MleJZkRcWvjt+cTibEJCiPg5I/b0eSJhMcEV4zBnHW7EZ4+ifc?=
 =?us-ascii?Q?Yz8Z6OauMLrjNxTnI/DswX70OI4DktEDJngi5w9bzKmfx+KzQXcH57st6EYI?=
 =?us-ascii?Q?bHpV31i13TO8RggiHbS9yhlX1d4z0qY2Kl3bt3wgaz/Vmqa2QRlHpiEa5MIt?=
 =?us-ascii?Q?3iw61Yc3LuARzOgvn7CJIBvu5qM4mZk=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: a/+KFu8XtEb/U6lIpSd1IZlRW5f+7SCzJLIlmF6JKwZ4WfaH0yq0t4NcadZB47w6wR54rxEP3X+BYVv4lsANuKVkPvzb8M4F1ZtdZWK0Uyu66OVAWVmivHXPIhfKtKVwZMXulv4JOXrwSNnwSJymyWYXeWtRVzdAp/QnyG952B91m1IGuzNcF5IbS4Kcw6pSPBWW0k4KHH3yycQHkVAqvTbokFz4LxizaKB2UAOi3ruQGP91/lywGT/FlgVlmQDGLGwtNZnxVJBeZh8Fobp5kh/ReRrYBrGsyM9eGe2W21nuja1elgpAu4+20OdkmhKbrvECd0k/I8CJe0W2S7aQsw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c48e00d8-6abf-4a4d-8bc7-08dede4f20e6
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2026 06:47:36.8802 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AGyrPDVZ3jv/Hga32CA6H+RVOWRJlV6Joz+/iud3vxG7Rq9G5yfz9rH8yie3Ybl7/zonmoI0umok15t8iuC5QhdzOk2G3ire202hUieMl08=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6981
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783666066; x=1815202066;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UfE+Hm8ndkZ19/VVW/OJ8vL0HZRBCLgBz/wNosecaLM=;
 b=WIARA5rvyQYA5co5zt6fJbxcVSrvbfvDCdfl5O522JNcPDx4vwnW8UrU
 K0wyq9bDszLR89ofjpv2HEkluy2gC8D8SQqGwexZpO/Pl/G35CQVLwfop
 SxkGnx0jjk1PZ0S2vwqlYJFyLlLsbeImfy8bcqQxAenI0YJImEVJgbKr6
 WVbJlsUC5iGCLtWFysV21wkxZlPJLFLHSuxOigmHNUJmTmWx+kOeVSoGN
 FcUHKgUKXlp5bPj8WgMXYE9PFf6b26UEXwHZowfQmHj6KR/Xilbyq3l//
 2zLuCH8sj15ltr7SUuLn/S6b2Pm+vxqql24qsB1pCVxaE0jLUJb1tFgXc
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WIARA5rv
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: fix uninitialized
 response buffer in ice_acl_create_tbl()
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:marcin.szycik@linux.intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5AE83737CFF



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Marcin Szycik
> Sent: Thursday, July 9, 2026 4:59 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Marcin Szycik
> <marcin.szycik@linux.intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next] ice: fix uninitialized
> response buffer in ice_acl_create_tbl()
>=20
> Buffer is uninitialized in error path. Move assignment before goto.
> This buffer is only used for response, so its content doesn't matter.
>=20
> Fixes: d80ee68614c3 ("ice: initialize ACL table")
> Reported-by: kernel test robot <lkp@intel.com>
> Closes: https://lore.kernel.org/oe-kbuild-all/202607022231.FWjSU75X-
> lkp@intel.com
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> ---
> Tony, please squash this with the offending commit. It's not applied
> yet, so hash is invalid, but I don't want to resend a ~5000 line
> patchset just to move one line.
> ---
>  drivers/net/ethernet/intel/ice/ice_acl_ctrl.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_acl_ctrl.c
> b/drivers/net/ethernet/intel/ice/ice_acl_ctrl.c
> index a76762e3aa46..4ea08bd9784c 100644
> --- a/drivers/net/ethernet/intel/ice/ice_acl_ctrl.c
> +++ b/drivers/net/ethernet/intel/ice/ice_acl_ctrl.c
> @@ -354,14 +354,14 @@ int ice_acl_create_tbl(struct ice_hw *hw, struct
> ice_acl_tbl_params *params)
>  		return -ENOMEM;
>  	}
>=20
> +	resp_buf =3D &tbl_alloc.buf.resp_buf;
> +
>  	tbl =3D kzalloc_obj(*tbl);
>  	if (!tbl) {
>  		err =3D -ENOMEM;
>  		goto err_dealloc_tbl;
>  	}
>=20
> -	resp_buf =3D &tbl_alloc.buf.resp_buf;
> -
>  	/* Retrieve information of the allocated table */
>  	tbl->id =3D alloc_id;
>  	tbl->first_tcam =3D resp_buf->ops.table.first_tcam;
> --
> 2.49.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
