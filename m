Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ED34737130
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jun 2023 18:08:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B70876136F;
	Tue, 20 Jun 2023 16:08:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B70876136F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687277289;
	bh=RgWsd39oqOhqIGtM6sEwvqI8K/6OwHrreMY1tCbl3Q8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=O7Cq03Xqi6W9tIW9zo/AvLT/LzEqGX4XSMuNK7wgYaAkZwqE4HhEj3YwZXiJ4akpM
	 Z7mOrQOFmUDp3qJOrUmXq00fcrVzJu7Uoi1G5XgpRyiyxR6PUoOiqgvSYotEfDDsos
	 IJvj3Iv8zXgkAsutJz+HP4qr0Fx7/USWEzvj7wOwVXuiT0AwnUie+zyuTXDMzTf68l
	 0R0sjyD9uNG1sbMmzvDrot7V3vt+zB+WPTbbZ51WCq3RW8iquAoadr7+Y1n3sHfkLf
	 lK7dpKHMYoS8ub+rLMqk0CQ93MjffRl3cAG7OELYIKOtzJK72VsgrHTWb4hoqK3KS9
	 1JeW344tcQV0A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 40q4ql-CdIcV; Tue, 20 Jun 2023 16:08:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 69C5661246;
	Tue, 20 Jun 2023 16:08:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 69C5661246
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 171E41BF48B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 16:08:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F0AF740207
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 16:08:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F0AF740207
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SUYeq7rXPwol for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jun 2023 16:08:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1E969401ED
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1E969401ED
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 16:08:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="425857822"
X-IronPort-AV: E=Sophos;i="6.00,257,1681196400"; d="scan'208";a="425857822"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 09:08:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="804008249"
X-IronPort-AV: E=Sophos;i="6.00,257,1681196400"; d="scan'208";a="804008249"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP; 20 Jun 2023 09:08:00 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 20 Jun 2023 09:08:00 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 20 Jun 2023 09:08:00 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 20 Jun 2023 09:07:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EpzzdQ7D+q7uOfgV4RMs8Tw24xVaU56fRaOQcV1OeamR7Ub+izLEJ0b/gY6HeaZfu3RzXrLJlw86YHOs7pysFCo03bpr9WD5g/a49iHpepBq1y7axcQLdlqHlm+ZOofXnpQy6Au8LOs88dTd1NQwiPK7TGh390VHY3tG0kRTOdwowKPJ26ZtHjzRJK6BlNjh+f3mvCuUPP0nxL+dIUCFCdH7WKgXkLE6lkT+5428pm4DDqpGdMsznIMneA6DHflmdsK5VI6hiTGc7dSWbCRs9+zspC+XFr/COrA95ku8B1Qj/zzMFyyeNYuGqcRsZEHAiWYesRAm0x/fVXFVQ2G3TA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=La1SxwM6LYM73YaxHcl4QA2M5x4fOXzAeNlvPKENBMA=;
 b=B2TkFUBIJyWHCSfawJdBt3gfb0dLRIg8RMmnYqAXC/F9fl/ewqnJ4Ammvo8ynFcmQe5fo5YQPwSTHov7UffkpX/60QcnWJyuh9NHmCwzcaoD56Ocb7BRIUI+mi1SfHafLkTgIKVCYULeGbayYzSFTE6p8jerqdZkA/ZPsoMLEP1bqmhpT/LJIv8GWSTyGhP6PXDMhCXCD+zAbVWkt9qnxF+drWq7gu2kztr9SdVg6zRDZZXNKWAnGjpvNzf9zmye5GFipnUDzYHz3dDsg1FV8rhzCLwyMBpXT1QPv64RKLuEnDV7jXVIycar+YEsmnqC2ocYSZ0s6o0LdqzjDpX2vA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW5PR11MB5811.namprd11.prod.outlook.com (2603:10b6:303:198::18)
 by IA1PR11MB7344.namprd11.prod.outlook.com (2603:10b6:208:423::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.35; Tue, 20 Jun
 2023 16:07:56 +0000
Received: from MW5PR11MB5811.namprd11.prod.outlook.com
 ([fe80::5e37:38f7:33d2:137a]) by MW5PR11MB5811.namprd11.prod.outlook.com
 ([fe80::5e37:38f7:33d2:137a%7]) with mapi id 15.20.6500.031; Tue, 20 Jun 2023
 16:07:55 +0000
From: "Ertman, David M" <david.m.ertman@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5 06/10] ice: Flesh out
 implementation of support for SRIOV on bonded interface
Thread-Index: AQHZn6acZZ4dkU/i6UihVFwfoODJwa+N6q2AgAX4sBA=
Date: Tue, 20 Jun 2023 16:07:55 +0000
Message-ID: <MW5PR11MB58118605A1284B8E08A783D9DD5CA@MW5PR11MB5811.namprd11.prod.outlook.com>
References: <20230615162932.762756-1-david.m.ertman@intel.com>
 <20230615162932.762756-7-david.m.ertman@intel.com>
 <d34b0e13-1365-07db-d6bb-694625c8f82c@intel.com>
