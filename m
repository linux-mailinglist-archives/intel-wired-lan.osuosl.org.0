Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iILYDV0KpmkJJgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Mar 2026 23:08:29 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F34131E4D76
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Mar 2026 23:08:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F258982EB4;
	Mon,  2 Mar 2026 22:08:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f8PGQHwPxVvx; Mon,  2 Mar 2026 22:08:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3DFAC83EA4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772489296;
	bh=r+O3F1z/NneK2Thdyc6OoTmhiIFbey/FGt/Zi5EvsYQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EKDlmeJ2I/5iuB8dN2l4Jl1i3SMF4zDxmADsre3yoOBsbtrbBOQFF1mSx0gJZqJrJ
	 kAUyfYXpvzgdR/itbSGOHnwOcfcrufHva0PerUgVO+xz60CBF2/QX3MBQgbu/rHafG
	 Orj6YsAqqa9en+2CnP0YjH0wv4ZfGhhYLzYyr7nHVE5JE4a4F3CdtamIKOkjXjZkf/
	 blJFEhWcPaCBWC8ZK8bSSia/pOYDO+FQAcxwCMkPZr0paTQEepeOnX2MU0SO1x8uVq
	 0kuL1SR/ztOD2DQlHbj1HatPI7owPA2/4GniLpWlSG3s4LQsDl+V8gHQfQrGGCpH0Z
	 AytIeHcFa8+5w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3DFAC83EA4;
	Mon,  2 Mar 2026 22:08:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2A09D25B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 22:08:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0FD5F612F7
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 22:08:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k7CraoQp4bba for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Mar 2026 22:08:09 +0000 (UTC)
Received-SPF: Temperror (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=joshua.a.hay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 90AE5612FA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 90AE5612FA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 90AE5612FA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 22:07:39 +0000 (UTC)
X-CSE-ConnectionGUID: 790oDn0kR4+xJTd6eZABiQ==
X-CSE-MsgGUID: 1FM56zS2T7OEAJyWDLKwkg==
X-IronPort-AV: E=McAfee;i="6800,10657,11717"; a="61081835"
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="61081835"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 14:03:09 -0800
X-CSE-ConnectionGUID: kQyK4hzYRn+KjcEizxMpHg==
X-CSE-MsgGUID: BNZmvHiKTgSNzsZMoZEO1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="244767293"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 14:02:55 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 2 Mar 2026 14:02:54 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 2 Mar 2026 14:02:54 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.9) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 2 Mar 2026 14:02:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QBLBJjlXeYEaLYtERSM2nK1nhdVVDk9d2j1ztL50JSpRoZTjXzKtTfFfaD/zz87xsCQZRLx2lX3P7EFHpOhdZYlrczKowjJaJDyMaXVbdpGWg9bI9YmyF6LuDirQL0i9IaXKxK2AH81Qh6spdl/BHgTh+QqI2S6R/rPMoAjzNEcvLH2REgGddBikW2wZS6T8hjhC8aO2/uU4D88daNDefhNg0B1oSNQpl03jlBiSqpdBiBU8djLzZXTGWpKBTZ3SLfXxkKnUo3PnGO/4Y3y9eAjv4euFM8DVnxM+BQVD0THWE7Kx3kIPAXA5fPmbwa41yAWeO/TtkrOp0iHO1GDyUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r+O3F1z/NneK2Thdyc6OoTmhiIFbey/FGt/Zi5EvsYQ=;
 b=rkiWlbcwhgu6qruYw0FBqNZhejA9KxQJq5ncsm3wZBuCo111ZAx/HWa8tN8L7h1OgdiH6og2CvoqyXe4RuVuR+/WXnjbstl3oRNyvF6ACBqUNukKHoPXGCv17PembPK9sHyTYtY+TVU25RNA8BX+LkaKgVnMTFs2ATtnvZ9y/+17pKlosuzu8cPhywXxSFsbKpcJtyoPHN9LqwIgR0vBEXrK5sja6Hm9LSW4PVdzqjBalbszdy2fxzv95Gj2fQW1uQ03Ei0oND+6BnzTv4yPcxykzWGQbgrqNUVWMAEXgXeyQA8whRT0jU/joaeqR8iz8tG1AVxejFCf4dFsxmVVCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB7388.namprd11.prod.outlook.com (2603:10b6:208:420::8)
 by DS4PPF641CF4859.namprd11.prod.outlook.com (2603:10b6:f:fc02::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.20; Mon, 2 Mar
 2026 22:02:45 +0000
Received: from IA1PR11MB7388.namprd11.prod.outlook.com
 ([fe80::1be2:c2f0:4a54:7e21]) by IA1PR11MB7388.namprd11.prod.outlook.com
 ([fe80::1be2:c2f0:4a54:7e21%4]) with mapi id 15.20.9654.020; Mon, 2 Mar 2026
 22:02:44 +0000
From: "Hay, Joshua A" <joshua.a.hay@intel.com>
To: Jakub Kicinski <kuba@kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
Thread-Topic: [net, v2,
 02/12] idpf: skip deallocating bufq_sets from rx_qgrp if
 it is NULL
Thread-Index: AQHcp50VGhLhf5bxvEmSJPUM9iy15rWbz1KA
Date: Mon, 2 Mar 2026 22:02:40 +0000
Deferred-Delivery: Mon, 2 Mar 2026 22:01:51 +0000
Message-ID: <IA1PR11MB73882FFC3A9C4ABAB69004A4D47EA@IA1PR11MB7388.namprd11.prod.outlook.com>
References: <20260225211546.1949260-3-anthony.l.nguyen@intel.com>
 <20260227035625.2632753-1-kuba@kernel.org>
In-Reply-To: <20260227035625.2632753-1-kuba@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB7388:EE_|DS4PPF641CF4859:EE_
x-ms-office365-filtering-correlation-id: 420e0a56-df70-4499-ead3-08de78a76eba
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|366016|38070700021; 
x-microsoft-antispam-message-info: 8bXCtrWyv9wU5Ihka71WTYaugsmL2n3l8o8dNEPsgiRcW5tEvuzevVFm+aAj5IBVogeYcPJ7o2lzxYq3sc8eXdbpiC4ZSh5bYlI21ovyDMOkyfnmlaVM8BngwZMxf/nU36EAftlK/48oCS5LuagHBOEa2xEmPTaMbqJPFyF0g7xrfgqhcwV043R+2G8zmP5LBCUEY987pnZi0Csk7sI2SVAxGbTHuSNz+wBKZPvJQQu4fefV3yOGEOrncbRyjgfCMWLfM8L1dFGsMXXCE8wLX016ANJG1BgeSXaJKH5/b6mzvezKy1X9SukswcS3qDpFQqO+J5zafbWOEjMgNzd+vQtKrZyFg2CjQeUCK/Ln5kq94fPQYdiJwpzCG1zHbeKS9j2C0YnNg7P2z8N91+34B0gv2P6FcQR3mZEkOPewmxsJzTbYrUTaPfWSWvXHGS2VrrfTG9uoB/20HEYVMYwgEUmnmHlpJjOMw6Lsz/AUDEW/d3VGIgFAt+De5rPmAmDDVCuV31sqSLqc1AV7u45ZLMjJG3adn3UoLSxSG1I6RXCjVkRyWYc9t9bwO1oqGGUIIUcKFjw7mCyLXtVr71iUqer4SczfB6a8tBh2PcBGsza1Oi+5cDAeCVVWI7/LQd4JUzREy/uwwkC0dmBrE92LgInTn7EkxsOzBBwpFYPJ0j5PNZ4maVLVT/oxP+q2jTvdSsoDhTN9COTMSEZHqwuPUHIwAu2i3BR1aKNjM+/1MnD+AzJZMwd8FhSLejnOO+Ix
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB7388.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?wmS2L+k+citx/yi2I4ImbFPe+Yqam4HYoUxahz/yw99IjKJLi5Vru5kfIqJh?=
 =?us-ascii?Q?GxJZcS7u7QMtta8roRA3NSSxIitYF8WTWvy6RKL/dZyTdMds4YimN0nGcASN?=
 =?us-ascii?Q?RKW+uY04mtbKaysw1zJShDntM79l69LA4OsOvjqxe2fX4cxdREIq8JM19qqv?=
 =?us-ascii?Q?EbtDA4deWrctTbanqFvA92huZQ5B1xZ34OVYf38I2oONQYh4YMiCH2kmPOOp?=
 =?us-ascii?Q?Jv/wgYf83iCgNB2fPwj5IUi+AK0MnzizzvxA/S79iEhfSz5kpXETmbMwSflA?=
 =?us-ascii?Q?N5Ec4n0gRShnZwfkrAAJ3zoAYP972Yv6Q814yObBI7ub4aW0O/lFLoGJ8yuq?=
 =?us-ascii?Q?6SgrKKK3SzdTRTO9iL/owzhc6NuP8ZWWATqILUV9IZwpVISgQUboGPwQfsU6?=
 =?us-ascii?Q?YPAMEtZntbD9SNB7dEFkom0Swmxsn6AJy1x2267DuCbWJ0uc0F6HmduVzALC?=
 =?us-ascii?Q?KYb/dsdfGfCCVEPBaNbaWwqQWdmGbmAvhAGpMIKPZPFAhHDZhfKmBlyjMmBy?=
 =?us-ascii?Q?mJHE7Ggk9gX0bIpU9KwKePw1gyyHuV6QXg81OIyHYrCF5pPAeOkUMTZVk14U?=
 =?us-ascii?Q?aJVNXDQMUytXSIRCis1o0XHIX8kPL3GIjuAduBsox1f9hcKksdUaoP6KpELy?=
 =?us-ascii?Q?c9mofm8NmY250FntP/97aBxE9GphdNsCVNkN2EAN5HgFLTCNAHZiwp+Oqktd?=
 =?us-ascii?Q?gcP8te6FGDaEnkv7tg+/3mjAgE9Goj59m5o4aLqIC8kyeCE5sUz1hCgBWUjP?=
 =?us-ascii?Q?g1fI4c8BhlI8Qx7TTh6hdS7gYGATr2/2clfmCmsRgQjjNgY40y2oMlGwOX/u?=
 =?us-ascii?Q?QTgo9ymCaAHCIVTI0cCGSDE+BzPOCOIomNgl9gucWCRbYxAVvDdC2yKwpPTS?=
 =?us-ascii?Q?JEmqyADDJi1Va+E+GPjhEFee4C8DWiKIhQFxfLcLSYT0hzi6NiY1D6PWK6/1?=
 =?us-ascii?Q?rsg+vaadqdEQXteEEJc526MTfpZ2A++gyDMZn5ugCSOpDMz57X9q9DXIfjeW?=
 =?us-ascii?Q?Xk63Dk0a6WioOtjPq53QRtf9+4dCF4bbTEV8DRgvqUWH7D9KIC40HL+LUhxD?=
 =?us-ascii?Q?VYv5Jsn/Qp16ZGEmqhGIHIs1tLxkYvZ24bhDSMjzJVAdtYqV+FCB2cemelpV?=
 =?us-ascii?Q?9uN3bdXVb9F6eMMB0DGqZceOKSfuIb9xOyLdv68TO60h0n6wP1IoH96TF57e?=
 =?us-ascii?Q?FdICkFA11XTVAW76n7Co8ZTvfpqLSgbnpTdiDPIzZGRT0hwFbYqoqhQA2yb7?=
 =?us-ascii?Q?lP2PPcWzyn+AYKil/qe8bomSSwNAV0on4CxltU064qsNWjuKolCgZdzucj9r?=
 =?us-ascii?Q?v7YL2PhYfRAPxDDbwLlEixSWwWrILQLc1GZqty6qmBJB2Q99F3xAaccboL74?=
 =?us-ascii?Q?6awQi33Mi78BPrIluxwfu4/Z5rSgtrKD1jpY/lbWy6evWJ1445YHciYtH5HU?=
 =?us-ascii?Q?9l6qj1bz3zWjj+E7dYiocBDr0Z5lOZC3QH75KlsX8z06iM3HbUvdBClQ3FKH?=
 =?us-ascii?Q?k+OPeUDeJjfCqkMMq1pX/s4MkuRaYmpEn49glbR7iLm+ORYqA2IPtHQRgAEZ?=
 =?us-ascii?Q?T2XvRm8twQq0PFEPyADJh076ZeQLF3TEgACfxaVuEWBbouxXbOtHdsNF2UXF?=
 =?us-ascii?Q?o7Cz6pdxB7oDBQkpnbePrNAUCEbUmH/ro+3PZO3Ee4CN4bWqj9a0oF3ofg/r?=
 =?us-ascii?Q?sz9eNxq7aSoqEMK93uJV2q+2xvF+xsp4qHP/ypmHKCq8TT36xVWnWROHz1QL?=
 =?us-ascii?Q?Z+LXlkTG6Q=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB7388.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 420e0a56-df70-4499-ead3-08de78a76eba
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2026 22:02:44.4852 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5471rkL9v7BPzQDYBFjSqSxLIsXkxbebCn1Zh0XksQNvTuvAgu/TRfpODM2yrwi6HaHTFlbOcTDvw5NiQoIskw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF641CF4859
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772489283; x=1804025283;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0i5ksBo6j4oeY0VKWHybXBws+iUScLq7HAeejoErbpc=;
 b=UVMzT55j8g/OgfwVuzNmR02SK4UB7S7oxkdq3WKu0C4s5DomMmGfawDQ
 HmXRhRDGF1oGnayCP6TqPvotkopZqxkxHluNJRnFeDFIXlE06hYuqxvcP
 xohIC5WFtnf4uSgQsEelnSc6GMDdqzmC+IIx2qDvjVeCvuVoi1IEvFm9G
 HM/bbnI6RxZfCtJNpTI5mwwFmZ2s9DjCl6bKN/kY6u0Eqd2ctMZQpatWq
 lqCuKSzUpR7iE5hI/0SGrExS7mHIRaatNEzMA8AqPpo180+0PFMeYXw5N
 6WLHRrQG4S2mAll1yresfQ927cPtHH+b826SMNMt7coZDoitSiugtVcX9
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UVMzT55j
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net, v2,
 02/12] idpf: skip deallocating bufq_sets from rx_qgrp if it is NULL
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
Cc: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>,
 "brett.creeley@amd.com" <brett.creeley@amd.com>, "Tantilov,
 Emil S" <emil.s.tantilov@intel.com>, "Rinitha, SX" <sx.rinitha@intel.com>,
 "brianvv@google.com" <brianvv@google.com>,
 "edumazet@google.com" <edumazet@google.com>,
 "boolli@google.com" <boolli@google.com>, "decot@google.com" <decot@google.com>,
 "Dahan, AvigailX" <avigailx.dahan@intel.com>, "joe@dama.to" <joe@dama.to>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Salin,
 Samuel" <samuel.salin@intel.com>, "Jagielski,
 Jedrzej" <jedrzej.jagielski@intel.com>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "aaron.ma@canonical.com" <aaron.ma@canonical.com>, "Ertman,
 David M" <david.m.ertman@intel.com>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>, "Keller, 
 Jacob E" <jacob.e.keller@intel.com>, "Joshi,
 Sreedevi" <sreedevi.joshi@intel.com>,
 "willemb@google.com" <willemb@google.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>, "Romanowski,
 Rafal" <rafal.romanowski@intel.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "tglx@kernel.org" <tglx@kernel.org>, "horms@kernel.org" <horms@kernel.org>,
 "Samudrala, Sridhar" <sridhar.samudrala@intel.com>, "'Lifshits,
 Vitaly'" <vitaly.lifshits@intel.com>, "Ruinskiy,
 Dima" <dima.ruinskiy@intel.com>, "davem@davemloft.net" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: F34131E4D76
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kuba@kernel.org,m:anthony.l.nguyen@intel.com,m:piotr.kwapulinski@intel.com,m:brett.creeley@amd.com,m:emil.s.tantilov@intel.com,m:sx.rinitha@intel.com,m:brianvv@google.com,m:edumazet@google.com,m:boolli@google.com,m:decot@google.com,m:avigailx.dahan@intel.com,m:joe@dama.to,m:przemyslaw.kitszel@intel.com,m:samuel.salin@intel.com,m:jedrzej.jagielski@intel.com,m:aleksandr.loktionov@intel.com,m:aaron.ma@canonical.com,m:david.m.ertman@intel.com,m:pabeni@redhat.com,m:pmenzel@molgen.mpg.de,m:jacob.e.keller@intel.com,m:sreedevi.joshi@intel.com,m:willemb@google.com,m:netdev@vger.kernel.org,m:stable@vger.kernel.org,m:rafal.romanowski@intel.com,m:andrew+netdev@lunn.ch,m:tglx@kernel.org,m:horms@kernel.org,m:sridhar.samudrala@intel.com,m:vitaly.lifshits@intel.com,m:dima.ruinskiy@intel.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[34];
	FORGED_SENDER(0.00)[joshua.a.hay@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[joshua.a.hay@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DMARC_DNSFAIL(0.00)[intel.com : query timed out];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:url,smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo,osuosl.org:dkim,IA1PR11MB7388.namprd11.prod.outlook.com:mid]
X-Rspamd-Action: no action

> This is an AI-generated review of your patch. The human sending this
> email has considered the AI review valid, or at least plausible.
>=20
> For local reproduction steps see https://netdev-ai.bots.linux.dev/ai-loca=
l.html
> ---
> idpf: skip deallocating bufq_sets from rx_qgrp if it is NULL
>=20
> This patch adds a NULL check for rx_qgrp->splitq.bufq_sets to prevent
> kernel panic when idpf_rxq_group_alloc() fails during initialization and
> the error path calls idpf_rxq_sw_queue_rel(). The panic was occurring
> during device opening when adding to a bonding interface.
>=20
> > diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> > index 761a77510467..59aafadae3d0 100644
> > --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> > +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> > @@ -1341,6 +1341,9 @@ static void idpf_txq_group_rel(struct
> idpf_q_vec_rsrc *rsrc)
> >   */
> >  static void idpf_rxq_sw_queue_rel(struct idpf_rxq_group *rx_qgrp)
> >  {
> > +	if (!rx_qgrp->splitq.bufq_sets)
> > +		return;
> > +
> >  	for (unsigned int i =3D 0; i < rx_qgrp->splitq.num_bufq_sets; i++) {
> >  		struct idpf_bufq_set *bufq_set =3D &rx_qgrp-
> >splitq.bufq_sets[i];
> >
> >  		for (unsigned int j =3D 0; j < bufq_set->num_refillqs; j++) {
> >  			kfree(bufq_set->refillqs[j].ring);
> >  			bufq_set->refillqs[j].ring =3D NULL;
>                            ^^^^^^
> This patch adds a NULL check for bufq_sets, but does the same issue
> exist for refillqs?
>=20
> Looking at idpf_rxq_group_alloc() in the same file, it first sets
> bufq_set->num_refillqs to a non-zero value, then attempts to allocate
> refillqs:
>=20
> idpf_rxq_group_alloc() {
>     ...
>     bufq_set->num_refillqs =3D num_rxq;
>     bufq_set->refillqs =3D kcalloc(bufq_set->num_refillqs,
>                                   sizeof(struct idpf_sw_queue),
>                                   GFP_KERNEL);
>     if (!bufq_set->refillqs) {
>         err =3D -ENOMEM;
>         goto err_alloc;
>     }
>     ...
> }
>=20
> If this allocation fails, bufq_set->refillqs is NULL but
> bufq_set->num_refillqs is non-zero. The error path calls
> idpf_rxq_sw_queue_rel() which now passes the bufq_sets check but then
> dereferences bufq_set->refillqs[j].ring in the inner loop.
>=20
> The inner loop condition (j < bufq_set->num_refillqs) would be true,
> causing the same NULL pointer dereference the patch is meant to prevent.
>=20
> Would this need a similar check before the inner loop, similar to the
> bufq_sets check added in this patch?

This is a valid bug, but we can fix it in a different way. Will send a foll=
ow up patch shortly.

Thanks!
Josh
