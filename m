Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aDZbBqvPGWrgzAgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 May 2026 19:40:59 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BFA3606B0F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 May 2026 19:40:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 604E042395;
	Fri, 29 May 2026 17:40:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LD_nO7wsY_UN; Fri, 29 May 2026 17:40:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BB8B842396
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780076455;
	bh=den8vgC7gisdOJylEdI8yRXK/J62y3bbN0X+Eu5gCZo=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gv+wLvbZVfD6xgANE7FRNFRXJd2yzAHagXfELpW6J0z8WBF8JgbIw6k9DArG+IHoW
	 f/eKuBLLY737roFw57hCW5kvmHwlQViyJqOPVgb3WXHrjrOzzrXCLh5GcJrQUo3W1v
	 ohXvEjAE9F5alKrEXVrpwvzf4S0qh3yRAhSiDImctVIFnjLrfSeYMi0Reb/tJMBZRs
	 bHwQ0E6a2Qci+ZmgIreIomiv6F5ZJnYETgdxfwdl1IeXUgcTnf6FDp/U+vXZ/kAXGV
	 /VTXfEdsDcyjjPNxzDbqSSvKAmG2YQnz9SCObmJ4muoqyOjMFeNTEGOf4LIerBQnoV
	 5zdaCCy4uJm3A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BB8B842396;
	Fri, 29 May 2026 17:40:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 428FCD3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2026 17:40:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 307C683518
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2026 17:40:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QEV5OKaiZgA9 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 May 2026 17:40:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=alexander.nowlin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5C96483508
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5C96483508
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5C96483508
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2026 17:40:53 +0000 (UTC)
X-CSE-ConnectionGUID: pHyRuplrR7q6Y7N3WHAZcA==
X-CSE-MsgGUID: pooXL0b/QOiwV4aGrCAaLg==
X-IronPort-AV: E=McAfee;i="6800,10657,11801"; a="106383980"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="106383980"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 10:40:52 -0700
X-CSE-ConnectionGUID: i9FZcXBbRDiKOnkLpKp3jg==
X-CSE-MsgGUID: M31DxPFGThGDTVm36gbF0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="247197590"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 10:40:53 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 29 May 2026 10:40:51 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 29 May 2026 10:40:51 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.58) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 29 May 2026 10:40:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lcHeq+Xx57i2iU7Qaz0MPhL2QG1LH/LgaaAcOr/fSKQhS/rI+1JG4HX2eQZicQVEKZYjJ784t6DMfwAwuv/R6wvYCBxH++Bd+kK9N1AQortvQbGQZsjCQuv7353QuoQZFyA8Uhbj5gpzlulXCIfGECsRDk78wX84vghVobXYcTQTP0W4j4bPbAEdrxo7eMzsvKPwDYiPj39aGKHFdJuX+T4KcU8evt+uC/16+4p5C0aiypGdiBQ1QGONODL38jfiPO4rg0zVfAEAZ60AZ1B65MIZQ/GibKtTSF6bFIKvs0DdyOrCBaqE5+5eAnHjYvx8mWhyGSurrlBfeDHRhUXT8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=den8vgC7gisdOJylEdI8yRXK/J62y3bbN0X+Eu5gCZo=;
 b=i6TBzDORc+0bvy7DjZ7C/ywoLZ5tkwFG1dY7iP61nKm1WQ2YduOb+w9/7ZTxOwrkSCw0f5AK5jUiyk76iPPzSWWeq/JrDztHtnznYkQoE2iNSKXARgq/aNjZ9qwNInMQzj7xpOYHJ1QoMPDf2pkCeLo3GKfDyGLN2MnMqsOql7j4N6ho2JO6Tw5GSnp/k8M9uLOZUhST92rO2SzG7O821QPHvlL4v3q9mQKo6xYWLPpAi3bipqOKSv5TLV4KfR7BpwivW1Sq2ZTK9zMUfyUaCnLal2smS2v/GZCVSCWw+MGndarS4MzzpXCF0a54t/QJH3ccoK13AsKtigcDjzyw4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV1PR11MB8790.namprd11.prod.outlook.com (2603:10b6:408:2b1::16)
 by IA1PR11MB8173.namprd11.prod.outlook.com (2603:10b6:208:44e::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.15; Fri, 29 May
 2026 17:40:49 +0000
Received: from LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a]) by LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a%4]) with mapi id 15.21.0071.014; Fri, 29 May 2026
 17:40:48 +0000
