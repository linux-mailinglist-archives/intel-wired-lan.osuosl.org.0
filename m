Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D63C57EBD3C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Nov 2023 07:51:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 61B9682319;
	Wed, 15 Nov 2023 06:51:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 61B9682319
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700031081;
	bh=SYOqdlfVq0Sxpw+/xiGOSbj84ilkL/Zv3gnEjgwEmjU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=u5SMfRHE+viugHp4t7AX2yDWWA5NFHUwenF2/lTx0MOShfa5GiPddB1ZsIRnalAXx
	 n/Kr2HTHNsEWuZ3BxSIHp4DR+rz1fvO/FTSqEOdnjyOuiJdZw7OnVrGu0uVmAUBbNr
	 JQimps/njH1LCfJPQJ3jXCeQqGb+DQfu2BuYbBXQqbu+hbbheGBOD6s6fhMAa0gLkI
	 U1eLBHoxlveF+yaGJE82AXQoav82K+J4EBiuw/r5zZGOQchJzk03AwnKXCCAADnj3+
	 8QQoDhG5ZzE0PR8hBpP+/xTAXX7LdCsM/sn3oHrt5Y/5UsO8/HP+aIVOiuK2kdGuce
	 EsU6ohjKLRJxA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ban7SJdE91oG; Wed, 15 Nov 2023 06:51:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3C8FD81ECF;
	Wed, 15 Nov 2023 06:51:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3C8FD81ECF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A1D5C1BF844
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Nov 2023 06:51:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8575881ECF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Nov 2023 06:51:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8575881ECF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GI6KOAD-ndpd for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Nov 2023 06:51:13 +0000 (UTC)
X-Greylist: delayed 428 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 15 Nov 2023 06:51:13 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4E50581E68
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4E50581E68
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Nov 2023 06:51:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="3936082"
X-IronPort-AV: E=Sophos;i="6.03,304,1694761200"; 
   d="scan'208";a="3936082"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2023 22:44:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="714785506"
X-IronPort-AV: E=Sophos;i="6.03,304,1694761200"; d="scan'208";a="714785506"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Nov 2023 22:44:04 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 14 Nov 2023 22:44:03 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Tue, 14 Nov 2023 22:44:03 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Tue, 14 Nov 2023 22:44:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lW5ylFYX1IsdF7Tvlq6mr1dYT+s8EieBsumi29gOFOOQnqMLyqmUHufupEsRJ3DN3eMc9esyhc0sd2x6HrKpRKIGTQ7D+9ZfNXl0kofLq9VA17qUR3DZtCPe+5nMnmedFjy7rG69OTYjJCXP6XAQxkuQXu2yYZWT6QJhcAn4Gcud2Dvukx2fJ6HvwKb2wF+nUUoDAfDoRnKFqEDN9PtO7WFclyZMtHyKt+Z6YCQOoxGXW3GU5I/dlJeFMd8r6MX4MX8yetI/ZEY3alxcEqveYXSJHEKbQxbiRsEdlHGriktQic9RZWTmQ7Sdv6t3hmqjMAk/kZ/Q8rpV+TWI4e8uHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q8+vR5Q0MBe3mc0//3Ym47+j/f99rH6/QrIh3dGv64Q=;
 b=mlzNcMH3c7lyHTakQVNWnhX7U+EzvmDAaAkIL2gILW4AZKRGe6r957h9+kWf5heb1Hz0GcgkUQKt8B//l6ksXK4621cx3108Z46eqtLRM+9yPEkyX8Q0x70btiJvWIPvVjDzFj8sL1CfAKAv8tLEaT+ufLktBOUtTI+zo0y8M3/8pWeLLCf8Y+iLbDZovjVkvfHwVTosXbRfY8TZV7bE+SD4E6DpuUeCJSGO7zUUEl+A62GglrBqpcB01rCyTRSJJvoSuX0w2GZMrU4qcGp4exxsY2XlGNcLLQ2IgYb1vcMRCpfp93ohdkgn84X8l4CJ/5dDwgy8AcYXvIb9jsptcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by CH0PR11MB8167.namprd11.prod.outlook.com (2603:10b6:610:192::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.20; Wed, 15 Nov
 2023 06:43:56 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::3d98:44fd:690d:c3f3]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::3d98:44fd:690d:c3f3%4]) with mapi id 15.20.6977.029; Wed, 15 Nov 2023
 06:43:55 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "Ertman, David M" <david.m.ertman@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: Fix VF Reset paths when
 interface in a failed over aggregate
