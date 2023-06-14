Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F22EA730BA1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Jun 2023 01:36:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9455261242;
	Wed, 14 Jun 2023 23:36:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9455261242
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686785801;
	bh=ipiS3nE+fJLCPF6TvkFYCq+ceTSNUz7vhRtpsHjzoxs=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9M1xnswNP6D6PZxOt6hJOMpKwLu2v2WerGyK/XyvtMMuG/WlnPm8FHqJeJ6ykd09q
	 5BbBJk553FNzC5LB5PtkrhIQfnAHvqeslFHv5C2iasfYN07jVzhtKAhhHN0k6O8IN+
	 eu4VIAStu7WcEEseAlQmqanCJWAozBQ/hefa5CcvdObQPDM8p68WeFsZFOqEWUCZZS
	 kW7YLyJDoz2cji0Q2YTtrgGM+1OAvlziNcon7Smqx5TvuJVsotwHheMsO7AFfyAmqU
	 zYkAPE3rQNpwYOvexsfkCVzfCe9rB+RvfbAtsfZH0KYlvEPMLC65S7MLtm3YU5gLNR
	 LUFCZB6VuFA0Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gpzw3X6eaakm; Wed, 14 Jun 2023 23:36:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5C1CB60B04;
	Wed, 14 Jun 2023 23:36:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5C1CB60B04
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7D64A1BF2C2
 for <intel-wired-lan@osuosl.org>; Wed, 14 Jun 2023 23:36:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 48228401E5
 for <intel-wired-lan@osuosl.org>; Wed, 14 Jun 2023 23:36:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 48228401E5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q9_cX3ke2fjn for <intel-wired-lan@osuosl.org>;
 Wed, 14 Jun 2023 23:36:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9153340002
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9153340002
 for <intel-wired-lan@osuosl.org>; Wed, 14 Jun 2023 23:36:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="343460984"
X-IronPort-AV: E=Sophos;i="6.00,243,1681196400"; d="scan'208";a="343460984"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2023 16:36:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="662573653"
X-IronPort-AV: E=Sophos;i="6.00,243,1681196400"; d="scan'208";a="662573653"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP; 14 Jun 2023 16:36:32 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 14 Jun 2023 16:36:31 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 14 Jun 2023 16:36:31 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 14 Jun 2023 16:36:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZLlWd5zEg1czG77PiUp3RQu/AKKZyLJ02KV3mvNwMwtKxFkX6YPWupee5eBLbeByptdLgLQIwxiHY3gKJ2exeJqsw0YdZH1PCXggdgZLZApczOhRQ59sjyzePROn5PJckNh3jV1TZzVlQhyiSHbUJfNQd4qPyPAQxuJu2uSxYhPPVGkkjuxyKggKu3tY2OxwNqompZR23k2A1xR8wyp6D5a3bHnFqobvpGLb/dIJPkPk3WCh5yScFoN3OEZvZraT2eJNG2hlg50r0PbA0LODPiwlYljB2z2yZOok3vtKS7+72V2ucLHOoUQLL3ADB+rzrFBEH8Nf7F462ljv9B8W7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NLEUbl6JfaOYHcenj2E81/WaI72mQUWj0khG0OS4mqY=;
 b=OYuWdz2tseiIRgWUWjtZX01pfGKtGj+JBc8rkkbbfTeFdyz+kgWRFo17QrOfRUj1hDw1GC8AsgWMJ8kvDcTmkJF//rjrxdSRJ0aM/UoS0cIulbl0wV3MNgIXEkkNowomLHFBk5WTj5qkCSCVimLIgJpNYt53EMHWT4FfyLLTV0MwpuARPIsXQr/ckZxg5HbBgRFN9F9jFyzyFP0J19Bel+abvZZ03XEpJsiVfowCagmKM4eiW/+vDJcuSXJnGKrRj4owIJkl8VAnfSGPFWIj3xYt04Eu37DTSiFV16JAmpyG+3r0NsfH72ccUzSQVbFF1EnC5WJQhT+UDavJda0PJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by PH7PR11MB7719.namprd11.prod.outlook.com (2603:10b6:510:2b4::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6477.37; Wed, 14 Jun
 2023 23:36:29 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::dfd2:5a47:bfeb:aa2e]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::dfd2:5a47:bfeb:aa2e%4]) with mapi id 15.20.6477.037; Wed, 14 Jun 2023
 23:36:29 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Thread-Topic: [PATCH iwl-net-next v4] igc: Add TransmissionOverrun counter
