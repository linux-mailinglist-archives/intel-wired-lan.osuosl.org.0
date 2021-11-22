Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 986E64590CE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Nov 2021 16:03:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2C17981ABB;
	Mon, 22 Nov 2021 15:03:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pKXbcv2om1BG; Mon, 22 Nov 2021 15:03:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BDC6681B26;
	Mon, 22 Nov 2021 15:03:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CC1011BF381
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Nov 2021 09:58:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BAC4980DBF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Nov 2021 09:58:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2bpAApvGjUo2 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Nov 2021 09:58:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DD48080D34
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Nov 2021 09:58:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10175"; a="233478681"
X-IronPort-AV: E=Sophos;i="5.87,254,1631602800"; d="scan'208";a="233478681"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2021 01:58:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,254,1631602800"; d="scan'208";a="649405071"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga001.fm.intel.com with ESMTP; 22 Nov 2021 01:58:56 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 22 Nov 2021 01:58:56 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 22 Nov 2021 01:58:55 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 22 Nov 2021 01:58:55 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 22 Nov 2021 01:58:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Eqk6mVFAWxOs+wT98GV2/dD6iNZ7YTW8qhEmjhsmPrnl5UY3x8nlG/GaLlohwkjEDy6eQHoq7gS4eI3/8JKkmnG6OUekztyndk6QZ8BYRkz68bU1vvpv/N2w4OJx1IYjSz2dyjDs2JNukCk1ByaU4zkoaRQ/5jUYNPEeiabus8f4k9iy0JFxvBMKeyRfoi0LcxxtQ6dDwO1arhPubd5cw5i1aWYZ6QMzjeBAi59LRE//P0eoTAG10XkJB00/jKwqk/bXHVxkew+O1gdDuxm07wXaAdErGeQoK15tre0wy0nPzYA/3rxb7mSeKrZHMYUIfWdYTpA5ruQBPwCc3Um0Fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cNmRrGZnZpm11NTQIfvEwXgMHBx/SvkH3wxQXV+UaMQ=;
 b=R1e9vmiadaprKyOzrm8PTmYQKtfx8wMTaE7ZX/tkOG7bt69wNapSbSz7YWnJwi/+4bxjHMiPLWQ5x2Jnfc7TvWYd4OAO+Kwu8SEZWRMXnAvMXbqwrbjO/bBx7mrYJRvM07cq9rL5eWk2+D0RBy3sQhiMNhh5ul5bwVZfO7YZUWKhRCwmuV2KZguuxFIHt9dzkztoNzxV8wqFW2tWGYMT+lhsERgjzyXt/QV7XZZ0eCmVFBjWteTPnSeel8curADQY1eJjw7GqdqAhlkRqpT5y9JOj47Xj39gcaGMlUMkclXeksrgL6mBCKGwKOVcBx2LiwGGPUV1JfyiY4fYro/BNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cNmRrGZnZpm11NTQIfvEwXgMHBx/SvkH3wxQXV+UaMQ=;
 b=wlS2mikhTxK+LamOeopZ4s8sW4wu8pHF8ZwaXZRNTT+17ZGgR5hQspbRFYdfPxwY10ii459+ydC+102wN2aX5uaP2HijFKPoetDRYJLivtWj8eC4j/94aq7nE+Pk4NguzTznMthGVKuVuwCN0H28/u89pWPa7VvyB54d5ZCQ7xY=
Received: from BYAPR11MB2727.namprd11.prod.outlook.com (2603:10b6:a02:c7::29)
 by BYAPR11MB2839.namprd11.prod.outlook.com (2603:10b6:a02:c8::33)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4690.26; Mon, 22 Nov
 2021 09:58:54 +0000
Received: from BYAPR11MB2727.namprd11.prod.outlook.com
 ([fe80::4d4:d2eb:1ad7:b47c]) by BYAPR11MB2727.namprd11.prod.outlook.com
 ([fe80::4d4:d2eb:1ad7:b47c%6]) with mapi id 15.20.4713.022; Mon, 22 Nov 2021
 09:58:53 +0000
From: "Kaliszczuk, Leszek" <leszek.kaliszczuk@intel.com>
To: "Saleem, Shiraz" <shiraz.saleem@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next 1/3] devlink: Add 'enable_iwarp'
 generic device param
Thread-Index: AQHXxHZPRLZdYMc3QE2I/Wr2re0FlKwPgJog
Date: Mon, 22 Nov 2021 09:58:53 +0000
Message-ID: <BYAPR11MB2727B6F343B89C65CFC3C795EE9F9@BYAPR11MB2727.namprd11.prod.outlook.com>
References: <20211018231603.1690-1-shiraz.saleem@intel.com>
 <20211018231603.1690-2-shiraz.saleem@intel.com>
