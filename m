Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WKzLKgIp3mmSoQkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 13:46:10 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EF1F3F98CE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 13:46:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A8B3E84C48;
	Tue, 14 Apr 2026 11:46:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tV_3QFbxPuO4; Tue, 14 Apr 2026 11:46:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0B78C84C51
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776167168;
	bh=HMiMuq5fG/ib1CHmYkEDm0R2OM91aMsYQSnrjE9V2CU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Coc1RcDjzGiC169W/UANrBFOut/yTfOn5NlbIaW/ZL8gWxCu3khRu/qdEc25QDXh1
	 bCM5HBBNdeyNpdxIfyR+2QgQ3JE78o/Uw0UZQ0WcpXUXNEv5IiekWfSRZTmXgSXYvb
	 tXtpUlLN7j94Jb722ZVx7puETFGfq7Jcei9HtcFxGGmVsQTvgEbPvnkYjmgs1rgtjk
	 Wfi3qJ7mImcQUyzU9zCKplDlWas6zcPe+xb9L1yrA1CmHNgwJzfq2Y/p0VvidJm0Ye
	 llQIHIQ3vBUjvaUDKs4WGFtQcdh0iSzalvvrrbYz2H+vQjJl7qtjWi5E6sO7ydzixo
	 yWofYSe8yLxQw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0B78C84C51;
	Tue, 14 Apr 2026 11:46:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 88361237
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 11:46:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6E0B980880
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 11:46:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Wd0JyQgHAtHJ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Apr 2026 11:46:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=patryk.holda@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 660A58084D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 660A58084D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 660A58084D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 11:46:05 +0000 (UTC)
X-CSE-ConnectionGUID: W0HRjW3hRw21Pq1tpTBXRg==
X-CSE-MsgGUID: lRGdFlv5Siq59BzwrZNwyg==
X-IronPort-AV: E=McAfee;i="6800,10657,11758"; a="77002042"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="77002042"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 04:46:04 -0700
X-CSE-ConnectionGUID: xOuV6wMtTD+1n2X12R3ayw==
X-CSE-MsgGUID: /PstuDCAS5+rlQoJederEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="235007495"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 04:46:05 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 14 Apr 2026 04:46:04 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 14 Apr 2026 04:46:04 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.50) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 14 Apr 2026 04:46:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WFwB1FhRPSB1MVObR3h39K+q3r35f/wAz5qmk76KkacVAA7J0F7T8Wa+sIEZIxVPH+0FF8IZUjOBc70y7wr4nCmzyx/uctGaX3fMSn9XxPFmHGzimroyx+WKoTOXy+fnfQYVWI0pDGi3yKM5h3GQPpHj2e2Gf9aYeoqMaNe+ZaqbWUbhgt9rWXRGnZvfCqazH1zMtou4Gf7KHOaF2kbl/V33ZsXNgiVQe7647qn9EQMKOGRQ3OnY4xeTE/kqAJVKwOEux2TmK8WGXHiCVoHikOzckC8DUo64sRh3zqUzwGY+OTrlS6S1xv6CocuoHcWJDxT8MboAUw1V4uAKwOwlPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HMiMuq5fG/ib1CHmYkEDm0R2OM91aMsYQSnrjE9V2CU=;
 b=O7yhZaGy+952+jWSlzR11UduqgbNcC2+GfQwFGapb9xyMK9NQh7wbrlx24b07WtaQzbdk9hmfgD50bK0mfHIRoswOU5dCtEUr9hjsM+6uMRrj2a+xqIbX4dM88KvwxPSia5yk6RVl4nUcGvDoNCVRia5+/75tUV6MYiFbS4ph7bU0XIzYgnev26ZMumbmVZuLSVm08TBYxdUECYz8gxuNrkzjrTVpsWC5+XQGQJg208zRT5j37KUUsyjs88LtTAllWp1KudBmr2E8pDPaRLarsAibt+4lRWMXrHPwq2pLyz5J9HYwZi7cO9kgOn6WluERd/BdteWmhmi/3cVThN8vw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9301.namprd11.prod.outlook.com (2603:10b6:208:573::20)
 by DS7PR11MB7929.namprd11.prod.outlook.com (2603:10b6:8:e5::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9769.48; Tue, 14 Apr 2026 11:46:01 +0000
Received: from IA3PR11MB9301.namprd11.prod.outlook.com
 ([fe80::714b:7d3e:aa0:104c]) by IA3PR11MB9301.namprd11.prod.outlook.com
 ([fe80::714b:7d3e:aa0:104c%5]) with mapi id 15.20.9745.019; Tue, 14 Apr 2026
 11:46:01 +0000
From: "Holda, Patryk" <patryk.holda@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, Kohei Enju
 <kohei@enjuk.jp>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "kohei.enju@gmail.com" <kohei.enju@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 3/3] i40e: add support for
 bpf_xdp_metadata_rx_vlan_tag()
