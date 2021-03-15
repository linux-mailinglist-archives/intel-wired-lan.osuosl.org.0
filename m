Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E6B3F33AD35
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Mar 2021 09:20:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 95B3A4B158;
	Mon, 15 Mar 2021 08:20:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Oe7fhTNg_c-g; Mon, 15 Mar 2021 08:20:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 497B046637;
	Mon, 15 Mar 2021 08:20:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 491EA1BF2AA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:20:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 349656F52B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:20:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kv3s-N75DhJm for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Mar 2021 08:20:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3C6636F4E7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:20:26 +0000 (UTC)
IronPort-SDR: 9jfAeZHdcEKy/ooVpwtp8AufstMVvDI8qJT6C5LMC7L4V4y4THBVAX+D+TP1VxcDLkl3C6UUfb
 +LRAo8atnADg==
X-IronPort-AV: E=McAfee;i="6000,8403,9923"; a="189143737"
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="189143737"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2021 01:20:25 -0700
IronPort-SDR: Xw8yplV9Yn8ZvSsfAg6mqIshKvWnImP9ilBgbbhhsqJJr16g6k3Sw61fQhKcjmCWHxEIlXVmVI
 2yGiwiDc68rw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="439683857"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP; 15 Mar 2021 01:20:25 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 15 Mar 2021 01:20:24 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 15 Mar 2021 01:20:24 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Mon, 15 Mar 2021 01:20:24 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Mon, 15 Mar 2021 01:20:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dOXw86TMiDoHWSveIw7bq/lXIcAZiWg39YiJn7k86D7EwFqso1C8A+NdZqWi4AbwS+TZjl3/vP8NR1Oty7bbHoQfC+F3FcRz05LqTtmkhQhNNIm0UAkOMOhAy03yMD/FeeoENamtWsFzwR/JSK+C8l2SPVYXuQ3GqUFggJ+XALsGwWmUrCTtjPWfKWx+Hczo33NUcIKIeSQ9wxgANivPVTyLJPWpIzsbO1ft4Hbd2fDNrOOQhsyxnSA5/XozchbEnBBTvZnkrqKFhMwnJqvtf+LB5dAeEZI3GghvsPo1v5XPUlVCtnok9vITl7+pBhtGCprWfuUT+QeTi5JfzCKOCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ca7p3ptK3ZgzzTLzjW4hosWolUJeP9fNQjtwcQaPSpw=;
 b=OvJvrNY65WSqo+R9xAVEJZ+XaMw/osXmwfu/wco27t9+53H9SysU4tXXVYsZyd6yyFtUf92CWbuQYivOr+ZFk2vqYoMEhY5sp29Jzm4nFNrqbo/B24weTOl16UK5mBvznzFHaoYZYjbbRQZFpDyaYvkwG7zY1c0yTylm/mcuJyfatbz1M3i5bFmqCCVzJ92sQJf0GtR15CE8RJWx6MYSm0TovZYOwIyi4qUUt6IFR5XLwcL6MGyLnXyt1Puh86K6LgACu3jDOj3/8JsjApJfwoMbSPzJfrAl//5nXgQK8MiYHFmdGldmwIT2IcEL2gxFQENzc37dH68GvW/spCeMYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ca7p3ptK3ZgzzTLzjW4hosWolUJeP9fNQjtwcQaPSpw=;
 b=LQGzP9YwXMHG3sxwKQxyxRZfbm8Yd4UPKyC2bppFFDITCLi8PaARBFxPjqia8Y6AwwQ7GtWg2MRAbMKzuPbRGbPbfbfuGpjbg2uqVY0QQfaQ575LTMqXsTaZ13S8uT4HDWGwP4+xb+4M6m5sRpeITl9cLudZfAmhlEZlrXRpnJw=
