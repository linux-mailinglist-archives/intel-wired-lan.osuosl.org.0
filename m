Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CECE5BC5477
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Oct 2025 15:50:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9193F40B63;
	Wed,  8 Oct 2025 13:50:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LVVT_WU6AXUP; Wed,  8 Oct 2025 13:50:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0EE2A40B65
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759931443;
	bh=Aae3vBqoD52vnvBvsZiykpnZ1jakhWnTXJ7yd6QPVTY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9rpIawX+WC27fGJ60kXimL/APg9OK/t1PZb30RBA+jfSOmFbY3N36JsWVGGd5gBJ9
	 llTLjuVBVE8YOsKyXWK/8FSvZHkW/KekSfjWDH6MB8yuN6H+Dt42LQwqJ3AsoRtFuR
	 Uu64k+5jYBpBikvQjFk7lWcJDa/BO9CaL1LwyeiLuEUkG9uFAEQncpDaG9tCoA2xSl
	 9DAvMtAjqIaAD4UPqZXYkrcl5tEJV+9wI4lyqGgI4PkHh4vF7R+HFjnkS2/KvO/v5e
	 N22aIUNGUCEU7wV8v1klBVAS9HwFGoluXq5IJ7leH9CJPQtYPx2H+7/ViExDlhCB27
	 PH+Ji9njlgYNg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0EE2A40B65;
	Wed,  8 Oct 2025 13:50:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 07A55119
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Oct 2025 13:50:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EDC0B4018F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Oct 2025 13:50:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pQzFQZHNSpsT for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Oct 2025 13:50:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3FC6B401C8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3FC6B401C8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3FC6B401C8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Oct 2025 13:50:40 +0000 (UTC)
X-CSE-ConnectionGUID: 6bugBn/5TYuIGLVHbodE+w==
X-CSE-MsgGUID: WFJZpfE/RPOIBDGLwBVyvg==
X-IronPort-AV: E=McAfee;i="6800,10657,11576"; a="72385130"
X-IronPort-AV: E=Sophos;i="6.19,213,1754982000"; d="scan'208";a="72385130"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 06:50:40 -0700
X-CSE-ConnectionGUID: hI1IAnMSQqOqN2Xnih0ICg==
X-CSE-MsgGUID: kFz1n2yvR8avChEi3/BSbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,213,1754982000"; d="scan'208";a="211087263"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 06:50:39 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 8 Oct 2025 06:50:38 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 8 Oct 2025 06:50:38 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.25)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 8 Oct 2025 06:50:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rFd1plSslzT8gWamw+sYcyhqNiotgDSeKf2yZZfj9KpXFgFTiT+idsv0nkWyiivprjbQiVnhtJFXI+E8/mRo42AN5Ju+3MlP3h9HixCn9jyzRz5JIhStEVxakacG2KS7O/x19cdbFWDBfAXiBf1xpxp30cY49xmWVqqbEHyobHj8EnSfzX9aoKeHlrw4djvpXuYOyIszheLVBzCuGKLmDPcAJoveOTnHzSRYOjaqXOrdR/DcSDG/47RTomfaPHLEolr6dVtoxkMpEFJZ4vpRBc0cwsvnY6eOZN4un2cS5RRshlHUCHQhpDpy1kQmvSkKgo+dURakkVBksFHeIypAhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Aae3vBqoD52vnvBvsZiykpnZ1jakhWnTXJ7yd6QPVTY=;
 b=LehWxy6Uz7KDCLopA8YThv/aSG+K5HR6myBemk++JLRIS+IUGEjyiplyqZRlaB0Km+2w2vSpji3szTyEelEHuEUmNEl68+QRP2XhTXYZrlXWe6W4QTV7zkOu/Mcoj9jrdsr5Yxg/NHWGktc128C0WOBjAuT3cobvbn8DYi1PjYcVtcJId3ZG9zwJdlZHK5PTcGwViavMV4QwTjU4MTSQCGt2izj8VhVWbhDl+vE1nrf7ybXf1f14bEfj9nYHooCx21ABsiyGdJHVLNhsGMdCow0qnfvim9Zbai+xPuUXFN/OSn5gO3i8fHAbpL0aEnmXgpYY9o75Dymbj9uJEkOamw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by CY5PR11MB6257.namprd11.prod.outlook.com (2603:10b6:930:26::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9182.20; Wed, 8 Oct
 2025 13:50:29 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9182.017; Wed, 8 Oct 2025
 13:50:29 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Brandeburg, Jesse"
 <jbrandeburg@cloudflare.com>, Jakub Kicinski <kuba@kernel.org>, "Hariprasad
 Kelam" <hkelam@marvell.com>, Simon Horman <horms@kernel.org>, Marcin Szycik
 <marcin.szycik@linux.intel.com>, Rahul Rameshbabu <rrameshbabu@nvidia.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, "corbet@lwn.net"
 <corbet@lwn.net>, "Keller, Jacob E" <jacob.e.keller@intel.com>
CC: "Brandeburg, Jesse" <jbrandeburg@cloudflare.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 4/5] ice: implement
 transmit hardware timestamp statistics
