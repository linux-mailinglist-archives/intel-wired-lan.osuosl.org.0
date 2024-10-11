Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F48D99A03F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Oct 2024 11:38:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A711A820B1;
	Fri, 11 Oct 2024 09:38:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9c-DQhFTCWuz; Fri, 11 Oct 2024 09:38:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EB944820B2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728639484;
	bh=BvydJGr0ORoEBSOPL06QcuMqplHNs3P2toCjVoCaPZk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dgbtciTJ8QMI/802XQA9CwL/AqvTrbwlgniZzPbXl+izbvwMm7hljdF0h7ma14NHv
	 n6xVyJKXsQm3ipJrmmx/uuW7VV+ENG8+qZ7GlucdngDzIv9lMMOic0WaypGHSoJkwp
	 uaOxTtLYOf4tD2xacVwAola4YrOjNdKcQj6D2ibNzJ6OGJm2QE8Tzn+z+PMD5Lik7C
	 Zi+iB4EIbgdBT1wMrk6+cRtsUToDaLVFaVrFL1xuH8mofd02KZzNdvo6QsOtH1qs9Q
	 9ZqQu2wCDwMW/4tHEwBHu+SnxMDHw8Gj9dzaDApR+uG1yseXUDg/cJ7nofzl9n6R7G
	 3oNpQTBHANWGg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EB944820B2;
	Fri, 11 Oct 2024 09:38:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 91B981BF85D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2024 09:38:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8AFB061101
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2024 09:38:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 39fBRUHLm4FF for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Oct 2024 09:38:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 829B9610EE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 829B9610EE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 829B9610EE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2024 09:38:00 +0000 (UTC)
X-CSE-ConnectionGUID: FVia8fAPTJCsOargyKFXmg==
X-CSE-MsgGUID: 9okE7oMdQHqXpJGbly9x5w==
X-IronPort-AV: E=McAfee;i="6700,10204,11221"; a="39427846"
X-IronPort-AV: E=Sophos;i="6.11,195,1725346800"; d="scan'208";a="39427846"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 02:38:00 -0700
X-CSE-ConnectionGUID: fG4vq2bvRbal3DZhfpM6AQ==
X-CSE-MsgGUID: z8Knwv9UQtyPW3HEemE0JA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,195,1725346800"; d="scan'208";a="76773895"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Oct 2024 02:38:00 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 11 Oct 2024 02:37:58 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 11 Oct 2024 02:37:58 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.49) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 11 Oct 2024 02:37:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QqlugmQBQw8GeMg68cbvwHPZW0vxTAa6pyirsVpFPxAtkCxgU9RDMIl6a6NUwiqbFGRixf6kNsAmKAASxE0CssBvN+/eGIVQBaFpSRJw9DbzCQsFFjxawXRXuW+NMBvgccnyZ62dfJbmG9mgidPI7f+dCoWXnjQ/LhQ/SNrcxNAvzUYRL87V7C67bIynnNUoJp1/TreqSIdVagMGRzqRBrzj6Oy6/PXCZN++PPtyZY4ofHqGTo1gg2OxOywarRWBsqtBgufWirwwGf3c4VXcE7kYrQ5Hr9jb2Bn4AUe99+pVDj0C63QAW81msLBr1zWJr+Ni3kSERjrzXsFvKaRvyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BvydJGr0ORoEBSOPL06QcuMqplHNs3P2toCjVoCaPZk=;
 b=IFyitDAm6WVm32RV3xKjvRKx6J9dzHbtd4fH2b8qYAOZIKxOzt3k7iK79RrXzcL9MZa0jNupUp8Y0vdFLaB4cZjjXqylYLnmJYQSAYzxCrVSfBjhPs1ab6jG1GHgFxLS/l69zCBnxDWRTWtFwUD02GKM94o4B0zDWV/VHdz5MwsCQSl9y/hDf2SSfrDPfSbLFCdFgyNkt32W387qgpTGDJXJPip30dtwTXb5o4v+mJl1/I5ukc+r27hsvhaLI0mowRxoOZkalQ1P6n/BlaZk+Vs3HJtIAo4KN3kC1FfLGHO9HodTXY5slJxz3U33QO/fLXTclu3UEySwmAj/jxnXhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by CY8PR11MB7394.namprd11.prod.outlook.com (2603:10b6:930:85::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.16; Fri, 11 Oct
 2024 09:37:53 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%5]) with mapi id 15.20.8048.018; Fri, 11 Oct 2024
 09:37:53 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 1/2] ice: refactor "last"
 segment of DDP pkg
