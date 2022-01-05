Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 12CF1484E0F
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Jan 2022 07:14:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7B60560F1C;
	Wed,  5 Jan 2022 06:14:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D0r1frmrkOva; Wed,  5 Jan 2022 06:14:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5BD5D60ACF;
	Wed,  5 Jan 2022 06:14:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DF9121BF951
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jan 2022 06:14:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CF87940327
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jan 2022 06:14:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aoodkVawveVF for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Jan 2022 06:14:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D4A7640178
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jan 2022 06:14:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641363244; x=1672899244;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IBsdQZbvcYDSGg0RL0u53c+M64DZ73mRzSevKkhZXlI=;
 b=WpRaXpXzkGf9w+lu3d0Ysh4T1dARt8/2UZ95IYqcMoC8bblQazxYinL/
 gCCyW2Otr0oxaCvgDyA4vem9J1GM1TCjy4S4D64HLyeeFPeh6iQONd0I+
 woDamW3/q5pBO+u3xt5GE5j2n32aj5miA8wwBui69MpSHqV34Vbs9pt9h
 q6+BCN9wTUd8Fq6ofEADlfCkPjcsDG2zw2igNz5F78aMqprFsRnBU9kj6
 rciMkjJfr4Qkc70aUoNensLDYJI4k5kNQrB4z/kgwsvFPTZCFem46K3AP
 Vi/JVVxY7DecMzP4OZ7suWjJ5OubN2Ri8j75IgOQARLUXwwpRGVOP83/p g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="242584575"
X-IronPort-AV: E=Sophos;i="5.88,262,1635231600"; d="scan'208";a="242584575"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2022 22:14:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,262,1635231600"; d="scan'208";a="574276068"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga008.fm.intel.com with ESMTP; 04 Jan 2022 22:14:03 -0800
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 4 Jan 2022 22:14:03 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 4 Jan 2022 22:14:03 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 4 Jan 2022 22:14:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ltMrJLqzuxFcAEYQcAN1/T/Gk1BMlU+7b7OkjLCoSdbe22Kvg9LcIsMsseyljkEpYOLEg8m4g0jO6Ua3PtlXhVlgS/VpPW+9Tu3bKD/ogYafyUYtQtBS3su1ZqaFwbu2mqHKl5Vy1JuguF0hd5hXzsjmnzNajBU/zqdQCUyNLzC2wOXcUVM7QVBWY+GWaJ5eYp9ev62XHeNy/f5Bw7yPIr2LbdE7ZacWZKRXQWa5iIBM/tTFIWqxjK1ziYme2F2UupnOCh6cRAa0ULSC3wn8Y+vMg1ynBDOuKGP52yYN8P3wN2htvwnrvvf/+Ppr8KTEQfb3o22S+D53uubDaL7KpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2LVh92VQ0dolcd0yJbJiuqkSDfNwx4UHAwvBrgJUVNc=;
 b=cXKu0hYaETSsWFJKreJdZo8sRNs9ElsGmNHaecPaIqqfFocE2wXXnxgSB36tcj28F3qVsGQJpRlbkmzYXQUrRHFU9acL4jTEYk4glSduWTZfgm3TeLo6PmJ8KrkvOj1QbSRxR73k+FMGDQW3pqZzcsIE7InoU5ookuEx2Y30OcKaijW46KpG+QNkVEdZpq97qiPAv7zHKzMM1IVLkaJPevNO7/9oI7wZptuu1OlXdx5ULP6oB5Teme3QkCXpyePnWHDevykqlh8SxZcGT1QSYfYMBTp6Hgyme5f8tqC5M0MU6vrycx+LwqRION07Xtvkb6msBZYKtzIJVcwJFc/bEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3292.namprd11.prod.outlook.com (2603:10b6:5:5a::21) by
 DM5PR11MB0025.namprd11.prod.outlook.com (2603:10b6:4:63::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4844.15; Wed, 5 Jan 2022 06:14:00 +0000
Received: from DM6PR11MB3292.namprd11.prod.outlook.com
 ([fe80::84b0:d849:dadf:e47f]) by DM6PR11MB3292.namprd11.prod.outlook.com
 ([fe80::84b0:d849:dadf:e47f%3]) with mapi id 15.20.4844.016; Wed, 5 Jan 2022
 06:14:00 +0000
From: "Bhandare, KiranX" <kiranx.bhandare@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] i40e: Fix queues reservation
 for XDP
