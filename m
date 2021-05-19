Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AA12389364
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 May 2021 18:13:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8F98B608E3;
	Wed, 19 May 2021 16:13:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h06KBU-r3Q8l; Wed, 19 May 2021 16:13:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8E85E606D4;
	Wed, 19 May 2021 16:13:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 658A71BF39D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 May 2021 16:13:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5397E4040B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 May 2021 16:13:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3OQbu--HIE1J for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 May 2021 16:13:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D8A4D403ED
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 May 2021 16:13:25 +0000 (UTC)
IronPort-SDR: VrKq1o8dSfjHcKaQW4s4uyQ7DFvBkCZMEO9nVnqj6QUeDjYb7ehyaeOFEAqPlNCe16wdIXf+MA
 vJ053Wa15VPw==
X-IronPort-AV: E=McAfee;i="6200,9189,9989"; a="201062583"
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="201062583"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2021 09:12:31 -0700
IronPort-SDR: ItSxbxqtg/ECsC+qczFIOGLlOo87j+3CluucOtT1VKqJXIkIS0ZurecflEuDLVk6kkJf7Ndm4x
 c35KOqEvrd6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="473558310"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP; 19 May 2021 09:12:31 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 19 May 2021 09:12:30 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 19 May 2021 09:12:30 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Wed, 19 May 2021 09:12:30 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.174)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Wed, 19 May 2021 09:12:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SIqHjoBdL0T1qAbbMpgNRIWlq3yXRuaCelQ+MEQ/iyvqebPUZSn09N35MMEyl90TZW4klJBNVsJzL7LGv6C1IFZ2PvAY5qD6TFzXH3WZVin9OjvB6dOmWJ98vR6LMIGknL6ANh7WU1G34B/aXJ7beCcmzdYfka8bCskj6Zc7a+wdIaCnMgArPZS5vYVNHbKW1s+OsF/Byv6Vok4T1OdNCw/LudGEKpssDoRVBbvmUuvihl91r6jYn8IZCbMBfr0Z3Ra0ASs9wGEPC2zoAriZG+CbFCkRAS2PnZvrpu6EYgIrrVNCO+Tq9L8xxH9mKbTqn79mR/ctVQuO+vbaHZkkVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z1Qnux9fX8MlXn+AFyGx4x6ZI9xNX3eG3TqCr5EBB5w=;
 b=f8/6hyj99T003es/mygs6wQ3INMGJnx3yd0GyFB3g2p8tY294ZDSZoFjIpzx5qxvUo1urtJ0wSnwppJxkr3iVcwh9DJO15ZLW44MbEEE6gWL+ufNKsi1+HAFibgtQnMQiiVLu4AQ9Kfk2FO3riTdZPNmGj4Al82wRYuedgo+GpsgzTeeklfsZYov5eirZiI/Clou0Sw/YETNKk5nHnTyTiTVJAORv0dFGni0e9dha/nl2rTmgaId9m2ax6KkLoId6VPvU0iwv1fm27+HjMSvkb0vH5ATL38M2vwmkIvslMZHEHrlb2zQ0c9qgSluDuJFjnnqoRW00ebU/bMay4jSEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z1Qnux9fX8MlXn+AFyGx4x6ZI9xNX3eG3TqCr5EBB5w=;
 b=XiKotm1wu3bpynhNsXYhwviWC+bmO/KVHVt62/hG5vT4o5NhQ+3xFcmUeO5IDIVMErj06GYMvHOoMM7F0XpAGpy2ygMtdAEDOXCZf+Gk6Zjce4TDb8P9YGdo+jVnwMqFv7Wyjt42bAfRjIyFxXGuxTrST6gRF+pswFw7PU5g5B8=
Received: from DM6PR11MB3292.namprd11.prod.outlook.com (2603:10b6:5:5a::21) by
 DM5PR1101MB2107.namprd11.prod.outlook.com (2603:10b6:4:5a::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4129.28; Wed, 19 May 2021 16:12:27 +0000
Received: from DM6PR11MB3292.namprd11.prod.outlook.com
 ([fe80::ac71:f532:33f7:a9d7]) by DM6PR11MB3292.namprd11.prod.outlook.com
 ([fe80::ac71:f532:33f7:a9d7%3]) with mapi id 15.20.4129.033; Wed, 19 May 2021
 16:12:27 +0000
From: "Bhandare, KiranX" <kiranx.bhandare@intel.com>
To: Magnus Karlsson <magnus.karlsson@gmail.com>, "Karlsson, Magnus"
 <magnus.karlsson@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH intel-net v2 1/6] i40e: add correct
 exception tracing for XDP
