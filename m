Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 12CCD9B5D7D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Oct 2024 09:19:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6A5B34053B;
	Wed, 30 Oct 2024 08:19:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iATTWmBazrgt; Wed, 30 Oct 2024 08:19:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 66F0A4053A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730276348;
	bh=SLJaKAPu7bm2YK424ochiUykPGsJazNrwN8RrUyBdSU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AShVW7P7Z9tUMnjIXD1eR3nWLtnMYj24R9vzDitgKel0gJxtUD+HbeVapEiuACGeM
	 usdRmGUD0Uv+AxyvH54DHvH+BD/zpvC0gWlksT3ywT3xus2GHU4ytJ/F47J2EbfMVy
	 USJadrGpc/NOgJcvjAL0QawxTRgnebteP/+elEmW3QZf8UVxKf3qFMMjSX1ee+5v91
	 0u+0NLfrFhgc+tNcxOzCLAOfjrgHrkCkzcnNG/l0fvdK/4U6B+DkYq5Q4igcM3X4Fg
	 t7Zt0C4+6WHo9k918840nPIzKNMK3mrAbJ7qrfcbypd3JvFBKJ07VNYPa3mrqQ7/b9
	 4bRSv+2B4gabg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 66F0A4053A;
	Wed, 30 Oct 2024 08:19:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 22FC15E50
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Oct 2024 08:19:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F06BA80F39
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Oct 2024 08:19:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id prSO8h2__yJa for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Oct 2024 08:19:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4B7D080F3A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4B7D080F3A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4B7D080F3A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Oct 2024 08:19:03 +0000 (UTC)
X-CSE-ConnectionGUID: w7GCpLJ8QXSCM+1atMS0gg==
X-CSE-MsgGUID: UMg1XsTkQR2Em9SF/nQvSw==
X-IronPort-AV: E=McAfee;i="6700,10204,11240"; a="30176952"
X-IronPort-AV: E=Sophos;i="6.11,244,1725346800"; d="scan'208";a="30176952"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 01:19:02 -0700
X-CSE-ConnectionGUID: 59vAcXVGTdm1TbhzehCPPg==
X-CSE-MsgGUID: DgQvnA6NSGCum5CRmEVagQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,244,1725346800"; d="scan'208";a="86841213"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Oct 2024 01:19:02 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 30 Oct 2024 01:19:01 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 30 Oct 2024 01:19:01 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 30 Oct 2024 01:19:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fqV1hGrd1eCSRO+UYtmbin66iKHCcp+DJs+9D9wBkdrgQ7wio6XHA9goYrCkV6QIQZlACvn3PpnKTxfVY2jfkHscpcaRbt9MZCWLyHZvSisx5sngtX9cyNo7AaNcIbRfOsI8iuHvNPxI+C5jvdobhzgzHYyTmNDEHGrM+mqQEwnT1TWyDMaI4Bxx+E7BSINIUWx1nW2yRxkUJ6SbrW+pP/8GB12q5cYQOV3CdcK9rZVOIKFNXeYDnGhia3yYwd7Wuqep5DXSHFz6qLquGjgSu38n3dvi00csbpvZ5ZTtDhNB63kS3OWFujNxeRQYCihNBpLDpCzKkRhKrxelhLBWWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SLJaKAPu7bm2YK424ochiUykPGsJazNrwN8RrUyBdSU=;
 b=fUMF0iyO4cOkfUzSrCy7+XV6V2ubvOKQRGnaZN60+bgtmcMKRftzc9vCLOWe0CIg4gUrBk04EJ5AkSwNQvE+fHFy42KypBmIHpVcXtrx6QZ37cPCQs1qw959ecuy2QrYvG7TQyWT5NTdYqn3WGWr3G98PsZjU4V8l8yg1pEjVf6pHj/qnSunCoecq91uz+FDt3jxbm3afwxlGbMDsJKlat+fBh4jmcaBP1lUVyOrsMK4gRrg6bU/2kX9E4OIXz6ZWvQhSCq4dU7LynQdjtJspOisGvAn6x5jbO/eUHe+EFaMh51QKIv1QEndz2XHLYe3+nO0RT6VtLEEW+1ZzKvSWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by CH3PR11MB8096.namprd11.prod.outlook.com (2603:10b6:610:155::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.32; Wed, 30 Oct
 2024 08:18:55 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%5]) with mapi id 15.20.8093.027; Wed, 30 Oct 2024
 08:18:55 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Simon Horman <horms@kernel.org>, Bjorn Helgaas <helgaas@kernel.org>
