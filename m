Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 273427170DD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 May 2023 00:41:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BD388822A8;
	Tue, 30 May 2023 22:41:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BD388822A8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685486461;
	bh=uqHojI5gLrO/MSTLgq/tjo/anNICVLhWc40v4pN0JSw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=H6nNZ2v4T7mafJDjFxn81eVJuDeCBnJeNaDu5CEs1wiKiy6YqI0Ys0IKAZB2WSynn
	 tvGfPBbYF5egbKLyDSk1ZxvpYinBWHvUrKiivkB+p6PLlm0H615a2YWVoGBoRyuKTv
	 2JvuEJaFLMm3iLuJSJDLVIGLpBZ6yP4Yz2N/lYrV5dYEoO4BZZkXeDhfUw/BRwgPrG
	 ZMObUI3sdlrjquiV4fUhwUb4A+lkkI4DfPPtA4jeeh55KCMO8c5JFxeDnxaB9ix5bJ
	 6HjqoO44+EGdvN4eR6sm1+vJkdYj6AkZBbjZ/wcUjZhgFqw2E6mxMxYZgEA9/BeOVh
	 OTVCqkEouYZcg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GDC7QrX0uOnM; Tue, 30 May 2023 22:41:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9675C822A0;
	Tue, 30 May 2023 22:41:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9675C822A0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 16A1B1BF35C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 22:40:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E22F3822A0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 22:40:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E22F3822A0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LEeAu8RW5ZA4 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 May 2023 22:40:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DFEA182287
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DFEA182287
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 22:40:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="357451843"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="357451843"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 15:40:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="700816488"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="700816488"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP; 30 May 2023 15:40:52 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 30 May 2023 15:40:52 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 30 May 2023 15:40:52 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 30 May 2023 15:40:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eDp0edPe/nh4hCHfTPJwbAgyHMqTdtwU3g0L0fOn8xzT32WGgTZ6ATDjI1EAs6OLhRLXKpYHv7DH6sUiFbn1+JOCdjxg40d6I0beBp3ftmIgkF6b9FvZNA/5oMiMnoJTeKT8zqPs5gOIakier6fsz0M8RbsZjJXLXmVbAQQMoi/IbmthCFgYEsa8TsWGswjlIIO506n8yS5l6kiPWj2tvET5M8wAktge2DOSqQU+gp2bUVvdFK4+DphDrZQ5fK5DplZ7fHOl95fPNeVhIisf96E7JM4FCj+Amoa6QpMutDckRh3LErADKjO6ORJFDBl6rbPofWlbi6yb6BSQ7Cxn1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C8GtzCcAsTGmkR1QOaygw48xlX6irD5MzDtEP9KHOUI=;
 b=cqns+gL9E+BA2+AaaL5YN4+DrRAJXP4KEmowLUOMig3QhmuppkaGlr1LhSx59Xq+xyAfRguYfxVRKqIf/lSyBL32h9I8jXt7bND7LSo9lEIMYxoQEpajGSfcLf3zMAmRrWvq0WWSoJVi6l0EZ3NTvX0Ydl99WbyhjjX+E6qZzV7HFyfulg12XBtFuaSs8rGRIsmFbIadmb3Ltciz7CGArZXIqCVgexLUj3RHAF6tgPrVrVZjP7C+yZrrL5PDvjDLlqVWCDPhrzRM6aRiFp2nyICEJ8tJ5x5zCwfHlmdb8RGl/4p2RhJw++1jdjWIo9ZiG60THiXIHJ8XurZHqDdmiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5911.namprd11.prod.outlook.com (2603:10b6:303:16b::16)
 by DM6PR11MB4612.namprd11.prod.outlook.com (2603:10b6:5:2a8::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.23; Tue, 30 May
 2023 22:40:50 +0000
Received: from MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::d06:5841:d0e0:68b8]) by MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::d06:5841:d0e0:68b8%4]) with mapi id 15.20.6433.022; Tue, 30 May 2023
 22:40:49 +0000
From: "Singh, Krishneil K" <krishneil.k.singh@intel.com>
To: "Linga, Pavan Kumar" <pavan.kumar.linga@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v6 02/15] idpf: add module
 register and probe functionality
