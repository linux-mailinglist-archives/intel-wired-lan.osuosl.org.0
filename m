Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C8A1976658
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Sep 2024 12:06:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8240680588;
	Thu, 12 Sep 2024 10:06:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p9z4hiqEnGDg; Thu, 12 Sep 2024 10:06:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A68F48058E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726135585;
	bh=Co5Z5zrUVROZ+RkoJhGpW3PiYaUC9zrwLM9oLaT9JPo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tDEjx9820VjGIFCVdxYtCa/kD/O65g7pbUOmc2iM3zyKCcvttXERcFrtTgoMe6u7l
	 OP6IqKliw/DB0yv35KZmPlGZwZDJ+cbsQzqu1G9+JpXxuAlww9Ps+3FjTTuOx5VcaR
	 JhzmXVBgT1S/tIkBriJGdgkWXZr9QMvzoemUtifV2OPtQy09qP2HeJr8vP+K7qD8L7
	 yrekoE7nNMEWrDILZgOz4LC6Ja8ANAs+tAV3ZRk4aLyHc1d8sfPBqF8TLZ+V3g6x18
	 Skz8BnvTygLRzUjilq8a3TD9x6SttTSeUapolH/re6uqHdpRPlfnfZECnps6HMo/n9
	 vtXmlEFaHeXEg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A68F48058E;
	Thu, 12 Sep 2024 10:06:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7421C1BF2A1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2024 10:06:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 600AF405A7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2024 10:06:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AwFVqzB5-Mb0 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Sep 2024 10:06:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 04BE5400D6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 04BE5400D6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 04BE5400D6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2024 10:06:21 +0000 (UTC)
