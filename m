Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 944F53FA082
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Aug 2021 22:21:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1565083B66;
	Fri, 27 Aug 2021 20:21:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ue0cfrdC3922; Fri, 27 Aug 2021 20:21:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A330283B76;
	Fri, 27 Aug 2021 20:21:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CC1E71BF4D6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Aug 2021 20:21:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B8BD640812
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Aug 2021 20:21:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xqfPmzKKqpQ6 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Aug 2021 20:21:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DBC5F4029F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Aug 2021 20:21:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10089"; a="198261501"
X-IronPort-AV: E=Sophos;i="5.84,357,1620716400"; d="scan'208";a="198261501"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2021 13:21:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,357,1620716400"; d="scan'208";a="528453416"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 27 Aug 2021 13:21:39 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 27 Aug 2021 13:21:39 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Fri, 27 Aug 2021 13:21:39 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.47) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Fri, 27 Aug 2021 13:21:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k3MBIePW85ds0ojCDaCHmfsDrjTFeP5A9I27DdH8To92XeC2Y3sz3CNLa+JbLLFw+hOYZKay+aDjYWzJ+Ro1R/zK3Mpr/AkOEu35aS3E382dOq5s98euS533rYEepyKfBn7aQwILqiX+JEyfqVz8XamC/wek0KTErn2jYm1E51Nco/r9navjyql2iefvZtKt+sLO4mLHrufLZls9gA+E441gGZeYrQInBGJX5axPab60+o0JUPuT0hEtjFQZwcy7KL6n/ibikrrjwpc9QownB3m1eyf0dslqiSaHyNDmhjA+77rDgcZb5tmz+5ehpyU+Hj2jlepfTfYq2I+8U6D7/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t8A14NP3I87FoyRjxHDttxVRd3p+p63F87XFvDNw0ME=;
 b=X8Yy9xFk6dYD7Gbn400wnsF7T4RGnQxRKu6b6XvBTqyq5LbVeChtu24uPlhpaUJRfxto8tEvPUr55+tXm4tPlB1gGUTmlrU5w2ozj2uaevjc+b+yNQX3LQHvFgjlCrZJp4fiWj8a36J3bmKDGpuUhvDTErHcm9qI1ILcZR3DquDAmbtjkVLYtmh/BqCoxA0GTTvb7BRxLyexyE409FMOl2DLRB4pl6AbYaylKRG4cAes17ZPSvPrsgiu2RZEmeB/eYwL1kFqhU8CwOqZ86zIkg9guM/TfERCR6Tf49Ve8O2EpPyp20OvyW6XNDsuTpRcsIbZzxx/e4cBJXAY6Oj8Mw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t8A14NP3I87FoyRjxHDttxVRd3p+p63F87XFvDNw0ME=;
 b=meBD/CWZkM02X3aN3ooMZhUWYul5IAS4/xyQcoV2q7AB0oNGnlqAlTZkyo4wx1BUIBAXuRbGdOPm9auqYGslTmGTu15IEDfz/avhbPDiibWcAhGTFJTYJ93alClstGoPHiR8jxXC+eTvleBrFp9RC4ZLLanWYzHcU6/1C0D6ZMw=
Received: from CO1PR11MB5028.namprd11.prod.outlook.com (2603:10b6:303:9a::12)
 by MWHPR11MB1807.namprd11.prod.outlook.com (2603:10b6:300:112::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4457.20; Fri, 27 Aug
 2021 20:21:38 +0000
Received: from CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::50f7:685a:e222:e003]) by CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::50f7:685a:e222:e003%3]) with mapi id 15.20.4436.027; Fri, 27 Aug 2021
 20:21:38 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next-queue v4 04/13] ice: restart periodic
 outputs around time changes
Thread-Index: AQHXmHrn8Ndl4ivRn06FxA0GL6VGCquHyS2A
Date: Fri, 27 Aug 2021 20:21:38 +0000
Message-ID: <CO1PR11MB502800310CC895CCE4B5A272A0C89@CO1PR11MB5028.namprd11.prod.outlook.com>
References: <20210824000158.1928482-1-anthony.l.nguyen@intel.com>
 <20210824000158.1928482-5-anthony.l.nguyen@intel.com>
