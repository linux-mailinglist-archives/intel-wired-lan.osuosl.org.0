Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A09304BF4DD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Feb 2022 10:38:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2D1A740228;
	Tue, 22 Feb 2022 09:38:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qEHHlRMJNlYa; Tue, 22 Feb 2022 09:38:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 60874401DE;
	Tue, 22 Feb 2022 09:38:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0E4401BF2B0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Feb 2022 09:38:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0978A81A64
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Feb 2022 09:38:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cM3wXJnj5Mu4 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Feb 2022 09:38:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3C09881A5F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Feb 2022 09:38:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645522694; x=1677058694;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9TzZtXpBpfHY2CtESnJbnzjrEkfCGXLjcoZSK8oAZto=;
 b=Og7udAY36xi/W/pVMsCdfw/EF+PcQZiPbzBQQXmUJiVkjIFbsBpotFIj
 p4yPynT98ytV4yP/0X5f73j/fYV5pC5v7WIwqGhbqFMixkcsKx3aOmYrF
 0c5cD5k2PVeMQmlmhpCIfy+Zo33a3LjvnAYs75VyICFJ1j6WPYiUrV25W
 ftEkDDWkp+Ow9W3gIHSn/YIKA764vIUojxZCsgcCsuWRwJ4RI6wdNvz7a
 9hyrZURPZJ9rGhfSq+GZ8T4fWm2nLVoILq6zE4p6yx/jTauNx3QyxEn29
 tjinMB9Ci+saa8Wp8dndYsqUz8IqnG48iarsW8rWtB5az1T03eZJHn8xH Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10265"; a="235192468"
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="235192468"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 01:38:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="507919370"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP; 22 Feb 2022 01:38:12 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Tue, 22 Feb 2022 01:38:12 -0800
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 22 Feb 2022 01:38:11 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 22 Feb 2022 01:38:11 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.48) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 22 Feb 2022 01:38:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fQqOTsiKTaFiBm4lN0ovK2x3jo3qQet29L1rPhe6zauOtGZSfzYke+KFj9ycVMBZ30SkJ5OX8/Ye5X4ClgUMrAb+Ky7dU72pHPixiKHerme2j01Ze9OfAMuyiCuwz0Ke3YRluXMunCTg7rTNcGTT1iCW5SwqHOTvTLfsT0oTvDlt6roXWpNnx88g9QIDxThO2sfT52MxQNBwPKbYPb91vP0Xg7SEY3UtGNHUx/iOHpS8CBstn+6mdRnReIEpWXOv2cznnwDHc2p949i6CDaaE1C+GxfBsI25IBm8Y6kgiqXV5kL4E5+nILAiS8Wl7DI1uW6kioXkCQTRAk436xhdqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L3bAzXiYLjyQlSfF03dSkDCmRxvOatifTLKXZmLjQ/k=;
 b=m1SCN3uBfbBYDhAxIl2D6usAH2MHwzQ4Lvd526wCvRYDrRjB6olCH7xtJUq1ezKzmgE4FqacBxPgN2Cs23d/oXTGop89Tz9+I/pblAGY7Mibn/vh/dLrQagBoYCDps9bvcOSJXSH8uZJZinaBSEfAbHN+wvM9n/04fc/O1wM58ngBp6UKYU+D3jERegyXegffoQN1/AxQgDpcqSwJknWMVw1mlj6wg5dEfG3iGrEiTx7lysS6x+VcHAYRUaA1kfZLE5xRPvuGsVFbGF4QJv5sVpsPruOxHVKnRW0rFH0XFT1h/r93lNVVgjbNLbry8WAN+J9KjEjrtgrlBVNaiQiyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by DM5PR1101MB2346.namprd11.prod.outlook.com (2603:10b6:3:a6::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4995.22; Tue, 22 Feb
 2022 09:38:09 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::79bd:61ad:6fb6:b739]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::79bd:61ad:6fb6:b739%5]) with mapi id 15.20.4995.027; Tue, 22 Feb 2022
 09:38:09 +0000
From: "Drewek, Wojciech" <wojciech.drewek@intel.com>
To: Harald Welte <laforge@gnumonks.org>, Marcin Szycik
 <marcin.szycik@linux.intel.com>
Thread-Topic: [PATCH net-next v7 3/7] gtp: Implement GTP echo request
Thread-Index: AQHYJ0c0x8wgPYhfJE2Ej/qOlKqz9qyfHWAAgAAxdFA=
Date: Tue, 22 Feb 2022 09:38:08 +0000
Message-ID: <MW4PR11MB5776AA2256C00293FAC07C16FD3B9@MW4PR11MB5776.namprd11.prod.outlook.com>
References: <20220221101425.19776-1-marcin.szycik@linux.intel.com>
 <20220221101425.19776-4-marcin.szycik@linux.intel.com>
 <YhSDfvQoNDyoAaV9@nataraja>