Thread-Index: AQHct8RN+DXoJhVvDEy6rVMQKEawmLW2/ikAgCeayXA=
Date: Tue, 14 Apr 2026 11:46:01 +0000
Message-ID: <IA3PR11MB9301F2BE3E974BE373F483B48A252@IA3PR11MB9301.namprd11.prod.outlook.com>
References: <20260319171650.5815-1-kohei@enjuk.jp>
 <20260319171650.5815-4-kohei@enjuk.jp>
 <IA3PR11MB89865073DDFC1987A6445DA7E54CA@IA3PR11MB8986.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB89865073DDFC1987A6445DA7E54CA@IA3PR11MB8986.namprd11.prod.outlook.com>
Accept-Language: en-US, pl-PL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB9301:EE_|DS7PR11MB7929:EE_
x-ms-office365-filtering-correlation-id: 596a20df-2c02-4d01-62b2-08de9a1b66fa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|56012099003|22082099003|18002099003;
x-microsoft-antispam-message-info: WCXLzFm6Qn5A0KzmzAOJQoBnPYCZLULhEDw/jqdNTwtrkfDaep3z75wgP2pceM4PKIP9fuP8tmVQwU9/Ffx2yuFZn7hR0VwcrHv2vAnzcRVNSvbbdDAUUrN0iiMNkDwUdRUluVSPzSGo0xk1H6KumMwauI4CcXkv00GT80hhvlfWj+N8kX7gBhBDy2KyGaT/5Ttnwog0isn8faI1QXfjBwFAGoJzCQvVbfPGayI/neq6p3J0U6+0eth6eQf+/JXIJCeNvqAF5VvbDi0jNMMU/ZSbAIFfqwoiuIGjEYsAJzfqojGzQ9sukpz6YkivIhhn1qZQb/mJmsoL8N1hVbrJR/rno14ShHiLG5YDibJ+aqiFs2qR0gyVkm6A58sKzMARmYgDF6S1/vIrPrpE3+r/yDi/QZVMu69K/07EVuc0sJ2u8a8ttHR0w0bLef/TUtJv6STEH80oOlo+6c2rntYNK6LP5yIss3QWL7dh93UalTcd3WOckOflXB5vojEpXrAl/TCoIUrTTLkw9bWh3jgQhj1V5C5d6HgBkYHcYR+jV+85r0TDZfZSUVtryp1cfDuQq1zPWupgw+nGgrXkqF/CHYb3KE5Lz8ka84z6M4MPRiTHlRpyGobaMHADBla5ViNjHDNXv2Rem/H3dK5Ff2R+SaNUwMCEHfbvnGnqDGg//iZLGCXWSeAc6fBrWpjPfRVpbppjJpBTUXB7aU/yLQtsYadhgkv+ifoRNO0DoemDhRwmbfuUTfxCPRW2yZRPnjwLTVn/DAseeAtleyxYAGc+4fuH7NchcliortEWkUgNH2Q=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9301.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?xIpb28MjC+8p74J8yJkGJBVDynpeLD2hMBcDv47T8Sj/u32BYQQ8omlfpv?=
 =?iso-8859-1?Q?GuSE34tXpTECdek1xZAe1LkcRN9YNEuaqTDj0e/Rt7uoml1ykXyE10z9P+?=
 =?iso-8859-1?Q?eHt3HrDLPUuImx4/2GwP3teICgjF+C9/qxbA+wXCIILpe3Fza473XPa+Jo?=
 =?iso-8859-1?Q?TRvjLdS5IkYRzftb3E5A/Nou8lWMvsSTbIceiVMYT6Nfn5yhiruiPm0+lZ?=
 =?iso-8859-1?Q?l+tgIxAcciJcb4/5tvYTsG0SzKU9B3fX9r1ghnMQS8cqNpNiVD+j6xAGwP?=
 =?iso-8859-1?Q?0RQl/WBG+iKJwFuXfB/7yRYiYXJ7svDO9fx7QkvH6cp/44YwNTX4yfDyt3?=
 =?iso-8859-1?Q?xCAniXbVHgKwBCTcaNBJ2+eywr4+OyxO2hwFSL6Pf7uZD8nTZAXhaRto1O?=
 =?iso-8859-1?Q?dpCCgNt8TceaKWrqY6Duo40FUKzCfQzcny5buzfhHHNVkcDBvLt8Xg27E5?=
 =?iso-8859-1?Q?g0ShpUMP8cPO5+x6PZMlXaYv+O9e11OnHZlOLsU2gSOoeDxF7+nI+Zh/fK?=
 =?iso-8859-1?Q?G0A1ukse2fwU0ntRdgLKG707uOoDttUumkvTh0tGj6wPVnoKHAO6SGTr+t?=
 =?iso-8859-1?Q?SfwddpasuTl12bvhYHqbNCYQtfpF7pt6I5bnDaRDdlEcIuog00x0nB8QLl?=
 =?iso-8859-1?Q?ZDMmwXrftQk288oc9dZdsBx2J2ZqpWa0/xHqnqbSsC1XHM8J8BUpKVeVLk?=
 =?iso-8859-1?Q?gFllGgbC67BQVlclhg6jGD5fb3nX08DtROP/qjO2uRhXE4r1UkL6yZWUN3?=
 =?iso-8859-1?Q?YmK/kF++oQ9WvW6aP3duK/+jxzxaNUKDkVSDpcp30TyzL3vGspQUBKfff/?=
 =?iso-8859-1?Q?+1BSK24kl5FU84H6K/1ZVkJ5pIMcyjljuVa8QBiSKb05W/g2C9JuY+Cnrw?=
 =?iso-8859-1?Q?Iu08MRkWyAWsbStIPtyE/VuWwVgz4+1cWCi+XSNcSGCztA6ImBBXh+jdKT?=
 =?iso-8859-1?Q?mUneBhMTzI8foLj78lAL1ojhKbAEs/2BlfKvsvrRbukoFMjAjHEiK7gWWW?=
 =?iso-8859-1?Q?XwibwZIOZJ+niiKCIzORPlzOBFTS5COj4ZsbCUUPcrAMSz4gtisbVLDWPx?=
 =?iso-8859-1?Q?Jr0tPIrwlWwIUttfyYylTAgPW24NFojb3QBRiMtkBFrYG6Ukma7ctdKJqi?=
 =?iso-8859-1?Q?90Gp5Rcw/4HIfZGe1otrf9GHeZ3K/C5htb+e1ClUsWxWn6EMhqJ33oMiPt?=
 =?iso-8859-1?Q?XEO/1ghRhrbRk6cfX/vr80cTLrKYHOtaPD1dfYPKeb6+54eXP15OzFIR6J?=
 =?iso-8859-1?Q?Ek2GjasmQTZQVaf6Lq72uxhuCPz4gLUfbuRvq1WTCpB99k3zVADfBuNOZ3?=
 =?iso-8859-1?Q?PxMqEfM1RN/eYjVUX7JxsCgwTyjHjHUbZmuF4oZ/0jnSi+ISAYr8VLSFfS?=
 =?iso-8859-1?Q?1tsjARjdSzkKbql93ksn+GAgYqw/Vlpu6+88qF8V0gFxcEUTLRzrNKsQ6Y?=
 =?iso-8859-1?Q?FWPKsmbMo3lyIkSmmS9I1FcDWFlzL5/2VyI2mz7FA7QR+7RvkUuKuKXgJv?=
 =?iso-8859-1?Q?MRJqsW6Wa/PAJM6WPGqbuXJUWru38PcTAcQr3cIcsVMOCMFmm50BKLUKN2?=
 =?iso-8859-1?Q?yDbm3X7hHMFMd4hsEkyyE2erNnpwHyE5OmyBfXAIPzBqVMfgsqOakRlpWd?=
 =?iso-8859-1?Q?MMaR4CoH/uf3AhjQ3GTMhaNOiQ8Oj6iJ0wZouSAH7tRWRHvZixpKCbqk72?=
 =?iso-8859-1?Q?SMq73ceYt0VjM7ITTQTL1RvNiAj8skdFWYCShFe9s69GNbITnBwB34byBh?=
 =?iso-8859-1?Q?+k7nbRHEeFlIz/PH3M6HWYPNshOHWBaUrVBs9sZfywLX3sXN2ExZumRbHz?=
 =?iso-8859-1?Q?Wt/UXaaHpA=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Bd1jrbvEksOvrqXaYfJHiTeF5tuL99zmnyEO54sGhbn0agJKveAVTC+UFE6wQv4tDBdWsy7xwptB2/CEJUGosu/P7HgXRXcv9aQln5sbfumZz/zt8o4oVBwOk9jPuJJXqXFGYiusGzmCBF7/TXn94Td8ca0adgRs/pzI1KxlH7Q/ImcshKXyv/XVm9FjU02JVMAuKlTpkKqbYHpCNyfon0UblOR19A2d9yOYA34blsST1zw+yYl9mnEPqXASWqDxM3gg0rIr8xSMv26UdnuLznUkKrVoWOgz1nN106xQgVV69K3fEK6M9dylwbxE1py+L75h44FpV8NDxuK4JB5Vtw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9301.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 596a20df-2c02-4d01-62b2-08de9a1b66fa
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2026 11:46:01.5471 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: z0OF1BZIfzehRGyW8vVjl2qyIYunwPvkriRWJh9FPutLg9dRyPWOc1l9ABnDy++sd/E8zrG4h1iYYFjzHt7sYA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7929
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776167165; x=1807703165;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cuCCP62kP0sSMxFXBbVtoyAFlQgwmbxIrS9XAwhce8c=;
 b=gi37TcTZwuAG0jfULmn7Kp/b3o73KpZualYyO193efWQPqXJc6YW96Qr
 7ZChPanyUgg60A2Muhl7GkFDn2lbxra4Z20tWiBUNnjf1uL6igI1C2/k9
 gjJQmocT7JkBP4pYandI2DxfcUwBcluCZKdNd2OE1wi3RHyulmPAMg4CQ
 GDH9i/14nbVaGK+KRmjVAF5J8zItslY/mUjKuvCp9ZI7ZKzb5F54Ck2wa
 BHHF7/CsEumI5UhpubJ1V1PAm0cx/lJ1lp+nY+lFu5ZsTfmSeNBfzC3Jr
 Hedavxq2XGAf9PJOyXrwJhFOkmnXjhISLgw4ejowJBc7OmITJky8S1e+A
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gi37TcTZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 3/3] i40e: add support for
 bpf_xdp_metadata_rx_vlan_tag()
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:kohei@enjuk.jp,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:kohei.enju@gmail.com,m:andrew@lunn.ch,m:koheienju@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[patryk.holda@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[patryk.holda@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com];
	NEURAL_HAM(-0.00)[-0.971];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lunn.ch:email,davemloft.net:email,IA3PR11MB9301.namprd11.prod.outlook.com:mid,osuosl.org:dkim,osuosl.org:email,enjuk.jp:email,intel.com:email]
