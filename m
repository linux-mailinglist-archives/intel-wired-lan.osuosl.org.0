Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1618332800
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Mar 2021 15:03:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 62FD140199;
	Tue,  9 Mar 2021 14:03:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vFpoCz9Q6Ltv; Tue,  9 Mar 2021 14:03:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5E1744018E;
	Tue,  9 Mar 2021 14:03:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4DBA01BF2F0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Mar 2021 14:03:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3992183D70
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Mar 2021 14:03:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fot9hqZkVVcw for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Mar 2021 14:03:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4CCFD83D89
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Mar 2021 14:03:00 +0000 (UTC)
IronPort-SDR: bU6IEHAcezu4ugHHXsVZ/OhwXuK/krRF7qrABF5GEsNrGPKMxn1OHMDT7cdT9CMYna9ziYNJKP
 t8sqdxy47unw==
X-IronPort-AV: E=McAfee;i="6000,8403,9917"; a="187604236"
X-IronPort-AV: E=Sophos;i="5.81,234,1610438400"; d="scan'208";a="187604236"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2021 06:02:59 -0800
IronPort-SDR: HNl1Cte9JUoBCpo++hA1dAj8UzjE8WZ8IrTQSy6IfddbMbppjU01XDMDYqN82miumzZ/e95AxT
 kWUmW8y6+W4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,234,1610438400"; d="scan'208";a="430765871"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP; 09 Mar 2021 06:02:59 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 9 Mar 2021 06:02:59 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Tue, 9 Mar 2021 06:02:58 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.107)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Tue, 9 Mar 2021 06:02:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gUZVRG+Ycg+3zcGK/hMx2QxJaiPEF4TWbtfwmHEgQKJw04gd8VBjn2b+PMbmSUAov6hGRuWkzgDeB1kGYX+kIobtrMqpbyezGR1gHFabZ3HCP3V05nV8LVNTvhGCznG7la7BXpK1qyuquZUGUmQhsgxSl1YtxwDDKMXC5nd95xLuHrtGyo8hUk+oJaLZ1GiO03L+PGj6ZWFvYGnGfXXGPC/QYPbmjHO+/C6RH+tt1nC4SH3cKI60q7R0FQ7GuzCBQEbKKqcI7WPCrZwBG9XycmxJZzkhIFcuu1jgJbLxF7G3B7Hxr0QnlbURmi4JTEwxApXKC0wLEoHpzXvqMAm7aQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hqpoavm4LC0NGDU5tFu9sBIiQ1FKyFPhmX/1Jb5oyVk=;
 b=CroBkz3Czp6CiFQNqH7afKaQkSqkJdPuSAfJbU86f2mF0AKMLUPdWC/j1VvTcsUCmvDu3vgXmvC7JHiWfwYaWs1NT1AnNIdt1nCXgtS6DsV0we6XxxMxWmCs5T8OrV8hHDOc0jquqHuqet6rNGxaD2k6AKeZpUwdZ+hB2t3gr+4JIRaELwIGUmNfqAOOTXMSDOzZOXv0Cpulxgzcqpt2ViasHPRG6HWz8jCvgeLVzr9sgXuPIecqH9PJgqpAKZTedBv5zMqbQzcNnoUBrJ4ys2QQLCpSXVDZ/VbnKnQc+hoRVaprWmVvnYGGn5qEFFC001e4XuFHPpsoC8k54xN9bA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hqpoavm4LC0NGDU5tFu9sBIiQ1FKyFPhmX/1Jb5oyVk=;
 b=EI29j8+jUrYmi+LZyuZyMYfBlIde0snwWSy+6Q5iy5DVQymXrLvt8FzjAlV9A4kC3e6+fcnqpdTQr2hLg7GsCf84w4NUTpRAZY1JFEAns9xYQQHSZQMca1kLBRL/dCKH85LgzIFEIUqakmQLacCPYR9o/AuJOH3ND2gR5YgC+Gw=
Received: from DM6PR11MB3292.namprd11.prod.outlook.com (2603:10b6:5:5a::21) by
 DM6PR11MB4723.namprd11.prod.outlook.com (2603:10b6:5:2a0::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3912.17; Tue, 9 Mar 2021 14:02:55 +0000
Received: from DM6PR11MB3292.namprd11.prod.outlook.com
 ([fe80::49d7:5128:e3cc:695a]) by DM6PR11MB3292.namprd11.prod.outlook.com
 ([fe80::49d7:5128:e3cc:695a%6]) with mapi id 15.20.3912.027; Tue, 9 Mar 2021
 14:02:55 +0000
From: "Bhandare, KiranX" <kiranx.bhandare@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH intel-net 2/3] ice: move headroom
 initialization to ice_setup_rx_ctx
