Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C917194EB16
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Aug 2024 12:32:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5FD828117F;
	Mon, 12 Aug 2024 10:32:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sNLaM-39j6x2; Mon, 12 Aug 2024 10:32:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AD08981180
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723458725;
	bh=uxhnSZwyiAuPzxE7ZY6iSqh43o9tFtWyqPPWwS05qiA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HHims4mtJyRZOZTJChZq+ZG3+D+OZtLykBo/3Qb2Iive1WiXP1xwIBWNrBMGwY9mv
	 X9DsKDfNEiJBSxiUei/yAw/8W5fUDUMlRAbf/ekj7xikNkiLf3bZrjlREg3Z+KL/s8
	 7wXbxXSdYp4FnywFNbAna7RLPli8q00Q0PxVZbqfmxj+XltHtFLTzYZYZwW+vZJVWS
	 YEpYfWn8oH6CdtTcoWuvxXfs9hB/cX2MQ8JgdVN+Mh6b9Tep/74Oyh9nAWICLrQMO5
	 aeCpagr57zD9hNqK04bHCl9odx+Oq6Anuh5ovCXw2tPWKr2B2Cm9uMui4cNvvDfASs
	 eo8r+lntk1zvQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AD08981180;
	Mon, 12 Aug 2024 10:32:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EF5181BF3A8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2024 10:32:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DCB7A60685
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2024 10:32:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ux2-accji9Bx for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Aug 2024 10:32:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C784D60680
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C784D60680
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C784D60680
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2024 10:32:02 +0000 (UTC)
X-CSE-ConnectionGUID: cNDvo43tQPelw/hkLKGqYg==
X-CSE-MsgGUID: 3MECwbaeTS6pwB/U8NFbqw==
X-IronPort-AV: E=McAfee;i="6700,10204,11161"; a="32183560"
X-IronPort-AV: E=Sophos;i="6.09,282,1716274800"; d="scan'208";a="32183560"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2024 03:32:02 -0700
X-CSE-ConnectionGUID: 8dq73J9ATkKpze6hC+iSDw==
X-CSE-MsgGUID: SMzvqtuOR7GFLhpWmrPSWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,282,1716274800"; d="scan'208";a="88876706"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Aug 2024 03:32:01 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 12 Aug 2024 03:32:00 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 12 Aug 2024 03:32:00 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 12 Aug 2024 03:31:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OXdCc62RgPWMZg6khL21bAEyU/4NbhUSiFOiScfZunK626kjxnSfbehoF+YJ745FeLJGYiSTWICXrNby8LuduAD9OnQhGk5SvPPVzvaNz5JWBFq8RptKmucrELjovjXh6i3bCpu++J1sQAfzuFlUcbvhELdtuKhBQZywtUUq8y5sXabqD2I7Lp7ksZK8cYXci2+9a02bqEx++WqX3J6pwW+FTX47gmuxRJR/rHC6RAN75fuTe380xxRXCWLY53wzZAC3QbJN7310VkDZ4tr+NAm6oT5k87FVDHv9lQWWs8Tbg/uc8zhYYrIgCYxKSB09p5VZ9sunpU3ZuDYOjWiIJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uxhnSZwyiAuPzxE7ZY6iSqh43o9tFtWyqPPWwS05qiA=;
 b=O5eKbC83DclMXls2npgQmqZHqARU7BLQI1v9L7oHiq2oqIWiXb1L4cNyHgJJyCtTfoG5oYvVd3jDTHSzdEnATzVVvJeL9/q+XSKxgKm4+gAcXH4iXfAXnrW9H2AUwpejP6NeEQ6V48ITaEHdTlPKYMRTb6VC+CXVRbw+ZGl1EY1GfldjzdgZXBP4EBFgg2TeuxZX2dYl41UQlvJyHaQ8CBe7/AR76UQMeozzy+duPBFTs2IyjSKVsjCrKkQm2fpQiAhBuK1Q8E6XWrCOjKzwfEz/+L3aRev2y0MrtPbf/SFol25oKB2nSpOFmsgJruBtUKofAzNP8DQdUzjYtqdlDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 by IA0PR11MB7884.namprd11.prod.outlook.com (2603:10b6:208:3dc::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.27; Mon, 12 Aug
 2024 10:31:56 +0000
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b]) by SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b%6]) with mapi id 15.20.7828.024; Mon, 12 Aug 2024
 10:31:55 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Simon Horman <horms@kernel.org>
