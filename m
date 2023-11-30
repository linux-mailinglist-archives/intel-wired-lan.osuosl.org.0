Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 18E2C7FE8A7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Nov 2023 06:23:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AD6D361B39;
	Thu, 30 Nov 2023 05:23:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AD6D361B39
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701321822;
	bh=vMmaywWRiXiEiAdoGLb46qKpGeD1+06kASt0dwRQdOA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Z9YZO7C2PTi/dw3P2aA8fgGePho9FT4wZSxEoXRtniz++PS7ppkG4AaKjf4iMk7rP
	 bKWgGI/9gpI62NSPI2Dr62RAlbIx0HUBtQYB7Gx/CWtMJePeW9qzeesh5GOVPtU+/S
	 xEYYwpF02fxRHxabbsEF2XrD93X6RtdYbn72SbhEU2wnmCoj5Ng5N7yyqhEbGhEeGn
	 73G9cM6Xmt1Vm0zYMjmEWmeoQ3qApEipjsSylL4hJzrHXZWn0dd+7wAYbmlCCAHFZ5
	 eC6jsJJTL/ZvjHUGIU64NbMnuI+towbeOPekEc0B9uR071vaYFCNHQuhsNPuPG09xH
	 5IOVUyXPc4K3Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S0KwK8W0xM0D; Thu, 30 Nov 2023 05:23:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 50C0A61B25;
	Thu, 30 Nov 2023 05:23:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 50C0A61B25
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 94D971BF84C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Nov 2023 05:23:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 72DB582205
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Nov 2023 05:23:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 72DB582205
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bUpZPnh7-CqN for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Nov 2023 05:23:22 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 886568223D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Nov 2023 05:23:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 886568223D
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="6487604"
X-IronPort-AV: E=Sophos;i="6.04,237,1695711600"; 
   d="scan'208";a="6487604"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2023 21:23:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="887117137"
X-IronPort-AV: E=Sophos;i="6.04,237,1695711600"; d="scan'208";a="887117137"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Nov 2023 21:23:16 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 29 Nov 2023 21:23:15 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 29 Nov 2023 21:23:15 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 29 Nov 2023 21:23:15 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 29 Nov 2023 21:23:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZyL8QyL2SederYtePi3xjHf3l7CwiHhnfMvK7y7LqAemdAXKCpOFDOFQYuQLzjyn25L2rhoQMZf3QJym3QfIBhph5rDZkYFwCqhNXbdb+dPlS4/7LIOoyql93oVNz/KyykfiuD3tpdlt7AdkUo6GWTsir6/lLni6mRF1IFidln/cetnVR12FfGatl8MHG2J1u/3u1v56I9gYWCZCYmUVsD6t8B8b3IqCZtbslI5NZWG1TLtXvHV6qvqKRRw5nj96FhtLc+pGHJ+SIX/TE84i6IURZnZIjRf85EJdYhAiFfKpnJGnLQ68GR9CoDRChM3Gn7PBGjJjzYwN07D1h7RE4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PtAFW8D7nHxfivLCi4RG0/F/iL9ugxKE5cfiCbkQfrs=;
 b=V+2rdtoqcLsOCyIbLVVTiYTPzReFTDD9wKnJuYdAxdeZXV9hy/vVBaz02Cp30M52n5aJ4c0igFklCFPBae64TNJ438AcvbGxGmp2CGDChH72GEc3MA7q+jonl/+J075ypZ/hTnpViM8+aUDDyEsQbswb5q01e22J5et3zPxsQS3vJue9sT4Im6Kdc2mSxamiyt4LveAp+xGSrz/hWSwpw5z9QLyykfjrmrkj2f9a3RX+0aezF+323inqtYLU9YgjVRrujBnnXi0w/+0nQ2JFe9x0KqdIa3GXcT+QlDnILeaiwRuHwBy2WL+fgJjj4ECtHuwvjCirstVB+8GDnHc2XA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by DS7PR11MB6198.namprd11.prod.outlook.com (2603:10b6:8:9a::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.22; Thu, 30 Nov
 2023 05:23:12 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f%4]) with mapi id 15.20.7046.023; Thu, 30 Nov 2023
 05:23:12 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: ivecera <ivecera@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v5 4/5] i40e: Fix broken support for
 floating VEBs
