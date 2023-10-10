Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 353C87BFE90
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Oct 2023 15:56:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A7AF641C2D;
	Tue, 10 Oct 2023 13:56:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A7AF641C2D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696946202;
	bh=3xIaNuR5RU8qk6gmCO5RiOaJOwlrN2Rj93jF+jDjBro=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=s2J/p82nuzt7WTMb1PbJ/7TwN5MIoM2YO4JphAZ1T9EArsqVByEANzMW7DC9tKC3l
	 mdt+axpGEoJhJz2JVBDeekozcf8NjGKAvUfmz6UlbDIR6mTko6hBehdRIMUfg6k2uw
	 yqOY7TA9O3CL0POT8BBcSNXVHWW5uDoZnr30b4EkdErL8hnrVkdCrdxkcsmsd8Ngu+
	 Y3V0IUuIWQmWj+ukzIL4qVVB/RIb60h6qP/AS3GYNf6ElP+mHX0gBeK1fThmKnKcj1
	 afejYep8wBdPGI+lY4UgxGEE3EhRueNdHcwtndKy+RK257dV+M9KZN11GEWvEIPKtP
	 JSwti1fB+kwuQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Qxt7gb2A5qYY; Tue, 10 Oct 2023 13:56:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3107241B3C;
	Tue, 10 Oct 2023 13:56:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3107241B3C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0CA411BF3DF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 13:56:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CF59F41B3C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 13:56:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CF59F41B3C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7tY8harR4_Jb for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Oct 2023 13:56:34 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3E0EC41702
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 13:56:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3E0EC41702
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="369464414"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="369464414"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 06:56:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="730098200"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="730098200"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Oct 2023 06:56:22 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 10 Oct 2023 06:56:19 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 10 Oct 2023 06:56:19 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 10 Oct 2023 06:56:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e+JTc+7tm3hhOHHWVYDUiJdhNUaY+YXsgqsAfxFbF0j2a8AjmCLjwNjzSa5ZjLU6v9m+f7EX76DGZCM1LiN8h9L8jDy2bShqAL5o+sOq6KJYoWqqEnflEz4DzmaKUb2NKhlc29Sl1n1JpfeDr6o8UGI5ftlCj2xYPp3ZdJs09VnNRbC0qeWfjdLGDkVBkq2AYU6nyd+/s4LkDhlGgyuQmYz8knNAmgZxRvVkml6b0D7DfLpR707FkQP99H11bITIVFIovezlY0trAJVZk0MhGoyexfOaYZTmi0rvZakvp/0gZMnn/vFK4XM/4MLa5TbvZUeym7Z7Hy9S5rhvmymYkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J/jsN/YBKdjUCsQTY/MxZfsO/gDblyMTVnrclpJZGLM=;
 b=QMAzVoWkZXyrynNlgOLZzpeQEHgpr6FHUowg0SLQ+KDolvPCZSRtcL65a4pAd4ixpVu1MJ/bXZPtjRrOmH9jK7Xm4ok61SDEMmBS1Z1bJhLKULP899pwNvfseV65XU8VlmX7tpFpmYBxG9mpdhcZ6LBmfl9fw1AEa6EWNngWbXsjyk4B23AJfnxBcy0xDyz3MN64iEfSY+BU+RraRVoaFwORw/aHTWFP23buRUlhFDTRkKMqnTgzDvKNCgkISjPBRO0AcQr0VwWAgceDhfM6CMUIQCO76hU8ypnaGoXwp0zQ43RF+kUthLALONxuCh5EYJXcL0myGV8lw3TahhDYAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by MW4PR11MB5933.namprd11.prod.outlook.com (2603:10b6:303:16a::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.29; Tue, 10 Oct
 2023 13:56:16 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::2ec0:108e:7afe:f1a4]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::2ec0:108e:7afe:f1a4%5]) with mapi id 15.20.6863.032; Tue, 10 Oct 2023
 13:56:16 +0000
From: "Drewek, Wojciech" <wojciech.drewek@intel.com>
To: mschmidt <mschmidt@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 4/5] iavf: in iavf_down,
 disable queues when removing the driver
Thread-Index: AQHZ+xBjos9Sg8YvcU2EvhZcHWkYiLBC5fpwgAAMwYCAABoBgA==
Date: Tue, 10 Oct 2023 13:56:16 +0000
Message-ID: <MW4PR11MB57767A1083F95A4F826C3F62FDCDA@MW4PR11MB5776.namprd11.prod.outlook.com>
References: <20231010002444.43507-1-mschmidt@redhat.com>
 <20231010002444.43507-5-mschmidt@redhat.com>
 <MW4PR11MB5776E18B4699E7FFE49BE3E3FDCDA@MW4PR11MB5776.namprd11.prod.outlook.com>
 <33589ae3-77d2-4e70-846e-09192efce402@redhat.com>