Thread-Topic: [PATCH iwl-next v1] i40e: Add Energy Efficient Ethernet ability
 for X710 Base-T/KR/KX cards
Thread-Index: AQHa6YVIZUt/7vFBuE6e73zQjm8O4LIfDciAgARh5zA=
Date: Mon, 12 Aug 2024 10:31:55 +0000
Message-ID: <SJ0PR11MB5866396B608ED5A9DA8EB5C5E5852@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <20240808112217.3560733-1-aleksandr.loktionov@intel.com>
 <20240809152549.GB1951@kernel.org>
In-Reply-To: <20240809152549.GB1951@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5866:EE_|IA0PR11MB7884:EE_
x-ms-office365-filtering-correlation-id: fbb4e11b-4557-414c-efb8-08dcbab9fce6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?XFfVlOWe7pXAl6Je1AjkvLLbmoGpYFNP0RZ9kvOU/vDLhPvHLVkQsKY4dgEo?=
 =?us-ascii?Q?3iFc6/wwPXNaDqBl3ZvjYkucQFu7g9YdLxtV+kpXaF0diRzE7akQd9HrgXHO?=
 =?us-ascii?Q?3VYJIAbLIWtFhpxevXbEOxwCYAXb/SUDrc9Kvdlm3Ma8UHDdLRMi/DXXU89C?=
 =?us-ascii?Q?bBGRIPwVQr0vK1p37Lk+5DMo73jHaTVEGbeIIwtys9krvcIYuqDE5ePiL6JN?=
 =?us-ascii?Q?jPS7rFkeadudFmLh42yIgnOyeSTQ6alOi+Cejyt3wbvlYV0qxglt65DYQw2t?=
 =?us-ascii?Q?kQE1bst60CgmE0LkbYugr712RGf1wVvtxlgRtDiKsI8SbFCIDKEFmLKoF8Z0?=
 =?us-ascii?Q?SzriNSg7EGD5+SBAImW81Stn6wOmzjyiapWsstAt/5JTDPiRdXYlVZZriv2+?=
 =?us-ascii?Q?7LAebn5w1tHpLOw+eFeat1jkpjH2lKsRDsUoulofV8tWHhpE5lZN5IkfFzo5?=
 =?us-ascii?Q?fFSmzJlktCdLAe4TEQEMnnb6fNyWVNodnPuZtWnDR9o7AHVoO8hdDV296PEE?=
 =?us-ascii?Q?thiLRsKruISwg4IACvEH2Zo5f1G97bZrXDJgbb7PQm0OYAha6mA0vXxo28Zr?=
 =?us-ascii?Q?czuyP760LF2hN8AD88OURNyLmmEoMNw1Da6OAvtryq2G7tDT3P7Rie20vU68?=
 =?us-ascii?Q?mU9KzhdogS56CawJyjqfhIGjRGI2JAHQlKjNV8epyQ7LNyjztPQeFV9CXgUz?=
 =?us-ascii?Q?qeBauKhhEezM2A7BrrB5Fhwg2wr5KC668iSXVhwgFr38yrVly3g9Tp3QZEqH?=
 =?us-ascii?Q?at7Y+mKKkHznTbYNuzf6IgUEbssZA8ayCMXzZMkxWTvc4dBzPPaqBQyyZGBT?=
 =?us-ascii?Q?mEKj8lDDEgGENjvjxEJE1dKE+uAdVOLQ+8QWsoM/jMQe+Is667h43D6n3qzf?=
 =?us-ascii?Q?bqfAcbJCONDKT4FRwwCDf+dr5oy3qOUSc14edWI3dX0ncWSDZLjWBVzYmtxK?=
 =?us-ascii?Q?RHeASmXN0nQmddR6nUnLOcIszSk941BqbLnwYzduyim3LudKiz2S8Qwd8gCH?=
 =?us-ascii?Q?wXi0bV4BWtUMU9ZeJZLchPtaZ1dVr2jvioh+OlTkl26/tzEykY8JNBeTtUpn?=
 =?us-ascii?Q?c3b4E7y3BwNGAObZpt2e22u17Sp9oqi9IgJhFi667T6B/nJhxxD6Jrik9Uje?=
 =?us-ascii?Q?ffRAW7NtsV20Ah5WKVbYbrabDCZdC+LUH45cR7HCjytfW4OfRXRhiOiKsrNO?=
 =?us-ascii?Q?qcToBb48vfKNskGocMluKAQOTOnXveWQmATOAUi2DE7Go3rYAUNAC+Pzc8qP?=
 =?us-ascii?Q?0jNmA/QLtlQbWwfUSuf1dZFEGyHv7ZacU0QZfTMMiXJz/25SOZ5xR6Q4nPJZ?=
 =?us-ascii?Q?JT9YTwrYs71ipT1m7OCempNeH3X/JU9+AV19w6EZbG2K7ix8RgGcMzq/dEuS?=
 =?us-ascii?Q?8s/u2YxUQ4nbm+zO5mZh68inVy3WEj2KH00UbL42y/csjFq+cw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5866.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mfRPQtziehEA6gUCn1QKGPbDpR3aQ5/C7Blz23SsmqPIjxIzDZAf7kCaqIu0?=
 =?us-ascii?Q?eOfoNXoXVQZml1rXBvMPRJRK+Z2YN4Wk5MTe2mG/vdHItBvzkvBMv3H5AsFq?=
 =?us-ascii?Q?ETNDeAtzhIReRbQBUgaqw9O2vR5K+A9u8b/gfMl8BoO4ujooE8a+QVYHxpOq?=
 =?us-ascii?Q?iiE2OuUduSS2L61Q9Oa7Z6CNaIbwbiQdTCPYVsHuu7y5RMn2AJD/IuSg6x5Y?=
 =?us-ascii?Q?fFI+Tevoh72tCJrUy16nG+sIhMMibWjl9ndAvFdo+f0PFsFh49AkO8D+kOhF?=
 =?us-ascii?Q?UbzGR5cu2YGOTdhXfvVmAAzLROJ/8ZeyeuFTwbYA62HzRnyiHj45zzaDbkgF?=
 =?us-ascii?Q?XjJlSPGRK3YHOsk/nZQv+xfabuhjtSpRgAl89bLZqPm7pLgMsT+u7OpvsTNm?=
 =?us-ascii?Q?YMFJ/59/xZ+naMnMC6Rnfh6qJFxKn14LcBwmcMFYlQtPtwtNL6G7u4++WxNZ?=
 =?us-ascii?Q?ojt59HpML8kZ12WPPYM8BrBdHl2Pk09DUOJj8+/nsARny31Y1joj/9By1R2a?=
 =?us-ascii?Q?fNFfpchBazOXap4WRhk+RhhXKdL8Ak/9L+wCR8y7BDJbdCoPnFY1U8dfTcmz?=
 =?us-ascii?Q?vKgDMnEaHy7OLmtJre6CZOloh0xyks52NeVMxwDruraXgFhH+9W5G4XuvWim?=
 =?us-ascii?Q?QT36HbPmuCVLHVAT+H/9Gms551pSz8RXZOmx7emkZLzxnk1XqTLlFxZhCBI8?=
 =?us-ascii?Q?Mp+NnpswUz3MfGNmMK1THRJJG4/E4uivrKKSY7FQRx/vEsGuL5XTWe7YZwdW?=
 =?us-ascii?Q?mjNXnTwjsv/AgTTZUHCpcrRLueCsE7ediKndj9Zmef6PssiFC8RY0LV9oqsa?=
 =?us-ascii?Q?fsUmtM1YlBqdDksvRzDghG5BDx/0QQDXAhjIvSncoiZ9UhtefETnMhYuHC7Z?=
 =?us-ascii?Q?UidlO1PRrmmuH9Q5JU0it/BuxX3Sxx4Gi5RFdxApofIEnXh43PpBjwhVuBHO?=
 =?us-ascii?Q?uvVzDOfbNYmX1/nJ5qf1Gia0WTnhFAGaUsnI/1NjR5CRzGJTgu+o04poziw3?=
 =?us-ascii?Q?d4JxAhlnT86Xk+rmKIWjiWMUx2/wQ46Vio2o+pzidX6LjKuTRgVK1SF8LWXp?=
 =?us-ascii?Q?GOtkZqfrW70URZGWJ6Fq+aKX8ugOBURQxa1d2mJLfBauSYeCyUS+CvP5re9w?=
 =?us-ascii?Q?u3LB2wWH6mrzwWFJXPIcHGDR8ANGSOnGeMeOH6bPjOxaYYBua83q0YFawlNd?=
 =?us-ascii?Q?M3XEBsJbercNdbqSvFZKQ2dbd4uMNwyifUSGAzAPtINxYFsVkD2Aj/fFe3uV?=
 =?us-ascii?Q?PNDg9rOXpXCPHN5C6ON/67Zfff7+rpXH3CqRa9YYnxKd8jSzsuF6IjPBATj8?=
 =?us-ascii?Q?Ih5iylnTcTQV/nookPM/lRoj+d+zo2S/DV3crnei1xHCiVK9kWeX01QVHHzK?=
 =?us-ascii?Q?eYxhbDvR2G4G92tms2k6FN3Pj+fwNT7wV1BRyQJoDkryFF9SxEpeXknkLcps?=
 =?us-ascii?Q?n/hfiErsSYJzXVDcl7prnJ+7NMrGI+fHWdPwASUkytqKAovycQqltfYdbTxZ?=
 =?us-ascii?Q?uxyfb+xY+FiEJ7MKWYhGlCEqfVBF663PcPhB9AdUFZ77meT5cHDmfhj2qwr7?=
 =?us-ascii?Q?S8ugmU9yXmZCWW3BGPDbMXtpu+K1+uV+BMlvSB3kPPbLabWbn2FO+guAmSL/?=
 =?us-ascii?Q?3w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5866.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fbb4e11b-4557-414c-efb8-08dcbab9fce6
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2024 10:31:55.4032 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zekkSbqgYO3NLneJgMXSmFI8f9t6XqofWkGUL+tqeBTEvlAa2EdEdOosUtwwhgppm/RZL7MirxkVnGcrryqHtUW7PNDY0r2CXkhJDxE6Zqc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7884
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723458723; x=1754994723;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RtyqbXQ+sriCFG+n74w1AyUQ0n7xzM/+olYS1hdB96g=;
 b=E4HfblX8uUYy5sfkbpL0nXHxuqy+/TMHdZwkXJYy+u0YLNfUl9Wjtcxv
 5AGjxPOM36GuFvckOWDSiGMGPtSz5YNyBN+hy+bcea/3aiLfDAwnTMP5Q
 QLaGf8oa9OXTbF3zSC15HhxOKjT+nYYhFk9E36oYpx51MfNCH6/kWjT+E
 8gw5zwFVD0TvAkbdfKN64WOVl9kwIa+xCJ4aQ0s+78R6SyoxbwJL3pEJ5
 H4urV6BOikIZ+KGUm0cBIUmT65JsBQcpt4dAM4Hzss0EZ0xZ8xBRBsJEE
 2PYSyR7cE2ixKBu1Qoqgmxe5lajuc7l10OC89P8nf+J/MSNefVfhB0mUH
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=E4HfblX8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] i40e: Add Energy
 Efficient Ethernet ability for X710 Base-T/KR/KX cards
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Simon Horman <horms@kernel.org>
> Sent: Friday, August 9, 2024 5:26 PM
> To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; netdev@vger.kernel.org; Kubalewski,
> Arkadiusz <arkadiusz.kubalewski@intel.com>
> Subject: Re: [PATCH iwl-next v1] i40e: Add Energy Efficient Ethernet
> ability for X710 Base-T/KR/KX cards
>=20
> On Thu, Aug 08, 2024 at 01:22:17PM +0200, Aleksandr Loktionov wrote:
>=20
> ...
>=20
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> > b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> > index 1d0d2e5..cd7509f 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> > @@ -5641,50 +5641,77 @@ static int i40e_get_module_eeprom(struct
> net_device *netdev,
> >  	return 0;
> >  }
> >
> > +static void i40e_eee_capability_to_kedata_supported(__le16
> eee_capability_,
> > +						    unsigned long *supported)
> > +{
> > +	const int eee_capability =3D le16_to_cpu(eee_capability_);
>=20
> Hi Aleksandr,
>=20
> Maybe u16 would be an appropriate type for eee_capability.
> Also, using const seems excessive here.
>=20
The value is got from FW which dictates endianness.
Const is const, explicit coding style helps understanding and compiler opti=
mizations.=20

> > +	static const int lut[] =3D {
> > +		ETHTOOL_LINK_MODE_100baseT_Full_BIT,
> > +		ETHTOOL_LINK_MODE_1000baseT_Full_BIT,
> > +		ETHTOOL_LINK_MODE_10000baseT_Full_BIT,
> > +		ETHTOOL_LINK_MODE_1000baseKX_Full_BIT,
> > +		ETHTOOL_LINK_MODE_10000baseKX4_Full_BIT,
> > +		ETHTOOL_LINK_MODE_10000baseKR_Full_BIT,
> > +		ETHTOOL_LINK_MODE_40000baseKR4_Full_BIT,
> > +	};
> > +
> > +	linkmode_zero(supported);
> > +	for (unsigned int i =3D ARRAY_SIZE(lut); i--; )
> > +		if (eee_capability & (1 << (i + 1)))
>=20
> Perhaps:
>=20
> 		if (eee_capability & BIT(i + 1))
>=20
Ok

> > +			linkmode_set_bit(lut[i], supported); }
> > +
> >  static int i40e_get_eee(struct net_device *netdev, struct
> > ethtool_keee *edata)  {
> >  	struct i40e_netdev_priv *np =3D netdev_priv(netdev);
> >  	struct i40e_aq_get_phy_abilities_resp phy_cfg;
> >  	struct i40e_vsi *vsi =3D np->vsi;
> >  	struct i40e_pf *pf =3D vsi->back;
> >  	struct i40e_hw *hw =3D &pf->hw;
> > -	int status =3D 0;
> > +	int status;
>=20
> This change seems unrelated to the subject of this patch.
> If so, please remove.
>=20
But it fixes kernel coding style which checkpatch.pl may complain about.

> >
> >  	/* Get initial PHY capabilities */
> >  	status =3D i40e_aq_get_phy_capabilities(hw, false, true, &phy_cfg,
> NULL);
> >  	if (status)
> >  		return -EAGAIN;
> >
> >  	/* Check whether NIC configuration is compatible with Energy
> Efficient
> >  	 * Ethernet (EEE) mode.
> >  	 */
> >  	if (phy_cfg.eee_capability =3D=3D 0)
> >  		return -EOPNOTSUPP;
> >
> > +	i40e_eee_capability_to_kedata_supported(phy_cfg.eee_capability,
> > +edata->supported);
>=20
> Please line-wrap: Networking still prefers code to be 80 columns wide
> or less.
>=20
As you wish.

> > +	linkmode_copy(edata->lp_advertised, edata->supported);
> > +
> >  	/* Get current configuration */
> >  	status =3D i40e_aq_get_phy_capabilities(hw, false, false,
> &phy_cfg, NULL);
> >  	if (status)
> >  		return -EAGAIN;
> >
> > +	linkmode_zero(edata->advertised);
> > +	if (phy_cfg.eee_capability)
> > +		linkmode_copy(edata->advertised, edata->supported);
> >  	edata->eee_enabled =3D !!phy_cfg.eee_capability;
> >  	edata->tx_lpi_enabled =3D pf->stats.tx_lpi_status;
> >
> >  	edata->eee_active =3D pf->stats.tx_lpi_status &&
> > pf->stats.rx_lpi_status;
> >
> >  	return 0;
> >  }
> >
> >  static int i40e_is_eee_param_supported(struct net_device *netdev,
> >  				       struct ethtool_keee *edata)  {
> >  	struct i40e_netdev_priv *np =3D netdev_priv(netdev);
> >  	struct i40e_vsi *vsi =3D np->vsi;
> >  	struct i40e_pf *pf =3D vsi->back;
> >  	struct i40e_ethtool_not_used {
> > -		u32 value;
> > +		int value;
>=20
> It is unclear to me that this type change is really related to the
> subject of this patch. If not, please drop it. But if so, it seems to
> me that bool would be the appropriate type.
>=20
> >  		const char *name;
> >  	} param[] =3D {
> > -		{edata->tx_lpi_timer, "tx-timer"},
> > +		{!!(edata->advertised[0] & ~edata->supported[0]),
> "advertise"},
> > +		{!!edata->tx_lpi_timer, "tx-timer"},
> >  		{edata->tx_lpi_enabled !=3D pf->stats.tx_lpi_status, "tx-
> lpi"}
> >  	};
> >  	int i;
> > @@ -5710,7 +5737,7 @@ static int i40e_set_eee(struct net_device
> *netdev, struct ethtool_keee *edata)
> >  	struct i40e_pf *pf =3D vsi->back;
> >  	struct i40e_hw *hw =3D &pf->hw;
> >  	__le16 eee_capability;
> > -	int status =3D 0;
> > +	int status;
>=20
> This change seems unrelated to the subject of this patch.
> If so, please remove.
>=20
But it fixes kernel coding style which checkpatch.pl may complain about.

> >
> >  	/* Deny parameters we don't support */
> >  	if (i40e_is_eee_param_supported(netdev, edata)) @@ -5754,7
> +5781,7
> > @@ static int i40e_set_eee(struct net_device *netdev, struct
> ethtool_keee *edata)
> >  		config.eeer |=3D
> cpu_to_le32(I40E_PRTPM_EEER_TX_LPI_EN_MASK);
> >  	} else {
> >  		config.eee_capability =3D 0;
> > -		config.eeer &=3D
> cpu_to_le32(~I40E_PRTPM_EEER_TX_LPI_EN_MASK);
> > +		config.eeer &=3D
> ~cpu_to_le32(I40E_PRTPM_EEER_TX_LPI_EN_MASK);
>=20
> Ditto.
>=20
> >  	}
> >
> >  	/* Apply modified PHY configuration */ diff --git
> > a/drivers/net/ethernet/intel/i40e/i40e_main.c
> > b/drivers/net/ethernet/intel/i40e/i40e_main.c
> > index cbcfada..55bbf0f 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> > @@ -7263,6 +7263,22 @@ static int i40e_init_pf_dcb(struct i40e_pf
> *pf)
> >  	return err;
> >  }
> >  #endif /* CONFIG_I40E_DCB */
> > +static void i40e_print_link_message_eee(struct i40e_vsi *vsi,
> struct ethtool_keee *kedata,
> > +			    const char *speed, const char *fc) {
> > +	if (vsi->netdev->ethtool_ops->get_eee)
> > +		vsi->netdev->ethtool_ops->get_eee(vsi->netdev, kedata);
> > +
> > +	if (!linkmode_empty(kedata->supported))
> > +		netdev_info(vsi->netdev,
> > +			    "NIC Link is Up, %sbps Full Duplex, Flow
> Control: %s, EEE: %s\n",
> > +			    speed, fc,
> > +			    kedata->eee_enabled ? "Enabled" : "Disabled");
> > +	else
> > +		netdev_info(vsi->netdev,
> > +			    "NIC Link is Up, %sbps Full Duplex, Flow
> Control: %s\n",
> > +			    speed, fc);
> > +}
> >
> >  /**
> >   * i40e_print_link_message - print link up or down @@ -7395,9
> > +7411,12 @@ void i40e_print_link_message(struct i40e_vsi *vsi, bool
> isup)
> >  			    "NIC Link is Up, %sbps Full Duplex, Requested
> FEC: %s, Negotiated FEC: %s, Autoneg: %s, Flow Control: %s\n",
> >  			    speed, req_fec, fec, an, fc);
> >  	} else {
> > -		netdev_info(vsi->netdev,
> > -			    "NIC Link is Up, %sbps Full Duplex, Flow
> Control: %s\n",
> > -			    speed, fc);
> > +		struct ethtool_keee kedata;
> > +
> > +		linkmode_zero(kedata.supported);
> > +		kedata.eee_enabled =3D false;
>=20
> Can the declaration of ethtool_keee be moved into
> i40e_print_link_message_eee()? I suspect that would lead to a cleaner
> implementation.
>=20
Ok

> > +
> > +		i40e_print_link_message_eee(vsi, &kedata, speed, fc);
> >  	}
> >
> >  }