Thread-Index: AQHX4q4au1Lc9XaYbEijm4hlUqcaOqxUMSrg
Date: Wed, 5 Jan 2022 06:14:00 +0000
Message-ID: <DM6PR11MB3292FA6E32C045F47489A062F14B9@DM6PR11MB3292.namprd11.prod.outlook.com>
References: <20211126101122.25085-1-mateusz.palczewski@intel.com>
In-Reply-To: <20211126101122.25085-1-mateusz.palczewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6875e982-8dc4-4be4-5c87-08d9d01290b7
x-ms-traffictypediagnostic: DM5PR11MB0025:EE_
x-microsoft-antispam-prvs: <DM5PR11MB0025F231B430F2A963818382F14B9@DM5PR11MB0025.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3Vkz5z5d3k7zxsEBHrr0+32gPSQ76Vmslm4UGPgIe35l4EPiMI+sehh6NooqwHkrsIAYo22bsR+t68Qk5DTbrVpuG5HPivg3JpxTgR1rnQj86RbmbqsfGZPOVUHT3FmBCee+U/DCu8nFgFm5F0vvz5q8J39olF5xpsEzXhEoFdnDbY8eVdU2Oq/hFoUdkWNV2jJGyj1eRtjp4UyXLvX+4lp2Bjp21j7fExmypQ5fMZDcGmE02uP74h4VNZFux0Rwb9Og36XLLBZwHQaIHD4AytgwdhEyYewHoIebccwplKXVKF8dYPxXZwTunL21JbViR94vMK6oFIetm2V7ZKgmYrsi1HNrn9m4bLbiLexMIdWhUvenaZAFKK7ezv2Lf1j+tNC7ZR1n5zAqOXA2L3a3rr57DkXxKysIvMnWINYCvwEpVkLQ3/CfUEeKxXVBqeA2FSrmg+ryvuD5UfFCce9Il0c+cDC6x3aUsUDF0SD0hcow5MXPTcAx4Gf6n2VfQkmM8BAdIzYBG4Z9dHx+xeb4Db8ZhkwKcYBqq5AAuLc1lexif5KdDbgibVDNOnfMWiPTshd3S26r5HmmB9U4uJtnJhIB+6mmtd/5iQjrU0jsFa8mBJixIGYcDzfOptiFcaRjvGiRJR2OJJb9onvZqACE0rz4Zc/LwoSPVITPc8yqtrvZEeF4cxdLMEmbRC18Wv4kgPzlXkZvu0duWoxC07dcpg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3292.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(38070700005)(8676002)(86362001)(71200400001)(66476007)(26005)(2906002)(82960400001)(55016003)(122000001)(5660300002)(83380400001)(4326008)(53546011)(64756008)(66556008)(316002)(66946007)(76116006)(52536014)(66446008)(110136005)(8936002)(9686003)(33656002)(508600001)(38100700002)(107886003)(7696005)(54906003)(186003)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?wYPXewb81dxO54T7RkCNTOgz0/1N7IKo3P9TgxkdC+mKxSz7pRTG5JmXnjU1?=
 =?us-ascii?Q?ZqXm2LPSgBz5g0XAP7X/diy66QDMcXelwOxlQzyrtiIv30sLl6d8DxKfE7dc?=
 =?us-ascii?Q?XIWYnfDaI+uNvvqguxpkZAIoQZa+4NpZV3JmnnFiMhc6bj+aZrm0fEYzzjy6?=
 =?us-ascii?Q?XhaoIzOHh5Uy5qQqTxbfBVDf3dKWmGy0TtLeISDl7wuFwVE2RAKukr4v9Xh9?=
 =?us-ascii?Q?7+haV8dLLKewls7EkHXwrVbOK/+YSomO+QG1wuSaTj/iDGr9ugEWC4tpnIVb?=
 =?us-ascii?Q?vVDyg4FuaFHCdQrUYVDiGRUVWCtTt+MVMu1EJEt0ZbvQs60id+fUX39EVMCS?=
 =?us-ascii?Q?2nzCQBkZ3Oy38rqdiQNcqA5B+PXEhALAUJ1LOvdTcT58oLziq/mRwTpWhDl3?=
 =?us-ascii?Q?CvNh7789NotAzSI6feIJ9WWkzJyMlL/0j5r/WVnkIo0koYFD88q+Zwn7LSkL?=
 =?us-ascii?Q?QNZDabHC7VC+O+zsauL+FggvzHEaI9g0K0Hc9EkFR/0ITYhdSWKE86bzioSV?=
 =?us-ascii?Q?jp2WdWOYTHF47g5gASzPRy5cWT/nnPUlKl2+qw5BFVxOyRN8Aq7bNpiDO2wd?=
 =?us-ascii?Q?mCLu7a23l48S94Ber0kjKyHrJZyoNa+wl/JjeKoZTzSNZnlt9nt41xlM4TD8?=
 =?us-ascii?Q?HF23H14tbTi6SCA/+EpJs5s4FpEFLkQXkuMX3sjMtAzSWOLIh7zcIdTzpQeN?=
 =?us-ascii?Q?cVVHoyTBVzAXAFSr0fOLmYT679yRcR4FHsx8LcvcedH0vbDOylooAfPQTh/I?=
 =?us-ascii?Q?7PSsOWJXeJ8WlzxIznbmZ9IvYjmxakfajsk+sYCpLiSnAsYFR32g5PJqM/r2?=
 =?us-ascii?Q?Z2g3ZmdBTyIT69A7e3lVYRXhK+/HIu3gVcm6Exr/zNq2MUlNUuzt6D5tI6AV?=
 =?us-ascii?Q?JER/uLuQUQ2BBixxb2Ry2NutR1cMMiVjMQ/BkcVIdFN+Oi1f9BAM+m2bXnCz?=
 =?us-ascii?Q?C0UeePCGZaXax5wbDyT5VgtA0GTcnnCxA2kOXpQ6+hxLJLtlMh1cr9MIG95+?=
 =?us-ascii?Q?eJgRvBGWZ1F8T4KZEZfJI9W9+7H+vem2J3QSHRPnIqXW9yp21C0wwA9x03qs?=
 =?us-ascii?Q?p97uzj1eOvu63Ba8d8WUoK6nym21SC3qNi16uJqOPZLnehfeTXv19O9ywkli?=
 =?us-ascii?Q?2FfqKFZydEXDmk6oFBFF6ae7L+iwgHsk7wQX0fKwcdn0bs5l2JIzD1x+wu/M?=
 =?us-ascii?Q?DDf2USeiEDUdDhywo+B/32iTpzDVQjb/b0SzH2beBBg58QmQX8BxClTAexRV?=
 =?us-ascii?Q?e7lJf/b0BZgrA/GwsesH/UTgYFeJkQaVMLY/oLbYyaWIrd8d4C1P0yULTDDz?=
 =?us-ascii?Q?fB4gl8o6LjS8tnYjnqyeUAWIY6wwf7ig9qm6sQItJIPT0T+ThTrRBKDPEKkl?=
 =?us-ascii?Q?hrSl50qO1B4d5YcxRxFCphF/PGXGz9WY9HVxBsX71EF6+cbQE4YEBdPPfeLe?=
 =?us-ascii?Q?XHXjQSNWawpzcNL8Jpsjxm9M8RLKQmY0MvkwA2doHJlbF2xkY+EMG0nPizID?=
 =?us-ascii?Q?6qMs5+cBawx76LihcP+soV1QO6mLsQG/9IiGc3Ho0By8wiDxuOYQ8ucsDsai?=
 =?us-ascii?Q?PpbsUY0am+mCbZT3YopOdU2VdUq8NhfdOKXZEQ9PqZZ4OrgMN1OWVc+pncs+?=
 =?us-ascii?Q?bI0ZUiOSMP89ADofMR7Q4Ty5W7RU2PyJNLblO6vpWq30kWZzgM0L22N7NwkZ?=
 =?us-ascii?Q?f9z5+A=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3292.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6875e982-8dc4-4be4-5c87-08d9d01290b7
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jan 2022 06:14:00.4623 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RJEC4iy9SScmoZCfiEh+Y4LwZuLAYA03O+m5v0yBV6eNBlq/hmrjXXe4fAwZriVqvm5Dp8vMF8zlw8ntTjR3ucMgM9e+X8QxT3nokAb+/Jg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB0025
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix queues reservation
 for XDP
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
Cc: "Dziedziuch, SylwesterX" <sylwesterx.dziedziuch@intel.com>, "Palczewski,
 Mateusz" <mateusz.palczewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: Friday, November 26, 2021 3:41 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Dziedziuch, SylwesterX <sylwesterx.dziedziuch@intel.com>; Palczewski,