X-Rspamd-Queue-Id: 0EF1F3F98CE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Loktionov, Aleksandr
> Sent: Friday, March 20, 2026 7:58 AM
> To: Kohei Enju <kohei@enjuk.jp>; intel-wired-lan@lists.osuosl.org;
> netdev@vger.kernel.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; kohei.enju@gmail.com
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 3/3] i40e: add support =
for
> bpf_xdp_metadata_rx_vlan_tag()
>=20
>=20
>=20
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Kohei Enju
> > Sent: Thursday, March 19, 2026 6:17 PM
> > To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
> > Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> > Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> > <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
> > Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>;
> Paolo
> > Abeni <pabeni@redhat.com>; kohei.enju@gmail.com; Kohei Enju
> > <kohei@enjuk.jp>
> > Subject: [Intel-wired-lan] [PATCH iwl-next v1 3/3] i40e: add support
> > for bpf_xdp_metadata_rx_vlan_tag()
> >
> > Introduce i40e_xdp_rx_vlan_tag() which takes the same approach as
> > i40e_process_skb_fields() to extract the VLAN tag from the RX
> > descriptor.
> >
> > Tested with X710 adapter using xdp_hw_metadata, and confirmed that
> > VLAN tags match between bpf_xdp_metadata_rx_vlan_tag() and
> > skb->vlan_proto/vlan_tci.
> >
> > Signed-off-by: Kohei Enju <kohei@enjuk.jp>
> > ---
> >  drivers/net/ethernet/intel/i40e/i40e_main.c | 19 +++++++++++++++++++
> >  1 file changed, 19 insertions(+)
> >
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c
> > b/drivers/net/ethernet/intel/i40e/i40e_main.c
> > index 6b7e34b16a8d..3749f32ef95a 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> > @@ -13610,8 +13610,27 @@ static int i40e_xdp_rx_hash(const struct
> > xdp_md *_ctx, u32 *hash,
> >  	return 0;
> >  }
> >
> > +static int i40e_xdp_rx_vlan_tag(const struct xdp_md *_ctx, __be16
> > *vlan_proto,
> > +				u16 *vlan_tci)
> > +{
> > +	const struct i40e_xdp_buff *ctx =3D (const void *)_ctx;
> > +	const union i40e_rx_desc *desc =3D ctx->desc;
> > +	u64 status;
> > +
> > +	status =3D le64_to_cpu(desc->wb.qword1.status_error_len);
> > +
> > +	if (!(status & BIT(I40E_RX_DESC_STATUS_L2TAG1P_SHIFT)))
> > +		return -ENODATA;
> > +
> > +	*vlan_proto =3D cpu_to_be16(ETH_P_8021Q);
> > +	*vlan_tci =3D le16_to_cpu(desc->wb.qword0.lo_dword.l2tag1);
> > +
> > +	return 0;
> > +}
> > +
> >  static const struct xdp_metadata_ops i40e_xdp_metadata_ops =3D {
> >  	.xmo_rx_hash		=3D i40e_xdp_rx_hash,
> > +	.xmo_rx_vlan_tag	=3D i40e_xdp_rx_vlan_tag,
> >  };
> >
> >  static const struct net_device_ops i40e_netdev_ops =3D {
> > --
> > 2.51.0
>=20
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Tested-by: Patryk Holda <patryk.holda@intel.com>=A0


