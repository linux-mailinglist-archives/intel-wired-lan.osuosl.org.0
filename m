Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 06AD27E4FF0
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Nov 2023 06:19:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 08A9F4176A;
	Wed,  8 Nov 2023 05:19:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 08A9F4176A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699420769;
	bh=zZCA+U6zoGDrRC2uQcVmDSf7e73/9dG5BwYyi+l8Crk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RDwbdSaoRIEmVFKL2MZc0zzpiheUCg0Jtfe8ovsbzXojbpqM87XhVt5M3oUbhhCAe
	 A23gwkysxW2ax4vUEyOuXubtkh+HEQ/9C4Mmqb4NEBHQcvunbWTkLlutrJdO2yN/wH
	 Uzcv9aKNb3kSA/k0/ZBuTnr4esIprioWD6FYuXowJUfP/MMo8tOTtVD0cwYB6DAAPv
	 De/d+3QL9Sta7K6lCArUtwSeLAplJzdBPQyY5X18DQwTH223G1I2wrKvJEBLteCi26
	 rRjcmcHqZ3HVzK++jwXD72Mvcq2LTNNghJFdpqITKwpSWmjLmaWHmp7BZUIAGofbLF
	 CqUwGK1uKq4MA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6U14FUQrXCiT; Wed,  8 Nov 2023 05:19:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BBB4A41754;
	Wed,  8 Nov 2023 05:19:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BBB4A41754
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B09F91BF955
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Nov 2023 05:19:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8943860D75
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Nov 2023 05:19:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8943860D75
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7aOrEpq1p8hQ for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Nov 2023 05:19:21 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9C9AC60D70
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Nov 2023 05:19:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9C9AC60D70
X-IronPort-AV: E=McAfee;i="6600,9927,10887"; a="453995293"
X-IronPort-AV: E=Sophos;i="6.03,285,1694761200"; d="scan'208";a="453995293"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2023 21:19:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10887"; a="762945218"
X-IronPort-AV: E=Sophos;i="6.03,285,1694761200"; d="scan'208";a="762945218"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Nov 2023 21:19:19 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 7 Nov 2023 21:19:19 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 7 Nov 2023 21:19:19 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Tue, 7 Nov 2023 21:19:19 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Tue, 7 Nov 2023 21:19:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ImT+BhsBGKU6eid4iOsa9lXwJAGrz9oRjH+yv/AnBRkimT2ZZUI8Thvp4noJTBgiCus5HPiiej1Hg/gFWIWnTSTfjt8oMNjdo0a1IuthqMvANOTXBKaF7nWvxphydDfSWOa60KH5x//cLdZuchH/ZpJiDRLR8476c3Sx1Ap66kuNw9sCQMtV9OzvzxaENY0kn+vH4AYbxGConxIb6PIPu358UvkZC6xKoK2b2dPgMTbQqlSAq/YdDAhQ5HqqU/5pzgrdy1DIWFxIrsXQJKkTkmzox9UnHFq8SeQbd+7Lj4v5sMzgIp4wpYA4F+a8qlGxiLUVzP0L667AxAzreiYjmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Uj2oOlS4p8A8dgEQXiCrVDuuUGEXXHZ+LkWhb7hYHe8=;
 b=P6kD33VeO9ZJP0bo3hsy/TSahcvqrg4t2MzASI2QZMYSuF5tNzZ30cmtA9xcD8ts3LZaSs6zS5bo0+phYBb2VX2U8qtV6uEN1kkqnyX0n978HvIS9eBi4Bvy8gqi7i3DNAs436CTHipU3byEP58aPGMxFMg4XyhjTGET4FsIjELwx69w9NFTFaouZZRUvSzzvRchg5nMuhMUNhpBQEbHvIi6QtEUlVTn/qdWdDuLw/U/pIBgbVTwWhG34owACSHNC47/ZsUgGdJfOx9xOUJQO+W593Wj59D/cPJyY1YJl9f21+bKaBJUPUmA3EzBMj1PLD3MeT2OaVi1vztCsJCUcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by MN2PR11MB4663.namprd11.prod.outlook.com (2603:10b6:208:26f::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.29; Wed, 8 Nov
 2023 05:19:11 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::7911:8ae6:fc73:1097]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::7911:8ae6:fc73:1097%6]) with mapi id 15.20.6954.028; Wed, 8 Nov 2023
 05:19:11 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: ivecera <ivecera@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] i40e: Remove queue tracking
 fields from i40e_adminq_ring
