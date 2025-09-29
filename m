Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B9221BA8173
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Sep 2025 08:19:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8781440668;
	Mon, 29 Sep 2025 06:19:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tJq4-52DKUZj; Mon, 29 Sep 2025 06:19:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CBFA4408C2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759126763;
	bh=zwSMD604hJ9cI7tZXjoMATgIb66h2xLdXVtdk+6+C+M=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7mFP3HFad8ZMxkE8onA7ox+/IX2+bD0D2yuF1tEjvFwj3HPeNMXGWB1f2eFptMIc3
	 rNyzdGNHL27Vh21WkYto/fyTRaejPkCCEiKD1EFkGpi0ClcU6ueLCo1eGRJuh4Mr1y
	 BhuHigQwRcJvlUDnjApp8NHWRY2IBihjyHvfKHny9XvzvijF1mMMuG4qFHCSs+To8Q
	 P9WYnAtZMrGRPHDZjwp20lIVlG51G7vUQFND5Gcs2eVRi8AF8XS6lvocZWJwPGNA6X
	 AdWNR+ZUPnW9FBMWtuSbZvoizknBC6AApjZThQ+0JZ8aTdQDyOu/YI5eeTxHmMxz16
	 jMwtgaEpcvQwQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CBFA4408C2;
	Mon, 29 Sep 2025 06:19:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 40E37194
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Sep 2025 06:19:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2A74A4065C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Sep 2025 06:19:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2Xwu-kLXuK3K for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Sep 2025 06:19:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A6BAB4063E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A6BAB4063E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A6BAB4063E
 for <intel-wired-lan@osuosl.org>; Mon, 29 Sep 2025 06:19:20 +0000 (UTC)
X-CSE-ConnectionGUID: nHyd1yDFTD+ZIC1zI5zg4A==
X-CSE-MsgGUID: C0GqlDebT+Wl7/CXL7+lIA==
X-IronPort-AV: E=McAfee;i="6800,10657,11567"; a="72791709"
X-IronPort-AV: E=Sophos;i="6.18,301,1751266800"; d="scan'208";a="72791709"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2025 23:19:20 -0700
X-CSE-ConnectionGUID: r2NljrA4RkKW67THMyUXaw==
X-CSE-MsgGUID: jaDtOFSgT12RR0bg1W8iXQ==
X-ExtLoop1: 1
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2025 23:19:19 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Sun, 28 Sep 2025 23:19:18 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Sun, 28 Sep 2025 23:19:18 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.4) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Sun, 28 Sep 2025 23:19:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bZS81hmC5xokRoIQoOGEq/7V3kiHRwwfvgpuGBIE5TBcFsd6eKFiznmY7Eoptq/yURys8TW5ZXhemsFrFX69kBSF6ohsMOrppc4K9BPI/QzkWxgbDZpUdOaZU5kEB9upwJarQZmtrZhfh9hoNdiUBzw7CDSDYy2NYoHGJKGsZ8nEjlTIXYyawOx95g92gUrDhDKRKfbrVtTqWUmaNAtUlRsu3ZRNFZip7sTfcgdKZwdNMstsoXhZv/k/W+W4Iif/g9NXBEQVISPJX23M8NJwLCT7b39xdADaLPT2jhs5u94Y4R45sHlFrTweuUKlPxBapJBeyfc4Gy+KZnyDiz9BwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zwSMD604hJ9cI7tZXjoMATgIb66h2xLdXVtdk+6+C+M=;
 b=Ex4FViYBNYCDTzCQ9qOkdfOApynOlQsI0/I28bG3zj0aZK6z4xF3hVCez9I+W7YvUd+E1NAV4MMECyK4bjq+l0TfiwQEF+Y8rMYf6Zp5nt2dxopZWAPMEzl/58RJwBYS/05mPc6ZprGJ5YiykLyFgGbeHSL/DheVYMP9K7fHC89pGps6b7G7fJEIQIb3fufzMB+zNMs7f/JGNZn2Sh9TQXiP77qe6ND8UgX6zJ0GpxiI+9zTKU/uJqhwR8sDkCtAwd97ab4h3P8+AB9qde0m+tBESg7RcSSdRkk0+xYEFQeKIj6N+1Sp3n5XO3yvxVCp3s7G1u8iatWDQHmRCMAYPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SJ5PPF4990C6B9D.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::826) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.14; Mon, 29 Sep
 2025 06:19:15 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9137.018; Mon, 29 Sep 2025
 06:19:15 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
