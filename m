Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A29015448E6
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Jun 2022 12:30:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3528F40BF8;
	Thu,  9 Jun 2022 10:30:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KoJzOvfPpWrb; Thu,  9 Jun 2022 10:30:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3026240198;
	Thu,  9 Jun 2022 10:30:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9DC1E1BF3DD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jun 2022 10:30:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8ADAA60B15
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jun 2022 10:30:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0G6wjzWEaJGR for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Jun 2022 10:30:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DD05760AA0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jun 2022 10:30:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654770637; x=1686306637;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=O/mGpplDdr/TuZ2OAAaEKaRfRn1W87/dQVpsmjgV5HQ=;
 b=aDcCl06VnXuCKR717fz1Uz1ZM6DzMqU3R7TTYSObz+8gf5jsHJzA1btk
 descflvEdjlP7c13viATkqio42sIlRISBa8628zhrYKADFhj+05E8Ezsu
 8hFf5cuaYnbfEzAGhnqiN/T3pp1mYQ7U1TUHvWl4mEh17C5JHEfvYEZEM
 35doZL0AmBXwQC8uBEJHvB5eaz2tJBh0ocIrHulnpd9DHF2bw3jq6tcus
 CF539KvsAX13m8AQu2isPGpDzm90HyXKoUKchc2EH07GF2rfgrG3/1lPJ
 9aRXA08wBFgW0urpYKcOajSEY43McmZrqNMVoWOP7n96dW9LKEwi5CnZe A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10372"; a="338998070"
X-IronPort-AV: E=Sophos;i="5.91,287,1647327600"; d="scan'208";a="338998070"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2022 03:30:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,287,1647327600"; d="scan'208";a="610168210"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 09 Jun 2022 03:30:37 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 9 Jun 2022 03:30:36 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 9 Jun 2022 03:30:36 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 9 Jun 2022 03:30:36 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 9 Jun 2022 03:30:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gb3osAmRe080NJU61nLPfzzkIxJYoi/zC/CeBUrRN/EyDRv3bKweHADJuJULGZfYdOP6T/Vc7fnRssLihI5M5TghoN9KIF5UnqgCnsCBYfAIeUMQCCszRFgcjttJKNAgRR5cUSVl8NeJjUTUDDbAFUWf+1/eDKzqsXHguDj5Kp/mQkdxsYd5LRgsGb+804DtAbyCFxKCDybuNtO1akud2F1CgqztkG15K4VIlrYiz4ApTsev3cEvv465+6tZSlF86e00qG4IlIQMFNTs3bxHqqiB/f24Dwu0tF+s+07groFaY+7NIn2Z3D0ejo4fE+IzihPLvOsbOPl9+8ic6xG5jA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zcRgWasLutMnp2Xquaxa4tCA1XDFIPYC9qg7hRI0Dkc=;
 b=g9ZVZ7ylK0ROVm4T8SuIURSbpnmx89f6l2SeRC1NSoFNgTdQ6mc/g1oBNNqzqScRP+YFWJdnvDGkvPwyK0ZSRthasXpkOptT+aTMpBlNIp9g0zMpCu4hTGqyy5ehLWSmF4DknILHyzdUJyBP1UEBHR9CctUuPqFkMxLprd3Qc4yJk5RltbJtQWGiiqGenmYwi2/Vb+8+sbIubyt7nzlUFYQoZZ0tzH2VSYCLPgV3JKxxuSGdYkxEP9SLL0MeWi6woIJ9bOdgMauxRi9OvIwF7epuHvta+yndEKWnK7MP9WvBv1AEFe7cySprNmbY4UxjkNSb9SS8jvWEhZUlxQGzUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by DM5PR1101MB2284.namprd11.prod.outlook.com (2603:10b6:4:58::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5332.13; Thu, 9 Jun
 2022 10:30:34 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::829:3da:fb91:c8e7]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::829:3da:fb91:c8e7%6]) with mapi id 15.20.5314.019; Thu, 9 Jun 2022
 10:30:34 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Greenwalt, Paul" <paul.greenwalt@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: add support for Auto FEC with
 FEC disabled