> Mateusz <mateusz.palczewski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] i40e: Fix queues reservation for XDP
> 
> From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> 
> When XDP was configured on a system with large number of CPUs and X722
> NIC there was a call trace with NULL pointer dereference.
> 
> i40e 0000:87:00.0: failed to get tracking for 256 queues for VSI 0 err -12 i40e
> 0000:87:00.0: setup of MAIN VSI failed
> 
> BUG: kernel NULL pointer dereference, address: 0000000000000000
> RIP: 0010:i40e_xdp+0xea/0x1b0 [i40e]
> Call Trace:
> ? i40e_reconfig_rss_queues+0x130/0x130 [i40e]
> dev_xdp_install+0x61/0xe0
> dev_xdp_attach+0x18a/0x4c0
> dev_change_xdp_fd+0x1e6/0x220
> do_setlink+0x616/0x1030
> ? ahci_port_stop+0x80/0x80
> ? ata_qc_issue+0x107/0x1e0
> ? lock_timer_base+0x61/0x80
> ? __mod_timer+0x202/0x380
> rtnl_setlink+0xe5/0x170
> ? bpf_lsm_binder_transaction+0x10/0x10
> ? security_capable+0x36/0x50
> rtnetlink_rcv_msg+0x121/0x350
> ? rtnl_calcit.isra.0+0x100/0x100
> netlink_rcv_skb+0x50/0xf0
> netlink_unicast+0x1d3/0x2a0
> netlink_sendmsg+0x22a/0x440
> sock_sendmsg+0x5e/0x60
> __sys_sendto+0xf0/0x160
> ? __sys_getsockname+0x7e/0xc0
> ? _copy_from_user+0x3c/0x80
> ? __sys_setsockopt+0xc8/0x1a0
> __x64_sys_sendto+0x20/0x30
> do_syscall_64+0x33/0x40
> entry_SYSCALL_64_after_hwframe+0x44/0xae
> RIP: 0033:0x7f83fa7a39e0
> 
> This was caused by PF queue pile fragmentation due to flow director VSI
> queue being placed right after main VSI.
> Because of this main VSI was not able to resize its queue allocation for XDP
> resulting in no queues allocated for main VSI when XDP was turned on.
> 
> Fix this by always allocating last queue in PF queue pile for a flow director
> VSI.
> 
> Fixes: 41c445ff0f48 ("i40e: main driver core")
> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 

Tested-by: Kiran Bhandare <kiranx.bhandare@intel.com>  A Contingent Worker at Intel
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
