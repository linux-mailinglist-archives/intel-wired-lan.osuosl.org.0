Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 132043368C0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Mar 2021 01:33:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8A0B860646;
	Thu, 11 Mar 2021 00:33:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yIMwo53iu4jU; Thu, 11 Mar 2021 00:33:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7CB6160645;
	Thu, 11 Mar 2021 00:33:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2DC821C115D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 00:33:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1505C83770
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 00:33:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tPGYR7H4YkZi for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Mar 2021 00:33:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4E685836E1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 00:33:36 +0000 (UTC)
IronPort-SDR: 3M+O5FuOEa73llK4CtDBKm9lwfimQ5PdWuXQJGQRp9wLnB7Xlciq4b5nUctHJ1C6ARG/nwESUv
 5rxifkkN1XlQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9919"; a="186211169"
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="186211169"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2021 16:33:35 -0800
IronPort-SDR: tvUU17IFbNX04Y0l+DtKnItoPmyZBGbWCEB617fS2C8FQe5UhaXUMLa7LC+BkvU9WYAT6P2clw
 HSno8Xp0obAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="589029401"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga005.jf.intel.com with ESMTP; 10 Mar 2021 16:33:32 -0800
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 10 Mar 2021 16:33:32 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 10 Mar 2021 16:33:32 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 10 Mar 2021 16:33:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h3Bp+ROz4/ZaCLp1y9R4bXNhdKY9B0SyQOsJaHNTpavfoHfplxGfWs1JgeFkYi4EuXkrc1qd4OcdjlFqCdYvegJemOa8edqe4CWrL4LQ3GOqocu3GR5/KoxgaEvgRdQ5zAc41u/wqnl2mloOupKOhqRDlaEglwJdL4KVWmgZ1rY2KMMtsJj9DcWKZYuS5zFwEo6CmCc/dmSQVPIsMYDIslvSh8420IVOS2Vf1o5HqrGywI07RHTI9gfRETmt9YU2emOJxjnOoDoRi2iVmuYVtvbAGY8fiHDdKK4p8cDqCji0ilusCKJJWGWC2CQ9hX7/ubqdvip+8U4allTgQr/+aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hc4sDODHDZCl6yHUIKzPgm2l1rOR8tlpa3CxCHOabM8=;
 b=OIZk84uuKk4+zpCF2h+NR0X/SLRJlg18RX2/GK9muUZmHe4CtyhSSVlmcD68mHjjeQ1swjw125rTOTP0lEKwrga0CiyTwxq/LI/ovlVWc244eVeWbINjp/v6FQ5MbSx69msaY3iIsIwpcyME0MpQ9bQF+hfTR5exLPtTIaelm+Gh+mlxt6mu2j1QZpnFZwJonailbi59RYuyPgSTG0Y+jPIW3urD/3GgPtOvpl/dvJwy72mpfdddL55TBlzoWfNEdaM2u/snNZ68DzIgIxdHNn/iB6Gm1tsl00Z2rcpZ15cvBFB6T0h6V0roFU7QborWXsAoK1mEyYZLjihXUQCM1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hc4sDODHDZCl6yHUIKzPgm2l1rOR8tlpa3CxCHOabM8=;
 b=cOV225pvyvQzVqLeoFH2fLCiVDTCDMQhhS9JoSJIXo3pGpnEivz4Rd0yh2tc8mSumDUe6bY22USGpMlELwV5GdIjraLhZXD/J5CRVntPkvXGL9BLzJiOq8eIYw1aIZD4GaI2xsTzRzHmpA/45nrlam9m98TDPHn5mjKvrptgamk=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MW3PR11MB4731.namprd11.prod.outlook.com (2603:10b6:303:2f::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.28; Thu, 11 Mar
 2021 00:33:31 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366%3]) with mapi id 15.20.3912.027; Thu, 11 Mar 2021
 00:33:30 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S55 09/14] ice: remove unnecessary
 duplicated AQ command flag setting
Thread-Index: AQHXD5Fc0HsemK0HDECo4DZmYGlAFap9/Rkg
Date: Thu, 11 Mar 2021 00:33:30 +0000
Message-ID: <CO1PR11MB51056B96BF83C6553AE0F625FA909@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210302181213.51718-1-anthony.l.nguyen@intel.com>
 <20210302181213.51718-9-anthony.l.nguyen@intel.com>
