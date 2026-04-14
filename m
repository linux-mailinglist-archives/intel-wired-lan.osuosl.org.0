Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0LehA+Cf3mlrGQAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 22:13:20 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 336D33FE4CD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 22:13:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 147EC6F52A;
	Tue, 14 Apr 2026 20:13:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UL9q6f5BF0g9; Tue, 14 Apr 2026 20:13:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6EFB26F526
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776197596;
	bh=9D0C8iZMBpNB+u1F3YSOYXDSiNyJNNBbd/JY8Okvoaw=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rIAweBtFhyxAuL095Obn4vdwtX9vAOJAC6qVBTFVatVJHj4igfnvr5WFVXyIIwsDf
	 Lb/GnCKIl2jH9WJHuBB6zA6kgVtSBB/cS7mPhH8lV/DjgWJPcGIgqzxLw6OUQeqxn2
	 RnmFdPAZk4hRBh+3IROgLQTQH53ib1UkhYrBVaIZkl3FVoLdgNGALIvHv+Faiw3m+x
	 Giw/IklEaSJneCBtiTsQ0Tb4naxEGXY2dEXZt+WFjNsdntmKjwienkiudtjac8lHAi
	 gjmlwWbJM7l/mlMa9dsCw4QDyzlae6k/zVLQin//71MwGzTOjmoEfapW/l+L8I4nyt
	 p6zukoZsnojeA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6EFB26F526;
	Tue, 14 Apr 2026 20:13:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 7F717375
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 20:13:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7C0A984DF7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 20:13:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1LkDbH2hRrFO for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Apr 2026 20:13:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 80E93848CD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 80E93848CD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 80E93848CD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 20:13:14 +0000 (UTC)
X-CSE-ConnectionGUID: Diud46QgSfeEva9PPulPdg==
X-CSE-MsgGUID: 5U7EIuJxQy6WosZKgGRcCw==
X-IronPort-AV: E=McAfee;i="6800,10657,11759"; a="102626930"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="102626930"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 13:13:13 -0700
X-CSE-ConnectionGUID: 1/m8OWUlQEKJnfNHFhbN3w==
X-CSE-MsgGUID: U7lP4NBJTlS485VdvYAQaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="230119988"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 13:13:14 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 14 Apr 2026 13:13:12 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 14 Apr 2026 13:13:12 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.55) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 14 Apr 2026 13:13:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=b+H7E/5iCEXiiM8wwvWxp8iquhkY6ie942mH0Y3Q5OyaD0QHc9N22eD1m4Y5yr2Scj5LyO9q5eHjL7DmlD+jvmo/o8gHy+ZHlQAg4r9phbGHtS2B0CxgnuaLxrwPVGjxtkvs+/4dpCd3OvzQkc4dciQMyceD0mLfrS4NTPbOYB5+gqoq9kTcyWJCAItITDWO6yYAsFGtKwkzYdPc/PpCnrZshhZUdu8Tih/QNn1DhiVpyWhjoQhzf2g67igLVFNlKlYB8GBUPMrkbUBFG4EYZ91y+7GzASb/Uc7MElWoj/DRdEy1yAkL6PbFdJJYU8Qwul4QUpX+jjxLu8HGv+KCqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9D0C8iZMBpNB+u1F3YSOYXDSiNyJNNBbd/JY8Okvoaw=;
 b=aGttbfCt/hE9nD4XL4yEIrgbL8Nc/h3L2vFr3d5fowDYm85GRjQLEzVIsvXyUuvYfaJ0Bvar4tAkaF9bAxs5O+Fsz6jW3sYVXDA56xBoHm2Ef2QWytcBxC4EQ0tV6YCvd4bjnIIRGVIhe4EOaBTwhsf+H041kAcZl/R/LSFv5NwJ5jEh//35gZldLevC2Td/MH3ixY+9x72agBRu1i6qx/IYEwl+fblY0EsD0HataA8HdPdp2BAtMQw4GxdeSMwjac3lfWCKMnWaa5oQVkc9jqKy/Yclbfn5mw5kfQjY2EUCod6KGPFx0Y1aSFrnESWTrWx2oBiBUrNSDy2QqmIWSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7579.namprd11.prod.outlook.com (2603:10b6:8:14d::5) by
 DS7PR11MB7807.namprd11.prod.outlook.com (2603:10b6:8:e3::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9769.48; Tue, 14 Apr 2026 20:13:07 +0000
Received: from DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e]) by DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e%5]) with mapi id 15.20.9818.014; Tue, 14 Apr 2026
 20:13:07 +0000
