Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE3D23A360A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Jun 2021 23:34:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 652D84037E;
	Thu, 10 Jun 2021 21:34:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VqGJP5-9egLF; Thu, 10 Jun 2021 21:34:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8F3954024A;
	Thu, 10 Jun 2021 21:34:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 89C461BF38A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Jun 2021 21:34:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 782C54024A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Jun 2021 21:34:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2JwYiPrs1HDS for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Jun 2021 21:34:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7CC034022E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Jun 2021 21:34:36 +0000 (UTC)
IronPort-SDR: LycG/6MQGROCy6Xb10HrV3WAa8r+800m1r8eDe47cnN5Fd/D/g2SScpmcHgQ5TAutEfMMcPxVc
 UO7KLJ4u0YXQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10011"; a="205225252"
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="205225252"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 14:34:36 -0700
IronPort-SDR: 8xhCpmw4BeYA8l3OBvAd4XzxJk0hIzbCRcdEx9wK/j9kVOnupAvwv77F8He8nYaeBF+Y3igP7O
 eHictaUDCSLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="553211139"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga001.fm.intel.com with ESMTP; 10 Jun 2021 14:34:35 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 10 Jun 2021 14:34:35 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 10 Jun 2021 14:34:35 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Thu, 10 Jun 2021 14:34:34 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Thu, 10 Jun 2021 14:34:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JwjjaofiMfGdPEZKWtt7TRPaKwTNrw3nzECqTmcp9aQSlz6hfSgN1GukPVqogcOTsXh5WFepcJXInsfoqtSMy0Np/jVYDh/rnxhekdqa0byO/3SR9pxjVOcSql5IGoCskN93VFOXkn2PkUaN4xqprsWmDo16+pyWz4XeLYDBO07TD8pjf91p7ePZSLCBV5gT6HfVJ8P0ubpewsETE+lrAMZERNCeZFTIRAeD7QT5wmgrzAHyPMCZgq7RbigTg12CU4eUIiq9PtMv4+nelEuCrzWicCtwed1CgTEukarO9FcxIwG3yxXBXNrFe/NS61MTeIQPpEsLjOOYCA4VPjhPCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qb9FWbyumBfhKKeOU5X44htQNulXc1aXhSQezx+b7l0=;
 b=du/14T+TPtpkwpxp9E+614TT/EQD/j6JvIgMA05awaXB79y4t758GKUuRHU4MbLv8f1qs/NYcn6+dCR4LRLh6U8HBEXs6fmC6CVv2bflUnqHH3UwYprsyNxPziTw0MbE5Tfc6cBeWpY9nur94Q9qrxBqV2h0UNu0EcFnGXvIHXCKxqv6TVW2/yh2/DyaZc5mkubbp7nzVzNqsApFOEjkrnQ3jqLgUWdkpuqcGipcdsqwKdaQ5/fYPmJYQ8MzNNz0dNNk2Jw2sRJI66rcj+30we1sv5ESwPxu90kLESkXwwFRVVtarF+MgDqjBo9I8ALlC+v+WJ8VYhK3zEBNOCDL9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qb9FWbyumBfhKKeOU5X44htQNulXc1aXhSQezx+b7l0=;
 b=MQYGuL1R9kydE3PvDrmyT4OtKvKPM0kJoPrao0H+cAq0/rab8VLoCvk4mt3l0eq7QJssDNz9npdjOz3yWvvG0xZ1nOg6CjDPEsT0RyT2l4rkWQyRa7SsY/m+bRYQiXhp7dEUDVroPaJg2x75HyXSQ+hQ/flU+DPTd4/ipF+pfkI=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by CO1PR11MB4787.namprd11.prod.outlook.com (2603:10b6:303:6e::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.23; Thu, 10 Jun
 2021 21:34:33 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::4db9:fe34:a884:4e43]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::4db9:fe34:a884:4e43%7]) with mapi id 15.20.4195.031; Thu, 10 Jun 2021
 21:34:33 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 8/8] ice: enable transmit timestamps
 for E810 devices
Thread-Index: AQHXXU/uGfmhFFu7T0yhv7NMfDSM9KsNxhZg
Date: Thu, 10 Jun 2021 21:34:33 +0000
Message-ID: <CO1PR11MB5105C3616AD5C6957D5B3A37FA359@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210609163953.52440-1-anthony.l.nguyen@intel.com>
 <20210609163953.52440-9-anthony.l.nguyen@intel.com>
