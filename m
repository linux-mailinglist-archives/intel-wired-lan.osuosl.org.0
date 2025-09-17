Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B0C4AB7C94D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Sep 2025 14:06:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0B06040E8F;
	Wed, 17 Sep 2025 11:24:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Z7JxSFSoXOl5; Wed, 17 Sep 2025 11:24:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6F2EA40E84
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758108257;
	bh=zMH6cYzgn+3yzW8MGRICrKLSDoTuQt1Fs7BxZ0RVvvg=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AN/sKUbFQ2VNS6I/ggf5IRPzI74B1SNGEskzccWzwRP4kvTgpda+70YCq0taoVVt2
	 LtUzMLOzqSj/bt9RZLAJWP9shMmN5F6nK29SaUmXFzZ4pD3/DhhjGid2L1zK8rK4yb
	 MB/JW3c2/nSohM1roeYDOwAlKD/nRPFfs7aYXvGzJR4ENhw6LU3rd3UIpw6hKuFbeq
	 8Pv5SDVvOqWtV+KR750Nn4ByDxeCO5Cj5M+/hrhkUJ0oTBoWj+Qe9AVk7w+RcJQejW
	 lB25aMmOy21+U2I1un/WqDMrkZwVNQVDTZ4zB/HFWK45ik4yBpLniC2PpD+Sf2s0Tb
	 vMF4G7ux39Kog==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6F2EA40E84;
	Wed, 17 Sep 2025 11:24:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 56D4F279
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Sep 2025 11:24:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4878B404C4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Sep 2025 11:24:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Kok4kibPnOEj for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Sep 2025 11:24:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8B6AD404C3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8B6AD404C3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8B6AD404C3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Sep 2025 11:24:14 +0000 (UTC)
X-CSE-ConnectionGUID: BUXFAKoXQaWUWcCSMDUaqg==
X-CSE-MsgGUID: iNqfru6HQ2WI/WiWQONCow==
X-IronPort-AV: E=McAfee;i="6800,10657,11555"; a="85850422"
X-IronPort-AV: E=Sophos;i="6.18,271,1751266800"; d="scan'208";a="85850422"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2025 04:24:14 -0700
X-CSE-ConnectionGUID: m1ZrvhjxRiel/r+FMgj43w==
X-CSE-MsgGUID: fuwKNFziQwu8L2rY0XGMkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,271,1751266800"; d="scan'208";a="175140260"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2025 04:24:13 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 17 Sep 2025 04:24:12 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 17 Sep 2025 04:24:12 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.0) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 17 Sep 2025 04:24:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=B/Z+DHOyNJ098fqLZ1qflHMVuuBTnnfqNUBqgYn7uQzXN5a7wSX20QfNxQlbheJH+hy2gnbbnp5QQzuTBTGJ7dlADgLFsewgDdwjdCZUd1V2YOOX6uzhIzHiFqzb7kHR+GHQv8z+kkM0wa/gw8i4mYgESEhErKzDpLsH9r90kB3/N1N5qBJ5917WE5QtGyRJXhm+AgkyrKMRz44cS2dZQ8uzOgVHGQXGOeOa0/Es3fcNL8dHxTU4tY6kvWPmlDNO0aQa+ByUfAX7pck0XhUfa1PvsKecZrIRGX7F/9zL7XhHtKdFaSDCWaq/5IiW5Eps+/BqlWaevpeaXlN2NsPliw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zMH6cYzgn+3yzW8MGRICrKLSDoTuQt1Fs7BxZ0RVvvg=;
 b=JSTPUwgeptwjjd0GdhFD8rrpavEzrM+UgP9hROFxy4h2Tl9ierW+o73EMC3gyIP+A5aBx0z2Y94kkd8nCJvsPWLo5qTlzXdsxoIcDJYO3V3UdjGy0+XZ4PxhnOtVcpxrH6vdSD3MnVPt7OQbfvX7ERX+VJlXjmr6t8nB9h4yh9G/bEqqx70XtkiM6ecBByZhg+3bTSiSPG2xmYwGSwovrmtTI3yDBivIwBpOKyTsFFfphNugN24w8f66anq+tnDwM9X2rCk9hWb2X+24Zf8qg/zm0qO/CqhkwWd0SemOp3z1sutwwS9XkScb9Ks2QFri6XgJOZ5Mrqq5SSg0D6z8Jg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS7PR11MB6062.namprd11.prod.outlook.com (2603:10b6:8:75::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.23; Wed, 17 Sep
 2025 11:24:09 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9115.020; Wed, 17 Sep 2025
 11:24:09 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Brandeburg, Jesse"
 <jbrandeburg@cloudflare.com>, Jakub Kicinski <kuba@kernel.org>, "Hariprasad
 Kelam" <hkelam@marvell.com>, Simon Horman <horms@kernel.org>, Marcin Szycik
 <marcin.szycik@linux.intel.com>, Rahul Rameshbabu <rrameshbabu@nvidia.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, "corbet@lwn.net"
 <corbet@lwn.net>, "Keller, Jacob E" <jacob.e.keller@intel.com>
CC: "Brandeburg, Jesse" <jbrandeburg@cloudflare.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 1/5] net: docs: add missing
 features that can have stats