Thread-Index: AQHZjQ1A7clsI1oRLEaDAAqkpVZirq9zdFXw
Date: Tue, 30 May 2023 22:40:49 +0000
Message-ID: <MW4PR11MB59112B44B7277E2B71905093BA4B9@MW4PR11MB5911.namprd11.prod.outlook.com>
References: <20230523002252.26124-1-pavan.kumar.linga@intel.com>
 <20230523002252.26124-3-pavan.kumar.linga@intel.com>
In-Reply-To: <20230523002252.26124-3-pavan.kumar.linga@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5911:EE_|DM6PR11MB4612:EE_
x-ms-office365-filtering-correlation-id: 1f0dc6bb-187d-4d0c-b0b2-08db615eeaee
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qoqDhgntnAIYwHc3bQMuWGOVXrsosHVyLnqQ0+XsIPucLr04l5xaCEfQX/nLEP/Qalw/JY44RI1f9iEdTv6HIRcK1OTe5ayak1PieSamoQyZdw3DEr4LTsijIi8si8wfsnwcv83Xd52LuYmJ1Yh8tWuppBmli1+2XKlsxsCfclPnJIWkPVAU+9LS8S1t7BzK6hK/WCD6Qba3rNJpn4+dDFlztQNB/sVNOnXSwnMoWb0wbD4Ar9GSdHB6jJSOnk/Sfy0pbz0HGbMzmvr5d8VTX/Mb4ABgVhcId6vXafZHerRuMNvH36j1L6YBmwh9NDxl/hSWxJ4QiRUs+Rqop9gWs1BI1+LkBoy9/TPYapgrFr3srHjkGvZ0WjKv++ba17n2o4ODRLl4z2WMFq55Io9gXCH6oQS/x3p8TGeUPomdEBjYwLU7NjZ9Ix5C0GCpjsnKGsPuQPulcvr6w0bHP2xapnhfwlh0KXWxcsjKsWZ/sACaq7m/Gc4Ymr3Zgk8LGHSIsXsaHdkssaQf5X/BApBKbaecHm9RRo58NFi2+MWbCFMOCF4h5UhmhT28usFEl5o8bDaOydiHSAASZvNpWcmI3FJp02tsjHiZ1ATi+XokRA64cB8+8JoEDl9Le4oUbihA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(39860400002)(346002)(396003)(136003)(366004)(451199021)(38100700002)(186003)(53546011)(41300700001)(83380400001)(6506007)(9686003)(26005)(7696005)(478600001)(71200400001)(110136005)(54906003)(66946007)(4326008)(64756008)(66476007)(76116006)(66446008)(55016003)(316002)(82960400001)(122000001)(66556008)(7416002)(52536014)(8936002)(8676002)(33656002)(2906002)(38070700005)(5660300002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?eW0nID/HRbC62NPddSJEVhVaGLiwOChZiYYnxFwHdrdzv+yLn+uNf7/tRpNl?=
 =?us-ascii?Q?d+sIcfVcla7YtNFywSx79s9LPe8RaWZbukeKQVpFCwV1FEKqQOZaBGJlQvpH?=
 =?us-ascii?Q?hjRgl7LyEmyrwrhquC0apDEwdXgDhsOpqL/yJJbcs6VNm7SLBHm7OW/DjXnV?=
 =?us-ascii?Q?3w6eGy6mKgZrIAI3YcwQcFbKDumMZ3waEgIzAYG3i4IYe5AXue1mKB8U/0FY?=
 =?us-ascii?Q?RAFapoq4O3jp4QmsQ+qQM5FyPwpSxnQ4JoBKeic+8yy/OzKo3lUY9Pq1tr5H?=
 =?us-ascii?Q?iRkYN004zyhkRk0lm4dtsR4wdlNPZQBLJTdizhcVpLzks8q0afeVRQmQFJKZ?=
 =?us-ascii?Q?5rOe0m+jtyzmroWqHptEh9OZ4+6dyQ4whDc7jFm8soxnWHMOBRTKD+Ipc6kv?=
 =?us-ascii?Q?Uu0REXLvOV1Xuwv1ufLsHaXPJFsDIMluzXHaO7MgW0Pa7webd0OaZ6io0B0v?=
 =?us-ascii?Q?OL3JhPHX1ZXfNxyjQHSBBJBT1ghbiyDXaJPQ4q7xPzuZWPQFE0838aYPQBML?=
 =?us-ascii?Q?qBoiaLV5j/VZjFCtJF8DnBFpZiHdAAoVYaCggquj7VlCADhH6yEa9L7uCBZ2?=
 =?us-ascii?Q?QvXbvZDMQ7hvScRrMIXW5Fxc86cgJyvon7Kqr53OQfDzbEepzYG+ZS8pPX9s?=
 =?us-ascii?Q?fGHNxujm38Z9DrOf+fDuPxXRY5XQi0+3u3Vy3L9xfR5CWUx+V/Pzs7Sg7FXf?=
 =?us-ascii?Q?UhFvsvsrj2StVPOSyjlRgXDT54f8XD08nRGNHTFYXe2ZI08TVngsO0gjhjAV?=
 =?us-ascii?Q?/FeVEl34xVge2vKj2P4l0Yii+lKchYHxx+DN5CCXtoxo/53Ddf3lEgSwvdnC?=
 =?us-ascii?Q?ofnrR+2bdezy7ZCl4Uj1qycRwdE28xRatC2yFfklcIZQoIYrux7zLarcu1bp?=
 =?us-ascii?Q?bSkuXnWBlUmWslms6zzeJ0hz/pvTNW3FeJKeaq5jDcCjBw9ghLO9IRABRYRq?=
 =?us-ascii?Q?lGx+pnfscPd5lKY+lB+fgrs2UR9FX9PDJ2J2+98S0Kj8qOq/yeKeCQxXDV1s?=
 =?us-ascii?Q?GrvVBzPSzHEjNrxHHGx5e80J1gBhR+Y2LLxPYcfzbseFdjldf8a2TBM+0EIG?=
 =?us-ascii?Q?DOAXjw57DXozxkGqTC0aScCZQlz1ZFwWdfEAekAO2dfW9P6KjuE8RP4sMQ4t?=
 =?us-ascii?Q?prbKLbd3vqig/UetKyk1MIYdVBQ2yBl1zavb78ib1RFYB3lNhcpgjChxDBaC?=
 =?us-ascii?Q?atwuunVu4b0gUXSghBmskbofDbbvW8aXaJnZSfcTnZ4iN2MMhhZuhPlmWW5x?=
 =?us-ascii?Q?aF1x1/WK1zJ83KYHA1VnEwXr52dmfFrK/RCnpDlA4Pl9+UOfuFyGXushcX6L?=
 =?us-ascii?Q?ZZTxVtOtDin+6kCHQTuqGb7W+Hl8TaAPvUle187PDBBpZ8FFpotMb+/dS7eL?=
 =?us-ascii?Q?DCCyBspslDwVqilIn6/rzMs5mKE0Ylih7D8pF5Sktg5t9tox6wzbUDK6fbw3?=
 =?us-ascii?Q?GEEughZK00MB9OqsjwhkZ39XoR3CcNEe4zegSEK9ThHhT7G84CdAEKQ4wqFE?=
 =?us-ascii?Q?ue/roQ6ikv195xWJ9Xla5W/VIjVm9zih25iNJTWY3nxdiAQYDieFo4MXkCMW?=
 =?us-ascii?Q?FEDcteFtN1fR7hxdTLA8KBO9gD5s4M+ieqkh+AsReZbc8G+zo9ouMKUc38R2?=
 =?us-ascii?Q?Zg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f0dc6bb-187d-4d0c-b0b2-08db615eeaee
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 May 2023 22:40:49.8911 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: V92mzzQgA8s1ClIFJtRUlQW+FAKA7S1EyL1yv8skmIC5WtVgL6n578mp+dLPJ/qHC0QBqQh+DRXfcYU2Ww0B0lRu16HXYy9SQOjDPv/Dsnw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4612
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685486454; x=1717022454;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OK+rIKn27mDc4hH2QtGwsmWUx/x1JSu92e9wsO74414=;
 b=V3CiNoHtq0uec2Pyzz0E2e1mGK61nFUPrI3oqi+eXAIW5TjYc4cEcra1
 hDdbipgqmKVOLdJsixknOsZvB6KYbCcLh/7hn9Ok27bHc1cO9I9IK1rOP
 +yWxU7Q7DwCbMDju/0jHYwhiuNDzDjPweNMNfJY/G54wFWhbsF5yT18AI
 cHpLU1xr9ZhaeVcOJ8VdnJxixYcNae8PAz7Xs5c8wdTC7jbyDmU9eXEvH
 0VAx3l2KrjxhhnoQ+wLz+rr7b0qH/5MuFmBCcU5HxRR7eokK/O88hk7V9
 Xwq8x5RW7r3H70debJ1Ukkluv4WJ3mAvpSdxMoHyGifKQd1NdUUPXa/P3
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=V3CiNoHt
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 02/15] idpf: add module
 register and probe functionality
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
Cc: "willemb@google.com" <willemb@google.com>,
 "decot@google.com" <decot@google.com>, "Bhatnagar,
 Shailendra" <shailendra.bhatnagar@intel.com>,
 "leon@kernel.org" <leon@kernel.org>, "mst@redhat.com" <mst@redhat.com>,
 "simon.horman@corigine.com" <simon.horman@corigine.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "stephen@networkplumber.org" <stephen@networkplumber.org>,
 "edumazet@google.com" <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "Burra, Phani
 R" <phani.r.burra@intel.com>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "shannon.nelson@amd.com" <shannon.nelson@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Pavan Kumar Linga
