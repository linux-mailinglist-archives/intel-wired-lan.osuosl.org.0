Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E749FB0D8AF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Jul 2025 13:59:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9BABB6F530;
	Tue, 22 Jul 2025 11:59:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HqDGEO-8edLi; Tue, 22 Jul 2025 11:59:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 09D2F6159D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753185555;
	bh=MSSUURypEBPFqvyI/16mTJkiudPOmw8If/hevWDLNUQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sEtc/PHE//qarqi9qjP8PuEzL4zHiqLmX+WHsyoWJwwkeYSegjRlgsePfmAtFlKFV
	 yyzSf2J0yR9reB7dDF3acsg6EpRRc3qMbqiQ0hsVx9ZV4o6gjDtNJ3iK4rgffDNtkm
	 n3ppcm/wK7lrd7bjfU8HyfsFP4nQYFo/MFJRdtanKPDTqpNVNLu5XZ6O6ST6gF0Dri
	 k2c8jR+NCqMFaQ9bOvOMQfypvo5ydu0+GVwFCWhCuY/IMHO9+JvuvhMetodDwYUjq/
	 rgeyXn2NLugn5H/2asudjeBzU85JPwfnB4kDTYLfnSRy50xLgVmEABCt3+kpQNKPD3
	 xV+xXB+kvJY0A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 09D2F6159D;
	Tue, 22 Jul 2025 11:59:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5DFDFDA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 11:59:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2CDAC40D22
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 11:59:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M2upsIqQKCvS for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Jul 2025 11:59:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 887A34058B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 887A34058B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 887A34058B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 11:59:11 +0000 (UTC)
X-CSE-ConnectionGUID: jWvNXcIRQB+vtTe9rM9j0A==
X-CSE-MsgGUID: rBpBIqPdR9qOIIq9P2ZrOg==
X-IronPort-AV: E=McAfee;i="6800,10657,11499"; a="55580277"
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="55580277"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 04:59:12 -0700
X-CSE-ConnectionGUID: 7nAUAt7hQBWY22IHB8Tj0Q==
X-CSE-MsgGUID: ol8HsPqfQC2GtxFkZFxq2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="159196520"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 04:59:11 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 22 Jul 2025 04:59:10 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 22 Jul 2025 04:59:10 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (40.107.100.51)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 22 Jul 2025 04:59:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xi1ExExrpLOAYneGlns8iOCKSYiZZ9H+GbAR2NASIKyDY9ShMTVqkVVoC2L4BTQFCtD0NLDj5pryq+cECT41vjgVAX6iRyvEs5t4kfahp+YAl6PGyy+pG//Cvd8wmEV439UZpqKTC8rHju8yRxzgvoVwzgOI89EOUOaz02MLH82NlxKBpFmQ8IFCRg5JH4XAEZoX98r6h+aKg3p10IC89GEuLJHmTmERriebsifURlDJxJ9rEKprk0tOI494Hdz6Kyhbv9R1dnfWyZnT74WHbDZ94cKTzXAaT/KDdJ1ZqZdQd7xOGVWhZevmokX5x1zVEsxlBY7Kkuuu0A96cblVjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MSSUURypEBPFqvyI/16mTJkiudPOmw8If/hevWDLNUQ=;
 b=EyiTWXZgIe0jIXZL4GKbn0MG2yPTKycViw+dYJUhGoinoIa/iq3Ra8xq2WihZ23rryrq3Fcf7bHwOGeQrZElo3YCaBV4a3zFi1vJG0GVsDZVIvMVTLHFewXEiuQw/wloUbkvtRfnmtRvEZ9HB5iRX6Hq+CiKoCuG+f58jeEColrxkln5AE+aUfEF1Y8xp6tWSc/TC1F8KGrDKPoMD9nsbGZcWR8xP9PfHp7fkO06VB4B5g6WnIizoeRvqaWiNTpcmjiqq1GBypp+vEwcJvZ4KdoNjGg9fP4fZyVcQcp0qD0E9UCdQeXhxyHoaIzUfr0vM8eGZB4Q1yJ57WosOGVDrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH3PPF3DE9570BE.namprd11.prod.outlook.com (2603:10b6:518:1::d18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8943.28; Tue, 22 Jul
 2025 11:58:38 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%4]) with mapi id 15.20.8922.037; Tue, 22 Jul 2025
 11:58:38 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "dawid.osuchowski@linux.intel.com"
 <dawid.osuchowski@linux.intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 01/15] ice: make fwlog
 functions static
