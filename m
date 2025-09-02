Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 25F02B3F51D
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Sep 2025 08:15:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A095161B22;
	Tue,  2 Sep 2025 06:15:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3a0BfKpe7bca; Tue,  2 Sep 2025 06:15:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CAB3761B25
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756793712;
	bh=B/d2sneLadJBg7nb7/N6W2lya1lQrRalQgLo9d9+W08=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=upblFkGCkSIhwRWUO5gFj4XUOqK4oGgC4iBJq1i4jJEPrt9SeB/7tqXWlLjauH2y9
	 5OVuIPsB0m4I9GYzYvkdKRY0mDt/Qx/j3jQNNCrmtEURNzCPFGD7+QqLUtJWt5TkNZ
	 8DOR0twhm2KyXKbLQLVUVspwDGAIozIjSjI87y0Nxz08dkZX5NDX9eofEPtu51r9+Q
	 q+BIjNygGpwhsnAAP8Kq9YP3iHFFvWI1fEjyzq9RVwitqWNpJQ84u/xw5XVdDfGXOY
	 OTO9jTIdRqQOSVZ98sq/DOrNSbja2K5SFqNbqChfJvdrEMmI9jM8B/Sbc204q7RfBN
	 VEJcgeh/eo0cQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CAB3761B25;
	Tue,  2 Sep 2025 06:15:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3CA27D2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 06:15:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 99DFD82EC7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 06:15:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AueJ_vSuzNlu for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Sep 2025 06:15:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C4C6983CEE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C4C6983CEE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C4C6983CEE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 06:15:09 +0000 (UTC)
X-CSE-ConnectionGUID: tzuyjwJTROO0STZzEfp3PA==
X-CSE-MsgGUID: iCmQBN3RSsWIl2v7hKElZQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11540"; a="59190591"
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="59190591"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2025 23:15:09 -0700
X-CSE-ConnectionGUID: aMXR0jG1SVeQvysVK7czcg==
X-CSE-MsgGUID: Hma1OJlhTkmxCS6VVNSlxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="172039083"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2025 23:15:08 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 1 Sep 2025 23:15:08 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 1 Sep 2025 23:15:08 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (40.107.102.63)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 1 Sep 2025 23:15:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tEdnIxKoWmbBDWAKjbAyJofahMwrrz5jK2z1DcOH2GzyyKaMeNgiruFvKvfpS0X63eTFR4/75hzdZK+V1+zxm1y4qGc4+mhSJIlausS1XsD/iJFz0OmZ9IFHI3gLqX1qFZBrvrQdYChfq1tSXNVlDj7gXFheXcDNJh6Kg07mizzA6cZ3RLvtZxHdPqxkN0dXRpM7axq/23tQhvXAfdysIJ9jNmKlQUvT6S4sp8fE3CPVWVCuRCKV9/rE6SYmXOB0mUik6mmZTW2cVV31A9tbm3NCto4LaB1mmCVqhISIB5yFnX4A816wLPTZaS7Azkz3TLAl/uKWDWR6uVv093U48Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B/d2sneLadJBg7nb7/N6W2lya1lQrRalQgLo9d9+W08=;
 b=ceio5gWKasORN/oUKo8SeQPVlv6KMjX95UwQ7B91gSFb5jckD+0gcZYHqcs+OwsbOkvWJFA9CjjhgLj1kVnxqo+EuCRsLV4uhe34Jb76gQdrgIuD2/YtLmbzn1qoWX6SQPfw/krKan8Da3phd+tcASmf2fRlXjz1n1MpH0Jq6s1j4snjLBiAymDoymmTiFyo5K9Uh+8SG15uRUqWFgr6yG1W++JcIaSYh3oAag3tYi0ITe6DRA0ynvKAxWueZyr0oyDaRBCL/eeZ0SpSFxobVKRIi6boEare3IaRKVEt/1RvsPFXosD4rWNs60D87exvgk4QcmTeGjXoJUN6T9WqRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA1PR11MB8475.namprd11.prod.outlook.com (2603:10b6:806:3a3::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.27; Tue, 2 Sep
 2025 06:15:04 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%4]) with mapi id 15.20.9052.019; Tue, 2 Sep 2025
 06:15:04 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Koichiro Den <den@valinux.co.jp>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "mateusz.polchlopek@intel.com" <mateusz.polchlopek@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2] ixgbe: fix too early devlink_free()
 in ixgbe_remove()