Thread-Index: AQHXEETsLi80d9E4gkqzmUPWtioRF6p7uJAg
Date: Tue, 9 Mar 2021 14:02:54 +0000
Message-ID: <DM6PR11MB32927310973DCB896EF9E2AFF1929@DM6PR11MB3292.namprd11.prod.outlook.com>
References: <20210303153928.11764-1-maciej.fijalkowski@intel.com>
 <20210303153928.11764-3-maciej.fijalkowski@intel.com>
In-Reply-To: <20210303153928.11764-3-maciej.fijalkowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [198.175.68.36]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e267e136-fa9d-48e2-e7ff-08d8e3040973
x-ms-traffictypediagnostic: DM6PR11MB4723:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB472300499CF56871BF98AFD6F1929@DM6PR11MB4723.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NEAsch2m/+pUElG7BiZsHiWDLNd18n+30YZT7V7/iIsMc/GYSw9WzK2TZ5F7BgkUkV2fiHewqmS8rnRELieUJYUjoz0tCld2O78GhikqpcStQ9ZHvQAEuqBe6XKJyxLXf4cwTuluQf5g9xwpIUlyYsNITvaOCGN7AejpeuYR1LMaC5K6sDFCsaBiwA974KudifGsndYY/mryIC7lVRmk02Ap2byYh85pdo5LLMv0HYb74iR24Y/X6yumwG00P+lFNppLm6H/aMnuxfRR5lzqxLd34PGzQQDNDqFRr3cOHpJLTdlzgE0l86KAklYoyJvDzojWquLk8+Bk1kQNCbX+haHlwoEDI6x3syJfRshNN0bv0Rac6kIdPnW/RPaLyrD8oTo4ePIrpxqMixNUUxppqz2Ig4maLHm4rmpbiTNjwhmPrWyCfZBIHN573NeS1ZOYEavb3oAz8i6EvMsLh9uxxcbad8oii8SBHPaZ34huN3nm1eanOACszPK0Eba7SxfWwTtR/OuwWo+xn8U/OTGvmA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3292.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(346002)(366004)(136003)(376002)(39860400002)(83380400001)(52536014)(55016002)(8936002)(186003)(2906002)(9686003)(76116006)(5660300002)(66946007)(66446008)(64756008)(66476007)(66556008)(478600001)(86362001)(110136005)(54906003)(4326008)(71200400001)(7696005)(53546011)(33656002)(6506007)(26005)(8676002)(107886003)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?LpjQ2fdFRhabDdRJif9NbMcndtZQkJgAIfwIgPGuFU7elp59cjhhOi8gEN+H?=
 =?us-ascii?Q?lFk5EGGKMRNJkUYLlQ3e26gya+48sZWKiqZbx8WfP82HhgZ6dOXgfJWrJ0TR?=
 =?us-ascii?Q?c+MdHZS7gdnRiHV1l57U99euzPfAMkces9ZUoSBFkaGBHel61b4CporE6POk?=
 =?us-ascii?Q?KYvcwFId2R3I0dXFpuiMTUD5rr9JyhaEwcUsO3KO/JEuivf0mTk/FAaVVMbk?=
 =?us-ascii?Q?JksORTv7VwQMMPuD93OsM1FW4NiwxSgKVWFBWM6ltkGZ+aU+8+syJjf4dXLW?=
 =?us-ascii?Q?6RslJol6tzREu6RLp0WkS45SysNIIYmUc8LofIcbo3VTnyJbXcVatw1zHQun?=
 =?us-ascii?Q?+DAb5/HH7tmNd1ifIgQ4o3KVhtSaZUr3UJjiNZ5DKWNUkufmTRgw3YemG0XW?=
 =?us-ascii?Q?wpbNt+RvNMsvsGnDmF16E0qf1ee2vmDQP5MnPxYqdnqHPP0TlLciBLFZrLTM?=
 =?us-ascii?Q?h1og7eRJD8pZQ3gl5RzOGJc28B1T2OVqGHy/oZpoCeO1NDrJ6nd02dkvudcs?=
 =?us-ascii?Q?dYS3mtSMujV3BZ7V7XTAmpNlMpzuyK1qdr249J4Mj6ksz95Jlpg57yAV1tHJ?=
 =?us-ascii?Q?1PY5UykCKPKFrPAbZ09fWbYK7Gd/W7vMmV/DGxfzKtQwKxd1jQdBXFzv5IC7?=
 =?us-ascii?Q?JTW2107j2HE1Pqvl6a59k2BjpnJBib3i+sQ2dWJw7hSCxptlUZCxhChvkoOl?=
 =?us-ascii?Q?ivoYlDtGNKro4t+MhWKyqtI7c040dDBxV9LKPzs0KITCaBmM7NIBdT5goRdW?=
 =?us-ascii?Q?sw8tvkjdyx4mWT4P3a4IELUlRhZikq5IcBewXhttoO4CqgxmsqoMg7LJf2QP?=
 =?us-ascii?Q?meJt6H0Px/qlNucD0JsRlPsQ0fnbCtCXzrSHNL+8NEZzxximLXJby6HjRkjr?=
 =?us-ascii?Q?MMlWUBk6nV3S/krCEacE94Jj9a56t6SpCK7c8LqBPk8JYUVOsUTcpDDi0bZA?=
 =?us-ascii?Q?MEgJKc0AQDclwq9GfIzMM88Xy/l1f2kKhxJOGtP3eEsVyRoxKnul5AymNdsY?=
 =?us-ascii?Q?+w5blVkki6F/Yy3MqENh2neU6xwnNoPOENXB1Ya+CQq9866/2soGRQpeX1B3?=
 =?us-ascii?Q?d9iHjRhVpi4gZv2BDWXjQalxVv0SqM3abfAKqaapRA61GGU1qT3HW5J6wYku?=
 =?us-ascii?Q?CuvxF0SjKTGDl8kWTMLQBHl8bFsKbEmpmpR97SlJD29meud4Vcr5q9lmkzD7?=
 =?us-ascii?Q?mqiVVZq3pKfkim2tVXYKy2XhSjcDhLse2fefq8oFMN+p+cDUg5P6qrJ9G4om?=
 =?us-ascii?Q?N3y6MU3cz8OPMsUwez6k3xlqdnudMOzIkKXUFtgtCD2cMuuQxJpmdLf5DhFj?=
 =?us-ascii?Q?rmg55q5eTtS9GUbyCbb701Sv?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3292.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e267e136-fa9d-48e2-e7ff-08d8e3040973
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Mar 2021 14:02:54.9791 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: n8pzIDHckw8TH8KYNGsC89IJwIbniP5v8e3FNSf9IfmoK3OOTUHhRHZ+qbP1uJJLJwQl+TTzM2zcOyJYlSsbjAeEvnlI9M5IPG6jycsFocM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4723
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH intel-net 2/3] ice: move headroom
 initialization to ice_setup_rx_ctx
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "brouer@redhat.com" <brouer@redhat.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>, "Topel,
 Bjorn" <bjorn.topel@intel.com>, "Karlsson, Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Maciej Fijalkowski
