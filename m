Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C4661B22E48
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Aug 2025 18:52:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 821AB61AEC;
	Tue, 12 Aug 2025 16:52:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rxeaYgJ9OaKp; Tue, 12 Aug 2025 16:52:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8B4EB61483
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755017559;
	bh=MAISmp8cOEyjy6oiK5S18pWlCnV4GX86xac2ohnbWiM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SxkR/bQJhLFwLJSU9ABVy4u4EyH1M6FKCas0yslWus6R5GydIPUs9kNnti00SI6Yi
	 Lepv03mQFBqYyu2oAJRFqMXnK2D7pNqsl4IP3Ak2r0bX9x2fyd7LBFoPBOmB1jbRCz
	 x9DrHVEr4Gja4YY3ArI/ZeDSFRGiigGNXPIymXfMN9j8p+syRJSiPaL07nHhlRSQ3T
	 zQedJsfoF8NKb6s8jCf95c5ZWvCSAyzci//MwrBd3w+kCW4YLL1MT/gC+54K0emQIS
	 D72B+YvskWSizYWgILP1nTNdZVwZqPE/a73naOOsbB7D8FI4EHxWOJxlsU2Ra2Wj7o
	 yBqRyPtKWhNOg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8B4EB61483;
	Tue, 12 Aug 2025 16:52:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1C5A5183
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 16:52:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0DDAC41CF0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 16:52:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KgTGxyHvwEmF for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Aug 2025 16:52:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3AF80428C0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3AF80428C0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3AF80428C0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 16:52:36 +0000 (UTC)
X-CSE-ConnectionGUID: eg0PBBAXTIaUfwBET5QdtQ==
X-CSE-MsgGUID: PnGYnVfmSviT1x+YYoZO2g==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="57362584"
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="57362584"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 09:45:30 -0700
X-CSE-ConnectionGUID: XUshuG+iSJ6R42o1eHD39Q==
X-CSE-MsgGUID: Ezd9iBReQiGxIrY+Ip5Qbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="165426923"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 09:45:31 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 12 Aug 2025 09:45:30 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 12 Aug 2025 09:45:30 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.41)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 12 Aug 2025 09:45:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ed1BpIgvUHcwMqJRs55n78AiNnVyV5sd2ZwZv/ZAXVyK9HsjHFB40fgfYI+hD/mGrI/C69EKkLn3bvFrRG/+rpzBoe0fVJeGO+frKZZ9KKQ5Dnd9BelNY23t2uRnUg0PbHEsaVR2D5TFOXb2NkUkDm1FHq1gk6SZFnVlfcFA2lTd1m9Q23qOtEm6rlhhaxowC7WkgkfCmlkTRBJfrlahDJoRWFk/+OXQINPmunojN+VysdgowgdbxgmA9Q7Zc+TkYKoecSfqxFT6vPn+Y833m2N/TDGxJojOFBK+8qj16ZowTOc7aw5G185U87UaTOioFTP8CnC2hQfzFbHBzAymdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MAISmp8cOEyjy6oiK5S18pWlCnV4GX86xac2ohnbWiM=;
 b=TO8MkihPY2XRZaCLX0XCUygPkaJDTZI8voE9vj/7fnEUHwrSJUjQtegTPTt0150dFEtYc9vBdjcxVIUqyl/QGCS4FcLCJj/8BKCJeEHPi7XGq3dXF0N7xSdT6w5EzRu+AmEKpsR+4Sox5UGkwn+v/XhlURUE7zn+rzF4ot+RHC1WpuodsuctwQ7EAohTLsQXmzlmCkj56UqAcqj88I5LQ/Kbz7a6vcg+A/XwjT7g/qY9XQ9QBGLBJaMQjtThiu9lrxC+Zu24xFRNWmqeYQLSiLiqVMkwCbW/7UXLB9SgA0M9LKABceLFWUCtwL0mXC6o/FcXHJzki7CG10LnPBD/Hg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by CY8PR11MB7083.namprd11.prod.outlook.com (2603:10b6:930:51::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.22; Tue, 12 Aug
 2025 16:45:26 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%5]) with mapi id 15.20.9009.017; Tue, 12 Aug 2025
 16:45:26 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Hay, Joshua A" <joshua.a.hay@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Hay, Joshua A"
 <joshua.a.hay@intel.com>, Luigi Rizzo <lrizzo@google.com>, Brian Vazquez
 <brianvv@google.com>, "Chittim, Madhu" <madhu.chittim@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v3 2/6] idpf: improve when to
 set RE bit logic
