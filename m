Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBA62443947
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Nov 2021 00:03:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C6C874033A;
	Tue,  2 Nov 2021 23:03:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pFse_lUBIuHE; Tue,  2 Nov 2021 23:03:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9E151400EF;
	Tue,  2 Nov 2021 23:03:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3B69D1BF2F9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 23:03:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 22DD880DF3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 23:03:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p8V3iOTvyvnT for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Nov 2021 23:03:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6295A80DEE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 23:02:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10156"; a="228835585"
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; d="scan'208";a="228835585"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2021 16:02:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; d="scan'208";a="449575945"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga006.jf.intel.com with ESMTP; 02 Nov 2021 16:02:58 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 2 Nov 2021 16:02:58 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 2 Nov 2021 16:02:58 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 2 Nov 2021 16:02:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JfvGRAcuk0SQq9vdC+Y2/akSwbvPkYcVfrREzlpn0s3cgpNWq2S+ggLkkpgSfQZV+PhsvN1znakSiwvOIaz2rWC0E6BmAu4ClBnv/0+qlxONd4OswkemDkKH/mrTwus5/8Xw9Gn4tn2cfkX2WpbZBTgftPivQTw0H/DYjbSzBpNTpmL3vVy66+MpjY10q2vvdVCn0BE9QSqOuMo5SIq7OBh3H/pf180X0tOHdgK29bfOmv1UiDaSmETo85gHY/kJsVB1ZCFzREh8Yu/i1lJ09z5m/6a0ADiFbMGiIw+zQRxSma0zPBkVjqMVehoqDhx8QJYgkx43UZnmKLX69jnEIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mpJwZvj5NxEeljLKMOG+TW/7/+VZZ66b0eo7ScnSfv4=;
 b=LwNBEl3C3eXe8bRdCHvJA2W6v64rTc7DebFrGoAqmXbIxxOBlusO4ikUM1rxlXYYwrxPXWicxEdLdFwqt9DCYXqfuzOulyvUokDDWofLfOTeCTVyeDh4C+n5Fb54uIrYw5RWO5U1Wu8kn/VZMdZpFVH5SfRD5V2pfDMBtq8t9Qrift5krolDYfJ/gMqkkS52IS00D2bx2HkTWCg9j28ztNI7vAASH0YNIVpkAjIS7Rzv6HbFCg88xA93/7OD1iWn9fBpzLMmrPRwsSsBSjBgJV+tR0BGZ5woyptWCb9YhdoSPQ1R+s8HMwNw27JfQp/xrddqzBojKjCX0WYVgyYJKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mpJwZvj5NxEeljLKMOG+TW/7/+VZZ66b0eo7ScnSfv4=;
 b=Wu4ij4U2roY/lcoZv6UwzPkHunGWGiu/SUsu3L5yD3R16FMKvGVYk7f6JlbqNWSI7dqOBo5RGb/2gcaN4SEvJqicEK3QyXQ8h+1/8aEVNsK2Omkro70z9TH5apeaiyDlROGNTICzk0Yd6YkVsE99tvfA0mLRx4oivpty0o+RvII=
Received: from MN2PR11MB4224.namprd11.prod.outlook.com (2603:10b6:208:18f::10)
 by BL0PR11MB2882.namprd11.prod.outlook.com (2603:10b6:208:7f::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.14; Tue, 2 Nov
 2021 23:02:57 +0000
Received: from MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc]) by MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc%2]) with mapi id 15.20.4649.015; Tue, 2 Nov 2021
 23:02:57 +0000
