Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B871738C5E7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 May 2021 13:43:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 28BEB84513;
	Fri, 21 May 2021 11:42:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nl65Xl2cYUzI; Fri, 21 May 2021 11:42:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 114BD844EC;
	Fri, 21 May 2021 11:42:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C51751BF389
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 May 2021 11:42:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B2CEF605BA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 May 2021 11:42:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o0IAhGT_7F1n for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 May 2021 11:42:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 79613605ED
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 May 2021 11:42:52 +0000 (UTC)
IronPort-SDR: 1Bs/eSOnNeaDUv7ltNqPYjA91pCI+2lXyWT9/fr9ltwF6antt+FRG+zOqvnO2apO7LO47PxgzD
 XZIFxtS1MyRw==
X-IronPort-AV: E=McAfee;i="6200,9189,9990"; a="265374758"
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; d="scan'208";a="265374758"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2021 04:42:45 -0700
IronPort-SDR: 29ie5+YSkyCnqtMXKCWCqtHxoAqQga0/GevdonZXV33eDYKnAxuzV/tO99b6Va78AtkVEn4EEo
 dPEYvVUhRyRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; d="scan'208";a="613215153"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga005.jf.intel.com with ESMTP; 21 May 2021 04:42:45 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 21 May 2021 04:42:44 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 21 May 2021 04:42:44 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Fri, 21 May 2021 04:42:44 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Fri, 21 May 2021 04:42:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S3nnOYfXkCm0qS2k0/USkdKcwHsISldYvTr6rq0HO7hZr9GLZRbepqbMxhSThW5gU8c8BcLe+BVkiuZibsA5RrhnoNRTX6c8p8dYW/KjZ5EuQ6rfp03n9o6aV9cbrytLkE4rww+QntcE5KKfFHZiLrAQxRfRmfzT/VKpP4wB0DXvpXPi2hEKD4eUcdkDqKujjV+A3EJ6PCyNi+WaCXgW/cIL1Q4xHjU1/BJui/cC3aRUiADZItylEecpPb1TXmmFtSFpz6t4N5li4dqxuitNxmELd8bZ3MVd/ejzGY5A43/pn4cc4YUUN9J6ifnE4RaGDb4bfvkzGS+CcJdXkI6mmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mSIOiF/OauZ1H7Q0Gq8s9gemIHFsK8q8z1RNWeJaJBo=;
 b=bNQCOdK6QRUF6YfZsjzeayRUYuPobeV+xgDvzZ/RthRkMS9SwEwjYU4M+RukPD8JFW5BxdkTGqQJd3zMei7CkqQQnoh1INKWSNG16+FXIbkDG+pvKcjxjD6WtaiJzMZxQzpdeaEMxeRkaL3RpgVD7F/O20j5KDW6AyIdFQh18dvypdPhpHacXIEZCRckbpv3WIhc24yVgxW98QmsLEJT6pR1nKjV+MKBDYPsVReIi90lGuQ9rskk92wCoEzhGGtKBsCNRJx8vXgv0RhoPsyChG0lR0vqoh18rJVkxfuPl8GEWHKnuQdXfesAKCyiwUYQtCnIse3k4VcR9cuJDwqAaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mSIOiF/OauZ1H7Q0Gq8s9gemIHFsK8q8z1RNWeJaJBo=;
 b=CnGuSjcMO2tBvbgp1VZcB04TugGflL/NlN2I2ckljdOekZlm1sKqFewLIErQ2w4JJMwd6xIRwNRWYPvWPhDixnf2HUkEikR94NXwoHkK19ZrJaKwBu/zGzS/IwS8YhEDcb45rGb0602yfx7bTJic8WWGBPR8+Yd+40cRmsTYvXM=
Received: from SA2PR11MB4940.namprd11.prod.outlook.com (2603:10b6:806:fa::13)
 by SA2PR11MB5067.namprd11.prod.outlook.com (2603:10b6:806:111::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4150.23; Fri, 21 May
 2021 11:42:41 +0000
Received: from SA2PR11MB4940.namprd11.prod.outlook.com
 ([fe80::2852:d6e4:3f0b:b949]) by SA2PR11MB4940.namprd11.prod.outlook.com
 ([fe80::2852:d6e4:3f0b:b949%6]) with mapi id 15.20.4129.035; Fri, 21 May 2021
 11:42:41 +0000
From: "Jambekar, Vishakha" <vishakha.jambekar@intel.com>
To: Magnus Karlsson <magnus.karlsson@gmail.com>, "Karlsson, Magnus"
 <magnus.karlsson@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH intel-net v2 5/6] ixgbevf: add correct
 exception tracing for XDP