Thread-Index: AQHcG6Iw6pk7E7UoK0+QP62VXepFU7R/anhg
Date: Tue, 2 Sep 2025 06:15:04 +0000
Message-ID: <IA3PR11MB8986BDAD8010E2DD1716126AE506A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250902003941.2561389-1-den@valinux.co.jp>
In-Reply-To: <20250902003941.2561389-1-den@valinux.co.jp>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA1PR11MB8475:EE_
x-ms-office365-filtering-correlation-id: 62f5caaf-5683-425c-8520-08dde9e80eb0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?BiEGVXP4LIur46KyA6+0nNrNuClrzKSAYVD7HL/9RPOi1rP1paRZ1kYh42PK?=
 =?us-ascii?Q?cw4D7tW7c5bnY1Dg1XcSxKsaxuDmx5moP+J+yrhkt4yrH3W3ehGYqfqdn/PT?=
 =?us-ascii?Q?oS9mXa0zp+mdWlzIYXK2oPYwsDH3fzZpQde9kYxbHf3mPbuowjNJvIduK6I9?=
 =?us-ascii?Q?3GPbHKlGeEL38tOk5P5WtAcCPFcNNc7gq+GhX193XT3LuuiOMDaH1vb4TTAn?=
 =?us-ascii?Q?9k5EQEtK6bdcj3/Yx7LO/7xFEH4SAxjqqKrEFJ6PdMpA9K4AqCayquJmPXzE?=
 =?us-ascii?Q?RZ7CV6XRleOBVp/EJMuzaa067jEedPd64BTeS5flDOQ9n5fDT7xXBsj9hF6H?=
 =?us-ascii?Q?crodLAUd1T1rJKpUa5t3+WT2q4FCaDPq5eHuwaN6UX1F0Odi0KvpeeHO3Cmh?=
 =?us-ascii?Q?K2/+pTIjcVAdVJJcUlAlQOseSHYN75idV6aHyqPeCXrjykMQMDVZWE1Wexqd?=
 =?us-ascii?Q?5NfsAgUaYnQxkpPVPf4cfMoZWuX6YBbuuHeJmyqU4/yNqWdBPYs/M1RTXmRB?=
 =?us-ascii?Q?VWHRMQGd7hutXCPe+oPZ4cmyExV/jeEFxPW9viGBRVHrj6SMNNxU/+yZfHyZ?=
 =?us-ascii?Q?hr7wvrmIV7qppzJuh6j7VXg/XjXAOo5XlkDMOGeQvwBS+6AUoSmw+WsH3QoZ?=
 =?us-ascii?Q?DAlWnQDzrNP/UiQntiN9JpHeqreaBheN1zt+LBxHcn9ql14Miiku0kZFb0Jb?=
 =?us-ascii?Q?IbwdT9RUnqevRMBpv4ERBj/2N8F1rawHkKOrNCyAsym5EPo47BgG0pupk/BW?=
 =?us-ascii?Q?El2+XhtwjgfM6L43spTg2tiA3AGmFMPHj90x/wFHPAgjKOoVJk4mBE+10Vxa?=
 =?us-ascii?Q?UWznZveF4WjnnZa+7Ow8y7FKpAeQY9iVaHyuxQrmzmk20UaAJn1bOljTROZs?=
 =?us-ascii?Q?fnbf8zEKt5acMHfUvLNSq+Hr1JF1e4qkqb/U4m6/mIjiDRLij2iU6ujo/gIu?=
 =?us-ascii?Q?droCJFxxfbqwJ/pQ1+r6rbUkknUeVi4nUlPbCT3tMGqXiFtm+QfatftTDaSV?=
 =?us-ascii?Q?u5yHtAQ0pwX+Jcocf6h5rU4Wv/SmSfiTvTA6My5S/gKkxhZCpEu3LJ5EZtJV?=
 =?us-ascii?Q?kpazICGuPgBS28qAdod+2nTsNus7MIRjZ0Z7e8Ofqe/1gsOANs2N7UlrHYLO?=
 =?us-ascii?Q?xA8ebOgHt+Yjz7+BsANNhZKQJ0UnK778fHupV1n1NOXquxjAcHlzJtESD6TJ?=
 =?us-ascii?Q?ySMSiU/Cf+436SddvKZ1fyfrYHi2tJ3YWjn6vW+xTANPsQ36Kx6BRF88zFep?=
 =?us-ascii?Q?HJHiCP5WKJdQVa7KxtqFAu3hnhIC8MAiBCmC1myGwf+EYkaXq7K4spY2z67z?=
 =?us-ascii?Q?REaxJKDopTm5Ftt9ypUnwloSpNFQTN0FerueOj/xF9sz4RnpzE/cBGwwxJLB?=
 =?us-ascii?Q?6iQEJazPb6mJdlIcxsPcBqMiT1gn7g6N5B3j20/nH80wIoqMJg8IqPCrIWTz?=
 =?us-ascii?Q?qPAnnHYy4rEAzrReJkeJ5f+BlHFeg+lHgpNskFGXLBDxaFQCfn9YxY5NFx7u?=
 =?us-ascii?Q?KwNylH1LRC7YoOE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?OLX8Vtqbj8q11JWZQ468LkVSK05+/KP1HDnv6zYhCWizv8fmW2ViyCzgWyXi?=
 =?us-ascii?Q?PI6BkPX1OlsPE2RtoUFx4AXSS6uP/UY2xOvTKDLzApnPfbVR6+WVBxmYsih3?=
 =?us-ascii?Q?LvS5JysiNrt2rXoDTiHtYRkI8jF0/x5s3UpRNGhzx8txF7yO4ayAHutdF3y2?=
 =?us-ascii?Q?2fzZVcsDxC1xHdrCBWhadkuDG7uiSDspYZjJousSObo1I6vgCPwsiZTseCbM?=
 =?us-ascii?Q?ubqoZ5D1oodH0+YM9iPHs8h3POqsAM1uxiHn+JAa8rcm+esgYsXOKw7QA0pM?=
 =?us-ascii?Q?uRAIIbwcFG/x7BAoY2nKPqLUMzaPlpsw5LNT3UMpnerY9z2i/dNow9pn3Clg?=
 =?us-ascii?Q?eqrhVodOqyOJoT+nLuSG+YRGcdpuaF4h9uanTIA7TgICi5+246+HfJwE0zDs?=
 =?us-ascii?Q?JO2Ox9dMdzufpIqVtLKDhe0yTSKgIMQuP2KF37vk9MVUjEt4L//YwonMaeCY?=
 =?us-ascii?Q?ttcbMiS6SebrcvGpS0y4K7unbm6dPWWX7msATUR4ajI7bzCYTDO71gYN9LZo?=
 =?us-ascii?Q?GAytjh3KGQD32krOTkVS9qm0vnVU1nXOsixVj5KNDPVSJRChdmTMaWgdsskW?=
 =?us-ascii?Q?yRX4j8FYd9zKGPbGp6iDpuO8FRGauprsL5L/afjvX7ZCRf0mfwM+QgXgItgB?=
 =?us-ascii?Q?w8K7OsCCSef0n2O0yQ2gnkRcGl71TLeVys6jmLJyPC6VJ6WSR2fozqePrSMJ?=
 =?us-ascii?Q?/30rnSe1wVMW94zCf+AtaGoLqDAqcOMzZQl/pkxLxGWHt9coL1uyUK84L4tB?=
 =?us-ascii?Q?0xbm8H+ZkWE2+VElDA9NUBDWIwD2/EK4+VBZLGF01OnSRVIlEuazIFqx5AqV?=
 =?us-ascii?Q?W7k+LmwuWQifIRDoRAXDVQsopBfE8GIzUN+C7dYu5sfNkxpoWcofwdXYtJMu?=
 =?us-ascii?Q?l1wa8wOtoiCTVu+VtiIGHdBjDaMZEYCz9lt8ZqOJWiHwXrpaEFW1bPM/y5zj?=
 =?us-ascii?Q?zEFTh+mUZo3aY2c2/H4Xp4uwpa6jdR0MZo1MyZa1vTAE/g8Z/9fyFFetQGXF?=
 =?us-ascii?Q?etXhtOD+EkxoEZTH7jE8m3nZ70qedVzyQY+tajplI8rRXJIhWvhq/t5tf3Hh?=
 =?us-ascii?Q?K8J2D1G/CMiy6Vd/3SpiGjUuXKuvFsPw3U1m5jl+FvKU6uZ29qofkjhVQVtD?=
 =?us-ascii?Q?v9b3vWzRd000JFf2bjpWaUjVOqVHfw2lI9yRnRBFr5gjWh4CaSt1K7Jh2t1t?=
 =?us-ascii?Q?DImklqNoeDENvsM81qhv4SUZ2Zj5yz8Pa2M8JWSi05JYt5+NRKggtw2nacgo?=
 =?us-ascii?Q?mymlYlSYM0kFDQZ76SBJFofX14UlMlWBOPxcuURJCBGivFfnTe7bUM1rWxSA?=
 =?us-ascii?Q?+e4rkPvakSeT0Ou1WU/NSmQd8cFvvIqETlbJ+vYPYddRZcaiboFAC9oC3e5b?=
 =?us-ascii?Q?toYGATjnyHRE3c9k08iS3H5QFcTDp2EC8mxkj65ns3jznH/9ELTMRizzHHga?=
 =?us-ascii?Q?srM1qqkfJ3ResOJbsKUa2b+3eRyx/ugq7zsYC4FjLf3PaiflwBfJVfA0BSnj?=
 =?us-ascii?Q?rqZqzb3aqi2XaqgDSIsiNWleY5gLiah0m4EoyIkWCFCo0qisHYKD1SZ86Z7R?=
 =?us-ascii?Q?7k2cb60s5Cmdic9z9z2Og+FMw4hp3x2iCfx9YeneGtlPG+aqAcrpN2CYpHwQ?=
 =?us-ascii?Q?4Q=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 62f5caaf-5683-425c-8520-08dde9e80eb0
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Sep 2025 06:15:04.4265 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HPgohaIEUqz2dn2gSQEBp2Jdokpy1vrvtq4L0CO+0VSjrMq/tevUIPC1jBClHdVXOHq0vhKsaU1oHNdd++tXuybe9moU8O6rZIID4Lui+pA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8475
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756793710; x=1788329710;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TGNlugtXumNpgG1saU4ijBxDNyhULpmO1ZYT/gLfz1Q=;
 b=HUr1hir3ZC8xsnPOCLI50Ou1BJqd4k50xCttURErbHuOQvYQcpaW4XKH
 CORwldn7CNBGyPpH34JWYTsLnudu5SdXGZs7dWWTQ27ACcFoqFDrK53CS
 xg9FcWAiS9V1DKWg0EiTHhQ61q14+rDBjBJizHDo1JTU7iOI8JyxCC8XY
 x1SAbVixn2rgK0cYQs/dS+dH9LaqqWBpejxQc6ebU7jCzKpgxpMEB6gDY
 M4pVn57pmL+BYimnGwTC/sQng+XW7WBj2SqF1SBuL8SMYCJaqsihn22vd
 67bFpX2Zezf2rN9e/0GoFfXkFVWEg43weOtXY1YCnh+g9TTV0M9DdT4c9
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HUr1hir3
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2] ixgbe: fix too early
 devlink_free() in ixgbe_remove()
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
> Of Koichiro Den
> Sent: Tuesday, September 2, 2025 2:40 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch;
> Jagielski, Jedrzej <jedrzej.jagielski@intel.com>;
> mateusz.polchlopek@intel.com; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH v2] ixgbe: fix too early
> devlink_free() in ixgbe_remove()
>=20
> Since ixgbe_adapter is embedded in devlink, calling devlink_free()
> prematurely in the ixgbe_remove() path can lead to UAF. Move
> devlink_free() to the end.
>=20
> KASAN report:
>=20
>  BUG: KASAN: use-after-free in
> ixgbe_reset_interrupt_capability+0x140/0x180 [ixgbe]  Read of size 8
> at addr ffff0000adf813e0 by task bash/2095
>  CPU: 1 UID: 0 PID: 2095 Comm: bash Tainted: G S  6.17.0-rc2-
> tnguy.net-queue+ #1 PREEMPT(full)  [...]  Call trace:
>   show_stack+0x30/0x90 (C)
>   dump_stack_lvl+0x9c/0xd0
>   print_address_description.constprop.0+0x90/0x310
>   print_report+0x104/0x1f0
>   kasan_report+0x88/0x180
>   __asan_report_load8_noabort+0x20/0x30
>   ixgbe_reset_interrupt_capability+0x140/0x180 [ixgbe]
>   ixgbe_clear_interrupt_scheme+0xf8/0x130 [ixgbe]
>   ixgbe_remove+0x2d0/0x8c0 [ixgbe]
>   pci_device_remove+0xa0/0x220
>   device_remove+0xb8/0x170
>   device_release_driver_internal+0x318/0x490
>   device_driver_detach+0x40/0x68
>   unbind_store+0xec/0x118
>   drv_attr_store+0x64/0xb8
>   sysfs_kf_write+0xcc/0x138
>   kernfs_fop_write_iter+0x294/0x440
>   new_sync_write+0x1fc/0x588
>   vfs_write+0x480/0x6a0
>   ksys_write+0xf0/0x1e0
>   __arm64_sys_write+0x70/0xc0
>   invoke_syscall.constprop.0+0xcc/0x280
>   el0_svc_common.constprop.0+0xa8/0x248
>   do_el0_svc+0x44/0x68
>   el0_svc+0x54/0x160
>   el0t_64_sync_handler+0xa0/0xe8
>   el0t_64_sync+0x1b0/0x1b8
>=20
> Fixes: a0285236ab93 ("ixgbe: add initial devlink support")
> Signed-off-by: Koichiro Den <den@valinux.co.jp>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>



> ---
> Changes in v2:
> - Move only devlink_free()
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index 80e6a2ef1350..b3822c229300 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -12092,7 +12092,6 @@ static void ixgbe_remove(struct pci_dev *pdev)
>=20
>  	devl_port_unregister(&adapter->devlink_port);
>  	devl_unlock(adapter->devlink);
> -	devlink_free(adapter->devlink);
>=20
>  	ixgbe_stop_ipsec_offload(adapter);
>  	ixgbe_clear_interrupt_scheme(adapter);
> @@ -12125,6 +12124,8 @@ static void ixgbe_remove(struct pci_dev *pdev)
>=20
>  	if (disable_dev)
>  		pci_disable_device(pdev);
> +
> +	devlink_free(adapter->devlink);
>  }
>=20
>  /**
> --
> 2.48.1