Thread-Index: AQHXRYBtj2O/Q/bId0yegtpCCMUAqarrCC0g
Date: Wed, 19 May 2021 16:12:27 +0000
Message-ID: <DM6PR11MB3292834F3FBC9AE8D4F6FD0BF12B9@DM6PR11MB3292.namprd11.prod.outlook.com>
References: <20210510093854.31652-1-magnus.karlsson@gmail.com>
 <20210510093854.31652-2-magnus.karlsson@gmail.com>
In-Reply-To: <20210510093854.31652-2-magnus.karlsson@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [106.210.166.157]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 01559474-1337-481f-fdca-08d91ae0e584
x-ms-traffictypediagnostic: DM5PR1101MB2107:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR1101MB21079FB5FD62B4B1E5F6D940F12B9@DM5PR1101MB2107.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ILHrJ8LGa8RwGTgBHgMUVtdOgEc4aKrm71WJHZ0i+Axs0/hQ9dcdN7jpAhILqcOpk6ad31L8VeFhvGWPKVZUifRZZKDiWI+TXYProb8JBcgrzbwtX4F9GAXveJb4lN3ohRXbZGXAWOpGlzNPe3CTAmXnxzWf/R4HF3td3+XdHOiuYyyV+qy1p1Kw+s0lmbeDjIeqcCnebGaSEd2EKKG9ysNK5H555/F+fKAq1vc2xFfC76hQRm7GU+R0L4ouUuIBhpVQnD8soKknYLaYmPHM5sMzF9BWwYNQDPxZfxtRUDL21Lx93mGlLF1iuM7clX0+rupTiKn9mdCja36iUnoqO95hADwNgJY9xLgeAq9I0SrFtb2cV9qRQQCt5QdP6IYnw9yH9R0ubg/v4PyrwwEwkSpVzwWvCPxk9sZAnN3W+PBQ8LIGaTV/30jagf4jfHTBVgDlVt/ZdwZADcm7Dy9B7uwCvY4ek2gGysY9cmsS/IU9Y0xqQTHTTV2znLNTEJwLJ5amo3e7jsT7/pHNUCkIPm9ZYafMGFJYi/KVVR5hGX7XWWo+iLaACmzavU6o60htBHnHGUT0LVGbrXPGqb5iRiSalTCQedM/GpcyeBd0Q0o=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3292.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(366004)(136003)(346002)(396003)(39860400002)(64756008)(66946007)(33656002)(66476007)(122000001)(66556008)(8676002)(52536014)(83380400001)(5660300002)(38100700002)(71200400001)(8936002)(186003)(6636002)(2906002)(55016002)(316002)(478600001)(76116006)(26005)(110136005)(9686003)(4326008)(55236004)(86362001)(6506007)(66446008)(53546011)(7696005)(54906003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?H/wGCdv6I5naadDztF9eWUY9jGBlyg6Z2y6KNogRh0ixeQKW2LYhgUb6wKUo?=
 =?us-ascii?Q?DsPmpuVi6ce3CNN5UK/OLP28T+zJd9iNlqk/t7jLyLaaCA+i1HEudAh/+ZJe?=
 =?us-ascii?Q?y8S0gI66zaSJthkDweMw2QYhcgY/rJBefu3JkNOGuJQjzcJwn1ERdmwg82ei?=
 =?us-ascii?Q?PkAsb8YgBJHlfeBuRehrl8jvX302QHa35F07eufQ45WoDIN9+BpHi1MjO7gP?=
 =?us-ascii?Q?k5IGeA7iDwXJszxxFiGzhvhg+CN30lTMmA7WCU9VTDmIO4Y0O4sU6Hy2Vmas?=
 =?us-ascii?Q?tImn0DkJnROFG2aSWIxjcR7toMiFpsQxTnk6qi01zK/LFZAXzO8TzfX3WpTz?=
 =?us-ascii?Q?NAqF7j4VluEuzWBRV62XqBc2jbOwJIaOJWrHr2xeY6K5EOxn/Qvv8vCPmJBe?=
 =?us-ascii?Q?LbAjj66goOT03MU253/6EM1Jtzb/dAZU0+KTLKT3jcMSWL9zNcIIZJ3K/eUA?=
 =?us-ascii?Q?ewwv3NxIlthjFYqVYAqoEE0fftPc6ckq6zP9kw6FQkXehYApBHj+4PxQHZjq?=
 =?us-ascii?Q?cUd+4yrGjot8IPpsoLhVqxuoP1yhHcjZm7x+5GhUEomv37YA52uYkmzdw5ik?=
 =?us-ascii?Q?4jxEbp80xvy1FQ+dbTY1TYyTQKuVT+8CVtQfq9YRIevEzA0eMheVu6QdnDAf?=
 =?us-ascii?Q?3/dpNr7qtGFRD26jEgBBy4UPggC7Bnp0Xu/S/mYxXSlYX2zzVSbCe1sYJYxb?=
 =?us-ascii?Q?g0Q+Nw+IVQ5T6blVs2WLaqydGQmpWVEDI7qClGawFFqvznesVzv8v/uFOXqu?=
 =?us-ascii?Q?6rr7AV6zVEtN77765VEiLDS0o2p1abjabSWat+L2sSWmvCLCfob7LKahfgjf?=
 =?us-ascii?Q?EjMk/sQtU/cfbv227nwoz2tx0BuaO94sGGQA1Dle3IguA/jP7SuP/+PRW+f4?=
 =?us-ascii?Q?vkX0VE1vVR6wh8PwlgFVR9yFfnqIuLMiuok02StEufavA+vXmrh8UU53tHdT?=
 =?us-ascii?Q?Axkr5LnmLC9er1NVznpIX1KVn9Tl2O/TTY6krB6IesFqfyL/c7wPGrbrB+8p?=
 =?us-ascii?Q?+rklNW6m9UBbIm6LkZryE7zQ+sKrQYJfQb45upIll/zy1zBnrvGHXGAkRwrv?=
 =?us-ascii?Q?hTCREFI/IkJRsNmmaQ22A5R4zg5GioHOMo0dRWd+PP5X3br+XZKo4fAOv6/i?=
 =?us-ascii?Q?DA3bGWhBGMTLYsS5/mLBt5R1h046A5O8VtoXhy+yT0bTzSpHVSvCNFACvlea?=
 =?us-ascii?Q?8lysj666kRQbveK5eL1dLMonXyVT0YLvfbSHPsktXAlPTaeBAnvRfED89r5s?=
 =?us-ascii?Q?8LVN/kvdxyY1ZoexdOD/eo1q80BXLriX6G4oni6ASwfUlR8Uvfbba03/kDNp?=
 =?us-ascii?Q?oBqqaXlcQTtuFOsaxliA3vCV?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3292.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 01559474-1337-481f-fdca-08d91ae0e584
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2021 16:12:27.4232 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 40CmFMDXjVeDxg6swNzIwTI1afMV0UkW9ft0QElE/dvsfBoOG1MCoII7fyZkqPm14tSMtu3ccLMLWw+RMzgCMPuFMMnU82W3c5/vRbV+CVI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2107
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH intel-net v2 1/6] i40e: add correct
 exception tracing for XDP
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "brouer@redhat.com" <brouer@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Magnus Karlsson
> Sent: Monday, May 10, 2021 3:09 PM
> To: Karlsson, Magnus <magnus.karlsson@intel.com>; intel-wired-
> lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> Fijalkowski, Maciej <maciej.fijalkowski@intel.com>
> Cc: netdev@vger.kernel.org; brouer@redhat.com
> Subject: [Intel-wired-lan] [PATCH intel-net v2 1/6] i40e: add correct exception
> tracing for XDP
> 
> From: Magnus Karlsson <magnus.karlsson@intel.com>
> 
> Add missing exception tracing to XDP when a number of different errors can
> occur. The support was only partial. Several errors where not logged which
> would confuse the user quite a lot not knowing where and why the packets
> disappeared.
> 
> Fixes: 74608d17fe29 ("i40e: add support for XDP_TX action")
> Fixes: 0a714186d3c0 ("i40e: add AF_XDP zero-copy Rx support")
> Reported-by: Jesper Dangaard Brouer <brouer@redhat.com>
> Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_txrx.c | 7 ++++++-
> drivers/net/ethernet/intel/i40e/i40e_xsk.c  | 8 ++++++--
>  2 files changed, 12 insertions(+), 3 deletions(-)
> 

Tested-by: Kiran Bhandare <kiranx.bhandare@intel.com>  A Contingent Worker at Intel
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
