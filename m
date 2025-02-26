Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 34653A45549
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Feb 2025 07:08:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D3D3181F23;
	Wed, 26 Feb 2025 06:08:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UrAq2skcUdvV; Wed, 26 Feb 2025 06:08:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 101EC81F27
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740550131;
	bh=jdX6q38/E7orBNPfsfymzyDnfM1GxwXLmJ8m5a8xqos=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=C0qd4ezClz/+tvI/lNFwk0zskx1HXv9dDU6PL5tdR2RiPO3JvdIMGlkTkrA6oty3N
	 CQ/RjaBOa1qvcx5XOONmUQO9kNy+oLQpdc02LiUZ+OvLG+CPhhL70pISXt0ZxheGpa
	 MvDQTBhe7/KjEWPSsLPeluP0uPWKN0E/wnRotSk7rdW4lWSy2auZ39Fh1WG0Wg71sN
	 Pyrjgvcb5EZX8l45PiB0GGMqK9KhArHpy8HzfOj5Z5FcAGDmK4xsg06/AOaj8gcfYy
	 M1r80cz+MtX1P2c33OHlNuysRI9vGpIlgrFqJn8QTlsRKq9FcKb0d6d/U55cpxnvSP
	 BC9gSp7yqp/Tw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 101EC81F27;
	Wed, 26 Feb 2025 06:08:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 8E0F61ED4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Feb 2025 06:08:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6433960AE6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Feb 2025 06:08:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ICdJ9kJBNSVF for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Feb 2025 06:08:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8C62760842
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8C62760842
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8C62760842
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Feb 2025 06:08:47 +0000 (UTC)
X-CSE-ConnectionGUID: V6lRujBTQHiDxjgcc/A36g==
X-CSE-MsgGUID: mrI5t0oBSq2PNd31fcMweg==
X-IronPort-AV: E=McAfee;i="6700,10204,11356"; a="45032110"
X-IronPort-AV: E=Sophos;i="6.13,316,1732608000"; d="scan'208";a="45032110"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 22:08:46 -0800
X-CSE-ConnectionGUID: YufvM82ESRSNZc4bHYzVdg==
X-CSE-MsgGUID: Heol0zw/R9aW9y1x+KQlgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,316,1732608000"; d="scan'208";a="116611225"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 22:08:46 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 25 Feb 2025 22:08:45 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 25 Feb 2025 22:08:45 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 25 Feb 2025 22:08:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LZPgluv8QvplZvhPHeq87dGz2sNsKRwtPXvHBMkCH7L7YxsaVwNfudmx/20wIQtTILSH06Vsn2e4pZiAWmBvfpdPcsWhpSclf0mY81uLtKuSEKLmljgVTLFuatjMcQ93xov/BEygdycPq902A8sn3G0FIh0fzUDvE9aXGmqSuq6fRIZ8S4TDEHNC7JAbEZQAJ7BiBm3O5jSLZQrhkNfX+JIZbnLszvNxmQlMIqyXjm1WnpniqIk2aKU/7714703CpFoPUKYhs1+i3Otf9WvMXG0qPIknHAjgI/xCEZDoTpxNORoybZja0bUxMUDI/2XvadIovgUbJLt+hWO0vP+/Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jdX6q38/E7orBNPfsfymzyDnfM1GxwXLmJ8m5a8xqos=;
 b=i2teFOQ2jluk/fBD66XzkbgbdeLAARlAndReQOEVxGXHsFvfkm296Lzp5dWXLXd6WoojWeeLyS+pFv8DWhG9pDrwWy1U+xzHRylJEdKwHSQJMJ6JHBm+WQHtZB4HTqZpo314iWnLnnPs4Jbp8i6acSp8Z6dvbjS13NHujriCqAgQIKMf223Wpvea1Bzw+fGFzFwWN5OP2E1Zlv4T6RUsIgEHwk1B8PLGQVTQlnoRWarHkfvGOSPGtnY+qglMUcEUjP8fF+co6oOvzaIHbNAvQCVykAr1b8L/TQveRuA4PAedRdevipNk33n4gcmE81BUvEpsszuPgfE8OnuPQ/2ISA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by DS7PR11MB6245.namprd11.prod.outlook.com (2603:10b6:8:9a::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.20; Wed, 26 Feb
 2025 06:08:38 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae%4]) with mapi id 15.20.8466.020; Wed, 26 Feb 2025
 06:08:38 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kolacinski, Karol"
 <karol.kolacinski@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "horms@kernel.org" <horms@kernel.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 1/3] ice: rename
 ice_ptp_init_phc_eth56g function
