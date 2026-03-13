Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YLziKOz0s2nYdgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Mar 2026 12:28:44 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EB283282394
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Mar 2026 12:28:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A955640A7D;
	Fri, 13 Mar 2026 11:28:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OgIEK92OSUe8; Fri, 13 Mar 2026 11:28:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D0D3040A87
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773401319;
	bh=eLKqpI76kPuzNfIAVG3L2PiJ+rwdpGI0swPBYtqMDNM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=D6MSAZJJhVDHYqfZCO/lS4e6Tapkbk5igHHoT7ixZyJKn6Iy8XAB3AYF+dK7eLvuY
	 LJxNQ68HvQ6GTCDInTOVhveAGoEdNH1xY29ua2E7G66dbCt/KEx4Iwyc17cbcmlhTE
	 2EIb+wLCX9LoBNMupwHKDnvU/5LSR1SNgqyWEOX1JA6cC4+wl28nmr4J45rBi78hLW
	 ziKQNtQfkhWeSolYcyuTKrA8HRrb38d0qwGFhM6o/A982p0uXinzACDzuwqvEKptiP
	 6o6JUe9TC9V89obEoaNR/KOk10cylkbCevd5IoJYOSNFpzM6fZI5/+oP1xMF/ol9L1
	 55FYVfQTmOdFQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D0D3040A87;
	Fri, 13 Mar 2026 11:28:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 13E151AF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Mar 2026 11:28:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0559C403D8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Mar 2026 11:28:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id q4OEXnmjDtdP for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Mar 2026 11:28:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 36B05403B7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 36B05403B7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 36B05403B7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Mar 2026 11:28:36 +0000 (UTC)
