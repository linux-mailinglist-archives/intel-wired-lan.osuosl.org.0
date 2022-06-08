Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D42A543018
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Jun 2022 14:18:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E5F544048D;
	Wed,  8 Jun 2022 12:18:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2XFuUpGZypfe; Wed,  8 Jun 2022 12:18:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DF9E740002;
	Wed,  8 Jun 2022 12:18:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 00BCA1BF45A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jun 2022 12:18:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E24AA4187C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jun 2022 12:18:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J3j_mNOylWGo for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jun 2022 12:18:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 81DDF416DD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jun 2022 12:18:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654690729; x=1686226729;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=RO0QT5RsXGeTDvjjnIPdUMjs7I9tj8wjQE+Y7pxsoLE=;
 b=BvPQVganONLZmpOaJFmyLxa4hCdJKD+bQ4A2wSSDwEvvHmn5uO0Jmk7X
 mpXw7wZRKDrysgHiv6T90S0kig9608TFu5/394/a3pOOjYBlNCvyghBVq
 fZNB8G6KvZpA1rsNqlkdhX/DNDBlvhl9RJwYto0zDMgFDYYg5aDq/pxuJ
 qHGRFcaZ7FCw1UppsqWJYbEgSKa9blZTnelQStyd3/P6fSL0EpcvveMws
 hR7LcHWpis473RFdYuNZ4m4pqpUcAX4MGaLDnLVm3O+8AGqIhtb3S8zbC
 5UGHwLwwq/QTA77FVP4a8ShOCmU/LIQ+EZI96a3y2y1isWwLPlLeBfM3M g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10371"; a="265678942"
X-IronPort-AV: E=Sophos;i="5.91,286,1647327600"; d="scan'208";a="265678942"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2022 05:18:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,286,1647327600"; d="scan'208";a="683300204"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga002.fm.intel.com with ESMTP; 08 Jun 2022 05:18:48 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 8 Jun 2022 05:18:47 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 8 Jun 2022 05:18:47 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 8 Jun 2022 05:18:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JtZ8bOnUGo/iVVgggKptxdvz4bmHtXs5Zqfc/Dvkro62SDMjPsDZTANtKUQp1bLvd7ZckSx+nAUS4hu5oCu7moTNoR9r2J5XevQvwRtn9hPcVcvsxsIlLF9QeZ7bfsP7xAzelDYsy4u7ByJrqhGdvtW7EtfBhTSXa9nHhB21PShejzjhNzHO/Eud6o7ki7ZOywQmq/tdXrfWNVuCH5fdPUydRvaV3vYcbhEQhIw8hJ6DQ/fH0INVNEwaikd+zE/BbcgqLzKm08YFOaJqs9kVbLsFqkSyigB8Qn4zkfg9+WptwtrzLZ+KZ9Ts3KKtXMYxaQ/ovTdCwkKoXcmvBg7J5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8XDFA4AhrmJpkea88F5P6QeIeQ38MTyQjGuloMFSaRY=;
 b=oJ1o8rdp7bvHS5IitMCK+/nNY346Uv9E+DwwhTWVzWflwzh5oZQ0s8P6b31CzXEcFExYrwLr6od3hdTQd/wan+IBlsBQ9qm+ZVjOcfjkbUyi00/hIfAOQK0NFvTPArv1mirZCHTyvaPYhJuIAtYw1LVpDd+H3TjMnrII52aWAACfgtz4h+/lnXfK6yGdV87mzhfIuw8KcVGaW2O4gVAzNYWRnSh6i23c5Hz2Kl/fYUs1X625ur0F7MTc85cZnnuOqrlKdQBruFQoN/fh0br97A2FeUJTXS77+2cKCWiV9q7shv26JbJdfznRxANodJ0WxXuhvJjSIjsC0131Nze2lQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB2733.namprd11.prod.outlook.com (2603:10b6:805:58::22)
 by SN6PR11MB2862.namprd11.prod.outlook.com (2603:10b6:805:5b::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5332.12; Wed, 8 Jun
 2022 12:18:45 +0000
Received: from SN6PR11MB2733.namprd11.prod.outlook.com
 ([fe80::6d6c:33b5:6380:ac81]) by SN6PR11MB2733.namprd11.prod.outlook.com
 ([fe80::6d6c:33b5:6380:ac81%4]) with mapi id 15.20.5314.019; Wed, 8 Jun 2022
 12:18:45 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH net-next v3] iavf: Do not modify queue number when
 removing iavf driver