Thread-Index: AQHaB+fr2gzSOSIrIkOu3Txz1SFWHLBv9c9Q
Date: Wed, 8 Nov 2023 05:19:11 +0000
Message-ID: <BL0PR11MB31229A88DF87AE89F2D50E47BDA8A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231026083852.2623216-1-ivecera@redhat.com>
In-Reply-To: <20231026083852.2623216-1-ivecera@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|MN2PR11MB4663:EE_
x-ms-office365-filtering-correlation-id: f8bacd33-1df4-43bc-f7d8-08dbe01a3dcf
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5SAhJOW83ZKx+LxjGrbOMqq8p7oXqBxLA6L1784fRwtd5qZEq5b2IAZtAGib11h+f53bzhMnO1EzLrzgdCtnoRf92tDFn4hnITuvNqUrNwzSw4zn93djlWvlYANOpIJHHQuD0qaMIYDcr9FsjnQCWSpL4+KCcqiV7SdeeugmuPfvHeUmd3weXBctib8ZEk+uUqN4oKhXTC+B+dUqXXUXrD1Fm46K+eeAfUQjqP7iNUN/yajgBGYRFqlGxxq/hxCWrN2/Ljz6BLx2wwnEocKzDn+mvAW7hA9H/zMr+e+9psd4HzRp2WGXtMwMfIDWLTEJFxZXP/a9QIYQvgoAVZZJZOrNv36YeJf+749iGue04HRSJWaVWuOcxBAjeVj1uVnhRqOykREppvvb1tQu44jIny8GFM6lNLlxad3/UwkcgR1QoSMsEsAgTqnDGQGUUTBJlYomUb1qaNuep5MeScMMN/qk/3FmmIvEE0PBVfNE2Nx+oZq4L7uyLrjBoAz8Mo3TIpfXkZR3ulwuXy44WlBG4pgPy1b2aC//mE/WgohV91rtNdjg16mEiOO49lfAm0p8nXAqoF9xQRNeeLkDcHDL9qt4Fj8vmmz6dnBPveBRsmp477k1U507oXwsFDoYMmCe
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(136003)(376002)(39860400002)(396003)(230922051799003)(1800799009)(451199024)(186009)(64100799003)(71200400001)(33656002)(7696005)(53546011)(6506007)(478600001)(55016003)(9686003)(110136005)(64756008)(54906003)(66476007)(66446008)(76116006)(66556008)(316002)(66946007)(38070700009)(26005)(8936002)(8676002)(4326008)(83380400001)(52536014)(86362001)(5660300002)(2906002)(38100700002)(41300700001)(82960400001)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+O7zj1WH1P9l44Cb5f2vObkuq/1h7kcIh4I5F7T6fGM48JoYc6kNMMapURKY?=
 =?us-ascii?Q?X/4tBMiNOrJ/gfxKcDIdNC23kn3jNbwNiOzCxGDIKE0xwUF9q/pUGZ5wTwmw?=
 =?us-ascii?Q?rr6bHTyesqw9TLNZTNTSDZF3DGjTBCQtYTr6PK4pBe5DBFR1us3KGS4ka5bY?=
 =?us-ascii?Q?EDJ5Et4P73wJjea48MsR5sugwS5j33LnPhcm9go2EI5VJJzqADMsBWO5Rsye?=
 =?us-ascii?Q?HVwsbaB4HNLfABcHlVTJVrK85BKEl3MSjSUVjpMCIyA/7gn7OVAqPU1AfACJ?=
 =?us-ascii?Q?/KtpjKiuIIPHU+Hp8fdzpQQR6o1/li2mNUv2xevcrmUL5fzpsZdCT9hcr6vh?=
 =?us-ascii?Q?QY7Q3x9ksHPZpO95IqErFCc5Ixonq+W59tN4tb1Ec7QGj4ayHGQS97UGEAKF?=
 =?us-ascii?Q?QywIRLJslpM3op7UQL8o4Jnqcq01VYBtnHsKDpqtPEZVySJbRU6Z/Qb0IYNh?=
 =?us-ascii?Q?0Bi4S5K87mneL+omiDdJuu04i+h6b7YAncS+tgLoUDPY1cJHnMNqc4iO/RrL?=
 =?us-ascii?Q?/rP39akZdFhtoYkoIupHmfqyVtj+wPgryeQ3eJnpBYa496kzX6M6ufzqoJzO?=
 =?us-ascii?Q?f/RoSMbmYIIeV7VJkHtA4y3yZquvM9dPjzjcwyLoocFDyM+2/aFkNLphW3J7?=
 =?us-ascii?Q?QgGsKNRRB0/pZqekZsvRxb8TQmKShrB5z0r7MZtPzFo4xOqeg/YjG8dsR/YZ?=
 =?us-ascii?Q?KmOBcOPy99zrLlioIsnKhGztLgPMvtMcRb+0/kollczWlXIbf4sI7/NNywJl?=
 =?us-ascii?Q?bfH52T21kF8Z1ewHRx3lGKZYvmW4SA4RB88ZKA3VITsKL0gbo4VVccoPETct?=
 =?us-ascii?Q?NFFqngEeZf8DOOsUSu7749XhdP1glzlFxT7VV6F2KOwsctq6E+6ocl91maQ+?=
 =?us-ascii?Q?U8v/0CRdLA2cgMwBMylcLApzirNB931aKzg3N/LotI0evhql9bfRgDssYCNe?=
 =?us-ascii?Q?g18HLGvo9Tz7AE8n0hizkqWeAajPNkgMwBPjrUrzMx3q0RhB2Ihc9ZIB9y3w?=
 =?us-ascii?Q?yEWSqBFwNwR4LJN8awRU3Osi7tAXS9D+h5OE1PILudgsdqTj9Tmi2JNo9reR?=
 =?us-ascii?Q?nTie3hW8j0AZTuBfdl3GmBPYG6xcXF7iFCF3nMuONXvjjDm7pc+xT1AgaijL?=
 =?us-ascii?Q?+wJHsPX/CEwEihK+N+lCkTs1Df713enFdmUH8SWxO9A2qNkMs0h1/kkV84ct?=
 =?us-ascii?Q?sU3VwdQb1HpQwozPRKAPjaLSCj3VCxvWoPIbMTgmmlQsiVkNLU+dvmWZlcKj?=
 =?us-ascii?Q?WN7rD4Rs2tLwOlJvNq4x1LuLYd5tA+aSwZwHbcI5q7sNbiyBF6ZxdYUAUxtT?=
 =?us-ascii?Q?r47FMnxJUUIaHtwBkQ/wETluChaYOOkmQQ9ThLwitjKZryd1F8IJtJXQzMGo?=
 =?us-ascii?Q?D7agCj+O+r/wuE4Uwn0/WUFdGsdDxOowiysQPtFU9gLf2wQA6YH2SChziGGd?=
 =?us-ascii?Q?fvUhy/4nxKXFHfmB9uO0zBgPYMhvdvmtHCRu0cDJa5luMdZZJ194g6pTOC7b?=
 =?us-ascii?Q?RD6FAxpsEAgz8uTLT4Mpz8ZixlAbJeGatcFKbSHgHBtTpRhxvm3AARXAhMn9?=
 =?us-ascii?Q?dDuc3jIq5nVHF61QqhUYvnori6VH19JRNzkHXDXffIUGVC8lbLaDk+In+01h?=
 =?us-ascii?Q?riYtc35lZIRyqkEAMBDsZ9M=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f8bacd33-1df4-43bc-f7d8-08dbe01a3dcf
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Nov 2023 05:19:11.3566 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WIr2Gp/OMPO8hUSBguzOROMF9Nbxiz/lUZuM4C7LQGJxwSdUbL2AdC16X3GPUAmuOWwnzwizFjyUovOasMICiClDBSWw56xi9R4J9SuW8f0joyBztKjH2YV3eDKWKGPN
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4663
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699420761; x=1730956761;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yd4g1h/b5PRixeN3sJXWjIJ3jcw5ohd2T7cIi8Ue61w=;
 b=C9OMV1XCj82W1qnYvotJD6nZiFjfPzNq985DiD6cWbZV+m6Fs0qPigbY
 3+ARHKrtbkC66+an3wh1LvB+eCmF+vvQUPwM9XjjJagApaEvwRX9rjhq7
 m3jtKg+qKbEWiSKXDSennssRKfDCP11BjzRX/xTT9rm6lZjSeaXksCJXO
 Pz0ZT7OTKw6Uhl4gc8658zblpr48k9E3PZVSQzNqpI7/ckN5/xlt1PJrz
 6cUC11xB7DInRmhpkuRuViwQ8UYnQ2++LazSEx6Zqbpa5+sHdgHmDLHaO
 Ns3osFC/O5j+4s5G2vIIypK094VcOt4gZSwWn0ws93+NPrUK9aowVPUon
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=C9OMV1XC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] i40e: Remove queue tracking
 fields from i40e_adminq_ring
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
Cc: "Drewek, Wojciech" <wojciech.drewek@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Ivan Vecera
> Sent: Thursday, October 26, 2023 2:09 PM
> To: netdev@vger.kernel.org
> Cc: Drewek, Wojciech <wojciech.drewek@intel.com>; intel-wired-lan@lists.osuosl.org; Brandeburg, Jesse <jesse.brandeburg@intel.com>; linux-kernel@vger.kernel.org; Eric Dumazet <edumazet@google.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; David S. Miller <davem@davemloft.net>
> Subject: [Intel-wired-lan] [PATCH iwl-next] i40e: Remove queue tracking fields from i40e_adminq_ring
>
> Fields 'head', 'tail', 'len', 'bah' and 'bal' in i40e_adminq_ring
> are used to store register offsets. These offsets are initialized
> and remains constant so there is no need to store them in the
> i40e_adminq_ring structure.
>
> Remove these fields from i40e_adminq_ring and use register offset
> constants instead. Remove i40e_adminq_init_regs() that originally
> stores these constants into these fields.
>
> Finally improve i40e_check_asq_alive() that assumes that
> non-zero value of hw->aq.asq.len indicates fully initialized
> AdminQ send queue. Replace it by check for non-zero value
> of field hw->aq.asq.count that is non-zero when the sending
> queue is initialized and is zeroed during shutdown of
> the queue.
>
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_adminq.c | 86 +++++++------------
>  drivers/net/ethernet/intel/i40e/i40e_adminq.h |  7 --
>  drivers/net/ethernet/intel/i40e/i40e_common.c |  8 +-
>  drivers/net/ethernet/intel/i40e/i40e_main.c   |  8 +-
>  4 files changed, 39 insertions(+), 70 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
