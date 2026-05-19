Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id P5SCMM/dDGrdpAUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 May 2026 00:01:51 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BA1F585644
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 May 2026 00:01:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 62B0340E64;
	Tue, 19 May 2026 22:01:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N-TiNneUa3-5; Tue, 19 May 2026 22:01:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A8ED640EF8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779228106;
	bh=MRE9qm7SYU8YJPqooPZWTOm8G3RFopLsKgis8GEAf8g=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=65FY/bppLSyu4FdGvlMow3TJO+a8SPLMTN4tsN0HKbbmQW91IAmKbGrjM6Md4RDq2
	 iwX26rXh3bGsxqBAvfWulQuzD+iSJdxnjjUKStmaz1dVrCaGuCQDmTEq23uaAw8yF/
	 0Jqn9KWbCnY1iVr2zZN8yoRMKiD4K+vv+iJMzEWrZ40I7xdex7xQuxlOigxLTduMzz
	 RFP22e5p5s1/Wz/n9JsDJ7QGtbYv0wMZ/wv7h+hj2Bpg0o7DWWre8u1cWNGa3Gzsjf
	 FQPT8rfj6q6300bOdAW8aY6iJ62YLbWrsw95PYqCrQ3UksTS0cQd4HpP8MwESEDqCS
	 uCXIRH30b0COA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A8ED640EF8;
	Tue, 19 May 2026 22:01:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id DFCA1282
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2026 22:01:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D0E74405C7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2026 22:01:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Py9c1qOmOY35 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 May 2026 22:01:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 031AB4037D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 031AB4037D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 031AB4037D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2026 22:01:42 +0000 (UTC)
X-CSE-ConnectionGUID: nrRiowZMTXK+3FrAhQpjmg==
X-CSE-MsgGUID: srVKohD7QeSYGazssR7ykA==
X-IronPort-AV: E=McAfee;i="6800,10657,11791"; a="90816195"
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="90816195"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2026 15:01:41 -0700
X-CSE-ConnectionGUID: kiMcGwMQRxuEhnLdE1WQKA==
X-CSE-MsgGUID: 908t8Wi+T+CNbGHsDXDZTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="240182916"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2026 15:01:41 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 19 May 2026 15:01:40 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 19 May 2026 15:01:40 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.12) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 19 May 2026 15:01:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eKl8DFGJUnILkGyj3GiLQ6Y4fTHaZjjxq8dN0Qus8xVWGGWJ6C1IR4EhVcKhr9jju+h7IXlC43Yh2negP+rYpXuPq2FlL0SVr85lQ6IoJ2YyQRCgEc45f8IwFWgzwmFwa5vQ9FFM9viW0R7r6bR5fX98CJBHjUhTl5WlRYxgbwcVfdLvmKSQpVIZuRgdb1X8UpcoNRvsvc+HzWr8aCOgZ7gE9PP8E7gRUtSwAjQvxPZlRy9BG7YdOh0plnHCWF3z6e70x24qkmve9Fl2PnANqFvbzFeulpFA++TgC4Y1V+4emi+VeRMvCSHw/ghn589BhKis6+srsW3IBEc73lw5MA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MRE9qm7SYU8YJPqooPZWTOm8G3RFopLsKgis8GEAf8g=;
 b=V0U2vIBlHRpBzp9v4W84t1FXtNznUuNSRvKp+BOmdxASFbAlBqbL7uLFpzlRbxLBysRhIQn7wY9f3JaxxBCWlFWQYTpE6lZ5DiT63muqFjD4XGImvpGlwUHBxbjvM4ser+OrshC+J+W8j37XHIFzD40R1LxomXMZFJVrRKvtzz7QMxBy4V2DjU1OSEDRXCCmSBW8APyidkrngLL0fs5zW3kGFuSNYrB3YJbilvx0ue4G4g9L66bF7cW7Y0rjwL5X58cSi/FALS8dIzyRs+xTT2XsCm6PkAifLd1yMRz9XVDBeVD75g0KZz87y15tIt7IpshVUf22XoynqLJZSYcWMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6219.namprd11.prod.outlook.com (2603:10b6:208:3e9::15)
 by IA0PR11MB7912.namprd11.prod.outlook.com (2603:10b6:208:3dd::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.24; Tue, 19 May
 2026 22:01:33 +0000
Received: from IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::a2b9:8e8:c48b:ea31]) by IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::a2b9:8e8:c48b:ea31%5]) with mapi id 15.21.0025.022; Tue, 19 May 2026
 22:01:33 +0000
From: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>
To: Paolo Abeni <pabeni@redhat.com>
Thread-Topic: [PATCH v9 net-next 8/8] ice: implement E825 TX ref clock control
 and TXC hardware sync status
Thread-Index: AQHc4/YefvpjlgHCe0GvWSw042UZ6LYVQByAgABb3EA=
Date: Tue, 19 May 2026 22:01:33 +0000
Message-ID: <IA1PR11MB6219EF879F2FB15087FB378F92002@IA1PR11MB6219.namprd11.prod.outlook.com>
References: <20260514225946.2885623-9-grzegorz.nitka@intel.com>
 <20260519113831.152957-1-pabeni@redhat.com>
