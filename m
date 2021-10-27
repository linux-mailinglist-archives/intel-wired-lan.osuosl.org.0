Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7353A43C5C9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Oct 2021 10:57:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C191D60B37;
	Wed, 27 Oct 2021 08:57:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cLl1JsogBmDF; Wed, 27 Oct 2021 08:57:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 76AF560B23;
	Wed, 27 Oct 2021 08:57:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 47AFB1BF57C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 08:57:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3644D80C8C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 08:57:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IJyT3K-mJi8R for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Oct 2021 08:57:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7514680C71
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 08:57:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10149"; a="230387662"
X-IronPort-AV: E=Sophos;i="5.87,186,1631602800"; d="scan'208";a="230387662"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2021 01:57:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,186,1631602800"; d="scan'208";a="447460110"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga003.jf.intel.com with ESMTP; 27 Oct 2021 01:57:00 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 27 Oct 2021 01:57:00 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 27 Oct 2021 01:57:00 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 27 Oct 2021 01:56:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=apZD7LNAf3j7V8+AWcr3My3zLwosJMps+zJlurw3dgwZiBrOvWgzY+XjrcrCGoo8JeEwZywtLQCWEri3VgYmJyyoH0+VIsa3Wce0ooef7UrK2twaHgNJc4LEid0Izyy4UU0bhLiq57wIcJ81XFwlSUeJcfz6HoW5BzEHtcpjp+O0a0j0fMD41JSfgMybrnvxsdGCdLnt4WiobabNq0DNbNdmE7b+KHGzhoJAPk097fbF1Fspad9uN8Zxi7XiIoez1yBfsoeoayS5me9ezZQoHQIHlDDa+Jx2q12c9K5cZr/bH6a/eWrgrqt3LHFAITi7uT3RzF92+deSv7/Okp4sow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mewl9Jxnn17RU1nfHJeIxT9UGLqnusvkV/wM4HzVmlU=;
 b=Z5EPowySd1sUoH2GcRQsf19P42vaERTGyfsf2BNQkIkoWgE6QizDPZVuXYkgORTMKrZjWVob9dxQSJkuWIqFzrMAtZlLG0NZH9b1bjGkhtKBoZtRZY99y8Xc82HUbOqzm5zSF60uX08aa9CSa6ulpwWqOwf3ogOr1/gvuGKzC6tu4sy2unkDU/Z0zQmkAz5/67Dr+Ot90SxzUU1IFB6IkNPhRgqsG/xv61LE57FpmzJmzZg+1InBxfhPb054HssfXiv8K/SZ5MH4s93rFEXfmrSxBpNcF5KABi7t5Kb9bk7N8WeWA19TUANfDT0Kj4t4O7q7+8a8A0G+w2edC8pyhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mewl9Jxnn17RU1nfHJeIxT9UGLqnusvkV/wM4HzVmlU=;
 b=mH8eJv0uEHBIq6hWc3AKs5BuXLj8Y8qWo5LCVXkdkg/PQ/nzz1NalyR0L9Twpj6j925536l6NkaBP9TF0RVERFmnMyyFHvv5OcCops17sbjLWiKEpbVE7F6b/0fANxuT2WAtLzPP8OAj9kTELpnMRQ4/JxJ12gUxKSP2BubCCWA=
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 DM8PR11MB5576.namprd11.prod.outlook.com (2603:10b6:8:37::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4649.14; Wed, 27 Oct 2021 08:56:59 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::555a:1e2a:ce25:53ac]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::555a:1e2a:ce25:53ac%7]) with mapi id 15.20.4628.020; Wed, 27 Oct 2021
 08:56:59 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2] iavf: Fix kernel BUG in
 free_msi_irqs