Thread-Index: AQHb/ZLiYVmQ0MnV10KaWuRd6j+AHbRfUYPA
Date: Tue, 12 Aug 2025 16:45:26 +0000
Message-ID: <SJ1PR11MB62976B7481025CDC109B71D49B2BA@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20250725184223.4084821-1-joshua.a.hay@intel.com>
 <20250725184223.4084821-3-joshua.a.hay@intel.com>
In-Reply-To: <20250725184223.4084821-3-joshua.a.hay@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|CY8PR11MB7083:EE_
x-ms-office365-filtering-correlation-id: e972a6de-f38e-4099-173f-08ddd9bfa3b7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?IQ7JoXKDjFIr0dVjX4pA4IFSEQ4Cp6q5iuF3OgUckkv1EzmrPwYF0KQpCpMN?=
 =?us-ascii?Q?+wYzQzpW4aalm7sRojoSujmoQxGAe+u3YI8cj1eikVsuMekimHxaLNMpOb8P?=
 =?us-ascii?Q?yLX1sBh4XFStbwOB9FXXXB0NPJL4c42Ul2/iAq4ljXUTW19ytKhxZiN/VdDH?=
 =?us-ascii?Q?xiElRUmpLmjFVQMJCIdoIPi/zwQ1yjvo/ZpCTsTHOLEGqJBWh2wqQPOLmnnr?=
 =?us-ascii?Q?AVeTPUbitPdyhdrM+tgvUCwBXVDWIQqFkTvsfjMTMbQKsAHqx8Aorpu3F7P8?=
 =?us-ascii?Q?mejd1xG1rTYWV6v0DXqzyqa4SME+tYj94MllkfKBkP0oBwxxB/EIwY5N6Tkr?=
 =?us-ascii?Q?EySVqET5u/BPlKtcFndZk8SiCw06J6BFoJfscj67a9ICmviH9M6tPbAe2Q/f?=
 =?us-ascii?Q?/yNH/K+ZNky374x7TkCCBuDq+t2hySp9YUuZqJTme2QySa5sp67PKj2dTFHP?=
 =?us-ascii?Q?XdG+84ym361Z1bCkJbyHfs5H4FPW0861jMAq0qEgxV3IpMYDIqfm52of9jUu?=
 =?us-ascii?Q?ehXsKwNVdhwA9ur0DIR7WWsfExviS/dvDG39Qhar9Is0S3gKV/a+Ahzpt0SI?=
 =?us-ascii?Q?OVaFJdBjgqI1LzOeIrK5TUEShqzix41395n3hThnZ6lKuBawtiJdE4mBbDsP?=
 =?us-ascii?Q?KC6TQBHQePkYfeba9qdl1lBNP9u1HyBHxkH3LaPAjtu3M68b2P5gm+t+Kqat?=
 =?us-ascii?Q?B+cn6DB9hhfwGEEEFN2yUeNjd8GGaEqe8ReDm7w4eLDDbOplLlmtiVkykiO0?=
 =?us-ascii?Q?zgy1B8nsGXBFQAQ/KLIHO214YUXh0ZTxKPT3608IYIi3skihu06tZv4mmgJw?=
 =?us-ascii?Q?msyvl3oqS4bgOfW7v6RVVG8AO2lfahHNdb+R82eZiO/e4stR8MOZUcQ5UMty?=
 =?us-ascii?Q?DpqNAkWf/xnkcmBCTvkBBD9u/t1krinIFbx01pi80H0c7MWlKXhCAHmPxsSW?=
 =?us-ascii?Q?bx+tw0F3vBlqBOBSIJcMUJ2hyrVG0Jnz+blgTN+a4M+mOI2TzVLxjOJR9OT+?=
 =?us-ascii?Q?g8lNzzsnW0MlzryIY/b9hnsXVvcxHtt6hXNy1D41+jCfjq/nD7PVuFLTKGnJ?=
 =?us-ascii?Q?TxhXJRKK4paErsmfumzyZxfLQD60K8uLVbsAGH35yZGnOV3xBTQCvIqanpQ8?=
 =?us-ascii?Q?GfHsqKEPgZpHdjrZUpGbpBTjO3YwsE5XaGVdusu9z9WCXGhscqAcZs02NObA?=
 =?us-ascii?Q?WpD0yBjbSf5VcgIH4wTpDcYlpTl3e5vcv2V8X2amj5ffZNyyNFV7BKLJeqFd?=
 =?us-ascii?Q?qA/uo7DH+zbcqbgwtv1L4XLkO2+a0fBu4tnhSr7JPP6ZagkH8w3nUFHg8+z7?=
 =?us-ascii?Q?ax5sfNjB7PI6IewA2vM3bBqoqkM0oj7EBfdem9ee24z2kIQ7XsUj0rnW+4us?=
 =?us-ascii?Q?6aW5A1vjgo+THOmJtXpMeDGYjmFTPO13FEtthxGiom523PFElv0Df4xnfEL3?=
 =?us-ascii?Q?pfHXrL/oBOL0TZZCL0KF2ji0mGKHgvWX6ChpHwMpdATchUlPHxm63rWCaqqw?=
 =?us-ascii?Q?DQyKyulaDwa34KU=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?yrNNbqI4AuuLWDmbi1Ljuijm84/TqBk2zjG43Qnhgu7OjUC0HSELpBtS/4IR?=
 =?us-ascii?Q?evBkPTDK/lADoVxDxLyfIbjnkQJZ2pdl6diTs+TquI0qtB7VvQaK3NniqCYW?=
 =?us-ascii?Q?xlMcGd3zGBQhhLZ05D/tpN1hOpn87qWn6xSGDuhFaMOMXrZBrONq+YGqsO6O?=
 =?us-ascii?Q?OcL1AV9lZyTfZSE2QMoFmifxmkszVYSEAHjx/AidOVTg5lSxPWm8CQeo0kH4?=
 =?us-ascii?Q?q4FO+PvcYsT1u2YvUxYWZqJLz3oIqaQtFKVFq47bGPNa/rUiuST0Qjt/5nvg?=
 =?us-ascii?Q?jLk+K4bJ5vF1eJVBiNCxZpfk4fS7TpCsGd3+Xgf6BPUxnrOhNclHmcFdLlmT?=
 =?us-ascii?Q?C9CGKHqVMjBt2sIHyW1HENFXnWuDNQ/C7NjxWGqVZnbD6lf24xjJTMVEGpIH?=
 =?us-ascii?Q?RRYfsbl7g++A5ineND0NV8BqTcZoX2vtdGePUNrJGXxjLhF3fFsbVc9oFc8m?=
 =?us-ascii?Q?140FHhKRfxw6g11Ewdvw2eA+3IpS0RVWFVZ8fHhXOWgxarB2ZBUWBa1SSxlm?=
 =?us-ascii?Q?Ti/03EtB18VMSNdbDUMlNFNX4wgKuF8DvJaTnNheDe5ka68N1nR159uLxpaJ?=
 =?us-ascii?Q?zVk/OCqMVA0RFQ02EypcprKZJievlyGiRjhOHqTK9u2O1GPJNkzPuXwbpLS8?=
 =?us-ascii?Q?jnc00vcn0xQugiRTdSitCXekDYLSZ4vNDoyB5M3sby+Gh+/sNs7lvMUXs8gj?=
 =?us-ascii?Q?JSROe2hYmBETpLT6l4+9yTNLIN/dKeSnkQOY+WfBpQPCICi7D+ijoYqDL206?=
 =?us-ascii?Q?EJoxPf1Kc/H2UCBnZmQ3KjLXf3cuVz/AIH8JhRgxosCHmpHGWjmCMDPm2wPY?=
 =?us-ascii?Q?OlFUQV4VBzt8YCFTfiFknzg/6xLZ88TjpvICMReSPFQCGjv7JIAes965XomN?=
 =?us-ascii?Q?4ZfEI0Z8uWtYtQLgXp+Bagms8NnM/y8jmHFCyKFQdetK1Nj4R2v2JKmuIahP?=
 =?us-ascii?Q?K8z5sEm9ys4rAkPq3zqRgHmIHHfYGM81CltDZZ0aeTRJ4nxZlHzXLWv1Lb00?=
 =?us-ascii?Q?mZdSPpeEnig2vsYxXizkCoVqXRwh8Q8iPiYLqUnpZZ4vanzf4ozJJ1+IaW6U?=
 =?us-ascii?Q?pngrcqa0HSNSAoKpPAZnVGKwglt73TWvPKoA09ZUV+zDI0OPwkBJghBMyqAF?=
 =?us-ascii?Q?nrgDBPyLmCMCm6iXs2N7MZWbTDEhMmduH1XNVp8IFMfU0R0oJTaFZSbHXXLo?=
 =?us-ascii?Q?Dy6lH+IyPjybZkiX0SzzDjN7RgivZuW11Y7kUbJD8erI8aEUVPLzEFWXaIHU?=
 =?us-ascii?Q?ynb9K1lpEI4wTxh2JywdMGhsAwIoPYBWDl0O6H3JG3zFcUpmgBuUSHCwQHtd?=
 =?us-ascii?Q?WTayeXF1SHsiLDYfHTiwDDGO5vAKwJESiLT37B93RqJlqeJ6jsCWIB6RTMs5?=
 =?us-ascii?Q?mVMB8XA6CmzKt4tb8T/Wv3D1cEeeVWbHckQGhTM84ckEVHhGpSM7MIWBgTdk?=
 =?us-ascii?Q?jqwLZPbNyEXJx4j24WCmstYXL0DArQBA58iN7tRSB+SI5bIbPpAVJs7whtqR?=
 =?us-ascii?Q?DqzSalk7D0Pm4mLaopav4U8AZTTb6paiZ39PA6j6W0wW8xzscMe09zUL5vBG?=
 =?us-ascii?Q?DdmXfSs2K46dOJRRBiZvvyGtdQqq/F8WGobuZ67V?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e972a6de-f38e-4099-173f-08ddd9bfa3b7
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2025 16:45:26.4596 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /dxbrijxd6JPLnGpsbZ93x1T4R9xxUxSORPYgyZxNveuTNn3pYnQnnwHwmXo6PvpgK+M1cjJ7Dhzt8qMNIRnyQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7083
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755017556; x=1786553556;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9XE80JspDCtxcoV/Mu0hmoyuziSo3PPHw8rLusYU3UE=;
 b=A+XbCq0mi7Zqv38Lwra0cUwGIaamafqlMVAAXxES2wNU/lk+VDlaAf8K
 Q1NKYsYIe541pz8VucqGkcmoJdN8cqGjjf0exrF9mra8qoa7p9/fYTSe3
 /vBWhhhbpj+R53joo7XFfoAa5pECIqqOglrK31pqvCRaZuwHe47cHr79l
 ScbpxqlsLV6O2Jng7wrowZgwVk+Yo6+VEBB6mPbNKmfSbQ4v9SGVk1YqG
 v/Ql+95sRc0b2HMvKdu+2qc+eD1ZqLugVzzfD6CyexXnMj3Xa1kZY+UUf
 twVo7dSX6HNmAsJ1z849GsahkALojbYxrjMVp2VsB2JmyI5itbjReS3Mk
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=A+XbCq0m
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3 2/6] idpf: improve when to
 set RE bit logic
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
> Joshua Hay
> Sent: Friday, July 25, 2025 11:42 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Hay, Joshua A <joshua.a.hay@intel.com>; Luigi
> Rizzo <lrizzo@google.com>; Brian Vazquez <brianvv@google.com>; Chittim,
> Madhu <madhu.chittim@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v3 2/6] idpf: improve when to s=
et RE
> bit logic
>=20
> Track the gap between next_to_use and the last RE index. Set RE again if =
the
> gap is large enough to ensure RE bit is set frequently. This is critical =
before
> removing the stashing mechanisms because the opportunistic descriptor rin=
g
> cleaning from the out-of-order completions will go away. Previously the
> descriptors would be "cleaned" by both the descriptor (RE) completion and
> the out-of-order completions. Without the latter, we must ensure the RE b=
it is
> set more frequently. Otherwise, it's theoretically possible for the descr=
iptor
> ring next_to_clean to never advance.  The previous implementation was
> dependent on the start of a packet falling on a 64th index in the descrip=
tor
> ring, which is not guaranteed with large packets.
>=20
> Signed-off-by: Luigi Rizzo <lrizzo@google.com>
> Signed-off-by: Brian Vazquez <brianvv@google.com>
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> ---
> 2.39.2

Tested-by: Samuel Salin <Samuel.salin@intel.com>