Received: from BN8PR11MB3795.namprd11.prod.outlook.com (2603:10b6:408:82::31)
 by BN7PR11MB2801.namprd11.prod.outlook.com (2603:10b6:406:b4::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.38; Mon, 15 Mar
 2021 08:20:19 +0000
Received: from BN8PR11MB3795.namprd11.prod.outlook.com
 ([fe80::ec6a:25a8:8c59:89e]) by BN8PR11MB3795.namprd11.prod.outlook.com
 ([fe80::ec6a:25a8:8c59:89e%2]) with mapi id 15.20.3933.032; Mon, 15 Mar 2021
 08:20:19 +0000
From: "Wang, Haiyue" <haiyue.wang@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [Patch v5 10/18] ice: Add non-IP Layer2
 protocol FDIR filter for AVF
Thread-Index: AQHXFJQY6qTRprL4vUmPMoFmp1M9GqqEvtCg
Date: Mon, 15 Mar 2021 08:20:19 +0000
Message-ID: <BN8PR11MB37957CA9B65D2897CB874027F76C9@BN8PR11MB3795.namprd11.prod.outlook.com>
References: <20210309030815.5299-1-haiyue.wang@intel.com>
 <20210309030815.5299-11-haiyue.wang@intel.com>
In-Reply-To: <20210309030815.5299-11-haiyue.wang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.0.76
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.55.46.56]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f7d0900c-7d25-40fb-f8de-08d8e78b2bc6
x-ms-traffictypediagnostic: BN7PR11MB2801:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN7PR11MB2801BBDF68DE1EFCD83A7470F76C9@BN7PR11MB2801.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2449;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FuOu0PUqR/p6W6N6OVX2OzMs23Qv7jcBU98eFN2Q9TtgMU4m0L6tAAEYbtWqC3MBdrxHMNvUZt847gF+viJ7Lx/un+TxRC6nM1ZUE9nWHwyV7NRBs6PtgvEh/avJzkFcYly1x8n/HIQM/S6iCjzgfFzZkwucKAyGcm99fIlR9b7MlcHFdhKJZHtDczqhPxpKDMFyZXOoJhh5f88OBE1PRi4pBGXj0KAUt3xMIsFwyy0rdm3jT6Ms/VwIhlKciXYDuEI+Enb11b/JVHB7P8YVszDMaKrnaOvlWVFKT9EejYxqY2hulA17Sz+7hKoHRMukFT7yPLGfCq81VNla0+TtAKVwWH6NzTzlIZ4WrQ5NzibHNuN558T/+D2swOOddzZvdaeenQ9PpnjfJWWBHziwcOoDreldntG0GwdwAa7+O+gacTgsgBjIF6uD7KMqFZKx+86TxKLY+bl//yplYpVBd2p5aoikhufMQ1rfL5ySNqrqicKKxajBMXBgGQKBLHm4UTCU2x37updLtzLllly7CRp9swYVnki4soZO4yvnHEKN9YltRPkiWBzhlkxn0Ip9Js9uME5i3hHxnrRESfoDig==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3795.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(39860400002)(136003)(396003)(366004)(346002)(54906003)(2906002)(52536014)(71200400001)(64756008)(83380400001)(8936002)(76116006)(107886003)(66556008)(316002)(5660300002)(6506007)(66446008)(4326008)(8676002)(55016002)(26005)(6916009)(7696005)(86362001)(66476007)(186003)(66946007)(53546011)(33656002)(478600001)(966005)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?AIoOPhd0W19PXIajsA86T1+Bd3yOLD+zEVlS8fQGHCgaUo1xg7B8d9G+w3Nw?=
 =?us-ascii?Q?VgjmMrnsQrLMKKwAZcwayEhd+7UOhiwbzTI7CVbKI326mISZRUMziR86t8Py?=
 =?us-ascii?Q?6t6Y1q3cPyfmZ7FvsqDRGPpWeHB6OG8co/3UXngmLxDfDuy5xOrBTVgrHaaG?=
 =?us-ascii?Q?6NcVTD58pP4kYtbnoMgSK7tA/LXnJz0B2VjFc5tSgws7i0AIxzcKnRjMxaGB?=
 =?us-ascii?Q?W5SWgvnUAHiNQ8NWHNN0bVBanSC7wPdQAqp5/AuF2uj0b7Pk/pGS1vGQein6?=
 =?us-ascii?Q?xG/tDaWJAflc0WJgRoKaiTPMeL5XBsSKWf0AxJDTlNorM+DUKcekMJ7XU9vv?=
 =?us-ascii?Q?965Qw652r6/e97PX113Rc/lHIsE/Sloyr7N0ItZ2TZ20RG7PTeB63gAmUc9N?=
 =?us-ascii?Q?7pHczjQvhOSfegUaWefxrfO6PB6oYYcbTyXts00a1tHBdhBWlonq6WModOE7?=
 =?us-ascii?Q?bN9/AZiCeYHkpfs0aduU/GKB5OI2XjsgoTZGzMM2o6gdeqiwDZIUPQN9biRA?=
 =?us-ascii?Q?lCK1hev3IyFB+XreM3yP9L3hVM1z4NMlWw7/h42FpYrnEVB9GKyrZmQfca1B?=
 =?us-ascii?Q?TPUJ7uzpPHdPFOeJN9yLPmE/ZteiE3sF97W55xn8ATjZvuOV/Bjm73aCMgvU?=
 =?us-ascii?Q?/6/8HYuwQw2CHH+VJsWd7g04fAUBkAlGQdZ3fd/a3ZOL3ys8QaVlKbe7rn4X?=
 =?us-ascii?Q?cYnmiLtCE+ers/TcwWem5l/sMvvvymcoXRrJvMS4vdiw+wGl3iMHhJdsYYNj?=
 =?us-ascii?Q?RDaa0qrWCPe0iY600BSSpyWPxsKhppk6oVpyMvBzGnZXK1Tyv5rkEIzWTgNl?=
 =?us-ascii?Q?7wsbzwf5zI+/GLsgYCzeQo4ukoBnLzZvl0bBDi2suMzkriP7cng2i69+6tcI?=
 =?us-ascii?Q?qapWuaao6parbJnKDbsCl0S47LOIfZiuTGEz81YsMWW/baH8sCLmTx/dq1Po?=
 =?us-ascii?Q?g9wFmXPbSpbbwhhsdVIFD83zZdX45PFprZby9KSgkUlo23/hnDj4MWVepEZF?=
 =?us-ascii?Q?M1/luJ3YOIosMQXDB2eEj8FiSmXGvzmI0b0BHmNR+qo9kWuqZQVkwjffw8q3?=
 =?us-ascii?Q?lJOoEdHYzZkPVItC+EU5gp/uYWwf9gjt7UYIxVaA6nffeclxWuT6PXjbvY5s?=
 =?us-ascii?Q?i5WS9Le04LYwJyyk2cXVcet1ZYbPCUtOrTzcaqJcrGKXs85o+cQ6ARumdbPG?=
 =?us-ascii?Q?VjnsZblY6lbKI6l84Flrai5+FXkgRg5ONZz9O4LcgCXq6sPhsu3fto7mMCKi?=
 =?us-ascii?Q?Q9yBz1qNiKJLeG0ealkoLNsLuKppJbuDzyXpVGP7pPjEMjcE+/XDCpKbgfzo?=
 =?us-ascii?Q?0G+egb2DEzpleZXBRdiMzAiY?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3795.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f7d0900c-7d25-40fb-f8de-08d8e78b2bc6
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Mar 2021 08:20:19.2046 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1FpTBH5RZsztwVnQV6OSALtTN+GOG+oZbNSJVcj3aUOagbt5z6ZfQczc/lSsiEHoSksEAokiMzLeC+kJFxgyag==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2801
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [Patch v5 10/18] ice: Add non-IP Layer2
 protocol FDIR filter for AVF
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
Cc: "Liang, Cunming" <cunming.liang@intel.com>, "Cao,
 Yahui" <yahui.cao@intel.com>, "Zhang, Qi Z" <qi.z.zhang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Haiyue Wang
