Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 504734590CF
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Nov 2021 16:03:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E17778195C;
	Mon, 22 Nov 2021 15:03:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gbkmn_a89j2M; Mon, 22 Nov 2021 15:03:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 95D0481B9D;
	Mon, 22 Nov 2021 15:03:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 105F81BF2A1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Nov 2021 10:10:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0B28780E05
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Nov 2021 10:10:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m1XGIFuItleX for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Nov 2021 10:10:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 43AA780D7C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Nov 2021 10:10:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10175"; a="295568602"
X-IronPort-AV: E=Sophos;i="5.87,254,1631602800"; d="scan'208";a="295568602"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2021 02:10:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,254,1631602800"; d="scan'208";a="739134291"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga005.fm.intel.com with ESMTP; 22 Nov 2021 02:10:10 -0800
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 22 Nov 2021 02:10:09 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 22 Nov 2021 02:10:09 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 22 Nov 2021 02:10:09 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 22 Nov 2021 02:10:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g7WyWmUXmHd7lfPrK8aVwKximQgYUGcpRlnkQuuuShtpXA8ZkSP8e/zvr0jwkl2AwUo/8lT2w2bW3TEPFkBGSQ20ye+jbTnN3LvhHDsuAMOy+T0Z1GlOjzlGbaTq+ZfDXCAJJyj4C8wtfTmB5lh9tgC/PsSZWxyDsMXzhRuqht8onp+LAyV4x/kxaPN3gND02SHVseubnLDwCiN9v+kxyslj3W3aXOAWrIbXqcp8aNY9B8sQE9tcPkB89dfGi+K+Xfy87VNG4lK9jtqsKQtHFYgey7agZsZmiqddsoN90ytCVVBM4efJ1zDMTsmh2eHlCQWWjYihKe3WjSpn+9o6YQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5WVHgE7Fq794TCGLhrTyTwzPaMUTh2eCSkIRMH65TFE=;
 b=VuzVmOyShUedohaDEfdSKsvWwcGH6JR2l+gER1KeRGNto1g8vfN3g3aIzfYmaWG6tXUh0Fcs5hJP/FwClQpGYycr5XiBcOpe7Uoj3ZQnoNtWCkQBArR+oHA86qmiXvDhIQqhz9V1nmd8h6TnT811A3goPdSvlAg/pUvqmrJppscmsOfZ6OC5aHwjLvB9C6jRBmR1UaCfbkD0CpI7P0hg8+FSYZ/vk0tlon1bfuLNzuT3IPwViLRcTIiMc6QN9hRysjJOaQxn2xUiukawXYRFbsdJ4u4bKm06JNaJfjewMZQa9kq8eOw++qhNMZ6XTwqv59uWp4o6gsv5gc2UHi5LjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5WVHgE7Fq794TCGLhrTyTwzPaMUTh2eCSkIRMH65TFE=;
 b=OEgsSM0gaLAU4G4KCQ51bzAF3zCLAnSqtx7xOPK4AUdZsZqpkvYVRpEPlaImku5y/9rI9r7zEq+6yojGMJ3JvUFPhzHXFl/4qE6unGmwt3B6VesdGdOUhJuZdkwn2b+Xw3H0UVxNcNfO9LCIZZAHunBk2YkJlyC2CdrIlsJ/zZY=
Received: from BYAPR11MB2727.namprd11.prod.outlook.com (2603:10b6:a02:c7::29)
 by BYAPR11MB3765.namprd11.prod.outlook.com (2603:10b6:a03:f6::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4690.26; Mon, 22 Nov
 2021 10:10:07 +0000
Received: from BYAPR11MB2727.namprd11.prod.outlook.com
 ([fe80::4d4:d2eb:1ad7:b47c]) by BYAPR11MB2727.namprd11.prod.outlook.com
 ([fe80::4d4:d2eb:1ad7:b47c%6]) with mapi id 15.20.4713.022; Mon, 22 Nov 2021
 10:10:07 +0000
From: "Kaliszczuk, Leszek" <leszek.kaliszczuk@intel.com>
To: "Saleem, Shiraz" <shiraz.saleem@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next 2/3] net/ice: Add support for
 enable_iwarp and enable_roce devlink param
Thread-Index: AQHXxHZNxChX1+cgFUOTEe9X8BItQKwPiEjg
Date: Mon, 22 Nov 2021 10:10:07 +0000
Message-ID: <BYAPR11MB272768549B7804453234F1B8EE9F9@BYAPR11MB2727.namprd11.prod.outlook.com>
References: <20211018231603.1690-1-shiraz.saleem@intel.com>
 <20211018231603.1690-3-shiraz.saleem@intel.com>