Thread-Index: AQHb+vjKpuZErkm+nEOhxycsUNCxh7Q+CbQQ
Date: Tue, 22 Jul 2025 11:58:38 +0000
Message-ID: <IA3PR11MB8986D04FF95EA3F7D9D095CBE55CA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250722104600.10141-1-michal.swiatkowski@linux.intel.com>
 <20250722104600.10141-2-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20250722104600.10141-2-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH3PPF3DE9570BE:EE_
x-ms-office365-filtering-correlation-id: 8cc0ea27-5eb4-4fc7-97e0-08ddc9171858
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?rUIp8rFj862Xs+cgWWWJeRuwfRF8BoBaV/A4YOI8sdK7fKyS1UgbEWOyws9v?=
 =?us-ascii?Q?60osZrYnePc0j31d6DUF7oCz/nl+K1gXdDg0ibl8sPJYq07zqG5mzr/GvZfu?=
 =?us-ascii?Q?gOLU7oDzdrdvCopnT2nk8QO6qQrhLCLIzKFUbKtzZdQZkyh6N/5fYFOosTh5?=
 =?us-ascii?Q?NKWgANbk/EHT72glWGOaq26jG0tkb4PZWHiqXfYhufuesb+bGqADdzuUVuv/?=
 =?us-ascii?Q?U93Cu8aguJuua+tSojdp7OlM+Mb65xKfqtWU10AW3OgHj29eya4wnOolYLRG?=
 =?us-ascii?Q?blstDhs9+TsMryWNIqiZAfMVTIYSCIFReJ81IKaTosgOhclxiSM2XXsDsyKl?=
 =?us-ascii?Q?BpDCAQ4OiFvk93E0Q0GWv7agfQNGDANIVGCGHcx9JnfcGB0SHz9sccHp7rN5?=
 =?us-ascii?Q?UrhB4C5uHG0uEM42qXv9nB77YqP+51rTUDsqPZUQSLe9pet31CZ2rnpaWk1V?=
 =?us-ascii?Q?MS/pcIbQ9JrNp8WFOxQJjK9AxVdKDWO+D6aVxaJmuQTo8F5VeOtwHE685q6B?=
 =?us-ascii?Q?wtRYZYdPvVsef7NUbfz7Dm9N6v6tCIn9MlnDlspQTlfotNpXXtZeOeF11o78?=
 =?us-ascii?Q?hoqnKQIFelUccOKXlOLQ8jLLOyyuzNMIBcJxc/VV8vrjL1viWp4lO0nEBKfW?=
 =?us-ascii?Q?ryB95yesA/9OmaznWAOxAjqOm42cYmJVXYtt+In+AHA9JpboAurg28yI2Xu3?=
 =?us-ascii?Q?9/NMOmATt9D/km4ZoQ3QMHWs8bQ6KOWFIwoDiuU1guTB2d+jovhxbbR9hmrg?=
 =?us-ascii?Q?paOefQypDlOST6Yd6NSdAFUVRH1zwATecY+FZEvb/o9AbtAzO4BHpIW9IoOk?=
 =?us-ascii?Q?B4mP9ygpLffnoe8NAUQ67kg1HVgqqoKkgz+GzExBDGWID2+4WvNjOONcUs+y?=
 =?us-ascii?Q?pgj0oIuojkGet5GYoJEAXjxvJUpixH+mYoLY204jTWeIJYsFk7RMGKbcTPDS?=
 =?us-ascii?Q?N7Yr+LjGbFbendnNH5TW36xjLZES1pc2XIaFV90QAzFmAbbqJdTVAeudR563?=
 =?us-ascii?Q?xvQWcz7T1CvO1F8cycTWiWRouwFb6sv1vBX6L/hN3dgr5J31GC+IdIospo+Y?=
 =?us-ascii?Q?NvRDqWimpyui4GUFdGd0Os4tEfaxCgsRqEgLlEKUngObFWwCiKHaKsNSoht+?=
 =?us-ascii?Q?uT9Rv2faA3o6X7vAdy6SYwkO8Zz4AaX9dw7Tdj+c0bSAs4ubvPBzrTLvccpy?=
 =?us-ascii?Q?rV9T2Oi8xi6pHv9FYgGhiml9BwSCVWOaEQGNE/JAD+WU/nXs9o24z8n9BGpb?=
 =?us-ascii?Q?GnjPSqluxkxyAfi0k3ot+s1skMWMU8y0etI1gb1NZWSwKLKL2h7wREHDBqdc?=
 =?us-ascii?Q?m7fD7qa5nrJ/NZ7uMffXcgFz/bFoK5KwX2Z3JSEq9yfiIpWMQ4eqZbmOmFLG?=
 =?us-ascii?Q?n7AdqbXQfLec9z8r6OrKCoX7mE7ufQFnW1yHoqkU81lmy/jovT+CWmdqfdw2?=
 =?us-ascii?Q?aVMoibthrFtZe+IKxERLZKxXHXqY7KJ6BbLpCmaH9zvMpvHfL2yohQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?uvIKhdn/mfNUueqv0NaG9YM0NvPKrzK4F4Qh1hjOwlOnreJ3aIKPfdv6WIjO?=
 =?us-ascii?Q?Yv7UHgnK+0BOiflye0rmX5ELkPNLedEi8uRlcpKtaRUuNgLpkCvy9DbghTbw?=
 =?us-ascii?Q?fbo2fji+zIiEAz0akLHqFSg+CRgoNAdwedjYxP15DqiwYW/AFg5wrgqi8RJN?=
 =?us-ascii?Q?qWK3VPCNT636uhzFtWdCeSYxtZUgleUZC1PPB3aj5qGnlyPHG9BxT2cbgbVw?=
 =?us-ascii?Q?7jbCtZJHE0AQgSBya3vXS2qfboVSasrVlrwbzXxxny8UyYzhkCPA3gvtAVyQ?=
 =?us-ascii?Q?TYN4N527LCXPJcFAxSx8MwgBg1FAu5pPZUZxFctYzpTHkGRavl7uBFpLmLlj?=
 =?us-ascii?Q?LiTEwO8Eth5L3mlJw+81CB2sbRULsWS/GfguZ+plTBlnRN21oqUjwrOsT1nT?=
 =?us-ascii?Q?s2OnHSYkoykfqzoEOMbJ7E1g6BWNPpIa8Va1J+QmCvkUg+2Bu293kepXPaJc?=
 =?us-ascii?Q?ayh0X6xMptVDWMQzonnPtyhoqrmu3PomDxjVkLNapETz5UkdzJR6ekUMsW58?=
 =?us-ascii?Q?UAK82VylOTDE2tP1L/PNZQLwbnWTrqdrHYGVzCpp5VWszhK7FET6xzxEdG/i?=
 =?us-ascii?Q?IJJMHm4xLRMHoTNEouykHDnFeELAneIRtLkEdxOKM6FGsT6rGYkc8ziriSZy?=
 =?us-ascii?Q?NyxID5OhtHB9VeZ26urOedXEF2CHKCspTTxDbw/7mOVAki0ayt0i+SoyOYH0?=
 =?us-ascii?Q?qq5Gerljo42ZL+T9vcsuQr9FsKS0hXwEB70ltqPoG28EDpEWT1VVVKTCNL9d?=
 =?us-ascii?Q?frBPAJpc5+NfqSbnpmWlEwK7AWqknwm/VjE9duQCQ8fSZZsQQsu8+BhYzurg?=
 =?us-ascii?Q?O1eBxbb1YPMQVQ16/toMPEd/gWqevb+0neiOJKS5pyEfhHTXOmT0wVZertEh?=
 =?us-ascii?Q?yBoaG7AaTb6QmyNKOhKSEVUfMfj3EpL2uAbwNufzjOkXoO40kqcfSovoCwga?=
 =?us-ascii?Q?HfG1qx93Qo9NRu/PJmjuGsHGxPaHTdUydRIOv9n36BQmfxDFeF0SM0L9TGRm?=
 =?us-ascii?Q?YkjDnhNv3zWbHMkE5+GOlR60nz40976SfX457PnAinCD0m22hLmbXCPIDF+F?=
 =?us-ascii?Q?y6vm6rme7g7yDFTb4AvRpelNwDzYLoBGBOprit6qo5abxe7OI+DYQEGU/SNU?=
 =?us-ascii?Q?wRCnVwzhxeUXxlXMTjZvZQgw6wxj9HYj39pHIlvUgI4K2GSVEDPD0XD3isZm?=
 =?us-ascii?Q?WblQIyJ3UblKn9rQ7LeAn2oRzTSP/IdpoMydE8LvTr5SZomy9+F+80nxVIDd?=
 =?us-ascii?Q?rh5Ry2C1d+qgSbOF9W84CBDA9G4TU0Iymut1jkljxLtJsHG9pDoE8hds9B9A?=
 =?us-ascii?Q?3xu8N6Z4c0iMXYEjF0c6uFy112k3d+irYZ0qmyN9qBjDEuUFjHpPkQdzoQ9F?=
 =?us-ascii?Q?A24Atq41MJ0rvCv0it2U6J2soruftP3Ax4yVyOclQuA7PaDLyTuuEUr1q+Dw?=
 =?us-ascii?Q?9SQeLzVgKz2fiX9GerZjzLjWX+MF6wdBQr+VYi2lfK2vsDmZZKHPXifGU5zD?=
 =?us-ascii?Q?JqrgzYZqK6vLB+TMKtDM0Rg2Z0+Yh+ttFwXUbcC72+WAktbZAXfmSmRkQaz+?=
 =?us-ascii?Q?83IuSC4mTK/S0mjwgBw7fC6lqvk4qdZU67kRzAv8zph+1R95MQnBAmoRsPTL?=
 =?us-ascii?Q?9w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8cc0ea27-5eb4-4fc7-97e0-08ddc9171858
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jul 2025 11:58:38.6119 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ucl3sM74DuzZ9jBJ9T4JKRnma3/htTgq3EYupuI99UEHFftGQvtLSL5NgDr0aw26YTU18yW/AEaMNMq5hoJzZrQ5EJwjRqpaMtF8rWulGjM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF3DE9570BE
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753185553; x=1784721553;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=t9/k+7cUs6dElIVkxbwkBawnPuEibENRyJuVHx3tAyY=;
 b=YfkxPaQG/N/7hqTEFtfKtt6t0R0D92QrY4xFszFwKRVtjEtaADxWI79l
 hYTJCAMRFFcucDnHpuClNamE7n8ySZih3leFlsAruFJPHSleS9tDTsUpA
 aRo1k+MvzZEYhrk4tWf6Fl+Zo4N4Eu2/vpy8+CXdxUGiMVB5Dcv26aWmp
 khq5LqPe+/ZkNWyjYSWz0WmDBLUMYWwtOcu2z9+O0wpkASCweXi7uiYWL
 bj1Fb+Jdb3SJVcteGgbR/bvIr1n6qE7Um8bHJnoVHfJ/46HmGGM5bLjVG
 uHhTB+Ubd6rGMS+0jWegdIO2YPTOkIgKkpAbLqoIIRHx+9IBNZbr+/c3O
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YfkxPaQG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 01/15] ice: make fwlog
 functions static
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Michal Swiatkowski
> Sent: Tuesday, July 22, 2025 12:46 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; dawid.osuchowski@linux.intel.com;
> Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1 01/15] ice: make fwlog
> functions static
>=20
> ice_fwlog_supported(), ice_fwlog_get() and ice_fwlog_supported()
> aren't called outside the ice_fwlog.c file. Make it static and move in
> the file to allow clean build.
>=20
> Drop ice_fwlog_get(). It is called only from ice_fwlog_init() function
> where the fwlog support is already checked. There is no need to check
> it again, call ice_aq_fwlog_get() instead.
>=20
> Drop no longer valid comment from ice_fwlog_get_supported().
>=20
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_fwlog.c | 232 ++++++++++----------
> -
>  drivers/net/ethernet/intel/ice/ice_fwlog.h |   5 +-
>  2 files changed, 109 insertions(+), 128 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.c
> b/drivers/net/ethernet/intel/ice/ice_fwlog.c
> index a31bb026ad34..e48856206648 100644
> --- a/drivers/net/ethernet/intel/ice/ice_fwlog.c
> +++ b/drivers/net/ethernet/intel/ice/ice_fwlog.c
> @@ -123,6 +123,113 @@ void ice_fwlog_realloc_rings(struct ice_hw *hw,
> int index)
>  	hw->fwlog_ring.tail =3D 0;
>  }
>=20
