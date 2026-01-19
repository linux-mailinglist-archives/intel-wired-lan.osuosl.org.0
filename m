Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B7601D3AFFC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Jan 2026 17:07:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5D70383CCD;
	Mon, 19 Jan 2026 16:07:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d4NUA-wJHhxe; Mon, 19 Jan 2026 16:07:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C2EF983CCE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768838848;
	bh=Afc/VTIy+B3lprArNksz4bfFuKDrAL0GCccXKRiUBgE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=v2F4xVMJ8dpVCcjBPgD+oCVUM+xt1P8xpg9r5fISi8OCZ82a7mx+7cgQeTCIICvb4
	 uO3s2bOEm2EZup7rSO0SQ7jSHgmd3OeEW7RT4y8jFzhpaw5CpHu0eB/BkmUVWt4Qmk
	 nYtRYrxudZzJFsLPC4j3FQZiqraPGMARpilXlnG4gm9acri/GnAfOJSRxH1gdip8Yf
	 4/Y0bM/7DKDSeDyEWHWIG1VxalSrZBjoXO+L4CSRD3wpNV+QedSmY6FowUNZ5ql3cJ
	 gHVvcCgNSpcluv4zwtRdObWibg4o3WyuiO7I46QNyeSBPIPoHEBFK/XHFeX64Fzcbo
	 EFYpWGfUAMvoA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C2EF983CCE;
	Mon, 19 Jan 2026 16:07:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4BD2B2CE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jan 2026 16:07:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4643D83CC9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jan 2026 16:07:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id omkUJpkefTyM for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Jan 2026 16:07:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7DC2F83CC8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7DC2F83CC8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7DC2F83CC8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jan 2026 16:07:26 +0000 (UTC)
