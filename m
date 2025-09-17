Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C509FB7C576
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Sep 2025 13:59:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BA28E84163;
	Wed, 17 Sep 2025 11:23:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bUKCxzDzARIW; Wed, 17 Sep 2025 11:23:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 33B6184166
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758108224;
	bh=voqu5PJU9mHwBpbhv/ATABB7rr4zFMAqF6hsQOWreeQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DrZ8AMXPpYqecg6T98lQwok2kybdGBcrSfI5EM7hzvdnVVrd/EdRUziDrLrAZYnB4
	 BUW8e6msO5W8Nz2I8wQJfqoEKCvmqDxdTheSrc+o/at8SHqJUdxsKGB426OKl+GVZL
	 2RcT5lduQZFBbFfulTGzOI2LKso+BrcPW1b7ilBXwt+Kwh91DcUCsxm7p9eZvCyWlJ
	 Sj3LKAa53fWJYebzmhT1BSUaJECJMYMG+67hzT4R3wQm8jcfCnmGUtpZosLONZTbwk
	 TQfPWfXRADj/Hj9X1eUy6iJUQYKdDt5F1lexXoxivyRJNlAHvk+aQ3frE810krpEfg
	 JNlSVtKuyPPBA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 33B6184166;
	Wed, 17 Sep 2025 11:23:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id AD131279
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Sep 2025 11:23:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9268F84163
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Sep 2025 11:23:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xaKZxtJunl6Q for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Sep 2025 11:23:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9BC0E822FC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9BC0E822FC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9BC0E822FC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Sep 2025 11:23:41 +0000 (UTC)
X-CSE-ConnectionGUID: cjED0TDMR6aoFSdgBLv5jA==
X-CSE-MsgGUID: opG/wHpeQo6zl3SSl30TPw==
X-IronPort-AV: E=McAfee;i="6800,10657,11555"; a="59630307"
X-IronPort-AV: E=Sophos;i="6.18,271,1751266800"; d="scan'208";a="59630307"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2025 04:23:41 -0700
X-CSE-ConnectionGUID: rwtWZXhQTvqYc96KrU/mFQ==
X-CSE-MsgGUID: KVkXE5QKRtuepAuGq78nag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,271,1751266800"; d="scan'208";a="212368960"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2025 04:23:41 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 17 Sep 2025 04:23:39 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 17 Sep 2025 04:23:39 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.63)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 17 Sep 2025 04:23:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jeYMWzyjKHSdXNLXmCX6TF+srzz4W+MQcasjxU9pDgI2gm2V0rTAjVTEv90u63uY21t/lE96GLHg9hFpeZeJEzA9LpvEQy9SzPmnQpMvTpD73lyWQjR1P2MCyZd/WED3E9w6TzMdcORXKbT1VqV/cws4xDy/NXC5+/zvHbNFVbFI8V/4iSSQMlV7TMym4G+lyws9lOhbumm9F0Y3phIFPnArNCdF6Z/EgHpucepUwnd8mgmbivr0b8VzDhEBSyYIRsX9y4C2fF8hMqDI94oKSffhnsatngkwkI12U+ehxalVxFT7Oqc3PvERoyZycvYOc9cv5J0fIGQPqC1ZSqw7Bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=voqu5PJU9mHwBpbhv/ATABB7rr4zFMAqF6hsQOWreeQ=;
 b=vBBHummlZX/tRZRH6AQHeagym9myjEpK9gpeZnclapq/nPkV58TpWZD0mTqV397Up0seEvUpSzn9i3q467TEgZ3RDsKZ6TrMvTyhWuio1G7n+OE/j8Ew3FyhhvepvevcIjCqL0+Eb9x8BiT78jl7p7xGOm59OhkEcdCYJ84ofjG91SZuPS04htNak+xE+64/1ILuBx/b6Z5wRDUPdk+P5bln58OGWA1xo1poiP/8jjrJqmgeW6NAqIHri/oAQjch3BQGPGZ7SFn4K+Z0TEMjTXJQdpsFkN9wM3h4j2pWHA2CXEtYG9Cm1bgUMbs97wj6sFsCynuXCeyGTz3POH8fyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS7PR11MB6062.namprd11.prod.outlook.com (2603:10b6:8:75::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.23; Wed, 17 Sep
 2025 11:23:36 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9115.020; Wed, 17 Sep 2025
 11:23:36 +0000
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
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 2/5] ice: implement ethtool
 standard stats
