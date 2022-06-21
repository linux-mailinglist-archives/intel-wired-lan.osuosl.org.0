Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 37D67553B78
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Jun 2022 22:21:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3861261071;
	Tue, 21 Jun 2022 20:21:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3861261071
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1655842914;
	bh=yCy2CSNHejgTRbc3XR/f+OvJPRcDKVsGdjcFaoP60JM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=k/wO0HWrpAQ13+VUYhOPXiJwCgrtPgrwRsvjo6clAmj7xaSXjZI64isgBiMYdYYEc
	 xA2YIIYPXVA4OUymHLnIJE+e3a0hlcHa3r0HkscJHcxCijSXPsTBy/+xRmnsXEXZsz
	 /fSk6KuTNe8KXD33bJF46khXrm2xZzslHezzvHlZew53EgMr3SWyxJhKFq3vXH3aTd
	 eH7CAj9OkdpiV+Sot5TfHRuKuEbjJ+NCVMZHFmYIvEV0F3dhK00ruJX6lMsvqpMlJy
	 knwDGD9T0D0HpFCOuoca/IUORVw88FuMKB+q4H5bpucKynjR7TVeJe303OaBRVDu8l
	 VYkgYuhureKrQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TuM9srsysU_P; Tue, 21 Jun 2022 20:21:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 02FF26106C;
	Tue, 21 Jun 2022 20:21:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 02FF26106C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AFECB1BF4E4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jun 2022 20:21:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 925D440BD5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jun 2022 20:21:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 925D440BD5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Oyfu0cnT43FH for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Jun 2022 20:21:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3D7B84013C
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3D7B84013C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jun 2022 20:21:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10385"; a="281295361"
X-IronPort-AV: E=Sophos;i="5.92,210,1650956400"; d="scan'208";a="281295361"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2022 13:21:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,210,1650956400"; d="scan'208";a="614879072"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga008.jf.intel.com with ESMTP; 21 Jun 2022 13:21:45 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 21 Jun 2022 13:21:44 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 21 Jun 2022 13:21:44 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 21 Jun 2022 13:21:44 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 21 Jun 2022 13:21:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WzzrZp4VITYgp8UxkKs2meOfIIBc1lCa4/iu5ejlZTW8SZu3ZYWojYNYEgnsx7SoItsDFilKB6xIw7H8v8vUs2owyNFkLg8rcOI7QVY1CJdRmq8/roaYyo/Dc7mLhF3yhw+c7lE1rL9vsKgedEde7cFmv2yMN2XFDZnGazNqmMdNkqQWrRM/Y1bEbA23kuBfgkv1MNXXiXD2PbkmlMGScAa183CYSIwFM91f7JqTbUrdY84tIeWKPcj1Fzqn4ivbioFtG5Jo4gPF7BKGaY+bnOAWKLRSoYBwJLmpkMjtgK7DIyGCNuj1+NzOob4q08xpGxRdyr4RUbWXZ5eR/rAWvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=37kdlDs+CrpLhHmmpVA5FPiOWMEDeDBPbhp8U6jLY6M=;
 b=N0NfRYqt36s7959JaDWQ/tALXsq6kmaWujjbZ9cL46/CQAPYyRT5Oalf0nnOFWwCxZbglxtVIvflmIsOAU3rypL9GmS8l9KrZRVpV706IbSUUfR7hmonuo6SHt1v8iwP4heC4WLi0GOcw7a4SSDOtGwxx9FqOsbG504cJU9CG3h0Nn6hbvKLiLctJ8FSNHiH3yqxi4oSC+zB06hQgX5S803d39L5qLfyNllOUPo+hE8NLGcuMy67XhgVCpdWjL7UE/sHoQ1/d9o/cgme+HDbPhopeVlDCKCdaDoiH9WiL9vFUnFxzLeypzLt7l/AdNACaNpS7lJUpYCBj58U4NBzUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3175.namprd11.prod.outlook.com (2603:10b6:a03:7c::23)
 by DM6PR11MB3740.namprd11.prod.outlook.com (2603:10b6:5:140::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5353.15; Tue, 21 Jun
 2022 20:21:42 +0000
Received: from BYAPR11MB3175.namprd11.prod.outlook.com
 ([fe80::19d1:a9e5:4cab:4163]) by BYAPR11MB3175.namprd11.prod.outlook.com
 ([fe80::19d1:a9e5:4cab:4163%4]) with mapi id 15.20.5353.022; Tue, 21 Jun 2022
 20:21:42 +0000
From: "Zhang, Xuejun" <xuejun.zhang@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] iavf: validate dest MAC and
 VLAN from tc-filter code path
