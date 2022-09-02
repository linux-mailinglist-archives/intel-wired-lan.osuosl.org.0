Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BB865AA7B0
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Sep 2022 08:05:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 87FED81A73;
	Fri,  2 Sep 2022 06:05:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 87FED81A73
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1662098742;
	bh=jS51lW7WrO0MpfuSRhBXaQX+Thspc0zgoFCfNwx1KvU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YXZSZWa2nW21365Os+C6eyJbip0Fy523zbvuyVvEow9W1bFcDwf6ekSf3cd17aPIA
	 D9lHqRPfSJOa9FcvIvKC7MlbGI0lcAPQktyPR0SkzX62rMJmiD2QEHX34y6xO2CG/Z
	 3f+q4PGo4CQnrlIdpIaUnsBvrosJO4dS1ggzoXlUoNP65FT0zUBvEfVhTeNsT9uVQt
	 dIJZWgB/8Y0kVtJ6PxLNFi8RN2AIKSWXBVhoJsqdhF333G6u5vIjGSvfKDUQkn4MyZ
	 8RADtfRZ38yKDqkNCGc6Wbxb6IvMShfuhldyrY+C3JPnxnc9Ef9lNEJUG1OpW3xeKf
	 +ZII4uPAJoTzA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NSHutYsoB3oW; Fri,  2 Sep 2022 06:05:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 431D9812F8;
	Fri,  2 Sep 2022 06:05:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 431D9812F8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7DB1D1BF870
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Sep 2022 06:05:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4E7DD4163D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Sep 2022 06:05:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4E7DD4163D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QIYaBKj6d5bL for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Sep 2022 06:05:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3C3B441635
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3C3B441635
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Sep 2022 06:05:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10457"; a="293479766"
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="293479766"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2022 23:05:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="563849002"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP; 01 Sep 2022 23:05:32 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 1 Sep 2022 23:05:31 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 1 Sep 2022 23:05:31 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 1 Sep 2022 23:05:31 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 1 Sep 2022 23:05:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TNRm9pZUjaiAn6vYF+3scw2+z1RQggmBKLY9BvsK0jB95DbZiwqXrVLq1jMhq5ZdR9E6DK2UHi5kTJglxbmNi93Z1fs4phHOBiCrOpCTdjswkAbZYDOoZ9s/P7uKqKpLePjpylodJigjeCGshbFUkQ/iBvPRQygp0A2pRulFq5OT1mBfjmHWX5ezX6/CH5QXHt3ioBBIJuudIkpX495pB99BcBD8AxlpLhsxjFI5yh22h55magpRjnB93b0Q+65HMBwn9lsJkjoSgM5yDUx8xkCbMqPcA93P4FCks2tq0qwF2jsEXfjBFCnQLsbp5lzMpNqOswg53ctQZbBG59wIhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aIncHbaOAQipeIcQeXpB7M+hV6TkfrH5PXRwxwuCFsY=;
 b=JSNvyeyBDh7PgNmx8b5HpvTo0WZ/Wir5zP5y8+RYuol44+v6hC+eT6BwEvK+HNmTCbPSS8OU+fHHQpvPa6zgS/fQIW4hy40AdJ0hbCqjGd1eK1OK0+xuaZ3eH1WMMEB3TnNlgJ1wj2gT2Crl9qTUZUvSctJGTqLObTHRskaHi3YhV9G77908VibKU5VB0PuqX1nWmm1uzK0rNJmQP7DCziJbLGz0nlltLt/iqqftNHYWj7gn2VAvntCkDk1L98Mb/D+knKurC35rWKq9eyEJkDws6FOtQP/pOjMUHq1rxI8skzTNp+IBDqB3qHFybQOU7meBnuZVQYHytwrP3yOqmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 CH2PR11MB4423.namprd11.prod.outlook.com (2603:10b6:610:44::28) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5566.19; Fri, 2 Sep 2022 06:05:29 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::f43a:da9a:b75d:e4bd]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::f43a:da9a:b75d:e4bd%7]) with mapi id 15.20.5588.014; Fri, 2 Sep 2022
 06:05:29 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: ivecera <ivecera@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] iavf: Detach device during
 reset task