X-CSE-ConnectionGUID: x7zyB8uKSpen6iVo46ZElA==
X-CSE-MsgGUID: 8WmOcWuGRHKNxQIVI00Orw==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="24915228"
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="24915228"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 03:06:21 -0700
X-CSE-ConnectionGUID: GWJss565ThiDRr2C/u9Ygg==
X-CSE-MsgGUID: Z2hnqa49SCqLjn8mE1Fciw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="98482392"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Sep 2024 03:06:21 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 12 Sep 2024 03:06:20 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 12 Sep 2024 03:06:20 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 12 Sep 2024 03:06:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oqVVv1tSKlhLGzH3QLFUILIU/cPEMmhYRdJX2P3mOKYVI8i3/Sdsp2/9XABA+IlPcKEAviRsVBqUku+pVO17QTcyOpfePzKFUAdr+Fzpchd8XdmCLSU0dXAqJz2FXm4FQo5xTTWLNl2i5cbYB0luCL4/RuHZEsipdGi1Ty6BB5Hydo0gfMNbGYy4GtTnSB7mtE8VSgRcRKdrNNVdrkzioAmI5kNuy9tkeqcvFceFvObsl27SEOvZqdBix1gN2S25TPuXZJZKh15MviQA+1wo3a6iTn+nnLIb0+n3e9MyTS8t86erCCovZ0SKOPzliu2b5mCaec5eaEArgcW8IAPTGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Co5Z5zrUVROZ+RkoJhGpW3PiYaUC9zrwLM9oLaT9JPo=;
 b=fBg8hTpSl/p8nQ7DmfaMhZk/DXLYKL+UauXnppVNgl81gwKCbVw7hHK26GxmniU5rhAX+T/kS9ZVbchsO69QFzb03ILJibFB+PQxI5QbUw9bEwf2u0+0iQJgH4sfxc5x99Y33D04FKF4CoPcqwBSzvX7wluhXt4qp8tT443o/4/uWyUT8im+0G3iCLVMuMIHYVqq5aTez3bAHwKMLzQkwxiH2dSFhkKmVNqIRnkopE3ycQ3W3suXtPyi5bd8zNSjwuRb4O/Y4pAwKt183CY8s/U7Er2O7yK6/YGZfXqOKkCDDXIBszBqG4MJZspVkfq5+7FFYGkGdLcO9GSEelbfpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN2PR11MB4664.namprd11.prod.outlook.com (2603:10b6:208:26e::24)
 by SJ0PR11MB5117.namprd11.prod.outlook.com (2603:10b6:a03:2d0::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7939.25; Thu, 12 Sep
 2024 10:06:16 +0000
Received: from MN2PR11MB4664.namprd11.prod.outlook.com
 ([fe80::85d0:c2bd:72cd:dcb7]) by MN2PR11MB4664.namprd11.prod.outlook.com
 ([fe80::85d0:c2bd:72cd:dcb7%5]) with mapi id 15.20.7939.022; Thu, 12 Sep 2024
 10:06:16 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: fix dpll's pins
 frequencies
Thread-Index: AQHbA9n5Z7pQ9X9GsECZkNSVqnYNJbJSI1qAgAHLW8A=
Date: Thu, 12 Sep 2024 10:06:16 +0000
Message-ID: <MN2PR11MB46647808A94B414EE3E8D52E9B642@MN2PR11MB4664.namprd11.prod.outlook.com>
References: <20240910232934.675274-1-arkadiusz.kubalewski@intel.com>
 <300e36d4-92f9-4732-992d-8d427a06272d@molgen.mpg.de>
In-Reply-To: <300e36d4-92f9-4732-992d-8d427a06272d@molgen.mpg.de>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN2PR11MB4664:EE_|SJ0PR11MB5117:EE_
x-ms-office365-filtering-correlation-id: 0483c9b1-9ee4-4e51-6ab7-08dcd3128a33
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?bFZVaGhNSnlXeHZsR2dmQ1kwN1lLczhwSjRQSUVzTm1panRwTDVEY05uOW1R?=
 =?utf-8?B?VDlZTWlpRm5OamVyU0ZtbjFqOCtsbEhhTHp3RmllWWZUVmZUM2RNOEo4RTFJ?=
 =?utf-8?B?WGYwWjVTcFFoK0h1blpEalU5R1ZVTndEWTdIbDRTUC9wc1c3dGQ5ZFdsV2pR?=
 =?utf-8?B?NHkwV3NJdW9IanlNWU1ucllVOUFFRXBsamFWRFZSbkF4VTZyYW9BQUEwQ1Jw?=
 =?utf-8?B?NkZKaGw3SEZEK1JzQThxNDY1S2ZuQjRERVd6djBmQ3FtOHFiU0pWTkpvNDFS?=
 =?utf-8?B?UVFlQWtwS2RrbnRLdndldGxTdjdtSThHM3Q0RW5GdFRPQkRYdk05WFlLd3Zk?=
 =?utf-8?B?eU83L2tJU0llN0hXTFlHb0ZxYjhXQ001eSsvOFd0ZEV4aFZNTU9HR1VwWEkw?=
 =?utf-8?B?TkdyWm8yd1g4aFp1bmpkdHhZQlN5RDZ2M0ZzekExc2NBakplNjdPcTY2ZWh1?=
 =?utf-8?B?QUM3N2xpVSs0Qk1KN0diRHhob0xBMCswZVJlbkVMdVRuNXZxcXozU09sWGUw?=
 =?utf-8?B?TG1RYStaSVNxTWRIQ0dJcncrNXNHWWxReWtCdEhTOXdXQnhJOUFPZkk4alRz?=
 =?utf-8?B?SGpXMHdyUGJYMGFKTWNwSEVWWmVDZjhNUERQYUZjZmZMbi9ERVk1Z0F2YktP?=
 =?utf-8?B?SGRORXFVeEdLL1BZM0t5VStlMzZuZG5BRkJZNjdLa3p6R3lzcm1zanhOemxW?=
 =?utf-8?B?QmFyTkxUMXhKVUVVRm1CNFJuajk5ZkdEZ2VwWm55dUczSzFBaksyUWtydml5?=
 =?utf-8?B?U2l5dGcxNENjRTlSOE0rRXB3UDlZWS8rbUZmcFhaeFUva29jNk9LZjZNa3RZ?=
 =?utf-8?B?QWVnKysvSm81b1JwUUxYS1ZyVXZlWDFuQVA4YTJsR3RzS1VKTWpRcUU1bmhy?=
 =?utf-8?B?OHJBcW1aT2w5NUZ3Zkg1d2xBRzdIZEJJZ1p0MHJyTzhjTmZsZE9yWFpoTTJt?=
 =?utf-8?B?a2lSbFN3aGttWDM4cW5TYnE5TTd6Q0ZMeG5kbWFwcXRUVnVMS205ZnhFZFlX?=
 =?utf-8?B?OXJkK09CYjNPTnhDS25XNVZUZTF3TG51N0xGb0NoQ2dISmlUTUxYUmcwQUVM?=
 =?utf-8?B?bWdMSndMRDRldHpkZTBrMG5FRzd3S21qcmNXV2w5aHFpWjZ1SjNDcFVaL3N0?=
 =?utf-8?B?ejJPbE9JdGFQK1FCVFpneXNhY0J0NVNZZTlSUStjSnhUL1U1WmJaK3BLZ3Iw?=
 =?utf-8?B?M3NVcU00VXk0QWdpaTlqMU1HNkVvVjIvL0xOMUNubTRWR2N6bW5mRzJwaTAx?=
 =?utf-8?B?bDdoc1RiSmlDNzcwaExWRlRmRU40YTZjTlQ3ZkYrbENJbDNnOGN2eGJHRGRs?=
 =?utf-8?B?ckVoQUFwaGcybXBXODdIMXBrdG95N2hMd0lHVHd2elFZQW81VktOTlV0M2lL?=
 =?utf-8?B?SDh2cHpxem9JeVNhN3Z3N2N0VzZFdmxXNUFGTjdpOE9EOHRJSmdpVDZ2bGMv?=
 =?utf-8?B?Sy9UNzdab2RkejVpQVptTlVibUg0VmcwbGM4SUlTTzdYTmRYSXJmZmdVTG90?=
 =?utf-8?B?akhRdHc1YVFUUmJpWU5KRGVEa290WmRiY1RrcG9UTXNhMElhblEvcThwOFJN?=
 =?utf-8?B?YWpNOTdHck04Si9iTVFhVmJzT0hKYkwxZWc3NnUvRThNdHBZMGxVVFFvc081?=
 =?utf-8?B?ZlU5ZU81Um5qcnF3clZjZGZqRThmS2hVSmtzL25INm44dnREVlNDejFKV1dC?=
 =?utf-8?B?TXRNM0NxN3V0NWx4azZxWktka2E4a3Q4ZkNXWC82Vi9pWWtFTkNuUXA1MkY1?=
 =?utf-8?B?MGhqbW9TN1ltazEweks5RkhrOVdyS05aNHVwMnZnalR3OFAxZk8vOU9DSXFh?=
 =?utf-8?B?WVY3YW5FaGlZZHZMRXNUT3kzaHRNei8wVGViZ3AvV2FoaUJCK0VxNUdMOFNL?=
 =?utf-8?B?QWVzM0pWaFdrZmRTYlgvM2h5RVkvSkxmTlhoVmdKaWJhV3c9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4664.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SEh5eHBsSGh4NjhkSmhQZVgwdW5JWmIxYnVtd1cwQjY3NFlkTFBKam9oNjAr?=
 =?utf-8?B?Q1dSRVI4WW9acmp6Qmg4b1ZIblA4S0lhQ0tCeklodnhRUXhHREMrWnRLSGF2?=
 =?utf-8?B?UWhXbnZ3Z3R5czJrUm5pSldvK1d2ZzI4YnR5QXVDejRVbW9adnlRRjJLV3Rr?=
 =?utf-8?B?VHpDeDF1MS9hdE9FOG9VU1VPblI3cjYvK244TmhabFBpWml2b3BmcUhVaTZF?=
 =?utf-8?B?TWt0N1NzUi91MC9PL1hmSFBsV3RVMndDNkx5RldtdllwOTFuamxiWEg3VERs?=
 =?utf-8?B?RlBTT0MvVEJDVkxmNHBFODRKYm1kS1liV1R1allkNlJvNnp4N2FqUXhQd2Z0?=
 =?utf-8?B?bWx0Zzk0SW9ZVEpzV2pMWXBpZnEzN2phbi9UR0FVMDNhY1FEd05NS1JHUnhL?=
 =?utf-8?B?cjBTa1ZVSHBCSnZsYzJDRUxjczhHdDVVblNKUk9JeGprb3hTbHBkUVlTVmtT?=
 =?utf-8?B?UlpBWmFEY0hlSThmbEJEYmxXcC9YZzdWNVE3U05vREtGdVp3aGhCUXpBbzVY?=
 =?utf-8?B?U0VPK09LT0YyZ2Y5Um4rbTRDcUl5dHZpbDNCcDNsWWlhdzIxTHIwK1JoNTI0?=
 =?utf-8?B?UDZZZmtNQit6UUJZTVJQUjZtOW1Rd0tJRHhMaDVhbUpleWxMMHByU2NaaURL?=
 =?utf-8?B?dHMrZGRJdGZrYldmcGY5NjYycFBqWnJkWUEvaTgwTnc0cHBtZmlzdEd1RXhp?=
 =?utf-8?B?K0ptenN1Zk1NbzRqeXExSHRPMUR5NloyRXcyd3IzRFJ4bXg4QWJtU1ZJemJ0?=
 =?utf-8?B?T3NqeEw2YUl1VzNxS0FDb21pc0FUYU1CSXRQOUxlckI1Y29SVi83Mm9LdXdF?=
 =?utf-8?B?UmpraWw3R1JQMjBFWm1HdGJkSzh0Uzc4NHFvNFRVR292UDQvb2pKYVNKUllF?=
 =?utf-8?B?YVF6Vkt6aGNmK2xnZDRZRXJJQnBaaThWdDVYY25hWXFiRjN6OXBZQUdyNVFR?=
 =?utf-8?B?Z2RiRXNzZzVuREZLQ3pTNzZqTTg2YXMwOVRMMnhEUUhURUFwU3RyR015TTcv?=
 =?utf-8?B?aFpINjlBd0tLUVo1RlJIelFZVjB3dHc2U1p3eWl6L1ZmZjBRTHhlY3gyMlRD?=
 =?utf-8?B?empNb2V2cUlQWFdOUnpsc0U3bWlOanVJdEEwV0hmTHRoL3l3QkQ1L2tIdzY0?=
 =?utf-8?B?VHV1eWFkaUpYdHlENldwNXdXTzlFZWRydVFnV1pwYWhQMWovdGNTcjJhUyta?=
 =?utf-8?B?NmxLUjNoa1k3SFpoVmNNc2M2SXcxdDdBMG9xdlVPUExyTlpKQndaaGF4WFZ0?=
 =?utf-8?B?MCs1V25nVGw3VXE5S2RSUk9WajlLTUNabnZ4Ymh2anJ6bDl1UmR2WmJTV3BX?=
 =?utf-8?B?ZGxwbTZKU3dyS2RqbVAvbS9xWkQ4T2RReFFJTDNkWjZWdUlPT0FGdzR3d0dL?=
 =?utf-8?B?MTRKK3FFYjNPeEdWNkZzMUtTaUsvZWJUTWhtVlBhVHlTK2lHdUlKUTJHOVFa?=
 =?utf-8?B?U2lMdHgrM0YzU284VUFiWmJnaEFoU3plQlN3MVZGMjFDQU8wbGZUcXhjVTYr?=
 =?utf-8?B?ZTBKM294UENISm5jM2hoY3JlSGtUNDBFY2s2bzliUlAxVExGN0lQeXFmd1I3?=
 =?utf-8?B?WkF2SmdvenVPV1Q2KzI4WC91S29vQWF1Z2pzd0hyeXI3dTlwVVZSQ2EwRUJu?=
 =?utf-8?B?OTBUUjRnOGg0ek1CT09lTW1JWkpsbXhxTGJBWDdwODZNOWZrQmxHTEhrR0tV?=
 =?utf-8?B?MzIyZDEwR21JWDZnY21iOUZyYkpYWkx6cW5EVjk3NjBxNU4zQzZDUXNKY0V1?=
 =?utf-8?B?cmZRMWlwMHJxWDlPTnFUaUJKMEdTZ2NKTlR1eldGOUF4WGdveUlIQjdROG13?=
 =?utf-8?B?Tnh6TW1ET3NWMkkvb0g2c3pOQkdTd3JOMGN6N2lZV1dOa2lHMDFhekNTUnM4?=
 =?utf-8?B?amNGY3doblZzRnhYV0Y0dXN4ZUhsU0ErQTlVTkVXdk5wZXRsWWgrQklmb1Bx?=
 =?utf-8?B?KzBBamZoVVNSN2xYeTZJSVlCZWx4aVRWUlJLeEs0Y1Q1NFNqeWxYZkljODRM?=
 =?utf-8?B?UnBGZDErWTB4dGdpdThUZzRMeGdSa2s3SXUxaGNuVmR1a05tdEFFUXFab2pH?=
 =?utf-8?B?Z01raE5XR25ESG82L1VYYkFtd3Z0YzVjSGlGZ04wbk9aL1c2ZHFwVFNpTmZG?=
 =?utf-8?B?Smo1Y3JTdEswZmhud25qU1AvY3R5WGFDL1JOSGx0aXBKa1BHdDJETWxRaVVm?=
 =?utf-8?B?aFE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4664.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0483c9b1-9ee4-4e51-6ab7-08dcd3128a33
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Sep 2024 10:06:16.0718 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fqV2AHD97kfocXCfROGTEIdjkaaPk9umoXZ3i8EnFb2Dn0PeqpwpOQcjV7A+P1HLgtMvEFrATVCHFBtKau01b30pvdjDhRbkG2tuAYbwOH8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5117
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726135582; x=1757671582;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Co5Z5zrUVROZ+RkoJhGpW3PiYaUC9zrwLM9oLaT9JPo=;
 b=AWMUPihT0dE2hhFl2uGKQL1VyNVLFK3WxPlgo80Kfxt0eR3ADCks5jxS
 gZKYLof2k44qIgjNNAv7cCnM71zU/iBmKEFgVjmk7gtgCuG5bkrJBoj2z
 Y7XgtWZahjnyghxp+ya0P2EyGPXvC2f2I7OJ5PznwqOXBs7H7u/ycj/ur
 uUgGNhUOnW/l3X3W/zIVf+JGLTch1xbBDCXvhJUMKg2AamP+nlvCzjWKl
 /Vl6I6brWU5EAyQ4OcEv/mRkYrQ5OiLCTfuLJKnHGC0F2D5t7I+n39nP0
 LnxeZIcAwAkOoFXdEuURWIHO6RC9ChAEO2UN+rbyXEqkLnAAU3DvjSSI2
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AWMUPihT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix dpll's pins
 frequencies
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
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PkZyb206IFBhdWwgTWVuemVsIDxwbWVuemVsQG1vbGdlbi5tcGcuZGU+DQo+U2VudDogV2VkbmVz
ZGF5LCBTZXB0ZW1iZXIgMTEsIDIwMjQgODo0MSBBTQ0KPg0KPkRlYXIgQXJrYWRpdXN6LA0KPg0K
Pg0KPlRoYW5rIHlvdSBmb3IgeW91ciBwYXRjaC4gSXTigJlkIGJlIGdyZWF0IGlmIHlvdSB1c2Vk
IGEgbW9yZSBzcGVjaWZpYw0KPnN1bW1hcnkuIE1heWJlOg0KPg0KPmljZTogQWxsb3cgZnVsbCBm
cmVxdWVuY3kgcmFuZ2Ugb2YgMSBIeuKAkzI1IE1IeiBmb3IgZHBsbCBwaW5zDQo+DQo+U29tZSBt
b3JlIG5pdHMgYmVsb3c6DQo+DQo+QW0gMTEuMDkuMjQgdW0gMDE6Mjkgc2NocmllYiBBcmthZGl1
c3ogS3ViYWxld3NraToNCj4+IERwbGwncyBwaW5zIGZyZXF1ZW5jaWVzIHdlcmUgaGFyZGNvZGVk
IGluIHRoZSBkcml2ZXIgdG8gdGhlIDFIei8xME1Iei4NCj4NCj4xLiAgSXMg4oCcRHBsbOKAmXMg
cGlucyBmcmVxdWVuY2llc+KAnSBhIGNvbW1vbiB0ZXJtLCBvciB3b3VsZCDigJxEcGxsIHBpbg0K
PmZyZXF1ZW5jaWVz4oCdIGFsc28gd29yaz8NCj4yLiAgSeKAmWQgdXNlIHByZXNlbnQgdGVuc2U6
ICphcmUqIGhhcmRjb2RlZA0KPjMuICBSZW1vdmUgKnRoZSo6IHRvIDEgSHovMTAgTUh6DQo+DQo+
PiBGaXggaXQgYmUgYWxsb3dpbmcgdXNlcnMgdG8gc2V0IGZ1bGwgcmFuZ2Ugb2Ygc3VwcG9ydGVk
IGZyZXF1ZW5jaWVzDQo+PiB3aGljaCBpcyBhIHJhbmdlIDFIei0yNU1Iei4NCj4NCj50aGUgcmFu
Z2Ug4oCmDQo+DQo+V2hlcmUgaXMgdGhlIHJhbmdlIGRvY3VtZW50ZWQ/IFBsZWFzZSByZWZlcmVu
Y2UgdGhlIHNvdXJjZSBsaWtlIHRoZQ0KPmRhdGFzaGVldC4NCj4NCg0KRGVhciBQYXVsLA0KDQpJ
IHdhbnRlZCB0byBmaXggb3RoZXIgY29tbWVudHMgYW5kIHNlbmQgdGhlIGZvbGxvdyB1cCwgZm9y
dHVuYXRlbHkgeW91cg0KbGFzdCBjb21tZW50IG1hZGUgbWUgdG8gbG9vayBmb3IgdXNlciBkb2N1
bWVudGF0aW9uLCBhbmQgaXQgc2VlbXMgaXQgaGFzDQpjaGFuZ2VkIGZyb20gdGhlIHRpbWUgSSBz
ZWVuIGl0LCB0aGVyZSBpcyBzb21lIGV4dHJhIG1lY2hhbmljIGRlc2NyaWJlZA0Kb24gdGhpcyBu
b3cgKHByZXZpb3VzbHkgdGhlcmUgd2FzIEFueUZyZXEgZmllbGQgaW4gcmVsYXRlZCBBUSBtZXNz
YWdlcywNCndoaWNoIGluZGljYXRlZCBpZiBhbnkgZHBsbCBzdXBwb3J0ZWQgZnJlcXVlbmN5IGNh
biBiZSB1c2VkLCBidXQgaXQgd2FzDQphbHdheXMgZW5hYmxlZCBmb3IgaWNlIHN1cHBvcnRlZCBk
cGxscykuDQpOb3csIHdpdGggdGhlIG5ldyBzcGVjaWZpY2F0aW9uLCBJIHdpbGwgaGF2ZSB0byBh
Y3R1YWxseSByZXRoaW5rIHRoaXMNCnNvbHV0aW9uLiBNb3N0IHByb2JhYmx5IGludHJvZHVjZSBu
ZXcgQVEgY29tbWFuZCBhbmQgbWFrZSB0aGUgc3VwcG9ydGVkDQpmcmVxdWVuY2llcyB0byBiZSBv
YnRhaW5lZCBkeW5hbWljYWxseSBvbiBpbml0IHBoYXNlIGZyb20gZmlybXdhcmUuDQoNClBsZWFz
ZSBkcm9wIHRoaXMgcGF0Y2ggZm9yIG5vdywgSSB3aWxsIHJlZGVzaWduIHRoaXMgYW5kIHNlbmQg
YSBuZXcgb25lLg0KDQpUaGFuayB5b3UgZm9yIHRoZSByZXZpZXchDQpBcmthZGl1c3oNCg0KPj4g
Rml4ZXM6IDhhM2E1NjVmZjIxMCAoImljZTogYWRkIGFkbWluIGNvbW1hbmRzIHRvIGFjY2VzcyBj
Z3UgY29uZmlndXJhdGlvbiIpDQo+PiBSZXZpZXdlZC1ieTogQWxla3NhbmRyIExva3Rpb25vdiA8
YWxla3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+DQo+PiBTaWduZWQtb2ZmLWJ5OiBBcmthZGl1
c3ogS3ViYWxld3NraSA8YXJrYWRpdXN6Lmt1YmFsZXdza2lAaW50ZWwuY29tPg0KPj4gLS0tDQo+
PiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcHRwX2h3LmMgfCAxMSArKysr
Ky0tLS0tLQ0KPj4gICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9u
cygtKQ0KPj4NCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2Uv
aWNlX3B0cF9ody5jDQo+PmIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wdHBf
aHcuYw0KPj4gaW5kZXggM2EzM2U2YjliMzEzLi40OTZiZDU4ODUyNWIgMTAwNjQ0DQo+PiAtLS0g
YS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3B0cF9ody5jDQo+PiArKysgYi9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3B0cF9ody5jDQo+PiBAQCAtOSw4ICs5
LDcgQEANCj4+ICAgI2luY2x1ZGUgImljZV9jZ3VfcmVncy5oIg0KPj4NCj4+ICAgc3RhdGljIHN0
cnVjdCBkcGxsX3Bpbl9mcmVxdWVuY3kgaWNlX2NndV9waW5fZnJlcV9jb21tb25bXSA9IHsNCj4+
IC0JRFBMTF9QSU5fRlJFUVVFTkNZXzFQUFMsDQo+PiAtCURQTExfUElOX0ZSRVFVRU5DWV8xME1I
WiwNCj4+ICsJRFBMTF9QSU5fRlJFUVVFTkNZX1JBTkdFKDEsIDI1MDAwMDAwKSwNCj4+ICAgfTsN
Cj4+DQo+PiAgIHN0YXRpYyBzdHJ1Y3QgZHBsbF9waW5fZnJlcXVlbmN5IGljZV9jZ3VfcGluX2Zy
ZXFfMV9oeltdID0gew0KPj4gQEAgLTYzLDkgKzYyLDkgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBp
Y2VfY2d1X3Bpbl9kZXNjDQo+PmljZV9lODEwdF9zZnBfY2d1X291dHB1dHNbXSA9IHsNCj4+ICAg
CXsgIlBIWS1DTEsiLAkgICAgWkxfT1VUMiwgRFBMTF9QSU5fVFlQRV9TWU5DRV9FVEhfUE9SVCwg
fSwNCj4+ICAgCXsgIk1BQy1DTEsiLAkgICAgWkxfT1VUMywgRFBMTF9QSU5fVFlQRV9TWU5DRV9F
VEhfUE9SVCwgfSwNCj4+ICAgCXsgIkNWTC1TRFAyMSIsCSAgICBaTF9PVVQ0LCBEUExMX1BJTl9U
WVBFX0VYVCwNCj4+IC0JCUFSUkFZX1NJWkUoaWNlX2NndV9waW5fZnJlcV8xX2h6KSwgaWNlX2Nn
dV9waW5fZnJlcV8xX2h6IH0sDQo+PiArCQlBUlJBWV9TSVpFKGljZV9jZ3VfcGluX2ZyZXFfY29t
bW9uKSwgaWNlX2NndV9waW5fZnJlcV9jb21tb24gfSwNCj4+ICAgCXsgIkNWTC1TRFAyMyIsCSAg
ICBaTF9PVVQ1LCBEUExMX1BJTl9UWVBFX0VYVCwNCj4+IC0JCUFSUkFZX1NJWkUoaWNlX2NndV9w
aW5fZnJlcV8xX2h6KSwgaWNlX2NndV9waW5fZnJlcV8xX2h6IH0sDQo+PiArCQlBUlJBWV9TSVpF
KGljZV9jZ3VfcGluX2ZyZXFfY29tbW9uKSwgaWNlX2NndV9waW5fZnJlcV9jb21tb24gfSwNCj4+
ICAgfTsNCj4+DQo+PiAgIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaWNlX2NndV9waW5fZGVzYyBpY2Vf
ZTgxMHRfcXNmcF9jZ3Vfb3V0cHV0c1tdID0gew0KPj4gQEAgLTc3LDkgKzc2LDkgQEAgc3RhdGlj
IGNvbnN0IHN0cnVjdCBpY2VfY2d1X3Bpbl9kZXNjDQo+PmljZV9lODEwdF9xc2ZwX2NndV9vdXRw
dXRzW10gPSB7DQo+PiAgIAl7ICJQSFkyLUNMSyIsCSAgICBaTF9PVVQzLCBEUExMX1BJTl9UWVBF
X1NZTkNFX0VUSF9QT1JULCAwIH0sDQo+PiAgIAl7ICJNQUMtQ0xLIiwJICAgIFpMX09VVDQsIERQ
TExfUElOX1RZUEVfU1lOQ0VfRVRIX1BPUlQsIDAgfSwNCj4+ICAgCXsgIkNWTC1TRFAyMSIsCSAg
ICBaTF9PVVQ1LCBEUExMX1BJTl9UWVBFX0VYVCwNCj4+IC0JCUFSUkFZX1NJWkUoaWNlX2NndV9w
aW5fZnJlcV8xX2h6KSwgaWNlX2NndV9waW5fZnJlcV8xX2h6IH0sDQo+PiArCQlBUlJBWV9TSVpF
KGljZV9jZ3VfcGluX2ZyZXFfY29tbW9uKSwgaWNlX2NndV9waW5fZnJlcV9jb21tb24gfSwNCj4+
ICAgCXsgIkNWTC1TRFAyMyIsCSAgICBaTF9PVVQ2LCBEUExMX1BJTl9UWVBFX0VYVCwNCj4+IC0J
CUFSUkFZX1NJWkUoaWNlX2NndV9waW5fZnJlcV8xX2h6KSwgaWNlX2NndV9waW5fZnJlcV8xX2h6
IH0sDQo+PiArCQlBUlJBWV9TSVpFKGljZV9jZ3VfcGluX2ZyZXFfY29tbW9uKSwgaWNlX2NndV9w
aW5fZnJlcV9jb21tb24gfSwNCj4+ICAgfTsNCj4+DQo+PiAgIHN0YXRpYyBjb25zdCBzdHJ1Y3Qg
aWNlX2NndV9waW5fZGVzYyBpY2VfZTgyM19zaV9jZ3VfaW5wdXRzW10gPSB7DQo+DQo+UmV2aWV3
ZWQtYnk6IFBhdWwgTWVuemVsIDxwbWVuemVsQG1vbGdlbi5tcGcuZGU+DQo+DQo+DQo+S2luZCBy
ZWdhcmRzLA0KPg0KPlBhdWwNCg==
