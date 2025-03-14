Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 47F62A61C7E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Mar 2025 21:24:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3608861AF2;
	Fri, 14 Mar 2025 20:24:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FuMzyH0RtTEo; Fri, 14 Mar 2025 20:24:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6292E61AD3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741983888;
	bh=6RMBNv0OcQ00+fh7QM01dR8TpZGcGD+SH5fxxYNhzic=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zc5noZy0YdYCcykMjzFOSQ2AnpkgJoSurIZ2jywQsQAPYEITEMGmc3JND87aZoBx1
	 +g8AhFHNi+ORMwAFIBySjGPOpi5UP6C9XBpGFTII4+LNZVtpGjyHcCdaH4HLyTYsEf
	 tFTpOmjlwdf4ow1jXjP9kdFJT2DtFcvETuWXHKe8eJ6it3+gSZA52oKqKo5LqafyxC
	 wEaiufELob16Lhabw+okTZ+o9oi5EXgukzQKEFESW8fkVFv3KJsTbHEGQQKJTfDX7Y
	 P/nF8mkHlWN8dSkLXNUYFcvxUrzTc0ULZL3dpU7VAmGedYdMLnsyEtWPjVU9CoU/wW
	 HjTiFr4sx6yjw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6292E61AD3;
	Fri, 14 Mar 2025 20:24:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2DD2361
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Mar 2025 20:24:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7D51E82024
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Mar 2025 20:24:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UczJEpbM1zLQ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Mar 2025 20:24:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B6FDB82073
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B6FDB82073
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B6FDB82073
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Mar 2025 20:24:40 +0000 (UTC)
X-CSE-ConnectionGUID: qdZ3rLAlQVOcB7i5bexinw==
X-CSE-MsgGUID: oulgXJZrS2OWV7hTJFeYPg==
X-IronPort-AV: E=McAfee;i="6700,10204,11373"; a="45914092"
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="45914092"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 13:24:40 -0700
X-CSE-ConnectionGUID: iIG0/STSRhWWdYnbg94ADw==
X-CSE-MsgGUID: 7ovUpumTStK5kLhMxcP8ng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="121414475"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Mar 2025 13:24:40 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 14 Mar 2025 13:24:40 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 14 Mar 2025 13:24:39 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 14 Mar 2025 13:24:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hO+hUvKaj8VisgExAg9be93gFoHa3mICvo/ZSKe3P1e5HcO8gsTFxjqxwM2akLgEjCS4iVzlt7e2DYzbAEmBoFt+KC6HijibIS6f2yFTRl921wfZ5idqlWJn+RODyLMx/VqpN/kxkZIJ/eKKwH2g8gNn8+f7sqjC2KrDSMi2bEdTcaSaNU1d716ksIvz2SrbD42XT0nPMTGySjzDQT8eN8d9Y9oQJDYNlQCkLb+MyC6rnCpbZTyv4AojbyTlJvj7Ckz11Y8A1CkfsnoumDrswZcFhnDyK/QiWqceojyqCqtRCYprOAmKMB1kRiz9hBiPDSYERx0E0BxYKrmj5/cBxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6RMBNv0OcQ00+fh7QM01dR8TpZGcGD+SH5fxxYNhzic=;
 b=qgcUvGYr0Zf1Co2zM+/18Y8J+/C+qSNh6N1UQ+l189ZOEqxcNhaa7rNBCVDb+Hu0KlAau7pQOrfIIu8fRIMkXeKSvPWqaiu7zOSE4HTEPDhTQBeD7epaCPngDkU9y0lmiAX57W5MLab1GQJiy8tmEmFQDzCuBC6slQ8/mOzLwoWg6SA1t0aGVjCh7v8xVsixkyhfjvrypiD3WR3tNsyB7Kw0HAwRRReHk5RnbinS7DqvnrNYg2HK2nz1KXPC0jNIM/NXqIPNJg8IaZnbS9qpFBUtnVEdi+YHFgFw/ZMQdL8yQ2PDC6yXLcsUNFIxD81VYSnslDlV89BLVrHfbry1+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by SN7PR11MB7468.namprd11.prod.outlook.com (2603:10b6:806:329::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Fri, 14 Mar
 2025 20:24:08 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%4]) with mapi id 15.20.8511.026; Fri, 14 Mar 2025
 20:24:08 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Olech, Milena" <milena.olech@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Olech, Milena" <milena.olech@intel.com>,
 "Hay, Joshua A" <joshua.a.hay@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH v9 iwl-next 08/10] idpf: add Tx
 timestamp flows
