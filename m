Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 80157677740
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Jan 2023 10:17:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 16BD681F38;
	Mon, 23 Jan 2023 09:17:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 16BD681F38
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674465460;
	bh=/CMzI3HpuP/pw5yaXeELp7PPIev5Kb4xdnmI2s2YhL0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8VHFOhtETkughXCEhO6EPbnygZcPtlhJZTIsRUYGP7t/ZXQj4tFlBwzaK/AyOJ0z3
	 LX+voLbzWjCu8GYgXNxZ9eKBYPzdL0c8l0WwD2dfRJlD4CgJhKO/U/IzTI9ouJIv0S
	 Q24lEwxJChyZ7Zta1HrX0jRPbYLwmQ3OAiZFH00WF+s3LErS0PaFiRr/j3tM1JIKDg
	 /ALsvwpnQvZlhpmG8a5iXMjGY1pJodJsezi6tgr8FdQdqI3JIvIb2GNgysWN9fqbCq
	 +WvmDlJVP03irzi0QRPnngpEs/8Jyec/2uraZGo3Eons5+KQQUN9m/1jMUNdOCm51/
	 PhbdFK6ofAwKw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GdbLCeQT-_AJ; Mon, 23 Jan 2023 09:17:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E04CF81F04;
	Mon, 23 Jan 2023 09:17:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E04CF81F04
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A637B1BF5A6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 09:17:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 77930416F3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 09:17:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 77930416F3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aLUL7wa3Z4qV for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Jan 2023 09:17:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 66602416EA
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 66602416EA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 09:17:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="388354743"
X-IronPort-AV: E=Sophos;i="5.97,239,1669104000"; d="scan'208";a="388354743"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 01:17:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="663478427"
X-IronPort-AV: E=Sophos;i="5.97,239,1669104000"; d="scan'208";a="663478427"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga007.fm.intel.com with ESMTP; 23 Jan 2023 01:17:27 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 23 Jan 2023 01:17:26 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 23 Jan 2023 01:17:26 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 23 Jan 2023 01:17:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A/zt68CAhB6G6O0U2dN4WppWbhHMe8gH6axzenC/GbjXYXOukd1IfDHB2dyeobHMtndVK/F+8T/E3vBKn9V/F4IuLgOqT98Ev59zRVm5ASj2gYf1l8vWABOl4cWg5BdMyseXXiIsJjm1qEC7BEgcgPg1ptvHPkKYGjmBxEjXcfl+J3koJRXXrrsoJlJsxaYfD/7lx9C6I3ywSGFm753DNGlvMESFX+Ercppkk4sTE4+jdLWaw6C7EqR8YRkvmuv2yhT8t+aSSG+iKQ0nT+CQjaA1WsPg3YE16K9yme2CABoxbY88/rNvIJ3AOy6lZvHhYscq4asNisjbJoGO3hRz7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EfSoUuTF6tN6M56s6/Pd83FoCGH1Rl8VYA8XGiGJhyo=;
 b=HnEPM3SRD0rIMlMYve1Z4M7+DRakkMlDaAed1VqW+ct11qy60MEa3n2c8HUME7zH3ukjhmtqe4x/Ygix9uv+l48MshTpMv1Km65MyVyrCg64sU/PKRd4Zs+uCnujk6URf01B4VULtrDuQtIqFHCRgEe04P6+ZDaEUoZNL7MIgo9pea1XTnNtpYp8vpbeMnqoSER1lxKlr8Kdor+V6AZtGNEEYMLJJQJ/zVfwKoFPBuezp/QpcnxUD9MydjvwKC+YDTr+m6uHHWbfMzMxoTyS7TrYR7MrdJaXcqYwGk+0SuksvgDVboo5VLOAWu8q0UgKXY3EAyGmLDmugreHiSxhuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7364.namprd11.prod.outlook.com (2603:10b6:930:87::14)
 by MN2PR11MB4551.namprd11.prod.outlook.com (2603:10b6:208:269::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.33; Mon, 23 Jan
 2023 09:17:25 +0000
Received: from CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::d0ef:473c:502f:986e]) by CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::d0ef:473c:502f:986e%9]) with mapi id 15.20.6002.033; Mon, 23 Jan 2023
 09:17:25 +0000
From: "Szlosek, Marek" <marek.szlosek@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1] i40e: Add flag for
 disabling VF source pruning