CC: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "bhelgaas@google.com"
 <bhelgaas@google.com>, "linux-pci@vger.kernel.org"
 <linux-pci@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 1/2] PCI: Add
 PCI_VDEVICE_SUB helper macro
Thread-Index: AQHbI8h0zXylhqm/q0G0AyeN4hZlv7KS5v+AgAAJlACADBB1UA==
Date: Wed, 30 Oct 2024 08:18:54 +0000
Message-ID: <SJ0PR11MB5865AFDBE303EAA9150956018F542@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20241021144654.5453-1-piotr.kwapulinski@intel.com>
 <20241022153011.GA879691@bhelgaas> <20241022160428.GA402847@kernel.org>
In-Reply-To: <20241022160428.GA402847@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|CH3PR11MB8096:EE_
x-ms-office365-filtering-correlation-id: 7100e926-9bf2-4d69-8405-08dcf8bb7ed1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?KSdmI2q7FsiWRYD7kzFpo1iI/cK6BiUPMPUPSJ1Ry9bXHmmcf7307A2T8tmH?=
 =?us-ascii?Q?5xLveyv8tVdFP3LDMrtATf3IG7QUERTXt+BQpghCF+0OV8zQdAe/wV+4aAn3?=
 =?us-ascii?Q?PTmk07GNFVTb1juSOojahoXyFuJsNduKDh4PJrOgId492VXmSTPi6qgN84/8?=
 =?us-ascii?Q?zbZaCa1VmTiN3x7K2FYFCJpswGMSJrNZXzlH17jegHZY1YdeiqOUKj5dX0EY?=
 =?us-ascii?Q?JyZQeARNlAEh4mVGgUFvD288CLyDJlz+l3gSrN2NUu+0ghr7fZOsol45J30p?=
 =?us-ascii?Q?8ZnDAzXAjCX5AlOs/QWb61FOo5eaGwyn1F2CH4yW6OP/7dqWo4WdYK2yGaeh?=
 =?us-ascii?Q?aYEu7oh4wDhEAqCUiuSiesNIUysm3SMyVkuWBIoT3xi+mzy5JJVPCZE71G2D?=
 =?us-ascii?Q?bHVcO3DvdXIobdjA9lVyKT7VF3+h1/oKjESixkmr44/oGP4k3gHHO08qTpsU?=
 =?us-ascii?Q?9uXMrMCNf2c4OvnjSlv31x1RirRRrU+TgzC/O+28Zh3aMDKHNhrk9aeYI+j2?=
 =?us-ascii?Q?4RyJPggGxdn/MrSmfBPmQ8J21wNeSKotnnsXrd9Z8Sl6vahkZsFsCwBDBfgJ?=
 =?us-ascii?Q?Q2UFLyYD5B8+TtQUKtwwvOpLPHUWPq7yROH6IOy5lC91dRDxS74Zi3bJ+Scf?=
 =?us-ascii?Q?WByxrdvFKJi8F6xh8ulLf7EbxgKULpg4MZ7Eqqg0yO10TMEup8HkZ+5h7xZy?=
 =?us-ascii?Q?8tOWAsnElTWNolJ1jpOBqZHUx0l0YHT/6ywEmLBzc20ZWBSM9PBYQJfOEnsd?=
 =?us-ascii?Q?9gdLis0OYQfrLC8ZQnvg/KM3JATOV+CiZSzSxqSl4lMLCPKsU4tCPi0Kg68Y?=
 =?us-ascii?Q?WUw0yEAWRRPP/qq3aiB0T4E3xGpq6fDwK5439+DGJfVPAiFQBP4t+CqqB09C?=
 =?us-ascii?Q?kdSZjd0aQgHihEfXtdzIq6/qmJxq7qzwKGK3A9rzWdLSFbO1cvP6SwsFzaXv?=
 =?us-ascii?Q?vhn8fA7ly3Q9TLefsEF7uJvN+o0Oe0U9DzoPNGf030ZxaOGjWKrn4ZrflV+5?=
 =?us-ascii?Q?r2X9zb288RTehl8/XmyIbWs+Nyia27XXbwx5sK1n5zXYLcTdcCDch9ekK5M4?=
 =?us-ascii?Q?fjRxKuvpKRwmVRTEmzrs1Ce0/vKw3Esv3P5luGUv5xIBVsud+berGTdIW0kp?=
 =?us-ascii?Q?bp2xBdjt9140Cu6NXzb6hXnhnIpcW07Wbo4IQ/Yz2moDzvZ3c9b8Bvg1nPtr?=
 =?us-ascii?Q?3LyPHw1QJQbz2czOQJR3ifTZrOMosaLpQFcUNdE+jbLtrPXYxNnPPPxxszv1?=
 =?us-ascii?Q?B6GC3fR3KHrrOpwvU5ikFuNpEPqhmoWp7miGvMWwa1/WkxUXCKjnKtWqKHHB?=
 =?us-ascii?Q?B+fSq+iog07AXt2vkCpN77wmYgUn7C3TJHP8GzBPIPMcNfED3iDc4wicohNY?=
 =?us-ascii?Q?bsx2NUmIk4NQAjwzxjxcMS1xtC8t?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?0LE80wremPmo12+OKKCAUmLIopHJw6p1uF2hF5prRxS5Vkbz0jPykJRc1KTf?=
 =?us-ascii?Q?VNqUhGU5Chuo3n1eyeQPXpMFNGnI2algCs6boYJn7pc4u8f97D/hUsvECNJw?=
 =?us-ascii?Q?XlwM5WMXkfTDCyQ0fZWixMrKa+HH5P8M0dfoHrrk5EZQAL3kSmg4RDzw5LlU?=
 =?us-ascii?Q?yoVCtMEOuj1/oHVDSmtu73M0TD7iHtKBYIazOYi/sfmrcJAm3fVoECjixTI5?=
 =?us-ascii?Q?O7MED28qdK7tDD/vwUt4F4e42515nRNUgeYDrqIQv0X0we8UIJ2BvhWO9rjK?=
 =?us-ascii?Q?igqqJRAVzWzG0arhpC7T+81o0QYcxzeXo5vOGUFJl6Z5342uaUxaL1N0w2H+?=
 =?us-ascii?Q?PagiHg3RXRjKQw/mjjxSfePyHUDruPcbwcjfEWtlrr1Auuxu1sQIvXzaLp1g?=
 =?us-ascii?Q?gIjFW1M8mmlnm2UHWsAU26egChMKB44vMlt3PqZ2CZc1O/Ag9i7piElvAIE4?=
 =?us-ascii?Q?wt4eypVJ+GwO7yC3m801hvxCwRo2+uISH+TQ4X9V4F1OAT/X68PjAyLdQwtJ?=
 =?us-ascii?Q?RVh4ZhLe4Oan6avgo5TBVYxWa85xRgaxaUlNDLW7iLSHJ3IGi/0IekEAjN/L?=
 =?us-ascii?Q?yExERJ1x7Y0N5Z/9wvFb72ZZnrHr8srX4Gy30ZE4TD8+vBFEWiW32Q9BJRGG?=
 =?us-ascii?Q?/YmBnZZWm36OpJxcL5pAHKU43p7rvIPmF86VdAgEoBeLy0qL79NJA6CsWyNW?=
 =?us-ascii?Q?9uE75LGgbh6xlwx0IgZTcgzZGUNGLkHNIDPSUza1BRO2dGVWlMmTZ8TY0Tld?=
 =?us-ascii?Q?0f8o5SGvbBtlvMtHmHA0Y2bZXqNX6zUC5QpDEUbyx4eoh7sljXca8ONMZ1Of?=
 =?us-ascii?Q?412Kd0werdGeed008CqAtMHjnppgUT4Qiq105JPiNUReISTz1gLBZbk2nb7r?=
 =?us-ascii?Q?v+nmki9meWEwVXajFK9EIsOh2NcB/FYe+PDOXZsoy7Tm6jqwYOFmMPAV+v3z?=
 =?us-ascii?Q?er58EgPgI3p62jWkSeoBn1J1GUGwKJfROM2X/oryzxrcBKFO+IMd9S09ND71?=
 =?us-ascii?Q?3rz19WNIueP2WMcD+D3K56oOfM7dzDtOhFCq4UxWtZV+/SO/i16MKfC73hjg?=
 =?us-ascii?Q?myj0drlFQwrQW/yqCXFVNUG0Ek/Qg/dzFS3LTEkLX9jIoe0AiG3y/mWSPE07?=
 =?us-ascii?Q?T2SKN+VFxwuANCqb5Sq+69n2Zn+fZfP0xs4A2RgVF5oOlHRTNAPIZscxYPBN?=
 =?us-ascii?Q?kxNsEMendw9ShuAwf98oXf9XI6y1NLfzZUgI/WKcQOwM4KqVi+j/ihj5uocq?=
 =?us-ascii?Q?q4XGZ17qwEBPE1otAst3I3VX2rDgTzeCVUC2S8gTjM3ZU4UTXAWVZl13QKEp?=
 =?us-ascii?Q?EWsi4dkGZMABGiVWsYHXoH7BxW5ocLn7rEfoSpHHrBuvzd9XruLAL7yIkBon?=
 =?us-ascii?Q?C+8z+u9mV+PFiz0ByAflHUd8i+X5u01QFW/qg9Zwoo/Dq6MARF3SiJxzqOH3?=
 =?us-ascii?Q?mlQDtYc+0HNhmFj8R6NKFif0G/XgM91X6/MdRDx/ZsQiXkTGeRgHSMPgF8rZ?=
 =?us-ascii?Q?Yw0nRPjcWg+7GmlCYvKuIERPEUxFnYCjpQkjhy2VOLJuHRRrIa5y5yCaemz4?=
 =?us-ascii?Q?1CD/qcZANQazgtzqp5jFpIfCKZyO+1SQ1EzrjaE/vY0QcMoB59sQ5o4JZLxs?=
 =?us-ascii?Q?Yw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7100e926-9bf2-4d69-8405-08dcf8bb7ed1
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Oct 2024 08:18:54.9759 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MjY3zDPdyJOEdfG0a7XvTm1hkg5gQit9K2h2zj/wE+RZM8P1LGfwwjAg3mIowe+ZFGE5F93o1Wdj2TIk9y/yvCsCk3GqTN46yDs1mThay6Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8096
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730276344; x=1761812344;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xRLYQVMX45t+NDEN1M/XwZ0mlPhXani8sqotoLLXHi4=;
 b=mGjaVcaNuXKt5PV6kW9jMknakSS/ZDAxcnJdN/1auobENq2XyMwyuP5Q
 6QsUd2r3WuLi9O2cROvvpr3oLCOPlSk99wC9unGHQxHx0e88yx6UlIHcT
 3ozVBYW1cmg5mTgxjmv/1/lDeg09ujLYhOddXRkV5RYod7Zi3hnFYniMo
 LbBomt7C/GtgOue1MB9tzZzUQZ3HTzUvvj6+BgDpG8L8sRZl05X1GaHrr
 TJYbKBJsPSaq/WjF78uHE1hvATCTLH7oGql73fz6SZARHKr6/RqN7OOsC
 9ivnZymi6zIF91XuiOeUK/cw1FykgCmf2Q0a+kTbCi8uW+oGlW8PR61rI
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mGjaVcaN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/2] PCI: Add
 PCI_VDEVICE_SUB helper macro
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

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of S=
imon
> Horman
> Sent: Tuesday, October 22, 2024 6:04 PM
> To: Bjorn Helgaas <helgaas@kernel.org>
> Cc: Kwapulinski, Piotr <piotr.kwapulinski@intel.com>; intel-wired-
> lan@lists.osuosl.org; netdev@vger.kernel.org; bhelgaas@google.com; linux-
> pci@vger.kernel.org; linux-kernel@vger.kernel.org; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/2] PCI: Add
> PCI_VDEVICE_SUB helper macro
>=20
> On Tue, Oct 22, 2024 at 10:30:11AM -0500, Bjorn Helgaas wrote:
> > On Mon, Oct 21, 2024 at 04:46:54PM +0200, Piotr Kwapulinski wrote:
> > > PCI_VDEVICE_SUB generates the pci_device_id struct layout for the
> > > specific PCI device/subdevice. Private data may follow the output.
> > >
> > > Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> > > Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> >
> > This looks OK to me but needs to be included in a series that uses it.
> > I looked this message up on lore but can't find the 2/2 patch that
> > presumably uses it.
> >
> > If 2/2 uses this,
> >
> > Acked-by: Bjorn Helgaas <bhelgaas@google.com>
>=20
> Hi Bjorn,
>=20
> The threading of this patch-set does seem somehow broken.
> But, FWIIW, I believe that patch 2/2 is here:
>=20
> - [PATCH iwl-next v2 2/2] ixgbevf: Add support for Intel(R) E610 device
>   https://lore.kernel.org/netdev/20241021144841.5476-1-
> piotr.kwapulinski@intel.com/

Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>