In-Reply-To: <YhSDfvQoNDyoAaV9@nataraja>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 27404902-6649-4b17-a468-08d9f5e7092f
x-ms-traffictypediagnostic: DM5PR1101MB2346:EE_
x-microsoft-antispam-prvs: <DM5PR1101MB23463000BEA94D73FFF4B18AFD3B9@DM5PR1101MB2346.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ksee2OEwFgNWwDw5RF2t2xHBURfQFhfJtQZM9HbfqbXr9TLjomMWEkzeLyKi7G5fgivfq8AvnZmRXu0IlcZARR3D7jWrnP0rMwUEUFpnSUbAKFOUmIkjIVr+OSgizPSMcOTD26Vu4Wf8UWQ9eBeJ79mGpSvx609h6xte3yRAfSpyJQ+yMUzIE6yBHq0Z2oY4UHX/FCp2IvoztGLsFhO0S1723UTsj+4ek53caS4Cwzy6AeBZQt1oLYWcNIUupHn4rWQ/M8L33VCavYaPVho6gwZnZeK4g/du7Tdr/2Oolq+X//tyncpAwIP+qPN+emfd5ZhcF7rdDO4WyYCD0rj8sWkmtKI3MS0UXvoE4q1q9SGzRC/OLPjT31LOVr4Cy/sGdGllT0T4EQcxi8U5Nfmv9dNwP/BjnjYLPgnCHLAlEnQRORMJd3FL2MgAuFq5S7YDLvkkgi4Gn/UNIv+9pk4ReyJkR7Xb6P/yzOQbZYbm0ezgZKo1PxKt1wk+YV1hjYdIYGrxXXWHM+T2Yb+DSz9V8gjqpE5mtbuuX3Dy/TvGf5IBXl+4I4DQIIR5dFO9q//fI1EGVxMYOmGy054lEBU7WyWqqU879bS42fQtiiS+hLwGlWuA5ddwOIdh8YP4BK9JvicdzJhL84pWqXpNj1rSTDKEf1KEuzsU6kmfNXJfMJ3zAOQdpV+ZqytJeB6L3R05GkzrKVKyq79vKK8kuILh2kNKrUjCOn6C1nwrhZBWlKn7yUa6vuWbWIkE25Wc6bGGQrdmQkjAJUEYgxc44fvBi2lPBIOiWNvycn/XlvFud5RI4zJqKZ1fMGCkaQS9INbB
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(83380400001)(6506007)(30864003)(52536014)(7696005)(2906002)(7416002)(110136005)(54906003)(53546011)(55016003)(8936002)(5660300002)(966005)(76116006)(8676002)(38070700005)(4326008)(66446008)(66946007)(64756008)(66556008)(26005)(66476007)(33656002)(71200400001)(38100700002)(9686003)(316002)(86362001)(82960400001)(186003)(508600001)(122000001)(579004)(559001)(357404004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?NW5GmWPR3vhulwA1Zw96O6AI1C4/th77lAxN56YPqsVEmhN+yO3gM0G14RmU?=
 =?us-ascii?Q?Fu6HDTLBaAVBFc0ilQ/9K5v4dSXzvU95JqZt1u+MTzSjkp7Tep1sshBiQ1uZ?=
 =?us-ascii?Q?b4ZGZwZ0fUqtVAvDxTQfbjhgHI4xIIksjzGE44ZZ3E1Hvpj8yNjhIxbwDw/N?=
 =?us-ascii?Q?tqMV/qtbKa1p94Sb1fb85Sar6iq6Y+b2fq0ViQbSFfvOrtiIKHAjw77EkAMe?=
 =?us-ascii?Q?jcGYchC2CMJndMjeiAIELXJ1mzHat3zYztHdTjVHrH5qT9IrHfcXf2TBXfTz?=
 =?us-ascii?Q?uPxm8wNECTVxuk9ylFsTACJ+mAVTuVeZnlZpBcN5Bxj3EErqU5JiqzBppaXZ?=
 =?us-ascii?Q?RpeOWjK3/5DZDq50Pz2F0lPYYwGsrqfpmnQ4uEfbtRCJIeMpt1sJ2aMo0n1S?=
 =?us-ascii?Q?oB12fzh093Hjidxs8+g30o+LB0YcriAa2rDxgCtw64uZpXm62E6ZEFQBHV3z?=
 =?us-ascii?Q?6uGbYS1JkpY6Cs/qwaW5tJY2da/QgkY316TesA9p0e6BucMPEhPPUqegQ7ii?=
 =?us-ascii?Q?bJlRyQdl6hr3rSVe1GrqVKygQBXw/mgc9E+/f/bLhd8enrnGOKf/jFGZI7B8?=
 =?us-ascii?Q?ACxayvOl850PJ8ZEk6LL3XrVr0Fe5pgmzfFNfnqR8de+lssAU2nEZJVvW1mq?=
 =?us-ascii?Q?GQ88hqGnyhF9+JFE4Nq35MF1h50Q2c5W0z2jFyJ0QMdrASPbSQQFfsI+2Vza?=
 =?us-ascii?Q?EHGirrSX/vqoW85oLcCVpZideyeEoUmudVAkRFFCMTl2+ADHgLHnUgaY7bDQ?=
 =?us-ascii?Q?pxOllfPw56mtQ0zXcAnm/jILHdvI2Fk/qRs/ZvlrUly0ragR3p58YbCT75HA?=
 =?us-ascii?Q?r/w9d07kS5FTkWmZuemNuqNQMrD1CRAiWsHVQv3xQXQH5kGDGoQpAk2TIQBQ?=
 =?us-ascii?Q?Uu9EjOiVyGXV3EBbHT/u8R4lXMGO60+A3QRjOQlZcJA9Dr7OZspa2gPypH2p?=
 =?us-ascii?Q?7rJFodugFhrE3Hnb/t6TsnaicKJ3jeUqSFU+fgrcgeC7pj0mAqy5w6LzCYz7?=
 =?us-ascii?Q?US6WtQdCwh1Q1i9X+UgFJRDxCouzAPS+c28bKz5Kz1lJhrAcR93hQ0JxcAXd?=
 =?us-ascii?Q?0kOnA0b4jQnDLIm6wKg+GUyg4GnxzHq/UCz91JF8Jw4qW5jYYB/YnTZ+saXm?=
 =?us-ascii?Q?OhNXsGtGhyv2N9u/pcjrEAYaqiFL1BTbU5FFk73ssqJGgzUBA9fUPvl07mkN?=
 =?us-ascii?Q?gIPYKNqo+3FQ2RSjLymG0IXU/g02eRduZkKSm5t7VCc5iWc7jk30WeEujsNu?=
 =?us-ascii?Q?jY9doq7AMsfztIFJx1TiZToqE0F+tiojil+4LsVazvjvCb5xgJgyLLGWd/p2?=
 =?us-ascii?Q?x03F/C9VA5FfattOjaZQPTMVdaxaSm2yAG/y5Aic7+VX8vBpZm8IRzilw0Z7?=
 =?us-ascii?Q?nK2ByzvNd6W5uUjk7905R0hz0tm+L1rb1qf42AR1CnibsHjOWpvxs/ME5h2K?=
 =?us-ascii?Q?0BTr6qKcJugJTbX10Q0lzlKCUIWrzaYeyuMAl8iTtb2W5PAwibcR965H+ySZ?=
 =?us-ascii?Q?lQdxuPNuwcoUy62Y+3IZWtS1NChvoZjsu7rQqY/tx+UerPpGdDeoMYjcVIqG?=
 =?us-ascii?Q?yIbXhHqIIUDsZW0EnKx3+Dj9jLkDEZeUkzvF16PUFFMzK8v+9b6J9y3rvz6d?=
 =?us-ascii?Q?vcH73B0y1QOEoXQNzgb79t3tuJxe0yOaB0spJ+IB1vUAcstzGAlvjiFS0+NR?=
 =?us-ascii?Q?mDLbgw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 27404902-6649-4b17-a468-08d9f5e7092f
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Feb 2022 09:38:08.9378 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: e8/2U5RG1IEmrl0zH4201YnSok9PIhkeFgh31+3fsdLQRZHwRtiAC89D3OkdLLb5KRFvitTZaYJvVX0PF+GIsn42aNu1O5tqgriAF41hnFY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2346
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v7 3/7] gtp: Implement GTP
 echo request
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
Cc: "jiri@resnulli.us" <jiri@resnulli.us>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "osmocom-net-gprs@lists.osmocom.org" <osmocom-net-gprs@lists.osmocom.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "pablo@netfilter.org" <pablo@netfilter.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Harald

