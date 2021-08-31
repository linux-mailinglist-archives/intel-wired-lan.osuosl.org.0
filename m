Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 09EEE3FCEC2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Aug 2021 22:45:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0B20680E5D;
	Tue, 31 Aug 2021 20:45:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id spCLyCK2xSbK; Tue, 31 Aug 2021 20:45:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 743B680E8F;
	Tue, 31 Aug 2021 20:45:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C3D321BF853
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Aug 2021 20:45:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BF1DC613AE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Aug 2021 20:45:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F22ZSnRWBw9H for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Aug 2021 20:45:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 36CFB6139E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Aug 2021 20:45:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10093"; a="216718289"
X-IronPort-AV: E=Sophos;i="5.84,367,1620716400"; d="scan'208";a="216718289"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2021 13:45:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,367,1620716400"; d="scan'208";a="577261577"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga004.jf.intel.com with ESMTP; 31 Aug 2021 13:45:04 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Tue, 31 Aug 2021 13:45:04 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 31 Aug 2021 13:45:03 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 31 Aug 2021 13:45:01 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Tue, 31 Aug 2021 13:45:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gbcd4TaUoX/BlYpdf6TDYErVONSGgU8rC3CQC1KuYOi5VhTsb8PMZ/gZ0E9yzgxSy7pUMDy4YFql7v0IHt0Z9V2oOaVw9L3y70UNEwIPdtecRJ7t1Xdhsx2ds9t16+rJgO2x4wBzyVQZqLi6zn+3JeZKBtAZwQjFjsupsaEUT1JnA9HufrqrNcNd93v+s8xv70J0f6JvEjOI8nX7Zqxpg8G5AgJo9yrl6jbUPoDnRbaG75Cp7OW31ZzZ4wa3V1widUYsa6weeb3zsljtD5X9SykAXZC/zkIvBpeKz5TSmM8pj0r35mhr/pgc8fC2sV+HSLpzX8sm3b0bx8tAgWoN8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J/Emaam/Xon1QbAnjsDaG1HCt7p3zYgkFxS4tsy6dZM=;
 b=QndBStF4eyZ7EPbmt1Ub/E7mSA5Dwv6D6F475DAj+D5QhzU+8m4dkxvezUj4Il8+QDfcEp3HeSsHZ/6MCFiuX3+5pviIuUGO00kXC5Zs7rTJm2a26f8AgwDHlsYdo6alUQ2TIuZbwkyepzoiVUWDPm1g42suoQYTYMhUAWZgxFYyhEZ21GfEyHECjM14mg1A1ObBiu42draAqZ9fU/nAX6vaYC1RaFGvQoqBtnIyL9SlFid/ksSF+Ap9BlCl7dHKIhmFVZmXbqa7UXj7O63L6ENW5GPC0Bo91yGIM56IRKZNHze5kHEKX1HqEBk//vsOw3tWM7LKOohSMC2w3TmgLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J/Emaam/Xon1QbAnjsDaG1HCt7p3zYgkFxS4tsy6dZM=;
 b=ArjDimZTHjTcq3Rzx/8xKrF1sZ5jZkiKcbwl/Js8gRW/t4GmvqoIPJW6kdzMmM47QXT8bcUpXbabZ39I9KIP/lTG9Nz6qOHeZ/6ZpAbzp8j7+3qwC8m8y4HNVRkuHnKFojIAEJMuVCL8BuVgp4oz6bfDtJoxBGoNyGo4xcyXfXI=
Received: from CO1PR11MB5028.namprd11.prod.outlook.com (2603:10b6:303:9a::12)
 by MWHPR11MB1566.namprd11.prod.outlook.com (2603:10b6:301:10::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4457.23; Tue, 31 Aug
 2021 20:45:00 +0000
Received: from CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::7d44:3d3f:92c9:f07a]) by CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::7d44:3d3f:92c9:f07a%8]) with mapi id 15.20.4457.024; Tue, 31 Aug 2021
 20:45:00 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 intel-next 2/4] ice: Implement
 functions for reading and setting GPIO pins
