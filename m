Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A9CF57FDB0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Jul 2022 12:40:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E236B61041;
	Mon, 25 Jul 2022 10:40:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E236B61041
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658745643;
	bh=a6LS5RuiA/bZXE6GqwsAjYQlUgC8+UPLFlbI63lxFRw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7weGDBwRo4WlLUWLYxNpdjhZuNeEat4/pvmY75gd/QOM5gC8maae4ifsdQVLhHITe
	 h+eIy5DFjzLXf9kccw79CWhDC6t/X8JCqAGTjIlbkuRsCxsMv19lvDvP/4R3Eq7srU
	 0L5jtrnilnBKJIWGNdbFCWhBcpVE+32l13Upadsh1Mb/knWrquO/BxShcKNN+Iru/L
	 qgMj3wHzqYJRJ1NLAbNQIUVXAhYTv2C/iN3wbgXTpJG2N4u9EAH6swyE89N59CqCYD
	 LWPNJkLgL/xAXsv8knC5N6uocATGV6wotsCA/6BY8Sc0KkhzzS3AVrrWn3OhufhfbR
	 hNAUK1q+02EhA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 50P5sAmxtvPL; Mon, 25 Jul 2022 10:40:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AFED060B0B;
	Mon, 25 Jul 2022 10:40:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AFED060B0B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 95F251BF371
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jul 2022 10:40:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7BA61405E3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jul 2022 10:40:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7BA61405E3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oRNZVFv62Pfu for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Jul 2022 10:40:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7D79340510
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7D79340510
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jul 2022 10:40:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10418"; a="288426191"
X-IronPort-AV: E=Sophos;i="5.93,192,1654585200"; d="scan'208";a="288426191"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2022 03:40:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,192,1654585200"; d="scan'208";a="632313666"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga001.jf.intel.com with ESMTP; 25 Jul 2022 03:40:35 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 25 Jul 2022 03:40:35 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Mon, 25 Jul 2022 03:40:35 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Mon, 25 Jul 2022 03:40:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aal4MOf8xA3HPNaIk1Noo2cnapdaeWBNp/DsLDavB7sH9J7IS+ixOk9sgnkoK+0Pn9vZ7MpOHG8JuWA0uEl3FpoBM1hWZMX4/f6uRz5FPJNZC5BWVVTNEh5bh0whqnBjYXrrkXYhbfhRCzSW5nq/GhctreHEa0lxU5Js8jcv2G2WbXytE9r9MMDzNQp8LVn3hyxL4B8w5CwUr62Ai8toLXbROUx7S+ORBvl3FD10f7DPPFSWPe4ufzPFFERxFgCeU2k1KAib5Qactl4BOs2LoXoXykkJoxL8vGKID7NrAX9zzbgWeqtEYLOzG0roiWYTSVexmHg6LnyvRndQ234YuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LMe77X+OCvVAx8l2dEpwRPPBoqy0DTW8X6pEfZkUKH4=;
 b=ZCAZEMt59+dr0lHTj5WYL9/ITnrDxGCmPB0I1PmjDks489S2iS7m8j6qB0+vCSzZisst+GoqLnl8oLwuQnJn1AVkGT0Ep/X5yoQzssiLSmd5IBZn6myB4OannKkHHl5YOE9E30KnNCGyimImQyvsFZbIYp6GzjKtS6QD5oLmXA4WSdQEVV658yzt56WzaWkkZ3iWPrJdm8ew702G7gBnv3GFr7LkkrranhdfgVefXAb5aFpK4gOokP/0n8HHVOm35uaDOexA6GSazAuDbsd3hKxwFW/8dz7D2Mq8ZYqW/bt79XCMKe08QdcrqI8vEblJsu18uN3LGlItVeRuzMYO0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR11MB1624.namprd11.prod.outlook.com (2603:10b6:910:8::12)
 by DM6PR11MB3371.namprd11.prod.outlook.com (2603:10b6:5:e::22) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5458.23; Mon, 25 Jul 2022 10:40:33 +0000
