Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 16703316584
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Feb 2021 12:47:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C4BE5866F8;
	Wed, 10 Feb 2021 11:47:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZNZzL80EfnSO; Wed, 10 Feb 2021 11:47:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A4FE3866AF;
	Wed, 10 Feb 2021 11:47:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 891BA1BF479
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Feb 2021 11:47:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7E009872A6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Feb 2021 11:47:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bH1XcM14mjMR for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Feb 2021 11:47:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A26458729F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Feb 2021 11:47:08 +0000 (UTC)
IronPort-SDR: aU4KBDj7eVLBP+CmJe6bnnUmljci54GalFOypcW4tozhcTXxHBfr7/ouf8LpeWjLaX0yFUbeuR
 gM5iAoiaRICQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9890"; a="169734413"
X-IronPort-AV: E=Sophos;i="5.81,168,1610438400"; d="scan'208";a="169734413"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2021 03:47:07 -0800
IronPort-SDR: 2cLvlwLLwUBemQme7aG5Dd6I/HxCT3j2a2nY6m1+zBBvVVb2iON/2W/qpLTdyAxrcy9MARbXp2
 YZd+DcvNABPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,168,1610438400"; d="scan'208";a="421018756"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP; 10 Feb 2021 03:47:07 -0800
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 10 Feb 2021 03:47:07 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 10 Feb 2021 03:47:07 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 10 Feb 2021 03:47:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ogxdJ3Ek/Y03Y6n7GHQi+lq9MXrICy2sDwcBoEG+goMsZ31IEtWfsDvDKdel041mI+WbO4tnW/RgK60lngpr2dvQ9GRQYmkisS/9DcVHrcmoLn+qef2mP4ueOnjFFO8lORv6QiBxD3/ZPy8k2BfExx14/1NjQgWyK8pX2xBqIEqX0l694+wMgyoN36hDptReYxBH+oQcN5eGaIQFmwuRdjydZ/pdaq3TZtOfOiwQpiAOQrlM5+s2pLi9S9WIf7OHhdoURoOyEmsGbxxC5CamDKKinSDqWnkJtfeAwIIyx42privwHLGq5kxrKenCuzMaV/n+wI7o4UCXvghsoBuq4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9pJSSJUN3WVg0chA4wRbRl2UmeCizPqht6XBmlg2kOg=;
 b=BGD1pzbWaAJk7TTP0fc71GtnykE/vVl0+TWPPe+pl+44dGYaznUK4hfXk5ZuGH/tvonDna16zZywg1K/gnoinHT9n/3wJgS4SFcFI3LluAMDtgT+PO4u8cMFcj8X3fYe/8SsZCw5jwTe1xblFMi8q1PVwoQP3tgOG7/tyTxUpLiC8DHDXCBg0wkbb4SuTSE1BYcqeghTkJeQ5UPK1bzS2RjHybux65GSDRhRPyt8VPrPJGPV6Ybixp/9WPz542klwVorhZSIan7SFg1UZUSeAq7QfIFjwlqNUlXRRQ7j7vY6tPRrX7HyN87SDebiFKbYscmRfR0WZ64135pRft5Qyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9pJSSJUN3WVg0chA4wRbRl2UmeCizPqht6XBmlg2kOg=;
 b=XYaAY9H1Zi7d/MScuXAipsyiyz4cs74vVCJ0vuuFN3UivkYv63oJ2OGv79poQ6Qpz4sDSL4l/TcSx5IDojTork9Xf4N7bSzOGlmM9JzB0aOYmsxODW+J5gtFxZtN97RZqsKx62PzZ/AzWV//xYMB9tE5zUEqb4X98jbJe6quWfU=
Received: from DM6PR11MB3292.namprd11.prod.outlook.com (2603:10b6:5:5a::21) by
 DM6PR11MB3801.namprd11.prod.outlook.com (2603:10b6:5:136::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3825.23; Wed, 10 Feb 2021 11:47:03 +0000
Received: from DM6PR11MB3292.namprd11.prod.outlook.com
 ([fe80::74d6:6cad:5c9b:e3a0]) by DM6PR11MB3292.namprd11.prod.outlook.com
 ([fe80::74d6:6cad:5c9b:e3a0%6]) with mapi id 15.20.3825.032; Wed, 10 Feb 2021
 11:47:03 +0000
From: "Bhandare, KiranX" <kiranx.bhandare@intel.com>
To: "Rybak, Eryk Roch" <eryk.roch.rybak@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2] i40e: Log error for
 oversized MTU on device
