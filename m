Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CADF358FC5
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Apr 2021 00:25:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B1B2F40E7D;
	Thu,  8 Apr 2021 22:25:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0Q8nuTgSirUu; Thu,  8 Apr 2021 22:25:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BE4DC40E79;
	Thu,  8 Apr 2021 22:25:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BA25A1BF859
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Apr 2021 22:25:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A503960E15
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Apr 2021 22:25:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id niqSYLjXqwfQ for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Apr 2021 22:25:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 37608607C7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Apr 2021 22:25:15 +0000 (UTC)
IronPort-SDR: XpmLDtWeUxf4E5Lx3wFeEwP2CsbRvd/r4dL+vZdkAV9UVJuSecPHC+izgi+BYj2J0etpJdMQd1
 Y3pBjyjbTQsg==
X-IronPort-AV: E=McAfee;i="6000,8403,9948"; a="181178188"
X-IronPort-AV: E=Sophos;i="5.82,207,1613462400"; d="scan'208";a="181178188"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2021 15:25:14 -0700
IronPort-SDR: dFR9cuhLJN+5gvYU4MEMD8HHnRtK/9nqSoXdILI9/Q9/YfXgQiH4HO2O+14A/d6Sz8JckqJiY9
 EBDcBvaIriWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,207,1613462400"; d="scan'208";a="415979428"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 08 Apr 2021 15:25:14 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 8 Apr 2021 15:25:13 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 8 Apr 2021 15:25:13 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Thu, 8 Apr 2021 15:25:13 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Thu, 8 Apr 2021 15:25:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B0BaCpl09D1t4BivyXUrupSmbmqqrF4hBB+yc6FiTNhU7G5jfmz2mOGtbrgZVeUsw5m5PHpv/q5F1Rvm8isrbGrw0GXQW2RiL6DPAv1FtzEX4Ac5/p8KxQuP9zERM2m2FBu8LRgcmPBALP5zQJL2tlYL4kFZ8MWZ4p3AL43OhJXHhuDqYmfDoEkTAYv/U++64k14CeWC1JVqB48qyVRgjrRTsZOamJBmSxR9OBHQ3qJFEnpc27bClbXrxXPdHDj7NKNjILkhQZvOeZEi6jFRywCZbnlDaGzmY9t46JgIvKOTVgWQRSB82MNkoUsBrPtSvOofOIlCbNniYbwVuTSxKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sh6prXEL5Ruu2JvVPgtyFZyrCAZjWJ5fTAuAahajEbs=;
 b=SOhHr1CH1XzVr7q8NyD+shVEwLz/7RcbdPFgCzcrBCYQqRo+OISPI4JXsT2ydR3Ynr4ynY9WHYLq4GAVQ7zujhuB7vj/urjv1M3K+lycfZ/m43u0UR2J6phE6KUhjvibNUF/WnqEaPT1oYJth10lqMGSqn3RmVjqoV9/53hzbgA45GyeJhwC2veoBruI9EDtJeRXcpoUS1CeiLxNu4i/hwQ5CUY0r/wAn5looJgghPlNorXlZrFKhfu0AX5n4mxKO3nSek6bW1PHFHdbVUagWgFbYr2Ivr0V8fWlhghF3YA14VTW/XIIGRD0qLy9ooLDF8+kNC7j9dTyX7duDAdtZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sh6prXEL5Ruu2JvVPgtyFZyrCAZjWJ5fTAuAahajEbs=;
 b=D3HYfrhYxpxrYq3XTsKyme4ZDFITF6DMARYoEpt3Xxzm6q8Y0hdshO0FMFaQw9GQGwOJx3xwmh5svWYaI97UaELpc8++NPuEWf+Ty/LfcPuzX+sf371Ug67EugeEAitA/xFcPxY5oZPV2sWwhmrR4S6Yoiy9KFkz5KU8v5EBbpY=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MWHPR1101MB2157.namprd11.prod.outlook.com (2603:10b6:301:51::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4020.20; Thu, 8 Apr
 2021 22:24:57 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366%3]) with mapi id 15.20.4020.016; Thu, 8 Apr 2021
 22:24:57 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S58 09/13] ice: Set vsi->vf_id as
 ICE_INVAL_VFID for non VF VSI types
