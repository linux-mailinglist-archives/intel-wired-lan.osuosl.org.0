Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id F013243C7AC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Oct 2021 12:30:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6DB874043E;
	Wed, 27 Oct 2021 10:30:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AViIDKabal58; Wed, 27 Oct 2021 10:30:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8187C403F4;
	Wed, 27 Oct 2021 10:30:21 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D55EB1BF2F4
 for <intel-wired-lan@osuosl.org>; Wed, 27 Oct 2021 10:30:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C2AB76063B
 for <intel-wired-lan@osuosl.org>; Wed, 27 Oct 2021 10:30:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RK0OkVyhxUAT for <intel-wired-lan@osuosl.org>;
 Wed, 27 Oct 2021 10:30:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7A0016061F
 for <intel-wired-lan@osuosl.org>; Wed, 27 Oct 2021 10:30:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10149"; a="290965869"
X-IronPort-AV: E=Sophos;i="5.87,186,1631602800"; d="scan'208";a="290965869"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2021 03:30:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,186,1631602800"; d="scan'208";a="664947578"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 27 Oct 2021 03:30:14 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 27 Oct 2021 03:30:14 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 27 Oct 2021 03:30:14 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 27 Oct 2021 03:30:12 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.44) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 27 Oct 2021 03:30:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NVoY4jWQCgmXjXtM6ZIlTR+dDabZzR9cTKYZkCPvId47hZLSRAsFHxQL7hTWvbDb/f7n653l2zZhqHfouPXbJMVZRCpRvh0PVsBZrSwlZvmyuOoF/EZWBa23u0St94dS7wvlTVT9655Q6F8nwLkEZ98zrM9raCk+lNSQrPf60Be4M5ktdj4epA8VoPkRlFPEgglCpQfawa53NTmsb8hdAcySByX3+7mVpc7h/l9a4pwoe5rLVzZ5QAIu+gu5twZh04WpLFqeVkhdp7tPxzHoPMAh9aNSoHfdATI5gvKkS4ck6HBXqa3GVVdQldCW2Z8EQvi00WxAHMuJ52GqIWL6Vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GY/Pyo4rAaysN2cfbh9jgqavfiq2gTYp5V6bAPb/kxA=;
 b=cpZXIuanyV6K6w22qsp3RDOMj74x7ZhNnUvM4BHYN9LAPLZ3baSkAiB1IxpPvHgh7J2JQyqEaxoPS3eDIWSKq41nxWJsyC8KoVYOuOD7V4us8h+dgqvjDsSeWws3dXiiNc5ThrSIwu5tVpzWU81+esDQ87UtHh/wG9CNPJkA4nqTZm6TD6P5ho/4pIlIMc00ydzX6SGVkb4QH/vnaJ2SQJeJ34G+QjdqxUBe0B35fsNhHlA2PvNmW7mqbbqqAT2fCQm3IFHdHNrVHxBTN/sG00cPnMhLa9nHH0i0B36YrIwz+TGtAvRCcT23S8C9e+kkzt3sCgtK01hBe1z50AX7kA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GY/Pyo4rAaysN2cfbh9jgqavfiq2gTYp5V6bAPb/kxA=;
 b=md6nKWlaGyeSLCQupsSJKrCumay2vgKhJl/6OYqmchFvbScHWUVXtW5dh6NsV9NN5ZpwHXE4kxRrcRA/i2p00bG7BThWKkTWK4RV8LVbKi8yv09mY6foAGimtsXNHvKVKd3f9yi0N+a08hqqNHB5MDJmJeclrUIfMnnCfcoMiEE=
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by CO1PR11MB4769.namprd11.prod.outlook.com (2603:10b6:303:91::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.18; Wed, 27 Oct
 2021 10:30:10 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::64cc:431e:ab08:2898]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::64cc:431e:ab08:2898%6]) with mapi id 15.20.4649.015; Wed, 27 Oct 2021
 10:30:10 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ice: send correct vc status
 in switchdev
