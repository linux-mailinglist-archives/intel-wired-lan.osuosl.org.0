Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qH8oN0tPoGmIiAQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Feb 2026 14:48:59 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AE46A1A6F10
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Feb 2026 14:48:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 568A241F7B;
	Thu, 26 Feb 2026 13:48:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AsV4GjJP5laA; Thu, 26 Feb 2026 13:48:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7F40141F39
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772113733;
	bh=qYlOz7knWTvxS6XgtCBHMi6NH7lhN/wToQERHOqPSpQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=D1dmt8aha6XJ6eX60rjrYlZKbT09u1/TOebaU0rrQ0Uxojg4UgS9LYdKd0FixxUA2
	 2wqmhOwUPDNtnqJoIxSTNnBpfSap19fHqruhZtK8KxSc0/j8qZ3JDBxV7OX6mcWuiV
	 QfQxmfYNbL9s0XjjL3N3UW6jwDIA8U8V9OMVxwu7EY3rC7xlry1CUBgWyzvD5m2KTi
	 xpvWcj7TMmjWKJEkJQTrjEYXPdfUhbRU8+tbf0VwSj6P6sHTl+GCEYOHMVMAATr3RL
	 ZS0UcA0u65/UzGtOtRyV3Ds0ZKP9r5FBhmUP+K1yU+izcaDNuRPAVwPgaNRDz77d36
	 aN9N3UNsfvxIw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7F40141F39;
	Thu, 26 Feb 2026 13:48:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 32A7324E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Feb 2026 13:48:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 17FB141F2E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Feb 2026 13:48:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ieb-pTCXog1C for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Feb 2026 13:48:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C2D8241EAD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C2D8241EAD
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C2D8241EAD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Feb 2026 13:48:48 +0000 (UTC)
X-CSE-ConnectionGUID: x4fss5BnTb+wQ3OyA6jmnQ==
X-CSE-MsgGUID: cN9aJVW6RLiXZ9NlyMyykA==
X-IronPort-AV: E=McAfee;i="6800,10657,11713"; a="73218446"
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="73218446"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 05:48:48 -0800
X-CSE-ConnectionGUID: be+fXoHMTCCx+X5GUsqwJw==
X-CSE-MsgGUID: roggjUxVSaKGFw+HSM+7Uw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="216585003"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 05:48:48 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 26 Feb 2026 05:48:47 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 26 Feb 2026 05:48:47 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.11) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 26 Feb 2026 05:48:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rGKeCqx2eC7+UB4C8Suq/HWWjf85VcX/DF0N7oS23y0OllMNZXseHHKhgz0uQSLYRhdcHz/7ZVsfaaS2tM2kioEVUKsCiT02mcmdqjyOegsZgNILRNdcjtt4odYOhY//qD+nR86cTST6uUzRHbQtEDqX1WynSpCav1pyba1q5XEDLLxNzvmrHYcXbTAHCM0uq57x8ht3/Y4+LkfHYq40FjdaJ9CGWeGc5ec7bRxHKGWdmMp+WmjxTCpAc/+RVH+jXNceQK4FVyAZ7bjdksmG5/D7L2YHir2MMFy5XNXXF9HkqyZC0TH6UbwSZu5HByAkq4wq/VysxO+oA2Ltb7Rj/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qYlOz7knWTvxS6XgtCBHMi6NH7lhN/wToQERHOqPSpQ=;
 b=XQaX78TFMnB1lDRtEelP7lZyZ3oWeds5BpsRlf46I5AcPQloTax3GN2hng/59HD7kwbgS3B4vHzX6ZiDisXJ5v6U8dqIhLXigZgdT8EslM4QamZ+3c9BQ3C06wHE5ejGBCexPRUnKsnflOz49OJVyy07sdPAB2suDaENfgfzbi5zHa3+5FrEVGRPLY18XIo32ROkLea+bVWX2b1wC29ZpIwNDlz4RTOB+sKftJV+455/YyCgr3gAbXiAF+/cReQaSzVXqqb5jdY6w6DWwdyGdB3uKTPHY8oPTE30tkAASIRsYMl+eYUQlf7SmjuLht4ft6uNK/dp8uOTamQuuMx9Nw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV4PR11MB9491.namprd11.prod.outlook.com (2603:10b6:408:2de::14)
 by CH3PR11MB7794.namprd11.prod.outlook.com (2603:10b6:610:125::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.14; Thu, 26 Feb
 2026 13:48:41 +0000
Received: from LV4PR11MB9491.namprd11.prod.outlook.com
 ([fe80::6f0e:9ee3:9e98:1ed]) by LV4PR11MB9491.namprd11.prod.outlook.com
 ([fe80::6f0e:9ee3:9e98:1ed%3]) with mapi id 15.20.9654.007; Thu, 26 Feb 2026
 13:48:41 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: "Oros, Petr" <poros@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [PATCH net] ice: fix missing SMA pin initialization in DPLL
 subsystem
Thread-Index: AQHcnPOCFwWOgaS7aUaA4TIFUgRN37WVEwOw
Date: Thu, 26 Feb 2026 13:48:41 +0000
Message-ID: <LV4PR11MB949181F7CED86A21AFA023BF9B72A@LV4PR11MB9491.namprd11.prod.outlook.com>
References: <20260213141651.2231124-1-poros@redhat.com>
In-Reply-To: <20260213141651.2231124-1-poros@redhat.com>
Accept-Language: en-US, pl-PL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV4PR11MB9491:EE_|CH3PR11MB7794:EE_
x-ms-office365-filtering-correlation-id: 0d04e334-a302-4875-97dd-08de753dc0ab
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|366016|1800799024|38070700021; 
x-microsoft-antispam-message-info: NbSPyROuNbGxqRu6zlHTD4U9TICXSdfXvhsq5PNc/Rgqld0Lomx2P3fjzyswkMrq4d+RaiKOkor4FB8LA6oF1KBOlLsVtRcYVRHrpfCv2/qnd4X+PdB/ON5Vok6SIfp/mrFeDPsNBidz/vT8kW6FYeP/IgVcOObXhkVvwhV4HdM6up6qN6Pz8cKQXaEfiTCve7F4jx4Flnpjb1vLYuSseZFOorT7Oa37URlx32PxIbqDiM0XoyfX4WUPwbDWK7rrZNMgUFfAEi1iKK5KMJRXRATtXYKhX/dY+YHMpIU6Lt6f5wtsZEK2tJORjS3J/ok1REhr/oNWXGX0GpgTKkp4Wl+uhggM3z7YCl7RAmOfeZyrHE8h8AsYJatrnp2Wn9a9BWAljL1o+1QidRaW2bSMCB008l2jWO3K3el+VuzQLHiD2rUUPrrXwa0eUIDOxO3VmcWr5l48M830S5rausgEBtQqTDpNMNaKTEdb0SN5sV8+qvVARVCJ674b2H5kChXhLShKXsCAA7USi6v11eKhwdsdgSjLQHngHdWEaqB546kzC967qwudoWc6vRwe3YBn05pimvh2mShAWaqmv1jDWyfIm/+Kni/8IfJXfNohEz15iKy24BqzmE73+JXCJEGJPmzYkUxV5GcFtmZqMMooBhE7LqNoz9RUq5Vh9BYD5dESxTWEsHS8AfN/qUGHp4OetxR4EV1bMP14/gB4OoKG4757FHV5yVX82fl+tioFjdZNMDZe7QBJMJ6wu27eJ1Mvnt8S6b+Pk1qjHY9wDv1SHYFEX1kaiJhHghXyvOGiqoI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV4PR11MB9491.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UkVKRnN2TlplK2d6TkxVVmJBUk5xZDB2WUROUlFoZ0VqakFkVjJUZlNzMm5E?=
 =?utf-8?B?MExkSCtrU2w5ajFHcmJXRGlDaWp6TE9xcDY3SHhGYnFBVWZ3aTRKQU0rMjFi?=
 =?utf-8?B?UisvRGVub3RqVFdXenMzNDV6ckVJQTRnZkNsMkZ4cy9JRVBDQUREaDIxMHV4?=
 =?utf-8?B?VHMvc3ZEUTVjUDNTVk1obHQ2ekYrQkx0Q1VXMVVpY1BreTZEa1R6UHhtVkcr?=
 =?utf-8?B?T0x2bDZUc29jV1BpK0tabWI1NU51UW1wOFpldW90WCtnQlZzK1RPYXVuMFpF?=
 =?utf-8?B?cU5xcDVPdmZIQk5TcjlGY3RwR0NVOWd3UkxrOWNOMk44MDdPb2ZPVEVKUTR2?=
 =?utf-8?B?aGYrTjRhVDVjUDZxN3djNFRXamxSbDdROTJ6eWRoR0hhTnorN1ZEMWpldEZR?=
 =?utf-8?B?R1ZqZENDVG1wbGJIYUpTeXpiVW9ETW5xMG5HMkZBRk9MQ0pJMnFOM2pPcktG?=
 =?utf-8?B?d2IxL01ncU56NFhWajdJTTZhQ0dON3ViY1h0Y1N4N09WVkxYdHJWTlpROFdz?=
 =?utf-8?B?OTZydzYwSHRPQk1qNzdHQUVmdllLTmhDOXUxTlB5MjRBcmQ1UmFPd09nTnhh?=
 =?utf-8?B?Q3Bib2h2ckgvMjFvUU5ja3RSN0pUaFRDMkowKzFPaVRmT2lvYndZMlpEeEdK?=
 =?utf-8?B?U29EU1g0TkFCM1dSY2IyQXA2MGQ0Y0M2MTRRdmZVWW5Yay9NWGppdmZFcVIv?=
 =?utf-8?B?TGtybHpDK3pmSCtuYis2ZEc1TExHaE53bDNTZ1k3WjVBQnAvVTNjRWVSWEdE?=
 =?utf-8?B?YjhuTGxqR1RUbitNNmNwQ1E0UlgwSC80NEVLcDV2L2h5dlhoNVRnNHBsQS90?=
 =?utf-8?B?amZZVlFFMHpCNzl0a0w0d1FMWDdFVDR3Rk9LTWN5SUgrLzBHbWxaVUhxNUR0?=
 =?utf-8?B?VWF1cTVXOTRvekkrcjlRbzgvL0dlRlBpWVE2OTlkU1J1a3ZUOGw0eDltdzN5?=
 =?utf-8?B?a003TndYMWw2V1RUSm9DWVBqS3RQUnVHRExjNk5yelR2QVd3VEErRlREakFo?=
 =?utf-8?B?RlRHNUNPQkdYUFY2MzllTis5Nkc0emNWQ0YxbjEzYjA5R1VJZ2t6dW9xRmF6?=
 =?utf-8?B?b2tFRFZVMXNZOWpwRHdwQ0R4UUluYmtCQnNyVnhjNGY1SG1jQUYvdUV6dXFE?=
 =?utf-8?B?SmlOb2tIUW84WXBJNVNtT0JEUEhrMUxZUkhIem1kVVgzanAwMDRneG9COTVH?=
 =?utf-8?B?YlJHOUJ1UEpEQWJYb1VqWlh2UEx4MFpjZUNaQTlXMDJKTUg1OXBxNlJ2Nmoz?=
 =?utf-8?B?NlN6czBTdlIvVXkvNVBXVlNDSmpSM25ZMUtNdTlXazZ1b2RxNk9HbjRYeE5i?=
 =?utf-8?B?QnFmSnNTVlc2M1ZkcnZ3LzZJNGNraGRZRVJ5ZE91VVVZNys3OVNZaHl4SG5Y?=
 =?utf-8?B?Q2tkaS90dDF3SlZWU1NreDgzd0sxREpVQ01SYmdzVC9PZGlMSWx4elpsblV0?=
 =?utf-8?B?RStYaldXaThEVG43S1l4d1hvd3hndGxkemlOd1FjLzd5YkJyd3laU0tOVThU?=
 =?utf-8?B?YUxmeHdkZXRpWFdwaURTVTRuMllkSXJmYVhZS1BZUUxRMDMxVGVGLzBjclQ0?=
 =?utf-8?B?OTZpQWRIRnQrcmtwTWtiMm1zdnZsL2RCek5HbjQyUnVTS1JWSWZST1lpOXho?=
 =?utf-8?B?L1pLM0d3eHRTK0t6b0NoWGhNWXEwbXhpRkdqVHRqR3AzZXV6QkdkU1dFUlVm?=
 =?utf-8?B?UGxLd2hJMnByTDZPNDFKdFgvUE9oakJxZis0VDdjbFR4QmFPNEt4ZUV1L3Zp?=
 =?utf-8?B?amNUY3NZd2pMM2w0S2hHRGxMbFA5dHlRbENVZXpYWlNWdTA0L095WGV4MXZW?=
 =?utf-8?B?bUg2VDhleUhMUVd2cUpXaTFMZ1dqVml6ZlF1QVFqbFlGNld1Y1dMOEU1U3Bx?=
 =?utf-8?B?SVc5dVo5MEVnZnNkQzBralZKWUZPSUdjbjUzbnlkK0tKZk9PRkthVzY2SzNa?=
 =?utf-8?B?UXdIZTkrNUcrbnA2L3FyeUJld3EzNHhqSkl6SHNpNzF6S3pNcDg2OEZyZmZK?=
 =?utf-8?B?TmdkRk16bkdqQ2I0YVNKaHlMS1JwUWlkMnZHd09Yd3daTzVUcmhJdEJEWnky?=
 =?utf-8?B?QzZDTFF6QkN1ZTBtUWtiTzg4a1NEbmYyQm1EaUtwbXNLK1VSMFFnL3FGRzU1?=
 =?utf-8?B?cU13UWVCNVhDODdxVFhxRytVMnZJcE1mRmlFK2wwZVdkQy83N0Z2TzlUWHl4?=
 =?utf-8?B?R25EUlZHd0Y2VlZ2Vll2OEtma3prVm1rbkhyMFl6RGkyMDRlSFZSbndNRVdk?=
 =?utf-8?B?Y1lLeGVwZDJQMjkxMHV6T1B1aEJWMnl1R3cydzFZRHhnUExEN1kzYzRsdXh0?=
 =?utf-8?B?WGdQZ3dDVE5INTAzR1VwR0lsLzM0U0M2djhiWUcwNWwxVzJyenJ0WW1qb3Vy?=
 =?utf-8?Q?COxdKNNlh9ariJHo=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV4PR11MB9491.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d04e334-a302-4875-97dd-08de753dc0ab
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Feb 2026 13:48:41.9104 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 57Ep5ZZu2ycW4q9PMBxV9gUoWpd6zkXLW4CFdkklsjJBWA9qZJm4CxvNt+3+lW/5FZpOXapexRfSJWhIrseuyz0vJuNdzVgyAg0MrLIn2Fc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7794
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772113729; x=1803649729;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qYlOz7knWTvxS6XgtCBHMi6NH7lhN/wToQERHOqPSpQ=;
 b=YluvNq2ItsrFUkGbrXrl8HRsEccdhrxLUAaWOys3CfbYVBdViaBi2PIw
 0/0I0FLmAb6bH21c3q3Qtw39gIn02fZ2vAKwJ7rhzZGXAlwA3QFUMpZmN
 jsBLlhhtCeO6nqYEPpKa6pW3/EQzzcIuMQsRBMOanT75S/fH/PO1dqM5u
 zKF9QWEKfwzoVoytzII7eKTUECEARRkSu4swLtL6q1yNfTFmG2FD9cGl/
 ehGJxEN809XnNBWJ2AKLiSgF3YnzzMSJpz78VKo87Sow8+1dnDOImj5NP
 iAVP/HIvtxGGVbMCGcsTO4LKgE6Lhn2jTeadqHu43gqrwbRr1zMaGhTTm
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YluvNq2I
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
Cc: "Vecera, Ivan" <ivecera@redhat.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, Eric Dumazet <edumazet@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, Jakub
 Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "David
 S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:horms@kernel.org,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[arkadiusz.kubalewski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[arkadiusz.kubalewski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.966];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,LV4PR11MB9491.namprd11.prod.outlook.com:mid]
X-Rspamd-Queue-Id: AE46A1A6F10
X-Rspamd-Action: no action

PkZyb206IFBldHIgT3JvcyA8cG9yb3NAcmVkaGF0LmNvbT4NCj5TZW50OiBGcmlkYXksIEZlYnJ1
YXJ5IDEzLCAyMDI2IDM6MTcgUE0NCj4NCj5UaGUgRFBMTCBTTUEvVS5GTCBwaW4gcmVkZXNpZ24g
aW50cm9kdWNlZCBpY2VfZHBsbF9zd19waW5fZnJlcXVlbmN5X2dldCgpDQo+d2hpY2ggZ2F0ZXMg
ZnJlcXVlbmN5IHJlcG9ydGluZyBvbiB0aGUgcGluJ3MgYWN0aXZlIGZsYWcuIFRoaXMgZmxhZyBp
cw0KPmRldGVybWluZWQgYnkgaWNlX2RwbGxfc3dfcGluc191cGRhdGUoKSBmcm9tIHRoZSBQQ0E5
NTc1IEdQSU8gZXhwYW5kZXINCj5zdGF0ZS4gQmVmb3JlIHRoZSByZWRlc2lnbiwgU01BIHBpbnMg
d2VyZSBleHBvc2VkIGFzIGRpcmVjdCBIVw0KPmlucHV0L291dHB1dCBwaW5zIGFuZCBpY2VfZHBs
bF9mcmVxdWVuY3lfZ2V0KCkgcmV0dXJuZWQgdGhlIENHVQ0KPmZyZXF1ZW5jeSB1bmNvbmRpdGlv
bmFsbHkg4oCUIHRoZSBQQ0E5NTc1IHN0YXRlIHdhcyBuZXZlciBjb25zdWx0ZWQuDQo+DQo+VGhl
IFBDQTk1NzUgcG93ZXJzIG9uIHdpdGggYWxsIG91dHB1dHMgaGlnaCwgc2V0dGluZyBJQ0VfU01B
MV9ESVJfRU4sDQo+SUNFX1NNQTFfVFhfRU4sIElDRV9TTUEyX0RJUl9FTiBhbmQgSUNFX1NNQTJf
VFhfRU4uIE5vdGhpbmcgaW4gdGhlDQo+ZHJpdmVyIHdyaXRlcyB0aGUgcmVnaXN0ZXIgZHVyaW5n
IGluaXRpYWxpemF0aW9uLCBzbw0KPmljZV9kcGxsX3N3X3BpbnNfdXBkYXRlKCkgc2VlcyBhbGwg
cGlucyBhcyBpbmFjdGl2ZSBhbmQNCj5pY2VfZHBsbF9zd19waW5fZnJlcXVlbmN5X2dldCgpIHBl
cm1hbmVudGx5IHJldHVybnMgMCBIeiBmb3IgZXZlcnkNCj5TVyBwaW4uDQo+DQo+Rml4IHRoaXMg
Ynkgd3JpdGluZyBhIGRlZmF1bHQgU01BIGNvbmZpZ3VyYXRpb24gaW4NCj5pY2VfZHBsbF9pbml0
X2luZm9fc3dfcGlucygpOiBjbGVhciBhbGwgU01BIGJpdHMsIHRoZW4gc2V0IFNNQTEgYW5kDQo+
U01BMiBhcyBhY3RpdmUgaW5wdXRzIChESVJfRU49MCkgd2l0aCBVLkZMMSBvdXRwdXQgYW5kIFUu
RkwyIGlucHV0DQo+ZGlzYWJsZWQuIEVhY2ggU01BL1UuRkwgcGFpciBzaGFyZXMgYSBwaHlzaWNh
bCBzaWduYWwgcGF0aCBzbyBvbmx5DQo+b25lIHBpbiBwZXIgcGFpciBjYW4gYmUgYWN0aXZlIGF0
IGEgdGltZS4gVS5GTCBwaW5zIHN0aWxsIHJlcG9ydA0KPmZyZXF1ZW5jeSAwIGFmdGVyIHRoaXMg
Zml4OiBVLkZMMSAob3V0cHV0LW9ubHkpIGlzIGRpc2FibGVkIGJ5DQo+SUNFX1NNQTFfVFhfRU4g
d2hpY2gga2VlcHMgdGhlIFRYIG91dHB1dCBidWZmZXIgb2ZmLCBhbmQgVS5GTDINCj4oaW5wdXQt
b25seSkgaXMgZGlzYWJsZWQgYnkgSUNFX1NNQTJfVUZMMl9SWF9ESVMuIFRoZXkgY2FuIGJlDQo+
YWN0aXZhdGVkIGJ5IGNoYW5naW5nIHRoZSBjb3JyZXNwb25kaW5nIFNNQSBwaW4gZGlyZWN0aW9u
IHZpYSBkcGxsDQo+bmV0bGluay4NCj4NCj5GaXhlczogMmRkNWQwM2M3N2UyICgiaWNlOiByZWRl
c2lnbiBkcGxsIHNtYS91LmZsIHBpbnMgY29udHJvbCIpDQo+U2lnbmVkLW9mZi1ieTogUGV0ciBP
cm9zIDxwb3Jvc0ByZWRoYXQuY29tPg0KDQpQZXRyLCBtYW55IHRoYW5rcyBmb3IgeW91ciBwYXRj
aCENCkxHVE0uDQpSZXZpZXdlZC1ieTogQXJrYWRpdXN6IEt1YmFsZXdza2kgPGFya2FkaXVzei5r
dWJhbGV3c2tpQGludGVsLmNvbT4NCg0KPi0tLQ0KPiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pY2UvaWNlX2RwbGwuYyB8IDE3ICsrKysrKysrKysrKysrKysrDQo+IDEgZmlsZSBjaGFuZ2Vk
LCAxNyBpbnNlcnRpb25zKCspDQo+DQo+ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2ljZS9pY2VfZHBsbC5jDQo+Yi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2Uv
aWNlX2RwbGwuYw0KPmluZGV4IDUzYjU0ZTM5NWEyZWQ4Li5jMmFkMzliZmUxNzdkYiAxMDA2NDQN
Cj4tLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2RwbGwuYw0KPisrKyBi
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZHBsbC5jDQo+QEAgLTM1NDUsNiAr
MzU0NSw3IEBAIHN0YXRpYyBpbnQgaWNlX2RwbGxfaW5pdF9pbmZvX3N3X3BpbnMoc3RydWN0IGlj
ZV9wZg0KPipwZikNCj4gCXN0cnVjdCBpY2VfZHBsbF9waW4gKnBpbjsNCj4gCXUzMiBwaGFzZV9h
ZGpfbWF4LCBjYXBzOw0KPiAJaW50IGksIHJldDsNCj4rCXU4IGRhdGE7DQo+DQo+IAlpZiAocGYt
Pmh3LmRldmljZV9pZCA9PSBJQ0VfREVWX0lEX0U4MTBDX1FTRlApDQo+IAkJaW5wdXRfaWR4X29m
ZnNldCA9IElDRV9FODEwX1JDTEtfUElOU19OVU07DQo+QEAgLTM2MDQsNiArMzYwNSwyMiBAQCBz
dGF0aWMgaW50IGljZV9kcGxsX2luaXRfaW5mb19zd19waW5zKHN0cnVjdCBpY2VfcGYNCj4qcGYp
DQo+IAkJfQ0KPiAJCWljZV9kcGxsX3BoYXNlX3JhbmdlX3NldCgmcGluLT5wcm9wLnBoYXNlX3Jh
bmdlLA0KPnBoYXNlX2Fkal9tYXgpOw0KPiAJfQ0KPisNCj4rCS8qIEluaXRpYWxpemUgdGhlIFNN
QSBjb250cm9sIHJlZ2lzdGVyIHRvIGEga25vd24tZ29vZCBkZWZhdWx0DQo+c3RhdGUuDQo+Kwkg
KiBXaXRob3V0IHRoaXMgd3JpdGUgdGhlIFBDQTk1NzUgR1BJTyBleHBhbmRlciByZXRhaW5zIGl0
cyBwb3dlci1vbg0KPisJICogZGVmYXVsdCAoYWxsIG91dHB1dHMgaGlnaCkgd2hpY2ggbWFrZXMg
YWxsIFNXIHBpbnMgYXBwZWFyDQo+aW5hY3RpdmUuDQo+KwkgKiBTZXQgU01BMSBhbmQgU01BMiBh
cyBhY3RpdmUgaW5wdXRzLCBkaXNhYmxlIFUuRkwxIG91dHB1dCBhbmQNCj4rCSAqIFUuRkwyIGlu
cHV0Lg0KPisJICovDQo+KwlyZXQgPSBpY2VfcmVhZF9zbWFfY3RybCgmcGYtPmh3LCAmZGF0YSk7
DQo+KwlpZiAocmV0KQ0KPisJCXJldHVybiByZXQ7DQo+KwlkYXRhICY9IH5JQ0VfQUxMX1NNQV9N
QVNLOw0KPisJZGF0YSB8PSBJQ0VfU01BMV9UWF9FTiB8IElDRV9TTUEyX1RYX0VOIHwgSUNFX1NN
QTJfVUZMMl9SWF9ESVM7DQo+KwlyZXQgPSBpY2Vfd3JpdGVfc21hX2N0cmwoJnBmLT5odywgZGF0
YSk7DQo+KwlpZiAocmV0KQ0KPisJCXJldHVybiByZXQ7DQo+Kw0KPiAJcmV0ID0gaWNlX2RwbGxf
cGluX3N0YXRlX3VwZGF0ZShwZiwgcGluLCBJQ0VfRFBMTF9QSU5fVFlQRV9TT0ZUV0FSRSwNCj4g
CQkJCQlOVUxMKTsNCj4gCWlmIChyZXQpDQo+LS0NCj4yLjUyLjANCg0K
