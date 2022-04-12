Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CE5854FD91E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Apr 2022 12:39:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 85D7781A6A;
	Tue, 12 Apr 2022 10:39:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qfVdRUCYhjci; Tue, 12 Apr 2022 10:39:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7538281A9C;
	Tue, 12 Apr 2022 10:39:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3D08C1BF9B5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Apr 2022 10:39:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3841D60F3C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Apr 2022 10:39:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5r4lGMEAAk6n for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Apr 2022 10:39:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 190DB60FDF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Apr 2022 10:39:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649759956; x=1681295956;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=g+p33sCVDo47hJRgXGw26HlV8Qp/lHoN+PX+D++UZRo=;
 b=YmT0CBFhuaKwCsiZYKJz17BN3++H08grp5u7f4AcB9IvHDfd8I8Y9LnH
 yVa9Owp+L5ui1MBCC+6+PlNjTxSDa41Zr2++4MzLAhCRbU6bZKgfO/cTT
 gznPAIWqYXl4SOjQFsxM+owCy9cVHieEDPS3B5qVPDQ5pyjXYIZzWnRtj
 zrfZ3V9p6bLnyfZdcDh5jKzSHOzQbkGK0BgL8CYenb/6jAKJzQH9ClwoL
 NmhLNqw0HJyNz6TQY97a4vKAIFi409+wpGyJgK6bSCIGoi9ay9sMuCPCO
 4ZJ0N0YDdkimMQDPyIZky0vUwJlnFNyhtgxMBEHs4oPt5/ZPDKqRSJcK+ w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10314"; a="287359762"
X-IronPort-AV: E=Sophos;i="5.90,253,1643702400"; d="scan'208";a="287359762"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2022 03:39:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,253,1643702400"; d="scan'208";a="525988681"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga002.jf.intel.com with ESMTP; 12 Apr 2022 03:39:04 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 12 Apr 2022 03:39:04 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 12 Apr 2022 03:39:04 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 12 Apr 2022 03:39:04 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.103)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 12 Apr 2022 03:39:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eCBptvaa9ab38Vi8bXX9DGdrxn3hUVj0QbRQkHANb5pK/TT6i7W7djVRp7k8FaBIClsDnPsjxTbV38FptByeUTlXCZKic13oj5SdUd0sC9pnaIsWgV/z72E5mwjd+SBuur2SrCb9f3HipsoIIF6B8wtkA74+B0HAoQW4/avlVRC1u8lQ0ptXKxYkJTsLU3VPhswYG2x03GsCKCLnE8avC37PdDP1vm/EhQExoMBV9W5wuwsWKkTNUdwFM+oLlOm07bmqJry7TZqS+CXRjLm94O9FruMu3a6cTjPIoUqS8RkR0dUD/64v6ltgZ+mdyVDXPELaRbR4QihKFySii6yMTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cQJp5zGAYGU7504ctjP3WErAcf0ZtKJe3xE2Bc/Nqe4=;
 b=abaCCYADtgMnamo23scUW0jQTV07zRtYH4VyiDTnboYAfqSma7St2WrLyFVxvoZAnYCLQADynYun2DXetWxDUbRwijCtbQve10kbD/9LgbEtMunpZu88aZ8d06WcoC6f24EO34y3/yUEc6enjxqFwP3Ol9VN7vCESg3uphz60YqhLwTTB1mpXdV2Hq2SYYne4yWlbXlNJZit4pkz3/V1iW9qsMw9At5YBXgGtAJJVi3nS+3ZMomHYVOtoGX63JPavsFb9XqXHUbVKSt43kF0gbK+3Wcw2uPs1SThlwA6jEDoswvvbFjZ6R9fCUDr3re83w28qhlyXdSZu31ZKtYLmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com (2603:10b6:a03:3ab::13)
 by MWHPR11MB1789.namprd11.prod.outlook.com (2603:10b6:300:108::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5144.29; Tue, 12 Apr
 2022 10:39:02 +0000
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::302b:8e15:32a2:f9d7]) by SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::302b:8e15:32a2:f9d7%8]) with mapi id 15.20.5144.030; Tue, 12 Apr 2022
 10:39:01 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Lobakin, Alexandr"
 <alexandr.lobakin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] ice: Fix incorrect locking in
 ice_vc_process_vf_msg()