Thread-Index: AQHYdqgBNTmeT/Bwm06f2MEdhIbKF61G6mEg
Date: Thu, 9 Jun 2022 10:30:34 +0000
Message-ID: <BYAPR11MB3367A3AF631E4E5FA6FE6BB0FCA79@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220602173736.278126-1-paul.greenwalt@intel.com>
In-Reply-To: <20220602173736.278126-1-paul.greenwalt@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e1bf8765-9b94-4733-e7c0-08da4a031608
x-ms-traffictypediagnostic: DM5PR1101MB2284:EE_
x-microsoft-antispam-prvs: <DM5PR1101MB228408DC1F5E701F4B498D54FCA79@DM5PR1101MB2284.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZJdKsJ7orck9vuSk27gFytqVhUyZ+gEF4NNr/XUKj0H9BJlnon08bBE66nw4TROfye9rcEgUelwwH601Ce90Z7QYSeaJk2GEhFuGHQUHGfKTDzBUxqJ0dbcUS1jkbih6O1LXaodSmfXelPnAlabKCqImM2ZKvJYSWKgOLyNQwq5UiI0FZDXSqxu0ZDWzSrk7xjj9HekTTJemNYtHxxvfvvCsVony57Oksq/3BjcvJ738Ohd4CHGdNcAAfAimmiggpIikV4X8zzNueIhHHoiMz+qarjgq5LpkkrFZvBWnwY6/mkxNtKEN6odqksQbTJ28Wyk8pErgtG/4yOxrJe4oFpvdCw5NnPcZUCW3/HSp2Lux1ZDF2Scl+phTJpL+CG7MDCQEHje+Mr7mkoeBqzcI7kIu3F0PmW0T+KiS9/m9gS+rgzmC/NbB4OTopzbp2vsy9as0s4KanLPH9rUuCTIBZ+GxjR5DMsRK5462lEgYBdq5dVcvL8pkA4Fow7rmy2fbxGNMQnaa8V7aIMSNnVIaS3dR7wN8SIKB050c9jBdes1TwcLzsBBnxFWomSxUoUeLkLbrBt+2bHbznBAULTkgtrc6ZkRKPME6ViOlGGhqtbxixeEocg///9Ae0FvclX/UAf9oQufb4Ah7pzAaEYMoF+WPe0Gq9xYGy2roE9z/p2sBCt6fSnxg0GHwaC9qdx9z/3MSIT2PBacj/EpC1YE8+Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(316002)(8676002)(66446008)(66476007)(66556008)(66946007)(76116006)(64756008)(53546011)(9686003)(26005)(6506007)(122000001)(38070700005)(7696005)(186003)(86362001)(83380400001)(71200400001)(110136005)(508600001)(82960400001)(33656002)(38100700002)(2906002)(5660300002)(8936002)(52536014)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?g7xpJoOSeQl37Po9arff8vLGZLtNV8Y9FPWr1u8uX0bmyLhziAyCPI91R8Cf?=
 =?us-ascii?Q?cXr7dZ4nfEA+Bmc0gPafzvQLw1jexNoxuhilMHER8SWFNLFKZBEW6KzwDsJ1?=
 =?us-ascii?Q?MHFujCU6hve9GnUvlF9L7cX82Nk7Hsdz1d/tfSXn6PiYo+c2DwWtztpF+YhC?=
 =?us-ascii?Q?kElgAePtLieQ9OtokcLIGv+h61d/yLhJw5SJx9b6hzyIe3CyF9AvmsOWDi0Q?=
 =?us-ascii?Q?X2xfvURVG5N2kFntI4obrbJ8A4v6+omK0kwdqk0wv/zEpOOITPbr28Mddd4R?=
 =?us-ascii?Q?lTnxDntMsORlJ6lZ8FJP84VmFmy+Oengj2PmY1cEisejRWKKAvroYcCc3f//?=
 =?us-ascii?Q?lAdtt6JDLE+1JedSmvUw9dEhlQ3R0MO2D2Hz2JS6Wy9cRNjzylK0RBaMFe1E?=
 =?us-ascii?Q?bQzHEG6MxfJNeVGhFMEKcSKa8qSqCcRUInytaoaSIvRKMepwrspOLGVIxoo9?=
 =?us-ascii?Q?+e86H/gtkPffrqJCc/bWsSMSUD1d7NkiebBA3+uHdPj8PdcUZD9n7mhorFu9?=
 =?us-ascii?Q?kDbMwJofChH207hRH2a/jHcL0U+p71FZxMDrnfhlxeCFs2Zn3x4moC8neVma?=
 =?us-ascii?Q?ZD068zqQpLDtuvOw58SZcr/H4tZTTQnM/6zMn4ZkR0DahpowxB/88ov3z2i2?=
 =?us-ascii?Q?AUSLXpA5T52OgoJsTw2yyjOpy/8c8BLbs17gH6bdYAggVQtsiwV4PQtwNoum?=
 =?us-ascii?Q?FMfyOXcA1Nk3ZXa/Luc+fh8USgienOMMn/+4qPpqw7fj1ecsQQvC7RslGqy7?=
 =?us-ascii?Q?X1BMH6TmZ59T4EKHVxR7tU+xcA9oLm3VLTEP6EBcKYFEjhggSpTw8Jw/t1p8?=
 =?us-ascii?Q?MUE3rZqgI79a9uby/rlP4AdDgCH3nReBFMCT+d0jSqoI54WvYMwc5G2STzgB?=
 =?us-ascii?Q?H/5v8lT/1oVLA2v2jtOlccw7bFVxTOvA0JxmwxCOwRJ3x9i5OtNBlpeUG2hC?=
 =?us-ascii?Q?vwj7jBqSyJabocdjNlOkAAHkO9sM1yIBKg/aNjAlLyryGFPR89jJQ2aTmW63?=
 =?us-ascii?Q?6CX6prmvKE5sbl5VB+ciZY3iHj2X3YiRX3Sg47HJped9goxLahS0hDjpJH82?=
 =?us-ascii?Q?ona4BjxfnX9qX2St77AoJCTMd6Yx6NbrbcelxwzvU9txVLI4K//nYWns/KxV?=
 =?us-ascii?Q?hN87F531II39z/oJ/zWPU00LkMzwPfMQfNNTKkx//5WflP0nqyYL7jfxQGTb?=
 =?us-ascii?Q?PUjuGiNNIa4kZncYWmazr17eMvtdrhvF6agB5EIDbQaWCWIn5OZFt8cLB3hG?=
 =?us-ascii?Q?UAul17CgLNhrgBndazPG/1sTr/AYYwnCQeS8D0IWDxpYoFNbm5+ROfOgsLIf?=
 =?us-ascii?Q?hUtd1JeSHx3wKkTIOv4dV+6XEnjH5t/k+GHdoz8ivrOruVTcZKMOGkYzZGH+?=
 =?us-ascii?Q?HwguEHv5qnzwm4RQ6EIs75HHWkuLq+ZZnmYe46iHV808sjYkQULhNWJvJFP+?=
 =?us-ascii?Q?WhMIzCrgXr1z9Fv/IGmJulzzTNr9cEC7e4eiaEFbULROttDVKSsb5FXJ29Qt?=
 =?us-ascii?Q?jpxVjkgGvQnzFZxuJbAaxjZyMFOzrbLRfKIw7WM1rTIK+0QHImxHk7BNbvTP?=
 =?us-ascii?Q?R6my7OLvDENsGaxvmA2kmOS0UZMr1i0fdt3fN+VT+3H0HFFFCYD2gDBtcopY?=
 =?us-ascii?Q?+yDjfxh4L2EBl3nrTg81yiktqfJpuGqMGoGrrNgK0Gyhu9yxkSOt6TBWaf5K?=
 =?us-ascii?Q?nt7FrQwOmnrdko59qBjqQAsN7YII2Q3Q8K68KYBJOnbER7VcFKA64A3iUQWP?=
 =?us-ascii?Q?OUayuPsUEQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e1bf8765-9b94-4733-e7c0-08da4a031608
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jun 2022 10:30:34.0917 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nzA0UUY0wWRCgxocE/MtEuA4xKdnXKdTkBcovVPHXCCS+JdoQUmel5EgVzN9eXaPz0CZF7KncRjbBF/DBgUxFA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2284
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net] ice: add support for Auto FEC
 with FEC disabled
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
> Paul Greenwalt
> Sent: Thursday, June 2, 2022 11:08 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net] ice: add support for Auto FEC with FEC
> disabled
> 
> The default Link Establishment State Machine (LESM) behavior does not
> allow the use of FEC disabled if the media does not support FEC disabled.
> However users may want to override this behavior.
> 
> Add ethtool private flag allow-no-fec-modules-in-auto to allow Auto FEC with
> no-FEC mode.
> 
> 	ethtool --set-priv-flags ethX allow-no-fec-modules-in-auto
> on|off
> 
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h          |  1 +
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  1 +
>  drivers/net/ethernet/intel/ice/ice_common.c   | 80 ++++++++++++-------
>  drivers/net/ethernet/intel/ice/ice_common.h   |  1 +
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  | 40 +++++++++-
>  drivers/net/ethernet/intel/ice/ice_main.c     |  8 +-
>  drivers/net/ethernet/intel/ice/ice_type.h     |  8 +-
>  7 files changed, 105 insertions(+), 34 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