From: "Brelinski, Tony" <tony.brelinski@intel.com>
To: "Sornek, Karen" <karen.sornek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1] igbvf: Refactor trace
Thread-Index: AQHXcvnbiN7Ftxy8GkanU/r9se8aJKvxlYaQ
Date: Tue, 2 Nov 2021 23:02:57 +0000
Message-ID: <MN2PR11MB422482939EDB463B72D9A62D828B9@MN2PR11MB4224.namprd11.prod.outlook.com>
References: <20210707064025.55096-1-karen.sornek@intel.com>
In-Reply-To: <20210707064025.55096-1-karen.sornek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.200.16
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: de3729dd-d224-4ae8-f2d1-08d99e54e922
x-ms-traffictypediagnostic: BL0PR11MB2882:
x-microsoft-antispam-prvs: <BL0PR11MB2882BE22849824C6E421BEEF828B9@BL0PR11MB2882.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1284;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FGs8veHoGW0j6038Tvr1+5co3bqDPg2lT1ehhLtPtpZoFVNi3k1J1voRGHHXOfXTF4DUZ05MtEMIWhioynrYRia3ApZvbUHf6vYtl6FRkCiw7O5M682zUX91Wmb0ATjgYmjj5WgrGsINIYKL9GFTBPkjI354tcg0N9KOL6XfFx8bTWiGBM5ydFWOdtABcEKrJj353fiT5HBk0XYj/6Y9zJSTinikaglrV0pEABuhkNqWNDyRNNqdsYNYIPaN9T84yL8WJYSev4p8p1dklgtUK+qQZP7Atsxk5n1PdSrCuv0QDdmXwpAEz/4gQ4wTZjoBaXLA54e1+WnIwJ3wlTFV3yC/0+Ejgkn2mxIbYJZkWoaUwL5tDSuvnLr6+K15Y/nCwx/9UaFeW5LnrMjVLm5pgdrxFEnQwAi9U4k8bTR7xUJYZaIE5sz+OSy996Uyv892Sd3Yk8ISyWw91cpAdBF1AU8dEywvDNtpnAfh2bWJKLIqhWctw8kvtQmynOJRjJexKpAVQrDeAeT3BRLKx8S5lYoHXFNEHpYwqdK7AonFuZBlB2DSF9NJ5mwcTzHaBImgPpaBtJmsICIj8dhvEDsqvcTZ1d65Cquc7ivKdH+/OW+mI2dD/n+F1toifNUv04JJ0+FkxeXcabDHPdpNfjEAYi6g7HLy5yF+zJDEM2DRIDVsaBONwxgoDpv6EhL43+2WpbuErKf0Ls9VfeHbXnG1WQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4224.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(8936002)(5660300002)(64756008)(55016002)(66446008)(66556008)(66946007)(66476007)(76116006)(122000001)(26005)(38070700005)(8676002)(2906002)(38100700002)(186003)(52536014)(86362001)(316002)(83380400001)(508600001)(53546011)(82960400001)(71200400001)(9686003)(33656002)(6506007)(7696005)(110136005)(4744005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tWJWuBjsDrovSN9egA7MOhRPgklYFvHy8W2o5sTBiIIxdre0zNCDsPkQGs8L?=
 =?us-ascii?Q?gASYN/ByHFhhVVdKN6PfY414XFwWkCbjkN3D9fEnbeGzU2HLawt519YBFrmh?=
 =?us-ascii?Q?ak7gRDAJElZr6pwXHFl2Uw6sabHoAis7Q1+66YHzbgFy+S4ZuhZzHi2ahCQ4?=
 =?us-ascii?Q?Do7QEvxBCYMVjooY3evXZqKaUMbpKxlhBIYvpLahAs9TF6lNvkuzK3qVkXTo?=
 =?us-ascii?Q?Dmsk0YtcUH5CsBjnUWIZEO5iRt5Ytm6dgp4fMJd1hdzpKTvdyqg9aZYLmG5m?=
 =?us-ascii?Q?rlQN9HE2ebSFitYTIR6/qAPPMqG/Su/aDWhiPJnlAaSXqwLYiQdFykGZeFoJ?=
 =?us-ascii?Q?t9Azo7fiI8t9mBIf+t8iAs3rpGPuOpo8Na8JOcUgX8KEX68SiEbrDzjqvYMI?=
 =?us-ascii?Q?W4OvpzcGwSFoMtVbpf5XQqjoKuKU8h3teF+XIHKx9QuVmVHx87WhbdakqNA9?=
 =?us-ascii?Q?BX5pFyXyO1qkEfWW9EQflsCfNdrf+VqZ8D6AUggIC6H1Kd9ehe8XPAErCBlI?=
 =?us-ascii?Q?yBv5cy799Z4Zic87PgDzjZzsqhDNIy+/LR6jZA9qyNJCz6Vy1NeCezKkeiUr?=
 =?us-ascii?Q?JWcXZfvTgB1QLL+mfiXfe5loqSQsStcD8zhKuB+lUJvjH84Amm3z9FEqcaeN?=
 =?us-ascii?Q?6UQvdNkOht3ATAL8PYEgq0FVYBMY/BOidqy3sSACDYjWfpuxq2RKiOxU3Z+e?=
 =?us-ascii?Q?edZ0kgwBJ9gfeGY2Efu9aQEMkQm9FL0BUOCNcDpZ/2TqvhF9TMwOVOb3IYZo?=
 =?us-ascii?Q?4CsLBOzQ1vNThDi+Iz5dckYyKORPaOquQ3avel+EHQWd5wbdzGQctpv84Oxq?=
 =?us-ascii?Q?dcq97vB5YuGl4FJUXWWRxGy7IU8z6t9HasSxQgEjn/Bh4BAzlcC7qz8h9KhD?=
 =?us-ascii?Q?W9nxLOrwhw872K1qEjQzUAkSU4HKHLtpFFI9xCigmonKSqWDByr8NMbSnm3k?=
 =?us-ascii?Q?6mZ4nQkviCT0anfDxj/zWK9cc0S6JPxveNb0qLxBKP2AY8fDonHGqlXwHPwi?=
 =?us-ascii?Q?0Jw+RXa9/vBkZPotECPpV5rRH+icMyHK2Nd+FEPE8U/GtZIRoEOylrlor57L?=
 =?us-ascii?Q?npxU09d9/DAhPPrn2kr3/jMKPq4eefVAMPnnfRfsw/IFRr9AoS+rKVFDKstK?=
 =?us-ascii?Q?HAZcziyuGocycGSD1fQnbmYYcQQkAc9yt9BOb4kUl2HsHERtMGgp63t8i4DH?=
 =?us-ascii?Q?tKWk9rgPQLkDuB/hHeKnrtS8hjEvcZ40Iy2DG4RuwcOloPxcnJpH2Nw3F4Oo?=
 =?us-ascii?Q?Moaq1oW3tg2rtRD525bzHEOG+Qp5+3iPbZd6wmFhLBtAFNbho7bGRopAwLBJ?=
 =?us-ascii?Q?LkFRAeXaJZf5n87WKNKbsDStMm1Bs9sLtFUyVlYU8mHiusD4MvEKgvcylLD+?=
 =?us-ascii?Q?JSi0tugAnvasjZmD4FQIhOb6UcJTxeH35N/cGF/XGTwGtQQL3J8h1Ce7FOYA?=
 =?us-ascii?Q?P0HT0/7AJNkRabfttxLR1GnVI+/LkZf5+X7yCnVKtD3gztLBdY7k3R9cAPjb?=
 =?us-ascii?Q?Hw7HO4C79SiDBwwNXvgyKEYHqTzXqL+iUFR4LJnJhgmQ5KrYL7UNOnYQyX2e?=
 =?us-ascii?Q?/PQdRv2motoPjDj3OLYZIbN33d2Zh+Y65UsLo2xi1fTF/6X9dt6xTEMFC8WH?=
 =?us-ascii?Q?8FxLDiGpUBEKtkD+VP8xiVfpT2NdHPnllsdH/+m7CmUmWRstA2lY5Vg/vBEV?=
 =?us-ascii?Q?FU11Qw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4224.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: de3729dd-d224-4ae8-f2d1-08d99e54e922
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Nov 2021 23:02:57.4669 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pcdkSDf5G9Ou3nP/qknM7qElUDg4UXSGs6Cy0RErifR0QoXsQjkhk/Ndk6B2jojTRe/0Qyee0lMBYR2StUL4E1XdDyn0PfC3tLNMG0TuH4M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB2882
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] igbvf: Refactor trace
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
> Sornek, Karen
> Sent: Tuesday, July 6, 2021 11:40 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Sornek, Karen <karen.sornek@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v1] igbvf: Refactor trace
> 
> Refactoring "PF still resetting" message, because previous version looked like
> a bug - it informed about changes that worked as designed but might
> confuse users. Changes requested to make message more user-friendly.
> 
> Signed-off-by: Karen Sornek <karen.sornek@intel.com>
> ---
>  drivers/net/ethernet/intel/igbvf/netdev.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Tested-by: Tony Brelinski <tony.brelinski@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