Received: from CY4PR11MB1624.namprd11.prod.outlook.com
 ([fe80::6023:b392:54a4:a0a6]) by CY4PR11MB1624.namprd11.prod.outlook.com
 ([fe80::6023:b392:54a4:a0a6%12]) with mapi id 15.20.5458.024; Mon, 25 Jul
 2022 10:40:33 +0000
From: "Szlosek, Marek" <marek.szlosek@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v7] ice: Fix VSIs unable to share
 unicast MAC
Thread-Index: AQHYnNjYvTXDp56UQ0OMkbNy02rc3a2O7ArQ
Date: Mon, 25 Jul 2022 10:40:33 +0000
Message-ID: <CY4PR11MB16248BD2781F9E4A4CD02D4AE6959@CY4PR11MB1624.namprd11.prod.outlook.com>
References: <20220721080309.509723-1-jedrzej.jagielski@intel.com>
In-Reply-To: <20220721080309.509723-1-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 73e869bc-e01b-4433-10d3-08da6e2a1a3c
x-ms-traffictypediagnostic: DM6PR11MB3371:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: URT8xeLEL+yyx2A92XRrgPUOvtJ11yLf4/GXywj/tsITxzMf67CG9g7xhQluds/Z0DSqeZtnDHiniYL9FkLz/HtP8D776yRUbre/3BBikFvHIfbIBIG1jm+PDL0lNd73ckjHZQbtQzBpaeg7foY30BpnL+wDlkWYlBLDDShBCTIRa0lxJv0gPnTYNQzh0SSFwRImT2Ix6gqJK1hUjIOaRRm34bTNW/XLsuoG0wQtfOFaR+8Ap81UcUuM146gohST/y5Eg/zISG204UW57EN9HpR72JEYEmr0VWRs4/Sm0xy8Isq8Tt72RQhnpVePjF2+8lTvWYrIPta3qhf1qGxrtyRzrONC9H+zibYFH9azZx86ItweEk+3OV/INf0L7XLNlY4QPQ2sRQJXJICPARYWnfQftX8JKTJ7CQuHaqlu1kwOTD0ig3D8VzMlj44DPXMyw3J3jq12DVAqdVwDyuQUFEN/5gU4Mvur9SgZDah1iXJXY0jfsBaiR00F5lV5wLaOWgER/g5AgfO4B6diXqOBmcpulssJgcDyOR9wS65N5I14zgLupLtR+V6zeE5aB24qPsm8MUA1GPfGejaesAEt8dsCoipwUFYUIWwx1z11cvCrr6QUG0dbbi7NRe9fjYtWrYyO6ujkbyII4/ew2ylDGR6SbuXislIP5V8GEDyKBz0w+jM8ryXqH+qAIlt24EOYsyGf/Gw1bJ6hcJDEc9hX9h3u8CrTfEdczavK/q7qNJg6OxhLEik9GWbE+YtJoJIOdwsuih17hhdpqTDj176faMZrIbcKHjVyyodHGUIws9p8OHF7rbjk0Hyt4djq+4V2
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB1624.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(396003)(366004)(376002)(346002)(136003)(82960400001)(83380400001)(38070700005)(122000001)(38100700002)(66946007)(33656002)(76116006)(110136005)(54906003)(316002)(66556008)(66476007)(66446008)(8936002)(5660300002)(8676002)(64756008)(4326008)(9686003)(6506007)(26005)(7696005)(53546011)(107886003)(186003)(71200400001)(41300700001)(2906002)(86362001)(55016003)(478600001)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?x4NjOLiOFyeijbcTWtXbSvnEgC1SjSJ6PV8uhcp9U6c8lk/SntBupTxNEgzl?=
 =?us-ascii?Q?gd4vtN9816vhqtRSUiMFXvRcRrtu64EPXLyalYZ++NfFuQCqtIxNmW4Zz/NC?=
 =?us-ascii?Q?xnHshdjTac3axzTt1JP81k2j3XdkhGJTMICt/DeG/cESSeF6A9uQlJL6fIfU?=
 =?us-ascii?Q?bMTLylFXfuMswK3LPZ8abAYiwqzfhuoUvig9xLJeL/EV1d7peTinBc5NHTdZ?=
 =?us-ascii?Q?hOfIr4cNg4ybITUQGG0eqnA8jz/mkLwhsFEz0T5kbJfHw+hmEaVaIwDEQ3n9?=
 =?us-ascii?Q?j0+XWXMcMs8JqF91C9yJUotanysRBaa/3o50DIgzMpRtVKYSrPxMbwwTqGEP?=
 =?us-ascii?Q?tcNBkdp5wragfqytURav0VIbWcaDlOrnfhhWnEYeJgWSHKz5z9kPXBLdz/Gv?=
 =?us-ascii?Q?5F3S3i/i+JmhLAxMxESnJGutBuA3K4HKMb6v5FZ2w44L2CfhW81pF3SmEw0t?=
 =?us-ascii?Q?t5M34bqmFs6C34i8B4we7iYuwg+zl+aMxWatSkXiM7i1n3yVwhEyk2zQ8q3n?=
 =?us-ascii?Q?nrlKSVe+Pf4vOsYmdjwOmiwAdakc3NPk/N7NSDeOQaVJCs+ZtPuR824lmvcp?=
 =?us-ascii?Q?qK2iJkSARNE5eu3pHwLuUUvnshyPgZZFqTPbu4caRRDWNqM2SkkMYh5ZBfEU?=
 =?us-ascii?Q?MNDtQdERWP5xfp/4ThU7pyLtPR0hjoHjrVCWOv2NnyQCK4BvwOXbJ9K4xZ+E?=
 =?us-ascii?Q?5mSzYW/kFjDMhTANiHb67nL6CJ9TmyVK431TZFOc7n7vHKWCvOU36OQZ1jrS?=
 =?us-ascii?Q?Bzie15x/ZvVsSJH+9vCndkRdQeCUiM53qFYwCmE+Kvm4G/jGpKedgbwuTqtf?=
 =?us-ascii?Q?/2+7Pyxuq3WsSaAUW07xFaJYDUbETzu9I11u/+DbWkd1RcqWkwGOwc/J35jf?=
 =?us-ascii?Q?EfZ+ZK+5TBkHjxvDjIo3ObNUApBLwdibb8JOIJME4ZDhj9synn7xUkURcpZZ?=
 =?us-ascii?Q?lsEAhqr/QxiyQoiDbH3vgdIoprcME09JoiystNNW2zbGO7j2YWvRkPRCXCb2?=
 =?us-ascii?Q?SBsgtf8UA3El8EUcMGfPubMqNOZY3zf81ZWps/agw80YqxUzbP+mQ9eq8OD6?=
 =?us-ascii?Q?AS8EFUj9UqAjUgcghNGmpaTul1eL6v0mZ7gomE8kP1V3SqG1CE+uDxeo5w46?=
 =?us-ascii?Q?JeiFJUgjMZVewe+m0TD8NsJ2mtV41QRxxPHLVXzfeh3SdIwgD4JBXC2TAp3w?=
 =?us-ascii?Q?cpJhKYcZDdcTqdzm9FM4XCBjx0Hpu1rwViOHPxu96Drs8LM3dr7uvSNT9joD?=
 =?us-ascii?Q?eKIEUTr3B8LrWX4vv8HbAeU/7KwFdOy3xHfVHv0Ef1k+gsH0+GZEYwaqDW0m?=
 =?us-ascii?Q?ersnKvwXSCCuoHmx208f93NwT3Csa/k9LRXOP3/xHgEWrvygjCjNK9Euo2qO?=
 =?us-ascii?Q?qmbGpetXD0oREQH9OguZCZhsGOFqH2R2q1f+cz1gkxJHswI1fEQYrGfRXfif?=
 =?us-ascii?Q?tyB4ToDjuOQ3XUd41mhFzyiwc2Tkl2lfv/+1OdfTtOTPVFz2QE1SHjR0PYSJ?=
 =?us-ascii?Q?DDHDuxLTEDzCqVFTzb0Zv0mKUxoIw2sx0gBE7SGgMeq+v9upijp0LYdYTDXs?=
 =?us-ascii?Q?a7tMt7Zj+FX7DXA2qsoctAXkrAhi4zsf9oTJlf46?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB1624.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 73e869bc-e01b-4433-10d3-08da6e2a1a3c
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jul 2022 10:40:33.4016 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AoMcE/mXT1J/sNE7eY0h7Ib9OVtdKTZaUirAq9RlRAVij1ad6+91YUPysT8HQDgY2Nob0hCiAkxShrd0mqdKgg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3371
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658745636; x=1690281636;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=j6VSjgEidRQGkhG3XVud1VLVuiaXDJ2so5sdNN6Sd8Y=;
 b=cBBd0KMY7vUacPgoXLw1D7HzufTfFP133GC0dQZN+Jcc+iNdqUIHo8jn
 pqw435K8HCDItdMtePkzChqTjONbKttb434NJk24Xum+lyB8VlPRe6cZ0
 n8k0widn6PeGSp3ESRdhRQu9n5RIKZWypbEJfR0VOcUY0JS8JtCw2BSh8
 KPHW1TekuJkEO8sAcuz+gesdq79FSzoUj9uci+ImhJq3yrenbTjDTIIep
 7ySX+KmXIoBhk6OVNVUjai8hoknwZxVe/npOStkkW/e0mnAPyalt5xxFm
 LxP/I3Z3gOgtBA2YxsNOhAGD9guf4pmHWhk41tUyu+YggJICR+q4nPoB4
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cBBd0KMY
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v7] ice: Fix VSIs unable to share
 unicast MAC
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
Cc: "Dziedziuch, SylwesterX" <sylwesterx.dziedziuch@intel.com>, "Jagielski,
 Jedrzej" <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jedrzej Jagielski