> Sent: Tuesday, March 9, 2021 11:08
> To: intel-wired-lan@lists.osuosl.org
> Cc: Liang, Cunming <cunming.liang@intel.com>; Cao, Yahui <yahui.cao@intel.com>; Zhang, Qi Z
> <qi.z.zhang@intel.com>
> Subject: [Intel-wired-lan] [Patch v5 10/18] ice: Add non-IP Layer2 protocol FDIR filter for AVF
> 
> From: Qi Zhang <qi.z.zhang@intel.com>
> 
> Add new filter type that allow forward non-IP Ethernet packets base on its
> ethertype. The filter is only enabled when COMMS DDP package is loaded.
> 
> Signed-off-by: Yahui Cao <yahui.cao@intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_fdir.c     | 15 +++++++
>  drivers/net/ethernet/intel/ice/ice_fdir.h     |  2 +
>  drivers/net/ethernet/intel/ice/ice_flow.c     | 17 +++++++-
>  drivers/net/ethernet/intel/ice/ice_flow.h     |  1 +
>  drivers/net/ethernet/intel/ice/ice_type.h     |  1 +
>  .../ethernet/intel/ice/ice_virtchnl_fdir.c    | 41 +++++++++++++++++--
>  6 files changed, 73 insertions(+), 4 deletions(-)
> 

Re-send to Bo, as a new member.

> --
> 2.30.1
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