Thread-Index: AQHYgnK1zS8vo0UPUkqlT5he86oe661XyWeAgAKKaFA=
Date: Tue, 21 Jun 2022 20:21:42 +0000
Message-ID: <BYAPR11MB31759A9BE889898BC553CFD482B39@BYAPR11MB3175.namprd11.prod.outlook.com>
References: <20220617175000.2168164-1-xuejun.zhang@intel.com>
 <YrAGdQB2np+/P/Ia@localhost.localdomain>
In-Reply-To: <YrAGdQB2np+/P/Ia@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7d2de88c-e0de-48a8-2c6a-08da53c3a7d2
x-ms-traffictypediagnostic: DM6PR11MB3740:EE_
x-microsoft-antispam-prvs: <DM6PR11MB37403D777FACB17B99DB319082B39@DM6PR11MB3740.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dAg9F8m1tSXyvKvXNxR3ZDHlNIWFY8s/Y3B2dc77n7bimW9/6vFelniG0ZvPSPM3Dy5BRiTpqplwyT4MWZuY0++TGzdxN6bD7QaTYydbjC5c1BlHUTsmrgeXvmL2x9jwnNVKTmgP/hnkW8RZJdRfjApopks1W96BidJ8A4jPaF1K67VEzrCGZBEEbCwi/maMndpzubtGr4D1elTrRlL3Ea+qzdfO/HEhLmXsUImIY7+zyBJq+cjZwXtiJ/6QIUus9GQv2KXojvustLIzh62/KUBES4HdMBWt/3z40QFNueuRrXYljP6bc0WN2A27KpbcVlIWpCcMy29oCuqZ3xjGjI3yWXe9jJ3t0rvkqfQjg8N3k507uTuKyCRQy5uWYi3Rc0qf6Cnl14BaUuN9kwu0cRD42g4YlP5v5Oc3fQ0D5zOjp2GHgrWu+JjxHNv4mzKdGj8aOq6nASz9rHVCGDxPrz42rshtUG8bs/9BtjWNFamFvrhcGURp66YA+ewfft6Lv6zPvY6KFn+F0JlUspJv8Y5dpmKxuuOysa4iH92K4K/8KDV3JYaAJzfTsaIWab5PsF8xztgWJ3w9tJw4pWrT/r3Sbk80fF3oS672Y4tW8gRhoI1rjveykTYDWjNeYc9NdjyGlSoiSSrKXppolYUx4cOOtmmcG+mz8s6GTl1YvXHTgG9c5TB5ADXXkUwlx4WLFBizBMzsCMxje0a0ATIwOIaZPcGphanX7nFpCsVM1WGYIN46gNj/iitfSP5eCJxXhEWvjzCNO8O/witsuLc7CFRrR23dMLePzhsHWUmo2Zw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3175.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(376002)(39860400002)(346002)(136003)(396003)(966005)(71200400001)(83380400001)(64756008)(8936002)(478600001)(52536014)(15650500001)(76116006)(4326008)(66556008)(8676002)(66476007)(316002)(6916009)(54906003)(66446008)(5660300002)(2906002)(7696005)(26005)(66946007)(41300700001)(9686003)(33656002)(38070700005)(38100700002)(86362001)(55016003)(82960400001)(186003)(53546011)(6506007)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?RHazYZsgkNdYDcnwonHfus4CZCZs4dHZLPKh+jRgV+xFK3OLVvNq0IFSBcT+?=
 =?us-ascii?Q?9cZvHtLaAdHBH61I4psybMdWbfE0eQvs49d49wAKaq4keikgJIlnOKmCV4N3?=
 =?us-ascii?Q?n3/IjTH/7NdSl/NOcgxLkfk/pbxdDnBHn+iW6tZrSepGhWQfqldZhDHvt0Uh?=
 =?us-ascii?Q?lqZ5cX5NPKb5zkZqIQIwjjimxG9Bt/JnOs1my6oMOV6isiigblK07pH5U89q?=
 =?us-ascii?Q?LW8xQ+R72IBfec5Qyflar17TiZuc4BoY60IZjNsdOiD4iZKlXV2klRKsEzOH?=
 =?us-ascii?Q?PZhKL7sgtEw3Ug5233NLmwQkcrDgcyW8PTnap71EhTQlcqMLmqUMxrsMPQVv?=
 =?us-ascii?Q?QVeNsPA6raA0f3eC4R4aHMOOTs3KvQ475i36J7VA+e8RcV2uq5y0B0YkcD4y?=
 =?us-ascii?Q?I+lk8bjEuXPQ8n42OVvy93SHsaa+kq7K89j+AP1830I0iYZYL12YwBflzgqI?=
 =?us-ascii?Q?3FzmgqHWNRs7opnvlZ9e0aW8z6K1taDdJShpguPy9qohGuKeWmzWyywKhp2c?=
 =?us-ascii?Q?nHJLV+ogF3G8kocHKGmq5scyN+p4SoWuQvGxdq1QIkZsOaK23i5vqC2yyDSb?=
 =?us-ascii?Q?fEQuYGl2qR0r6au4HzL+rVQ0z0HqdUSL0RpW1/6K1n1TWwI9VaHGH6UGRRfY?=
 =?us-ascii?Q?03aZQJwQFDmoKUWzgZzZp59z2iGDl/aBO5W9kaIDXCXDVIa7gknR4Bl56VH0?=
 =?us-ascii?Q?caA3krTqeYlbbswEDdosHwsvPax+rlORzilb/ggafN+mF3dIbjUrDcqD+Ili?=
 =?us-ascii?Q?pvHAYoKUsrpJxJhVSvaUi3/jKWnBanNVUjUpScHkNUz6zeAqM7Q3fsvzgqKV?=
 =?us-ascii?Q?7GHN32X4e3LNTgND54Tvx3ZxOjgqVQvSeSqSX2ee91mroUXojI1SObLYmCUV?=
 =?us-ascii?Q?XFVUL6o+Lg9Wt2mFKrZp/hkuJO0GJVKDWBE9LuwKcBdK9h21aiIWXxk9UQwj?=
 =?us-ascii?Q?cpZIWJHmdo7HZqILIHDEVWbp0ii9oUYuOzFV1krRvZ/+RKd6658dLYoVQwA/?=
 =?us-ascii?Q?aQC/6DraP2vjs5Fl9df3CWCCbkw8NPwiGXF5A6hOR+ZIPUFBGt+HTIJvNqeI?=
 =?us-ascii?Q?YcScbruTa1swY+Tilwo2HZYHD4xkSL9Rynvs2hIugY9HeSFJeNO4zEnqclR1?=
 =?us-ascii?Q?c8HOrNCuHo7SdHhcgvefzmwaFI5nP0Y7vjNYW7PE5S8hbROUcZmCiBzzqS73?=
 =?us-ascii?Q?tJQYdrP1ZqRx++8nCz6BOtUrfQVmvheoWHv3GrtqT4WYpgl7vB53tq47mAvO?=
 =?us-ascii?Q?MXQ64HbM2k5wmeS+fSw+8HHMWQSGf3O6kPDs3py42aXzkOMw0uTMxeyvhaDw?=
 =?us-ascii?Q?7FghSCDbxh+k/1zFu+Lh3VdhEwv7h/fR/JHlPBM49AJLBKR7RMIrVFKyVpro?=
 =?us-ascii?Q?jqTpnwAUB6ov0fCea4xKCtJ0ofeto0xafj0trhrDvhJVYqQX2S8J/Rr9bW1t?=
 =?us-ascii?Q?GVjZvGG4I5NP0dEgeebGUNSnt+eUnY4ClCTvsfpxdlKNgjh3xNpRzo+SPfDz?=
 =?us-ascii?Q?3zgnYvKIrmFjlo1aduvDFliXu5kbuUkHHQimZghTQ4klUBTxNjsFn2nZJ4Yo?=
 =?us-ascii?Q?8SM2AzUxdyVOiZsHeKPBhJoyeUAq2TdOv0mUAbb66FSRoQ0SdP66vEC2E/GH?=
 =?us-ascii?Q?oEb1/6nNOQTAYq32MxoeWNWF5qR+kTLeEz+V/jozsPeWYJ8LsOB9bjcrch3V?=
 =?us-ascii?Q?go6TWkPGY5fh3w8PP+8wsoWUULsP+pqP4ZfhM935FNTH3zHfkQIQVBqK6IHh?=
 =?us-ascii?Q?282PClx7Sg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3175.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d2de88c-e0de-48a8-2c6a-08da53c3a7d2
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jun 2022 20:21:42.5331 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sSgsEomLn9EHr7EZS1OaXafA/3atWUi4yB+N04L46VQLzYIUptz8/I4qSj1v+lq+k8E4diGFiSRtowwYV8M3MQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3740
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655842906; x=1687378906;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hEfl+1zyYWuha302D23F3VGpSJOtnes3OB12Mb4YV2Q=;
 b=IFMkmnu9Dduu5y2+/tp93tTX05SyoDA98JWoMaObbpxutmPQd4o6mUJG
 t5UqthgR4ugnUz+r0rZx8DHo3a/USXELjARcJZGUuAeAOBgyXP41pW6Ej
 NSQuYBvgY9Px4ILZRmSN18QmWPDyB75VISyMmkkQNclTunFSC3Xz+yDko
 yF6g4S8bwP0fR40eFymTgRbciES/yxinT6BFz0lH/wybJdZiGXTwV4HGL
 Ei5HehNql/77D1e2iSui9D9o43uMv8bBG1n05dF5jdjh+o3/eMOzfZLdz
 PZ18AJXpCYRMOaeOdHgaHbN1MBcOTFs2PY70zc2THnu8t4g73jP46pW5p
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IFMkmnu9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] iavf: validate dest MAC and
 VLAN from tc-filter code path
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Kiran Patil <kiran.patil@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Michal,