Thread-Index: AQHcJz6IJSsmMJfu0kaGSF5cz+R0nrSXPJrA
Date: Wed, 17 Sep 2025 11:24:08 +0000
Message-ID: <IA3PR11MB898689F419ECEB356FD3313BE517A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250916-resend-jbrandeb-ice-standard-stats-v4-0-ec198614c738@intel.com>
 <20250916-resend-jbrandeb-ice-standard-stats-v4-1-ec198614c738@intel.com>
In-Reply-To: <20250916-resend-jbrandeb-ice-standard-stats-v4-1-ec198614c738@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS7PR11MB6062:EE_
x-ms-office365-filtering-correlation-id: 1b7ee7be-7939-4bdc-6138-08ddf5dcb851
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|921020|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?N1FEMWNIZDFhSGdsMVM3R2V0RU90eHJ0eXMyY2c5RWl6eVV4aThHMDJtY3pn?=
 =?utf-8?B?QitTL3pQZzNvY2dkYlVUT3pLMU9yNjRLSm5sY2VyQ2djTnJDQ0J1R2oyWStT?=
 =?utf-8?B?MXZoYlIwMXI1bm1OZEpsWTd0aG1kRXJoRTdvRko1OXlJbzF5dXkvSHg1ZDdv?=
 =?utf-8?B?VytRb2NWVWRYRVJvMDFpU1o3UmY5Rlgxak0xaE5nOFpkNjBwQ2diS25GUG1v?=
 =?utf-8?B?UDVYWCtMcEdQMDNNdTd3TTZ2aW8vbGpkaHo5RWg3dU0ycTZ6UVI2UVRRazlP?=
 =?utf-8?B?ZUNhajczc2hxZ0lIMjNpVTBCUWJkSEJWay9ydzNJM2FuUGxiYmFGcEFsbWY3?=
 =?utf-8?B?eFJYbm04Z0RrZFlWYTRXSXhpRGozWk1nMDJUbHdOVkxyVCs4ODZQcjN4TDlF?=
 =?utf-8?B?MWRsZmhmMmtOdmdSTzN4YmZqazJockZycnVCY2FxRG5YSmgrNVZnRUdKeFBY?=
 =?utf-8?B?cWx1aWE5UGgzOXBoVzNnL0lzanV5aXlmYy9uTW1vdG4zSDBFWDVaSWlTNHJ6?=
 =?utf-8?B?ZmorRWZ2RHRxdkI2QVB1QWh4WjlhbERjM24zcHY3WUxxN0J1SmVJb3JyR1Z1?=
 =?utf-8?B?aXpMam12d1JTR3VSazNVQVgxMC8zVzlZaUpmWmJCdE4xdW9WQ0ljamlyMjhl?=
 =?utf-8?B?dGNTNXVFcDVEVkwxZXBvTHo5di9zcWhFQmUwWHJGMzM2WEVnRk5GWmVTWFFY?=
 =?utf-8?B?WDE4a2VXZkM1WnNyTVluY2F1TTRtcGJhU1hMWlZ2TkJlU0c3d0VEeXFwRHF2?=
 =?utf-8?B?d2RMRmV1U3c4bkN3RUNuUGIwMkRUYk9uTXNYNTVWODZ2MFlCUUw1d3FQVFRo?=
 =?utf-8?B?aElTRm5nOUJTSThCZHFvSWMxWnRqc21ITW0vYjRLTFZDUUFNUUNKNytKdWxP?=
 =?utf-8?B?RCtJL3dUMkh5emxCbTlFb04ya2RPNGtVQnVWeHdxbDN3Sm5qN0prOUROTjhh?=
 =?utf-8?B?MHdnRkQ2SG5DQ2hqb0Zud09pT3pRaWdnT3JhS2xPcXQySTRtSG1sSXpwTFp2?=
 =?utf-8?B?R3VkUFhHelp2aHR2ei9pV04wbkF5Q2x5bGFYejM1ZmdRbGNjQkVqSWtyTElk?=
 =?utf-8?B?TWRCcGZMZjJuVU5GR2dLM0lmWE9SZ0tveUVtazE4Yjc3aUhZZXB5OUpTdy9E?=
 =?utf-8?B?czh3WlhkOHd3WVdJcGdOL1F0RmdkWG9sdG5KQ2RrV25aZkZzaEs0V09xNlk2?=
 =?utf-8?B?eVJybEtYdVZlZ1lDR1NSa3AvS1lKdVJ1QTRtS1pqQk1JQnV0UTlraEk3SGlu?=
 =?utf-8?B?K1F4K1owK1U5WVdIeUhQMDRKdE5BdDVmQUFUbFFxWjgzbnpOdVg1cjU5REwv?=
 =?utf-8?B?cXkyY2JORTAzYzl3SkhMdk4vUDdwNXZ0cFFOdHJSU291VkRLektyVGhrM3k5?=
 =?utf-8?B?c01ZeXVVMXdLRS80SWNjWHYwYUd0eFVaOHZyYndBcmpqSFZkNENoSWEyb2xQ?=
 =?utf-8?B?MlYydWk4N0g1c2JCeWdPK1JjUHRQS2EzaWRMMHJtaEZlQjRPeStsTnNRKyts?=
 =?utf-8?B?L0FxczNUZWZXSTJMT09oNkxTUHFKOVBzRWFOOFY5d1poNDFMNVR4VHltVmhp?=
 =?utf-8?B?L21QbGtXU2Nta2N4VVJabjNmSytaMFpQUldtdnd5aGhYMVBabDg5MXhJVkRP?=
 =?utf-8?B?OEdjRUZGeFQxQkJWbEpOTnBwZE1BUFVJNzVvSGp6YXdHMjJrV0ZvV2R1OVNY?=
 =?utf-8?B?QW1UL05yeE05VWhqRStCdzNrMkt2NW56K2thM0pYN2ZJL0ZmTVdmVUEramwy?=
 =?utf-8?B?Zk41bUdKSlpIVGVLUVpvN1lVZFZZVEJyZUsxL1JIUEk0Rk9rNVRJaVY3YklM?=
 =?utf-8?B?QmU3WUdlK1BLUDRIbjhiOXVOd3FtM1liWnN2VTVVUXNyZ2ROeDhTVTdodXpF?=
 =?utf-8?B?eE1BbWRITlVIVlM1OXdVWXpqZThZdkIxSmtzbEh3R1gzOWJVRlg1UEZnTXU5?=
 =?utf-8?B?Q2YxNHJZd0wzWHAzazZTUXFVL2lhM0xDd05ucXQ5UG5QWFdYZEVqR1ZxUmxs?=
 =?utf-8?Q?sDIziBHpWnj+i8YIV8buau8Nt2+qVM=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(921020)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TW5taUdMdUFDUzlTUVEya0RaMG5aRGJBbFl2MUdnYVArYUYvSjBGV2cxTVg0?=
 =?utf-8?B?SmNPQXErRjc2M2pidytWVXFGemVVR2pmcTQyOVdwOFlKeDgxVmZvZVJWRmZW?=
 =?utf-8?B?U1hvTjV5WG5Db0hhUi91cUkvM1EwZGZMekhDNjZ0amFiT1loQkltOGU1ekNL?=
 =?utf-8?B?SUhuRi9kZ1dWR1FVOFpxKy9mM0l4TE9BY291eTZvbjZ1V3ZKV3B3ZFBDekhj?=
 =?utf-8?B?VEM4ZjVVcGVrNCs0TWkzV3dZQ2NSYWZRVmRZd1JONFJCdGlNRWNJNisrWEEz?=
 =?utf-8?B?enU2WGR5NjdMd011Y2hJdHdaS09XR1JNcUJNTUF5VWZsMjhMazZaNXF3V0lr?=
 =?utf-8?B?MndGUWtmZlNsNFFJcUJ6NkgzSjNiNE44NGtKdjNESHNMQkREOU1LNWJFTDRG?=
 =?utf-8?B?Uys5K3NhbHlScG83dDF6dTA2UmE2TXVlbjZNVXJhYWlLSDFsNk42TEZOTmZG?=
 =?utf-8?B?UjdRbTZZRlg5dE1DTnN6WE10Sk9UY1Y0UUFQdEQ4TlozWDFBTTBjcGRlRWh4?=
 =?utf-8?B?VmtLQ1Y1Z3FIQzRENm8wU1dnUi8yeFYrYXF6QlkveExaUGJ2ZE54MUcyTTc4?=
 =?utf-8?B?Z3RZNHJIQVFieFRaZnAybzRQNExicXEyd3lVSGVBMm5oTEpZRnJYc0RCUC8w?=
 =?utf-8?B?aDBoMVBKL3BaZDgyNDY2YVhDQmI5c1NtU3pNT21MN094MTBCdXpLb1RrMnBy?=
 =?utf-8?B?ckp5ZnRKMDh4b2hoR3ZlbnZ1YXNJUHdBS1VZa3BGeTBBUlFPM2JFSU5YdG9V?=
 =?utf-8?B?UWYzL25uWE0yRmFNWnp2NU9TZnhMdksxeVFvSlF5Z2hYM0tWTmVvei93QWpY?=
 =?utf-8?B?Ujl6alFJVzhUWGFvZGJqMzJiWGpqVmEyNGNOQnZKNXVXU2syMVpTTnpFaTR1?=
 =?utf-8?B?TGluNXVOR1UyYi9aQjRTWGJYV3g0VEF2U1MxSGxNMDRlcUlDVXVCOC8wVHVv?=
 =?utf-8?B?a3dLdHIyQTZpdGtFWitaNHlWaGR2QmxnMjdIZjdLT01qRlRuU2tDMXlBZXBz?=
 =?utf-8?B?VVl5QkExd0dHZHVVUi9tSnllc1U1MXptY0FnQklyazNvblBSL3R4SVdIT2tM?=
 =?utf-8?B?bldiZnBHcDVqNU9rOHE5N25jMER0amIvS2lsOG1tNS9OdVVQTkRmQ0k5UFZG?=
 =?utf-8?B?T3hvQjYwbHlZL3RMUmxlb3QvLy9NNmNxaDJOdWQveS9FVTY4UnJ1Qm5YbCtW?=
 =?utf-8?B?V3NzWGhhNHBVakNwTjAvclhnUURadEZVdjExV1NnKzZGRDdSLzlVYmUvcXQ5?=
 =?utf-8?B?NDBHWnRVUXFtc0d5a24xeVN5VmIvZWFMY2FMTG1oVjV5NFlXdHNFT3FXTmIx?=
 =?utf-8?B?a0NUS3p6VkpTeHNGd0IyWS84SnRjVE1RRjk5Wi9BeFQ1ZUx2VFUyTDhZYXJK?=
 =?utf-8?B?eTBxTFBhYVdxdVJ5ODJIdG91M01EWEsra05oaTVKbU1mUytPUG5CTDRsQWs1?=
 =?utf-8?B?UE0rMXFpOFovNk1laUgwRzJLdms0MExBVGp6NlVhemVzSGlMQWNLcXF0ZEVo?=
 =?utf-8?B?UDQwV2ZkNmRXUWxyaWpYOW91Mlk5Tm92ZWFrTHh3SXBKQXN4dXgwTEI3VlJU?=
 =?utf-8?B?VmdueWlZSG1aRlRXNnl6NjFxdjZxa2dQN2hNaHFhYk02UDZxRjVBQ3JmQjdn?=
 =?utf-8?B?SWo4aFFqY25nanpkQ1Q5RFhDWHVrdnYyQTVLcy9oT0Q4WUJ0VGFpRllPa2RN?=
 =?utf-8?B?K2dFcHA5ZVNNTUtCODJSNndxaDVOb01HYkpFc1BLd1ZodlVFWHIyMyttVW5I?=
 =?utf-8?B?RlFVcjV6VmFEb043eWV0QzhHR2hQUFhlR3VtRVFwaXJhcTZ3bEN6d09QeXVs?=
 =?utf-8?B?U1NMN3FNNGd2a0UxZFlwSU9Va1U2WDhOT1ZVYVRoTlRqeEVDSW5XRmhHRVB6?=
 =?utf-8?B?Q00zZUs2bTdYMkxJRjQzZXo2Nm10bWJvelJDUWRRbWNnaW5qQ1JUMjhFV1B4?=
 =?utf-8?B?TlpKSGJ4SmI1Y3BTVWZhMVJVNjNXV1liM0g4U2UzR3huRjVYcXNjQ244NXdH?=
 =?utf-8?B?cURGMm15dTNmbENTR1FOakdKMCtZRWdXNXNHVVBIWlZYMHNReEhSanViYWdr?=
 =?utf-8?B?NlRSUTE1R2ZaeWs4QThKN3c2dDJBWFV3U1UvYTBRZWhTZUFXMUtJZnlMNnBD?=
 =?utf-8?B?RTZIUnM2dWQrZ0tNdE9iZEFyMWd6K2NiU2JteW0yMm12UWdCOUxUVlNEdXF6?=
 =?utf-8?B?V3c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b7ee7be-7939-4bdc-6138-08ddf5dcb851
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Sep 2025 11:24:08.9841 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: U5pDWV4LTj92ZO7ydPkgNF81TJoSvEUmEq9KX/80dQ5XAkrUObTAQeYyjq98cXC7kuqc9UlKqU66gA19Q8lkrNvbEjcyL8tALHbjf06PqZM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6062
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758108254; x=1789644254;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zMH6cYzgn+3yzW8MGRICrKLSDoTuQt1Fs7BxZ0RVvvg=;
 b=YVDHSaCU6itv2iWlVBBwIlEpBKhkGFVYaClZ5Y8XIl0nNjUxjKq/ZJ/X
 pLRt/n1j+QF2sg5SzG6bErCU2h/Q+C4XNM7UdHGHfqEyLg0kzcZIhttJm
 XzQZUhgFVNzT0GicEg6u0qZ+7kMoR+XCPt0UlT5Snz4qvzQqpcokpgOF+
 qOw1RzPZnP70WMBsCiDM03c66/8hd6A3FVwgr23gp8MySXy2Y9lGN4yWf
 r/bc9jiofS4e8jLqGZAvK+pjIcSZIdmQ8ncxATo6cLlCZ5QXOzmEhlqG3
 sUyYRKdq3DEY9uulXkmTtcgErlVIDQschE38LJ+YmLfkYTMpIcjCBL2xz
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YVDHSaCU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 1/5] net: docs: add
 missing features that can have stats
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgSmFj
b2IgS2VsbGVyDQo+IFNlbnQ6IFR1ZXNkYXksIFNlcHRlbWJlciAxNiwgMjAyNSA5OjE1IFBNDQo+
IFRvOiBCcmFuZGVidXJnLCBKZXNzZSA8amJyYW5kZWJ1cmdAY2xvdWRmbGFyZS5jb20+OyBKYWt1
YiBLaWNpbnNraQ0KPiA8a3ViYUBrZXJuZWwub3JnPjsgSGFyaXByYXNhZCBLZWxhbSA8aGtlbGFt
QG1hcnZlbGwuY29tPjsgU2ltb24gSG9ybWFuDQo+IDxob3Jtc0BrZXJuZWwub3JnPjsgTWFyY2lu
IFN6eWNpayA8bWFyY2luLnN6eWNpa0BsaW51eC5pbnRlbC5jb20+Ow0KPiBSYWh1bCBSYW1lc2hi
YWJ1IDxycmFtZXNoYmFidUBudmlkaWEuY29tPjsgbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsNCj4g
aW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc7IGxpbnV4LWRvY0B2Z2VyLmtlcm5lbC5v
cmc7DQo+IGNvcmJldEBsd24ubmV0OyBLZWxsZXIsIEphY29iIEUgPGphY29iLmUua2VsbGVyQGlu
dGVsLmNvbT4NCj4gQ2M6IEJyYW5kZWJ1cmcsIEplc3NlIDxqYnJhbmRlYnVyZ0BjbG91ZGZsYXJl
LmNvbT4NCj4gU3ViamVjdDogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIGl3bC1uZXh0IHY0IDEv
NV0gbmV0OiBkb2NzOiBhZGQNCj4gbWlzc2luZyBmZWF0dXJlcyB0aGF0IGNhbiBoYXZlIHN0YXRz
DQo+IA0KPiBGcm9tOiBKZXNzZSBCcmFuZGVidXJnIDxqZXNzZS5icmFuZGVidXJnQGludGVsLmNv
bT4NCj4gDQo+IFdoaWxlIHRyeWluZyB0byBmaWd1cmUgb3V0IGV0aHRvb2wgLUkgfCAtLWluY2x1
ZGUtc3RhdGlzdGljcywgSQ0KPiBub3RpY2VkIHNvbWUgZG9jcyBnb3QgbWlzc2VkIHdoZW4gaW1w
bGVtZW50aW5nIGNvbW1pdCAwZTljMTI3NzI5YmUNCj4gKCJldGh0b29sOg0KPiBhZGQgaW50ZXJm
YWNlIHRvIHJlYWQgVHggaGFyZHdhcmUgdGltZXN0YW1waW5nIHN0YXRpc3RpY3MiKS4NCj4gDQo+
IEZpeCB1cCB0aGUgZG9jcyB0byBtYXRjaCB0aGUga2VybmVsIGNvZGUsIGFuZCB3aGlsZSB0aGVy
ZSwgc29ydCB0aGVtDQo+IGluIGFscGhhYmV0aWNhbCBvcmRlci4NCj4gDQo+IENjOiBSYWh1bCBS
YW1lc2hiYWJ1IDxycmFtZXNoYmFidUBudmlkaWEuY29tPg0KPiBSZXZpZXdlZC1ieTogSmFjb2Ig
S2VsbGVyIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+DQo+IFJldmlld2VkLWJ5OiBSYWh1bCBS
YW1lc2hiYWJ1IDxycmFtZXNoYmFidUBudmlkaWEuY29tPg0KPiBSZXZpZXdlZC1ieTogSmFrdWIg
S2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz4NCj4gUmV2aWV3ZWQtYnk6IFNpbW9uIEhvcm1hbiA8
aG9ybXNAa2VybmVsLm9yZz4NCj4gU2lnbmVkLW9mZi1ieTogSmVzc2UgQnJhbmRlYnVyZyA8amVz
c2UuYnJhbmRlYnVyZ0BpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEphY29iIEtlbGxlciA8
amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPg0KPiAtLS0NCj4gIERvY3VtZW50YXRpb24vbmV0d29y
a2luZy9zdGF0aXN0aWNzLnJzdCB8IDQgKysrLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0
aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24v
bmV0d29ya2luZy9zdGF0aXN0aWNzLnJzdA0KPiBiL0RvY3VtZW50YXRpb24vbmV0d29ya2luZy9z
dGF0aXN0aWNzLnJzdA0KPiBpbmRleCA1MTgyODRlMjg3YjAuLjY2YjBlZjk0MTQ1NyAxMDA2NDQN
Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9uZXR3b3JraW5nL3N0YXRpc3RpY3MucnN0DQo+ICsrKyBi
L0RvY3VtZW50YXRpb24vbmV0d29ya2luZy9zdGF0aXN0aWNzLnJzdA0KPiBAQCAtMTg0LDkgKzE4
NCwxMSBAQCBQcm90b2NvbC1yZWxhdGVkIHN0YXRpc3RpY3MgY2FuIGJlIHJlcXVlc3RlZCBpbg0K
PiBnZXQgY29tbWFuZHMgYnkgc2V0dGluZyAgdGhlIGBFVEhUT09MX0ZMQUdfU1RBVFNgIGZsYWcg
aW4NCj4gYEVUSFRPT0xfQV9IRUFERVJfRkxBR1NgLiBDdXJyZW50bHkgIHN0YXRpc3RpY3MgYXJl
IHN1cHBvcnRlZCBpbiB0aGUNCj4gZm9sbG93aW5nIGNvbW1hbmRzOg0KPiANCj4gLSAgLSBgRVRI
VE9PTF9NU0dfUEFVU0VfR0VUYA0KPiAgICAtIGBFVEhUT09MX01TR19GRUNfR0VUYA0KPiArICAt
IGBFVEhUT09MX01TR19MSU5LU1RBVEVfR0VUYA0KPiAgICAtIGBFVEhUT09MX01TR19NTV9HRVRg
DQo+ICsgIC0gYEVUSFRPT0xfTVNHX1BBVVNFX0dFVGANCj4gKyAgLSBgRVRIVE9PTF9NU0dfVFNJ
TkZPX0dFVGANCj4gDQo+ICBkZWJ1Z2ZzDQo+ICAtLS0tLS0tDQo+IA0KPiAtLQ0KPiAyLjUxLjAu
cmMxLjE5Ny5nNmQ5NzVlOTVjOWQ3DQoNClJldmlld2VkLWJ5OiBBbGVrc2FuZHIgTG9rdGlvbm92
IDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT4NCg==
