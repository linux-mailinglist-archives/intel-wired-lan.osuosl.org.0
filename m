Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 97F74438EC7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Oct 2021 07:27:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EB24660835;
	Mon, 25 Oct 2021 05:27:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mmXwn3ssdG7O; Mon, 25 Oct 2021 05:27:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id ED05D606FF;
	Mon, 25 Oct 2021 05:27:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 66BE51BF3FB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Oct 2021 05:27:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 533B84013A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Oct 2021 05:27:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7r9w4DECjc6H for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Oct 2021 05:27:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6D62E400D4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Oct 2021 05:27:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10147"; a="209667288"
X-IronPort-AV: E=Sophos;i="5.87,179,1631602800"; d="scan'208";a="209667288"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2021 22:27:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,179,1631602800"; d="scan'208";a="634514598"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 24 Oct 2021 22:27:31 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Sun, 24 Oct 2021 22:27:31 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Sun, 24 Oct 2021 22:27:31 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.107)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Sun, 24 Oct 2021 22:27:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BxGxj4AB4MaTXwnyMBPInNfmBcF6TU1WxolMrhczUSdy0sYnvDlLMTvBQKohxXRd4a5gzRE+Uo4iMlrtM2KS/+btzX4L1bPk7q1w7OfbLngMW9smTXgLFuHu1CoZxAzhRUT32wQQoPRwSQDvWsCHImq3l4ce7H+yES4W1yWrb8OcYSe8w45LS+hZ1oL2Hiu4Mb3LLzeUjJ7c8PqwQEfZva2cCpwTEA6FGq3q2EdpVGT570TfLFeW2OWqh6m5L8v7C9RaNH2epRPZmWai3e8nvbVOTUK2jUa9fQ1d8OcPdQrq7PtxFdknaPtFR1WpGmPIzOwKE6qFGF+lgb9ab/T6LA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yfoDIxgtKS6U1/FuAHnyN0aTx6giWJ2SgJ0u0w4RDNI=;
 b=Oba6wpVHiqbeL1an0eufoUO25z447RlV3qjZPGd+jKO13Xp8ExzZKiG5KgmvYrdllBJFUzwP0i/r0/L7wjloeGOsl5uNEF/qmpW6BlBJ4RBFpATK+ZxBCnAFnHK8g9HcrQka3LLyp/yHFvOWS2ATEPrTtuTPg9v/UuSIH62z/lLaYtojMNDHONH0jOQATDrgbf0W8h9+xmd9UgvWhpHeUaaPsz8OiJ20jBb1UhOS5wJKihApCmsbu1m8Qoxpau+Dzhdf5r34CqM26+Hhm4so/BLziXVJ6F+bQDJx3TxNJvZXPCLOoDJ0uA2eCZlr4ai0Md6riiM5JkQqWnKS1IXOZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yfoDIxgtKS6U1/FuAHnyN0aTx6giWJ2SgJ0u0w4RDNI=;
 b=gv5ColZo3LXtcXh4nf13w0/2aD5Y6019I1a5auJuKM13YLtO1z0NAZ7MvxTkQ1zmbmqxD2vqftDE1UOOvXQN7HzBk8i3YWpOeA4mxdvX9N01SP6rZ1jJQ0hZBfzILL+Ws0IX5MWGp0RZtSxK6FLN0v4dekPOwETVQh6xoPqX8+A=
Received: from CO1PR11MB5028.namprd11.prod.outlook.com (2603:10b6:303:9a::12)
 by MWHPR11MB1645.namprd11.prod.outlook.com (2603:10b6:301:b::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.18; Mon, 25 Oct
 2021 05:27:29 +0000
Received: from CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::e892:b78f:aaf9:b34b]) by CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::e892:b78f:aaf9:b34b%3]) with mapi id 15.20.4628.020; Mon, 25 Oct 2021
 05:27:29 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: "Creeley, Brett" <brett.creeley@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2] ice: Add support to print error on
 PHY FW load failure