X-CSE-ConnectionGUID: C+tEZBpdTA27KuetPsmsMA==
X-CSE-MsgGUID: qRBYENk4Q2OlMDwChD2ZBw==
X-IronPort-AV: E=McAfee;i="6800,10657,11676"; a="73906533"
X-IronPort-AV: E=Sophos;i="6.21,238,1763452800"; d="scan'208";a="73906533"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2026 08:07:25 -0800
X-CSE-ConnectionGUID: /PjhQLY0S+S07Y9qcy/CSQ==
X-CSE-MsgGUID: AONBsiiDSo+0YYeaQ0dC/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,238,1763452800"; d="scan'208";a="205689386"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2026 08:07:26 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 19 Jan 2026 08:07:25 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 19 Jan 2026 08:07:25 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.41) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 19 Jan 2026 08:07:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qS5+xhkNyp1cd13LzT6fljO/uedf/VmWj7rZVfIDzfARLfYssNxfUrLF9eHfmID0dJX+wPcwaYYX3AJqcE82U8JYMMT+Arh5sRBZNUpgq5DBVk0OX1LJ0VwvaPHSxyVgSnCAlfCXh5WfyaUwU+ZhHByq32UOOIZDxiZfHi5rQMBSy92WT2o7JiuqTz1pcurevH5U5au1e0v+MUilNcj0G5aakGUfH2rOSiI4gnvQnD7I7TnUVvqBZjr4yb3Nz5MUZKxIMx+Wt6fzfNF75elM0BC3Nu/QRRlqHoxrI8QleKDv+K9cnXnSf7fbfM6S3nzNPlNIWLt9gf/3g3pMkJxazw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Afc/VTIy+B3lprArNksz4bfFuKDrAL0GCccXKRiUBgE=;
 b=LugP0q1UfwCr4sMZeHIRuK+qOZrPN49IR4Dp+3p+8ASxdkGk7MiWqhVRymRkyFeWqhWKgdkumb84IK92GikzTgLcDqegsb+GuBS9FbjoIJY+dkcwwHZoDY0GLoP5yf83tOA4r+n2FUgqmJ95J2qm1nrqPXD5VzOY6wscQyYYVs3N4v42MkKwjpDmuvTu8CsnbG7JkZWswoG0ak19rXGqEZewn/LFUsfl70lQslc24EfehLpacjtzjdq19qQMNJiVJkQLK47fYRQKLATfp9NCrs8AQ5D5yFgEnvR4niCotTphgpL1PEcvqcxzJHC0JhB8U6y0btA0rmvhYXYUYlNZ+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5983.namprd11.prod.outlook.com (2603:10b6:510:1e2::13)
 by SA1PR11MB8374.namprd11.prod.outlook.com (2603:10b6:806:385::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.12; Mon, 19 Jan
 2026 16:07:21 +0000
Received: from PH7PR11MB5983.namprd11.prod.outlook.com
 ([fe80::4d6a:a025:2e8b:b240]) by PH7PR11MB5983.namprd11.prod.outlook.com
 ([fe80::4d6a:a025:2e8b:b240%5]) with mapi id 15.20.9520.011; Mon, 19 Jan 2026
 16:07:21 +0000
From: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
To: Dan Carpenter <dan.carpenter@linaro.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "horms@kernel.org"
 <horms@kernel.org>, "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Thread-Topic: [PATCH iwl-next 1/2] ixgbe: e610: add missing endianness
 conversion
Thread-Index: AQHchuAgC2KTsqtLQEenvgVZOFWGCrVX5g6AgAHG/cA=
Date: Mon, 19 Jan 2026 16:07:21 +0000
Message-ID: <PH7PR11MB59835C040A04AEE704410E94F388A@PH7PR11MB5983.namprd11.prod.outlook.com>
References: <20260116122353.78235-1-piotr.kwapulinski@intel.com>
 <aWzYj1cfVuhHpGCO@stanley.mountain>
In-Reply-To: <aWzYj1cfVuhHpGCO@stanley.mountain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5983:EE_|SA1PR11MB8374:EE_
x-ms-office365-filtering-correlation-id: 1f5beb73-dafb-4301-bbea-08de5774d3ea
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?XjFr2K+ZvNuYc3Pzlh7jGSz9gjOR3OBOj8hHpiTo5KHqfJIUc7jOk4Fx7p3i?=
 =?us-ascii?Q?ZWQWGckpB08KAasyVDOupN29WpNpf+4Neqkrq3bWNZVFiz+65f5cBIGJh+Xj?=
 =?us-ascii?Q?peBP8NWYTtY45NjNP1QfNajdDt/vjUZ325+FI332biS5MTuEG+ud9pWYrfgZ?=
 =?us-ascii?Q?YGnFxsJz/AApEy/SYGq+k8U0l7BmdaRfzb0nJfGcl35kCvwyDxr++kEPiyDJ?=
 =?us-ascii?Q?pWWhwp6pt5ANpreX6PU8Rz8McGDePLF9+FFnv54kYo2Osrxz73VORZXg7Ep9?=
 =?us-ascii?Q?zfDZ4CulXVWovwaEn+yKKddxgXDshh+HsepzHJNTya8khqLUozjnpTVX95ai?=
 =?us-ascii?Q?+RdbPreJJU+v/sym4mc61t4FSOLTLl0GoYNKrr9/b1/Z4Y/e3iB7tDSMymU2?=
 =?us-ascii?Q?nZ0DDlYiLEWfVd/weK2ZKV6xvssHHshaSei61OOg9zMy7ULkwHd8hGpsWoEM?=
 =?us-ascii?Q?Jb4/lPTVQmHJnj6Q50429qhm45qC4i7O2tR9zK8EWuOmXkiKP7NZ2NJKYo9Z?=
 =?us-ascii?Q?IILlgRiilmX2ULi0r/4MmyMneUIKsWjw//gL9i0a5nDfoPL+XnmYaFVBfpoj?=
 =?us-ascii?Q?mfjjEiMoWSbst7k9i/cdLSgG/CqQH5hN/Rv03LidyCrP5PhbcZBiNNUzB0bc?=
 =?us-ascii?Q?6Sz2am8UNc03vxuaqyBeDidDwrt51zBL3LPVbcgIDOFmN0fpFdAFmXOHCa/f?=
 =?us-ascii?Q?L9pqCOO1tHczoM1Z1Y2X4Hvqtm8BTeQFN4xqX+tN1WXOHenW6AQlmif6MVYl?=
 =?us-ascii?Q?fYl7LI+YAullLTh/8t6Al9z0iMPbd3u9VKuVOAIWuumIS1T/YmSEIKA5D3XS?=
 =?us-ascii?Q?mtMy0ecY56ACXDB3qsVKG+lG6vvAv5PJsETnDJ4MKiKaytT8+rmow8r4CfMh?=
 =?us-ascii?Q?HbYIBlqKOsITc0Ets66HJL6aHRqOSuCTeQQ3b4oWXcZjanuxb/Dv/SWhEpv0?=
 =?us-ascii?Q?84xN3iZS6bvulGDjQgeMfq3o+pwqSLv7QFALymwB/BrRsyGoHoNUFL5fP2U1?=
 =?us-ascii?Q?hJv7i/ozFCN9qjNTZtZDBrAhkoWKmiUceuIskjTp/BKOqPCWGTYCP9j7XNi1?=
 =?us-ascii?Q?gNgXDmzBRwLpRFBt1VG5C6mZIO9h5/wWdCp26VH1SfKmj1kKLa+bC7aVNkD9?=
 =?us-ascii?Q?gJO8a8/itQbYb7qpeCj+jSm1pTap/SNfxYbAo8xYR8qRtAe/GQLYHsY9kWLp?=
 =?us-ascii?Q?r3Ao00l56eIL5HFmddTgasZVBZG1p0xVIL/m5fCEQKwwQfROdoCw7mz3bM+L?=
 =?us-ascii?Q?SkHwS6Cn6z/B/LvkOYzynTc/oMNSpB3r6DgxOSkhK8b1utXDMSxD0GPAwZTn?=
 =?us-ascii?Q?dFmzgAB2G1hm21lbZSCDsEU5JqkhswV43//QJw31j4yJlXWEO3TiEkTqnUzO?=
 =?us-ascii?Q?F53EAF0TjZow7zTj4GvW84g6mCA+1Wyb8DVN85oBs6JyYKUV4yUVtotL7Gd/?=
 =?us-ascii?Q?2QCyc1M/lKWi3e2MhxFOmtgPHbuevklyg1sp6g8P1gPFHIcilq+lORTJ/Txw?=
 =?us-ascii?Q?/2Mx0J6x19hWYPy0G5jqa/UPqkIc7xVFamdRkHXZu1QGcK9SUX++/qKmQH2N?=
 =?us-ascii?Q?nIohdNwUnQfL1FXxXWK9+HkXPYN9cVeEEwHZQZm2QwN346b9FWC0/Bh51Mvp?=
 =?us-ascii?Q?K9sGfypMyG+eSMpnpQBDLps=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5983.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8zY347DY4j3XVFxxSuR/gSZ8qTYh7BmTsT5ZyOG+HxXo3B3SqGjGLqo5wJtp?=
 =?us-ascii?Q?kf5Rw5wsu5VHpZrDvaGJMCQvjrSf3JzNmvj+h/qfJ6VoBMsP8H75Dp1JhLnQ?=
 =?us-ascii?Q?UfoSnig7TpaVwl9j9Y3MbCfesw0w+HQHYLX1+TWqN34wYi/hi0w9DRr8hbef?=
 =?us-ascii?Q?5op0onLqf9MoaAlRyL3pMv/3biBhMZICfqSBFtEORvEtnNPn9wyBJ646V5Og?=
 =?us-ascii?Q?85rzRwz03CdZ9Iyw/XYB4zxvhEVmF2l4hsAzgA55OawwBRPIp3xriBc6Y05M?=
 =?us-ascii?Q?xCjCQbgu1pETZAy2cEWzF9AvBoPl2yo30xgARYXBqp9GpljDp4fcOoASnF5Q?=
 =?us-ascii?Q?30VBhgIwar84nZopbShtvixIptYf3lelcHy2pJZeGGSs2MqW5FkJpTeX/5Hg?=
 =?us-ascii?Q?rNjGf8SUvaNbXb42olgAK0UvoVHt/X4uf2B2QQB5dVhH86hC8gJcW+bqtXZB?=
 =?us-ascii?Q?rkxGIrVM1XiWyxi3nPSoalF2cpWRNN4el3cyndtLaKv7yt1gxiEvK1WI0tlr?=
 =?us-ascii?Q?x5WQuNHcAeNjk1DtfCxErvX2xvS/0iCWTtBeAhGlOZiEw5hruelrMAaOwVnv?=
 =?us-ascii?Q?tFPnAs4cT8dcOWXq4Lo3thtwbzNYLGrSiLH0w7R54Ss7UsjGWNDldLzf6nbt?=
 =?us-ascii?Q?HNQohWqhQTF38eZ/nSYZ/XPRvOSZlRjh51FjzrUhQ1uFjAgBeljDeJPFproH?=
 =?us-ascii?Q?ugMewaoljENmtNN5ggFr7kzXq4wfUxYp1t1IMwnXPfKBFJBxAiTMlDIR8Cok?=
 =?us-ascii?Q?Q1sA2faG08HCHqtfW6N4TT6KUGdxEk9m+LyhpRE0c8tFx14QKqk3Cm05MnhI?=
 =?us-ascii?Q?bzo6yJ7+JsMGp3zPK9vc3VLLPO1rgG0DzB2dHi3u9W1KcoXMVIVV4ycsWX4S?=
 =?us-ascii?Q?OiKy+CYpaHw4u6pmp6F62pmMPhj/O8v2ZwFLllhSd7zF8AgTm0e4HSWNpavT?=
 =?us-ascii?Q?zmTy1Zb3mnk4AmPeA6awKfJsqdMMr1CcrUuBvknse3FOmyLSBNPlVfk542Ck?=
 =?us-ascii?Q?/MkwV73kzn9aKZKGbPrhoVP0diAp2oWl4Ui3Mv3Oxh1Mj1meFIn6xWaNQCkC?=
 =?us-ascii?Q?kvxWFarPKfOoH8dGZkQyGA/MQ23pNCPx4KkmkSN4N8bjOkKQyN2gMxA/AvmL?=
 =?us-ascii?Q?dy8+hA4FTjzDs+M3JgQiJOZcKFqHdsl0KHxIuzjEHJ5uoTCYaAN078+sjtOF?=
 =?us-ascii?Q?vpFS6VyclDjF6bPmeaKIQO/Hv2Jt+2dBulU+C+ps7phOfHcr7SYaKx59xEQw?=
 =?us-ascii?Q?UmcWpqJXVjQ11bfLTMQ3UZMjGXJY+czgz7QB9duIfQkzhNoz9+MJAYdPcogD?=
 =?us-ascii?Q?R1t9dZfdHyYT+YoJ3Q6TP3lx9kxEe8cLmPwM7fRyUwbScUii5orRTNh0QffB?=
 =?us-ascii?Q?7zsKkmnRYwhUtgV0pLf9yTV8yOQH0u2GoRHpror4JrMStQcJtom6c0u/MfD1?=
 =?us-ascii?Q?MTfjYpQLXxzgtapqmOBTQzB5I6vTB3Wjdh5qIbVNbT0UmBSZMfZhvzWEkHF9?=
 =?us-ascii?Q?UWjT0GWM3/FXBDpO+TVWmSROcD+JigHrP1oUbk8YkYjpgz64bbAhtDN2ZenA?=
 =?us-ascii?Q?i4p7uKkLVtOk1cozIUGwmbXPLlvu95nWpeYRcqaJCWrDtK/QHPIpUmEY5b70?=
 =?us-ascii?Q?XwgP4fhM48iVVVoW2QHpMAUrGa8+9HH/MTozgjP5bSorCJA9Boq58/a92w9/?=
 =?us-ascii?Q?V0fcbhXTAGBwXnpket6KVIQB8Q+7QFWdLlC7G1bFJdsuUpSqn1u2+vnnPPjy?=
 =?us-ascii?Q?Xcw/9x8SxQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5983.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f5beb73-dafb-4301-bbea-08de5774d3ea
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jan 2026 16:07:21.6121 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: h3eD1UV9cECp19u5uyMCw4mmQLR3F1GB/kGhw+cv3LHdawo1AlokDG/do33Lw+IUuYS3tJKRr4BgBRzqMXyMLbJUQEsbyCn6OYCsb3/1vHM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8374
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768838846; x=1800374846;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2baAaHZ3qGaYnwQ2Q7D1Ubz0sU7r3vwlOXcn5xlZNyY=;
 b=Ny/5PGr/FvHEpeo3YtFSgNP7lRsP0HtDR6zcQYb/63zgcOvwRMrVBcfE
 Rr7FPdNUDeKm5PZ8UFeVvECvZC9SVtn8rCVSOqJWKwK1cfABdW5RtZOva
 6I+IbN2ayT31Wz2PUgqBT591BUPLGYNHsl4RH5C+7pHl2Q9pcebIxkutf
 xdIq6v8tO/iPUYiQ6+jH/qLV3btgS0P+Dvg8JP8g7RXhIwjqvlq+ZSISu
 PTN0iKve1mxfjEFG/KpxJe+LfgrOPsKBdDgYdvUDldlC9edkVd+ecOgNw
 fcyezMGdfMIgKgn8S7OVDJR7EsyDjGGzvk3OBWgVLLD/9t0TycFA9gqIc
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Ny/5PGr/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/2] ixgbe: e610: add missing
 endianness conversion
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