In-Reply-To: <20260519113831.152957-1-pabeni@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6219:EE_|IA0PR11MB7912:EE_
x-ms-office365-filtering-correlation-id: 83fd3c7f-fca0-4b58-a926-08deb5f23069
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|366016|3023799007|38070700021|18002099003|22082099003|56012099003|4143699003|11063799006|5023799004;
x-microsoft-antispam-message-info: 69YBIQs32A5iCKIErF2Hz4QNCXQ7PgVUj//6kkm9z+DPxos5rnR2r4eZK7/s3m1WTOxdPICAC4GkqRoqIryx00WDhC9DOEJrtPvfIVvIzUl+AxD2IycWEpY8JLm0UGP3oMJPT6AFdcmWBIHOpnmAcLT2/YsDPRpfgubiUNdqnaA4AdNch+xqo4m4G4XDMtWBM+5610nQNoO/bYTUvTlBLa5UFe+rEdqjRtE3pTlp2opN952mXi/tau8tbiAPNNCmyulUn0Tn3hw5beAugPxhiRsgt5Prk1hvFmlqDZOS0JKyuAaUZRjVLRBLpTC1heivRBiHV/NeRj+niUgwtkxkMfy54+R4HFjUoKPMnu0tJua1YCgGeF0sueVJcj0jxlkG8M9d/blXH3+cRy4JsnuUuII/bOAS1MksAlDBJp4R2sy9S0fNAijQQClCQR6wRnaiFZhHswETtFfzV7HbY+ycYU861Hejj6Ps4rmGmwNOhBeUpEUFz5xH/O2RLPd6y5lgnWbCaVTh1Qsh6478IGZuxx2aZNx3qF0Jzq/euDw7/AzFsRQWcARfGXVNsVFNsX4zYrdoXbzTJKgntJUfz22b1jcZ7EAr27Muhz1YjvhCnq9hkCbXf4M9nEhfMjqq6a6Tr/L8lDInyuyXczekLy7dJ1FA9lnfVC4pCPS5Du19Tch005cvSMoExzAd39ygcqkTnP8nt8PlVuLtrplep8L1gQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6219.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016)(3023799007)(38070700021)(18002099003)(22082099003)(56012099003)(4143699003)(11063799006)(5023799004);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?YiQmMxQfd7woGVqJgl+igIUq6nG7tLqyVqL0BNNWynITKpCzGw04roQTT5iG?=
 =?us-ascii?Q?IZXge+i4YQF5QXBvM3aaoPfJZAyX4+6xGn9HabBwF8M1L/akfu4H0pbfA7Od?=
 =?us-ascii?Q?CphQtwo4Ig38/Ot1jG5iBp7gQKpWmWtt83sjW6vJ4WZ3xCMmRKqKRP0Styd0?=
 =?us-ascii?Q?ixQGvY5IwLQ4eRkHf5ymr+XCdvuYDiXHKs/vxf5aLHxx1V4kNosVAcWO7MsJ?=
 =?us-ascii?Q?SYYQCt2IuX0qMlJIcq5ugrrIrPguVdH6k+9EQFG6z9fXBsiKsGTkW+a/rsSk?=
 =?us-ascii?Q?s22lAPy3bgPnMQeLB3glYfi87r8gqaT+NZ4a3SgOTCHR6GO0EToQmbAh3aqc?=
 =?us-ascii?Q?bQYquAjRFoalkwnkgFhLoKn+mIICkv0IcTTcNsYHhtaLXjkg3ucEqad6sJ3m?=
 =?us-ascii?Q?7w+UlL/kycShYrsUJ9tzotsD3RRbDlIEO7R/xIb/GFtcIHYL81XTAWZEE8rd?=
 =?us-ascii?Q?wzXEDPZX95XtmoxBECgpilbfsLRCAwlxYC3jJqvJITgEmbLX/osNS8ccKwXk?=
 =?us-ascii?Q?qKmd4NIyIA0u2tIby4xBb9nt02Wy3uC7gTLTQKIe+Rvt/6E4grnsOZ4XHqVy?=
 =?us-ascii?Q?H9TB4hr2nVVv21ltxAc5T6LEzGgOvcqHmy6olBL+3KRxQCFIhKbdkQjsYgCl?=
 =?us-ascii?Q?mIW/w9zrjuINFq7N/9fFD7MnRAnWroStxMszVbnwh+37E4cT15yZF7GxT5nc?=
 =?us-ascii?Q?e6h1bZh6FOxVgU2MJjTHizwLbHacs8Dd1pB24ETxMbUGRN627+y+VOBDXpdm?=
 =?us-ascii?Q?HV9QJQ+fQoIQrYKF8GZjJAll405YcYnGJtBJWzh2UFY13KssCeEkOPjd/wjZ?=
 =?us-ascii?Q?PxFWO85JhWmZiwG6yvJ8qtleJNL45MxuVEimbIRtIm4o5nn5oSNe6CaXcL5m?=
 =?us-ascii?Q?7vJ6XiStqorhI8F7QxaL9LxreworbwwV0Q/LZ2cIfIqzt++0JqZzQHpcKrQ+?=
 =?us-ascii?Q?jjbLUisObB1TjAB0AFM2H1Fbxj1+xR9h8C/V39eCHVNE4V242Q8HvQ3PTgS6?=
 =?us-ascii?Q?Hya2CE+4qemfjr9hyn1C+JM0fJQfDubR1SFPyEq4rJOZPghyreROtKZivSVQ?=
 =?us-ascii?Q?sU4J303LI40g8d+m1ElE223hJ33SnKFgVgAGHrEQfv/0YCuDai4gwgSUaZvi?=
 =?us-ascii?Q?1MUFeCrE3pPU4TLhHawrdBZAgCtr/UwTYwrvubh0om3q1twxaOI44EDPdG1+?=
 =?us-ascii?Q?sM5EiASr0wEnCm3dGILLAYWKQDZqaHjRHapfETTC+vP8+guzTo9S+BWAUiS6?=
 =?us-ascii?Q?1s6cWy3bOF5cDBqFNEWwKKrDBCl2VSqE+btT2U4v8OtImjJXhvoHxJIyyGvN?=
 =?us-ascii?Q?y9XsiBZ02zXyFTo1LO1pS+hvt2wkxEoj0LDrC4UJvMXWPrGsbn4Vkh2i2R0i?=
 =?us-ascii?Q?7c4MCH9InmysRjKDVjm/KdKdlMDK88Z4jhCIXjuUVdISfqhzmIZhGpfOsrYf?=
 =?us-ascii?Q?jhZdS1MUVg+UGXEOSkcK0GXTVrFJPX9uZoNWbZySOsHQUFCw6IheKmx2sgMJ?=
 =?us-ascii?Q?mhNwUwTb3m3u/P7I+NmDpKgvUq4rrT8QWsI7c6C4d5X4wY6Eris+YH1EySMH?=
 =?us-ascii?Q?LeHthyz6l3vz+zmi3/wm8iC+vtxp9dtGPdjo/BJnuE0RvjCJBACvKt+V1smu?=
 =?us-ascii?Q?n1A8gmjdaIesx7jgbclfD9Z9ESVmKPWlbJEsFfW12osWykN6rPCY3ds8RNEa?=
 =?us-ascii?Q?FCuM7aewhSyZoS9aafHNkrbCRVD1/nN4l2VzEAotgTIkTlGec1f5NlxH9KzQ?=
 =?us-ascii?Q?9hzf7AYqCA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: hP1vDOYZxptJxp9Lk+FEdvbeNVpJuUz7YujARqbtFLtnI8Z4trb/xC09F4njljk2Muqen7LkaZNUY7G2fem2oljCj1pVI0orWZMEoNHWm+mQw2fszaXiG8ya1tmAAF3QYMxeC+Br3r4ja1tBa7R4l8hnZR2D6KJSL513t4Qt0P9ru16LNgPp4Ni/CGW+cchoOel2EKhF4rZEfrYygPddgRzHRY8vrNBmYO/SUhaB5JAIRYc9C43GY78VT0oTtwzCiIDGjB727fB5YG3pebaMF/PnDaQXrxWxq1L0xPt5MEEXqBCXzKI5w/NF1aVI+l/4FNYLzjbFmIx8/3DJujbjrQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6219.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 83fd3c7f-fca0-4b58-a926-08deb5f23069
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2026 22:01:33.1856 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: p1kUj2Y5dxR9Nb9t/qAsRFFhHOCOTXE6o1ITmmsdvKTKDk4Z8gqLDrqCS7FSbVnTATuS3pfJhuisWQ42eq1qQdGXP/hFbhDaukQhMUDybrs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7912
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779228103; x=1810764103;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=eq73gcQf0Jb7le4S08x6k0Q064zXfiPDw+g5Pz+6+gM=;
 b=e8W86iys+4CDNmJQY7FWfHYEfA/oSq+XDYBJ7l19xbSUwN6a1h1ECRlf
 hOIcbvjCGJQBfClQnoC0oMxJh1uVLPgdQICVawnpnsuSPxZtShjPxlh1x
 +6qcckO6xvSUbvjiUudRYMfJhVZEIXUIyrq4E9WZSRew5U4WKPhqPrMhg
 u9UirFvD5Fk0MRN3Ov35aAi9MCC83gK/otndTr5voo8+28z51auD63Fcx
 CAhn8MZWJUUGZuVrAftpKT+cOQ4FJrN6vAOeyKQUfNPZijEIiETCVwz9X
 8g7g6nVw/HUh+1Gy1lsqlYmmCMQwJmQYKmUDyZYCyOTh1gvnPwbJlElS9
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=e8W86iys
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v9 net-next 8/8] ice: implement E825
 TX ref clock control and TXC hardware sync status
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
Cc: "Vecera, Ivan" <ivecera@redhat.com>,
 "vadim.fedorenko@linux.dev" <vadim.fedorenko@linux.dev>,
 "kuba@kernel.org" <kuba@kernel.org>, "jiri@resnulli.us" <jiri@resnulli.us>,
 "edumazet@google.com" <edumazet@google.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "donald.hunter@gmail.com" <donald.hunter@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "Prathosh.Satish@microchip.com" <Prathosh.Satish@microchip.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "horms@kernel.org" <horms@kernel.org>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:pabeni@redhat.com,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:kuba@kernel.org,m:jiri@resnulli.us,m:edumazet@google.com,m:netdev@vger.kernel.org,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:Prathosh.Satish@microchip.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,kernel.org,resnulli.us,google.com,vger.kernel.org,gmail.com,intel.com,microchip.com,lunn.ch,lists.osuosl.org,davemloft.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 7BA1F585644
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Paolo Abeni <pabeni@redhat.com>
> Sent: Tuesday, May 19, 2026 1:39 PM
> To: Nitka, Grzegorz <grzegorz.nitka@intel.com>
> Cc: netdev@vger.kernel.org; linux-kernel@vger.kernel.org; intel-wired-
> lan@lists.osuosl.org; Oros, Petr <poros@redhat.com>;
> richardcochran@gmail.com; andrew+netdev@lunn.ch; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Prathosh.Satish@microchip.com; Vecera,
> Ivan <ivecera@redhat.com>; jiri@resnulli.us; Kubalewski, Arkadiusz
> <arkadiusz.kubalewski@intel.com>; vadim.fedorenko@linux.dev;
> donald.hunter@gmail.com; horms@kernel.org; pabeni@redhat.com;
> kuba@kernel.org; davem@davemloft.net; edumazet@google.com
> Subject: Re: [PATCH v9 net-next 8/8] ice: implement E825 TX ref clock con=
trol
> and TXC hardware sync status
>=20
> From: AI Reviewer <ai@example.com>
>=20
> This is an AI-generated review of your patch. The human sending this
> email has considered the AI review valid, or at least plausible.
> Full review at: https://netdev-ai.bots.linux.dev/sashiko/
> ---
> ice: implement E825 TX ref clock control and TXC hardware sync status
>=20
> This change implements TX reference clock switching for E825 devices via
> a deferred worker triggered by DPLL TXCLK pin operations, and reconciles
> software state from hardware after link-up using a new TXC DPLL lock
> status indicator.
>=20
> A few questions inline below.
>=20
> > diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c
> b/drivers/net/ethernet/intel/ice/ice_dpll.c
> > index 1b193e0c35ab..c9b101613fbf 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_dpll.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
>=20
> [ ... ]
>=20
> > +static void ice_dpll_txclk_work(struct work_struct *work)
> > +{
> > +	struct ice_dplls *dplls =3D
> > +		container_of(work, struct ice_dplls, txclk_work);
> > +	struct ice_pf *pf =3D container_of(dplls, struct ice_pf, dplls);
> > +	enum ice_e825c_ref_clk clk;
> > +	bool do_switch;
> > +	int err;
> > +
> > +	mutex_lock(&pf->dplls.lock);
> > +	do_switch =3D pf->dplls.txclk_switch_requested;
> > +	clk =3D pf->ptp.port.tx_clk_req;
> > +	mutex_unlock(&pf->dplls.lock);
> > +
> > +	if (!do_switch)
> > +		return;
> > +
> > +	err =3D ice_txclk_set_clk(pf, clk);
> > +
> > +	mutex_lock(&pf->dplls.lock);
> > +	pf->dplls.txclk_switch_requested =3D false;
>=20
> [High]
> Can a request that arrives while the worker is running be silently
> dropped here?
>=20
> The worker samples tx_clk_req under the lock, drops the lock to call
> the slow ice_txclk_set_clk() (CPI commands plus an AN restart), then
> unconditionally clears txclk_switch_requested. Consider this
> interleaving:
>=20
>   CPU0 (callback A)         CPU1 (worker run #1)        CPU2 (callback B)
>   set tx_clk_req =3D A
>   set flag =3D true
>   queue_work
>                             sample do_switch=3Dtrue,clk=3DA
>                             unlock
>                             ice_txclk_set_clk(A)...
>                                                         lock
>                                                         set tx_clk_req =
=3D B
>                                                         flag still true
>                                                         queue_work
>                                                         unlock
>                             lock
>                             flag =3D false  <-- B's flag cleared
>                             unlock
>                             (re-queued run #2)
>                             do_switch=3Dfalse; return
>=20
> The hardware stays at A while pf->ptp.port.tx_clk_req =3D=3D B, and the
> next link-up will misinterpret B as a failed switch and revert
> software state.
>=20
> Would clearing the flag before invoking ice_txclk_set_clk(), or only
> clearing it if pf->ptp.port.tx_clk_req still equals the snapshotted
> clk under the lock, address this?

This seems to be a valid concern.
To be addressed in the next iteration.

>=20
> > +	if (err) {
> > +		/* Roll back the requested clock to match the current
> hardware
> > +		 * state so that ice_txclk_update_and_notify() does not
> > +		 * misinterpret a future link-up as a failed switch.
> > +		 */
> > +		dev_err(ice_pf_to_dev(pf),
> > +			"TX clock switch to %u failed, err=3D%d; reverting\n",
> > +			clk, err);
> > +		pf->ptp.port.tx_clk_req =3D pf->ptp.port.tx_clk;
> > +	}
> > +	mutex_unlock(&pf->dplls.lock);
> > +}
> > +
>=20
> [ ... ]
>=20
> > @@ -2635,11 +2690,29 @@ ice_dpll_txclk_state_on_dpll_set(const struct
> dpll_pin *pin, void *pin_priv,
> >  				 void *dpll_priv, enum dpll_pin_state state,
> >  				 struct netlink_ext_ack *extack)
> >  {
> > -	/*
> > -	 * TODO: set HW accordingly to selected TX reference clock.
> > -	 * To be added in the follow up patches.
> > -	 */
> > -	return -EOPNOTSUPP;
> > +	struct ice_dpll_pin *p =3D pin_priv;
> > +	struct ice_pf *pf =3D p->pf;
> > +	enum ice_e825c_ref_clk new_clk;
> > +
> > +	if (ice_dpll_is_reset(pf, extack))
> > +		return -EBUSY;
> > +
> > +	mutex_lock(&pf->dplls.lock);
> > +	if (state =3D=3D DPLL_PIN_STATE_DISCONNECTED &&
> > +	    p->tx_ref_src !=3D pf->ptp.port.tx_clk_req)
> > +		goto unlock;
>=20
> [Low]
> Should this early path return something other than 0? The kerneldoc
> update for this function says "0 - success / negative - failure", but
> this branch silently returns success for a DISCONNECT request that is
> ignored because the pin's tx_ref_src does not match the currently
> requested clock. Userspace cannot distinguish "request honored",
> "request ignored", and "no-op already in target state" via the return
> value.
>=20
> > +
> > +	new_clk =3D (state =3D=3D DPLL_PIN_STATE_DISCONNECTED) ?
> ICE_REF_CLK_ENET :
> > +			p->tx_ref_src;
>=20
> [Low]
> Should non-DISCONNECTED values besides DPLL_PIN_STATE_CONNECTED
> also
> be accepted as a connect request? Any state value other than
> DPLL_PIN_STATE_DISCONNECTED (including DPLL_PIN_STATE_SELECTABLE) is
> silently treated as a connect here. Other pin-set callbacks in this
> file (ice_dpll_input_state_set, ice_dpll_pin_state_set_sma) explicitly
> reject unsupported states with -EINVAL.
>=20

Valid concern, to be fixed by explicit state validation.

> > +	if (new_clk =3D=3D pf->ptp.port.tx_clk_req)
> > +		goto unlock;
> > +
> > +	pf->ptp.port.tx_clk_req =3D new_clk;
> > +	pf->dplls.txclk_switch_requested =3D true;
> > +	queue_work(pf->dplls.wq, &pf->dplls.txclk_work);
> > +unlock:
> > +	mutex_unlock(&pf->dplls.lock);
> > +	return 0;
>=20
> [Medium]
> Once the worker has been queued, this returns 0 unconditionally. If
> ice_txclk_set_clk() in the worker fails, the only feedback is a
> dev_err and a silent rollback of tx_clk_req to tx_clk in
> ice_dpll_txclk_work(). There is no extack message to userspace and no
> dpll_pin_change_ntf() emitted on the rollback. After failure the next
> pin-get can still report a different pin as CONNECTED because
> tx_clk_req was reverted.
>=20
> Would emitting a dpll_pin_change_ntf() from the worker's error path
> help userspace observe that the requested switch did not occur?
>=20

Indeed, there is a notification mechanism for error path already implemente=
d,
however it's applied after link restart (so after link is up).
That early error detection path was overlooked.
To be applied in the next iteration.
=20
> >  }
> >
> >  /**
> > @@ -2651,10 +2724,21 @@ ice_dpll_txclk_state_on_dpll_set(const struct
> dpll_pin *pin, void *pin_priv,
>=20
> [ ... ]
>=20
> >  static int
> >  ice_dpll_txclk_state_on_dpll_get(const struct dpll_pin *pin, void *pin=
_priv,
> > @@ -2663,11 +2747,18 @@ ice_dpll_txclk_state_on_dpll_get(const struct
> dpll_pin *pin, void *pin_priv,
> >  				 enum dpll_pin_state *state,
> >  				 struct netlink_ext_ack *extack)
> >  {
> > -	/*
> > -	 * TODO: query HW status to determine if the TX reference is selected=
.
> > -	 * To be added in the follow up patches.
> > -	 */
> > -	*state =3D DPLL_PIN_STATE_DISCONNECTED;
> > +	struct ice_dpll_pin *p =3D pin_priv;
> > +	struct ice_pf *pf =3D p->pf;
> > +
> > +	if (ice_dpll_is_reset(pf, extack))
> > +		return -EBUSY;
> > +
> > +	mutex_lock(&pf->dplls.lock);
> > +	if (pf->ptp.port.tx_clk_req =3D=3D p->tx_ref_src)
> > +		*state =3D DPLL_PIN_STATE_CONNECTED;
> > +	else
> > +		*state =3D DPLL_PIN_STATE_DISCONNECTED;
> > +	mutex_unlock(&pf->dplls.lock);
>=20
> [Medium]
> The commit message says "TX reference selection and synchronization
> status must be observed from hardware rather than inferred from user
> intent", but this get callback derives state from tx_clk_req (the
> user-requested value) rather than from tx_clk (the
> hardware-reconciled value) or from ice_get_serdes_ref_sel_e825c().
>=20
> If a switch is requested but firmware/AN never accepts it (link never
> comes up, or AN restart fails after the worker rolls back tx_clk_req
> to tx_clk), how long can userspace keep observing the requested pin as
> CONNECTED?
>=20

This is a kind of design choice.=20
So the design intent is: pin state =3D intent, TXC DPLL lock-status =3D har=
dware reality.
Indeed, the commit message claims something opposite.
I'm going to fix a commit message.

> >
> >  	return 0;
> >  }
>=20
> [ ... ]
>=20
> > @@ -4674,10 +4767,21 @@ void ice_dpll_deinit(struct ice_pf *pf)
> >  {
> >  	bool cgu =3D ice_is_feature_supported(pf, ICE_F_CGU);
> >
> > +	/* Clear the flag under the lock so that concurrent callers of
> > +	 * ice_txclk_update_and_notify() either see the cleared flag and
> > +	 * return early, or are already past the check and will finish
> > +	 * before we proceed to free pins and DPLL devices below.
> > +	 */
> > +	mutex_lock(&pf->dplls.lock);
> >  	clear_bit(ICE_FLAG_DPLL, pf->flags);
> > +	mutex_unlock(&pf->dplls.lock);
> > +
> >  	if (cgu)
> >  		ice_dpll_deinit_worker(pf);
> >
> > +	if (pf->hw.mac_type =3D=3D ICE_MAC_GENERIC_3K_E825)
> > +		cancel_work_sync(&pf->dplls.txclk_work);
> > +
>=20
> [High]
> Is the comment above accurate? It claims concurrent callers "will
> finish before we proceed to free pins and DPLL devices", but
> ice_txclk_update_and_notify() drops pf->dplls.lock before invoking
> dpll_pin_change_ntf(old_pin), dpll_pin_change_ntf(new_pin), and
> dpll_device_change_ntf(pf->dplls.txc.dpll). Consider:
>=20
>   CPU0 (link-up)                        CPU1 (rmmod)
>   ice_txclk_update_and_notify()
>     lock; ICE_FLAG_DPLL set; capture
>     old_pin/new_pin/txc.dpll; unlock
>                                         ice_dpll_deinit()
>                                           lock; clear flag; unlock
>                                           cancel_work_sync (drains
>                                             worker only)
>                                           ice_dpll_deinit_pins()
>                                             -> dpll_pin_put on
>                                                txclks pins
>                                           ice_dpll_deinit_dpll()
>                                             -> dpll_device_put
>     dpll_pin_change_ntf(old_pin)  <-- UAF
>     dpll_device_change_ntf(...)   <-- UAF
>=20
> cancel_work_sync drains the txclk_work, but the link-change caller
> that invoked ice_txclk_update_and_notify() is not synchronized.
>=20
> [Medium]
> Separately, this teardown cancels the worker but never invokes
> ice_cpi_ena_dis_clk_ref(..., false) to undo the CPI enables performed
> by ice_txclk_set_clk()/ice_txclk_enable_peer() during the driver's
> lifetime. After unload, do external SyncE/EREF0 references stay
> enabled in hardware on both PHYs across rmmod/modprobe?
> ice_get_serdes_ref_sel_e825c() detects the currently selected clock on
> re-init but cannot detect clocks that were CPI-enabled but never
> AN-selected.
>=20

Valid concern. To be addressed in the next iteration.

> >  	ice_dpll_deinit_pins(pf, cgu);
> >  	if (!IS_ERR_OR_NULL(pf->dplls.pps.dpll))
> >  		ice_dpll_deinit_dpll(pf, &pf->dplls.pps, cgu);
>=20
> [ ... ]
>=20
> > diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c
> b/drivers/net/ethernet/intel/ice/ice_ptp.c
>=20
> [ ... ]
>=20
> > @@ -3073,6 +3072,7 @@ static int ice_ptp_setup_pf(struct ice_pf *pf)
> >  {
> >  	struct ice_ptp *ctrl_ptp =3D ice_get_ctrl_ptp(pf);
> >  	struct ice_ptp *ptp =3D &pf->ptp;
> > +	u8 port_num, phy;
> >
> >  	if (!ctrl_ptp) {
> >  		dev_info(ice_pf_to_dev(pf),
> > @@ -3090,6 +3090,10 @@ static int ice_ptp_setup_pf(struct ice_pf *pf)
> >  		 &pf->adapter->ports.ports);
> >  	mutex_unlock(&pf->adapter->ports.lock);
> >
> > +	port_num =3D ptp->port.port_num;
> > +	phy =3D port_num / pf->hw.ptp.ports_per_phy;
> > +	set_bit(port_num, &ctrl_ptp->tx_refclks[phy][pf->ptp.port.tx_clk]);
> > +
> >  	return 0;
> >  }
>=20
> [Low]
> Should this set_bit be guarded by a mac_type check? The tx_refclks
> bitmap is sized as [ICE_E825_MAX_PHYS][ICE_REF_CLK_MAX] for the E825
> feature, but this runs unconditionally on every PF. Today phy <=3D 1
> and tx_clk =3D=3D ICE_REF_CLK_ENET =3D=3D 0 for non-E825 platforms, so th=
e
> write stays in bounds, but any future change to ports_per_phy or
> num_lports could push phy beyond ICE_E825_MAX_PHYS.
>=20
> Would adding an "if (pf->hw.mac_type =3D=3D ICE_MAC_GENERIC_3K_E825)"
> guard match the rest of the feature?
>=20
> [Medium]
> Also, is this write protected by any lock? Other writers in
> ice_txclk_update_and_notify() take pf->dplls.lock (which is a
> different mutex from ctrl_pf->dplls.lock when pf !=3D ctrl_pf), and
> readers via ice_txclk_any_port_uses() take ctrl_pf->dplls.lock. The
> writer here holds neither. See related question on the writers below.
>=20

Indeed, tx-clk is E825C specific. Mac_type guard to be added
In the next iteration. About write protect - it's at init time.
A comment to be added.

> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice_txclk.c
> b/drivers/net/ethernet/intel/ice/ice_txclk.c
> > new file mode 100644
> > index 000000000000..7b3cf8fc399e
> > --- /dev/null
> > +++ b/drivers/net/ethernet/intel/ice/ice_txclk.c
>=20
> [ ... ]
>=20
> > +int ice_txclk_set_clk(struct ice_pf *pf, enum ice_e825c_ref_clk clk)
> > +{
> > +	struct ice_pf *ctrl_pf =3D ice_get_ctrl_pf(pf);
> > +	struct ice_port_info *port_info;
> > +	bool clk_in_use;
> > +	u8 port_num, phy;
> > +	int err;
> > +
> > +	if (pf->ptp.port.tx_clk =3D=3D clk)
> > +		return 0;
>=20
> [Medium]
> Should this read of pf->ptp.port.tx_clk be done under
> pf->dplls.lock? The field is written under that lock in
> ice_txclk_update_and_notify() and the worker's rollback path. The
> worker invokes ice_txclk_set_clk() after dropping pf->dplls.lock, so
> a concurrent link-up on another CPU may be updating tx_clk
> concurrently here.
>=20
> If a stale value matches clk and this returns 0, the worker proceeds
> to clear txclk_switch_requested unconditionally, silently abandoning
> the AN restart the request needed.
>=20

Lockless read of tx_clk is safe here: we are called only from
ice_dpll_txclk_work() while pf->dplls.txclk_switch_requested
is set, which causes ice_txclk_update_and_notify() (the only
writer of tx_clk) to short-circuit. Therefore tx_clk cannot
change for the duration of this call.

> > +
> > +	if (IS_ERR_OR_NULL(ctrl_pf)) {
> > +		dev_err(ice_pf_to_dev(pf),
> > +			"Can't set tx-clk: no controlling PF\n");
> > +		return -EINVAL;
> > +	}
> > +
> > +	port_num =3D pf->ptp.port.port_num;
> > +	phy =3D port_num / pf->hw.ptp.ports_per_phy;
> > +	port_info =3D pf->hw.port_info;
> > +	mutex_lock(&ctrl_pf->dplls.lock);
> > +	clk_in_use =3D ice_txclk_any_port_uses(ctrl_pf, phy, clk);
> > +	mutex_unlock(&ctrl_pf->dplls.lock);
> > +
> > +	/* Check if the TX clk is enabled for this PHY, if not - enable it */
> > +	if (!clk_in_use) {
>=20
> [Medium]
> Is this TOCTOU intentional? The lock is dropped between reading
> clk_in_use and acting on it. When pf !=3D ctrl_pf and two PFs
> concurrently switch to the same clock on the same PHY, both observe
> clk_in_use =3D=3D false (the tx_refclks bits are only set later by
> ice_txclk_update_and_notify() after link-up), and both proceed to
> call ice_cpi_ena_dis_clk_ref().
>=20

OK, to be fixed.

> > +		err =3D ice_cpi_ena_dis_clk_ref(&pf->hw, phy, clk, true);
> > +		if (err) {
> > +			dev_err(ice_pf_to_dev(pf), "Failed to enable the %u
> TX clock for the %u PHY\n",
> > +				clk, phy);
> > +			return err;
> > +		}
> > +		err =3D ice_txclk_enable_peer(pf, clk);
> > +		if (err)
> > +			return err;
> > +	}
> > +
> > +	/* We are ready to switch to the new TX clk. */
> > +	err =3D ice_aq_set_link_restart_an(port_info, true, NULL,
> > +					 ICE_REFCLK_USER_TO_AQ_IDX(clk));
> > +	if (err)
> > +		dev_err(ice_pf_to_dev(pf),
> > +			"AN restart AQ command failed with err %d\n",
> > +			err);
> > +
> > +	return err;
>=20
> [Medium]
> If ice_aq_set_link_restart_an() fails, the CPI enables performed
> above on both the local PHY and (for SYNCE/EREF0) the peer PHY are
> not undone. The worker's rollback only resets software state
> (tx_clk_req =3D tx_clk) and never invokes ice_cpi_ena_dis_clk_ref(...,
> false). tx_refclks for this port is also not yet updated, so
> subsequent code has no record that the clock was enabled in
> hardware.
>=20
> Would adding rollback of the CPI enables on the AN-restart error
> path keep driver state consistent with hardware?
>=20

The concern is technically valid but addressing it
cleanly requires more than just an error-path rollback.
I'd stay with current implementation.

> > +}
> > +
> > +/**
> > + * ice_txclk_update_and_notify - Validate TX reference clock switching
>=20
> [ ... ]
>=20
> > +void ice_txclk_update_and_notify(struct ice_pf *pf)
> > +{
> > +	struct ice_ptp_port *ptp_port =3D &pf->ptp.port;
> > +	struct ice_pf *ctrl_pf =3D ice_get_ctrl_pf(pf);
> > +	struct dpll_pin *old_pin =3D NULL;
> > +	struct dpll_pin *new_pin =3D NULL;
>=20
> [ ... ]
>=20
> > +	if (clk !=3D pf->ptp.port.tx_clk_req) {
> > +		dev_warn(ice_pf_to_dev(pf),
> > +			 "Failed to switch tx-clk for phy %d and clk %u
> (current: %u)\n",
> > +			 phy, pf->ptp.port.tx_clk_req, clk);
> > +		old_pin =3D ice_txclk_get_pin(pf, pf->ptp.port.tx_clk_req);
> > +		new_pin =3D ice_txclk_get_pin(pf, clk);
> > +		pf->ptp.port.tx_clk =3D clk;
> > +		pf->ptp.port.tx_clk_req =3D clk;
> > +		/* Update the reference clock bitmap to match the hardware
> > +		 * clock that was actually accepted, so that
> > +		 * ice_txclk_any_port_uses() reflects reality even on failure.
> > +		 */
> > +		if (!IS_ERR_OR_NULL(ctrl_pf))
> > +			for (int i =3D 0; i < ICE_REF_CLK_MAX; i++)
> > +				(clk =3D=3D i) ?
> > +				 set_bit(ptp_port->port_num,
> > +					 &ctrl_pf->ptp.tx_refclks[phy][i]) :
> > +				 clear_bit(ptp_port->port_num,
> > +					   &ctrl_pf->ptp.tx_refclks[phy][i]);
> > +		goto err_notify;
> > +	}
>=20
> [Medium]
> On the firmware-override branch, the bitmap is overwritten to
> reflect the accepted clock, but ice_cpi_ena_dis_clk_ref(..., false)
> is not invoked for the rejected clock that ice_txclk_set_clk() had
> just enabled. After this point, future ice_txclk_any_port_uses()
> checks will not see the rejected clock, so it will never be disabled
> by subsequent code. Is this a hardware-state leak in the cross-PHY
> clock-routing case?
>=20
> [Medium]
> Also, the writes to ctrl_pf->ptp.tx_refclks[phy][i] here happen under
> pf->dplls.lock, but ice_txclk_any_port_uses() in ice_txclk_set_clk()
> and ice_txclk_enable_peer() takes ctrl_pf->dplls.lock for reads.
> When pf !=3D ctrl_pf those are different mutexes. The multi-iteration
> loop briefly clears the port bit in old slots before setting it in
> the new slot; can a concurrent reader on ctrl_pf observe a torn
> state and call ice_cpi_ena_dis_clk_ref redundantly?
>=20

Similarly, I acknowledge the torn-state observation; note that today
the only observable consequence is a redundant idempotent CPI enable
(no disable path exists). I'd rather address it in the future follow-up
patch.

> > +
> > +	old_pin =3D ice_txclk_get_pin(pf, pf->ptp.port.tx_clk);
> > +	pf->ptp.port.tx_clk =3D clk;
> > +	pf->ptp.port.tx_clk_req =3D clk;
> > +
> > +	if (IS_ERR_OR_NULL(ctrl_pf)) {
> > +		dev_err(ice_pf_to_dev(pf),
> > +			"Can't set tx-clk: no controlling PF\n");
> > +		goto err_notify;
> > +	}
> > +
> > +	/* update Tx reference clock usage map */
> > +	for (int i =3D 0; i < ICE_REF_CLK_MAX; i++)
> > +		(clk =3D=3D i) ?
> > +		 set_bit(ptp_port->port_num,
> > +			 &ctrl_pf->ptp.tx_refclks[phy][i]) :
> > +		 clear_bit(ptp_port->port_num,
> > +			   &ctrl_pf->ptp.tx_refclks[phy][i]);
> > +
> > +err_notify:
> > +	/* Update TXC DPLL lock status based on effective TX clk, while still
> > +	 * holding the lock to prevent concurrent link-up events from racing
> > +	 * on dpll_state.
> > +	 */
> > +	if (!IS_ERR_OR_NULL(pf->dplls.txc.dpll)) {
> > +		enum dpll_lock_status new_lock =3D ice_txclk_lock_status(clk);
> > +
> > +		if (pf->dplls.txc.dpll_state !=3D new_lock)
> > +			pf->dplls.txc.dpll_state =3D new_lock;
> > +		else
> > +			/* No change; suppress the notification below */
> > +			pf->dplls.txc.dpll =3D ERR_PTR(-ENODEV);
> > +	}
>=20
> [High]
> Is overwriting pf->dplls.txc.dpll with ERR_PTR(-ENODEV) here intended
> as a lasting state change?
>=20
> This is the only handle to the registered dpll_device returned by
> dpll_device_get() during ice_dpll_init_dpll(); it is never restored
> anywhere. After the first time this branch is taken:
>=20
>   - Every subsequent ice_txclk_update_and_notify() will see
>     IS_ERR_OR_NULL(pf->dplls.txc.dpll) true and skip the dpll_state
>     update and notification. The feature becomes a permanent no-op.
>=20
>   - ice_dpll_deinit() guards
>     "if (!IS_ERR_OR_NULL(pf->dplls.txc.dpll))
>         ice_dpll_deinit_dpll(pf, &pf->dplls.txc, false);"
>     so dpll_device_unregister() and dpll_device_put() are skipped on
>     unload, leaking the registered DPLL device.
>=20
>   - ice_dpll_deinit_pins() calls ice_dpll_deinit_txclk_pins() which
>     feeds dt->dpll into ice_dpll_unregister_pins(); that becomes
>     ERR_PTR(-ENODEV) passed into the dpll subsystem.
>=20
> The trigger is mundane: any TX-clk switch where the new effective
> clock has the same lock status as the old one (for example, both
> SYNCE and EREF0 are LOCKED).
>=20
> Would a local boolean ("emit_dpll_ntf") instead of mutating the
> long-lived txc.dpll pointer express the suppress-one-notification
> intent without these side effects?
>=20

Valid concern. To be addressed in the next iteration.

> > +	mutex_unlock(&pf->dplls.lock);
> > +
> > +	/* Notify TX clk pins state transition */
> > +	if (old_pin)
> > +		dpll_pin_change_ntf(old_pin);
> > +	if (new_pin)
> > +		dpll_pin_change_ntf(new_pin);
> > +
> > +	if (!IS_ERR_OR_NULL(pf->dplls.txc.dpll))
> > +		dpll_device_change_ntf(pf->dplls.txc.dpll);
> > +}
>=20
> [High]
> These three notifications run after dropping pf->dplls.lock. The
> old_pin and new_pin pointers, and the txc.dpll pointer, were
> captured under the lock. If ice_dpll_deinit() runs concurrently
> between this unlock and the calls below, ice_dpll_deinit_pins() and
> ice_dpll_deinit_dpll() can free the underlying objects before these
> notification calls dereference them. cancel_work_sync() in
> ice_dpll_deinit() drains the worker but does not synchronize with
> the link-change caller of ice_txclk_update_and_notify(). Is some
> additional synchronization needed before issuing these notifications?

Valid concern. Already mentioned in one of the previous comments.
To be addressed in the next iteration.

> --
> This is an AI-generated review.

