Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C25B363B68C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Nov 2022 01:23:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1F2A640AC9;
	Tue, 29 Nov 2022 00:23:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1F2A640AC9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669681410;
	bh=+wRYzo+G+JtXpO5s/G+fDhCSnXSaKVJUGDLLMsSGjtY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZYv075ExZKLZ1fMQCrJ7NHvWUQGRFs1UBwom3egYC7/Ji/wXIhvx3wo5pp+DISrkw
	 SF8ByOWDBKzaB/3EdekwYowwfXGr0bMKPThvCV3tCs3alXsNSp3w2cPbAvBVB+kj2/
	 b+jW0xXkuaGqW9TUn16D8hKK9wri4B7ZcABXzmr8n5mVPBSd7P5eqPPlayBYMz4H4Z
	 /VpDfpe0mXSbIiz/mNdDG6ylniVcCkKera1mo6Sum+kCFABHI5bNVy+m+KHvdA/tOS
	 c9Ez71APVhGEvcDwucHYM48pxTPllZJfrkBGmaqfT1ox6vTlEQly2yoLi4Lb0SUScZ
	 EVNmLgiM11HUA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aztrbrLdnxrL; Tue, 29 Nov 2022 00:23:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F01C040147;
	Tue, 29 Nov 2022 00:23:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F01C040147
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8CF7F1BF34B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 00:23:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 722BB4028B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 00:23:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 722BB4028B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fVp2vv5iaaB3 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Nov 2022 00:23:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 37A3040240
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 37A3040240
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 00:23:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="312606379"
X-IronPort-AV: E=Sophos;i="5.96,201,1665471600"; d="scan'208";a="312606379"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 16:23:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="712168094"
X-IronPort-AV: E=Sophos;i="5.96,201,1665471600"; d="scan'208";a="712168094"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga004.fm.intel.com with ESMTP; 28 Nov 2022 16:23:21 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 28 Nov 2022 16:23:21 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 28 Nov 2022 16:23:21 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 28 Nov 2022 16:23:21 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 28 Nov 2022 16:23:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SZ/wHFbmPn/vf4sXMK9IDVGJNSWwEclMpyrHw6GJFXNQVU00Fsyl9SrJMc/QcIqzd3w7+03bHemo11k0e7ZWXcZS8Ix2fAHP7QLPxZKHSr/mHI3ZrVgH1EvXlnMir/2Fefk6QwfYhv2RNCc3fuslK5CXLGKFwhWn38KGW9gXNDcdP53WnlWuNMkWHN3x0q09lEr+J+PZbQMNl8evGFvveDfG60LL5C3J5sPCecyWjuJQL+S4BYacLwUW3ucwETluROpW75BigTC8N1tEyIZ3908UUGE7UxY/h7dSGcZYhHh1lxiWN42yFWIm0f+kCeAr9nHNFvHkZeGED2cYaMIbNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=adgph9FGjB5AAXiW/gMYXQh1ad20wFfn0cd9JqvvYkY=;
 b=XoEHDWUcuZRVjh+U/BLHpA0YYpmb3QVY612JaXf+Jy4WfiuT4v7lRFSgze+soC0Y7h17wPGVku7TH4JmiHwkv1IieUpSOTFYdJLBAs9CmjgU46+/BXjjhbuV2r1+3ZtvXgVTzGsXndSyyplCZhphZgzE14q2jOB0dPelUr4Tg/a79XD+7mcfdlt24fGMk2Ar3K1vFqwUqP7QlP7Qm7tfeGEL13mFAYJPp3sF4p8CGXwwDB/DkzP5+M0BQ3vEeUKWx1ji2cIPRhEMsvvwyY4LX8/vXO8+XK8/jESLCc0qU0Hcd8c7YsV8IEM3E0+Ew2K742JLx/qiichN1EJBLaaFxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SJ1PR11MB6201.namprd11.prod.outlook.com (2603:10b6:a03:45c::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Tue, 29 Nov
 2022 00:23:17 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::3862:3b51:be36:e6f3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::3862:3b51:be36:e6f3%6]) with mapi id 15.20.5857.023; Tue, 29 Nov 2022
 00:23:16 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Vincent Mailhol <mailhol.vincent@wanadoo.fr>, Jiri Pirko
 <jiri@nvidia.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Jakub
 Kicinski" <kuba@kernel.org>
Thread-Topic: [PATCH net-next v5 2/4] net: devlink: remove
 devlink_info_driver_name_put()
Thread-Index: AQHZA4aDtuA/HeJz8UWj3YH70WnD9q5VCi+g
Date: Tue, 29 Nov 2022 00:23:16 +0000
Message-ID: <CO1PR11MB5089EEF30335EC3CEDA8FCB7D6129@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20221129000550.3833570-1-mailhol.vincent@wanadoo.fr>
 <20221129000550.3833570-3-mailhol.vincent@wanadoo.fr>
