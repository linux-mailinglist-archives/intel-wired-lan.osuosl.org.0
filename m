Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 85BA07DC9CC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Oct 2023 10:43:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 01C838333F;
	Tue, 31 Oct 2023 09:43:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 01C838333F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698745428;
	bh=rCqciO5ESo+YfZ639eqIDsI+q2niY33Lr2b+IXjNX6g=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PoX9jHSjOp9QZDkS+Ui/Aio5sitQIx3cGcO7fr1tbVWCcdd8sPPel6s2sKomt9/So
	 dLyuC6KEDhJOS7ruTc416q27ZuLgyTQQT+CLs9MHUc2zxBC+rUKGnYIXVVW05RSF6C
	 FXAP7YjreJzB42JDgcw0XwyLBsiuGmAgJ2P9ZI056GbItRNGMh5ZCeAuKeFBuDXJa+
	 qrGG+SuUsGxjNfX4Fx2BXo5tbHFxvW/87y28n0NyePGr0f0ZrjXg25M99Jo0a3uNHg
	 bkLq/xERJMVr310AlyNIDLN40p7aPOwg9deBMVMv03Coi2+X6WMM2Je7s+Yhn4tvRV
	 MPWWv6FDk5GPw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Puk4nlVAe6I4; Tue, 31 Oct 2023 09:43:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C5E42832D9;
	Tue, 31 Oct 2023 09:43:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C5E42832D9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EFFAC1BF976
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Oct 2023 09:43:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D063B61215
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Oct 2023 09:43:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D063B61215
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y1CHd4rsgKIr for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Oct 2023 09:43:41 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DA0EF61212
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Oct 2023 09:43:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DA0EF61212
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="367597164"
X-IronPort-AV: E=Sophos;i="6.03,265,1694761200"; d="scan'208";a="367597164"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2023 02:43:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="851191047"
X-IronPort-AV: E=Sophos;i="6.03,265,1694761200"; d="scan'208";a="851191047"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Oct 2023 02:43:39 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 31 Oct 2023 02:43:38 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 31 Oct 2023 02:43:38 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Tue, 31 Oct 2023 02:43:38 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Tue, 31 Oct 2023 02:43:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Np/OLqo4zO4h350JPMm8DoUzizyBVTaHHFgRfxRDp8a+n20N7nMScTtmWb132XNFsfydpJL/0kcSLwWaEgI8a5JN2PWjZZAYnMG0ekUgco5/mBhSwdxyMlFD/C8CGaCZq6qFSujQxugy7dFhXm3eWwezjPUrsZcYRUY/zx+99IUdrvszmLjVx32xY8MnVAb0YfKuh6TgEbhc0elSCq7esn6U2iYbEi/KcZ3BUV/s+PuTIefEoTCm8d+Kn/Hd4ObcBJ2uobh+2aiySR3Dst9xMHedgdxcqQ3o66vu67SlEUglbQzsJqE2JZuoQkYvRWmEONbVAaHEU7w0kY1JM79tBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z6e9w1HuEUw/SfwPZi8E0fIxk51oKFsmJpIzWRwDExw=;
 b=EY5Xace9uueye5L//Xv7hyQm9USxKcRUpycxOfi5W4R61d+XxfHtfWY99FC9PvWU2Lv2uwdJ93MRcklXhhKtF30D2t5SZ6iMYDxALEC7qFeBi6pSx9Nr2+58c7787COhRbBcsrfFDdLCePszNxEDguFDZd9H+JXdRSwYKEuxnhCKh+8vY5lFvrEwYnT3h0WHR1hYbTmdDtg8hbAh+hX740WqjWImGB5bASBaUPkt7s3f5EpvioUwWrSTO9SUvZAl41O3O35b6t5WnBGVLtePRJxwpTyIfIkLzK7UlSESyc1MmiVWCydiDDkBHualxsQigEo7YmBbXlRQxTbSW4wnlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by PH8PR11MB7117.namprd11.prod.outlook.com (2603:10b6:510:217::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6933.26; Tue, 31 Oct
 2023 09:43:35 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::7911:8ae6:fc73:1097]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::7911:8ae6:fc73:1097%6]) with mapi id 15.20.6907.032; Tue, 31 Oct 2023
 09:42:35 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: ivecera <ivecera@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 6/6] i40e: Initialize hardware
 capabilities at single place
Thread-Index: AQHaA40ROFDNUykjZU+m3eRXp9v+krBjtTXQ
Date: Tue, 31 Oct 2023 09:41:04 +0000
Message-ID: <BL0PR11MB31220520397A2F9389FBB2EEBDA0A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231020193746.2274379-1-ivecera@redhat.com>
 <20231020193746.2274379-6-ivecera@redhat.com>