Thread-Index: AQHaHueb3TthdEMi20K/mTgaHAM96rCSWP4A
Date: Thu, 30 Nov 2023 05:23:12 +0000
Message-ID: <BL0PR11MB312217E7D7C7AF4B57DE691CBD82A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231124150343.81520-1-ivecera@redhat.com>
 <20231124150343.81520-5-ivecera@redhat.com>
In-Reply-To: <20231124150343.81520-5-ivecera@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|DS7PR11MB6198:EE_
x-ms-office365-filtering-correlation-id: 0ee2a90e-b25c-44f2-b806-08dbf16472ae
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NBE16TDBTMl/k9+O6h4rpHwEvDzbUurk8Q+hqGJB4XhL6qTDilMNBsrDvAuXkL2+XPPEmjSEiuoq4Y5WYr3jzKP0tguiISwUCHpGFcxGWgSTdlgJqMyxRsUMvzNGbju0Aa7S0iszy+q9oaYu6aUeXTblr1yxpMvAWfwcfWnkiE/JDQiwFzysCzEJZMt0CVddv0FBLOrCmPhODDTxwjFw0TEvZ2blbWdGR0vEEIBviyvzr9Ejj8qQDoPhBOfAYa11loJ/ue8dwEIOXVqXwWxUUy03qQmkA8oJ1NiUsHbH60tzdF8qt6RfLQnZpTCvXfFZlV0t0AeHHmnFVGSKFJNld/q7QwXQEQaDKtCvQJc402Gve9o8QIW+UlFjIeHN7Di7Gt0ubuV2WYwf7OiZptoCFOEZsBN3h36kKujbCU2eq6Kpciv+ju+a1N7g2Ga/q/AMz3f9vJxTMp9MZ1zPlR5G2mb33VZwzRi8BACNashz9Jx+ylix+e2PtGs0w82+5ZZXC7fXGsu5ZTJ1cT0S6zBLjf0149Ko+GM40Sb3yn5AQ4LCCcVct34iA2Bk36Ol0yQm31ymg1VHeXoDraXerUeZHlPB8wyrlcFFR4Ev7BZj5kdu3kxSRb5xgEc35pRlF7whb/IrYwGHtyEdoiLuoSTKB9gVi/20zBEpgjve1rucUBR5UOX0EmtOnj5nqKd47oaNmmNlpUgiPoYGbuQ2Z/EtEQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(136003)(39860400002)(396003)(366004)(376002)(230173577357003)(230922051799003)(230273577357003)(64100799003)(186009)(1800799012)(451199024)(478600001)(71200400001)(9686003)(26005)(53546011)(2906002)(5660300002)(41300700001)(83380400001)(7696005)(110136005)(8676002)(8936002)(66946007)(52536014)(66446008)(66476007)(66556008)(6506007)(76116006)(54906003)(316002)(64756008)(4326008)(82960400001)(122000001)(86362001)(33656002)(38100700002)(202311291699003)(38070700009)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?gV8O6vHmHS2nahERGounrTS0imQV4JnkRCOYYp7LcRpm+fX/6JeyXVt2Y0Vn?=
 =?us-ascii?Q?pc2o/CzGJAVGXazZmag95DGhxn2MpQnQ9Ztd7oiaan1552FLwKoVtnmpua5+?=
 =?us-ascii?Q?RGsTOJdtm1f/s04SRY4ntYtX/QW+VIUsIQN0JhoECt3H6lzzXbD98Dz1HT5N?=
 =?us-ascii?Q?748P86KiV76g8FfFi6dFRIFxWy95YdAobGBTNHl2thr1Pc5FCASGZMp8ltwo?=
 =?us-ascii?Q?CR7xqrIay2sdrsocU9aMpvdPjJlgCW0amVk1Vl3Yitq16aBd73q8tAA65c+b?=
 =?us-ascii?Q?3JyJ0lO+T7IIuk6eMb+OwSJz6GzsnvsJLUNLan9mUXCkLnkKeLHNQlFpPeEd?=
 =?us-ascii?Q?Uo3/moaW9hAB3XIbNCTmQITBpjghKDTUr1MS66dN9GDiIU7+uSqLqvZnENVO?=
 =?us-ascii?Q?+O1efT6pIjfRxe1rNGHADmD/l4wLbDMW9RtQy3pu2z8AdDgqOCg8hSOuyeVl?=
 =?us-ascii?Q?2Lgvr3Sr3sYuVRCjDV3+HisdSkhxjPXapyEe2M8u4dDRm4rEFEcShddSp9Ag?=
 =?us-ascii?Q?YZayibyAqAV4RhF/dmPT47r9WUCxcf8Tmh9V6rqOQpn33GOzj9co/DZVAU9o?=
 =?us-ascii?Q?sM8cgOkodrUWykmfJjME3WI4u8VrqZ3i6Y0xl1D6qgtAKfK3HUXSjoqIpR20?=
 =?us-ascii?Q?SP8WHh/9Bmk0Q//l6F79lYGo8DbZAh7UCkz9BHbrjptJm/H/stg0LqXBtcqF?=
 =?us-ascii?Q?2i2lVRVC+7RnYiCneHzJNqok/zNMI0IwC7TDyEpMj/y7Qo1uYhQtRLzC5WBA?=
 =?us-ascii?Q?DfMZhLp+u4xPUp2jSidG9xjr7M2kjVH1RtUYjNnlh8JHZiIvP35NLDCazvAx?=
 =?us-ascii?Q?cUwXhk/pBPcmuyfwI90/7ALlyjblUcmxSI7XDtR5N8/oF2TSc0/4qhQuZxHs?=
 =?us-ascii?Q?1NjcbNv9rfZARRvb+ZT2Tlf0aQXHBXNFXfne7NPoCpdxNPyZfxb6f3kx3Fwy?=
 =?us-ascii?Q?tZQHszOx3xfyL6fPW2gW3jJa2pE7Z0DnXzd4NvzZ8VW8Q1ciBkKfEfs9Pzvr?=
 =?us-ascii?Q?IUXIJuJeiEzIdzfCwTPSOG7l/q3GFoATAv3EKXOOoHvpzGB/v3CBZHVnfEyz?=
 =?us-ascii?Q?JzA81gYg5A3T5jX6TVvc5qjmijAQEIgMThw5k1LHSg82ejgFWmvjnQ21pesY?=
 =?us-ascii?Q?YRd9RwUH6oSXLWmywfb9OiSTrKxs3cf+y88QFwQGRtO/3az2IJldtNX27mTQ?=
 =?us-ascii?Q?37jN2OTZJTKjfaYgfIAXL2rcemHKsebRbaGGQW5ZEmkVokKy5CkCzqIY50VX?=
 =?us-ascii?Q?qfo3uMP/lY33GQRFWP0mxBzAHDm9AkME5n0pr3BC1Bla25eTTBqh4wD1kepu?=
 =?us-ascii?Q?y7HV2oPrMlGgNULeK+li8FQljnFTMjr/V/mFhYFWzGDc2QlPhZX+A+mR95QR?=
 =?us-ascii?Q?cOTks6Im6oDaYowmXSscdA0PNdNkYrqkFTNa+26W+85JvKBS77qjxYCSqdg5?=
 =?us-ascii?Q?mSJuJWdbCbL3drC0nVJeSlMbsxQam8f4esTJ2f3lZRt5JfDOrx3CvZbt0APl?=
 =?us-ascii?Q?Cm3tIQVoMiEKke/tWgOq8WG5NNwodorkAlrjxM3CBIO3aJWhNXaX/xBKd0Qq?=
 =?us-ascii?Q?+ZIUE3C0appWk9P+NHxSEYTDFdz94ymc79Um2+93dsMpuhMML1NDr02IcCnB?=
 =?us-ascii?Q?7g=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ee2a90e-b25c-44f2-b806-08dbf16472ae
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Nov 2023 05:23:12.5905 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AQAsJXMLJNqxxSjHKbOjAMvbK3t83dbPIv0R70lRdE+3xUEseEOKARQEYO3NQNVTPi9ytnU/GuEUkiC/SnPyaq+/VbdD92ZwAF0R6nUaS+tRYe9+86SHcGpLqKI+PiG8
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6198
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701321802; x=1732857802;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=orAsc8j3WMdrYQ5TQpDdy3PlerkTthLaNSmi4ot90d0=;
 b=EDZMKrED6mm6KLERUL5ImjSo6tT2dwUdlPYF+7XZZn9mX0I0zWIwDslS
 7WtYttO8izAdRglaubYicLmcfuDTS5q7frxuBY1Zo7ZwnEOMQrvkWkf8k
 zbx+9qIwbexOZpTahc8yMiI1f8jx7zMw5CEDejkIUyOUmV1jkJNep0WW0
 I79BfMCiPpdhV8Xjrf61AOKmzacYCs0pUca0jRxkM1bGWJSVceWv75FS0
 afh6r5tYkI0Zi4vD7JfYQNROHJv6q8Dfps4Ifj9LfE5lfee/QJjhT+jwF
 ltKrm7IoFT/t262neXu+XJy/BU327oxjNlMpLSw0z1vrgR1OGLDx5eGtD
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EDZMKrED
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v5 4/5] i40e: Fix broken support for
 floating VEBs
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
Cc: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Ivan Vecera
> Sent: Friday, November 24, 2023 8:34 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Drewek, Wojciech <wojciech.drewek@intel.com>; netdev@vger.kernel.org; Brandeburg, Jesse <jesse.brandeburg@intel.com>; linux-kernel@vger.kernel.org; Eric Dumazet <edumazet@google.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Simon Horman <horms@kernel.org>; Keller, Jacob E <jacob.e.keller@intel.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; David S . Miller <davem@davemloft.net>
> Subject: [Intel-wired-lan] [PATCH v5 4/5] i40e: Fix broken support for floating VEBs
>
> Although the i40e supports so-called floating VEB (VEB without
> an uplink connection to external network), this support is
> broken. This functionality is currently unused (except debugfs)
> but it will be used by subsequent series for switchdev mode
> slow-path. Fix this by following:
>
> 1) Handle correctly floating VEB (VEB with uplink_seid == 0)
>    in i40e_reconstitute_veb() and look for owner VSI and
>    create it only for non-floating VEBs and also set bridge
>    mode only for such VEBs as the floating ones are using
>    always VEB mode.
> 2) Handle correctly floating VEB in i40e_veb_release() and
>    disallow its release when there are some VSIs. This is
>    different from regular VEB that have owner VSI that is
>    connected to VEB's uplink after VEB deletion by FW.
> 3) Fix i40e_add_veb() to handle 'vsi' that is NULL for floating
>    VEBs. For floating VEB use 0 for downlink SEID and 'true'
>    for 'default_port' parameters as per datasheet.
> 4) Fix 'add relay' command in i40e_dbg_command_write() to allow
>    to create floating VEB by 'add relay 0 0' or 'add relay'
>
> Tested using debugfs:
> 1) Initial state
> [root@host net-next]# echo dump switch > $CMD
> [root@host net-next]# dmesg -c
> [  173.701286] i40e 0000:02:00.0: header: 3 reported 3 total
> [  173.706701] i40e 0000:02:00.0: type=19 seid=392 uplink=160 downlink=16
> [  173.713241] i40e 0000:02:00.0: type=17 seid=160 uplink=2 downlink=0
> [  173.719507] i40e 0000:02:00.0: type=19 seid=390 uplink=160 downlink=16
>
> 2) Add floating VEB
> [root@host net-next]# CMD="/sys/kernel/debug/i40e/0000:02:00.0/command"
> [root@host net-next]# echo add relay > $CMD
> [root@host net-next]# dmesg -c
> [  245.551720] i40e 0000:02:00.0: added relay 162
> [root@host net-next]# echo dump switch > $CMD
> [root@host net-next]# dmesg -c
> [  276.984371] i40e 0000:02:00.0: header: 4 reported 4 total
> [  276.989779] i40e 0000:02:00.0: type=19 seid=392 uplink=160 downlink=16
> [  276.996302] i40e 0000:02:00.0: type=17 seid=160 uplink=2 downlink=0
> [  277.002569] i40e 0000:02:00.0: type=19 seid=390 uplink=160 downlink=16
> [  277.009091] i40e 0000:02:00.0: type=17 seid=162 uplink=0 downlink=0
>
> 3) Add VMDQ2 VSI to this new VEB
> [root@host net-next]# echo add vsi 162 > $CMD
> [root@host net-next]# dmesg -c
> [  332.314030] i40e 0000:02:00.0: added VSI 394 to relay 162
> [  332.337486] enp2s0f0np0v0: NIC Link is Up, 40 Gbps Full Duplex, Flow Control: None
> [root@host net-next]# echo dump switch > $CMD
> [root@host net-next]# dmesg -c
> [  387.284490] i40e 0000:02:00.0: header: 5 reported 5 total
> [  387.289904] i40e 0000:02:00.0: type=19 seid=394 uplink=162 downlink=16
> [  387.296446] i40e 0000:02:00.0: type=17 seid=162 uplink=0 downlink=0
> [  387.302708] i40e 0000:02:00.0: type=19 seid=392 uplink=160 downlink=16
> [  387.309234] i40e 0000:02:00.0: type=17 seid=160 uplink=2 downlink=0
> [  387.315500] i40e 0000:02:00.0: type=19 seid=390 uplink=160 downlink=16
>
> 4) Try to delete the VEB
> [root@host net-next]# echo del relay 162 > $CMD
> [root@host net-next]# dmesg -c
> [  428.749297] i40e 0000:02:00.0: deleting relay 162
> [  428.754011] i40e 0000:02:00.0: can't remove VEB 162 with 1 VSIs left
>
> 5) Do PF reset and check switch status after rebuild
> [root@host net-next]# echo pfr > $CMD
> [root@host net-next]# echo dump switch > $CMD
> [root@host net-next]# dmesg -c
> [  738.056172] i40e 0000:02:00.0: header: 5 reported 5 total
> [  738.061577] i40e 0000:02:00.0: type=19 seid=394 uplink=162 downlink=16
> [  738.068104] i40e 0000:02:00.0: type=17 seid=162 uplink=0 downlink=0
> [  738.074367] i40e 0000:02:00.0: type=19 seid=392 uplink=160 downlink=16
> [  738.080892] i40e 0000:02:00.0: type=17 seid=160 uplink=2 downlink=0
> [  738.087160] i40e 0000:02:00.0: type=19 seid=390 uplink=160 downlink=16
>
> 6) Delete VSI and delete VEB
> [root@host net-next]# echo del vsi 394 > $CMD
> [root@host net-next]# echo del relay 162 > $CMD
> [root@host net-next]# echo dump switch > $CMD
> [root@host net-next]# dmesg -c
> [ 1233.081126] i40e 0000:02:00.0: deleting VSI 394
> [ 1239.345139] i40e 0000:02:00.0: deleting relay 162
> [ 1244.886920] i40e 0000:02:00.0: header: 3 reported 3 total
> [ 1244.892328] i40e 0000:02:00.0: type=19 seid=392 uplink=160 downlink=16
> [ 1244.898853] i40e 0000:02:00.0: type=17 seid=160 uplink=2 downlink=0
> [ 1244.905119] i40e 0000:02:00.0: type=19 seid=390 uplink=160 downlink=16
>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> ---
>  .../net/ethernet/intel/i40e/i40e_debugfs.c    | 29 ++++---
>  drivers/net/ethernet/intel/i40e/i40e_main.c   | 87 ++++++++++---------
>  2 files changed, 67 insertions(+), 49 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