Thread-Index: AQHXk1qfyb38QSlbXkKKTdwNBl21BquOKwlg
Date: Tue, 31 Aug 2021 20:45:00 +0000
Message-ID: <CO1PR11MB5028CA2295732DC444284E4AA0CC9@CO1PR11MB5028.namprd11.prod.outlook.com>
References: <20210817110918.1937113-1-maciej.machnikowski@intel.com>
 <20210817110918.1937113-3-maciej.machnikowski@intel.com>
In-Reply-To: <20210817110918.1937113-3-maciej.machnikowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.0.76
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fcb883db-6df7-4a0d-6b84-08d96cc03398
x-ms-traffictypediagnostic: MWHPR11MB1566:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB156637383F599ABF236051F4A0CC9@MWHPR11MB1566.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2331;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KVS526NMAQA9Kd+lDDqKrNXImYtkYFKnRVtOtPU2ci4FVev4RUaZoLdfj7+WjF24fkWSsWIHi3FUENAInUGE0xwLez+/IEGwFOeL99NgIU+c4j1XcUyto5Cgvh3FzoRx94P9GPJhukaAnMp9WXGUgLuR7PFBNdlERjb514UWoLIpOmnBcvcAAAGcPqcnDLZF40n1shxblhB5OnUDBIF9UMdOAyEukOTwoe7CdYxJE5Lr8SzEKKnW3D7SWJetlplPmLsT00m8c46ypPFm5JcJ80aAs2dHyr5nQmdACytdxU6Wkw2WRamehmu+HgdACyY/D5OBEGJbq+y+5CFxovvlGIP6yKX+cwfCY0cA0UGlYJPrjSwMHj2r2WkIZKP4gkMiOzNJpwv2JN6oLkmrO/xFd2O50rPLc5fGrYCd5SdfxoVmjIc13EYbMVTHPmALDpsDc1+s+KGZPo09zVaX6RtY7DrUE6rcR5OONn/NAEfKtYz2Gb5ihGCPcyztdfIUiiSgo/nhTfNrvdU7re1XwKclHDBU+IGFthJaehVqVYRJLQR4dSFasnbKtyio3PNbScnXrh3n5FrKb4ZL8FgmVXpjN8EmoSQCbChGTTfPf9Ve6d/dhxytDmm45JlvyyY40xXcvyITCdsgpbhnAxPcx+uGuCBitmZKaKhHxQ7Ox70gqhW/BeJaH9fS56D04SAhtwFhzYF3dgX0HMnL7KVUWLGNtg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5028.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(376002)(396003)(346002)(136003)(39860400002)(33656002)(53546011)(71200400001)(7696005)(478600001)(6506007)(52536014)(186003)(122000001)(8936002)(38100700002)(55016002)(66476007)(8676002)(9686003)(26005)(38070700005)(110136005)(66446008)(66946007)(66556008)(83380400001)(107886003)(76116006)(316002)(2906002)(5660300002)(64756008)(4744005)(86362001)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?39p01HtBMqHZ+o2TPTffVWWLIy9EMNaE9bz8lwVH77hcDElG8/anXkV4hvvg?=
 =?us-ascii?Q?hRV8kErcJMqbVvME5SnAWVl7iAON2RpV31iw0C4CuyxeXVO17RZeNazVjKbm?=
 =?us-ascii?Q?G0eMYf35lt0eosJkd3PN3TA9rsos9tBLGtDKOzF6Qr0rTn5qGX5O1oT60G8v?=
 =?us-ascii?Q?2ypCr+vC/rpllD4rY8JwHbnfqFfIwQYqJ+1261jiiugbc5/UNJVLMf7XhH6I?=
 =?us-ascii?Q?m06c+W66KJUF6OTnQZ8ZE+hkE6sUNKENFzbX3mGp9DtxvzE+xRG4n2nFV7qy?=
 =?us-ascii?Q?u3VJWDtdxvt7lZq6gFxK8ShsVqXKlEC+T5fqc2ofA8DnjRsux1BiYsCQHBa2?=
 =?us-ascii?Q?ObBz5AfjPOw9ifgPWLpF+siSB4fF+JrmZ5wAWs55MmhdTtqvKxrPqP57m/P6?=
 =?us-ascii?Q?TiiDX+BWkE+fHfmj8wpcGhYSXHSZKQtIRmMthmaOhbTtGvUjL8l4gyT1rh62?=
 =?us-ascii?Q?eA+Y8t6wGHY4c+AS5ekSYxaR+KJ5TEPScNN96FKJMMbu3dSh01dNVIEuEe1x?=
 =?us-ascii?Q?HL/H1ZKqJHAhsesJ601qqtZ1QmO1MrS6dWdd0mSGyaGivz9uN6z4psR+ybOQ?=
 =?us-ascii?Q?wMgmrnlmktrdSYtzxJ8Iy6B8g9e3N+EIb68u9g4LBItUYuzanGi9pnEzcafe?=
 =?us-ascii?Q?szYOpjLGVbNA4My++yCt8FlIFmH77VWHsOWIW468GGmNiG9IBbNu2LSCgp+p?=
 =?us-ascii?Q?QqYj7Isd4sfAOCszF8K1fes0rZ5T94EFn/sr6RHyAg0yVDATGDh9UZ3XpGHD?=
 =?us-ascii?Q?PKTmDDw3jkSOgRLsEKzRgFoJxRp1n4v3f5FzwBioGyAMt3eJt3ljg/2xhHHt?=
 =?us-ascii?Q?rYCfwC+P2FXlY10WJPUKfA/VTDFUuk1wLv23W+yIutf5yFoGzF6RccQ69l1k?=
 =?us-ascii?Q?lsypnqLzu3Br5cdgBz+0FKfRlg3cRIeqNaS9OiVkQiz9EitpVdpY42O0SeIG?=
 =?us-ascii?Q?MhEGh1hbxXsA36L2Lo0+pMqa0j+nju26EPtZfNJDGQFW9tYIPycF3y2TgQvm?=
 =?us-ascii?Q?MRU83FC8ND8Zz8CQzLI9FPCyFJWfw7RlhO6uTMYc29OPVSD0uj0r26UGjXtR?=
 =?us-ascii?Q?OsFWTNXIEnBjaR2248Q3QjnEEZ7yUmfJ1zx6+gLwNMKDcuGi7MM031nVMLsS?=
 =?us-ascii?Q?EYXsrZH2kzT+85QvRzbNW7c4GEkav+KvLk2uE0DKUFzLLcPJHaQVFcLgxRxH?=
 =?us-ascii?Q?nyzqy6ZMWwaECkF9/dYoMVV4x5MVcJYBdaJ8vo7P9bs6NSgyhgBN79gjBpje?=
 =?us-ascii?Q?cPIr/bHoLo4EGv5bPr92FDGJ3HVxsJUjZ79r3vX0ePi2Dgb4QXlYsvZKntVB?=
 =?us-ascii?Q?l0VlEcsgfT9TVYoF0E7Xzrdj?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5028.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fcb883db-6df7-4a0d-6b84-08d96cc03398
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Aug 2021 20:45:00.1936 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ht6kA3Wf7h5mUEJT4Cs3ON0baDMtFqB+uXNApiEJ/sIEYFyIDRDh93bUjKR7g8q6AC6jqdWthEP5rso02zU7HTQtQFbmZnNjrs4DOW3FZaA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1566
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v2 intel-next 2/4] ice: Implement
 functions for reading and setting GPIO pins
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
Cc: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Maciej Machnikowski
> Sent: Tuesday, August 17, 2021 4:09 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Machnikowski, Maciej <maciej.machnikowski@intel.com>
> Subject: [Intel-wired-lan] [PATCH v2 intel-next 2/4] ice: Implement functions for reading and setting GPIO pins
>
> Implement ice_aq_get_gpio and ice_aq_set_gpio for reading and changing the state of GPIO pins described in the topology.
>
> Signed-off-by: Maciej Machnikowski <maciej.machnikowski@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 13 +++++
>  drivers/net/ethernet/intel/ice/ice_common.c   | 58 +++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_common.h   |  6 ++
>  3 files changed, 77 insertions(+)
>
Tested-by: Sunitha Mekala <sunithax.d.mekala@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