Thread-Index: AQHblEOWNZnxa1yKhEiPxTcjlszlH7NzDe6Q
Date: Fri, 14 Mar 2025 20:24:08 +0000
Message-ID: <SJ1PR11MB62975E4FB165D7BA025BBFE79BD22@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20250313180417.2348593-1-milena.olech@intel.com>
 <20250313180417.2348593-9-milena.olech@intel.com>
In-Reply-To: <20250313180417.2348593-9-milena.olech@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|SN7PR11MB7468:EE_
x-ms-office365-filtering-correlation-id: 42c521eb-59bb-41a3-3b11-08dd63362c78
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?+1MJYEYwDd9GxJK+hgm0zsXspg6uwxLfXRlLZucPoFfv9bRJV342V3vYkMHl?=
 =?us-ascii?Q?vqhdr8vLzSqO5zMJeT70pjEn3qgDJFW44+DmA81ym52mOP/uot0mqiAm9SOM?=
 =?us-ascii?Q?F5RRqWws8o+SJR57zfUSrfSh/T0N1XVcmeVAsnV4mKeFt/8XEKYq2h8T8AfE?=
 =?us-ascii?Q?SHGVXtMGcDohXHyhyuVvVQZtKK9Ku/5QMmNpptJFz8uO1jPddTWsI4wln/od?=
 =?us-ascii?Q?wRyADRNogSz0YJCgCJxhtgxOuh9t6N8Y513nzyoL55wV1KsJV2GBHF+GNxE7?=
 =?us-ascii?Q?2E/okPN8cGgyTSI6MQwvZhD4NS8W+2sZ/OvR+q7zEMwY0fADpEXtlJ6T5K2s?=
 =?us-ascii?Q?UxR+qKSYOUHBqTCzSNiy4pvebs0aI8q6s9I3ycIXZiv4qXvkwgQ+8OhxKyDq?=
 =?us-ascii?Q?vI1bXrVtJZ44HGw8VhYEPK2akEU6V6s4lKI58WZ7ha1RQqcZDHisp1nb398C?=
 =?us-ascii?Q?f+ojtNk2BV/m23t6rMv9jUiB5S6gHL85OPoq1bj5WltQpiqw1le6CpJfCtA6?=
 =?us-ascii?Q?1aOkmx7qChZdD9hbbYU01zF2zItWk2IeBGP0Ml/ADpMXkS4LzIA0Y1Kjg9ag?=
 =?us-ascii?Q?I/Tu9fauRLY7yLy4IRD8seaJEr5l7tMRsbYgGTZhBAfnRM7f8jygBcsZP76N?=
 =?us-ascii?Q?olUCQc58iWcLiBWvm5DaqjAp3Ps7vmSQkNuz90f08mEGn8eyfw8tQYu+BcyG?=
 =?us-ascii?Q?03hmBzqodAzLIBKLpckODC8HRcwGQJTrHJkBWrjdkZyCrZR+uJQ40ATsJm06?=
 =?us-ascii?Q?0/cbnG1Ma7z7+e/1XAbutg+3QtyQInl4xpPCU23SfBXcoq0YqKakwq4bwgVi?=
 =?us-ascii?Q?5/tB60F8hG2j6Yn6/9Iay3cV/z3hRFHarz3RdHt8/nCazLh2mnYE9CJy/Lkd?=
 =?us-ascii?Q?31PbfQy5cD8gGvmc2v3EikYktOTYakq0ut8PFS48CxVyoJOiTKKpCJRtEU7D?=
 =?us-ascii?Q?4iywvDSASoi05KEHcJ6B6ONe43GZ0xKfhdFSWz8X5FU5EXLdzz5e5Za3l19l?=
 =?us-ascii?Q?o5mTPsM12AT1G1374tOqa9jtVmKaDK7D+80bn8mtys3gSdZ00xWHW5FL8U79?=
 =?us-ascii?Q?aCqTau0/HGr0qkFdPJwmMoyjn9b4Rx8Z/XRqjrZR4tu36+8JOCcGilUgWYpv?=
 =?us-ascii?Q?oGCS4L3w2afWC5MLMvrsxq2IH0y6h+6Zo3zRl5EltwXh3UFPauercnRwjSRS?=
 =?us-ascii?Q?SMNx8KE5qfYJrE0S42F4btKi3KiIPY2HmYDR2AfPNo2Cfo3wFgsvUYX2uWRp?=
 =?us-ascii?Q?WPRzDxeFdpIpCSTBC0M/RSBumIq/q6Vxme/wQ2Y0P9PcJvPpKYhGF4wCvKXJ?=
 =?us-ascii?Q?I6DCJumSPLuCGyBkseK73fkKgBCS+VBxE/L2QH9q0ZtZulsf9rBs/9huCRdW?=
 =?us-ascii?Q?zzr8+Lnc6zt7mFCifTdhUzOgOOvlYwOqK41Bbx2GtxQsdSvJ1+cjOGkP1Vay?=
 =?us-ascii?Q?mx55y6aBIYGEkk+FMgmSWInqabtPzGtT?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+N95Yj5laGDhB9q8Kmxc5YU0oKRRiHKaEbJ7AAJnLBxz/Jt7FsazKJe3b+1l?=
 =?us-ascii?Q?qQoOM6eIU407Z71ue1j0+cySxa84m5VKX6lvlPGIjikQg+TYejH4/GMgqaoa?=
 =?us-ascii?Q?fXO6ARLfkIw5twoCB/1Py5Pwxt4vvZU0xFdP3Cl6rn8Y2K9MrBHKEw4Kzg3p?=
 =?us-ascii?Q?f1SWA1MYfBl0efOudD2kNdr5k9Qhhv5krKa6shC/ur7Kvt7iRCO4DEL8MgLO?=
 =?us-ascii?Q?Vd4XBZDl1qKWCtZz2nqmzJxWlLqgyWUgzyPm3CNDhIVIMgKK/XIO+9WGt4/Q?=
 =?us-ascii?Q?xFjdNWd6emUo/WbdwOE7NKjTeTrXpe5WrF7DCLR/+uGTU3p01mBqPy2x4EyR?=
 =?us-ascii?Q?0UtfvCKGZ002cux0JtUPDKGH6/FcOGvTovaf3CVttyEWEJv5tpVjBkqoep8Z?=
 =?us-ascii?Q?RYLtgG5GLQ4lKVxCHsmCqE0AvQ0llQAKXKZE+GJLnM1ED4KeEfWW5PmPH41i?=
 =?us-ascii?Q?H6S9jsM+VHFVGGsBYIrYWdo3msI/DAUeBXeOYYdgs+Rcp0g6ro4XLeb9q6uE?=
 =?us-ascii?Q?trPg+Xme3gTZR4KrUY4jaCwori28iQSKyuDQehVzM+rkR5RDGesLuL0OwoB7?=
 =?us-ascii?Q?QTlYuZ/S50NQF/pzoRqSd3/n12wcYWnBE42lFeVnF/zLkk8mPew1xFV02LCp?=
 =?us-ascii?Q?O5QLygTXA2Gkql3y2AzR9yhmxi5G2t5l1iu6+DOgVZzD7cQ27Br2ugRXtIZi?=
 =?us-ascii?Q?9s9bIAToGU+rm9pCwg9e1CjArdii42mNh5WaJbje1pZHHEojgYrG/DPFV8Ic?=
 =?us-ascii?Q?+6SnOI7ctqvf8BHciAMeAjPw/XR0PLk0WN1mjRh9+Ca7hHouOQ+14Dcb5VXe?=
 =?us-ascii?Q?sopkljhoHP4Nc5fN0o2LLoT/zlzLBWsg3hoxccYmthrdP+CkiMXksVKWgzyL?=
 =?us-ascii?Q?R7JhhfUaZN7oGphM/ejGxTlg7MJ87AtCT9GQj9n8Uu5ZuW2AW77PJtJc93U1?=
 =?us-ascii?Q?5amPC3tCjoceAFe+XNmuQknUQGIxJpmKk+KNXfI+TCzMoTcEjWNeUOr4QPPq?=
 =?us-ascii?Q?9e0iVnvssnBHOXpo873BkanXnM/vZaD/1JjqUYOyE9ParSoffHURkW4fHY7I?=
 =?us-ascii?Q?A0vPgwAvzMU5fycv519CdqUdq/mJo5R1n8lbFZBecOEFQnaO//5pm4gH2ske?=
 =?us-ascii?Q?dIZGN1RSkAZ7SS7VSzQ6HAB9GzMQCwIpin1UNDzcFdvVAs0HfdIx4rF1ep6R?=
 =?us-ascii?Q?ym4tHe4HQXcfcrodFfISO1m2MaHyzddS3EIPPwi90b3RrO0k++/8xVyPl1Ib?=
 =?us-ascii?Q?VRVgmQyi/Cl9uGOq/GpUO4P8bde7mjVY7PvXbSyLFFsVor1KfBopfH2Ux0IN?=
 =?us-ascii?Q?w/Q3VvGyjr/TIk1V2EPLqRagPfg06mCsCjrHWq5RsDOmhwOJxYcxTPafLTLd?=
 =?us-ascii?Q?+fbTQ1ZT/PCzT5GX6tN+2tU4cJGu7vKP5fE4fMzVEcAfq94byPC/Fu9kLhEe?=
 =?us-ascii?Q?AccVDf4ZUDvBwJASZZob17AYarydyP2V5uBV9N2oJD3Bimw+1wh8wJBLAOKL?=
 =?us-ascii?Q?BUYt2934USJNTywNDVZiw30eYZNQL4VOfuSD3HHj0uPMRdpX1aU2o0aK947j?=
 =?us-ascii?Q?axLaTfxn0GPNVhyDon7C85+QwxUiNvMt9VsNEjuV?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 42c521eb-59bb-41a3-3b11-08dd63362c78
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Mar 2025 20:24:08.1580 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LqMe8pFVM8PKg0P1xBzHGZHODSXhOFian2BNWLo0jX8dyLrb7iCQnx26+o5RjkmwTeMVG3OYp5pBl5zSi0tY2g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7468
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741983881; x=1773519881;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6RMBNv0OcQ00+fh7QM01dR8TpZGcGD+SH5fxxYNhzic=;
 b=SRCZo5kTFl3/RXBiNNFBZ6XcMDHR0GbDpXjY/Sgo4k2FCCO7wUgPtwuW
 AxXKZVBiD5B0Rt+nH8gZOiw2sYm42y0qjIxjdz8G93dCNeNk7HJ60cwwd
 t4ngtfWLJC8fFJ4lE1qCRZ0lZwNpQe8JkRsZfuOS4NjRgkNUlVBc3zt10
 +V4xBEWB8dRBscjX+6q6wFksSclw2FdDXTCDAGi28zEoF6RVMKmiDZ+i/
 mBG+U7XFB0afXDPIX7N+E/9mAdck5ELRNuKhz7pjxA8BQBCdJLWs9u2cg
 PR41T5oRy4yrF450gViMQ6XsKK2QYQd2SQ6CjKShzlNeGG4EPGSmwXA0o
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SRCZo5kT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v9 iwl-next 08/10] idpf: add Tx
 timestamp flows
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
> Hay, Joshua A <joshua.a.hay@intel.com>
> Subject: [Intel-wired-lan] [PATCH v9 iwl-next 08/10] idpf: add Tx timesta=
mp
> flows
>=20
> Add functions to request Tx timestamp for the PTP packets, read the Tx
> timestamp when the completion tag for that packet is being received, exte=
nd
> the Tx timestamp value and set the supported timestamping modes.
>=20
> Tx timestamp is requested for the PTP packets by setting a TSYN bit and i=
ndex
> value in the Tx context descriptor. The driver assumption is that the Tx
> timestamp value is ready to be read when the completion tag is received. =
Then
> the driver schedules delayed work and the Tx timestamp value read is
> requested through virtchnl message. At the end, the Tx timestamp value is
> extended to 64-bit and provided back to the skb.
>=20
> Co-developed-by: Josh Hay <joshua.a.hay@intel.com>
> Signed-off-by: Josh Hay <joshua.a.hay@intel.com>
> Signed-off-by: Milena Olech <milena.olech@intel.com>
> ---
> 2.31.1

Tested-by: Samuel Salin <Samuel.salin@intel.com>