From: "Nowlin, Alexander" <alexander.nowlin@intel.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Penigalapati, Sandeep"
 <sandeep.penigalapati@intel.com>, "S, Ananth" <ananth.s@intel.com>,
 "alexander.duyck@gmail.com" <alexander.duyck@gmail.com>, "Cao, Chinh T"
 <chinh.t.cao@intel.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 02/10] ice: initialize ACL
 table
Thread-Index: AQHc6SBzBK2/2KVC+kC4sDG+OIHw4bYlUf0Q
Date: Fri, 29 May 2026 17:40:48 +0000
Message-ID: <LV1PR11MB8790A63BDCBF9C66F4912D2290162@LV1PR11MB8790.namprd11.prod.outlook.com>
References: <20260521115000.4637-1-marcin.szycik@linux.intel.com>
 <20260521115000.4637-3-marcin.szycik@linux.intel.com>
In-Reply-To: <20260521115000.4637-3-marcin.szycik@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV1PR11MB8790:EE_|IA1PR11MB8173:EE_
x-ms-office365-filtering-correlation-id: 98f2d983-c62a-4b24-dd6b-08debda96bc8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|18002099003|22082099003|56012099006|11063799006|3023799007|6133799003|4143699003|38070700021;
x-microsoft-antispam-message-info: 34VGp0XEryWlgXD6Bs8fLPObEPhW+oTKmr302V4bi5SypH2iBUrYVBVPGzM4uPXMv39cmw5LmUNYKO2Reo6DX45g35KvnOoHxNdVs3/21CVtykQLGI19zmKLuzVhMnLOB1NIeVf9I70kAMXA/1DdrstnJmD/2pI4GfYti9bdcIKWpRBQR20GcEK4M18M/JinnWuSoVjZD2vR3fAT6THQL+bnMyBxGdQHTJ55EgnFg3fjdefN0G5BhLqggxpFpryh5Gwwp26mG7pdAiSIWVtzwLQYJyGd2s7HXRxFpHKlfBROryKk1zL9DqmELzHr20fTGzaShFYe/lP8+KgRTiNBAOlLwqMQTARcB4hHnCL/C+BTog7DxnjlvK9WHrTs9uR4A5jHo3Uq1zcxrl34infSrTjl1gOdgVl/na6W3jO3h5F8EfjqoboY9ccx93NIjer6GTc/Vqn0t+pgtkaSb1pBP7kaYmWbnXYyv4s1h97feG6IPmBTl6zSnSdcZ/mJr+soQQtSn4H5JFwnXe/8oqOofyOYuQwrz1twwhdXTkCMDeZY6QZoXylkZn5xY4Oi6317ENxm9GcuuwnvY0qtBrUgDA4qlgjhjTBoB/7b230nMGFEbCrt1VjkFXb+VmLNBU4Jnyn8567uBNIC5bZ7P1WitFavdLL+dXIel4BsQqB99uKYuXqwdtCqT1RblQ2U0uiRAIh1lTdp1/GDUFq0nBOrgBaYZ0oLbdSBbZG9tNnh7cTBiVopPowPzuGUsKR5epZ0
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV1PR11MB8790.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(22082099003)(56012099006)(11063799006)(3023799007)(6133799003)(4143699003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ibWOUh2LMvmd2P0dPPCT/68r9QgDwqjl/eIALmEU0rj2o4SYC4syZqrw6+11?=
 =?us-ascii?Q?qF+BkUqAlaInoUkJFYH0l41qYClznvTzZQ0S112EpfC6XE/LARvdOfxJjsZ2?=
 =?us-ascii?Q?SjuvZdkdT3XEQZ7UUUEI81bTtY8w8NqtPiKxSv6uR5pU71qjIsBrNtx5Gcpd?=
 =?us-ascii?Q?gK5p1ik0UoqcV9Nb+BcXhHVrEHmY8lpH3dBowUZ19TMA0eajpFOvhfwybQcn?=
 =?us-ascii?Q?xXPeM6S5CUWtgdPxZ1ADjazCpEOJD0OjnZGRwxUNCVhpWFAFDgJh1bwWIze2?=
 =?us-ascii?Q?zd6cP2KZtMp7CgCvR9waygaxtjJI2NvY8l05W5y7ImrlHrfFL2JRwjsHfu5X?=
 =?us-ascii?Q?22xrJzADOo0p/QZs5ipH6cmOZi0UmN3WY85w/hVqfwB7xugA3n9kkFYVO1Fh?=
 =?us-ascii?Q?d/tcCnh/+FvQhjhZHFMYL2pCYrbyRdFczxQEvsk/MIqjo61kCORBm5SbDUlq?=
 =?us-ascii?Q?X8uLfQcum7THLTwTJvIQZ4jfOiXowainwdR+AnQya+Bb/i/3HoJy0cir0KNs?=
 =?us-ascii?Q?pPKcLG6yQsXWxGJavlbuRpUt0OcwkgNI6YnhvFal+ab120sqstqDZRuiUxVS?=
 =?us-ascii?Q?m6Uiqdl/yri2R/yt7AkXaJZmqewbim7p20VjyCupMwNCIiqHSyvQP6KSU1K9?=
 =?us-ascii?Q?zpmldSJnREQApCZrkAR2mo1DsvSWaw1b/FNTpOLdo3FpF9ZKu0KqOdOzcleT?=
 =?us-ascii?Q?c5CPfMyWtIYEQf7Cg9yazbsi+e3GPHrm1jFS8a5vNUuWMIvTfYODn4JXpvKw?=
 =?us-ascii?Q?YQFAEMh2igv7aCOXuCwXg7myWnFOpsY8jLKZK2HuqBd5KzQfTudNz+qlLP1P?=
 =?us-ascii?Q?3RQm9DmnQBfXIiSpkX1xkIcwQVGH8Y/1hruzkbyl22Ih8rGvCcPEUrkK7e6G?=
 =?us-ascii?Q?TxbgbkT0WLjDX8PsBV0mczoNhv/WezshzY+CDllFOERP89N1ZK86+pLldFw+?=
 =?us-ascii?Q?v2AOflTl6YMoeXREGCsStpBgpm6Gw+5GO4OnwwrKfdsP6BCtqLOeXie/qY0U?=
 =?us-ascii?Q?ncez7WuquER+6GdOD+Xx18TBhTgRZwPMqjul8Yl3/VJbLLpnFcK/s+o+V7cQ?=
 =?us-ascii?Q?o7dx526JbPxfYtptM/ym1va1Yb60PpHZEOlNbRKVs4USkD0zutOtUUcRpcps?=
 =?us-ascii?Q?O4Nh80yfHrI4S7r0AzBx1jyQedO63B6hCP63DDGxufBiesADi3h0G0zwZvHO?=
 =?us-ascii?Q?vKOtafj31CtmscC/bJLNbXDOJ90OiBwhLXFY7k4zBhsVS9cY3xC4IRf8DRvT?=
 =?us-ascii?Q?oIflP7h2wje29cdq9ox9AJSlrcG99I9NG4BUcX5Jrw3nEVicAr4JF42ryNXE?=
 =?us-ascii?Q?TjS7SlCz+74q7T4XgtA49VYiVCrAiYd83Y84LasHxW8FMAvgo0456OBMQznb?=
 =?us-ascii?Q?5Vvunl92S9/eLalDnsYvF3iBkiNv0K0eFW1jW1TC4lwiZkp7/vDaacVjf0oZ?=
 =?us-ascii?Q?TEnYEA+hfT+PA9+QCSwri2ZPK+rCJL8IggxwBALjaKGMNoijWkTM7svj8OvB?=
 =?us-ascii?Q?MwMlmmILbpP8RPJAZUwnePSFzRgl+E7cLcubJSAkYFj3YUhVN+pTCBb3skei?=
 =?us-ascii?Q?faJ/eJzc+PVaAMrfTcquGXQXOQm/dLluKlxg71Bl08hWz+SPWPLm7OE3heSn?=
 =?us-ascii?Q?3Uv+3VkXxZ6EwWMNz3nlGrhSZvKmqkwvRDNFm+7UyyFKkIKRdASyKb9ZJdP6?=
 =?us-ascii?Q?PGvKkr+NuI+8/qFH50atBKrNSrguwKxtkRWqQXq8YB9RmsfYzdIngLCovfj8?=
 =?us-ascii?Q?+7ZAnjwdrQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: aR1uxhbOc9bOg9LecV2L9k7e9VOxaimZcFqn8muA/ra4fjQXq1bbDkQ4r2Z7s0XjCgz7ZeUh4bOaUHnhCz3DYsQSxRTshpk5+hE/0NzyTCEHd1VYdczZNEhbYs1gNB9P5uoApDLEdJ6kwYvEEIwlz4aHtJAVjY6I7tIuenAK2Lop4JEEJnqMw4WakzDftn7sMrVGcTNCu6L14cUEB2mPLWBubvxclknu3r3j41IMRCJ+vHnBf0d1CRXnxiJu2DoQdpUCvKM9PvWFbFY/27I9oc4tW2F8uJULpdd+RTwP6EliygGNa0RUrSacswda/Xm5xcNNQrTTuDHi0i5auYQwUQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV1PR11MB8790.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 98f2d983-c62a-4b24-dd6b-08debda96bc8
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2026 17:40:48.7603 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nLVtg3skOBA15TAAazLCaityqiz1Qq/QHVYtwhPVShyJEf4T+ZysF1b/pTzwwYUvQe9Ou3iEAUlKJGLXh+TC14BiCObaVeOwJW+q1jGHOVE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8173
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780076453; x=1811612453;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VdmHJt/fsmzO0JHQU1AL5+adqxO5gupC732Vs76Hyis=;
 b=ELrjVTTePnA/mJp/w4B96I2icTPuS3TJeN2dJ2Crx+pXFP7w8Xw5Ot0b
 PqmWnkIq91g67lgpp5v16HsqigZpwYd5t2e6II4/oRT3UXX8BVWNm/TGf
 ku+pfJ1zAPeO2o7J78+4meJ4ZK3k8/uzZ42+pA6Rfdh2TAM+NNAD/4fyS
 g7VaOcaSC7Y5zRr2l29fiA5AheUJmf1UPSuTn4eUPPyPwenZKLOYH/rxC
 pFdfra544nGXYxnT8tm8FIizVrwDJEEEQb9kNqvNxNIpyKbTH3f8ro1yU
 3HfoUEthzkyWQ91K+FjbGnQ8GYb0+PUxO+PtIWCWnoF5iUNtxKfV/+Yi0
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ELrjVTTe
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 02/10] ice: initialize ACL
 table
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:marcin.szycik@linux.intel.com,m:netdev@vger.kernel.org,m:sandeep.penigalapati@intel.com,m:ananth.s@intel.com,m:alexander.duyck@gmail.com,m:chinh.t.cao@intel.com,m:anthony.l.nguyen@intel.com,m:aleksandr.loktionov@intel.com,m:alexanderduyck@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,intel.com,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,LV1PR11MB8790.namprd11.prod.outlook.com:mid,osuosl.org:email,osuosl.org:dkim,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo]
X-Rspamd-Queue-Id: 5BFA3606B0F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
arcin Szycik
> Sent: Thursday, May 21, 2026 4:50 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Penigalapati, Sandeep <sandeep.penigalapati@i=
ntel.com>; S, Ananth <ananth.s@intel.com>; alexander.duyck@gmail.com; Marci=
n Szycik <marcin.szycik@linux.intel.com>; Cao, Chinh=20
> T <chinh.t.cao@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>=
; Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v4 02/10] ice: initialize ACL =
table
>=20
> From: Real Valiquette <real.valiquette@intel.com>
>=20
> E8xx hardware provides a Ternary Classifier block for implementing functi=
ons such as ACL (Access Control List). In this series it's simply referred =
to as "ACL".
>=20
> ACL filtering can be utilized to expand support of ntuple rules by allowi=
ng mask values to be specified for redirect to queue or drop.
>=20
> Implement support for specifying the 'm' value of ethtool ntuple command =
for currently supported fields (src-ip, dst-ip, src-port, and dst-port).
>=20
> For example:
>   ethtool -N eth0 flow-type tcp4 dst-port 8880 m 0x00ff action 10 or
>   ethtool -N eth0 flow-type tcp4 src-ip 192.168.0.55 m 0.0.0.255 action -=
1
>=20
> At this time the following flow-types support mask values: tcp4, udp4, sc=
tp4, and ip4.
>=20
> Begin implementation of ACL filters by setting up structures, AdminQ comm=
ands, and allocation of the ACL table in the hardware.
>=20
> Co-developed-by: Chinh Cao <chinh.t.cao@intel.com>
> Signed-off-by: Chinh Cao <chinh.t.cao@intel.com>
> Signed-off-by: Real Valiquette <real.valiquette@intel.com>
> Co-developed-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> Co-developed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v2:
> * Return -ERANGE in one branch in ice_aq_alloc_acl_tbl() to differenciate=
 error
