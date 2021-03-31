Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D0744350850
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Mar 2021 22:41:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 682C660B69;
	Wed, 31 Mar 2021 20:41:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VOKlECKKNcyz; Wed, 31 Mar 2021 20:41:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6E77860B64;
	Wed, 31 Mar 2021 20:41:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E75B71BF426
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 20:41:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D6A818498D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 20:41:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F4J8MdvQiGJU for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Mar 2021 20:41:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D9E8884984
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 20:41:34 +0000 (UTC)
IronPort-SDR: qNb5NMU+Au8DayoJtflvkzzjMriVX20HQKQysxbllhinAUvi/Q7HUUhNMISDSVtqq7oIPe6MOr
 w97IEG+5fSUA==
X-IronPort-AV: E=McAfee;i="6000,8403,9940"; a="189856234"
X-IronPort-AV: E=Sophos;i="5.81,293,1610438400"; d="scan'208";a="189856234"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2021 13:41:33 -0700
IronPort-SDR: m1bBeOXnh2A52gR5MTSxiPj5gG4ivK7/HAvfu1qzBMVewdzyir6qfz6wf2Wx1Kp+7RNDZCDiwM
 glMirzG2ecbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,293,1610438400"; d="scan'208";a="377418039"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP; 31 Mar 2021 13:41:33 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 31 Mar 2021 13:41:32 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 31 Mar 2021 13:41:32 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 31 Mar 2021 13:41:32 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 31 Mar 2021 13:41:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aWcTaY9qkJyrEijXetnY+d0UB76bB7J/p9NM1YMSAhYJoMb9ktyPyK9puo1YivOxlJFqQpHzLJM6kJ9zO5cl/MNeqeWbowEWkBbbJtpivLwFuLryW98W2xo6YkO3N89XysUVe62xdLQuW/Mj9OQSgoXmwHzil/ZrQEw1yo1PcPFCF6KnKXMZnDMveod4L9nYMeEYUTy3A9INv4tkRxC9bV8Sjr/EyzX9bpuPK/4raAUKlduHEFR2s47zbeqvmA+iDeE3CK5bxRhn65KLjqpvezT/+1uFws4nu6D1bOSbvkanQNdEwCO1vYAMsghRqTaGc0PXwOxze+fh60JgZ7ObOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eRtEPSa+f2fb9djil/NzVUlh6SQJ7a126r8ri4+A8AM=;
 b=GoRfajaIxWvBTZ4Rxhpsqm1LLaxcVCkG+7jdhXMuliQuXWTpgvcGcV+1THUSwkgCvtlPNBIIBMwZ0da04iyj0fIrNQo69AxBelxVOWF5Qqkk2eCl3UGLUulY5reCKf6rNanOyKTdR8isjjDYC3RRupr5G0J2G9scwfwEFVfOvguoMex1MphYjgQLjLivLLldQrXWlhuh5Z/QoFhMSp4HtzABuBCnGgJj/nHbU2c4GWdWU82zPCI0/MhXloucQE8xpfbZ5MprPalrlvNpCYynCZUS1I1do4VWteC5lbp/PdGZARlMxjVlGInUp0IPYLYwnFACysm/sqD6EOrAp0HC3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eRtEPSa+f2fb9djil/NzVUlh6SQJ7a126r8ri4+A8AM=;
 b=AhpJb8pLF54A15b0v6TTX84LWKKYTTBxNKGplodNXODtH9uSEx5E7uybyJaoZKeCp+mvDGlKlCzfWnUJEyYF+c47KQ0um5+ycBoyGulqH0lNYZ9knyLFO7fSB5O1h0B3VKgDDpOKlH10mAFXvczGIITVT5xtCtvHZ21e8+yp+SE=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MW3PR11MB4523.namprd11.prod.outlook.com (2603:10b6:303:5b::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3977.24; Wed, 31 Mar
 2021 20:41:31 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366%3]) with mapi id 15.20.3977.033; Wed, 31 Mar 2021
 20:41:30 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S57 01/14] ice: Re-send some AQ
 commands, as result of EBUSY AQ error
