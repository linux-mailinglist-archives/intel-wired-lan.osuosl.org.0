Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CFAA628584
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Nov 2022 17:37:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 805D081CA5;
	Mon, 14 Nov 2022 16:37:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 805D081CA5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668443842;
	bh=czkPO/4tMRJ25zhspNVt1R0ZZcLJnKc6zRkU1ImgE6k=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pmPvfN8GjDfPadZa5z/zRwbYQroOubRZUBjn4ebgV4HjPVFGRDonPQKOctq4ldqUr
	 4HrF5nP0otxY5Jlq/aDekPvjXvXaJU9R/6YaKe+zdfa5oQD1U2HwZKY/vyzv+68Jv1
	 oXobS2bxpaYm9AFcwAIdlNw63hLDR0KwdsX21IsINDmAkWD9iGJ8U4CIZgKsRFPY+O
	 mylEvDM2yRZP9wdibQWUZ17xlgxAYhrjXmA2GEQizkVxE/d7vDpufIn9EQy+E0dgQl
	 c7qkXZY1op3l4WmB/mSOLP2xunr641oR9XXRgtQTgqd4fZI1ehVJ3YyoQiX6aR0hKr
	 lPRFjrUKKCLqQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pJDO95NLr1rg; Mon, 14 Nov 2022 16:37:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7FC5F812BB;
	Mon, 14 Nov 2022 16:37:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7FC5F812BB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 64AD91BF32B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 16:37:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3DF8760AA5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 16:37:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3DF8760AA5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sL9YoKjylfYO for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Nov 2022 16:37:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CB7A1606E7
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CB7A1606E7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 16:37:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="299535517"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="299535517"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 08:36:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="640836229"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="640836229"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 14 Nov 2022 08:36:37 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 14 Nov 2022 08:36:37 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 14 Nov 2022 08:36:36 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 14 Nov 2022 08:36:36 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 14 Nov 2022 08:36:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xo0yGqO/b7vH8Q9bj5fnYccwjwSF2HuVcYHk71FefoYiAPyMwz99z66JWxlM3qd+k06h6FiAFIApirwJFDqRKK0zDPJC98KrGmOZZVhI0l2J0WAWjefmuIsqMJpicd9tO+GZ+7uPmcDSGxTg+UcyB7phyhI/zP6uXXa29BSVniXaqU6CKXr99DR0JS3/iyI4opfNsIeKZxLAE5Y49w+zGL91ArvT0hSY+cT4Dw3iUdwkw9dGl+y5Oay0rGNDBAvAUeWpmCNOUA4y/iyOKXMfCjbe1kNY/59n8PJ6EnymF+pm+h3piFkCqfat6Ec+J/sfqvuRIS9P4a3hrvfLBqbMSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e792w687FZ7QdoQ/FQCVaBnQYqd4wIM57MJwYyvGQ5M=;
 b=nwpbMQHYnD0RA/0mxeNak8xt+h8wKbnDpfDymxrH/aRtdtEC5VYP5f4GF7KBeRg3+WR6ZR6ndh2aOf69xKtKtnz5IYkJ9shcoMk3MoZOI27P12absIC04sp4Bl/wX0iDPBAi+oTiY7wLKBDVtGFFeTU5MaAnF7aaHvHmpqOD11lNpi4rKMZqn2jwr9/PWdrCXhOHi03U1wOhVtiSgPqmQLJGHcnTPeJpi6e/yCr5hvWw7AGphhU5JT+HoyPoGa/5RqfJeYIFOT6iypdzK5HWM50hrNW4iQrFX0nrTQgWyS13wGu3Vcga96A/xZBe8b4bTCUReGnW2KYT7hl/tNyx/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by BL1PR11MB5510.namprd11.prod.outlook.com (2603:10b6:208:31d::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.17; Mon, 14 Nov
 2022 16:36:32 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::9e54:f368:48d1:7a28]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::9e54:f368:48d1:7a28%3]) with mapi id 15.20.5813.017; Mon, 14 Nov 2022
 16:36:30 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Yuan Can <yuancan@huawei.com>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "alexander.h.duyck@intel.com" <alexander.h.duyck@intel.com>,
 "jeffrey.t.kirsher@intel.com" <jeffrey.t.kirsher@intel.com>, "Vick, Matthew"
 <matthew.vick@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [PATCH 1/2] fm10k: Fix error handling in fm10k_init_module()