Thread-Index: AQHZFIx4zbNHKBlKlkGMvMFLtFp+o66r7bVg
Date: Mon, 23 Jan 2023 09:17:24 +0000
Message-ID: <CY8PR11MB73641D2980DFD8129EF96D85E6C89@CY8PR11MB7364.namprd11.prod.outlook.com>
References: <20221220115706.3394297-1-sebastianx.czapla@intel.com>
In-Reply-To: <20221220115706.3394297-1-sebastianx.czapla@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7364:EE_|MN2PR11MB4551:EE_
x-ms-office365-filtering-correlation-id: 1ce4864e-8753-405c-dd2f-08dafd22a3fe
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sGuStNYZNUnuXhxlP0wUf0yllWfWjt9Ks/b4JG4j1DZM25oZOkpT4px2Yr8x23SkgCMa6egDDKi9vfTkzGze+bZ0hbxkNicCw0EUzkB2JVCJOREZmFiiCL8NCMqK/Hn4IV3+U3q24vdXfbsbaUcY2/MzSiovztNChxWq0fEvzhyt1xTFneP9p4ri/W5tuLT5M3hJ1tyNzrbfq8cS8UGtKHBEtTmpAWljMrsBuKDEDcsBMyRnkg4bZwscFQibyrvjbqImfkBj3/Lgq9u5y0vLheBL8/1VP+GZe7qGzNNDMGm1b1LbBvBM9oFk0RaMth8RAZi/c3NSqa3MW7eKvLjpvLivZGlg7538VcHvnBPgWJkz7LoiQfTQLivuWhdqzbTBO68KXbz3NNBHFtrhyCwOZBKoxVzl1FLhGtQp0EbubgrpTJtTcUF6GDrKMb0FYLZlSIrPITOpoEraFwtlIMp3eLDndRldt/8gbjwcX8MjiRiszuVKy0Nw7EdDuaMMg1ya8YPtJO2P9MRIW9Ma8xR11fWCwyFdT6Q9DTa/k4OJe/HszK2bAWUXkjHhDTWS9usM2RTq7ArqeGhqEROJ9PObALaYR5HrSSxdAz/MiSWOfYPVW+/pba5wjm1PNHeUbltVc1+aKgvqL/hnBcTfUlw1Nd/unSTiPbuxQl32zl/htphhgl4sFJWBGnMs7dMdXx2u+LdeT9yBq01iE+8zjw0Etg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7364.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(136003)(346002)(376002)(39860400002)(396003)(451199015)(83380400001)(76116006)(66946007)(64756008)(66446008)(66476007)(66556008)(86362001)(6916009)(8676002)(316002)(71200400001)(53546011)(6506007)(9686003)(26005)(186003)(7696005)(55016003)(478600001)(33656002)(38070700005)(8936002)(52536014)(122000001)(5660300002)(82960400001)(2906002)(41300700001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ZYdeIeg0fmNf7qvzSnTDgsr45mquUkk7tX6TltKwCtr8bwjIVaGXCxeoGKdC?=
 =?us-ascii?Q?ffXGfZs6DxVWX2claz1ZqQckpMevl6q1ELF0dE0RNO7MdAZmOKXx8M+zwUUI?=
 =?us-ascii?Q?NSOm6MzBbO+6XHhzHzffjeFTMGj0xhWQH1/W8ChiKZB4t2rOxAh364KSddFG?=
 =?us-ascii?Q?qc+ZKA8ai2yBcr8xBvnOQzDQjL12/MW23YWjA7kA7MEGaOX0NNoELnsGZV/x?=
 =?us-ascii?Q?bXK8Y50FWfGWoMgBWoIJhbbbtnXE6gotiBFXgVGSjm2bVIA1rQKerrvwKlwu?=
 =?us-ascii?Q?DqZOdWNxJELCL5pAz4UBdtRUP6EHcMP1mBpWSRpfoyrJIcD0aiASPZK4E/7I?=
 =?us-ascii?Q?oTANFRyRAhofjlg0Ph3jMOx0KIz1M6piaHpxbxSyQ0cbbCu1073+AdlpER+b?=
 =?us-ascii?Q?AKNfnig85udt78wF01Ask69BZdS2e2AI6TZPmhzSUp5Z/KaNJA73X6NdWRgy?=
 =?us-ascii?Q?fnqSYZ0W2paAdeTehSnwU3sQdeftEtw8XEqXGw4AQgGWpItkpnqbujIvlGr2?=
 =?us-ascii?Q?KqvvNz0WW0ikQlwHxYIMWCU6q2EKDQJBFKfxjbdAN0R8SO9duST+HINcUYEf?=
 =?us-ascii?Q?xI+gVEouZonNFR0bTBgU4UCHlrk5Cob62CcHgNqh8L8oR6DJbSxRDbrIMJE6?=
 =?us-ascii?Q?qdZ2C4rZA1ypqc5r/M2mSQIIFio2fsDKWePh54Yzo9uL3zn9DR2WC2W9wW/2?=
 =?us-ascii?Q?QVp2mheSfYEl1ux72fDALcutGH7MAtvokkQt9CtF8MQQbZNxZX3LG/DS24i5?=
 =?us-ascii?Q?eLXnToSkjmsW48/+z4A/ydIWgKB2F6SZVqhbE14/z6Xlc2pkEgsbIL1TU+gB?=
 =?us-ascii?Q?B5XU1yGjpzAsNq6Nr9ANLXSSOzpQT73W5JCqSJG3dv+bWBdigrgW0IWA8Hwx?=
 =?us-ascii?Q?YNnXiPLonPkpPb7d8sVGPUYS2XF38EeKZqHPp6GXFaGu+MoYbtqT7FMPiyei?=
 =?us-ascii?Q?xDz3E6xOnmhHeJDpMMRsyOdIrdYjVF9ZYJEaeWRSu0VVQkgUK/iU9XztJhsz?=
 =?us-ascii?Q?HIcOYs0xkWxjJbBeu9FnU3qAilldSodmRcgqoXTu+MNy0dOUxdjTAV2fIJtl?=
 =?us-ascii?Q?Fqfo548T00C6rzxk/TtEpxzV+OjJyCdKiJghh6So1pWv3XbCr/nFTfo3LvPk?=
 =?us-ascii?Q?i1iOEuG8K1u+vNpMS2a49/biTaTO0KX5BvmZpvSrqPllEMl8/d5whZ777sSD?=
 =?us-ascii?Q?N2BPV0WBNKCnhECruQxrQYPlvF/dApizqvlpyTxTcznUu/ncaAul8Os0NBdo?=
 =?us-ascii?Q?MLhOqBi+6RbBGwniofXAhVQr5j3TdddbDXGcQ5tZWTvn3YcODYZde4+NTYZ1?=
 =?us-ascii?Q?trd5DE2GM39cypealHGbpmM24bCAX0TJLYUBNJyVlQkwQvO++VTb2m/R8nWv?=
 =?us-ascii?Q?1IST92E00v/rxJs/KaoC+QcFALeRW/nttoHwLw25IQpqiaa4Jx4kEkrE+Cgg?=
 =?us-ascii?Q?WqAHlT7aLMQJTi3hQ+R9rQbtjqqS2lX0rTqJadwKWkLBJYO6ONlL2rJPI8Eu?=
 =?us-ascii?Q?bo7081MaMf4LVOIcd1Q4voFpW4gsiDDjf4zRXACEznwRSlpQOVjD9yp0vz74?=
 =?us-ascii?Q?jpIvOx0U7N9z5q/JYmK0QaJPiYRdPwXz2MEOLzlu?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7364.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ce4864e-8753-405c-dd2f-08dafd22a3fe
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jan 2023 09:17:24.7826 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: E6zBbUJ8O1entERJozMknVjaWnSJZCLYh6ggDtp5y8yhOaqdJR4HcVqnB10rS64pJmaGDeec2SoBuF7Zy1MDPg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4551
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674465448; x=1706001448;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Fbiq0WZtdQQWiFjbvU1hVlsSR9wiA1vYOtBlHruVDgY=;
 b=MfUZKon8OZEALYMHTYB6BMPkQ48reYpYa/qV4pC6jWCAWxBGTwB21CYs
 4cBSCphXbIlYEWP86jTjxxA1UR3fCQUdRQMoWD1gYz6uGwXAjpcM4S8NO
 LUUb/g8Tagv3EVknNottMDWNpzkRsL5HNh4N1vLaG92lnCSNZnFSL2Vco
 wkTQj4DdK/Z886Y21np/rSOMblVIXBlyWXaCsPtNZgl/vpUOLyZQ3F4oY
 4cHlQWqpHN+tVRsvsKPW3R7dej8Vu6YLlO+atnR+sdtfR2ybxy0bEM1GL
 fL1xSztfsBkjygKoHgN4jgdrdmEKMQRje6h7//9Jh1XJcFEueeARV4j1P
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MfUZKon8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] i40e: Add flag for
 disabling VF source pruning
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Sebastian Czapla
> Sent: wtorek, 20 grudnia 2022 12:57
> To: intel-wired-lan@lists.osuosl.org
> Cc: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>; Czapla, SebastianX
> <sebastianx.czapla@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v1] i40e: Add flag for disabling VF
> source pruning
> 
> Allow user to change source pruning for VF VSIs. This allows VFs to receive
> packets with MAC_SRC and MAC_DST equal to VFs mac.
> 
> Added priv flag vf-source-pruning to allow user to change source pruning
> setting. Reset all VSIs to commit the setting.
> If vf-source-pruning is off and VF is trusted on with spoofchk off then disable
> source pruning on specific VF takes effect.
> 
> Without this patch it is not possible to change source pruning setting on VF
> VSIs.
> 
> Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
> Signed-off-by: Sebastian Czapla <sebastianx.czapla@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e.h        |  2 +
>  .../net/ethernet/intel/i40e/i40e_ethtool.c    | 13 +++-
>  drivers/net/ethernet/intel/i40e/i40e_main.c   | 70 ++++++++++++++-----
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 66 ++++++++++++++++-
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |  2 +
>  5 files changed, 134 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e.h
> b/drivers/net/ethernet/intel/i40e/i40e.h
> index 60e351665c70..b1e4fa903e57 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e.h

Tested-by: Marek Szlosek <marek.szlosek@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