In-Reply-To: <20211018231603.1690-3-shiraz.saleem@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.200.16
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b9339c32-d40c-4c3b-01ed-08d9ada042f3
x-ms-traffictypediagnostic: BYAPR11MB3765:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BYAPR11MB37658F1FB4F7918A115B3C88EE9F9@BYAPR11MB3765.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2887;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Y33l+ms6hb/hovU50MMlc6wODkcQOEUEMcUWYh1NUYwkZtGBOhaZkyZArF2HcZsnJNTHP8Z1G5Jza4cLzctSJ/foOkM/95PogpQpQvYVbeFzKshnI5zqdMduzVVUhMjWYS0zvxhUzm8b8DvH7K7Mf1zmI8vkft/ZNE3WtGus8gnyCRutA1pGy2HWq+hy5Q8jJK6hCyJRG6oIj17QA7foo6XXRnACjCzFLcsgJcz0XALizzzgLH0LnFe5ieMrpHjgiGI6cyAR0VneeY7FLTguRf4YV/hatKkBL1+ymUlDET9K/y5Fm5+K0OiLd1yLV3KJ/zQtsE//c4zMYv8iKggAvmwYVD+BokjDCwfnH1kViw/uXt048yBN8tsStlCOIXq0VczCqIUWVP7DMDhz519KebjP/H++mjg9SjWSdVm+49tv25m2d60Kintw5MCx1lZ+ahGxdFUjyzmZjkba9FVVEQBs7/YE2HxTTD1aGFk0DonVtKt98W1hTSxqhdM5OgyyqMKeYtOfRZpNOLneYMzUWpJQc/c7cleDCdzhYWrZ/i+uM94/QUjKCCFax/wSsShYcBcR8vPhv1APwCCtPbFBYn6l86HeCVVKnaIFUdAfz4dia5N3b/EjKuw3I/sSqG3msbcqYWacG1wV6eqF61Yf+VAEDFtLTgSaUaw28LW78C2frz1ZouVPEiMMQ7MN2eKuA5aMJqUkAJnf0XYcd5JP3Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2727.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(64756008)(316002)(66476007)(52536014)(86362001)(508600001)(66946007)(8676002)(38100700002)(122000001)(66446008)(5660300002)(110136005)(53546011)(66556008)(82960400001)(76116006)(7696005)(186003)(83380400001)(9686003)(71200400001)(8936002)(33656002)(55016002)(38070700005)(2906002)(6506007)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?VlIAozprwPRk0QettQbgc/dOPKlv5vVuvEQC5oJaEbNbebo0PGplBrIWzj08?=
 =?us-ascii?Q?b1FKk/B9M4TGii+cMO+M7LJkclywehdk7jVfagepZ+FA7woBjIDH3hxqvCyt?=
 =?us-ascii?Q?FJWTcKI+gBjc4wfVzXGvCutwKVk0vuOoX5DUqFhMS2+r/bEXpR6rTJwCMfV2?=
 =?us-ascii?Q?m/Yezt7LUNAf6hR89mNqq7DxVgVOpIRC+4FZQuD6Er1v5JMlErVv107QyJss?=
 =?us-ascii?Q?6c077Af/ktvDaYzHS3Imh+KTmVUKLTv/0x24UA/t0dTx0x7CN032iMBnxxTy?=
 =?us-ascii?Q?GSKIdoilA0DtzbGfoUqyOzLjrtXyGo2bNa3ZRjiJ21gGad0TtOMS/W0MEtju?=
 =?us-ascii?Q?/+X9svly+Id7Jw65gnAFfMpqiLQvZsd3ishIJcNAgjwzLgD/kVthu2ZkrjC7?=
 =?us-ascii?Q?CmSJ6pWoyymwitKVEcjqma5yTw5uqT4i+8ZBevCml1n41B3vAW7O5yW79Spe?=
 =?us-ascii?Q?wCwUQGgAXFa2OPfXSGlYRz0rMvTTjj16iN3s2eU/v6e8UX9HAWtqkeirJJ8D?=
 =?us-ascii?Q?iCxUMOQNiAdh9s+a6tASx2LOaQAVn6QCHSdPBFNrsrIDsfBgEfTwC5svLmTO?=
 =?us-ascii?Q?Im7gwQqLy0PU8mK9bOfc7zJdFXwCluHc05swj9Cc/HDQ9o9P86nWA7kMK6dD?=
 =?us-ascii?Q?wv7IbX8Fr8IYyBhGfzhpvykEILJsMIQvKsvfeI7ZVNSPWpZRqU9E8+K1fLvl?=
 =?us-ascii?Q?t33SxMgd1yPZu9xp1k+o4Z8O9OH5je+AmD0RVm9h5cwzot7Ls3gH2BHKvBE8?=
 =?us-ascii?Q?WvfYtg0yul2yE+0tBuL7u9L+6L+2ZcudrvDiPzEzHSOPVLZf/b/fakbcd9Rj?=
 =?us-ascii?Q?8pVGq+/sX8qzKAPUTKLYXD+kj9omDOk//b2MyshI48v6Po4mBalkMv+gpPB0?=
 =?us-ascii?Q?3qYJkqNUOtc69bxyfMDe463l2G5fWLbx0dAIVqGlfi3Xpy/RQui2q/Sj511f?=
 =?us-ascii?Q?vIN+i2nc/bcLb9dy5PLDPoaeygC7VKiRDe8w77DA0fYbAqbhTP/y6qR7UfpR?=
 =?us-ascii?Q?ulk0sEEFMLPm4X1Nf+15L2blMKDAEgq6cd6+Gv8sSdkTobO2O1o8maakF98k?=
 =?us-ascii?Q?+HFpqx/up2wEkabsvsSzJvA4zs+Bk2Zizr0iLxk3ibA0m9sUh9VBA3g7vMIV?=
 =?us-ascii?Q?OvBPMkxam/sTiQsKrLIemdwx7panV6JWJFRC/gP+pVPgvGT2bIJTLicOyprS?=
 =?us-ascii?Q?py4QySpFq2ta/KjIwSoSpuAoyC8TDUw8esYCne6vRawzpzVTF3VtT0v6nMNj?=
 =?us-ascii?Q?ws3OSTX2/wKizm0cU+rHpbp6lz9F769PmcWR+DfilgaJj1Q9RRKdziiBYMYJ?=
 =?us-ascii?Q?7+RBByB5BQM+4Z/ZnGA1K+OuajWLG0rnEtIRKXwkGl0HwTIOKlPe/QCfr4+N?=
 =?us-ascii?Q?m047qt6pLcdRmQqgM8vIV48tEY9yawimZECdvCFygQSB9T/Y7quezUJ181/c?=
 =?us-ascii?Q?wTLPxjf1LCZKW7OC+d1jdcblT5Fy2XjjrUPZKPL38PcWVcDDSNCFOhlEsJql?=
 =?us-ascii?Q?/50LwxKvn2ZCePZpK0r0DVdkdH/uHGmc/BRZa16VRl5Ajxg3rw2KZ+kwxeay?=
 =?us-ascii?Q?hXRmVwnbsGQ5tSjVFfY04oYS0ytnqGBonmFtKN+D66D/6EJyx55EjOG/+Ba+?=
 =?us-ascii?Q?BStS0EMIzM74yXtZOeKsDXDk9hqghN2Cg/T90kLe+a3ndKLJpMjrC59etX+a?=
 =?us-ascii?Q?qGZ4MQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2727.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b9339c32-d40c-4c3b-01ed-08d9ada042f3
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Nov 2021 10:10:07.8650 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4hxOXmurl+Cl8nFOpMXfJ0Nm+sX7q0Pbb7g6z16jkcFg44FlZgkkHXv8aXuTehT9mHjRGxZBykc7F4dHQBMxnHGr999dxVhJaekC8t6oajU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3765
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Mon, 22 Nov 2021 15:03:16 +0000
Subject: Re: [Intel-wired-lan] [net-next 2/3] net/ice: Add support for
 enable_iwarp and enable_roce devlink param
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Saleem,
> Shiraz
> Sent: Tuesday, October 19, 2021 1:16 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Saleem, Shiraz <shiraz.saleem@intel.com>
> Subject: [Intel-wired-lan] [net-next 2/3] net/ice: Add support for enable_iwarp and
> enable_roce devlink param
> 
> Allow support for 'enable_iwarp' and 'enable_roce' devlink params to turn on/off
> iWARP or RoCE protocol support for E800 devices.
> 
> For example, a user can turn on iWARP functionality with,
> 
> devlink dev param set pci/0000:07:00.0 name enable_iwarp value true cmode
> runtime
> 
> This add an iWARP auxiliary rdma device, ice.iwarp.<>, under this PF.
> 
> A user request to enable both iWARP and RoCE under the same PF is rejected since
> this device does not support both protocols simultaneously on the same port.
> 
> Signed-off-by: Shiraz Saleem <shiraz.saleem@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h         |   1 +
>  drivers/net/ethernet/intel/ice/ice_devlink.c | 144
> +++++++++++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_devlink.h |   6 ++
>  drivers/net/ethernet/intel/ice/ice_idc.c     |   4 +-
>  drivers/net/ethernet/intel/ice/ice_main.c    |   9 +-
>  include/linux/net/intel/iidc.h               |   7 +-
>  6 files changed, 166 insertions(+), 5 deletions(-)
> 

Tested-by: Leszek Kaliszczuk <leszek.kaliszczuk@intel.com>
---------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
ul. Slowackiego 173 | 80-298 Gdansk | Sad Rejonowy Gdansk Polnoc | VII Wydzial Gospodarczy Krajowego Rejestru Sadowego - KRS 101882 | NIP 957-07-52-316 | Kapital zakladowy 200.000 PLN.
Ta wiadomosc wraz z zalacznikami jest przeznaczona dla okreslonego adresata i moze zawierac informacje poufne. W razie przypadkowego otrzymania tej wiadomosci, prosimy o powiadomienie nadawcy oraz trwale jej usuniecie; jakiekolwiek przegladanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the sole use of the intended recipient(s). If you are not the intended recipient, please contact the sender and delete all copies; any review or distribution by others is strictly prohibited.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