In-Reply-To: <20210302181213.51718-9-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.213]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 324344eb-273a-42aa-bc4a-08d8e4254bd2
x-ms-traffictypediagnostic: MW3PR11MB4731:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MW3PR11MB473196FE466296FE12D5FEE7FA909@MW3PR11MB4731.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2331;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: o3BACvyRgauzwDhvFhBL66DQbUqRuPRHoHosDxyv41c0eN6xoVHEaqUDcx01L3xBkiVY0u/QRB9FgZrYtLgXSgF68NZrFxZL9OchjkH4XyIFeqQGIXoP/GSoRjer06VfZ4wZhHV3SMAQ384gprx7Jlyvo5bKyHiTpQ1ymngJEkTTICAI5Ym8mKmymH/yR4O+qIF9KjmcKZvG03IX8puvleGu5gZGoh6GR63J2uBbPvNNXHOSYg9QXMvjTwc0B1DJ4t4UPlCvvpmsqMSdJSlqXMOOLDwVa+21Jf0+HuvyNz4rfrnWtoNyp8FscdMCafhzyDpfomy6lxnV/z1e7Sjj2n8qxYpZEMgG1HLNgBDbG4M9xugi1O/JQODQEVbh60QhBsPgXm6mH5WGp9y/d/CzubYhNSoxzsHzCK1jX0QiPXqMKoEB4VZ0z+nWzzKvS7KGd6cOikTGp1sYGsUnaoqrV/zVH5N7NvVHHRjta6VVoPtbNOPuHFbBkcixMZDGH5Lv+L4nrKtd27OJY0WwcrNZfg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(136003)(366004)(39860400002)(396003)(346002)(66556008)(66476007)(76116006)(66946007)(33656002)(71200400001)(66446008)(64756008)(86362001)(2906002)(7696005)(52536014)(4744005)(8936002)(186003)(55016002)(478600001)(6506007)(8676002)(53546011)(9686003)(110136005)(5660300002)(316002)(83380400001)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?ja+1y5saGvER8YOjbz0n99HL7LnU/Fmy+4AZfo0OnNBfKHZwDqVSDoGfrUXq?=
 =?us-ascii?Q?8VXeOThnss+XgKIaTiVhTEjQVWtzmc5mpZbs+Yj10wsI/rr1Yq31EgohJpOm?=
 =?us-ascii?Q?L9fITI/QAjmlwKtLz70KMw3+JFWr3OuWqwcSBPSGuAr5v4/lqYF5X+aBbhZe?=
 =?us-ascii?Q?YdrEam2DZ7ag6yGYlk5QWfJNwCB6vAvKocmswDNiWPn49w6jv38GtUDCjBWe?=
 =?us-ascii?Q?h1Op0jCTXq0FyfIuwPP5UpKmU9R56oT2yyUwHVSCd5ugFHEZZdtvs5zWQ+c+?=
 =?us-ascii?Q?CK9fS/KLmVx0lVjse0H4NWA62bAYr/xby3ZiMb0Dl1YQPCIWKs8RByoUW0fW?=
 =?us-ascii?Q?UK0nVu7udI3fGEHNN9XCfflROC1Kz5LCe7hFSXUrjRZBz6162A3cNQE3Nr0J?=
 =?us-ascii?Q?GLjifjr7Qm4DucjRA14He19Y7Qp0IdQf8LvX7xROETtny/4g/oPxwLHUFKyW?=
 =?us-ascii?Q?4qPSd9Tgox++hV0/89on11Xl+9//J9ClpIZhEcq1Vdo7lvLYI0tvxt4AYw66?=
 =?us-ascii?Q?KV98+h58mDdWXmVXrwj+IIXHkg7j6Izii+3nB3DyxkFf8DkTDNc1odkGUemf?=
 =?us-ascii?Q?erHHN4XTYFfADSVAmxxNc2wCbRMs9FDf9voCt/AfEBZ/qv4nN4bX6thThDpy?=
 =?us-ascii?Q?TCtThPY8B0XbuPaikm2OqaSlY1wADENhZOUyq+LmmPYroaGUd4VtsTakLuI/?=
 =?us-ascii?Q?OPEUMrjZwGF6fX6RPt6U3tqr7VHjpSf2PTZbHCTRU5/6ABUxpTC90FQ/OAdw?=
 =?us-ascii?Q?WOiZzMx9ainmVa7jYxmoHeM6CpLGHymng4f5Eb3l9wmUze/+cjRbnwWvYicZ?=
 =?us-ascii?Q?AI74IIDAN6KBWs1vmjv9bsG+XsawTO+cj7HjEOlfxqR4My981M3128TkUnFx?=
 =?us-ascii?Q?i+4uAumilF2/HIaqoDSPT3+vObc8j8fYRJpe71VnFEj9BgeorCYXMY6C3vZr?=
 =?us-ascii?Q?81xpthWBKkMsha50WG94AyAY8kkw3ZiRZ+Y7FsBx7SB9lFPZsV5eXW2DURv1?=
 =?us-ascii?Q?nS6/wRIRrY1wwpa3V4Mv1B+xwzeBzVm0+GWefXBFo2b6TBDqCGnTZpSgoVCn?=
 =?us-ascii?Q?9B1ndEjFmhu/kJjr8Jnw0jf0c+653qvDk7QhnsqKKULUbDNWSxuwpyOssJGY?=
 =?us-ascii?Q?mjgG8hiVxIjPoNO5/O8Swpx6sVmTC0oRTLU8zFcVfdCcY4oKPnoBo+G2iVbU?=
 =?us-ascii?Q?vSXCl8mpYS+OQU/Xz4D/JwTknkhg7H5ThM1BzRbq/Ew4DqeOo+fDwPiAEE68?=
 =?us-ascii?Q?Xtgk4jnadbpi20avDtvXOuVVOn0TUdZyc0ACBKllpYQ0eG7pcR0sD0/dAK50?=
 =?us-ascii?Q?uksurIuVkuAqPP2/Vu4Wj/L2?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 324344eb-273a-42aa-bc4a-08d8e4254bd2
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2021 00:33:30.7092 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rEjU98S/a1hTPrxpgBp5imdYMIGL0lniR0WmLoQFTthTodKDD/+86moRXL45rzbelYsK576J6Tu13BbEpQwIMUZ1RWa8QC3KiGnZjbTunUA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4731
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S55 09/14] ice: remove unnecessary
 duplicated AQ command flag setting
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
> Sent: Tuesday, March 2, 2021 10:12 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S55 09/14] ice: remove unnecessary
> duplicated AQ command flag setting
> 
> From: Bruce Allan <bruce.w.allan@intel.com>
> 
> Commit a012dca9f7a2 ("ice: add ethtool -m support for reading i2c eeprom
> modules") unnecessarily added the ICE_AQ_FLAG_BUF flag to the descriptor
> when sending the indirect Read/Write SFF EEPROM AQ command. The flag is
> already added later in the code flow for all indirect AQ commands, i.e.
> commands that provide an additional data buffer.
> 
> Signed-off-by: Bruce Allan <bruce.w.allan@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> A Contingent Worker at Intel


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