> Sent: czwartek, 21 lipca 2022 10:03
> To: intel-wired-lan@lists.osuosl.org
> Cc: Dziedziuch, SylwesterX <sylwesterx.dziedziuch@intel.com>; Jagielski,
> Jedrzej <jedrzej.jagielski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v7] ice: Fix VSIs unable to share unicast
> MAC
> 
> From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> 
> The driver currently does not allow two VSIs in the same PF domain to have
> the same unicast MAC address. This is incorrect in the sense that a policy
> decision is being made in the driver when it must be left to the user. This
> approach was causing issues when rebooting the system with VFs spawned
> not being able to change their MAC addresses.
> Such errors were present in dmesg:
> 
> [ 7921.068237] ice 0000:b6:00.2 ens2f2: Unicast MAC 6a:0d:e4:70:ca:d1
> already exists on this PF. Preventing setting VF 7 unicast MAC address to
> 6a:0d:e4:70:ca:d1
> 
> Fix that by removing this restriction. Doing this also allows us to remove
> some additional code that's checking if a unicast MAC filter already exists.
> 
> Fixes: 47ebc7b02485 ("ice: Check if unicast MAC exists before setting VF
> MAC")
> Signed-off-by: Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com>
> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>  v2: amend the commit msg
>  v3: removed ucast_shared
>  v4: remove if statements depending on ucast_shared
>  v5: split into 2 separete patches
>  v6: target the second patch to next-q
>  v7: correct the 'fixes' tag
>  ---
>  drivers/net/ethernet/intel/ice/ice_main.c  |  2 ++
> drivers/net/ethernet/intel/ice/ice_sriov.c | 40 ----------------------
>  2 files changed, 2 insertions(+), 40 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
> b/drivers/net/ethernet/intel/ice/ice_main.c
> index 0c5780bccb38..3ca5c30452d4 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c


Tested-by: Marek Szlosek <marek.szlosek@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