> Sent: Monday, May 22, 2023 5:23 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: willemb@google.com; pabeni@redhat.com; Bhatnagar, Shailendra
> <shailendra.bhatnagar@intel.com>; leon@kernel.org; mst@redhat.com;
> simon.horman@corigine.com; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>; stephen@networkplumber.org;
> edumazet@google.com; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; netdev@vger.kernel.org; kuba@kernel.org;
> Burra, Phani R <phani.r.burra@intel.com>; decot@google.com;
> davem@davemloft.net; shannon.nelson@amd.com
> Subject: [Intel-wired-lan] [PATCH iwl-next v6 02/15] idpf: add module
> register and probe functionality
> 
> From: Phani Burra <phani.r.burra@intel.com>
> 
> Add the required support to register IDPF PCI driver, as well as
> probe and remove call backs. Enable the PCI device and request
> the kernel to reserve the memory resources that will be used by the
> driver. Finally map the BAR0 address space.
> 
> Signed-off-by: Phani Burra <phani.r.burra@intel.com>
> Co-developed-by: Alan Brady <alan.brady@intel.com>
> Signed-off-by: Alan Brady <alan.brady@intel.com>
> Co-developed-by: Madhu Chittim <madhu.chittim@intel.com>
> Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
> Co-developed-by: Shailendra Bhatnagar <shailendra.bhatnagar@intel.com>
> Signed-off-by: Shailendra Bhatnagar <shailendra.bhatnagar@intel.com>
> Co-developed-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Reviewed-by: Willem de Bruijn <willemb@google.com>
> ---
>  drivers/net/ethernet/intel/idpf/Makefile      |   9 ++
>  drivers/net/ethernet/intel/idpf/idpf.h        |  22 +++
>  .../net/ethernet/intel/idpf/idpf_controlq.h   |  14 ++
>  drivers/net/ethernet/intel/idpf/idpf_devids.h |  10 ++
>  drivers/net/ethernet/intel/idpf/idpf_main.c   | 136 ++++++++++++++++++
>  5 files changed, 191 insertions(+)
>  create mode 100644 drivers/net/ethernet/intel/idpf/Makefile
>  create mode 100644 drivers/net/ethernet/intel/idpf/idpf.h
>  create mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq.h
>  create mode 100644 drivers/net/ethernet/intel/idpf/idpf_devids.h
>  create mode 100644 drivers/net/ethernet/intel/idpf/idpf_main.c
> 

Tested-by: Krishneil Singh  <krishneil.k.singh@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
