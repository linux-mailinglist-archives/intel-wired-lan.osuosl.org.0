Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F3A243DB5B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Oct 2021 08:41:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DD346405E2;
	Thu, 28 Oct 2021 06:41:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FRBKt6narV7M; Thu, 28 Oct 2021 06:41:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DADFD403F4;
	Thu, 28 Oct 2021 06:41:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1E6941BF350
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Oct 2021 06:41:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0C0D660682
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Oct 2021 06:41:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Dz3Bc6KbGITt for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Oct 2021 06:41:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6A94960676
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Oct 2021 06:41:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10150"; a="227791387"
X-IronPort-AV: E=Sophos;i="5.87,188,1631602800"; d="scan'208";a="227791387"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2021 23:41:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,188,1631602800"; d="scan'208";a="447558268"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 27 Oct 2021 23:41:17 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 27 Oct 2021 23:41:16 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 27 Oct 2021 23:41:16 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 27 Oct 2021 23:41:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XBMDfQy8cxLg1QZB8Ium4mmASvjOMqPS9gcJ6zZ8a1vBv1zRBZiT/VB27f+k+wgX5LRpBSvefwU/NwuwoCPR5OHZ8+/HEhi6VjE9MSEwBnkKYwgOhVidw893V4gp4es2sbShBNpQpinYeXG/tD1c2mu5GbxxpQeHZ+VDS7FYmqSXYZ2yT23Zn+NbwCsnPwl+pJbQgQHr2Bc8VzvebgZufYbSUPmcIYsrokywHqhuAeBszXayrjc59YoTe72vLg4+YlSFX3pgFxdZGeJ3GZyDT1hRyt/A9Ip4rc85bb0gd8RLKUZ9L24JnZJKCMWlPuhOxuVXH2F/vaKbS8lFHdZLZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xsDzkWM+/rIvVb9776BR5lshTLo+rlZLfTpOXzxoPZU=;
 b=KoiI5n3y8rfmcD5req0kyJaPhCXoZAzHEnVB7m2j/KegIim/P9zGgeQ6eH4ZElPLNmc9a3/xKAADUw1UaUtE3HzRf3Taf69urB521AE3D4PHyCQHREPxvTOsjTA38wBGYTF7VX0aN6cJGlYn7zAufOW/txJ6r84DXGqF24buW4xETs29nPYIvhykB6OIsCkrR1YBbSRD+uYEFbhl6EfVCtAi2v7zyJaU3QQ4e/IEzNDmZkG4gRxC2USzlKBHthVQD73vuc+oPXAZNN3kee0FYH96m/clYkuziJvTlM4NPZqq1MHxuyI9qnX9soJd9F5ba02O8FF4p77VVnDexkMNmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xsDzkWM+/rIvVb9776BR5lshTLo+rlZLfTpOXzxoPZU=;
 b=MNEzPn4YIpcnAoHm78EaUDNCUMz6gXhQc7plcopKw8Zl0LG3SeZ293yK6sSZ8F1ItwsCzs17pGY3lI7akHkNqL+g99Xhd+W3IOUzE/yO5aVA+Pr7Dfq3MQHCIBpU/5iA8NLU3lT1vyxUaFte7usbZd6DEQ4sYisWZDb5W+xUnAE=
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 DM8PR11MB5622.namprd11.prod.outlook.com (2603:10b6:8:36::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4628.18; Thu, 28 Oct 2021 06:41:16 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::555a:1e2a:ce25:53ac]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::555a:1e2a:ce25:53ac%7]) with mapi id 15.20.4628.020; Thu, 28 Oct 2021
 06:41:15 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v3] iavf: Fix refreshing iavf
 adapter stats on ethtool request
