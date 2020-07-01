Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A522211164
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Jul 2020 18:56:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D19A12E2F1;
	Wed,  1 Jul 2020 16:56:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cmhIN22ea0LO; Wed,  1 Jul 2020 16:56:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 780232E8B1;
	Wed,  1 Jul 2020 16:56:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9587D1BF868
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2020 16:56:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 90F6989558
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2020 16:56:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9L_8smc8A4ZY for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Jul 2020 16:56:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D7F0289546
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2020 16:56:47 +0000 (UTC)
IronPort-SDR: Xu7eh71L8wwC1VxU5+I1R0Q8w3BsdE9SWK3tt3tNvczPB5VywqQsxJC83k7FiRJICyX38K2RpF
 wbHChT440yJQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9669"; a="211696770"
X-IronPort-AV: E=Sophos;i="5.75,301,1589266800"; d="scan'208";a="211696770"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2020 09:56:45 -0700
IronPort-SDR: zfkij4l7I7LaZpCx6d2m0AQOmJOfUorLi/YH08tI2JSMG3vBjoOx7IktdH0zN4O42rLhftKY29
 86bAc98Vl6+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,301,1589266800"; d="scan'208";a="356170987"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga001.jf.intel.com with ESMTP; 01 Jul 2020 09:56:40 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 1 Jul 2020 09:56:39 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Wed, 1 Jul 2020 09:56:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kJHuciia6JOayyc3dGiDj6yjXbaA0bqryBEoxhCNlnfJN/CLqcU1KlrI6lv+5S5QG9rUDwYVy10wpM8oYTp8Fh6gp/ksi+HJEogVhX1uXlhmKx+ax4GIqwMLcY3jrB3kIARSQgPbraX84qED/GjRIFi5+qkNlsMutyFNuyv2t2HAkSx2ITvh3fkZ7C4OBV3l6p7RNxylvTEvkC2YUtDA5Pn6nrCOxm8HSk7CLshGXHUSPYQWlQLMds4d/7XfP+CDPdgjI4BDRhL7O9NZhfrlRpFgWiuuwfIC6V87tAtqTBTCcKtiXbo+Ddbs5MVBd7GvqhXDHgMffM6ZMkJpYjApBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YTFiV6kP7Jr15IgGfONVQFLdrZp7EP5oNFYe4UukqhU=;
 b=nv5VHNWclTyRMM7W45fztWHZqW49FF+8Mnm9L7g26nwKG99/Jya3cM2hmACq2MQL3KN0n9EAWwjYDnkWVCRM+Fa6YfkmThtGMN7jpi75hdwjfC2opV/d9umNHT+AeGj810rZ/UEXrDOlcwYH0PTLW+jgDxruWyKf3NRSCaBKz2/H2X38tASYbB0YvvhVXP7oFx3MDVQQKigSdnfVENfr77yhBS3iIsVKiGb8cI0pXPaQVc0ucH+56RxI1buKFDqgWLT/wypT7N05HF1EYmjgbRoZCcNE/4xAHrci4x7bFWK/zachRfxiKhsDnS3KkFeuA2AK8cMuCXm4u57mOqiNvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YTFiV6kP7Jr15IgGfONVQFLdrZp7EP5oNFYe4UukqhU=;
 b=zdeR/+hwFYVjzWSimmnbJbgc5pn107cQokiVVRQ4w/rR0vzxA4Uw17s43xPAAgN3DX1x0+tbAMzAK8sVcYUb3XcZAQlxLyh4w/vFmRaHgnbTrZ8cFT4il5jXgCdFRoCG7azIPmNE6N42BpZC1PcYJDKiyTnLFPgct2Y9zUmU2Kc=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN7PR11MB2563.namprd11.prod.outlook.com
 (2603:10b6:406:b0::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3131.20; Wed, 1 Jul
 2020 16:56:34 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::c908:e244:e85:3362]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::c908:e244:e85:3362%9]) with mapi id 15.20.3131.028; Wed, 1 Jul 2020
 16:56:34 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 2/2] ice: replace single-element array
 used for C struct hack
Thread-Index: AQHWTnXhFXBHhID8mkOqMUHUlvM8Rajy9BTw
Date: Wed, 1 Jul 2020 16:56:34 +0000
Message-ID: <BN6PR1101MB2145D1DF056D08557ABF14058C6C0@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200630002746.64140-1-anthony.l.nguyen@intel.com>
 <20200630002746.64140-2-anthony.l.nguyen@intel.com>
