Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A81024C4A50
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Feb 2022 17:15:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2E846612A3;
	Fri, 25 Feb 2022 16:15:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FY6YFHr9Vhul; Fri, 25 Feb 2022 16:15:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 21BCA6129C;
	Fri, 25 Feb 2022 16:15:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8A1851BF2FB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 16:15:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7564983E47
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 16:15:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XU81s4yk7baP for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Feb 2022 16:15:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B8C5983E35
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 16:15:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645805725; x=1677341725;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=T94M6ffew8ITQYrCr3J4i+4VFTem1eVSHqk6mlqWyec=;
 b=U5GbFaEoqoK1dtbvRMMd3Ytdz9qOGQrIMIC300GQpLqjYTLYlVmyF2rD
 VQh1ZMeqMv+OiRVHfZyrxKdTVB5TVfEs4636chRy3Fng05jHda9bs1xZw
 P0rZeW/Q37o+ltFG+jaGCvoyOnijxQdtbzqv7WsTeAUQAORCO5nU/DRfi
 V9wggqc/tgxYigaZWtj8tIVZzFU2KR2952l3Rp9YLJskK4aGHQWUogLtr
 8Nc3XJLmp/28dZJUNzrCKdhDjRu2Fphx0QjzG/PAHN9b7W25vXb5WUVU4
 1kLaJYhDPoRj+S3b9L+VBIDALdNKnNXb5AjDqzbZxbWq2a/wwBHqysTA5 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="313242449"
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="313242449"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 08:15:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="509312146"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 25 Feb 2022 08:15:24 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Fri, 25 Feb 2022 08:15:24 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Fri, 25 Feb 2022 08:15:24 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Fri, 25 Feb 2022 08:15:24 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 25 Feb 2022 08:15:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dwxeqWEhWG9S7/72IAbloqqppUCsRiX2GTKvtkoxEy2Zctfi/pj7vy/PzE2brGS73b1p0lV7mnKN3kE1ilTOViM08IjpMnqyDfSWYzaiMNXiTwMdww4Lm9Y8tXnUxge4SF/+Pq0n1hS4AyhiJfv8SXFFwWj9wd/pN9yQZWiUkXrkWzkC0OFGUCcq6zxvq1BCQPRTM+K/0YYF7JcjA8t5+MRnZyuSZlhLO8Fn/cFVUI0ftgVA6yMW9rk2qrw2c+mrrFihlOXABfUeB+gRfDmkh3PKtNGf0bK8wVfgbvu+UCDiwvvJ7Uuy0svXw3qzMyMHh9+6pf8NguKk1t96lJITpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=of4Cl8Hwmip3LcuwEidibGINHWo2M4QBOOGOeWHQRiw=;
 b=nRrOb9OcZ1IGNf50wx9nPRNthUBevEF2RmpSm7gQM4cBmnWpidNU1iKe1snCb4h0+dwac0jvxsRCEjUngdvW1MEE+GxK/30mmFmw6ITUv1HMKo4Z60hNQ8+L6ysQajnKhqtIicioO3lsLtAhGxTCUpsPHVELMByfeBv00QIvJZ3bNY34wEUgM8RisuZFdr+BBxqZuPeCxd1XVZfINJIHu9aFWg7H3Qamiwb0IJcUwqhUDZhp5PSkYTjdZTIio7rScWNDVzU6W63zBEyBe/hlC9/hRsO12m1CkeO3xeqjLoFT0cBGZ6PTqBkKBpdvaJ6sHX+Wv+gMFm04jc/QN4yfaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com (2603:10b6:a03:3ab::13)
 by DM5PR11MB1369.namprd11.prod.outlook.com (2603:10b6:3:c::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5017.22; Fri, 25 Feb 2022 16:15:22 +0000
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0]) by SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0%8]) with mapi id 15.20.5017.026; Fri, 25 Feb 2022
 16:15:22 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1 8/8] iavf: Fix __IAVF_RESETTING
 state usage