In-Reply-To: <d34b0e13-1365-07db-d6bb-694625c8f82c@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW5PR11MB5811:EE_|IA1PR11MB7344:EE_
x-ms-office365-filtering-correlation-id: b985cda9-4544-4281-0097-08db71a8824e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 41uAtkAWPPWS7wKRwOBSi3dUJtgbFWjMfq4Q9ZegHo8yR8B8yA7CR7vW6O09bE1p82iKHv6KKwYxPe6bFQtNOptufU86skL6klJXkA64UEBhRXjoOr7cbjdpQL78M71rpjZZFFR5L/7Q8plpyY6s4VNB/zfyBsOxR20igeiq3jM1wqZH/6DKe/wzLB67kbDSJX6L5gDzdwpU7SfGPb6SogoQPJKj6/SUfSXy2gFOTh/CKMRwY83RvKZvbmV2C8fRGAdRY9Re6hc428gvUDG2mWhX0MboV8IHsHe9OOei0VbqnEC+JIZOHNk8/8Ko2NGhu8MMhLu6h8bp2tTUO4tmhB7A7BElSDJKtVNmdWhhRaf6x/cOW1OEg8wBUVczZVRvm7dKqQjkyVgdpNn0iDZDSmGM83AEDsYxia7pBsL53C8/8/5CoqHzbOM0xohV7GMhiL7lhiClcRnTvC7XPaIyjg9tjWDNj//m44iRhQ2P8swzWDcjuTjNXahEsiWUOyTiZuVPRRgcNWnSaK+l97EozS5pvg1NPewyKrUB8koXWAisQkoet+b9mMwTjdxaCLfstqK9GQs92kbASyO0DBreK1GrEn4BtSYwVYzgihpnZvs=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR11MB5811.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(366004)(346002)(396003)(136003)(39860400002)(451199021)(5660300002)(2906002)(76116006)(66556008)(52536014)(9686003)(54906003)(316002)(4326008)(66476007)(110136005)(66446008)(66946007)(64756008)(41300700001)(186003)(478600001)(71200400001)(7696005)(26005)(8936002)(8676002)(53546011)(6506007)(83380400001)(82960400001)(55016003)(38100700002)(122000001)(33656002)(86362001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UkRsS1RyNzhCOG1ka1NGdzBIZlJJL0NPNWcvUGFucXQwV3pKcXYrcG5VQnBy?=
 =?utf-8?B?SVMzL3d3d2Y5dDFPaUdBeHpuVTNwZUlTd1VuN3ZlWHlOeTkyU2dDc1hjQklU?=
 =?utf-8?B?S2tBdWdNYjBOQW5odWtoRlZ0WU42SHp3Y1Q3MisxK3BqRDA4YmVPQlNDSXBR?=
 =?utf-8?B?TmczYmE5cVhJTThod2d0NlFXejNySG1TLzdNbjcydDRLMlVSQndQdG9LcjJ0?=
 =?utf-8?B?cm1CcldWNmNpZi8zcnFsUnZvMGdWc1o5Vm1QTkp3RjB3REVGMUxIUGl4aFBw?=
 =?utf-8?B?REVJQ0JHZlp2VFErN0JrbmJFRXdZajkyNjRhazBZRHhBbjdXeXVld05pRWNP?=
 =?utf-8?B?Sk9aUnNuN3JlbGtjb3V5MGJIWXpRT0FGaEQyUFBvUmMyZ2FNaHppelQveTZQ?=
 =?utf-8?B?eWhUV1ZORmdMbVVCVXREdjErSy9BdUFMaGhOMExCT2FMSExMRkxCQSsrUnBY?=
 =?utf-8?B?VDkyc3YwcForQnFqWGlaTEVTd1JoTGlrei96bndmTnpGakl0SGVXbXFDbVUw?=
 =?utf-8?B?L2xMeGlrLzZPZGJKL2djbzNvRjlybzZTTm83R1UxUmRlVjZob2lwK1d1M3hi?=
 =?utf-8?B?Z2orL0J6c1FGWjVZb01rVUtRenZCTUZOY3NjWUhHWHJlYnhwbU5HWkZoeUN2?=
 =?utf-8?B?R0s1MWRxQllWU0hwOXp3WTNndzVZUFhMRVMybUI0RkZYaGxhRis5Z3BacEhE?=
 =?utf-8?B?SWdJNHJQdzVZeWRPLzI3SE56eE44ckpOYldJamhFMHprclptTjZqMW9tK3Na?=
 =?utf-8?B?d2JGcE9OdVJUcm0vMVVOdDNheXNpVzlDMG44eXhzeU83VUdCRVcyVU9VcVZz?=
 =?utf-8?B?VkdHWGFkOTRKbGttVitOZUVSVHRCMjRCbWFZRzZLcDNwNGxGbUl2R1JDNFFo?=
 =?utf-8?B?Y1c1aHdvemRveVVwaGNpcUV5UUE1R0lhYXVzWWc2VHFFOHppaTBwdnRhUW16?=
 =?utf-8?B?aXlTNUJyV3hWRmRKSUlZT3Y3bWszdXRNOHA5VHNQbkhNZGFJb3VGbWNxWnN4?=
 =?utf-8?B?bkx6MGJKUnhqQ0FIRzA0clV2UUg1eDdHR0Z6RWx6M2xad2ZCaHVEUHZsMlR0?=
 =?utf-8?B?L25EZXFHbGxLdGdMd2xyWTBjNi9ha2h1SXBra3F2UGRKTlh3RVlNZE5XWllJ?=
 =?utf-8?B?TzNNZk9yWHgyQ1NpNUpFZ1BSS2o0b0hPNHV3TERJdE5lZ1h6dkRCbmtodUdV?=
 =?utf-8?B?UXNXN3RWL1lsTEdTb3YwTm9kS05XSnJVVkZzZUhjNGtxbWxCbTgxM3I3ajFs?=
 =?utf-8?B?OEhEaUNOK1V4NUNWUnVDN1ZObTk0QlZQR3BuUW9WY3FTaWNNcHFDT0Z5UWE3?=
 =?utf-8?B?S0hmZzFUODlIWm91ai9jc09PeEdtc09WV051TCtic3VYcCtkSUV1QXNyMktN?=
 =?utf-8?B?TkxGSGxpQjdVNHRJMkd4MUpWY2hCQ0JRQnVyWmtQcEJDUFVwcUlsSmhHZUpH?=
 =?utf-8?B?TGkvZk56YW1BN2ZoU2x5bzVISUdSeW5tb2xrZ3crSzF5RnlER0k3ZUdaMGRX?=
 =?utf-8?B?azRhUUJXUzk3ckFZcFZFVGxVMWVma2R3MUJTYlN1ZFBqeWc3T2h5cGYwd0ty?=
 =?utf-8?B?NzNSR1dGdE5qd0p6bFQzUllpTkpuVEpIKys2VHZna0Q3TTdxdVRNZzRNRFVW?=
 =?utf-8?B?QTM0NTBQN0NpZ3g4bkV2bXNzUlUvQzhiamo4cXg0dWt5R253U1lpKzh2NVZu?=
 =?utf-8?B?RytCYkxhR3c3QzgyQlJySG52K0tjZHZWeURwOW1SRzE2UFBGZ1hMaE5ldUpa?=
 =?utf-8?B?a2xzVVVPbkNjbGp4aGJlWTJjOS9kZWxKdEhzYlE0VE1JRmhtOVhwTGZqaUQx?=
 =?utf-8?B?S3crT3h1bStseVhpRDVaSkhvSWUxSGtFS2xJaEltVmMxSzdaOHd2Z3dwTGxt?=
 =?utf-8?B?QlZMMTY4dlBEV0VIUjl3dUI1VlJpWXhDa3ptQUhNMmdoRGpPNE5FR1FKVW8w?=
 =?utf-8?B?TmZmYlFjVVpDSG1jMkNBc1pnL1Y2RE9QUTZlNzlQbG5hVm4vUDNVTzNQLzhk?=
 =?utf-8?B?M3V4SEF3cUR0OWEyYno1dGZYdXZXWGVwRkU0ZFd3dEtMZElHTU5BOW42Mlht?=
 =?utf-8?B?RnlJOHdIUkU0NTJheFdUM3BqbjIyT3hTaFpyUm5GcmJ6enhGQXNhNVM2YU9a?=
 =?utf-8?Q?/o+lV5TZ60MFfJFApZERh3Zzf?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW5PR11MB5811.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b985cda9-4544-4281-0097-08db71a8824e
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jun 2023 16:07:55.7199 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /HLSWIzPkEyv7myKVlPUXnb1iOkjdrfquMmJGMPHiUsCYOp2Y8GlCrByVe+pfVMnYhm7SBSomy4jtXjamGOllsgP/ErarPJrKypz52GlGRA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7344
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687277282; x=1718813282;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=La1SxwM6LYM73YaxHcl4QA2M5x4fOXzAeNlvPKENBMA=;
 b=IGn0MBpRHbnzG70dNqmbApJKWokwSAf2Z/GgtCwkXWCElCCIX5rv95/A
 Zrr1TsCE3Mn3D1P2I9mPFmsMAcBdj+AfZ7DbBPEY4M7xY0rpotgXt+0Qx
 uCqE/vBkXMxFXTALnCR2ZMcJD0/TY02mVYOkzNle167AAvhHeybVJrcXa
 Xbn2qtSDWJP7kAakYi3JN9jHvdvAToPKzp39vMOegy3FjBchvM/H0HZ4P
 GMpT7lUQ8DtR5r/At1iddLoikXhttrgwESgAmJmEaehv8vV99/lVXgHIq
 EGj6sI39e7md2jPQKSzHX5VMFuTLRQqCaMSwV9fNM5GwCUQkhSvpwfhlL
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IGn0MBpR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 06/10] ice: Flesh out
 implementation of support for SRIOV on bonded interface
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
 "bcreeley@amd.com" <bcreeley@amd.com>,
 "daniel.machon@microchip.com" <daniel.machon@microchip.com>,
 "simon.horman@corigine.com" <simon.horman@corigine.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Sent: Friday, June 16, 2023 1:56 PM