Thread-Index: AQHbFSlNJpJcyAWjbEGhDF9DV93EqrKBV6cQ
Date: Fri, 11 Oct 2024 09:37:53 +0000
Message-ID: <CYYPR11MB8429F5EA7967B93BC0299AA6BD792@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20241003001433.11211-4-przemyslaw.kitszel@intel.com>
 <20241003001433.11211-5-przemyslaw.kitszel@intel.com>
In-Reply-To: <20241003001433.11211-5-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|CY8PR11MB7394:EE_
x-ms-office365-filtering-correlation-id: 2f276aa4-7b72-4eac-4675-08dce9d86187
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?qyN3PxyINLKsU/eTqgDDpBSGSEqjWSi27RtN+wC2JZPOUeFP8J9EtUvG4vRW?=
 =?us-ascii?Q?Y0PCK5mwNeWu+fXMYYCGiNWeYFv0mtFV+gbgZyrqp+4btG6Vpmdtg04v+xhy?=
 =?us-ascii?Q?zQLiJU2RSdNHHCy2lTIq90pBaqQBskHOh3klCDp2pNDBVNu4qsF2+lnnm4sG?=
 =?us-ascii?Q?7nJShdnqvOGbgLK1iO+sl/4xyC7TSeq0K3HkxkHFi4QJCCvnTOt83XjxUaji?=
 =?us-ascii?Q?44DuxqsSa9Arsmt9dkCo3GSJ/XM26bC+ZSHzDjZUX8ZN96cuMT+v/ebIyHeE?=
 =?us-ascii?Q?5i0cXV0TGkVFnGQCvKq64adsiiD2PZvHI8Xyj++L3BNaGcDqQRmlXzcQS29J?=
 =?us-ascii?Q?cioL8wapKIngs/8OpSkBMj/SsyjZdDO2mvPJB0nIEChh9h64ImgUQYhRkxIl?=
 =?us-ascii?Q?j/FSFG3zIcJHvq9nb+LIl+Uioke7L0Z08aRtuntlIWj2qCjDG9WeLtbfb43i?=
 =?us-ascii?Q?V57VWgB5doia9IqZ/+U8z9Ggx+MbHA/EN8lhFO1oUOl2VPLIMAWMBT+F6qE7?=
 =?us-ascii?Q?5z1kGQtFBZ+vd9MIEMrE3Q23/1fltMOHifj2sK3/FyzrpKWI7xv/1UtyNEI7?=
 =?us-ascii?Q?X6R1jbylgG9x0EifpJlLb0lkRbFjqS9XKgcsIKHgFTfHUGnK0YJyShkr1K4i?=
 =?us-ascii?Q?9J/1JSKJLT3rzoMLIkKLvykd+RnFIDbBluiKG53+XKPGB+I22pM1HJUoPS7i?=
 =?us-ascii?Q?7u5YS5H2JXrslcALAZTlCmwRfVLpRPBbPCxTV2YBAEcyTNAuN42QYKIBkxiE?=
 =?us-ascii?Q?nHBhzeTI16AfB74eTONNjVuP3xZfRXjY4Sc0jx0PPSRRyxBWrl/LXU9MG73L?=
 =?us-ascii?Q?xRxUhlKxML64qBKl5OL8dTlbpJ/fP5CiG1pPDD8hQM0ZauaBKoZCV4qLEXvc?=
 =?us-ascii?Q?SUap0IQzxzYtNsH5IxLoZtsMC2P1pFnwH4IiE9Dyi7mOF5EK4FFuGq4AiWUE?=
 =?us-ascii?Q?XSibv8zoUx7X2D6nnJVDgRtQnPG/qEu2uECqCmY6JczBgPq7gx8rSArOR8R+?=
 =?us-ascii?Q?eQBmEX3Kl/PZVqSSMxHnIumi5ZwjXPARpvuWIvkmGgT8WofQq5Zf5dFk7iIb?=
 =?us-ascii?Q?ZjLsm/S82yG8lepA5gwsROP0MoQJOdTet/YQNuU1inT4yIzB6AnUqOik6ezL?=
 =?us-ascii?Q?StK38zWVKkeW2o2bJlhVlaXURb274DU7Pl5Y5FovXisLgnnt9HAkTxlwnlgo?=
 =?us-ascii?Q?1XI9s/0ZptKEcwmsFbVggwogrjxcKddRSlMfQa/bwp0eBoFl2kDqUUK7aVbZ?=
 =?us-ascii?Q?XbTVLKAsQ9xjMv9lm5P1vDOfozTIMOQrfYhHky2zqZxq6K+j+N4n1qnYIFlg?=
 =?us-ascii?Q?nayBj+/vS8BpUCWgw/+UPHnkU8nQ+m93y7gD0Gdwztaz3g=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dmJKxl1GI0IOQ2iKoTeMxQLri8aAsdBwu0awdsC0BRT43x52+Sx6vrY4mOsE?=
 =?us-ascii?Q?iEIKVzsBAyPfoEIY2nWqVMOXZon3dr76wylDqLxmj9y+pqwDAQKZUAqkkXli?=
 =?us-ascii?Q?MOYvZgg4r7+D/unCxB7Ooy55G+cmQgqK9rVqj/bcWL/EVYV4a/LFY6WQz++K?=
 =?us-ascii?Q?DVCSsuDkYPGYmC6NVKyg1UZLHp4HWAwr+Bsl0Qn6nucaOinbInsGPEERnfW2?=
 =?us-ascii?Q?pvJ197eEs61emLlhLc3GiE3XxzqV/jyDmO7nLfnQ6E0aYNRSEYZTjNrdJxak?=
 =?us-ascii?Q?V/uOOoBkPEnL1e8Wq1kL6f635F5ngLto+0u//xVyPKvIdoJW43yWWp0+kbZY?=
 =?us-ascii?Q?w/pJbv06r/BnRF1bxhP8ioK8ZcW0Zk3AYL3NYT+5CGw8JJPpD77tRp3Hh2Sv?=
 =?us-ascii?Q?3QfFCMkJ8WHZCLwMDv2TQoAOzli3/0zNpKXW7Ekk/7WgagiURN+EsdA4qIdN?=
 =?us-ascii?Q?9hfMDF/LYoLBtdcbVR4OhtRGX0MrWeHYxcAPFcdjBwl0ZYb4yjbtUADwPeQZ?=
 =?us-ascii?Q?QQdc0CMM/IgZgZuC4eG57royfpG/bgMUJtJjQkP3H/eljcI5F9jm5nNFmiex?=
 =?us-ascii?Q?h1fIXUhuz+f1xcmA1Cuvfbhq9H9fGFF5sFYMVT8Kdn8z9q3nB1d5M/0UpFdw?=
 =?us-ascii?Q?HisJ4x8OxrxRmhy5Z+W3Tv7TbDHysLh+aNLVwZe8saTwVysYzCXzGJCBaktO?=
 =?us-ascii?Q?BGaPlyZshoYLQA8QBmwFOVAZSZeMkAkmVGo8MKD2ilNB+5MXgo+JA++chetu?=
 =?us-ascii?Q?6mQBlTOx/7Dg6tCidFJSn60BDou80RLQoOH5Cho0WZ4zQS6H/twDwQ5vgm9i?=
 =?us-ascii?Q?Uxj7tz5n2I/vdyDFG18J25pYEcCdigLazxo79L09bDpVgOgCAdJ7Mf6WF5M0?=
 =?us-ascii?Q?JmoLgicUmrNl/TMpZGnkpXuKMUXQ2toGp3TroTW2CVzFPuqmtr63CCZKVDVX?=
 =?us-ascii?Q?ua3bftE3dzB/hsgP8aBOAGLwAbTiMAPF1w4Q7uWKRP/GvxNPBjCn2Y2JE+Tk?=
 =?us-ascii?Q?W/q9q7ulDXcdTyWqhvuPhbHJSWdLtayUyt74CyF05G7lx6XO4Ns/lJKbfyL0?=
 =?us-ascii?Q?pXccme/hLnxtfHg6dWOcNUG++svruwHR3HAJgVCEjXs5AcuJakini4ADmrLn?=
 =?us-ascii?Q?P5uRogvT0ICUHLSoI2cnKdcTV0+xvIlJSMmE9HkrK2O+kiJClVccZOuQ2AvO?=
 =?us-ascii?Q?7NcSUX40VLbMmceNO0gC5DkcV4m9aAmJcLoAajtpQD0js87Afl6uDx5CsxnV?=
 =?us-ascii?Q?qC9rsgPhApWqRrE3VfGsVudkw0WZeDiagfwfX56aQD+bqZMLnkMtHFn3VroA?=
 =?us-ascii?Q?vi29tObiV5Wd5vpn8Z2lFFg6Zw7SsOxXrXWDFWtZrupujz07aSbABL30k3lg?=
 =?us-ascii?Q?Bov/DGgtolhqYoKZelC2ho92vYWk73glp8fTjo31aLwOBdBV5MV8BZilbgMF?=
 =?us-ascii?Q?Wwj+w0b6gLHozKuCgIB3NzdpnRWWmKgEKjBBDR4ldW/3WZpAEMiiTyITsTs0?=
 =?us-ascii?Q?wUQtxlp9QkUsd4Mx6jNyvmUKKm2kMyLsBeW6omUJogV08LCFuVhgvVj3MkyB?=
 =?us-ascii?Q?scMBOaO9hGzU88l+Cq72PneHDt1dKWDsmPODLsptZiRV2lyLVpQCnL3gm7u7?=
 =?us-ascii?Q?qA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f276aa4-7b72-4eac-4675-08dce9d86187
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Oct 2024 09:37:53.7826 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Csqj92J+efW8O/2BcdKG15XCfhAW46d30VXtmMUYVcvGA/HCikwpuJFqrVRgUuVQv9Uhwsi4TxLVRGR6MWjiGNHPYUi9XbziTIg5/zc19KkXQ2vx4yKtThe2z3oWDAkp
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7394
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728639481; x=1760175481;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ablus8rfm4TMyZsC85vrwCeO21WFWD1s+ryExB085i8=;
 b=CdTDuizIC7+WvzbNhFnArTaNwFE9s2iP6HP4X5t8NAnMU9HeLCmHRMO2
 DcRS1zjvq2Mk7pxbvpMKppXk/Da86vgVls5TU6Tod1uSFGPCabzU0OAMd
 /EBwbVtFdx8IwUwh3NJj1uVHVttkEDQD97c0TbeoCkWYZL+qQM/ea/MQc
 X4RdzeWtorrTuUhV5j+FPBFf3V91vbGnIzCuCBZWZTYR0hbMXI3Ws2fmX
 tRX+5oFEUHylb3e7fXSOSybEb8h6p5UtFtrRVw78FQRiH4biR+wrwjhvk
 ZAMgynTHwq5xnPOsg2ZkhuqLjinlsvehlYPXU7q18DlUO6In/OUAW6ebF
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CdTDuizI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/2] ice: refactor "last"
 segment of DDP pkg
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
Cc: "Nowlin, Dan" <dan.nowlin@intel.com>, "Greenwalt,
 Paul" <paul.greenwalt@intel.com>, "Kitszel, 
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Zaki,
 Ahmed" <ahmed.zaki@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of P=
