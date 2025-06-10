Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E5308AD2DEE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Jun 2025 08:27:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 981BC615F4;
	Tue, 10 Jun 2025 06:27:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CrSfRLN-yqEj; Tue, 10 Jun 2025 06:27:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1759561619
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749536875;
	bh=F766P7IvvO5NvMAaF/F07xQDjiEDBeSgPa0CZVsqKfA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FCSPy/j/zI31DVcvuodKUaq1jgqXHMBg3jTX6XNxQkqTGTed1527MteS5MeZPqO1G
	 XJNCXM0lrghnJRJ1zTKTZ3oFp+HCvTKoLBF/Fy8fv11CoCVWG2GCu70723hggapOM4
	 inEm/WzkHTP/XxRkJPrW2lspGNclkZjlu8Og0i38bOl3nROoTkejYRYOjwhvA+eStd
	 3RvedNuhFtPHMkt21J38cFy7b+j+Z4lYdLiWykpSROwEjjPBK9T+Y6nercuKUkwfHH
	 YAntr4SD6cZ119t/uMHm+4jYVdpuf8GU4m5mOwnOcOC5kQFGll/csiqCXIfwzSOPll
	 hV/kSPzMN/tyw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1759561619;
	Tue, 10 Jun 2025 06:27:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id EDF4DCD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jun 2025 06:27:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D441C41FA9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jun 2025 06:27:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1mM9bvowZwnI for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Jun 2025 06:27:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3C34241E8C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3C34241E8C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3C34241E8C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jun 2025 06:27:53 +0000 (UTC)
X-CSE-ConnectionGUID: jOYKxm3iQP6gdOAs/6XhFQ==
X-CSE-MsgGUID: xxOMuYWMQEmtYBFUE3rE3A==
X-IronPort-AV: E=McAfee;i="6800,10657,11459"; a="51507526"
X-IronPort-AV: E=Sophos;i="6.16,224,1744095600"; d="scan'208";a="51507526"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2025 23:27:53 -0700
X-CSE-ConnectionGUID: 8t7nnlm+Q0OOkTVEuMb1ag==
X-CSE-MsgGUID: DXhGjPRzQmulgctLM/hiTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,224,1744095600"; d="scan'208";a="177676312"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2025 23:27:52 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 9 Jun 2025 23:27:50 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 9 Jun 2025 23:27:50 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.61)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Mon, 9 Jun 2025 23:27:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MhauH9yxXTjYC/4X3ty7i/+uxKXSVTEUlTPIq9lSravaRR16s6M6kip1/2ROXpUtT2veCaenbeokXzzCuVUU59jQn0SFtL+EUaqTipAdtasng8QbZnSf939tCOjPzpqEgQ2hZyWNpHAVsDdlGeK94smCTQTxYfEP/nN5Td5jog69tPgivEN8N3UUxAv5BABApHGLEfort3mez6WF6OjHNAW2ujALC6pjKUp9zZXCFiofens8NdCq0XmEG3C0IwFHjx60GDRhJ+QaZiFyLSUhBuRquLaQnvDjKt1rAqqczW+GKfXdXwFVmsZIeSZrukC/b0uoWD3ax2fPrPrVmUo5bA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=F766P7IvvO5NvMAaF/F07xQDjiEDBeSgPa0CZVsqKfA=;
 b=OnbzE0c5iAnlkn6nTpjPfyUPcxhlEju9REK+Z+RWSR31yTgo89drftIVAWmQwsR9Ub4L1lvSBaLbDqP1pgB5QdHbkFTI2KIywHJ2vc2ufH5nrTKiGbE1+kLGNCEmEGLlfO9kPb+/INeXZIsv4tRaEvmIcY1026idhcAxRRLhry4NxXw7Ymogseu33G+bhxS0u8mRd61tHIARmxKo5ieqyMsuQm6E+ztjz3SLg9gMnzRIsKpqjgB7R/SAYjA6boIgN81yKyy9HoVRadYXGDEzpyDeVtaCbzkFVjJCF9MDeUnPlEMOLNylmPMFPgoUs9sve21K/XdDsOZH19Lo3yKGow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by DM4PR11MB5264.namprd11.prod.outlook.com (2603:10b6:5:38b::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8813.30; Tue, 10 Jun
 2025 06:27:33 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae%4]) with mapi id 15.20.8813.024; Tue, 10 Jun 2025
 06:27:33 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Gomes, Vinicius"
 <vinicius.gomes@intel.com>, Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Richard Cochran <richardcochran@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 3/5] igb: convert to
 ndo_hwtstamp_get() and ndo_hwtstamp_set()