> Sent: Wednesday, March 3, 2021 9:09 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; brouer@redhat.com; kuba@kernel.org;
> bpf@vger.kernel.org; Topel, Bjorn <bjorn.topel@intel.com>; Karlsson,
> Magnus <magnus.karlsson@intel.com>
> Subject: [Intel-wired-lan] [PATCH intel-net 2/3] ice: move headroom
> initialization to ice_setup_rx_ctx
> 
> ice_rx_offset(), that is supposed to initialize the Rx buffer headroom, relies
> on ICE_RX_FLAGS_RING_BUILD_SKB flag as well as XDP prog presence.
> 
> Currently, the callsite of mentioned function is placed incorrectly within
> ice_setup_rx_ring() where Rx ring's build skb flag is not set yet. This causes
> the XDP_REDIRECT to be partially broken due to inability to create xdp_frame
> in the headroom space, as the headroom is 0.
> 
> Fix this by moving ice_rx_offset() to ice_setup_rx_ctx() after the flag setting.
> 
> Fixes: f1b1f409bf79 ("ice: store the result of ice_rx_offset() onto ice_ring")
> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_base.c | 18 ++++++++++++++++++
> drivers/net/ethernet/intel/ice/ice_txrx.c | 17 -----------------
>  2 files changed, 18 insertions(+), 17 deletions(-)
> 

Tested-by: Kiran Bhandare <kiranx.bhandare@intel.com>  A Contingent Worker at Intel
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