rzemek Kitszel
> Sent: Thursday, October 3, 2024 5:41 AM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen=
@intel.com>
> Cc: Nowlin, Dan <dan.nowlin@intel.com>; Greenwalt, Paul <paul.greenwalt@i=
ntel.com>; netdev@vger.kernel.org; Zaki, Ahmed <ahmed.zaki@intel.com>; Kits=
zel, Przemyslaw <przemyslaw.kitszel@intel.com>; Michal Swiatkowski <michal.=
swiatkowski@linux.intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/2] ice: refactor "last" s=
egment of DDP pkg
>
> Add ice_ddp_send_hunk() that buffers "sent FW hunk" calls to AQ in order =
to mark the "last" one in more elegant way. Next commit will add even more =
complicated "sent FW" flow, so it's better to untangle a bit before.
>
> Note that metadata buffers were not skipped for NOT-@indicate_last segmen=
ts, this is fixed now.
>
> Minor:
>  + use ice_is_buffer_metadata() instead of open coding it in
>    ice_dwnld_cfg_bufs();
>  + ice_dwnld_cfg_bufs_no_lock() + dependencies were moved up a bit to hav=
e
>    better git-diff, as this function was rewritten (in terms of git-blame=
)
>
> CC: Paul Greenwalt <paul.greenwalt@intel.com>
> CC: Dan Nowlin <dan.nowlin@intel.com>
> CC: Ahmed Zaki <ahmed.zaki@intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
> git: --inter-hunk-context=3D6
>
> v2: fixed one kdoc warning
> ---
>  drivers/net/ethernet/intel/ice/ice_ddp.c | 280 ++++++++++++-----------
>  1 file changed, 145 insertions(+), 135 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)
