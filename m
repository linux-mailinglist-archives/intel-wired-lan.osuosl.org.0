Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E9A5939FC0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jul 2024 13:24:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 58497401DE;
	Tue, 23 Jul 2024 11:24:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3ou4MC1ywJNu; Tue, 23 Jul 2024 11:24:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 59AB6401E2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721733885;
	bh=F6Kzx0Ahxg7jxEbrUSSDNDhnPhXEcJYL5u6R5QNJhwk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FIZN8fwsFnGNx7vkYc5TETUayzOvacPK4ZlZ0NSPIFQT2MuvNf1DdjIXFJQwws+f0
	 kFW61C68EXiqG0xQOdW5ZH+EkW5z7G9eBo+2iXrViliB9tk2XmcWNLpomLmpLzWxCj
	 3vgrMj5wzQwC5LfphH6IS9xlm6xngStQ//6StzpwcL8uxmY1DQ4ctvexBfDG2hYfIo
	 akRdXRPvzQYLaV3kfDVBfMhHG5LkAtO3iEWhw6Tc1uqu3rj/37wNl2ToR3JgqWKuRa
	 hkHxgIFWmkmHFK4Y79se/aUWYkscUomz7Ib8H0SUNEyBxpuKqDafklPlstxrmIZdoh
	 IsAH9Rpa8DFeA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 59AB6401E2;
	Tue, 23 Jul 2024 11:24:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0BFDF1BF28B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 11:24:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E8964401E2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 11:24:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Hr_OE4iab4ge for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jul 2024 11:24:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E4686401DE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E4686401DE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E4686401DE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 11:24:40 +0000 (UTC)
X-CSE-ConnectionGUID: KBhNtbcjQbOsKeTZBHvnCQ==
X-CSE-MsgGUID: pJS+7GgDQ6+69fkT1hDEOA==
X-IronPort-AV: E=McAfee;i="6700,10204,11141"; a="19053005"
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="19053005"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 04:24:40 -0700
X-CSE-ConnectionGUID: BO0sST+GR4SbYggvZGYs8w==
X-CSE-MsgGUID: vrYkBhEwSrK4oiiSnHgUFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="52439856"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jul 2024 04:24:40 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 04:24:39 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 04:24:39 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 23 Jul 2024 04:24:39 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 23 Jul 2024 04:24:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jHG9e65g3IZICVVGVAotZdjd2XLsTBb9zcTcYYvGNcoJRd/lwoB8uLEArtFOm9caiJFr83pov1wA6nuM+0Ui1lbBmtnnyxqGHeZf2ayBQp1MfyzJpJIryouRZFrLaGdNC0Tcrzev3ioy4wjAna9pXZ6Frg46mcfkVAl5C8db0FRYR8F9NKn94Ocl1Llbv8YK+2PMr6R4X+oLP4Y5TqTQVBhlWkH+aOlOYP8ydV5dO2qapUyvkCtTdtbibqp2r57x3FRlNUviB1y0h05g+Q7qci5t86bjMEJhCPQuNMU1Ivw5XHNmtSJLgnJiCtU5N/Gq2KXq3cPPI5ttBZCBvqWqjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=F6Kzx0Ahxg7jxEbrUSSDNDhnPhXEcJYL5u6R5QNJhwk=;
 b=MgsXsaoFPRxhAa9L4AQ4fbi9YMvL4FUE8dZVdJygDxVESt6cRsjvmxR/Sr8xXwr8PD+a2MNI1r02/GF/+2YZIuu6ntw6ewP9JMCkn9S2v9aXYYFXavCiHsenfI5H4I7Y4X9w4FEyTOly6kX523vULn6iui9Dndrvm/vMI3AjDQet5r5no9SbXiRdjk5cRoyWbimNVKGsd69M7CVT1GLumXRMkIE8B1Hl+9oDs9QM1+jGvr7NXOnM3AetZ4t9EHLMHuXeQW5ZKV+4nZLN8WlEF+hI+dBdvtuJlWiE9pz+XdOc7i9xenO23b++Yko78eNTHk+6UjGNocm/kfeFFjPZTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by DS0PR11MB7802.namprd11.prod.outlook.com (2603:10b6:8:de::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7762.29; Tue, 23 Jul
 2024 11:24:36 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%5]) with mapi id 15.20.7784.016; Tue, 23 Jul 2024
 11:24:36 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Simon Horman <horms@kernel.org>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>