Thread-Index: AQHbw++VaoQ2G0ky5ky5nCXu3uUPZrP8GUdw
Date: Tue, 10 Jun 2025 06:27:33 +0000
Message-ID: <IA1PR11MB62410D2546D2F371554D0BB88B6AA@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250513101132.328235-1-vladimir.oltean@nxp.com>
 <20250513101132.328235-4-vladimir.oltean@nxp.com>
In-Reply-To: <20250513101132.328235-4-vladimir.oltean@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|DM4PR11MB5264:EE_
x-ms-office365-filtering-correlation-id: 3677b128-85c6-4efc-2bfb-08dda7e7e26d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?bzZ0EGs3dX1u7TSeXbotHA3DHbmEX8TjXUY6JpcYWYE3uvhsv3JfZiB1Dhun?=
 =?us-ascii?Q?jxF+cgzhy9XgIB9kbg1BV9+qjSDPoR4Zk4LHj2xOzS4LyC0KxZLasdmxvW0F?=
 =?us-ascii?Q?K0YI0mEiiLIW0Hc1pRE4uIbdzHQkdix11rpbpjXVOwHj1QLJ206ft7ZtmzI/?=
 =?us-ascii?Q?NrVll+zqpD8hdu0PL807bn0hgzVxGvVgBKnszys2hdS8k6jccrQVwD4GkTi7?=
 =?us-ascii?Q?BVUT+0juIBErr51vICAhjwNyABn+08tH4uLwaQnamckdbQKU0iQ6o6c45Iq6?=
 =?us-ascii?Q?oeo6hut1dAkHYRVUCCWdpfrEBoF/uy++/33VLbvFpaISketQ19Dbofc4AzLk?=
 =?us-ascii?Q?WAcEaJ6CjLB78kj5+SZTdw9iPkQMzz2WzlIjq8rXd3t6ZkuFoqyipEFMzfDz?=
 =?us-ascii?Q?qXzZzxm3TfTMBXE2tsIr6+xiuROE2VMw9pW4Q/ZIY3oh3QnNZ1krCMXAeu84?=
 =?us-ascii?Q?mfa5WBj80vZQBuuKJbKzG/Y6gu8NIMH8+D8Uq1hkk1WKAyfpuA87m1FeDaMK?=
 =?us-ascii?Q?nG4aLJwgROYvMxMf/2mnk8GXv/FaFk7uS/P5T//U6S9vynfB/zBr9gNpfEYV?=
 =?us-ascii?Q?kUwKNsHeRUKa5dE6DBsmHmsHPJmm0hkH3ylNLPRao7uevVlFGN7ChEX79jqt?=
 =?us-ascii?Q?ef3v4OE7mZ30PpBGDb1g8Te4P+7Q87S19RmSnpCT2twwKBrWOzB9+AbtA2qU?=
 =?us-ascii?Q?bJB2H69ClxyNG95MeWVzEJiNjgW38cnYE140He+n3x2E1i+ZRJKZaOxFpC4r?=
 =?us-ascii?Q?WEgOPF4hWZoNT93jwE9m/nFBVN0ggDHD2cRYlKtH9DNjdgw6yRXf3qpZKdqu?=
 =?us-ascii?Q?5B0n2DQ7NG/6QA2CGxMp1/i0eyci0CZ4vgRb24td2sEkx20XoA7+UnklkK+6?=
 =?us-ascii?Q?EU99KCZgcU7xYYq9KUdMUrRKzDT/CO8wTivssIxklFlJp/fwwwWk0Wy4esFb?=
 =?us-ascii?Q?nsiPyO5AD43a8tFu7qgk4w3/4waBg9C61W+026Ea3lktr6+7hzN0rBJe6hEQ?=
 =?us-ascii?Q?lnypdLAehaVrlVpmHYxeHtHmr0SXSXFKjPTfpiWLQ1gBO2aKEz8klAzmA6I+?=
 =?us-ascii?Q?LnajBPPF+9q4IdZkKlEbmbQnI8oZb54FM0IilY+wjpXvw+cNnbOkNsw53ZgF?=
 =?us-ascii?Q?L9bI6zL8ENusaHU4uBO1Wsh/YJI9/ABqvp5FWWxGp/w31wh66SaQceXhM2v5?=
 =?us-ascii?Q?jyVovDRg/M44zsj/SkbnrBUPRDdD61agp6O5FpxT158q2GgZkfZ7sox16qGF?=
 =?us-ascii?Q?IoB+9+glHdgRRJUbwH2tZ3HFR4ds3S9fKHjMkQiBnfPGYkDumR1po+NO8YdA?=
 =?us-ascii?Q?JmQx768cLoxaY+jPL1SG7qDj7pA+/kG1EOmgwCiM9LXuMyqnBdDJg8/MB4X6?=
 =?us-ascii?Q?E1edNVpRQvtB2gNsfSzmjt4SgyEJCnEPUUsYaSgHUiio6sDaUmkzw9+MnUvZ?=
 =?us-ascii?Q?wvNAmMn84nkK4644jgvQDQQXR9RohEWQ39c3w/DJ1Ul2f9b9ZBIuU7vH1TUZ?=
 =?us-ascii?Q?z61X/9Y1R6BOD04=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?T2aFZKL3VqeWghr2Shrb2Vd3JEm1pj2Wz/0OGJs0zKvbbMK8p34YURBccvKm?=
 =?us-ascii?Q?dvp8Si/zxdZUlfRjx1aOq0RhoL3AZQmN3RKHXwr5wFp6baKMXCnT4XNnQFzt?=
 =?us-ascii?Q?de/7SBYs2GiP/bt077Ais5QakB202DN9LbkxkBhGXxQQ1J00+cqRZ4rVoKOC?=
 =?us-ascii?Q?py/bFhw7/L4dYd+GFQPzIhRlD6kLoqgScGmaTJB990mjdwS02p/gSMEfGUHa?=
 =?us-ascii?Q?o2KTmUSBiIzZ01EoNE52dR9PC3kI/0L9/8Fnz7yNI1gkv/zXUQcyfLlV2o//?=
 =?us-ascii?Q?2TEEiZ82ly0+zucfgKEXx35321vK6VZaTJUNmnx0d1U4MdjyYJ/aMagGbluA?=
 =?us-ascii?Q?7mLdjE9Lv0K4IB1QE64CSt1VyYTAcclP3PQHtpsc3fKsVP/SbUUpH3V+s12d?=
 =?us-ascii?Q?/xHiKg8lXnjj6+oBobkIxhUzVqRQfFcj6mHY9xewzFgg5air05paYLhvAzJM?=
 =?us-ascii?Q?BsiuPAgAmC1WDXlpV69CR5vcEPTz563XBL2H0Lb4tqK8YMi+qPXkQDOQ6Pmf?=
 =?us-ascii?Q?N0bCtUUqzvxr3zq1x0ujXFo5lxFgHn9w1njtmBQNQXag0m+Y5Wu3L9VCeY9d?=
 =?us-ascii?Q?Dp5BvaKjL3WFyjxs4NidubJ4Gef4dVdjfLYmLDwJ7fXhtQaSXE0ScUDolLqQ?=
 =?us-ascii?Q?vpCtlS9LaLhTFc8+LsgFeq2IXgBOYMAZ51mPOFlzbXya58F8EXlGXl+w6kbl?=
 =?us-ascii?Q?Vi9+81cvyjyqaTkbzlE9HYRc4oB/UPxSPfCw+YDGnaIbep0kjLIGncmYjvjR?=
 =?us-ascii?Q?6yNlglSJBgGJbAQVjaLZDxWnsxZBmkXYOyblDy11AeW5yRoxuvgJ0jssx+bR?=
 =?us-ascii?Q?ojpB75cRo8+6kopNJT503XmqTPyI88jWK0ZdZKkBHD4rezQhuzCIl8gSNatN?=
 =?us-ascii?Q?0YMBekKX7ErQ0odERP4l6yMuKb9r2vWnLB4MMdei5vpV1iiADyjLmlwOyKh/?=
 =?us-ascii?Q?tLSfOkrnMbhevrWGMx583hXnBQuD9uxs+Ld1CxKBOh7PS+UBSBX8ea4c2Vdg?=
 =?us-ascii?Q?JeUilz/xMdJaRvF4kzykk3aS3/sGqLyzlxUWO2DxMrrHY/mSY4Km4dz2ouWZ?=
 =?us-ascii?Q?7nMYwkGWRZITVaAghpDhjghVT33GcB0nbRKp/3GqeWb48hWX/zhDB79rZdh9?=
 =?us-ascii?Q?+3r19onCQUCZ6EjVwHJe8VslSH+uKFvlJTm852ba4I6ZlC/Oh6OMWBB9sAg+?=
 =?us-ascii?Q?UijeQJ4NQYDxYiet5pmQJCdbST+WYdaqwNMVepm8t1JafXupodSrqnDa1RB5?=
 =?us-ascii?Q?xkBoiboJv0Yi8MJJyoTOAFf1EQCXAYmutyVx2or2KNxBW67FiKjUA+APukBK?=
 =?us-ascii?Q?WEsEYqNxzs+felNqiZi9uCArSef6ERD0I/PzbQyR6KrsyknVB820btUeBT6d?=
 =?us-ascii?Q?eZz1zF7nGHNKsBpnUwwyp/VpwMNv9mox0/b5+qIGGRXRnJxklxMH5K78D5tV?=
 =?us-ascii?Q?TlTU4U/fHvU3W/APv21Dt81/jOBb5V6B1KAp1RDFb8MPCiE18Hx+JhE/1NjE?=
 =?us-ascii?Q?dQ7n0IYK7C+6uL6c+OOm0ktTLJvFE6fm5E51q0U97DNST/dsyadw6XcoRtR0?=
 =?us-ascii?Q?r5uDLfvkPo3mLewDKLxUDnkkoolb3w9//i4MN/sl?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3677b128-85c6-4efc-2bfb-08dda7e7e26d
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2025 06:27:33.4323 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zrfdl2r5cSFFrnBOxELA1XeoPcvYtN3D07VrwFCTs+ivFuaDEbdf5BBhNvqxoMZnVe9OBXZftrQIBZ37FhNDbQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5264
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749536874; x=1781072874;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=21D8f+MENlVCywZ/AU896Hjl/V9Fol4OBd2feD+3/PY=;
 b=SSqIbt1cDJMkCAmhXZQMHoFpkfcDcW4q2XSA2SPjV1OkZ2asFtK/DOCJ
 oVmkOV1LytWHY1mvuCQTcIMGbKzdEuMdPbpnDfCwII/N8xbchiwj5cuPN
 hMGvukXHC3Z/icr/qrvOCyrdAiqvRCzfhCgj5ia40+hzeM2uh94RuZcvE
 twYI2BiyRm2Rxr3Va/dC4xRbjGw7aO4TxJR32wyJRckFwCv8PRxj1g6fa
 xl7EsG4BiJL8M9TMwsnlAf+XJcI+sfufx9tqb3mvq34PxwNjsRwqfKXQn
 BQrLRBEjgXJWrLvUyXs61XVKDV7siMh1BYKL8grEIdhtNvDYsbch4ELqG
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SSqIbt1c
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 3/5] igb: convert to
 ndo_hwtstamp_get() and ndo_hwtstamp_set()
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of V=
ladimir Oltean
> Sent: 13 May 2025 15:42
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Keller, Jacob E <jacob.e.keller@intel.com>; N=
guyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <przemys=
law.kitszel@intel.com>; Gomes, Vinicius <vinicius.gomes@intel.com>; > Vadim=
 Fedorenko <vadim.fedorenko@linux.dev>; Richard Cochran <richardcochran@gma=
il.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next 3/5] igb: convert to ndo_hwtst=
amp_get() and ndo_hwtstamp_set()
>
> New timestamping API was introduced in commit 66f7223039c0 ("net: add NDO=
s for configuring hardware timestamping") from kernel v6.6.
>
> It is time to convert the Intel igb driver to the new API, so that timest=
amping configuration can be removed from the ndo_eth_ioctl() path completel=
y.
>
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> ---
> drivers/net/ethernet/intel/igb/igb.h      |  9 ++++--
> drivers/net/ethernet/intel/igb/igb_main.c |  6 ++--  drivers/net/ethernet=
/intel/igb/igb_ptp.c  | 37 +++++++++++------------
> 3 files changed, 25 insertions(+), 27 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