>   codes
> * Use GENMASK() for ICE_AQ_VSI_ACL_DEF_RX_*_M
> * Use plain alloc/kfree for hw->acl_tbl
> * Call ice_deinit_acl() unconditionally because ICE_FLAG_FD_ENA can be
>   disabled during operation
> * ice_acl_init_tbl(): remove first/last variables
> * Merge ice_aq_acl_entry() into ice_aq_program_acl_entry() and
>   ice_aq_actpair_p_q() into ice_aq_program_actpair() - wrappers with one =
user
>   make no sense
> * Rename ICE_AQC_ALLOC_ID_LESS_THAN_4K to more sensible ICE_AQC_ALLOC_ID_=
4K
> * Reorder members of struct ice_acl_tbl to minimize holes
> * Remove ICE_AQ_VSI_ACL_DEF_RX_*_S - will be unused after switching to
>   FIELD_PREP() in "ice: program ACL entry"
> * Replace memset() with =3D {} in ice_init_acl()
> ---
>  drivers/net/ethernet/intel/ice/Makefile       |   2 +
>  drivers/net/ethernet/intel/ice/ice.h          |   3 +
>  drivers/net/ethernet/intel/ice/ice_acl.h      | 117 +++++++
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 208 +++++++++++-
>  drivers/net/ethernet/intel/ice/ice_type.h     |   3 +
>  drivers/net/ethernet/intel/ice/ice_acl.c      | 136 ++++++++
>  drivers/net/ethernet/intel/ice/ice_acl_ctrl.c | 302 ++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_main.c     |  49 +++
>  8 files changed, 818 insertions(+), 2 deletions(-)  create mode 100644 d=
rivers/net/ethernet/intel/ice/ice_acl.h
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_acl.c
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_acl_ctrl.c

Tested-by: Alexander Nowlin <alexander.nowlin@intel.com>