Thread-Index: AQHbe8Z5mZ2eDWiOa0q6bXepqpiDbLNXrIdg
Date: Wed, 26 Feb 2025 06:08:38 +0000
Message-ID: <IA1PR11MB6241575F4A4282391F1C19BC8BC22@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250210141112.3445723-1-grzegorz.nitka@intel.com>
 <20250210141112.3445723-2-grzegorz.nitka@intel.com>
In-Reply-To: <20250210141112.3445723-2-grzegorz.nitka@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|DS7PR11MB6245:EE_
x-ms-office365-filtering-correlation-id: 5c2ddbdc-9ab8-4685-9114-08dd562c02f6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|376014|1800799024|366016|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?CtlTiVmtfidhWBXOaDXkMUk+Y0EV6J7aqeLjNY5vDqZ7hr4LAR309wd/Ts8z?=
 =?us-ascii?Q?kV1OrlXmVHU6Yvh7gYTZ4c4kylCIkFvTn3gMwKAW5MQTdjfMqMPmXYt8KQSW?=
 =?us-ascii?Q?tmhbw+Cz0YVcJfE1NEhfVURKetiGBVM42BP1rpSNC7+7I4B2mMrbjMopVAYn?=
 =?us-ascii?Q?xig5wDFrMUjhMm+oElAGjvzsv2tw/t/2/Pysn0Q8s/xAiBooJ6O+B0Vb5Gwk?=
 =?us-ascii?Q?kfcw6NN3hers8/1289dGmQesZkBlnx6wuLy6cqTePNCdMVl6QwkaVcK9Ku8V?=
 =?us-ascii?Q?HdKnh5uecG3Iz/mEgB6zJLd0rejj8z7T3w84fw8EcPBptImRSZf9z+ktbpuQ?=
 =?us-ascii?Q?87C4/5V6S7ixinox+d5ioJGh9L4Rvi5M4QWtJEhN3mLX27V7dAhtq2/Rj4sU?=
 =?us-ascii?Q?TupfgFM4G/TBM3/Mt6QmMyn4Rj4bsnwLoq7fEFakf8s53ac27ms268TznseD?=
 =?us-ascii?Q?/9mHz32F0geGbhWLvBhFcdd8pyRNRynd+yCta164YCpaVikBQoAtJItMAt/g?=
 =?us-ascii?Q?VYU6UzHBpND7/IribmyfGrB8/WxeM8kcSsrIhN9RX/zKACOhTr+/EJv0CtWE?=
 =?us-ascii?Q?zlgFVVc1FeMqeODF8GPr7dxY5LZFcjawfgj2du+oLxbyH2j4sYLSdWAZG8HE?=
 =?us-ascii?Q?yKMgYZU/HH6AHTRqNkxhXOw6oa7HJb3Hw+uONh67Lc0lqzmkViJsYGrKTipa?=
 =?us-ascii?Q?pEaW9xGhPMFaCjlySDeW5B3BVynOEp8rwqRI4tAj89yAByUiUmmR0zN9LWKk?=
 =?us-ascii?Q?U4x4i24ymDeWUHSGP+5RSjo4zcez3ZLhEjcr3ohraaoJCMWp9VUsunuTOr+s?=
 =?us-ascii?Q?MJzgbVsZQTQxHPdw9AgskAe6j4e34EcY2HWleSpJz78KGe9+oC3Br1gnDETq?=
 =?us-ascii?Q?bZER/VMDlw2s5hwyHbZiMNBpHbKariSfJWRS/BGCdpVrQ/v1BcQ5SZuPufPL?=
 =?us-ascii?Q?Sp1H1yz5WNbVtMi01kwiNWVws9JMM7fABrjiXI8RzRHrE90lMbcpIEzEt4No?=
 =?us-ascii?Q?Xc+auk7w1jkOu49amAtQoey9H2/WlMS4uta3Ouo1fRdUT0Gg2BFCStIie8Mm?=
 =?us-ascii?Q?7qXeXEWSDWwWfoi5EtPN01KWIZDarVu7Ec1ogqNzWgN163U9vF5QimEJThxX?=
 =?us-ascii?Q?jBO6/OyGtq0Na8TZDv65/j8GqvQv3fcofehMHLpZfpLgldRVPf3IwOBXC9+X?=
 =?us-ascii?Q?0nyDxAc6Nas3QlS4G9nBFOsmOSCNFdzW9UGX7hlYuNASvdxw51wItew2hFjQ?=
 =?us-ascii?Q?btXqmrq+kF7Ey6d68iLkkMPV5BwMQaI7ISDfIOHFAVUh7WBS8m5tDlKAh5As?=
 =?us-ascii?Q?nQniheheDegwN+HzW/J20is9c0VcI9SQztPX55r3TJ9jzgX/M1mbtLCIgk6B?=
 =?us-ascii?Q?BrijmguLgfc+BgoaUlmRwPGof4ksvZf4alNJALUovFS/SHYyAW97dDlMzHen?=
 =?us-ascii?Q?zbQTRixW4yo=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(1800799024)(366016)(38070700018)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?YeLwWPkwt9Hm48/UBxVpL5mVDcRmXgMeSRv7inPC2v5pQegvcUdDmYdQnDXa?=
 =?us-ascii?Q?i28it+itxkCPVQokKLyN0mucAy0IxIsrZuhUxYz7sDFmhdDE+8lpbGaRz6TJ?=
 =?us-ascii?Q?nR9t9/lT3Hz+ckaFJDF5CkP2cSwa4PZ3McTeJZs6/PgNx016hVsY3f2GmXxu?=
 =?us-ascii?Q?28z6YvtD07H2xn+eIlop3TcFLY9YK47j1anXjnX2aSCJzKlTJSQiaEiPp8Ea?=
 =?us-ascii?Q?9oHvEvjAKi9doJM1t3reqz+s1V4vdFXsuLmgKNaJoDPsEcWvfvmOF497Ym8V?=
 =?us-ascii?Q?0eIfiPWdNSrvJesoLiuXCcvZwJ4lYkjxceZD8XrT+A1KzA1KzS2Aqy+topFf?=
 =?us-ascii?Q?bEyAVCEefkXDIRSkaYGzUn/2KCXt+vCwFe6+pOerNFUZ6zekO+KlareGJaCM?=
 =?us-ascii?Q?XK9E8+G8+rfIVH4KI/hQpPC79yNTNiK5EEqPc5FH1ozJ7VXGTT6Yvhamodz/?=
 =?us-ascii?Q?d9ZuwF4/tSBtB1os5m8antAM/qO5qgaM3WoEM5+76vgawKMSHDdscVWNfIT0?=
 =?us-ascii?Q?eI4G4TL5avuMvGTwXJbpdERVCvNO2ShMvLplb9My9QTfrkT77iUt3HVcjNNT?=
 =?us-ascii?Q?HQxJv9kdu7VZ3r1MyhiYRjJ30cKDk1NArCr28SnyKT5N4aqYDt++JpCh40cv?=
 =?us-ascii?Q?wJBn+wxs2uJIpJC2ilC1i54iYToOe2spPGqLdGBzQ7vjnlmTroB42Z7NYIOi?=
 =?us-ascii?Q?g7Zwb9OBBZ1nJ9j55uHpY7p+TYl2bz2ESj9xhY6+yhMdyZOjz51aUTVS1z3I?=
 =?us-ascii?Q?pAnOp9aH1LxBJbtUNZuzkOGiVgFJ5OEfo1sCodcpxAmloIt26PzJdKrHh5v1?=
 =?us-ascii?Q?evRHYxBWR0kyGkXeVCvCsix/2InsvTDOjCnRNFll9g+7KysYOr9EX3Ogyp3N?=
 =?us-ascii?Q?p/LZkKZ2zwV4pnsN0kNPzaUzsjn/Jx+Pg7BFaec2EoXLrPItjOT4zki3qumG?=
 =?us-ascii?Q?HDt0C2zcOfhgtAD7q+8Hj5dXE3HkhZTqbN7QBIcWNoWl4EvQdTPA5moohytP?=
 =?us-ascii?Q?41Eo/otR6ld6N2svhO1qd2n/RGsHPTgmFyZEOOVNpqVZXmQ3yuIk9dBuLj2q?=
 =?us-ascii?Q?o9J3hj8okmghn/scjQPLPiNRf5umXVrNWy0GYgpEwxusjdFd3M/ClVtdquaC?=
 =?us-ascii?Q?vt2WRN6qs0rsP5kiHYTmf89qhig0nlUxyV1zjZC20DRKKTELOTNWDSXaKM/n?=
 =?us-ascii?Q?txP79TVWCO0BRLiDYozNJDKI/mcPq8LOTBOD1uFk094arIi+oMAQ0jXkfvWj?=
 =?us-ascii?Q?Y901SeDsAqsWULcgkPPXlQkItOUEOiYb1PdWI3MCdGw8YWsc9OV8xG0+ZSs0?=
 =?us-ascii?Q?R8GEYp+qFBu39B6QRDKCUHINeQXGNKVTTiyRPxdXUOEJVjV7ruAO3js1Hk8c?=
 =?us-ascii?Q?CIbncw7J/7luTvV/d6Yp/qXqxosjyPQQJ7Da0K29adc3+HI5KOWvsqjWbYDe?=
 =?us-ascii?Q?w7UIY+V+J514+azPFihN/gkYSJMP3h/qSrxYlfdxMmRjELGguvgoDHpm+NIU?=
 =?us-ascii?Q?eOCizA2MB3KYI0NJFjRu3sRScPzcnsvSwnGhZM1Cw6MDtyhZbVPuH2/0v0SZ?=
 =?us-ascii?Q?7ZXeg4YyIcd+gRca32TQrPmJar0XVJaQlhHHEzluZIPAWwVj+FTGCNwSsED3?=
 =?us-ascii?Q?tvseZIECIQ+hgQIBkNFwnJM2FyxuYJJyzrEMPfEtx5Zg?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c2ddbdc-9ab8-4685-9114-08dd562c02f6
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Feb 2025 06:08:38.4338 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XSKewEqzwtFM5b/MrQgJohp1hxIKTf1hu4ihSKsMuSANASSHo3knafGoT17K4jJ5NFHxzP5Pi8zREkaEaMlTdQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6245
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740550127; x=1772086127;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jdX6q38/E7orBNPfsfymzyDnfM1GxwXLmJ8m5a8xqos=;
 b=jwbHw1oC8SlISh3aBHCdR7D953NSw5rO3vcGEcB0+6SeMGZx3wFTiNF6
 4Jpvo2JH0AdRxXHykJtFYu6LR00AOf6405KUDFjCB9FY1B6HYAjL3642s
 EH06zm8kzp18uHE0Je7SZjWypey7dSiBDzV8wxLjasTvgVtM2wgYBde6f
 v/XtTyuHrGz7K8eFNA166SVC7fX1lv7WS161rHGwFXIx8fID5jjpw7ZNm
 7vSfIgF7DmMKyViG2keAtX0R1oPhWvQK6bwl3LXB248/l7IV/4aBO0mAc
 zLukgaKlM46j/T1fm1L7k79Gvr3ePaIBtVPV8+9x+3IFEFFTje6STfRZk
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jwbHw1oC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/3] ice: rename
 ice_ptp_init_phc_eth56g function
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of G=
rzegorz Nitka
> Sent: 10 February 2025 19:41
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kolacinski, Karol <karol.kolacinski@intel.com=
>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; horms@kernel.org; Kitsze=
l, Przemyslaw <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/3] ice: rename ice_ptp_in=
it_phc_eth56g function
>
> From: Karol Kolacinski <karol.kolacinski@intel.com>
>=20
> Refactor the code by changing ice_ptp_init_phc_eth56g function name to ic=
e_ptp_init_phc_e825, to be consistent with the naming pattern for other dev=
ices.
>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> ---
> drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 13 ++++++-------
> 1 file changed, 6 insertions(+), 7 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