Thread-Index: AQHXxx8eaKYP02JTrUiS9J7/MWU9SavmktbA
Date: Wed, 27 Oct 2021 08:56:59 +0000
Message-ID: <DM8PR11MB5621F505999ECD62DA5531FCAB859@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20211022083014.4416-1-mateusz.palczewski@intel.com>
In-Reply-To: <20211022083014.4416-1-mateusz.palczewski@intel.com>
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
x-ms-office365-filtering-correlation-id: 0a7ea31c-a12f-4a7a-90c2-08d99927bc6c
x-ms-traffictypediagnostic: DM8PR11MB5576:
x-microsoft-antispam-prvs: <DM8PR11MB55764BA664BAF8332EFC9B14AB859@DM8PR11MB5576.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: W5hKQWmjjGFHWW71rC/C9Ok4uZS9Y9u7ndhuLU3gRg8dDNBGsr5QZh2fY38LELCfUKOlnDMsXmk+lhDcwD/qk3QBw3fS3t8Owk3gzGiCTM3e34EGMKDrB1H6rEbevJy9I+981Ncr2mH5L6DXssmxdApozmc85TZP2qiEYfg0JUUnE/SH3uUz9hl0UBPGZABL5CQ2hYFZbr0uAdevzXc4PMz5fGV27keaNtqyjWUJ5oZV4KIprEVXeQPl3w246GVPU4ox+rx6Ua5CtJiCTc7ZD8jL4DGBb3JhO7gR22bkVNzO3qTdixXFRWelerjzfZFvgleH260dLyiDTT30aDLMQ/bPNrnYwDcu0nA1Hb/mbdhXcZIZARm+o0dTSTl/SFm6rybIVeRppvlcSLAc59RTiFoy0KJCjH63jHdQk85yi21EsSqZ+AUi9KuAD/A3VNxv7nelRB9A4k1vqKiJp59Dyhp//++ZmSgjIIz9qLTmGEvqC5COlNdVw24CfeT7WultMZ/mx2ew7aZs+h1GmsMwb4ksWPmPLdpcAwr43RRJuLN5wPHwYeVyiEYYBGx2RQr5wLxM90dHZyUj4g7bl+jsIpB71+/l3t5NEcuJD+r6QYJaIxvHY63ngRquYT8pJRrRZ4OzguUF+xxRRifEPQRQOdbKsbjIzaegGAX9knrKWSayc0AEEB+sJdq7WxjAhxh9aAW3y5JIigAMEwOsmZUW+w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(8936002)(54906003)(55016002)(9686003)(33656002)(110136005)(5660300002)(316002)(4326008)(122000001)(38100700002)(107886003)(71200400001)(186003)(8676002)(26005)(2906002)(508600001)(7696005)(76116006)(66574015)(38070700005)(83380400001)(6506007)(53546011)(82960400001)(52536014)(66476007)(66556008)(64756008)(66446008)(86362001)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?+xF0xqxD1bAla0zL27Gg9eDlbNy5hD/Q40Tywi6kUYeOdZJQo1Q6kZbOMB?=
 =?iso-8859-2?Q?FQvQa9ACU3307HuPENd7TxKzjYHU5JnRgQ8bZ2TqzllC91AB6eQJh/11L6?=
 =?iso-8859-2?Q?34DoXfDmiIvu2DpWcys6ujZb62ZDp8Qez3B29FtUuuojDBre8YKIUWgS5h?=
 =?iso-8859-2?Q?8C54ZEpjGbTjg8IONXUIzsFmA6HkC5kAknRM/dN0lysJO45IBYbb8HCXPR?=
 =?iso-8859-2?Q?HWuxHDXc2YBtdVwFUhOfwGWDYEBrFv9yv/5ZrQWrqWGkYtLNeU2L8MXsqd?=
 =?iso-8859-2?Q?Ub5FjpxKOB0UILxyMSC0YoaZgnRzhoFuCYwqHfmT/pZSz2FzPSKjL2qBOE?=
 =?iso-8859-2?Q?jyeoTf0USwWNbD5a3cwUr9lhmmKB/VjZUwjVy8GsWsDApZ880/Sut7foex?=
 =?iso-8859-2?Q?qyeSOWpK6gibUectKUjQrYNKImujPi+HD+Y+o5bkv/8YVRToe40dCNbuY0?=
 =?iso-8859-2?Q?OSGu0kITWdX+HYaHsAvnZj77jlm/prqrZWIGsZ+ww4CyeyXCxazixRIfdc?=
 =?iso-8859-2?Q?2HJaXpGMDmexVKGWpMTgE2NlOeeK3XPLFZ7O9ZNkN9x8UovHMrZv+iNmUe?=
 =?iso-8859-2?Q?ljhdi4UP78d5T96nTMhnvR2d1ey2kbSl7jCIW3/o7Rb1c/pv+RIGEuZpCU?=
 =?iso-8859-2?Q?fhu7gUkDRFXfD9zAyWPBBo/Vsz3QHnGJqA98h20dumTCL3EdHTKUNXpmGX?=
 =?iso-8859-2?Q?nenxt6FXHADqnzAQy0udBIpq0qYZ3WscWPtqVOkszT9c57zlxfx0dSykdG?=
 =?iso-8859-2?Q?6kwRnPmzBPqwCKZLTmFt58u/cpSQoMF2+9kiSbSKrEdIjJk+Ki076jfpND?=
 =?iso-8859-2?Q?47tnI6n4IU7+GGI1qcLnKKIzC9K4dBEiSysE95ppy7TdJBYnFt3XriQeFj?=
 =?iso-8859-2?Q?1Ai48PDoZ7Et6PD8VvgcQxpLm8LHAmH/1RrhjKvvvzQZJBIwSdI0/P7ODW?=
 =?iso-8859-2?Q?VlshIzX7OcyaDOrhMxG1Lonj9IgXuQRJAEuy3XeBLbdep9ey1+8jey8Ogl?=
 =?iso-8859-2?Q?K7kBK924PghDbQnxTphYGdtTlr/jIXAafGzN7A4M987GQNZfI1THmHPSiG?=
 =?iso-8859-2?Q?XbbC2ctPxHqpZfMYv02qZgeWy8UcpATboxcvfbDJ8INtkf1nygptYIDL8D?=
 =?iso-8859-2?Q?jGlPR/fFNEke7tUkH9fWdMeKgTVwRYFOfh3yQNSj8VMgoqe8FGekGd4N/X?=
 =?iso-8859-2?Q?ge65UC9p0Ycce2hqdfT0FtAeo6Rnn78i5HSU1oFTGKsoU0+rzm0v5zRUFa?=
 =?iso-8859-2?Q?DSaJFWmhdyx8IlKk4WgS5Hvksr1tmxuJ+GxUE0abd8o/uIDn4mggRz2fs6?=
 =?iso-8859-2?Q?Em3dYtHirTL4XGdi1bCrHTRtnPty54uQMV/nJ7R9ZJNvqs4JoBhoecxqPl?=
 =?iso-8859-2?Q?SeZMKB436WS2l3rN/jMjGpANMFoE5IU9SBqomZ4cfk8jNQRWEHTaBi8GK/?=
 =?iso-8859-2?Q?q10216wi7JplQtDSVWfNdkLT/hZoj5jBWt0YJhew9FfEDtjzAjk5sSPZCN?=
 =?iso-8859-2?Q?YzSjJtQvwsPj4IFsJkNy3t9+W/vpoh7+cxkXsmCbGuRXVJhm/aWg8JlP/q?=
 =?iso-8859-2?Q?/NdCW/spnG6xfoeGiKzgLtDWbYVyMCvqcMkIDIOlL/bIbsKKeq5WupYVef?=
 =?iso-8859-2?Q?WS+j6tXzs/diD/GOf3OSc3gvNb0M/z+TbnH5CbWE2zcahh9by4DcswQs/K?=
 =?iso-8859-2?Q?IOqxPvSjTei7X84uuRvooQ46qFPr6ooSpLAPR/M9re3xgw2Pc3DQ7B+UB7?=
 =?iso-8859-2?Q?HC1w=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a7ea31c-a12f-4a7a-90c2-08d99927bc6c
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Oct 2021 08:56:59.2845 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OuCc/i1NR7CI4Xt17Ze0D4ZVPMCZTtKaDseDDAEnB7b5Ii3suUAofK6MkeotrpuvnjCTHy2YE3Txl6me88kXtFEo2Xmw1RQjhramPWygKTc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5576
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] iavf: Fix kernel BUG in
 free_msi_irqs
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
Cc: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>, "Patynowski,
 PrzemyslawX" <przemyslawx.patynowski@intel.com>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: pi=B1tek, 22 pa=BCdziernika 2021 10:30