Thread-Index: AQHaEaEEamtg5WPtQEyqthmXNJ1Lp7B6+qZw
Date: Wed, 15 Nov 2023 06:43:55 +0000
Message-ID: <PH0PR11MB5013E87371B58C92F013632496B1A@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20231107173825.1853492-1-david.m.ertman@intel.com>
In-Reply-To: <20231107173825.1853492-1-david.m.ertman@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|CH0PR11MB8167:EE_
x-ms-office365-filtering-correlation-id: b869b0b0-38c9-431f-50d2-08dbe5a63d41
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JHJxPzkAdRPh+lbONPhvIiPMf1pEQUmJjEu1Et2fTBuiJrlkh3/bgJJ1fFIaxVHwET5IodMRj8iu7kX+F3eesZHB+GDLs6ezEKc7GLkuKL640FdweVIYb16sCu7CzGrpWJrXPcaS8MNGTMv+FsvKAP26BhXu7AkOqgShapwG8Ezxw7qxpci4TbF4hzhtxWlIm8zjWfvMr28DzUCoyo4NnyEgc6Q3NGcK3FxsRbwSVgFd+BoONEMGADoOhhDbjbHqM87HyePQLTcjIPH8vRvVBF/x5zQuJdBUxwIzbVXHvNV6C5hJDDjVX+ZwmzS38GDYeI632HnBLM+Pg0V/7v+AJ8KCJViFCxOZQo4Ky9FmUsGTvHf3TlRnIsBLwl4vKMQSAQLyMfLMhg9DrvGDROKZtau3cWcBycZIb6RiTucYsOixLEvUCwbaUMepD70Kf2Qm4bwY7Hadn17d4vbx1kq0QpYtnvBamOsBPXKGwEQWIeclaOhhMzgpn2mzFm/NJr1S/0F9/OnXdUTw3LS/s5xC3MLxwmRRtPzLF4adIJTrPXAoekGCoRkzfMwAVSu55UUemYBoCPVEjjScc/09NiJlnfTRVqKcz3/JCUZD4W7y3IjTR6uyLfhu4QfAIiACJmbu
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(136003)(396003)(346002)(376002)(39860400002)(230922051799003)(186009)(1800799009)(451199024)(64100799003)(38070700009)(41300700001)(122000001)(38100700002)(7696005)(6506007)(53546011)(26005)(5660300002)(76116006)(9686003)(55016003)(316002)(110136005)(66556008)(66946007)(66476007)(66446008)(64756008)(33656002)(82960400001)(8676002)(8936002)(52536014)(71200400001)(83380400001)(478600001)(2906002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?p4MUbMd8M1VuYgfT/R4ScfsznpQ4hzATwFcXAB2rFpIqYRCSQEn/btI7cOlP?=
 =?us-ascii?Q?dJz7VJeIPTPWzIEhZC0jcChHMdwilu9mGoyHFs92RyQ6OsFES6o3a4j6GoGf?=
 =?us-ascii?Q?jT6ehaXxxObzHtCEhThAnGLhrLqk59SahXL/vGeYWqMWHGMp3LtYFJFKwieT?=
 =?us-ascii?Q?bKRjjJN3aeUL2D6fBc6JGKxLKqxl2MjZ65XNI/MMwVKnErFUZXAp3A2FXvU5?=
 =?us-ascii?Q?RctAeYNH/OoCLYRxTEbf+2tH4GxSpJ0Nsq3GspZxhdkeQMpJWF0/i+VdOv3T?=
 =?us-ascii?Q?D1UocJkItoxWcgh1Qgwj3lsweG9enBow+WHyG9WTTYnVkDOi7VXv0430sz99?=
 =?us-ascii?Q?W8Fh7H8YdrUS372IWDiO94auk7qc2SdUFxWsG/aZrgDyPdgEH16zksSeYx4j?=
 =?us-ascii?Q?bNazyzFy+3H4Y3WOGAO/sk25Dipf6hUKpMl43AkOwe3KeSF+IjjFsML/iZao?=
 =?us-ascii?Q?Ugo00jpLuVUcRrwRAZTI7Z1n+iNnDcAZmPJ0aQ3jVtn1nJqxfzzXtLo7kTEq?=
 =?us-ascii?Q?lAsaHLr3Y6+E74qaiZhSyWHavkDIswBc37y9BIAJmpCV0Ye9/gaVtkP02hzj?=
 =?us-ascii?Q?KiId/tTZTRt9KMYwo2Z5DnodZiAbHd1p6nJYVTih9NO+b+WOmVdcdqOKU+o1?=
 =?us-ascii?Q?ylmZdUjcdjOikTkNqYlEFMfeTUyHYsGKE5qW2d0xbeG89BNntspHn6jVfvnx?=
 =?us-ascii?Q?n0Fx7TLjvLEu+xRQN2kw/d+cwi9g2zubJ+Q6JzGWz2W+3DHN+oGfrxyKyKmC?=
 =?us-ascii?Q?4S2HaMLcaLHPESC/63nUP+44nYXTVCjOG+nDqIRgsTWaLqORnQJIdEqHO54r?=
 =?us-ascii?Q?7gljbLofcVAZPQjDVEr+gGEXXxKXVy2rvArfQmLinF7JQfqg8fPwOY53Fgcr?=
 =?us-ascii?Q?Gxy+keR8OtcGsl8bBoFMNdoBovQ4SsomcYMoi3iYUwK4hS3wu1dhSQDcchwz?=
 =?us-ascii?Q?gZDw2N/vlNKdOyexKPGKMmukEz8e2geWQ9ousE+Xkd9olk8NZw5AzQBhik4Z?=
 =?us-ascii?Q?rPehlnBLOUKAEhZUIG/Fia1R9/cfqG5QZ+l1urvlUthhZ5E5L645upAc8chK?=
 =?us-ascii?Q?XSzYVQ6OcDKRmUnETN6HIZzc7rrnnZmDUx/oRhzpkpHqQ+txY/wK9Qzz4prA?=
 =?us-ascii?Q?hAdZcEYrqFJn1kbpg3ya2NNOeCaS4qXDCC80YglXV5t9wr5tSPBjxNZyMW4n?=
 =?us-ascii?Q?Xos0k4L1p/fKKGKCP3biGFxYgww5jX+7fFXDw6LCMJcu5Z/mHL7N8oSLLG1U?=
 =?us-ascii?Q?PL2Hsz8kE4U/JUMnn3KIwF9LgWvob8LwHjT+ggJcQnkLXFc6ZqrJrpKa6Bso?=
 =?us-ascii?Q?Gm3wr7lh3mw67D1VGf1oyaZiefpUgsgjhVREcvdOXp34bfqMz2UPwrVs73OJ?=
 =?us-ascii?Q?Nr35QeoqOBEhK3ZY0xHha23SRmaS6bcjZ5nk4K9wVY3p7HYDqXXXelrN9eL0?=
 =?us-ascii?Q?lB8EDgkXvuxznIiZUk4xX9ltY7x0UXqrGH0sxjpHn2EzfJo52SV+P/j4wedW?=
 =?us-ascii?Q?HDX0tC82ApbxnLfT9hI3a/Oq8/eHWV5z0JTkeutq+Mw9xp+sXarmaCujPtpB?=
 =?us-ascii?Q?O82FkHaS2LhtP5SZ4y2Y+t6el5YnHFPn+JdAuTI1hAAD5p52Q0ceaP4v9rdH?=
 =?us-ascii?Q?6A=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b869b0b0-38c9-431f-50d2-08dbe5a63d41
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Nov 2023 06:43:55.7847 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Gyt0RbfPmn77pspoekHx7gNzzhFKQQZndANAyZQX7KIDGKQEgJLJAc2AHz1BtG+QUIvZFsfQkcgeGdGVY3crMmsakUjdrl/NBEVNnbO3VB0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8167
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700031073; x=1731567073;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=QZre8MAy34M7XIBHUBEQWi3QfATSc/FhfR3RsgHxUNw=;
 b=DYv8ejjXbB79w9xNt7ciWcU2AYYXQSwyrHIRNLxOOd8S6Ubql/+ej5Pl
 aWmYxfBCCT534Bj0e0YusqJX2T5V4jkFs1E9un4CMYQMemaNSLGlDmT5O
 DfY0iJMnpzGF7tVRjYj77eholgN1C3gnMbWG+eSQM3LWweYaniZbvRhM4
 FqK0q3+Bpf3Uiadm4dbBiOpziD8ZQGlkMKZQXwWBg9bQtBGaWiY0m/jli
 0HFXdhhw0j7HbJxylCtkL+l0HtNvFYdpxmhNzdlMfJTrVkJN3bPpFCbY3
 x1ESW9ZlZiOAWsIinDqRofZwQBZ6YwUTf1UAXyGQIlAaOr+B1Eg7fXIeA
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DYv8ejjX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: Fix VF Reset paths when
 interface in a failed over aggregate
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Dave Ertman
> Sent: Tuesday, November 7, 2023 11:08 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH iwl-net] ice: Fix VF Reset paths when
> interface in a failed over aggregate
> 
> There is an error when an interface has the following conditions:
> - PF is in an aggregate (bond)
> - PF has VFs created on it
> - bond is in a state where it is failed-over to the secondary interface
> - A VF reset is issued on one or more of those VFs
> 
> The issue is generated by the originating PF trying to rebuild or reconfigure
> the VF resources.  Since the bond is failed over to the secondary interface the
> queue contexts are in a modified state.
> 
> To fix this issue, have the originating interface reclaim its resources prior to
> the tear-down and rebuild or reconfigure.  Then after the process is
> complete, move the resources back to the currently active interface.
> 
> There are multiple paths that can be used depending on what triggered the
> event, so create a helper function to move the queues and use paired calls to
> the helper (back to origin, process, then move back to active interface) under
> the same lag_mutex lock.
> 
> Fixes: 1e0f9881ef79 ("ice: Flesh out implementation of support for SRIOV on
> bonded interface")
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lag.c      | 42 +++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_lag.h      |  1 +
>  drivers/net/ethernet/intel/ice/ice_vf_lib.c   | 20 +++++++++
>  drivers/net/ethernet/intel/ice/ice_virtchnl.c | 25 +++++++++++
>  4 files changed, 88 insertions(+)
> 
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
