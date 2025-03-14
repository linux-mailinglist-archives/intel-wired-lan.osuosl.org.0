Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C798A61C76
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Mar 2025 21:24:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9FCDC61AE6;
	Fri, 14 Mar 2025 20:24:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f8fqsd-znCsw; Fri, 14 Mar 2025 20:24:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C5DFC612A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741983882;
	bh=LLQjUxPGpTu1W1xhlzVyXVgLAZikAJYbbBpKIoqANhA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DD1T0x0n+pdwR1gc5jAcujG0E4p6yX+BhOqARO+ljDqATTGLQPgWJ6X7oYvbmJU7U
	 BnXDoRwwG4Saqy7TyYK2P1hVVoyXx6G6Eb0zxsoJhoLRXaVHjFrHtQiH2F4V4MTg5Y
	 0UB0u6TY6ygwDZExGkfpqJ9GcbI0A7Ua4rbG7wUatPL7ZfMxxNlMGjiIPRDEEStrgd
	 oMDdoERstjyf2+cJp+3PiIBjXVA75ABWcOcNIZL/TJXqfCmQoom8UpVvsUiBdwEh5D
	 lDiaeEqzI04RH9A92tu66nc1tKPATXSCCs9BgPyFXybGi9ugZcuNwYmryZAk9ZAh8T
	 g2pjubqQ1nseQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C5DFC612A9;
	Fri, 14 Mar 2025 20:24:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 71D4961
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Mar 2025 20:24:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 55DCB82073
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Mar 2025 20:24:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qa4vKBZoTLPs for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Mar 2025 20:24:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8680581F81
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8680581F81
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8680581F81
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Mar 2025 20:24:39 +0000 (UTC)
X-CSE-ConnectionGUID: dhUjKRLhQ/mTbGyKoX0ThQ==
X-CSE-MsgGUID: 6hQCfs4gTx+lK1wlyasviA==
X-IronPort-AV: E=McAfee;i="6700,10204,11373"; a="43186496"
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="43186496"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 13:24:39 -0700
X-CSE-ConnectionGUID: oT6MJRZvTp6B93EtPT8Beg==
X-CSE-MsgGUID: S9Sz8P0fT0CFVV4UEcq3Ig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="121869558"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 13:24:39 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 14 Mar 2025 13:24:38 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 14 Mar 2025 13:24:38 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 14 Mar 2025 13:24:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OutRL//B9YuwTJyqlEfBe0PCnDsbXOHmBRUoBx+1sk6V1eMLtoRSfoc3HOlsR7C7xi2kK8ZtSKWHI8Erat/Ce2MXUdgMrc6tY/LX3CA/JzP7x/7I9k4L9jAWAAzkO1x3IuRFE1LcGNfx+r5S0bcj6UKUv5/JPiFygaw9Taf2Wi+7FO+cbIb3NWH0p2CjWwaE824dcDBACYxuIqKb1tUCfQ9kGe5+P1LNR+Rf+cQDFGdj1bSQovGwKjOH1XDF5Q0gJUgRbL0+tbhZhKplxBLhjPuCyrqHttaJEKFtwK0K0Cak0kTNO3NqfO1QcoRx9dRXY3zmnt9kQE6BhbnF3M2y2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LLQjUxPGpTu1W1xhlzVyXVgLAZikAJYbbBpKIoqANhA=;
 b=KlcwbGl/mfDQSOWoND1ZCDhePX5yPN4vG/OJqapQ5p3xxfuJIy3tSuGwFBUc2UrJPZtnaiWsdO/n+uB0Y+/zsLNKpbOBhN0dUJnwlaY6ItEk8DY8aXGTRLUe1kzorfdpVsXw5/Z51ofbHMty3EzpTdcBImev6cxaMe2HmmT8c6l6vU7Rb5Y5Wgx291nLGllS1BsY+hKRdl5wM++dkMxPiyq9QX2YTAtR7psVIL1uNu3+xCIZ3lS3KGqN3yWk4J4+BaPvaQy5XiP0kgCizJuEW+kf4k45doTJFH22u8DudSr4IJvDWHFkWoGgAuNalBZcwKfP911sjQBRh9EUTFsOpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by SN7PR11MB7468.namprd11.prod.outlook.com (2603:10b6:806:329::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Fri, 14 Mar
 2025 20:24:06 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%4]) with mapi id 15.20.8511.026; Fri, 14 Mar 2025
 20:24:06 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Olech, Milena" <milena.olech@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Olech, Milena" <milena.olech@intel.com>,
 "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, Willem de Bruijn
 <willemb@google.com>
