Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD4ED695699
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Feb 2023 03:19:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3268340A8E;
	Tue, 14 Feb 2023 02:19:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3268340A8E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676341195;
	bh=CFca4odsKBTY+mYtSd1K3re9FV9PMKpAatwGjtta4AI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1EmKtZclfGTG3DIM0IfXowBcQ4WxfpXqv7s7DmRnPLagPsPvc9b9feFFjg631c8qR
	 a39maKETace6U2uPdU/qBHTXyX9r09QYQpVMFtSlYXfUp+iyG/raO0UBYI+yD3L5N+
	 rPmh0DbtWLJAZdEM75PFqvlDuq8VxuPQYXkDa0cdS9xJT/cZVg05vnlIRSlzEDeb5s
	 q8i18tYvyakFXiMTScbIB8R737W1eQTFnRgs33cTVlQ1cbSozdjGrwpQSy1iA7z6Ux
	 k4ovF2arrn5VAzhZX41bnq93/7H4gJaaorNiSSZA73HZcpGCzgV2Z47cf+D+3B+O1b
	 /M9ST9H5nHcXw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JpxEpQEVuebF; Tue, 14 Feb 2023 02:19:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 18B0740359;
	Tue, 14 Feb 2023 02:19:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 18B0740359
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 875151BF2A1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Feb 2023 02:19:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6D76140359
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Feb 2023 02:19:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6D76140359
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id urBsWieRzufq for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Feb 2023 02:19:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 00884400CE
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 00884400CE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Feb 2023 02:19:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="417274625"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="417274625"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 18:19:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="792947628"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="792947628"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP; 13 Feb 2023 18:19:46 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 13 Feb 2023 18:19:45 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 13 Feb 2023 18:19:45 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 13 Feb 2023 18:19:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gtiQuqgZ+9RmY1vYUKt086wd7t62kRE5NeW2gSnvRe8noa3cf8vGxclfaUa8OlUpgd8P3428/RgMHheJsgiDN7KdrKLHmPd0I6HVWFYUX/1ghYuRVv/3HUHM0XsEFEm3ljoN1AoQy8aYU11LCwcNq1ciqxy2vi0JQQ6+L5Bg21DrtY7NPig0/oCD5utdZ66lmWgIHngJuzJvpjpD+R7Tze9Fl2oUlQKx6l1b9XL0pnaKlUFJUskPOqxXOiHwEHt7WCq0XWeyHqpcrwneX0K62LwdiMGbP9h6uCLZmRehUsCMA+k/lKmpnJUcDZ6BsPE+FMQDyMbfVZA0sajd1pm4Aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mnwE5D1M9Q51G8+jNrV0w4aK873lgCR94fGxjYkbNn0=;
 b=iV4laMhcR7YTQ/DKcKgKZV8ipWr/wMhqJfYcY1dk+MY3hpEpVWo/plW/WCUwq2jLdiyNUVPyW9iizZ86IsQJBUpMBRx9h9yeJWmtw+Pldt74EMV8prhQ0o63fE6FZDx5IB8nMSWqvmFdfS+L04tYUK+ec+eqs6GZrmnfJWXDK827JIZFi0jplXcxNEfSdM4Fj716XZeZSy8V11mLOgZ9KZR6NGA9awFOm3SycjIQcJQdVM0iG5znUKXbz6tGir1GOqmcmArW7pomXrEVVPNXWPS3CUQxz1PTzNMm40ohPT5j95ZMgSC8o1qbA1/ZjibZ59QlAxzK0k6VlmvEjtEeaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN2PR11MB4045.namprd11.prod.outlook.com (2603:10b6:208:135::27)
 by DS0PR11MB6327.namprd11.prod.outlook.com (2603:10b6:8:d1::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6086.23; Tue, 14 Feb
 2023 02:19:43 +0000
Received: from MN2PR11MB4045.namprd11.prod.outlook.com
 ([fe80::6b67:1c73:161e:9444]) by MN2PR11MB4045.namprd11.prod.outlook.com
 ([fe80::6b67:1c73:161e:9444%7]) with mapi id 15.20.6086.024; Tue, 14 Feb 2023
 02:19:42 +0000
From: "Rout, ChandanX" <chandanx.rout@intel.com>
To: Jason Xing <kerneljasonxing@gmail.com>, "alexander.duyck@gmail.com"
 <alexander.duyck@gmail.com>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>, "ast@kernel.org"
 <ast@kernel.org>, "daniel@iogearbox.net" <daniel@iogearbox.net>,
 "hawk@kernel.org" <hawk@kernel.org>, "john.fastabend@gmail.com"
 <john.fastabend@gmail.com>, "Lobakin, Alexandr" <alexandr.lobakin@intel.com>, 
 "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net v2 3/3] ixgbe: add double of VLAN
 header when computing the max MTU
Thread-Index: AQHZPDA3iJ4ob7BPJkG8UKvmi2cxcq7NvMqQ
Date: Tue, 14 Feb 2023 02:19:42 +0000
Message-ID: <MN2PR11MB4045A74C446C281EEB2ECA96EAA29@MN2PR11MB4045.namprd11.prod.outlook.com>
References: <20230209024128.4695-1-kerneljasonxing@gmail.com>
In-Reply-To: <20230209024128.4695-1-kerneljasonxing@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN2PR11MB4045:EE_|DS0PR11MB6327:EE_
x-ms-office365-filtering-correlation-id: c980b725-63dc-4c13-10eb-08db0e31eef7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dtjgx7rjSRExMW/b0N2yTFke7U1v2q7XqrGacRE/PmR1ztPnbyEe76ZS5/wE2bBB8Gsy48YQVg4t2KQyEeHdWa/oZ9cun98dASc4NiP9G8ZrENktJA64RImuP3HjrJZNg0SSm9WgXm9TjS1Pvp8hJY8A52CqnN1KZQdAnAdimFIeO3bT8idJACbGQizaD2jBi/i8xS5gsvRZagATy4NlbOaxgCJJCm530si8mFVz/JFLp/UFOkCLuJYGjaK5WFEs8TCuuyTtkBNww5P4v0OEAiE6XzkmqWIF9Z6H9rhZ5BOQVTTwoA4Qd/VIpQGAACQy6XOmTg9HA8YRgyhkFYhuZ1lBeoQkc//IjnzTghaZDB7WwcH2DJ2Y9s65VIuQmv/y5Lc35+MwjG0FP6dJjbgIYkLSKqtPWOP5tJUYeZjvWQ98B5icowzqzIk4PugxrSD7COIj0LQVsFIJZgw+Qw6JCJBpUr/ttYKKnakLEvggFyJp6/Ps76XsC3S3Uzky7vGVvYEI1CjgOf7kwhJ/3aooXS2SQjp1MPwRDtVnzH9NSUY8Xmd9nr8vimPQAd5z2qfw7tRkxWwFQq+JRy0rZOCr4tPTgrxEM0usxlzxgL3W+pVi1le7vSEiFSCs+Vx3ETckvNiJwiS0s/RvNCKZ7ArZ4fd+ObTrbp5Og26TIDRBaSeT11DUnE1pkOMBVKQQWpmq0ZlC0iO2m1ogmnlWP0Sy0xq8VSfMXWO1HDCc7L4p8is=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4045.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(376002)(396003)(136003)(346002)(366004)(451199018)(7416002)(38100700002)(8936002)(2906002)(82960400001)(921005)(52536014)(71200400001)(5660300002)(66556008)(66476007)(66946007)(4326008)(122000001)(64756008)(8676002)(76116006)(66446008)(26005)(41300700001)(38070700005)(107886003)(110136005)(6636002)(55236004)(86362001)(478600001)(33656002)(54906003)(7696005)(186003)(9686003)(6506007)(55016003)(83380400001)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/MlKeFM1UsxdZoQrWhJ7lAB2eV5xzkfsMPDV+5yzszPAkUz0Cx02RMCAh81o?=
 =?us-ascii?Q?+9Nmlfb1/EFnAY2CDykTI+3jBQvcmc0lnUJWP/8aym3SqiiYKwph2Te7smGb?=
 =?us-ascii?Q?gIxYT9h635Efi3yj5GrX8slt2PVT4WksbK+W2B1izPrNpIjd7aLMvk0z2D7K?=
 =?us-ascii?Q?EJLBJF/WckZ20AAHoXywcPMwN2BGH+kKvcL6GdYvVvV0yCRHPRDLbKRV9APV?=
 =?us-ascii?Q?9NlVQeXzp328fF3TuEaWkOnKk1AbvcK/zTcwrGdavxoZdtdnMNPFVhsFTjET?=
 =?us-ascii?Q?hxZlgJMgIsi5hXqPhYGtltjEVJ9X/aSU/65UxVa02fm//54QprVXm0W9ufyL?=
 =?us-ascii?Q?Sq2+6JntaJk0JY7cfYczJCaqTVAH+PlbpV4GtU4w+CdHr1BJagg6Orc4UJhO?=
 =?us-ascii?Q?0sDe8XyNK4RJJo8CAgOOWW4BFQhBC2g4kVbYNrNU3Wkb6P64mtJdh1OUjowi?=
 =?us-ascii?Q?nf8Vaie1GsGzHfXk7F7XqEhhcmEQOT268w+yIjWNnKe3sotcPYuWaVbi7N8m?=
 =?us-ascii?Q?VPnpCdj44KJobKyEa4ujl6ClohwVYbI6bZ/dB+9o90Lt3tp0qlP6+ep6h/SE?=
 =?us-ascii?Q?1a2fl6L+rRN3rI6ZmSYOrkpdpHTN3Njb9eAet45XJ155bmU4FGdTu2mShCkf?=
 =?us-ascii?Q?ulOQJ43CUswiXMas8ol7cK7PwviAEPL3F7vGYVTNMx+qMTZidjXuFH8WDOw+?=
 =?us-ascii?Q?L2YuzQsjFpgRC065GhyOxr/IKCpJTNwV/h3/sDflA1JTzn9XyLUaGNmMS0x4?=
 =?us-ascii?Q?OL8NTpv9yxm2QPW0xpNY560TS/2d+86cl9zpKvMK3nUrvXyRUVWO7DXEepVC?=
 =?us-ascii?Q?Vyb1q0RTKj+AN7TrAkzEUMJFlzo1Z8KkfuqNIAVema2bWVpYJSA9D6bbfsVl?=
 =?us-ascii?Q?NLbxgs1w98/KIzde592SAMq8EktpgGgj0y6q5eXLE60lPa5EvZFL/srVytMK?=
 =?us-ascii?Q?bDz2+knppJokAZVz4aLLsiWnlTPd0cr8COZlc4VeeuSEFiW1Qv9QCnj2vQW7?=
 =?us-ascii?Q?/mLisCvPm1YCWvBju+UVhp1iJ0Cb2R8ovRisN9FCJ+7ai7SutDVfsB+6Kp0w?=
 =?us-ascii?Q?eL/iBfPIwYBq81IuAqUgW7Mwz/s5E8SQVMcGx0glumSsoHEU5T1hR1h1e4x6?=
 =?us-ascii?Q?CIpbI42W4mccQGUN2t5B6O94jKQ5FVCfqytb9Tws3E6CMeI7VG46tbX/Xvrf?=
 =?us-ascii?Q?CmXI12mhNuJvkaRykgAN6Yt1ScUefnGpKzzg7bV/L3HQhj38nPmChI6AJ//f?=
 =?us-ascii?Q?DrQ13l1xwO4dvljO2Rpp7VFEQuqBBJlPgAaMExwPHWf5ldVyejvonOPRYxVV?=
 =?us-ascii?Q?UWNWHAvnRb7THylTm+4rKi0JNq2a9DOnrTFC6+hLwWaGe9R4y1Ak6Xat6cVm?=
 =?us-ascii?Q?DX9y02eVzkk3/JoIT5/bab2t10AVvVXpGThr1qYx+8SVexCZ3sl2EDOay/Jp?=
 =?us-ascii?Q?6TjZMSbJdyAzs4EdPsOmCpbz1dVsJ6MDGfHY9Mt0mT/mdwenbBUPXMmhNm0x?=
 =?us-ascii?Q?3QiTir16JItCCjgHNGPNpptue4IGHkHijgPb/dLYtVLDVaPxANB7Rwqqo7Fm?=
 =?us-ascii?Q?UdsEm6I0lNAlEFIJA1hjs2lHUEGS5/psBICE4GDC?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4045.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c980b725-63dc-4c13-10eb-08db0e31eef7
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Feb 2023 02:19:42.7787 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KO8IyDegfKR8dLHh2ut0BGXFY8eDMQ13j06gcHUls8PGnRqCvx3QtofX+HAwtyha3Y/5F5CILkX3XZa/1oHe6Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6327
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676341188; x=1707877188;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8r3gGLSrU85/XPjlelmgf6I3IdkKx88wWErlu7IUA+k=;
 b=L5oSQKWuZ0KSpUSgkT96NHw48e9Mo4U5gjasi+W2eG6H3NP6wqneqGvr
 GCCODGDnVS8xdwB+ArcifEK30WIDYnVXsDzXrW0EYTOpJQClQMlJwW/Na
 MVA2UWxL1VW/kmg6AlYKyLD5BYP59FPCIUsRHlQaxmRl0wTf6jBMPh/o+
 fI8iQMEmg9hmCfLXZMtppvRiw85uF6IQCTjCH2vJ5N5f3s3HX9eGmzEih
 7GQa8/tjVht/I0KYRwT30Pb1/gDbW4pQR9l4qRz1WGOlAw/+GgKXBmItp
 bikxUzZdgAbXrgvwRWhz1f2Y6Dr+TShvCBl9MXcgJVyKVN/CxIltVXGGD
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=L5oSQKWu
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2 3/3] ixgbe: add double of VLAN
 header when computing the max MTU
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
 Alexander Duyck <alexanderduyck@fb.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Nagraj,
 Shravan" <shravan.nagraj@intel.com>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 Jason Xing <kernelxing@tencent.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Jason Xing