Thread-Index: AQHZnmoZWNKVxYsEP0qETkkt3NcVGq+Ks5gpgABBYGA=
Date: Wed, 14 Jun 2023 23:36:29 +0000
Message-ID: <SJ1PR11MB6180EE12AEDEEF45CEFF118BB85AA@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20230614024225.13652-1-muhammad.husaini.zulkifli@intel.com>
 <20230614024225.13652-1-muhammad.husaini.zulkifli@intel.com>
 <20230614193956.z6pohww23ikkljrd@skbuf>
In-Reply-To: <20230614193956.z6pohww23ikkljrd@skbuf>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|PH7PR11MB7719:EE_
x-ms-office365-filtering-correlation-id: 538da148-3e19-47f0-49b5-08db6d302dbc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MLgbk/yG7U+mQ0LiXQq8qSLjXuhTFm/Ws1wuJ3WUKzJIXs5uJ3tNncPAbWBVY5coAIIi6QOImdL8Z38t52vcHlGMuEoLDXhzzTW973BekAVv9UTgBoDEgdjvXhQIbz+W+YOwPkI20X5I3MnfqTaNehVsRuqfZhhlzSkL9pqfxImWVEiyJ0j/stObdxkdcsLemawd6W+R9UxHLY2UT5YsvRYSsgIN0vzgZPtJrGoRiQWbdrpO61BvoE8dUc9C48H6VB3I1vdrmIP3n0hzwh5z/0tOWKCd2cSVqLOZ8IJsJG5JtWZ0tvrsL8q3ynSXtFfUUhNzKQ1pA59Ix53IDrkeH9UFZ70WcXpeWM9UF5yIR3ZZJ9x8chFUQVH/cT3wPUwTFAIWOBgeZb5LLMElhZgPdgiutuIB+v61PKOFCFB1NcYNZTnk3m8jQdypHWmSyUN0a9Ueb4dyPqtibUDdSGxZC1uAhrYu+HLa5dtVVR/K7E3OyJa1FiYxV2NLuFjaSTSBb5hIzDvC8IJyjQzfw4yvqebUU5JCVJrja7e2Q2RO/f037FIkYTcaacH+6ATqMK5M7egnOpi4FZr6j8XZeCT9ZaboOLByyNOqT1ADO1LYtVrbG61DJGmm3xJxNJ7vZZe0
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(376002)(136003)(346002)(39860400002)(366004)(451199021)(186003)(38070700005)(38100700002)(2906002)(33656002)(86362001)(53546011)(9686003)(26005)(83380400001)(55016003)(6506007)(122000001)(82960400001)(4326008)(316002)(71200400001)(66476007)(66446008)(64756008)(76116006)(66556008)(6916009)(7696005)(66946007)(478600001)(41300700001)(54906003)(8676002)(5660300002)(52536014)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eXQ1dVU0ak1YZkJsbE91Wmc3a0F4bFdwMHZHMjV3V2NBVmlvQ3E0dDZxWDFi?=
 =?utf-8?B?RjU5NEdMb1JrQldBeExYeFkyYS81M1dnUHIxNmsvUFFyTWx2d1hta3lQNGJr?=
 =?utf-8?B?NGhxZ1VQbWFGV1psbTRiblRJSTNwZEE5M1ZmRzJtci90cldUajNidGFKQkJN?=
 =?utf-8?B?ZmxZMVM5WjNvbkJZVjVtMFEwOWVCRGRPY044VHNkOGVWOVpiVmR3LzBCUzU2?=
 =?utf-8?B?bkRua01KVENjVDdTWDBzaE5kNzVYZjRiNmJLWUVVcUVDY0FVblhLSk5Qbys3?=
 =?utf-8?B?K3pFeFMyV0pUU3F4aHB0ei80TmRiQWpROEdxdGxPSXQyWm40YVBtV0JXRzBF?=
 =?utf-8?B?UlNmUkRwRWp3NkhkOGw3c1M3SitWMTJLSkJUdmNONEVlejJRSXZtQU1VVWNR?=
 =?utf-8?B?MUwvS29RQWh4bTcraE02TFR5SFFrQ0Y0UWNnVlRBZnBBRW0zdytpekRHeGVh?=
 =?utf-8?B?M1JMTU1YU0ExY3FGZE5XK0tBMUhMcm5XVU5FV0FtT0dTenpHVWh6NyswWFpP?=
 =?utf-8?B?VWVCY2kvdmU0K1kzSERQQXdHM3VoalMvWDI3RVF5ZVBJMFBIQ1g0QSt0ZzVl?=
 =?utf-8?B?enJyaFBXUnZrazl2bkxuS0s3bFpsSkN6eTdCMXlpOUFUdUFSODRnajQvUVNj?=
 =?utf-8?B?eEEzdUZZWDVaajFqeWJFQ1FNMzVhNW4zUjZRZWE1VndZTjhwS1UrTGl4RTJI?=
 =?utf-8?B?TWpNRFFyTHUwVHAzbnFoSDRudWNIdG1OdzRKZllxVlJxaEJBUjN3aTJsZkpZ?=
 =?utf-8?B?ZWg1Q1g3NVRUOWt1N1AwcUFqOVFJVjk5czh4dGhSWjg1YndReGxEUm9UTVly?=
 =?utf-8?B?a1JydVRUY0orWWNrbEtaN1A5SGVMNGtHV2Y2d3JHZXFIVDNmQUdGUTRrNnNq?=
 =?utf-8?B?WVF3UjJ1NUZNeVFrUGpGY2cya1dxd1FCc0tuSmIxUWVGUlVlYmV4NWlydzdm?=
 =?utf-8?B?VG0wenBXSUJkdm5GMWM1M1cydW95MXh2ZE5pWDJHdzdDSjdQUDJMMGZJN0Uy?=
 =?utf-8?B?a2FiLzJEcm9qV0cvc0ZDV1V1Rm9oSzB0U0Y0S2E1WHFvTFhWOXNnallCR0Rn?=
 =?utf-8?B?YW9ncTBoamdEUVdCM2JoUjdFUnRobnVXQmhpVzRpalZlS2Yrc2R0a2VGL05a?=
 =?utf-8?B?RTZXL2lwaitjdUxreVUxV3JlZVhzNks2S0gxNjQ1RHB5Tnl6YjFyNDhXanc4?=
 =?utf-8?B?UkU3bWZ0dFpBbndOemNNOGRqeFVLNDhsUVc3bkwzdlM0cFZBajQveTkraVFl?=
 =?utf-8?B?SmVmZlZuTHZEbGRuZkpCRVFCT1JtL2lXbGtDNHVlQ29iT1UyblFqTmZLaHR1?=
 =?utf-8?B?N2g4eDExQXhOSkZkRHRTWGpMK1lrRU8wQ2N1Z1ZhSy9STFpiQlZNODE0S0Zm?=
 =?utf-8?B?eXR4S3FySHdNRVcyTTQvZUt0RURJVytjWDAwRHdoL2gvT3FRN3BxUVZCc3NR?=
 =?utf-8?B?Z0ZHclUrbURkcnlUVEhuSWJERVp6T1lNa1gzUHB5czVINkwreW1HcW95TEUx?=
 =?utf-8?B?RmRISTZ5VEk1ai9xTXpOanBvc0sydFRzZFFqc2RoNVNZekIyTDY1Znc3dkNB?=
 =?utf-8?B?NnhjcFdWeXpyb3ZsR3pQVWI3QWJ3SW1Ja0JFY0lSYzR2RU1lS0d0NmVVR08y?=
 =?utf-8?B?cm9kdnpGRzlYNDRqTTVOVElzMWIwN3YvTXEzeTJ1TnFrRmR6cUVhanZhQzNk?=
 =?utf-8?B?YXhKeHNWMnNvbTBlQjhvUTdPMUlKaWxhcnhjdHFiSDZpeHJGSHRrVjI1eXdV?=
 =?utf-8?B?Y0IwK2ZaWUtVNHlxb0F1czBzd2M4V3BBZkY4ODJWK1A5Yzd4bFRORlRrVVBS?=
 =?utf-8?B?eENHWXlKWDRHRm1pazNDSURmd3JjWi9DbU93cVhzWENiWHBXZGo2aGdUb28w?=
 =?utf-8?B?dndlMUp0bnpIZXFnbVRNenR1MHN0YkZIcytsd211UVFvUmpiSGowQnJLa0Nt?=
 =?utf-8?B?Si9VZVA4dlUyODkxbnNESkJXdUpwZU1DVlVXOVBXUzBVOWFIQ0ZGMmpZYmhK?=
 =?utf-8?B?b0ZIbEtyaXAvL2pQT1JGUWFXUmVvTGYveXVoMDgraEpxM3hQSVZLZmxTa3hy?=
 =?utf-8?B?d05idHRxcXlJMVUrbDR3SVVoSjdwZU9UYlRxbUg1S3NoZVJvNDEwZm9sSGhj?=
 =?utf-8?B?c0JweXdRNDd2clFZZWpLYk44d1dqbjQyZktFUEllSlo5a0wrZmphWHdLam5R?=
 =?utf-8?Q?llvUK1z20JSJcLU9oEAEOtI=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 538da148-3e19-47f0-49b5-08db6d302dbc
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2023 23:36:29.6043 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 38MjTi4iPIc0CWtaCJRPzKKWNqZ4ju8I1Lf8y+gFUh49tXdc8pTPgjgN8Vg+DUy6A9zSwm2ZQXa9SHE0pWvB+8oN1Y8dWu22erKCPcquiE6GoNLVmtLoEeOgn5kQL3BZ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7719
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686785793; x=1718321793;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NLEUbl6JfaOYHcenj2E81/WaI72mQUWj0khG0OS4mqY=;
 b=k+mXCl9PYnBKMB0Qe7PJxddBm4wkB4tYIfFQe7lTIAYlj9Sjgj5HwhQO
 ZJwkHsQt2+vsTN/5FBJhVLRRbAtgf75peyNBTY71aHpxvEIz02FGvx/RR
 E6kaiwOb3IRHrgU9dHQTg7Ov8iNy0KsvbGjj8gm/OmQmbS5Sg8IkMw67d
 DdStag7HPhfD3rQnDUKpiejvwTJBmWOLL0KWyCVxtWw+TfWEicfpyyQDz
 C3SkC6uRq7iQWB+j8w7bezZr8fIsfJexeqyFNPpqfuRc6HgXIM+q5BoQw
 7UoBnDv1WdA/Qj1D16FoZVffTRpNK5Nfd6XY8n1EelTr8Btvu/UkxDMQD
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=k+mXCl9P
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net-next v4] igc: Add
 TransmissionOverrun counter
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
Cc: "tee.min.tan@linux.intel.com" <tee.min.tan@linux.intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogVmxhZGltaXIgT2x0ZWFu
IDx2bGFkaW1pci5vbHRlYW5AbnhwLmNvbT4NCj4gU2VudDogVGh1cnNkYXksIDE1IEp1bmUsIDIw
MjMgMzo0MCBBTQ0KPiBUbzogWnVsa2lmbGksIE11aGFtbWFkIEh1c2FpbmkgPG11aGFtbWFkLmh1
c2FpbmkuenVsa2lmbGlAaW50ZWwuY29tPg0KPiBDYzogaW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5v
cmc7IEdvbWVzLCBWaW5pY2l1cyA8dmluaWNpdXMuZ29tZXNAaW50ZWwuY29tPjsNCj4gTmVmdGlu
LCBTYXNoYSA8c2FzaGEubmVmdGluQGludGVsLmNvbT47IHRlZS5taW4udGFuQGxpbnV4LmludGVs
LmNvbTsNCj4gbmFhbWF4Lm1laXJAbGludXguaW50ZWwuY29tOyBOZ3V5ZW4sIEFudGhvbnkgTA0K
PiA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggaXds
LW5ldC1uZXh0IHY0XSBpZ2M6IEFkZCBUcmFuc21pc3Npb25PdmVycnVuIGNvdW50ZXINCj4gDQo+
IE9uIFdlZCwgSnVuIDE0LCAyMDIzIGF0IDEwOjQyOjI1QU0gKzA4MDAsIE11aGFtbWFkIEh1c2Fp
bmkgWnVsa2lmbGkNCj4gd3JvdGU6DQo+ID4gQWRkIFRyYW5zbWlzc2lvbk92ZXJydW4gYXMgcGVy
IGRlZmluZWQgYnkgSUVFRSA4MDIuMVEgQnJpZGdlcy4NCj4gPiBUcmFuc21pc3Npb25PdmVycnVu
IGNvdW50ZXIgc2hhbGwgYmUgaW5jcmVtZW50ZWQgaWYgdGhlIGltcGxlbWVudGF0aW9uDQo+ID4g
ZGV0ZWN0cyB0aGF0IGEgZnJhbWUgZnJvbSBhIGdpdmVuIHF1ZXVlIGlzIHN0aWxsIGJlaW5nIHRy
YW5zbWl0dGVkIGJ5DQo+ID4gdGhlIE1BQyB3aGVuIHRoYXQgZ2F0ZS1jbG9zZSBldmVudCBmb3Ig
dGhhdCBxdWV1ZSBvY2N1cnMuDQo+ID4NCj4gPiBUaGlzIGNvdW50ZXIgaXMgdXRpbGlzZWQgYnkg
dGhlIENlcnRpZmljYXRpb24gY29uZm9ybWFuY2UgdGVzdCB0bw0KPiA+IGluZm9ybSB0aGUgdXNl
ciBhcHBsaWNhdGlvbiB3aGV0aGVyIGFueSBwYWNrZXRzIGFyZSBjdXJyZW50bHkgYmVpbmcNCj4g
PiB0cmFuc21pdHRlZCBvbiBhIHBhcnRpY3VsYXIgcXVldWUgZHVyaW5nIGEgZ2F0ZS1jbG9zZSBl
dmVudC4NCj4gPg0KPiA+IEludGVsIERpc2NyZXRlIEkyMjUvSTIyNiBoYXZlIGEgbWVjaGFuaXNt
IHRvIG5vdCB0cmFuc21pdCBhIHBhY2tldHMgaWYNCj4gPiB0aGUgZ2F0ZSBvcGVuIHRpbWUgaXMg
aW5zdWZmaWNpZW50IGZvciB0aGUgcGFja2V0IHRyYW5zbWlzc2lvbiBieQ0KPiA+IHNldHRpbmcg
dGhlIFN0cmljdF9FbmQgYml0LiBUaHVzLCBpdCBpcyBleHBlY3RlZCBmb3IgdGhpcyBjb3VudGVy
IHRvDQo+ID4gYmUgYWx3YXlzIHplcm8gYXQgdGhpcyBtb21lbnQuDQo+ID4NCj4gPiBJbnNwaXJl
ZCBmcm9tIGVuZXRjX3RhcHJpb19zdGF0cygpIGFuZCBlbmV0Y190YXByaW9fcXVldWVfc3RhdHMo
KSwgbm93DQo+ID4gZHJpdmVyIGFsc28gcmVwb3J0IHRoZSB0eF9vdmVycnVucyBjb3VudGVyIHBl
ciB0cmFmZmljIGNsYXNzLg0KPiA+DQo+ID4gVXNlciBjYW4gZ2V0IHRoaXMgY291bnRlciBieSB1
c2luZyBiZWxvdyBjb21tYW5kOg0KPiA+IDEpIHRjIC1zIHFkaXNjIHNob3cgZGV2IDxpbnRlcmZh
Y2U+IHJvb3QNCj4gPiAyKSB0YyAtcyBjbGFzcyBzaG93IGRldiA8aW50ZXJmYWNlPg0KPiA+DQo+
ID4gVGVzdCBSZXN1bHQgKEJlZm9yZSk6DQo+ID4gY2xhc3MgbXEgOjEgcm9vdA0KPiA+ICBTZW50
IDEyODkgYnl0ZXMgMjAgcGt0IChkcm9wcGVkIDAsIG92ZXJsaW1pdHMgMCByZXF1ZXVlcyAwKSAg
YmFja2xvZw0KPiA+IDBiIDBwIHJlcXVldWVzIDAgY2xhc3MgbXEgOjIgcm9vdCAgU2VudCAxMjQg
Ynl0ZXMgMiBwa3QgKGRyb3BwZWQgMCwNCj4gPiBvdmVybGltaXRzIDAgcmVxdWV1ZXMgMCkgIGJh
Y2tsb2cgMGIgMHAgcmVxdWV1ZXMgMCBjbGFzcyBtcSA6MyByb290DQo+ID4gU2VudCA0NjAyOCBi
eXRlcyA4NiBwa3QgKGRyb3BwZWQgMCwgb3ZlcmxpbWl0cyAwIHJlcXVldWVzIDApICBiYWNrbG9n
DQo+ID4gMGIgMHAgcmVxdWV1ZXMgMCBjbGFzcyBtcSA6NCByb290ICBTZW50IDI1OTYgYnl0ZXMg
MTQgcGt0IChkcm9wcGVkIDAsDQo+ID4gb3ZlcmxpbWl0cyAwIHJlcXVldWVzIDApICBiYWNrbG9n
IDBiIDBwIHJlcXVldWVzIDANCj4gPg0KPiA+IFRlc3QgUmVzdWx0IChBZnRlcik6DQo+ID4gY2xh
c3MgdGFwcmlvIDEwMDoxIHJvb3QNCj4gPiAgU2VudCA4NDkxIGJ5dGVzIDM4IHBrdCAoZHJvcHBl
ZCAwLCBvdmVybGltaXRzIDAgcmVxdWV1ZXMgMCkgIGJhY2tsb2cNCj4gPiAwYiAwcCByZXF1ZXVl
cyAwICBUcmFuc21pdCBvdmVycnVuczogMCBjbGFzcyB0YXByaW8gMTAwOjIgcm9vdCAgU2VudCAw
DQo+ID4gYnl0ZXMgMCBwa3QgKGRyb3BwZWQgMCwgb3ZlcmxpbWl0cyAwIHJlcXVldWVzIDApICBi
YWNrbG9nIDBiIDBwDQo+ID4gcmVxdWV1ZXMgMCAgVHJhbnNtaXQgb3ZlcnJ1bnM6IDAgY2xhc3Mg
dGFwcmlvIDEwMDozIHJvb3QgIFNlbnQgMCBieXRlcw0KPiA+IDAgcGt0IChkcm9wcGVkIDAsIG92
ZXJsaW1pdHMgMCByZXF1ZXVlcyAwKSAgYmFja2xvZyAwYiAwcCByZXF1ZXVlcyAwDQo+ID4gVHJh
bnNtaXQgb3ZlcnJ1bnM6IDAgY2xhc3MgdGFwcmlvIDEwMDo0IHJvb3QgIFNlbnQgOTk0IGJ5dGVz
IDExIHBrdA0KPiA+IChkcm9wcGVkIDAsIG92ZXJsaW1pdHMgMCByZXF1ZXVlcyAxKSAgYmFja2xv
ZyAwYiAwcCByZXF1ZXVlcyAxDQo+ID4gVHJhbnNtaXQgb3ZlcnJ1bnM6IDANCj4gDQo+IEknbSBu
b3Qgc3VyZSB0aGF0IHRoZSBmdWxsIG91dHB1dCBpcyByZWFsbHkgbmVjZXNzYXJ5LCBlc3BlY2lh
bGx5IHdoZW4gaXQgZmlsbHMgaGFsZiBhDQo+IHNjcmVlbiB3aXRoIG1vc3RseSB1bnJlbGF0ZWQg
dGV4dC4gQWxzbywgYmUgYXdhcmUgdGhhdCB0aGUgbmFtZSBvZiB0aGUgY291bnRlcg0KPiBjaGFu
Z2VkIGluIHRoZSBtZXJnZWQgdmVyc2lvbiBvZiB0aGUgaXByb3V0ZTIgcGF0Y2guDQoNClRoYW5r
IHlvdSBmb3IgdGhlIGhlYWRzLXVwIPCfmIoNCg0KPiANCj4gWW91IGNvdWxkIG1vZGlmeSB0aGUg
Y29tbWl0IG1lc3NhZ2UgdG8ganVzdCBzYXk6ICRjb21tYW5kIHwgZ3JlcA0KPiB0eF9vdmVycnVu
cy4NCj4gDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBNdWhhbW1hZCBIdXNhaW5pIFp1bGtpZmxp
DQo+ID4gPG11aGFtbWFkLmh1c2FpbmkuenVsa2lmbGlAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiAN
Cj4gT3RoZXJ3aXNlOg0KPiANCj4gUmV2aWV3ZWQtYnk6IFZsYWRpbWlyIE9sdGVhbiA8dmxhZGlt
aXIub2x0ZWFuQG54cC5jb20+DQoNClRoYW5rcyEgDQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVs
LXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