Thread-Index: AQHYvEjp4Yu/q51mJ0mt3lC1j4/Tc63Lq1nQ
Date: Fri, 2 Sep 2022 06:05:28 +0000
Message-ID: <DM8PR11MB562163A58A2B970434338D2EAB7A9@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20220830081627.1205872-1-ivecera@redhat.com>
In-Reply-To: <20220830081627.1205872-1-ivecera@redhat.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 99792f8b-bdd9-465e-c634-08da8ca9230e
x-ms-traffictypediagnostic: CH2PR11MB4423:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zGEIIH9JFK9L1BvinPglplt721vLJIDl3ZGYx9wCitiuXMvtvaqwSXvu35E5vWSPPsr5/bTvDaU2JsAHu+b46HRC1LKSTh4Jvp0askd6euPIoREO4HdkCCV6XGKkgxtOImdbNDAd8PBjKPNS9FWmzdkPH7ZgFoNBmNsLyhpJO9FRfZ2D+2F8lGGIvwPkZrSw62pLEFfARxJkRQTTzPznZq3KD2TDOmrcalu0Jx060zdWh01cuQGD9YSBwBBC4ns5F2jexUA3kIZCaHTvQURQHjlaRY45nSGE4K1DhMhZ4AC6GgAeq99eMHgjlzF1/nA6H6NiZxMkwM+PPYmCfAPMXMMDxn3P3UltOCFcuidaLprAtqBFZtR/Yj1CSgPwlzspOZGd8dJvxdzBvAY+szR0NuVZ0jC8uraRQa7kSXAN9a7Oz1s7DauooHkc80qok+9JyI6FIAKpmJp6Pj6Ed4K3V3+7xq21ipuEwRMh2OfzHnbEjFw22W8+yjfkiUUXUaaqXq4ZDiW6jld9WYO6qA+TkRDh/1m/1kuNvje6zzJ3ggLJZLRWlZyA+brJvWFizTC7LwiEO88vQyXs5AgyL/kYWfBDsorHg73OSj0P8m7N/3GM7oz1491WzfbY8fK8d0RI/2IwTlaO5tgypnVtaz0YjWIHbJmg9jhwUN7tsc6BBbHJxjyQ4zGqSkQmfxPkdpoffBNVzXQlJZkqSkX2CXmsYkl/qetuY9LKt4u+Zn1WKOOg2R5KgvsT33oi9Z9Dwiz5
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(396003)(346002)(376002)(136003)(39860400002)(86362001)(9686003)(82960400001)(76116006)(26005)(53546011)(71200400001)(33656002)(6506007)(41300700001)(122000001)(83380400001)(478600001)(7696005)(38070700005)(186003)(8676002)(66446008)(55016003)(66946007)(8936002)(110136005)(54906003)(2906002)(316002)(64756008)(38100700002)(4326008)(66476007)(66556008)(52536014)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?259cyaadjsm9ES7g4ox9+AfF7GsM+YqeY1Wl/MkQHYnubC8xIQTof9Q8jopE?=
 =?us-ascii?Q?QpxUsgiGVtSsu141DErEBrEYFFcKabgz1istVvtXz19slG6qUkqxMHpWB/Zp?=
 =?us-ascii?Q?zrWV8VAQdwYQCcVjRYKGR0m2plO386AqLLZYQV4iWpEf/b27GwoilPbER3RO?=
 =?us-ascii?Q?ztSLS4eFfhM9fycqmY8kvsh2zgbDvrWL7ATMko0sS3C2BDIHmw8GqBc5pkdD?=
 =?us-ascii?Q?q9PXwW2GPXR4uciczGNNxon+4WsQvpdCAmBl+J3IaRFtvzp91jlU4yu6MuAn?=
 =?us-ascii?Q?OPp/lvd167bSMXwOMHOJTuX3spOtm1z+MK/Fkn3YiAi11VO19+8WSFTTZ9Ir?=
 =?us-ascii?Q?SjjYnE2ddD1o9FD0TWcA7fRSxlQE5zS4Jgc+Tnv91I5fBzHuQhWhyIbss7SM?=
 =?us-ascii?Q?B9N04cCTmoYzqUFYXzoqDLDv9vgaB3sWTS21ZnRERyRGM0da6CU9Cd0yCWEy?=
 =?us-ascii?Q?+tS+wxme6O2MKS6TMBhweYbt3k2aYry7GMZ6fHvZSQxKtUtbwOxE0IOeh0Sv?=
 =?us-ascii?Q?HMkHWZ87/UqahrqyWvzcUJarENKdLGdKFwNYjKLrRl/mj5AsVl4KsVTlu5eG?=
 =?us-ascii?Q?ibacifZ3Vr8ja08AlfRgQCZKXlNUSWtGp4akZ5z+6OYw3L+vv/7Ar98riZKi?=
 =?us-ascii?Q?sInK1WBbg89seIIjqf9+nLADau3NcK9khn75YYGU4clSrpsOEqX0Zwbh38Cy?=
 =?us-ascii?Q?f2uSjdVdBOXEAIubPkmWtJo6nQr/c5Ip2hU49rsBFUXXw8iOZnnLJImhYrs9?=
 =?us-ascii?Q?8qnHhh8MdMVzkmnkcZMeAxOgr4toImZRB6DMfDlU8vXbrpSJ87B51QqWB8w3?=
 =?us-ascii?Q?P6ZRv5NV6ivbM+GcOHihBmJ44MjPUJW4lqC5teCHB+5ecUlX49h3Zxlwhk0V?=
 =?us-ascii?Q?bnqPNSm1z5Ej80kfTbhFaRTLpNAyw+n3UN1tYodrcnO/Frs3AdxnhMojnfdA?=
 =?us-ascii?Q?yOKXLidGnw2oEJENHkSnA1T0iEL0GwOWjm/9YsR0wQNae7i0EFjISv4iCFWc?=
 =?us-ascii?Q?JawBr1n17aUlrCNIm9KpAgNJBpNUxMT96zx4DREhKuRkJJ7Qmeba8kRcKeYS?=
 =?us-ascii?Q?UVysaRYqbxoxcdqHFMVpWOiIB0O3lvSZPBzIyOwK+TN77Y4oCbf69xt0FsxS?=
 =?us-ascii?Q?l0mXzTGHxue8U1+ZLD/ZUrGANrz89GhWBFtTx4+kS6Tx7xcuF6scSvlRXXhJ?=
 =?us-ascii?Q?IeapKVrKAHdwOeY6U2I8Y/JmkgHG15qLnazvtXrp7qnofLRBKQ2Cf3gh0rAO?=
 =?us-ascii?Q?4YbwIA9M4o9k0EqQf5uJKLzSwjDAAPX/ZBbXYekpOknCRC2gvP1sGD6DQmrS?=
 =?us-ascii?Q?RLYIRImiLEQZ+OeQF/UskcJ0Nro5wqpLV7b60qQy4zharcZlRNwlmX7+RYjQ?=
 =?us-ascii?Q?b1qwbsHCDUgfmCGG2rs5kLjUoHNxu6bkQPyKa/xULtBWlq4IPH2pX2cPQqU0?=
 =?us-ascii?Q?+hLMG+DW9sT0Ap5W4603ULCiYKKs1obdUnmUAvSxquOI6QX5KW7OThESGWTH?=
 =?us-ascii?Q?pe4iUnXZSLu3sJmKZsyBIfVBVDSL1awtZlj8zLy8ReMOglkEBmDranO8f2bA?=
 =?us-ascii?Q?+lb83hAO4MPMXsLCq+w2ue8GcTGza8dPRiXO75sYBjLiUnKIi5umbv/ghlNR?=
 =?us-ascii?Q?xg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 99792f8b-bdd9-465e-c634-08da8ca9230e
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Sep 2022 06:05:29.1254 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BMIwJ8De5yBc9jdK02rJb/n3K1Ry+Ixsph00sfMOM9zGXPLJOMaQJ3Q5W2gkOUyG4BNh+ncUhEHIYD0LlvwbWEeK92zbE+310pZivVVOlVI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB4423
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662098733; x=1693634733;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Sj21uggCgvBUUMVa0YFfGpH1F5ADzg4Fy21psdW/wW8=;
 b=WeTX/z9EnbrmYnOps1ZihYihbxYGt19yC2tIYiKojU4QtT8jtATvbi04
 R/IjFs8COpGmGMommMIrlVX3rGWjI9CmBlRTLM3106GZJn6V6Brh2TS39
 k0tedtbuSZ0iEBbH0AGFM+iAt5ET6BTgyXRK6ygFgCGKYaJI50dSp3uf6
 l2nPx/AyCmX78y84ZbOFpdeCg/ZAq0CoqDyIPqMXRON5fqNyPqBdpzTMG
 ttQZY43SoW0qcYioNiwilvPiY7skEkv3vciTSSPX2HDhV8YF8THXRbbAx
 DKU2Zwk5gyYGZWgDJIuDNSlFrk0EQFMxP4PPHOaeUWy/12LU73qmubscP
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WeTX/z9E
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] iavf: Detach device during
 reset task
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
Cc: Vitaly Grinberg <vgrinber@redhat.com>, "Piotrowski,
 Patryk" <patryk.piotrowski@intel.com>,
 open list <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Ivan Vecera