>Sent: 09 February 2023 08:11
>To: alexander.duyck@gmail.com; Brandeburg, Jesse
><jesse.brandeburg@intel.com>; Nguyen, Anthony L
><anthony.l.nguyen@intel.com>; davem@davemloft.net;
>edumazet@google.com; kuba@kernel.org; pabeni@redhat.com;
>richardcochran@gmail.com; ast@kernel.org; daniel@iogearbox.net;
>hawk@kernel.org; john.fastabend@gmail.com; Lobakin, Alexandr
><alexandr.lobakin@intel.com>; Fijalkowski, Maciej
><maciej.fijalkowski@intel.com>
>Cc: kerneljasonxing@gmail.com; netdev@vger.kernel.org; Alexander Duyck
><alexanderduyck@fb.com>; linux-kernel@vger.kernel.org; intel-wired-
>lan@lists.osuosl.org; bpf@vger.kernel.org; Jason Xing
><kernelxing@tencent.com>
>Subject: [Intel-wired-lan] [PATCH net v2 3/3] ixgbe: add double of VLAN
>header when computing the max MTU
>
>From: Jason Xing <kernelxing@tencent.com>
>
>Include the second VLAN HLEN into account when computing the maximum
>MTU size as other drivers do.
>
>Fixes: fabf1bce103a ("ixgbe: Prevent unsupported configurations with XDP")
>Signed-off-by: Jason Xing <kernelxing@tencent.com>
>Reviewed-by: Alexander Duyck <alexanderduyck@fb.com>
>---
>v2: add reviewed-by label.
>---
> drivers/net/ethernet/intel/ixgbe/ixgbe.h      | 2 ++
> drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 3 +--
> 2 files changed, 3 insertions(+), 2 deletions(-)
>

Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com> (A Contingent Worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