Thread-Index: AQHW6oDEXHNpUz9c8EekNY5fbbP7r6pRb54g
Date: Wed, 10 Feb 2021 11:47:03 +0000
Message-ID: <DM6PR11MB32927882DF0FA774BCF6DBCAF18D9@DM6PR11MB3292.namprd11.prod.outlook.com>
References: <20210114161706.9224-1-eryk.roch.rybak@intel.com>
In-Reply-To: <20210114161706.9224-1-eryk.roch.rybak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [198.175.68.37]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5b3f7f07-c356-4b22-8171-08d8cdb995c5
x-ms-traffictypediagnostic: DM6PR11MB3801:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3801DBD5815883DA1DAD94D1F18D9@DM6PR11MB3801.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:901;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hnvCuP7NPfTqNjrbQIvABH/wUuFQ05JCxG5t2ZeCA39yA6gZuDhGOvRWxci7EHRUi/TCH8Q8iK8gsSMfSiPzapLs/SKfZ6MymEi6ifpDfPkXNZcUafX8ELfce5ub8699AD1K2al2ilO295ge1v23Tzv41DUGzqvmPk7CN6cWbJyT6Ma8GfEKGqHDDrzEEVmqYxcBYcaaE1fmY1QHvI2dgr/2Pez8kX1Nxnw+Gt1r4+mR5T8iM8XVIRER2oLxtBc9cfpjZNLis5FzAjZzxvEomMgRgZiOusn1JTD6gvHRR6QvlBxn2Q5pRdSvwHrE4sLiFOn6ruLqGdqSDxLYSt2i/HWSOopJTLjG8HxWbX+/YeOCA+tlYMIZUFG2vFLwEoBWixBq+97TIHz4PWrpVuZlkz12qsJLR2do3hOqCfopzi/s5OiXpIizymOuXYYjxPLahaxXdXRPYsg9LDbXwJ2CLnnN61Yi9nuK0DL8VzzjirSKtra0AFr9T5mZM1zu1CXO32Kbc37ZrrZCUVxZrH6kZw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3292.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(346002)(376002)(366004)(396003)(136003)(71200400001)(4326008)(107886003)(8676002)(2906002)(110136005)(66446008)(64756008)(66556008)(54906003)(66476007)(52536014)(6506007)(53546011)(33656002)(76116006)(83380400001)(4744005)(478600001)(7696005)(5660300002)(26005)(86362001)(8936002)(66946007)(9686003)(316002)(55016002)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?oVRaKZ+s6XID9UMTejG7/wYg9qUFJLEgDwXncJGwRQtjpCU9i0OMe8zRKc+I?=
 =?us-ascii?Q?XQ2Dys0jSNe/MVaz6e1BH6FQfdVgfN43wxjstDZoHye3HtHU6RcfisbeKIbA?=
 =?us-ascii?Q?u9G7qOaJCkroP0ExEZXqN0bxl14MBWVs5bBrDRDUR0/ipTuEN1HpMzSS2UO2?=
 =?us-ascii?Q?7q6f562E6wyeWy1LYxzok4w3dca9MP0/M0h0oRd6kbXs42P+GOhDN0p87ube?=
 =?us-ascii?Q?JgGe/8mZS42JGXfhrXOvT/OWbRAsSPMoCznaZmJDngTNBNJmlhfsc3T/R8+w?=
 =?us-ascii?Q?wi/1hl7jkU/A/T5G1PeK3epaPmoZO3xqURvMUfi4znnhbLcqjUyrSgFqPJTc?=
 =?us-ascii?Q?S6tS5r97tXc39NMZmCM1UB0W7PbHdir1vTqO6w4r+JnPJKTzBroViK8+PNCN?=
 =?us-ascii?Q?+aHhkA7QTk4YD/LOBSrZNbK3Ue8LTxRAQd26+SW6dRpSA7F/cRdUlbQQhjVj?=
 =?us-ascii?Q?slkDT4d5quwZ2EQQ3HIRiN7AxWR5wPUMTtJkD5wCXGuI09TbyRtx275Hn2Si?=
 =?us-ascii?Q?n7iFZfOTpXqtEM8TApXBd64ToKs2nNBpsHX1paUj4nRJzVSI3nkiRCGDtfRo?=
 =?us-ascii?Q?doJir4+0OA0MgM6jGbJzYjXdkw8v/10EfunXxu6JGvbzPd8pSZfwyu0Nfz2g?=
 =?us-ascii?Q?pQaXfVybBoyU4xYt2PzkkhtG8HoycelxwyEhrADRx1DTJGexn0OLrg7VTSZ1?=
 =?us-ascii?Q?R6rEO9phvPJpAxUfwUXl9Yy+XOyM80FbMGySHGBsjPMokDdQj6L/mieixswt?=
 =?us-ascii?Q?2qGWAnv97FNyGZz1Ym526ky/oKP3a46d4BZ6Rrp8+lnxU/ORD1iY9XopBsZb?=
 =?us-ascii?Q?Zj/8roddP5j74p61sKvYrq1qvVnce+HxGDNsb2CaShqLBhH212IqPc1hjF9s?=
 =?us-ascii?Q?/lvSze6tMPEt2k5Nli63lL6i2cPlIRUkakOxLRxl4imjBUFBhyOBO99TtF8r?=
 =?us-ascii?Q?vkSRQ76AHzbEvccbfOyRm4uvip8R8yP/QhmiuXrNqbovjecpeE4nk9QDYbvL?=
 =?us-ascii?Q?kpX9o2KE24KYzxokTIOzFP2u/E5py8p2gcnojqOGvSm/KNXZAQGxbEh4bpPx?=
 =?us-ascii?Q?DC0vr1CPr3KDX2EWVWB1umQTcPydFky9s2KrsZrWxdB3WtNQY6AuiUDrq+sF?=
 =?us-ascii?Q?Y+YfhSq6t1ntzla9C/h+Sco0tWD5shDRJIaYKqDgvbuYmGcpyAmsBMz2J4Ia?=
 =?us-ascii?Q?VD8k75o+k9+6RyaaB91tobJydTGHUfaOwleG+OFILdplw6S9lx25mqnNxp3j?=
 =?us-ascii?Q?/wivhNQstQPuuiq1WkhbcrKMv+pfYLHPbdDUpsKdvxfNDv0BTPygWpMq3d6N?=
 =?us-ascii?Q?oSSj8yxJvPLmxQXTo9plBliy?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3292.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b3f7f07-c356-4b22-8171-08d8cdb995c5
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Feb 2021 11:47:03.6958 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vn2OwBtsyqPkQn+oG8VpzDt+fYayslJM4HdSApTi1aRVcFrJE6f8Z57Ot8hvY8bhYANYGaqxhzFvdIis8odnY2pqvC9csFCJBJig0kwbJC4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3801
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] i40e: Log error for
 oversized MTU on device
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
Cc: "Rybak, Eryk Roch" <eryk.roch.rybak@intel.com>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Eryk Rybak
> Sent: Thursday, January 14, 2021 9:47 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Rybak, Eryk Roch <eryk.roch.rybak@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v2] i40e: Log error for oversized
> MTU on device
> 
> When attempting to link XDP prog with MTU larger than supported, user is
> not informed why XDP linking fails. Adding proper error message: "MTU too
> large to enable XDP".
> Due to the lack of support for non-static variables in netlinks extended ACK
> feature, additional information has been added to dmesg to better inform
> about invalid MTU setting.
> 
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Eryk Rybak <eryk.roch.rybak@intel.com>
> ---
> v2: add dmesg trace, change commit message
> drivers/net/ethernet/intel/i40e/i40e_main.c | 13 +++++++++----
>  1 file changed, 9 insertions(+), 4 deletions(-)
> 

Tested-by: Kiran Bhandare <kiranx.bhandare@intel.com>  A Contingent Worker at Intel
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