Thread-Topic: [Intel-wired-lan] [iwl-next v5 12/15] ice: implement netdevice
 ops for SF representor
Thread-Index: AQHauAO6JyMnJsAhhkSrXMobDk7z1bHHJI8AgD1RJ1A=
Date: Tue, 23 Jul 2024 11:24:36 +0000
Message-ID: <SJ0PR11MB5865BA3427177CB421A0DADD8FA92@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20240606112503.1939759-1-michal.swiatkowski@linux.intel.com>
 <20240606112503.1939759-13-michal.swiatkowski@linux.intel.com>
 <20240614110206.GH8447@kernel.org>
In-Reply-To: <20240614110206.GH8447@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|DS0PR11MB7802:EE_
x-ms-office365-filtering-correlation-id: 208c3de6-4a40-4a55-d53c-08dcab0a08ad
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?e5n+YbfIVk2VBZ6/xML2i7KBPVmd+FoexytGL8TdkzPNZJnX0yCc19V4mUtU?=
 =?us-ascii?Q?tpej1emB/ZSn4D8K8Bg+C42Ua5PBda3mEJyPGo/m5Uc7afisnFSQ74ncKayG?=
 =?us-ascii?Q?izEUnHyWAJYp28TvyLo8vdOEkKEmsgFUsb4cZilFMIAiMuv9BIKUDKUCmk4m?=
 =?us-ascii?Q?suTFimFlYHk5G1HsStVkBp3WVkeLGa5ko7liHywpRlr+lUnZqjffbttxTV6/?=
 =?us-ascii?Q?vi12O+sxTf4d43Zmf7yMx8v6bzcEwN10XfpZcW2qqDhZ0tqBrO0jRvGbYtYr?=
 =?us-ascii?Q?STA2jiUt1X5ToZd52Tc1HeZDbHLgE1120DQWxe4Mp8XvUcNzjo3RbT4iy6gB?=
 =?us-ascii?Q?Ywga7rqE02yFiLWDf+WY5DSFFzlPS6W+RakftGLfKndo5+NuSyjgCgcKAi/Z?=
 =?us-ascii?Q?hJpGmCRmojimqGQBDxCkOXfprcU5omytVngaJCEnXZnESYSWzP9Qjb32pcev?=
 =?us-ascii?Q?5d7T35VGuI+iIqmM1pAdLJUb9F5aqltio+MglZ+rvYTRbAqRt+50Gdu7n1uN?=
 =?us-ascii?Q?rnjOUwYfjPnRboFn6VulOxFE9weN7G+v8d2MNzHKN+Xd7luQ5apbBIQSV8eB?=
 =?us-ascii?Q?JHxnliZMjJZDtvxsnW5HOLkG/4FOfzJEuLdGfszJQ+g28FYanyhMC/Q3Whvc?=
 =?us-ascii?Q?b+tJ4lU7WYnyt/FE9d3lOJSdXFObDe/MU5XA3Hx5jvC71dqkEscB1Qr0pjya?=
 =?us-ascii?Q?CG0wXDTTOYMgNfrmvMbVP/lJx3VAXgVKbjJULCEG2d2NOC8SU5AVA8Fx4Q96?=
 =?us-ascii?Q?dvFfPVrD/MtYv26cgXV+KXByBoFXsCrKuQnNOK3wUVG3tUDdivczbqWeXVMm?=
 =?us-ascii?Q?6MitBozH5P9V2duGcsU0xbKhi4BazD+xbfdtIWFAhP0EfPANUwhZwaax7c7z?=
 =?us-ascii?Q?c5mGMLDD8TiuSUl+Zv/GmOfG0ttEZkacLxpMBj5FoiB3C39nGFm0/VUJG+Y0?=
 =?us-ascii?Q?6snyT6ElVYjj78OHEOJjpuou2HTGFbAJf9aWB+tQsLCQmFCeaUQ85TD6bAd1?=
 =?us-ascii?Q?6VFCBieadqMqIjSi9JAgrYvzAPNG922zyY9r5AlkW6YQEfEoYBIjVwFr5nOO?=
 =?us-ascii?Q?+2m40EiDfT8GzePrfXZ+PS/bG72nk7ivzl6U8AiPa3qnX0zkG9J9J0/wuXcx?=
 =?us-ascii?Q?niRyxJCe8eUWnugSs0p7maPK94xqcWEr1dRBnwnLU+2VYW+gjWBz0ex2eDmI?=
 =?us-ascii?Q?mpNxCTQQ7OAgG71r6pXT0HqCHiKwaGNyUYLY9uAr0/WDbmM7P6tzGgAtT18Q?=
 =?us-ascii?Q?g0yDhvHXumfH032/fFv10zbTI9WDiW1WQPy5AU+QnnFAvl1zMhWAo6wp4cjO?=
 =?us-ascii?Q?3dAUhDbLCVYBWv5pCGaBubTggrHPY9Z7mOLLfsqNxkG5aQxMdVuRM7Xm+mbd?=
 =?us-ascii?Q?tzgkp1fIW1lWP4kBtb3VenblwmnuoSwp1uiE2FyiOYIHQCsWDw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Knk1Yd7KrVjVzgU59/Fe2c6qHac2k1OetkGyYvuPDIP5GFQjL/xq2P3mznMU?=
 =?us-ascii?Q?lAzGYbIE17lPghr1RclkaMtS9K7kANSjND8tAi8Lvlt5by5RHUWQXX9rWG8b?=
 =?us-ascii?Q?qQZ6A8Zm+nywSMgS3Kg2Ya/drlxbTswnB0zQ8xDsKB3y1qcV4Wl9l5M4/nIQ?=
 =?us-ascii?Q?lY8Y+2kstCRkbk3nUlc0dWnPOXSsDWqLcGkVNCGbjEMXxNSkE9f/62zrf+uN?=
 =?us-ascii?Q?nONm0esqz6JG9Cg9Ef0Mu+vBQCZ0xuovMlA9h4mpcX7+tPYmnzxsEeYJXJNU?=
 =?us-ascii?Q?NJa8/27cHtcISn38b2Hkrd2qXeMmsWG0Czd/uoGY9s4YMt/++iRa7k6SKGV/?=
 =?us-ascii?Q?eQqykOEMVa/3TwuqZyjB+S2nRSADkpvMqTRCiIuAUx+pT3wMNWm7E39DUrtg?=
 =?us-ascii?Q?PKUsrjutBQxynMLfdo/8U3uemJs8aWB4UvWiihth1OrjtAZp22NtAaotfozT?=
 =?us-ascii?Q?g3T3ZJn2HA+a+LFS05cgws85lKtfOtv00yJf6BfWFwZKtgeNNUjlzmPALJwi?=
 =?us-ascii?Q?UBbgaqqOnRvKi7Lw77fMQB0Rg2x2+Fa+fFDZOVNQ/Scna+zMWNL0tf+uAeii?=
 =?us-ascii?Q?Waya+BAjAK78R/TExMLloiAEyspxORZ5ixz8G2T0e1dTfD+YNy1rPvc6y1U8?=
 =?us-ascii?Q?SUsuoEECQsFwqfl6rp1i/Vit48MtDlaCCEUktjxh7eXNPbACcNBeOVx2g3qG?=
 =?us-ascii?Q?MKqSuxFqS/lUsYFS1r9VcXIlMt5ASI+FeQAeRFtHGclj4jDW8rd605hmsefX?=
 =?us-ascii?Q?GFQWJuQhQiF2wVQrHRRh7WYlRI6h0mxSXV+ACx6YS4sYvI/9z7ydds43jYry?=
 =?us-ascii?Q?teUBEavxDb0zYeFMBhqqcXOztMlDW44lvz9SZ36SgoSaSoctvjQGI3/PPEdn?=
 =?us-ascii?Q?1P5qrOSuKwSFkzPZYJno3P5l0L9jQ5MQspAI7div3qbhDL8jBwXCo8jh/iV0?=
 =?us-ascii?Q?6/J4TwLVgd0nVWIW99RAdIMCuKZ4GEoDEMFbVJT9ZZJGev+NARBB2VFsM3Qi?=
 =?us-ascii?Q?OKbkpjZm3iQb2Y+AeXlzMaHxrhviGq1KaiEs0JzLF4QbAVLeMkrxJSfUhLRp?=
 =?us-ascii?Q?kVIOUL6aFBIKvunW+/K+DVlto7x1bEH52xlPXP2a4hSN6ieTnPahth79LrwG?=
 =?us-ascii?Q?jjvXiB/d/nFT18fmlzO4BRRMLSVzmhyDWuh7qPvkXQHS9N05/+CP7UM6yZ4F?=
 =?us-ascii?Q?ilS/MQPyCWyhnWmpjGk3fFIi2l1K9BR14kmZBtgTQTfvJPzO5KT4apRNg7B4?=
 =?us-ascii?Q?ieaTT3uWOj1hyNWlVhrk2gvAB9sUKoeV2RgsWAdEi+BwM3xEg+n411PqdH8X?=
 =?us-ascii?Q?nfq9HBYXNHTr/U4kcRE8Gn1PaXJYpb+1SGgHcW9C8OrrxseGh3k0HcOlx4Mv?=
 =?us-ascii?Q?57vDt8czzTe4G6WAa7zE88ZD/s2VyIgKlMTLDKgIcJ8wU3PQOsxEF0aenIKN?=
 =?us-ascii?Q?1P9sxld0QmIewb6M8Uw4JAQXUWpGMvp1/l/WfDDr3ClzvQC9tuysalg2Kchl?=
 =?us-ascii?Q?loHBOVEVBNK4hADTI0Kb0wxEQNJrY8SinnOvSd2iR50ALUXKv/96QbUXTLcM?=
 =?us-ascii?Q?iir+wW2cC7IMSXr9DM0jcSpsIB1qGP53wh4dABF0/PpVghoPvSbfjIZTM9px?=
 =?us-ascii?Q?Dw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 208c3de6-4a40-4a55-d53c-08dcab0a08ad
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2024 11:24:36.2832 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: w+Ii9r08RZ0BMX46LGqz0ehGYXlyNth+Y9ZmMUzrjzKzEBulTNGMGEFW1xU61Vp+Z1xa738fGX6XlRcYsrzDLuIm3/ykGNEZ8Y39A3tPesY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7802
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721733881; x=1753269881;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=F6Kzx0Ahxg7jxEbrUSSDNDhnPhXEcJYL5u6R5QNJhwk=;
 b=LoiLij08oXHIBrTPWQsMDng3epdWz/wHIKFfSmljb+MOKbuMpx5R3kkx
 8+AfYPiRjiWVQF5gK5Qcc4Gmo6pB4JAYpaJ/L+3U/0e/2oSZGiL8mjtr1
 n1iUbiOozhJffhNs4PO8ZYt0d6LVj810EJvOFClcOeCqCW7Ny9+7exhp8
 GInB+DsdcV45qQriGUYZigb03PIKwU7jvqLZfgC4TkJIhYY1mv1mvLtPj
 NndbWHm61ut6ROWEhIyGHn1kkbC/gsE7T+QdNNiGyZsY/cEq9OABqan2p
 9J6HwMfl/QHY1Om98fiN/IEPi3edrumZnGtbOu4eZw6t+leam43pRMuis
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LoiLij08
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v5 12/15] ice: implement netdevice
 ops for SF representor
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>, "Samudrala,
 Sridhar" <sridhar.samudrala@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Polchlopek,
 Mateusz" <mateusz.polchlopek@intel.com>,
 "kalesh-anakkur.purayil@broadcom.com" <kalesh-anakkur.purayil@broadcom.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "shayd@nvidia.com" <shayd@nvidia.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "pio.raczynski@gmail.com" <pio.raczynski@gmail.com>,
 "jiri@nvidia.com" <jiri@nvidia.com>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>, "Drewek,
 Wojciech" <wojciech.drewek@intel.com>, "Kubiak,
 Michal" <michal.kubiak@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of S=