Thread-Index: AQHY+AMZDgcHT321Q0SE8Lq6PStqda4+ni5g
Date: Mon, 14 Nov 2022 16:36:30 +0000
Message-ID: <CO1PR11MB508965DC03984354CCD5E734D6059@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20221114082640.91128-1-yuancan@huawei.com>
 <20221114082640.91128-2-yuancan@huawei.com>
In-Reply-To: <20221114082640.91128-2-yuancan@huawei.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5089:EE_|BL1PR11MB5510:EE_
x-ms-office365-filtering-correlation-id: c0b9f65e-e1eb-482c-faf0-08dac65e6246
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AIPzsDh6piPbx6wCJpezCkMx2RBY7+cSap6Ym5BDuMzGDFBkQ4uudYeaRZkqp9HDw6FB4e7YyWrRCwGkiS+YQBp8uTrDffR19Krha86gtuFUuLHgDoGs2GaP7LUQ65Pl8+oIE7MFD3y5xGRN0RCZvQwnSawjjWeMbPhHOJYEYsc1Ev8NkcmCE+apivMnypRt5/rEl6Rg8ZHIt9Y9fw02l296jEyKxi//FzkY3XqXtf9KywdsYTHKaLZgfG/kFrBkedg1SdNTHeWJmbDHeZu/SRtMOtzf67nusKumJ7na1hnff9wL/wKU1ZMWeu5reb7ikHLF0XPfROfuP7Y2BSDaMttqiOa0A3SC108cay4ydZ4Pcf1GcWvayw30hdK+4E92R9S9NH82kRHtflE5JSIKtb1pBFbO0M6vdx3UcYL9sz29gV9QzrxMkNskZMqLF2qgQsSlHiZAuqP536CM0BxiuGTFu+8Sw78ic5AbCVTEYtrSBIRDjdrM3cUXNs48g/KAl9CD1NvLxHv+tsvl8o9KGLZ5NursfbwJDEvD+WyMQa71xgMR1c0QL+AMGa6mjRr1cadkRIxo7N/7mL7JMve07UYsHbEcJ1DAEr/lH5zVOxFPqw9ZJbyrIgCUuw9gLqKuFtQNF6lxezw13dqTJcTsCRTsCd04cqGNA9BXKh62qT46buf/KFDPqKPzu/JnF9/1GjG04tU2oFHT+hznVxyTGCUNAnx+A+rrF0FtB8rAAAfsfmLCj/piZRlcQ2iF4MTiUDNyktg/eMYAzTP+HoxuH98fDzwHVF5bs2qQplSV3Pw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(366004)(396003)(346002)(376002)(136003)(451199015)(55016003)(478600001)(71200400001)(38100700002)(5660300002)(52536014)(8936002)(41300700001)(64756008)(110136005)(316002)(33656002)(86362001)(76116006)(66556008)(66946007)(66446008)(921005)(38070700005)(83380400001)(122000001)(82960400001)(66476007)(186003)(7696005)(53546011)(26005)(6506007)(9686003)(8676002)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?slG9K0VVTprWq5y7SuduQBd0sng0230HlGpwK6BlTIJ7uUk070qX3vNfY12b?=
 =?us-ascii?Q?frRsYAPmY39AguFjjYk9hRdAhkdS269HeTBWiIRq6JCqo0KPoTZptQ+A3TaJ?=
 =?us-ascii?Q?gy1p7R7WVqEMordZtEaGm6BT/T4lnz3PZbzq9e1JYsw82hdAB+rfbiafUEiv?=
 =?us-ascii?Q?PBsPlFGZfioiLyvZKAEW3z2Jt7N3tk8OgZ7jAzQpC0VjSVbaJck6WnR6K/E9?=
 =?us-ascii?Q?+Hj7jYkad1UuCBDwv5vt050hGegkJdDRyHGt5Q1zMXN5WvdvtS/6p1ZtQCjF?=
 =?us-ascii?Q?G3NjlGniDi+puZeq+wNPu4l0WIeoMGZf0BCwSUzIlYfY5I6RjnpXwNFIcTHW?=
 =?us-ascii?Q?DBauURnSi2/e1BPRBPVMECMXPtkX2VRBLSfJ/9Jh0NBQ7hjKVv8gXN7vafMq?=
 =?us-ascii?Q?x5Kj0ZFbAa97cKoHR+TzIjzDx9Rqt1hfpEtlk+KrHtaz2Rf5FupdxFNcl1RP?=
 =?us-ascii?Q?95cNWNQ5jsOUxeSjsvpWQqnfJUDDajcPaw1dkutxLJc9EhhqRfkVjRRMflQP?=
 =?us-ascii?Q?RMgeCD/UmcEYwhou/K1a4uv2PNg676JHmcc6+dbgjbs0URFmYUO+3DMWpOmh?=
 =?us-ascii?Q?GPuFmyxRUa4iFrqiy9PDgSr8f+bJVkRQ+g4JgMS5qLmdAIjCTrkZ7lBap7HH?=
 =?us-ascii?Q?q8FSzhMSx0mhNqq5hLBAbd5BYLKH6yUdk2TQssUxsuBeY3j+nYE9gO/F1RlG?=
 =?us-ascii?Q?7ZMOh2rzY/Ad9lFqtu8GHE3gJ+/iPtCuDsv2DD95T3bHHFpITk51hI10ezKT?=
 =?us-ascii?Q?LCeCtwJO06r1zhAHAQ4H2rYszIrsh1zl0k6/hVMvYsFXgk6B9+SPVf8V8ymm?=
 =?us-ascii?Q?xs0KLSJE2ek/vFg4c9rm+Y1PwpPfPJjB3bQjFT6mFmBcCmLAiJ+1FF60M95A?=
 =?us-ascii?Q?6MQXMQbtXYVLYRS0jLk77dmysubf58TauZDRW8TSnFs7Tlmez5j+bhfxlkSK?=
 =?us-ascii?Q?dhK1fH8lNBQcIpxnAZ13fJABMgz2Q0v0SlWCWtH7xq14bB8OmfvtvWIwxTY0?=
 =?us-ascii?Q?nIKKK114WnXhskLJl8Y/rqdNB3PmqjjarTwTySw9alfhjEEuFNOoIa67hhVY?=
 =?us-ascii?Q?5RO3Du9J3G4uFBafXBUYG+m77xkW8ugjFofoZC8AciJ05s5ZwhNU+1caYm1x?=
 =?us-ascii?Q?6iQBg72h1oLA+S7/7Elaad2L5xBMe2o8H7UKj3eKsyk77OqtRF6uW3+ccuBi?=
 =?us-ascii?Q?DjJfPL/3Lfie5vy7hVHKJ+erAqcjjR+H1f9/DvpDqI/rsIJtznQCxfFcZSqA?=
 =?us-ascii?Q?xO061OCfscmZm7qnknmBA6i1WE+YovlqST5/9iIPXPaOAjXDa+9AsBImZ7te?=
 =?us-ascii?Q?OJ7znfe6wZfIpwBmRoZlAN/m14+OVraq85q06g4TH/fKNtDv2a5yrWqV+Ld0?=
 =?us-ascii?Q?FgXSQf6TL52ieTXGVCFkZWGopihn6eTOiFC8seT7qOIIjMK6jzp/P9Ss74G7?=
 =?us-ascii?Q?gVtZ6S+H4Ws1XGkrb4G+4+GmMulGoLhtGRRbJnoiWMAlfN4QytLqI6czGNtu?=
 =?us-ascii?Q?KhcnWSv25C9AzNK2MP24QZcjfeledUnzK0EOhXHqhOxxqQSWzpFO6ArJ51GI?=
 =?us-ascii?Q?TV1VzN8y7oYpPnIEm31WA9O0N2e2meaIRWYc85Ut?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c0b9f65e-e1eb-482c-faf0-08dac65e6246
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Nov 2022 16:36:30.3766 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Wrmf0yq97v/wgmDqQyRAms9iH6lQlMXzDhY1mo3HoD6PQNFvCSN17eIxITdbrJbFrG8L2sop51Q5ecA1AuL2jOBQ0z2bddXUi79KNQZ5Eac=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5510
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668443820; x=1699979820;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=1tT1qTrV7MdP1NxELRYWiCajlkOfmDnSYiZQfSf7MRQ=;
 b=cOdxnW2A/7O9kZwXETEpizKFX7pFzEVgKFom3OGmr+HEPpJOPitWoLaX
 DprNKGNuHW6S34kNNk/m1bzgSaI5Y178V9wVbphFsQSdMC8OCJBoDLJt6
 WEDE/NHk2CtLmlIp94QCeVcqntNFVd2m6TjcTZAvskDgGPH1aRDWZS+pt
 bmXys6zjxBcJhMDJ44Qlf6Cv07aZA4fg7k5N3O4do1TC/QElQ0q/Q623f
 ElOywK/c9s0pF9QBjDwB2nDz2GX1+wKqtTmyV7dA4UXjQicik0TFXRDSG
 CmHb1wjNQkJz0Qhvc+pC6J0x60sUhJNekb+f5gY1BoHnZt8k5t1xLznco
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cOdxnW2A
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 1/2] fm10k: Fix error handling in
 fm10k_init_module()
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
> From: Yuan Can <yuancan@huawei.com>
> Sent: Monday, November 14, 2022 12:27 AM
> To: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; davem@davemloft.net; edumazet@google.com;
> kuba@kernel.org; pabeni@redhat.com; alexander.h.duyck@intel.com;
> jeffrey.t.kirsher@intel.com; Vick, Matthew <matthew.vick@intel.com>; Keller,
> Jacob E <jacob.e.keller@intel.com>; intel-wired-lan@lists.osuosl.org;
> netdev@vger.kernel.org
> Cc: yuancan@huawei.com
> Subject: [PATCH 1/2] fm10k: Fix error handling in fm10k_init_module()
> 
> A problem about modprobe fm10k failed is triggered with the following log
> given:
> 
>  Intel(R) Ethernet Switch Host Interface Driver
>  Copyright(c) 2013 - 2019 Intel Corporation.
>  debugfs: Directory 'fm10k' with parent '/' already present!
> 
> The reason is that fm10k_init_module() returns fm10k_register_pci_driver()
> directly without checking its return value, if fm10k_register_pci_driver()
> failed, it returns without removing debugfs and destroy workqueue,
> resulting the debugfs of fm10k can never be created later and leaks the
> workqueue.
> 
>  fm10k_init_module()
>    alloc_workqueue()
>    fm10k_dbg_init() # create debugfs
>    fm10k_register_pci_driver()
>      pci_register_driver()
>        driver_register()
>          bus_add_driver()
>            priv = kzalloc(...) # OOM happened
>    # return without remove debugfs and destroy workqueue
> 
> Fix by remove debugfs and destroy workqueue when
> fm10k_register_pci_driver() returns error.
> 
> Fixes: 7461fd913afe ("fm10k: Add support for debugfs")
> Fixes: b382bb1b3e2d ("fm10k: use separate workqueue for fm10k driver")
> Signed-off-by: Yuan Can <yuancan@huawei.com>


Makes sense. Thanks!

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

> ---
>  drivers/net/ethernet/intel/fm10k/fm10k_main.c | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_main.c
> b/drivers/net/ethernet/intel/fm10k/fm10k_main.c
> index 4a6630586ec9..fc373472e4e1 100644
> --- a/drivers/net/ethernet/intel/fm10k/fm10k_main.c
> +++ b/drivers/net/ethernet/intel/fm10k/fm10k_main.c
> @@ -32,6 +32,8 @@ struct workqueue_struct *fm10k_workqueue;
>   **/
>  static int __init fm10k_init_module(void)
>  {
> +	int ret;
> +
>  	pr_info("%s\n", fm10k_driver_string);
>  	pr_info("%s\n", fm10k_copyright);
> 
> @@ -43,7 +45,13 @@ static int __init fm10k_init_module(void)
> 
>  	fm10k_dbg_init();
> 
> -	return fm10k_register_pci_driver();
> +	ret = fm10k_register_pci_driver();
> +	if (ret) {
> +		fm10k_dbg_exit();
> +		destroy_workqueue(fm10k_workqueue);
> +	}
> +
> +	return ret;
>  }
>  module_init(fm10k_init_module);
> 
> --
> 2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