Thanks for the response.

> -----Original Message-----
> From: Harald Welte <laforge@gnumonks.org>
> Sent: wtorek, 22 lutego 2022 07:33
> To: Marcin Szycik <marcin.szycik@linux.intel.com>
> Cc: netdev@vger.kernel.org; michal.swiatkowski@linux.intel.com; Drewek, Wojciech <wojciech.drewek@intel.com>;
> davem@davemloft.net; kuba@kernel.org; pablo@netfilter.org; jiri@resnulli.us; osmocom-net-gprs@lists.osmocom.org; intel-wired-
> lan@lists.osuosl.org
> Subject: Re: [PATCH net-next v7 3/7] gtp: Implement GTP echo request
> 
> Hi Marcin, Wojciech,
> 
> thanks for adding this feature.
> 
> On Mon, Feb 21, 2022 at 11:14:21AM +0100, Marcin Szycik wrote:
> > All echo requests are stored in echo_hash table with the flag
> > (replied) which indicates if GTP echo response was recived in
> > response to this request. Userspace can see all echo requests
> > using GTP_CMD_ECHOREQ dumpit callback.
> 
> Is there any reason to complicate the kernel with this?  Echo requests
> are sent rately (certainly not more frequent than some seconds of timeout)
> and userspace needs to keep track of which peers there are and their state
> anyway.  So I would have expected it to handle also the receiving of
> the echo request.
> 
> I wouldn't have added the related state table.  From what I  can tell,
> there is no benefit for the kernel to have this information itself, i.e.
> there are no in-kernel users of this information?

That's right, there are no in-kernel users of this information.

> 
> It's not super critical, I just thought we should unburden the kernel
> with anything not performance critical and that it doesn't have to do
> by itself.
> 
> Also, from an "orthogonality" point of view, it is a bit unusual that
> userspace explicitly requests sending of an ECHO_REQ but then doesn't
> process the response?
> 
> I think either the Tx and the Rx ard triggered by / notified to userspace,
> or you would also do periodic triggering of Tx in the kernel autonomously,
> and process the responses.  But at that point then you also need to think
> about further consequences, such as counting the number of missed ECHO RESP,
> and then notify userspace if that condition "N out of M last responses missed".
> 
> Regards,
> 	Harald

I thought that with the GTP device created from ip link, userspace
would be unable to receive Echo Response (similar to Echo Request).
If it's not the case than I will get rid of handling Echo Response in the
next version.