> Sent: Tuesday, August 30, 2022 10:16 AM
> To: netdev@vger.kernel.org
> Cc: Paolo Abeni <pabeni@redhat.com>; Eric Dumazet
> <edumazet@google.com>; moderated list:INTEL ETHERNET DRIVERS <intel-
> wired-lan@lists.osuosl.org>; open list <linux-kernel@vger.kernel.org>;
> Piotrowski, Patryk <patryk.piotrowski@intel.com>; Jeff Kirsher
> <jeffrey.t.kirsher@intel.com>; Jakub Kicinski <kuba@kernel.org>; Vitaly
> Grinberg <vgrinber@redhat.com>; David S. Miller <davem@davemloft.net>
> Subject: [Intel-wired-lan] [PATCH net v2] iavf: Detach device during reset
> task
> 
> iavf_reset_task() takes crit_lock at the beginning and holds it during whole
> call. The function subsequently calls
> iavf_init_interrupt_scheme() that grabs RTNL. Problem occurs when
> userspace initiates during the reset task any ndo callback that runs under
> RTNL like iavf_open() because some of that functions tries to take crit_lock.
> This leads to classic A-B B-A deadlock scenario.
> 
> To resolve this situation the device should be detached in
> iavf_reset_task() prior taking crit_lock to avoid subsequent ndos running
> under RTNL and reattach the device at the end.
> 
> Fixes: 62fe2a865e6d ("i40evf: add missing rtnl_lock() around
> i40evf_set_interrupt_capability")
> Cc: Jacob Keller <jacob.e.keller@intel.com>
> Cc: Patryk Piotrowski <patryk.piotrowski@intel.com>
> Cc: SlawomirX Laba <slawomirx.laba@intel.com>
> Tested-by: Vitaly Grinberg <vgrinber@redhat.com>
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 14 +++++++++++---
>  1 file changed, 11 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index f39440ad5c50..10aa99dfdcdb 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