imon
> Horman
> Sent: Friday, June 14, 2024 1:02 PM
> To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Cc: shayd@nvidia.com; Fijalkowski, Maciej <maciej.fijalkowski@intel.com>;
> Polchlopek, Mateusz <mateusz.polchlopek@intel.com>; netdev@vger.kernel.or=
g;
> jiri@nvidia.com; kalesh-anakkur.purayil@broadcom.com; Kubiak, Michal
> <michal.kubiak@intel.com>; intel-wired-lan@lists.osuosl.org;
> pio.raczynski@gmail.com; Samudrala, Sridhar <sridhar.samudrala@intel.com>=
;
> Keller, Jacob E <jacob.e.keller@intel.com>; Drewek, Wojciech
> <wojciech.drewek@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>
> Subject: Re: [Intel-wired-lan] [iwl-next v5 12/15] ice: implement netdevi=
ce ops
> for SF representor
>=20
> On Thu, Jun 06, 2024 at 01:25:00PM +0200, Michal Swiatkowski wrote:
> > Subfunction port representor needs the basic netdevice ops to work
> > correctly. Create them.
> >
> > Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> > Reviewed-by: Jiri Pirko <jiri@nvidia.com>
> > Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>=20
> Reviewed-by: Simon Horman <horms@kernel.org>


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