Thread-Index: AQHXIcipMIMoRoMgE0S/jFSLp2epLKqemI+Q
Date: Wed, 31 Mar 2021 20:41:30 +0000
Message-ID: <CO1PR11MB51051A142A5FA5CA3610B31AFA7C9@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210325223517.17722-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20210325223517.17722-1-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [71.236.132.75]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8ff81550-0211-4b35-ecb8-08d8f4855d7b
x-ms-traffictypediagnostic: MW3PR11MB4523:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MW3PR11MB45239315B1F85861688663E1FA7C9@MW3PR11MB4523.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2887;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: H+Lxq2P3fGCXAX2t3HulNZ7Ve769u/ofJ1RWoR+ZaDvYkNxVdZxnjX3zKbH9dk+ORuRocL5l6injn4lEP3ErsVUfjqJ4ZMXLDz5VkyaigURMhbc1+ynIYTGuG+3838s3aUGwBWUl0KI90tI28IQyMC4enjnzAoeSkt5k6GllGCpRj7yKEGBFn6o3bOUR7wMC0snWWuuo1GscRjMPy1L1P0NZnx0MqNvgiKH3hzqKu/c/IMJ+VBRLT2ystDY8CGt1SBZrRrbQ3Kina+xolFnkSHbbxbKHm7bOyshMN30pdOSUVZBQXn3g8gOrLXcfYTty5jFmbWygTLvUbwJ4qeQDY4IrSPA+Uw4lzm87OZTqAi6RGgFAgyBAVx5y3T66hzLv05VAcxvHkfkChdAYgQRqVx/nyAdtXF9yAb4TtwrNqclM51aALT8UUasN7HirXe+iaLRQvsC4byGRYfoFrDHhe2qLvRVeTrQJXuEczR9u2Z3DbliqCTDKJ8T2gUWBPkbDtPUXR5d3aAKT8mHE6R+11BAHaDpykrYK+kDNANSWj4ID8nz77iKNvHasAIuBHmt3jOLzPdc2jXq8EcmnuU1Q/fMIU/LeZbjow/11UJWIgSdRKOI+tZ0xIA/iS72o3KUBbT6AzD5eXePeeJHhJAOtBQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(396003)(39860400002)(366004)(376002)(346002)(55016002)(52536014)(66556008)(71200400001)(26005)(7696005)(66446008)(110136005)(64756008)(66946007)(83380400001)(4744005)(2906002)(76116006)(66476007)(9686003)(38100700001)(186003)(5660300002)(478600001)(33656002)(86362001)(8936002)(316002)(6506007)(53546011)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?mLa8+OPmN9x59bPO5uAnnLqlSZ6QBAfs7fSU/LHMz3LwViwf3jLcNI3rO5Pe?=
 =?us-ascii?Q?ptFZD+jdlhrwGnDn3IQmfjVB0+zJBoE7rx0hsdAVVw3tk49H8aol8ovknLzq?=
 =?us-ascii?Q?dj/8RMhBtXa5siOIsgN+KutPEpAAaqPCFpTvMeKMluZodyEmtuoxPmMYf9e1?=
 =?us-ascii?Q?RqzDA/exOu4rYIRfEcofr0e8YYFmy0EoNQXGw5WrK+YOfl7JJ6kqw27xtJNf?=
 =?us-ascii?Q?t9FhEK722TMQa+7t/pSKaJ5zIyJTwbRzXuDHkQQTGB5r64rx8hzKhPA06wOv?=
 =?us-ascii?Q?Ewy7r3GXK1T6/bhP7ESLG3vOlMX09q7t+QEA9y3lWeBPE0tz0zC7EMpE0A1l?=
 =?us-ascii?Q?mjWbV4FPurfks1ExSsWR6x7XGhw67LRJOIu1+RMDPmpjpsgkcmHA+Ifr4kS5?=
 =?us-ascii?Q?xai+EMBx6mA9DxT11Bh6SJxXPwNv75emWuUH7tPABwrMvy98LFA1oinPFN1F?=
 =?us-ascii?Q?IbISGNW364StumT2K0sb2lM8RbdQrB2HXMOxpkp0zkJybYka1100UN/K618g?=
 =?us-ascii?Q?WOLB87i3PLC6rvfOfIyaowMJhB1ohqIo0xvsCjkF6BxsndraOETrcNYXWiz+?=
 =?us-ascii?Q?GlrqbC63CBXzCcC/vir6DsCbKA+D8Jrqz9nHHmAXFqZZIdPqKqNmHzG2uwiC?=
 =?us-ascii?Q?DNznpQmjdzLmsNKbVI2Xz39k3h8aBExs73D9CwY/GSGOPjhg9hs4ATkeh59R?=
 =?us-ascii?Q?v1uUl8KMAG9un853xFAmKHVTYV8A8o5YBhNEeR727v7fpcLLzwuqUcwuVwk0?=
 =?us-ascii?Q?3R3wlor2qg7Tx+H/ZkIeInDpL2eK+5Av9qHmtMff66kK/XCy9OKpOOoB3yXx?=
 =?us-ascii?Q?EcRKpE5/tpRMYxY8SDgaKWh+mWUD3TGLj8MhSoNUQFtFawMRweEzNdG9KqeX?=
 =?us-ascii?Q?qtQYU4gEpqBch/u0BOIGzTV2PGzQwXJJyEPay2pqBd1ex4LWL4vSkE5JPYPM?=
 =?us-ascii?Q?VCJo7IISkrsI1ataiwsDRKCjzDIZytCFbzs/w+xSLTqSP6h4jnZVXiq/w680?=
 =?us-ascii?Q?CcDkRmUC96aUviuPGok9+l22eBiDTWcj0c4Kg1+SnHDtBbmcp0Eqi9zC6i0n?=
 =?us-ascii?Q?KSLOOaN8AMTKjv9JUtwKubmiKhl2O5iSuc/VtDRNP4BoiCp8EEziQLqMns8e?=
 =?us-ascii?Q?g9wcRGN++Nwi3jgMKhyqVgKkFnti3d6G1FMAFdnzfjzIfrxPBsIqYUikGQHw?=
 =?us-ascii?Q?z0HB6fV80ibUKkz3myj3/1klg0Q+Fo1GqSKHkbNBcYDdkidY9rqM8Ir1siZ1?=
 =?us-ascii?Q?ppj63u7VGpXK/7xCYSV7qmU1FvH5AYPOMzCzm37ELsNiUliLIrI7Ce5yv7tH?=
 =?us-ascii?Q?Wxq7PnCRKbHifCuxdt2+1726?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ff81550-0211-4b35-ecb8-08d8f4855d7b
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Mar 2021 20:41:30.8130 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Svi5cqpF3Z+AFuRXjTB8w6Z4EwHgaw8g0h4ZXQv4oQJYEqh7wL4HREV3L3173AhkeBV8lF1ziD/iWkI9GoUI/NKJCzVl/qz+HlRKfBT3x7Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4523
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S57 01/14] ice: Re-send some AQ
 commands, as result of EBUSY AQ error
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
> Tony Nguyen
> Sent: Thursday, March 25, 2021 3:35 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S57 01/14] ice: Re-send some AQ
> commands, as result of EBUSY AQ error
> 
> From: Chinh T Cao <chinh.t.cao@intel.com>
> 
> Retry sending some AQ commands, as result of EBUSY AQ error.
> ice_aqc_opc_get_link_topo
> ice_aqc_opc_lldp_stop
> ice_aqc_opc_lldp_start
> ice_aqc_opc_lldp_filter_ctrl
> 
> This change follows the latest guidelines from HW team. It is better to retry
> the same AQ command several times, as the result of EBUSY, instead of
> returning error to the caller right away.
> 
> Signed-off-by: Chinh T Cao <chinh.t.cao@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c   | 81 ++++++++++++++++++-
>  drivers/net/ethernet/intel/ice/ice_common.h   |  3 +
>  drivers/net/ethernet/intel/ice/ice_controlq.c |  2 +-
>  3 files changed, 84 insertions(+), 2 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> A Contingent Worker at Intel


 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