In-Reply-To: <20210824000158.1928482-5-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: 1df7d7cc-e9e0-4fcb-412d-08d96998463d
x-ms-traffictypediagnostic: MWHPR11MB1807:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB1807D2514B54F1CB6098763BA0C89@MWHPR11MB1807.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: g+NEoDTTDsB4T8KgUW6rkm64DrBEPLG4rNow8X+6bsFKKJl0Wd56c2XMrV1RPzFJ7R/0oln2kczz8q0YSndG8DqLUesulIVLClU1GBFlwJXby1ov5HVv097MXkEJ7LKH/W2iYmisQjoKHqt4nf7IgLT6lf/i2gqTbLhY90XtsYe3B4enB1icYNt7B6V3n1gzNvQG3OobcNLaN9VroqNxsI6gD/USKt5v98VnmXOqtHzDzTaA/ckw6L40wod1qLowBCquh/e15oIDEV+areMl39g3C/X2CwnXeguQccuMOldAwSsT5+eopcv7UfS4ZmcrcPAmgKsNasjt3WKmiwTaJAmU9yuq1EwQiJSTaYzVR7BxyqC/Nq/TyKWBNJiD36hIYYQbCX9YixgDCACaisNJKlvuLiEzljVMG1TWLFlFYqN7Cikb9VN5ikMZaXn1O3j+6GLDzTeMa8QMBu0qZYOzfeiKXz88sVtJbKtbj1Sls3kwB1mxQqHv/amRM6vz+Pvh2OYNe2+muLCmzL6bfvImk04fomlIJL3xvDCgB+wHQXcC9EMwvSa2ioX6JDH03lQXgcXU+UUx2sU8CfRaPTVK9AT7iLTukTiGIejghvYiThteIEEHBXylkjhi7CirmM/FhZZhBb825m0s6Lb6ybN+IG9PNl3u9Y9zVLwHHSLKMXjDz6Fsn37z94lKvqY6hmpkWWQNCOsbnpOPp3kaimDFvw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5028.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(396003)(136003)(346002)(376002)(39860400002)(2906002)(55016002)(66476007)(9686003)(66946007)(86362001)(33656002)(5660300002)(316002)(66556008)(71200400001)(6506007)(38070700005)(53546011)(7696005)(8936002)(478600001)(38100700002)(26005)(186003)(110136005)(83380400001)(76116006)(64756008)(8676002)(122000001)(52536014)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?hr6llHW0Ovv5JZ3Aru5bTlJXsSnoufHOOXAgA1GreocRIgICzsgiypnCT4qS?=
 =?us-ascii?Q?m7unSpRhkG2TW0EdyWCXa8BBiHamgBPcuWHA9r6eaZlc4saVD9t2sR1somAP?=
 =?us-ascii?Q?bLJ6OFA+82+kU2o0vX14GHBYClcn+dW9YasCDtjgNRzdN2Rnw/RewGDfRuPn?=
 =?us-ascii?Q?0/OGBkskOp9Om1wzWdOOtTQRAEOr/FXmDSK3eRQEHe/fxXCH00CVapN7TD91?=
 =?us-ascii?Q?VWo/Zgx3BJtjXcPWGYpJ2YYylgLBXPq9UxDlFIsDl0a0yKT4s7yVVwnvHxSe?=
 =?us-ascii?Q?evegOK6HahsZbl4WmDP5Jb0F10bTgTnAw3HucYWvTxYVbBVTviw6HpfebRvX?=
 =?us-ascii?Q?mkczUtNsJm42tckjIHsRIk/rDVEYh3iO/60g8lClyH6xckjVUr8L32nE7gyf?=
 =?us-ascii?Q?iLXYFrKRsvp/YxiKq8dR/XuN2TPAIUrgwmJzQ9fqomPR+xvE3YbPNYLvP65o?=
 =?us-ascii?Q?CopqC2wlh9JVmdt9RQw2iGw7om/7xjNVhlgP1EvVYWyauykTyJRVL1f1kvH5?=
 =?us-ascii?Q?Eg5KQ6nrcOYF6TjR8Nga/6gUQGOeF/tB1WAmNQcjXFcsiNQYtVM0Qgwcgqyb?=
 =?us-ascii?Q?DCxWbl8PwXsG98U1iF0mSiY26twYBbLNzzSWrfcBtO0KF0qTI/qDrqg6K65S?=
 =?us-ascii?Q?SuxegLk34X/6lgrFkavojQcmhIEG4FcWGswvs/DOvcNciLxm5i8w8gputvRV?=
 =?us-ascii?Q?gVRCt/FExBsTr8iDbk6pRPNuTs1v0dr4O/Qnb1JiRR54YdpgDxa5xVH8awl/?=
 =?us-ascii?Q?uzjo5dOFAgieLU/Zos2Fcq/uWfPxKPVbHmFfEcAEYFfOJ3Vkzq3hV92USm+Z?=
 =?us-ascii?Q?AVpPb+OQ/Zo/v+uAZDMlbuyN41TZ5D9FG0sXqK8RULNj4tfMoOL2Amtdgzss?=
 =?us-ascii?Q?F+Jay0CfJoyKp9ul08hSrzsXxm/xMKja7ChYYE3Eg2781J1LTWJs26k9uXEx?=
 =?us-ascii?Q?JoLsBSwHssMJj/+4ajC1kYe5C1C6FJZjvz6K77NnrC9vWIiYWIaFOAulFCmp?=
 =?us-ascii?Q?Ymm1RMK3bvO6VYJr8XSpjpCiYkCI4gBUCAlcaXPUnfr/oz7hJ0966ZMg5mPn?=
 =?us-ascii?Q?Eh1IWuN2j9ZgAZTY/HIJ2pgPKpaFBxmy3sEHqB9OIGmiW3Bt1UR4zMCby2O2?=
 =?us-ascii?Q?Etdl8Mws+6s6z34JwLAIqF+aSTMLOuzdFNCM2ip2MN2os8PSyJcWaesUa/bi?=
 =?us-ascii?Q?+FlLCKOPa9Uq8cdaH/F+xFWQYVJ+PRYnHuHGeDifo99t9oDC020Jghe/0D1w?=
 =?us-ascii?Q?kuSl+xc/8xfJgckk+JEtVRRzo15cHcBmQl5uTYx+8xM2fRv78nG4NnvuZRHo?=
 =?us-ascii?Q?dvmFdZimvXQzOkGBDbmwlGpI?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5028.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1df7d7cc-e9e0-4fcb-412d-08d96998463d
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Aug 2021 20:21:38.2636 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IRH0wJDjWpMYBsoAcnYeTLyYFJHeUjegztG2jQQrkxnhwpjNA50M3axZpRavcp9bu2h/MYAcdO32zeHk6UEjfnSoPYxDuTgwHd5JLOkCzVA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1807
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [next-queue v4 04/13] ice: restart periodic
 outputs around time changes
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Tony Nguyen
> Sent: Monday, August 23, 2021 5:02 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [next-queue v4 04/13] ice: restart periodic outputs around time changes
>
> From: Jacob Keller <jacob.e.keller@intel.com>
>
> Wen we enabled auxiliary input/output support for the E810 device, we forgot to add logic to restart the output when we change time. This is important as the periodic output will be incorrect after a time change otherwise.
>
> This unfortunately includes the adjust time function, even though it uses an atomic hardware interface. The atomic adjustment can still cause the pin output to stall permanently, so we need to stop and restart it.
>
> Introduce wrapper functions to temporarily disable and then re-enable the clock outputs.
>
> Fixes: 172db5f91d5f ("ice: add support for auxiliary input/output pins")
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
 > drivers/net/ethernet/intel/ice/ice_ptp.c | 49 ++++++++++++++++++++++++
 > 1 file changed, 49 insertions(+)
> Tested in CVL
>
Tested-by: Mekala, Sunitha D <sunithax.d.mekala@intel.com > (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