>-----Original Message-----
>From: Dan Carpenter <dan.carpenter@linaro.org>=20
>Sent: Sunday, January 18, 2026 1:57 PM
>To: Kwapulinski, Piotr <piotr.kwapulinski@intel.com>
>Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; horms@kernel=
.org; Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
>Subject: Re: [PATCH iwl-next 1/2] ixgbe: e610: add missing endianness conv=
ersion
>
>On Fri, Jan 16, 2026 at 01:23:53PM +0100, Piotr Kwapulinski wrote:
>> Fix a possible ACI issue on big-endian platforms.
>>=20
>> Fixes: 46761fd52a88 ("ixgbe: Add support for E610 FW Admin Command=20
>> Interface")
>> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
>> ---
>
>Intel has a lot of code which assume that it will only run on little endia=
n systems...  Which is probably a fair assumption, honestly.
>For example:
>drivers/platform/x86/intel/uncore-frequency/uncore-frequency-common.c:90 s=
tore_attr() warn: passing casted pointer '&input' to 'kstrtobool()' 32 vs 1=
.
>drivers/net/ethernet/intel/i40e/i40e_common.c:4345 i40e_led_get_reg() warn=
: passing casted pointer 'reg_val' to 'i40e_read_phy_register_clause45()' 3=
2 vs 16.
>I seem them on occasion when I'm reviewing static checker warnings but I i=
gnore them because Intel chips are little endian.
>
>I don't have a problem with fixing Sparse endianness warnings, but the com=
mit message should really say that it doesn't affect real life.
Will update. Thank you.
Piotr
[...]