In-Reply-To: <20200630002746.64140-2-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.55.52.219]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7066217c-0512-4647-f592-08d81ddfb61a
x-ms-traffictypediagnostic: BN7PR11MB2563:
x-microsoft-antispam-prvs: <BN7PR11MB25630701E2EE78ECBC5A02DD8C6C0@BN7PR11MB2563.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 04519BA941
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nZiCy0S23D5BpwSwAlYhAUBAhG/hezc/tXbIFtc62ayfojJ0wYoGLZhK+ZA5Nz9dTQ6CxTSPvJ/6jgPCcVAEDDs1y8cQ15CnXBRKqtLFOJGrZxrkWiXWpoaMEmAsa3IxWPnhKqzsFEKqyzsm0lJ/FSKTfmWWRFXxxTPGl3RW+XKuiPN/ykwexOuPqziDu94crJ7Fj78rLTQIaPxpHzjvl/XMKY7ya5uvkjiSNWeY+L5p7S2xkrwHgQHpqL19aroxk/R/QpvDj+qcqS5lv6WW1u1Vu6AFAwlmUlBKzcRfrDYjdmr1/oAdPxqrvEE0/CR1
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(396003)(376002)(366004)(136003)(39860400002)(86362001)(478600001)(7696005)(316002)(8676002)(71200400001)(8936002)(2906002)(64756008)(6506007)(53546011)(66556008)(66476007)(66446008)(66946007)(76116006)(6916009)(5660300002)(52536014)(55016002)(26005)(186003)(83380400001)(9686003)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: uQrYD01TLviReD8SJyOAwz5U1tvkQpuGj0CqJhTiQlU2fE7Tyr/rCZZgLbVFbtf3hoWBZRaVjR32g8BZAZ8w6W6EPUN7DYhAU3cXs9UCbrkUjRYQj+g0hqNYCOpHO1RKjYylbVQGXSh6I1rlyyd5IO0VrILWS1dqkRHuzGWKjIqEHgqK7mmh+6Y0R36P+aTEvhVvAL3YaIbdBcxvPF/G8McjRbvuCrSrx5btWTHpnnWxspmsRy/tpwemmS9MEmoJJc2qD8WyGmSaJXbk39Ur4rKSzykjRz9UjhHOun0x1yCNHXO36/3hNsb0lKjNOGVpXuizcuLgyGU7KDJr3jkYqIfcPNXzqcqCNJqNAI1MvIokDdIDxcPcR1OgEit+5PDoCL1lc0cr5Px3BpmHkZGw0HfhOQrmzO7O2QlwZBVa9hHccTd55Icocd4qjco2WWGlaQrmiegxjFCnqhB7bxTYBRxKwml4vo06g6Nt2jR5p4A=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7066217c-0512-4647-f592-08d81ddfb61a
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jul 2020 16:56:34.1348 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FZgoE3kvwz3KAUhUthRdO+83pQpsly+TygUZQ2Si1S69vmLSGc8UiDkb1AD2TgDCWIZYRIiSnSy07eqz5R7eBAmx4mBNgb1XAz9lyaRLsMs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2563
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 2/2] ice: replace single-element array
 used for C struct hack
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
> Sent: Monday, June 29, 2020 5:28 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH 2/2] ice: replace single-element array used
> for C struct hack
> 
> From: Bruce Allan <bruce.w.allan@intel.com>
> 
> Convert the pre-C90-extension "C struct hack" method (using a single-
> element array at the end of a structure for implementing variable-length
> types) to the preferred use of C99 flexible array member.
> 
> Additional code cleanups were done near areas affected by this change.
> 
> Signed-off-by: Bruce Allan <bruce.w.allan@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 23 +++---
>  drivers/net/ethernet/intel/ice/ice_base.c     |  2 +-
>  drivers/net/ethernet/intel/ice/ice_common.c   | 74 ++++++++++---------
>  drivers/net/ethernet/intel/ice/ice_dcb.h      |  4 +-
>  .../net/ethernet/intel/ice/ice_flex_pipe.c    | 35 +++++----
>  .../net/ethernet/intel/ice/ice_flex_type.h    | 39 +++++-----
>  drivers/net/ethernet/intel/ice/ice_lib.c      |  2 +-
>  drivers/net/ethernet/intel/ice/ice_sched.c    |  4 +-
>  drivers/net/ethernet/intel/ice/ice_switch.c   | 36 ++++-----
>  drivers/net/ethernet/intel/ice/ice_xsk.c      |  6 +-
>  10 files changed, 111 insertions(+), 114 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