Message-ID: <73a48032-e891-47ff-a0b7-22e3810d47f8@intel.com>
Date: Tue, 14 Apr 2026 13:13:04 -0700
User-Agent: Mozilla Thunderbird
To: Petr Oros <poros@redhat.com>, "Rinitha, SX" <sx.rinitha@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
CC: "Vecera, Ivan" <ivecera@redhat.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Eric Dumazet <edumazet@google.com>,
 "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Simon Horman <horms@kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20260213141651.2231124-1-poros@redhat.com>
 <IA1PR11MB6241B58FF425A8684CFAE7A28B50A@IA1PR11MB6241.namprd11.prod.outlook.com>
 <d74a9071-336d-4fec-a061-bf9a3a444678@redhat.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <d74a9071-336d-4fec-a061-bf9a3a444678@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4P223CA0013.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::18) To DS0PR11MB7579.namprd11.prod.outlook.com
 (2603:10b6:8:14d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7579:EE_|DS7PR11MB7807:EE_
X-MS-Office365-Filtering-Correlation-Id: 3d5723d5-c70b-4f9e-b671-08de9a623e3f
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|366016|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info: OmSaeccbE7CRIFLBwQH3koUXugDazpvMDAQGLeNz9x5ZepKRIbN789TJ0CtOJvJdYNgYt1bHc731OjsukEhl89XshEBv/s/VBeuozQU9VRzvvWhSGu6Oty0ShrxbI7WrJHGGtik9ccGOJgzIHFaGB2Rb33xVahNRtqk/7N/74I5PuI7gd7uGIMbOCnRKEDE4aAFdHuNx9Rsl/ZCOrnRmTW7pwkZQudFVX357g2Yfu7UTHGxBG38KaSjspLvz+fBbeZFfDGLEcp37pHaObIfvPYjc1YLgZkruOyZBM594n83/XAhIckPEvvQAW17D/efxB5gx5mFmvgF+wevYoZY470s7enu6Do6miYXXfJkBejhFrb4eMgvlYKw1A4H69e+rM0Qxp27dUJN1Vqhl1kUzNZ5EF30hs+ExHc3ehzn+uWyKD8e71iE3CYApn3+bFBEVkYVPbYwqo5igOms//BULfB+FJHHHwKg73YQGbM4di39cagJNXl/nyVJf8bHO/d6UCiLZGxN96FcOQLLI/Z7AtYTK4wIpyqXL/c33mwCk4FoaiQkwY+OVf5eg1H96vlivYq2/wbEe/+ubDBgLIdU0jNJuyOL2OWzYlkIVpnlrQTQIB4k8JIT7siDQjUWwhErdxsU1fp1JOUj/zLsNEWiqk74HnwVnOkX7WQc7aaPGSeoOe2GA0qDgZ/DDOJZF5PT3C1m2/v/CCImo5RbdCWOxGkyzwF4U8QKq0LhvAKlyM0g=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7579.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TURJUTlPVTAxT3d5amVjdkdPM3hSZjJJVEc4bitSWEsxZVVKVkRYSStuSnA0?=
 =?utf-8?B?VWJDK0FWOFRpZFUrTHVKMDlWVWRBSXVHcVVwYVlqTjFWaTRUT3F3NUorUENK?=
 =?utf-8?B?Y0tpVGtrNXJvdDFuYlVFbWhwWVgrQ284MWI2TTR4d0JzZU0zaU83dk8zc0dq?=
 =?utf-8?B?UlNOdVZKdGx4a2lqZnFkRG9hTGdBMmkzdkFTelU2VU5mODRYSEl3THdLNncv?=
 =?utf-8?B?K3ZhREhkZWZBM3NneExuend4S1Z1a3FUVlBPbXBXOXZoK2ozZjVHTnBuNFJv?=
 =?utf-8?B?eVFlMVExWVNnVGV4eTR6eXN2ZXYwMHBkakMvbFJsSVJvcFBKczlMSEZvZFlV?=
 =?utf-8?B?L0JmWXNDU3BCbWFEQzBnRVZ1eXhHQ3phQ0hXaHJPc2NDZGxoSnBzcElLaU05?=
 =?utf-8?B?WjVYMk1yaEw1eEFUNXh6c2FsQjFVcFVPems5Q1FSUUVzN1dGNlhTVWdZNzdH?=
 =?utf-8?B?MGFFRmdPc1h3RzU2bU9rYkRYbXZPSDRITWhRRHJ4dmpta1p5MlQ2MGZmV09T?=
 =?utf-8?B?S1dlVGNBaFJJVFFnQVZ4VzlMZWQ4aUdkdWppVVZRLzJrYVBKNXJuSXpDbEJk?=
 =?utf-8?B?TnhuRHIwR2ZwWS9ocmI1Q2JqNHdTVWJIRmY0d2NlUUxiN2w3MHo1ZW5yd29R?=
 =?utf-8?B?Z0RUTXUyQk1YaC9FRERwYVJodnpiSWpzUGJ0eTdOaVZ1Qk00bUVPSS84MkNy?=
 =?utf-8?B?RWMwa0duN3NrZWtEcjNMWDh0VmhjQmZwak0weVdETWtLemIzeTRMa0VBNXBC?=
 =?utf-8?B?ZFI1V3dLd09aY3NZaFdJQit4RDZiM3IvZTBQTHkzWENROGFZZU5PK3VHMEFI?=
 =?utf-8?B?Q2E1OWJCcDZQMEJicy9WUlZ3ajBlVlV1M0JyRFlZQmp0b0JKRVlZM1dScjlv?=
 =?utf-8?B?V2F1cGVBdVZiQ1J5ZDJtR0JIUERHd3BUVFVSek9OR3FrRHd3OHQ4aFhvMm0x?=
 =?utf-8?B?UUJpNjhXK2JVeENrNGN3b0RsNTVsRmpXcnd3UktoRW1SS0EwWFljaXNEYjJB?=
 =?utf-8?B?bkVYb0VYM29CaXJLVlVlN2c5eEFLMHprSUphQkVKQjM0dWRqWTArU0NnZmhl?=
 =?utf-8?B?V1p2TDljUGM2SUtKRGxpNWIxN1hYMWE0Tm8wOWE4TVdGYWtVZDJ0NHRmU01F?=
 =?utf-8?B?VTlOTjJ6SFJEd2ZuT0loOVNJalIwbHFkVWsvM2d1dC9DYk5lSHc3cXV6c1JO?=
 =?utf-8?B?blNvVEQ5L2lSOC9QUEJrL2JOK1NUbmIwVTYyZWFVWTAyZWtjRTNiVkdET245?=
 =?utf-8?B?QzNmNkZlMFQrZlkwME5ONkxOam50eHNnQTA1UmZtRlFvMW02TmROWTRMSCtX?=
 =?utf-8?B?WllBMGdzZXBmTVFBNG5BQitDWlRSdGRjb0NUd1VXSEdrd2lZY0dNWUF6ZHBD?=
 =?utf-8?B?TExWT0xkZTFjaFU3dnZEck93Qm5kWlhQVFhsYWtZRFdXZVhBVCtyd0pzcTNB?=
 =?utf-8?B?SmpNY1FIeC9hSXZobDlieCtDM2NaVnZqMnZCOGVYRFJCZ0l0QlpyOU9RYTVP?=
 =?utf-8?B?aW5XanJaSTZTSVQ5YXBiYmVLVDJpaWpZN3VQc3RMV3lJbGtRZWlhZjlEZ0kw?=
 =?utf-8?B?VDVQcHk0TEtTdjFkQS9JK1pGNW51V2x1eEVJcmxOaW5xR045aURaSlJDQVhD?=
 =?utf-8?B?QU90YXVReitad1VBbkVQc2t6WXlmaGpGVXV3U0ZHQkdTUmRTVXVueG1ndmV4?=
 =?utf-8?B?MUxHWEladUxuYTlLSkdUY2I4L05NN1VXcW4wc2o0NU1sL0ZZYnR1TXdJQkNM?=
 =?utf-8?B?R2Jjams5WjdmcTZpSGRocVgyY0wrOEd0b0VXajdWcXM3MTZaRDdjYWE1Vk5z?=
 =?utf-8?B?S1RJcVFuTXZXbm5CdXhqWjIwSGd3b1Fhb1pDZmNPNjBjWVBnSnRHek1NUTdk?=
 =?utf-8?B?OTZEdFV2VE1rbDgxdVR6dnUrS3VWcytpeVRUV1k5WmV1N1JSK1ZMOWNyQ2l3?=
 =?utf-8?B?bTVsQWV4aEZzT25lck5oTll1ZVl2dlpsTkI3OWFHQnIwMVVPZ1JqOU1YbWRk?=
 =?utf-8?B?dW5Za2JKUm9sMnFSRzJESjE4SW1jc04xTGd1bUcyZnM4M2hMSEdrTFo5NjRJ?=
 =?utf-8?B?N2JJQ3ArRDdUWnJjWjFGdmxRWFZmd2UzcWU0Z01mSkNqRmw4bEVuVlJtUWRx?=
 =?utf-8?B?RmtqTUs2RFJYQ0dzaDBsa2lHQWRnNlYzTzlRVTVQdEhqcFRiN1o1ZU5KMkdO?=
 =?utf-8?B?Y0txUkw0VXh1MjdMV0ZrOEdmcVBuQzFTWkRUbmJkQjZRMThEeGpVeGhzNXR2?=
 =?utf-8?B?VUhySDFXbS8xeGtWSHYzRjlKS2l0UWFWcXd4dGs5MTloOTJ0blNMR05oQlk2?=
 =?utf-8?B?OWNFQ2JNS1ZCYkMyYnpkRXVudUpad0RZZG02K2ZhMVNpeGIrN0RBaGNsY05U?=
 =?utf-8?Q?+omQpg3cRG4pfWP4=3D?=
X-Exchange-RoutingPolicyChecked: Wr42GVvV7IU0C8XPPNoJVuzg0GGHHB3B4a4bSU+gQwiZCKG5kEAhfXx972sA/4BTujr/6k34qUuWSfgpfAyvCApJTAym2GaLlB3RqBQjoavez6wfPVpXd0se9Dwbc2I9FMt9VwmfBQ5ZzDXwzpug99wT8Jo+L5KZdUxPpCwG+o2lLtBIWlVDlTiKJjoX3RIoiSV0eLkMo4YWzVROrDjoJ1v024MX0G7bmpqekiIKCk36eRkhFfOifm8Ws8/j8Yy/rBlMGPCqTfsVxiclL/HE0ChB3av4o+a06YtOn79S6a4biNAsd8W9dWMthKRzrO6U/CU8W/RM4+ZP9oS2Wn/E3Q==
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d5723d5-c70b-4f9e-b671-08de9a623e3f
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7579.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2026 20:13:07.6802 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: M/IjY0cxLsBS8KnfJmG3fmZmNlrA0ZoA1VEb+RzsJ5bk5XYCDbSiLn7rBAVWt6GB7km5WgQj/dNwG15TkEbfpzZwIxUVPZZ4MKR1Io4sO40=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7807
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776197594; x=1807733594;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MPopZml4bj7KqtaqA5l1T/Yg420tuMQ1xWc5CPL+szA=;
 b=FHgJnHIuPP/m3mJ1cefgU8QU37XOtszh56zGv+tHfBmcrBqnZQzX71Yh
 wA2Vdihx8e3mFqLQI/0bHx3YQpvMeDBFb74VE3+rBNLf8slPbGxH5IRav
 cMtrLbjf2jL9Q1wROF9fz353UxH2cu65hlPyMXOTzIfhvkXEF4Zt0vywx
 bZvgKiHdXpIWfL7P3VeTyKofkQle6qQ6sBJHZHchWDuAa8xvj9InWtUKI
 /rHUKTVh+tVpXQ/9NrPWpuse+0Jk24EQW3IRccnhmFrFz5aCBU3w8sSzw
 EqvTwa0ytTj7pqnsf9ZXK/7Kyq3B3ehmcwgeGkpxmGbiyVSLfN5VEHe4U
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FHgJnHIu
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix missing SMA pin
 initialization in DPLL subsystem
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:sx.rinitha@intel.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:horms@kernel.org,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,osuosl.org:dkim,osuosl.org:email,davemloft.net:email,lunn.ch:email]
X-Rspamd-Queue-Id: 336D33FE4CD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 4/8/2026 1:54 AM, Petr Oros wrote:
> 
> On 4/1/26 18:29, Rinitha, SX wrote:
>>> -----Original Message-----
>>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
>>> Of Petr Oros
>>> Sent: 13 February 2026 19:47
>>> To: netdev@vger.kernel.org
>>> Cc: Vecera, Ivan <ivecera@redhat.com>; Kitszel, Przemyslaw
>>> <przemyslaw.kitszel@intel.com>; Eric Dumazet <edumazet@google.com>;
>>> Kubalewski, Arkadiusz <arkadiusz.kubalewski@intel.com>; Andrew Lunn
>>> <andrew+netdev@lunn.ch>; Nguyen, Anthony L
>>> <anthony.l.nguyen@intel.com>; Simon Horman <horms@kernel.org>; intel-
>>> wired-lan@lists.osuosl.org; Jakub Kicinski <kuba@kernel.org>; Paolo
>>> Abeni <pabeni@redhat.com>; David S. Miller <davem@davemloft.net>;
>>> linux-kernel@vger.kernel.org
>>> Subject: [Intel-wired-lan] [PATCH net] ice: fix missing SMA pin
>>> initialization in DPLL subsystem
>>>
>>> The DPLL SMA/U.FL pin redesign introduced
>>> ice_dpll_sw_pin_frequency_get() which gates frequency reporting on
>>> the pin's active flag. This flag is determined by
>>> ice_dpll_sw_pins_update() from the PCA9575 GPIO expander state.
>>> Before the redesign, SMA pins were exposed as direct HW input/output
>>> pins and ice_dpll_frequency_get() returned the CGU frequency
>>> unconditionally — the PCA9575 state was never consulted.
>>>
>>> The PCA9575 powers on with all outputs high, setting ICE_SMA1_DIR_EN,
>>> ICE_SMA1_TX_EN, ICE_SMA2_DIR_EN and ICE_SMA2_TX_EN. Nothing in the
>>> driver writes the register during initialization, so
>>> ice_dpll_sw_pins_update() sees all pins as inactive and
>>> ice_dpll_sw_pin_frequency_get() permanently returns 0 Hz for every SW
>>> pin.
>>>
>>> Fix this by writing a default SMA configuration in
>>> ice_dpll_init_info_sw_pins(): clear all SMA bits, then set SMA1 and
>>> SMA2 as active inputs (DIR_EN=0) with U.FL1 output and U.FL2 input
>>> disabled. Each SMA/U.FL pair shares a physical signal path so only
>>> one pin per pair can be active at a time. U.FL pins still report
>>> frequency 0 after this fix: U.FL1 (output-only) is disabled by
>>> ICE_SMA1_TX_EN which keeps the TX output buffer off, and U.FL2
>>> (input-only) is disabled by ICE_SMA2_UFL2_RX_DIS. They can be
>>> activated by changing the corresponding SMA pin direction via dpll
>>> netlink.
>>>
>>> Fixes: 2dd5d03c77e2 ("ice: redesign dpll sma/u.fl pins control")
>>> Signed-off-by: Petr Oros <poros@redhat.com>
>>> ---
>>> drivers/net/ethernet/intel/ice/ice_dpll.c | 17 +++++++++++++++++
>>> 1 file changed, 17 insertions(+)
>>>
>> When SMA1 is changed from output to input , U.FL1 (input) is expected
>> to get connected but is still disconnected
>> Similary, when SMA2 is changed from input to output , U.FL2 (output)
>> is still disconnected
> 
> Hi Rinitha,
> 
> Thanks for testing this.
> The initialization patch itself is correct. After boot, the PCA9575
> register is written to a known-good default state and SMA1/SMA2
> properly report as active inputs with the expected frequency.
> 
> The behavior you describe (U.FL1/U.FL2 staying disconnected after
> SMA direction change) is a pre-existing issue in
> ice_dpll_sma_direction_set(), not in the initialization path.
> 
> I am addressing this in v2 of "[PATCH iwl-net] ice: fix U.FL pin
> state set affecting paired SMA pin" with an expanded scope that
> covers both directions of the SMA/U.FL pairing.
> 
> Is it OK like this?
> 

@Rinitha,

I agree with Petr's assessment here, that the SMA issue is pre-existing
and shouldn't block sending this patch. Could you please let me know if
you agree and we can resolve the issue you reported within Petr's other
patch? I'm hoping to put together a net series with several fixes that
have been waiting for some time.

Thanks,
Jake

> Regards,
> Petr
> 