Thread-Topic: [Intel-wired-lan] [PATCH v9 iwl-next 05/10] idpf: add mailbox
 access to read PTP clock time
Thread-Index: AQHblEMYgo0VMy03wkS6/4o13hFGXbNzCytg
Date: Fri, 14 Mar 2025 20:24:06 +0000
Message-ID: <SJ1PR11MB6297CBC52DB13C94E906B0F99BD22@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20250313180417.2348593-1-milena.olech@intel.com>
 <20250313180417.2348593-6-milena.olech@intel.com>
In-Reply-To: <20250313180417.2348593-6-milena.olech@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|SN7PR11MB7468:EE_
x-ms-office365-filtering-correlation-id: 58410207-32cd-4394-4387-08dd63362b6a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?lc29w3LmKeqroBCc2YkMMbU6thpW7+/gyvEfiXzIqBiWFgiC8Wmz0vUoE6AP?=
 =?us-ascii?Q?n1Dob+HvUgDVQnm/iEKkJxo4zygYKGiNf1/GV2e4Gf9D8NV2Q3RjdP6DMgAN?=
 =?us-ascii?Q?mGwvDiaW/LU9WFpDR6zQYCL3gA0eeBI8rj7ZgwcSLyt9HhPfQVPct24jbvSU?=
 =?us-ascii?Q?6bJL5OeaCyUrP4m5JXvtJOQlvKugceAqMOwF6cCNwiZbclhVn2+aIS4vgu5A?=
 =?us-ascii?Q?/Dzb8XaaYX+0kRNnQcLGIzeRSdSfMo3gK+nZrs/g9FV9smQNxIPlMHe97YuS?=
 =?us-ascii?Q?fjKaNYAE7rJ/AD6s0pDfuZDMiE4+mIBZgiAkUxlEghA6zF1sircDCzp1kMBf?=
 =?us-ascii?Q?fMrL9MBwysMqiRBoGFpJcngCiq8aTxkEWQPdgfD4tUr+kfCAihAaP2H91AkS?=
 =?us-ascii?Q?02RWX94A0wXAF3sPfzDeAckNZut4SBji0YLUpifUg2kwtzs+xTevcV7om4VM?=
 =?us-ascii?Q?0MmMzdktSmGflSEKhEdsK2YrZnGkRqs4oAryPZOSSANBrhVZQnZ7Sa5SR/IH?=
 =?us-ascii?Q?SMovDvhknogLHAT5D/C/iZB8GLDM/sSg636nBD7PJRaqO7AAzvkQoVfMMOJA?=
 =?us-ascii?Q?4zPb4pUMWT9MIP6a81TVZXjAGUNeA+iWXfvvMD/6BtWBQ3dd9ExYc14U17Ht?=
 =?us-ascii?Q?DHCsDio1O4t4VoaSfZZmZH9J0WUR3G98dDG1auT9QKm5iPS9G0TQg+D54iw+?=
 =?us-ascii?Q?/PFg+8CmhYt5VpQfZXuOVAuMy7oD4FS/WCq89CmDUoPYB9FwlN66gkoKK62H?=
 =?us-ascii?Q?mAL/fhZ/hVS0LLKoEsb+0W5NxOuTAhbujc32+fFW/vVR2y1vAj6qMh5Xrf/t?=
 =?us-ascii?Q?fyHO1NOA/8x+61qMm4eH9Nmz/QNIp2uFdMuwdWG5PPteF6YnFXhklRQkdX+m?=
 =?us-ascii?Q?I2K59mL1i6s2XQwZgETbtHgHZPSlbD87IsDOGN8LQjeIvmrSrrhpY8uj/FLb?=
 =?us-ascii?Q?T6KNyQg7TpByKIy1u+XxSSsGwzhdSQgZv3T7nyCA2AuOtqeHpoBKlaPMS/WF?=
 =?us-ascii?Q?fxxnl3rQEe8mW3uumKXM0oOhNa8HSzurbtvMhrDjNhalCAPwMwhmrum2hZ/m?=
 =?us-ascii?Q?JTqm72/MhpXixo0YitVvAktBmlu9Qu8PPUybthrAdaWveXiUqXo1zMwD0y09?=
 =?us-ascii?Q?8HuU5+V7z52Au9At6H59ZH1erRU9TzoDJMuMo36UuNVgUU378b9MwHASQ7Zi?=
 =?us-ascii?Q?QFY3p8+Vv1xGwVohurnoCPwS5VR0ykxWf6Y5SM2DA9LI4HynEcjjxA4nmxKi?=
 =?us-ascii?Q?N3zWbSvrKawgZZw+yazTp2j5+fffDCdkc8bsT5QFD2aOJjQy2fBo75j7iBq+?=
 =?us-ascii?Q?N/WXx/xG0BJMXxSf5IrnRV9c64Q5KdpPNNpza9bx6cMgk7TWvIHr2YQQYois?=
 =?us-ascii?Q?U7tDIqGa2lP0SKWambT13/SckBHzE2B7FhpeX4TFSOs93iC+eUhcEmhooZGw?=
 =?us-ascii?Q?83sNVg+83ctpTFsBialj6NR1DFxoqQJj?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?d2QyVbO89AAx7QxIauppgNHiHaXHuPvQpZRZ8g3c16UqF7MG6ov8qAAi4taL?=
 =?us-ascii?Q?NoidXsSMy1oiqymKXwPaAKbRGwJ9aY9RyYPhkijno9vNYEymfyZLeejzKuwC?=
 =?us-ascii?Q?5WSYzHATCRfHkveYRvH98vE73mW7IUiJ6IBfigesa8OHzI8c8t7CGo/Uppm5?=
 =?us-ascii?Q?DB2ZMgH4KE3P/Fw+UiKqN7vJ/UKk0ZzKgujOngfsTNgum+y9d0LelLJoCIkl?=
 =?us-ascii?Q?esQhwzYc0BTa1r6DH5doaHcJXl6nmVmnPW2vGsrPtqcbhwvYTGZOkGGUA4R5?=
 =?us-ascii?Q?+efFFnPmOHnelJ/7V2Xqkr/17HGuetp1wYmGZiaACJ8KfYbwhnG24cIXdmsA?=
 =?us-ascii?Q?87hDOdOo+I/7Lrv6fWLOjtP7GTJz1Bu5kBKyxoCYF4wUiYs35nB7q5LNivAr?=
 =?us-ascii?Q?VLT6T1jpHReDki5eolkhXRAb62OvJgaq4auzkHxDS5d8gqWHr1sVEAckQycP?=
 =?us-ascii?Q?6vXEM3Ciod9TkyLT7zcOoJ/W4bsXJCYZQ9mxtW1k+YGcheRpn008lLGi3HZB?=
 =?us-ascii?Q?X7GmqgSc7tF0Frzf53qYNpJRypEWhrRSX/vks+Bm+m46vVFXMDwKL7RiZA+v?=
 =?us-ascii?Q?XY4OAUAuL9i5HidSh9zx+DRi1Kz5eak6Q0Itb3+5ovot6T8FnWh8vicMlsQx?=
 =?us-ascii?Q?rbWsiViYCByFk37vdlpczOV8POqAJrN74ATYsnZkreLqV183cgcSgf4A4rIR?=
 =?us-ascii?Q?XcmYjIUyYBQSCaI73Jbia7QWrYgOkx+hcC5STqZbTdTpBlAUFMWbvgVm77GU?=
 =?us-ascii?Q?ptQmzsJo443MXNcJ5rILHqV8E55iQ3IZ4NSRMt77ni1jdEZ5poz+4oA/33zV?=
 =?us-ascii?Q?VAbyYFf7rWRfm/goqAhMi+I38VeG1Z8XCFgDxuvS0xUIzUMvfuZmVeIsuyGM?=
 =?us-ascii?Q?0fahEovhC+QBuoQeYaygayVlYCWm7T/Q8iBW/mIKs2GX7wWLYLpNsjyYIXWo?=
 =?us-ascii?Q?oQWglJlriOUy/BWy9HwvyZgPzRZpzBsTA0779y3ihhDywX/S7gJUjoVYNV6q?=
 =?us-ascii?Q?VPD+kL6AMbHq84qlK0VKmszyc/2uEsXwvAhd4o0hB2tTyyy5Rp3yi6C47bt3?=
 =?us-ascii?Q?XK7/UUrhFNg1rgLxscmuPxrNkZszLkWVIrdoWbFPxk6oIuQ+PsDDAd3eanMA?=
 =?us-ascii?Q?MqSWEEYJj2ocsVYA/pHMTpAGZlP0yBLZ3O0BzisyJA5hCYsS5X54Nv4zvk3V?=
 =?us-ascii?Q?fR0tWsOrySqRi2laLfxKKUHZkYGSsk4vMSCL3TGt+3aBb6Pv9so3s0PD3AWU?=
 =?us-ascii?Q?C2PjT0Eju103TkU3EtzdQ+NGvCmw6cW7W4KaQQZFIS2I+OggGfC38Bg5QHrI?=
 =?us-ascii?Q?uVDrbmU1wH/Zie+tQOkYdIMt2vSKjsFkecgSgElJF8u3BFDF83JN+2AHwOj7?=
 =?us-ascii?Q?M8H14B8ALZ6OT+Dz+gwfOn18NUbG+DNUUw8NrrtAjYvZVDzrEX7qivUgy1cN?=
 =?us-ascii?Q?NSLRH77LAEWrYzisE9nahSgPthflQY1oya3BRwpcI/yqNT8zfpcxsXDqKoiG?=
 =?us-ascii?Q?DEjyDZCS44h5SkCSabMbVV+Wh2Tp8mWEdIBOqhuTMXghRvsrzuSUUmGRFJF6?=
 =?us-ascii?Q?37edkErpusNqnByFtNpYsYQxIRQH4l/rDnazHdiG?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 58410207-32cd-4394-4387-08dd63362b6a
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Mar 2025 20:24:06.3079 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4jKSu+3bUuQSl5J8naKyOiZOfZdj2X32Z4DIVaY8TDlS1mjKJKONiNJOZZ6tTiLyGJyo1iV7CICYE0YHa16j4g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7468
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741983880; x=1773519880;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LLQjUxPGpTu1W1xhlzVyXVgLAZikAJYbbBpKIoqANhA=;
 b=j6z3M/1Ge3xgG/CHTRKqrKEbKDQDpEqJl6qKoPoBavuxVfGkTdVLOBWg
 qFfo5hhW/wjj2F3z7PZaqe63kzKKezBvcQqyQqkKmy0kB3lZiQf3838e7
 mCjgAy7VDj1D9+J3/5R/wP+gedYBiXJHgZvHqfK4HH5oR9CRtBmbR2bdd
 IECBzr43vPCgljF7XlI515dXQsNrMSsYW6xKStBQCgIU5EhUYz5vTDlHT
 esZthhPG6r9x7KQU2a1dQtxYY/RB7uMAHckaWObAiGqgly58gSnLV81LF
 d75uo6WWmLGKr4/1nJ0nSgYS5gN1JwU9msmA5TrYP1PgYrhGddO0YgXxL
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=j6z3M/1G
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v9 iwl-next 05/10] idpf: add mailbox
 access to read PTP clock time
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Milena Olech
> Sent: Thursday, March 13, 2025 11:04 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Olech, Milena <milena.olech@intel.com>;
> Lobakin, Aleksander <aleksander.lobakin@intel.com>; Willem de Bruijn
> <willemb@google.com>
> Subject: [Intel-wired-lan] [PATCH v9 iwl-next 05/10] idpf: add mailbox ac=
cess
> to read PTP clock time
>=20
> When the access to read PTP clock is specified as mailbox, the driver nee=
ds to
> send virtchnl message to perform PTP actions. Message is sent using
> idpf_mbq_opc_send_msg_to_peer_drv mailbox opcode, with the parameters
> received during PTP capabilities negotiation.
>=20
> Add functions to recognize PTP messages, move them to dedicated secondary
> mailbox, read the PTP clock time and cross timestamp using mailbox
> messages.
>=20
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Reviewed-by: Willem de Bruijn <willemb@google.com>
> Signed-off-by: Milena Olech <milena.olech@intel.com>
> ---
> 2.31.1

Tested-by: Samuel Salin <Samuel.salin@intel.com>
