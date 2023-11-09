Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E062C7E67D2
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Nov 2023 11:23:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 83BFB612EB;
	Thu,  9 Nov 2023 10:23:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 83BFB612EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699525422;
	bh=dM6AJDuqhfchVeZcj2l4AL9yOhntMG+9ttyZ/2VwAy4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=b90lYDzjXEuvO1wNcOgkdu3TJmCsim2JmPenlWhYMlM/XGdxT5kcdbXYSAx6mTtMu
	 3AZYeWNzcZGhwb6CgLf1fAyDCVnW6EcJj8Tc7psEO+L5L/bI2dipcyjq/9opWkJ/U4
	 mQXhweHtvwJbO4ZLZ2NY3PU0Rk8Xp3hUE10nGkuAxN7k8qkyJ403ufeGJnoRfESyx5
	 z/kRMywegR5uvdHAqJ0s6d68SOuGFucCdf+DiGq9CcS7FoeM3D7vHQr2EWU9gSqvb3
	 6iuR4aEolbj2wd2y71FecNvWkUGVjFIrxbRJfMdJCPVu5l16xKxRihBLfr3jjQibH9
	 b1CbdpzFwrqlg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cCtVpgq1nYMo; Thu,  9 Nov 2023 10:23:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5235861266;
	Thu,  9 Nov 2023 10:23:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5235861266
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A33181BF3FF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Nov 2023 10:23:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 78A3441DF6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Nov 2023 10:23:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 78A3441DF6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Gd9KnsjPcknU for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Nov 2023 10:23:35 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BA2FE41DE4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Nov 2023 10:23:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BA2FE41DE4
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="370160211"
X-IronPort-AV: E=Sophos;i="6.03,289,1694761200"; d="scan'208";a="370160211"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2023 02:23:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="1010590964"
X-IronPort-AV: E=Sophos;i="6.03,289,1694761200"; d="scan'208";a="1010590964"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Nov 2023 02:23:35 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 9 Nov 2023 02:23:34 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 9 Nov 2023 02:23:34 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 9 Nov 2023 02:23:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oZayZkcLU5izxelXNZjlUX4BAc/fI3iUvUz4VSXTWMZTLbd/D0bi5AcoxzkIZTpRrB73XTmgPEnNYtIDdvubVWO4oBXb5gWuS59E+3CFoYlxrRntCPbOJ4mKiNrMtapQ0lDqZdLGjZHfrTP45Kp17wCk8vBh7RcflEQx5juMOeg3vIx2Kymlj9Vp8fyi5oZk9ZZOop5nLfyda06EssO2AiOBVyEnEKlbKSJyG1urgreGNE1slP5k/fBpEQcSkQ7aa8iLOKqbiXn0KeKXgyb3h8BnzOp9k6jfWiHnIseRoTslISLbXDaTIP6slBfYGv4EfoA0ACHfb86mc3eonkY9KQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kFA6GiXNkgf1Znf9zVENfpQQOKChbeb1H3E02ATwdqY=;
 b=LP4aUI1HASFzzi/k4ocq/3ms8DWIYi9LInyv3Znn43kITTNd2eZZAUHy6Yb5n5+GoRTIC9ARBKd2OXEtCNvEDExBtAyxs6wG7VL8GcUrFUD4VgKbl21CCZ1Lbljo+D0DRhpD27SM5h0oWJIDcOVyxW40XK4ec1dXCZFI8Ft6IjTky2DyIMAQ/+O2pnolxPihbXGI04FeBUngUgfXVXWMIbt9tSAFfOrN97ET/BLsqKhHAiLtyTFQLJvBtx2Abfg5LhMnxQeCvoIrOOIS4p9iMIbyRENfvhtG0j/l+kIG7IvHL16jJLhwiDxPHjxb3u+PHfnK6FzHEnxvc+aC8IIyLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by SA0PR11MB4527.namprd11.prod.outlook.com (2603:10b6:806:72::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.28; Thu, 9 Nov
 2023 10:23:32 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::3d98:44fd:690d:c3f3]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::3d98:44fd:690d:c3f3%4]) with mapi id 15.20.6977.019; Thu, 9 Nov 2023
 10:23:32 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 09/15] ice: return pointer
 to representor
Thread-Index: AQHaBm5JcGilnBMFS0aoxZd1lmQaebBx4IgQ
Date: Thu, 9 Nov 2023 10:23:32 +0000
Message-ID: <PH0PR11MB5013169EBD60365D4A7AAA2C96AFA@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20231024110929.19423-1-michal.swiatkowski@linux.intel.com>
 <20231024110929.19423-10-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20231024110929.19423-10-michal.swiatkowski@linux.intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|SA0PR11MB4527:EE_