In-Reply-To: <20221129000550.3833570-3-mailhol.vincent@wanadoo.fr>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5089:EE_|SJ1PR11MB6201:EE_
x-ms-office365-filtering-correlation-id: b9b2067e-431e-4bfe-7417-08dad19fe921
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TN7h3/seavlLdJwIt+k1G9yt2o7n9sTCOSx6rTviKNfIMULtx6UPKd17Ah5R7PXYAO+do0MPYjp6BKnp66ady0NrVotVvV7FwKK1mh6l38bnwmVU+wnmRQOl5M/ynzoYqANaZdvJqxe4MRBgNRRj63B8C0wTT/JTr1qaOIofa8iD13irkXKNNEqabaVWXImeOR+iESBFLH9FElBmVDUSBRTnpnUSIcW2D/wfU3HvLeie0N17ciz9YNsIbqCwaG/dxt+vitUmKhPEr9cXow7xyuLMah6HdU8b8LcT7fQlpHymUEZanLkbeQ7O//PbfgoveSxiOgAEIIg2K5PEgtx55Mii44GKCn4MTWN5XuqSHnlms8adv2/iaEWSzEBqui5FVfKhyNQU1+NZgRMLjNNhvGxgebL8q9MhawUPq4Qlbngt872DXmLEiBaR9JSCPTgTXAdFo22DmoKrfCqB6KaobbIvu7q8AO7ePab56kSCmrLpHcCe8ruEJrBDe45d2gVVVK0trW9yTz3+1PvoSq513KGQTVEJlUoichsvKT+ytrIZ5dhjPhtXmeEfrfkXCaUvBPREqJbhoHbXC7B5qtjjrXWaIhdSeEF9dvKAfC4BGIoqN4PW/IW6XqsAb9emLaJ8uLVF6iR4r4qKQqbUqEFzL+8wvJMwCveHqUXn0dkn3k0CxmLvG+yuCyRDrgxSNyPe
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(376002)(396003)(39860400002)(346002)(136003)(451199015)(110136005)(8936002)(52536014)(71200400001)(33656002)(5660300002)(76116006)(186003)(54906003)(66556008)(8676002)(64756008)(66946007)(41300700001)(4326008)(66476007)(316002)(38100700002)(83380400001)(55016003)(38070700005)(122000001)(82960400001)(26005)(9686003)(86362001)(478600001)(66446008)(7696005)(6506007)(53546011)(7406005)(7416002)(2906002)(7366002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?sQlJVbSoTGdLU0MZhUX9/x9IXHzc4q1ToIPRADf8/eiFPkF7hBS2VZZ0vqVH?=
 =?us-ascii?Q?SCbD25H1WfV+Gc5A/yKb7wkVPLBFpd2PCzQ3UImX57Nw9PuWUYmNur9qTEV1?=
 =?us-ascii?Q?54ruSOrvl/WMEVIgyQni/7yN4Dpxalf7NJn4PtH8Au7emy0ppMJ5WBiaKKpW?=
 =?us-ascii?Q?assas1S0qKIDxSD2YqKm/SqYtXG+2q4qiVUPRzSv9blm/QXbik+lW9W8A9ZO?=
 =?us-ascii?Q?4ysh0Oz7YHl0hOP94hDNOxgNfeAa9rjOnlo/87Xo7+LIr8si7xq022i08cJ7?=
 =?us-ascii?Q?crZZEVCzChkZ9uUOb/Qw0GAsjFqbVASrBbkHhWk/NFyzxuyb3a3v7NnjUyat?=
 =?us-ascii?Q?42Tn4nDM0Q+2ei6L69R9ZzFONaw2ByIJC0HIa/3AKL62XblKrriaHAfjTZwV?=
 =?us-ascii?Q?GRdK0LC0EVPq/QBWCmc4bUZeBL82YNEpTN8OPT2nhyd+RlYlHZMpOSnIBfFN?=
 =?us-ascii?Q?sxFLW3wIrCzzI32G/1paKAq9mwlvqsTDDdJCVi/444zo5gbDKORneKd5niOI?=
 =?us-ascii?Q?8g5iHLFtHZU6TrlkAYItdKZ0qWIndif3JPiFc1AZBPSILusSCX10upB7oiP5?=
 =?us-ascii?Q?iak8rDqW9V67e2FRyhE3kQ9MkYDonOdxiNs8oJtYkJbs+IjC1uhVOicXfZDK?=
 =?us-ascii?Q?MQ7UsemCXOXdshckYoCNTp9DuR3E9E6uKDH8j0r/rSa3UQ6NvPQbqrvz1T8B?=
 =?us-ascii?Q?VK8V711aKPAbCEAc7pNm5lCnWfACa0x6Vx/y+e0Dwj0eBN1LWNvz0a1LgDBg?=
 =?us-ascii?Q?fUqJCTQlkuu17Vzm1IbeK//+topsFh2TmwNviLJ5dONQT/SUtgMdskElEj/J?=
 =?us-ascii?Q?2EKkDMNU+G02DeJ1/OXw3tXz4q/Yc26HUXmgnJzenGvnhkM5OuUOGNDFgFGQ?=
 =?us-ascii?Q?K520ajTppfbvu9DIrbkNGBfYqsidFu9nUy9zEQeIj+4gWyEYGXjZ9VI200eg?=
 =?us-ascii?Q?PF+HgsFgpbRlBUVsAlz3LAmjy1BAJDBNfeaVXzdRSzi9XQVfZUcaTzCcic9z?=
 =?us-ascii?Q?ObSPzhA0qNasEw4u8/nsF98ULBtD+sxAW5zq10QRGx7qlQtyUva1nFLAO0Kp?=
 =?us-ascii?Q?8rJZgroWjp1SVi8WSVNDlHCpekwcz8q1m+bgdn5Dz9PycuVQkcC6UE1wK43u?=
 =?us-ascii?Q?dfHXUxhNQlLx+22ZjNx9g4myhre5l9GNucrSu7ObDhLrXMkb/VjIIq6QdD4a?=
 =?us-ascii?Q?EFaPX7FtbXRZcMLNUTveixKdUlZahbnT31H/Lgrbs0H5Io+zpYTMzJYlmaaC?=
 =?us-ascii?Q?tvcdm9fRlS/9Am/WkLSKgwdYzvB5xnXtheLFeu7I2E/1WailadSFEWlXMSk8?=
 =?us-ascii?Q?WZCnWyRz5mwVpfFCi8jEQ7EbqjjV/b+GDh1qk43VEGJfyilZfpADmnR/eVI7?=
 =?us-ascii?Q?rhntXZSTK0qIVRGk0JhWTNCebAE/qSK3XLRrJyfaNU70LuWzTmYwM8gBMBcd?=
 =?us-ascii?Q?kFjiia8wGFIfRhAaLay2314pKw0p3xa1gVGK0UeNjZrCzKOkkMs2II332+pw?=
 =?us-ascii?Q?xzXB2AbFFTBAf9UCn/Bf8OF93lAVzDCMCkWH4EcMlZswUVn8R+zjWeLXRnpP?=
 =?us-ascii?Q?raMQhRMROUQdnWeGhVecGYYasCQmrelJ+LK+iaBI?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b9b2067e-431e-4bfe-7417-08dad19fe921
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Nov 2022 00:23:16.7479 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: us+OvaXSu42W24wfvyN/eb1wH2oaMU2d3s+uee8P/liUhGbspdnwhw801rfv7vJbZ7HofMHGExlAlREfyw/KUxzZhU22m0EDgZAMYxXcZuM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6201
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669681403; x=1701217403;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=adgph9FGjB5AAXiW/gMYXQh1ad20wFfn0cd9JqvvYkY=;
 b=mh/bvqyCov8RsaNtb4tC2cObeqS0e+qxQ4hwKcf1vJdA8O7aykoja41g
 3xHy5cFVDyV0Q7k3dM+SH6NquWvT+xYRlWs/iavfAnk+VgCaVXQoQUkP9
 EZo9NpGFiaLFxdaFxq1e41/I8EWr8KRrMk2zK3PvnQDVJAo86yAhc7xRh
 hN6ZtIqgJXBdOWau+JJN4NXIhmn/Dy3H88Rc/NkHWmr4TzIrFYclFPL/E
 xqhBdb6a3Vo95vDHL9VbimfDbHn8JeNcyUQIbQnnjw60QlCPOqmeAPe9+
 EmUqeZVFc6Jm/YyO7RUJwymOAa4tVrzU0nDPeP2RQ0Gj7obrVWH99mBTw
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mh/bvqyC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 2/4] net: devlink: remove
 devlink_info_driver_name_put()
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
Cc: Andrew Lunn <andrew@lunn.ch>, Shijith Thotton <sthotton@marvell.com>,
 Simon Horman <simon.horman@corigine.com>, Kurt Kanzenbach <kurt@linutronix.de>,
 Eric Dumazet <edumazet@google.com>, Jerin
 Jacob <jerinj@marvell.com>, Subbaraya
 Sundeep <sbhatta@marvell.com>, Ioana Ciornei <ioana.ciornei@nxp.com>,
 "drivers@pensando.io" <drivers@pensando.io>, Linu
 Cherian <lcherian@marvell.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Leon Romanovsky <leon@kernel.org>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>, Shalom
 Toledo <shalomt@mellanox.com>, Srujana Challa <schalla@marvell.com>,
 Minghao Chi <chi.minghao@zte.com.cn>, Hao Chen <chenhao288@hisilicon.com>,
 Guangbin
 Huang <huangguangbin2@huawei.com>, Shannon Nelson <snelson@pensando.io>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Vadim Fedorenko <vadfed@fb.com>, Paolo Abeni <pabeni@redhat.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>, Sunil Goutham <sgoutham@marvell.com>,
 Ariel Elior <aelior@marvell.com>, Ido
 Schimmel <idosch@nvidia.com>, Richard Cochran <richardcochran@gmail.com>,
 Arnaud Ebalard <arno@natisbad.org>, Jiri Pirko <jiri@mellanox.com>,
 Michael Chan <michael.chan@broadcom.com>, Petr Machata <petrm@nvidia.com>,
 Salil Mehta <salil.mehta@huawei.com>, Dimitris
 Michailidis <dmichail@fungible.com>, Manish Chopra <manishc@marvell.com>, Boris
 Brezillon <bbrezillon@kernel.org>,
 "oss-drivers@corigine.com" <oss-drivers@corigine.com>,
 Vadim Pasternak <vadimp@mellanox.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "David S . Miller" <davem@davemloft.net>, Taras Chornyi <tchornyi@marvell.com>,
 hariprasad <hkelam@marvell.com>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Vladimir Oltean <olteanv@gmail.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Geetha sowjanya <gakula@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Vincent Mailhol <vincent.mailhol@gmail.com> On Behalf Of Vincent