Thread-Index: AQHYRbUMDJGo38dwqUSS7ixfLZwgCqzmEuQAgAAlZoCABe8vsA==
Date: Tue, 12 Apr 2022 10:39:01 +0000
Message-ID: <SJ0PR11MB5629903816D77836D62E8EAEABED9@SJ0PR11MB5629.namprd11.prod.outlook.com>
References: <20220401104052.1711721-1-ivecera@redhat.com>
 <20220408134714.1834349-1-alexandr.lobakin@intel.com>
 <97c58b06-11b5-182b-eed2-e5a74824241c@intel.com>
In-Reply-To: <97c58b06-11b5-182b-eed2-e5a74824241c@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ef331338-6d3b-4172-6e6f-08da1c70a8c8
x-ms-traffictypediagnostic: MWHPR11MB1789:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <MWHPR11MB178912FEB960E7ACE0E359D9ABED9@MWHPR11MB1789.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8ZvDdTnTljR6GZUBL7uxUFZaQMRNvd6U2zBczItZXzPQrj4rYnpITKdDB+qfPU6TYaxMn//D6z0oMxKd+DEuggCy7CAtT+Bo9QA4ueTTnJG/joBNiAiVnH5s8izH/HBfhNwE+fCDVxgC/4ruHTxm/Xz7rD7JRhcZtaZCzTWHr2v1aqmfbI61Y7t8Uk1kGmVN29xPL5FIab/snAcF+mTJQxs+T/TtpnkIR1ZODavvmoYi9AdxpwSouP9USwJAptSJGEwMiN5WQFLNaFdP953S5HTOe4PZIZt1o8dLZ6sW5sh6JPn8AIEfJd7OBWSVGmRv24YWffdZ1xHB/FQ/HU7n6QcVQNPNDjJFyiWxk15WsAaUU00sQ5vZ+AuOauxCZFBrkrL4hFXg4LEivP3vAL3luW8Aw9EMPGvetutLnpiN/VkvLtZF/gkhvpLufBZZ4o6I5ATkmEkkbozQx5wEjZ/lK3LDiGoQMtsCCzBMGaM3mbuU8jwiCtuix5FC0neCkkD6SU7BRz37mEg0+nN7Mw3z99d4WzL29BRJjYJ7Lna2F+QBQD+UCaxjaw9yfQpRlp+iDytV9Fz4WXvWz/NQALMNJYuJntoRdIgsRwfjnEj5BlS+6FVlwEQNuClOzcT4FP/IVAF4+eazlOGXwIbDyXCzcb7SbEh6YGaF1cy2pPPpk/gDHkzqy8ITReADxyNgB/AacktKhc3IxhxHTDbHhi2/tg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5629.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(83380400001)(508600001)(55016003)(6636002)(33656002)(52536014)(5660300002)(66946007)(66476007)(66446008)(66556008)(64756008)(76116006)(38070700005)(86362001)(82960400001)(122000001)(4326008)(38100700002)(8676002)(7416002)(2906002)(8936002)(54906003)(110136005)(71200400001)(53546011)(26005)(186003)(7696005)(6506007)(9686003)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?CYIXw9ReR6lUfkNqT/hrFb62n3MDMVEI4fU2KQjLizml1/AMrPiL2JS7yTND?=
 =?us-ascii?Q?lTZKsy5UH4WYt3InXXhrWNUQqQpKFqnCYz+HYvpB6E3AlCti/nArfnNxg2o5?=
 =?us-ascii?Q?MrFoQInxMfGlLl3IF+OkNYPZRThknqjpuCX/ML6iKrZ9bXJd3pSVooKQ9H9b?=
 =?us-ascii?Q?N6mdm3Ukzww1siDcRC3HJuXwYw538Ef2yn6PUnFXMsHxXnUMVahJGYmvfigy?=
 =?us-ascii?Q?/y6zdjnPznGnMlh/n7l1iTuVXqzGH2eEHrixWvfRBKa79THUzugimNF0LCYI?=
 =?us-ascii?Q?jkaF1wv7dkAG2Dq4UMs6jxHa4BdVWTvAqigs+JJfnt+WiR3g8bB7d4pfpOWA?=
 =?us-ascii?Q?+6tXT80MVl/I5rS8bVKrXWyjsVNSXfNSn2kpBk9Tyi0npYFVNWFXcAps82Ud?=
 =?us-ascii?Q?GNAqN8eQVNYtJKGkgvrgILCeY/PxqZzsJsgSrvUcKy5ixAjb7Cr6XCi/GM1Z?=
 =?us-ascii?Q?EzmWHvA+bFTZLd3MziYL5+b8qDAtgrwcI5bXnX7Ndqbfdcv0+dU0eiz+CSZJ?=
 =?us-ascii?Q?Wue3Mjim2Vysk7hwuHZzY62L3JpUT0Yw8telBbKxoVBpHauZGIjaOItvFpqT?=
 =?us-ascii?Q?UWyBYFzhG7K2bshxz66y11y5K7dbrId5OCEV0/aZ537pn5d6kuSGDk9QzwIC?=
 =?us-ascii?Q?oiUlnO+2tNa+0TAGIONi5eJS13Ti7RzB0h0cgz+8tqayLdDWen79JgOco46s?=
 =?us-ascii?Q?IYJXQ9DFTYpsQrGQbyp/ULs/6kXU1cYyXmMioqG20vncwAo2U1fLvLn/lT+w?=
 =?us-ascii?Q?YjlEPNXqDlZ36QqB5M5oiXw1uGx3O8lTgeDbrsEZWmx4Z4zmHeILSzqmjACU?=
 =?us-ascii?Q?wpT9uCpRM6PnCw04U2CtQT/SH3EEI3NLlokKW2byoB0QBVe/52rOgh6hvyPz?=
 =?us-ascii?Q?nxMqX9n5pGChFfxjdJ5gf5UayRWFuADUoxjihLmxBRk1H+8BatH13XeI7FJk?=
 =?us-ascii?Q?IV79gC4jpK1jJFTNQN4lU+hlpdoLfmOkbdUeaQLwwMnSOCWPfbsPpf5z8A8q?=
 =?us-ascii?Q?q2F0W/krJdGJMcEkbzKuBf2ll6mGwi8S8HkhdKN84CIFU7yBjOQT4TLbNOpz?=
 =?us-ascii?Q?x85G1zFRoB+hYyfZMm0ku0zCJWS4KDpUD2blYMDpa3tpDdSh6rfT4kIbYtaS?=
 =?us-ascii?Q?vA2RO9dlwn2/tyKrGxgWcN1gVXq+KL8fvvTsJMlqfqN6Zu5DZ8f2IwpvKgCb?=
 =?us-ascii?Q?wspIreYDeYp7Ct3853zh9UhZbGpTHHUBOzqx22b14Uq9CQ3wKo32fwxPjOr3?=
 =?us-ascii?Q?s7JkiMxzI2RP/HL8+HjQj3hPdd5mce07k3PKDZkt6vu4qe0IssaIWRW78E9f?=
 =?us-ascii?Q?uWG6SUaCBUJbooiCeBWbHWyvyZfezdiC0mWuACjM4xR7tnUfd788hkit6Yzu?=
 =?us-ascii?Q?3tn3C9T7vJRze3KA31XkJ7Bz+8nQHyHA356aUIR47vd5P+IpP1O+P9eQ/SQe?=
 =?us-ascii?Q?09oQSisA+TcdOWV4h7BSrHcWrohFgGWDxoZN51ddR6Z7gxB425fq8G5jzeHo?=
 =?us-ascii?Q?/ne3PcpRIzXUsQ1enC8dUC9dohCEwI9Pmfn8v+vqWf2NSkBs/+Olo7XgCU/b?=
 =?us-ascii?Q?nskXxiDd7D7QjZYp2XCSh5mDUYm0Czvrx/lp1PIG8/hniUXBIEm0uXSysO+X?=
 =?us-ascii?Q?IX7MmcKhk1sgSe6aRVe0cXdGZkfNnnpHiFM4EvMO6XXMVnUDgM/nlfLHKugA?=
 =?us-ascii?Q?5oB5Z4jP+CE+Mz9nuUlaLtJn18j6gyJjNHz8HPwUPe8bGXkrBrMLDDao9YmF?=
 =?us-ascii?Q?sVCWrvgQMQ3uod5bafPMc2AR12nn5yA=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5629.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ef331338-6d3b-4172-6e6f-08da1c70a8c8
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Apr 2022 10:39:01.8563 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: b+c3oqN7peStrDb5klrebqk/MtBjZ4aISwPK8skfpon2R6wH5IQxN7WbimAq43e7nfApRuxEpmKDpMQrfS+Iyb4okEAS+Hozhjjj2OzmMkE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1789
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: Fix incorrect locking in
 ice_vc_process_vf_msg()
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
Cc: ivecera <ivecera@redhat.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 mschmidt <mschmidt@redhat.com>, Brett Creeley <brett@pensando.io>,
 open list <linux-kernel@vger.kernel.org>, poros <poros@redhat.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo
 Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Tony Nguyen