Pls add your comments whenever you have a chance.

Regards,

Jun

-----Original Message-----
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com> 
Sent: Sunday, June 19, 2022 10:33 PM
To: Zhang, Xuejun <xuejun.zhang@intel.com>
Cc: intel-wired-lan@lists.osuosl.org; Kiran Patil <kiran.patil@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net v1] iavf: validate dest MAC and VLAN from tc-filter code path

On Fri, Jun 17, 2022 at 01:50:00PM -0400, Jun Zhang wrote:
> From: Kiran Patil <kiran.patil@intel.com>
> 
> Before allowing tc-filter using dest MAC, VLAN - check to make sure 
> there is basic active filter using specified dest MAC and likewise for 
> VLAN.
> 
> This check is must to allow only legit filter via tc-filter code path 
> with or without ADQ.
> 
> Fixes: 0075fa0fadd0 ("i40evf: Add support to apply cloud filters")
> Signed-off-by: Kiran Patil <kiran.patil@intel.com>
> Signed-off-by: Jun Zhang <xuejun.zhang@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 62 
> ++++++++++++++++++++-
>  1 file changed, 61 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c 
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 57c51a15bcbc..287c3e4bf8af 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -3558,6 +3558,48 @@ static int __iavf_setup_tc(struct net_device *netdev, void *type_data)
>  	return ret;
>  }
>  
> +/**
> + * iavf_is_vlan_tc_filter_allowed - allowed to add tc-filter using 
> +VLAN
> + * @adapter: board private structure
> + * @vlan: VLAN to verify
> + *
> + * Using specified "vlan" ID, there must be active VLAN filter in 
> +VF's
> + * MAC-VLAN filter list.
> + */
> +static bool
> +iavf_is_vlan_tc_filter_allowed(struct iavf_adapter *adapter, u16 
> +vlan) {
> +	struct iavf_vlan_filter *f;
> +	bool allowed;
> +
> +	spin_lock_bh(&adapter->mac_vlan_list_lock);
Why do we need lock here?

> +	f = iavf_find_vlan(adapter, IAVF_VLAN(vlan, ETH_P_8021Q));
> +	allowed = (f && f->add && !f->remove);
> +	spin_unlock_bh(&adapter->mac_vlan_list_lock);
> +	return allowed;
> +}
> +
> +/**
> + * iavf_is_mac_tc_filter_allowed - allowed to add tc-filter using MAC 
> +addr
> + * @adapter: board private structure
> + * @macaddr: MAC address
> + *
> + * Using specified MAC address, there must be active MAC filter in 
> +VF's
> + * MAC-VLAN filter list.
> + */
> +static bool
> +iavf_is_mac_tc_filter_allowed(struct iavf_adapter *adapter, const u8 
> +*macaddr) {
> +	struct iavf_mac_filter *f;
> +	bool allowed;
> +
> +	spin_lock_bh(&adapter->mac_vlan_list_lock);
> +	f = iavf_find_filter(adapter, macaddr);
> +	allowed = (f && f->add && !f->is_new_mac && !f->remove);
> +	spin_unlock_bh(&adapter->mac_vlan_list_lock);
> +	return allowed;
> +}
> +
>  /**
>   * iavf_parse_cls_flower - Parse tc flower filters provided by kernel
>   * @adapter: board private structure
> @@ -3651,7 +3693,15 @@ static int iavf_parse_cls_flower(struct iavf_adapter *adapter,
>  			}
>  		}
>  
> -		if (!is_zero_ether_addr(match.key->dst))
> +		if (!is_zero_ether_addr(match.key->dst)) {
> +			if (!iavf_is_mac_tc_filter_allowed(adapter,
> +							   match.key->dst)) {
> +				dev_err(&adapter->pdev->dev,
> +					"Dest MAC %pM doesn't belong to this VF\n",
> +					match.mask->dst);
> +				return -EINVAL;
> +			}
> +
>  			if (is_valid_ether_addr(match.key->dst) ||
>  			    is_multicast_ether_addr(match.key->dst)) {
>  				/* set the mask if a valid dst_mac address */ @@ -3660,6 +3710,7 
> @@ static int iavf_parse_cls_flower(struct iavf_adapter *adapter,
>  				ether_addr_copy(vf->data.tcp_spec.dst_mac,
>  						match.key->dst);
>  			}
> +		}
>  
>  		if (!is_zero_ether_addr(match.key->src))
>  			if (is_valid_ether_addr(match.key->src) || @@ -3677,6 +3728,8 @@ 
> static int iavf_parse_cls_flower(struct iavf_adapter *adapter,
>  
>  		flow_rule_match_vlan(rule, &match);
>  		if (match.mask->vlan_id) {
> +			u16 vlan = match.key->vlan_id & VLAN_VID_MASK;
> +
>  			if (match.mask->vlan_id == VLAN_VID_MASK) {
>  				field_flags |= IAVF_CLOUD_FIELD_IVLAN;
>  			} else {
> @@ -3684,6 +3737,13 @@ static int iavf_parse_cls_flower(struct iavf_adapter *adapter,
>  					match.mask->vlan_id);
>  				return -EINVAL;
>  			}
> +
> +			if (!iavf_is_vlan_tc_filter_allowed(adapter, vlan)) {
> +				dev_err(&adapter->pdev->dev,
> +					"VLAN %u doesn't belong to this VF\n",
> +					vlan);
> +				return -EINVAL;
> +			}
>  		}
>  		vf->mask.tcp_spec.vlan_id |= cpu_to_be16(0xffff);
>  		vf->data.tcp_spec.vlan_id = cpu_to_be16(match.key->vlan_id);
> --
> 2.35.3
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