> Mailhol
> Sent: Monday, November 28, 2022 4:06 PM
> To: Jiri Pirko <jiri@nvidia.com>; netdev@vger.kernel.org; Jakub Kicinski
> <kuba@kernel.org>
> Cc: David S . Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Paolo Abeni <pabeni@redhat.com>; linux-
> kernel@vger.kernel.org; Boris Brezillon <bbrezillon@kernel.org>; Arnaud Ebalard
> <arno@natisbad.org>; Srujana Challa <schalla@marvell.com>; Kurt Kanzenbach
> <kurt@linutronix.de>; Andrew Lunn <andrew@lunn.ch>; Florian Fainelli
> <f.fainelli@gmail.com>; Vladimir Oltean <olteanv@gmail.com>; Michael Chan
> <michael.chan@broadcom.com>; Ioana Ciornei <ioana.ciornei@nxp.com>;
> Dimitris Michailidis <dmichail@fungible.com>; Yisen Zhuang
> <yisen.zhuang@huawei.com>; Salil Mehta <salil.mehta@huawei.com>;
> Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Sunil Goutham <sgoutham@marvell.com>; Linu
> Cherian <lcherian@marvell.com>; Geetha sowjanya <gakula@marvell.com>;
> Jerin Jacob <jerinj@marvell.com>; hariprasad <hkelam@marvell.com>;
> Subbaraya Sundeep <sbhatta@marvell.com>; Taras Chornyi
> <tchornyi@marvell.com>; Saeed Mahameed <saeedm@nvidia.com>; Leon
> Romanovsky <leon@kernel.org>; Ido Schimmel <idosch@nvidia.com>; Petr
> Machata <petrm@nvidia.com>; Simon Horman <simon.horman@corigine.com>;
> Shannon Nelson <snelson@pensando.io>; drivers@pensando.io; Ariel Elior
> <aelior@marvell.com>; Manish Chopra <manishc@marvell.com>; Jonathan
> Lemon <jonathan.lemon@gmail.com>; Vadim Fedorenko <vadfed@fb.com>;
> Richard Cochran <richardcochran@gmail.com>; Vadim Pasternak
> <vadimp@mellanox.com>; Shalom Toledo <shalomt@mellanox.com>; linux-
> crypto@vger.kernel.org; intel-wired-lan@lists.osuosl.org; linux-
> rdma@vger.kernel.org; oss-drivers@corigine.com; Jiri Pirko
> <jiri@mellanox.com>; Herbert Xu <herbert@gondor.apana.org.au>; Hao Chen
> <chenhao288@hisilicon.com>; Guangbin Huang
> <huangguangbin2@huawei.com>; Minghao Chi <chi.minghao@zte.com.cn>;
> Shijith Thotton <sthotton@marvell.com>; Vincent Mailhol
> <mailhol.vincent@wanadoo.fr>
> Subject: [PATCH net-next v5 2/4] net: devlink: remove
> devlink_info_driver_name_put()
> 
> Now that the core sets the driver name attribute, drivers are not
> supposed to call devlink_info_driver_name_put() anymore. Remove it.
> 

You could combine this patch with the previous one so that in the event of a cherry-pick its not possible to have this function while the core inserts the driver name automatically.

I think that also makes it very clear that there are no remaining in-tree drivers still calling the function.

I don't have a strong preference if we prefer it being separated.

Thanks,
Jake

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