Thanks,
Wojtek
> 
> >
> > Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> > Suggested-by: Harald Welte <laforge@gnumonks.org>
> > ---
> >  drivers/net/gtp.c        | 402 ++++++++++++++++++++++++++++++++++++---
> >  include/uapi/linux/gtp.h |   2 +
> >  2 files changed, 376 insertions(+), 28 deletions(-)
> >
> > diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
> > index 5ed24fa9d5b2..14e9f8053d71 100644
> > --- a/drivers/net/gtp.c
> > +++ b/drivers/net/gtp.c
> > @@ -60,6 +60,19 @@ struct pdp_ctx {
> >  	struct rcu_head		rcu_head;
> >  };
> >
> > +struct gtp_echo {
> > +	struct hlist_node	hlist;
> > +
> > +	struct in_addr		ms_addr_ip4;
> > +	struct in_addr		peer_addr_ip4;
> > +
> > +	u8			replied;
> > +	u8			version;
> > +	int			ifindex;
> > +
> > +	struct rcu_head		rcu_head;
> > +};
> > +
> >  /* One instance of the GTP device. */
> >  struct gtp_dev {
> >  	struct list_head	list;
> > @@ -75,6 +88,7 @@ struct gtp_dev {
> >  	unsigned int		hash_size;
> >  	struct hlist_head	*tid_hash;
> >  	struct hlist_head	*addr_hash;
> > +	struct hlist_head	*echo_hash;
> >
> >  	u8			restart_count;
> >  };
> > @@ -89,6 +103,19 @@ static u32 gtp_h_initval;
> >
> >  static void pdp_context_delete(struct pdp_ctx *pctx);
> >
> > +static void gtp_echo_context_free(struct rcu_head *head)
> > +{
> > +	struct gtp_echo *echo = container_of(head, struct gtp_echo, rcu_head);
> > +
> > +	kfree(echo);
> > +}
> > +
> > +static void gtp_echo_delete(struct gtp_echo *echo)
> > +{
> > +	hlist_del_rcu(&echo->hlist);
> > +	call_rcu(&echo->rcu_head, gtp_echo_context_free);
> > +}
> > +
> >  static inline u32 gtp0_hashfn(u64 tid)
> >  {
> >  	u32 *tid32 = (u32 *) &tid;
> > @@ -154,6 +181,24 @@ static struct pdp_ctx *ipv4_pdp_find(struct gtp_dev *gtp, __be32 ms_addr)
> >  	return NULL;
> >  }
> >
> > +static struct gtp_echo *gtp_find_echo(struct gtp_dev *gtp, __be32 ms_addr,
> > +				      __be32 peer_addr, unsigned int version)
> > +{
> > +	struct hlist_head *head;
> > +	struct gtp_echo *echo;
> > +
> > +	head = &gtp->echo_hash[ipv4_hashfn(ms_addr) % gtp->hash_size];
> > +
> > +	hlist_for_each_entry_rcu(echo, head, hlist) {
> > +		if (echo->ms_addr_ip4.s_addr == ms_addr &&
> > +		    echo->peer_addr_ip4.s_addr == peer_addr &&
> > +		    echo->version == version)
> > +			return echo;
> > +	}
> > +
> > +	return NULL;
> > +}
> > +
> >  static bool gtp_check_ms_ipv4(struct sk_buff *skb, struct pdp_ctx *pctx,
> >  				  unsigned int hdrlen, unsigned int role)
> >  {
> > @@ -243,12 +288,34 @@ static struct rtable *ip4_route_output_gtp(struct flowi4 *fl4,
> >   *   by the receiver
> >   * Returns true if the echo req was correct, false otherwise.
> >   */
> > -static bool gtp0_validate_echo_req(struct gtp0_header *gtp0)
> > +static bool gtp0_validate_echo_hdr(struct gtp0_header *gtp0)
> >  {
> >  	return !(gtp0->tid || (gtp0->flags ^ 0x1e) ||
> >  		gtp0->number != 0xff || gtp0->flow);
> >  }
> >
> > +/* msg_type has to be GTP_ECHO_REQ or GTP_ECHO_RSP */
> > +static void gtp0_build_echo_msg(struct gtp0_header *hdr, __u8 msg_type)
> > +{
> > +	hdr->flags = 0x1e; /* v0, GTP-non-prime. */
> > +	hdr->type = msg_type;
> > +	/* GSM TS 09.60. 7.3 In all Path Management Flow Label and TID
> > +	 * are not used and shall be set to 0.
> > +	 */
> > +	hdr->flow = 0;
> > +	hdr->tid = 0;
> > +	hdr->number = 0xff;
> > +	hdr->spare[0] = 0xff;
> > +	hdr->spare[1] = 0xff;
> > +	hdr->spare[2] = 0xff;
> > +
> > +	if (msg_type == GTP_ECHO_RSP)
> > +		hdr->length =
> > +			htons(sizeof(struct gtp0_packet) - sizeof(struct gtp0_header));
> > +	else
> > +		hdr->length = 0;
> > +}
> > +
> >  static int gtp0_send_echo_resp(struct gtp_dev *gtp, struct sk_buff *skb)
> >  {
> >  	struct gtp0_packet *gtp_pkt;
> > @@ -260,7 +327,7 @@ static int gtp0_send_echo_resp(struct gtp_dev *gtp, struct sk_buff *skb)
> >
> >  	gtp0 = (struct gtp0_header *)(skb->data + sizeof(struct udphdr));
> >
> > -	if (!gtp0_validate_echo_req(gtp0))
> > +	if (!gtp0_validate_echo_hdr(gtp0))
> >  		return -1;
> >
> >  	seq = gtp0->seq;
> > @@ -271,10 +338,7 @@ static int gtp0_send_echo_resp(struct gtp_dev *gtp, struct sk_buff *skb)
> >  	gtp_pkt = skb_push(skb, sizeof(struct gtp0_packet));
> >  	memset(gtp_pkt, 0, sizeof(struct gtp0_packet));
> >
> > -	gtp_pkt->gtp0_h.flags = 0x1e; /* v0, GTP-non-prime. */
> > -	gtp_pkt->gtp0_h.type = GTP_ECHO_RSP;
> > -	gtp_pkt->gtp0_h.length =
> > -		htons(sizeof(struct gtp0_packet) - sizeof(struct gtp0_header));
> > +	gtp0_build_echo_msg(&gtp_pkt->gtp0_h, GTP_ECHO_RSP);
> >
> >  	/* GSM TS 09.60. 7.3 The Sequence Number in a signalling response
> >  	 * message shall be copied from the signalling request message
> > @@ -282,16 +346,6 @@ static int gtp0_send_echo_resp(struct gtp_dev *gtp, struct sk_buff *skb)
> >  	 */
> >  	gtp_pkt->gtp0_h.seq = seq;
> >
> > -	/* GSM TS 09.60. 7.3 In all Path Management Flow Label and TID
> > -	 * are not used and shall be set to 0.
> > -	 */
> > -	gtp_pkt->gtp0_h.flow = 0;
> > -	gtp_pkt->gtp0_h.tid = 0;
> > -	gtp_pkt->gtp0_h.number = 0xff;
> > -	gtp_pkt->gtp0_h.spare[0] = 0xff;
> > -	gtp_pkt->gtp0_h.spare[1] = 0xff;
> > -	gtp_pkt->gtp0_h.spare[2] = 0xff;
> > -
> >  	gtp_pkt->ie.tag = GTPIE_RECOVERY;
> >  	gtp_pkt->ie.val = gtp->restart_count;
> >
> > @@ -319,6 +373,31 @@ static int gtp0_send_echo_resp(struct gtp_dev *gtp, struct sk_buff *skb)
> >  	return 0;
> >  }
> >
> > +static int gtp0_handle_echo_resp(struct gtp_dev *gtp, struct sk_buff *skb)
> > +{
> > +	struct gtp0_header *gtp0;
> > +	struct gtp_echo *echo;
> > +	struct iphdr *iph;
> > +
> > +	gtp0 = (struct gtp0_header *)(skb->data + sizeof(struct udphdr));
> > +
> > +	if (!gtp0_validate_echo_hdr(gtp0))
> > +		return -1;
> > +
> > +	iph = ip_hdr(skb);
> > +
> > +	echo = gtp_find_echo(gtp, iph->daddr, iph->saddr, GTP_V0);
> > +	if (!echo) {
> > +		netdev_dbg(gtp->dev, "No echo request was send to %pI4, version: %u\n",
> > +			   &iph->saddr, GTP_V0);
> > +		return -1;
> > +	}
> > +
> > +	echo->replied = true;
> > +
> > +	return 0;
> > +}
> > +
> >  /* 1 means pass up to the stack, -1 means drop and 0 means decapsulated. */
> >  static int gtp0_udp_encap_recv(struct gtp_dev *gtp, struct sk_buff *skb)
> >  {
> > @@ -342,6 +421,9 @@ static int gtp0_udp_encap_recv(struct gtp_dev *gtp, struct sk_buff *skb)
> >  	if (gtp0->type == GTP_ECHO_REQ && gtp->sk_created)
> >  		return gtp0_send_echo_resp(gtp, skb);
> >
> > +	if (gtp0->type == GTP_ECHO_RSP && gtp->sk_created)
> > +		return gtp0_handle_echo_resp(gtp, skb);
> > +
> >  	if (gtp0->type != GTP_TPDU)
> >  		return 1;
> >
> > @@ -354,6 +436,27 @@ static int gtp0_udp_encap_recv(struct gtp_dev *gtp, struct sk_buff *skb)
> >  	return gtp_rx(pctx, skb, hdrlen, gtp->role);
> >  }
> >
> > +/* msg_type has to be GTP_ECHO_REQ or GTP_ECHO_RSP */
> > +static void gtp1u_build_echo_msg(struct gtp1_header_long *hdr, __u8 msg_type)
> > +{
> > +	/* S flag must be set to 1 */
> > +	hdr->flags = 0x32; /* v1, GTP-non-prime. */
> > +	hdr->type = msg_type;
> > +	/* 3GPP TS 29.281 5.1 - TEID has to be set to 0 */
> > +	hdr->tid = 0;
> > +
> > +	/* seq, npdu and next should be counted to the length of the GTP packet
> > +	 * that's why szie of gtp1_header should be subtracted,
> > +	 * not size of gtp1_header_long.
> > +	 */
> > +	if (msg_type == GTP_ECHO_RSP)
> > +		hdr->length =
> > +			htons(sizeof(struct gtp1u_packet) - sizeof(struct gtp1_header));
> > +	else
> > +		hdr->length =
> > +			htons(sizeof(struct gtp1_header_long) - sizeof(struct gtp1_header));
> > +}
> > +
> >  static int gtp1u_send_echo_resp(struct gtp_dev *gtp, struct sk_buff *skb)
> >  {
> >  	struct gtp1_header_long *gtp1u;
> > @@ -377,17 +480,7 @@ static int gtp1u_send_echo_resp(struct gtp_dev *gtp, struct sk_buff *skb)
> >  	gtp_pkt = skb_push(skb, sizeof(struct gtp1u_packet));
> >  	memset(gtp_pkt, 0, sizeof(struct gtp1u_packet));
> >
> > -	/* S flag must be set to 1 */
> > -	gtp_pkt->gtp1u_h.flags = 0x32;
> > -	gtp_pkt->gtp1u_h.type = GTP_ECHO_RSP;
> > -	/* seq, npdu and next should be counted to the length of the GTP packet
> > -	 * that's why szie of gtp1_header should be subtracted,
> > -	 * not why szie of gtp1_header_long.
> > -	 */
> > -	gtp_pkt->gtp1u_h.length =
> > -		htons(sizeof(struct gtp1u_packet) - sizeof(struct gtp1_header));
> > -	/* 3GPP TS 29.281 5.1 - TEID has to be set to 0 */
> > -	gtp_pkt->gtp1u_h.tid = 0;
> > +	gtp1u_build_echo_msg(&gtp_pkt->gtp1u_h, GTP_ECHO_RSP);
> >
> >  	/* 3GPP TS 29.281 7.7.2 - The Restart Counter value in the
> >  	 * Recovery information element shall not be used, i.e. it shall
> > @@ -422,6 +515,35 @@ static int gtp1u_send_echo_resp(struct gtp_dev *gtp, struct sk_buff *skb)
> >  	return 0;
> >  }
> >
> > +static int gtp1u_handle_echo_resp(struct gtp_dev *gtp, struct sk_buff *skb)
> > +{
> > +	struct gtp1_header_long *gtp1u;
> > +	struct gtp_echo *echo;
> > +	struct iphdr *iph;
> > +
> > +	gtp1u = (struct gtp1_header_long *)(skb->data + sizeof(struct udphdr));
> > +
> > +	/* 3GPP TS 29.281 5.1 - For the Echo Request, Echo Response,
> > +	 * Error Indication and Supported Extension Headers Notification
> > +	 * messages, the S flag shall be set to 1 and TEID shall be set to 0.
> > +	 */
> > +	if (!(gtp1u->flags & GTP1_F_SEQ) || gtp1u->tid)
> > +		return -1;
> > +
> > +	iph = ip_hdr(skb);
> > +
> > +	echo = gtp_find_echo(gtp, iph->daddr, iph->saddr, GTP_V1);
> > +	if (!echo) {
> > +		netdev_dbg(gtp->dev, "No echo request was send to %pI4, version: %u\n",
> > +			   &iph->saddr, GTP_V1);
> > +		return -1;
> > +	}
> > +
> > +	echo->replied = true;
> > +
> > +	return 0;
> > +}
> > +
> >  static int gtp1u_udp_encap_recv(struct gtp_dev *gtp, struct sk_buff *skb)
> >  {
> >  	unsigned int hdrlen = sizeof(struct udphdr) +
> > @@ -444,6 +566,9 @@ static int gtp1u_udp_encap_recv(struct gtp_dev *gtp, struct sk_buff *skb)
> >  	if (gtp1->type == GTP_ECHO_REQ && gtp->sk_created)
> >  		return gtp1u_send_echo_resp(gtp, skb);
> >
> > +	if (gtp1->type == GTP_ECHO_RSP && gtp->sk_created)
> > +		return gtp1u_handle_echo_resp(gtp, skb);
> > +
> >  	if (gtp1->type != GTP_TPDU)
> >  		return 1;
> >
> > @@ -835,6 +960,7 @@ static void gtp_destructor(struct net_device *dev)
> >
> >  	kfree(gtp->addr_hash);
> >  	kfree(gtp->tid_hash);
> > +	kfree(gtp->echo_hash);
> >  }
> >
> >  static struct sock *gtp_create_sock(int type, struct gtp_dev *gtp)
> > @@ -954,18 +1080,23 @@ static int gtp_newlink(struct net *src_net, struct net_device *dev,
> >  out_hashtable:
> >  	kfree(gtp->addr_hash);
> >  	kfree(gtp->tid_hash);
> > +	kfree(gtp->echo_hash);
> >  	return err;
> >  }
> >
> >  static void gtp_dellink(struct net_device *dev, struct list_head *head)
> >  {
> >  	struct gtp_dev *gtp = netdev_priv(dev);
> > +	struct gtp_echo *echo;
> >  	struct pdp_ctx *pctx;
> >  	int i;
> >
> > -	for (i = 0; i < gtp->hash_size; i++)
> > +	for (i = 0; i < gtp->hash_size; i++) {
> >  		hlist_for_each_entry_rcu(pctx, &gtp->tid_hash[i], hlist_tid)
> >  			pdp_context_delete(pctx);
> > +		hlist_for_each_entry_rcu(echo, &gtp->echo_hash[i], hlist)
> > +			gtp_echo_delete(echo);
> > +	}
> >
> >  	list_del_rcu(&gtp->list);
> >  	unregister_netdevice_queue(dev, head);
> > @@ -1040,13 +1171,21 @@ static int gtp_hashtable_new(struct gtp_dev *gtp, int hsize)
> >  	if (gtp->tid_hash == NULL)
> >  		goto err1;
> >
> > +	gtp->echo_hash = kmalloc_array(hsize, sizeof(struct hlist_head),
> > +				       GFP_KERNEL | __GFP_NOWARN);
> > +	if (!gtp->echo_hash)
> > +		goto err2;
> > +
> >  	gtp->hash_size = hsize;
> >
> >  	for (i = 0; i < hsize; i++) {
> >  		INIT_HLIST_HEAD(&gtp->addr_hash[i]);
> >  		INIT_HLIST_HEAD(&gtp->tid_hash[i]);
> > +		INIT_HLIST_HEAD(&gtp->echo_hash[i]);
> >  	}
> >  	return 0;
> > +err2:
> > +	kfree(gtp->tid_hash);
> >  err1:
> >  	kfree(gtp->addr_hash);
> >  	return -ENOMEM;
> > @@ -1583,6 +1722,205 @@ static int gtp_genl_dump_pdp(struct sk_buff *skb,
> >  	return skb->len;
> >  }
> >
> > +static int gtp_add_echo(struct gtp_dev *gtp, __be32 src_ip, __be32 dst_ip,
> > +			unsigned int version)
> > +{
> > +	struct gtp_echo *echo;
> > +	bool found = false;
> > +
> > +	rcu_read_lock();
> > +	echo = gtp_find_echo(gtp, src_ip, dst_ip, version);
> > +	rcu_read_unlock();
> > +
> > +	if (!echo) {
> > +		echo = kmalloc(sizeof(*echo), GFP_ATOMIC);
> > +		if (!echo)
> > +			return -ENOMEM;
> > +	} else {
> > +		found = true;
> > +	}
> > +
> > +	echo->ms_addr_ip4.s_addr = src_ip;
> > +	echo->peer_addr_ip4.s_addr = dst_ip;
> > +	echo->replied = false;
> > +	echo->version = version;
> > +	echo->ifindex = gtp->dev->ifindex;
> > +
> > +	if (!found) {
> > +		u32 hash_ms;
> > +
> > +		hash_ms = ipv4_hashfn(src_ip) % gtp->hash_size;
> > +		hlist_add_head_rcu(&echo->hlist, &gtp->echo_hash[hash_ms]);
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +static int gtp_genl_send_echo_req(struct sk_buff *skb, struct genl_info *info)
> > +{
> > +	struct sk_buff *skb_to_send;
> > +	__be32 src_ip, dst_ip;
> > +	unsigned int version;
> > +	struct gtp_dev *gtp;
> > +	struct flowi4 fl4;
> > +	struct rtable *rt;
> > +	struct sock *sk;
> > +	__be16 port;
> > +	int len;
> > +	int err;
> > +
> > +	if (!info->attrs[GTPA_VERSION] ||
> > +	    !info->attrs[GTPA_LINK] ||
> > +	    !info->attrs[GTPA_PEER_ADDRESS] ||
> > +	    !info->attrs[GTPA_MS_ADDRESS])
> > +		return -EINVAL;
> > +
> > +	version = nla_get_u32(info->attrs[GTPA_VERSION]);
> > +	dst_ip = nla_get_be32(info->attrs[GTPA_PEER_ADDRESS]);
> > +	src_ip = nla_get_be32(info->attrs[GTPA_MS_ADDRESS]);
> > +
> > +	gtp = gtp_find_dev(sock_net(skb->sk), info->attrs);
> > +	if (!gtp)
> > +		return -ENODEV;
> > +
> > +	if (!gtp->sk_created)
> > +		return -EOPNOTSUPP;
> > +	if (!(gtp->dev->flags & IFF_UP))
> > +		return -ENETDOWN;
> > +
> > +	if (version == GTP_V0) {
> > +		struct gtp0_header *gtp0_h;
> > +
> > +		len = LL_RESERVED_SPACE(gtp->dev) + sizeof(struct gtp0_header) +
> > +			sizeof(struct iphdr) + sizeof(struct udphdr);
> > +
> > +		skb_to_send = netdev_alloc_skb_ip_align(gtp->dev, len);
> > +		if (!skb_to_send)
> > +			return -ENOMEM;
> > +
> > +		sk = gtp->sk0;
> > +		port = htons(GTP0_PORT);
> > +
> > +		gtp0_h = skb_push(skb_to_send, sizeof(struct gtp0_header));
> > +		memset(gtp0_h, 0, sizeof(struct gtp0_header));
> > +		gtp0_build_echo_msg(gtp0_h, GTP_ECHO_REQ);
> > +	} else if (version == GTP_V1) {
> > +		struct gtp1_header_long *gtp1u_h;
> > +
> > +		len = LL_RESERVED_SPACE(gtp->dev) + sizeof(struct gtp1_header_long) +
> > +			sizeof(struct iphdr) + sizeof(struct udphdr);
> > +
> > +		skb_to_send = netdev_alloc_skb_ip_align(gtp->dev, len);
> > +		if (!skb_to_send)
> > +			return -ENOMEM;
> > +
> > +		sk = gtp->sk1u;
> > +		port = htons(GTP1U_PORT);
> > +
> > +		gtp1u_h = skb_push(skb_to_send, sizeof(struct gtp1_header_long));
> > +		memset(gtp1u_h, 0, sizeof(struct gtp1_header_long));
> > +		gtp1u_build_echo_msg(gtp1u_h, GTP_ECHO_REQ);
> > +	} else {
> > +		return -ENODEV;
> > +	}
> > +
> > +	rt = ip4_route_output_gtp(&fl4, sk, dst_ip, src_ip);
> > +	if (IS_ERR(rt)) {
> > +		netdev_dbg(gtp->dev, "no route for echo request to %pI4\n",
> > +			   &dst_ip);
> > +			   kfree_skb(skb_to_send);
> > +		return -ENODEV;
> > +	}
> > +
> > +	err = gtp_add_echo(gtp, src_ip, dst_ip, version);
> > +	if (err)
> > +		return err;
> > +
> > +	udp_tunnel_xmit_skb(rt, sk, skb_to_send,
> > +			    fl4.saddr, fl4.daddr,
> > +			    fl4.flowi4_tos,
> > +			    ip4_dst_hoplimit(&rt->dst),
> > +			    0,
> > +			    port, port,
> > +			    !net_eq(sock_net(sk),
> > +				    dev_net(gtp->dev)),
> > +			    false);
> > +	return 0;
> > +}
> > +
> > +static int gtp_genl_fill_echo_info(struct sk_buff *skb, u32 snd_portid, u32 snd_seq,
> > +				   int flags, u32 type, struct gtp_echo *echo)
> > +{
> > +	void *genlh;
> > +
> > +	genlh = genlmsg_put(skb, snd_portid, snd_seq, &gtp_genl_family, flags,
> > +			    type);
> > +	if (!genlh)
> > +		goto err;
> > +
> > +	if (nla_put_u32(skb, GTPA_VERSION, echo->version) ||
> > +	    nla_put_u32(skb, GTPA_LINK, echo->ifindex) ||
> > +	    nla_put_be32(skb, GTPA_PEER_ADDRESS, echo->peer_addr_ip4.s_addr) ||
> > +	    nla_put_be32(skb, GTPA_MS_ADDRESS, echo->ms_addr_ip4.s_addr) ||
> > +	    nla_put_u8(skb, GTPA_ECHO_REPLIED, echo->replied))
> > +		goto err;
> > +
> > +	genlmsg_end(skb, genlh);
> > +	return 0;
> > +
> > +err:
> > +	genlmsg_cancel(skb, genlh);
> > +	return -EMSGSIZE;
> > +}
> > +
> > +static int gtp_genl_dump_echo(struct sk_buff *skb,
> > +			      struct netlink_callback *cb)
> > +{
> > +	struct gtp_dev *last_gtp = (struct gtp_dev *)cb->args[2], *gtp;
> > +	int i, j, bucket = cb->args[0], skip = cb->args[1];
> > +	struct net *net = sock_net(skb->sk);
> > +	struct gtp_echo *echo;
> > +	struct gtp_net *gn;
> > +
> > +	gn = net_generic(net, gtp_net_id);
> > +
> > +	if (cb->args[4])
> > +		return 0;
> > +
> > +	rcu_read_lock();
> > +	list_for_each_entry_rcu(gtp, &gn->gtp_dev_list, list) {
> > +		if (last_gtp && last_gtp != gtp)
> > +			continue;
> > +		else
> > +			last_gtp = NULL;
> > +
> > +		for (i = bucket; i < gtp->hash_size; i++) {
> > +			j = 0;
> > +			hlist_for_each_entry_rcu(echo, &gtp->echo_hash[i],
> > +						 hlist) {
> > +				int ret = gtp_genl_fill_echo_info(skb,
> > +								  NETLINK_CB(cb->skb).portid,
> > +								  cb->nlh->nlmsg_seq,
> > +								  NLM_F_MULTI,
> > +								  cb->nlh->nlmsg_type, echo);
> > +				if (j >= skip && ret) {
> > +					cb->args[0] = i;
> > +					cb->args[1] = j;
> > +					cb->args[2] = (unsigned long)gtp;
> > +					goto out;
> > +				}
> > +				j++;
> > +			}
> > +			skip = 0;
> > +		}
> > +		bucket = 0;
> > +	}
> > +	cb->args[4] = 1;
> > +out:
> > +	rcu_read_unlock();
> > +	return skb->len;
> > +}
> > +
> >  static const struct nla_policy gtp_genl_policy[GTPA_MAX + 1] = {
> >  	[GTPA_LINK]		= { .type = NLA_U32, },
> >  	[GTPA_VERSION]		= { .type = NLA_U32, },
> > @@ -1593,6 +1931,7 @@ static const struct nla_policy gtp_genl_policy[GTPA_MAX + 1] = {
> >  	[GTPA_NET_NS_FD]	= { .type = NLA_U32, },
> >  	[GTPA_I_TEI]		= { .type = NLA_U32, },
> >  	[GTPA_O_TEI]		= { .type = NLA_U32, },
> > +	[GTPA_ECHO_REPLIED]	= { .type = NLA_U8, },
> >  };
> >
> >  static const struct genl_small_ops gtp_genl_ops[] = {
> > @@ -1615,6 +1954,13 @@ static const struct genl_small_ops gtp_genl_ops[] = {
> >  		.dumpit = gtp_genl_dump_pdp,
> >  		.flags = GENL_ADMIN_PERM,
> >  	},
> > +	{
> > +		.cmd = GTP_CMD_ECHOREQ,
> > +		.validate = GENL_DONT_VALIDATE_STRICT | GENL_DONT_VALIDATE_DUMP,
> > +		.doit = gtp_genl_send_echo_req,
> > +		.dumpit = gtp_genl_dump_echo,
> > +		.flags = GENL_ADMIN_PERM,
> > +	},
> >  };
> >
> >  static struct genl_family gtp_genl_family __ro_after_init = {
> > diff --git a/include/uapi/linux/gtp.h b/include/uapi/linux/gtp.h
> > index 79f9191bbb24..63bb60f1e4e3 100644
> > --- a/include/uapi/linux/gtp.h
> > +++ b/include/uapi/linux/gtp.h
> > @@ -8,6 +8,7 @@ enum gtp_genl_cmds {
> >  	GTP_CMD_NEWPDP,
> >  	GTP_CMD_DELPDP,
> >  	GTP_CMD_GETPDP,
> > +	GTP_CMD_ECHOREQ,
> >
> >  	GTP_CMD_MAX,
> >  };
> > @@ -29,6 +30,7 @@ enum gtp_attrs {
> >  	GTPA_NET_NS_FD,
> >  	GTPA_I_TEI,	/* for GTPv1 only */
> >  	GTPA_O_TEI,	/* for GTPv1 only */
> > +	GTPA_ECHO_REPLIED,
> >  	GTPA_PAD,
> >  	__GTPA_MAX,
> >  };
> > --
> > 2.35.1
> >
> 
> --
> - Harald Welte <laforge@gnumonks.org>           http://laforge.gnumonks.org/
> ============================================================================
> "Privacy in residential applications is a desirable marketing option."
>                                                   (ETSI EN 300 175-7 Ch. A6)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
