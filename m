Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 094326FC4F7
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 May 2023 13:26:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6CF4660EAA;
	Tue,  9 May 2023 11:25:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6CF4660EAA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683631559;
	bh=e70/2rwCFJj1+LCHfJclzdvWkJ8DbBZvyNe+SEICthM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=s6d0F0gV1mJMKyvP+icImCQFngczzHxN57TEkvA+dXHJSWhCihWdlZ/Tu5gbUNR7t
	 iUNW6Hbjf7X2/71UN8MeyuGLr8Q6GjccrVQTKDrDO5tS70R4o383kmhw7LfCxTtdHY
	 Dm6qW47gWMuqndRlyoHklPIPobwf//LskRP2+HBT5K5FLtG6ED5QHfJ3zfQIm21k/j
	 os7pRIUNYdugwiAOuE/cD1pKFXuIL5JS/bgAs+Y05BXEowXYz5PxmwOpYeUYFBJOXa
	 QVsvIGSUsIKfaTlNto7lTOy+DfL19RwC4iF6e+RjT4WZ89+eipbXSXGF4TG+DwYTMm
	 pUQXivdgWfjIQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bfn-k_IRzYPD; Tue,  9 May 2023 11:25:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0A90060C11;
	Tue,  9 May 2023 11:25:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0A90060C11
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 886AD1BF29A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 May 2023 11:25:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5F8B484000
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 May 2023 11:25:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5F8B484000
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4k_OXCXjFaPD for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 May 2023 11:25:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EEC3883FEE
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EEC3883FEE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 May 2023 11:25:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="377998641"
X-IronPort-AV: E=Sophos;i="5.99,262,1677571200"; d="scan'208";a="377998641"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2023 04:25:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="729472327"
X-IronPort-AV: E=Sophos;i="5.99,262,1677571200"; d="scan'208";a="729472327"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 09 May 2023 04:25:49 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 9 May 2023 04:25:49 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 9 May 2023 04:25:49 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 9 May 2023 04:25:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Bewoec9zler118/Ap7RPJR9ylFqoaAJ4CW7hxVheIxP8tVmGfoCzla9FVgrOQP7RsUbXp1j9ZSxZUMyp/FWPNJvlUjJa/NZmY6FXk+vXuxaCTQOQwgODZM970mPq2eV+AWxWVHpyex/LPuZ5pe1jUNhEJHH8kRnDbwFhQXUKKd1mVRLJKlh2lp7jVYDsVdVGFtumLk8oLA4x083dn1LevSN9JE6jG+TccToC/zCS497ewuv84uF11cnoJt9zeW7yQvregwmFNQc5YIP6BUfui9C1Sai6aQAS5lmUo7p7QOELFZBD9iWiCbzJV9RNMKdc02mH6PB4MhqVf/boEZBrjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Fyfp9UGOQpf2HM/3bELdUPaBoKVJp3IACIBSa2HW9wg=;
 b=Wl/b7q7jYAlb8AOVHEN37JdHCJB6AkkfBLWMQkQTj8+Pj7YbX7h1JQ4IBSTuquNHwKzjtvolpz3ULbSpSfpnbAHOsAGaJHXC+DS7+hFO8Fnqo3SxxcCzFcn8rAe0q1YKcy0eyfI3jfoz84MDJTvE9Lu6VVUPqygsZa2LHTo0WB46bIcwBKov3DTqGdLysSmIgoGDtbTFFOp6EgybiM102CparPQpsrrWPp8A+bKGV5QvUqLO2aTimK/VQ2y0hBuLyUEqQ1kGOk6Hs61vhvHv3X4OuliVq8rlYztdvBzDANikRxKzMR1dLBusU5w8HiO4tbr1UTfrE1A3u/I15G/Mig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by SJ0PR11MB4814.namprd11.prod.outlook.com (2603:10b6:a03:2d8::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.32; Tue, 9 May
 2023 11:25:40 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::936d:24c4:86d0:f2a0]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::936d:24c4:86d0:f2a0%7]) with mapi id 15.20.6363.033; Tue, 9 May 2023
 11:25:40 +0000
From: "Drewek, Wojciech" <wojciech.drewek@intel.com>
To: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>
Thread-Topic: [PATCH net-next 09/12] ice: implement bridge port vlan
Thread-Index: AQHZdG96bNWhs4OGr0We3SMP10VT569R48aQ
Date: Tue, 9 May 2023 11:25:40 +0000
Message-ID: <MW4PR11MB5776A66941471BB2ABF7E99DFD769@MW4PR11MB5776.namprd11.prod.outlook.com>
References: <20230417093412.12161-1-wojciech.drewek@intel.com>
 <20230417093412.12161-10-wojciech.drewek@intel.com>
 <72f95cf5-d922-1f3d-2495-e8bdea6de247@intel.com>