Thread-Index: AQHYexumJMI4tidwe0WhNvBNXt10Ia1FbSCw
Date: Wed, 8 Jun 2022 12:18:45 +0000
Message-ID: <SN6PR11MB27334382BF124803567BE989F0A49@SN6PR11MB2733.namprd11.prod.outlook.com>
References: <20220608093708.2986414-1-jedrzej.jagielski@intel.com>
In-Reply-To: <20220608093708.2986414-1-jedrzej.jagielski@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fa99d263-be4d-4347-3dc0-08da494908cd
x-ms-traffictypediagnostic: SN6PR11MB2862:EE_
x-microsoft-antispam-prvs: <SN6PR11MB286240CEDAFA781C76FA5E6FF0A49@SN6PR11MB2862.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JekdoPpyIGJTIqTy5OMvwZuv8BM4rvHT3xAIsf89xMl/l/u7A5Tk0ls/OxbtjaMW3IVTUcs672rD2LPAhNAQzdsIs6NU2EqyKAmfrGmr9Ca0umucrizjExg0gk7otn1hPESMZRadE0JYv43HXU2LIqcHAZnBKc0J2kxAXfYQGTfA4nafA1s0oYfcYtQiANz6YMaKea1AubjxurL8wLJub4b1lo06plNyczVtTA/3EeRrtL0SzE4iyfAS/B1dpkDVbmEtcBg+4bDpL+tQ0yUM6IpNVFYGT+6/SDeibOZ+xXcLGpAWVJEdv5rnDAimzRmh0kQp9yskiTjfv+0+qF1V6F5VoV3BAgqx6tvsStMTgsfmuflyzS4zAF/3vwHseD59uL3X8o3/EeNcQCb53QCFPCmjpqfJFIX+oxF0ZmiFsxQRcI7jU8WApz1v3DISXCv4vbgV03WQfv6ogiKVg572gtqgLqO1A8pzU3tD/1DJsVw7B29ge9PZSYecWjDZPBduTqOVg2xlr1X3K7+LpLNw23xBuPRWc8lmw9j3Ck9mLLq6uZYRVHsbMWG4mtNtpbwnWxtwEmzb4XckRcVIPog1DvjJfxWmX28k9WwQZYK2XnTcMd3l740SRR7560PabKHIaI6EJJE6lCuo266hj1QeZs07bzLlSA2467luzSz2WyVPMc/BRwNfaV6gJmA8WM9jwNFb3CHMDqIcsbtH3GTKoQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2733.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(55016003)(26005)(9686003)(82960400001)(7696005)(6506007)(5660300002)(66476007)(64756008)(8676002)(66446008)(66556008)(52536014)(122000001)(76116006)(186003)(38100700002)(8936002)(66946007)(2906002)(316002)(83380400001)(508600001)(71200400001)(38070700005)(86362001)(33656002)(6916009);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Aw33XL/a82V+JcJhXWgnYe/GnYCdo4epgdALoD2rCykMd3raw+h8plnl4wqZ?=
 =?us-ascii?Q?o1zADBjgqu1W8mr9L8T71OsybW3uBdPEbM1bdrZL/k0UHSBYqtQhBeEdhEZ7?=
 =?us-ascii?Q?pdcGxZ4Q2SNXEdKpZDtGzlgH3wqkwBg+sLj8ttTzoIdVSTmUaxqspmKPjcPg?=
 =?us-ascii?Q?wzzYUcbaRtb2BOLFWainP/i6iNoKabNltd7jDnlzWwoV4ouvhL0+Vi1D/0+D?=
 =?us-ascii?Q?B35/wWTCxDtlI66rfG9drxVDw2lSHfoQs+ru4UTFge1ui6E2suzUy/wgmyDl?=
 =?us-ascii?Q?7C4OUxrFQRe+J73oDx4ClZH6QqitV/uw5V1lENCz1m0GyOK1roHurwHzm8tP?=
 =?us-ascii?Q?xM36Xa5ZyIFausdqFHqY+PvTaMovGKb+vhC2nEA1sdpLg4QRf27T+aH9FgSY?=
 =?us-ascii?Q?ozgC2uykhyzTnIyoeqYrM2c9IzNBIvt3/oY4jOmi8E3loMmGRtjcj8nQD+BV?=
 =?us-ascii?Q?aDupsqCV0vVJTHVBzmGNU6kcZBnccHNXkvHgMMlbt12gn3j7UDrkaVntntDN?=
 =?us-ascii?Q?tBSoE93TsQ0m5z0a0jbtePgGG8bmzUiHKyUBd7Xq1xiFWbcj7PbibB1vmimz?=
 =?us-ascii?Q?3gEAHzvw9t4CwXqqkl5tVauJzLWYInVkqDoPo0UZrYcZvFVVbK3EFjgxZOVW?=
 =?us-ascii?Q?qbgWn3DGWMAr3ZWsc6BRRL8SUZbSZuG9yY+cPVZiMFe5eMx/cjPols7V1UPz?=
 =?us-ascii?Q?v2SkZHXPqojX+UujEA7Iwca7kF20raVS4iJSVE5JRCO6WxnT60BwFA6Y3kQk?=
 =?us-ascii?Q?tCd9JmUTSYueEbUYnuuEC8qoL414TI+PeODEjC4ZdexM4D8QI0kk1QXIzIUk?=
 =?us-ascii?Q?1I3T9h7VdSAc+Ku5ozlzhe0tiv+XRmRtzBb+3OXGZ5qLr2QvOD6IgYqOtdKq?=
 =?us-ascii?Q?PIw3B82VwgfxiGd+rqiuhQgpfRHDlki/V85+NU2UFROavFoZ9eKoarh2EnNG?=
 =?us-ascii?Q?DYhedDm+J36Smu9p4FvTJYnNlM5Bgftwli6JP6E6Nss4H9lZd2B9I8xp0HUL?=
 =?us-ascii?Q?/e41i6JnCigGTB4p7fUGDaI2CUZviJKrBvH0TAVVIFpTawPYMftofNkzG9yx?=
 =?us-ascii?Q?FZ8Kyi5TdAr9/0iCSxqVFeLvMtFgDp0lJpyxtwdZb38UAg50mx64SQjMEdQH?=
 =?us-ascii?Q?WbGTQ+HHRGMDi31wMwNEv7ELjMI1+l8yud3iD60WkSo/+xIfhb1mZemNlshm?=
 =?us-ascii?Q?KeuHwAmUEv/NCnQXdxfUFzeQzInRy8Q0/9SyqINPIOKvxqUKXwPTyxW6SuKY?=
 =?us-ascii?Q?puzE6FikpOfmOerzYCqhovnJ82MoEOwkABTxM/fp/ObFPWCxYqqv8uCMPTFd?=
 =?us-ascii?Q?O77EkWPESL2h8lZ4K3KXxJLFVs8wY1BJd7UDxayzsoNZLG2XAFIiwJqFB8HY?=
 =?us-ascii?Q?AUgUHPilmC4ZyeQo59MJ0OXKCPD1xQsFPFsAxW5uBZQfvUFwlrxiuTDIidDP?=
 =?us-ascii?Q?AFo7zFTJcBQPlS/Oegu1y2piUfQuDI0KcDsdmp087mRWJV4pVUILSqLCRSzy?=
 =?us-ascii?Q?+nvXL55/bwBExjVI/BSsjZZhruSH+BSAP1ivopim2jO+YKUPriEd/UkCVC4N?=
 =?us-ascii?Q?+h/GMBUjegcbjm2OcN2/hDKweuZFq7J1wK8m2sTxvsRDu/bduyIWjyrWNMzt?=
 =?us-ascii?Q?vxzRoLklNAo+Vtp+edBz+kAG9ImDbBw6OPByspoEVJLZpXYWzB+mf6R8ZIqL?=
 =?us-ascii?Q?G1uqvqwaoWFMqsS9PPwhdBvlyrvItmTvwBDM9qt2CmzpR+Hn6X2oCSKW6Eaj?=
 =?us-ascii?Q?vUO5qbijqfBgbZx/iO/Bqe6aa3UrH10=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2733.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fa99d263-be4d-4347-3dc0-08da494908cd
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2022 12:18:45.5298 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /arTDxwz7k0EELJ1960l69uzfwXQsjWUmHH+fPNjEMhEm7HKtgCHAMS/9Jk9pQil+YNffY5Jb9eIImfUVRbEJXXhgfX+2XjtTs9OgRufnMg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2862
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v3] iavf: Do not modify queue
 number when removing iavf driver
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

