Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 588308BC6C6
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 May 2024 07:30:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5593C4069C;
	Mon,  6 May 2024 05:30:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VNyOfbqcB7Eu; Mon,  6 May 2024 05:30:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2C40C40689
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714973440;
	bh=u6t3znJITSw4gJgoGijZtcS789TtJi1x3HnETegTVd4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=c9MzhidXfcu9RUqVIhYOslGYb9pyeoe1XRBGlLeIYC/lfubS+W5no0lxQmX87w8OU
	 o07rvt+UBTgf7qaJ+TIfyBMq15lN6bwwzLMh437pIepetugZU+yFutuS57RFnUP862
	 qqzetBuTW/9KcvVMOEnqEUF3kNeGnAe/QVeOwHgl/OujPcJQe0sS14GOCuhWYec3EM
	 +ddeDERE4ajGvpc8jTZn5MquO8uWAkMYcixgD9Un4e+5rYMME78sRiUW/HO+L4pgbi
	 nupXJVvbLXVxkHhn4ZA5043vNZEBupGr1ZQ4zTN/CFO5qj6Rfeowmtsg3UB42eiYWI
	 QySGcH3ew+m5w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2C40C40689;
	Mon,  6 May 2024 05:30:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7EB131BF28E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 05:30:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6924E4067D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 05:30:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id K6ibmhps9uCr for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 May 2024 05:30:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C17054067B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C17054067B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C17054067B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 05:30:36 +0000 (UTC)
X-CSE-ConnectionGUID: dEhYdX5zQs+b0yRsbxCu7A==
X-CSE-MsgGUID: 5Rav66lCSwqJdFegcVH6Lg==
X-IronPort-AV: E=McAfee;i="6600,9927,11064"; a="10555382"
X-IronPort-AV: E=Sophos;i="6.07,257,1708416000"; d="scan'208";a="10555382"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2024 22:30:36 -0700
X-CSE-ConnectionGUID: H0EpSzgiTZaZs18rjbTVtg==
X-CSE-MsgGUID: qcuN3OBgT2eGYlmzX6dvMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,257,1708416000"; d="scan'208";a="58928797"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 May 2024 22:30:36 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 5 May 2024 22:30:35 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 5 May 2024 22:30:35 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 5 May 2024 22:30:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UT5+RhOvScvcwnzb1nd/ZkavZ/uLq4v1vAJBelTiJ7lJNyZENBkDLqZWcP/6g4bOiW4KAat/ELuSfCX7K0UwsZDBwTjTlDyehtBn05f1MU9CoJcOQD3Q2FgfM02DdX9CCgUkOXOrdrvf8/ZyUhd4LIaEC5lAcDGC3X+f5w1j7KWXAjV+RWvvMzmjXh5OZkYfKHvVnoVYN80jhv7AC1jpqI9r3Ua0SmGg5UdAZ/voGGiiaxjBECgbQi+xqC+pY4sLubfE7uFXx5kBNvmplg/bABlhfEmM1MNcjJTK4WHEfdte7MEM9tru6hcNbOGtXcjISQsSpSmUOvHTKyeLZDyeMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u6t3znJITSw4gJgoGijZtcS789TtJi1x3HnETegTVd4=;
 b=VIoUNo5rY70S013NShAJvyTWAr8pzdEQ+luVGorqZui172Anoc9PhCTTmbJDa9FkqbziCBTszWQnZWRtmkhm1lCfZT29VP9MEnTMECYvpKJWgilVh2b4ZiziX9Wk8OZJz4dSlxwfTALoGnm9BQeoGHJcggjXeNxebJIbl+2e0U6aMccnPmkZXooCAYoRRfvXcx4V9DlyJBqg1CFFUilKYfStEowpMFsBG+nZZkeDV2Yw+zX52qyXavq3yplvOYAkbMNA7LWO7GwVD6VrklYO2ey8c9pQ9amtiufreR52uDoDZL7bdVgGPHiQMYmlTBdBTM0fkoQ/2zxjfbHtVaud+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by BL1PR11MB5255.namprd11.prod.outlook.com (2603:10b6:208:31a::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.41; Mon, 6 May
 2024 05:30:33 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b%3]) with mapi id 15.20.7544.041; Mon, 6 May 2024
 05:30:32 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: =?utf-8?B?QXNiasO4cm4gU2xvdGggVMO4bm5lc2Vu?= <ast@fiberby.net>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] iavf: flower: validate
 control flags