Thread-Index: AQHXRYB5MHhkkyZdrEiNTkTVQJFhD6rt4RhA
Date: Fri, 21 May 2021 11:42:41 +0000
Message-ID: <SA2PR11MB4940D666EB4187F332662717FF299@SA2PR11MB4940.namprd11.prod.outlook.com>
References: <20210510093854.31652-1-magnus.karlsson@gmail.com>
 <20210510093854.31652-6-magnus.karlsson@gmail.com>
In-Reply-To: <20210510093854.31652-6-magnus.karlsson@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [103.241.226.208]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cd0f5d5d-a552-4b8c-4f03-08d91c4d8a9d
x-ms-traffictypediagnostic: SA2PR11MB5067:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA2PR11MB506762D05AC3DF75C2E54A36FF299@SA2PR11MB5067.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: E3qT5RbzIV0j5NfI2I5m88wbQQDp4dqLmo0JdKUxOepwAp/BKbipCde2U/R10dMcPsNjcuNOTDmGeOT5+zPeym2E3uKKEevs+yK2wsuUSjzgTuDg/SiTu2lJevbvXcVay8UdTWVL7l1I3IOj4Sm9ro87SWtoALwYAiaD6dryR5CFXNbzbINzg9MlQt/K6Sps8+bk4X70O60mOBlV2A2COp2hoRAz8wtzvh7T5dkTpmtH5eJNRomVPBvMDgZibtdUPRDOMpWhE4ve8NvjT4mwmO6V45NgxB2OHYdXskd9mgiQO4XuomJAfjng5Ss/QSG3OfbJw0ZHpVP8KwRXmx8AhGap2LJW098pAHrgsqs423cyxzg0yzw5zy0LqPF2AcPRPBWhX332a1zkgc/h4WyotbgapxRCtZH1UhUHSIvXVXs/NVzPTzpOvP6L9SkEQA+RvFaLf8FMXcCAByB38fOCdb/nXaGwbnwhKrhgA435Ni0+NwdZFgGnyyn2IJ0JFfV7J+wnTkBoD2VFK4g9JADRsBJQ4DNOI/qDkEBe+UjY/TGKRaWo8LVL8UeR5rn0OMXK2qrbf2HoLNX8Bl4+qam2nvP//wFotRHvgBxOywmu+8M=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA2PR11MB4940.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(376002)(396003)(136003)(39860400002)(366004)(4326008)(55016002)(9686003)(478600001)(66476007)(52536014)(5660300002)(33656002)(4744005)(76116006)(66446008)(66946007)(186003)(6506007)(7696005)(316002)(8936002)(66556008)(122000001)(38100700002)(86362001)(71200400001)(83380400001)(6636002)(2906002)(54906003)(110136005)(26005)(8676002)(53546011)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?KwZoaKN9V3zNyLi1r8VfL6n6VW4Klw3b6xRV0P0WzVK0bxvMze6hK2vunGq+?=
 =?us-ascii?Q?eyNj0OpPrvyy3b/K2sYrkoQYkiOLUsEFTiIkRef0zEPAa5sfSdVteUlzgxz6?=
 =?us-ascii?Q?Q8StYljdT5gvd5hdAiuE5TmKVASEZQqL0w5pk+XoLuPw+rwq2Psc6QLyOyOV?=
 =?us-ascii?Q?eL3V2sIWLBGNJ4OLaeeOzwevL/VlRk39CfH5AAjw1m2AXBuAsXsr1wUz1xLj?=
 =?us-ascii?Q?txZ6tLi6Awnefl9foNmZMRMWtTOmH4en9bdQZFnnny0Jw/uNKhlrvPwptfg3?=
 =?us-ascii?Q?uN0ZdZHizcGBTChzESGuFg6AxodHI/1CABFeankYN3eH9CncyBfNszEIbQXJ?=
 =?us-ascii?Q?q1H81oGtAc9L5JnOItRtmX4NkI15M6KJaZuVjdnvE1LkMp3/3aDTMJN2SSzT?=
 =?us-ascii?Q?6eNZi190GIObR9u9zvZB333atKdbpCT7/QxJk82RqkzRbUNmwVeKGJhBc2x0?=
 =?us-ascii?Q?DqMp5ngO4i8D/IHb07sqYtMo16PonwaCpjauHFCBxan9rZAFvn9ezxABRvft?=
 =?us-ascii?Q?3adUPv7J+qY3cXSUb3GpzPaMcSF3IikEJ8NBR2g/dWJjJUXemkrlKtOQAn8m?=
 =?us-ascii?Q?NkeUZtCTBg9lYx7KklOeGKiNaU/Wg+VzNnV+pxp4Ns2Soz8/h0Qha3juxp42?=
 =?us-ascii?Q?H5uZAG+SublX6hvjxwNLjKk+xK/eF44BLC1q87ptxnd88DRZuLzTB44lMyRA?=
 =?us-ascii?Q?2pkgIRLYLTMNr+ML5nyAq9eRyS09QCqAcAxfRtrZDMPcKUAVGRCfInIdkczV?=
 =?us-ascii?Q?r2wBh38EXNZ2ENzxaseOc1Fj8Mo2/FOOSmk/t0R5mX90bzYOhonON/lz/byL?=
 =?us-ascii?Q?UjCje9SLayDuMbq1OQIF3BFSjLnI/4Q2AEggXGaFQbfAQWIzottduzrHDBun?=
 =?us-ascii?Q?N0UFOl6r0SMSBQGs1Jj8ULmdCLjAHT7nQia/f4WGaj7MpMPXQElOU3l1v0mr?=
 =?us-ascii?Q?ChFXQbcIxeFyF2y09fvcuxcL65KFwNC2m39ZbFpwGeDrM+CiCljdlEMM+9r8?=
 =?us-ascii?Q?rLXrw9PAiG+YiDPdpfIMplEGbzOFzP+tOGEZBqDFlAfk/hFxcT1kb8bsm7eW?=
 =?us-ascii?Q?GTcyngu2DJElVyug/IFa02UJxmR9b+UWOD/KZdsZN2Qnr2FPzamT+Rx8tNwn?=
 =?us-ascii?Q?uhrcp0b0H9YSrEA6lwR2WHzn5gs4pxOm67lCI3Hq/OC9DhbF3ZxdnwTJSgNK?=
 =?us-ascii?Q?ebrvJTTzWDzk4vAT4vWr93OmSGsO7vqQYCiQmOBSgTgNqeZH1Avcrcgb6kvl?=
 =?us-ascii?Q?HJ6AdZK3Axhd+r9oZ+jWfT96VLwecpWs0FifskPgAKOcn+Vkv7OvOgGkmwLa?=
 =?us-ascii?Q?ynCMENQz7+eRnZypmRsgiACs?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA2PR11MB4940.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cd0f5d5d-a552-4b8c-4f03-08d91c4d8a9d
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2021 11:42:41.2294 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5V02TEgSj6sedp/VoY/0ZfE1zmauPMbQi4U5A7oqV/RJccSz4nsNb62GgPZvZUEQwSlcETM7wHn4J3Ox0gcZ4uVgQN2OSBx+M2X72UdwW8s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5067
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH intel-net v2 5/6] ixgbevf: add correct
 exception tracing for XDP
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
 "brouer@redhat.com" <brouer@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Magnus Karlsson
> Sent: Monday, May 10, 2021 3:09 PM
> To: Karlsson, Magnus <magnus.karlsson@intel.com>; intel-wired-
> lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> Fijalkowski, Maciej <maciej.fijalkowski@intel.com>
> Cc: netdev@vger.kernel.org; brouer@redhat.com
> Subject: [Intel-wired-lan] [PATCH intel-net v2 5/6] ixgbevf: add correct
> exception tracing for XDP
> 
> From: Magnus Karlsson <magnus.karlsson@intel.com>
> 
> Add missing exception tracing to XDP when a number of different errors can
> occur. The support was only partial. Several errors where not logged which
> would confuse the user quite a lot not knowing where and why the packets
> disappeared.
> 
> Fixes: 21092e9ce8b1 ("ixgbevf: Add support for XDP_TX action")
> Reported-by: Jesper Dangaard Brouer <brouer@redhat.com>
> Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c | 3 +++
>  1 file changed, 3 insertions(+)
> 

Tested-by: Vishakha Jambekar<vishakha.jambekar@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
