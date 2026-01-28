Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EMIMEsxLemkp5AEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 18:47:56 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C2633A7275
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 18:47:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 680E082849;
	Wed, 28 Jan 2026 17:47:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sSin-brlM9bU; Wed, 28 Jan 2026 17:47:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5827D82695
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769622473;
	bh=yS2HoAI+FTkMGOOKxCGYeTAq1DtBppWdmgVJQuloEyE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LODYC7Ey76HzTfxYLbu23SbeuwyW2BWXI3kZUkLYfmBAMrBaSfF0LzVuhTAcNphyd
	 IHH0kVEY7FYPisgxkUyRjb+hvc4OKXVGmlvnLd4rTf05CXBfhyLSJhcnpJBKyTHVin
	 tAy3Fh1lEUNz9wq5HzkHikqM6OITYwlF8kM3YaVqM5dPKZ+JU+GtKnjCGuTgCA212y
	 fYzPg3UCo1+TVYqjm7tP4mXtBKVHj/HttBGXTXxUQPAPOWuI2PJWHeHPT78zEcwib/
	 hnQQbavIESAObu6+FOjREFH1ovkPTufI7Dn+l6zlDe08TNF4VsVB89VjLB1X6Y+ZhE
	 OFiVItsQ9B6XA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5827D82695;
	Wed, 28 Jan 2026 17:47:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 4828F1AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:47:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 38AE2607B8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:47:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tYJU5W6c__b2 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jan 2026 17:47:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2F53F60788
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2F53F60788
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2F53F60788
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:47:49 +0000 (UTC)
X-CSE-ConnectionGUID: CvuvjaNpSGmcMUsuY4/+rA==
X-CSE-MsgGUID: NF1Jj5IWRB6iY/DlpI9cTg==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="88263006"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="88263006"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 09:47:49 -0800
X-CSE-ConnectionGUID: r0tISyPgRSGrkBdAtYUNDg==
X-CSE-MsgGUID: dM9YEggwRJW3oRjEUuHsgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="208702838"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 09:47:48 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 09:47:47 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 28 Jan 2026 09:47:47 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.29)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 09:47:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pOA0M+5xbJInBc35m+uDGrdNYCs9OAFHSWTwac8/BSYfr7Jv88P7Uq+9goONt1hps0JZ4XJYnnj4hwpaovyMFAyYktxtocKg9guI0KyGBtB07fecoo9LXQ48jLcPOx1TQkG4hPeZHPONJM2xAnjkUyLxNPDRToq9Q2Y2vGPr+e5zV1DYsTkF68k4ksIrcxwpLJWs6Sf1qI5i4SAA9D7gKu6FEuuMHv76fo6IUbola31+YSF8R80sWwrwsiOxCdhCwnt5JIvFfTygUjVMQ3YjDmwf0OSHzygtIkO0SXc2HFRpcAvms+A1ygvi/zM12deMXRpu8SSOnR8tsPxCVOggSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yS2HoAI+FTkMGOOKxCGYeTAq1DtBppWdmgVJQuloEyE=;
 b=T4rk6Dp3JZUnVHxs7W4FM4zhK/78bZjjAgBn6UuuHsSanY0HGVTkuWE9CjQ45kzcoxbAQPqbMUjDLuZDgwyYKrUTnk3SVCR9cZijRBJuJGlTBPzgBXESxTufWmd42LPe+iW44hKj/rZBo/U4SDcOOdvNN6WIq+/YmihwYa/ko7YDwkZbb3cA1pnozReE37XI2e/Siejb6Hc2NSRSASZCb9QxJF/H+OSe1mMqqdwLeCbVfVLABUC1EI0fVix6aYk7frfnjQCv+e5C4yWFzqpwkZ0gLIlTq98uOyt5+vZ3SpmNMR0G/KinxOwRUVDuMhkwFoZ9LUdS0rvo6g4gsvlyRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA1PR11MB6991.namprd11.prod.outlook.com (2603:10b6:806:2b8::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.7; Wed, 28 Jan
 2026 17:47:44 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9542.010; Wed, 28 Jan 2026
 17:47:44 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Jonathan Corbet
 <corbet@lwn.net>, Linux Doc Mailing List <linux-doc@vger.kernel.org>
CC: "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Peter Zijlstra
 <peterz@infradead.org>, Randy Dunlap <rdunlap@infradead.org>, "Stephen
 Rothwell" <sfr@canb.auug.org.au>
Thread-Topic: [Intel-wired-lan] [PATCH v2 14/25] kdoc_parser: handle struct
 member macro VIRTIO_DECLARE_FEATURES(name)
Thread-Index: AQHckHZeEUf9vK9d9kyzgDWmoZOD1rVn23Sg
Date: Wed, 28 Jan 2026 17:47:44 +0000
Message-ID: <IA3PR11MB898622E5C73DBA8D4CC52E33E591A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <cover.1769617841.git.mchehab+huawei@kernel.org>
 <1c649fb1db817040e1641a3f8980f15787725eec.1769617841.git.mchehab+huawei@kernel.org>
In-Reply-To: <1c649fb1db817040e1641a3f8980f15787725eec.1769617841.git.mchehab+huawei@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA1PR11MB6991:EE_
x-ms-office365-filtering-correlation-id: 13bfd593-d8ad-497b-f999-08de5e955796
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|366016|376014|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?RTl4blNYc2laRjZGYkdKKzVxVGtrVDdoZlpGYTJWNUZzUmdsSDdOZC9VNjJy?=
 =?utf-8?B?UFRrT2hzU3FlY2NxVi9jekpBVU1PakJQdWJkSFdnVE5IZFZGOStUTjJxVEFa?=
 =?utf-8?B?OXhpOVFjZVpqOGtzZnliQVlPQXU3M2VJclFKQ09xR251akhNVUlLcTdCNDlE?=
 =?utf-8?B?cDFSNXR5UXI0b2V4QWIyalJhL3o1Q0pqQVVtTnhUQnZVMGxkZUQveFd4ZDc0?=
 =?utf-8?B?a3IrNnZFb2xwbGE0bTk5cFBaN0o0Y0ZvNXRmcjhPZElZU3IvdFdOemNkdmxq?=
 =?utf-8?B?S2RHVXl6bWJKZUJJcU9xQ08rSzYrOStiRCsvU2F2dFF0dDlhd2NKQ251TVNZ?=
 =?utf-8?B?d2pDeUpzbk5jRE1NYWl6elloUjY0Q1o1VitDTVdhZmJJbS9QTTFjNU1aWlBa?=
 =?utf-8?B?QkkwL29yajFMTHhFbU1GdTJ3bVF6RGoyWHh0bmhrQVNLdTZPSG43R0NkTkhR?=
 =?utf-8?B?ZWtJOGRwb1diU1d3TnMwQWxURGNjVk1UZkVuS2htV3gvN2djSmlvWEQ5cW9H?=
 =?utf-8?B?ZjRJQVNaSUVyTXhJWXh1b0wvVHhoR3lncmtUcGhnVzNGT05SaG9GYlJETzRG?=
 =?utf-8?B?ZUx0ZjdORkVyYlMvalZIaWdETytZYVBUSmRzTEJ5aEJScUQxRit2Qy9tWUtB?=
 =?utf-8?B?aGxuYXJDMXpJeHdWSldrYnRscGRXWCtCdE10R0RhY3RkenM1NE5aL0NTem84?=
 =?utf-8?B?aUkzODd3T3ZwUnNienRnQmdadmk3cE85RENXZ0t1RjI1emJ1bFQ0Y3dIUWhl?=
 =?utf-8?B?cHhhcFhKTG1SLzdDWmV3dEU2QXV5TDh6ZlJsU1N6ZWd2UjN2d05BNi9CQWRk?=
 =?utf-8?B?a2I2MnpTQldpeEI5M3V0M1Rsb2U0WlJ2M0ZObTVadHJYMHhyRWxCdm1iaTZv?=
 =?utf-8?B?TlEyaVFCejdCWnJmYWJyUFI2ZDFERjBzaUF4ZUp1UTVxcWE1Q0hKNUkwcGV1?=
 =?utf-8?B?elkzR2JMeVh2SmxhM0w0eUxFZHRyZjkwOXZrcjBiWGVuWUFMd0M0aFlhZm5j?=
 =?utf-8?B?ekhaU0QzWlV3dDF3QytQWU1HVmk4UHM0dXo2bVBPckU0TGZrM1IyRFVqSlJG?=
 =?utf-8?B?SVZnZU1seXFTZVhxeTB2RHdPa3M2Zi9ocDBvNzRsRFdEUXRQWDJTUzBGdm4r?=
 =?utf-8?B?SkxaSXl5VThJWUI2MkR4cHJVUnl2eVFxYnpHemhzdFROK0MzT2dUYU03cXVl?=
 =?utf-8?B?NVd5VG50YkNicVJScVowbDN6dHoyTTFJVm1PV1orNkVkSVpEVXorVmcvT0dp?=
 =?utf-8?B?TTUvMFZRSzNJSmZSWEtoSXNMMmJ0S0NsUkZldWtUNG9iRm5JMnZmc3FKRm5Y?=
 =?utf-8?B?WFRjQzlHbitzM3Q4R1VXcUhxSkxYamlxTk5td2NSTG11WnVzNndFbnduU0VJ?=
 =?utf-8?B?RGZZV1NiYU5PZ2haK1dkNWRmbFVzUDI5TVIzWklVOXg3U1hDcnhZc0pjRENm?=
 =?utf-8?B?ZjVKNEZMN3R1WWNYQ2l1VVJKdWRDdnVmYUpjaTRqTHVjdENkZGtnWFBmOHBo?=
 =?utf-8?B?UEdvbXpZdGI4Qkp2VnhqdzRRSllTOE1GZE9XV1lpQ3p5VjR2WkcrV3lGV2M4?=
 =?utf-8?B?K3FCNlFiRWEwbW5qVTJhb0hUbW8wanhIV0FHVG9lKzZGeng4ZG84TFA4eEl6?=
 =?utf-8?B?cWV5VVNqczF3Q1ZDb01xeGp6MzE0S3FBYVNJM2ZMM1dqb1lYeFJQR0RaT2RU?=
 =?utf-8?B?MTVwVjAvOS9SazIzZHlaSFB2YzlQYVF6Y0JvWUVPSlMwN3pnVWhQUW0wZnFG?=
 =?utf-8?B?cHAybmJwSU1mM2YzRURaeFY0bzJPMmVKL2VhcnFhVVpMa2cyTHNoOVFPUjhM?=
 =?utf-8?B?MFNXRmxZYjJZSlp0MWQvK0RERlZUbU8rSVZuV0FOYkFvM2srbGVrZVgwU1RH?=
 =?utf-8?B?cmZNUStnYnFvTmw3SE5wY3lCMzdNL0dGM3ZHZGRLbWg0ZVVJekl6anU3cG50?=
 =?utf-8?B?TGJUdmdxMGRPVVBmZ2pxSWtTcTBDWjhFWnFId2JGUm1CeTAxQkdYZ1JWdmRF?=
 =?utf-8?B?Q21TdUM0NEcrMHhZVG1BOG4zdVI5VUZ2ZnlIMFhFQTJWOW5uQ3RRKy9xR3I4?=
 =?utf-8?B?T0RlL0VTMVBpYUpsR29YUDVtZnNkZUkxVHNXQllyNkdIMHltczU2T2ZHVzAy?=
 =?utf-8?B?WGdLQVFOeXJFNE9kSGROa1pLSm5GejRLUzFkVEtBWHZYSXFLNHdNWlgrM012?=
 =?utf-8?Q?vPXYPxvKCCiS/CcMtMSFeZQ=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(366016)(376014)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VURiOXE0ZjVDOGsvTnRiNHpXdFkvSzkzUDRXTVlSMC8zNkhycktyK3BHSXZH?=
 =?utf-8?B?L2F4VXhsZGlhd2ExR29JOEs5VlVqa1hMMy9TQkFSWTJURDk1dGUxU1lKUmFC?=
 =?utf-8?B?WUpiV24wTFFyYlpHQUJ5T0t3YXpyV2VlcG8yTVFjSWFVa1lFTndPWGswMG1N?=
 =?utf-8?B?VXpLOHVFc3ZLN0RSUGtCeDNOKzJqM0FPMmVQdVNaVm45SWRGSzFtWXVhVVpq?=
 =?utf-8?B?Vld5V0Z5YWdzWUNGSUI3SEx6TWNiTmg3L2FLYVNGUEtPWUZoT3VQWGlQRXdB?=
 =?utf-8?B?eFVtTWFWRG5XblNmN3BDM1A4SW5KT1NUdXdqYmQ5c1pTMTlFMnVicUp3dlIw?=
 =?utf-8?B?VGhyZDJmRHI2OXMvRE4yT1Y3elc0N0xIdDJwQjFMRUpTN2t4NFVXQWJKbHJl?=
 =?utf-8?B?SStNelhuMllPMEg5bXlqMFF3NW9rOE1GbWE3MjJnOVJxNEhUTHJzejhhWGpv?=
 =?utf-8?B?d0IrdWlDc0Z3RTNFeklZeUtuSVBnekI4WTB2N1BJQnRGWEV5QjJhOGpFa3ky?=
 =?utf-8?B?d0JXc3hjWFR5Si93QUw2dGpLUGZwSXVzLzNIMkNZckEzVHY2ckpWNVJVQWph?=
 =?utf-8?B?L3JRaUhxTW41ejdDWi91N1l5aksrbVhzVEZIVlBlT3lNZ3NxVGxpY0xuT092?=
 =?utf-8?B?aDk3SWUrVUtYd2Q2ZURWMGJUWjVFTWxXR1lGV0lEYUdmNnJ2OENHQS9jdlFL?=
 =?utf-8?B?bFY2ZHc1TXJ3Zlk2K0xKM3FMak5xMnZZTWJBMlZhVWxhLytQdkdCL3p5TVAz?=
 =?utf-8?B?K2lBUzgwZlhvbC92SnJNdlNJSHlucG54a2luMmg0ZU5VYXo0M3NzTWVZc2dJ?=
 =?utf-8?B?MS9mSGFKTXNOZnptRFpvWWl3SDI0NnpWRmcyUHBNd29UNnpYdVJGb2ozY2sy?=
 =?utf-8?B?SVEwUStFVS9hOThpZmR3dGwybVhqV1c1enFoaEl0dzNyRmhrV1BQMHB6UGlj?=
 =?utf-8?B?cGh3dGpiWW84aHBmU2Q0QjByZkFSL1NwVWZQSHBYN2dYYjVTWDQ5aTBEUDRE?=
 =?utf-8?B?ODMwZUQ1ZGVLbiszT0Z5NVVHNkpGY0U3b1Y0aGYvaEdJNmpUdFE2SUp5akx6?=
 =?utf-8?B?alBhWWhGWEkvQXlXZVByUTJGNkZHb0FHdGlGaHpDczF3R1c5TkpUSHIxQ0VO?=
 =?utf-8?B?Ym54am1LN0wxWi9jY3V1dCtpTWNZYjdWcWU4cC9aeG8zY3oyU0NnZ3NlV0Ez?=
 =?utf-8?B?MzhDTUZXMktva1B4aldUanZpeUhhdTh2a3JMdGcwOUxBLy9iWXhMWG9zcklZ?=
 =?utf-8?B?OHlMSDY3SzlndkR0WTZmVGhkcGtGWUE0QmZES1hqc2Y5U2xxZlExbWZsOGRl?=
 =?utf-8?B?MDFaV2puNmwzQWNHWnFOM0JtRzVCczFhUGZyT1dpeGpIbjFFZnZ0SlJzMWZI?=
 =?utf-8?B?RFdIQnEvNW1xN25VaE5iUlFid1hYK2JNZXV1cnMrZ1BERzhGMGRSVmZyMDVY?=
 =?utf-8?B?aWZUUDdObjd1aUFDMHZnZVUvb2NCMHFXNGhPeTRBYzk5d0VFZ1VrRlcyQmdU?=
 =?utf-8?B?bTR5dHVjdldrSFdsTm5tUCsrODBUUFVjbUt0Z3o5VVBzSzFMTW12bnQvaUor?=
 =?utf-8?B?NFpob1dGcFpvdmFuRE9qTG96ek1CQkNYK1d2NjBMZFdHZFcrVEZETUs1NDhz?=
 =?utf-8?B?QktTSU1SZHpFdDVLdnA2YUsrRmRsdldwYmhyWm8zUHN5M1pxM2pWQTJiNitk?=
 =?utf-8?B?QWp3Mit2UlF1VnhjNkFUZE5tam16YmF4aFhnQ0hSVVFYTUhjQnRDSWxYQmpE?=
 =?utf-8?B?QVJyOHV5VzVNUVN6WGl0K3Y0S0dFWnhFTEIxV2NJSUF2bi8vYW51K2RkVTI0?=
 =?utf-8?B?OVJTWDZwb3NiemZseUJWOUZ1UHRWdThZdngwODgyaHBZMXFRdGp3ZEZSVHZt?=
 =?utf-8?B?MWhnekpTcmRZYnZhU3dqMnp0OWVZK05rb0VaNXBsWUVHdWJOT0JSa3pHUUxK?=
 =?utf-8?B?MlM5R2k5MldjYk9ONGJaVXRsMUt2WkMwc3VZWWhxcUlxcXBNMFIyNDJOR2Zw?=
 =?utf-8?B?eWQ5cWk1QnNCZ3QzKzdERTZJc29BUUFlNHVZMFFrOUtLbUgyNGhtdHMwOENW?=
 =?utf-8?B?VDdmOGhDMHY1UVJPVUliZmZjK0d6RXpuaW50OS9xRUFJek8zZzdJMHpPWWZ2?=
 =?utf-8?B?MFNNMWRLMXc0cTR3bktnMGdvM0lYUnRWY3hTdnRqNk5jSUhWN1E2UE5UUGRP?=
 =?utf-8?B?SHUzNEJ3U0JncDZBMW4rU01kQnlTd0VZbWlZQmJZbTVudUY4VmNQNGMvR0w1?=
 =?utf-8?B?Z3kxcHdGZXRjdHU2ZU4xeTZrbHB0OWRESXErdTNkZ0d2Q2RRbVltcFNmM3NG?=
 =?utf-8?B?U1ZqMjhENzZZcGN1WVFNMXZBSUlIcEpBRzJxR2ZFdW5lWEgzWWZ0Zz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 13bfd593-d8ad-497b-f999-08de5e955796
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2026 17:47:44.5702 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: E8U53tJjdns7WkLFZrq6BM9CL8mJCgbkaVCsJnnzxV7XIpfqd5cliu3S0+AuBAse1ol6dOyMkUHiww+tkkTgmGkI/Vzonc4iFK0h5segIaE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6991
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769622470; x=1801158470;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yS2HoAI+FTkMGOOKxCGYeTAq1DtBppWdmgVJQuloEyE=;
 b=mrHSP50xg0aa3PpcZz6Y3ErZzBEgPSJlOTY29yFOAtCPQQcM+lWXAZeE
 IoKD28F1KonBthZ0rXAm2tamUJcfuPxXBAi3Jzw8JLzHCR1O5oSRzWbKE
 C4N98Om7KoVbLdsZi720Z39W9Se5s74cZAeqX/cMGarsHs5h/Q5HjaqoE
 QFXj/XIqABMSQQYLvpna2RsTz9KNiMMgak3A/elmTRymA1DQH29R6my6C
 mKlkhD+4rBNkeTFCQqTbfDskkS1sDP2ZfGHkiQa0by2YwKPaEi3ezzE85
 8+Mv7vh5Cs+o2Xli1uevNtkj16HfLmc1FW00WwH6a6xQkBCJUlhuXfHRo
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mrHSP50x
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 14/25] kdoc_parser: handle struct
 member macro VIRTIO_DECLARE_FEATURES(name)
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:mchehab+huawei@kernel.org,m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:peterz@infradead.org,m:rdunlap@infradead.org,m:sfr@canb.auug.org.au,m:mchehab@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:email,osuosl.org:dkim,auug.org.au:email,infradead.org:email,IA3PR11MB8986.namprd11.prod.outlook.com:mid,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,lwn.net:email]
X-Rspamd-Queue-Id: C2633A7275
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgTWF1
cm8gQ2FydmFsaG8gQ2hlaGFiDQo+IFNlbnQ6IFdlZG5lc2RheSwgSmFudWFyeSAyOCwgMjAyNiA1
OjUwIFBNDQo+IFRvOiBKb25hdGhhbiBDb3JiZXQgPGNvcmJldEBsd24ubmV0PjsgTGludXggRG9j
IE1haWxpbmcgTGlzdCA8bGludXgtDQo+IGRvY0B2Z2VyLmtlcm5lbC5vcmc+DQo+IENjOiBNYXVy
byBDYXJ2YWxobyBDaGVoYWIgPG1jaGVoYWIraHVhd2VpQGtlcm5lbC5vcmc+Ow0KPiBicGZAdmdl
ci5rZXJuZWwub3JnOyBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbGludXgtDQo+
IGtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7IFBldGVyIFpp
amxzdHJhDQo+IDxwZXRlcnpAaW5mcmFkZWFkLm9yZz47IFJhbmR5IER1bmxhcCA8cmR1bmxhcEBp
bmZyYWRlYWQub3JnPjsgU3RlcGhlbg0KPiBSb3Rod2VsbCA8c2ZyQGNhbmIuYXV1Zy5vcmcuYXU+
DQo+IFN1YmplY3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCB2MiAxNC8yNV0ga2RvY19wYXJz
ZXI6IGhhbmRsZSBzdHJ1Y3QNCj4gbWVtYmVyIG1hY3JvIFZJUlRJT19ERUNMQVJFX0ZFQVRVUkVT
KG5hbWUpDQo+IA0KPiBGcm9tOiBSYW5keSBEdW5sYXAgPHJkdW5sYXBAaW5mcmFkZWFkLm9yZz4N
Cj4gDQo+IFBhcnNlIHRoZSBtYWNybyBWSVJUSU9fREVDTEFSRV9GRUFUVVJFUyhuYW1lKSBhbmQg
ZXhwYW5kIGl0IHRvIGl0cw0KPiBkZWZpbml0aW9uLiBUaGVzZSBwcmV2ZW50cyBvbmUgYnVpbGQg
d2FybmluZzoNCj4gDQo+IFdBUk5JTkc6IGluY2x1ZGUvbGludXgvdmlydGlvLmg6MTg4IHN0cnVj
dCBtZW1iZXINCj4gJ1ZJUlRJT19ERUNMQVJFX0ZFQVRVUkVTKGZlYXR1cmVzJyBub3QgZGVzY3Jp
YmVkIGluICd2aXJ0aW9fZGV2aWNlJw0KPiANCj4gU2lnbmVkLW9mZi1ieTogUmFuZHkgRHVubGFw
IDxyZHVubGFwQGluZnJhZGVhZC5vcmc+DQo+IFNpZ25lZC1vZmYtYnk6IE1hdXJvIENhcnZhbGhv
IENoZWhhYiA8bWNoZWhhYitodWF3ZWlAa2VybmVsLm9yZz4NCj4gLS0tDQo+ICB0b29scy9saWIv
cHl0aG9uL2tkb2Mva2RvY19wYXJzZXIucHkgfCAxICsNCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGlu
c2VydGlvbigrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL3Rvb2xzL2xpYi9weXRob24va2RvYy9rZG9j
X3BhcnNlci5weQ0KPiBiL3Rvb2xzL2xpYi9weXRob24va2RvYy9rZG9jX3BhcnNlci5weQ0KPiBp
bmRleCAzMzcxMGM0YmUxNDUuLmRiMTQwMzYzMTA0YSAxMDA2NDQNCj4gLS0tIGEvdG9vbHMvbGli
L3B5dGhvbi9rZG9jL2tkb2NfcGFyc2VyLnB5DQo+ICsrKyBiL3Rvb2xzL2xpYi9weXRob24va2Rv
Yy9rZG9jX3BhcnNlci5weQ0KPiBAQCAtMTUyLDYgKzE1Miw3IEBAIHN0cnVjdF94Zm9ybXMgPSBb
DQo+ICAgICAgICAgICAgICBzdHJ1Y3RfYXJnc19wYXR0ZXJuICsgcidcKScsIHJlLlMpLCByJ1wx
IFwyW10nKSwNCj4gICAgICAoS2VyblJlKHInREVGSU5FX0RNQV9VTk1BUF9BRERSXHMqXCgnICsg
c3RydWN0X2FyZ3NfcGF0dGVybiArDQo+IHInXCknLCByZS5TKSwgcidkbWFfYWRkcl90IFwxJyks
DQo+ICAgICAgKEtlcm5SZShyJ0RFRklORV9ETUFfVU5NQVBfTEVOXHMqXCgnICsgc3RydWN0X2Fy
Z3NfcGF0dGVybiArDQo+IHInXCknLCByZS5TKSwgcidfX3UzMiBcMScpLA0KPiArICAgIChLZXJu
UmUocidWSVJUSU9fREVDTEFSRV9GRUFUVVJFU1woKFtcd19dKylcKScpLCByJ3VuaW9uIHsgdTY0
DQo+IFwxOw0KPiArIHU2NCBcMV9hcnJheVtWSVJUSU9fRkVBVFVSRVNfVTY0U107IH0nKSwNCj4g
IF0NCj4gICMNCj4gICMgU3RydWN0IHJlZ2V4ZXMgaGVyZSBhcmUgZ3VhcmFudGVlZCB0byBoYXZl
IHRoZSBlbmQgZGVsaW1pdGVyDQo+IG1hdGNoaW5nDQo+IC0tDQo+IDIuNTIuMA0KUmV2aWV3ZWQt
Ynk6IEFsZWtzYW5kciBMb2t0aW9ub3YgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0K