> To: intel-wired-lan@lists.osuosl.org
> Cc: Palczewski, Mateusz <mateusz.palczewski@intel.com>; Patynowski,
> PrzemyslawX <przemyslawx.patynowski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v2] iavf: Fix kernel BUG in
> free_msi_irqs
> =

> From: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
> =

> Fix driver not freeing VF's traffic irqs, prior to calling pci_disable_ms=
ix in
> iavf_remove.
> There were possible 2 erroneous states in which, iavf_close would not be
> called.
> One erroneous state is fixed by allowing netdev to register, when state is
> already running. It was possible for VF adapter to enter state loop from
> running to resetting, where iavf_open would subsequently fail.
> If user would then unload driver/remove VF pci, iavf_close would not be
> called, as the netdev was not registered, leaving traffic pcis still allo=
cated.
> Fixed this by breaking loop, allowing netdev to open device when adapter
> state is __IAVF_RUNNING and it is not explicitily downed.
> Other possiblity is entering to iavf_remove from __IAVF_RESETTING state,
> where iavf_close would not free irqs, but just return 0.
> Fixed this by checking for last adapter state and then removing irqs.
> =

> Kernel panic:
> [ 2773.628585] kernel BUG at drivers/pci/msi.c:375!
> ...
> [ 2773.631567] RIP: 0010:free_msi_irqs+0x180/0x1b0 ...
> [ 2773.640939] Call Trace:
> [ 2773.641572]  pci_disable_msix+0xf7/0x120 [ 2773.642224]
> iavf_reset_interrupt_capability.part.41+0x15/0x30 [iavf] [ 2773.642897]
> iavf_remove+0x12e/0x500 [iavf] [ 2773.643578]
> pci_device_remove+0x3b/0xc0 [ 2773.644266]
> device_release_driver_internal+0x103/0x1f0
> [ 2773.644948]  pci_stop_bus_device+0x69/0x90 [ 2773.645576]
> pci_stop_and_remove_bus_device+0xe/0x20
> [ 2773.646215]  pci_iov_remove_virtfn+0xba/0x120 [ 2773.646862]
> sriov_disable+0x2f/0xe0 [ 2773.647531]  ice_free_vfs+0x2f8/0x350 [ice] [
> 2773.648207]  ice_sriov_configure+0x94/0x960 [ice] [ 2773.648883]  ?
> _kstrtoull+0x3b/0x90 [ 2773.649560]  sriov_numvfs_store+0x10a/0x190 [
> 2773.650249]  kernfs_fop_write+0x116/0x190 [ 2773.650948]
> vfs_write+0xa5/0x1a0 [ 2773.651651]  ksys_write+0x4f/0xb0 [ 2773.652358]
> do_syscall_64+0x5b/0x1a0 [ 2773.653075]
> entry_SYSCALL_64_after_hwframe+0x65/0xca
> =

> Fixes: 22ead37f8af8 ("i40evf: Add longer wait after remove module")
> Signed-off-by: Przemyslaw Patynowski
> <przemyslawx.patynowski@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  This is a fix but it needs to be targeted to net-next because this featu=
re  is
> not present on net yet.
> ---
>  v2: Targeted to correct tree
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h      | 36 +++++++++++++++++++++
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 20 ++++++++++++
>  2 files changed, 56 insertions(+)
> =


Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