Thread-Index: AQHXwEyxc7lT+QmO3UGwR368xuRtmKvjNYhw
Date: Mon, 25 Oct 2021 05:27:29 +0000
Message-ID: <CO1PR11MB5028D0BCD1AFBD9732ED3C34A0839@CO1PR11MB5028.namprd11.prod.outlook.com>
References: <20211013160219.322051-1-brett.creeley@intel.com>
In-Reply-To: <20211013160219.322051-1-brett.creeley@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5f2336d7-903c-4f92-1605-08d997782343
x-ms-traffictypediagnostic: MWHPR11MB1645:
x-microsoft-antispam-prvs: <MWHPR11MB16459456DBDB2F68739E4EDCA0839@MWHPR11MB1645.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fHaPED1z8XQFzx1DvDpv+wPQG/gLti/bvXdMF1zshMTOJco9eNanMH/Y1HbMMZlzcAPgpJYVheRWTf1aPsd9GqZMtEJYWppGWEhbSPwwel0ndeV1ZJUQYRW94EeoI0nxtsOddu9rnZxRPnLBge9KZPEKspPplqe1FDxQznfi7c5zKWkamojZxzdqEVUTjmisHwTPs2msD1rWomw4hwS7MGmm2NE9pS7nJOlEFSvFYOoNklO94bSkt+oUchZZrkTAw9s2r9HdM3cWJNL4QyPO6n08JrAQ63lOeXM5cTFi6St/SaCMlAyV2FcaLskK7b4TIvkTyo9HIufwxwRcxv/XzUQaNHr9GkBkf2zrMB/gXiIqnXbX7Q2t54Hvsw6rwGbW+39gzotjZaf3mfUiG0rNPV0sjWlVJrIchPs/7DD922zk9brNT5NDKjDw/Bk0a67QqhVNX3ALcZs414LAAAlhatQRqUkGcpw9WvPy7EAN6viHtmrVqNDAXhlKEriBwPRj7yvK6jmTmMoSq//jlBmVzTA18yqJoW54FBJguL82ViWnGYfhXpl4UfkKzV77tva0EVb2xePulxTlCTUNN1+HkLBxL+a/d4ga/a1yBzsj+x3sS1uGNRYwMt1JitAU/h4JcApMPCDoSvrhyLgsJcEZT052myG5S7cCxULDQezOCFPannB2GFZ85ammhfijqDwjpvyEbW7ZeOWT47u1kOa4Ng==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5028.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(66446008)(8936002)(66556008)(26005)(64756008)(66946007)(82960400001)(86362001)(76116006)(66476007)(53546011)(6506007)(55016002)(122000001)(8676002)(5660300002)(9686003)(38100700002)(7696005)(52536014)(186003)(316002)(83380400001)(508600001)(2906002)(38070700005)(33656002)(71200400001)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tABM6+MaTjOK0yAaM3tDaZVE4x5z7y5L7aw6C8xCw/iwcTXX/azBAUaRU/hx?=
 =?us-ascii?Q?AAetl9JApZHz8d84qNXDHXobNdgkfBRmZ+mOPnEeTdRYKNlVfHzUae081ezq?=
 =?us-ascii?Q?dI0xbIhzitwqiPi+vmH2Kr/lGm4zpF6f/NvaZCpHe1aAjjq9csFuFPRF6E4P?=
 =?us-ascii?Q?hiSw88+ImnH6z6J8GHoNTL7c/epDxPWNGGeugqJPCiHIGFWMlNTcNZ/J9jnp?=
 =?us-ascii?Q?CeoIU2KYTiEY5Cyl/mz1NX8SajYlpoVUmYZe8DgT7r75GvXkkktWr1hh5F4a?=
 =?us-ascii?Q?mN79g3i+8kzPJpx14pvFLfhldFayQdWgQCg0JSNwABL4Y9DKxk/Ca6zDQw5V?=
 =?us-ascii?Q?rhP6srNAvaT4RyJ1dc+tW5JPOZamHpBMOMqHn9oK80XNv5eMYPl/1x1wmfm3?=
 =?us-ascii?Q?KoczBLQMxNcyf8LTWWQkRya8l0QEnmelfiMlnslJ05+9Y2P1Ub1oJmmZqri5?=
 =?us-ascii?Q?wpRqpo5RBoWOm4/g12lEAMxf8zLbNOceiUOd7xrCOpRWUpUpcYlKeKnM/pZA?=
 =?us-ascii?Q?xEqbbgQNQ2ATZKlQLU2jj/L4XHNKjDpyyNG9ktGbmTJAuSXl4vSoz2CZkgdc?=
 =?us-ascii?Q?WYKwMO5xCmI+xtVI6GxbZN6xx6Oh+mTF8aBmjUo78nvoIxgdBrPUJM+RRZhO?=
 =?us-ascii?Q?UlEANgn3WTKsV2DFZ5Ky2IFwNyeSRCvxvRm4z7+z08vf3WfFCIaS3fRSKjq6?=
 =?us-ascii?Q?D1/nBV1vFMidGQ12Et98ILBmF7ls0B4/8fSL1XoGAkC/ng/EWTpi+jTXm/xz?=
 =?us-ascii?Q?2p5THGsTEbWshgWVfGq2mySq9wYg8i7wCVebs2L1xmozlU2JWbJgoW7GNiV1?=
 =?us-ascii?Q?sX2f77t0ouonj4Dapw7v3fl6yDzrSgaBQY6MAiLaIosEljanuY/AqT7Cc8jS?=
 =?us-ascii?Q?14JEInMwrovfwUgACBCthVbwH7cQ2mGpNkfgkR3KgzwKR1OE8im6j6aMc//T?=
 =?us-ascii?Q?Fj1A2I2ZEdZZcrg1pV/zS5rGdoIIZP1TSqTk4srWNW4+CM/YPHGE47+44p42?=
 =?us-ascii?Q?qB4AUqdVeq24q0mfXHBe2dcmN0dubF8TS4vAMJchQpTTqeyrfmudSv/a072k?=
 =?us-ascii?Q?V+i0BhSZJPYcg+XL1KXCyUupuPSjpFPLKpZ7PuA5gBM36QpH8Vm39ecqf+U6?=
 =?us-ascii?Q?LdnzEp7HTRvg8T05x3lzX1BTijv80jku7hh2gjBYtdLe12X41FKjsnUDaGdx?=
 =?us-ascii?Q?tRhGGVc9ABFwUqzNQUkFh/mRbISTpaaXo6EC6d7S5zA9WIKAEQ6KcCVT8L+p?=
 =?us-ascii?Q?gpRxoBbgmTpH0vI6x5K7HfwozLe5ansCFZXAi9uDky+Z4Za6NwKdZlBFhQv4?=
 =?us-ascii?Q?OY4eqAz1Ao68Bm9vd9w89Vl6XT4rwGoBypMQsFlUCwNj2vkpUOY1Z3557Fp3?=
 =?us-ascii?Q?xywODUxaqjTthUTgBCObjMPhgWBF7hPQTnKJUviBHTXRJCSBikxl+I4MFWHq?=
 =?us-ascii?Q?IjICN9WqaFteqyM18yne8pmjXNuyMW7u5gGr64CGcm8QRKXIDzxFYyJ1R79X?=
 =?us-ascii?Q?rzm+8gjitc9NEvN4MAaYL1yJpwz45UN21Ygfr8sAXin+c+3s7e5RhLZ4M+37?=
 =?us-ascii?Q?nYbkIV9u3sGdma+zJvcRLYcqlpneHLky/CClg77mt5jF2WGLTxHhJFDSislJ?=
 =?us-ascii?Q?o0tV9r1LWoir5EQsEdpQ4iJEy+anZDV+rFECQwnwd+hR4fTFHr8XxtvucfgG?=
 =?us-ascii?Q?0eihBA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5028.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f2336d7-903c-4f92-1605-08d997782343
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Oct 2021 05:27:29.1611 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ufO+Xv+x+kyrp3ajrtUiKNctsmbzpR4/T45r1lkQuushT9RL653kJaMwB89sm8kA9WIyMEGLCZ/eNnyByhik4hkIwLf8dCS7IDhzAW//zBc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1645
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v2] ice: Add support to print error on
 PHY FW load failure
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Brett Creeley
> Sent: Wednesday, October 13, 2021 9:02 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v2] ice: Add support to print error on PHY FW load failure
>
> Some devices have support for loading the PHY FW and in some cases this can fail. When this fails, the FW will set the corresponding bit in the link info structure. Also, the FW will send a link event if the correct link event mask bit is set. Add support > for printing an error message when the PHY FW load fails during any link configuration flow and the link event flow.
>
> Since ice_check_module_power() is already doing something very similar add a new function ice_check_link_cfg_err() so any failures reported in the link info's link_cfg_err member can be printed in this one function.
>
> Also, add the new ICE_FLAG_PHY_FW_LOAD_FAILED bit to the PF's flags so we don't constantly print this error message during link polling if the value never changed.
>
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> ---
> v2: Use correct bit for checking link_cfg_err
>
> drivers/net/ethernet/intel/ice/ice.h          |  1 +
> .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  2 +
>  drivers/net/ethernet/intel/ice/ice_main.c     | 49 +++++++++++++++++--
>  3 files changed, 47 insertions(+), 5 deletions(-)
>
Tested-by: Sunitha Mekala <sunithax.d.mekala@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