In-Reply-To: <20231020193746.2274379-6-ivecera@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|PH8PR11MB7117:EE_
x-ms-office365-filtering-correlation-id: df274748-99f4-4295-78d3-08dbd9f58008
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: F2/DE6W9EofBfNDDBq7hOaCbooNMJ4a8Z7JQ55Cq5GboD0JmuO2wsLLD3snt2904QHtTTthKeXZ1LD7d0N3RC5cGnAP3XZ/WB3CSSEOaa3cY98xRhRBbBDCwgVHBR7oF34R2T3STpNy8gYB6+abgs+kX0+Kq4V34Bfj0U8Al9SsLDIwOFQKezFnSHz4qoskXR65/d1w8GoSAC/mCGXD/j41DyoDNYbwSZMbSGPybnodkWISLuXFLbwnph2LLjuQOys+81VhogUJbtoGhnfM2QO4wRIIUYpGZC2Uzby0gWFxyvSgtOS7OhfAXc8i1cAWg3BOBi7rmeVKhqbdk2r5zKD2BX6c/NC/i/jGJou9u4uZHqM9w6s7MxV2Ccm5h1JGqujfBbdC2Xo1S3MTOGhYP+FEidzbqIHQBp65DtA0oHaha5NeBPvc4yP3/ZBg05BgUNkPEYVkQNxSWwsm/FChxqkh2RL5MhWDSlqPstGGwwNwSciH6c+NEQcuK8iXhf7KrSVw2kOJWQ9F7D6qhB9dqY4JqNIpUOq/me/z+seMMCyKLUJTEKJSAAfdrrU7qcRKPKnu1rye5pFmwMownE9wEnLXHbv9KMXOtPKniKTeqoxzLKFAOxNDP5IvrZvsHSAwK
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(376002)(396003)(346002)(366004)(230922051799003)(64100799003)(186009)(1800799009)(451199024)(55016003)(53546011)(6666004)(71200400001)(9686003)(478600001)(7696005)(83380400001)(6506007)(41300700001)(64756008)(33656002)(86362001)(38100700002)(122000001)(82960400001)(66946007)(66556008)(66476007)(66446008)(5660300002)(54906003)(26005)(2906002)(110136005)(76116006)(52536014)(38070700009)(316002)(8676002)(4326008)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?B9yI3DStKn8wr1+KljjSHJ89n+9xi0GvnSj5xxsnbzUFaUAeJ1pd7E1f+77B?=
 =?us-ascii?Q?3f5HW+OJ4aAIKaNYatMwDwxcIt06leEXhe7jbIch6tDEeST7EyglGEuWaqMY?=
 =?us-ascii?Q?AmImTb68WR6VDB+0ccIc7AGeA/ypdM0I72w+dmgMwR6yV+As9Zk+OsoSZiwo?=
 =?us-ascii?Q?UZl1LClb5ORnOJuabfMw1pRWaKCiIp+UE6NSsIo2zpWHaATGzduRgRYFCuBC?=
 =?us-ascii?Q?wb5cyHhk7uHcPL+kqH2NPAsAEyjyfXAB9woJFhScLRgesWvrgLrdtb35JOm1?=
 =?us-ascii?Q?SzcZ1Y4VlUkLOaYF8k7t7GkZJn/QRhMvyJLjYDot2ssgBTZDvoLUQ9sJysbt?=
 =?us-ascii?Q?YAPvjmWFwX8XXYNMUTIINoFRLHwb1iFMfT7O4UBNpM3w3IrGygOe0NXdsrnr?=
 =?us-ascii?Q?EOx6HtWs6q9kFp0iQcEvvp0hzyKYVt8dYBsyqKVcFlyXa7M/SgjPp/HRcIJ2?=
 =?us-ascii?Q?jtPbJrz1PD9xcQWT1DYzg7bqT6vH7OI/N7WpmC9od/Fzv5k8HjHnMFhqhJlv?=
 =?us-ascii?Q?k+7ryyV19XSyv5XU3e+To1bnl+qD9vTpouBDPJetvgQ8DQNyTFJ37rp/vxP5?=
 =?us-ascii?Q?lJftgvCgjMnpRmwZ/z5zYOHz3O9ayKXIwIhGwROzHWfVZdctxVElYfBsLdpA?=
 =?us-ascii?Q?wNQhfB/j79XMxM1VzGh0yOlw9l/meYdUiErULrcd3Ehp4KbU9aL95I05SSVt?=
 =?us-ascii?Q?Lx2ABT88Nn/CMebOF4YwUZouPhl6A2GH+3N71U4b4FDRm4zcJKFK5qDyaSHE?=
 =?us-ascii?Q?1Se+7rcisayEo/juEBlFAT9KAaA3QOwUkXVHO+7M4KS5bguLjMFQ4Q6hA7ZB?=
 =?us-ascii?Q?dEUhe/tlvNWrs3rkFpNqKamT6wBeEq89/vKvDnACnTWdc1k9ZzW05s3KHCa8?=
 =?us-ascii?Q?A8OH13N25CDbURwCjWNnTXsdTJSTsM5QQOQygXPLUuOBcKnmxwhnKS9V/ixq?=
 =?us-ascii?Q?nftyTZiHHPi0xvrnV0n7knFa/LLwy0qrbchSgWikMfvvR68sYeKctlH0ZVlx?=
 =?us-ascii?Q?GxZ6dnp0dIeaZqVWTeoG34Y9HVAVaiOQ0WmOCY/J1kLWktrlbYFl60LwmB/9?=
 =?us-ascii?Q?Y1/ymjTdbHDSWmnJRil0+C+hBJuv+gco0KIVQ04Q5UdjrJQe5bxzDFxWphVm?=
 =?us-ascii?Q?NTIF+pp5TpBp4nPb8wKgWYP8K24MowYQGrjMi7K8VXdG7aM3YUpIDmbz0HhI?=
 =?us-ascii?Q?g8lwlkeOkY2gh+8JgmKNKxLBgZsQb/V01dgzNnxAijFbEOC7/ck4vuxLS4Jd?=
 =?us-ascii?Q?wDXQUC4vs7UoVm7eW1Wfyp9MuzKj6ToBk4CAmCaH9qGGF5VaHCx6Yain9x8k?=
 =?us-ascii?Q?xsagZBvlZtOnsMuILzutlS8IIcQ+kcjxNt4nnxcEWRqafTavGOyU+usQDXk7?=
 =?us-ascii?Q?PWSDyx5GgA/KqRacwYRwsExQqBOF9MC/KkJIGcno7yUuqIO2tyJUIByZ6Wf5?=
 =?us-ascii?Q?UDmX9LdLv+iD9X1CLSjeFsbcWrPIhGlbDb8JEP3emysZVFaPQ28FKGw9nTHT?=
 =?us-ascii?Q?/gxqEr3lhhKFwZU7bB9TwncNgkl4Iao3MeNB1IKuyHUhOVoxw1IKor6xigce?=
 =?us-ascii?Q?hVgOFZB3WBl7PlsfA+enhCbZ9nkhKKYOZt4CUBTmG6BWCkDFSvD/K0TutLER?=
 =?us-ascii?Q?6w=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: df274748-99f4-4295-78d3-08dbd9f58008
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Oct 2023 09:41:04.0759 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aYmn7sfhQ3zY4buhHFoPrytiY+eeM23Ut7sL0T/G9IkdV9v0yJFQCS6gPic/vygvkDeSk71ew4WFHkUXlciaj5n5N38ThUmoIdPuQuwdA0POMAV9J1YODXmZ3XpxYEJN
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7117
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698745421; x=1730281421;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=haaeoGk6yksPsBvGRRzKPtDFzjmqVN7OWs2zIGjmiQU=;
 b=Zf+iTupQVbbqIp22s4wmZ03Nv4MwrFuBIuyqJ4e1Y/ZwpnpGPOJCwnql
 bseDVfH3tg8a9ks7Se47AY/a5QPhSzplwcHZgN7RlZsO8hjbQpzvaCXat
 PvkUY4bBi8kNHnwRSI3wIipWnaIn4z0qdw2oxHM4aU0RGQpDiCGQCQyy9
 pFXqvpyeFADITUyabu0tRM/IH4pUy+xZGOlhYx7gGh/Clr6sWl/9LfXZ0
 vz4WJQ5vyBbdr6v3/HxUXMUjDm34VeWZtMV5yMrSgTjmOqigj8oO50LaE
 IxWrE2tsHFzXVldwUXAfnhVbZIbu+0KnXp6qNMJsjU+sn120vaZUa/0zy
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Zf+iTupQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 6/6] i40e: Initialize
 hardware capabilities at single place
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
Cc: "dacampbe@redhat.com" <dacampbe@redhat.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, open list <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Ivan Vecera
> Sent: Saturday, October 21, 2023 1:08 AM
> To: netdev@vger.kernel.org
> Cc: Eric Dumazet <edumazet@google.com>; dacampbe@redhat.com; Brandeburg, Jesse <jesse.brandeburg@intel.com>; open list <linux-kernel@vger.kernel.org>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; moderated list:INTEL ETHERNET DRIVERS <intel-wired-lan@lists.osuosl.org>; Keller, Jacob E <jacob.e.keller@intel.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; David S. Miller <davem@davemloft.net>
> Subject: [Intel-wired-lan] [PATCH iwl-next 6/6] i40e: Initialize hardware capabilities at single place
>
> Some i40e_hw.caps bits are set in i40e_set_hw_caps(), some of them
> in i40e_init_adminq() and the rest of them in i40e_sw_init().
> Consolidate the initialization to single proper place i40e_set_hw_caps().
>
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_adminq.c | 66 ++++++++++++++-----
>  drivers/net/ethernet/intel/i40e/i40e_debug.h  |  1 +
>  drivers/net/ethernet/intel/i40e/i40e_main.c   | 55 +---------------
>  .../net/ethernet/intel/i40e/i40e_register.h   |  1 +
>  4 files changed, 51 insertions(+), 72 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