In-Reply-To: <20210609163953.52440-9-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [71.236.132.75]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 11cdeeca-7ca7-457f-f903-08d92c5789bb
x-ms-traffictypediagnostic: CO1PR11MB4787:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO1PR11MB47874C947EC4AF335FA67259FA359@CO1PR11MB4787.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iJG/XSCPzc+OB58xlwtyUua4sSyN+YF01/AE1g4U7qnv3Mb5ZVYxNoDjwNwZxJiG1GramXh9SvQHycXA6riiKWS85KcNqY1o26961Ts3XxYSGlmf4j3rfhCEQzbXjt97hj8lzcu5H+FgCsLG5rgGkykmUdkmYQxS7YizO+MasvplFtYpKPfGbZnHcnVRkyQVJoCHdPl/XaDcCHtDAk4NPCdNJQlhOmMmJIgJVkZFu6qBwT6kM2Ok+ig2xgQ6qGJOof6ZnoSDuPc3GUaf3UQd+cDDQFsO36BU2Xq6zcGXW3ilQ04mu7Xkor0aDJyWPh0lFUvakRQQMJDQYf0ud6xBWdbdD2VrxeacV0pObKbRlQMdJbaPBXaU6RIdkEm199Dab4nZx7oeA98MKkconwr414pWoyAz10xGtlUMAvwZE3+qy+lm+DTuI8GgyEw7ShioEdeGUFS9ADy+JZpsDf84sra01tt5sLc0y8zT4VZ4xAyPCu6WruGvqWDfvyvUmfXEZK4bTvMkjoIb+jAoaEzmsB+4IPHN/jYBkmSxMIyEwVMIVarJTfI5ssErODWiZiMOFLIxAujFRPFKoX9gpyYgg3t2oSumx8lzy33916r9xQc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(136003)(396003)(376002)(39860400002)(346002)(26005)(6506007)(76116006)(8676002)(53546011)(33656002)(66946007)(8936002)(52536014)(7696005)(83380400001)(66556008)(316002)(38100700002)(66476007)(66446008)(71200400001)(9686003)(86362001)(55016002)(2906002)(478600001)(122000001)(5660300002)(110136005)(64756008)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?CiCYMnT11PVoFdvB/gxb8oXSUtEO5vwHVsz9FwMnSh1auhqKrua8RvcvH51S?=
 =?us-ascii?Q?mc4wWdKvLALb3OrjuPqOlxT3GtEsnFWEH2ft9j2MZVWk+YeWNWhstzgf/t5Z?=
 =?us-ascii?Q?X47CMt0lbyJrP5y8ER5BAU+5CmnKSfS+PghG4yMZceYOhZ7jo1BZogK11izE?=
 =?us-ascii?Q?wGaGgzqKmTDqfBGP1DnZE7/xTnWt6DtZtc3cA6olPxb7ooTvpWML9T/J1TCY?=
 =?us-ascii?Q?OlsAUaTS+VKjhDqu6ypyqsJqKII0Uhd5vi202fCYgz8LWYx3rdpp4I5zomsc?=
 =?us-ascii?Q?TqynwNixEYS1OdxlsRe3JVC2xwz8bq0d5ltvzx6zNHwO8zkMwcf0WigXlozm?=
 =?us-ascii?Q?ZpH93QyF9mn4cnNHMu74ZRwfA7s0VPEGqG2J7XN6k9RC9ypp+fnlL3hYIw+p?=
 =?us-ascii?Q?duB0zh3rKEw29HdPYL7pdKqSXN2IiEqe5LA/JXENMZVevNFfAHJ4eBZhREti?=
 =?us-ascii?Q?5v8DCxJJNcqAZ2p8BG+p9iYA/B0O+A6etB1eByBEJ3Qk9tyFV7q3Ik9oeZSp?=
 =?us-ascii?Q?UJuNm0Stnf0KqV/a8tJxwGHgkhe+FJq+Bji4gGlrtrJVL6b9D1GqAZcsrM0y?=
 =?us-ascii?Q?oRjoDLUtzF62Q4HScJHWfGQi1mgOYrLLPZ4TJpjYwxbSP23jvAlnGV5hCrzL?=
 =?us-ascii?Q?3xBlqG6RCwgYri3QDPX1pHZx7XPTG6m6MXjOwEm+VvanOSM2TbUbXD7Vl+GJ?=
 =?us-ascii?Q?c1LDV7JoOka5YkJEb4sV0oU6xezaJHhfFv45AWz6H+aTzuEJtG41jyZ6xK2q?=
 =?us-ascii?Q?e9wGK/wFhI3AcbI9XP0ePn8AObAetjfCyyZbC0GNbGExSAxaJSYOvAWPnOAd?=
 =?us-ascii?Q?wL9EHdM0HFgJYYw61wd3u3Rt9fys4dr2xHbKHv37idT697ClWZNtTU9pmRKU?=
 =?us-ascii?Q?ll3lkeo1QPZ1b+iJ/PWmouhElSJ6r34H5Fr3OPFy6wJVP+JqJBzdCYpQthRD?=
 =?us-ascii?Q?eQc840aCDbNWawXUbRut4l85sB4W45T8xgcIrUNYN8SpT4DqhFhIXaJcuoUw?=
 =?us-ascii?Q?BV7Kuu4Ugv7m6ibBJimlnyCikSmFg/b8FPanJGdLYBJ2xM0k8hzGQowFszY4?=
 =?us-ascii?Q?OQXs+kCDlzazAnvBohbsK04nadFckfrV7IbZ3rqfJRyniBZvOPXaH7W6QCu1?=
 =?us-ascii?Q?UMe9AHJTBN42P9kdgx/ZOjwizZ273JRop1//4BERaq1PuZKy+lVdMjjtqt78?=
 =?us-ascii?Q?Ca3TKW5VAN5rx+yDqJIxiJhKgkFvmbFeLkCcvnwue0OITMIxZnWhzP6gbUT7?=
 =?us-ascii?Q?qB9p4VGN21+zNZF7dTXut+bO1ftxDCNXblJItCPKSpkgFFjdwjwMbdcJnrkI?=
 =?us-ascii?Q?Zg1QS/tXYZM6YC61QMWCD3uz?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 11cdeeca-7ca7-457f-f903-08d92c5789bb
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2021 21:34:33.3413 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: o+d6IIbgVlT6rk830JkSwbRVWa/0GA1EsnvH6MaBp4OaR8cDTA+FKsaYC039sFxSDY0DCcvzZtIQwcsdqrVhmYt+mKDZ2KrZWL1TJGqQOD4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4787
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v2 8/8] ice: enable transmit
 timestamps for E810 devices
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
> Sent: Wednesday, June 9, 2021 9:40 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v2 8/8] ice: enable transmit timestamps for
> E810 devices
> 
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> Add support for enabling Tx timestamp requests for outgoing packets on
> E810 devices.
> 
> The ice hardware can support multiple outstanding Tx timestamp requests.
> When sending a descriptor to hardware, a Tx timestamp request is made by
> setting a request bit, and assigning an index that represents which Tx
> timestamp index to store the timestamp in.
> 
> Hardware makes no effort to synchronize the index use, so it is up to
> software to ensure that Tx timestamp indexes are not re-used before the
> timestamp is reported back.
> 
> To do this, introduce a Tx timestamp tracker which will keep track of currently
> in-use indexes.
> 
> In the hot path, if a packet has a timestamp request, an index will be
> requested from the tracker. Unfortunately, this does require a lock as the
> indexes are shared across all queues on a PHY. There are not enough indexes
> to reliably assign only 1 to each queue.
> 
> For the E810 devices, the timestamp indexes are not shared across PHYs, so
> each port can have its own tracking.
> 
> Once hardware captures a timestamp, an interrupt is fired. In this interrupt,
> trigger a new work item that will figure out which timestamp was completed,
> and report the timestamp back to the stack.
> 
> This function loops through the Tx timestamp indexes and checks whether
> there is now a valid timestamp. If so, it clears the PHY timestamp indication in
> the PHY memory, locks and removes the SKB and bit in the tracker, then
> reports the timestamp to the stack.
> 
> It is possible in some cases that a timestamp request will be initiated but
> never completed. This might occur if the packet is dropped by software or
> hardware before it reaches the PHY.
> 
> Add a task to the periodic work function that will check whether a timestamp
> request is more than a few seconds old. If so, the timestamp index is cleared
> in the PHY, and the SKB is released.
> 
> Just as with Rx timestamps, the Tx timestamps are only 40 bits wide, and use
> the same overall logic for extending to 64 bits of nanoseconds.
> 
> With this change, E810 devices should be able to perform basic PTP
> functionality.
> 
> Future changes will extend the support to cover the E822-based devices.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_base.c     |   9 +
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  |   6 +-
>  .../net/ethernet/intel/ice/ice_hw_autogen.h   |   1 +
>  drivers/net/ethernet/intel/ice/ice_lib.c      |   1 +
>  drivers/net/ethernet/intel/ice/ice_main.c     |   5 +
>  drivers/net/ethernet/intel/ice/ice_ptp.c      | 369 +++++++++++++++++-
>  drivers/net/ethernet/intel/ice/ice_ptp.h      |  91 +++++
>  drivers/net/ethernet/intel/ice/ice_txrx.c     |  37 ++
>  drivers/net/ethernet/intel/ice/ice_txrx.h     |   3 +
>  9 files changed, 518 insertions(+), 4 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> (A Contingent Worker at Intel)


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