x-ms-office365-filtering-correlation-id: 3c5cfb90-2bb0-435f-bc61-08dbe10dec97
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: aTMAyibX7npBR6yuodG28K5YH/EkMm7EMfoNiXa15VsLOlCVBuBCBxCS8ZsWrDUJAGvvt7mjP2SzM+/YmK7v/kfkT9/AOzmSlzzrO4pu/5KMbsJIy0kuoIq3UrBcKogtWWsaoNPlP8bW7fTd7K5bIWewlXrf0pwkpcuiPQp5zowXAvhDLuOo4VZeo2L+xLApv1Ksf9JVD5Hbsk1SasbZDyBt34kVGJtW3SXvq5UIVBkl1Kr18E3U35DzkqlGPjZXANsSs61As5Hs0X3wfRdDdzZLHt91T3hpaaZIpDBPkjpYGM9/CvNlh6AdadMbIXFDZMpcKUOsSVAFnt4LrjT2HVYzX1xnbiaN6EhB+fGijCwmwQZ18evqL/qieno6U9wwetFZWAy4Pm0BwMHm5KAEt8/hSA4L4QHdtCW3lw1z1mtQBv5G+2Z6ucyVJlfnb52WwhW0303EodQ8jzamq6t62TcSDJn63n6HSAr3qelrmPK5gCIf/I6UPtGh/5AWe+A6SGvt0906vmyiAsZcVrJq/sOIlZ8jjdkgtG2Y4kcEJBfzF4sGU4VQXVMUci03oyITTWlJJH6aa70bE8SXseTQ9CQXmQcK0Saa8JzOnMQolYExKkiSZvQMTTa24x3E150p
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(346002)(39860400002)(366004)(136003)(396003)(230922051799003)(1800799009)(64100799003)(451199024)(186009)(122000001)(41300700001)(9686003)(8676002)(82960400001)(66476007)(26005)(478600001)(38070700009)(4744005)(33656002)(8936002)(66446008)(4326008)(52536014)(66946007)(5660300002)(86362001)(316002)(76116006)(2906002)(64756008)(110136005)(54906003)(66556008)(53546011)(7696005)(71200400001)(38100700002)(55016003)(6506007)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8KV+pzs5V6SwpqowP0ARm/Brj3b+2Vl6Nvy4VAjam9U2C2FeC65Sx4v+gSjJ?=
 =?us-ascii?Q?17A+wjBBzC9C1fJU5+DAr1ysipj0CZjgux+51reN3yCcFjQRNer5YYBsi/hd?=
 =?us-ascii?Q?Ex5iKC3or2SVbYW9a2Wb380eA19cLphwCcmFnTw2wDFddRxa7DUv8JhtZZyx?=
 =?us-ascii?Q?+U9veTHE6lOaC0rbCkfckxfTK5k4AGA4oQmjBepdtXVN2urY51nUa+zv7/43?=
 =?us-ascii?Q?Pv6k7LvZmcS4PzE09QEfxqHs9u/0vpnF0Oi8URNLuOCUJKfmToGBGNOTuPmU?=
 =?us-ascii?Q?okM2gN3KV4rtRY5IFkSLoy0r7VebWQySbIKbuU+WlUresO1vWSzu7tplDOXz?=
 =?us-ascii?Q?EdGOrss0cpyk2Q/ARzAJ7c3N6NWOF9U6GByWFW4LHXhEKFL1YkPsStXbHE9i?=
 =?us-ascii?Q?JoAQx6QJuHWfevYCpMLA9AKLQV+7lGr4CqffZaKWDMy2woXiqRx/y0y3g6EI?=
 =?us-ascii?Q?EjDqRcfagvOejS4QLKIqoPSPzlbg0aqHfmXAcuEvZO02//rxqGEwntj9lwlS?=
 =?us-ascii?Q?zcbO8UnW44lJN3MA2I3D2x16nwHfYpx8dScyJQSEnm1TuJYHccS3GVhC9mkv?=
 =?us-ascii?Q?WTK0ejoOMUWCkqvwH2OAkYSD2JuFtazykuED3amQzTYsBL9qEGaafjKcGOvs?=
 =?us-ascii?Q?egMw83tOjW8VJoI5R+iaw9wtSVrPsE03WsLV17rJGSbFPx8/KNZ8noP+Is1r?=
 =?us-ascii?Q?Rst+lxEfQa473Nzzo3yhQElfVWXsPJN3A+zYhXQT9i2b6LQQw7jWOh0NZUiA?=
 =?us-ascii?Q?GTogmID7czi5CqXfBbSm2WC8bU1gOq00ozpX3rdKxSsAGqkFywO7LaRbHFWX?=
 =?us-ascii?Q?xkO+cSdhMXED6E/Gv4Chy17ncUuXheM2JHzPH3XKUdWcRCxHeKYvvNbyku70?=
 =?us-ascii?Q?e0/Ancoga70Dza25yoYXJTOauwRgstA7+hGBE9NVFGc24eEl51j1qAFGRo7H?=
 =?us-ascii?Q?+z/vB+ll8ec0jUNRgQRJXDWtULpO5SoYfK25ZYbZNFFEO6l+41+ccVLYNfq3?=
 =?us-ascii?Q?ck9jwCTCot+qub81Au9zTJlnINUXO79Lf8SzYTQ6Mp10+geYbyVz9b2u+Rvm?=
 =?us-ascii?Q?q64/nx+UISDjpZDB8bpm2O8eRmQIG4jIBJGsyKI/n9Epydlcs33k3GFgglDW?=
 =?us-ascii?Q?kd4CI4lkDbBMJT0Tbik994mKev5A8SEc0jk1caThVBYHh7iS3O8JwBNT+bhv?=
 =?us-ascii?Q?ZhctiGlnj7EvJ+DBphGIqCjDlQ2RJe0mwCR8XTmv6ygVDymiFcc6x7CwFUoH?=
 =?us-ascii?Q?q/+3cm4Aw54XUvfj5gBnVle4uBhxSET9WHgjNesUt7jLvmMFTmHkheA72fNS?=
 =?us-ascii?Q?sCLQwG5wjlCpJDrIznvzkANDUk+Stf5+TNXEEY1TCCPTZiS2GDBmqkQtoHWJ?=
 =?us-ascii?Q?IMpPGX9Mu6Fz139nNN+rM+en2m++WDMowt0anBFJ0nGKNWwt+a8qMF9ZAYcY?=
 =?us-ascii?Q?2DyuWxXqF3XRE8TZ95qAjPwNsUDtMF6qceQIJiubXut0DhHslln/cO5i4mJe?=
 =?us-ascii?Q?8qF9UVH70G0xrfUAlAfYHt/Z3aA+Olov9cXDuPakcoIT+4uHoyuS78JF4fzK?=
 =?us-ascii?Q?f3GYk8X0PDy/kYgwzUP3bgfTTDuSmWfPtd2IEn/m7IIZ5Ylt8GeLpQOj/5M6?=
 =?us-ascii?Q?KA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c5cfb90-2bb0-435f-bc61-08dbe10dec97
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Nov 2023 10:23:32.2694 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: K3jy/q8/bhKGQhyyzx+l9wQU8Is0kblK3oCZKYLgoapaFqEe6trkcuTcDmEG5wc2UBP5UAASAHbflRcN+OvG5IcWw621qvTjBK3Q5IlAZKI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4527
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699525415; x=1731061415;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Mpw3oM8OGvKfH0cP4XQ6QCUTwbYgC17ha+yNTpelDRY=;
 b=SdhKFbqzmg+/9JeHHAwnfPlauVVJFwrouPmYeoDCqHyf8iUVDy7P4Lac
 wW8GMpNPtAqYw/pEcwwc6qO3HBxwXwrR9zrF1A4zSBGLQm3xIdUnva4E0
 Ajpv6YOuF1VwpYtveSw7/YCgZd/FCwSIz9ybWSHTualz4NJ0VGENq88al
 mjmzbydcwg/FqioWrOvLqntDwZ0TR9+pvrPTWmkzZ3g9O+Atm/HYuPmDy
 jlAhQ8AZzutokQvn3YkHEHGyk8Vj47ic/XH4sl0zsCS8N+9+gdZtw0QI7
 EyJYXn+BGpt7H5DVu49lmZ4A50rCFqmk/EDdLYSJI4gekDBMRQl20mnF0
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SdhKFbqz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 09/15] ice: return pointer
 to representor
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
Cc: "Drewek, Wojciech" <wojciech.drewek@intel.com>, "Szycik,
 Marcin" <marcin.szycik@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>, "Raczynski,
 Piotr" <piotr.raczynski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Swiatkowski
> Sent: Tuesday, October 24, 2023 4:39 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Drewek, Wojciech <wojciech.drewek@intel.com>; Szycik, Marcin
> <marcin.szycik@intel.com>; netdev@vger.kernel.org; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>;
> Michal Swiatkowski <michal.swiatkowski@linux.intel.com>; Raczynski, Piotr
> <piotr.raczynski@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1 09/15] ice: return pointer to
> representor
> 
> In follow up patches it will be easier to obtain created port representor
> pointer instead of the id. Without it the pattern from eswitch side will look
> like:
> - create PR
> - get PR based on the id
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_repr.c | 17 ++++++++++-------
>  1 file changed, 10 insertions(+), 7 deletions(-)
> 
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