> To: Ertman, David M <david.m.ertman@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; bcreeley@amd.com;
> daniel.machon@microchip.com; simon.horman@corigine.com
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 06/10] ice: Flesh out
> implementation of support for SRIOV on bonded interface
> 
> On 6/15/2023 9:29 AM, Dave Ertman wrote:
> 
> ...
> 
> >   /**
> > @@ -622,6 +1324,69 @@ static void ice_lag_monitor_active(struct ice_lag
> *lag, void *ptr)
> >   static bool
> >   ice_lag_chk_comp(struct ice_lag *lag, void *ptr)
> >   {
> > +	struct net_device *event_netdev, *event_upper;
> > +	struct netdev_notifier_bonding_info *info;
> > +	struct netdev_bonding_info *bonding_info;
> > +	struct list_head *tmp;
> > +	int count = 0;
> > +
> > +	if (!lag->primary)
> > +		return true;
> > +
> > +	event_netdev = netdev_notifier_info_to_dev(ptr);
> > +	rcu_read_lock();
> > +	event_upper =
> netdev_master_upper_dev_get_rcu(event_netdev);
> > +	rcu_read_unlock();
> > +	if (event_upper != lag->upper_netdev)
> > +		return true;
> > +
> > +	info = (struct netdev_notifier_bonding_info *)ptr;
> > +	bonding_info = &info->bonding_info;
> > +	lag->bond_mode = bonding_info->master.bond_mode;
> > +	if (lag->bond_mode != BOND_MODE_ACTIVEBACKUP) {
> > +		netdev_info(lag->netdev, "Bond Mode not ACTIVE-
> BACKUP\n");
> > +		return false;
> > +	}
> > +
> > +	list_for_each(tmp, lag->netdev_head) {
> > +		struct ice_dcbx_cfg *dcb_cfg, *peer_dcb_cfg;
> > +		struct ice_lag_netdev_list *entry;
> > +		struct ice_netdev_priv *peer_np;
> > +		struct net_device *peer_netdev;
> > +		struct ice_vsi *vsi, *peer_vsi;
> > +
> > +		entry = list_entry(tmp, struct ice_lag_netdev_list, node);
> > +		peer_netdev = entry->netdev;
> > +		if (!netif_is_ice(peer_netdev)) {
> > +			netdev_info(lag->netdev, "Found non-ice netdev in
> LAG\n");
> > +			return false;
> > +		}
> > +
> > +		count++;
> > +		if (count > 2) {
> > +			netdev_info(lag->netdev, "Found more than two
> netdevs in LAG\n");
> > +			return false;
> > +		}
> > +
> > +		peer_np = netdev_priv(peer_netdev);
> > +		vsi = ice_get_main_vsi(lag->pf);
> > +		peer_vsi = peer_np->vsi;
> > +		if (lag->pf->pdev->bus != peer_vsi->back->pdev->bus ||
> > +		    lag->pf->pdev->slot != peer_vsi->back->pdev->slot) {
> > +			netdev_info(lag->netdev, "Found netdev on
> different device in LAG\n");
> > +			return false;
> > +		}
> > +
> > +		dcb_cfg = &vsi->port_info->qos_cfg.local_dcbx_cfg;
> > +		peer_dcb_cfg = &peer_vsi->port_info-
> >qos_cfg.local_dcbx_cfg;
> > +		if (memcmp(dcb_cfg, peer_dcb_cfg,
> > +			   sizeof(struct ice_dcbx_cfg))) {
> > +			netdev_info(lag->netdev, "Found netdev with
> different DCB config in LAG\n");
> > +			return false;
> > +		}
> > +
> > +	}
> 
> As you have to respin anyways...
> 
> CHECK: Blank lines aren't necessary before a close brace '}'
> #893: FILE: drivers/net/ethernet/intel/ice/ice_lag.c:1388:

Fixed

> +
> +       }

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