X-CSE-ConnectionGUID: G640T1w0T2aKs3KF9FL8ZA==
X-CSE-MsgGUID: FnWgAKrSRSW9+pCFScHp/A==
X-IronPort-AV: E=McAfee;i="6800,10657,11727"; a="78397616"
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="78397616"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 04:28:35 -0700
X-CSE-ConnectionGUID: H2ZCH0UqQ+iAdod9QKG1PA==
X-CSE-MsgGUID: knbbFvjoSKaZvJLX3KIviw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="251654436"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 04:28:36 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 13 Mar 2026 04:28:34 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 13 Mar 2026 04:28:34 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.49)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 13 Mar 2026 04:28:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QzLBI7ysA6ahOEpJNcyEbOuyUONA38ZJ9xF4Sy8NzNxVxs4+XU7XxvYeKV5bVWHLlcb9m03/kpQiKmrKOdG5Kp6UzxORphck9KuCsWgkZG/wMxa+fZAR8NwGqWFitoqoncglPKDQ+XbvtRNK+3w+8i12ljSQigdJcxH6iX3NyxcBwClGiGvAE+i+slqLhvW/Z9hkX1y95Bbuh7BGWV0Oivk66fJmTUd81cRMJVLJGkvDDEyzcsxuDOF3x33JF2T4zn1tn/oYV1VJQKTa34tHpYQM3As7ECo11Ms/zTyAuX+ZtjR+671lHhJQL1nZpAvEnCLz6pIm/6tIiWVLCVOhPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eLKqpI76kPuzNfIAVG3L2PiJ+rwdpGI0swPBYtqMDNM=;
 b=CkcF7ksGD7Ahdwa4cV3AKrNW/RAj7P6PWQ7hr8wjN9AkeHuvuTd8G8ifoCdIoYwBWW0v8SjD3Wb7i3z60QytwvYAdJVtwSjpky8o/3IyNaJehYJMpeO2m/r4Ht49N+4mykN64Ia8icONENuT34Xf7JpcaWxgqdWJkH9FFAF+8kbGqY3VVRDiPkSj/qNaV1aB1O1D3B3ggLfk7B9QbuiTgqrfZ+PreBHeXCedOMwFjdHLzpRtGR8Yczl8C+l24R1WT3LvhQtczpXDmHc0w5cZ44SYswBQgGr/v9NDggKjKypINMBy/ZtOxPGPDnCyh72aolpxuK2ihIlNM80Py82pEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH7PR11MB6449.namprd11.prod.outlook.com (2603:10b6:510:1f7::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.13; Fri, 13 Mar
 2026 11:28:29 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9723.006; Fri, 13 Mar 2026
 11:28:29 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Jakub Kicinski <kuba@kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
Thread-Topic: [PATCH iwl-next v4 1/2] ethtool: treat RXH_GTP_TEID as
 intrinsically symmetric
Thread-Index: AQHcsgL5WeTVzSCjfkSLA4GrUYOeK7Wq+NyAgAFba3A=
Date: Fri, 13 Mar 2026 11:28:29 +0000
Message-ID: <IA3PR11MB8986CA12EE22E9C07BCE7E83E545A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260312093101.1589970-1-aleksandr.loktionov@intel.com>
 <20260312093101.1589970-2-aleksandr.loktionov@intel.com>
 <20260312074225.27a4a7b3@kernel.org>
In-Reply-To: <20260312074225.27a4a7b3@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH7PR11MB6449:EE_
x-ms-office365-filtering-correlation-id: 485c0acd-86a6-4aa1-8c40-08de80f3a6c5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|22082099003|56012099003|18002099003;
x-microsoft-antispam-message-info: JxEWHJt6UgruOQdDLhU9R3jRDIH2+9aJa0csQwosUY/v0QPUylQUfbksQ7OGALGHSgCmygsD4Hz+HbjbrKn/9YUbaDvNkMA1q5Cks+f9hfh6voVldNnEm3zV67ePlzJXRdyZRifit4WdovkyeEDg4RLSXoQ/fshVVuvQEHSIZkvIU2NeYqTJFMAWKYLG6k7VDyvFmLsCpTrwbErLADOcTrbepgTj3NUp5XgYn59hAriB8gudKHXfjGb6f4MKNJVep71m0jNok3Bpi/g8axF1FNv4ULaYS+mltJT24CPCgoTTJ3twzsKhYIg1qrooVv1tBCxwxd4ycAIN8r4E+akJZRBl4iZMa+QRKwNvQK7HF726raHn1iI+2Zg++GF5MqFTkTTJvYnaT1VEOASb9QiLdJVpL8ho2YozRnIa6CnJ8GHNSUtAhvXfXAGcz7MpykZOT9P2Vj/dF58avgfzTztfCOE6N9L2aw0zSMnrj3Q+ESbyMAR0+a9EoUViPqxZElDJV4YtG8ZKiAY8KAfJiNh3/xnp5BsKaFGhDqoGuG8vc6tHbrq4Yisr+3yKy84ZnBPj+psWo8XMyjjd/sGc2iEYUhTGKKcTap2a35B0y8PgRIByLZBaWcn61Ldw/bvgqggOdapfbDnHxphLAWFXSJyrBbzdx824+Q/hmwA6sUTdsbsRPa8XcgD6ty4z8y9H3P0R3IP3UmMf9kmPsw/rsGtG08g2I3VLSPMIA+nYpnJqNo5OQqWZbDjd7yvJX941LzJHqYMqFQrPeluiUhpnMePeMBQkBcKfgjVYVWcpiAWW/VQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?cxV5dv8etY4Khq9n6JYLFb+mjwg/mSZtz6zEfcuogqzlTUM6rpe71KvXaiDM?=
 =?us-ascii?Q?BmJ954mPFt2zNwaVSGh1wJsIG5Ic1KElrHNV0i3ieKCgFZnM3r32FRlIGITQ?=
 =?us-ascii?Q?ff4IIhbF6a/8Fa0V87w4QddKzfj9G4Ao0Z+kQd8EhKXyTPwPg2albfXXB7Zf?=
 =?us-ascii?Q?58SNXeydpDhiRViono6GosWQrPXqPcN7lcgWgFV2TnUfxR8m7G/AXbDWE67T?=
 =?us-ascii?Q?MO/WeQ0XyE+bGs5N37HxxgbtSLGeUr9/zidxIqoPaothh1bduZAs+9Y5OA3x?=
 =?us-ascii?Q?BvYFk3GWCUwLuFKdy4IgZP9ksBJdualoZTm7aEszFgp8BKuzUkjMCXDyf3Pj?=
 =?us-ascii?Q?RJfKkrqFZi3JTFiJIo+nRXvgSV/u+IlE/MKdGGyOz3hpC8yqfqSbrhCkKd0E?=
 =?us-ascii?Q?Bye/Qks5zLAYQwC7wZL2E7Tgv9zjg8tVWUMZwd1fXQjhI52zA5zzW/DpjRKH?=
 =?us-ascii?Q?dUphgg9iTR4XSMvd8y7nSzJqcB2hyDoIRbakah81ODhyTow1G/5J5qT8HhCk?=
 =?us-ascii?Q?zVLBZHCLhaQeWjhjre17SbsQf3t7cWd8S6ClVTtFHTlfWxm3naJhs2frRQoE?=
 =?us-ascii?Q?XQZhXPmKOWXyaCX/+1ZODmd3P2nRMii+3pEMLHkDNsRkA9EGD3UfVsItzE5y?=
 =?us-ascii?Q?w8uXudvsOzjHBJ6N2Uh6jDU5i4k66hgjPkWTKFZWYrAXHjBEaYYsWqREbbU8?=
 =?us-ascii?Q?uBwETnKeFSkDOKCPPhtWzfzCrIVPbNAADwyjLWXE8HjPI/tlWyZyyVgxquQV?=
 =?us-ascii?Q?nq8KqxZ71AcwWmLj1jpo828J2v4B5blG6nYXf34cRU5O/An0BcOC+vnfwcRn?=
 =?us-ascii?Q?6lN6KmM7iOGcOtYgpGMH0WVPOWp63yEnXXnuilYsEsXb9IXjAS+DsxDykV6F?=
 =?us-ascii?Q?+TYvjwVRmY7BQLnt3eyzPrRp5u2j3djRzGmE0/XHwagjkENtfcBj2dkxma4Q?=
 =?us-ascii?Q?7d4CLCSycuH/YfYpiETZfm4nYxRvYOaIp/qZrTcpkg39A5+2syhIO2bfPlX/?=
 =?us-ascii?Q?6nhFSzhmVzoe0OQ935EXoLOZCGJqliI8HbZZB8ZY7D3iivpu6boHINfvTLn+?=
 =?us-ascii?Q?n3r3KTJxFyqWdBuQmRwD/RLObch+uwPupZLYyGOxvJX/RjQXpcmCez3TWpAk?=
 =?us-ascii?Q?Q1A5MwH7CpSVmPm7RSBJ8dRhYXs4Fu8S5jhfeE5F7ms7AnwLbl4voRHmj9l6?=
 =?us-ascii?Q?UZZra01RaEpcgpYl0ZzqX4MA2gLL61ICJLQ+OyfNmv2yqErXWOs8Z63/rpnq?=
 =?us-ascii?Q?4b6Xq4jFPPsj3yGWLjsYvTCVt29LVJHvPBZI6nfrqJD0ZdOUHrAxecLfZQGw?=
 =?us-ascii?Q?KPgAaG0HF4BvEHs7TTCgpsjEJwHa/R9ciVLYz4NDBkYlCeI6ClJiNX4Gry6j?=
 =?us-ascii?Q?ajiPDJ/De7O0UBbkNmiNSiBPWtwoOxhbbEV0pwiofPMP+DfMDU9LwpsSo3Aq?=
 =?us-ascii?Q?vrNnJc4JDzRjfZ/+Yvxb3rvqlk9wHnNgzFloDVtWFn7tjsTkdFSsEk30iYcJ?=
 =?us-ascii?Q?nIncvA/dE3Xu5I6Y8mLM7gWEmSr7HuIrXEC3vskXOi5x81lSI6+6lI94syjF?=
 =?us-ascii?Q?VhWwhjwULOPhfscMISMRXlTP4CWu/FLSAsAe4kfaRI4QPWHjntlIvZQP8okh?=
 =?us-ascii?Q?TrzCJeQX+3ETDKZp+PbQNEOsVckHrz+A/ms6EMWmoIaBwhFmO6Pe5k7NJ9RV?=
 =?us-ascii?Q?EWnsCd1m512SUMh0cDLxnSe5bAb1TYfs4FWhwv4+Kibi1G6dOo4O1x4AXUb8?=
 =?us-ascii?Q?js5i1Ha4HwmoHVlp2rOUtmVzRXp3Y9Y=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: cbCpykp6UwBgcIQFIGymreM3d7ojxK23AteL8umw8dxpDi1KwISM3RZq4nN4pjlhL7aVH5i6/5Hg9AyItR8IBzQlixnM54YwK2oVK7qrTxBTHKL/rZHQbwCMF2ktlECvwtfsQiFX78aqW/4oZaEitYGNTpk0ulKES7pfP9RBCdxQUfZkn7RHEgorqR94YkEprp+tmhkBmLvwpwxaE1LG+SIgZnnuJNgVTzI27b1CtNPIha46w+xbQESmBuLEc/aFmnqmi4VGX0qRdBgfRq8xFYcaGmS1RXFpGhNrc/s+X7Evm08P0LNVvLynSYYeQfJFjAQRJipCmUCUlev+308zRg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 485c0acd-86a6-4aa1-8c40-08de80f3a6c5
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2026 11:28:29.6254 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kEGFOV7KgAX67oinsIBFmpZaVFv1sfMrJppG/PBDn/C9Uw1r5QmVK2L8B4eh99jP7wPK4LBkpN5Fe4yr3oL2oaIqSu+pHoy/LwE/gTre+nM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6449
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773401317; x=1804937317;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bvpIu25LBiMss+hgD3M62gbe9LiakN3OU3LnMEsBq0Y=;
 b=kHcCNPDwSiObSZqlwD0DxD+oYF1avdtcz/vSpcN+co6De6UOA4G0HaJe
 jsWXgTPc17om5iAlofWuQaGkiWMWbJYCetgoZN3r5/mzCcyshPHyfPJHM
 i6jd47G17aMU0OEaryFWXWuZEH4wVc3U9hHq3ifP7LtR8A+LqVuWXFykO
 HG/gNxqj02pKmOCHq8PMfBA82m3yy/4DXFDSrEQuD/sncR3CQPSE1z4eQ
 IwHhMb1Xi7+YQOU/nU3M6yBW/GCmWsqymovYEpZ51fhhydW/64BRVjy7U
 Wwk4OV54x0a2VbCB1jw+Tvyqbm2V3RXu/Ipbayf0C/yrJHfBg7wICHMB6
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kHcCNPDw
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 1/2] ethtool: treat
 RXH_GTP_TEID as intrinsically symmetric
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kuba@kernel.org,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[IA3PR11MB8986.namprd11.prod.outlook.com:mid,osuosl.org:dkim,osuosl.org:email]
X-Rspamd-Queue-Id: EB283282394
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Jakub Kicinski <kuba@kernel.org>
> Sent: Thursday, March 12, 2026 3:42 PM
> To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Nguyen,
> Anthony L <anthony.l.nguyen@intel.com>
> Subject: Re: [PATCH iwl-next v4 1/2] ethtool: treat RXH_GTP_TEID as
> intrinsically symmetric
>=20
> On Thu, 12 Mar 2026 10:31:00 +0100 Aleksandr Loktionov wrote:
> > +	/* Strip TEID before checking - it carries no src/dst asymmetry
> */
> > +	rxfh &=3D ~(u64)RXH_GTP_TEID;
>=20
> No need for the u64 cast.

But without (u64) it will work only while it defined as implicit int
#define 	RXH_GTP_TEID	(1 << 8)

When it will be defined as BIT(8) or unsigned int it will break.
What you'd recommend preventing such issues in the future?

Thank you
Alex