Thread-Index: AQHcJz6Ru62Oa0NmMUmItbXUhhmFbbSXPGgg
Date: Wed, 17 Sep 2025 11:23:36 +0000
Message-ID: <IA3PR11MB8986DA0C7AE66D6FE5AA6444E517A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250916-resend-jbrandeb-ice-standard-stats-v4-0-ec198614c738@intel.com>
 <20250916-resend-jbrandeb-ice-standard-stats-v4-2-ec198614c738@intel.com>
In-Reply-To: <20250916-resend-jbrandeb-ice-standard-stats-v4-2-ec198614c738@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS7PR11MB6062:EE_
x-ms-office365-filtering-correlation-id: 65299243-ae07-4305-1773-08ddf5dca505
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|921020|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?NE1IUTBLd1hTMU82STkrMC9MNjQ5UEZReEJzK2VBaW1wTk16M3dDRTNHSFA5?=
 =?utf-8?B?bTE3blErOWhnVE1HWlNreGtlNUFBODlJM2l0S0Zzd2xNZlArS2FFTFJka092?=
 =?utf-8?B?OE85aS9ldTh6ZGtLSXFaaTVoR0gycEtyRUJ6QTVXNEozTEFOZ3JMWVdIVElo?=
 =?utf-8?B?a2NMRGY1T1NaSHAyamFMVElvWmIwOFdWRmE0K3RLb3YxQmY0VkxadnN4M21J?=
 =?utf-8?B?NkRUU2o0aWp5QlgwMCtWTVJOdkFhdXpkbWFWSVlIVDZWS3dnYm9hNDh0N1VX?=
 =?utf-8?B?cFFtKzlDck5DQzYxbXd3cjRTT04zaG9VVXdlVCtZUnU0VlA0NmdXMFovZUhC?=
 =?utf-8?B?OTVjbmtkNWwxQWdrNUJvbGlaSERxbWtNQXdIb2RQOUhwaWZNRXVyWDRXOXdy?=
 =?utf-8?B?OFFGbkxmZkxNaFlkaE9yb0h4bVpzZFE4VHFpWk9OUFlZcWRZYWlkQlFtdW5h?=
 =?utf-8?B?RVRJMVphUWxONHlQeGhQQ2tqYkNnMG9PQXBSRUZDU3lnVWI5YmZoazBCMzRX?=
 =?utf-8?B?QU9NQk9sQlN3dmhBTEtEME96c0RRR3hEU25FaE9mS0h2WXhZeEhiNlJZZW9D?=
 =?utf-8?B?VGJuM1BqMWNxSXdISTFxYVcxNFVzS1hKR0FtcHZRM253WXJoZkwvcFc4WVJH?=
 =?utf-8?B?S3hSanlDdUJQOFNmTUVXdWwvbWttaG5qSGlQbHZFeWY4cWpaU1MvUGY5VmVQ?=
 =?utf-8?B?Qnp5eGdpa2FQZ2hFTGZMd0JZUFIwRFV6OUhtM2ZvME92WVkremwybFcvdERC?=
 =?utf-8?B?NlNpbEZLUUgvUzkvTkNqY2hFQzl6RjV2NEQ5WlM1anBRSzZ5OGtaWjFjL21W?=
 =?utf-8?B?eDFPc3JlYzJFUEgxTjE0dWZoRXp5cDk1MmMxWXMzZmQydjRhMTNJOGZaeWIx?=
 =?utf-8?B?TGs0aUxjMDJMNGJSelBNQ21XaVRWODJsc2E3eFJZRUo3STdrQ21FTFl0bWNM?=
 =?utf-8?B?NmlZMXlOeXBLTTBjSW52di9kSGxiVXVuMDVkbFliazgrMXhYRDRldUY4NGha?=
 =?utf-8?B?VmtsNStCTU1lSWt6LzVDY2k3aXhhdmxZQ3pqendPSUh3cWZXWVBQZ0VOc1JP?=
 =?utf-8?B?T2x2S0ptU1YrNk9EaGlTNGdCQ29TMlhxSFhsWUs5RFdZTXZ5azRmOUtMTFV2?=
 =?utf-8?B?OWxTVlUrSks3b1UrTmM5eDljQ3FsbVRvSVZCdkFJM3NOdDB5YnQyTC9JcHQr?=
 =?utf-8?B?UmRCTTFHOVFBaDIrVm12L05qalkxc1RuQzc0d0xsc2tZNXpmRlFxZDZJR0hx?=
 =?utf-8?B?Y3pQYmNHRTFXdkJ0NGZzOFlucks3aUZGSGZCQnlyL1gyN0RwUFJoSHEyT2k2?=
 =?utf-8?B?bE1LbUl3NmZQemNyYnBpRDBnbXdvVXZSbjVhZWo0QUhZY2ZFSWxwc3E1MnZX?=
 =?utf-8?B?d3B4RFkyU253cU53Y1VWUldlVHhXY0xUVmxteXI1WU9KWnA1WHRGc1RuaWdJ?=
 =?utf-8?B?dE9vcTF1eFBZM0FJMzhMT0NsMWtMdS9aYTBtZmRKaUJCclEyZ1FhTDUyODJF?=
 =?utf-8?B?d21hS3JrTk0rVVJaaDVHaVdyUlJpQ0FjZTVkZnBIZEUya1dpS1g0bE9XR0k3?=
 =?utf-8?B?a2tpOXJYRWZZN1Bub2FOc3ZSYzNwanZHNFVOaEhaTUV4R3NMS1U5SzEvcDZR?=
 =?utf-8?B?MG5Vd3VXY0h2N0g2ZzcxR2RlU21WaytGTnlDTit6bXNlbElpUWdJZzlFMC95?=
 =?utf-8?B?UDdkcHZVdXJZM0NDeGgwaThFcjhNWUNYN2M5TkdpRjlYdEU1cHoxRzU0UHgv?=
 =?utf-8?B?aGFLSzBiMHcwdUdxMi9taDlNTXlKY25teTJlVDJMcVZmZlMxUXZWMktQcmw1?=
 =?utf-8?B?dGU1bUorUlI1dTZKME5XRXRMb3Z0S0lybUpMMnAveXJMaCtnN3lXbU0zOEpi?=
 =?utf-8?B?UnpaN0VvTFVkTnBiZWV5SmpWMUxyMElUZmhpSUtGVS84UXpwMFJxNlJsd0ZT?=
 =?utf-8?B?YmFud1BZUEZLeE14U1U4UFVxMThZVGNJVFdsd1o5TXQ1OGZEYzRwUXg2RGwy?=
 =?utf-8?Q?1hNLy/By0ynq7sGoD9v/N2Ju9TjU2Y=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(921020)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TjVmRUdrWmxUZFBMTWV5SWRFdHpZaTFXTmRZS1g0YkV0eWNpT2IzRkxFTWtZ?=
 =?utf-8?B?MUVHZnFuVExrN0RFeU0yTjRYOGJvSkt4UmRsSGxMNW81Y1FTQWdOSnNqS3F3?=
 =?utf-8?B?L3ZqU04ySmNzV3pPeXZ1OW5qWUo4cW1jRjhoN2duWHpoQnJ6Sk9HRlZzakdF?=
 =?utf-8?B?bExhdHlLWisxSzBrVEVBZjdMNk5sNVRRZTZ3VHROaHlHNkZLQW5pYks2OHpk?=
 =?utf-8?B?cXMrSnJGNjJlTTF0VGNlRFdJaVRWNXByNHlvRUJ1V3hJdm54amRuek01NE5B?=
 =?utf-8?B?U1h6TFV3Kzc5L1JhckROYnpxZFg3VFZzZ1ZwMU9jdnhQTkFXYVNXYmR5ODVP?=
 =?utf-8?B?dUd5UXRwZldXbUdSUGNROUVLYktJV2JVM0UyVGQrNTJVVWJINVZ0U01mblVZ?=
 =?utf-8?B?S2hQVGl5U0Irdkt2L2hlcjY2NS9nN1VEaUorandaa3BpMm5abVVyL1pKR0lu?=
 =?utf-8?B?RXYzRDg5MmtBRnMwTUMxQ1ZVRFpwZm1TUEpwZXhmV1o0b2F5aVN5MlhkaE51?=
 =?utf-8?B?R09xZjN0OTc2YXFGRzdnaFNJVlhZTUtnckF5N0RPb0NPZHJhU3JQVWFsOVc2?=
 =?utf-8?B?T0FwNGQvSVBWSTR2NEZNMVpwYlgwQ1BLZVA3Ni81M2dpYjNmbFJubkFDUGt2?=
 =?utf-8?B?blR6UUxqOTJUS3dpOTFKNWQxcGFsUFpSWXE1SFNRNUVhVTU3ZUsvbGlxSTNL?=
 =?utf-8?B?Tk1ZVCtlWjg3bU1SK2ZnNkVLcW1VNXdRQXNPa09PSkt2VUw2bHhHWnJkaFl4?=
 =?utf-8?B?azhnSDNzMXZPL1FkYkpVV2k5MTVSUkN3MUc3L0RBQk03WlNjOUEzSlZXZ1ZS?=
 =?utf-8?B?azgrT1NLSzQ3a1I1Q1FFdGRZZER5dVIxQ0kxZU91MXJSVUdTQzZhNTE0WDNP?=
 =?utf-8?B?UFZrY2FWODFUMHc0OUVqcWVFdGVxdEpOQ3VhWld5QUdxbG16WEo2ZGZETjVB?=
 =?utf-8?B?TUt2Zk9PMytOWlkrYzAxTW1zUE84VThPdHQ1dEJxSFQ5TzQxaXVIMWVvWlRE?=
 =?utf-8?B?c2cyT1V3V3lxUzl0RlhPVTFEenNqT0t6eDU3Q1NXMjdyVnIvWXcwdjQ4Qjdi?=
 =?utf-8?B?bU0xSEZ5VlZYZkdrOWRhR2ljYTJTVExEalNHMFV2SUcxQ1U2YVlFb2xmbVhE?=
 =?utf-8?B?S3Y5ZWZmNUZ3ZjVrU09TbjcweFZBSDFOVjhTcHFlTnVGSmk0YzBnNHl6dEJZ?=
 =?utf-8?B?N3Bpa2cyOWFpdDF4VW13U2kra0RxT2dsWktkOE16M2JzRlJBVTBmWXhscFFG?=
 =?utf-8?B?QytwVUIyUmJCNEkwUldUUENhdGtBMTVhSUpsMkw5Z0c5eldCWUh4QmhKZ29z?=
 =?utf-8?B?MnNuVytmODU3Q3FkWmU2M3RCS3gvMzh6VVBLTzYwYkVSN0I5NXpQd2wzZVFE?=
 =?utf-8?B?Nlc2bjZVMUVsYm5GSUFIOTJYVjl3TS9lWUtkSWJyeTJtcm1xZXFIajJkR0gv?=
 =?utf-8?B?RUpzNkRPRmh2UUM5eWNhVFozQnhHOGdER3ZiN25vTHhaYWRWOFFkbjVCSVhD?=
 =?utf-8?B?WXNMZkhuTlZib0RGaWJwOU1PdG5XeCtYRDRwZlRnUWYwaUl2TTlIQkhWS3pG?=
 =?utf-8?B?aWY5ay9RNkNXZ0EvNnMxOCsrOHhNNzBWQXpOeGxIcmtOQWlPOC9WSkZLWHBy?=
 =?utf-8?B?VDVTd2ZNMHhzNGVSUU9HZDh5b2lGNlZHMmFiZUdrQy9WZDBtMzJxSU5SZDVM?=
 =?utf-8?B?bVFzWXFzeWdqVDR0Sk90a2xmampNc055L0pUQ09FNG83R1NqbHl5MDdpYWdV?=
 =?utf-8?B?TlQyVkJ4QnhvbytQdGQxdVp3dDB6ZXZ4TjBPTmxoenZRaTBsbk5iY2FUTnJJ?=
 =?utf-8?B?TWsrOGZJZFFaZDcwRWFmQWtyYWhCUDh5VUJLUCtTdWQrQjRuV3FRMzlDeWZJ?=
 =?utf-8?B?ZGJvNEJtNWRMdTBTdUNnRmZocW1Tbm5YajA4dVlsZWRreEZYaHhaMUcwU0Ny?=
 =?utf-8?B?M2RWTzVqTlJ4WU5EQ2FVL0R4bWhTQlRZakQwOTIrWlFQS1RIQVd2cjh4K3dQ?=
 =?utf-8?B?Z0V0UE5rd0cxWEtVdXhZT083TnloRG9ISVpNSjJCMGlrendhOGN0NUZGNWMy?=
 =?utf-8?B?R2RXQWlOWTRSandxVmVIVnBiMGY5bTBCMm1jak5jMXh1TmJtVkRlZ2dmNjhH?=
 =?utf-8?B?L1VmaWpPOVdFSEhMSXAvUFdKeEpSN0svZ05EMjVKTlJnbGJTQ2hBdG9nQk8z?=
 =?utf-8?B?MlE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 65299243-ae07-4305-1773-08ddf5dca505
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Sep 2025 11:23:36.6440 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: C+IrbmU0AoX4CJqCVIJi9+QzZxTOpIjkw7hole+TI8aN44mD0dEt+DfHFsh+UYQ2H6xjDYtfnD5XZY2vMxGoUIcF0fQ0ubpDTEEp2v2WNL0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6062
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758108221; x=1789644221;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=voqu5PJU9mHwBpbhv/ATABB7rr4zFMAqF6hsQOWreeQ=;
 b=D8ycMrGVmMQsblGUL9TkVOLrB/6aNXxitGWktgsXM01p81HJG9NA6MW/
 oC690TWseKeOY1BjgZGimEKUpnFIyoXahlcNicHD43rFKnQxlhC2W7YBc
 Qv433oN6X1RwuqLA4wV71HfOdyPk517A7nAkd90cfBFgvYDau5F+uxB/D
 0as0TuqvE4AHbcGf6QxAwaBY2QqJJWyQ8SyvPDGqmk4U7PlBsncNb+tnK
 hMyiQFvGqjhTEhaOwh6bRU14BCLyVQ0uemBWdvMLF9LThtqRlqHaKmQP0
 JALt37AVmpJbkwbvDTOJxqQryaVXzVrMxlIKEBtc6MS+4KvUsl7phREeI
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=D8ycMrGV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 2/5] ice: implement
 ethtool standard stats
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
LmNvbT4NCj4gU3ViamVjdDogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIGl3bC1uZXh0IHY0IDIv
NV0gaWNlOiBpbXBsZW1lbnQNCj4gZXRodG9vbCBzdGFuZGFyZCBzdGF0cw0KPiANCj4gRnJvbTog
SmVzc2UgQnJhbmRlYnVyZyA8amVzc2UuYnJhbmRlYnVyZ0BpbnRlbC5jb20+DQo+IA0KPiBBZGQg
c3VwcG9ydCBmb3IgTUFDL3BhdXNlL1JNT04gc3RhdHMuIFRoaXMgZW5hYmxlcyByZXBvcnRpbmcg
aGFyZHdhcmUNCj4gc3RhdGlzdGljcyBpbiBhIGNvbW1vbiB3YXkgdmlhOg0KPiANCj4gZXRodG9v
bCAtUyBldGgwIC0tYWxsLWdyb3Vwcw0KPiBhbmQNCj4gZXRodG9vbCAtLWluY2x1ZGUtc3RhdGlz
dGljcyAtLXNob3ctcGF1c2UgZXRoMA0KPiANCj4gV2hpbGUgZG9pbmcgc28sIGFkZCBzdXBwb3J0
IGZvciBvbmUgbmV3IHN0YXQsIHJlY2VpdmUgbGVuZ3RoIGVycm9yDQo+IChSTEVDKSwgd2hpY2gg
aXMgZXh0cmVtZWx5IHVubGlrZWx5IHRvIGhhcHBlbiBzaW5jZSBtb3N0IEwyIGZyYW1lcw0KPiBo
YXZlIGEgdHlwZS9sZW5ndGggZmllbGQgc3BlY2lmeWluZyBhICJ0eXBlIiwgYW5kIHJhdyBldGhl
cm5ldCBmcmFtZXMNCj4gYXJlbid0IHVzZWQgbXVjaCBhbnkgbG9uZ2VyLg0KPiANCj4gTk9URTog
SSBkaWRuJ3QgaW1wbGVtZW50IEN0cmwgYWthIGNvbnRyb2wgZnJhbWUgc3RhdHMgYmVjYXVzZSB0
aGUNCj4gaGFyZHdhcmUgZG9lc24ndCBzZWVtIHRvIGltcGxlbWVudCBzdXBwb3J0Lg0KPiANCj4g
UmV2aWV3ZWQtYnk6IE1hcmNpbiBTenljaWsgPG1hcmNpbi5zenljaWtAbGludXguaW50ZWwuY29t
Pg0KPiBSZXZpZXdlZC1ieTogSmFjb2IgS2VsbGVyIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+
DQo+IFJldmlld2VkLWJ5OiBKYWt1YiBLaWNpbnNraSA8a3ViYUBrZXJuZWwub3JnPg0KPiBSZXZp
ZXdlZC1ieTogU2ltb24gSG9ybWFuIDxob3Jtc0BrZXJuZWwub3JnPg0KPiBTaWduZWQtb2ZmLWJ5
OiBKZXNzZSBCcmFuZGVidXJnIDxqZXNzZS5icmFuZGVidXJnQGludGVsLmNvbT4NCj4gU2lnbmVk
LW9mZi1ieTogSmFjb2IgS2VsbGVyIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+DQoNClJldmll
d2VkLWJ5OiBBbGVrc2FuZHIgTG9rdGlvbm92IDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNv
bT4NCg0KPiAtLS0NCiANCj4gLS0NCj4gMi41MS4wLnJjMS4xOTcuZzZkOTc1ZTk1YzlkNw0KDQo=