Thread-Index: AQHXv/t3IfjfjGcp60m58I3zwMpPJ6vmuwDQ
Date: Wed, 27 Oct 2021 10:30:10 +0000
Message-ID: <MW3PR11MB4554B1FBA7025BA7B524CBD29C859@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20211013062707.353095-1-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20211013062707.353095-1-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: af1b0d55-2626-4466-e938-08d99934c126
x-ms-traffictypediagnostic: CO1PR11MB4769:
x-microsoft-antispam-prvs: <CO1PR11MB47692285F8CC7931467234D39C859@CO1PR11MB4769.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dCMQmo3cwevtUyAjjZEWuFT5OSAbceQBmMyI8SgoWjBC9T+PYCXNCzbJHp4BIiT8xvh3SYXFw8OuItGZ2wdTvK6lRaeroEg9KJsXr6FL2iHq5YhLDXv5YBvvzFo+EwHY9i6+wy0ZDMXaIL63P88doXSDXdwSzb+IntpYm97krD02v5fI1OQaLLzmTMWSOmG3uCjxKwKFAwPwlytJFMP8AOInFhrtaGKV9EKy8+L02NWchH8+zUwo9EFcrDGM5vLQPAb9QkvrK//77HfqlBwAcsyAlK4E3/qWGCWfQ0YZKbzgBSZj0y6r0LE5Sl3LX8NE9BP1pABjMv9k61XHrOoB97zaKEedLOdlskbzFxs70ighj9PcsmEGGEmqq7jQs4uJzPp4M0lelw+gIavRKTKCCiYGN7LnkbwaL3smPvk04Af6B5vLiY0PvnKNSx23qCJB7p3A1+PW1ShNlLc1uVb+pMvMnlrwPNg/AEjIigGwG8tuxfdQb5W2zB3CMVH05Ju3/uUU0fpIz0XwvTODbCYfy+oT2JaEZmXfbzlcMAfOqfnLGW1FuDOwQSgdWkoybGV7nz94N9fpWN3l8AJu38qpcFenHFRF49z1SgeC0LNy+c92wUPtpJu5vlZ0Sw7X6A1B/QOc+laRrCaEMdGHvrKVBqlImQvBEPJlk8LGkiC66lC90gSmfvdWDQdN+0rAdQqz2n9xB1UcxSlHXqA6phTdgQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(2906002)(66556008)(316002)(66446008)(66476007)(66946007)(9686003)(8936002)(64756008)(8676002)(186003)(71200400001)(5660300002)(52536014)(38070700005)(82960400001)(38100700002)(76116006)(33656002)(55016002)(86362001)(508600001)(83380400001)(122000001)(6506007)(26005)(110136005)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?rWVas13IHRO4NWIMlGK8J5WB4XYgyQtORfYW26yeCRfZuPtMSYoLfYWR73cy?=
 =?us-ascii?Q?ReU2GpzCETI4lSzoTCeLYhUcdrdCb9tyN3L0esvsZBilfm1rzSLF9dK5Svq8?=
 =?us-ascii?Q?eRZeu34K7Mz7R5JLYUdZs17jqbWX25EV/BQcaDU2wfUcBoX+NchNEbhbmpv0?=
 =?us-ascii?Q?Ko+ASWDAUN9qN1row1rsaUDJJUT2DUp6F+mI5bdfJqgbHpKEzDYBo6HbN/4H?=
 =?us-ascii?Q?veg8y9Hky/1Ji1MsMGPNz5Gv0rqahUCobpubYiUJrqPLpTB7m5O7Cry4zhGK?=
 =?us-ascii?Q?YhMTsCgzRxXDkK2K6kEqodiV7DYKcJEH3gfBAFCTR6mCSuxsPVUHbWIIio2b?=
 =?us-ascii?Q?7B4EKgcmvmwRSKtK767YjD24+vaeIwqeGIY9wFPazB5n7B+Tr8ue7MQBazpf?=
 =?us-ascii?Q?BRW40B8ascGb5e4wBUZNNRwEQF245AOYMRPGE/ESzVfaJ1itbrbMXmj8b3zR?=
 =?us-ascii?Q?05lP/ns6I1wdWKiz0XhNag8pSULGM3djZ7ohxUqqdMbg79QLMfGJMWpaxz2F?=
 =?us-ascii?Q?kiCQfiqTxgG7IR+cA52kUeIbfu9PBKte178FVp0e2TyAEwTT6Q5BwVAtIUyJ?=
 =?us-ascii?Q?t4rmFWsVOU6O90BystRfCmSlr6x87lVvlPNMfRVy/zUHGdlkGjfI6/ZHSJst?=
 =?us-ascii?Q?AO+rQHd1w4WW2qGTk3bI7UUd14UTX+32C83GbeQMclD2FqUPIg2rxnrZTrln?=
 =?us-ascii?Q?on2d/LWP1s87rSFJNsQJAL0xVfZW/9UJu6/RMrQAS79NjJ4rZYj1NMTf3WBd?=
 =?us-ascii?Q?aNMQKX2q0P9vcOX9Fky7heNnFgy2sBEv8iw38qb5JJbCm0957zqjmCNDtZXI?=
 =?us-ascii?Q?VVJZvAGEqt8hIlJfpVDuM2Si30Pb+cT3hmFAy2UkEIih9Q9ewrx2GnSxMVX3?=
 =?us-ascii?Q?QFh5AKjVKZTR9UKx19xK3tUq0IE0SvWtGAeEDrEkzWUGN08hLO1bIYle6dOt?=
 =?us-ascii?Q?96HVSRwdlpLJvmLH88wZoiz3G+KC5f8qeADESDWx2Recz4gDndroWg3HpWXE?=
 =?us-ascii?Q?RqYHetc6iziNvTU5f1wrhRzYoI2CMymBJl1oRhdax5yiZAmtDtgY8gMv/NEC?=
 =?us-ascii?Q?rWDCOzkllETEyJJKZC6Hl+l4fI4fn8/WzIUqhXT2gmB66QsBPrSG7ZQr3Hv8?=
 =?us-ascii?Q?81Aml4bxozvYZU/k+laKAxA1cen9cEHZhKqqoVBMxI8RthzGuIs5JBFL1k4a?=
 =?us-ascii?Q?jHweOG/zrjOaW0TA4BqhNjFB1kqxFVdManLfb3zTTH8J9csL4GlguNAMCADU?=
 =?us-ascii?Q?oLRMyd9eWXum6lTdD1vWE3xpLtxEIsDDjDMcc6VgWl9Nc+lsdSbJQzNGNs1j?=
 =?us-ascii?Q?oTjb5BekYmUFhCPLPmXNM5ImbrfuMnCtCUOpBmsvX39hpR08lKmPDrLjKEj7?=
 =?us-ascii?Q?cOVxIGHJyh3SwsHwMeN8BnmHzQj7PO+TvdJ6lSkBThLtqvVIXV9zOHtKGOZW?=
 =?us-ascii?Q?w8cVK1hXyaS7l/LU5dMW+HlZwJBbORCNI3QYVgHjQqeBOPrVVhhWvO8j0PnL?=
 =?us-ascii?Q?bfppsKZm0FrmPRdipkNqhZZ2DJJwfMibSewOzWJuO7uz6M1uIGqYSIqWsDvR?=
 =?us-ascii?Q?urfrZQ+HOS1tXfMyu9CjO28q14WCx0+sbaYGDHHDWTDHIdNFu8ZiwxocASyo?=
 =?us-ascii?Q?i/l5nHXx73NGcIdiZ0z6d3LZzd+TTu+Ba1jrpP9Qyu48PGi+X8BEsbnbas9z?=
 =?us-ascii?Q?0vfpMw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: af1b0d55-2626-4466-e938-08d99934c126
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Oct 2021 10:30:10.6761 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZEANlZH7ENV0syHA4U3Z8BiVJBbNWqGqdwC834VozJTOh7cDJtjAdjZcHjeSYpLRqUkNzxUbAhmuaC4HrEwS1ue4YTxEEhp8WnFBQDbmd8M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4769
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: send correct vc status
 in switchdev
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

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Michal Swiatkowski
>Sent: Wednesday, October 13, 2021 11:57 AM
>To: intel-wired-lan@osuosl.org
>Subject: [Intel-wired-lan] [PATCH net-next] ice: send correct vc status in
>switchdev
>
>Part of virtchannel messages are treated in different way in switchdev mode
>to block configuring VFs from iavf driver side. This blocking was done by doing
>nothing and returning succes, event without sending response.
>
>Not sending response for opcodes that aren't supported in switchdev mode
>leads to block iavf driver message handling. This happens for example when
>vlan is configured at VF config time (VLAN module is already loaded).
>
>To get rid of it ice driver should answer for each VF message. In switchdev
>mode:
>- for adding/deleting VLAN driver should answer success without doing
>  anything to allow creating vlan device on VFs
>- for enabling/disabling VLAN stripping  and promiscuous mode driver
>  should answer not supported, this feature in switchdev can be only
>  set from host side
>
>Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>---
> .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 63 ++++++++++++++-----
> 1 file changed, 49 insertions(+), 14 deletions(-)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