CC: "timo.teras@iki.fi" <timo.teras@iki.fi>, "marmarek@invisiblethingslab.com"
 <marmarek@invisiblethingslab.com>, "Lifshits, Vitaly"
 <vitaly.lifshits@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 1/1] e1000e: Introduce
 private flag to disable K1
Thread-Index: AQHcME8QBh8KpMMNSE+oHhgFNkW0MrSpsSPw
Date: Mon, 29 Sep 2025 06:19:15 +0000
Message-ID: <IA3PR11MB8986DF8DF28733FFF89B2896E51BA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250928080040.6309-1-vitaly.lifshits@intel.com>
In-Reply-To: <20250928080040.6309-1-vitaly.lifshits@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SJ5PPF4990C6B9D:EE_
x-ms-office365-filtering-correlation-id: d6c80f5a-d2de-4c72-3166-08ddff201d70
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700021|13003099007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?8eFJJHCsNTZnU8Hvvxb5//WoQSajtorZazylpcCnKpwAZXXPgmAhrG7dnkyj?=
 =?us-ascii?Q?8zrSaZmEXeMaSV4uO63VMjtV/qgqjGDaVyHVHGEi8FvRG6Dx0BR2P8AP8wJ0?=
 =?us-ascii?Q?WB8xg0FMc2GPNDngbsF5HwMFonrIePbm1/qXTBHumJgJqortzI24HCWVHpII?=
 =?us-ascii?Q?Mn6O7GuxO5lYkI7oVFGbEEU+/VF9eQyOwMRoWpe6/kVbo44aolcc4q/stD/m?=
 =?us-ascii?Q?A6xSZAQEvySTkLi60jHLaFioUhHvW2In9N/VaeuUSFjl3TfuESmJE4fKUzY9?=
 =?us-ascii?Q?+Moqz0uFz7sJKCpiSw7NHk0l0zzgoQOuYujIg30Qbgiwuw+rUm/lwMA6GNQx?=
 =?us-ascii?Q?LxqNyXTdTcGtg3XPslli8URiO9ZssB0YRuz82fWaHT+NPo/poG+ixS6PEgqm?=
 =?us-ascii?Q?YuFaIgFvttXy/FQPs0hO2k58XC98z2h26GMITG574i6memMGJitrAR29Pu7s?=
 =?us-ascii?Q?h/shOqRxpBl9NuCXc/ZvOTHI1RmjHTwuA4zSKLf3upsaPcQjMLu4cE6vMDt2?=
 =?us-ascii?Q?SGfsH++HA4Cutuw6mPxWh6lMQnqDeQv2dzxjQO5O7pyjho4cejeWDMyMSrOF?=
 =?us-ascii?Q?q5kU+by9beDYLDt38ZnsiPa1GEpftToyO6cYXBp0uk0jB7nKKPEjmoNn5R14?=
 =?us-ascii?Q?6Jiu+kyyBfJusnJxyLsL6rUQTv1Y5nYGMFKjvQAryWkakvf6qBSXpYdAsnY1?=
 =?us-ascii?Q?glDhyQdXqvQohz8zdEXppczTJGwRajJ+tAOQMAKtRG6IJSyAmh+4SKx3FSdX?=
 =?us-ascii?Q?d3uvkRMBFuWRlMrjK0gF0aCInvDvMXP6Ka6y2ROjOj+4bqM/L8lHgIiMWkuK?=
 =?us-ascii?Q?kE+26XlgK1JYClErZr4BueaFdY0eyaTsnxpg3CDCL59yeOCgHbCDKFPB2/U0?=
 =?us-ascii?Q?o0hl/Jjd2U119qYuy7MkPzgG2IpOmaSHCuha6rWMAHR81SB2EkPviat3um9H?=
 =?us-ascii?Q?WHcEtmkCY5cKgIb8JxZsUxPnJ6oOY6neSmwxBJtE2CLn9aWejhuQeCFLModd?=
 =?us-ascii?Q?fgBhAV11b+LW75UajiSq9So/EFfu1i5GGQBWmWvua4ipISDMooPCkZa3OwkE?=
 =?us-ascii?Q?eJsUr5L/edZc0M23EEbKvXgV9yY52yk332PpkoBV0IOqkAsaLV2hD/kqy+KP?=
 =?us-ascii?Q?i+2eU/2INr0LgX8UPaF4QjdgdKvCkya1Z/ydCWShYucW/fsA/EA3SThJrQjl?=
 =?us-ascii?Q?ieuE/JZES9KZIDbIVf9abwRrT/VlS1hxllM7URJKsMk2HKt4L+0z2pXkS2Ul?=
 =?us-ascii?Q?wbR4Sb0rRexl1a7BxpGLpT1S4DToCSG6CmQmg5hCflNebsNzq95GMAh9ZYKF?=
 =?us-ascii?Q?+SAR/JBUbtQfWoCezLADnTMowPwsBCS4jcASejGV5DU/JY4zBhibSoKg17zn?=
 =?us-ascii?Q?BDiid7+7WYjnx/wMYWG7jynaJ+/sqoH5BELXh3275uZJ+PTyFdxHHkPb4DK4?=
 =?us-ascii?Q?dkV1mX40kYy+IlPZZ4LSVKrLYiIoOadI2qnNlWWo3KkKqyf1vjOKjw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700021)(13003099007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?V46A6KotBK2g9SNIUqM7eGUcqUHdoYYaTdmBs65GKzD6dX7fLyQf73oEvwju?=
 =?us-ascii?Q?0W/C5n5ndboxr2O9afRqOH9o3nJx8axEUHKkayfkx3lrZR3ewNXhx2mDmYsY?=
 =?us-ascii?Q?yc2JR0H3uFY2jBYn2idH97vxpvvoQSr4KYBRwl6KXuJ918ZGDWb8YH4vmRia?=
 =?us-ascii?Q?ztXbaRbsGCb2smEy9XCkws9TnA2m/7pYmP1srcD1VqpUHO4wNJ39HRpZecct?=
 =?us-ascii?Q?29kIRO6OTM5ko0aoDbraR8btjmmPO7meX3pb3f0bXQf48LeQrSiLVIyjn6EJ?=
 =?us-ascii?Q?vyib/QHncAPipSPyyZHyIgGP+TFFrM4pNHqqxmFSoaBA8l4md6WivTU4nex8?=
 =?us-ascii?Q?dzdZigwQPciD2KbiQgTXLBqWTvlv5bObPcHn8YO5AIt4pdWU9PDqO+AnacUV?=
 =?us-ascii?Q?afKRgmGgnGofPbQ8Hq9rmj2AenHnBuk22cOOyUHMpvEPval7+cNuDjipDtVt?=
 =?us-ascii?Q?m9YD+isj7pPkTGsUq6RlFpDdJQL2pueBUk7kxLwK/xnmRoyMIBzPnEdLnKgW?=
 =?us-ascii?Q?Gc+YAqhTC/fY2EtxCPMCBNJCKV3p1Snevgr/I4u18GMDqQvus9Zfda1dhUCi?=
 =?us-ascii?Q?Zn1tyaqYnJGeCmVpoiFrOoB7WJr5CPRuDSHAIA/w+r7CmNj5ljrZe6wLg8ht?=
 =?us-ascii?Q?+7M6kXjhs6NVMl56HrORNpI+1t9wXPdgVae6awpPFXf9oIoFiYOtsirtDhcc?=
 =?us-ascii?Q?QWUdPT6tayMCK6dBMSuPojLwdps9aNH1YXkhObSHGzy71qrjgpObW5A3ACr+?=
 =?us-ascii?Q?8QyY7E00gP2dFgFxXk/OPiIzNYl59NEtsOaPooaHV0ZRAcR2Ym01sqaxMFy0?=
 =?us-ascii?Q?ee1U4k8SgW8eiW/OGmXRuE8KeIgNbTwpuzUor/WhuqdEuIcPHegsJLS7WpY+?=
 =?us-ascii?Q?rFmwSPk8zO5NTHT3reaUPHRnLPZcYU6Ys76t+2+0nqEY8Y0pOQcP6SzEQUbv?=
 =?us-ascii?Q?20knqeUmyp2RWVN4FSHrPt0C19R7YJRXiLBnnEtYyq/nirYXvqPUdmME7YJi?=
 =?us-ascii?Q?pAXVzAVqVGjYu4QQ5z7FQmNCrkTlUSIF6DCvqeT035iitpaKEV6m+xveFVMB?=
 =?us-ascii?Q?RVOzpLURsxsNf4EFIogQ779b3+fFYHq1+nNuRpRNZszcJV2zTyRlQhfftJUP?=
 =?us-ascii?Q?FUn7zrf1A4LebskdGoSE8AHaLppoeLxlXkRVHZjMcJSOTfX7qXP97tLkcfow?=
 =?us-ascii?Q?dFu7RNe0QVe1hBlZ+4NqKCImBhSquSUo2KVJcZzQFFzzq+dwu+HDRF4DlvfY?=
 =?us-ascii?Q?IlqbJw1GNwhHLs4yomuGW1HDwBQDllHUjEqU8KizseGTJuMEwoxCyjxiD5ZX?=
 =?us-ascii?Q?6ou/o0bpwUjV2lVOCblJHpb3FS8sJ0JhnnatN+Uh+0y8d0ligktijUlynV3M?=
 =?us-ascii?Q?TOxYKkje/nu3jNizwI1JWpiEfEAJthoqGTDMf+2PVvB0hIHZAp3ExDQexwEs?=
 =?us-ascii?Q?fyQQHpsdre50T3mY1mi7zuPk8Z7lo0MqcKGbL4rZ0BChl2g5reIqTBnODTAq?=
 =?us-ascii?Q?J+16F2E8be2gY2T3SN/AryHvIdySimYRp3z5tpfzGDcCACwIqDXQTutjjVqi?=
 =?us-ascii?Q?f2by8FwN/WpIpik5NnAcMhffPJLB8v6qFer1sp1lhh3NIR3XTp7um7p3NSkv?=
 =?us-ascii?Q?4w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d6c80f5a-d2de-4c72-3166-08ddff201d70
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Sep 2025 06:19:15.3806 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XI1pnvqqqFIlOp8ShYo7WOzTypvGe3oQw/StkjaLxEr5vdu94r79cIPIf77WYWJup1pAWHUuQAe2q+TAAA5hhzIjzHPopcaWQVc5CJCeteI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF4990C6B9D
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759126761; x=1790662761;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zwSMD604hJ9cI7tZXjoMATgIb66h2xLdXVtdk+6+C+M=;
 b=EMOQ0twbrvInLQkV0f1oBTuYy9lTj9aZtW7qBTIkrsGSLceOwt59WnVc
 a5YNrt15QjFxvWmCtL/1SdsDZjwZpNOJGWh+WZmC+fv6lSTP1HeYc5UyP
 xOLIquuF8pP1C6DOGlmdEWfOjvBSy4BuA5DojMqpX86JdZWGiCAd3VHqt
 qJrOa2hRmqmtooXuHHEZM7lzsACiE7JYg4aaTGg35nu+6X9aCiAKP0PtO
 6m2EtL39Pjs2V1tNOeN5zPQs6rAOIjOUoOYX54PymZUnsNeJiJ5UAL1aT
 6GjOtVc1gcQDsy8kMnRvQLbOzZiFi1xld47JeIEz/cyOnfJCcniC/VPDb
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EMOQ0twb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 1/1] e1000e: Introduce
 private flag to disable K1
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
> Of Vitaly Lifshits
> Sent: Sunday, September 28, 2025 10:01 AM
> To: intel-wired-lan@osuosl.org
> Cc: timo.teras@iki.fi; marmarek@invisiblethingslab.com; Lifshits,
> Vitaly <vitaly.lifshits@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v4 1/1] e1000e: Introduce
> private flag to disable K1
>=20
> The K1 state reduces power consumption on ICH family network
> controllers during idle periods, similarly to L1 state on PCI Express
> NICs. Therefore, it is recommended and enabled by default.
> However, on some systems it has been observed to have adverse side
> effects, such as packet loss. It has been established through debug
> that the problem may be due to firmware misconfiguration of specific
> systems, interoperability with certain link partners, or marginal
> electrical conditions of specific units.
>=20
> These problems typically cannot be fixed in the field, and generic
> workarounds to resolve the side effects on all systems, while keeping
> K1 enabled, were found infeasible.
> Therefore, add the option for users to globally disable K1 idle state
> on the adapter.
>=20
> Additionally, disable K1 by default for MTL and later platforms, due
> to issues reported with the current configuration.
>=20
> Link: https://lore.kernel.org/intel-wired-
> lan/CAMqyJG3LVqfgqMcTxeaPur_Jq0oQH7GgdxRuVtRX_6TTH2mX5Q@mail.gmail.com
> /
> Link: https://lore.kernel.org/intel-wired-
> lan/20250626153544.1853d106@onyx.my.domain/
> Link: https://lore.kernel.org/intel-wired-lan/Z_z9EjcKtwHCQcZR@mail-
> itl/
> Link: https://github.com/QubesOS/qubes-issues/issues/9896
> Link: https://bugs.launchpad.net/ubuntu/+source/linux/+bug/2115393
>=20
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> ---
> v4: Revert changing the reconfiguring function from static
> v3: Removed disabling K1 in watchdog_task and change the private flag
> setting
> v2: Add a missing semaphore acquiring and disable K1 on MTL by default
> ---

...
=20
> --
> 2.34.1
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