> Sent: Friday, April 8, 2022 6:01 PM
> To: Lobakin, Alexandr <alexandr.lobakin@intel.com>
> Cc: ivecera <ivecera@redhat.com>; netdev@vger.kernel.org; mschmidt
> <mschmidt@redhat.com>; Brett Creeley <brett@pensando.io>; open list
> <linux-kernel@vger.kernel.org>; poros <poros@redhat.com>; moderated
> list:INTEL ETHERNET DRIVERS <intel-wired-lan@lists.osuosl.org>; Jakub
> Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; David S.
> Miller <davem@davemloft.net>
> Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: Fix incorrect locking in
> ice_vc_process_vf_msg()
> 
> 
> On 4/8/2022 6:47 AM, Alexander Lobakin wrote:
> > From: Ivan Vecera <ivecera@redhat.com>
> > Date: Fri,  1 Apr 2022 12:40:52 +0200
> >
> >> Usage of mutex_trylock() in ice_vc_process_vf_msg() is incorrect
> >> because message sent from VF is ignored and never processed.
> >>
> >> Use mutex_lock() instead to fix the issue. It is safe because this
> >> mutex is used to prevent races between VF related NDOs and handlers
> >> processing request messages from VF and these handlers are running in
> >> ice_service_task() context. Additionally move this mutex lock prior
> >> ice_vc_is_opcode_allowed() call to avoid potential races during
> >> allowlist acccess.
> >>
> >> Fixes: e6ba5273d4ed ("ice: Fix race conditions between virtchnl
> >> handling and VF ndo ops")
> >> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> > Hey Tony,
> >
> > I guess you missed this one due to being on a vacation previously.
> > It's been previously reviewed IIRC, could you take it into net-queue?
> 
> I remember applying this but I don't see it on the tree so I must be mistaken.
> :( I'll get it applied, thanks for catching.
> 
> -Tony
> 
> >> ---
> >>   drivers/net/ethernet/intel/ice/ice_virtchnl.c | 21 +++++++------------
> >>   1 file changed, 7 insertions(+), 14 deletions(-)
> >>
> >> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> >> b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> >> index 3f1a63815bac..a465f3743ffc 100644
> >> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> >> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> >> @@ -3642,14 +3642,6 @@ void ice_vc_process_vf_msg(struct ice_pf *pf,

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