Thread-Index: AQHXqhB7ZXMIIZM+6E6i2JbTcRMJ/6voOVuw
Date: Thu, 28 Oct 2021 06:41:15 +0000
Message-ID: <DM8PR11MB562197638B086A9F61623145AB869@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20210915090100.25340-1-jedrzej.jagielski@intel.com>
In-Reply-To: <20210915090100.25340-1-jedrzej.jagielski@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0f2d4ac6-a098-4e0f-7a0c-08d999ddf0fa
x-ms-traffictypediagnostic: DM8PR11MB5622:
x-microsoft-antispam-prvs: <DM8PR11MB562209AA25BB2D4B51B447C9AB869@DM8PR11MB5622.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2803;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hJHAwhAttjj/IRoMlfxV8fz8ovHNe1g/xVA8Afkmj+yfMHy1vkE7dIRqYqtZzQlMYr+svnyrXJqrptyXD2Tbox8hIUq3N5j3LhlMX8hOpxZUSGldDbbAFbe8hqNijUVKLzFfW8eqiZ8C0wCNcfzMNDel76ROkpp6yhNeJJjMuDMTwhPeDdsHX9Fe6G9OYMweRi4riu1dJGd2M4MYELxMZrlDhFOsitfDBRvmjXxu/JjcirnW+WWe4z5RUtU7BgAV/ikMVADY7v64xNjsFv3Wsm7h+BTUAsRPzHaRbLxRi7w1aOd8tiCJla+dOuB+wrOGur99Rw2lfPB/0RzjOHzbhHi/a4iZmpjylm7lH8suR38ZnYicKX3FtGWjTd/kzDE2lqp4YTHH/GwRaRDKUX7liJQjGhYBG2qMQN7qTLsxdI2//SbtpTa0fvzN9CG5Uln1y6kSwd8wawU2IRoM/SJuyXMX7EU1CLtQ6zDkzIKhZY2rBWRBUUFPJac0nZV/J4GzUWjjxx+sR8EhgWveA1ZIK0u/kwrZ/youqWDPu/dF0ESQiM5QnN4IRa9P0nHcDweL26PTqBKmd0uMCprOzYfQQsfViFVaOHkPAwiUfBU7WwD+FJQ35w3aWSY3gTFSA7ohgdY5QhJejpLWyA9njJSLyFGHCCKZbSz0KvaZ8JAkEP5QYru5QyGcHHDTNXnujyHNTbTQ/Hszf1ol2cAmk4Jwkg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(76116006)(33656002)(8676002)(4326008)(122000001)(7696005)(71200400001)(8936002)(66946007)(186003)(66476007)(86362001)(316002)(6506007)(110136005)(5660300002)(82960400001)(52536014)(66574015)(64756008)(508600001)(55016002)(38100700002)(26005)(2906002)(83380400001)(107886003)(9686003)(66556008)(66446008)(38070700005)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?j2cTsC6X3ZaygCIR5DzJlVmh4i4qM98zhqlpNRo6IYAJVqMLuWUS0B7lzK?=
 =?iso-8859-2?Q?qhi2oWuMur0ObE7hfqWDz+LuEP5mEwB4a3Y0YHLw9pSZR2TlExCIVqXzzY?=
 =?iso-8859-2?Q?uTmB6H4Rc8gL8Qss0XxDmEcVTELT+K5HfWYXo3pxPknof8voQ5bxORzktz?=
 =?iso-8859-2?Q?jL0mGXcnd2az1lxhem0uJTiavjwoq6lo+PU4KqqjPVwLAYBuoCimH1FA3/?=
 =?iso-8859-2?Q?7apWKRkoUZOfJDC+Rd3CIn4uimq3qwygtmEvDvuL9Zj0GfvOo2CWqCx+GC?=
 =?iso-8859-2?Q?l8fHZx4epUQkytKTNyD9WHfwRp6BvgJ7tgL0dX1ebfW4KkalIeiZcrDjSS?=
 =?iso-8859-2?Q?DY9iy9YKo0LzryiT1zbdTOZtlzdx8ZVa49U6Y1ykc37Ae2l1NLJdrr6GkR?=
 =?iso-8859-2?Q?9KGPwsGV1z+amz2BofpV5PDMFyh0QPWYs9x5F3xehvIlpdveJNGGSJNSWz?=
 =?iso-8859-2?Q?Ae9mDgp5YFLEmsaOuwkCiermwiPmbMH8Ul4lq5Rr8WMundNYFCoN/BUah1?=
 =?iso-8859-2?Q?efPdWwORdcn0R9etXAFvxmbEj6N4sWZIbrO6QCx/aXMomVdrZ7M5pg8kfh?=
 =?iso-8859-2?Q?Vqr0swsE4tWCV+lfTlggXPYQg6D8A7Ge0xHYhM8JJdONPU+hvM2jfDwLaQ?=
 =?iso-8859-2?Q?Do164IuXhgqcn0D5MEwfw/hrh8JiklSLZ3w9FQG4VgKp9W2R0TPZUC/9AP?=
 =?iso-8859-2?Q?/3Tf7qml+jup+EvYU/VAuGvC161S/zEFnw0+1OFnYiSP1nY6NU8tBFXiRs?=
 =?iso-8859-2?Q?uPFjuxTI9Thb79veuoHuZ2br18G83HzT9IVOQSSdrhhWBLVXaQ5oFWOltI?=
 =?iso-8859-2?Q?lAjx9EQvRUmf0jrJqw0SeTj9A9AMOBj5iKDQHT9rBNtqgD020HQN1LKEXK?=
 =?iso-8859-2?Q?Qexb+KQQHZf5A0NMr8hgJDSrmjFR/OMN5yBu/TWwm57VYUlVpFPKe5pIKH?=
 =?iso-8859-2?Q?czHuIfhz8jEdo96Onek+veBa70+f4vPv+scd4iVURsX1/ZOVChxU18FsiY?=
 =?iso-8859-2?Q?RCLaCLjvCUdb7NXPmNUzsDfqJra8mSUzRM3u50PfRjWjK6bV5Xy+sjT75t?=
 =?iso-8859-2?Q?44tvNfsndXa4C1ikYsyUz8AdeK0vyXPdXwa1wItr4YSICAV40p/1/Zbq6h?=
 =?iso-8859-2?Q?IPeDo7mkrMEas1oUVvogvOwxkfYagsQ2FCujX4iUz2AkEfwhXMW18Vhco8?=
 =?iso-8859-2?Q?7fCcPqxCQYs8QJw11zwZ0pbAq11aslx7iJS6kuOwQ0kSo9ob9IMPJ4jTj9?=
 =?iso-8859-2?Q?EUkQigmgGsGE4Daog4Kdp8moJagZmEQeHhSuJs2NJAmEnK4Zc3wtvs0M+U?=
 =?iso-8859-2?Q?rcvedLIzBFGEbWvHTn5aW+nWwAuisZA+UkvksMOVe8sR9VqDAeB39pm2Ov?=
 =?iso-8859-2?Q?Sn1ph65z7HqR7WbC395AQwjrATzT3ukmCoKsv1busdBlz05EdkH0KDvzH5?=
 =?iso-8859-2?Q?unAwZTCbKOenSsXIjtS+WCuJhz3hmbbOA/mRNEUQhg/YSU3UrsKRMNzHDj?=
 =?iso-8859-2?Q?t3UShC4X56w6tlMyBhQxXZrcGjnjxx5RrnBl149OccSYN+obKmIacBIzud?=
 =?iso-8859-2?Q?H3HQX6QMcQwEqGcfKl5W8tlEZdyci4FqriNIYyAowZuHWGPlQPNv3iK+ce?=
 =?iso-8859-2?Q?enDfxQIuEdUsEwqX2XKCmTWnmK54lMqWWoTZVx0/AN+tQj8ZS4Ysch9Xn7?=
 =?iso-8859-2?Q?EYcly08E4DFCyrUyIyeZVEI0ksvq302Y9ygrrwGo0Q5ayxAd72gOiG/you?=
 =?iso-8859-2?Q?w7Yw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f2d4ac6-a098-4e0f-7a0c-08d999ddf0fa
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Oct 2021 06:41:15.8797 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: evmyK28kRPhA/VThGPerolZUfG+ZdDCR6mI02pKPBVdMV4vAy+GREKSUA0fjQd6xKj/swmg3nZILu6YDOqPhHG+IOEugYjI05NbBff+VRSE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5622
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v3] iavf: Fix refreshing iavf
 adapter stats on ethtool request
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
Cc: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jedrzej Jagielski
> Sent: =B6roda, 15 wrze=B6nia 2021 11:01
> To: intel-wired-lan@lists.osuosl.org
> Cc: Jagielski, Jedrzej <jedrzej.jagielski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v3] iavf: Fix refreshing iavf adapt=
er
> stats on ethtool request
> =

> Currently iavf adapter statistics are refreshed only in a watchdog task,
> triggered approximately every two seconds, which causes some ethtool
> requests to return outdated values.
> =

> Add explicit statistics refresh when requested by ethtool -S.
> =

> Fixes: b476b0030e61 ("iavf: Move commands processing to the separate
> function")
> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
> V2: Squash 44a4808a78f6 ("iavf: Fix ethtool stats request scheduling")
> V3: Change value returning by iavf_process_aq_command()
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h         |  2 ++
>  drivers/net/ethernet/intel/iavf/iavf_ethtool.c |  3 +++
>  drivers/net/ethernet/intel/iavf/iavf_main.c    | 18 ++++++++++++++++++
>  3 files changed, 23 insertions(+)
> =

> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h
> b/drivers/net/ethernet/intel/iavf/iavf.h
> index 21c95775509a..afe6b0d24a9a 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