Thread-Index: AQHakA4MjiZvoVMaDUCrpkkDdlp28bGJy8Tg
Date: Mon, 6 May 2024 05:30:32 +0000
Message-ID: <PH0PR11MB501366480345AB20618700D1961C2@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20240416144325.15319-1-ast@fiberby.net>
In-Reply-To: <20240416144325.15319-1-ast@fiberby.net>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|BL1PR11MB5255:EE_
x-ms-office365-filtering-correlation-id: 8048049d-9344-468f-6dec-08dc6d8da5e4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|1800799015|376005|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?NHpHM2hZeEVsQTE2ZGhDeDVnL2xQME9mWWsxT2VwOGNNNmxSek93K2FSN2hk?=
 =?utf-8?B?SWdIWlQ2TXU3Q0RFU1Z2dyt3MUdJN3o2UXlsT3RUWUQ4RmhyK2ZrelVLcHJi?=
 =?utf-8?B?WWVpQ204OFlpZ1pTekdybzF6QkVPbCt5bnhMNVFuTEIzRTBGazdibkIwanFD?=
 =?utf-8?B?SkRKUGFDaWlZTXlvbE1NY2hObTM0SWhQMXd1bTA4cWtRVFVHZGdKRWFIVyt6?=
 =?utf-8?B?Y005Mi9xVUtEeDIyTjMvMlZYR3ExbmtBUkZhaEN2TzBxSmNGSzNqek53WGlX?=
 =?utf-8?B?bW5NMm90NHBtSWNORVA3Q0JmVlBRVjZXTU5La0NiNjFrc1hObWtadXZNZTF0?=
 =?utf-8?B?TU1OYVlOK3E1K2Y3NFlUeTNEVGxoRTlpajF1RFZrbmx4eXBPYmx4cTNNZm51?=
 =?utf-8?B?clViV0dKeUxUQzNUNWhpSEV6S3R2UkY5SVZHZ2VXSFNvTzFiUUc5NllnV3N0?=
 =?utf-8?B?UEh6R3dPR3VtV1kvV0s1ZmlDSUFUWnRNUzFyYXNiY0NhaWphZnRMQ0Ivd0VQ?=
 =?utf-8?B?ZW92NVB5UnVCRWU1QXdzRUo1dlR1cno5UkprbHk1VWJOOWdxK092bHdNQ2lV?=
 =?utf-8?B?QStMTU56VHRmL1ZxMHpIVnUvYUtFdmZYZ1BVV3NvSmVpa3JQcitiQVBicDBz?=
 =?utf-8?B?ZmVSQnhFcU1UNDFNL3hFTFhmVGhOWVdvK3JKV0FicElZeVo5ZGcyRmR5T0Jy?=
 =?utf-8?B?a3MyWjVnekk3cHRqVjJxOWVFcjlFZFNkTGFHRXNwMWhxTjlaeVZlOUNHcTlY?=
 =?utf-8?B?Z21HT3pxa0VNZ3hmd2ZxNXhEWHFwbTVmTUNxbk5UZTFKVXpIbGNpYWRrdDNS?=
 =?utf-8?B?YUlhaVZiZjFTc2dnR0IvWWswRS9uNGdRV1IrUUF3YVF5S2xpbFh2Si9oQ2VY?=
 =?utf-8?B?SmNKUm14b0ZtbDZBbmdwNS9HSG8zSWZ3RUp2UElpVEllbFQ2MFlRZndGSjlU?=
 =?utf-8?B?NGtETm5SQjB5ckQycVQxQlBielplajJyWndIWWdRUGtldVM3bGZPK0lBSGRI?=
 =?utf-8?B?dmVybUZtY2tleWxBYVJUR2EycFp0dXpxaEVuZDgxMDllcUxhUEczMlhPMGtw?=
 =?utf-8?B?Q0FTWnNWUFlTVndpN29vTzNPeW9XUXFxK21OL2F5ck5QaXRoWi9ZT3QyYzVU?=
 =?utf-8?B?bG1FL2FveEdJdWI4cHk3TmVNVWx3cGhuc0djZTJDOEV5SU5aWDNMYnN1SytB?=
 =?utf-8?B?Uk5oUDlReFk3NU1sRzRvSTJMSkRlNHNsdXFFdkxJSzUrSFZ6a1Rld0xTMXd4?=
 =?utf-8?B?YnNYZG1SZmFuL3MvYmE0NEVKUlY5RlFjcklGdWIrN1lQM2ZNa1UySS9GK3NL?=
 =?utf-8?B?aitoRmJJOVR0M2x3UEYxc01wdHQ1R0hUVzRnNm40NEphRkpOUDVza1BwRzAw?=
 =?utf-8?B?MjBwMERDTDJGMU4rcVd6cThiOGdBNWpiek13UWdxTC9vQjQrQWlmS2UyTnpW?=
 =?utf-8?B?WW9GSU53STJacmpLbHRUZzhBaFp3bWVxTGJrYnMwUEdCUVB4c0t6c3RQRjZ1?=
 =?utf-8?B?eVNrWkdmWldyRXJZeCtIZ3c3bWc5WGFjVVk0Sm9UNkswSzhCb2xlQWxWMVk3?=
 =?utf-8?B?Q0FzTHdmUW9jcmZwRnBMVkIxRnJkaDJpeU1jbExKVjNlQkt4KzlVcHFJQUlN?=
 =?utf-8?B?SHlEZmZpbjRmYm9ENmh1cUNsQjNlcUZGcGNDR2E5bkk0dklONEtlaGM5UDR3?=
 =?utf-8?B?bXdNdHFHTTdrVnFGM0hmNEdEVmNaSnpTa2R5YSs3QlcxQ1NmRmtST2dCRU5y?=
 =?utf-8?B?YmVTNGdWODd0MTZUV2VZZ1h6dHM5dWUzS0FVbjhkM0FSOWlObVVTWnJzTnJy?=
 =?utf-8?B?dGtMU3pwNUh0bzY4YURzUT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MUNxV1lZRTNwa09EZDJuZEtCa2FmQ2NRMURYSHN4R0hTT0RIV0p6eEFDU1pp?=
 =?utf-8?B?MlI3dDRlajZzb085d01RY0pRL3hPOGN6cE9yUUdCQmFqQTI1VFFkSGhVUlB3?=
 =?utf-8?B?czBRcWQ5b2tmandxZDdwS3Q2ZkRPR3FyYWp5L3pYL0RHcGluaGJSU2xmQk9j?=
 =?utf-8?B?QllYT0psOHdod0R3aUVsbG9ET0FKaVFqbnl5VTVwZkZKSVZWdmYzSHMwcnB5?=
 =?utf-8?B?UC9kVlM5VjlDN1ZGWHNyNFRUSXUzczRmOHV1OHlQdnd4VjVYRGw2SWhYSEN4?=
 =?utf-8?B?VkgrcXhhRXpPOVZNdkZFV21JRHNmRzQwZnpMdUZCd3FsMXBaM2IyOCtNVy8v?=
 =?utf-8?B?NXhZZFBQV3o0T21XWFpMSTdoY1ArRU9CSkxuVG4xTm91S2NhRi8zT3ltUHlZ?=
 =?utf-8?B?ck1TMWJVZ3Q3RmdKU0pYSU5zZHVTWHpzaXl4ZnNtVC81bjhWR3NyNWdFdXAz?=
 =?utf-8?B?UWxqWFJXSDJ4NWlkRlpONEszbkhqUUxkbWg0TURnSDJYWTFsamtmblVlTHVu?=
 =?utf-8?B?SVRiQWRNWm11cDJqTVBNVG1NWHhQVG1OSE8wR1l1UzlDdkROY21sQW1ZTUY5?=
 =?utf-8?B?L05kelk3NDB6MGI2SDRVaThsZFRiYlJROS9QVGNlTk9MUFpTeU9udlBTZzJX?=
 =?utf-8?B?Uy9Gb0JYNTh3V28vdURGUkFGNE9pN0xDRkt4Rll4cHRzVVJReE14aTE3NnlS?=
 =?utf-8?B?SFkwK0w1QXFNRjBNODlJa0pOMit0eWJ3ZU1VRDNCVzNXb1RJUkdVSDdmRGEx?=
 =?utf-8?B?ZFJKTlVqNG1NRVRZa3F1ZkJEb1o2dFFyOUg0Qko0QURWRTZ2V0lCSkVQcnpQ?=
 =?utf-8?B?WHlLc3hweVJFYVVXVXd4cGM2eGIyMmpBbElOVHJVTlhEUnJYWUp2OVRENTZQ?=
 =?utf-8?B?Qis3RDhWRzhrQkZERGhGL2V3a3gwWjE4K1Q1cW9iOTdaakJ3VWc0VVlqdDg5?=
 =?utf-8?B?NTN4bU16dzFta1ozLy9LL00xS05rY05Tdmh0ai9kelM3ZXdHckdXZmxtQ0FE?=
 =?utf-8?B?UHRIcGRwaGZwTG5uWWpFcmRGSzNOMnhmb25UU3ZrdWVjeUROTDlKZ1ExK2l5?=
 =?utf-8?B?K2hzUDBlTEVIYzRoTEFleHcyMWNCYXZjVnZpdmRwSkcvakdzbXFqcldWd2hT?=
 =?utf-8?B?c1FEOHZlMUhsVnpXbE1xN3hQSzJtZ1RPeUFXVzNzcjFoL2xMZ0J6eHQ4TFZk?=
 =?utf-8?B?WkovTmlhcXlmbnlveGZaeFBJVkJWZ21vRFdHTXBobEdYRFVkL2pJekFSS0Ey?=
 =?utf-8?B?RTlMMlJyMzI4ZWpiZmJBcmJQMExPZ1ZBNm1qeFVLSkRlWmpTQ0V5djM3QVU4?=
 =?utf-8?B?b2RWaDV3RzkxbmdpVS9pdXdVSFQ1ZENvK1JiNCtVRUNySXNkNW5pd2oyZk0r?=
 =?utf-8?B?R0lPbXJIbngycXo5M1ppcXU2VlNJQzJlQmQwOHdFOGdkQzZTWitHTU9zanhJ?=
 =?utf-8?B?cm9KUFRhMmVSRVRZV2oxUXQ4TU1xd3pnNWRGdTJ4QS8rUFNqMWxYQWJhUWV6?=
 =?utf-8?B?bXg4djVvUmdpUEh1OFVJYXJoMzZLVXVlOERIWHFjTU9QVUJ3TjNFV1NOYU5i?=
 =?utf-8?B?dnRvQkZNS09JRksrWERTa3JMU3RXaWNXMXZtaGpLUVhvWWpqR2lXK2ViK3di?=
 =?utf-8?B?N1paQmt5NlprTGJqL1NUdis0NUtsNitsMFNVODVjRU5XNW9oN0p1Sm4rRFRz?=
 =?utf-8?B?VEl3YkRtQlZ1dnlRVnhRTlB0Tll3alpHSkZBMmJQdjlrTGVBbW9jdGk5L25Z?=
 =?utf-8?B?c2NyaGdvRmdKWkFGZDA3Mm1LMjlRV0tEbnR4VDdUS3c1Vkh1czJMTlNyM1or?=
 =?utf-8?B?aERQOSt3SFlvNlZlcjEreXM4L1YyeEYvVmltNDE5ZW5UdzVJM0xJYkhoYVU3?=
 =?utf-8?B?MWpKelN6ajBjZS9HMk8wOXppMFJBWEZwNWU0blJ3NEN4dVZya1FYcWpUL1RD?=
 =?utf-8?B?SE9FYkYwbkNoWnUzVllUNFQzYm1paUZ5eE0zaG56alBWZnRiUG9QZWxEMTZx?=
 =?utf-8?B?eEdHZ2lqSFoyNTFtcWhEOE1BN1c0RDVaZ2FuUFNRelVwVDFTNitKWkNFK3RV?=
 =?utf-8?B?SE9WblVoTlpuWXlGdElqRThmZklLbEFQU3J3K0JSL0dxMTJCbEwzdmdBZXps?=
 =?utf-8?B?SldPQStIcng0Q2M3djhNVEozeDlYUkxoWVByamVmWEVwelBabFo4UzlhRlRy?=
 =?utf-8?B?WkE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8048049d-9344-468f-6dec-08dc6d8da5e4
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2024 05:30:32.0223 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: L4tEAPxLwrvXKoO4ukPkcJUMw+3iJuCsWf9Mh2NSu/OSTJJsEHD6opE65CQCc0XvL2wh4PWgoo8e1waNBXZYUOgwKJIf2JHgfcoOOCB1+9k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5255
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714973437; x=1746509437;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=u6t3znJITSw4gJgoGijZtcS789TtJi1x3HnETegTVd4=;
 b=k9sORbRmCOg9oa0DmPS9WDMoz3vNvPskLJYa2PgIHhpjWaoBYyhxMGC+
 +eEYZYh/8Ddw1zuflj8I52ESlZo59vtrk96klJ9YXOTUjalGhFt/do7rv
 SmnXTJxvSNFzl9H8oawKBzXsaO3PwG8UZH2JZxGt7lVsZF1oyt/8C/80I
 TXx4lqybxvi0WGzhi5W1rhfo4PgLSSkh8ZlFGsZuHuaUqlFYq+XV1rwRQ
 Y11OCLDr7L0bWahNtNtPyNpXYrpHfsyyHAQOhO0A8rn/JctnDHURIokXp
 KJxpq5ICl7BIaSzWnPXm/7QfLrGBjDlnJe11mCh7M85+fsUnqg3IxYj2P
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=k9sORbRm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] iavf: flower: validate
 control flags
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGkgQXNiasO4cm4sDQoNCkhXIG9mZmxvYWQgaXMgbm90IGRpcmVjdGx5IHN1cHBvcnRlZCBvbiB0
aGUgaWF2ZiBWRiBpbnRlcmZhY2UuIFZGIHRyYWZmaWMgY2FuIGJlIG9mZmxvYWRlZCBvbmx5IHRo
cm91Z2ggVkYgcG9ydCByZXByZXNlbnRvciBkZXZpY2Ugd2hpY2ggdXNlcyBpY2UgZHJpdmVyLg0K
DQpbcm9vdEBjYmwtbWFyaW5lciB+XSMgZXRodG9vbCAtaSBlbnM1ZjB2MA0KZHJpdmVyOiBpYXZm
DQp2ZXJzaW9uOiA2LjkuMC1yYzUrDQpmaXJtd2FyZS12ZXJzaW9uOiBOL0ENCmV4cGFuc2lvbi1y
b20tdmVyc2lvbjogDQpidXMtaW5mbzogMDAwMDpiMTowMS4wDQpzdXBwb3J0cy1zdGF0aXN0aWNz
OiB5ZXMNCnN1cHBvcnRzLXRlc3Q6IG5vDQpzdXBwb3J0cy1lZXByb20tYWNjZXNzOiBubw0Kc3Vw
cG9ydHMtcmVnaXN0ZXItZHVtcDogbm8NCnN1cHBvcnRzLXByaXYtZmxhZ3M6IG5vDQpbcm9vdEBj
YmwtbWFyaW5lciB+XSMgdGMgcWRpc2MgYWRkIGRldiBlbnM1ZjB2MCBpbmdyZXNzDQpbcm9vdEBj
YmwtbWFyaW5lciB+XSMgdGMgZmlsdGVyIGFkZCBkZXYgZW5zNWYwdjAgaW5ncmVzcyBwcm90b2Nv
bCBpcCBmbG93ZXIgc2tpcF9zdyBpcF9mbGFncyBmcmFnL2ZpcnN0ZnJhZyBhY3Rpb24gZHJvcA0K
RXJyb3I6IFRDIG9mZmxvYWQgaXMgZGlzYWJsZWQgb24gbmV0IGRldmljZS4NCldlIGhhdmUgYW4g
ZXJyb3IgdGFsa2luZyB0byB0aGUga2VybmVsDQpbcm9vdEBjYmwtbWFyaW5lciB+XSMgdGMgZmls
dGVyIGFkZCBkZXYgZW5zNWYwdjAgaW5ncmVzcyBwcm90b2NvbCBpcCBmbG93ZXIgaXBfZmxhZ3Mg
ZnJhZy9maXJzdGZyYWcgYWN0aW9uIGRyb3ANCltyb290QGNibC1tYXJpbmVyIH5dIyB0YyBmaWx0
ZXIgc2hvdyBkZXYgZW5zNWYwdjAgaW5ncmVzcw0KZmlsdGVyIHByb3RvY29sIGlwIHByZWYgNDkx
NTIgZmxvd2VyIGNoYWluIDAgDQpmaWx0ZXIgcHJvdG9jb2wgaXAgcHJlZiA0OTE1MiBmbG93ZXIg
Y2hhaW4gMCBoYW5kbGUgMHgxIA0KICBldGhfdHlwZSBpcHY0DQogIGlwX2ZsYWdzIGZyYWcvZmly
c3RmcmFnDQogIG5vdF9pbl9odw0KICAgICAgICBhY3Rpb24gb3JkZXIgMTogZ2FjdCBhY3Rpb24g
ZHJvcA0KICAgICAgICAgcmFuZG9tIHR5cGUgbm9uZSBwYXNzIHZhbCAwDQogICAgICAgICBpbmRl
eCAxIHJlZiAxIGJpbmQgMQ0KDQpSZWdhcmRzLA0KU3VqYWkgQg0KDQo+IC0tLS0tT3JpZ2luYWwg
TWVzc2FnZS0tLS0tDQo+IEZyb206IEludGVsLXdpcmVkLWxhbiA8aW50ZWwtd2lyZWQtbGFuLWJv
dW5jZXNAb3N1b3NsLm9yZz4gT24gQmVoYWxmIE9mDQo+IEFzYmrDuHJuIFNsb3RoIFTDuG5uZXNl
bg0KPiBTZW50OiBUdWVzZGF5LCBBcHJpbCAxNiwgMjAyNCA4OjEzIFBNDQo+IFRvOiBpbnRlbC13
aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZw0KPiBDYzogbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsg
bGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsgRXJpYyBEdW1hemV0DQo+IDxlZHVtYXpldEBn
b29nbGUuY29tPjsgTmd1eWVuLCBBbnRob255IEwNCj4gPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwu
Y29tPjsgQXNiasO4cm4gU2xvdGggVMO4bm5lc2VuIDxhc3RAZmliZXJieS5uZXQ+Ow0KPiBKYWt1
YiBLaWNpbnNraSA8a3ViYUBrZXJuZWwub3JnPjsgUGFvbG8gQWJlbmkgPHBhYmVuaUByZWRoYXQu
Y29tPjsNCj4gRGF2aWQgUy4gTWlsbGVyIDxkYXZlbUBkYXZlbWxvZnQubmV0Pg0KPiBTdWJqZWN0
OiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0ggaXdsLW5leHRdIGlhdmY6IGZsb3dlcjogdmFsaWRh
dGUgY29udHJvbCBmbGFncw0KPiANCj4gVGhpcyBkcml2ZXIgY3VycmVudGx5IGRvZXNuJ3Qgc3Vw
cG9ydCBhbnkgY29udHJvbCBmbGFncy4NCj4gDQo+IFVzZSBmbG93X3J1bGVfaGFzX2NvbnRyb2xf
ZmxhZ3MoKSB0byBjaGVjayBmb3IgY29udHJvbCBmbGFncywgc3VjaCBhcyBjYW4gYmUNCj4gc2V0
IHRocm91Z2ggYHRjIGZsb3dlciAuLi4gaXBfZmxhZ3MgZnJhZ2AuDQo+IA0KPiBJbiBjYXNlIGFu
eSBjb250cm9sIGZsYWdzIGFyZSBtYXNrZWQsIGZsb3dfcnVsZV9oYXNfY29udHJvbF9mbGFncygp
IHNldHMgYSBOTA0KPiBleHRlbmRlZCBlcnJvciBtZXNzYWdlLCBhbmQgd2UgcmV0dXJuIC1FT1BO
T1RTVVBQLg0KPiANCj4gT25seSBjb21waWxlLXRlc3RlZC4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6
IEFzYmrDuHJuIFNsb3RoIFTDuG5uZXNlbiA8YXN0QGZpYmVyYnkubmV0Pg0KPiAtLS0NCj4gIGRy
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl9tYWluLmMgfCA0ICsrKysNCj4gIDEg
ZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfbWFpbi5jDQo+IGIvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX21haW4uYw0KPiBpbmRleCAxMzM2MWE3ODBlY2UuLmYxNDM1
NWQ1MmY0NyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9p
YXZmX21haW4uYw0KPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZf
bWFpbi5jDQo+IEBAIC0zNzU3LDYgKzM3NTcsMTAgQEAgc3RhdGljIGludCBpYXZmX3BhcnNlX2Ns
c19mbG93ZXIoc3RydWN0DQo+IGlhdmZfYWRhcHRlciAqYWRhcHRlciwNCj4gDQo+ICAJCWZsb3df
cnVsZV9tYXRjaF9jb250cm9sKHJ1bGUsICZtYXRjaCk7DQo+ICAJCWFkZHJfdHlwZSA9IG1hdGNo
LmtleS0+YWRkcl90eXBlOw0KPiArDQo+ICsJCWlmIChmbG93X3J1bGVfaGFzX2NvbnRyb2xfZmxh
Z3MobWF0Y2gubWFzay0+ZmxhZ3MsDQo+ICsJCQkJCQlmLT5jb21tb24uZXh0YWNrKSkNCj4gKwkJ
CXJldHVybiAtRU9QTk9UU1VQUDsNCj4gIAl9DQo+IA0KPiAgCWlmIChhZGRyX3R5cGUgPT0gRkxP
V19ESVNTRUNUT1JfS0VZX0lQVjRfQUREUlMpIHsNCj4gLS0NCj4gMi40My4wDQoNCg==
