Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48B736E67D7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Apr 2023 17:13:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CB11441E16;
	Tue, 18 Apr 2023 15:13:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CB11441E16
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681830815;
	bh=Hmw5yZgRQWeQ2L8ZiVNdQsPCbUtIssVIayyC8yENgJc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tNNBc6kBtd03yeannfQ2NrYY8BqPWj1ljYtg/X7z7oZESBDC9IXbVjRMe3K4QdAcC
	 4QZubkTFAJ19MsWB5BAHMqMHLO+lb4CAe5vAuCX5RepK/ZXE65MbuUUqNemoCNJog4
	 SQpfPyJ+pAKj9dSSlmcmwjuRXmW91gCJ+htTan3jqFwtr7p70sgXE8GbdLVgWVN9b3
	 n2kUo03K+DoKMljbOsmmwPVsJ25FtiDlgNHi7t1kjKE5HuEYzOZCqC74Ege9ylsTjg
	 KlHj1Q2ZkoM44z9L7BVQxZa/XpvPkbFPCPzGZ8ygCpI93O+ByVZF87kyYSwgYxKhLw
	 hKMm9s2qSI3UA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K5tbvQV6Bjcc; Tue, 18 Apr 2023 15:13:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B282241E18;
	Tue, 18 Apr 2023 15:13:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B282241E18
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B15EB1C41B3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 04:18:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8D18181E88
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 04:18:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8D18181E88
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sJhAPfjAQ1-l for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Apr 2023 04:18:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2453F81DF8
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2453F81DF8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 04:18:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="325409915"
X-IronPort-AV: E=Sophos;i="5.99,206,1677571200"; d="scan'208";a="325409915"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 21:18:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="780363719"
X-IronPort-AV: E=Sophos;i="5.99,206,1677571200"; d="scan'208";a="780363719"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP; 17 Apr 2023 21:18:53 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 17 Apr 2023 21:18:53 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 17 Apr 2023 21:18:53 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 17 Apr 2023 21:18:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fCwVwbV94Hr/w71r7yIjD6MS1gTYKzxIP1g6ruEiMPq41+RsPLbcz77ZlYkhCyL0AewncvhdGFQ9hLKxGfQwWz+ZhcVdiEwFxHCwsPrPcP2Cn3+VvS9I2vl6cVozrxHPvV4CS2LBUJHAe2vy+mFnZ2GuiD+LC/E9SZCLzoejxVpp6Fh1hsa2I+OwvKlxVu3R9nl+ALsuQTTBTn7bSmXKo601jw+SHe/zBqndceQTTv2f41uX8zqtY/Zbcqzphij8d741nViWa52cdEGGoLcySofChzTsX06lIyP9316iG90P74KNVjweB0z2C/GjdPUGx3EiibZUu4Ya4TvJ89NynA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Qe2UB2jna+790wYfXeZOvomzlvYuH9vt3KuK0f00x4I=;
 b=F6J/T8vKoHY+/uv3lvSIMRdclinlDb5CKxpKZ4WnQr4Nzz4kNo7VVl4lpfoVGQLXsV5L/+1U/Srb6HbXFfRuzmTH1phMVXIQeWs+9zCwLYH1Yym/8IFth92SBzHuXdFrX2qKoTISuOa9LZrg8ty/upeK+4nu5VaWuI6M4QnYJS3OVPc6AvEbkkysjALbOm/JEq65ir1PAVR/Z55GcrkivNUjjNkNaRl0RLqRulvY9kskPCIkyJ91M/9Ca07gTDSWj6s5TDAdFpl1VsitgSWBhpud8StleEd4MxClxguM7EdpZOvGsKpLQCITgmBJ2wlDSXhBsdL4n4Nx+1bI0KhXtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5830.namprd11.prod.outlook.com (2603:10b6:510:129::20)
 by SJ2PR11MB7502.namprd11.prod.outlook.com (2603:10b6:a03:4d3::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.45; Tue, 18 Apr
 2023 04:18:50 +0000
Received: from PH0PR11MB5830.namprd11.prod.outlook.com
 ([fe80::1c4e:86ae:810d:1fee]) by PH0PR11MB5830.namprd11.prod.outlook.com
 ([fe80::1c4e:86ae:810d:1fee%2]) with mapi id 15.20.6298.045; Tue, 18 Apr 2023
 04:18:50 +0000
From: "Song, Yoong Siang" <yoong.siang.song@intel.com>
To: "Brouer, Jesper" <brouer@redhat.com>, "bpf@vger.kernel.org"
 <bpf@vger.kernel.org>, Stanislav Fomichev <sdf@google.com>,
 =?utf-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>
Thread-Topic: [PATCH bpf-next V1 4/5] igc: add XDP hints kfuncs for RX hash
Thread-Index: AQHZcTzyLxexDRn6WUOEsDW09NDjv68wdoRQ
Date: Tue, 18 Apr 2023 04:18:50 +0000
Message-ID: <PH0PR11MB5830550374DCF59BAEFC5D09D89D9@PH0PR11MB5830.namprd11.prod.outlook.com>
References: <168174338054.593471.8312147519616671551.stgit@firesoul>
 <168174344307.593471.11961012266841546530.stgit@firesoul>
In-Reply-To: <168174344307.593471.11961012266841546530.stgit@firesoul>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5830:EE_|SJ2PR11MB7502:EE_
x-ms-office365-filtering-correlation-id: 9911b0d9-befa-4ec0-e104-08db3fc4033c
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UBZ2fVbLV6PFS/35UhtcKU7KV7HeEmPLtGS/QF0CxJrdH2ZBTK1CJy5UpxZH6jSQNPoDMUiJH1RJh9COK4P4oMHfryM394bySsdnEyB2dnePGle3uTMORBjIdiwOe9f0VsZE1nMNPyy/9PE1qhAnF27qY8ZUPuJBHWFIRFgZbKpZjLsD4E4AqFY+hQY6h2m1sB3gQmUbxzyRsa+9dVk/p6oO5YrS179THU6xVHzYFrtYyvG81oyy8BrE+wLxF89xHJvpm9CXKCEU8wcARnv4SRV5HILsMVlnzeVXrElJ73OcUdXIQ53YoGsPVRKfeJDTtMuzAkOlGFvw6jhECAdgY/cHHHghBXoiigsByR1ZCVd77ITsgjqDfEtzQwbzIOBZm5196O7LI+8K9g4uxALxQmNntDxLIlc6vWOx4aNp6eFlJ8pIpep+2DHguRdWFMWKdS8JXId6PdDt4FuUM2qJ13LVQs1ZU2WxLAthfwaM3NqrRpt2DprvCoauXvR5OfmbQUgYkPdSikbth+HUzaySU7JH6d3alTkeCEu3fuJyBo9ZozVqZ6VxvVIsSHYMsJca989rrE3mCsiwORr7YGJFyst9nIwQ2jVxRyOdUjJf1n8tKwh1LL7OFVdohGPGY87q
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5830.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(136003)(346002)(396003)(39860400002)(366004)(451199021)(2906002)(38070700005)(8936002)(8676002)(41300700001)(82960400001)(122000001)(52536014)(7416002)(38100700002)(5660300002)(33656002)(86362001)(55016003)(478600001)(54906003)(110136005)(55236004)(9686003)(6506007)(26005)(71200400001)(186003)(7696005)(53546011)(76116006)(4326008)(316002)(66946007)(66556008)(66476007)(66446008)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?L085M1pjbjJ1bk5QdWhjb0NCdjZSbkh3QjB1WEFubWFQYTE2dE92c3BhSkNS?=
 =?utf-8?B?alljKzR5UFB4L0xERlNqZVdNdHFuMEpicHkrL2h4WGNzbitwSjJvKzlXRkdC?=
 =?utf-8?B?Ty9kNDk3ZW9MNzV5eWFVdDRJOGZ0TDVKd0J5VjBYM2VLMnlLdDVna1ZwV0hZ?=
 =?utf-8?B?UEQvZk9XMC90L0ZoaXA0L3NjZ3dZaTVGd0dOV29zcEdTZGhnSEVzd3M4RmUx?=
 =?utf-8?B?ektJUzZaVE9YVzhVdlh0R0FxejdCMjEwckJVVTVFWFVnZXVLM1FRbEVuWE5U?=
 =?utf-8?B?RUZPTTF6RXd2LzdrWk9XRFZCcGt3YWRZeDEvUzA0NTliajVjZzlaTUhKMnF3?=
 =?utf-8?B?S3dDbDdkTHI3Nm83ajhDeXBBdVdjZ2hFQ2UyeFVObVl2QXYxMFNHSFFQSmJT?=
 =?utf-8?B?dTJXUUI1NjA2VDBoc2RycVVDdlpNMWNuQUo2SFgya3M3QmF0MktzZmFad1F1?=
 =?utf-8?B?Tk8wUGVCeG15Sk9rOUtIN3lQVmxpQjZ6YXFkZjdzcmJZSG0wMVlESGdFNk1T?=
 =?utf-8?B?MXN6VmVMaVVGd3dzK2RJcEYyWlVvd3hoU01JT1N4cWVkYWJDMncrTkhpS0po?=
 =?utf-8?B?WFJOT2d4M2xPMHhyU0lpSFpTMDNxbGc3eFd3TVp1MDlBRExKbTJTbGlkaWpG?=
 =?utf-8?B?Sm95Mzd6V0lsWVRqUUNRM0lWUGdyQzhhbE1ibWZPTUxJTmp5WkQ0di9DYzh1?=
 =?utf-8?B?VGxxWExKZG5CRllkOHBkaDd3WEQzUnNCdFozcXZBT3hCUlNONHljNFNkdFo1?=
 =?utf-8?B?SWRLWkEwOUlqdWMwWXdDRUZOM1BvQ293azlxVDB1YTRlZmZtTldoTGV6OWpR?=
 =?utf-8?B?ZGVrUFZYQ2dXZlZwaDFNdnprbXJFcHpab2UrMEFKcXBwM25qSFlkR2kxcmtp?=
 =?utf-8?B?dFFjK0xqOVJhU3haV2ZNMHFNMzZTTG4vOGR3TGFWbVZHcG9pd3VISHJFckYw?=
 =?utf-8?B?dWlNa2R6MXZ6OTNKOGpxeDlnalhvTXZDUXJmVGJOOWJMdWxpa2h2U0dPN2h6?=
 =?utf-8?B?ckZMSzh1WTNkQStiVUVkakt4ZUVoUjlZaGtmWUFlVHgyNElZWm96RW5QcTJn?=
 =?utf-8?B?ZkN2aHRKLy9yc2FrSEJRTGVMcmpSN0tIYUVBVTZsc0R1c1JOanVwK2JrSFZ2?=
 =?utf-8?B?dVdyRmlFcjlNMjFNRmszd1dZYk1LT09IcnhMbE5RSk5KWFhaeUNGeUtyYWl6?=
 =?utf-8?B?TUtDZCtKdzA3VEMxMFNzbWhVVG11UXEvYkJoaU45dXVWbFJwS3phSEcwTDlK?=
 =?utf-8?B?aEphRnpaaERYMmpBWVRKako0ZEtJS3VNbVB1ODJ3cnZCMExZeU1hbEdITzRV?=
 =?utf-8?B?TDQ3SmI4L25sb0dRcjJGU0JiVXRBSzNCWEFaTjV3SDFzWWtURktOTVM5TFhE?=
 =?utf-8?B?K3hMNlVCYm4wWnR0YXNETEE3UC9DbDhUZ0RrTFJJaUN4b3RuY2lxOUVINmhW?=
 =?utf-8?B?R042dlF6U29ZZUl0S3F5MXBlMTBhTFREd01qNkZnMkV3c3J5VFErVis0aTZ0?=
 =?utf-8?B?Z0ZlaG5MSnJGNDFueEJKNkQvTURMWjdLbjg4THhJMWN5NURKeWk5cHZqR1k4?=
 =?utf-8?B?TGVWcEVMOWFZMFBxNU02c0IvdXBIOFhicFdKZWFKL3djVGFUVWIwOEtxR3RL?=
 =?utf-8?B?U0ZRMU5YZXo2YjEyaEw4M05sbGdPMU9pQlRhR2wyOXg1em5PTXk1eWh0OHdF?=
 =?utf-8?B?N0xGUDVCNnBsempyQklKZHB0K1o1MU9IdDlKMlVWR1ozV3p0enkwNllnSHFq?=
 =?utf-8?B?ZHlEVjhmYjZkRlRUdTd0elp5MFhCYkZqemJYbk84b2t6UTJONmYrNjV2dldQ?=
 =?utf-8?B?a0hFSUZ3U090WTM1NjZXYlRabmFGeGlKbDhSMUlVYUJCbERZUVhDYzZZQnNI?=
 =?utf-8?B?QU5tL0JzeEtudUtQK240TndYSnErM1BPOEZ0Nkh6N2lMSkl5RVdtOHo3TE04?=
 =?utf-8?B?VEQ4Rk1LYnRHSkRQa0JyOEhuTjVtN00xenFkdlBCM1AybCtSVktHekptbUxV?=
 =?utf-8?B?TysxVW84ZUQzWGYyZ29qZm1jWVFyWkUzQlA1QWY0RUZzeUJ4SUUrZllVdjFG?=
 =?utf-8?B?U0NlKy9ZMHJESkl0ZC9zQm15T0JLSXVVd0MzdW1OUk9SOE9lcUd6RVJSeERh?=
 =?utf-8?B?ZDA5VURWQ0VBYVJvNXYra3RDbGJCNm5zODRtSGZ0WExWdHAxckRrbHV4cnNv?=
 =?utf-8?B?T1E9PQ==?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5830.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9911b0d9-befa-4ec0-e104-08db3fc4033c
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Apr 2023 04:18:50.3437 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Z/6ftgdQaChFKowZJLalUIizSeMqBWWaapwBPWU2KR70iwY/IRAzIqYOrsnDJgs2/JhfeujC5CRx0f9GYaIhoRSPEONMmdDGlAQFkeOjsro=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7502
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Tue, 18 Apr 2023 15:13:21 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681791535; x=1713327535;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Qe2UB2jna+790wYfXeZOvomzlvYuH9vt3KuK0f00x4I=;
 b=VRTHmEM+Bopiy3MV7J84UJn4qKKfh9HIZZUZbGWMwexPOrLn5olqF5Zq
 lXqlguNl5m14J5MlRearJUhcAZw09LGqMFdHWy/nPG+/JhUlPeMc7Lu3Q
 /72ILIK/ODDNKN7sgtUpNbQFpKvdE6iSuTJCbrLPy9ezPE/QUt1pcoUnT
 cPUJIFIbqatmYvITYla0hixs6sVnBsUq6eBD59HAFMYnrsRKLew5jvjXL
 WylSB5p6oUoJDIJhQdb6JunZCeNB8Kfk8jfDDaKtyRlfirjdsRpQyhZ8V
 fvLKVabl53sDHijcyauvJ2SWJSZ8nOyoTqGnTG+T9LbMfGkt2GdsMHs1+
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VRTHmEM+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH bpf-next V1 4/5] igc: add XDP hints
 kfuncs for RX hash
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
Cc: "xdp-hints@xdp-project.net" <xdp-hints@xdp-project.net>,
 "martin.lau@kernel.org" <martin.lau@kernel.org>,
 "daniel@iogearbox.net" <daniel@iogearbox.net>, "Zaremba,
 Larysa" <larysa.zaremba@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "john.fastabend@gmail.com" <john.fastabend@gmail.com>,
 "ast@kernel.org" <ast@kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "edumazet@google.com" <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Brouer,
 Jesper" <brouer@redhat.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "hawk@kernel.org" <hawk@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Monday, April 17, 2023 10:57 PM, Jesper Dangaard Brouer <brouer@redhat.com> wrote:
>This implements XDP hints kfunc for RX-hash (xmo_rx_hash).
>The HW rss hash type is handled via mapping table.
>
>This igc driver driver (default config) does L3 hashing for UDP packets (excludes

Repeated word: driver

>UDP src/dest ports in hash calc).  Meaning RSS hash type is
>L3 based.  Tested that the igc_rss_type_num for UDP is either
>IGC_RSS_TYPE_HASH_IPV4 or IGC_RSS_TYPE_HASH_IPV6.
>
>Signed-off-by: Jesper Dangaard Brouer <brouer@redhat.com>
>---
> drivers/net/ethernet/intel/igc/igc_main.c |   35
>+++++++++++++++++++++++++++++
> 1 file changed, 35 insertions(+)
>
>diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
>b/drivers/net/ethernet/intel/igc/igc_main.c
>index 862768d5d134..27f448d0ae94 100644
>--- a/drivers/net/ethernet/intel/igc/igc_main.c
>+++ b/drivers/net/ethernet/intel/igc/igc_main.c
>@@ -6507,8 +6507,43 @@ static int igc_xdp_rx_timestamp(const struct xdp_md
>*_ctx, u64 *timestamp)
> 	return -ENODATA;
> }
>
>+/* Mapping HW RSS Type to enum xdp_rss_hash_type */ enum
>+xdp_rss_hash_type igc_xdp_rss_type[IGC_RSS_TYPE_MAX_TABLE] = {

Since igc_xdp_rss_type is used in igc_main.c only, suggest to make it static.

Thanks & Regards
Siang

>+	[IGC_RSS_TYPE_NO_HASH]		= XDP_RSS_TYPE_L2,
>+	[IGC_RSS_TYPE_HASH_TCP_IPV4]	= XDP_RSS_TYPE_L4_IPV4_TCP,
>+	[IGC_RSS_TYPE_HASH_IPV4]	= XDP_RSS_TYPE_L3_IPV4,
>+	[IGC_RSS_TYPE_HASH_TCP_IPV6]	= XDP_RSS_TYPE_L4_IPV6_TCP,
>+	[IGC_RSS_TYPE_HASH_IPV6_EX]	= XDP_RSS_TYPE_L3_IPV6_EX,
>+	[IGC_RSS_TYPE_HASH_IPV6]	= XDP_RSS_TYPE_L3_IPV6,
>+	[IGC_RSS_TYPE_HASH_TCP_IPV6_EX] = XDP_RSS_TYPE_L4_IPV6_TCP_EX,
>+	[IGC_RSS_TYPE_HASH_UDP_IPV4]	= XDP_RSS_TYPE_L4_IPV4_UDP,
>+	[IGC_RSS_TYPE_HASH_UDP_IPV6]	= XDP_RSS_TYPE_L4_IPV6_UDP,
>+	[IGC_RSS_TYPE_HASH_UDP_IPV6_EX] = XDP_RSS_TYPE_L4_IPV6_UDP_EX,
>+	[10] = XDP_RSS_TYPE_NONE, /* RSS Type above 9 "Reserved" by HW  */
>+	[11] = XDP_RSS_TYPE_NONE, /* keep array sized for SW bit-mask   */
>+	[12] = XDP_RSS_TYPE_NONE, /* to handle future HW revisons       */
>+	[13] = XDP_RSS_TYPE_NONE,
>+	[14] = XDP_RSS_TYPE_NONE,
>+	[15] = XDP_RSS_TYPE_NONE,
>+};
>+
>+static int igc_xdp_rx_hash(const struct xdp_md *_ctx, u32 *hash,
>+			   enum xdp_rss_hash_type *rss_type) {
>+	const struct igc_xdp_buff *ctx = (void *)_ctx;
>+
>+	if (!(ctx->xdp.rxq->dev->features & NETIF_F_RXHASH))
>+		return -ENODATA;
>+
>+	*hash = le32_to_cpu(ctx->rx_desc->wb.lower.hi_dword.rss);
>+	*rss_type = igc_xdp_rss_type[igc_rss_type(ctx->rx_desc)];
>+
>+	return 0;
>+}
>+
> const struct xdp_metadata_ops igc_xdp_metadata_ops = {
> 	.xmo_rx_timestamp		= igc_xdp_rx_timestamp,
>+	.xmo_rx_hash			= igc_xdp_rx_hash,
> };
>
> /**
>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