In-Reply-To: <72f95cf5-d922-1f3d-2495-e8bdea6de247@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5776:EE_|SJ0PR11MB4814:EE_
x-ms-office365-filtering-correlation-id: c7f004e6-8589-48ab-9cad-08db50801ef3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OUncSBb6Z6zbvQLeptM7YYd24W2hie6tp6koju0g+WEZrKZB8h6DwGEdSYMD9VG+l4+nJMczix8PebRAF8dL3GJbCYmYj+TarjcQqQM6S2RhaQ6P3I00Dt2B9DjCwZBDIkGbuCKEoFlRCKawmXJXLIoYKR1N7Dq55IMVFYe3eyrO+L2pvKbsqGYzQheBDtrBYycLAk5RynmZgpOdOofXnfWZbTx2vsOpF75uVxcKTht20FytY+ilK+8Llm7m+VRBYCKqnKeiriZGkHSnFH3FAKFV/Dvx2t7PjGdQSUAiVVxuxXFs5GfOZ1MAPtAmzTSt+z3xvTsOR51sH/hW4bbPagOzwxYQUCTW33exy3oHR/TE4YHSVdehjSH7xX8pg+Zp+t5+Um5ceweh3D9xM7XIJlp9RCjk+egltxSo8Kqki8dMKdI+bZv8jn8vw6bWhTxVCAEyI6yk6GofNaZp4LtO3lWpIAEVNQfdbeFw2vXSwin9AnQubnn+BYbO65cSoAuuinZtOvP7FJ3d3oTtvDHu5cZVKWlXTjj9LNX6eiJDXN0EPGSmVBVsleVg+W3csGx/jMv3mlN5H3WFzaV+4qez6fIwjd4rwUQ8UTgpR1POlyHME2Y2AUT0VkO9i1SrgMUm
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(346002)(396003)(39860400002)(366004)(376002)(451199021)(316002)(54906003)(478600001)(52536014)(6862004)(8676002)(8936002)(41300700001)(71200400001)(76116006)(2906002)(4326008)(66476007)(5660300002)(64756008)(6636002)(66946007)(66446008)(66556008)(53546011)(9686003)(6506007)(26005)(186003)(82960400001)(7696005)(66574015)(83380400001)(55016003)(38070700005)(33656002)(38100700002)(86362001)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NFBaMmVFdkpPRFJ1eXF4ZGtIOUJScVlyWGE1OTlISGFkeXFEUW4rZzVJZHJt?=
 =?utf-8?B?bDhtSzJndWpuVFhrelE1aGw3OUxHaGlMbHRIWk5wNFBXY2dsQkNSN3E1WXB5?=
 =?utf-8?B?TGM4T0xVVUhkektTcnRTZE1aQUV4RHQ1cjFCSUpCWnU0aVFUbHd2RDN5bEtU?=
 =?utf-8?B?dnlVMm4wMjhLOXdsbnVicENKNUNHNnl3SExQcTdmWjFwb1AvRDJ2MU5KMjcw?=
 =?utf-8?B?bENIcnNBaFhObUZBT2o2MkhrYzZudFlDQUwwZUg0dHJmeGtJbjhJVzdJcUxy?=
 =?utf-8?B?SnFXWWhuVytpZVJyb0NyYjU0Ui90RlhvQnQyeHhwTE9tcWhvVHgvSWpVR05z?=
 =?utf-8?B?ZEZLK0NQMVB3dFFzZGtxbkRZV2R4QlYwcHU3eGtwSTl3L3I5NWg4ZmlZaGVX?=
 =?utf-8?B?N3VyTHpaWkd6bm8zTGtvajU3N0xnNkkyTUx1WTZGQlNvVmVHcEFvQ1pkcXBa?=
 =?utf-8?B?TW1OVXhNcDZUL0JpK1N4TlpNdE1ieW1WeEdHWUFjZnNRaUpPZDJreW1aY0xh?=
 =?utf-8?B?S3p4dDFuREhFalUyYW1hVExSZElucE5HUmpyQU5RVUVsTG0rSXBsOGVaZU84?=
 =?utf-8?B?Z1djbjg0ZFVTcHczZkN0clpLdlhxNTlEU1VHYy9CSk1UMk1HQXNHajRESDdm?=
 =?utf-8?B?bG5oa1drQnp3STdFME4zLzIxVmdxNUdxbmhaUXlqLzRXNmF4WUJOZ2h5NWI5?=
 =?utf-8?B?TVRHVFU5NGVXbkJDMkpXSmk3N0ZkYTZiQXhDT1V3QVYwaW5WSUFrVGpSOWNa?=
 =?utf-8?B?dTVpQVFWUGJNOGFXRklibXFBeFAzdnZxZ1p2cDdzeEJwRFZiT0JGbnIwQkJW?=
 =?utf-8?B?TjB0T3liRUhnU0RkOGFzS2hLYUFMQjI5V1FVRUU5L2dPUkhmRlFwUHEwVFdM?=
 =?utf-8?B?bDBOV21pQXJka05IR2pISXhkNU1nb2ZrRFZYOHJUT0RxZFNOWWJZTHM1ZitL?=
 =?utf-8?B?TUx3cjNINGx1MCtOZTAwc1Jpd1pHUUdOSjZHNC90Y1BORlVPdDNqaVM1TnpV?=
 =?utf-8?B?VlQxRzFDWFgxU1VaUFc2VDNaTmRuWnR1YWhydXVmWTBkeHMxanFxOEh0REFl?=
 =?utf-8?B?TkE4K21OYnlkaEltR0RkdUNWRzEya1dTNGFOQ0dCL3l6anFwU1hjZSt1VW9q?=
 =?utf-8?B?MWc4MEp2MDNFU2NyRkR0NDlqdy9POUpqM09SZE9yQm8wUGNmWGVickpMMVEv?=
 =?utf-8?B?ZUp2NHpGbjBwZWl3Tk1BdUNLK0RKNEgxWTNPcHlwTy9BNDIxZEVkUjk0WUEv?=
 =?utf-8?B?TXlXZUpqMHpyS1RkNjU3aEsvRk52aTJOM1BwWmFHd0lJVEdaUVJNckd4eURq?=
 =?utf-8?B?V2hzNHpyUTlsTDBCeGNXRTlEdUZ6NGYzbEIxcTQ0dW1hNEhNRmlHNmg4RlpE?=
 =?utf-8?B?bHdTMHdLQUNLSXIrVmpSamEwWDdFVXBWQ2dDaFgyeEpxeVNsZklKUE4rd1Jk?=
 =?utf-8?B?eURVTVpVNUI1ZWR0RUNxc2p5aUJSc2UxSFlkZ2sya1piOVJZQWdsQ081Vm9R?=
 =?utf-8?B?OEFoSFNtYlhMQW9TVGt5UDlLN1NIUXVXZHVJUWpKbmJBYUxXU1lxdlNFVWMr?=
 =?utf-8?B?QWhtV3pTcHdsZ2RUd2NUMjFpVmtZQXlpaklWMWxqdkg2SEN3bGtnWkxBMWgz?=
 =?utf-8?B?WDhSNm1YNmRCZzRmeXFNamJJM1ZPRkVOWXYzTW0zVFovd3ZxMVd4Vmlmd1VT?=
 =?utf-8?B?MUk4aXRMcWJKNUlCMFRSSjVTbHNhblFaUnQ5ZENvQ2s5Q29KUkQ0bjQ2NkI5?=
 =?utf-8?B?eTcvWHl6RE1mV0JnZVFaNjJqb2FaU1pXRkgwVDZGSncvSFlUN3R4OGd4eTd3?=
 =?utf-8?B?RzUydXdYOW9HSjRYY1VZTktISzU0MlNncnNIa1FMUXVVZFNWdG9LTVBPUXZz?=
 =?utf-8?B?TzR2WFgrRlY0dEpmKzc0VEgyRzFFREpkc2pQbDF3ajVwYVlWMUgwWHRjNE5l?=
 =?utf-8?B?bitRblpQMThZWWlwZkk3WmllZVRNaXl4QXVnSzd4TVl1aElRQWltZ1dlYzV1?=
 =?utf-8?B?b3FWQy9RN3RpVTM4M3FBRmNvb25wYVZneUVTMEdKZlpSYXE4WGxvMExRTXBD?=
 =?utf-8?B?YmVRMi9uOE9MTUcvcDE3T04wTmNEeXNkZnJIbVBwcitpRExkTDk3Q0tEVFJv?=
 =?utf-8?Q?DrEgT27bqPxUkLv1N+rkagpY6?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c7f004e6-8589-48ab-9cad-08db50801ef3
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 May 2023 11:25:40.8193 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lIIVitQe+C1sGTcl62h0CVM/vxqgjTB1iOkeygc1LpGPYSO0FAI9nlDaR4bPlThob9XQmZHnlfWjDd+RYLaIynYXzLA7dNNWc/j0XvmjEuc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4814
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683631550; x=1715167550;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Fyfp9UGOQpf2HM/3bELdUPaBoKVJp3IACIBSa2HW9wg=;
 b=mG8ZJnCS1Qpxru4qjsATryxKTZfa2XL/CgS8ZagplJTCiK8EScza/oSl
 eQQqKGQlq3sUdZM1SDEcVE5E05qe6fC1rih60tm91m8EivNzxLW764O0H
 cdWNF5TTWRupLE2oJAsT7UpZHIO1KDTWKSMaHz9SYSyHxBUFtVkwwEdOX
 TRxoUqF0zy5jztmmL9+m62t4BYLNAzLKUKdnxcuavX/AjjxL+0hUeVd4C
 bEDyZGUl4/lriV9/b259i52JAPxsZO6ddvX1OhVlmt17NnRknd3D1Kck6
 aDPBYT4GoKjfgQsaCYJfmg3QvypD2WOvgSTn5j8CE4Q07y/LryievhdRW
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mG8ZJnCS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 09/12] ice: implement bridge
 port vlan
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
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTG9iYWtpbiwgQWxla3Nh
bmRlciA8YWxla3NhbmRlci5sb2Jha2luQGludGVsLmNvbT4NCj4gU2VudDogcGnEhXRlaywgMjEg
a3dpZXRuaWEgMjAyMyAxODozNQ0KPiBUbzogRHJld2VrLCBXb2pjaWVjaCA8d29qY2llY2guZHJl
d2VrQGludGVsLmNvbT4NCj4gQ2M6IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnOyBu
ZXRkZXZAdmdlci5rZXJuZWwub3JnOyBFcnRtYW4sIERhdmlkIE0gPGRhdmlkLm0uZXJ0bWFuQGlu
dGVsLmNvbT47DQo+IG1pY2hhbC5zd2lhdGtvd3NraUBsaW51eC5pbnRlbC5jb207IG1hcmNpbi5z
enljaWtAbGludXguaW50ZWwuY29tOyBDaG1pZWxld3NraSwgUGF3ZWwgPHBhd2VsLmNobWllbGV3
c2tpQGludGVsLmNvbT47DQo+IFNhbXVkcmFsYSwgU3JpZGhhciA8c3JpZGhhci5zYW11ZHJhbGFA
aW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENIIG5ldC1uZXh0IDA5LzEyXSBpY2U6IGlt
cGxlbWVudCBicmlkZ2UgcG9ydCB2bGFuDQo+IA0KPiBGcm9tOiBXb2pjaWVjaCBEcmV3ZWsgPHdv
amNpZWNoLmRyZXdla0BpbnRlbC5jb20+DQo+IERhdGU6IE1vbiwgMTcgQXByIDIwMjMgMTE6MzQ6
MDkgKzAyMDANCj4gDQo+ID4gRnJvbTogTWljaGFsIFN3aWF0a293c2tpIDxtaWNoYWwuc3dpYXRr
b3dza2lAbGludXguaW50ZWwuY29tPg0KPiA+DQo+ID4gUG9ydCBWTEFOIGluIHRoaXMgY2FzZSBt
ZWFucyBwdXNoIGFuZCBwb3AgVkxBTiBhY3Rpb24gb24gc3BlY2lmaWMgdmlkLg0KPiA+IFRoZXJl
IGFyZSBhIGZldyBsaW1pdGF0aW9uIGluIGhhcmR3YXJlOg0KPiA+IC0gcHVzaCBhbmQgcG9wIGNh
bid0IGJlIHVzZWQgc2VwYXJhdGVseQ0KPiA+IC0gaWYgcG9ydCBWTEFOIGlzIHVzZWQgdGhlcmUg
Y2FuJ3QgYmUgYW55IHRydW5rIFZMQU5zLCBiZWNhdXNlIHBvcA0KPiA+ICAgYWN0aW9uIGlzIGRv
bmUgb24gYWxsIHRyYWZpYyByZWNlaXZlZCBieSBWU0kgaW4gcG9ydCBWTEFOIG1vZGUNCj4gPiAt
IHBvcnQgVkxBTiBtb2RlIG9uIHVwbGluayBwb3J0IGlzbid0IHN1cHBvcnRlZA0KPiANCj4gWy4u
Ll0NCj4gDQo+ID4gQEAgLTYxMCwxMSArNjEyLDI2IEBAIGljZV9lc3dpdGNoX2JyX3ZsYW5fZmls
dGVyaW5nX3NldChzdHJ1Y3QgaWNlX2Vzd19iciAqYnJpZGdlLCBib29sIGVuYWJsZSkNCj4gPiAg
CQlicmlkZ2UtPmZsYWdzICY9IH5JQ0VfRVNXSVRDSF9CUl9WTEFOX0ZJTFRFUklORzsNCj4gPiAg
fQ0KPiA+DQo+ID4gK3N0YXRpYyB2b2lkDQo+ID4gK2ljZV9lc3dpdGNoX2JyX2NsZWFyX3B2aWQo
c3RydWN0IGljZV9lc3dfYnJfcG9ydCAqcG9ydCkNCj4gPiArew0KPiA+ICsJc3RydWN0IGljZV92
c2lfdmxhbl9vcHMgKnZsYW5fb3BzID0NCj4gPiArCQlpY2VfZ2V0X2NvbXBhdF92c2lfdmxhbl9v
cHMocG9ydC0+dnNpKTsNCj4gPiArDQo+IA0KPiBEZXJlZiBpbiBhIHNlcGFyYXRlIGxpbmUgdG8g
YXZvaWQgYnJlYWtpbmc/DQoNCnN1cmUNCg0KPiANCj4gPiArCXZsYW5fb3BzLT5jbGVhcl9wb3J0
X3ZsYW4ocG9ydC0+dnNpKTsNCj4gPiArDQo+ID4gKwlpY2VfdmZfdnNpX2Rpc2FibGVfcG9ydF92
bGFuKHBvcnQtPnZzaSk7DQo+ID4gKw0KPiA+ICsJcG9ydC0+cHZpZCA9IDA7DQo+ID4gK30NCj4g
PiArDQo+ID4gIHN0YXRpYyB2b2lkDQo+ID4gIGljZV9lc3dpdGNoX2JyX3ZsYW5fY2xlYW51cChz
dHJ1Y3QgaWNlX2Vzd19icl9wb3J0ICpwb3J0LA0KPiA+ICAJCQkgICAgc3RydWN0IGljZV9lc3df
YnJfdmxhbiAqdmxhbikNCj4gPiAgew0KPiA+ICAJeGFfZXJhc2UoJnBvcnQtPnZsYW5zLCB2bGFu
LT52aWQpOw0KPiA+ICsJaWYgKHBvcnQtPnB2aWQgPT0gdmxhbi0+dmlkKQ0KPiA+ICsJCWljZV9l
c3dpdGNoX2JyX2NsZWFyX3B2aWQocG9ydCk7DQo+ID4gIAlrZnJlZSh2bGFuKTsNCj4gPiAgfQ0K
PiA+DQo+ID4gQEAgLTYyNyw5ICs2NDQsNTAgQEAgc3RhdGljIHZvaWQgaWNlX2Vzd2l0Y2hfYnJf
cG9ydF92bGFuc19mbHVzaChzdHJ1Y3QgaWNlX2Vzd19icl9wb3J0ICpwb3J0KQ0KPiA+ICAJCWlj
ZV9lc3dpdGNoX2JyX3ZsYW5fY2xlYW51cChwb3J0LCB2bGFuKTsNCj4gPiAgfQ0KPiA+DQo+ID4g
K3N0YXRpYyBpbnQNCj4gPiAraWNlX2Vzd2l0Y2hfYnJfc2V0X3B2aWQoc3RydWN0IGljZV9lc3df
YnJfcG9ydCAqcG9ydCwNCj4gPiArCQkJc3RydWN0IGljZV9lc3dfYnJfdmxhbiAqdmxhbikNCj4g
PiArew0KPiA+ICsJc3RydWN0IGljZV92bGFuIHBvcnRfdmxhbiA9IElDRV9WTEFOKEVUSF9QXzgw
MjFRLCB2bGFuLT52aWQsIDApOw0KPiA+ICsJc3RydWN0IGRldmljZSAqZGV2ID0gaWNlX3BmX3Rv
X2Rldihwb3J0LT52c2ktPmJhY2spOw0KPiA+ICsJc3RydWN0IGljZV92c2lfdmxhbl9vcHMgKnZs
YW5fb3BzOw0KPiA+ICsJaW50IGVycjsNCj4gPiArDQo+ID4gKwlpZiAocG9ydC0+cHZpZCA9PSB2
bGFuLT52aWQgfHwgdmxhbi0+dmlkID09IDEpDQo+ID4gKwkJcmV0dXJuIDA7DQo+ID4gKw0KPiA+
ICsJLyogU2V0dGluZyBwb3J0IHZsYW4gb24gdXBsaW5rIGlzbid0IHN1cHBvcnRlZCBieSBodyAq
Lw0KPiA+ICsJaWYgKHBvcnQtPnR5cGUgPT0gSUNFX0VTV0lUQ0hfQlJfVVBMSU5LX1BPUlQpDQo+
ID4gKwkJcmV0dXJuIC1FT1BOT1RTVVBQOw0KPiA+ICsNCj4gPiArCWlmIChwb3J0LT5wdmlkKSB7
DQo+ID4gKwkJZGV2X2luZm8oZGV2LA0KPiANCj4gZGV2X2VycigpPw0KDQpUbyBtZSBpdCdzIG5v
dCBhbiBlcnJvciwgcG9ydCB2bGFuIGlzIGFscmVhZHkgY29uZmlndXJlZA0KDQo+IA0KPiA+ICsJ
CQkgIlBvcnQgVkxBTiAodnNpPSV1LCB2aWQ9JXUpIGFscmVhZHkgZXhpc3RzIG9uIHRoZSBwb3J0
LCByZW1vdmUgaXQgYmVmb3JlIGFkZGluZyBuZXcgb25lXG4iLA0KPiA+ICsJCQkgcG9ydC0+dnNp
X2lkeCwgcG9ydC0+cHZpZCk7DQo+ID4gKwkJcmV0dXJuIC1FRVhJU1Q7DQo+IA0KPiBIbW0sIGlz
bid0IC1FQlVTWSBtb3JlIGNvbW1vbiBmb3Igc3VjaCBjYXNlcz8NCj4gDQo+IChiZWxvdyBhcyB3
ZWxsKQ0KDQpJIGRvbid0IHRoaW5rIHNvLCB1c2VyIGlzIHRyeWluZyB0byBjb25maWd1cmUgc29t
ZXRoaW5nIHRoYXQgaXMgYWxyZWFkeSBkb25lLg0KDQo+IA0KPiA+ICsJfQ0KPiA+ICsNCj4gPiAr
CWljZV92Zl92c2lfZW5hYmxlX3BvcnRfdmxhbihwb3J0LT52c2kpOw0KPiANCj4gWy4uLl0NCj4g
DQo+ID4gQEAgLTYzOSwxNCArNjk3LDI5IEBAIGljZV9lc3dpdGNoX2JyX3ZsYW5fY3JlYXRlKHUx
NiB2aWQsIHUxNiBmbGFncywgc3RydWN0IGljZV9lc3dfYnJfcG9ydCAqcG9ydCkNCj4gPg0KPiA+
ICAJdmxhbi0+dmlkID0gdmlkOw0KPiA+ICAJdmxhbi0+ZmxhZ3MgPSBmbGFnczsNCj4gPiArCWlm
ICgoZmxhZ3MgJiBCUklER0VfVkxBTl9JTkZPX1BWSUQpICYmDQo+ID4gKwkgICAgKGZsYWdzICYg
QlJJREdFX1ZMQU5fSU5GT19VTlRBR0dFRCkpIHsNCj4gPiArCQllcnIgPSBpY2VfZXN3aXRjaF9i
cl9zZXRfcHZpZChwb3J0LCB2bGFuKTsNCj4gPiArCQlpZiAoZXJyKQ0KPiA+ICsJCQlnb3RvIGVy
cl9zZXRfcHZpZDsNCj4gPiArCX0gZWxzZSBpZiAoKGZsYWdzICYgQlJJREdFX1ZMQU5fSU5GT19Q
VklEKSB8fA0KPiA+ICsJCSAgIChmbGFncyAmIEJSSURHRV9WTEFOX0lORk9fVU5UQUdHRUQpKSB7
DQo+ID4gKwkJZGV2X2luZm8oZGV2LCAiVkxBTiBwdXNoIGFuZCBwb3AgYXJlIHN1cHBvcnRlZCBv
bmx5IHNpbXVsdGFuZW91c2x5XG4iKTsNCj4gDQo+IChzYW1lIGZvciBkZXZfZXJyKCksIGFzIHdl
bGwgYXMgYmVsb3cpDQoNCg0KQWdhaW4sIGlzIHRoaXMgYW4gZXJyb3IgcmVhbGx5PyBXZSBqdXN0
IGRvbid0IHN1cHBvcnQgc3VjaCBjYXNlLg0KPiANCj4gPiArCQlyZXR1cm4gRVJSX1BUUigtRU9Q
Tk9UU1VQUCk7DQo+ID4gKwl9DQo+IA0KPiBbLi4uXQ0KPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9lc3dpdGNoX2JyLmggYi9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2Vzd2l0Y2hfYnIuaA0KPiA+IGluZGV4IGNmM2UyNjE1
YTYyYS4uYjZlZWYwNjhlYTgxIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2ljZS9pY2VfZXN3aXRjaF9ici5oDQo+ID4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWNlL2ljZV9lc3dpdGNoX2JyLmgNCj4gPiBAQCAtNDMsNiArNDMsNyBAQCBzdHJ1
Y3QgaWNlX2Vzd19icl9wb3J0IHsNCj4gPiAgCXN0cnVjdCBpY2VfdnNpICp2c2k7DQo+ID4gIAl1
MTYgdnNpX2lkeDsNCj4gPiAgCXN0cnVjdCB4YXJyYXkgdmxhbnM7DQo+ID4gKwl1MTYgcHZpZDsN
Cj4gDQo+IE9oLCBvciB5b3UgY2FuIGp1c3Qgc3RhY2sgOjp2c2lfaWR4IHdpdGggOjpwdmlkIGhl
cmUgdG8gYXZvaWQgc3Bhd25pbmcNCj4gaG9sZXMuDQoNClN1cmUNCg0KPiANCj4gPiAgfTsNCj4g
Pg0KPiA+ICBlbnVtIHsNCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWNlL2ljZV92Zl92c2lfdmxhbl9vcHMuYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2ljZS9pY2VfdmZfdnNpX3ZsYW5fb3BzLmMNCj4gPiBpbmRleCBiMWZmYjgxODkzZDQuLjQ0N2I0
ZTZlZjdlNCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2Uv
aWNlX3ZmX3ZzaV92bGFuX29wcy5jDQo+ID4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWNlL2ljZV92Zl92c2lfdmxhbl9vcHMuYw0KPiA+IEBAIC0yMSw2ICsyMSwxMDggQEAgbm9v
cF92bGFuKHN0cnVjdCBpY2VfdnNpIF9fYWx3YXlzX3VudXNlZCAqdnNpKQ0KPiA+ICAJcmV0dXJu
IDA7DQo+ID4gIH0NCj4gPg0KPiA+ICtzdGF0aWMgdm9pZCBpY2VfcG9ydF92bGFuX29uKHN0cnVj
dCBpY2VfdnNpICp2c2kpDQo+ID4gK3sNCj4gPiArCXN0cnVjdCBpY2VfdnNpX3ZsYW5fb3BzICp2
bGFuX29wczsNCj4gPiArCXN0cnVjdCBpY2VfcGYgKnBmID0gdnNpLT5iYWNrOw0KPiA+ICsNCj4g
PiArCWlmIChpY2VfaXNfZHZtX2VuYSgmcGYtPmh3KSkgew0KPiA+ICsJCXZsYW5fb3BzID0gJnZz
aS0+b3V0ZXJfdmxhbl9vcHM7DQo+ID4gKw0KPiA+ICsJCS8qIHNldHVwIG91dGVyIFZMQU4gb3Bz
ICovDQo+ID4gKwkJdmxhbl9vcHMtPnNldF9wb3J0X3ZsYW4gPSBpY2VfdnNpX3NldF9vdXRlcl9w
b3J0X3ZsYW47DQo+ID4gKwkJdmxhbl9vcHMtPmNsZWFyX3BvcnRfdmxhbiA9IGljZV92c2lfY2xl
YXJfb3V0ZXJfcG9ydF92bGFuOw0KPiA+ICsJCXZsYW5fb3BzLT5jbGVhcl9wb3J0X3ZsYW4gPSBp
Y2VfdnNpX2NsZWFyX291dGVyX3BvcnRfdmxhbjsNCj4gPiArCQl2bGFuX29wcy0+ZW5hX3J4X2Zp
bHRlcmluZyA9DQo+ID4gKwkJCWljZV92c2lfZW5hX3J4X3ZsYW5fZmlsdGVyaW5nOw0KPiA+ICsN
Cj4gPiArCQkvKiBzZXR1cCBpbm5lciBWTEFOIG9wcyAqLw0KPiA+ICsJCXZsYW5fb3BzID0gJnZz
aS0+aW5uZXJfdmxhbl9vcHM7DQo+ID4gKwkJdmxhbl9vcHMtPmFkZF92bGFuID0gbm9vcF92bGFu
X2FyZzsNCj4gPiArCQl2bGFuX29wcy0+ZGVsX3ZsYW4gPSBub29wX3ZsYW5fYXJnOw0KPiA+ICsJ
CXZsYW5fb3BzLT5lbmFfc3RyaXBwaW5nID0gaWNlX3ZzaV9lbmFfaW5uZXJfc3RyaXBwaW5nOw0K
PiA+ICsJCXZsYW5fb3BzLT5kaXNfc3RyaXBwaW5nID0gaWNlX3ZzaV9kaXNfaW5uZXJfc3RyaXBw
aW5nOw0KPiA+ICsJCXZsYW5fb3BzLT5lbmFfaW5zZXJ0aW9uID0gaWNlX3ZzaV9lbmFfaW5uZXJf
aW5zZXJ0aW9uOw0KPiA+ICsJCXZsYW5fb3BzLT5kaXNfaW5zZXJ0aW9uID0gaWNlX3ZzaV9kaXNf
aW5uZXJfaW5zZXJ0aW9uOw0KPiA+ICsJfSBlbHNlIHsNCj4gPiArCQl2bGFuX29wcyA9ICZ2c2kt
PmlubmVyX3ZsYW5fb3BzOw0KPiA+ICsNCj4gPiArCQl2bGFuX29wcy0+c2V0X3BvcnRfdmxhbiA9
IGljZV92c2lfc2V0X2lubmVyX3BvcnRfdmxhbjsNCj4gPiArCQl2bGFuX29wcy0+Y2xlYXJfcG9y
dF92bGFuID0gaWNlX3ZzaV9jbGVhcl9pbm5lcl9wb3J0X3ZsYW47DQo+ID4gKwkJdmxhbl9vcHMt
PmNsZWFyX3BvcnRfdmxhbiA9IGljZV92c2lfY2xlYXJfaW5uZXJfcG9ydF92bGFuOw0KPiA+ICsJ
CXZsYW5fb3BzLT5lbmFfcnhfZmlsdGVyaW5nID0NCj4gPiArCQkJaWNlX3ZzaV9lbmFfcnhfdmxh
bl9maWx0ZXJpbmc7DQo+ID4gKwl9DQo+IA0KPiAtPmVuYV9yeF9maWx0ZXJpbmcgaXMgZmlsbGVk
IHdpdGgganVzdCBvbmUgcG9zc2libGUgdmFsdWUsIHNvIGl0IGNvdWxkDQo+IGJlIGRvbmUgb3V0
c2lkZSBpZnMuDQoNCkFncmVlDQoNCj4gDQo+ID4gK30NCj4gPiArDQo+ID4gK3N0YXRpYyB2b2lk
IGljZV9wb3J0X3ZsYW5fb2ZmKHN0cnVjdCBpY2VfdnNpICp2c2kpDQo+ID4gK3sNCj4gPiArCXN0
cnVjdCBpY2VfdnNpX3ZsYW5fb3BzICp2bGFuX29wczsNCj4gPiArCXN0cnVjdCBpY2VfcGYgKnBm
ID0gdnNpLT5iYWNrOw0KPiA+ICsNCj4gPiArCWlmIChpY2VfaXNfZHZtX2VuYSgmcGYtPmh3KSkg
ew0KPiA+ICsJCS8qIHNldHVwIGlubmVyIFZMQU4gb3BzICovDQo+ID4gKwkJdmxhbl9vcHMgPSAm
dnNpLT5pbm5lcl92bGFuX29wczsNCj4gPiArDQo+ID4gKwkJdmxhbl9vcHMtPmVuYV9zdHJpcHBp
bmcgPSBpY2VfdnNpX2VuYV9pbm5lcl9zdHJpcHBpbmc7DQo+ID4gKwkJdmxhbl9vcHMtPmRpc19z
dHJpcHBpbmcgPSBpY2VfdnNpX2Rpc19pbm5lcl9zdHJpcHBpbmc7DQo+ID4gKwkJdmxhbl9vcHMt
PmVuYV9pbnNlcnRpb24gPSBpY2VfdnNpX2VuYV9pbm5lcl9pbnNlcnRpb247DQo+ID4gKwkJdmxh
bl9vcHMtPmRpc19pbnNlcnRpb24gPSBpY2VfdnNpX2Rpc19pbm5lcl9pbnNlcnRpb247DQo+ID4g
Kw0KPiA+ICsJCXZsYW5fb3BzID0gJnZzaS0+b3V0ZXJfdmxhbl9vcHM7DQo+ID4gKw0KPiA+ICsJ
CXZsYW5fb3BzLT5kZWxfdmxhbiA9IGljZV92c2lfZGVsX3ZsYW47DQo+ID4gKwkJdmxhbl9vcHMt
PmVuYV9zdHJpcHBpbmcgPSBpY2VfdnNpX2VuYV9vdXRlcl9zdHJpcHBpbmc7DQo+ID4gKwkJdmxh
bl9vcHMtPmRpc19zdHJpcHBpbmcgPSBpY2VfdnNpX2Rpc19vdXRlcl9zdHJpcHBpbmc7DQo+ID4g
KwkJdmxhbl9vcHMtPmVuYV9pbnNlcnRpb24gPSBpY2VfdnNpX2VuYV9vdXRlcl9pbnNlcnRpb247
DQo+ID4gKwkJdmxhbl9vcHMtPmRpc19pbnNlcnRpb24gPSBpY2VfdnNpX2Rpc19vdXRlcl9pbnNl
cnRpb247DQo+ID4gKwl9IGVsc2Ugew0KPiA+ICsJCXZsYW5fb3BzID0gJnZzaS0+aW5uZXJfdmxh
bl9vcHM7DQo+ID4gKw0KPiA+ICsJCXZsYW5fb3BzLT5kZWxfdmxhbiA9IGljZV92c2lfZGVsX3Zs
YW47DQo+ID4gKwkJdmxhbl9vcHMtPmVuYV9zdHJpcHBpbmcgPSBpY2VfdnNpX2VuYV9pbm5lcl9z
dHJpcHBpbmc7DQo+ID4gKwkJdmxhbl9vcHMtPmRpc19zdHJpcHBpbmcgPSBpY2VfdnNpX2Rpc19p
bm5lcl9zdHJpcHBpbmc7DQo+ID4gKwkJdmxhbl9vcHMtPmVuYV9pbnNlcnRpb24gPSBpY2VfdnNp
X2VuYV9pbm5lcl9pbnNlcnRpb247DQo+ID4gKwkJdmxhbl9vcHMtPmRpc19pbnNlcnRpb24gPSBp
Y2VfdnNpX2Rpc19pbm5lcl9pbnNlcnRpb247DQo+ID4gKwl9DQo+IA0KPiBUaGUgd2hvbGUgLT5p
bm5lcl92bGFuX29wcyBpcyBmaWxsZWQgd2l0aCB0aGUgc2FtZSB2YWx1ZXMsIHRoZSBvbmx5DQo+
IGRpZmZlcmVuY2UgaXMgLT5kZWxfdmxhbiwgd2hpY2ggY2FuIGJlIGxlZnQgaW4gYGVsc2VgLCB0
aGUgcmVzdCBjYW4gYmUNCj4gc2V0IHVwIHVuY29uZGl0aW9uYWxseS4NCg0KTWFrZXMgc2Vuc2UN
Cg0KPiANCj4gPiArDQo+ID4gKwlpZiAoIXRlc3RfYml0KElDRV9GTEFHX1ZGX1ZMQU5fUFJVTklO
RywgcGYtPmZsYWdzKSkNCj4gPiArCQl2bGFuX29wcy0+ZW5hX3J4X2ZpbHRlcmluZyA9IG5vb3Bf
dmxhbjsNCj4gPiArCWVsc2UNCj4gPiArCQl2bGFuX29wcy0+ZW5hX3J4X2ZpbHRlcmluZyA9DQo+
ID4gKwkJCWljZV92c2lfZW5hX3J4X3ZsYW5fZmlsdGVyaW5nOw0KPiA+ICt9DQo+ID4gKw0KPiA+
ICsvKioNCj4gPiArICogaWNlX3ZmX3ZzaV9lbmFibGVfcG9ydF92bGFuIC0gU2V0IFZTSSBWTEFO
IG9wcyB0byBzdXBwb3J0IHBvcnQgVkxBTg0KPiA+ICsgKiBAdnNpOiBWRidzIFZTSSBiZWluZyBj
b25maWd1cmVkDQo+ID4gKyAqDQo+ID4gKyAqIFRoZSBmdW5jdGlvbiB3b24ndCBjcmVhdGUgcG9y
dCBWTEFOLCBpdCBvbmx5IGFsbG93cyB0byBjcmVhdGUgcG9ydCBWTEFODQo+ID4gKyAqIHVzaW5n
IFZMQU4gb3BzIG9uIHRoZSBWRiBWU0kuDQo+ID4gKyAqLw0KPiA+ICt2b2lkIGljZV92Zl92c2lf
ZW5hYmxlX3BvcnRfdmxhbihzdHJ1Y3QgaWNlX3ZzaSAqdnNpKQ0KPiA+ICt7DQo+ID4gKwlpZiAo
V0FSTl9PTighdnNpLT52ZikpDQo+IA0KPiBJJ2QgdXNlIFdBUk5fT05fT05DRSgpLiBPdGhlcndp
c2UsIGl0IG1heSBiZSBwb3NzaWJsZSB0byBmbG9vZCBrZXJuZWwNCj4gbG9nIGJ1ZmZlciAoLT4g
Q1BVKSBmcm9tIHRoZSB1c2Vyc3BhY2UuDQoNClN1cmUNCg0KPiANCj4gPiArCQlyZXR1cm47DQo+
ID4gKw0KPiA+ICsJaWNlX3BvcnRfdmxhbl9vbih2c2kpOw0KPiA+ICt9DQo+ID4gKw0KPiA+ICsv
KioNCj4gPiArICogaWNlX3ZmX3ZzaV9kaXNhYmxlX3BvcnRfdmxhbiAtIENsZWFyIFZTSSBzdXBw
b3J0IGZvciBjcmVhdGluZyBwb3J0IFZMQU4NCj4gPiArICogQHZzaTogVkYncyBWU0kgYmVpbmcg
Y29uZmlndXJlZA0KPiA+ICsgKg0KPiA+ICsgKiBUaGUgZnVuY3Rpb24gc2hvdWxkIGJlIGNhbGxl
ZCBhZnRlciByZW1vdmluZyBwb3J0IFZMQU4gb24gVlNJDQo+ID4gKyAqICh1c2luZyBWTEFOIG9w
cykNCj4gPiArICovDQo+ID4gK3ZvaWQgaWNlX3ZmX3ZzaV9kaXNhYmxlX3BvcnRfdmxhbihzdHJ1
Y3QgaWNlX3ZzaSAqdnNpKQ0KPiA+ICt7DQo+ID4gKwlpZiAoV0FSTl9PTighdnNpLT52ZikpDQo+
IA0KPiAoc2FtZSkNCj4gDQo+ID4gKwkJcmV0dXJuOw0KPiA+ICsNCj4gPiArCWljZV9wb3J0X3Zs
YW5fb2ZmKHZzaSk7DQo+ID4gK30NCj4gDQo+IFsuLi5dDQo+IA0KPiA+ICsJaW5mby0+dmFsaWRf
c2VjdGlvbnMgPSBjcHVfdG9fbGUxNihJQ0VfQVFfVlNJX1BST1BfVkxBTl9WQUxJRCB8DQo+ID4g
KwkJCQkJICAgSUNFX0FRX1ZTSV9QUk9QX1NXX1ZBTElEKTsNCj4gPiArDQo+ID4gKwlyZXQgPSBp
Y2VfdXBkYXRlX3ZzaShodywgdnNpLT5pZHgsIGN0eHQsIE5VTEwpOw0KPiA+ICsJaWYgKHJldCkN
Cj4gPiArCQlkZXZfaW5mbyhpY2VfaHdfdG9fZGV2KGh3KSwgInVwZGF0ZSBWU0kgZm9yIHBvcnQg
VkxBTiBmYWlsZWQsIGVyciAlZCBhcV9lcnIgJXNcbiIsDQo+IA0KPiAoZGV2X2VycigpKQ0KPiAo
KyAlcGUpDQo+IA0KPiA+ICsJCQkgcmV0LCBpY2VfYXFfc3RyKGh3LT5hZG1pbnEuc3FfbGFzdF9z
dGF0dXMpKTsNCj4gPiArDQo+ID4gKwlrZnJlZShjdHh0KTsNCj4gPiArCXJldHVybiByZXQ7DQo+
ID4gK30NCj4gWy4uLl0NCj4gDQo+IFRoYW5rcywNCj4gT2xlaw0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlz
dApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