Thread-Index: AQHcJz6Kbb0iZWEtvkefbIlTR4fB9LS4Y6ew
Date: Wed, 8 Oct 2025 13:50:29 +0000
Message-ID: <IA1PR11MB6241A38774352CCB02B0FEA78BE1A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250916-resend-jbrandeb-ice-standard-stats-v4-0-ec198614c738@intel.com>
 <20250916-resend-jbrandeb-ice-standard-stats-v4-4-ec198614c738@intel.com>
In-Reply-To: <20250916-resend-jbrandeb-ice-standard-stats-v4-4-ec198614c738@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|CY5PR11MB6257:EE_
x-ms-office365-filtering-correlation-id: 665d1f89-c065-4f28-2edc-08de0671a486
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|366016|38070700021|921020; 
x-microsoft-antispam-message-info: =?utf-8?B?cE5HUjhGdG03SEZ5Q1R4UHVCem0rMjNmUnpzaWE2N1p2UG5FbmlOQitLekda?=
 =?utf-8?B?c3V3cWt6dmlxdW1CV1BNMVIzQkhYL25lcmZwUlJMcklKRmZJMzZ4L1FNZ0Z5?=
 =?utf-8?B?MXlYZlovSHRMZzJrUkxCUml0Y3NqU1AvNWkzUmpMU0hLeDI4NS9wbjVVeTNo?=
 =?utf-8?B?Q09OR0RHaVRYaWlZTC9sM3dIeXVSOUsrektBVW5KTHpsaDJlOXFZalFrK2xo?=
 =?utf-8?B?MjlQTjN1NUxaYmdaLzIvZ0M4bE5lbjBFOVZkTnYwMHlOaGJHVjFjaCtkdkQx?=
 =?utf-8?B?WVZnRDB2SmNoYXNIeDVWNFQ3OFVNOG9Ra1E4YTBJM0ZiaERhR2pORE1rZzhJ?=
 =?utf-8?B?VGs5d3pTOFNJdTRMTEVRSjJ6ck5wOTZxZzlaMkwxTm5udjJjNEpuL0Zzek1S?=
 =?utf-8?B?MTI5bUVTYVptSzJyVlNzMlFaWk9oSi83UHI3S1FFWXozeit2ZUUzZTc2MDZH?=
 =?utf-8?B?alRIWnhnVGswcWVzOTlGK0MyTUNQdHJyNFV3RlMyaGMrZXVQNlMrT1ZNdlBj?=
 =?utf-8?B?Y0xyelMwbkRJS05tcnY4Vi9GRkU1anJYWUR6anRyRjNSdCtKeCs0T0t0WVlH?=
 =?utf-8?B?YkFlQTh3QUh4NjNrUUF1cy9XMGE2Nm5OeFYrR3RYR2FaOXRvQjg0OXU4ejB5?=
 =?utf-8?B?c3N6ZW9UUXgvRkVNOTdtVTJnNVNsY0t0RUVTUFpWRWxxbS9vcVJ5aFlrZjh2?=
 =?utf-8?B?T1dScVN2cjdzTUlkemdlQkp4azNpaHdhYlFqK3NGV0J6a1g2ZGRROEZodDVM?=
 =?utf-8?B?U1VvSUg4T3JtZSttaTByQzM3MUx6N2xFbzJCd0xnc2JVeTFIK2MwM0xHM2g1?=
 =?utf-8?B?RXlHR3hKV09Cdk5yU1pML1pyemxpeGxUODFSVkVyY2Yxc1EweHZGbkdDem4x?=
 =?utf-8?B?ZWNUL2lKbTVhbmdiRjk1bWozZ3JTV0pVTXFrWm8rZW8vZ1VkNXAycnlOK2hy?=
 =?utf-8?B?YVlKRnYzS2UvMG05K1hyQUJQMnk1b1JyN2dQZ0dRWThkc0lLaUE4M0MrVVBC?=
 =?utf-8?B?dmdXM2w0VG4rbVFKS05hN3kxK2NYbTJ5T1VwQUZDSEhwS0YxL3NPRG43dUJW?=
 =?utf-8?B?ektsdlNkN1FZM1Vra2RSY09KVGdEcGhxUU1qeGNwV1lFRkdiK2dEZzdhN0xx?=
 =?utf-8?B?K0JqeHNtM1pJdWRlcFpOUmtvNVA3NUZXR3M4YVdZRnl6cW5CUFNZRG9RUDJR?=
 =?utf-8?B?V0dHaXNXbm9wNGg1YU9kcTMvbmFwNG1ITjlNT1piZDF1TkFpTHpPMERUTU53?=
 =?utf-8?B?QUgrZW1HakRPMC9ORk8zTVQ5ZUhvVWdscnpzY21QMGo5N1F5eHNjTU1tcmZU?=
 =?utf-8?B?TUV0ZG9KdWtCYVpvRmZkWEtRRnYyM01nK3pBV1ZCV1JORVVyYnk2dnpuMTJR?=
 =?utf-8?B?UFEwZW9IODc0V1YwU3pVWGZ0MjhraG12d1lnc2ZwV0VLTHFSd0ZRWVA5WEtO?=
 =?utf-8?B?OHdvK1JyaC83T05YOENaME9uOURqczRWVGZTcUQyZi9kU1BoMENXY043Z0lt?=
 =?utf-8?B?VnpMTkJVZFJhOXV1OGpFT2VuNTRPUlVCbm1SeHNhOU9KaE5xMFErQmU5SFVN?=
 =?utf-8?B?Z2xRT3ZKbWduNnRoL29FNEN6Lzd0YVJQNjl0bGdwSEYrRFJ2SFR1b0lFWnRD?=
 =?utf-8?B?RXpZamM0cUNCU09wZDRYSmQ3RWtFdFRWekVDLzVKK0wxd2N4eGFrOUdPQ2pQ?=
 =?utf-8?B?RmgwT3BTUis1YzdtTDdBa0FhWHJZV0RSMVkvMS9FWnZiNm5GeStyei80TzIv?=
 =?utf-8?B?OVV2R2hXSEVqcWoybnVUaUtYZ0piZUZzY3Q5VDJBSFBQUnVPYVJPK09jSjBU?=
 =?utf-8?B?RjhvSzN2eFV4Z1lBbzNITVA0RkFJeFVGZkFLdTBIdGJodVByMnFxUVVJR0FR?=
 =?utf-8?B?SFlpNkF1cmJ5aDhWeHR5VDVxVjdWSnRveUpRaEl4VlRDWkx0QVhjRE1ySXJk?=
 =?utf-8?B?QzlhSEZHQlM5SStFcnc2aUJmVlphc01KNlB1eTdINDEzVnRWd05JaUxuekxm?=
 =?utf-8?B?K0JSOGIwQTMvd2RCQld0RjMyaGZDVFJodnViK3kzT053a3ltWnUrWXJmd3h6?=
 =?utf-8?B?STJLQWV5bm5WNTlRWkswMlBWNmR4V1kwNjJLZz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016)(38070700021)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZnpnVmFkb1MzUjBYNDJvUkhSOHdZQ1BaM0M2MTd1Y1FjYnFsTDlYaWllSUNq?=
 =?utf-8?B?bWoxU0tXRmRqNUpvR3FpUWR4UmFNVERzeXU1bjRtUjN2dnU3QzJuTzhoeUlU?=
 =?utf-8?B?REE3dCtacWlKSk51cHZpT0NhdFlMVHIxTkc3NHljdXJpK0FiM2p4NkJDaEQz?=
 =?utf-8?B?Z0JkMitBN2JRaktFNWpqc2tRbHZCVUpLd0xtbkovYTdmeHJvMm5KS3I2SjM0?=
 =?utf-8?B?OUJwSWdnQXZQMjhuVG93QWJUOHpvOEY5QUV6WW5scDdMd080R29EZi9HbzBj?=
 =?utf-8?B?N2pKRGhSYWVxdDR0WCtDV0FkZnRYNUI2RXhEb3Vlb2dvR2lSVEU1dGg3aWVR?=
 =?utf-8?B?eHRRbkRXZm9HdFl2SEl2NERaTlBmWno2aSsxRFZoTDFuekZKL1d2T0lLT1cr?=
 =?utf-8?B?RCtxbkJzdG9vRVlidGFnMW1yalNNMlFYZzQvR1hRQ1hSdzd0Z1J1a21TZ2tZ?=
 =?utf-8?B?dklRbldoWE5RU2VFcE1JVXVaNzE3M09MWEZzSFc0Nm13em1XU1psWXBwU2FE?=
 =?utf-8?B?SkNsaWlpTndtWUFPYlNiOWlESnl3YS9LMExLVkx2MWxMTm44dVc0RnpycW1I?=
 =?utf-8?B?Qy9WODhWaUlEL3cramhoNUFZc0lrWmJOcHUxNFFvcDVxUEk1UFoxV2grbFRJ?=
 =?utf-8?B?RzYxNzB0dTA4KytTVHBveGJZK3NFbUdCREY4MlBnS2h1dVI0RHNBT05ERm1o?=
 =?utf-8?B?SHQ0dHkvcWJvQkxwZ1Ewa0ZvdGlXbW1jdHlmWVU5UmpPTXo5Z3l0c2FpbU85?=
 =?utf-8?B?NmtsWC9wTmFtK0M3UE1UQ1hqSFdnaWpOS1JZMHhkVnVUT01ITldMbmRKOHpF?=
 =?utf-8?B?YWJnVTU1TVQrNjkrbitWQ0U5aENUSUFwdEpCaEQ5WGlLa3Y5aXVBdFR5U3Bo?=
 =?utf-8?B?NUtNLzRYaEhtNlVKVXYwekpCWERnaUZXR0pGQUlqL215S3NKY0JMUjNRS3Q5?=
 =?utf-8?B?UEhTYnJ2Mkp0OHdNY1hQUkdlY0ZuUnc1TGVIUGpqSGErdWJlRHVQcUtKZlc0?=
 =?utf-8?B?TUpacE5yeXdLSjhGdUZ6N2g2b3M2SVkwd3g5aUtwcVNhdDhzZ3QvQ3N4OGxD?=
 =?utf-8?B?Rys5dG5Od0oxSkNXdVFTMS9RM2o0NjZsbndEVXk2ajRmNHVhaWVFSGtGM09R?=
 =?utf-8?B?MHVEV1VDS1cvRDVBZGplbDBRN0gyREVhSSt1bGdNODh3TzhrVkRPMW9Xak91?=
 =?utf-8?B?ay9pK2JBWVkvSVBQNCs1TG5jS1FqbWprOFR3bDVwanhYem8yWlFNY085Zm03?=
 =?utf-8?B?emppUU8wYkZtNWtwMzZrZFhrRElRY0U4SUd2YkE1TEJ4cXdwQWhHRFBoZWdZ?=
 =?utf-8?B?K2psa0xFNDdOcnlnNnJQT1RwMlVheS81ZjVvazBtSkRnYVN0a3ZQTWZKeit4?=
 =?utf-8?B?cjNHREVXU2d4NDRiblU4Z3BXQklrdlRQd1FjeExnUXVlUHZyUWJJTndtckMv?=
 =?utf-8?B?ajFvcWtuNlUwZVYyUDVvWmI2Vm92a3pzOE8yQ0RCczdsKzBRbk4zTkVseHo0?=
 =?utf-8?B?L0FmMWVNbFcrUFR3UzNGS2tKQlRjUHVJZDNTeEJBSTJESlo0VFowVjhYZ2Vy?=
 =?utf-8?B?S1kwVUNxVHJsa3NIREI3QWZLTDdyOWw1VDhYcjN6QjlVYmYzL3VrMlYzUFl4?=
 =?utf-8?B?TGZXRHBPcmpvNEdjTWFSd1BiZzV4RkVKQ3lMdmRLajZ2c2VuTHZLdTFGTW1Z?=
 =?utf-8?B?enVSL05SZWtDNzJHLyttS1VwRS9GMmYxSGFFN012T3VEck1pQXJoUXhSWGJi?=
 =?utf-8?B?SGowOVJrMGxxclE3K1piTzd6T2Vqd3pMaHZZN3o2VTdQODUwSVZueGJXTTA0?=
 =?utf-8?B?OGI4djFYQm5FdFZyRUJ4UFQxMHd1dWFnN0VUcS9xZjJ6TE9sK1dCNDBFQkFa?=
 =?utf-8?B?TGtLYkprL3BiUmlYY3g1T0pwNXNkbVZ3NWlEVlNBTzE2ZkRSc0xLeG0xU1Np?=
 =?utf-8?B?NVcvMGpDR2trai9TdkJGdklVeFhBYkdLUnl6UEFQMGpMMUJnRjFsckN4QUc5?=
 =?utf-8?B?dGlOSGxtencvRzFFcDEvbU1kaVFVeXlYRk1iYkhuVlMzcGsrOFhkSmtiMERk?=
 =?utf-8?B?S2VQQSttM2w1S3BiQ2piK0RKMytRemtqV2FIZU1kZEFXNVJSV1pKMXBQYzFY?=
 =?utf-8?Q?TMl1uTQmp0IcmotpaikubPN8r?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 665d1f89-c065-4f28-2edc-08de0671a486
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Oct 2025 13:50:29.4207 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sAkYpv/mdayEjSJzIh6CYI0GjaD8mngy4KLV7AzRU3053vpNKRLDQVXrtlNBSD8hqvwxc8W+K/U01YNbVk2Z+g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6257
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759931441; x=1791467441;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Aae3vBqoD52vnvBvsZiykpnZ1jakhWnTXJ7yd6QPVTY=;
 b=eTYZwmPRK+dFERjALv1NUk+rfacgCp45eurcgu7rl4NxOkld2JGBswQk
 1iVVVmLWxwUx+iOxwEVUhEDeW0Hcm9R3+7YMyrAL+RKvS/Bwzw0Pr5Xjh
 Csy/b4LUQP2VAcjeKvjrJN4/hTSeH/HNFIVM2gUv8b4SAFUPIsXq+OYAF
 LNmLV98VTgm/8R4xNRbHca8w2mO8aSapX0ja3E4wsufwoNXkBj0JimaOV
 jKBxcb3l7RzQ33tnlLf0dJZRL6USlzsAOOTun5B609KXL93j5jy1WYoU0
 Btgv8kRP2vK7PFf2i7yRGZsVutQn/c0GFS/WOLriweR96SWGAOk4+nUZp
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eTYZwmPR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 4/5] ice: implement
 transmit hardware timestamp statistics
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBKYWNvYiBLZWxs
ZXINClNlbnQ6IDE3IFNlcHRlbWJlciAyMDI1IDAwOjQ1DQo+IFRvOiBCcmFuZGVidXJnLCBKZXNz
ZSA8amJyYW5kZWJ1cmdAY2xvdWRmbGFyZS5jb20+OyBKYWt1YiBLaWNpbnNraSA8a3ViYUBrZXJu
ZWwub3JnPjsgSGFyaXByYXNhZCBLZWxhbSA8aGtlbGFtQG1hcnZlbGwuY29tPjsgU2ltb24gSG9y
bWFuIDxob3Jtc0BrZXJuZWwub3JnPjsgTWFyY2luIFN6eWNpayA8bWFyY2luLnN6eWNpa0BsaW51
eC5pbnRlbC5jb20+OyBSYWh1bCBSYW1lc2hiYWJ1IDxycmFtZXNoYmFidUBudmlkaWEuY29tPjsg
bmV0ZGV2QHZnZXIua2VybmVsLm9yZzsgaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc7
IGxpbnV4LWRvY0B2Z2VyLmtlcm5lbC5vcmc7IGNvcmJldEBsd24ubmV0OyBLZWxsZXIsIEphY29i
IEUgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT4NCj4gQ2M6IEJyYW5kZWJ1cmcsIEplc3NlIDxq
YnJhbmRlYnVyZ0BjbG91ZGZsYXJlLmNvbT4NCj4gU3ViamVjdDogW0ludGVsLXdpcmVkLWxhbl0g
W1BBVENIIGl3bC1uZXh0IHY0IDQvNV0gaWNlOiBpbXBsZW1lbnQgdHJhbnNtaXQgaGFyZHdhcmUg
dGltZXN0YW1wIHN0YXRpc3RpY3MNCj4NCj4gRnJvbTogSmVzc2UgQnJhbmRlYnVyZyA8amVzc2Uu
YnJhbmRlYnVyZ0BpbnRlbC5jb20+DQo+DQo+IFRoZSBrZXJuZWwgbm93IGhhcyBjb21tb24gc3Rh
dGlzdGljcyBmb3IgdHJhbnNtaXQgdGltZXN0YW1wcywgc28gaW1wbGVtZW50IHRoZW0gaW4gdGhl
IGljZSBkcml2ZXIuDQo+DQo+IHVzZSB2aWENCj4gZXRodG9vbCAtSSAtVCBldGgwDQo+DQo+IFJl
dmlld2VkLWJ5OiBKYWNvYiBLZWxsZXIgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT4NCj4gUmV2
aWV3ZWQtYnk6IEpha3ViIEtpY2luc2tpIDxrdWJhQGtlcm5lbC5vcmc+DQo+IFJldmlld2VkLWJ5
OiBIYXJpcHJhc2FkIEtlbGFtIDxoa2VsYW1AbWFydmVsbC5jb20+DQo+IFJldmlld2VkLWJ5OiBT
aW1vbiBIb3JtYW4gPGhvcm1zQGtlcm5lbC5vcmc+DQo+IFNpZ25lZC1vZmYtYnk6IEplc3NlIEJy
YW5kZWJ1cmcgPGplc3NlLmJyYW5kZWJ1cmdAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBK
YWNvYiBLZWxsZXIgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT4NCj4gLS0tDQo+IGRyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZXRodG9vbC5jIHwgMTggKysrKysrKysrKysrKysr
KysrDQo+IDEgZmlsZSBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspDQo+DQoNClRlc3RlZC1ieTog
UmluaXRoYSBTIDxzeC5yaW5pdGhhQGludGVsLmNvbT4gKEEgQ29udGluZ2VudCB3b3JrZXIgYXQg
SW50ZWwpDQo=
