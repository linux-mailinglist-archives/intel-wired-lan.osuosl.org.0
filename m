Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D51823114
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Jan 2024 17:17:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8B9DC41953;
	Wed,  3 Jan 2024 16:17:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8B9DC41953
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1704298671;
	bh=kK9ZPgpv66EsoB9Yo8EqrPhW0wvZgSB+ZTqfnLb726E=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qQqHxLhkNIKY/BGbDclxBUC+L2jLV5aLiIhSoCSvpNcpwNn3D3rURf+B/CzVLwzEJ
	 Rd30m5rXaIPtoctgtaivj1YOlGpPbtllb4x0/6Ix6k53RmG76JDYCZks5ZtgJRVNvz
	 cUnf+sBT2s3h6H9TiOkPoDomIzGAQ32B85934LN7FWv/V6qO9DUsitK9rE9934RQRU
	 zvj9djGOAfOXKchThMLUd3kLp7g/0WSQy3FkNBcrw6gwCRqK5QOPjxgCuSoprR+sH/
	 UookW0avVLKoXNEi9bc/JC3DsK5lgUA0ECJxRzGz6V1KHd1tWjdo1oLNw+MwwB+sZ9
	 tSSXXYoQlI2AA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Yk8tWZjviblV; Wed,  3 Jan 2024 16:17:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BA3DE419BC;
	Wed,  3 Jan 2024 16:17:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BA3DE419BC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 34DF81BF471
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jan 2024 08:39:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 05D61416BF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jan 2024 08:39:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 05D61416BF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4RFrNKPtTMqN for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jan 2024 08:39:09 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BEAE7415FB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jan 2024 08:39:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BEAE7415FB
X-IronPort-AV: E=McAfee;i="6600,9927,10941"; a="395855624"
X-IronPort-AV: E=Sophos;i="6.04,327,1695711600"; d="scan'208";a="395855624"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2024 00:38:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10941"; a="773081544"
X-IronPort-AV: E=Sophos;i="6.04,327,1695711600"; d="scan'208";a="773081544"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Jan 2024 00:38:58 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Jan 2024 00:38:58 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 3 Jan 2024 00:38:58 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 3 Jan 2024 00:38:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Oc3VunifRmGn4RmiCTCeBPzAAeb6Wm3K7PHXAgsILBNqzTeqXFQ7pfDQ0wifa0BGaSi2zs+bERfCRTKcK2GrDrSbrB8uaX03s+Ka29HaJvFPN/0QM5I7zYtZVntsxBubK3eKwxXLEtJJblv/hABLiL4GYvSBxx/K0qHNl3zFrMU3z5ty8FfQKDVTSUKDjTfoTw2JKGeDiKor0N239g1fKxk3eYdrfpDn6rowh9kmFYv75O/4tuo1Jr2fM5v99NaKApZN9eCpI6o14+7vhB+XIewjtOe0Yfrj6OgebglryX0CDwqHpDSuKDKhF4DLqFXFm3n6jdpbcbhND3S4HW5h2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kK9ZPgpv66EsoB9Yo8EqrPhW0wvZgSB+ZTqfnLb726E=;
 b=FXmZycmW14TPlVl1thzZFx7cLt6v5KZWm5Pf4h7mUvKjBCMcQY9CzU5HD5lwkxV2JLb+A99ITAtnfKm7zZyrxjbrqaxk7IyLmYFwftVw2CRWEhdR6uSP1KeAHhxJwSzxWLCTFHxLNseN/WSLcxrVeUnhyrfCtbe/SG6uxDjPYq5OGG1MEgF63GSgGZpSMF8R/2ngT83M4al8jeEcwHf1+5CABDB5A7Sq3tW2TvKnuC37QeYlwxuiuIJg83vjE8yMUEyMbc4HYGNzwDPc4EZS32cwThA+eLEWoqM6aEaeBfgCObgK+y5oqGSM17nbqpjQo7JpEp34dBrLZQoiv05vvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5830.namprd11.prod.outlook.com (2603:10b6:510:129::20)
 by PH0PR11MB5657.namprd11.prod.outlook.com (2603:10b6:510:ee::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7135.25; Wed, 3 Jan
 2024 08:38:47 +0000
Received: from PH0PR11MB5830.namprd11.prod.outlook.com
 ([fe80::6ffc:93a3:6d7f:383c]) by PH0PR11MB5830.namprd11.prod.outlook.com
 ([fe80::6ffc:93a3:6d7f:383c%6]) with mapi id 15.20.7135.023; Wed, 3 Jan 2024
 08:38:47 +0000
From: "Song, Yoong Siang" <yoong.siang.song@intel.com>
To: John Fastabend <john.fastabend@gmail.com>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "David S . Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Richard Cochran <richardcochran@gmail.com>, "Alexei
 Starovoitov" <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Jesper
 Dangaard Brouer <hawk@kernel.org>, Stanislav Fomichev <sdf@google.com>,
 "Gomes, Vinicius" <vinicius.gomes@intel.com>, "Bezdeka, Florian"
 <florian.bezdeka@siemens.com>
Thread-Topic: [PATCH iwl-next,v1 1/1] igc: Add Tx hardware timestamp request
 for AF_XDP zero-copy packet
Thread-Index: AQHaL3Lw985N7ti7QEetzWznCSMLw7DHTRoAgACRqHA=
Date: Wed, 3 Jan 2024 08:38:46 +0000
Message-ID: <PH0PR11MB583078F62A1EC521C6CBA79BD860A@PH0PR11MB5830.namprd11.prod.outlook.com>
References: <20231215162158.951925-1-yoong.siang.song@intel.com>
 <6594a07eb3d4_11e8620810@john.notmuch>
In-Reply-To: <6594a07eb3d4_11e8620810@john.notmuch>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5830:EE_|PH0PR11MB5657:EE_
x-ms-office365-filtering-correlation-id: 40f6b113-cbb3-471f-35aa-08dc0c3766e3
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MtGQNasDuLnV48kprnejE/pq/PzCJa1FEVa4VL3IyNc43qzJs8FWQsjmCtiuBWX1JjHroLYDxRjG0bzh/0UW6ZRbHscIFawaQl7X2HI3TimdUiBROh7ayFH3hSYo1RfEbkLimpcRakNmmfvCPy5EGtkLEGK9Y/TN5hg5iYGd4q/2UhW7YmTEvolpVJHkDYYNWWRpyH+8Y6Bo4N4j7Uiy1dWlxWFAewAwzcFgl3qHgAADmZwv+83JmX/DwykajGWM/B2KPFGK/BQzx1RWToiCt1VfzUua23UJSY0tKAOZHfSAQW3bX7h+dNjqvQlag6NM2JA5Mvc6h2dDK4DAgIRkD22KMtvd/JMsvRf6qmx9nrH9gRIpgCIyPe42x9UXysokqO9++hsmTVUhpI9ASzOIX58hUthMgLiUmNOhSEB0IMZQliHg1hjo98+I24UL0+UDhQ3BXYPuuJ+rNEPyYHWAXduQFrZyM86GRqryDG31TZMlZ7H+Xqry+FBMFa9YKmPcI3NqWBx4ytrQNhSygB39trfRNJAKD26RQEvKArgc3yJRTzNv+rJhxU4lsLPpVVwiKuF2yHvWEEEveAIgk07joDqix8jzTgr63QVnJLk64OnGEquBbV6WHKbLYrPbtz1tq/4TQtznAPt5mR0qLNYNwQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5830.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(39860400002)(366004)(376002)(396003)(136003)(230922051799003)(1800799012)(451199024)(64100799003)(186009)(55016003)(921011)(26005)(86362001)(83380400001)(38100700002)(6506007)(38070700009)(33656002)(71200400001)(82960400001)(5660300002)(2906002)(52536014)(7416002)(9686003)(53546011)(7696005)(66946007)(4326008)(76116006)(54906003)(8936002)(64756008)(122000001)(316002)(66446008)(8676002)(66556008)(66476007)(110136005)(41300700001)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Tjl4SWJ5aEtBQTlQOTdhdlozWEM2Q25CeTZjbE9SdWJpVHRrdlBaYS9tWHZr?=
 =?utf-8?B?MFBxcHc1Mkp4bU9OVndHVUJ5TzdueFFYdTA2SENLQmRHc1ViZWtQTnpHR1Z4?=
 =?utf-8?B?RjdKT1FMTkVmUWIwWC9tQmxPT2lMMVdhd3V1dDZHeEZuczEvT0pTcFU0a2p4?=
 =?utf-8?B?UGRKU3JnMkpJaGNOYnU1K3ZWUm5ONjFDaVVHamxFcnFxb0o0YXB6Z25pbncy?=
 =?utf-8?B?ZGRxSW1oUU5jTW1pOHJsSGlFMVYxT0FzZXg2dUE1Y21SZWFsQ1BWaXFueFNx?=
 =?utf-8?B?MmVjZWdFcjRvaGdtU3VoSEkrWjJ6c29sWjVRZkRpOW5hQThBbG9pS24vMEFS?=
 =?utf-8?B?YnBxTTBmcXBvRFhIQ0R0eEJ5alNCQnNQZWFSU0RxU1liUHgzU3pRWFcyRHVv?=
 =?utf-8?B?VThhMWU4bFVzVXN2TDZGZjBkQ283UU5NT21LNHMvZ3FHbzlIV05haTl4SnhG?=
 =?utf-8?B?N3o2TEJrcmU5NFZtWlRhZUtreXI0K2Y4MGh6RytaL05PcHBKOGJPUFdOdzZ6?=
 =?utf-8?B?d09QQUo2SjkxZHFDdnpiS1FtUHhDMlg5U2N1Q3lBTnd0NTdHUkxXVXpWc0JI?=
 =?utf-8?B?akZUYnpqYzRFQVlTMXhWbGg2azZJZk1UUGh0Zk9kZVBDODdOTGZKcUNzWlVj?=
 =?utf-8?B?R2ZRb3ZXSGtxeWxjQisyVU9sVDQzakM2WGxjbDJZWjNoSGFQUHgrRnZJUVdE?=
 =?utf-8?B?UE5UZStXRGlNbndZaDUzMmt4cHJiTmdtT3M0ZmtkbTZYZXdwTmN6MUFxaHJG?=
 =?utf-8?B?M1ByU096dW1rNWl0TWVkRmVKUi9CS21iQ0RMNVEva29ZYUdWWVJPeFVGQkNK?=
 =?utf-8?B?US9aTjJYOG55NUVCWDN1aklHWEdqR09WWVZaa21HZnZCYUNnZm1SQ2NhRDFV?=
 =?utf-8?B?NEE5WUFmRjNkcEZVMTQvTGVkVS92TW5yV05oZUpMKzM5ZjgwNjJ2eHUzYkhC?=
 =?utf-8?B?NDd4aHB4Q2dneThVbXgxNmNGaTN3UXhHUHFsNFVLdDJsZm8vYkhZUjg5S1VY?=
 =?utf-8?B?UWhhK2wxV3pUSjI0Z2ErU1ZVM1k3enY5S2NUNEh1c1h2UGMranJkbDgreGx5?=
 =?utf-8?B?V2YrYml6cFZLelRZd2h6c3FhL2YrUWwrdk5VYlQxcElJT0FEVnNCbTNwU0hP?=
 =?utf-8?B?dnVOUmRsNkJobUdRbFBJampOdm5vQ1g4UnBGR01KYW51c0FINCtaUUs3Wlly?=
 =?utf-8?B?TUt4MDVkNFFXVVZhZDVhN1l3QUx0WmN6dGlFRU1pa1FJQnNISnNQSFd1UldB?=
 =?utf-8?B?SXhEMHBUMXVONzdQNjZrai92TkdTOElHQVphbjhGMW1LeU9pb3oxVzZ4czZT?=
 =?utf-8?B?ekloTUlFaHNvNWV6b1pKN0xENFE1elFKRXpsUzdiSmxYZ1pBdEduVklYeWRy?=
 =?utf-8?B?MzMxSENCUVNia29pYm8zVGV3cE1Eb2RpdkVndWdrRW5BbmdoUjZYekRvSjZx?=
 =?utf-8?B?YmVoRWNsRUVHS1EwWHh2N1p5dUxwU3A5OU9ya2p1N0JHbEJFdFA0OEk2RjZm?=
 =?utf-8?B?bFoyMUpOTGhCS0h2S0ZxMzFEWVI2QjRlZWVSMVZQKzJEWk9tLzA4b2NOQUVN?=
 =?utf-8?B?V053aUwxYy8xRnlqMmV1Zlh3NmJ5U25XY3QrSUI3Q1FiTUIzWjNJK1BqV21s?=
 =?utf-8?B?UzJnaGl2Z2lGeUhHZGsvaU5IWlJLT0htcGVPSDlTWmhDTTJ5U05SYjdheXpp?=
 =?utf-8?B?M0h4ZGY1OUtGOXVHU1pZVUhzaFlWcHNpZUlYR1RiS0l2eVJNQUhLZ0J3WHNz?=
 =?utf-8?B?dzZhNUErdFRRYzBnbWRMeFp1TlBtT280L1pqVURSVFRXb3l3T0JuNGNqVUFU?=
 =?utf-8?B?YUFab2FudTRqK1JLNlZxNGowckxqWFpuRFc4VHl3YjQwZ3dFcVdrQmFlWGNI?=
 =?utf-8?B?MktyZkdMdHZFTGY2QjVsKzFuRTZEajc3aHE5ckYxUnBiOFQyek0rd0ZMTmRJ?=
 =?utf-8?B?UGJwN1RjRC9mOU96dVQ5bkpMdVVvNDBmM0dUNFk3bGNkYWh0Zmw0dTE2WndH?=
 =?utf-8?B?K0syQS84MzZwWVBNODlWckpZL1NQVFlGQ1lXQjFyNFFRNWVNNGdTVm52Q09X?=
 =?utf-8?B?MkFVOEl4V3lROS91L3dOTVpDcFB3RGxHRnI4UHJZQ3M3MFlPaUNVWk56WlRV?=
 =?utf-8?B?eU5HL01pMDFvMFVNYUtKdUZGMTA5S2c3VjY0ajd3eXo0OVJNOGZaREdOdHlr?=
 =?utf-8?B?Y0E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5830.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 40f6b113-cbb3-471f-35aa-08dc0c3766e3
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jan 2024 08:38:46.8507 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2yvJQyzbNomZzcpUbgkSsMwmYNNhvt05SjrlAJ2lP8hnjiIIquRhuhK6prEX0rcPNNV/nJMI/MbZ+KBO1CNganrBqmkY1qfkyYqwe+CgFI8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5657
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Wed, 03 Jan 2024 16:17:34 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704271149; x=1735807149;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kK9ZPgpv66EsoB9Yo8EqrPhW0wvZgSB+ZTqfnLb726E=;
 b=DccTNdhuwcPVOAPTIyV35+YDx8c35lV/x/FDjjH8zu1sLvSBhGg6vEDW
 0cU2gIi+LBpiSJ1T3ykNUQHt9Z8VlUSDoF5lVyxISc7ALHrOAOSj4d3KM
 7LL7jCpExa/6t23Za/JHfIOSOMxdAoTzmvZqbVrjQx2IT6f3mvqU4eJMk
 tHPR2ly2LcEcc0/JHIY5wEHr944fevFuOnG7m8E+I+RsIbrwFHkdzeD/Z
 fppZD6U3lCq16MOJynPqZT8S9B2Ermi7OrfmL97tlXRfgc5WeMPHNstSj
 xfkWtpJjT//ptwhNoTbxBaFzkUlWz1P0KCaMfwvBQkSsd7QS5y6PG2Lz5
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DccTNdhu
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next,
 v1 1/1] igc: Add Tx hardware timestamp request for AF_XDP zero-copy
 packet
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
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "xdp-hints@xdp-project.net" <xdp-hints@xdp-project.net>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gV2VkbmVzZGF5LCBKYW51YXJ5IDMsIDIwMjQgNzo0NyBBTSwgSm9obiBGYXN0YWJlbmQgPGpv
aG4uZmFzdGFiZW5kQGdtYWlsLmNvbT4gd3JvdGU6DQo+U29uZyBZb29uZyBTaWFuZyB3cm90ZToN
Cj4+IFRoaXMgcGF0Y2ggYWRkcyBzdXBwb3J0IHRvIHBlci1wYWNrZXQgVHggaGFyZHdhcmUgdGlt
ZXN0YW1wIHJlcXVlc3QgdG8NCj4+IEFGX1hEUCB6ZXJvLWNvcHkgcGFja2V0IHZpYSBYRFAgVHgg
bWV0YWRhdGEgZnJhbWV3b3JrLiBQbGVhc2Ugbm90ZSB0aGF0DQo+PiB1c2VyIG5lZWRzIHRvIGVu
YWJsZSBUeCBIVyB0aW1lc3RhbXAgY2FwYWJpbGl0eSB2aWEgaWdjX2lvY3RsKCkgd2l0aA0KPj4g
U0lPQ1NIV1RTVEFNUCBjbWQgYmVmb3JlIHNlbmRpbmcgeHNrIFR4IHRpbWVzdGFtcCByZXF1ZXN0
Lg0KPj4NCj4+IFNhbWUgYXMgaW1wbGVtZW50YXRpb24gaW4gUlggdGltZXN0YW1wIFhEUCBoaW50
cyBrZnVuYyBtZXRhZGF0YSwgVGltZXIgMA0KPj4gKGFkanVzdGFibGUgY2xvY2spIGlzIHVzZWQg
aW4geHNrIFR4IGhhcmR3YXJlIHRpbWVzdGFtcC4gaTIyNS9pMjI2IGhhdmUNCj4+IGZvdXIgc2V0
cyBvZiB0aW1lc3RhbXBpbmcgcmVnaXN0ZXJzLiBBIHBvaW50ZXIgbmFtZWQgInhza19wZW5kaW5n
X3RzIg0KPj4gaXMgaW50cm9kdWNlZCB0byBpbmRpY2F0ZSB0aGUgdGltZXN0YW1waW5nIHJlZ2lz
dGVyIGlzIGFscmVhZHkgb2NjdXBpZWQuDQo+PiBGdXJ0aGVybW9yZSwgdGhlIG1lbnRpb25lZCBw
b2ludGVyIGFsc28gYmVpbmcgdXNlZCB0byBob2xkIHRoZSB0cmFuc21pdA0KPj4gY29tcGxldGlv
biB1bnRpbCB0aGUgdHggaGFyZHdhcmUgdGltZXN0YW1wIGlzIHJlYWR5LiBUaGlzIGlzIGJlY2F1
c2UgZm9yDQo+PiBpMjI1L2kyMjYsIHRoZSB0aW1lc3RhbXAgbm90aWZpY2F0aW9uIGNvbWVzIHNv
bWUgdGltZSBhZnRlciB0aGUgdHJhbnNtaXQNCj4+IGNvbXBsZXRpb24gZXZlbnQuIFRoZSBkcml2
ZXIgd2lsbCByZXRyaWdnZXIgaGFyZHdhcmUgaXJxIHRvIGNsZWFuIHRoZQ0KPj4gcGFja2V0IGFm
dGVyIHJldHJpZXZlIHRoZSB0eCBoYXJkd2FyZSB0aW1lc3RhbXAuDQo+Pg0KPj4gQmVzaWRlcywg
YSBwb2ludGVyIG5hbWVkICJ4c2tfbWV0YSIgaXMgYWRkZWQgaW50byBpZ2NfdHhfdGltZXN0YW1w
X3JlcXVlc3QNCj4+IHN0cnVjdHVyZSBhcyBhIGhvb2sgdG8gdGhlIG1ldGFkYXRhIGxvY2F0aW9u
IG9mIHRoZSB0cmFuc21pdCBwYWNrZXQuIFdoZW4NCj4+IGEgVHggdGltZXN0YW1wIGludGVycnVw
dCBoYXBwZW5zLCB0aGUgaW50ZXJydXB0IGhhbmRsZXIgd2lsbCBjb3B5IHRoZQ0KPj4gdmFsdWUg
b2YgVHggdGltZXN0YW1wIGludG8gbWV0YWRhdGEgdmlhIHhza190eF9tZXRhZGF0YV9jb21wbGV0
ZSgpLg0KPj4NCj4+IFRoaXMgcGF0Y2ggaXMgdGVzdGVkIHdpdGggdG9vbHMvdGVzdGluZy9zZWxm
dGVzdHMvYnBmL3hkcF9od19tZXRhZGF0YQ0KPj4gb24gSW50ZWwgQURMLVMgcGxhdGZvcm0uIEJl
bG93IGFyZSB0aGUgdGVzdCBzdGVwcyBhbmQgcmVzdWx0cy4NCj4+DQo+PiBDb21tYW5kIG9uIERV
VDoNCj4+IHN1ZG8gLi94ZHBfaHdfbWV0YWRhdGEgPGludGVyZmFjZSBuYW1lPg0KPj4gc3VkbyBo
d3N0YW1wX2N0bCAtaSA8aW50ZXJmYWNlIG5hbWU+IC10IDEgLXIgMQ0KPj4gc3VkbyAuL3Rlc3Rw
dHAgLWQgL2Rldi9wdHAwIC1zDQo+Pg0KPj4gQ29tbWFuZCBvbiBMaW5rIFBhcnRuZXI6DQo+PiBl
Y2hvIC1uIHhkcCB8IG5jIC11IC1xMSA8ZGVzdGluYXRpb24gSVB2NCBhZGRyPiA5MDkxDQo+Pg0K
Pj4gUmVzdWx0Og0KPj4geHNrX3JpbmdfY29uc19fcGVlazogMQ0KPj4gMHg1NTViMTEyYWU5NTg6
IHJ4X2Rlc2NbNl0tPmFkZHI9ODYxMTAgYWRkcj04NjExMCBjb21wX2FkZHI9ODYxMTAgRW9QDQo+
PiByeF9oYXNoOiAweEJGREVDMzZFIHdpdGggUlNTIHR5cGU6MHgxDQo+PiBIVyBSWC10aW1lOiAg
IDE2Nzc3NjI0MjkxOTAwNDA5NTUgKHNlYzoxNjc3NzYyNDI5LjE5MDApIGRlbHRhIHRvIFVzZXIg
UlgtdGltZQ0KPnNlYzowLjAwMDEgKDEwMC4xMjQgdXNlYykNCj4+IFhEUCBSWC10aW1lOiAgIDE2
Nzc3NjI0MjkxOTAxMjMxNjMgKHNlYzoxNjc3NzYyNDI5LjE5MDEpIGRlbHRhIHRvIFVzZXIgUlgt
dGltZQ0KPnNlYzowLjAwMDAgKDE3LjkxNiB1c2VjKQ0KPj4gMHg1NTViMTEyYWU5NTg6IHBpbmct
cG9uZyB3aXRoIGNzdW09NDA0ZSAod2FudCBjNTllKSBjc3VtX3N0YXJ0PTM0DQo+Y3N1bV9vZmZz
ZXQ9Ng0KPj4gMHg1NTViMTEyYWU5NTg6IGNvbXBsZXRlIHR4IGlkeD02IGFkZHI9NjAxMA0KPj4g
SFcgVFgtY29tcGxldGUtdGltZTogICAxNjc3NzYyNDI5MTkwMTczMzIzIChzZWM6MTY3Nzc2MjQy
OS4xOTAyKSBkZWx0YSB0bw0KPlVzZXIgVFgtY29tcGxldGUtdGltZSBzZWM6MC4wMTAwICgxMDAz
NS44ODQgdXNlYykNCj4+IFhEUCBSWC10aW1lOiAgIDE2Nzc3NjI0MjkxOTAxMjMxNjMgKHNlYzox
Njc3NzYyNDI5LjE5MDEpIGRlbHRhIHRvIFVzZXIgVFgtDQo+Y29tcGxldGUtdGltZSBzZWM6MC4w
MTAxICgxMDA4Ni4wNDQgdXNlYykNCj4+IEhXIFJYLXRpbWU6ICAgMTY3Nzc2MjQyOTE5MDA0MDk1
NSAoc2VjOjE2Nzc3NjI0MjkuMTkwMCkgZGVsdGEgdG8gSFcgVFgtDQo+Y29tcGxldGUtdGltZSBz
ZWM6MC4wMDAxICgxMzIuMzY4IHVzZWMpDQo+PiAweDU1NWIxMTJhZTk1ODogY29tcGxldGUgcngg
aWR4PTEzNCBhZGRyPTg2MTEwDQo+DQo+Q3VyaW91cyB3YXMgdGhlcmUgYW55IGJlbmNobWFya3Mg
cnVuIHdpdGggYW5kIHdpdGhvdXQgdGhpcyBlbmFibGVkPw0KPg0KDQpIaSBKb2huLA0KDQpUaGFu
a3MgZm9yIHlvdXIgY29tbWVudHMuDQpUaGVyZSBhcmUgc2ltaWxhciByZXF1ZXN0IGZyb20gVmlu
aWNpdXMgYWJvdXQgcGVyZm9ybWFuY2UgaW1wYWN0IGJ5IHRoaXMgcGF0Y2guDQp4ZHBfaHdfbWV0
YWRhdGEgYXBwIGlzIG5vdCBzdWl0YWJsZSBmb3Igc3VjaCBiZW5jaG1hcmsgdGVzdC4NCkkgd2ls
bCB0cnkgdG8gc2VhcmNoIGZvciBvdGhlciBzdWl0YWJsZSBhcHAgYW5kIHBlcmZvcm0gc29tZSBi
YW5kd2lkdGggdGVzdA0Kd2l0aCBhbmQgd2l0aG91dCBYRFAgWkMgaHcgdGltZXN0YW1wLiANCg0K
Pj4NCj4+IFNpZ25lZC1vZmYtYnk6IFNvbmcgWW9vbmcgU2lhbmcgPHlvb25nLnNpYW5nLnNvbmdA
aW50ZWwuY29tPg0KPj4gLS0tDQo+PiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2ln
Yy5oICAgICAgfCAxNSArKysrDQo+PiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2ln
Y19tYWluLmMgfCA4OCArKysrKysrKysrKysrKysrKysrKysrLQ0KPj4gIGRyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2lnYy9pZ2NfcHRwLmMgIHwgNDIgKysrKysrKystLS0NCj4+ICAzIGZpbGVz
IGNoYW5nZWQsIDEzNCBpbnNlcnRpb25zKCspLCAxMSBkZWxldGlvbnMoLSkNCj4+DQo+PiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnYy5oIGIvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnYy5oDQo+PiBpbmRleCBhYzdjODYxZTgzYTAuLmM4MzFk
ZGUwMTY2MiAxMDA2NDQNCj4+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9p
Z2MuaA0KPj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnYy5oDQo+PiBA
QCAtNzksNiArNzksOSBAQCBzdHJ1Y3QgaWdjX3R4X3RpbWVzdGFtcF9yZXF1ZXN0IHsNCj4+ICAJ
dTMyIHJlZ2w7ICAgICAgICAgICAgICAvKiB3aGljaCBUWFNUTVBMX3tYfSByZWdpc3RlciBzaG91
bGQgYmUgdXNlZCAqLw0KPj4gIAl1MzIgcmVnaDsgICAgICAgICAgICAgIC8qIHdoaWNoIFRYU1RN
UEhfe1h9IHJlZ2lzdGVyIHNob3VsZCBiZSB1c2VkICovDQo+PiAgCXUzMiBmbGFnczsgICAgICAg
ICAgICAgLyogZmxhZ3MgdGhhdCBzaG91bGQgYmUgYWRkZWQgdG8gdGhlIHR4X2J1ZmZlciAqLw0K
Pj4gKwl1OCB4c2tfcXVldWVfaW5kZXg7ICAgIC8qIFR4IHF1ZXVlIHdoaWNoIHJlcXVlc3Rpbmcg
dGltZXN0YW1wICovDQo+PiArCWJvb2wgKnhza19wZW5kaW5nX3RzOyAgLyogcmVmIHRvIHR4IHJp
bmcgZm9yIHdhaXRpbmcgdGltZXN0YW1wIGV2ZW50ICovDQo+DQo+SXMgaXQgcmVhbGx5IG5lY2Vz
c2FyeSB0byB1c2UgYSByZWYgdG8gYSBib29sIGhlcmUgaWYgZmVlbHMgYQ0KPmJpdCBvZGQgdG8g
bWU/IElzIHRoaXMganVzdCB0byBibG9jayB0aGUgdHggY29tcGxldGlvbiBvbiB0aGUgdGltZXN0
YW1wPw0KPg0KDQpZZXMsIGl0IGlzIHVzZWQgdG8gYmxvY2sgdGhlIHR4IGNvbXBsZXRpb24uIA0K
SSBjcmVhdGUgYm9vbCBwb2ludGVyIGFzIGEgImhvb2siIGJldHdlZW4gdGltZXN0YW1wIGV2ZW50
IGFuZCB0eCBjb21wbGV0aW9uIGV2ZW50Lg0KU2luY2UgdGhpcyBpcyBvZGQsIEkgd2lsbCB0YWtl
IHN1Z2dlc3Rpb24gZnJvbSBWaW5pY2l1cywgd2hpY2ggdXNlDQp0eF9idWZmZXIgcG9pbnRlciBh
cyAiaG9vayIuIElzIHRoaXMgc291bmQgYmV0dGVyPw0KDQo+PiArCXN0cnVjdCB4c2tfdHhfbWV0
YWRhdGFfY29tcGwgeHNrX21ldGE7CS8qIHJlZiB0byB4c2sgVHggbWV0YWRhdGEgKi8NCj4+ICB9
Ow0KPj4NCj4+ICBzdHJ1Y3QgaWdjX2lubGluZV9yeF90c3RhbXBzIHsNCj4+IEBAIC0zMTksNiAr
MzIyLDkgQEAgdm9pZCBpZ2NfZGlzYWJsZV90eF9yaW5nKHN0cnVjdCBpZ2NfcmluZyAqcmluZyk7
DQo+PiAgdm9pZCBpZ2NfZW5hYmxlX3R4X3Jpbmcoc3RydWN0IGlnY19yaW5nICpyaW5nKTsNCj4+
ICBpbnQgaWdjX3hza193YWtldXAoc3RydWN0IG5ldF9kZXZpY2UgKmRldiwgdTMyIHF1ZXVlX2lk
LCB1MzIgZmxhZ3MpOw0KPj4NCj4+ICsvKiBBRl9YRFAgVFggbWV0YWRhdGEgb3BlcmF0aW9ucyAq
Lw0KPj4gK2V4dGVybiBjb25zdCBzdHJ1Y3QgeHNrX3R4X21ldGFkYXRhX29wcyBpZ2NfeHNrX3R4
X21ldGFkYXRhX29wczsNCj4+ICsNCj4+ICAvKiBpZ2NfZHVtcCBkZWNsYXJhdGlvbnMgKi8NCj4+
ICB2b2lkIGlnY19yaW5nc19kdW1wKHN0cnVjdCBpZ2NfYWRhcHRlciAqYWRhcHRlcik7DQo+PiAg
dm9pZCBpZ2NfcmVnc19kdW1wKHN0cnVjdCBpZ2NfYWRhcHRlciAqYWRhcHRlcik7DQo+PiBAQCAt
NTI4LDYgKzUzNCw3IEBAIHN0cnVjdCBpZ2NfdHhfYnVmZmVyIHsNCj4+ICAJREVGSU5FX0RNQV9V
Tk1BUF9BRERSKGRtYSk7DQo+PiAgCURFRklORV9ETUFfVU5NQVBfTEVOKGxlbik7DQo+PiAgCXUz
MiB0eF9mbGFnczsNCj4+ICsJYm9vbCB4c2tfcGVuZGluZ190czsNCj4+ICB9Ow0KPj4NCj4+ICBz
dHJ1Y3QgaWdjX3J4X2J1ZmZlciB7DQo+PiBAQCAtNTUzLDYgKzU2MCwxNCBAQCBzdHJ1Y3QgaWdj
X3hkcF9idWZmIHsNCj4+ICAJc3RydWN0IGlnY19pbmxpbmVfcnhfdHN0YW1wcyAqcnhfdHM7IC8q
IGRhdGEgaW5kaWNhdGlvbiBiaXQNCj5JR0NfUlhEQURWX1NUQVRfVFNJUCAqLw0KPj4gIH07DQo+
Pg0KPj4gK3N0cnVjdCBpZ2NfbWV0YWRhdGFfcmVxdWVzdCB7DQo+PiArCXN0cnVjdCB4c2tfdHhf
bWV0YWRhdGEgKm1ldGE7DQo+PiArCXN0cnVjdCBpZ2NfYWRhcHRlciAqYWRhcHRlcjsNCj4+ICsJ
c3RydWN0IGlnY19yaW5nICp0eF9yaW5nOw0KPj4gKwlib29sICp4c2tfcGVuZGluZ190czsNCj4+
ICsJdTMyICpjbWRfdHlwZTsNCj4+ICt9Ow0KPj4gKw0KPj4gIHN0cnVjdCBpZ2NfcV92ZWN0b3Ig
ew0KPj4gIAlzdHJ1Y3QgaWdjX2FkYXB0ZXIgKmFkYXB0ZXI7ICAgIC8qIGJhY2tsaW5rICovDQo+
PiAgCXZvaWQgX19pb21lbSAqaXRyX3JlZ2lzdGVyOw0KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfbWFpbi5jDQo+Yi9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pZ2MvaWdjX21haW4uYw0KPj4gaW5kZXggNjFkYjFkM2JmYTBiLi4zMTFjODVmMmQ4
MmQgMTAwNjQ0DQo+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX21h
aW4uYw0KPj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19tYWluLmMN
Cj4+IEBAIC0xNTUzLDcgKzE1NTMsNyBAQCBzdGF0aWMgYm9vbCBpZ2NfcmVxdWVzdF90eF90c3Rh
bXAoc3RydWN0IGlnY19hZGFwdGVyDQo+KmFkYXB0ZXIsIHN0cnVjdCBza19idWZmICpzDQo+PiAg
CWZvciAoaSA9IDA7IGkgPCBJR0NfTUFYX1RYX1RTVEFNUF9SRUdTOyBpKyspIHsNCj4+ICAJCXN0
cnVjdCBpZ2NfdHhfdGltZXN0YW1wX3JlcXVlc3QgKnRzdGFtcCA9ICZhZGFwdGVyLT50eF90c3Rh
bXBbaV07DQo+Pg0KPj4gLQkJaWYgKHRzdGFtcC0+c2tiKQ0KPj4gKwkJaWYgKHRzdGFtcC0+c2ti
IHx8IHRzdGFtcC0+eHNrX3BlbmRpbmdfdHMpDQo+PiAgCQkJY29udGludWU7DQo+Pg0KPj4gIAkJ
dHN0YW1wLT5za2IgPSBza2JfZ2V0KHNrYik7DQo+PiBAQCAtMjg3OCw2ICsyODc4LDcxIEBAIHN0
YXRpYyB2b2lkIGlnY191cGRhdGVfdHhfc3RhdHMoc3RydWN0IGlnY19xX3ZlY3Rvcg0KPipxX3Zl
Y3RvciwNCj4+ICAJcV92ZWN0b3ItPnR4LnRvdGFsX3BhY2tldHMgKz0gcGFja2V0czsNCj4NCj5b
Li4uXQ0KPg0KPj4gK3N0YXRpYyB1NjQgaWdjX3hza19maWxsX3RpbWVzdGFtcCh2b2lkICpfcHJp
dikNCj4+ICt7DQo+PiArCXJldHVybiAqKHU2NCAqKV9wcml2Ow0KPj4gK30NCj4+ICsNCj4+ICtj
b25zdCBzdHJ1Y3QgeHNrX3R4X21ldGFkYXRhX29wcyBpZ2NfeHNrX3R4X21ldGFkYXRhX29wcyA9
IHsNCj4+ICsJLnRtb19yZXF1ZXN0X3RpbWVzdGFtcAkJPSBpZ2NfeHNrX3JlcXVlc3RfdGltZXN0
YW1wLA0KPj4gKwkudG1vX2ZpbGxfdGltZXN0YW1wCQk9IGlnY194c2tfZmlsbF90aW1lc3RhbXAs
DQo+PiArfTsNCj4+ICsNCj4+ICBzdGF0aWMgdm9pZCBpZ2NfeGRwX3htaXRfemMoc3RydWN0IGln
Y19yaW5nICpyaW5nKQ0KPj4gIHsNCj4+ICAJc3RydWN0IHhza19idWZmX3Bvb2wgKnBvb2wgPSBy
aW5nLT54c2tfcG9vbDsNCj4+IEBAIC0yODk5LDYgKzI5NjQsOCBAQCBzdGF0aWMgdm9pZCBpZ2Nf
eGRwX3htaXRfemMoc3RydWN0IGlnY19yaW5nICpyaW5nKQ0KPj4gIAlidWRnZXQgPSBpZ2NfZGVz
Y191bnVzZWQocmluZyk7DQo+Pg0KPj4gIAl3aGlsZSAoeHNrX3R4X3BlZWtfZGVzYyhwb29sLCAm
eGRwX2Rlc2MpICYmIGJ1ZGdldC0tKSB7DQo+PiArCQlzdHJ1Y3QgaWdjX21ldGFkYXRhX3JlcXVl
c3QgbWV0YV9yZXE7DQo+PiArCQlzdHJ1Y3QgeHNrX3R4X21ldGFkYXRhICptZXRhID0gTlVMTDsN
Cj4+ICAJCXUzMiBjbWRfdHlwZSwgb2xpbmZvX3N0YXR1czsNCj4+ICAJCXN0cnVjdCBpZ2NfdHhf
YnVmZmVyICpiaTsNCj4+ICAJCWRtYV9hZGRyX3QgZG1hOw0KPj4gQEAgLTI5MDksMTQgKzI5NzYs
MjMgQEAgc3RhdGljIHZvaWQgaWdjX3hkcF94bWl0X3pjKHN0cnVjdCBpZ2NfcmluZyAqcmluZykN
Cj4+ICAJCW9saW5mb19zdGF0dXMgPSB4ZHBfZGVzYy5sZW4gPDwgSUdDX0FEVlRYRF9QQVlMRU5f
U0hJRlQ7DQo+Pg0KPj4gIAkJZG1hID0geHNrX2J1ZmZfcmF3X2dldF9kbWEocG9vbCwgeGRwX2Rl
c2MuYWRkcik7DQo+PiArCQltZXRhID0geHNrX2J1ZmZfZ2V0X21ldGFkYXRhKHBvb2wsIHhkcF9k
ZXNjLmFkZHIpOw0KPj4gIAkJeHNrX2J1ZmZfcmF3X2RtYV9zeW5jX2Zvcl9kZXZpY2UocG9vbCwg
ZG1hLCB4ZHBfZGVzYy5sZW4pOw0KPj4gKwkJYmkgPSAmcmluZy0+dHhfYnVmZmVyX2luZm9bbnR1
XTsNCj4+ICsNCj4+ICsJCW1ldGFfcmVxLmFkYXB0ZXIgPSBuZXRkZXZfcHJpdihyaW5nLT5uZXRk
ZXYpOw0KPj4gKwkJbWV0YV9yZXEudHhfcmluZyA9IHJpbmc7DQo+PiArCQltZXRhX3JlcS5tZXRh
ID0gbWV0YTsNCj4+ICsJCW1ldGFfcmVxLmNtZF90eXBlID0gJmNtZF90eXBlOw0KPj4gKwkJbWV0
YV9yZXEueHNrX3BlbmRpbmdfdHMgPSAmYmktPnhza19wZW5kaW5nX3RzOw0KPj4gKwkJeHNrX3R4
X21ldGFkYXRhX3JlcXVlc3QobWV0YSwgJmlnY194c2tfdHhfbWV0YWRhdGFfb3BzLA0KPj4gKwkJ
CQkJJm1ldGFfcmVxKTsNCj4+DQo+PiAgCQl0eF9kZXNjID0gSUdDX1RYX0RFU0MocmluZywgbnR1
KTsNCj4+ICAJCXR4X2Rlc2MtPnJlYWQuY21kX3R5cGVfbGVuID0gY3B1X3RvX2xlMzIoY21kX3R5
cGUpOw0KPj4gIAkJdHhfZGVzYy0+cmVhZC5vbGluZm9fc3RhdHVzID0gY3B1X3RvX2xlMzIob2xp
bmZvX3N0YXR1cyk7DQo+PiAgCQl0eF9kZXNjLT5yZWFkLmJ1ZmZlcl9hZGRyID0gY3B1X3RvX2xl
NjQoZG1hKTsNCj4+DQo+PiAtCQliaSA9ICZyaW5nLT50eF9idWZmZXJfaW5mb1tudHVdOw0KPj4g
IAkJYmktPnR5cGUgPSBJR0NfVFhfQlVGRkVSX1RZUEVfWFNLOw0KPj4gIAkJYmktPnByb3RvY29s
ID0gMDsNCj4+ICAJCWJpLT5ieXRlY291bnQgPSB4ZHBfZGVzYy5sZW47DQo+PiBAQCAtMjk3OSw2
ICszMDU1LDEzIEBAIHN0YXRpYyBib29sIGlnY19jbGVhbl90eF9pcnEoc3RydWN0IGlnY19xX3Zl
Y3Rvcg0KPipxX3ZlY3RvciwgaW50IG5hcGlfYnVkZ2V0KQ0KPj4gIAkJaWYgKCEoZW9wX2Rlc2Mt
PndiLnN0YXR1cyAmIGNwdV90b19sZTMyKElHQ19UWERfU1RBVF9ERCkpKQ0KPj4gIAkJCWJyZWFr
Ow0KPj4NCj4+ICsJCS8qIEhvbGQgdGhlIGNvbXBsZXRpb25zIHdoaWxlIHRoZXJlJ3MgYSBwZW5k
aW5nIHR4IGhhcmR3YXJlDQo+PiArCQkgKiB0aW1lc3RhbXAgcmVxdWVzdCBmcm9tIFhEUCBUeCBt
ZXRhZGF0YS4NCj4+ICsJCSAqLw0KPj4gKwkJaWYgKHR4X2J1ZmZlci0+dHlwZSA9PSBJR0NfVFhf
QlVGRkVSX1RZUEVfWFNLICYmDQo+PiArCQkgICAgdHhfYnVmZmVyLT54c2tfcGVuZGluZ190cykN
Cj4+ICsJCQlicmVhazsNCj4+ICsNCj4+ICAJCS8qIGNsZWFyIG5leHRfdG9fd2F0Y2ggdG8gcHJl
dmVudCBmYWxzZSBoYW5ncyAqLw0KPj4gIAkJdHhfYnVmZmVyLT5uZXh0X3RvX3dhdGNoID0gTlVM
TDsNCj4+DQo+PiBAQCAtNjgxOSw2ICs2OTAyLDcgQEAgc3RhdGljIGludCBpZ2NfcHJvYmUoc3Ry
dWN0IHBjaV9kZXYgKnBkZXYsDQo+Pg0KPj4gIAluZXRkZXYtPm5ldGRldl9vcHMgPSAmaWdjX25l
dGRldl9vcHM7DQo+PiAgCW5ldGRldi0+eGRwX21ldGFkYXRhX29wcyA9ICZpZ2NfeGRwX21ldGFk
YXRhX29wczsNCj4+ICsJbmV0ZGV2LT54c2tfdHhfbWV0YWRhdGFfb3BzID0gJmlnY194c2tfdHhf
bWV0YWRhdGFfb3BzOw0KPj4gIAlpZ2NfZXRodG9vbF9zZXRfb3BzKG5ldGRldik7DQo+PiAgCW5l
dGRldi0+d2F0Y2hkb2dfdGltZW8gPSA1ICogSFo7DQo+Pg0KPj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfcHRwLmMNCj5iL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2lnYy9pZ2NfcHRwLmMNCj4+IGluZGV4IDg4NWZhYWE3YjlkZS4uYjcyMmJjYTQw
MzA5IDEwMDY0NA0KPj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19w
dHAuYw0KPj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19wdHAuYw0K
Pj4gQEAgLTExLDYgKzExLDcgQEANCj4+ICAjaW5jbHVkZSA8bGludXgva3RpbWUuaD4NCj4+ICAj
aW5jbHVkZSA8bGludXgvZGVsYXkuaD4NCj4+ICAjaW5jbHVkZSA8bGludXgvaW9wb2xsLmg+DQo+
PiArI2luY2x1ZGUgPG5ldC94ZHBfc29jay5oPg0KPj4NCj4+ICAjZGVmaW5lIElOQ1ZBTFVFX01B
U0sJCTB4N2ZmZmZmZmYNCj4+ICAjZGVmaW5lIElTR04JCQkweDgwMDAwMDAwDQo+PiBAQCAtNTU1
LDggKzU1NiwxNSBAQCBzdGF0aWMgdm9pZCBpZ2NfcHRwX2NsZWFyX3R4X3RzdGFtcChzdHJ1Y3Qg
aWdjX2FkYXB0ZXINCj4qYWRhcHRlcikNCj4+ICAJZm9yIChpID0gMDsgaSA8IElHQ19NQVhfVFhf
VFNUQU1QX1JFR1M7IGkrKykgew0KPj4gIAkJc3RydWN0IGlnY190eF90aW1lc3RhbXBfcmVxdWVz
dCAqdHN0YW1wID0gJmFkYXB0ZXItPnR4X3RzdGFtcFtpXTsNCj4+DQo+PiAtCQlkZXZfa2ZyZWVf
c2tiX2FueSh0c3RhbXAtPnNrYik7DQo+PiAtCQl0c3RhbXAtPnNrYiA9IE5VTEw7DQo+PiArCQlp
ZiAodHN0YW1wLT5za2IpIHsNCj4+ICsJCQlkZXZfa2ZyZWVfc2tiX2FueSh0c3RhbXAtPnNrYik7
DQo+PiArCQkJdHN0YW1wLT5za2IgPSBOVUxMOw0KPj4gKwkJfSBlbHNlIGlmICh0c3RhbXAtPnhz
a19wZW5kaW5nX3RzKSB7DQo+PiArCQkJKnRzdGFtcC0+eHNrX3BlbmRpbmdfdHMgPSBmYWxzZTsN
Cj4+ICsJCQl0c3RhbXAtPnhza19wZW5kaW5nX3RzID0gTlVMTDsNCj4NCj5JZiB3ZSByZWFsbHkg
bmVlZCB0aGlzIG1heWJlIGEgaGVscGVyIHdpdGggc2V0X3RzdGFtcCBhbmQgY2xlYXINCj50c3Rh
bXAgd291bGQgYmUgbmljZT8gQnV0IHRoZXkgc2VlbSB0byBjb21lIGluIHBhaXJzIGl0cyBlaXRo
ZXINCj5mYWxzZSBhbmQgTlVMTCBvciB0cnVlIGFuZCBzZXQuDQo+DQoNClN1cmUsIEkgY2FuIHRy
eSB0byBjcmVhdGUgc2V0L2NsZWFyIGhlbHBlciBzbyB0aGF0IHRoZSBjb2RlIGlzIGNsZWFyZXIu
DQoNCj4+ICsJCQlpZ2NfeHNrX3dha2V1cChhZGFwdGVyLT5uZXRkZXYsIHRzdGFtcC0+eHNrX3F1
ZXVlX2luZGV4LA0KPj4gKwkJCQkgICAgICAgMCk7DQo+PiArCQl9DQo+PiAgCX0NCj4+DQo+PiAg
CXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJmFkYXB0ZXItPnB0cF90eF9sb2NrLCBmbGFncyk7DQo+
PiBAQCAtNjU3LDggKzY2NSwxNSBAQCBzdGF0aWMgaW50IGlnY19wdHBfc2V0X3RpbWVzdGFtcF9t
b2RlKHN0cnVjdCBpZ2NfYWRhcHRlcg0KPiphZGFwdGVyLA0KPg0KPlRoYW5rcywNCj5Kb2huDQoN
ClRoYW5rcyAmIFJlZ2FyZHMNClNpYW5nDQo=