In-Reply-To: <33589ae3-77d2-4e70-846e-09192efce402@redhat.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5776:EE_|MW4PR11MB5933:EE_
x-ms-office365-filtering-correlation-id: bf282e8e-601a-4fc1-0152-08dbc998ac24
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OIQAFvIEnnTNYLhb9zbA9ErNcKFlVPylhj7WgegaMdw9kk/ofY5887Bcx59X7CV/gp1PDYjefSYvvREwpMnP54wj/ENWzpG+QPdbQWJ8GL8ZqBD2RqQtmfHetQUYbCrhYwqdtZCj3tzd2kJuB8gcFKL7R5XzA0l1yOvYlap6KRg6NeTZoBfFQZcVG3ZgAO9Klen/RQ3VzbjwnFg2GrhOXJJ6h6/d/N+iqEPDGzu3guRyqjQgOiQVj1vCAIAlAVwkO2ozD1pW1+YOLZPiq6CcniDhZNsNAnNqNAEF9bcGCosLt6yqQjYUrZRnGUWtigYOfvgIr4Sxi19nO5cuY4hnalsPLvaZwIKMry8ygS3BTmZMWQYUtEGPwiY45NZiwzNwEofAuO7N4TkIvuWSE3pcNH5yb2i4cU2jx3qXytzt9tJsQra00LVHiGk/GIqhSsXhG8G1+ja09YlHpUWPLJvQSIOpqbA5QK70hU48hQcZbpCsaE8P9nUzf+Uvkm7izlmWR88ZIGl4uQ5zbOWmFi9nt1qoMPv2qawx/lmcJPDbd3mxbYWmQEtyGx2bZ6E7sB/o5/ETVSp0utE9eKiSZE+MgKSAnSkCRrVOj5PeRaCmnZA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(376002)(366004)(136003)(396003)(39860400002)(230922051799003)(1800799009)(186009)(64100799003)(451199024)(4326008)(110136005)(66556008)(54906003)(66946007)(64756008)(66476007)(38070700005)(316002)(8676002)(41300700001)(26005)(76116006)(66446008)(83380400001)(8936002)(52536014)(107886003)(5660300002)(86362001)(122000001)(55016003)(2906002)(478600001)(9686003)(82960400001)(966005)(6506007)(53546011)(38100700002)(71200400001)(33656002)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?L21NY0xVdUdzS3hnZnhtVndLZ2lQLzlPdEJhVy9LdWV1VXI1R1dPS01vZ0lm?=
 =?utf-8?B?M2J1am1yTTJISkVuN3c5RVVxV0NLdjYvelVUODBBUS9pTVFZamZob2NsMnlG?=
 =?utf-8?B?THhRK1dOZVlNQlZkWUJhb2puYUVobEM3Z1ZmZVpiMldYNFozZktWd1ZGREx3?=
 =?utf-8?B?cHliYkh6anFOUkpIemVrdjNHWXZsUkpmNVlZcStLYjdVeEJBcWpwTFVRK2I0?=
 =?utf-8?B?SGhkYzhxcjcvT0M1SmhmRzR1d0hNc2NkZXFDUVRiY3Z4OEJIRzYyeDR0MUJu?=
 =?utf-8?B?eFRKQkdJT1AyN0VzV290NXFZYlEvdlFMby91UHpNSTYyZ0ZzTDh1VmYrTTh3?=
 =?utf-8?B?azFIeDYzVmNTdm8wREJ0eFhTYVdWSGVBS1VsWlB3TjFoeGdCVVdzVnhhanU2?=
 =?utf-8?B?YjFSbXZNaEFEMlI0N2I2WG42UXc3YTI2ejltZEhqbDQxM0h1emZGWU5LNUh1?=
 =?utf-8?B?STZHYUEwS3JLWWdRRjJPYlVMSE5tVjk3Y0ppR2tyNXY2YUtSQkpTUlVLVXBK?=
 =?utf-8?B?a0ZDWjFpT1lmRkRwMzZsWEpqKzlMU2owaWpXRkdKeHBzRkFneXBhZmtWUDd0?=
 =?utf-8?B?KysxckJOTzQyZTZJcFh0R2JyUGF1L0h4cmR0VC9lSENoMVpqdWl5MGptazRV?=
 =?utf-8?B?Qk9aQytlK1FSaEZjc3FpL3VrRkZnWDVmOTVZR2pXeFB5cUE4MXFqdzJlNkh3?=
 =?utf-8?B?dmVCbFNsNDlDSmdRSmtnT1lFSENRMGRjWmJwRk1jVkNhZklXNUM4OXRIVHZC?=
 =?utf-8?B?K0tJOHN0RjhOaVZGbGY0bGlKcmVBbktmWEtzQVBudXRDakVKUGJRdzVYV292?=
 =?utf-8?B?NUNLMExJM3FUVnJOL0VJTjV3YzBCYzZrd1lRUURoN3VRZmNlVU4zZmdSUVcv?=
 =?utf-8?B?Y2hKT3Z2RldEMHNoSUxVQmxpMnJHNSswNnFpaUthc2pRblVsNi9NMnZKL1hC?=
 =?utf-8?B?a2JSRWtiempYT0JzVTFzWFFJRlRWNVYxY2JNTS9ia3dqSnZqZ3RUNVF6Mkhi?=
 =?utf-8?B?dzd2Q0tEaWd6T1BqeDdsbTY4RjFkekFrKzVWWTNudW8rWXQ5S0s5dm9EUEJo?=
 =?utf-8?B?OVlZUTlWT3BGeTBqZ25GR2dZbGd1QlkxT1hvaTJVbG15K1hxN3l1VDhNeDFw?=
 =?utf-8?B?UXdQK1RsRXRESWZ1c2oxZG5ENWZGVCsybFdDdUFPTVM0SEFOR0xsSzFmZG1E?=
 =?utf-8?B?Vk0yV3AxMFA3WUJjbGJCNHA0Z2VIdTVBL2dkNGxpaEJPUVRVUnNHV244TDB4?=
 =?utf-8?B?YUliOWpXQk14aitEWm5pQ3hkQjZHbEZSSVVRMko3T1BLSFB3dlRvWkxqR0NT?=
 =?utf-8?B?VG1TTksvWFVnNlZWbXluM2hxSmVyOHlJa051enNta3F0WkpldHE0SldwWVhn?=
 =?utf-8?B?Uk82VmorNWNBSWFGdnBLOE1FdDUvTzVPRnQ0ditTLzE4dWowRkUwUzZ6Z0RM?=
 =?utf-8?B?TUgyOEp6QTdtcUJYRElhTVV4aEsvMVNEYW92Z05rbzhUTC9KK25MaGpXM2pN?=
 =?utf-8?B?QkxHdlNiUWo2TDNWaG8veCs0RVZzQXNFbi80ZEEwSEdES2I0bHdoTVhiaFRq?=
 =?utf-8?B?Skwzd1RuYWhNMnNtU1dqdXZxK2k4bEhLOW05R0ZxZkpBN0w4SWRLZ2NiSTcy?=
 =?utf-8?B?dGkzT3FkZ29nR3NuL1ZReWxScTJZYjYrZjUybkhNQ2FOZ2M2dFB1M3dXU2FR?=
 =?utf-8?B?WElMRyt0aUVDZnE0UkUrTFdEVVlpM2dwaXl4NS9UVVlmblhOK2ZDNGhabGN6?=
 =?utf-8?B?L3gzQXN0cDROK1RTa2RyaXREdG11b0xSN1pac3NQa0lSbnN4WlJFRE9BK0dl?=
 =?utf-8?B?dkZzR2wxY1VHRU11ajRZbDVBN1hKTjF1R2NNbkxobksxaUxRUFhudWQ3VVVh?=
 =?utf-8?B?V2ZZc1pNY001alhNUi9nc0lzN0x5ZkFsOXZsTHJaM2tGMWpSTmVvdzZwQ1c0?=
 =?utf-8?B?RzRjdXZ1UFVQTFlFZ3JIcTdCc1pMTGVSbGliYk1wY1JWMVFhcjc2Z2ZJY05R?=
 =?utf-8?B?VGZkbUhnRzNJYVV6ZFRpdU9oaVlvcDMxQ3pwaThnQVhNZjRJS0kvYUdtWnBP?=
 =?utf-8?B?aGQxby9ZSko3dHFWY0dmSkhPSStFTWR3ekR4YlZQUFk5NEZEWmZ3UGhWQlor?=
 =?utf-8?Q?zsUUor7umd+Zw6BltoVz3m2nk?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bf282e8e-601a-4fc1-0152-08dbc998ac24
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2023 13:56:16.3094 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Dm8yjiCuWNibw5G5/956gSu3vlnN1uRJTEfR7i6Pr8/qJIWVyF7OnBTp5IVQ/kTOdRsTBWgrIlViLY4n90q4VRUPNLLEPkUl8GtFktWntKs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5933
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696946194; x=1728482194;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=J/jsN/YBKdjUCsQTY/MxZfsO/gDblyMTVnrclpJZGLM=;
 b=U4WyyTdUO2zHKxoKra6Kd3zzfgr264jEIgeZD5kmpgKPyOgAGIYCatvJ
 zzFmUQZixcK9Itf6zREnPP2NHvQkT5gIfSWQE9ovLt2P3gvgFH747tS+d
 4pxZa09PsX+yrFia9nmHi3VOvfb+gRT8XXTN3waI4GJJzEyct4Ayp/GyL
 QX6s9LKcrH2qjiVREjAdSBkY8aOMKWWVS2KwnersCL9xGU6RoddLgdLAD
 dne7jBpwY81msX6BQ0uIJPgWP1erlXezaTxRMe3uMSUegxH7Dv5YR7f/D
 0VntapP5mG/Rc+AP07/Jn0GnBKTo8rMnlI/lI06YstJRZTRC8uK8tgXgx
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=U4WyyTdU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 4/5] iavf: in iavf_down,
 disable queues when removing the driver
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
Cc: Radoslaw Tyl <radoslawx.tyl@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Michal Schmidt <mschmidt@redhat.com>
> Sent: Tuesday, October 10, 2023 2:22 PM
> To: Drewek, Wojciech <wojciech.drewek@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Radoslaw Tyl
> <radoslawx.tyl@intel.com>; Brandeburg, Jesse <jesse.brandeburg@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH net-next 4/5] iavf: in iavf_down, disable
> queues when removing the driver
> 
> Dne 10. 10. 23 v 13:39 Drewek, Wojciech napsal:
> >
> >
> >> -----Original Message-----
> >> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> >> Michal Schmidt
> >> Sent: Tuesday, October 10, 2023 2:25 AM
> >> To: intel-wired-lan@lists.osuosl.org
> >> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Radoslaw Tyl
> >> <radoslawx.tyl@intel.com>; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>
> >> Subject: [Intel-wired-lan] [PATCH net-next 4/5] iavf: in iavf_down, disable
> >> queues when removing the driver
> >>
> >> In iavf_down, we're skipping the scheduling of certain operations if
> >> the driver is being removed. However, the
> IAVF_FLAG_AQ_DISABLE_QUEUES
> >> request must not be skipped in this case, because iavf_close waits
> >> for the transition to the __IAVF_DOWN state, which happens in
> >> iavf_virtchnl_completion after the queues are released.
> >>
> >> Without this fix, "rmmod iavf" takes half a second per interface that's
> >> up and prints the "Device resources not yet released" warning.
> >>
> >> Fixes: c8de44b577eb ("iavf: do not process adminq tasks when
> >> __IAVF_IN_REMOVE_TASK is set")
> >> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
> >
> > Looks like a fix, could be a separate patch with net as a target.
> 
> I did not want to separate it from patch 3/5, because it changes the
> logic when IAVF_FLAG_PF_COMMS_FAILED is set. But on second thought, it
> should still work fine in that case too. aq_required would just get
> reset to zero in iavf_watchdog_task in the __IAVF_COMM_FAILED state.

I see, so it's up to you :)

> 
> Michal
> 
> > Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> >
> >> ---
> >>   drivers/net/ethernet/intel/iavf/iavf_main.c | 2 +-
> >>   1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> >> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> >> index 0b808fa34801..2ab08b015b85 100644
> >> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> >> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> >> @@ -1440,9 +1440,9 @@ void iavf_down(struct iavf_adapter *adapter)
> >>   			adapter->aq_required |=
> >> IAVF_FLAG_AQ_DEL_FDIR_FILTER;
> >>   		if (!list_empty(&adapter->adv_rss_list_head))
> >>   			adapter->aq_required |=
> >> IAVF_FLAG_AQ_DEL_ADV_RSS_CFG;
> >> -		adapter->aq_required |= IAVF_FLAG_AQ_DISABLE_QUEUES;
> >>   	}
> >>
> >> +	adapter->aq_required |= IAVF_FLAG_AQ_DISABLE_QUEUES;
> >>   	mod_delayed_work(adapter->wq, &adapter->watchdog_task, 0);
> >>   }
> >>
> >> --
> >> 2.41.0
> >>
> >> _______________________________________________
> >> Intel-wired-lan mailing list
> >> Intel-wired-lan@osuosl.org
> >> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
> >

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