>If VF has configured tc qdisc with number of queues less than original set and then the driver went in removing process, tc resources are also releasing. Attempt of modify real num tx/rx in this state is causing call trace, because kernel is trying to release uninitialized queues
>
>Fix it by not modifying the number of queues when removing a driver
>
>Call Trace:
>  net_rx_queue_update_kobjects+0x10c/0x160
>  netdev_unregister_kobject+0x4b/0x80
>  rollback_registered_many+0x27b/0x550
>  rollback_registered+0x56/0x90
>  unregister_netdevice_queue+0x73/0xb0
>  unregister_netdev+0x18/0x20
>  iavf_remove+0x421/0x440 [iavf]
>  pci_device_remove+0x3b/0xc0
>  device_release_driver_internal+0x18c/0x250
>  driver_detach+0x39/0x6d
>  bus_remove_driver+0x77/0xc9
>  pci_unregister_driver+0x2d/0xb0
>  iavf_exit_module+0xc/0xb9a [iavf]
>  __x64_sys_delete_module+0x139/0x270
>  do_syscall_64+0x5b/0x1b0
>  entry_SYSCALL_64_after_hwframe+0x65/0xca
> RIP: 0033:0x7f6e29645a8b
> Code: 73 01 c3 48 8b 0d fd 03 2c 00 f7 d8 64 89 01 48 83 c8 ff c3 66 2e 0f
>       1f 84 00 00 00 00 00 90 f3 0f 1e fa b8 b0 00 00 00 0f 05 <48> 3d 01
>       f0 ff ff 73 01 c3 48 8b 0d cd 03 2c 00 f7 d8 64 89 01 48
> RSP: 002b:00007ffccf5b8098 EFLAGS: 00000206 ORIG_RAX: 00000000000000b0
> RAX: ffffffffffffffda RBX: 000055b5545f6c40 RCX: 00007f6e29645a8b
> RDX: 0000000000000000 RSI: 0000000000000800 RDI: 000055b5545f6ca8
> RBP: 000055b5545f6ca8 R08: 00007ffccf5b7041 R09: 0000000000000000
> R10: 00007f6e296b7f60 R11: 0000000000000206 R12: 0000000000000000
> R13: 0000000000000000 R14: 000055b5545f6ca8 R15: 00007ffccf5b9490
>
>Fixes: d5b33d024496 ("i40evf: add ndo_setup_tc callback to i40evf")
>Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
>Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
>---
Sent by mistake; wrong tree. Please ignore
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