Thread-Index: AQHXJnS6iMyl7jOCt0mtnVk4fzkNyKqrPvyA
Date: Thu, 8 Apr 2021 22:24:57 +0000
Message-ID: <CO1PR11MB51056ECA37855188F50A6A08FA749@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210331211708.55205-1-anthony.l.nguyen@intel.com>
 <20210331211708.55205-9-anthony.l.nguyen@intel.com>
In-Reply-To: <20210331211708.55205-9-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.214]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1f250cdd-6c1e-4bd2-6d5e-08d8fadd245a
x-ms-traffictypediagnostic: MWHPR1101MB2157:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR1101MB2157F9EFB780E5755154CD95FA749@MWHPR1101MB2157.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KJ9PQYthGXh/n/iu6BKVg2R8kbmMCaBZc17HaEAiT+yPfMr7lxDhH/xjDFRW1PRLoUXX5Dw65bG3cWW5ozLCBDsxo+gy0J2QPOLV8vRKAtepX5KfZ+E1xwzSG/racIQ9TirYUbOuafBtV7ayTk8kTHEn/BXMLbPfGUX5V+oekWYPIbDHwuHLKhUs8NXtDmbOvKX+boYf8GHHFTXLJqaJgU7VKTVuENJnZ9BcgQYXRv5yauPXnX19tgP3+uQdNasuzzseES4Xf/4nNBaIcRZuQrraD2y9e51DPgkLCs7CAY3YQnVYnPGUjnXOyCxoIOmFQiXvOtXstptQoHL1lgmtrkc2XDDzAu+Pukx2tBi7OqPv6f/m7SpNE8mxHV7HkkaxZNSaZZJQZJHdLWa0ZyrbERQ0FYXu5mbBRCBi0KSdRAP/gHEKagbgSEvi/XBDm+EtjsIn5R9snrHnUwzhB68k/XykM9V3suARhMmqUbSxqNyOXVGOKBaMU7nPYqRW+kdO0Tu5nuoj0vc5OJ0JGRdmvWKb7ML6lWBWamjMwQr+Kc9t4j0s2Td7+hINEiE0kp6TnGWxDt0GJnh09M1vbrQswKqVat0kt84REBg32IZ2TNgVNPtiBLHhH5+Ta9w4ANwd7Iv9gTrsiSeC5gqa0vL5AAf/C4JcciU4tpAOhp/vCfE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(396003)(376002)(366004)(39860400002)(346002)(316002)(64756008)(8676002)(66446008)(66476007)(478600001)(66556008)(66946007)(76116006)(71200400001)(110136005)(6506007)(33656002)(53546011)(7696005)(2906002)(9686003)(26005)(186003)(55016002)(5660300002)(86362001)(52536014)(4744005)(83380400001)(38100700001)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?VeXNcQmcqHDr3hGFridhwaH3LaG6RPXsb4ITR4lMt3eJFgf7s4VXmkVfVevr?=
 =?us-ascii?Q?w5TtMYgWTy5wysGf3iAOl5OAbSZlrFaprqWZV5yRmLTY6ExfefV8EjJm5FZT?=
 =?us-ascii?Q?VwBzhZ81kxeK1L55zk2zsjNc8Flu58jVjLxSt7duKDDLcsr/i8wGteKOKudl?=
 =?us-ascii?Q?hPpM8cr866KW14Qn81vbwS6J1TpoRzJ0wKpO1JdeXB1+20MXCCpWndd6geKG?=
 =?us-ascii?Q?UWJJ/o01xHkLTzudSjYxR3wHnbQkIqHzSEgDhGxDSHsuzcQvj125JJakzELk?=
 =?us-ascii?Q?qhBJomBt7gmML5cWpErLTrv43uLthfrLxRxyxUxhlEO1YHJ+vLUaiGgM5WZb?=
 =?us-ascii?Q?1k6dQtb5RVEFzDP/73sfA6B0D5yACUdRxv3nFbyp5sdQrdBcqRO9Wff3g06I?=
 =?us-ascii?Q?ogWQYCgDOsFGm24Ch+D+9E6EPcHCLFWD0ir0IfAB45sYI13xXM8FgRp02XeP?=
 =?us-ascii?Q?mcp6+zFOT6bk7mOVClXbhq4+IyWayAzeKxJO8TXXfsoptQ5WW6WWHfHISLtB?=
 =?us-ascii?Q?rFxN8vOuOkANCM11uhunPkCPS2n/E3nXffiZcOqC9SkoKJOa3TIdgDEyF0VY?=
 =?us-ascii?Q?F8OuWLi8FPGH5lbjyNvozwrRVjLcVXbPkIqmGa97UAXlY+A32u9+8gmyCFqI?=
 =?us-ascii?Q?8XU+KUXkCRfRD7tZq1ZrSH57cGu7vwuwwuYrmk/hUNf24wrBB4eEuP4tqP8Q?=
 =?us-ascii?Q?NN7UUZSzJp7eWwNJCn+5B6SSV4vY0eVdbsGgJaQx0heniY6rQG4YlIBim5Ul?=
 =?us-ascii?Q?GFong6ZbTjNKEovTyOmQ4P9ssez/nniPtyyS9LiAPa+svK6RPsT8KEmSst4/?=
 =?us-ascii?Q?Xeu4M5TQ4HaQ9HrYV0RCUaBZe/Mdz2KMxB3nIv1DkCY7frN12s05UssoQgrn?=
 =?us-ascii?Q?AYhP6hX9RCSadduiZbWeyxqSlLGbU8t3kTbkkQLidVtoaBLTP17Bnj4hIGPD?=
 =?us-ascii?Q?N7VzJShX/8va9NfpveYm263Q6x2vNKeVU8Y9t5hhUMvE9KRsO8g4vX2en+Yf?=
 =?us-ascii?Q?fpfVlhhETG4NbRSNKRdA47MYjsHdgqug+QLluUj9F7LNRA5qXPIFb/Nd5ST/?=
 =?us-ascii?Q?BGkHv1bjp1IdUntmKlChr9AtQ9MGrfH3bXg5WQ7iXToSQUtfzfgOyBguUJ2e?=
 =?us-ascii?Q?vHKPqc8iulPIK9UKwn14TsJproOEZfdboNq1CqAwIhhgYWTr3FlF5sQWZjyn?=
 =?us-ascii?Q?oFxmoG0n4voWOOFceGdpCB+4wOrX8IdZ1l0HtS3++7WV1PwY5IMhmKAEY7NA?=
 =?us-ascii?Q?pOJXNsgDOyxTKJb2BUeTNX67MoHl+cQgeUhTZBqSITyK2lez/0eheWqqtRUt?=
 =?us-ascii?Q?dg/k+SL5O6VllO1ToLh055Nh?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f250cdd-6c1e-4bd2-6d5e-08d8fadd245a
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2021 22:24:57.6761 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AIZXhD4ZOkWAhxA3FKu/UdGoCP/oKEM6i06kWdSjpV+0J/bzgr7KhR6AudyG3TvZenHFCMGb63SpTvWZLT/dur6Pd3/m/favAjXYbxholek=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2157
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S58 09/13] ice: Set vsi->vf_id as
 ICE_INVAL_VFID for non VF VSI types
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
> Tony Nguyen
> Sent: Wednesday, March 31, 2021 2:17 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S58 09/13] ice: Set vsi->vf_id as
> ICE_INVAL_VFID for non VF VSI types
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Currently the vsi->vf_id is set only for ICE_VSI_VF and it's left as 0 for all
> other VSI types. This is confusing and could be problematic since 0 is a valid
> vf_id. Fix this by always setting non VF VSI types to ICE_INVAL_VFID.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> A Contingent Worker at Intel


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