In-Reply-To: <20211018231603.1690-2-shiraz.saleem@intel.com>
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
x-ms-office365-filtering-correlation-id: 2a0d03c5-a920-4001-c5ba-08d9ad9eb137
x-ms-traffictypediagnostic: BYAPR11MB2839:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BYAPR11MB2839A954D7187FC7CF45CDACEE9F9@BYAPR11MB2839.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:185;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JGL27Tn8KllXHKOVCHWTx9hrZhnfEfyNALykaRhGc9CMJQVX/FNLSxZGKoRVA2yhHFLLuFPVwLMNHTlsB76K6LECVpbCa3tmxZJVLHFScPL2UCFlUbCbOmuR+dvJ1C7/cXEc08XdLdxpD6GSOWmDfMxCtGWBJUOzvtXwbF2MJCNmA88FuDM0QuKfsg0pNBVb3BNrPNwMo3kI+6bi0Thdo0wZKnJ7A6MTHrqtkPYF2PybM2mv8LHG9MSFTnup+Xeskrmf+ESOq+zxuOZYn1BksY8Do/AHgFcaiQLyI/Ku8jJXXzJkp1+ttDJDF3mr5zzcymhtpFHMaHph/egsewjrkPRxzQ8/BbCUKZxIWThhm3O/+WhojmqY33vDYqQc1vOdFIpkWSA4/cpqY97hPDwdTYKWlLoHuN/Ty2pIU6GO+mHr77yeJ85BWXWSgTSpljho3bn09050SvxPgrwwD94zEgp5FTThJ5CSK96WC58zYlieYDVPSGaW8rCa9Qlml5v68hpGm7IO7+A83up3drDVeYA+GgrC5LBl1RI+PSgqU9jr5lN2PPMGfeiO/eWRpbt3JVQucE+DeCDPYNRFy1mE1/Z5lU8esxXpq2fE2NO+gj6L3p29F9+6XLWuyeIv3DFlaaH8SNU/eizCVgtNb2/zoxzuvCWaYjjA3p3vjWtrb+OHh+MzandfYzzX0tZeqoOXsxJ8vNd0osxfbGI+ItcB6kTqZpKE5GphdTAXPZ/2zJU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2727.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(7696005)(82960400001)(38070700005)(33656002)(122000001)(76116006)(86362001)(316002)(66476007)(508600001)(5660300002)(71200400001)(38100700002)(8676002)(4744005)(9686003)(55016002)(83380400001)(8936002)(26005)(66556008)(52536014)(66446008)(110136005)(186003)(66946007)(2906002)(64756008)(6506007)(53546011)(41533002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?J5lQv0sj1YthzGG6YSB0WBGUFBQU5e1DqyNBscvc+sQK1/HZWf3TPbUGjzMg?=
 =?us-ascii?Q?NlIcTRkt13aEgc1CGDlhl5fQsltINEXQxLTdTr25rQbilXcg63EjSKCON/Bp?=
 =?us-ascii?Q?1+Bmsc6M79G7hN7SCIzs6h9Gr4W7XVqLjEwJq67m4Y8LeblBUfq1Dlg8haFs?=
 =?us-ascii?Q?V359K3258ZZQMwft64zPvM9RFCMQK89Th/ZtgSPF9U8NUdORnZ1ZjH2iMMo2?=
 =?us-ascii?Q?X+GdG5g4EKz5gZl1Q9ftUih82CW352T77+gIQfMNq57JO9PhpMjM3530p+K4?=
 =?us-ascii?Q?E5hywOEoH+wVtNx0H/aJuHFqslZqT4N3cYeuRi4SSUBAsESakrh24Q5XJ1yk?=
 =?us-ascii?Q?rtixfOSWaV30k3RN8Cfy+lZPqJ/uTbx+nQ3uh4UrI5FmXBoGalODgstSAj+d?=
 =?us-ascii?Q?fGE8qCLRCnG95EuDlBfsfi6ibc0zLb7mcDkcSxcHYXKM1s+eKDh2K3nfmzUy?=
 =?us-ascii?Q?6w8b6RqqrG6AMCcwz8yivGFSvTg+JHgmIkqPn3+V1JIakz5sgf7YQAOUipGp?=
 =?us-ascii?Q?snDUeSny5Om7z/PTi26epiuHG7Yv937Vnt1C7NKeniic046l02sFG42bjNhs?=
 =?us-ascii?Q?TOT7KhBvZHKewn1GpL0KpMnrSiROJFahWA6K/EbZd+5ygaMkECqi5vFmIdmf?=
 =?us-ascii?Q?LTtyBHejTEiXEZ3a9rEcEfJE8vmQ3PZx06/ur00BdzYcPq35Uv0F+gZnLpxh?=
 =?us-ascii?Q?LskSneY5Rm2Hgs5/5Xd6RZp9XOwHYsTjb0H8RQJ83hzKFSeCG8l0Z/P4Ig16?=
 =?us-ascii?Q?qC9rw59zPNlXFk1EJbKezMAEFQT3c0lo4oyMt+RRVK8K5TqMRfdZ4LQuvDwL?=
 =?us-ascii?Q?221Dmq8uyyOtdnFo/8CYft49PmeEoeUlfL/MtrEWH8CA0mB6817ZzU9IbGPy?=
 =?us-ascii?Q?HLhxjiSdfCkNTDo2qfDdE2/0KzxOfRx4i0DHgESehgUmk6gABDhYX6laEsJY?=
 =?us-ascii?Q?YoKgNfieKvYQJLsvyFaH+FygQhzqunJg2UTPcOBhFWRC9qxH3XhVvgy6YO/A?=
 =?us-ascii?Q?4+lynLW5xHEnMBA8gaObnE5eLqOE+IPrwymgrdZSd8gqUgjoBCIuLphUX9go?=
 =?us-ascii?Q?Bq5pux24o5FwOT93vzLG7RY+A9u/RR5mNpRy4Lor6DOIfAL3dQCL1hfd0V9/?=
 =?us-ascii?Q?8B68piEpDZwLYmuR/h63pl06JavwjibyS6pu8f/l/ipGfJxUJ3+yhUgDpezT?=
 =?us-ascii?Q?SnI4KmTYYEkdhM2aW2kbj6M7qhpqcWmrtXODrJgbhpdGTClj98WaoJnA2Yqy?=
 =?us-ascii?Q?nQoLXUuOWAckj7MqSH9diZroYL867e8rwZmt0IodJAYKhedXPl9Ph7z5uOoZ?=
 =?us-ascii?Q?4xEPX8RtocoXqNoatBUv+EyKr9J0X7966kRXr1o0fn8doaMKLecAiK3TCE2E?=
 =?us-ascii?Q?8ksW6wyHcdg/LGpqohlihV9WIXGTudIDpRNUcnJJmOrsxYmddIR31U7LOaG5?=
 =?us-ascii?Q?GtygNg/k8twV5XpmdDcV3nXHp31BaF98pSJmWmc30SgzOqdx7Sk5rY766Fy8?=
 =?us-ascii?Q?RM4SVUT5CM0Xi+wCzbeEOKJEufq49iwyc3LOyqn5tybIafm5NH23Nqj+yWN7?=
 =?us-ascii?Q?pVJgfodV2SJG/a4f2Ek5Hf9v9qgKbkSe/0SnYSiP8VtiYoFfWLN3qxvWhMwE?=
 =?us-ascii?Q?hNVIPrWIinYL2IXMLhNwB0GN26J1tq+Be1pkcKhEio3FumQQqjdV/WlTxWRh?=
 =?us-ascii?Q?8O+zCg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2727.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a0d03c5-a920-4001-c5ba-08d9ad9eb137
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Nov 2021 09:58:53.8076 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rn/ZLS6rn2NnkougSRcIMNkjSFyieVxZdrRK4HVUL6fTbNlU/e+V3vavuWbV/qK8vnK6HNjG8DC9x5f2oAHYVnnnF1zpurKG7HiW+9C4Uyo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2839
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Mon, 22 Nov 2021 15:03:16 +0000
Subject: Re: [Intel-wired-lan] [net-next 1/3] devlink: Add 'enable_iwarp'
 generic device param
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
> Saleem, Shiraz
> Sent: Tuesday, October 19, 2021 1:16 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Saleem, Shiraz <shiraz.saleem@intel.com>
> Subject: [Intel-wired-lan] [net-next 1/3] devlink: Add 'enable_iwarp' generic
> device param
> 
> Add a new device generic parameter to enable and disable iWARP functionality
> on a multi-protocol RDMA device.
> 
> Signed-off-by: Shiraz Saleem <shiraz.saleem@intel.com>
> ---
>  Documentation/networking/devlink/devlink-params.rst | 3 +++
>  include/net/devlink.h                               | 4 ++++
>  net/core/devlink.c                                  | 5 +++++
>  3 files changed, 12 insertions(+)
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