Thread-Index: AQHYKLKe8YIt9qADokWirBkZH1m9IqykdE3A
Date: Fri, 25 Feb 2022 16:15:21 +0000
Message-ID: <SJ0PR11MB56299AEBBCB76DF56C864F07AB3E9@SJ0PR11MB5629.namprd11.prod.outlook.com>
References: <20220223123855.30862-1-mateusz.palczewski@intel.com>
In-Reply-To: <20220223123855.30862-1-mateusz.palczewski@intel.com>
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
x-ms-office365-filtering-correlation-id: 5181c0c9-2192-4f84-b99a-08d9f87a061f
x-ms-traffictypediagnostic: DM5PR11MB1369:EE_
x-microsoft-antispam-prvs: <DM5PR11MB1369AD7097A2D2879D57ABAFAB3E9@DM5PR11MB1369.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: USQMjoGNWrdrlr0kwQfwLLi+Cckb+0018WSSJCV3dtbVzQ7Ip4UYFWHAlb/rCZqS1W1HBxrUFsubP94Ooc+NmXhVEHccGExpMGcKTBcif3IDLwMrlzfHqUCmVXKLDjD/mrrpaEDtitvtJ5RwXjpHtJEgVsnq6ul5w1R0e7QOcD/sHv2BdO53X5ETWQUaspIwDPBU1HaItEKH816lWaD+P7qhhkDwrVW/0qxYvKs6ZQcsthfhAG0bNUlK/SoPYgWL6Q/yEncAIbzJndkqf9nCbNVspxuOejVEO8uOIBPiYBpOwqhhVmuAk4+d3P3Jqpqd89IJGe2LJ4g8sBplDUhuwjaYZg6iYOJVy0oMqQ671ikG9p+/zChm9df4riSV7s2AXujDZpnANDjYGxQ5yat2tb2Q7+sepGhmYJQnQHgF1n+RhqeyqUoPlGz9xcKKmfYFSdpoB1R4Lh6ygAz1o3nMZ33wBIBAHBVK5DIa/VLoNJJnIDZum7kbHZ6FgvhNsj9b2WCCJO6XMAaPAxBhKoOY8cgRg5kHqq0xn2C5Eq2+WbajH0pXsyvc/QKnS0goeQdgOPGm1nlezhhbGccBm6+2h/uaO9Nul0/QvsIvGd+qNxm2N+hR53f7LRP7lKPjcRLihrogjhrM0bEmib5PHJ67PFrjq7dq9UIfrkDJ/3H80zYk4hPw4/alKJQ2NEHYoxy/IzuM/38F2ooela3jP8mbYQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5629.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(9686003)(38100700002)(83380400001)(7696005)(6506007)(53546011)(2906002)(38070700005)(71200400001)(86362001)(122000001)(508600001)(52536014)(33656002)(82960400001)(5660300002)(8936002)(26005)(186003)(107886003)(316002)(55016003)(110136005)(54906003)(66556008)(64756008)(66476007)(76116006)(8676002)(66446008)(4326008)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?MPXcdxdGbB1tmu3LSnvGLetvbD/99f0xWocwjibHkidSjn0e+Qo7WUhPRPcE?=
 =?us-ascii?Q?uaRzDfea/D6ZE8kpLk/nvbfLpBY2MhaItVGKzXK2Ama2DQfqZROGh3d1qRm7?=
 =?us-ascii?Q?G4NF1RVN1pI9LbeqVjVshxNA15kSW/vmBcFsFOVh+4AIQhnOLrFXBLwi4/hX?=
 =?us-ascii?Q?yYfu1Y5bBX6xIVhifMNuB+lcQ9t/3MWCV6pgVH6J32eKzH2qZE3KugJOvgOC?=
 =?us-ascii?Q?fnMlWbldohGexPydViKlxpmZ0ku8BPVmbufapCe4UXO2LXX0Nor55ZFTfWk3?=
 =?us-ascii?Q?ZnRGUL4dVW+aPJFuCKrHmJU0oLislZV4A6l8qYt6RSv1+8ZOKvNgNnJLYpwu?=
 =?us-ascii?Q?hFcAsvC2rpSYeBuUKbfVX7aDSrba5ie9tV8kwUeYG0XNHu/14ZAkY1zI/6WA?=
 =?us-ascii?Q?X5iUHw0dSSQ7LU1745wLyXwhPrC/6YKf6d51l6n70SUptOsZJhzBC5/y9CHr?=
 =?us-ascii?Q?Z9jQAvlqsyUwOXCKNMIb14RSejBWJOobyq63u7wxlnyXWKS/sYk3idBjdxS7?=
 =?us-ascii?Q?vik1p7XZgGljGvyQRMWu6qV0X3WMonYaCy8bUVwA0QmX2PoWdedVnUUQR98M?=
 =?us-ascii?Q?OcDcT13N0n8x2XlAlr3jQShdKTgJD1ykGtourABSqQFTxOvogwt+1pHRxMX8?=
 =?us-ascii?Q?rXKxCfKAy4USOecdpOvUP10ZVLR9rVytnPbm1Z+1VeOtHWijB+82NrZzeDCZ?=
 =?us-ascii?Q?vN6FpOFU5gPfHajCBV+L2f9PFrlGYow6HuGHDGeyN2SHGEx+Jf76HmlCrQqS?=
 =?us-ascii?Q?gyeRNt92hrYqWFSEgccsOcCE6uh8vbUw5iTz4+Qx+TuMMiCo1THL247a+iBJ?=
 =?us-ascii?Q?txBPAnE4YTeAlXEKSyfXL8GuvkADwOPbpqsDZ6s4yg/q3OK2oEKxUOHnAiAn?=
 =?us-ascii?Q?/HHj6ppFcL6U1yu6AaVus85XHdbDW3T9SUJON9e0RSPPnd1xaAebRIkLGHqq?=
 =?us-ascii?Q?ctA1D2tabV9yXDAEFujxMG9VuwQQ8MKzuFqKjVpBvrAx5YpJz7E0r3V3Z/dv?=
 =?us-ascii?Q?z87MltJcpL1K6EJwxJISaQ8qfWujpcFXsM3ruW1hpqqD84RUfrXWIah86gOR?=
 =?us-ascii?Q?Q7GIzpeVfqA138DQL07geqWiUnawapy3B337hBa81Oftgaft2m7OVbDOYjnW?=
 =?us-ascii?Q?nc2euo6nMqF0YWk3vMUIPQrzJLDYuBYUVSSQJ58YLietsEqylv1+otEUi3GK?=
 =?us-ascii?Q?vB/hBoUI81215moP9anKRn7h4TUVAZnNV4+uE2ke4w95BsJApW6nT6B8d6k0?=
 =?us-ascii?Q?XCifYsM2sT7LpmYU/ufAGkVDUtLz3nYRBUtUYFPqiTYn8e+5J6vRNoOlsBnB?=
 =?us-ascii?Q?lpTZMRki+kRY+41NLDEN2LEn3DQC7L/7oOY1iwvQQC1ujWyvQ4F+LZGm1Psk?=
 =?us-ascii?Q?LTpKDLKWQmhscIVFqmxZbuuXcdZ2l75/mrGdupYSoHOoiZMblP0gKDPvXWti?=
 =?us-ascii?Q?DzuwwZqCT66LhKLISFg0uTSrNwg8p5X+jey2+Emqyki6iCyysuBlNdcQ5QWC?=
 =?us-ascii?Q?be3eDMR62f/McVVTn6wMUyaz8Df+t5amWvzT3G/c4tJwELM6ckU1trBZPdsY?=
 =?us-ascii?Q?D++pylOqcgBOXV25bt6auZ4IAiLYP5oqpKM30WdAhsKEIRbKFK8zHGIZZAyV?=
 =?us-ascii?Q?q5xmx8s6Bp1fL2FvKY7KbXOQFRj+nqR2h3Gs6hFVa631icxCoGs6ja7IeafB?=
 =?us-ascii?Q?LU9s6w=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5629.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5181c0c9-2192-4f84-b99a-08d9f87a061f
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2022 16:15:22.0525 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: J0yfvYfVTiJhFKYVVWm6k3aZHii7gXZALfR2eQ0p5SpzLKsmzvMLDULNsjcFdw6WQyXWtZXHf74JKCG1xOVQgA1w9PO/t8t9XJcozMz1ruo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1369
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1 8/8] iavf: Fix __IAVF_RESETTING
 state usage
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
Cc: "Laba, SlawomirX" <slawomirx.laba@intel.com>, "Burra,
 Phani R" <phani.r.burra@intel.com>, "Palczewski,
 Mateusz" <mateusz.palczewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: Wednesday, February 23, 2022 1:39 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Laba, SlawomirX <slawomirx.laba@intel.com>; Burra, Phani R
> <phani.r.burra@intel.com>; Palczewski, Mateusz
> <mateusz.palczewski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1 8/8] iavf: Fix __IAVF_RESETTING
> state usage
> 
> From: SlawomirX Laba <slawomirx.laba@intel.com>
> 
> The setup of __IAVF_RESETTING state in watchdog task had no effect and
> could lead to slow resets in the driver as the task for __IAVF_RESETTING
> state only requeues watchdog.
> Till now the __IAVF_RESETTING was interpreted by reset task as running
> state which could lead to errors with allocating and resources disposal.
> 
> Make watchdog_task queue the reset task when it's necessary.
> Do not update the state to __IAVF_RESETTING so the reset task knows
> exactly what is the current state of the adapter.
> 
> Fixes: 898ef1cb1cb2 ("iavf: Combine init and watchdog state machines")
> Signed-off-by: Slawomir Laba <slawomirx.laba@intel.com>
> Signed-off-by: Phani Burra <phani.r.burra@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 13 ++++++-------
>  1 file changed, 6 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index be97ac2..dcf2426 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -1137,8 +1137,7 @@ void iavf_down(struct iavf_adapter *adapter)

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
